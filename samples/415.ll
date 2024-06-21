; ModuleID = 'samples/415.bc'
source_filename = "cmsalpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmstransform_struct = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct._cmsCACHE, ptr, ptr, ptr, ptr, i32, i32, %struct.cmsCIEXYZ, %struct.cmsCIEXYZ, ptr, i32, double, i32, ptr, ptr, ptr, ptr }
%struct._cmsCACHE = type { [16 x i16], [16 x i16] }
%struct.cmsCIEXYZ = type { double, double, double }
%struct.cmsStride = type { i32, i32, i32, i32 }
%union.anon = type { double }

@_cmsGetFormatterAlpha.FormattersAlpha = internal global [6 x [6 x ptr]] [[6 x ptr] [ptr @copy8, ptr @from8to16, ptr @from8to16SE, ptr @from8toHLF, ptr @from8toFLT, ptr @from8toDBL], [6 x ptr] [ptr @from16to8, ptr @copy16, ptr @from16to16, ptr @from16toHLF, ptr @from16toFLT, ptr @from16toDBL], [6 x ptr] [ptr @from16SEto8, ptr @from16to16, ptr @copy16, ptr @from16SEtoHLF, ptr @from16SEtoFLT, ptr @from16SEtoDBL], [6 x ptr] [ptr @fromHLFto8, ptr @fromHLFto16, ptr @fromHLFto16SE, ptr @copy16, ptr @fromHLFtoFLT, ptr @fromHLFtoDBL], [6 x ptr] [ptr @fromFLTto8, ptr @fromFLTto16, ptr @fromFLTto16SE, ptr @fromFLTtoHLF, ptr @copy32, ptr @fromFLTtoDBL], [6 x ptr] [ptr @fromDBLto8, ptr @fromDBLto16, ptr @fromDBLto16SE, ptr @fromDBLtoHLF, ptr @fromDBLtoFLT, ptr @copy64]], align 16, !dbg !0
@.str = private unnamed_addr constant [33 x i8] c"Unrecognized alpha channel width\00", align 1, !dbg !181

; Function Attrs: nounwind uwtable
define hidden void @_cmsHandleExtraChannels(ptr noundef %p, ptr noundef %in, ptr noundef %out, i32 noundef %PixelsPerLine, i32 noundef %LineCount, ptr noundef %Stride) #0 !dbg !203 {
entry:
  %p.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %PixelsPerLine.addr = alloca i32, align 4
  %LineCount.addr = alloca i32, align 4
  %Stride.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nExtra = alloca i32, align 4
  %SourceStartingOrder = alloca [16 x i32], align 16
  %SourceIncrements = alloca [16 x i32], align 16
  %DestStartingOrder = alloca [16 x i32], align 16
  %DestIncrements = alloca [16 x i32], align 16
  %copyValueFn = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %SourcePtr = alloca ptr, align 8
  %DestPtr = alloca ptr, align 8
  %SourceStrideIncrement = alloca i32, align 4
  %DestStrideIncrement = alloca i32, align 4
  %SourcePtr48 = alloca [16 x ptr], align 16
  %DestPtr49 = alloca [16 x ptr], align 16
  %SourceStrideIncrements = alloca [16 x i32], align 16
  %DestStrideIncrements = alloca [16 x i32], align 16
  store ptr %p, ptr %p.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !417, metadata !DIExpression()), !dbg !449
  store ptr %in, ptr %in.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !418, metadata !DIExpression()), !dbg !450
  store ptr %out, ptr %out.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !419, metadata !DIExpression()), !dbg !451
  store i32 %PixelsPerLine, ptr %PixelsPerLine.addr, align 4, !tbaa !452
  tail call void @llvm.dbg.declare(metadata ptr %PixelsPerLine.addr, metadata !420, metadata !DIExpression()), !dbg !454
  store i32 %LineCount, ptr %LineCount.addr, align 4, !tbaa !452
  tail call void @llvm.dbg.declare(metadata ptr %LineCount.addr, metadata !421, metadata !DIExpression()), !dbg !455
  store ptr %Stride, ptr %Stride.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %Stride.addr, metadata !422, metadata !DIExpression()), !dbg !456
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !457
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !423, metadata !DIExpression()), !dbg !458
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7, !dbg !457
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !424, metadata !DIExpression()), !dbg !459
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7, !dbg !457
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !425, metadata !DIExpression()), !dbg !460
  call void @llvm.lifetime.start.p0(i64 4, ptr %nExtra) #7, !dbg !461
  tail call void @llvm.dbg.declare(metadata ptr %nExtra, metadata !426, metadata !DIExpression()), !dbg !462
  call void @llvm.lifetime.start.p0(i64 64, ptr %SourceStartingOrder) #7, !dbg !463
  tail call void @llvm.dbg.declare(metadata ptr %SourceStartingOrder, metadata !427, metadata !DIExpression()), !dbg !464
  call void @llvm.lifetime.start.p0(i64 64, ptr %SourceIncrements) #7, !dbg !465
  tail call void @llvm.dbg.declare(metadata ptr %SourceIncrements, metadata !429, metadata !DIExpression()), !dbg !466
  call void @llvm.lifetime.start.p0(i64 64, ptr %DestStartingOrder) #7, !dbg !467
  tail call void @llvm.dbg.declare(metadata ptr %DestStartingOrder, metadata !430, metadata !DIExpression()), !dbg !468
  call void @llvm.lifetime.start.p0(i64 64, ptr %DestIncrements) #7, !dbg !469
  tail call void @llvm.dbg.declare(metadata ptr %DestIncrements, metadata !431, metadata !DIExpression()), !dbg !470
  call void @llvm.lifetime.start.p0(i64 8, ptr %copyValueFn) #7, !dbg !471
  tail call void @llvm.dbg.declare(metadata ptr %copyValueFn, metadata !432, metadata !DIExpression()), !dbg !472
  %0 = load ptr, ptr %p.addr, align 8, !dbg !473, !tbaa !445
  %dwOriginalFlags = getelementptr inbounds %struct._cmstransform_struct, ptr %0, i32 0, i32 17, !dbg !475
  %1 = load i32, ptr %dwOriginalFlags, align 8, !dbg !475, !tbaa !476
  %and = and i32 %1, 67108864, !dbg !481
  %tobool = icmp ne i32 %and, 0, !dbg !481
  br i1 %tobool, label %if.end, label %if.then, !dbg !482

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !483

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !484, !tbaa !445
  %InputFormat = getelementptr inbounds %struct._cmstransform_struct, ptr %2, i32 0, i32 0, !dbg !486
  %3 = load i32, ptr %InputFormat, align 8, !dbg !486, !tbaa !487
  %4 = load ptr, ptr %p.addr, align 8, !dbg !488, !tbaa !445
  %OutputFormat = getelementptr inbounds %struct._cmstransform_struct, ptr %4, i32 0, i32 1, !dbg !489
  %5 = load i32, ptr %OutputFormat, align 4, !dbg !489, !tbaa !490
  %cmp = icmp eq i32 %3, %5, !dbg !491
  br i1 %cmp, label %land.lhs.true, label %if.end3, !dbg !492

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %in.addr, align 8, !dbg !493, !tbaa !445
  %7 = load ptr, ptr %out.addr, align 8, !dbg !494, !tbaa !445
  %cmp1 = icmp eq ptr %6, %7, !dbg !495
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !496

if.then2:                                         ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !497

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %8 = load ptr, ptr %p.addr, align 8, !dbg !498, !tbaa !445
  %InputFormat4 = getelementptr inbounds %struct._cmstransform_struct, ptr %8, i32 0, i32 0, !dbg !498
  %9 = load i32, ptr %InputFormat4, align 8, !dbg !498, !tbaa !487
  %shr = lshr i32 %9, 7, !dbg !498
  %and5 = and i32 %shr, 7, !dbg !498
  store i32 %and5, ptr %nExtra, align 4, !dbg !499, !tbaa !452
  %10 = load i32, ptr %nExtra, align 4, !dbg !500, !tbaa !452
  %11 = load ptr, ptr %p.addr, align 8, !dbg !502, !tbaa !445
  %OutputFormat6 = getelementptr inbounds %struct._cmstransform_struct, ptr %11, i32 0, i32 1, !dbg !502
  %12 = load i32, ptr %OutputFormat6, align 4, !dbg !502, !tbaa !490
  %shr7 = lshr i32 %12, 7, !dbg !502
  %and8 = and i32 %shr7, 7, !dbg !502
  %cmp9 = icmp ne i32 %10, %and8, !dbg !503
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !504

if.then10:                                        ; preds = %if.end3
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !505

if.end11:                                         ; preds = %if.end3
  %13 = load i32, ptr %nExtra, align 4, !dbg !506, !tbaa !452
  %cmp12 = icmp eq i32 %13, 0, !dbg !508
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !509

if.then13:                                        ; preds = %if.end11
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !510

if.end14:                                         ; preds = %if.end11
  %14 = load ptr, ptr %p.addr, align 8, !dbg !511, !tbaa !445
  %InputFormat15 = getelementptr inbounds %struct._cmstransform_struct, ptr %14, i32 0, i32 0, !dbg !512
  %15 = load i32, ptr %InputFormat15, align 8, !dbg !512, !tbaa !487
  %16 = load ptr, ptr %Stride.addr, align 8, !dbg !513, !tbaa !445
  %BytesPerPlaneIn = getelementptr inbounds %struct.cmsStride, ptr %16, i32 0, i32 2, !dbg !514
  %17 = load i32, ptr %BytesPerPlaneIn, align 4, !dbg !514, !tbaa !515
  %arraydecay = getelementptr inbounds [16 x i32], ptr %SourceStartingOrder, i64 0, i64 0, !dbg !517
  %arraydecay16 = getelementptr inbounds [16 x i32], ptr %SourceIncrements, i64 0, i64 0, !dbg !518
  call void @ComputeComponentIncrements(i32 noundef %15, i32 noundef %17, ptr noundef %arraydecay, ptr noundef %arraydecay16), !dbg !519
  %18 = load ptr, ptr %p.addr, align 8, !dbg !520, !tbaa !445
  %OutputFormat17 = getelementptr inbounds %struct._cmstransform_struct, ptr %18, i32 0, i32 1, !dbg !521
  %19 = load i32, ptr %OutputFormat17, align 4, !dbg !521, !tbaa !490
  %20 = load ptr, ptr %Stride.addr, align 8, !dbg !522, !tbaa !445
  %BytesPerPlaneOut = getelementptr inbounds %struct.cmsStride, ptr %20, i32 0, i32 3, !dbg !523
  %21 = load i32, ptr %BytesPerPlaneOut, align 4, !dbg !523, !tbaa !524
  %arraydecay18 = getelementptr inbounds [16 x i32], ptr %DestStartingOrder, i64 0, i64 0, !dbg !525
  %arraydecay19 = getelementptr inbounds [16 x i32], ptr %DestIncrements, i64 0, i64 0, !dbg !526
  call void @ComputeComponentIncrements(i32 noundef %19, i32 noundef %21, ptr noundef %arraydecay18, ptr noundef %arraydecay19), !dbg !527
  %22 = load ptr, ptr %p.addr, align 8, !dbg !528, !tbaa !445
  %ContextID = getelementptr inbounds %struct._cmstransform_struct, ptr %22, i32 0, i32 20, !dbg !529
  %23 = load ptr, ptr %ContextID, align 8, !dbg !529, !tbaa !530
  %24 = load ptr, ptr %p.addr, align 8, !dbg !531, !tbaa !445
  %InputFormat20 = getelementptr inbounds %struct._cmstransform_struct, ptr %24, i32 0, i32 0, !dbg !532
  %25 = load i32, ptr %InputFormat20, align 8, !dbg !532, !tbaa !487
  %26 = load ptr, ptr %p.addr, align 8, !dbg !533, !tbaa !445
  %OutputFormat21 = getelementptr inbounds %struct._cmstransform_struct, ptr %26, i32 0, i32 1, !dbg !534
  %27 = load i32, ptr %OutputFormat21, align 4, !dbg !534, !tbaa !490
  %call = call ptr @_cmsGetFormatterAlpha(ptr noundef %23, i32 noundef %25, i32 noundef %27), !dbg !535
  store ptr %call, ptr %copyValueFn, align 8, !dbg !536, !tbaa !445
  %28 = load ptr, ptr %copyValueFn, align 8, !dbg !537, !tbaa !445
  %cmp22 = icmp eq ptr %28, null, !dbg !539
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !540

if.then23:                                        ; preds = %if.end14
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !541

if.end24:                                         ; preds = %if.end14
  %29 = load i32, ptr %nExtra, align 4, !dbg !542, !tbaa !452
  %cmp25 = icmp eq i32 %29, 1, !dbg !543
  br i1 %cmp25, label %if.then26, label %if.else, !dbg !544

if.then26:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 8, ptr %SourcePtr) #7, !dbg !545
  tail call void @llvm.dbg.declare(metadata ptr %SourcePtr, metadata !433, metadata !DIExpression()), !dbg !546
  call void @llvm.lifetime.start.p0(i64 8, ptr %DestPtr) #7, !dbg !547
  tail call void @llvm.dbg.declare(metadata ptr %DestPtr, metadata !436, metadata !DIExpression()), !dbg !548
  call void @llvm.lifetime.start.p0(i64 4, ptr %SourceStrideIncrement) #7, !dbg !549
  tail call void @llvm.dbg.declare(metadata ptr %SourceStrideIncrement, metadata !437, metadata !DIExpression()), !dbg !550
  store i32 0, ptr %SourceStrideIncrement, align 4, !dbg !550, !tbaa !452
  call void @llvm.lifetime.start.p0(i64 4, ptr %DestStrideIncrement) #7, !dbg !551
  tail call void @llvm.dbg.declare(metadata ptr %DestStrideIncrement, metadata !438, metadata !DIExpression()), !dbg !552
  store i32 0, ptr %DestStrideIncrement, align 4, !dbg !552, !tbaa !452
  store i32 0, ptr %i, align 4, !dbg !553, !tbaa !452
  br label %for.cond, !dbg !555

for.cond:                                         ; preds = %for.inc45, %if.then26
  %30 = load i32, ptr %i, align 4, !dbg !556, !tbaa !452
  %31 = load i32, ptr %LineCount.addr, align 4, !dbg !558, !tbaa !452
  %cmp27 = icmp ult i32 %30, %31, !dbg !559
  br i1 %cmp27, label %for.body, label %for.end47, !dbg !560

for.body:                                         ; preds = %for.cond
  %32 = load ptr, ptr %in.addr, align 8, !dbg !561, !tbaa !445
  %arrayidx = getelementptr inbounds [16 x i32], ptr %SourceStartingOrder, i64 0, i64 0, !dbg !563
  %33 = load i32, ptr %arrayidx, align 16, !dbg !563, !tbaa !452
  %idx.ext = zext i32 %33 to i64, !dbg !564
  %add.ptr = getelementptr inbounds i8, ptr %32, i64 %idx.ext, !dbg !564
  %34 = load i32, ptr %SourceStrideIncrement, align 4, !dbg !565, !tbaa !452
  %idx.ext28 = zext i32 %34 to i64, !dbg !566
  %add.ptr29 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext28, !dbg !566
  store ptr %add.ptr29, ptr %SourcePtr, align 8, !dbg !567, !tbaa !445
  %35 = load ptr, ptr %out.addr, align 8, !dbg !568, !tbaa !445
  %arrayidx30 = getelementptr inbounds [16 x i32], ptr %DestStartingOrder, i64 0, i64 0, !dbg !569
  %36 = load i32, ptr %arrayidx30, align 16, !dbg !569, !tbaa !452
  %idx.ext31 = zext i32 %36 to i64, !dbg !570
  %add.ptr32 = getelementptr inbounds i8, ptr %35, i64 %idx.ext31, !dbg !570
  %37 = load i32, ptr %DestStrideIncrement, align 4, !dbg !571, !tbaa !452
  %idx.ext33 = zext i32 %37 to i64, !dbg !572
  %add.ptr34 = getelementptr inbounds i8, ptr %add.ptr32, i64 %idx.ext33, !dbg !572
  store ptr %add.ptr34, ptr %DestPtr, align 8, !dbg !573, !tbaa !445
  store i32 0, ptr %j, align 4, !dbg !574, !tbaa !452
  br label %for.cond35, !dbg !576

for.cond35:                                       ; preds = %for.inc, %for.body
  %38 = load i32, ptr %j, align 4, !dbg !577, !tbaa !452
  %39 = load i32, ptr %PixelsPerLine.addr, align 4, !dbg !579, !tbaa !452
  %cmp36 = icmp ult i32 %38, %39, !dbg !580
  br i1 %cmp36, label %for.body37, label %for.end, !dbg !581

for.body37:                                       ; preds = %for.cond35
  %40 = load ptr, ptr %copyValueFn, align 8, !dbg !582, !tbaa !445
  %41 = load ptr, ptr %DestPtr, align 8, !dbg !584, !tbaa !445
  %42 = load ptr, ptr %SourcePtr, align 8, !dbg !585, !tbaa !445
  call void %40(ptr noundef %41, ptr noundef %42), !dbg !582
  %arrayidx38 = getelementptr inbounds [16 x i32], ptr %SourceIncrements, i64 0, i64 0, !dbg !586
  %43 = load i32, ptr %arrayidx38, align 16, !dbg !586, !tbaa !452
  %44 = load ptr, ptr %SourcePtr, align 8, !dbg !587, !tbaa !445
  %idx.ext39 = zext i32 %43 to i64, !dbg !587
  %add.ptr40 = getelementptr inbounds i8, ptr %44, i64 %idx.ext39, !dbg !587
  store ptr %add.ptr40, ptr %SourcePtr, align 8, !dbg !587, !tbaa !445
  %arrayidx41 = getelementptr inbounds [16 x i32], ptr %DestIncrements, i64 0, i64 0, !dbg !588
  %45 = load i32, ptr %arrayidx41, align 16, !dbg !588, !tbaa !452
  %46 = load ptr, ptr %DestPtr, align 8, !dbg !589, !tbaa !445
  %idx.ext42 = zext i32 %45 to i64, !dbg !589
  %add.ptr43 = getelementptr inbounds i8, ptr %46, i64 %idx.ext42, !dbg !589
  store ptr %add.ptr43, ptr %DestPtr, align 8, !dbg !589, !tbaa !445
  br label %for.inc, !dbg !590

for.inc:                                          ; preds = %for.body37
  %47 = load i32, ptr %j, align 4, !dbg !591, !tbaa !452
  %inc = add i32 %47, 1, !dbg !591
  store i32 %inc, ptr %j, align 4, !dbg !591, !tbaa !452
  br label %for.cond35, !dbg !592, !llvm.loop !593

for.end:                                          ; preds = %for.cond35
  %48 = load ptr, ptr %Stride.addr, align 8, !dbg !596, !tbaa !445
  %BytesPerLineIn = getelementptr inbounds %struct.cmsStride, ptr %48, i32 0, i32 0, !dbg !597
  %49 = load i32, ptr %BytesPerLineIn, align 4, !dbg !597, !tbaa !598
  %50 = load i32, ptr %SourceStrideIncrement, align 4, !dbg !599, !tbaa !452
  %add = add i32 %50, %49, !dbg !599
  store i32 %add, ptr %SourceStrideIncrement, align 4, !dbg !599, !tbaa !452
  %51 = load ptr, ptr %Stride.addr, align 8, !dbg !600, !tbaa !445
  %BytesPerLineOut = getelementptr inbounds %struct.cmsStride, ptr %51, i32 0, i32 1, !dbg !601
  %52 = load i32, ptr %BytesPerLineOut, align 4, !dbg !601, !tbaa !602
  %53 = load i32, ptr %DestStrideIncrement, align 4, !dbg !603, !tbaa !452
  %add44 = add i32 %53, %52, !dbg !603
  store i32 %add44, ptr %DestStrideIncrement, align 4, !dbg !603, !tbaa !452
  br label %for.inc45, !dbg !604

for.inc45:                                        ; preds = %for.end
  %54 = load i32, ptr %i, align 4, !dbg !605, !tbaa !452
  %inc46 = add i32 %54, 1, !dbg !605
  store i32 %inc46, ptr %i, align 4, !dbg !605, !tbaa !452
  br label %for.cond, !dbg !606, !llvm.loop !607

for.end47:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %DestStrideIncrement) #7, !dbg !609
  call void @llvm.lifetime.end.p0(i64 4, ptr %SourceStrideIncrement) #7, !dbg !609
  call void @llvm.lifetime.end.p0(i64 8, ptr %DestPtr) #7, !dbg !609
  call void @llvm.lifetime.end.p0(i64 8, ptr %SourcePtr) #7, !dbg !609
  br label %if.end125, !dbg !610

if.else:                                          ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 128, ptr %SourcePtr48) #7, !dbg !611
  tail call void @llvm.dbg.declare(metadata ptr %SourcePtr48, metadata !439, metadata !DIExpression()), !dbg !612
  call void @llvm.lifetime.start.p0(i64 128, ptr %DestPtr49) #7, !dbg !613
  tail call void @llvm.dbg.declare(metadata ptr %DestPtr49, metadata !442, metadata !DIExpression()), !dbg !614
  call void @llvm.lifetime.start.p0(i64 64, ptr %SourceStrideIncrements) #7, !dbg !615
  tail call void @llvm.dbg.declare(metadata ptr %SourceStrideIncrements, metadata !443, metadata !DIExpression()), !dbg !616
  call void @llvm.lifetime.start.p0(i64 64, ptr %DestStrideIncrements) #7, !dbg !617
  tail call void @llvm.dbg.declare(metadata ptr %DestStrideIncrements, metadata !444, metadata !DIExpression()), !dbg !618
  %arraydecay50 = getelementptr inbounds [16 x i32], ptr %SourceStrideIncrements, i64 0, i64 0, !dbg !619
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay50, i8 0, i64 64, i1 false), !dbg !619
  %arraydecay51 = getelementptr inbounds [16 x i32], ptr %DestStrideIncrements, i64 0, i64 0, !dbg !620
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay51, i8 0, i64 64, i1 false), !dbg !620
  store i32 0, ptr %i, align 4, !dbg !621, !tbaa !452
  br label %for.cond52, !dbg !623

for.cond52:                                       ; preds = %for.inc122, %if.else
  %55 = load i32, ptr %i, align 4, !dbg !624, !tbaa !452
  %56 = load i32, ptr %LineCount.addr, align 4, !dbg !626, !tbaa !452
  %cmp53 = icmp ult i32 %55, %56, !dbg !627
  br i1 %cmp53, label %for.body54, label %for.end124, !dbg !628

for.body54:                                       ; preds = %for.cond52
  store i32 0, ptr %j, align 4, !dbg !629, !tbaa !452
  br label %for.cond55, !dbg !632

for.cond55:                                       ; preds = %for.inc77, %for.body54
  %57 = load i32, ptr %j, align 4, !dbg !633, !tbaa !452
  %58 = load i32, ptr %nExtra, align 4, !dbg !635, !tbaa !452
  %cmp56 = icmp ult i32 %57, %58, !dbg !636
  br i1 %cmp56, label %for.body57, label %for.end79, !dbg !637

for.body57:                                       ; preds = %for.cond55
  %59 = load ptr, ptr %in.addr, align 8, !dbg !638, !tbaa !445
  %60 = load i32, ptr %j, align 4, !dbg !640, !tbaa !452
  %idxprom = zext i32 %60 to i64, !dbg !641
  %arrayidx58 = getelementptr inbounds [16 x i32], ptr %SourceStartingOrder, i64 0, i64 %idxprom, !dbg !641
  %61 = load i32, ptr %arrayidx58, align 4, !dbg !641, !tbaa !452
  %idx.ext59 = zext i32 %61 to i64, !dbg !642
  %add.ptr60 = getelementptr inbounds i8, ptr %59, i64 %idx.ext59, !dbg !642
  %62 = load i32, ptr %j, align 4, !dbg !643, !tbaa !452
  %idxprom61 = zext i32 %62 to i64, !dbg !644
  %arrayidx62 = getelementptr inbounds [16 x i32], ptr %SourceStrideIncrements, i64 0, i64 %idxprom61, !dbg !644
  %63 = load i32, ptr %arrayidx62, align 4, !dbg !644, !tbaa !452
  %idx.ext63 = zext i32 %63 to i64, !dbg !645
  %add.ptr64 = getelementptr inbounds i8, ptr %add.ptr60, i64 %idx.ext63, !dbg !645
  %64 = load i32, ptr %j, align 4, !dbg !646, !tbaa !452
  %idxprom65 = zext i32 %64 to i64, !dbg !647
  %arrayidx66 = getelementptr inbounds [16 x ptr], ptr %SourcePtr48, i64 0, i64 %idxprom65, !dbg !647
  store ptr %add.ptr64, ptr %arrayidx66, align 8, !dbg !648, !tbaa !445
  %65 = load ptr, ptr %out.addr, align 8, !dbg !649, !tbaa !445
  %66 = load i32, ptr %j, align 4, !dbg !650, !tbaa !452
  %idxprom67 = zext i32 %66 to i64, !dbg !651
  %arrayidx68 = getelementptr inbounds [16 x i32], ptr %DestStartingOrder, i64 0, i64 %idxprom67, !dbg !651
  %67 = load i32, ptr %arrayidx68, align 4, !dbg !651, !tbaa !452
  %idx.ext69 = zext i32 %67 to i64, !dbg !652
  %add.ptr70 = getelementptr inbounds i8, ptr %65, i64 %idx.ext69, !dbg !652
  %68 = load i32, ptr %j, align 4, !dbg !653, !tbaa !452
  %idxprom71 = zext i32 %68 to i64, !dbg !654
  %arrayidx72 = getelementptr inbounds [16 x i32], ptr %DestStrideIncrements, i64 0, i64 %idxprom71, !dbg !654
  %69 = load i32, ptr %arrayidx72, align 4, !dbg !654, !tbaa !452
  %idx.ext73 = zext i32 %69 to i64, !dbg !655
  %add.ptr74 = getelementptr inbounds i8, ptr %add.ptr70, i64 %idx.ext73, !dbg !655
  %70 = load i32, ptr %j, align 4, !dbg !656, !tbaa !452
  %idxprom75 = zext i32 %70 to i64, !dbg !657
  %arrayidx76 = getelementptr inbounds [16 x ptr], ptr %DestPtr49, i64 0, i64 %idxprom75, !dbg !657
  store ptr %add.ptr74, ptr %arrayidx76, align 8, !dbg !658, !tbaa !445
  br label %for.inc77, !dbg !659

for.inc77:                                        ; preds = %for.body57
  %71 = load i32, ptr %j, align 4, !dbg !660, !tbaa !452
  %inc78 = add i32 %71, 1, !dbg !660
  store i32 %inc78, ptr %j, align 4, !dbg !660, !tbaa !452
  br label %for.cond55, !dbg !661, !llvm.loop !662

for.end79:                                        ; preds = %for.cond55
  store i32 0, ptr %j, align 4, !dbg !664, !tbaa !452
  br label %for.cond80, !dbg !666

for.cond80:                                       ; preds = %for.inc105, %for.end79
  %72 = load i32, ptr %j, align 4, !dbg !667, !tbaa !452
  %73 = load i32, ptr %PixelsPerLine.addr, align 4, !dbg !669, !tbaa !452
  %cmp81 = icmp ult i32 %72, %73, !dbg !670
  br i1 %cmp81, label %for.body82, label %for.end107, !dbg !671

for.body82:                                       ; preds = %for.cond80
  store i32 0, ptr %k, align 4, !dbg !672, !tbaa !452
  br label %for.cond83, !dbg !675

for.cond83:                                       ; preds = %for.inc102, %for.body82
  %74 = load i32, ptr %k, align 4, !dbg !676, !tbaa !452
  %75 = load i32, ptr %nExtra, align 4, !dbg !678, !tbaa !452
  %cmp84 = icmp ult i32 %74, %75, !dbg !679
  br i1 %cmp84, label %for.body85, label %for.end104, !dbg !680

for.body85:                                       ; preds = %for.cond83
  %76 = load ptr, ptr %copyValueFn, align 8, !dbg !681, !tbaa !445
  %77 = load i32, ptr %k, align 4, !dbg !683, !tbaa !452
  %idxprom86 = zext i32 %77 to i64, !dbg !684
  %arrayidx87 = getelementptr inbounds [16 x ptr], ptr %DestPtr49, i64 0, i64 %idxprom86, !dbg !684
  %78 = load ptr, ptr %arrayidx87, align 8, !dbg !684, !tbaa !445
  %79 = load i32, ptr %k, align 4, !dbg !685, !tbaa !452
  %idxprom88 = zext i32 %79 to i64, !dbg !686
  %arrayidx89 = getelementptr inbounds [16 x ptr], ptr %SourcePtr48, i64 0, i64 %idxprom88, !dbg !686
  %80 = load ptr, ptr %arrayidx89, align 8, !dbg !686, !tbaa !445
  call void %76(ptr noundef %78, ptr noundef %80), !dbg !681
  %81 = load i32, ptr %k, align 4, !dbg !687, !tbaa !452
  %idxprom90 = zext i32 %81 to i64, !dbg !688
  %arrayidx91 = getelementptr inbounds [16 x i32], ptr %SourceIncrements, i64 0, i64 %idxprom90, !dbg !688
  %82 = load i32, ptr %arrayidx91, align 4, !dbg !688, !tbaa !452
  %83 = load i32, ptr %k, align 4, !dbg !689, !tbaa !452
  %idxprom92 = zext i32 %83 to i64, !dbg !690
  %arrayidx93 = getelementptr inbounds [16 x ptr], ptr %SourcePtr48, i64 0, i64 %idxprom92, !dbg !690
  %84 = load ptr, ptr %arrayidx93, align 8, !dbg !691, !tbaa !445
  %idx.ext94 = zext i32 %82 to i64, !dbg !691
  %add.ptr95 = getelementptr inbounds i8, ptr %84, i64 %idx.ext94, !dbg !691
  store ptr %add.ptr95, ptr %arrayidx93, align 8, !dbg !691, !tbaa !445
  %85 = load i32, ptr %k, align 4, !dbg !692, !tbaa !452
  %idxprom96 = zext i32 %85 to i64, !dbg !693
  %arrayidx97 = getelementptr inbounds [16 x i32], ptr %DestIncrements, i64 0, i64 %idxprom96, !dbg !693
  %86 = load i32, ptr %arrayidx97, align 4, !dbg !693, !tbaa !452
  %87 = load i32, ptr %k, align 4, !dbg !694, !tbaa !452
  %idxprom98 = zext i32 %87 to i64, !dbg !695
  %arrayidx99 = getelementptr inbounds [16 x ptr], ptr %DestPtr49, i64 0, i64 %idxprom98, !dbg !695
  %88 = load ptr, ptr %arrayidx99, align 8, !dbg !696, !tbaa !445
  %idx.ext100 = zext i32 %86 to i64, !dbg !696
  %add.ptr101 = getelementptr inbounds i8, ptr %88, i64 %idx.ext100, !dbg !696
  store ptr %add.ptr101, ptr %arrayidx99, align 8, !dbg !696, !tbaa !445
  br label %for.inc102, !dbg !697

for.inc102:                                       ; preds = %for.body85
  %89 = load i32, ptr %k, align 4, !dbg !698, !tbaa !452
  %inc103 = add i32 %89, 1, !dbg !698
  store i32 %inc103, ptr %k, align 4, !dbg !698, !tbaa !452
  br label %for.cond83, !dbg !699, !llvm.loop !700

for.end104:                                       ; preds = %for.cond83
  br label %for.inc105, !dbg !702

for.inc105:                                       ; preds = %for.end104
  %90 = load i32, ptr %j, align 4, !dbg !703, !tbaa !452
  %inc106 = add i32 %90, 1, !dbg !703
  store i32 %inc106, ptr %j, align 4, !dbg !703, !tbaa !452
  br label %for.cond80, !dbg !704, !llvm.loop !705

for.end107:                                       ; preds = %for.cond80
  store i32 0, ptr %j, align 4, !dbg !707, !tbaa !452
  br label %for.cond108, !dbg !709

for.cond108:                                      ; preds = %for.inc119, %for.end107
  %91 = load i32, ptr %j, align 4, !dbg !710, !tbaa !452
  %92 = load i32, ptr %nExtra, align 4, !dbg !712, !tbaa !452
  %cmp109 = icmp ult i32 %91, %92, !dbg !713
  br i1 %cmp109, label %for.body110, label %for.end121, !dbg !714

for.body110:                                      ; preds = %for.cond108
  %93 = load ptr, ptr %Stride.addr, align 8, !dbg !715, !tbaa !445
  %BytesPerLineIn111 = getelementptr inbounds %struct.cmsStride, ptr %93, i32 0, i32 0, !dbg !717
  %94 = load i32, ptr %BytesPerLineIn111, align 4, !dbg !717, !tbaa !598
  %95 = load i32, ptr %j, align 4, !dbg !718, !tbaa !452
  %idxprom112 = zext i32 %95 to i64, !dbg !719
  %arrayidx113 = getelementptr inbounds [16 x i32], ptr %SourceStrideIncrements, i64 0, i64 %idxprom112, !dbg !719
  %96 = load i32, ptr %arrayidx113, align 4, !dbg !720, !tbaa !452
  %add114 = add i32 %96, %94, !dbg !720
  store i32 %add114, ptr %arrayidx113, align 4, !dbg !720, !tbaa !452
  %97 = load ptr, ptr %Stride.addr, align 8, !dbg !721, !tbaa !445
  %BytesPerLineOut115 = getelementptr inbounds %struct.cmsStride, ptr %97, i32 0, i32 1, !dbg !722
  %98 = load i32, ptr %BytesPerLineOut115, align 4, !dbg !722, !tbaa !602
  %99 = load i32, ptr %j, align 4, !dbg !723, !tbaa !452
  %idxprom116 = zext i32 %99 to i64, !dbg !724
  %arrayidx117 = getelementptr inbounds [16 x i32], ptr %DestStrideIncrements, i64 0, i64 %idxprom116, !dbg !724
  %100 = load i32, ptr %arrayidx117, align 4, !dbg !725, !tbaa !452
  %add118 = add i32 %100, %98, !dbg !725
  store i32 %add118, ptr %arrayidx117, align 4, !dbg !725, !tbaa !452
  br label %for.inc119, !dbg !726

for.inc119:                                       ; preds = %for.body110
  %101 = load i32, ptr %j, align 4, !dbg !727, !tbaa !452
  %inc120 = add i32 %101, 1, !dbg !727
  store i32 %inc120, ptr %j, align 4, !dbg !727, !tbaa !452
  br label %for.cond108, !dbg !728, !llvm.loop !729

for.end121:                                       ; preds = %for.cond108
  br label %for.inc122, !dbg !731

for.inc122:                                       ; preds = %for.end121
  %102 = load i32, ptr %i, align 4, !dbg !732, !tbaa !452
  %inc123 = add i32 %102, 1, !dbg !732
  store i32 %inc123, ptr %i, align 4, !dbg !732, !tbaa !452
  br label %for.cond52, !dbg !733, !llvm.loop !734

for.end124:                                       ; preds = %for.cond52
  call void @llvm.lifetime.end.p0(i64 64, ptr %DestStrideIncrements) #7, !dbg !736
  call void @llvm.lifetime.end.p0(i64 64, ptr %SourceStrideIncrements) #7, !dbg !736
  call void @llvm.lifetime.end.p0(i64 128, ptr %DestPtr49) #7, !dbg !736
  call void @llvm.lifetime.end.p0(i64 128, ptr %SourcePtr48) #7, !dbg !736
  br label %if.end125

if.end125:                                        ; preds = %for.end124, %for.end47
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !737
  br label %cleanup, !dbg !737

cleanup:                                          ; preds = %if.end125, %if.then23, %if.then13, %if.then10, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %copyValueFn) #7, !dbg !737
  call void @llvm.lifetime.end.p0(i64 64, ptr %DestIncrements) #7, !dbg !737
  call void @llvm.lifetime.end.p0(i64 64, ptr %DestStartingOrder) #7, !dbg !737
  call void @llvm.lifetime.end.p0(i64 64, ptr %SourceIncrements) #7, !dbg !737
  call void @llvm.lifetime.end.p0(i64 64, ptr %SourceStartingOrder) #7, !dbg !737
  call void @llvm.lifetime.end.p0(i64 4, ptr %nExtra) #7, !dbg !737
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7, !dbg !737
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7, !dbg !737
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !737
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !737

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @ComputeComponentIncrements(i32 noundef %Format, i32 noundef %BytesPerPlane, ptr noundef %ComponentStartingOrder, ptr noundef %ComponentPointerIncrements) #0 !dbg !738 {
entry:
  %Format.addr = alloca i32, align 4
  %BytesPerPlane.addr = alloca i32, align 4
  %ComponentStartingOrder.addr = alloca ptr, align 8
  %ComponentPointerIncrements.addr = alloca ptr, align 8
  store i32 %Format, ptr %Format.addr, align 4, !tbaa !452
  tail call void @llvm.dbg.declare(metadata ptr %Format.addr, metadata !743, metadata !DIExpression()), !dbg !747
  store i32 %BytesPerPlane, ptr %BytesPerPlane.addr, align 4, !tbaa !452
  tail call void @llvm.dbg.declare(metadata ptr %BytesPerPlane.addr, metadata !744, metadata !DIExpression()), !dbg !748
  store ptr %ComponentStartingOrder, ptr %ComponentStartingOrder.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %ComponentStartingOrder.addr, metadata !745, metadata !DIExpression()), !dbg !749
  store ptr %ComponentPointerIncrements, ptr %ComponentPointerIncrements.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %ComponentPointerIncrements.addr, metadata !746, metadata !DIExpression()), !dbg !750
  %0 = load i32, ptr %Format.addr, align 4, !dbg !751, !tbaa !452
  %shr = lshr i32 %0, 12, !dbg !751
  %and = and i32 %shr, 1, !dbg !751
  %tobool = icmp ne i32 %and, 0, !dbg !751
  br i1 %tobool, label %if.then, label %if.else, !dbg !753

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %Format.addr, align 4, !dbg !754, !tbaa !452
  %2 = load i32, ptr %BytesPerPlane.addr, align 4, !dbg !756, !tbaa !452
  %3 = load ptr, ptr %ComponentStartingOrder.addr, align 8, !dbg !757, !tbaa !445
  %4 = load ptr, ptr %ComponentPointerIncrements.addr, align 8, !dbg !758, !tbaa !445
  call void @ComputeIncrementsForPlanar(i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4), !dbg !759
  br label %if.end, !dbg !760

if.else:                                          ; preds = %entry
  %5 = load i32, ptr %Format.addr, align 4, !dbg !761, !tbaa !452
  %6 = load ptr, ptr %ComponentStartingOrder.addr, align 8, !dbg !763, !tbaa !445
  %7 = load ptr, ptr %ComponentPointerIncrements.addr, align 8, !dbg !764, !tbaa !445
  call void @ComputeIncrementsForChunky(i32 noundef %5, ptr noundef %6, ptr noundef %7), !dbg !765
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !766
}

; Function Attrs: nounwind uwtable
define internal ptr @_cmsGetFormatterAlpha(ptr noundef %id, i32 noundef %in, i32 noundef %out) #0 !dbg !2 {
entry:
  %retval = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %in.addr = alloca i32, align 4
  %out.addr = alloca i32, align 4
  %in_n = alloca i32, align 4
  %out_n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %id, ptr %id.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !188, metadata !DIExpression()), !dbg !767
  store i32 %in, ptr %in.addr, align 4, !tbaa !452
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !189, metadata !DIExpression()), !dbg !768
  store i32 %out, ptr %out.addr, align 4, !tbaa !452
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !190, metadata !DIExpression()), !dbg !769
  call void @llvm.lifetime.start.p0(i64 4, ptr %in_n) #7, !dbg !770
  tail call void @llvm.dbg.declare(metadata ptr %in_n, metadata !191, metadata !DIExpression()), !dbg !771
  %0 = load i32, ptr %in.addr, align 4, !dbg !772, !tbaa !452
  %call = call i32 @FormatterPos(i32 noundef %0), !dbg !773
  store i32 %call, ptr %in_n, align 4, !dbg !771, !tbaa !452
  call void @llvm.lifetime.start.p0(i64 4, ptr %out_n) #7, !dbg !774
  tail call void @llvm.dbg.declare(metadata ptr %out_n, metadata !193, metadata !DIExpression()), !dbg !775
  %1 = load i32, ptr %out.addr, align 4, !dbg !776, !tbaa !452
  %call1 = call i32 @FormatterPos(i32 noundef %1), !dbg !777
  store i32 %call1, ptr %out_n, align 4, !dbg !775, !tbaa !452
  %2 = load i32, ptr %in_n, align 4, !dbg !778, !tbaa !452
  %cmp = icmp slt i32 %2, 0, !dbg !780
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !781

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %out_n, align 4, !dbg !782, !tbaa !452
  %cmp2 = icmp slt i32 %3, 0, !dbg !783
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !784

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load i32, ptr %in_n, align 4, !dbg !785, !tbaa !452
  %cmp4 = icmp sgt i32 %4, 5, !dbg !786
  br i1 %cmp4, label %if.then, label %lor.lhs.false5, !dbg !787

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %5 = load i32, ptr %out_n, align 4, !dbg !788, !tbaa !452
  %cmp6 = icmp sgt i32 %5, 5, !dbg !789
  br i1 %cmp6, label %if.then, label %if.end, !dbg !790

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %entry
  %6 = load ptr, ptr %id.addr, align 8, !dbg !791, !tbaa !445
  call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef %6, i32 noundef 8, ptr noundef @.str), !dbg !793
  store ptr null, ptr %retval, align 8, !dbg !794
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !794

if.end:                                           ; preds = %lor.lhs.false5
  %7 = load i32, ptr %in_n, align 4, !dbg !795, !tbaa !452
  %idxprom = sext i32 %7 to i64, !dbg !796
  %arrayidx = getelementptr inbounds [6 x [6 x ptr]], ptr @_cmsGetFormatterAlpha.FormattersAlpha, i64 0, i64 %idxprom, !dbg !796
  %8 = load i32, ptr %out_n, align 4, !dbg !797, !tbaa !452
  %idxprom7 = sext i32 %8 to i64, !dbg !796
  %arrayidx8 = getelementptr inbounds [6 x ptr], ptr %arrayidx, i64 0, i64 %idxprom7, !dbg !796
  %9 = load ptr, ptr %arrayidx8, align 8, !dbg !796, !tbaa !445
  store ptr %9, ptr %retval, align 8, !dbg !798
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !798

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %out_n) #7, !dbg !799
  call void @llvm.lifetime.end.p0(i64 4, ptr %in_n) #7, !dbg !799
  %10 = load ptr, ptr %retval, align 8, !dbg !799
  ret ptr %10, !dbg !799
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal void @ComputeIncrementsForPlanar(i32 noundef %Format, i32 noundef %BytesPerPlane, ptr noundef %ComponentStartingOrder, ptr noundef %ComponentPointerIncrements) #0 !dbg !800 {
entry:
  %Format.addr = alloca i32, align 4
  %BytesPerPlane.addr = alloca i32, align 4
  %ComponentStartingOrder.addr = alloca ptr, align 8
  %ComponentPointerIncrements.addr = alloca ptr, align 8
  %channels = alloca [16 x i32], align 16
  %extra = alloca i32, align 4
  %nchannels = alloca i32, align 4
  %total_chans = alloca i32, align 4
  %i = alloca i32, align 4
  %channelSize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %Format, ptr %Format.addr, align 4, !tbaa !452
  tail call void @llvm.dbg.declare(metadata ptr %Format.addr, metadata !802, metadata !DIExpression()), !dbg !815
  store i32 %BytesPerPlane, ptr %BytesPerPlane.addr, align 4, !tbaa !452
  tail call void @llvm.dbg.declare(metadata ptr %BytesPerPlane.addr, metadata !803, metadata !DIExpression()), !dbg !816
  store ptr %ComponentStartingOrder, ptr %ComponentStartingOrder.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %ComponentStartingOrder.addr, metadata !804, metadata !DIExpression()), !dbg !817
  store ptr %ComponentPointerIncrements, ptr %ComponentPointerIncrements.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %ComponentPointerIncrements.addr, metadata !805, metadata !DIExpression()), !dbg !818
  call void @llvm.lifetime.start.p0(i64 64, ptr %channels) #7, !dbg !819
  tail call void @llvm.dbg.declare(metadata ptr %channels, metadata !806, metadata !DIExpression()), !dbg !820
  call void @llvm.lifetime.start.p0(i64 4, ptr %extra) #7, !dbg !821
  tail call void @llvm.dbg.declare(metadata ptr %extra, metadata !807, metadata !DIExpression()), !dbg !822
  %0 = load i32, ptr %Format.addr, align 4, !dbg !823, !tbaa !452
  %shr = lshr i32 %0, 7, !dbg !823
  %and = and i32 %shr, 7, !dbg !823
  store i32 %and, ptr %extra, align 4, !dbg !822, !tbaa !452
  call void @llvm.lifetime.start.p0(i64 4, ptr %nchannels) #7, !dbg !824
  tail call void @llvm.dbg.declare(metadata ptr %nchannels, metadata !808, metadata !DIExpression()), !dbg !825
  %1 = load i32, ptr %Format.addr, align 4, !dbg !826, !tbaa !452
  %shr1 = lshr i32 %1, 3, !dbg !826
  %and2 = and i32 %shr1, 15, !dbg !826
  store i32 %and2, ptr %nchannels, align 4, !dbg !825, !tbaa !452
  call void @llvm.lifetime.start.p0(i64 4, ptr %total_chans) #7, !dbg !827
  tail call void @llvm.dbg.declare(metadata ptr %total_chans, metadata !809, metadata !DIExpression()), !dbg !828
  %2 = load i32, ptr %nchannels, align 4, !dbg !829, !tbaa !452
  %3 = load i32, ptr %extra, align 4, !dbg !830, !tbaa !452
  %add = add i32 %2, %3, !dbg !831
  store i32 %add, ptr %total_chans, align 4, !dbg !828, !tbaa !452
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !832
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !810, metadata !DIExpression()), !dbg !833
  call void @llvm.lifetime.start.p0(i64 4, ptr %channelSize) #7, !dbg !834
  tail call void @llvm.dbg.declare(metadata ptr %channelSize, metadata !811, metadata !DIExpression()), !dbg !835
  %4 = load i32, ptr %Format.addr, align 4, !dbg !836, !tbaa !452
  %call = call i32 @trueBytesSize(i32 noundef %4), !dbg !837
  store i32 %call, ptr %channelSize, align 4, !dbg !835, !tbaa !452
  %5 = load i32, ptr %total_chans, align 4, !dbg !838, !tbaa !452
  %cmp = icmp ule i32 %5, 0, !dbg !840
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !841

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, ptr %total_chans, align 4, !dbg !842, !tbaa !452
  %cmp3 = icmp uge i32 %6, 16, !dbg !843
  br i1 %cmp3, label %if.then, label %if.end, !dbg !844

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !845

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds [16 x i32], ptr %channels, i64 0, i64 0, !dbg !846
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 64, i1 false), !dbg !846
  store i32 0, ptr %i, align 4, !dbg !847, !tbaa !452
  br label %for.cond, !dbg !849

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %i, align 4, !dbg !850, !tbaa !452
  %8 = load i32, ptr %extra, align 4, !dbg !852, !tbaa !452
  %cmp4 = icmp ult i32 %7, %8, !dbg !853
  br i1 %cmp4, label %for.body, label %for.end, !dbg !854

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %channelSize, align 4, !dbg !855, !tbaa !452
  %10 = load ptr, ptr %ComponentPointerIncrements.addr, align 8, !dbg !856, !tbaa !445
  %11 = load i32, ptr %i, align 4, !dbg !857, !tbaa !452
  %idxprom = zext i32 %11 to i64, !dbg !856
  %arrayidx = getelementptr inbounds i32, ptr %10, i64 %idxprom, !dbg !856
  store i32 %9, ptr %arrayidx, align 4, !dbg !858, !tbaa !452
  br label %for.inc, !dbg !856

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !859, !tbaa !452
  %inc = add i32 %12, 1, !dbg !859
  store i32 %inc, ptr %i, align 4, !dbg !859, !tbaa !452
  br label %for.cond, !dbg !860, !llvm.loop !861

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !863, !tbaa !452
  br label %for.cond5, !dbg !865

for.cond5:                                        ; preds = %for.inc17, %for.end
  %13 = load i32, ptr %i, align 4, !dbg !866, !tbaa !452
  %14 = load i32, ptr %total_chans, align 4, !dbg !868, !tbaa !452
  %cmp6 = icmp ult i32 %13, %14, !dbg !869
  br i1 %cmp6, label %for.body7, label %for.end19, !dbg !870

for.body7:                                        ; preds = %for.cond5
  %15 = load i32, ptr %Format.addr, align 4, !dbg !871, !tbaa !452
  %shr8 = lshr i32 %15, 10, !dbg !871
  %and9 = and i32 %shr8, 1, !dbg !871
  %tobool = icmp ne i32 %and9, 0, !dbg !871
  br i1 %tobool, label %if.then10, label %if.else, !dbg !874

if.then10:                                        ; preds = %for.body7
  %16 = load i32, ptr %total_chans, align 4, !dbg !875, !tbaa !452
  %17 = load i32, ptr %i, align 4, !dbg !877, !tbaa !452
  %sub = sub i32 %16, %17, !dbg !878
  %sub11 = sub i32 %sub, 1, !dbg !879
  %18 = load i32, ptr %i, align 4, !dbg !880, !tbaa !452
  %idxprom12 = zext i32 %18 to i64, !dbg !881
  %arrayidx13 = getelementptr inbounds [16 x i32], ptr %channels, i64 0, i64 %idxprom12, !dbg !881
  store i32 %sub11, ptr %arrayidx13, align 4, !dbg !882, !tbaa !452
  br label %if.end16, !dbg !883

if.else:                                          ; preds = %for.body7
  %19 = load i32, ptr %i, align 4, !dbg !884, !tbaa !452
  %20 = load i32, ptr %i, align 4, !dbg !886, !tbaa !452
  %idxprom14 = zext i32 %20 to i64, !dbg !887
  %arrayidx15 = getelementptr inbounds [16 x i32], ptr %channels, i64 0, i64 %idxprom14, !dbg !887
  store i32 %19, ptr %arrayidx15, align 4, !dbg !888, !tbaa !452
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then10
  br label %for.inc17, !dbg !889

for.inc17:                                        ; preds = %if.end16
  %21 = load i32, ptr %i, align 4, !dbg !890, !tbaa !452
  %inc18 = add i32 %21, 1, !dbg !890
  store i32 %inc18, ptr %i, align 4, !dbg !890, !tbaa !452
  br label %for.cond5, !dbg !891, !llvm.loop !892

for.end19:                                        ; preds = %for.cond5
  %22 = load i32, ptr %Format.addr, align 4, !dbg !894, !tbaa !452
  %shr20 = lshr i32 %22, 14, !dbg !894
  %and21 = and i32 %shr20, 1, !dbg !894
  %tobool22 = icmp ne i32 %and21, 0, !dbg !894
  br i1 %tobool22, label %land.lhs.true, label %if.end41, !dbg !895

land.lhs.true:                                    ; preds = %for.end19
  %23 = load i32, ptr %total_chans, align 4, !dbg !896, !tbaa !452
  %cmp23 = icmp ugt i32 %23, 0, !dbg !897
  br i1 %cmp23, label %if.then24, label %if.end41, !dbg !898

if.then24:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #7, !dbg !899
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !812, metadata !DIExpression()), !dbg !900
  %arrayidx25 = getelementptr inbounds [16 x i32], ptr %channels, i64 0, i64 0, !dbg !901
  %24 = load i32, ptr %arrayidx25, align 16, !dbg !901, !tbaa !452
  store i32 %24, ptr %tmp, align 4, !dbg !900, !tbaa !452
  store i32 0, ptr %i, align 4, !dbg !902, !tbaa !452
  br label %for.cond26, !dbg !904

for.cond26:                                       ; preds = %for.inc35, %if.then24
  %25 = load i32, ptr %i, align 4, !dbg !905, !tbaa !452
  %26 = load i32, ptr %total_chans, align 4, !dbg !907, !tbaa !452
  %sub27 = sub i32 %26, 1, !dbg !908
  %cmp28 = icmp ult i32 %25, %sub27, !dbg !909
  br i1 %cmp28, label %for.body29, label %for.end37, !dbg !910

for.body29:                                       ; preds = %for.cond26
  %27 = load i32, ptr %i, align 4, !dbg !911, !tbaa !452
  %add30 = add i32 %27, 1, !dbg !912
  %idxprom31 = zext i32 %add30 to i64, !dbg !913
  %arrayidx32 = getelementptr inbounds [16 x i32], ptr %channels, i64 0, i64 %idxprom31, !dbg !913
  %28 = load i32, ptr %arrayidx32, align 4, !dbg !913, !tbaa !452
  %29 = load i32, ptr %i, align 4, !dbg !914, !tbaa !452
  %idxprom33 = zext i32 %29 to i64, !dbg !915
  %arrayidx34 = getelementptr inbounds [16 x i32], ptr %channels, i64 0, i64 %idxprom33, !dbg !915
  store i32 %28, ptr %arrayidx34, align 4, !dbg !916, !tbaa !452
  br label %for.inc35, !dbg !915

for.inc35:                                        ; preds = %for.body29
  %30 = load i32, ptr %i, align 4, !dbg !917, !tbaa !452
  %inc36 = add i32 %30, 1, !dbg !917
  store i32 %inc36, ptr %i, align 4, !dbg !917, !tbaa !452
  br label %for.cond26, !dbg !918, !llvm.loop !919

for.end37:                                        ; preds = %for.cond26
  %31 = load i32, ptr %tmp, align 4, !dbg !921, !tbaa !452
  %32 = load i32, ptr %total_chans, align 4, !dbg !922, !tbaa !452
  %sub38 = sub i32 %32, 1, !dbg !923
  %idxprom39 = zext i32 %sub38 to i64, !dbg !924
  %arrayidx40 = getelementptr inbounds [16 x i32], ptr %channels, i64 0, i64 %idxprom39, !dbg !924
  store i32 %31, ptr %arrayidx40, align 4, !dbg !925, !tbaa !452
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #7, !dbg !926
  br label %if.end41, !dbg !927

if.end41:                                         ; preds = %for.end37, %land.lhs.true, %for.end19
  store i32 0, ptr %i, align 4, !dbg !928, !tbaa !452
  br label %for.cond42, !dbg !930

for.cond42:                                       ; preds = %for.inc47, %if.end41
  %33 = load i32, ptr %i, align 4, !dbg !931, !tbaa !452
  %34 = load i32, ptr %total_chans, align 4, !dbg !933, !tbaa !452
  %cmp43 = icmp ult i32 %33, %34, !dbg !934
  br i1 %cmp43, label %for.body44, label %for.end49, !dbg !935

for.body44:                                       ; preds = %for.cond42
  %35 = load i32, ptr %BytesPerPlane.addr, align 4, !dbg !936, !tbaa !452
  %36 = load i32, ptr %i, align 4, !dbg !938, !tbaa !452
  %idxprom45 = zext i32 %36 to i64, !dbg !939
  %arrayidx46 = getelementptr inbounds [16 x i32], ptr %channels, i64 0, i64 %idxprom45, !dbg !939
  %37 = load i32, ptr %arrayidx46, align 4, !dbg !940, !tbaa !452
  %mul = mul i32 %37, %35, !dbg !940
  store i32 %mul, ptr %arrayidx46, align 4, !dbg !940, !tbaa !452
  br label %for.inc47, !dbg !941

for.inc47:                                        ; preds = %for.body44
  %38 = load i32, ptr %i, align 4, !dbg !942, !tbaa !452
  %inc48 = add i32 %38, 1, !dbg !942
  store i32 %inc48, ptr %i, align 4, !dbg !942, !tbaa !452
  br label %for.cond42, !dbg !943, !llvm.loop !944

for.end49:                                        ; preds = %for.cond42
  store i32 0, ptr %i, align 4, !dbg !946, !tbaa !452
  br label %for.cond50, !dbg !948

for.cond50:                                       ; preds = %for.inc58, %for.end49
  %39 = load i32, ptr %i, align 4, !dbg !949, !tbaa !452
  %40 = load i32, ptr %extra, align 4, !dbg !951, !tbaa !452
  %cmp51 = icmp ult i32 %39, %40, !dbg !952
  br i1 %cmp51, label %for.body52, label %for.end60, !dbg !953

for.body52:                                       ; preds = %for.cond50
  %41 = load i32, ptr %i, align 4, !dbg !954, !tbaa !452
  %42 = load i32, ptr %nchannels, align 4, !dbg !955, !tbaa !452
  %add53 = add i32 %41, %42, !dbg !956
  %idxprom54 = zext i32 %add53 to i64, !dbg !957
  %arrayidx55 = getelementptr inbounds [16 x i32], ptr %channels, i64 0, i64 %idxprom54, !dbg !957
  %43 = load i32, ptr %arrayidx55, align 4, !dbg !957, !tbaa !452
  %44 = load ptr, ptr %ComponentStartingOrder.addr, align 8, !dbg !958, !tbaa !445
  %45 = load i32, ptr %i, align 4, !dbg !959, !tbaa !452
  %idxprom56 = zext i32 %45 to i64, !dbg !958
  %arrayidx57 = getelementptr inbounds i32, ptr %44, i64 %idxprom56, !dbg !958
  store i32 %43, ptr %arrayidx57, align 4, !dbg !960, !tbaa !452
  br label %for.inc58, !dbg !958

for.inc58:                                        ; preds = %for.body52
  %46 = load i32, ptr %i, align 4, !dbg !961, !tbaa !452
  %inc59 = add i32 %46, 1, !dbg !961
  store i32 %inc59, ptr %i, align 4, !dbg !961, !tbaa !452
  br label %for.cond50, !dbg !962, !llvm.loop !963

for.end60:                                        ; preds = %for.cond50
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !965
  br label %cleanup, !dbg !965

cleanup:                                          ; preds = %for.end60, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %channelSize) #7, !dbg !965
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !965
  call void @llvm.lifetime.end.p0(i64 4, ptr %total_chans) #7, !dbg !965
  call void @llvm.lifetime.end.p0(i64 4, ptr %nchannels) #7, !dbg !965
  call void @llvm.lifetime.end.p0(i64 4, ptr %extra) #7, !dbg !965
  call void @llvm.lifetime.end.p0(i64 64, ptr %channels) #7, !dbg !965
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !965

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @ComputeIncrementsForChunky(i32 noundef %Format, ptr noundef %ComponentStartingOrder, ptr noundef %ComponentPointerIncrements) #0 !dbg !966 {
entry:
  %Format.addr = alloca i32, align 4
  %ComponentStartingOrder.addr = alloca ptr, align 8
  %ComponentPointerIncrements.addr = alloca ptr, align 8
  %channels = alloca [16 x i32], align 16
  %extra = alloca i32, align 4
  %nchannels = alloca i32, align 4
  %total_chans = alloca i32, align 4
  %i = alloca i32, align 4
  %channelSize = alloca i32, align 4
  %pixelSize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %Format, ptr %Format.addr, align 4, !tbaa !452
  tail call void @llvm.dbg.declare(metadata ptr %Format.addr, metadata !970, metadata !DIExpression()), !dbg !983
  store ptr %ComponentStartingOrder, ptr %ComponentStartingOrder.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %ComponentStartingOrder.addr, metadata !971, metadata !DIExpression()), !dbg !984
  store ptr %ComponentPointerIncrements, ptr %ComponentPointerIncrements.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %ComponentPointerIncrements.addr, metadata !972, metadata !DIExpression()), !dbg !985
  call void @llvm.lifetime.start.p0(i64 64, ptr %channels) #7, !dbg !986
  tail call void @llvm.dbg.declare(metadata ptr %channels, metadata !973, metadata !DIExpression()), !dbg !987
  call void @llvm.lifetime.start.p0(i64 4, ptr %extra) #7, !dbg !988
  tail call void @llvm.dbg.declare(metadata ptr %extra, metadata !974, metadata !DIExpression()), !dbg !989
  %0 = load i32, ptr %Format.addr, align 4, !dbg !990, !tbaa !452
  %shr = lshr i32 %0, 7, !dbg !990
  %and = and i32 %shr, 7, !dbg !990
  store i32 %and, ptr %extra, align 4, !dbg !989, !tbaa !452
  call void @llvm.lifetime.start.p0(i64 4, ptr %nchannels) #7, !dbg !991
  tail call void @llvm.dbg.declare(metadata ptr %nchannels, metadata !975, metadata !DIExpression()), !dbg !992
  %1 = load i32, ptr %Format.addr, align 4, !dbg !993, !tbaa !452
  %shr1 = lshr i32 %1, 3, !dbg !993
  %and2 = and i32 %shr1, 15, !dbg !993
  store i32 %and2, ptr %nchannels, align 4, !dbg !992, !tbaa !452
  call void @llvm.lifetime.start.p0(i64 4, ptr %total_chans) #7, !dbg !994
  tail call void @llvm.dbg.declare(metadata ptr %total_chans, metadata !976, metadata !DIExpression()), !dbg !995
  %2 = load i32, ptr %nchannels, align 4, !dbg !996, !tbaa !452
  %3 = load i32, ptr %extra, align 4, !dbg !997, !tbaa !452
  %add = add i32 %2, %3, !dbg !998
  store i32 %add, ptr %total_chans, align 4, !dbg !995, !tbaa !452
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !999
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !977, metadata !DIExpression()), !dbg !1000
  call void @llvm.lifetime.start.p0(i64 4, ptr %channelSize) #7, !dbg !1001
  tail call void @llvm.dbg.declare(metadata ptr %channelSize, metadata !978, metadata !DIExpression()), !dbg !1002
  %4 = load i32, ptr %Format.addr, align 4, !dbg !1003, !tbaa !452
  %call = call i32 @trueBytesSize(i32 noundef %4), !dbg !1004
  store i32 %call, ptr %channelSize, align 4, !dbg !1002, !tbaa !452
  call void @llvm.lifetime.start.p0(i64 4, ptr %pixelSize) #7, !dbg !1005
  tail call void @llvm.dbg.declare(metadata ptr %pixelSize, metadata !979, metadata !DIExpression()), !dbg !1006
  %5 = load i32, ptr %channelSize, align 4, !dbg !1007, !tbaa !452
  %6 = load i32, ptr %total_chans, align 4, !dbg !1008, !tbaa !452
  %mul = mul i32 %5, %6, !dbg !1009
  store i32 %mul, ptr %pixelSize, align 4, !dbg !1006, !tbaa !452
  %7 = load i32, ptr %total_chans, align 4, !dbg !1010, !tbaa !452
  %cmp = icmp ule i32 %7, 0, !dbg !1012
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1013

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, ptr %total_chans, align 4, !dbg !1014, !tbaa !452
  %cmp3 = icmp uge i32 %8, 16, !dbg !1015
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1016

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1017

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds [16 x i32], ptr %channels, i64 0, i64 0, !dbg !1018
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 64, i1 false), !dbg !1018
  store i32 0, ptr %i, align 4, !dbg !1019, !tbaa !452
  br label %for.cond, !dbg !1021

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, ptr %i, align 4, !dbg !1022, !tbaa !452
  %10 = load i32, ptr %extra, align 4, !dbg !1024, !tbaa !452
  %cmp4 = icmp ult i32 %9, %10, !dbg !1025
  br i1 %cmp4, label %for.body, label %for.end, !dbg !1026

for.body:                                         ; preds = %for.cond
  %11 = load i32, ptr %pixelSize, align 4, !dbg !1027, !tbaa !452
  %12 = load ptr, ptr %ComponentPointerIncrements.addr, align 8, !dbg !1028, !tbaa !445
  %13 = load i32, ptr %i, align 4, !dbg !1029, !tbaa !452
  %idxprom = zext i32 %13 to i64, !dbg !1028
  %arrayidx = getelementptr inbounds i32, ptr %12, i64 %idxprom, !dbg !1028
  store i32 %11, ptr %arrayidx, align 4, !dbg !1030, !tbaa !452
  br label %for.inc, !dbg !1028

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !dbg !1031, !tbaa !452
  %inc = add i32 %14, 1, !dbg !1031
  store i32 %inc, ptr %i, align 4, !dbg !1031, !tbaa !452
  br label %for.cond, !dbg !1032, !llvm.loop !1033

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !1035, !tbaa !452
  br label %for.cond5, !dbg !1037

for.cond5:                                        ; preds = %for.inc17, %for.end
  %15 = load i32, ptr %i, align 4, !dbg !1038, !tbaa !452
  %16 = load i32, ptr %total_chans, align 4, !dbg !1040, !tbaa !452
  %cmp6 = icmp ult i32 %15, %16, !dbg !1041
  br i1 %cmp6, label %for.body7, label %for.end19, !dbg !1042

for.body7:                                        ; preds = %for.cond5
  %17 = load i32, ptr %Format.addr, align 4, !dbg !1043, !tbaa !452
  %shr8 = lshr i32 %17, 10, !dbg !1043
  %and9 = and i32 %shr8, 1, !dbg !1043
  %tobool = icmp ne i32 %and9, 0, !dbg !1043
  br i1 %tobool, label %if.then10, label %if.else, !dbg !1046

if.then10:                                        ; preds = %for.body7
  %18 = load i32, ptr %total_chans, align 4, !dbg !1047, !tbaa !452
  %19 = load i32, ptr %i, align 4, !dbg !1049, !tbaa !452
  %sub = sub i32 %18, %19, !dbg !1050
  %sub11 = sub i32 %sub, 1, !dbg !1051
  %20 = load i32, ptr %i, align 4, !dbg !1052, !tbaa !452
  %idxprom12 = zext i32 %20 to i64, !dbg !1053
  %arrayidx13 = getelementptr inbounds [16 x i32], ptr %channels, i64 0, i64 %idxprom12, !dbg !1053
  store i32 %sub11, ptr %arrayidx13, align 4, !dbg !1054, !tbaa !452
  br label %if.end16, !dbg !1055

if.else:                                          ; preds = %for.body7
  %21 = load i32, ptr %i, align 4, !dbg !1056, !tbaa !452
  %22 = load i32, ptr %i, align 4, !dbg !1058, !tbaa !452
  %idxprom14 = zext i32 %22 to i64, !dbg !1059
  %arrayidx15 = getelementptr inbounds [16 x i32], ptr %channels, i64 0, i64 %idxprom14, !dbg !1059
  store i32 %21, ptr %arrayidx15, align 4, !dbg !1060, !tbaa !452
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then10
  br label %for.inc17, !dbg !1061

for.inc17:                                        ; preds = %if.end16
  %23 = load i32, ptr %i, align 4, !dbg !1062, !tbaa !452
  %inc18 = add i32 %23, 1, !dbg !1062
  store i32 %inc18, ptr %i, align 4, !dbg !1062, !tbaa !452
  br label %for.cond5, !dbg !1063, !llvm.loop !1064

for.end19:                                        ; preds = %for.cond5
  %24 = load i32, ptr %Format.addr, align 4, !dbg !1066, !tbaa !452
  %shr20 = lshr i32 %24, 14, !dbg !1066
  %and21 = and i32 %shr20, 1, !dbg !1066
  %tobool22 = icmp ne i32 %and21, 0, !dbg !1066
  br i1 %tobool22, label %land.lhs.true, label %if.end41, !dbg !1067

land.lhs.true:                                    ; preds = %for.end19
  %25 = load i32, ptr %total_chans, align 4, !dbg !1068, !tbaa !452
  %cmp23 = icmp ugt i32 %25, 1, !dbg !1069
  br i1 %cmp23, label %if.then24, label %if.end41, !dbg !1070

if.then24:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #7, !dbg !1071
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !980, metadata !DIExpression()), !dbg !1072
  %arrayidx25 = getelementptr inbounds [16 x i32], ptr %channels, i64 0, i64 0, !dbg !1073
  %26 = load i32, ptr %arrayidx25, align 16, !dbg !1073, !tbaa !452
  store i32 %26, ptr %tmp, align 4, !dbg !1072, !tbaa !452
  store i32 0, ptr %i, align 4, !dbg !1074, !tbaa !452
  br label %for.cond26, !dbg !1076

for.cond26:                                       ; preds = %for.inc35, %if.then24
  %27 = load i32, ptr %i, align 4, !dbg !1077, !tbaa !452
  %28 = load i32, ptr %total_chans, align 4, !dbg !1079, !tbaa !452
  %sub27 = sub i32 %28, 1, !dbg !1080
  %cmp28 = icmp ult i32 %27, %sub27, !dbg !1081
  br i1 %cmp28, label %for.body29, label %for.end37, !dbg !1082

for.body29:                                       ; preds = %for.cond26
  %29 = load i32, ptr %i, align 4, !dbg !1083, !tbaa !452
  %add30 = add i32 %29, 1, !dbg !1084
  %idxprom31 = zext i32 %add30 to i64, !dbg !1085
  %arrayidx32 = getelementptr inbounds [16 x i32], ptr %channels, i64 0, i64 %idxprom31, !dbg !1085
  %30 = load i32, ptr %arrayidx32, align 4, !dbg !1085, !tbaa !452
  %31 = load i32, ptr %i, align 4, !dbg !1086, !tbaa !452
  %idxprom33 = zext i32 %31 to i64, !dbg !1087
  %arrayidx34 = getelementptr inbounds [16 x i32], ptr %channels, i64 0, i64 %idxprom33, !dbg !1087
  store i32 %30, ptr %arrayidx34, align 4, !dbg !1088, !tbaa !452
  br label %for.inc35, !dbg !1087

for.inc35:                                        ; preds = %for.body29
  %32 = load i32, ptr %i, align 4, !dbg !1089, !tbaa !452
  %inc36 = add i32 %32, 1, !dbg !1089
  store i32 %inc36, ptr %i, align 4, !dbg !1089, !tbaa !452
  br label %for.cond26, !dbg !1090, !llvm.loop !1091

for.end37:                                        ; preds = %for.cond26
  %33 = load i32, ptr %tmp, align 4, !dbg !1093, !tbaa !452
  %34 = load i32, ptr %total_chans, align 4, !dbg !1094, !tbaa !452
  %sub38 = sub i32 %34, 1, !dbg !1095
  %idxprom39 = zext i32 %sub38 to i64, !dbg !1096
  %arrayidx40 = getelementptr inbounds [16 x i32], ptr %channels, i64 0, i64 %idxprom39, !dbg !1096
  store i32 %33, ptr %arrayidx40, align 4, !dbg !1097, !tbaa !452
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #7, !dbg !1098
  br label %if.end41, !dbg !1099

if.end41:                                         ; preds = %for.end37, %land.lhs.true, %for.end19
  %35 = load i32, ptr %channelSize, align 4, !dbg !1100, !tbaa !452
  %cmp42 = icmp ugt i32 %35, 1, !dbg !1102
  br i1 %cmp42, label %if.then43, label %if.end53, !dbg !1103

if.then43:                                        ; preds = %if.end41
  store i32 0, ptr %i, align 4, !dbg !1104, !tbaa !452
  br label %for.cond44, !dbg !1106

for.cond44:                                       ; preds = %for.inc50, %if.then43
  %36 = load i32, ptr %i, align 4, !dbg !1107, !tbaa !452
  %37 = load i32, ptr %total_chans, align 4, !dbg !1109, !tbaa !452
  %cmp45 = icmp ult i32 %36, %37, !dbg !1110
  br i1 %cmp45, label %for.body46, label %for.end52, !dbg !1111

for.body46:                                       ; preds = %for.cond44
  %38 = load i32, ptr %channelSize, align 4, !dbg !1112, !tbaa !452
  %39 = load i32, ptr %i, align 4, !dbg !1114, !tbaa !452
  %idxprom47 = zext i32 %39 to i64, !dbg !1115
  %arrayidx48 = getelementptr inbounds [16 x i32], ptr %channels, i64 0, i64 %idxprom47, !dbg !1115
  %40 = load i32, ptr %arrayidx48, align 4, !dbg !1116, !tbaa !452
  %mul49 = mul i32 %40, %38, !dbg !1116
  store i32 %mul49, ptr %arrayidx48, align 4, !dbg !1116, !tbaa !452
  br label %for.inc50, !dbg !1117

for.inc50:                                        ; preds = %for.body46
  %41 = load i32, ptr %i, align 4, !dbg !1118, !tbaa !452
  %inc51 = add i32 %41, 1, !dbg !1118
  store i32 %inc51, ptr %i, align 4, !dbg !1118, !tbaa !452
  br label %for.cond44, !dbg !1119, !llvm.loop !1120

for.end52:                                        ; preds = %for.cond44
  br label %if.end53, !dbg !1121

if.end53:                                         ; preds = %for.end52, %if.end41
  store i32 0, ptr %i, align 4, !dbg !1122, !tbaa !452
  br label %for.cond54, !dbg !1124

for.cond54:                                       ; preds = %for.inc62, %if.end53
  %42 = load i32, ptr %i, align 4, !dbg !1125, !tbaa !452
  %43 = load i32, ptr %extra, align 4, !dbg !1127, !tbaa !452
  %cmp55 = icmp ult i32 %42, %43, !dbg !1128
  br i1 %cmp55, label %for.body56, label %for.end64, !dbg !1129

for.body56:                                       ; preds = %for.cond54
  %44 = load i32, ptr %i, align 4, !dbg !1130, !tbaa !452
  %45 = load i32, ptr %nchannels, align 4, !dbg !1131, !tbaa !452
  %add57 = add i32 %44, %45, !dbg !1132
  %idxprom58 = zext i32 %add57 to i64, !dbg !1133
  %arrayidx59 = getelementptr inbounds [16 x i32], ptr %channels, i64 0, i64 %idxprom58, !dbg !1133
  %46 = load i32, ptr %arrayidx59, align 4, !dbg !1133, !tbaa !452
  %47 = load ptr, ptr %ComponentStartingOrder.addr, align 8, !dbg !1134, !tbaa !445
  %48 = load i32, ptr %i, align 4, !dbg !1135, !tbaa !452
  %idxprom60 = zext i32 %48 to i64, !dbg !1134
  %arrayidx61 = getelementptr inbounds i32, ptr %47, i64 %idxprom60, !dbg !1134
  store i32 %46, ptr %arrayidx61, align 4, !dbg !1136, !tbaa !452
  br label %for.inc62, !dbg !1134

for.inc62:                                        ; preds = %for.body56
  %49 = load i32, ptr %i, align 4, !dbg !1137, !tbaa !452
  %inc63 = add i32 %49, 1, !dbg !1137
  store i32 %inc63, ptr %i, align 4, !dbg !1137, !tbaa !452
  br label %for.cond54, !dbg !1138, !llvm.loop !1139

for.end64:                                        ; preds = %for.cond54
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1141
  br label %cleanup, !dbg !1141

cleanup:                                          ; preds = %for.end64, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pixelSize) #7, !dbg !1141
  call void @llvm.lifetime.end.p0(i64 4, ptr %channelSize) #7, !dbg !1141
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !1141
  call void @llvm.lifetime.end.p0(i64 4, ptr %total_chans) #7, !dbg !1141
  call void @llvm.lifetime.end.p0(i64 4, ptr %nchannels) #7, !dbg !1141
  call void @llvm.lifetime.end.p0(i64 4, ptr %extra) #7, !dbg !1141
  call void @llvm.lifetime.end.p0(i64 64, ptr %channels) #7, !dbg !1141
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1141

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @trueBytesSize(i32 noundef %Format) #0 !dbg !1142 {
entry:
  %retval = alloca i32, align 4
  %Format.addr = alloca i32, align 4
  %fmt_bytes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %Format, ptr %Format.addr, align 4, !tbaa !452
  tail call void @llvm.dbg.declare(metadata ptr %Format.addr, metadata !1146, metadata !DIExpression()), !dbg !1148
  call void @llvm.lifetime.start.p0(i64 4, ptr %fmt_bytes) #7, !dbg !1149
  tail call void @llvm.dbg.declare(metadata ptr %fmt_bytes, metadata !1147, metadata !DIExpression()), !dbg !1150
  %0 = load i32, ptr %Format.addr, align 4, !dbg !1151, !tbaa !452
  %and = and i32 %0, 7, !dbg !1151
  store i32 %and, ptr %fmt_bytes, align 4, !dbg !1150, !tbaa !452
  %1 = load i32, ptr %fmt_bytes, align 4, !dbg !1152, !tbaa !452
  %cmp = icmp eq i32 %1, 0, !dbg !1154
  br i1 %cmp, label %if.then, label %if.end, !dbg !1155

if.then:                                          ; preds = %entry
  store i32 8, ptr %retval, align 4, !dbg !1156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1156

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %fmt_bytes, align 4, !dbg !1157, !tbaa !452
  store i32 %2, ptr %retval, align 4, !dbg !1158
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1158

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %fmt_bytes) #7, !dbg !1159
  %3 = load i32, ptr %retval, align 4, !dbg !1159
  ret i32 %3, !dbg !1159
}

; Function Attrs: nounwind uwtable
define internal void @copy8(ptr noundef %dst, ptr noundef %src) #0 !dbg !1160 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1162, metadata !DIExpression()), !dbg !1164
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1163, metadata !DIExpression()), !dbg !1165
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1166, !tbaa !445
  %1 = load ptr, ptr %src.addr, align 8, !dbg !1167, !tbaa !445
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 1, i1 false), !dbg !1168
  ret void, !dbg !1169
}

; Function Attrs: nounwind uwtable
define internal void @from8to16(ptr noundef %dst, ptr noundef %src) #0 !dbg !1170 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n = alloca i8, align 1
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1172, metadata !DIExpression()), !dbg !1175
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1173, metadata !DIExpression()), !dbg !1176
  call void @llvm.lifetime.start.p0(i64 1, ptr %n) #7, !dbg !1177
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1174, metadata !DIExpression()), !dbg !1178
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1179, !tbaa !445
  %1 = load i8, ptr %0, align 1, !dbg !1180, !tbaa !1181
  store i8 %1, ptr %n, align 1, !dbg !1178, !tbaa !1181
  %2 = load i8, ptr %n, align 1, !dbg !1182, !tbaa !1181
  %conv = zext i8 %2 to i16, !dbg !1182
  %conv1 = zext i16 %conv to i32, !dbg !1182
  %shl = shl i32 %conv1, 8, !dbg !1182
  %3 = load i8, ptr %n, align 1, !dbg !1182, !tbaa !1181
  %conv2 = zext i8 %3 to i32, !dbg !1182
  %or = or i32 %shl, %conv2, !dbg !1182
  %conv3 = trunc i32 %or to i16, !dbg !1182
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !1183, !tbaa !445
  store i16 %conv3, ptr %4, align 2, !dbg !1184, !tbaa !1185
  call void @llvm.lifetime.end.p0(i64 1, ptr %n) #7, !dbg !1187
  ret void, !dbg !1187
}

; Function Attrs: nounwind uwtable
define internal void @from8to16SE(ptr noundef %dst, ptr noundef %src) #0 !dbg !1188 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n = alloca i8, align 1
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1190, metadata !DIExpression()), !dbg !1193
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1191, metadata !DIExpression()), !dbg !1194
  call void @llvm.lifetime.start.p0(i64 1, ptr %n) #7, !dbg !1195
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1192, metadata !DIExpression()), !dbg !1196
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1197, !tbaa !445
  %1 = load i8, ptr %0, align 1, !dbg !1198, !tbaa !1181
  store i8 %1, ptr %n, align 1, !dbg !1196, !tbaa !1181
  %2 = load i8, ptr %n, align 1, !dbg !1199, !tbaa !1181
  %conv = zext i8 %2 to i16, !dbg !1199
  %conv1 = zext i16 %conv to i32, !dbg !1199
  %shl = shl i32 %conv1, 8, !dbg !1199
  %3 = load i8, ptr %n, align 1, !dbg !1199, !tbaa !1181
  %conv2 = zext i8 %3 to i32, !dbg !1199
  %or = or i32 %shl, %conv2, !dbg !1199
  %conv3 = trunc i32 %or to i16, !dbg !1199
  %conv4 = zext i16 %conv3 to i32, !dbg !1199
  %shl5 = shl i32 %conv4, 8, !dbg !1199
  %conv6 = trunc i32 %shl5 to i16, !dbg !1199
  %conv7 = zext i16 %conv6 to i32, !dbg !1199
  %4 = load i8, ptr %n, align 1, !dbg !1199, !tbaa !1181
  %conv8 = zext i8 %4 to i16, !dbg !1199
  %conv9 = zext i16 %conv8 to i32, !dbg !1199
  %shl10 = shl i32 %conv9, 8, !dbg !1199
  %5 = load i8, ptr %n, align 1, !dbg !1199, !tbaa !1181
  %conv11 = zext i8 %5 to i32, !dbg !1199
  %or12 = or i32 %shl10, %conv11, !dbg !1199
  %conv13 = trunc i32 %or12 to i16, !dbg !1199
  %conv14 = zext i16 %conv13 to i32, !dbg !1199
  %shr = ashr i32 %conv14, 8, !dbg !1199
  %or15 = or i32 %conv7, %shr, !dbg !1199
  %conv16 = trunc i32 %or15 to i16, !dbg !1199
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !1200, !tbaa !445
  store i16 %conv16, ptr %6, align 2, !dbg !1201, !tbaa !1185
  call void @llvm.lifetime.end.p0(i64 1, ptr %n) #7, !dbg !1202
  ret void, !dbg !1202
}

; Function Attrs: nounwind uwtable
define internal void @from8toHLF(ptr noundef %dst, ptr noundef %src) #0 !dbg !1203 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n = alloca float, align 4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1205, metadata !DIExpression()), !dbg !1208
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1206, metadata !DIExpression()), !dbg !1209
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !1210
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1207, metadata !DIExpression()), !dbg !1211
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1212, !tbaa !445
  %1 = load i8, ptr %0, align 1, !dbg !1213, !tbaa !1181
  %conv = zext i8 %1 to i32, !dbg !1214
  %conv1 = sitofp i32 %conv to float, !dbg !1214
  %div = fdiv float %conv1, 2.550000e+02, !dbg !1215
  store float %div, ptr %n, align 4, !dbg !1211, !tbaa !1216
  %2 = load float, ptr %n, align 4, !dbg !1218, !tbaa !1216
  %call = call zeroext i16 @_cmsFloat2Half(float noundef %2), !dbg !1219
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !1220, !tbaa !445
  store i16 %call, ptr %3, align 2, !dbg !1221, !tbaa !1185
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !1222
  ret void, !dbg !1222
}

; Function Attrs: nounwind uwtable
define internal void @from8toFLT(ptr noundef %dst, ptr noundef %src) #0 !dbg !1223 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1225, metadata !DIExpression()), !dbg !1227
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1226, metadata !DIExpression()), !dbg !1228
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1229, !tbaa !445
  %1 = load i8, ptr %0, align 1, !dbg !1230, !tbaa !1181
  %conv = uitofp i8 %1 to float, !dbg !1231
  %div = fdiv float %conv, 2.550000e+02, !dbg !1232
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !1233, !tbaa !445
  store float %div, ptr %2, align 4, !dbg !1234, !tbaa !1216
  ret void, !dbg !1235
}

; Function Attrs: nounwind uwtable
define internal void @from8toDBL(ptr noundef %dst, ptr noundef %src) #0 !dbg !1236 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1238, metadata !DIExpression()), !dbg !1240
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1239, metadata !DIExpression()), !dbg !1241
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1242, !tbaa !445
  %1 = load i8, ptr %0, align 1, !dbg !1243, !tbaa !1181
  %conv = uitofp i8 %1 to double, !dbg !1244
  %div = fdiv double %conv, 2.550000e+02, !dbg !1245
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !1246, !tbaa !445
  store double %div, ptr %2, align 8, !dbg !1247, !tbaa !1248
  ret void, !dbg !1249
}

; Function Attrs: nounwind uwtable
define internal void @from16to8(ptr noundef %dst, ptr noundef %src) #0 !dbg !1250 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n = alloca i16, align 2
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1252, metadata !DIExpression()), !dbg !1255
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1253, metadata !DIExpression()), !dbg !1256
  call void @llvm.lifetime.start.p0(i64 2, ptr %n) #7, !dbg !1257
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1254, metadata !DIExpression()), !dbg !1258
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1259, !tbaa !445
  %1 = load i16, ptr %0, align 2, !dbg !1260, !tbaa !1185
  store i16 %1, ptr %n, align 2, !dbg !1258, !tbaa !1185
  %2 = load i16, ptr %n, align 2, !dbg !1261, !tbaa !1185
  %conv = zext i16 %2 to i32, !dbg !1261
  %mul = mul i32 %conv, 65281, !dbg !1261
  %add = add i32 %mul, 8388608, !dbg !1261
  %shr = lshr i32 %add, 24, !dbg !1261
  %and = and i32 %shr, 255, !dbg !1261
  %conv1 = trunc i32 %and to i8, !dbg !1261
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !1262, !tbaa !445
  store i8 %conv1, ptr %3, align 1, !dbg !1263, !tbaa !1181
  call void @llvm.lifetime.end.p0(i64 2, ptr %n) #7, !dbg !1264
  ret void, !dbg !1264
}

; Function Attrs: nounwind uwtable
define internal void @copy16(ptr noundef %dst, ptr noundef %src) #0 !dbg !1265 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1267, metadata !DIExpression()), !dbg !1269
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1268, metadata !DIExpression()), !dbg !1270
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1271, !tbaa !445
  %1 = load ptr, ptr %src.addr, align 8, !dbg !1272, !tbaa !445
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 2, i1 false), !dbg !1273
  ret void, !dbg !1274
}

; Function Attrs: nounwind uwtable
define internal void @from16to16(ptr noundef %dst, ptr noundef %src) #0 !dbg !1275 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n = alloca i16, align 2
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1277, metadata !DIExpression()), !dbg !1280
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1278, metadata !DIExpression()), !dbg !1281
  call void @llvm.lifetime.start.p0(i64 2, ptr %n) #7, !dbg !1282
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1279, metadata !DIExpression()), !dbg !1283
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1284, !tbaa !445
  %1 = load i16, ptr %0, align 2, !dbg !1285, !tbaa !1185
  store i16 %1, ptr %n, align 2, !dbg !1283, !tbaa !1185
  %2 = load i16, ptr %n, align 2, !dbg !1286, !tbaa !1185
  %conv = zext i16 %2 to i32, !dbg !1286
  %shl = shl i32 %conv, 8, !dbg !1286
  %conv1 = trunc i32 %shl to i16, !dbg !1286
  %conv2 = zext i16 %conv1 to i32, !dbg !1286
  %3 = load i16, ptr %n, align 2, !dbg !1286, !tbaa !1185
  %conv3 = zext i16 %3 to i32, !dbg !1286
  %shr = ashr i32 %conv3, 8, !dbg !1286
  %or = or i32 %conv2, %shr, !dbg !1286
  %conv4 = trunc i32 %or to i16, !dbg !1286
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !1287, !tbaa !445
  store i16 %conv4, ptr %4, align 2, !dbg !1288, !tbaa !1185
  call void @llvm.lifetime.end.p0(i64 2, ptr %n) #7, !dbg !1289
  ret void, !dbg !1289
}

; Function Attrs: nounwind uwtable
define internal void @from16toHLF(ptr noundef %dst, ptr noundef %src) #0 !dbg !1290 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n = alloca float, align 4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1292, metadata !DIExpression()), !dbg !1295
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1293, metadata !DIExpression()), !dbg !1296
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !1297
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1294, metadata !DIExpression()), !dbg !1298
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1299, !tbaa !445
  %1 = load i16, ptr %0, align 2, !dbg !1300, !tbaa !1185
  %conv = zext i16 %1 to i32, !dbg !1301
  %conv1 = sitofp i32 %conv to float, !dbg !1301
  %div = fdiv float %conv1, 6.553500e+04, !dbg !1302
  store float %div, ptr %n, align 4, !dbg !1298, !tbaa !1216
  %2 = load float, ptr %n, align 4, !dbg !1303, !tbaa !1216
  %call = call zeroext i16 @_cmsFloat2Half(float noundef %2), !dbg !1304
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !1305, !tbaa !445
  store i16 %call, ptr %3, align 2, !dbg !1306, !tbaa !1185
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !1307
  ret void, !dbg !1307
}

; Function Attrs: nounwind uwtable
define internal void @from16toFLT(ptr noundef %dst, ptr noundef %src) #0 !dbg !1308 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1310, metadata !DIExpression()), !dbg !1312
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1311, metadata !DIExpression()), !dbg !1313
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1314, !tbaa !445
  %1 = load i16, ptr %0, align 2, !dbg !1315, !tbaa !1185
  %conv = zext i16 %1 to i32, !dbg !1316
  %conv1 = sitofp i32 %conv to float, !dbg !1316
  %div = fdiv float %conv1, 6.553500e+04, !dbg !1317
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !1318, !tbaa !445
  store float %div, ptr %2, align 4, !dbg !1319, !tbaa !1216
  ret void, !dbg !1320
}

; Function Attrs: nounwind uwtable
define internal void @from16toDBL(ptr noundef %dst, ptr noundef %src) #0 !dbg !1321 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1323, metadata !DIExpression()), !dbg !1325
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1324, metadata !DIExpression()), !dbg !1326
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1327, !tbaa !445
  %1 = load i16, ptr %0, align 2, !dbg !1328, !tbaa !1185
  %conv = uitofp i16 %1 to double, !dbg !1329
  %div = fdiv double %conv, 6.553500e+04, !dbg !1330
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !1331, !tbaa !445
  store double %div, ptr %2, align 8, !dbg !1332, !tbaa !1248
  ret void, !dbg !1333
}

; Function Attrs: nounwind uwtable
define internal void @from16SEto8(ptr noundef %dst, ptr noundef %src) #0 !dbg !1334 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n = alloca i16, align 2
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1336, metadata !DIExpression()), !dbg !1339
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1337, metadata !DIExpression()), !dbg !1340
  call void @llvm.lifetime.start.p0(i64 2, ptr %n) #7, !dbg !1341
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1338, metadata !DIExpression()), !dbg !1342
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1343, !tbaa !445
  %1 = load i16, ptr %0, align 2, !dbg !1344, !tbaa !1185
  store i16 %1, ptr %n, align 2, !dbg !1342, !tbaa !1185
  %2 = load i16, ptr %n, align 2, !dbg !1345, !tbaa !1185
  %conv = zext i16 %2 to i32, !dbg !1345
  %shl = shl i32 %conv, 8, !dbg !1345
  %conv1 = trunc i32 %shl to i16, !dbg !1345
  %conv2 = zext i16 %conv1 to i32, !dbg !1345
  %3 = load i16, ptr %n, align 2, !dbg !1345, !tbaa !1185
  %conv3 = zext i16 %3 to i32, !dbg !1345
  %shr = ashr i32 %conv3, 8, !dbg !1345
  %or = or i32 %conv2, %shr, !dbg !1345
  %conv4 = trunc i32 %or to i16, !dbg !1345
  %conv5 = zext i16 %conv4 to i32, !dbg !1345
  %mul = mul i32 %conv5, 65281, !dbg !1345
  %add = add i32 %mul, 8388608, !dbg !1345
  %shr6 = lshr i32 %add, 24, !dbg !1345
  %and = and i32 %shr6, 255, !dbg !1345
  %conv7 = trunc i32 %and to i8, !dbg !1345
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !1346, !tbaa !445
  store i8 %conv7, ptr %4, align 1, !dbg !1347, !tbaa !1181
  call void @llvm.lifetime.end.p0(i64 2, ptr %n) #7, !dbg !1348
  ret void, !dbg !1348
}

; Function Attrs: nounwind uwtable
define internal void @from16SEtoHLF(ptr noundef %dst, ptr noundef %src) #0 !dbg !1349 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n = alloca float, align 4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1351, metadata !DIExpression()), !dbg !1354
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1352, metadata !DIExpression()), !dbg !1355
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !1356
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1353, metadata !DIExpression()), !dbg !1357
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1358, !tbaa !445
  %1 = load i16, ptr %0, align 2, !dbg !1358, !tbaa !1185
  %conv = zext i16 %1 to i32, !dbg !1358
  %shl = shl i32 %conv, 8, !dbg !1358
  %conv1 = trunc i32 %shl to i16, !dbg !1358
  %conv2 = zext i16 %conv1 to i32, !dbg !1358
  %2 = load ptr, ptr %src.addr, align 8, !dbg !1358, !tbaa !445
  %3 = load i16, ptr %2, align 2, !dbg !1358, !tbaa !1185
  %conv3 = zext i16 %3 to i32, !dbg !1358
  %shr = ashr i32 %conv3, 8, !dbg !1358
  %or = or i32 %conv2, %shr, !dbg !1358
  %conv4 = trunc i32 %or to i16, !dbg !1358
  %conv5 = zext i16 %conv4 to i32, !dbg !1359
  %conv6 = sitofp i32 %conv5 to float, !dbg !1359
  %div = fdiv float %conv6, 6.553500e+04, !dbg !1360
  store float %div, ptr %n, align 4, !dbg !1357, !tbaa !1216
  %4 = load float, ptr %n, align 4, !dbg !1361, !tbaa !1216
  %call = call zeroext i16 @_cmsFloat2Half(float noundef %4), !dbg !1362
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !1363, !tbaa !445
  store i16 %call, ptr %5, align 2, !dbg !1364, !tbaa !1185
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !1365
  ret void, !dbg !1365
}

; Function Attrs: nounwind uwtable
define internal void @from16SEtoFLT(ptr noundef %dst, ptr noundef %src) #0 !dbg !1366 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1368, metadata !DIExpression()), !dbg !1370
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1369, metadata !DIExpression()), !dbg !1371
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1372, !tbaa !445
  %1 = load i16, ptr %0, align 2, !dbg !1372, !tbaa !1185
  %conv = zext i16 %1 to i32, !dbg !1372
  %shl = shl i32 %conv, 8, !dbg !1372
  %conv1 = trunc i32 %shl to i16, !dbg !1372
  %conv2 = zext i16 %conv1 to i32, !dbg !1372
  %2 = load ptr, ptr %src.addr, align 8, !dbg !1372, !tbaa !445
  %3 = load i16, ptr %2, align 2, !dbg !1372, !tbaa !1185
  %conv3 = zext i16 %3 to i32, !dbg !1372
  %shr = ashr i32 %conv3, 8, !dbg !1372
  %or = or i32 %conv2, %shr, !dbg !1372
  %conv4 = trunc i32 %or to i16, !dbg !1372
  %conv5 = zext i16 %conv4 to i32, !dbg !1373
  %conv6 = sitofp i32 %conv5 to float, !dbg !1373
  %div = fdiv float %conv6, 6.553500e+04, !dbg !1374
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !1375, !tbaa !445
  store float %div, ptr %4, align 4, !dbg !1376, !tbaa !1216
  ret void, !dbg !1377
}

; Function Attrs: nounwind uwtable
define internal void @from16SEtoDBL(ptr noundef %dst, ptr noundef %src) #0 !dbg !1378 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1380, metadata !DIExpression()), !dbg !1382
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1381, metadata !DIExpression()), !dbg !1383
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1384, !tbaa !445
  %1 = load i16, ptr %0, align 2, !dbg !1384, !tbaa !1185
  %conv = zext i16 %1 to i32, !dbg !1384
  %shl = shl i32 %conv, 8, !dbg !1384
  %conv1 = trunc i32 %shl to i16, !dbg !1384
  %conv2 = zext i16 %conv1 to i32, !dbg !1384
  %2 = load ptr, ptr %src.addr, align 8, !dbg !1384, !tbaa !445
  %3 = load i16, ptr %2, align 2, !dbg !1384, !tbaa !1185
  %conv3 = zext i16 %3 to i32, !dbg !1384
  %shr = ashr i32 %conv3, 8, !dbg !1384
  %or = or i32 %conv2, %shr, !dbg !1384
  %conv4 = trunc i32 %or to i16, !dbg !1384
  %conv5 = uitofp i16 %conv4 to double, !dbg !1385
  %div = fdiv double %conv5, 6.553500e+04, !dbg !1386
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !1387, !tbaa !445
  store double %div, ptr %4, align 8, !dbg !1388, !tbaa !1248
  ret void, !dbg !1389
}

; Function Attrs: nounwind uwtable
define internal void @fromHLFto8(ptr noundef %dst, ptr noundef %src) #0 !dbg !1390 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n = alloca float, align 4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1392, metadata !DIExpression()), !dbg !1395
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1393, metadata !DIExpression()), !dbg !1396
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !1397
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1394, metadata !DIExpression()), !dbg !1398
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1399, !tbaa !445
  %1 = load i16, ptr %0, align 2, !dbg !1400, !tbaa !1185
  %call = call float @_cmsHalf2Float(i16 noundef zeroext %1), !dbg !1401
  store float %call, ptr %n, align 4, !dbg !1398, !tbaa !1216
  %2 = load float, ptr %n, align 4, !dbg !1402, !tbaa !1216
  %conv = fpext float %2 to double, !dbg !1402
  %mul = fmul double %conv, 2.550000e+02, !dbg !1403
  %call1 = call zeroext i8 @_cmsQuickSaturateByte(double noundef %mul), !dbg !1404
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !1405, !tbaa !445
  store i8 %call1, ptr %3, align 1, !dbg !1406, !tbaa !1181
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !1407
  ret void, !dbg !1407
}

; Function Attrs: nounwind uwtable
define internal void @fromHLFto16(ptr noundef %dst, ptr noundef %src) #0 !dbg !1408 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n = alloca float, align 4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1410, metadata !DIExpression()), !dbg !1413
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1411, metadata !DIExpression()), !dbg !1414
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !1415
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1412, metadata !DIExpression()), !dbg !1416
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1417, !tbaa !445
  %1 = load i16, ptr %0, align 2, !dbg !1418, !tbaa !1185
  %call = call float @_cmsHalf2Float(i16 noundef zeroext %1), !dbg !1419
  store float %call, ptr %n, align 4, !dbg !1416, !tbaa !1216
  %2 = load float, ptr %n, align 4, !dbg !1420, !tbaa !1216
  %conv = fpext float %2 to double, !dbg !1420
  %mul = fmul double %conv, 6.553500e+04, !dbg !1421
  %call1 = call zeroext i16 @_cmsQuickSaturateWord(double noundef %mul), !dbg !1422
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !1423, !tbaa !445
  store i16 %call1, ptr %3, align 2, !dbg !1424, !tbaa !1185
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !1425
  ret void, !dbg !1425
}

; Function Attrs: nounwind uwtable
define internal void @fromHLFto16SE(ptr noundef %dst, ptr noundef %src) #0 !dbg !1426 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n = alloca float, align 4
  %i = alloca i16, align 2
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1428, metadata !DIExpression()), !dbg !1432
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1429, metadata !DIExpression()), !dbg !1433
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !1434
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1430, metadata !DIExpression()), !dbg !1435
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1436, !tbaa !445
  %1 = load i16, ptr %0, align 2, !dbg !1437, !tbaa !1185
  %call = call float @_cmsHalf2Float(i16 noundef zeroext %1), !dbg !1438
  store float %call, ptr %n, align 4, !dbg !1435, !tbaa !1216
  call void @llvm.lifetime.start.p0(i64 2, ptr %i) #7, !dbg !1439
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1431, metadata !DIExpression()), !dbg !1440
  %2 = load float, ptr %n, align 4, !dbg !1441, !tbaa !1216
  %conv = fpext float %2 to double, !dbg !1441
  %mul = fmul double %conv, 6.553500e+04, !dbg !1442
  %call1 = call zeroext i16 @_cmsQuickSaturateWord(double noundef %mul), !dbg !1443
  store i16 %call1, ptr %i, align 2, !dbg !1440, !tbaa !1185
  %3 = load i16, ptr %i, align 2, !dbg !1444, !tbaa !1185
  %conv2 = zext i16 %3 to i32, !dbg !1444
  %shl = shl i32 %conv2, 8, !dbg !1444
  %conv3 = trunc i32 %shl to i16, !dbg !1444
  %conv4 = zext i16 %conv3 to i32, !dbg !1444
  %4 = load i16, ptr %i, align 2, !dbg !1444, !tbaa !1185
  %conv5 = zext i16 %4 to i32, !dbg !1444
  %shr = ashr i32 %conv5, 8, !dbg !1444
  %or = or i32 %conv4, %shr, !dbg !1444
  %conv6 = trunc i32 %or to i16, !dbg !1444
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !1445, !tbaa !445
  store i16 %conv6, ptr %5, align 2, !dbg !1446, !tbaa !1185
  call void @llvm.lifetime.end.p0(i64 2, ptr %i) #7, !dbg !1447
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !1447
  ret void, !dbg !1447
}

; Function Attrs: nounwind uwtable
define internal void @fromHLFtoFLT(ptr noundef %dst, ptr noundef %src) #0 !dbg !1448 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1450, metadata !DIExpression()), !dbg !1452
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1451, metadata !DIExpression()), !dbg !1453
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1454, !tbaa !445
  %1 = load i16, ptr %0, align 2, !dbg !1455, !tbaa !1185
  %call = call float @_cmsHalf2Float(i16 noundef zeroext %1), !dbg !1456
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !1457, !tbaa !445
  store float %call, ptr %2, align 4, !dbg !1458, !tbaa !1216
  ret void, !dbg !1459
}

; Function Attrs: nounwind uwtable
define internal void @fromHLFtoDBL(ptr noundef %dst, ptr noundef %src) #0 !dbg !1460 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1462, metadata !DIExpression()), !dbg !1464
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1463, metadata !DIExpression()), !dbg !1465
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1466, !tbaa !445
  %1 = load i16, ptr %0, align 2, !dbg !1467, !tbaa !1185
  %call = call float @_cmsHalf2Float(i16 noundef zeroext %1), !dbg !1468
  %conv = fpext float %call to double, !dbg !1469
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !1470, !tbaa !445
  store double %conv, ptr %2, align 8, !dbg !1471, !tbaa !1248
  ret void, !dbg !1472
}

; Function Attrs: nounwind uwtable
define internal void @fromFLTto8(ptr noundef %dst, ptr noundef %src) #0 !dbg !1473 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n = alloca float, align 4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1475, metadata !DIExpression()), !dbg !1478
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1476, metadata !DIExpression()), !dbg !1479
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !1480
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1477, metadata !DIExpression()), !dbg !1481
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1482, !tbaa !445
  %1 = load float, ptr %0, align 4, !dbg !1483, !tbaa !1216
  store float %1, ptr %n, align 4, !dbg !1481, !tbaa !1216
  %2 = load float, ptr %n, align 4, !dbg !1484, !tbaa !1216
  %conv = fpext float %2 to double, !dbg !1484
  %mul = fmul double %conv, 2.550000e+02, !dbg !1485
  %call = call zeroext i8 @_cmsQuickSaturateByte(double noundef %mul), !dbg !1486
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !1487, !tbaa !445
  store i8 %call, ptr %3, align 1, !dbg !1488, !tbaa !1181
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !1489
  ret void, !dbg !1489
}

; Function Attrs: nounwind uwtable
define internal void @fromFLTto16(ptr noundef %dst, ptr noundef %src) #0 !dbg !1490 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n = alloca float, align 4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1492, metadata !DIExpression()), !dbg !1495
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1493, metadata !DIExpression()), !dbg !1496
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !1497
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1494, metadata !DIExpression()), !dbg !1498
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1499, !tbaa !445
  %1 = load float, ptr %0, align 4, !dbg !1500, !tbaa !1216
  store float %1, ptr %n, align 4, !dbg !1498, !tbaa !1216
  %2 = load float, ptr %n, align 4, !dbg !1501, !tbaa !1216
  %conv = fpext float %2 to double, !dbg !1501
  %mul = fmul double %conv, 6.553500e+04, !dbg !1502
  %call = call zeroext i16 @_cmsQuickSaturateWord(double noundef %mul), !dbg !1503
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !1504, !tbaa !445
  store i16 %call, ptr %3, align 2, !dbg !1505, !tbaa !1185
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !1506
  ret void, !dbg !1506
}

; Function Attrs: nounwind uwtable
define internal void @fromFLTto16SE(ptr noundef %dst, ptr noundef %src) #0 !dbg !1507 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n = alloca float, align 4
  %i = alloca i16, align 2
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1509, metadata !DIExpression()), !dbg !1513
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1510, metadata !DIExpression()), !dbg !1514
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !1515
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1511, metadata !DIExpression()), !dbg !1516
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1517, !tbaa !445
  %1 = load float, ptr %0, align 4, !dbg !1518, !tbaa !1216
  store float %1, ptr %n, align 4, !dbg !1516, !tbaa !1216
  call void @llvm.lifetime.start.p0(i64 2, ptr %i) #7, !dbg !1519
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1512, metadata !DIExpression()), !dbg !1520
  %2 = load float, ptr %n, align 4, !dbg !1521, !tbaa !1216
  %conv = fpext float %2 to double, !dbg !1521
  %mul = fmul double %conv, 6.553500e+04, !dbg !1522
  %call = call zeroext i16 @_cmsQuickSaturateWord(double noundef %mul), !dbg !1523
  store i16 %call, ptr %i, align 2, !dbg !1520, !tbaa !1185
  %3 = load i16, ptr %i, align 2, !dbg !1524, !tbaa !1185
  %conv1 = zext i16 %3 to i32, !dbg !1524
  %shl = shl i32 %conv1, 8, !dbg !1524
  %conv2 = trunc i32 %shl to i16, !dbg !1524
  %conv3 = zext i16 %conv2 to i32, !dbg !1524
  %4 = load i16, ptr %i, align 2, !dbg !1524, !tbaa !1185
  %conv4 = zext i16 %4 to i32, !dbg !1524
  %shr = ashr i32 %conv4, 8, !dbg !1524
  %or = or i32 %conv3, %shr, !dbg !1524
  %conv5 = trunc i32 %or to i16, !dbg !1524
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !1525, !tbaa !445
  store i16 %conv5, ptr %5, align 2, !dbg !1526, !tbaa !1185
  call void @llvm.lifetime.end.p0(i64 2, ptr %i) #7, !dbg !1527
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !1527
  ret void, !dbg !1527
}

; Function Attrs: nounwind uwtable
define internal void @fromFLTtoHLF(ptr noundef %dst, ptr noundef %src) #0 !dbg !1528 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n = alloca float, align 4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1530, metadata !DIExpression()), !dbg !1533
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1531, metadata !DIExpression()), !dbg !1534
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !1535
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1532, metadata !DIExpression()), !dbg !1536
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1537, !tbaa !445
  %1 = load float, ptr %0, align 4, !dbg !1538, !tbaa !1216
  store float %1, ptr %n, align 4, !dbg !1536, !tbaa !1216
  %2 = load float, ptr %n, align 4, !dbg !1539, !tbaa !1216
  %call = call zeroext i16 @_cmsFloat2Half(float noundef %2), !dbg !1540
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !1541, !tbaa !445
  store i16 %call, ptr %3, align 2, !dbg !1542, !tbaa !1185
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !1543
  ret void, !dbg !1543
}

; Function Attrs: nounwind uwtable
define internal void @copy32(ptr noundef %dst, ptr noundef %src) #0 !dbg !1544 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1546, metadata !DIExpression()), !dbg !1548
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1547, metadata !DIExpression()), !dbg !1549
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1550, !tbaa !445
  %1 = load ptr, ptr %src.addr, align 8, !dbg !1551, !tbaa !445
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 4, i1 false), !dbg !1552
  ret void, !dbg !1553
}

; Function Attrs: nounwind uwtable
define internal void @fromFLTtoDBL(ptr noundef %dst, ptr noundef %src) #0 !dbg !1554 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n = alloca float, align 4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1556, metadata !DIExpression()), !dbg !1559
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1557, metadata !DIExpression()), !dbg !1560
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !1561
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1558, metadata !DIExpression()), !dbg !1562
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1563, !tbaa !445
  %1 = load float, ptr %0, align 4, !dbg !1564, !tbaa !1216
  store float %1, ptr %n, align 4, !dbg !1562, !tbaa !1216
  %2 = load float, ptr %n, align 4, !dbg !1565, !tbaa !1216
  %conv = fpext float %2 to double, !dbg !1566
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !1567, !tbaa !445
  store double %conv, ptr %3, align 8, !dbg !1568, !tbaa !1248
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !1569
  ret void, !dbg !1569
}

; Function Attrs: nounwind uwtable
define internal void @fromDBLto8(ptr noundef %dst, ptr noundef %src) #0 !dbg !1570 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n = alloca double, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1572, metadata !DIExpression()), !dbg !1575
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1573, metadata !DIExpression()), !dbg !1576
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #7, !dbg !1577
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1574, metadata !DIExpression()), !dbg !1578
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1579, !tbaa !445
  %1 = load double, ptr %0, align 8, !dbg !1580, !tbaa !1248
  store double %1, ptr %n, align 8, !dbg !1578, !tbaa !1248
  %2 = load double, ptr %n, align 8, !dbg !1581, !tbaa !1248
  %mul = fmul double %2, 2.550000e+02, !dbg !1582
  %call = call zeroext i8 @_cmsQuickSaturateByte(double noundef %mul), !dbg !1583
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !1584, !tbaa !445
  store i8 %call, ptr %3, align 1, !dbg !1585, !tbaa !1181
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #7, !dbg !1586
  ret void, !dbg !1586
}

; Function Attrs: nounwind uwtable
define internal void @fromDBLto16(ptr noundef %dst, ptr noundef %src) #0 !dbg !1587 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n = alloca double, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1589, metadata !DIExpression()), !dbg !1592
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1590, metadata !DIExpression()), !dbg !1593
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #7, !dbg !1594
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1591, metadata !DIExpression()), !dbg !1595
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1596, !tbaa !445
  %1 = load double, ptr %0, align 8, !dbg !1597, !tbaa !1248
  store double %1, ptr %n, align 8, !dbg !1595, !tbaa !1248
  %2 = load double, ptr %n, align 8, !dbg !1598, !tbaa !1248
  %mul = fmul double %2, 6.553500e+04, !dbg !1599
  %call = call zeroext i16 @_cmsQuickSaturateWord(double noundef %mul), !dbg !1600
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !1601, !tbaa !445
  store i16 %call, ptr %3, align 2, !dbg !1602, !tbaa !1185
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #7, !dbg !1603
  ret void, !dbg !1603
}

; Function Attrs: nounwind uwtable
define internal void @fromDBLto16SE(ptr noundef %dst, ptr noundef %src) #0 !dbg !1604 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n = alloca double, align 8
  %i = alloca i16, align 2
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1606, metadata !DIExpression()), !dbg !1610
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1607, metadata !DIExpression()), !dbg !1611
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #7, !dbg !1612
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1608, metadata !DIExpression()), !dbg !1613
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1614, !tbaa !445
  %1 = load double, ptr %0, align 8, !dbg !1615, !tbaa !1248
  store double %1, ptr %n, align 8, !dbg !1613, !tbaa !1248
  call void @llvm.lifetime.start.p0(i64 2, ptr %i) #7, !dbg !1616
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1609, metadata !DIExpression()), !dbg !1617
  %2 = load double, ptr %n, align 8, !dbg !1618, !tbaa !1248
  %mul = fmul double %2, 6.553500e+04, !dbg !1619
  %call = call zeroext i16 @_cmsQuickSaturateWord(double noundef %mul), !dbg !1620
  store i16 %call, ptr %i, align 2, !dbg !1617, !tbaa !1185
  %3 = load i16, ptr %i, align 2, !dbg !1621, !tbaa !1185
  %conv = zext i16 %3 to i32, !dbg !1621
  %shl = shl i32 %conv, 8, !dbg !1621
  %conv1 = trunc i32 %shl to i16, !dbg !1621
  %conv2 = zext i16 %conv1 to i32, !dbg !1621
  %4 = load i16, ptr %i, align 2, !dbg !1621, !tbaa !1185
  %conv3 = zext i16 %4 to i32, !dbg !1621
  %shr = ashr i32 %conv3, 8, !dbg !1621
  %or = or i32 %conv2, %shr, !dbg !1621
  %conv4 = trunc i32 %or to i16, !dbg !1621
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !1622, !tbaa !445
  store i16 %conv4, ptr %5, align 2, !dbg !1623, !tbaa !1185
  call void @llvm.lifetime.end.p0(i64 2, ptr %i) #7, !dbg !1624
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #7, !dbg !1624
  ret void, !dbg !1624
}

; Function Attrs: nounwind uwtable
define internal void @fromDBLtoHLF(ptr noundef %dst, ptr noundef %src) #0 !dbg !1625 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n = alloca float, align 4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1627, metadata !DIExpression()), !dbg !1630
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1628, metadata !DIExpression()), !dbg !1631
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7, !dbg !1632
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1629, metadata !DIExpression()), !dbg !1633
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1634, !tbaa !445
  %1 = load double, ptr %0, align 8, !dbg !1635, !tbaa !1248
  %conv = fptrunc double %1 to float, !dbg !1636
  store float %conv, ptr %n, align 4, !dbg !1633, !tbaa !1216
  %2 = load float, ptr %n, align 4, !dbg !1637, !tbaa !1216
  %call = call zeroext i16 @_cmsFloat2Half(float noundef %2), !dbg !1638
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !1639, !tbaa !445
  store i16 %call, ptr %3, align 2, !dbg !1640, !tbaa !1185
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7, !dbg !1641
  ret void, !dbg !1641
}

; Function Attrs: nounwind uwtable
define internal void @fromDBLtoFLT(ptr noundef %dst, ptr noundef %src) #0 !dbg !1642 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n = alloca double, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1644, metadata !DIExpression()), !dbg !1647
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1645, metadata !DIExpression()), !dbg !1648
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #7, !dbg !1649
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1646, metadata !DIExpression()), !dbg !1650
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1651, !tbaa !445
  %1 = load double, ptr %0, align 8, !dbg !1652, !tbaa !1248
  store double %1, ptr %n, align 8, !dbg !1650, !tbaa !1248
  %2 = load double, ptr %n, align 8, !dbg !1653, !tbaa !1248
  %conv = fptrunc double %2 to float, !dbg !1654
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !1655, !tbaa !445
  store float %conv, ptr %3, align 4, !dbg !1656, !tbaa !1216
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #7, !dbg !1657
  ret void, !dbg !1657
}

; Function Attrs: nounwind uwtable
define internal void @copy64(ptr noundef %dst, ptr noundef %src) #0 !dbg !1658 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1660, metadata !DIExpression()), !dbg !1662
  store ptr %src, ptr %src.addr, align 8, !tbaa !445
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1661, metadata !DIExpression()), !dbg !1663
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !1664, !tbaa !445
  %1 = load ptr, ptr %src.addr, align 8, !dbg !1665, !tbaa !445
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 8, i1 false), !dbg !1666
  ret void, !dbg !1667
}

; Function Attrs: nounwind uwtable
define internal i32 @FormatterPos(i32 noundef %frm) #0 !dbg !1668 {
entry:
  %retval = alloca i32, align 4
  %frm.addr = alloca i32, align 4
  %b = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %frm, ptr %frm.addr, align 4, !tbaa !452
  tail call void @llvm.dbg.declare(metadata ptr %frm.addr, metadata !1672, metadata !DIExpression()), !dbg !1674
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #7, !dbg !1675
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !1673, metadata !DIExpression()), !dbg !1676
  %0 = load i32, ptr %frm.addr, align 4, !dbg !1677, !tbaa !452
  %and = and i32 %0, 7, !dbg !1677
  store i32 %and, ptr %b, align 4, !dbg !1676, !tbaa !452
  %1 = load i32, ptr %b, align 4, !dbg !1678, !tbaa !452
  %cmp = icmp eq i32 %1, 0, !dbg !1680
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1681

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %frm.addr, align 4, !dbg !1682, !tbaa !452
  %shr = lshr i32 %2, 22, !dbg !1682
  %and1 = and i32 %shr, 1, !dbg !1682
  %tobool = icmp ne i32 %and1, 0, !dbg !1682
  br i1 %tobool, label %if.then, label %if.end, !dbg !1683

if.then:                                          ; preds = %land.lhs.true
  store i32 5, ptr %retval, align 4, !dbg !1684
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1684

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, ptr %b, align 4, !dbg !1685, !tbaa !452
  %cmp2 = icmp eq i32 %3, 2, !dbg !1687
  br i1 %cmp2, label %land.lhs.true3, label %if.end8, !dbg !1688

land.lhs.true3:                                   ; preds = %if.end
  %4 = load i32, ptr %frm.addr, align 4, !dbg !1689, !tbaa !452
  %shr4 = lshr i32 %4, 22, !dbg !1689
  %and5 = and i32 %shr4, 1, !dbg !1689
  %tobool6 = icmp ne i32 %and5, 0, !dbg !1689
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1690

if.then7:                                         ; preds = %land.lhs.true3
  store i32 3, ptr %retval, align 4, !dbg !1691
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1691

if.end8:                                          ; preds = %land.lhs.true3, %if.end
  %5 = load i32, ptr %b, align 4, !dbg !1692, !tbaa !452
  %cmp9 = icmp eq i32 %5, 4, !dbg !1694
  br i1 %cmp9, label %land.lhs.true10, label %if.end15, !dbg !1695

land.lhs.true10:                                  ; preds = %if.end8
  %6 = load i32, ptr %frm.addr, align 4, !dbg !1696, !tbaa !452
  %shr11 = lshr i32 %6, 22, !dbg !1696
  %and12 = and i32 %shr11, 1, !dbg !1696
  %tobool13 = icmp ne i32 %and12, 0, !dbg !1696
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !1697

if.then14:                                        ; preds = %land.lhs.true10
  store i32 4, ptr %retval, align 4, !dbg !1698
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1698

if.end15:                                         ; preds = %land.lhs.true10, %if.end8
  %7 = load i32, ptr %b, align 4, !dbg !1699, !tbaa !452
  %cmp16 = icmp eq i32 %7, 2, !dbg !1701
  br i1 %cmp16, label %land.lhs.true17, label %if.end26, !dbg !1702

land.lhs.true17:                                  ; preds = %if.end15
  %8 = load i32, ptr %frm.addr, align 4, !dbg !1703, !tbaa !452
  %shr18 = lshr i32 %8, 22, !dbg !1703
  %and19 = and i32 %shr18, 1, !dbg !1703
  %tobool20 = icmp ne i32 %and19, 0, !dbg !1703
  br i1 %tobool20, label %if.end26, label %if.then21, !dbg !1704

if.then21:                                        ; preds = %land.lhs.true17
  %9 = load i32, ptr %frm.addr, align 4, !dbg !1705, !tbaa !452
  %shr22 = lshr i32 %9, 11, !dbg !1705
  %and23 = and i32 %shr22, 1, !dbg !1705
  %tobool24 = icmp ne i32 %and23, 0, !dbg !1705
  br i1 %tobool24, label %if.then25, label %if.else, !dbg !1708

if.then25:                                        ; preds = %if.then21
  store i32 2, ptr %retval, align 4, !dbg !1709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1709

if.else:                                          ; preds = %if.then21
  store i32 1, ptr %retval, align 4, !dbg !1710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1710

if.end26:                                         ; preds = %land.lhs.true17, %if.end15
  %10 = load i32, ptr %b, align 4, !dbg !1711, !tbaa !452
  %cmp27 = icmp eq i32 %10, 1, !dbg !1713
  br i1 %cmp27, label %land.lhs.true28, label %if.end33, !dbg !1714

land.lhs.true28:                                  ; preds = %if.end26
  %11 = load i32, ptr %frm.addr, align 4, !dbg !1715, !tbaa !452
  %shr29 = lshr i32 %11, 22, !dbg !1715
  %and30 = and i32 %shr29, 1, !dbg !1715
  %tobool31 = icmp ne i32 %and30, 0, !dbg !1715
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !1716

if.then32:                                        ; preds = %land.lhs.true28
  store i32 0, ptr %retval, align 4, !dbg !1717
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1717

if.end33:                                         ; preds = %land.lhs.true28, %if.end26
  store i32 -1, ptr %retval, align 4, !dbg !1718
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1718

cleanup:                                          ; preds = %if.end33, %if.then32, %if.else, %if.then25, %if.then14, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #7, !dbg !1719
  %12 = load i32, ptr %retval, align 4, !dbg !1719
  ret i32 %12, !dbg !1719
}

declare !dbg !1720 void @cmsSignalError(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

declare !dbg !1725 zeroext i16 @_cmsFloat2Half(float noundef) #3

declare !dbg !1728 float @_cmsHalf2Float(i16 noundef zeroext) #3

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @_cmsQuickSaturateByte(double noundef %d) #5 !dbg !1731 {
entry:
  %retval = alloca i8, align 1
  %d.addr = alloca double, align 8
  store double %d, ptr %d.addr, align 8, !tbaa !1248
  tail call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !1735, metadata !DIExpression()), !dbg !1736
  %0 = load double, ptr %d.addr, align 8, !dbg !1737, !tbaa !1248
  %add = fadd double %0, 5.000000e-01, !dbg !1737
  store double %add, ptr %d.addr, align 8, !dbg !1737, !tbaa !1248
  %1 = load double, ptr %d.addr, align 8, !dbg !1738, !tbaa !1248
  %cmp = fcmp ole double %1, 0.000000e+00, !dbg !1740
  br i1 %cmp, label %if.then, label %if.end, !dbg !1741

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1, !dbg !1742
  br label %return, !dbg !1742

if.end:                                           ; preds = %entry
  %2 = load double, ptr %d.addr, align 8, !dbg !1743, !tbaa !1248
  %cmp1 = fcmp oge double %2, 2.550000e+02, !dbg !1745
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1746

if.then2:                                         ; preds = %if.end
  store i8 -1, ptr %retval, align 1, !dbg !1747
  br label %return, !dbg !1747

if.end3:                                          ; preds = %if.end
  %3 = load double, ptr %d.addr, align 8, !dbg !1748, !tbaa !1248
  %call = call zeroext i16 @_cmsQuickFloorWord(double noundef %3), !dbg !1749
  %conv = trunc i16 %call to i8, !dbg !1750
  store i8 %conv, ptr %retval, align 1, !dbg !1751
  br label %return, !dbg !1751

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %4 = load i8, ptr %retval, align 1, !dbg !1752
  ret i8 %4, !dbg !1752
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @_cmsQuickFloorWord(double noundef %d) #5 !dbg !1753 {
entry:
  %d.addr = alloca double, align 8
  store double %d, ptr %d.addr, align 8, !tbaa !1248
  tail call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !1757, metadata !DIExpression()), !dbg !1758
  %0 = load double, ptr %d.addr, align 8, !dbg !1759, !tbaa !1248
  %sub = fsub double %0, 3.276700e+04, !dbg !1760
  %call = call i32 @_cmsQuickFloor(double noundef %sub), !dbg !1761
  %conv = trunc i32 %call to i16, !dbg !1762
  %conv1 = zext i16 %conv to i32, !dbg !1762
  %add = add i32 %conv1, 32767, !dbg !1763
  %conv2 = trunc i32 %add to i16, !dbg !1762
  ret i16 %conv2, !dbg !1764
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_cmsQuickFloor(double noundef %val) #5 !dbg !1765 {
entry:
  %val.addr = alloca double, align 8
  %_lcms_double2fixmagic = alloca double, align 8
  %temp = alloca %union.anon, align 8
  store double %val, ptr %val.addr, align 8, !tbaa !1248
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1769, metadata !DIExpression()), !dbg !1780
  call void @llvm.lifetime.start.p0(i64 8, ptr %_lcms_double2fixmagic) #7, !dbg !1781
  tail call void @llvm.dbg.declare(metadata ptr %_lcms_double2fixmagic, metadata !1770, metadata !DIExpression()), !dbg !1782
  store double 0x4238000000000000, ptr %_lcms_double2fixmagic, align 8, !dbg !1782, !tbaa !1248
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #7, !dbg !1783
  tail call void @llvm.dbg.declare(metadata ptr %temp, metadata !1772, metadata !DIExpression()), !dbg !1784
  %0 = load double, ptr %val.addr, align 8, !dbg !1785, !tbaa !1248
  %add = fadd double %0, 0x4238000000000000, !dbg !1786
  store double %add, ptr %temp, align 8, !dbg !1787, !tbaa !1181
  %arrayidx = getelementptr inbounds [2 x i32], ptr %temp, i64 0, i64 0, !dbg !1788
  %1 = load i32, ptr %arrayidx, align 8, !dbg !1788, !tbaa !1181
  %shr = ashr i32 %1, 16, !dbg !1789
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #7, !dbg !1790
  call void @llvm.lifetime.end.p0(i64 8, ptr %_lcms_double2fixmagic) #7, !dbg !1790
  ret i32 %shr, !dbg !1791
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @_cmsQuickSaturateWord(double noundef %d) #5 !dbg !1792 {
entry:
  %retval = alloca i16, align 2
  %d.addr = alloca double, align 8
  store double %d, ptr %d.addr, align 8, !tbaa !1248
  tail call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !1794, metadata !DIExpression()), !dbg !1795
  %0 = load double, ptr %d.addr, align 8, !dbg !1796, !tbaa !1248
  %add = fadd double %0, 5.000000e-01, !dbg !1796
  store double %add, ptr %d.addr, align 8, !dbg !1796, !tbaa !1248
  %1 = load double, ptr %d.addr, align 8, !dbg !1797, !tbaa !1248
  %cmp = fcmp ole double %1, 0.000000e+00, !dbg !1799
  br i1 %cmp, label %if.then, label %if.end, !dbg !1800

if.then:                                          ; preds = %entry
  store i16 0, ptr %retval, align 2, !dbg !1801
  br label %return, !dbg !1801

if.end:                                           ; preds = %entry
  %2 = load double, ptr %d.addr, align 8, !dbg !1802, !tbaa !1248
  %cmp1 = fcmp oge double %2, 6.553500e+04, !dbg !1804
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1805

if.then2:                                         ; preds = %if.end
  store i16 -1, ptr %retval, align 2, !dbg !1806
  br label %return, !dbg !1806

if.end3:                                          ; preds = %if.end
  %3 = load double, ptr %d.addr, align 8, !dbg !1807, !tbaa !1248
  %call = call zeroext i16 @_cmsQuickFloorWord(double noundef %3), !dbg !1808
  store i16 %call, ptr %retval, align 2, !dbg !1809
  br label %return, !dbg !1809

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %4 = load i16, ptr %retval, align 2, !dbg !1810
  ret i16 %4, !dbg !1810
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!77}
!llvm.module.flags = !{!197, !198, !199, !200, !201}
!llvm.ident = !{!202}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "FormattersAlpha", scope: !2, file: !3, line: 380, type: !194, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "_cmsGetFormatterAlpha", scope: !3, file: !3, line: 378, type: !4, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !187)
!3 = !DIFile(filename: "cmsalpha.c", directory: "/local-ssd/lcms-ztpfygwoja345726vi3y4tc34unbjaib-build/aidengro/spack-stage-lcms-2.13.1-ztpfygwoja345726vi3y4tc34unbjaib/spack-src/src", checksumkind: CSK_MD5, checksum: "980ab75696bcb44f5f68be1ed1124e16")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !13, !36, !36}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsFormatterAlphaFn", file: !3, line: 63, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !11}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsContext", file: !14, line: 1056, baseType: !15)
!14 = !DIFile(filename: "../include/lcms2.h", directory: "/local-ssd/lcms-ztpfygwoja345726vi3y4tc34unbjaib-build/aidengro/spack-stage-lcms-2.13.1-ztpfygwoja345726vi3y4tc34unbjaib/spack-src/src", checksumkind: CSK_MD5, checksum: "b2bebc2d7c5ccc569b0d00311c47ac6c")
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cmsContext_struct", file: !17, line: 511, size: 1472, elements: !18)
!17 = !DIFile(filename: "./lcms2_internal.h", directory: "/local-ssd/lcms-ztpfygwoja345726vi3y4tc34unbjaib-build/aidengro/spack-stage-lcms-2.13.1-ztpfygwoja345726vi3y4tc34unbjaib/spack-src/src", checksumkind: CSK_MD5, checksum: "479b61780e49804306b4c5804e975f85")
!18 = !{!19, !20, !41, !45}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !16, file: !17, line: 513, baseType: !15, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "MemPool", scope: !16, file: !17, line: 514, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsSubAllocator", file: !17, line: 460, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 455, size: 128, elements: !24)
!24 = !{!25, !26}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ContextID", scope: !23, file: !17, line: 457, baseType: !13, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !23, file: !17, line: 458, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsSubAllocator_chunk", file: !17, line: 452, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cmsSubAllocator_chunk_st", file: !17, line: 444, size: 192, elements: !30)
!30 = !{!31, !35, !38, !39}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "Block", scope: !29, file: !17, line: 446, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsUInt8Number", file: !14, line: 90, baseType: !34)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "BlockSize", scope: !29, file: !17, line: 447, baseType: !36, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsUInt32Number", file: !14, line: 120, baseType: !37)
!37 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "Used", scope: !29, file: !17, line: 448, baseType: !36, size: 32, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !29, file: !17, line: 450, baseType: !40, size: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !16, file: !17, line: 516, baseType: !42, size: 960, offset: 128)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 960, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 15)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "DefaultMemoryManager", scope: !16, file: !17, line: 519, baseType: !46, size: 384, offset: 1088)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsMemPluginChunkType", file: !17, line: 505, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 496, size: 384, elements: !48)
!48 = !{!49, !55, !57, !62, !67, !72}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "MallocPtr", scope: !47, file: !17, line: 498, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsMallocFnPtrType", file: !51, line: 229, baseType: !52)
!51 = !DIFile(filename: "../include/lcms2_plugin.h", directory: "/local-ssd/lcms-ztpfygwoja345726vi3y4tc34unbjaib-build/aidengro/spack-stage-lcms-2.13.1-ztpfygwoja345726vi3y4tc34unbjaib/spack-src/src", checksumkind: CSK_MD5, checksum: "3a8f6b8afdf5dfc22373e8103ac5e8ca")
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!10, !13, !36}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "MallocZeroPtr", scope: !47, file: !17, line: 499, baseType: !56, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsMalloZerocFnPtrType", file: !51, line: 233, baseType: !52)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "FreePtr", scope: !47, file: !17, line: 500, baseType: !58, size: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsFreeFnPtrType", file: !51, line: 230, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !13, !10}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "ReallocPtr", scope: !47, file: !17, line: 501, baseType: !63, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsReallocFnPtrType", file: !51, line: 231, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!10, !13, !10, !36}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "CallocPtr", scope: !47, file: !17, line: 502, baseType: !68, size: 64, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsCallocFnPtrType", file: !51, line: 234, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!10, !13, !36, !36}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "DupPtr", scope: !47, file: !17, line: 503, baseType: !73, size: 64, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsDupFnPtrType", file: !51, line: 235, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!10, !13, !11, !36}
!77 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, retainedTypes: !170, globals: !180, splitDebugInlining: false, nameTableKind: None)
!78 = !{!79, !97, !142}
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 523, baseType: !37, size: 32, elements: !80)
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!81 = !DIEnumerator(name: "cmsSigCurveSetElemType", value: 1668707188)
!82 = !DIEnumerator(name: "cmsSigMatrixElemType", value: 1835103334)
!83 = !DIEnumerator(name: "cmsSigCLutElemType", value: 1668052340)
!84 = !DIEnumerator(name: "cmsSigBAcsElemType", value: 1648444243)
!85 = !DIEnumerator(name: "cmsSigEAcsElemType", value: 1698775891)
!86 = !DIEnumerator(name: "cmsSigXYZ2LabElemType", value: 1815246880)
!87 = !DIEnumerator(name: "cmsSigLab2XYZElemType", value: 2016570400)
!88 = !DIEnumerator(name: "cmsSigNamedColorElemType", value: 1852009504)
!89 = !DIEnumerator(name: "cmsSigLabV2toV4", value: 840971296)
!90 = !DIEnumerator(name: "cmsSigLabV4toV2", value: 874525216)
!91 = !DIEnumerator(name: "cmsSigIdentityElemType", value: 1768189472)
!92 = !DIEnumerator(name: "cmsSigLab2FloatPCS", value: 1681026080)
!93 = !DIEnumerator(name: "cmsSigFloatPCS2Lab", value: 1815241760)
!94 = !DIEnumerator(name: "cmsSigXYZ2FloatPCS", value: 1681029152)
!95 = !DIEnumerator(name: "cmsSigFloatPCS2XYZ", value: 2016568352)
!96 = !DIEnumerator(name: "cmsSigClipNegativesElemType", value: 1668050976)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 442, baseType: !37, size: 32, elements: !98)
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!99 = !DIEnumerator(name: "cmsSigXYZData", value: 1482250784)
!100 = !DIEnumerator(name: "cmsSigLabData", value: 1281450528)
!101 = !DIEnumerator(name: "cmsSigLuvData", value: 1282766368)
!102 = !DIEnumerator(name: "cmsSigYCbCrData", value: 1497588338)
!103 = !DIEnumerator(name: "cmsSigYxyData", value: 1501067552)
!104 = !DIEnumerator(name: "cmsSigRgbData", value: 1380401696)
!105 = !DIEnumerator(name: "cmsSigGrayData", value: 1196573017)
!106 = !DIEnumerator(name: "cmsSigHsvData", value: 1213421088)
!107 = !DIEnumerator(name: "cmsSigHlsData", value: 1212961568)
!108 = !DIEnumerator(name: "cmsSigCmykData", value: 1129142603)
!109 = !DIEnumerator(name: "cmsSigCmyData", value: 1129142560)
!110 = !DIEnumerator(name: "cmsSigMCH1Data", value: 1296255025)
!111 = !DIEnumerator(name: "cmsSigMCH2Data", value: 1296255026)
!112 = !DIEnumerator(name: "cmsSigMCH3Data", value: 1296255027)
!113 = !DIEnumerator(name: "cmsSigMCH4Data", value: 1296255028)
!114 = !DIEnumerator(name: "cmsSigMCH5Data", value: 1296255029)
!115 = !DIEnumerator(name: "cmsSigMCH6Data", value: 1296255030)
!116 = !DIEnumerator(name: "cmsSigMCH7Data", value: 1296255031)
!117 = !DIEnumerator(name: "cmsSigMCH8Data", value: 1296255032)
!118 = !DIEnumerator(name: "cmsSigMCH9Data", value: 1296255033)
!119 = !DIEnumerator(name: "cmsSigMCHAData", value: 1296255041)
!120 = !DIEnumerator(name: "cmsSigMCHBData", value: 1296255042)
!121 = !DIEnumerator(name: "cmsSigMCHCData", value: 1296255043)
!122 = !DIEnumerator(name: "cmsSigMCHDData", value: 1296255044)
!123 = !DIEnumerator(name: "cmsSigMCHEData", value: 1296255045)
!124 = !DIEnumerator(name: "cmsSigMCHFData", value: 1296255046)
!125 = !DIEnumerator(name: "cmsSigNamedData", value: 1852662636)
!126 = !DIEnumerator(name: "cmsSig1colorData", value: 826494034)
!127 = !DIEnumerator(name: "cmsSig2colorData", value: 843271250)
!128 = !DIEnumerator(name: "cmsSig3colorData", value: 860048466)
!129 = !DIEnumerator(name: "cmsSig4colorData", value: 876825682)
!130 = !DIEnumerator(name: "cmsSig5colorData", value: 893602898)
!131 = !DIEnumerator(name: "cmsSig6colorData", value: 910380114)
!132 = !DIEnumerator(name: "cmsSig7colorData", value: 927157330)
!133 = !DIEnumerator(name: "cmsSig8colorData", value: 943934546)
!134 = !DIEnumerator(name: "cmsSig9colorData", value: 960711762)
!135 = !DIEnumerator(name: "cmsSig10colorData", value: 1094929490)
!136 = !DIEnumerator(name: "cmsSig11colorData", value: 1111706706)
!137 = !DIEnumerator(name: "cmsSig12colorData", value: 1128483922)
!138 = !DIEnumerator(name: "cmsSig13colorData", value: 1145261138)
!139 = !DIEnumerator(name: "cmsSig14colorData", value: 1162038354)
!140 = !DIEnumerator(name: "cmsSig15colorData", value: 1178815570)
!141 = !DIEnumerator(name: "cmsSigLuvKData", value: 1282766411)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 410, baseType: !37, size: 32, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!144 = !DIEnumerator(name: "cmsSigDigitalCamera", value: 1684234605)
!145 = !DIEnumerator(name: "cmsSigFilmScanner", value: 1718838126)
!146 = !DIEnumerator(name: "cmsSigReflectiveScanner", value: 1920164718)
!147 = !DIEnumerator(name: "cmsSigInkJetPrinter", value: 1768580468)
!148 = !DIEnumerator(name: "cmsSigThermalWaxPrinter", value: 1953980792)
!149 = !DIEnumerator(name: "cmsSigElectrophotographicPrinter", value: 1701865583)
!150 = !DIEnumerator(name: "cmsSigElectrostaticPrinter", value: 1702065249)
!151 = !DIEnumerator(name: "cmsSigDyeSublimationPrinter", value: 1685288290)
!152 = !DIEnumerator(name: "cmsSigPhotographicPaperPrinter", value: 1919969391)
!153 = !DIEnumerator(name: "cmsSigFilmWriter", value: 1718645358)
!154 = !DIEnumerator(name: "cmsSigVideoMonitor", value: 1986618477)
!155 = !DIEnumerator(name: "cmsSigVideoCamera", value: 1986618467)
!156 = !DIEnumerator(name: "cmsSigProjectionTelevision", value: 1886024822)
!157 = !DIEnumerator(name: "cmsSigCRTDisplay", value: 1129468960)
!158 = !DIEnumerator(name: "cmsSigPMDisplay", value: 1347240992)
!159 = !DIEnumerator(name: "cmsSigAMDisplay", value: 1095582752)
!160 = !DIEnumerator(name: "cmsSigPhotoCD", value: 1263551300)
!161 = !DIEnumerator(name: "cmsSigPhotoImageSetter", value: 1768777587)
!162 = !DIEnumerator(name: "cmsSigGravure", value: 1735549302)
!163 = !DIEnumerator(name: "cmsSigOffsetLithography", value: 1868981875)
!164 = !DIEnumerator(name: "cmsSigSilkscreen", value: 1936288875)
!165 = !DIEnumerator(name: "cmsSigFlexography", value: 1718379896)
!166 = !DIEnumerator(name: "cmsSigMotionPictureFilmScanner", value: 1836082803)
!167 = !DIEnumerator(name: "cmsSigMotionPictureFilmRecorder", value: 1836082802)
!168 = !DIEnumerator(name: "cmsSigDigitalMotionPictureCamera", value: 1684893795)
!169 = !DIEnumerator(name: "cmsSigDigitalCinemaProjector", value: 1684236912)
!170 = !{!10, !32, !171, !173, !174, !176, !177, !179, !33, !36}
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsUInt16Number", file: !14, line: 103, baseType: !172)
!172 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsFloat32Number", file: !14, line: 98, baseType: !175)
!175 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsFloat64Number", file: !14, line: 99, baseType: !178)
!178 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!180 = !{!0, !181}
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !3, line: 394, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 264, elements: !185)
!184 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!185 = !{!186}
!186 = !DISubrange(count: 33)
!187 = !{!188, !189, !190, !191, !193}
!188 = !DILocalVariable(name: "id", arg: 1, scope: !2, file: !3, line: 378, type: !13)
!189 = !DILocalVariable(name: "in", arg: 2, scope: !2, file: !3, line: 378, type: !36)
!190 = !DILocalVariable(name: "out", arg: 3, scope: !2, file: !3, line: 378, type: !36)
!191 = !DILocalVariable(name: "in_n", scope: !2, file: !3, line: 389, type: !192)
!192 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!193 = !DILocalVariable(name: "out_n", scope: !2, file: !3, line: 390, type: !192)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2304, elements: !195)
!195 = !{!196, !196}
!196 = !DISubrange(count: 6)
!197 = !{i32 7, !"Dwarf Version", i32 5}
!198 = !{i32 2, !"Debug Info Version", i32 3}
!199 = !{i32 1, !"wchar_size", i32 4}
!200 = !{i32 8, !"PIC Level", i32 2}
!201 = !{i32 7, !"uwtable", i32 2}
!202 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!203 = distinct !DISubprogram(name: "_cmsHandleExtraChannels", scope: !3, file: !3, line: 536, type: !204, scopeLine: 541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !416)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !206, !11, !10, !36, !36, !218}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsTRANSFORM", file: !17, line: 1084, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cmstransform_struct", file: !17, line: 1030, size: 2112, elements: !209)
!209 = !{!210, !211, !212, !227, !232, !233, !238, !239, !248, !311, !312, !337, !338, !340, !341, !348, !349, !405, !406, !407, !408, !409, !410, !411}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "InputFormat", scope: !208, file: !17, line: 1032, baseType: !36, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "OutputFormat", scope: !208, file: !17, line: 1032, baseType: !36, size: 32, offset: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "xform", scope: !208, file: !17, line: 1035, baseType: !213, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsTransform2Fn", file: !51, line: 602, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !217, !11, !10, !36, !36, !218}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsStride", file: !51, line: 593, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !51, line: 587, size: 128, elements: !222)
!222 = !{!223, !224, !225, !226}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "BytesPerLineIn", scope: !221, file: !51, line: 588, baseType: !36, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "BytesPerLineOut", scope: !221, file: !51, line: 589, baseType: !36, size: 32, offset: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "BytesPerPlaneIn", scope: !221, file: !51, line: 590, baseType: !36, size: 32, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "BytesPerPlaneOut", scope: !221, file: !51, line: 591, baseType: !36, size: 32, offset: 96)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "FromInput", scope: !208, file: !17, line: 1038, baseType: !228, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsFormatter16", file: !51, line: 349, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!32, !217, !173, !32, !36}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "ToOutput", scope: !208, file: !17, line: 1039, baseType: !228, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "FromInputFloat", scope: !208, file: !17, line: 1041, baseType: !234, size: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsFormatterFloat", file: !51, line: 354, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!32, !217, !176, !32, !36}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "ToOutputFloat", scope: !208, file: !17, line: 1042, baseType: !234, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "Cache", scope: !208, file: !17, line: 1045, baseType: !240, size: 512, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsCACHE", file: !17, line: 1025, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 1019, size: 512, elements: !242)
!242 = !{!243, !247}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "CacheIn", scope: !241, file: !17, line: 1022, baseType: !244, size: 256)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 256, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 16)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "CacheOut", scope: !241, file: !17, line: 1023, baseType: !244, size: 256, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "Lut", scope: !208, file: !17, line: 1048, baseType: !249, size: 64, offset: 896)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsPipeline", file: !14, line: 1221, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cmsPipeline_struct", file: !17, line: 913, size: 576, elements: !252)
!252 = !{!253, !286, !287, !288, !289, !296, !301, !303, !308, !309}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "Elements", scope: !251, file: !17, line: 915, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsStage", file: !14, line: 1222, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cmsStage_struct", file: !17, line: 871, size: 512, elements: !257)
!257 = !{!258, !259, !261, !262, !263, !264, !273, !278, !283, !284}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ContextID", scope: !256, file: !17, line: 873, baseType: !13, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "Type", scope: !256, file: !17, line: 875, baseType: !260, size: 32, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsStageSignature", file: !14, line: 548, baseType: !79)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "Implements", scope: !256, file: !17, line: 876, baseType: !260, size: 32, offset: 96)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "InputChannels", scope: !256, file: !17, line: 878, baseType: !36, size: 32, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "OutputChannels", scope: !256, file: !17, line: 879, baseType: !36, size: 32, offset: 160)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "EvalPtr", scope: !256, file: !17, line: 881, baseType: !265, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsStageEvalFn", file: !51, line: 491, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !269, !176, !271}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "DupElemPtr", scope: !256, file: !17, line: 882, baseType: !274, size: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsStageDupElemFn", file: !51, line: 492, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!10, !254}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "FreePtr", scope: !256, file: !17, line: 883, baseType: !279, size: 64, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsStageFreeElemFn", file: !51, line: 493, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !254}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !256, file: !17, line: 886, baseType: !10, size: 64, offset: 384)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !256, file: !17, line: 889, baseType: !285, size: 64, offset: 448)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "InputChannels", scope: !251, file: !17, line: 916, baseType: !36, size: 32, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "OutputChannels", scope: !251, file: !17, line: 916, baseType: !36, size: 32, offset: 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !251, file: !17, line: 919, baseType: !10, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "Eval16Fn", scope: !251, file: !17, line: 921, baseType: !290, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsPipelineEval16Fn", file: !51, line: 557, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !294, !173, !11}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "EvalFloatFn", scope: !251, file: !17, line: 922, baseType: !297, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsPipelineEvalFloatFn", file: !51, line: 562, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !269, !176, !11}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "FreeDataFn", scope: !251, file: !17, line: 923, baseType: !302, size: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsFreeUserDataFn", file: !51, line: 193, baseType: !59)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "DupDataFn", scope: !251, file: !17, line: 924, baseType: !304, size: 64, offset: 384)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsDupUserDataFn", file: !51, line: 194, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!10, !13, !11}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ContextID", scope: !251, file: !17, line: 926, baseType: !13, size: 64, offset: 448)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "SaveAs8Bits", scope: !251, file: !17, line: 928, baseType: !310, size: 32, offset: 512)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsBool", file: !14, line: 174, baseType: !192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "GamutCheck", scope: !208, file: !17, line: 1051, baseType: !249, size: 64, offset: 960)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "InputColorant", scope: !208, file: !17, line: 1054, baseType: !313, size: 64, offset: 1024)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsNAMEDCOLORLIST", file: !14, line: 1379, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cms_NAMEDCOLORLIST_struct", file: !17, line: 759, size: 768, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322, !336}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "nColors", scope: !315, file: !17, line: 761, baseType: !36, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "Allocated", scope: !315, file: !17, line: 762, baseType: !36, size: 32, offset: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "ColorantCount", scope: !315, file: !17, line: 763, baseType: !36, size: 32, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "Prefix", scope: !315, file: !17, line: 765, baseType: !183, size: 264, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "Suffix", scope: !315, file: !17, line: 766, baseType: !183, size: 264, offset: 360)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "List", scope: !315, file: !17, line: 768, baseType: !323, size: 64, offset: 640)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsNAMEDCOLOR", file: !17, line: 757, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 751, size: 2352, elements: !326)
!326 = !{!327, !331, !335}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "Name", scope: !325, file: !17, line: 753, baseType: !328, size: 2048)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 2048, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "PCS", scope: !325, file: !17, line: 754, baseType: !332, size: 48, offset: 2048)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 48, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 3)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceColorant", scope: !325, file: !17, line: 755, baseType: !244, size: 256, offset: 2096)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "ContextID", scope: !315, file: !17, line: 770, baseType: !13, size: 64, offset: 704)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "OutputColorant", scope: !208, file: !17, line: 1055, baseType: !313, size: 64, offset: 1088)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "EntryColorSpace", scope: !208, file: !17, line: 1058, baseType: !339, size: 32, offset: 1152)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsColorSpaceSignature", file: !14, line: 487, baseType: !97)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ExitColorSpace", scope: !208, file: !17, line: 1059, baseType: !339, size: 32, offset: 1184)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "EntryWhitePoint", scope: !208, file: !17, line: 1062, baseType: !342, size: 192, offset: 1216)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsCIEXYZ", file: !14, line: 970, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 965, size: 192, elements: !344)
!344 = !{!345, !346, !347}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "X", scope: !343, file: !14, line: 966, baseType: !177, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "Y", scope: !343, file: !14, line: 967, baseType: !177, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "Z", scope: !343, file: !14, line: 968, baseType: !177, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ExitWhitePoint", scope: !208, file: !17, line: 1063, baseType: !342, size: 192, offset: 1408)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "Sequence", scope: !208, file: !17, line: 1066, baseType: !350, size: 64, offset: 1600)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsSEQ", file: !14, line: 1428, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1422, size: 192, elements: !353)
!353 = !{!354, !355, !356}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !352, file: !14, line: 1424, baseType: !36, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ContextID", scope: !352, file: !14, line: 1425, baseType: !13, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !352, file: !14, line: 1426, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsPSEQDESC", file: !14, line: 1420, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1409, size: 512, elements: !360)
!360 = !{!361, !363, !364, !367, !369, !383, !403, !404}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "deviceMfg", scope: !359, file: !14, line: 1411, baseType: !362, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsSignature", file: !14, line: 168, baseType: !36)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "deviceModel", scope: !359, file: !14, line: 1412, baseType: !362, size: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !359, file: !14, line: 1413, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsUInt64Number", file: !14, line: 138, baseType: !366)
!366 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "technology", scope: !359, file: !14, line: 1414, baseType: !368, size: 32, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsTechnologySignature", file: !14, line: 438, baseType: !142)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ProfileID", scope: !359, file: !14, line: 1415, baseType: !370, size: 128, offset: 160)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsProfileID", file: !14, line: 611, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !14, line: 606, size: 128, elements: !372)
!372 = !{!373, !375, !379}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ID8", scope: !371, file: !14, line: 607, baseType: !374, size: 128)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !245)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ID16", scope: !371, file: !14, line: 608, baseType: !376, size: 128)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 128, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 8)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ID32", scope: !371, file: !14, line: 609, baseType: !380, size: 128)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 128, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 4)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "Manufacturer", scope: !359, file: !14, line: 1416, baseType: !384, size: 64, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsMLU", file: !14, line: 1303, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cms_MLU_struct", file: !17, line: 735, size: 320, elements: !387)
!387 = !{!388, !389, !390, !391, !400, !401, !402}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ContextID", scope: !386, file: !17, line: 737, baseType: !13, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "AllocatedEntries", scope: !386, file: !17, line: 740, baseType: !36, size: 32, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "UsedEntries", scope: !386, file: !17, line: 741, baseType: !36, size: 32, offset: 96)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "Entries", scope: !386, file: !17, line: 742, baseType: !392, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsMLUentry", file: !17, line: 733, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 725, size: 96, elements: !395)
!395 = !{!396, !397, !398, !399}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "Language", scope: !394, file: !17, line: 727, baseType: !171, size: 16)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "Country", scope: !394, file: !17, line: 728, baseType: !171, size: 16, offset: 16)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "StrW", scope: !394, file: !17, line: 730, baseType: !36, size: 32, offset: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "Len", scope: !394, file: !17, line: 731, baseType: !36, size: 32, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "PoolSize", scope: !386, file: !17, line: 745, baseType: !36, size: 32, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "PoolUsed", scope: !386, file: !17, line: 746, baseType: !36, size: 32, offset: 224)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "MemPool", scope: !386, file: !17, line: 747, baseType: !10, size: 64, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "Model", scope: !359, file: !14, line: 1417, baseType: !384, size: 64, offset: 384)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "Description", scope: !359, file: !14, line: 1418, baseType: !384, size: 64, offset: 448)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "dwOriginalFlags", scope: !208, file: !17, line: 1068, baseType: !36, size: 32, offset: 1664)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "AdaptationState", scope: !208, file: !17, line: 1069, baseType: !177, size: 64, offset: 1728)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "RenderingIntent", scope: !208, file: !17, line: 1072, baseType: !36, size: 32, offset: 1792)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ContextID", scope: !208, file: !17, line: 1075, baseType: !13, size: 64, offset: 1856)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "UserData", scope: !208, file: !17, line: 1078, baseType: !10, size: 64, offset: 1920)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "FreeUserData", scope: !208, file: !17, line: 1079, baseType: !302, size: 64, offset: 1984)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "OldXform", scope: !208, file: !17, line: 1082, baseType: !412, size: 64, offset: 2048)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsTransformFn", file: !51, line: 595, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !217, !11, !10, !36, !36}
!416 = !{!417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !429, !430, !431, !432, !433, !436, !437, !438, !439, !442, !443, !444}
!417 = !DILocalVariable(name: "p", arg: 1, scope: !203, file: !3, line: 536, type: !206)
!418 = !DILocalVariable(name: "in", arg: 2, scope: !203, file: !3, line: 536, type: !11)
!419 = !DILocalVariable(name: "out", arg: 3, scope: !203, file: !3, line: 537, type: !10)
!420 = !DILocalVariable(name: "PixelsPerLine", arg: 4, scope: !203, file: !3, line: 538, type: !36)
!421 = !DILocalVariable(name: "LineCount", arg: 5, scope: !203, file: !3, line: 539, type: !36)
!422 = !DILocalVariable(name: "Stride", arg: 6, scope: !203, file: !3, line: 540, type: !218)
!423 = !DILocalVariable(name: "i", scope: !203, file: !3, line: 542, type: !36)
!424 = !DILocalVariable(name: "j", scope: !203, file: !3, line: 542, type: !36)
!425 = !DILocalVariable(name: "k", scope: !203, file: !3, line: 542, type: !36)
!426 = !DILocalVariable(name: "nExtra", scope: !203, file: !3, line: 543, type: !36)
!427 = !DILocalVariable(name: "SourceStartingOrder", scope: !203, file: !3, line: 544, type: !428)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 512, elements: !245)
!429 = !DILocalVariable(name: "SourceIncrements", scope: !203, file: !3, line: 545, type: !428)
!430 = !DILocalVariable(name: "DestStartingOrder", scope: !203, file: !3, line: 546, type: !428)
!431 = !DILocalVariable(name: "DestIncrements", scope: !203, file: !3, line: 547, type: !428)
!432 = !DILocalVariable(name: "copyValueFn", scope: !203, file: !3, line: 549, type: !6)
!433 = !DILocalVariable(name: "SourcePtr", scope: !434, file: !3, line: 579, type: !32)
!434 = distinct !DILexicalBlock(scope: !435, file: !3, line: 577, column: 22)
!435 = distinct !DILexicalBlock(scope: !203, file: !3, line: 577, column: 9)
!436 = !DILocalVariable(name: "DestPtr", scope: !434, file: !3, line: 580, type: !32)
!437 = !DILocalVariable(name: "SourceStrideIncrement", scope: !434, file: !3, line: 582, type: !36)
!438 = !DILocalVariable(name: "DestStrideIncrement", scope: !434, file: !3, line: 583, type: !36)
!439 = !DILocalVariable(name: "SourcePtr", scope: !440, file: !3, line: 607, type: !441)
!440 = distinct !DILexicalBlock(scope: !435, file: !3, line: 605, column: 10)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 1024, elements: !245)
!442 = !DILocalVariable(name: "DestPtr", scope: !440, file: !3, line: 608, type: !441)
!443 = !DILocalVariable(name: "SourceStrideIncrements", scope: !440, file: !3, line: 610, type: !428)
!444 = !DILocalVariable(name: "DestStrideIncrements", scope: !440, file: !3, line: 611, type: !428)
!445 = !{!446, !446, i64 0}
!446 = !{!"any pointer", !447, i64 0}
!447 = !{!"omnipotent char", !448, i64 0}
!448 = !{!"Simple C/C++ TBAA"}
!449 = !DILocation(line: 536, column: 45, scope: !203)
!450 = !DILocation(line: 536, column: 60, scope: !203)
!451 = !DILocation(line: 537, column: 54, scope: !203)
!452 = !{!453, !453, i64 0}
!453 = !{!"int", !447, i64 0}
!454 = !DILocation(line: 538, column: 64, scope: !203)
!455 = !DILocation(line: 539, column: 64, scope: !203)
!456 = !DILocation(line: 540, column: 65, scope: !203)
!457 = !DILocation(line: 542, column: 5, scope: !203)
!458 = !DILocation(line: 542, column: 21, scope: !203)
!459 = !DILocation(line: 542, column: 24, scope: !203)
!460 = !DILocation(line: 542, column: 27, scope: !203)
!461 = !DILocation(line: 543, column: 5, scope: !203)
!462 = !DILocation(line: 543, column: 21, scope: !203)
!463 = !DILocation(line: 544, column: 5, scope: !203)
!464 = !DILocation(line: 544, column: 21, scope: !203)
!465 = !DILocation(line: 545, column: 5, scope: !203)
!466 = !DILocation(line: 545, column: 21, scope: !203)
!467 = !DILocation(line: 546, column: 5, scope: !203)
!468 = !DILocation(line: 546, column: 21, scope: !203)
!469 = !DILocation(line: 547, column: 5, scope: !203)
!470 = !DILocation(line: 547, column: 21, scope: !203)
!471 = !DILocation(line: 549, column: 5, scope: !203)
!472 = !DILocation(line: 549, column: 25, scope: !203)
!473 = !DILocation(line: 552, column: 11, scope: !474)
!474 = distinct !DILexicalBlock(scope: !203, file: !3, line: 552, column: 9)
!475 = !DILocation(line: 552, column: 14, scope: !474)
!476 = !{!477, !453, i64 208}
!477 = !{!"_cmstransform_struct", !453, i64 0, !453, i64 4, !446, i64 8, !446, i64 16, !446, i64 24, !446, i64 32, !446, i64 40, !478, i64 48, !446, i64 112, !446, i64 120, !446, i64 128, !446, i64 136, !447, i64 144, !447, i64 148, !479, i64 152, !479, i64 176, !446, i64 200, !453, i64 208, !480, i64 216, !453, i64 224, !446, i64 232, !446, i64 240, !446, i64 248, !446, i64 256}
!478 = !{!"", !447, i64 0, !447, i64 32}
!479 = !{!"", !480, i64 0, !480, i64 8, !480, i64 16}
!480 = !{!"double", !447, i64 0}
!481 = !DILocation(line: 552, column: 30, scope: !474)
!482 = !DILocation(line: 552, column: 9, scope: !203)
!483 = !DILocation(line: 553, column: 9, scope: !474)
!484 = !DILocation(line: 556, column: 9, scope: !485)
!485 = distinct !DILexicalBlock(scope: !203, file: !3, line: 556, column: 9)
!486 = !DILocation(line: 556, column: 12, scope: !485)
!487 = !{!477, !453, i64 0}
!488 = !DILocation(line: 556, column: 27, scope: !485)
!489 = !DILocation(line: 556, column: 30, scope: !485)
!490 = !{!477, !453, i64 4}
!491 = !DILocation(line: 556, column: 24, scope: !485)
!492 = !DILocation(line: 556, column: 43, scope: !485)
!493 = !DILocation(line: 556, column: 46, scope: !485)
!494 = !DILocation(line: 556, column: 52, scope: !485)
!495 = !DILocation(line: 556, column: 49, scope: !485)
!496 = !DILocation(line: 556, column: 9, scope: !203)
!497 = !DILocation(line: 557, column: 9, scope: !485)
!498 = !DILocation(line: 560, column: 14, scope: !203)
!499 = !DILocation(line: 560, column: 12, scope: !203)
!500 = !DILocation(line: 561, column: 9, scope: !501)
!501 = distinct !DILexicalBlock(scope: !203, file: !3, line: 561, column: 9)
!502 = !DILocation(line: 561, column: 19, scope: !501)
!503 = !DILocation(line: 561, column: 16, scope: !501)
!504 = !DILocation(line: 561, column: 9, scope: !203)
!505 = !DILocation(line: 562, column: 9, scope: !501)
!506 = !DILocation(line: 565, column: 9, scope: !507)
!507 = distinct !DILexicalBlock(scope: !203, file: !3, line: 565, column: 9)
!508 = !DILocation(line: 565, column: 16, scope: !507)
!509 = !DILocation(line: 565, column: 9, scope: !203)
!510 = !DILocation(line: 566, column: 9, scope: !507)
!511 = !DILocation(line: 569, column: 32, scope: !203)
!512 = !DILocation(line: 569, column: 35, scope: !203)
!513 = !DILocation(line: 569, column: 48, scope: !203)
!514 = !DILocation(line: 569, column: 56, scope: !203)
!515 = !{!516, !453, i64 8}
!516 = !{!"", !453, i64 0, !453, i64 4, !453, i64 8, !453, i64 12}
!517 = !DILocation(line: 569, column: 73, scope: !203)
!518 = !DILocation(line: 569, column: 94, scope: !203)
!519 = !DILocation(line: 569, column: 5, scope: !203)
!520 = !DILocation(line: 570, column: 32, scope: !203)
!521 = !DILocation(line: 570, column: 35, scope: !203)
!522 = !DILocation(line: 570, column: 49, scope: !203)
!523 = !DILocation(line: 570, column: 57, scope: !203)
!524 = !{!516, !453, i64 12}
!525 = !DILocation(line: 570, column: 75, scope: !203)
!526 = !DILocation(line: 570, column: 94, scope: !203)
!527 = !DILocation(line: 570, column: 5, scope: !203)
!528 = !DILocation(line: 573, column: 41, scope: !203)
!529 = !DILocation(line: 573, column: 44, scope: !203)
!530 = !{!477, !446, i64 232}
!531 = !DILocation(line: 573, column: 55, scope: !203)
!532 = !DILocation(line: 573, column: 58, scope: !203)
!533 = !DILocation(line: 573, column: 71, scope: !203)
!534 = !DILocation(line: 573, column: 74, scope: !203)
!535 = !DILocation(line: 573, column: 19, scope: !203)
!536 = !DILocation(line: 573, column: 17, scope: !203)
!537 = !DILocation(line: 574, column: 9, scope: !538)
!538 = distinct !DILexicalBlock(scope: !203, file: !3, line: 574, column: 9)
!539 = !DILocation(line: 574, column: 21, scope: !538)
!540 = !DILocation(line: 574, column: 9, scope: !203)
!541 = !DILocation(line: 575, column: 9, scope: !538)
!542 = !DILocation(line: 577, column: 9, scope: !435)
!543 = !DILocation(line: 577, column: 16, scope: !435)
!544 = !DILocation(line: 577, column: 9, scope: !203)
!545 = !DILocation(line: 579, column: 9, scope: !434)
!546 = !DILocation(line: 579, column: 25, scope: !434)
!547 = !DILocation(line: 580, column: 9, scope: !434)
!548 = !DILocation(line: 580, column: 25, scope: !434)
!549 = !DILocation(line: 582, column: 9, scope: !434)
!550 = !DILocation(line: 582, column: 25, scope: !434)
!551 = !DILocation(line: 583, column: 9, scope: !434)
!552 = !DILocation(line: 583, column: 25, scope: !434)
!553 = !DILocation(line: 586, column: 16, scope: !554)
!554 = distinct !DILexicalBlock(scope: !434, file: !3, line: 586, column: 9)
!555 = !DILocation(line: 586, column: 14, scope: !554)
!556 = !DILocation(line: 586, column: 21, scope: !557)
!557 = distinct !DILexicalBlock(scope: !554, file: !3, line: 586, column: 9)
!558 = !DILocation(line: 586, column: 25, scope: !557)
!559 = !DILocation(line: 586, column: 23, scope: !557)
!560 = !DILocation(line: 586, column: 9, scope: !554)
!561 = !DILocation(line: 589, column: 42, scope: !562)
!562 = distinct !DILexicalBlock(scope: !557, file: !3, line: 586, column: 41)
!563 = !DILocation(line: 589, column: 47, scope: !562)
!564 = !DILocation(line: 589, column: 45, scope: !562)
!565 = !DILocation(line: 589, column: 72, scope: !562)
!566 = !DILocation(line: 589, column: 70, scope: !562)
!567 = !DILocation(line: 589, column: 23, scope: !562)
!568 = !DILocation(line: 590, column: 40, scope: !562)
!569 = !DILocation(line: 590, column: 46, scope: !562)
!570 = !DILocation(line: 590, column: 44, scope: !562)
!571 = !DILocation(line: 590, column: 69, scope: !562)
!572 = !DILocation(line: 590, column: 67, scope: !562)
!573 = !DILocation(line: 590, column: 21, scope: !562)
!574 = !DILocation(line: 592, column: 20, scope: !575)
!575 = distinct !DILexicalBlock(scope: !562, file: !3, line: 592, column: 13)
!576 = !DILocation(line: 592, column: 18, scope: !575)
!577 = !DILocation(line: 592, column: 25, scope: !578)
!578 = distinct !DILexicalBlock(scope: !575, file: !3, line: 592, column: 13)
!579 = !DILocation(line: 592, column: 29, scope: !578)
!580 = !DILocation(line: 592, column: 27, scope: !578)
!581 = !DILocation(line: 592, column: 13, scope: !575)
!582 = !DILocation(line: 594, column: 17, scope: !583)
!583 = distinct !DILexicalBlock(scope: !578, file: !3, line: 592, column: 49)
!584 = !DILocation(line: 594, column: 29, scope: !583)
!585 = !DILocation(line: 594, column: 38, scope: !583)
!586 = !DILocation(line: 596, column: 30, scope: !583)
!587 = !DILocation(line: 596, column: 27, scope: !583)
!588 = !DILocation(line: 597, column: 28, scope: !583)
!589 = !DILocation(line: 597, column: 25, scope: !583)
!590 = !DILocation(line: 598, column: 13, scope: !583)
!591 = !DILocation(line: 592, column: 45, scope: !578)
!592 = !DILocation(line: 592, column: 13, scope: !578)
!593 = distinct !{!593, !581, !594, !595}
!594 = !DILocation(line: 598, column: 13, scope: !575)
!595 = !{!"llvm.loop.mustprogress"}
!596 = !DILocation(line: 600, column: 38, scope: !562)
!597 = !DILocation(line: 600, column: 46, scope: !562)
!598 = !{!516, !453, i64 0}
!599 = !DILocation(line: 600, column: 35, scope: !562)
!600 = !DILocation(line: 601, column: 36, scope: !562)
!601 = !DILocation(line: 601, column: 44, scope: !562)
!602 = !{!516, !453, i64 4}
!603 = !DILocation(line: 601, column: 33, scope: !562)
!604 = !DILocation(line: 602, column: 9, scope: !562)
!605 = !DILocation(line: 586, column: 37, scope: !557)
!606 = !DILocation(line: 586, column: 9, scope: !557)
!607 = distinct !{!607, !560, !608, !595}
!608 = !DILocation(line: 602, column: 9, scope: !554)
!609 = !DILocation(line: 604, column: 5, scope: !435)
!610 = !DILocation(line: 604, column: 5, scope: !434)
!611 = !DILocation(line: 607, column: 9, scope: !440)
!612 = !DILocation(line: 607, column: 25, scope: !440)
!613 = !DILocation(line: 608, column: 9, scope: !440)
!614 = !DILocation(line: 608, column: 25, scope: !440)
!615 = !DILocation(line: 610, column: 9, scope: !440)
!616 = !DILocation(line: 610, column: 25, scope: !440)
!617 = !DILocation(line: 611, column: 9, scope: !440)
!618 = !DILocation(line: 611, column: 25, scope: !440)
!619 = !DILocation(line: 613, column: 9, scope: !440)
!620 = !DILocation(line: 614, column: 9, scope: !440)
!621 = !DILocation(line: 617, column: 16, scope: !622)
!622 = distinct !DILexicalBlock(scope: !440, file: !3, line: 617, column: 9)
!623 = !DILocation(line: 617, column: 14, scope: !622)
!624 = !DILocation(line: 617, column: 21, scope: !625)
!625 = distinct !DILexicalBlock(scope: !622, file: !3, line: 617, column: 9)
!626 = !DILocation(line: 617, column: 25, scope: !625)
!627 = !DILocation(line: 617, column: 23, scope: !625)
!628 = !DILocation(line: 617, column: 9, scope: !622)
!629 = !DILocation(line: 620, column: 20, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !3, line: 620, column: 13)
!631 = distinct !DILexicalBlock(scope: !625, file: !3, line: 617, column: 41)
!632 = !DILocation(line: 620, column: 18, scope: !630)
!633 = !DILocation(line: 620, column: 25, scope: !634)
!634 = distinct !DILexicalBlock(scope: !630, file: !3, line: 620, column: 13)
!635 = !DILocation(line: 620, column: 29, scope: !634)
!636 = !DILocation(line: 620, column: 27, scope: !634)
!637 = !DILocation(line: 620, column: 13, scope: !630)
!638 = !DILocation(line: 622, column: 49, scope: !639)
!639 = distinct !DILexicalBlock(scope: !634, file: !3, line: 620, column: 42)
!640 = !DILocation(line: 622, column: 74, scope: !639)
!641 = !DILocation(line: 622, column: 54, scope: !639)
!642 = !DILocation(line: 622, column: 52, scope: !639)
!643 = !DILocation(line: 622, column: 102, scope: !639)
!644 = !DILocation(line: 622, column: 79, scope: !639)
!645 = !DILocation(line: 622, column: 77, scope: !639)
!646 = !DILocation(line: 622, column: 27, scope: !639)
!647 = !DILocation(line: 622, column: 17, scope: !639)
!648 = !DILocation(line: 622, column: 30, scope: !639)
!649 = !DILocation(line: 623, column: 47, scope: !639)
!650 = !DILocation(line: 623, column: 71, scope: !639)
!651 = !DILocation(line: 623, column: 53, scope: !639)
!652 = !DILocation(line: 623, column: 51, scope: !639)
!653 = !DILocation(line: 623, column: 97, scope: !639)
!654 = !DILocation(line: 623, column: 76, scope: !639)
!655 = !DILocation(line: 623, column: 74, scope: !639)
!656 = !DILocation(line: 623, column: 25, scope: !639)
!657 = !DILocation(line: 623, column: 17, scope: !639)
!658 = !DILocation(line: 623, column: 28, scope: !639)
!659 = !DILocation(line: 624, column: 13, scope: !639)
!660 = !DILocation(line: 620, column: 38, scope: !634)
!661 = !DILocation(line: 620, column: 13, scope: !634)
!662 = distinct !{!662, !637, !663, !595}
!663 = !DILocation(line: 624, column: 13, scope: !630)
!664 = !DILocation(line: 626, column: 20, scope: !665)
!665 = distinct !DILexicalBlock(scope: !631, file: !3, line: 626, column: 13)
!666 = !DILocation(line: 626, column: 18, scope: !665)
!667 = !DILocation(line: 626, column: 25, scope: !668)
!668 = distinct !DILexicalBlock(scope: !665, file: !3, line: 626, column: 13)
!669 = !DILocation(line: 626, column: 29, scope: !668)
!670 = !DILocation(line: 626, column: 27, scope: !668)
!671 = !DILocation(line: 626, column: 13, scope: !665)
!672 = !DILocation(line: 628, column: 24, scope: !673)
!673 = distinct !DILexicalBlock(scope: !674, file: !3, line: 628, column: 17)
!674 = distinct !DILexicalBlock(scope: !668, file: !3, line: 626, column: 49)
!675 = !DILocation(line: 628, column: 22, scope: !673)
!676 = !DILocation(line: 628, column: 29, scope: !677)
!677 = distinct !DILexicalBlock(scope: !673, file: !3, line: 628, column: 17)
!678 = !DILocation(line: 628, column: 33, scope: !677)
!679 = !DILocation(line: 628, column: 31, scope: !677)
!680 = !DILocation(line: 628, column: 17, scope: !673)
!681 = !DILocation(line: 630, column: 21, scope: !682)
!682 = distinct !DILexicalBlock(scope: !677, file: !3, line: 628, column: 46)
!683 = !DILocation(line: 630, column: 41, scope: !682)
!684 = !DILocation(line: 630, column: 33, scope: !682)
!685 = !DILocation(line: 630, column: 55, scope: !682)
!686 = !DILocation(line: 630, column: 45, scope: !682)
!687 = !DILocation(line: 632, column: 54, scope: !682)
!688 = !DILocation(line: 632, column: 37, scope: !682)
!689 = !DILocation(line: 632, column: 31, scope: !682)
!690 = !DILocation(line: 632, column: 21, scope: !682)
!691 = !DILocation(line: 632, column: 34, scope: !682)
!692 = !DILocation(line: 633, column: 50, scope: !682)
!693 = !DILocation(line: 633, column: 35, scope: !682)
!694 = !DILocation(line: 633, column: 29, scope: !682)
!695 = !DILocation(line: 633, column: 21, scope: !682)
!696 = !DILocation(line: 633, column: 32, scope: !682)
!697 = !DILocation(line: 634, column: 17, scope: !682)
!698 = !DILocation(line: 628, column: 42, scope: !677)
!699 = !DILocation(line: 628, column: 17, scope: !677)
!700 = distinct !{!700, !680, !701, !595}
!701 = !DILocation(line: 634, column: 17, scope: !673)
!702 = !DILocation(line: 635, column: 13, scope: !674)
!703 = !DILocation(line: 626, column: 45, scope: !668)
!704 = !DILocation(line: 626, column: 13, scope: !668)
!705 = distinct !{!705, !671, !706, !595}
!706 = !DILocation(line: 635, column: 13, scope: !665)
!707 = !DILocation(line: 637, column: 20, scope: !708)
!708 = distinct !DILexicalBlock(scope: !631, file: !3, line: 637, column: 13)
!709 = !DILocation(line: 637, column: 18, scope: !708)
!710 = !DILocation(line: 637, column: 25, scope: !711)
!711 = distinct !DILexicalBlock(scope: !708, file: !3, line: 637, column: 13)
!712 = !DILocation(line: 637, column: 29, scope: !711)
!713 = !DILocation(line: 637, column: 27, scope: !711)
!714 = !DILocation(line: 637, column: 13, scope: !708)
!715 = !DILocation(line: 639, column: 46, scope: !716)
!716 = distinct !DILexicalBlock(scope: !711, file: !3, line: 637, column: 42)
!717 = !DILocation(line: 639, column: 54, scope: !716)
!718 = !DILocation(line: 639, column: 40, scope: !716)
!719 = !DILocation(line: 639, column: 17, scope: !716)
!720 = !DILocation(line: 639, column: 43, scope: !716)
!721 = !DILocation(line: 640, column: 44, scope: !716)
!722 = !DILocation(line: 640, column: 52, scope: !716)
!723 = !DILocation(line: 640, column: 38, scope: !716)
!724 = !DILocation(line: 640, column: 17, scope: !716)
!725 = !DILocation(line: 640, column: 41, scope: !716)
!726 = !DILocation(line: 641, column: 13, scope: !716)
!727 = !DILocation(line: 637, column: 38, scope: !711)
!728 = !DILocation(line: 637, column: 13, scope: !711)
!729 = distinct !{!729, !714, !730, !595}
!730 = !DILocation(line: 641, column: 13, scope: !708)
!731 = !DILocation(line: 642, column: 9, scope: !631)
!732 = !DILocation(line: 617, column: 37, scope: !625)
!733 = !DILocation(line: 617, column: 9, scope: !625)
!734 = distinct !{!734, !628, !735, !595}
!735 = !DILocation(line: 642, column: 9, scope: !622)
!736 = !DILocation(line: 643, column: 5, scope: !435)
!737 = !DILocation(line: 644, column: 1, scope: !203)
!738 = distinct !DISubprogram(name: "ComputeComponentIncrements", scope: !3, file: !3, line: 518, type: !739, scopeLine: 522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !742)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !36, !36, !741, !741}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!742 = !{!743, !744, !745, !746}
!743 = !DILocalVariable(name: "Format", arg: 1, scope: !738, file: !3, line: 518, type: !36)
!744 = !DILocalVariable(name: "BytesPerPlane", arg: 2, scope: !738, file: !3, line: 519, type: !36)
!745 = !DILocalVariable(name: "ComponentStartingOrder", arg: 3, scope: !738, file: !3, line: 520, type: !741)
!746 = !DILocalVariable(name: "ComponentPointerIncrements", arg: 4, scope: !738, file: !3, line: 521, type: !741)
!747 = !DILocation(line: 518, column: 50, scope: !738)
!748 = !DILocation(line: 519, column: 50, scope: !738)
!749 = !DILocation(line: 520, column: 50, scope: !738)
!750 = !DILocation(line: 521, column: 50, scope: !738)
!751 = !DILocation(line: 523, column: 12, scope: !752)
!752 = distinct !DILexicalBlock(scope: !738, file: !3, line: 523, column: 12)
!753 = !DILocation(line: 523, column: 12, scope: !738)
!754 = !DILocation(line: 525, column: 42, scope: !755)
!755 = distinct !DILexicalBlock(scope: !752, file: !3, line: 523, column: 30)
!756 = !DILocation(line: 525, column: 51, scope: !755)
!757 = !DILocation(line: 525, column: 66, scope: !755)
!758 = !DILocation(line: 525, column: 90, scope: !755)
!759 = !DILocation(line: 525, column: 15, scope: !755)
!760 = !DILocation(line: 526, column: 8, scope: !755)
!761 = !DILocation(line: 528, column: 42, scope: !762)
!762 = distinct !DILexicalBlock(scope: !752, file: !3, line: 527, column: 13)
!763 = !DILocation(line: 528, column: 51, scope: !762)
!764 = !DILocation(line: 528, column: 75, scope: !762)
!765 = !DILocation(line: 528, column: 15, scope: !762)
!766 = !DILocation(line: 531, column: 1, scope: !738)
!767 = !DILocation(line: 378, column: 54, scope: !2)
!768 = !DILocation(line: 378, column: 74, scope: !2)
!769 = !DILocation(line: 378, column: 94, scope: !2)
!770 = !DILocation(line: 389, column: 9, scope: !2)
!771 = !DILocation(line: 389, column: 13, scope: !2)
!772 = !DILocation(line: 389, column: 34, scope: !2)
!773 = !DILocation(line: 389, column: 21, scope: !2)
!774 = !DILocation(line: 390, column: 9, scope: !2)
!775 = !DILocation(line: 390, column: 13, scope: !2)
!776 = !DILocation(line: 390, column: 34, scope: !2)
!777 = !DILocation(line: 390, column: 21, scope: !2)
!778 = !DILocation(line: 392, column: 13, scope: !779)
!779 = distinct !DILexicalBlock(scope: !2, file: !3, line: 392, column: 13)
!780 = !DILocation(line: 392, column: 18, scope: !779)
!781 = !DILocation(line: 392, column: 22, scope: !779)
!782 = !DILocation(line: 392, column: 25, scope: !779)
!783 = !DILocation(line: 392, column: 31, scope: !779)
!784 = !DILocation(line: 392, column: 35, scope: !779)
!785 = !DILocation(line: 392, column: 38, scope: !779)
!786 = !DILocation(line: 392, column: 43, scope: !779)
!787 = !DILocation(line: 392, column: 47, scope: !779)
!788 = !DILocation(line: 392, column: 50, scope: !779)
!789 = !DILocation(line: 392, column: 56, scope: !779)
!790 = !DILocation(line: 392, column: 13, scope: !2)
!791 = !DILocation(line: 394, column: 31, scope: !792)
!792 = distinct !DILexicalBlock(scope: !779, file: !3, line: 392, column: 61)
!793 = !DILocation(line: 394, column: 16, scope: !792)
!794 = !DILocation(line: 395, column: 16, scope: !792)
!795 = !DILocation(line: 398, column: 32, scope: !2)
!796 = !DILocation(line: 398, column: 16, scope: !2)
!797 = !DILocation(line: 398, column: 38, scope: !2)
!798 = !DILocation(line: 398, column: 9, scope: !2)
!799 = !DILocation(line: 399, column: 1, scope: !2)
!800 = distinct !DISubprogram(name: "ComputeIncrementsForPlanar", scope: !3, file: !3, line: 462, type: !739, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !801)
!801 = !{!802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812}
!802 = !DILocalVariable(name: "Format", arg: 1, scope: !800, file: !3, line: 462, type: !36)
!803 = !DILocalVariable(name: "BytesPerPlane", arg: 2, scope: !800, file: !3, line: 463, type: !36)
!804 = !DILocalVariable(name: "ComponentStartingOrder", arg: 3, scope: !800, file: !3, line: 464, type: !741)
!805 = !DILocalVariable(name: "ComponentPointerIncrements", arg: 4, scope: !800, file: !3, line: 465, type: !741)
!806 = !DILocalVariable(name: "channels", scope: !800, file: !3, line: 467, type: !428)
!807 = !DILocalVariable(name: "extra", scope: !800, file: !3, line: 468, type: !36)
!808 = !DILocalVariable(name: "nchannels", scope: !800, file: !3, line: 469, type: !36)
!809 = !DILocalVariable(name: "total_chans", scope: !800, file: !3, line: 470, type: !36)
!810 = !DILocalVariable(name: "i", scope: !800, file: !3, line: 471, type: !36)
!811 = !DILocalVariable(name: "channelSize", scope: !800, file: !3, line: 472, type: !36)
!812 = !DILocalVariable(name: "tmp", scope: !813, file: !3, line: 498, type: !36)
!813 = distinct !DILexicalBlock(scope: !814, file: !3, line: 496, column: 52)
!814 = distinct !DILexicalBlock(scope: !800, file: !3, line: 496, column: 12)
!815 = !DILocation(line: 462, column: 49, scope: !800)
!816 = !DILocation(line: 463, column: 49, scope: !800)
!817 = !DILocation(line: 464, column: 49, scope: !800)
!818 = !DILocation(line: 465, column: 49, scope: !800)
!819 = !DILocation(line: 467, column: 8, scope: !800)
!820 = !DILocation(line: 467, column: 24, scope: !800)
!821 = !DILocation(line: 468, column: 8, scope: !800)
!822 = !DILocation(line: 468, column: 24, scope: !800)
!823 = !DILocation(line: 468, column: 32, scope: !800)
!824 = !DILocation(line: 469, column: 8, scope: !800)
!825 = !DILocation(line: 469, column: 24, scope: !800)
!826 = !DILocation(line: 469, column: 36, scope: !800)
!827 = !DILocation(line: 470, column: 8, scope: !800)
!828 = !DILocation(line: 470, column: 24, scope: !800)
!829 = !DILocation(line: 470, column: 38, scope: !800)
!830 = !DILocation(line: 470, column: 50, scope: !800)
!831 = !DILocation(line: 470, column: 48, scope: !800)
!832 = !DILocation(line: 471, column: 8, scope: !800)
!833 = !DILocation(line: 471, column: 24, scope: !800)
!834 = !DILocation(line: 472, column: 8, scope: !800)
!835 = !DILocation(line: 472, column: 24, scope: !800)
!836 = !DILocation(line: 472, column: 52, scope: !800)
!837 = !DILocation(line: 472, column: 38, scope: !800)
!838 = !DILocation(line: 475, column: 12, scope: !839)
!839 = distinct !DILexicalBlock(scope: !800, file: !3, line: 475, column: 12)
!840 = !DILocation(line: 475, column: 24, scope: !839)
!841 = !DILocation(line: 475, column: 29, scope: !839)
!842 = !DILocation(line: 475, column: 32, scope: !839)
!843 = !DILocation(line: 475, column: 44, scope: !839)
!844 = !DILocation(line: 475, column: 12, scope: !800)
!845 = !DILocation(line: 476, column: 12, scope: !839)
!846 = !DILocation(line: 478, column: 8, scope: !800)
!847 = !DILocation(line: 481, column: 15, scope: !848)
!848 = distinct !DILexicalBlock(scope: !800, file: !3, line: 481, column: 8)
!849 = !DILocation(line: 481, column: 13, scope: !848)
!850 = !DILocation(line: 481, column: 20, scope: !851)
!851 = distinct !DILexicalBlock(scope: !848, file: !3, line: 481, column: 8)
!852 = !DILocation(line: 481, column: 24, scope: !851)
!853 = !DILocation(line: 481, column: 22, scope: !851)
!854 = !DILocation(line: 481, column: 8, scope: !848)
!855 = !DILocation(line: 482, column: 47, scope: !851)
!856 = !DILocation(line: 482, column: 15, scope: !851)
!857 = !DILocation(line: 482, column: 42, scope: !851)
!858 = !DILocation(line: 482, column: 45, scope: !851)
!859 = !DILocation(line: 481, column: 32, scope: !851)
!860 = !DILocation(line: 481, column: 8, scope: !851)
!861 = distinct !{!861, !854, !862, !595}
!862 = !DILocation(line: 482, column: 47, scope: !848)
!863 = !DILocation(line: 485, column: 15, scope: !864)
!864 = distinct !DILexicalBlock(scope: !800, file: !3, line: 485, column: 8)
!865 = !DILocation(line: 485, column: 13, scope: !864)
!866 = !DILocation(line: 485, column: 20, scope: !867)
!867 = distinct !DILexicalBlock(scope: !864, file: !3, line: 485, column: 8)
!868 = !DILocation(line: 485, column: 24, scope: !867)
!869 = !DILocation(line: 485, column: 22, scope: !867)
!870 = !DILocation(line: 485, column: 8, scope: !864)
!871 = !DILocation(line: 487, column: 19, scope: !872)
!872 = distinct !DILexicalBlock(scope: !873, file: !3, line: 487, column: 19)
!873 = distinct !DILexicalBlock(scope: !867, file: !3, line: 486, column: 8)
!874 = !DILocation(line: 487, column: 19, scope: !873)
!875 = !DILocation(line: 488, column: 36, scope: !876)
!876 = distinct !DILexicalBlock(scope: !872, file: !3, line: 487, column: 37)
!877 = !DILocation(line: 488, column: 50, scope: !876)
!878 = !DILocation(line: 488, column: 48, scope: !876)
!879 = !DILocation(line: 488, column: 52, scope: !876)
!880 = !DILocation(line: 488, column: 31, scope: !876)
!881 = !DILocation(line: 488, column: 22, scope: !876)
!882 = !DILocation(line: 488, column: 34, scope: !876)
!883 = !DILocation(line: 489, column: 15, scope: !876)
!884 = !DILocation(line: 491, column: 36, scope: !885)
!885 = distinct !DILexicalBlock(scope: !872, file: !3, line: 490, column: 20)
!886 = !DILocation(line: 491, column: 31, scope: !885)
!887 = !DILocation(line: 491, column: 22, scope: !885)
!888 = !DILocation(line: 491, column: 34, scope: !885)
!889 = !DILocation(line: 493, column: 8, scope: !873)
!890 = !DILocation(line: 485, column: 38, scope: !867)
!891 = !DILocation(line: 485, column: 8, scope: !867)
!892 = distinct !{!892, !870, !893, !595}
!893 = !DILocation(line: 493, column: 8, scope: !864)
!894 = !DILocation(line: 496, column: 12, scope: !814)
!895 = !DILocation(line: 496, column: 32, scope: !814)
!896 = !DILocation(line: 496, column: 35, scope: !814)
!897 = !DILocation(line: 496, column: 47, scope: !814)
!898 = !DILocation(line: 496, column: 12, scope: !800)
!899 = !DILocation(line: 498, column: 15, scope: !813)
!900 = !DILocation(line: 498, column: 31, scope: !813)
!901 = !DILocation(line: 498, column: 37, scope: !813)
!902 = !DILocation(line: 499, column: 22, scope: !903)
!903 = distinct !DILexicalBlock(scope: !813, file: !3, line: 499, column: 15)
!904 = !DILocation(line: 499, column: 20, scope: !903)
!905 = !DILocation(line: 499, column: 27, scope: !906)
!906 = distinct !DILexicalBlock(scope: !903, file: !3, line: 499, column: 15)
!907 = !DILocation(line: 499, column: 31, scope: !906)
!908 = !DILocation(line: 499, column: 43, scope: !906)
!909 = !DILocation(line: 499, column: 29, scope: !906)
!910 = !DILocation(line: 499, column: 15, scope: !903)
!911 = !DILocation(line: 500, column: 45, scope: !906)
!912 = !DILocation(line: 500, column: 47, scope: !906)
!913 = !DILocation(line: 500, column: 36, scope: !906)
!914 = !DILocation(line: 500, column: 31, scope: !906)
!915 = !DILocation(line: 500, column: 22, scope: !906)
!916 = !DILocation(line: 500, column: 34, scope: !906)
!917 = !DILocation(line: 499, column: 49, scope: !906)
!918 = !DILocation(line: 499, column: 15, scope: !906)
!919 = distinct !{!919, !910, !920, !595}
!920 = !DILocation(line: 500, column: 50, scope: !903)
!921 = !DILocation(line: 502, column: 43, scope: !813)
!922 = !DILocation(line: 502, column: 24, scope: !813)
!923 = !DILocation(line: 502, column: 36, scope: !813)
!924 = !DILocation(line: 502, column: 15, scope: !813)
!925 = !DILocation(line: 502, column: 41, scope: !813)
!926 = !DILocation(line: 503, column: 8, scope: !814)
!927 = !DILocation(line: 503, column: 8, scope: !813)
!928 = !DILocation(line: 506, column: 15, scope: !929)
!929 = distinct !DILexicalBlock(scope: !800, file: !3, line: 506, column: 8)
!930 = !DILocation(line: 506, column: 13, scope: !929)
!931 = !DILocation(line: 506, column: 20, scope: !932)
!932 = distinct !DILexicalBlock(scope: !929, file: !3, line: 506, column: 8)
!933 = !DILocation(line: 506, column: 24, scope: !932)
!934 = !DILocation(line: 506, column: 22, scope: !932)
!935 = !DILocation(line: 506, column: 8, scope: !929)
!936 = !DILocation(line: 507, column: 30, scope: !937)
!937 = distinct !DILexicalBlock(scope: !932, file: !3, line: 506, column: 42)
!938 = !DILocation(line: 507, column: 24, scope: !937)
!939 = !DILocation(line: 507, column: 15, scope: !937)
!940 = !DILocation(line: 507, column: 27, scope: !937)
!941 = !DILocation(line: 508, column: 8, scope: !937)
!942 = !DILocation(line: 506, column: 38, scope: !932)
!943 = !DILocation(line: 506, column: 8, scope: !932)
!944 = distinct !{!944, !935, !945, !595}
!945 = !DILocation(line: 508, column: 8, scope: !929)
!946 = !DILocation(line: 510, column: 15, scope: !947)
!947 = distinct !DILexicalBlock(scope: !800, file: !3, line: 510, column: 8)
!948 = !DILocation(line: 510, column: 13, scope: !947)
!949 = !DILocation(line: 510, column: 20, scope: !950)
!950 = distinct !DILexicalBlock(scope: !947, file: !3, line: 510, column: 8)
!951 = !DILocation(line: 510, column: 24, scope: !950)
!952 = !DILocation(line: 510, column: 22, scope: !950)
!953 = !DILocation(line: 510, column: 8, scope: !947)
!954 = !DILocation(line: 511, column: 52, scope: !950)
!955 = !DILocation(line: 511, column: 56, scope: !950)
!956 = !DILocation(line: 511, column: 54, scope: !950)
!957 = !DILocation(line: 511, column: 43, scope: !950)
!958 = !DILocation(line: 511, column: 15, scope: !950)
!959 = !DILocation(line: 511, column: 38, scope: !950)
!960 = !DILocation(line: 511, column: 41, scope: !950)
!961 = !DILocation(line: 510, column: 32, scope: !950)
!962 = !DILocation(line: 510, column: 8, scope: !950)
!963 = distinct !{!963, !953, !964, !595}
!964 = !DILocation(line: 511, column: 65, scope: !947)
!965 = !DILocation(line: 512, column: 1, scope: !800)
!966 = distinct !DISubprogram(name: "ComputeIncrementsForChunky", scope: !3, file: !3, line: 405, type: !967, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !969)
!967 = !DISubroutineType(types: !968)
!968 = !{null, !36, !741, !741}
!969 = !{!970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980}
!970 = !DILocalVariable(name: "Format", arg: 1, scope: !966, file: !3, line: 405, type: !36)
!971 = !DILocalVariable(name: "ComponentStartingOrder", arg: 2, scope: !966, file: !3, line: 406, type: !741)
!972 = !DILocalVariable(name: "ComponentPointerIncrements", arg: 3, scope: !966, file: !3, line: 407, type: !741)
!973 = !DILocalVariable(name: "channels", scope: !966, file: !3, line: 409, type: !428)
!974 = !DILocalVariable(name: "extra", scope: !966, file: !3, line: 410, type: !36)
!975 = !DILocalVariable(name: "nchannels", scope: !966, file: !3, line: 411, type: !36)
!976 = !DILocalVariable(name: "total_chans", scope: !966, file: !3, line: 412, type: !36)
!977 = !DILocalVariable(name: "i", scope: !966, file: !3, line: 413, type: !36)
!978 = !DILocalVariable(name: "channelSize", scope: !966, file: !3, line: 414, type: !36)
!979 = !DILocalVariable(name: "pixelSize", scope: !966, file: !3, line: 415, type: !36)
!980 = !DILocalVariable(name: "tmp", scope: !981, file: !3, line: 441, type: !36)
!981 = distinct !DILexicalBlock(scope: !982, file: !3, line: 439, column: 52)
!982 = distinct !DILexicalBlock(scope: !966, file: !3, line: 439, column: 12)
!983 = !DILocation(line: 405, column: 49, scope: !966)
!984 = !DILocation(line: 406, column: 49, scope: !966)
!985 = !DILocation(line: 407, column: 49, scope: !966)
!986 = !DILocation(line: 409, column: 8, scope: !966)
!987 = !DILocation(line: 409, column: 24, scope: !966)
!988 = !DILocation(line: 410, column: 8, scope: !966)
!989 = !DILocation(line: 410, column: 24, scope: !966)
!990 = !DILocation(line: 410, column: 32, scope: !966)
!991 = !DILocation(line: 411, column: 8, scope: !966)
!992 = !DILocation(line: 411, column: 24, scope: !966)
!993 = !DILocation(line: 411, column: 36, scope: !966)
!994 = !DILocation(line: 412, column: 8, scope: !966)
!995 = !DILocation(line: 412, column: 24, scope: !966)
!996 = !DILocation(line: 412, column: 38, scope: !966)
!997 = !DILocation(line: 412, column: 50, scope: !966)
!998 = !DILocation(line: 412, column: 48, scope: !966)
!999 = !DILocation(line: 413, column: 8, scope: !966)
!1000 = !DILocation(line: 413, column: 24, scope: !966)
!1001 = !DILocation(line: 414, column: 8, scope: !966)
!1002 = !DILocation(line: 414, column: 24, scope: !966)
!1003 = !DILocation(line: 414, column: 52, scope: !966)
!1004 = !DILocation(line: 414, column: 38, scope: !966)
!1005 = !DILocation(line: 415, column: 8, scope: !966)
!1006 = !DILocation(line: 415, column: 24, scope: !966)
!1007 = !DILocation(line: 415, column: 36, scope: !966)
!1008 = !DILocation(line: 415, column: 50, scope: !966)
!1009 = !DILocation(line: 415, column: 48, scope: !966)
!1010 = !DILocation(line: 418, column: 12, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !966, file: !3, line: 418, column: 12)
!1012 = !DILocation(line: 418, column: 24, scope: !1011)
!1013 = !DILocation(line: 418, column: 29, scope: !1011)
!1014 = !DILocation(line: 418, column: 32, scope: !1011)
!1015 = !DILocation(line: 418, column: 44, scope: !1011)
!1016 = !DILocation(line: 418, column: 12, scope: !966)
!1017 = !DILocation(line: 419, column: 12, scope: !1011)
!1018 = !DILocation(line: 421, column: 9, scope: !966)
!1019 = !DILocation(line: 424, column: 15, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !966, file: !3, line: 424, column: 8)
!1021 = !DILocation(line: 424, column: 13, scope: !1020)
!1022 = !DILocation(line: 424, column: 20, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 424, column: 8)
!1024 = !DILocation(line: 424, column: 24, scope: !1023)
!1025 = !DILocation(line: 424, column: 22, scope: !1023)
!1026 = !DILocation(line: 424, column: 8, scope: !1020)
!1027 = !DILocation(line: 425, column: 47, scope: !1023)
!1028 = !DILocation(line: 425, column: 15, scope: !1023)
!1029 = !DILocation(line: 425, column: 42, scope: !1023)
!1030 = !DILocation(line: 425, column: 45, scope: !1023)
!1031 = !DILocation(line: 424, column: 32, scope: !1023)
!1032 = !DILocation(line: 424, column: 8, scope: !1023)
!1033 = distinct !{!1033, !1026, !1034, !595}
!1034 = !DILocation(line: 425, column: 47, scope: !1020)
!1035 = !DILocation(line: 428, column: 15, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !966, file: !3, line: 428, column: 8)
!1037 = !DILocation(line: 428, column: 13, scope: !1036)
!1038 = !DILocation(line: 428, column: 20, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 428, column: 8)
!1040 = !DILocation(line: 428, column: 24, scope: !1039)
!1041 = !DILocation(line: 428, column: 22, scope: !1039)
!1042 = !DILocation(line: 428, column: 8, scope: !1036)
!1043 = !DILocation(line: 430, column: 19, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 430, column: 19)
!1045 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 429, column: 8)
!1046 = !DILocation(line: 430, column: 19, scope: !1045)
!1047 = !DILocation(line: 431, column: 36, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 430, column: 37)
!1049 = !DILocation(line: 431, column: 50, scope: !1048)
!1050 = !DILocation(line: 431, column: 48, scope: !1048)
!1051 = !DILocation(line: 431, column: 52, scope: !1048)
!1052 = !DILocation(line: 431, column: 31, scope: !1048)
!1053 = !DILocation(line: 431, column: 22, scope: !1048)
!1054 = !DILocation(line: 431, column: 34, scope: !1048)
!1055 = !DILocation(line: 432, column: 15, scope: !1048)
!1056 = !DILocation(line: 434, column: 36, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 433, column: 20)
!1058 = !DILocation(line: 434, column: 31, scope: !1057)
!1059 = !DILocation(line: 434, column: 22, scope: !1057)
!1060 = !DILocation(line: 434, column: 34, scope: !1057)
!1061 = !DILocation(line: 436, column: 8, scope: !1045)
!1062 = !DILocation(line: 428, column: 38, scope: !1039)
!1063 = !DILocation(line: 428, column: 8, scope: !1039)
!1064 = distinct !{!1064, !1042, !1065, !595}
!1065 = !DILocation(line: 436, column: 8, scope: !1036)
!1066 = !DILocation(line: 439, column: 12, scope: !982)
!1067 = !DILocation(line: 439, column: 32, scope: !982)
!1068 = !DILocation(line: 439, column: 35, scope: !982)
!1069 = !DILocation(line: 439, column: 47, scope: !982)
!1070 = !DILocation(line: 439, column: 12, scope: !966)
!1071 = !DILocation(line: 441, column: 15, scope: !981)
!1072 = !DILocation(line: 441, column: 31, scope: !981)
!1073 = !DILocation(line: 441, column: 37, scope: !981)
!1074 = !DILocation(line: 442, column: 22, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !981, file: !3, line: 442, column: 15)
!1076 = !DILocation(line: 442, column: 20, scope: !1075)
!1077 = !DILocation(line: 442, column: 27, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 442, column: 15)
!1079 = !DILocation(line: 442, column: 31, scope: !1078)
!1080 = !DILocation(line: 442, column: 42, scope: !1078)
!1081 = !DILocation(line: 442, column: 29, scope: !1078)
!1082 = !DILocation(line: 442, column: 15, scope: !1075)
!1083 = !DILocation(line: 443, column: 45, scope: !1078)
!1084 = !DILocation(line: 443, column: 47, scope: !1078)
!1085 = !DILocation(line: 443, column: 36, scope: !1078)
!1086 = !DILocation(line: 443, column: 31, scope: !1078)
!1087 = !DILocation(line: 443, column: 22, scope: !1078)
!1088 = !DILocation(line: 443, column: 34, scope: !1078)
!1089 = !DILocation(line: 442, column: 47, scope: !1078)
!1090 = !DILocation(line: 442, column: 15, scope: !1078)
!1091 = distinct !{!1091, !1082, !1092, !595}
!1092 = !DILocation(line: 443, column: 50, scope: !1075)
!1093 = !DILocation(line: 445, column: 43, scope: !981)
!1094 = !DILocation(line: 445, column: 24, scope: !981)
!1095 = !DILocation(line: 445, column: 36, scope: !981)
!1096 = !DILocation(line: 445, column: 15, scope: !981)
!1097 = !DILocation(line: 445, column: 41, scope: !981)
!1098 = !DILocation(line: 446, column: 8, scope: !982)
!1099 = !DILocation(line: 446, column: 8, scope: !981)
!1100 = !DILocation(line: 449, column: 12, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !966, file: !3, line: 449, column: 12)
!1102 = !DILocation(line: 449, column: 24, scope: !1101)
!1103 = !DILocation(line: 449, column: 12, scope: !966)
!1104 = !DILocation(line: 450, column: 22, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 450, column: 15)
!1106 = !DILocation(line: 450, column: 20, scope: !1105)
!1107 = !DILocation(line: 450, column: 27, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 450, column: 15)
!1109 = !DILocation(line: 450, column: 31, scope: !1108)
!1110 = !DILocation(line: 450, column: 29, scope: !1108)
!1111 = !DILocation(line: 450, column: 15, scope: !1105)
!1112 = !DILocation(line: 451, column: 37, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 450, column: 49)
!1114 = !DILocation(line: 451, column: 31, scope: !1113)
!1115 = !DILocation(line: 451, column: 22, scope: !1113)
!1116 = !DILocation(line: 451, column: 34, scope: !1113)
!1117 = !DILocation(line: 452, column: 15, scope: !1113)
!1118 = !DILocation(line: 450, column: 45, scope: !1108)
!1119 = !DILocation(line: 450, column: 15, scope: !1108)
!1120 = distinct !{!1120, !1111, !1121, !595}
!1121 = !DILocation(line: 452, column: 15, scope: !1105)
!1122 = !DILocation(line: 454, column: 15, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !966, file: !3, line: 454, column: 8)
!1124 = !DILocation(line: 454, column: 13, scope: !1123)
!1125 = !DILocation(line: 454, column: 20, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 454, column: 8)
!1127 = !DILocation(line: 454, column: 24, scope: !1126)
!1128 = !DILocation(line: 454, column: 22, scope: !1126)
!1129 = !DILocation(line: 454, column: 8, scope: !1123)
!1130 = !DILocation(line: 455, column: 52, scope: !1126)
!1131 = !DILocation(line: 455, column: 56, scope: !1126)
!1132 = !DILocation(line: 455, column: 54, scope: !1126)
!1133 = !DILocation(line: 455, column: 43, scope: !1126)
!1134 = !DILocation(line: 455, column: 15, scope: !1126)
!1135 = !DILocation(line: 455, column: 38, scope: !1126)
!1136 = !DILocation(line: 455, column: 41, scope: !1126)
!1137 = !DILocation(line: 454, column: 32, scope: !1126)
!1138 = !DILocation(line: 454, column: 8, scope: !1126)
!1139 = distinct !{!1139, !1129, !1140, !595}
!1140 = !DILocation(line: 455, column: 65, scope: !1123)
!1141 = !DILocation(line: 456, column: 1, scope: !966)
!1142 = distinct !DISubprogram(name: "trueBytesSize", scope: !3, file: !3, line: 48, type: !1143, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1145)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!36, !36}
!1145 = !{!1146, !1147}
!1146 = !DILocalVariable(name: "Format", arg: 1, scope: !1142, file: !3, line: 48, type: !36)
!1147 = !DILocalVariable(name: "fmt_bytes", scope: !1142, file: !3, line: 50, type: !36)
!1148 = !DILocation(line: 48, column: 47, scope: !1142)
!1149 = !DILocation(line: 50, column: 5, scope: !1142)
!1150 = !DILocation(line: 50, column: 21, scope: !1142)
!1151 = !DILocation(line: 50, column: 33, scope: !1142)
!1152 = !DILocation(line: 53, column: 9, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 53, column: 9)
!1154 = !DILocation(line: 53, column: 19, scope: !1153)
!1155 = !DILocation(line: 53, column: 9, scope: !1142)
!1156 = !DILocation(line: 54, column: 9, scope: !1153)
!1157 = !DILocation(line: 57, column: 12, scope: !1142)
!1158 = !DILocation(line: 57, column: 5, scope: !1142)
!1159 = !DILocation(line: 58, column: 1, scope: !1142)
!1160 = distinct !DISubprogram(name: "copy8", scope: !3, file: !3, line: 69, type: !8, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1161)
!1161 = !{!1162, !1163}
!1162 = !DILocalVariable(name: "dst", arg: 1, scope: !1160, file: !3, line: 69, type: !10)
!1163 = !DILocalVariable(name: "src", arg: 2, scope: !1160, file: !3, line: 69, type: !11)
!1164 = !DILocation(line: 69, column: 18, scope: !1160)
!1165 = !DILocation(line: 69, column: 35, scope: !1160)
!1166 = !DILocation(line: 71, column: 16, scope: !1160)
!1167 = !DILocation(line: 71, column: 21, scope: !1160)
!1168 = !DILocation(line: 71, column: 8, scope: !1160)
!1169 = !DILocation(line: 72, column: 1, scope: !1160)
!1170 = distinct !DISubprogram(name: "from8to16", scope: !3, file: !3, line: 75, type: !8, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1171)
!1171 = !{!1172, !1173, !1174}
!1172 = !DILocalVariable(name: "dst", arg: 1, scope: !1170, file: !3, line: 75, type: !10)
!1173 = !DILocalVariable(name: "src", arg: 2, scope: !1170, file: !3, line: 75, type: !11)
!1174 = !DILocalVariable(name: "n", scope: !1170, file: !3, line: 77, type: !33)
!1175 = !DILocation(line: 75, column: 22, scope: !1170)
!1176 = !DILocation(line: 75, column: 39, scope: !1170)
!1177 = !DILocation(line: 77, column: 8, scope: !1170)
!1178 = !DILocation(line: 77, column: 23, scope: !1170)
!1179 = !DILocation(line: 77, column: 45, scope: !1170)
!1180 = !DILocation(line: 77, column: 27, scope: !1170)
!1181 = !{!447, !447, i64 0}
!1182 = !DILocation(line: 78, column: 52, scope: !1170)
!1183 = !DILocation(line: 78, column: 28, scope: !1170)
!1184 = !DILocation(line: 78, column: 32, scope: !1170)
!1185 = !{!1186, !1186, i64 0}
!1186 = !{!"short", !447, i64 0}
!1187 = !DILocation(line: 79, column: 1, scope: !1170)
!1188 = distinct !DISubprogram(name: "from8to16SE", scope: !3, file: !3, line: 82, type: !8, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1189)
!1189 = !{!1190, !1191, !1192}
!1190 = !DILocalVariable(name: "dst", arg: 1, scope: !1188, file: !3, line: 82, type: !10)
!1191 = !DILocalVariable(name: "src", arg: 2, scope: !1188, file: !3, line: 82, type: !11)
!1192 = !DILocalVariable(name: "n", scope: !1188, file: !3, line: 84, type: !33)
!1193 = !DILocation(line: 82, column: 24, scope: !1188)
!1194 = !DILocation(line: 82, column: 41, scope: !1188)
!1195 = !DILocation(line: 84, column: 5, scope: !1188)
!1196 = !DILocation(line: 84, column: 20, scope: !1188)
!1197 = !DILocation(line: 84, column: 42, scope: !1188)
!1198 = !DILocation(line: 84, column: 24, scope: !1188)
!1199 = !DILocation(line: 85, column: 30, scope: !1188)
!1200 = !DILocation(line: 85, column: 24, scope: !1188)
!1201 = !DILocation(line: 85, column: 28, scope: !1188)
!1202 = !DILocation(line: 86, column: 1, scope: !1188)
!1203 = distinct !DISubprogram(name: "from8toHLF", scope: !3, file: !3, line: 101, type: !8, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1204)
!1204 = !{!1205, !1206, !1207}
!1205 = !DILocalVariable(name: "dst", arg: 1, scope: !1203, file: !3, line: 101, type: !10)
!1206 = !DILocalVariable(name: "src", arg: 2, scope: !1203, file: !3, line: 101, type: !11)
!1207 = !DILocalVariable(name: "n", scope: !1203, file: !3, line: 104, type: !174)
!1208 = !DILocation(line: 101, column: 23, scope: !1203)
!1209 = !DILocation(line: 101, column: 40, scope: !1203)
!1210 = !DILocation(line: 104, column: 8, scope: !1203)
!1211 = !DILocation(line: 104, column: 25, scope: !1203)
!1212 = !DILocation(line: 104, column: 48, scope: !1203)
!1213 = !DILocation(line: 104, column: 30, scope: !1203)
!1214 = !DILocation(line: 104, column: 29, scope: !1203)
!1215 = !DILocation(line: 104, column: 53, scope: !1203)
!1216 = !{!1217, !1217, i64 0}
!1217 = !{!"float", !447, i64 0}
!1218 = !DILocation(line: 105, column: 48, scope: !1203)
!1219 = !DILocation(line: 105, column: 33, scope: !1203)
!1220 = !DILocation(line: 105, column: 27, scope: !1203)
!1221 = !DILocation(line: 105, column: 31, scope: !1203)
!1222 = !DILocation(line: 110, column: 1, scope: !1203)
!1223 = distinct !DISubprogram(name: "from8toFLT", scope: !3, file: !3, line: 89, type: !8, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1224)
!1224 = !{!1225, !1226}
!1225 = !DILocalVariable(name: "dst", arg: 1, scope: !1223, file: !3, line: 89, type: !10)
!1226 = !DILocalVariable(name: "src", arg: 2, scope: !1223, file: !3, line: 89, type: !11)
!1227 = !DILocation(line: 89, column: 23, scope: !1223)
!1228 = !DILocation(line: 89, column: 40, scope: !1223)
!1229 = !DILocation(line: 91, column: 72, scope: !1223)
!1230 = !DILocation(line: 91, column: 54, scope: !1223)
!1231 = !DILocation(line: 91, column: 34, scope: !1223)
!1232 = !DILocation(line: 91, column: 77, scope: !1223)
!1233 = !DILocation(line: 91, column: 28, scope: !1223)
!1234 = !DILocation(line: 91, column: 32, scope: !1223)
!1235 = !DILocation(line: 92, column: 1, scope: !1223)
!1236 = distinct !DISubprogram(name: "from8toDBL", scope: !3, file: !3, line: 95, type: !8, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1237)
!1237 = !{!1238, !1239}
!1238 = !DILocalVariable(name: "dst", arg: 1, scope: !1236, file: !3, line: 95, type: !10)
!1239 = !DILocalVariable(name: "src", arg: 2, scope: !1236, file: !3, line: 95, type: !11)
!1240 = !DILocation(line: 95, column: 23, scope: !1236)
!1241 = !DILocation(line: 95, column: 40, scope: !1236)
!1242 = !DILocation(line: 97, column: 72, scope: !1236)
!1243 = !DILocation(line: 97, column: 54, scope: !1236)
!1244 = !DILocation(line: 97, column: 34, scope: !1236)
!1245 = !DILocation(line: 97, column: 77, scope: !1236)
!1246 = !DILocation(line: 97, column: 28, scope: !1236)
!1247 = !DILocation(line: 97, column: 32, scope: !1236)
!1248 = !{!480, !480, i64 0}
!1249 = !DILocation(line: 98, column: 1, scope: !1236)
!1250 = distinct !DISubprogram(name: "from16to8", scope: !3, file: !3, line: 115, type: !8, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1251)
!1251 = !{!1252, !1253, !1254}
!1252 = !DILocalVariable(name: "dst", arg: 1, scope: !1250, file: !3, line: 115, type: !10)
!1253 = !DILocalVariable(name: "src", arg: 2, scope: !1250, file: !3, line: 115, type: !11)
!1254 = !DILocalVariable(name: "n", scope: !1250, file: !3, line: 117, type: !171)
!1255 = !DILocation(line: 115, column: 22, scope: !1250)
!1256 = !DILocation(line: 115, column: 39, scope: !1250)
!1257 = !DILocation(line: 117, column: 8, scope: !1250)
!1258 = !DILocation(line: 117, column: 24, scope: !1250)
!1259 = !DILocation(line: 117, column: 47, scope: !1250)
!1260 = !DILocation(line: 117, column: 28, scope: !1250)
!1261 = !DILocation(line: 118, column: 33, scope: !1250)
!1262 = !DILocation(line: 118, column: 27, scope: !1250)
!1263 = !DILocation(line: 118, column: 31, scope: !1250)
!1264 = !DILocation(line: 119, column: 1, scope: !1250)
!1265 = distinct !DISubprogram(name: "copy16", scope: !3, file: !3, line: 129, type: !8, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1266)
!1266 = !{!1267, !1268}
!1267 = !DILocalVariable(name: "dst", arg: 1, scope: !1265, file: !3, line: 129, type: !10)
!1268 = !DILocalVariable(name: "src", arg: 2, scope: !1265, file: !3, line: 129, type: !11)
!1269 = !DILocation(line: 129, column: 19, scope: !1265)
!1270 = !DILocation(line: 129, column: 36, scope: !1265)
!1271 = !DILocation(line: 131, column: 16, scope: !1265)
!1272 = !DILocation(line: 131, column: 21, scope: !1265)
!1273 = !DILocation(line: 131, column: 8, scope: !1265)
!1274 = !DILocation(line: 132, column: 1, scope: !1265)
!1275 = distinct !DISubprogram(name: "from16to16", scope: !3, file: !3, line: 135, type: !8, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1276)
!1276 = !{!1277, !1278, !1279}
!1277 = !DILocalVariable(name: "dst", arg: 1, scope: !1275, file: !3, line: 135, type: !10)
!1278 = !DILocalVariable(name: "src", arg: 2, scope: !1275, file: !3, line: 135, type: !11)
!1279 = !DILocalVariable(name: "n", scope: !1275, file: !3, line: 137, type: !171)
!1280 = !DILocation(line: 135, column: 23, scope: !1275)
!1281 = !DILocation(line: 135, column: 40, scope: !1275)
!1282 = !DILocation(line: 137, column: 5, scope: !1275)
!1283 = !DILocation(line: 137, column: 21, scope: !1275)
!1284 = !DILocation(line: 137, column: 44, scope: !1275)
!1285 = !DILocation(line: 137, column: 25, scope: !1275)
!1286 = !DILocation(line: 138, column: 30, scope: !1275)
!1287 = !DILocation(line: 138, column: 24, scope: !1275)
!1288 = !DILocation(line: 138, column: 28, scope: !1275)
!1289 = !DILocation(line: 139, column: 1, scope: !1275)
!1290 = distinct !DISubprogram(name: "from16toHLF", scope: !3, file: !3, line: 166, type: !8, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1291)
!1291 = !{!1292, !1293, !1294}
!1292 = !DILocalVariable(name: "dst", arg: 1, scope: !1290, file: !3, line: 166, type: !10)
!1293 = !DILocalVariable(name: "src", arg: 2, scope: !1290, file: !3, line: 166, type: !11)
!1294 = !DILocalVariable(name: "n", scope: !1290, file: !3, line: 169, type: !174)
!1295 = !DILocation(line: 166, column: 24, scope: !1290)
!1296 = !DILocation(line: 166, column: 41, scope: !1290)
!1297 = !DILocation(line: 169, column: 8, scope: !1290)
!1298 = !DILocation(line: 169, column: 25, scope: !1290)
!1299 = !DILocation(line: 169, column: 49, scope: !1290)
!1300 = !DILocation(line: 169, column: 30, scope: !1290)
!1301 = !DILocation(line: 169, column: 29, scope: !1290)
!1302 = !DILocation(line: 169, column: 54, scope: !1290)
!1303 = !DILocation(line: 170, column: 48, scope: !1290)
!1304 = !DILocation(line: 170, column: 33, scope: !1290)
!1305 = !DILocation(line: 170, column: 27, scope: !1290)
!1306 = !DILocation(line: 170, column: 31, scope: !1290)
!1307 = !DILocation(line: 175, column: 1, scope: !1290)
!1308 = distinct !DISubprogram(name: "from16toFLT", scope: !3, file: !3, line: 142, type: !8, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1309)
!1309 = !{!1310, !1311}
!1310 = !DILocalVariable(name: "dst", arg: 1, scope: !1308, file: !3, line: 142, type: !10)
!1311 = !DILocalVariable(name: "src", arg: 2, scope: !1308, file: !3, line: 142, type: !11)
!1312 = !DILocation(line: 142, column: 24, scope: !1308)
!1313 = !DILocation(line: 142, column: 41, scope: !1308)
!1314 = !DILocation(line: 144, column: 54, scope: !1308)
!1315 = !DILocation(line: 144, column: 35, scope: !1308)
!1316 = !DILocation(line: 144, column: 34, scope: !1308)
!1317 = !DILocation(line: 144, column: 59, scope: !1308)
!1318 = !DILocation(line: 144, column: 28, scope: !1308)
!1319 = !DILocation(line: 144, column: 32, scope: !1308)
!1320 = !DILocation(line: 145, column: 1, scope: !1308)
!1321 = distinct !DISubprogram(name: "from16toDBL", scope: !3, file: !3, line: 154, type: !8, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1322)
!1322 = !{!1323, !1324}
!1323 = !DILocalVariable(name: "dst", arg: 1, scope: !1321, file: !3, line: 154, type: !10)
!1324 = !DILocalVariable(name: "src", arg: 2, scope: !1321, file: !3, line: 154, type: !11)
!1325 = !DILocation(line: 154, column: 24, scope: !1321)
!1326 = !DILocation(line: 154, column: 41, scope: !1321)
!1327 = !DILocation(line: 156, column: 73, scope: !1321)
!1328 = !DILocation(line: 156, column: 54, scope: !1321)
!1329 = !DILocation(line: 156, column: 34, scope: !1321)
!1330 = !DILocation(line: 156, column: 78, scope: !1321)
!1331 = !DILocation(line: 156, column: 28, scope: !1321)
!1332 = !DILocation(line: 156, column: 32, scope: !1321)
!1333 = !DILocation(line: 157, column: 1, scope: !1321)
!1334 = distinct !DISubprogram(name: "from16SEto8", scope: !3, file: !3, line: 122, type: !8, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1335)
!1335 = !{!1336, !1337, !1338}
!1336 = !DILocalVariable(name: "dst", arg: 1, scope: !1334, file: !3, line: 122, type: !10)
!1337 = !DILocalVariable(name: "src", arg: 2, scope: !1334, file: !3, line: 122, type: !11)
!1338 = !DILocalVariable(name: "n", scope: !1334, file: !3, line: 124, type: !171)
!1339 = !DILocation(line: 122, column: 24, scope: !1334)
!1340 = !DILocation(line: 122, column: 41, scope: !1334)
!1341 = !DILocation(line: 124, column: 5, scope: !1334)
!1342 = !DILocation(line: 124, column: 21, scope: !1334)
!1343 = !DILocation(line: 124, column: 44, scope: !1334)
!1344 = !DILocation(line: 124, column: 25, scope: !1334)
!1345 = !DILocation(line: 125, column: 29, scope: !1334)
!1346 = !DILocation(line: 125, column: 23, scope: !1334)
!1347 = !DILocation(line: 125, column: 27, scope: !1334)
!1348 = !DILocation(line: 126, column: 1, scope: !1334)
!1349 = distinct !DISubprogram(name: "from16SEtoHLF", scope: !3, file: !3, line: 178, type: !8, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1350)
!1350 = !{!1351, !1352, !1353}
!1351 = !DILocalVariable(name: "dst", arg: 1, scope: !1349, file: !3, line: 178, type: !10)
!1352 = !DILocalVariable(name: "src", arg: 2, scope: !1349, file: !3, line: 178, type: !11)
!1353 = !DILocalVariable(name: "n", scope: !1349, file: !3, line: 181, type: !174)
!1354 = !DILocation(line: 178, column: 26, scope: !1349)
!1355 = !DILocation(line: 178, column: 43, scope: !1349)
!1356 = !DILocation(line: 181, column: 5, scope: !1349)
!1357 = !DILocation(line: 181, column: 22, scope: !1349)
!1358 = !DILocation(line: 181, column: 27, scope: !1349)
!1359 = !DILocation(line: 181, column: 26, scope: !1349)
!1360 = !DILocation(line: 181, column: 66, scope: !1349)
!1361 = !DILocation(line: 182, column: 45, scope: !1349)
!1362 = !DILocation(line: 182, column: 30, scope: !1349)
!1363 = !DILocation(line: 182, column: 24, scope: !1349)
!1364 = !DILocation(line: 182, column: 28, scope: !1349)
!1365 = !DILocation(line: 187, column: 1, scope: !1349)
!1366 = distinct !DISubprogram(name: "from16SEtoFLT", scope: !3, file: !3, line: 148, type: !8, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1367)
!1367 = !{!1368, !1369}
!1368 = !DILocalVariable(name: "dst", arg: 1, scope: !1366, file: !3, line: 148, type: !10)
!1369 = !DILocalVariable(name: "src", arg: 2, scope: !1366, file: !3, line: 148, type: !11)
!1370 = !DILocation(line: 148, column: 26, scope: !1366)
!1371 = !DILocation(line: 148, column: 43, scope: !1366)
!1372 = !DILocation(line: 150, column: 32, scope: !1366)
!1373 = !DILocation(line: 150, column: 31, scope: !1366)
!1374 = !DILocation(line: 150, column: 71, scope: !1366)
!1375 = !DILocation(line: 150, column: 25, scope: !1366)
!1376 = !DILocation(line: 150, column: 29, scope: !1366)
!1377 = !DILocation(line: 151, column: 1, scope: !1366)
!1378 = distinct !DISubprogram(name: "from16SEtoDBL", scope: !3, file: !3, line: 160, type: !8, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1379)
!1379 = !{!1380, !1381}
!1380 = !DILocalVariable(name: "dst", arg: 1, scope: !1378, file: !3, line: 160, type: !10)
!1381 = !DILocalVariable(name: "src", arg: 2, scope: !1378, file: !3, line: 160, type: !11)
!1382 = !DILocation(line: 160, column: 26, scope: !1378)
!1383 = !DILocation(line: 160, column: 43, scope: !1378)
!1384 = !DILocation(line: 162, column: 51, scope: !1378)
!1385 = !DILocation(line: 162, column: 31, scope: !1378)
!1386 = !DILocation(line: 162, column: 90, scope: !1378)
!1387 = !DILocation(line: 162, column: 25, scope: !1378)
!1388 = !DILocation(line: 162, column: 29, scope: !1378)
!1389 = !DILocation(line: 163, column: 1, scope: !1378)
!1390 = distinct !DISubprogram(name: "fromHLFto8", scope: !3, file: !3, line: 242, type: !8, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1391)
!1391 = !{!1392, !1393, !1394}
!1392 = !DILocalVariable(name: "dst", arg: 1, scope: !1390, file: !3, line: 242, type: !10)
!1393 = !DILocalVariable(name: "src", arg: 2, scope: !1390, file: !3, line: 242, type: !11)
!1394 = !DILocalVariable(name: "n", scope: !1390, file: !3, line: 245, type: !174)
!1395 = !DILocation(line: 242, column: 23, scope: !1390)
!1396 = !DILocation(line: 242, column: 40, scope: !1390)
!1397 = !DILocation(line: 245, column: 8, scope: !1390)
!1398 = !DILocation(line: 245, column: 25, scope: !1390)
!1399 = !DILocation(line: 245, column: 63, scope: !1390)
!1400 = !DILocation(line: 245, column: 44, scope: !1390)
!1401 = !DILocation(line: 245, column: 29, scope: !1390)
!1402 = !DILocation(line: 246, column: 54, scope: !1390)
!1403 = !DILocation(line: 246, column: 56, scope: !1390)
!1404 = !DILocation(line: 246, column: 32, scope: !1390)
!1405 = !DILocation(line: 246, column: 26, scope: !1390)
!1406 = !DILocation(line: 246, column: 30, scope: !1390)
!1407 = !DILocation(line: 252, column: 1, scope: !1390)
!1408 = distinct !DISubprogram(name: "fromHLFto16", scope: !3, file: !3, line: 255, type: !8, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1409)
!1409 = !{!1410, !1411, !1412}
!1410 = !DILocalVariable(name: "dst", arg: 1, scope: !1408, file: !3, line: 255, type: !10)
!1411 = !DILocalVariable(name: "src", arg: 2, scope: !1408, file: !3, line: 255, type: !11)
!1412 = !DILocalVariable(name: "n", scope: !1408, file: !3, line: 258, type: !174)
!1413 = !DILocation(line: 255, column: 24, scope: !1408)
!1414 = !DILocation(line: 255, column: 41, scope: !1408)
!1415 = !DILocation(line: 258, column: 8, scope: !1408)
!1416 = !DILocation(line: 258, column: 25, scope: !1408)
!1417 = !DILocation(line: 258, column: 63, scope: !1408)
!1418 = !DILocation(line: 258, column: 44, scope: !1408)
!1419 = !DILocation(line: 258, column: 29, scope: !1408)
!1420 = !DILocation(line: 259, column: 55, scope: !1408)
!1421 = !DILocation(line: 259, column: 57, scope: !1408)
!1422 = !DILocation(line: 259, column: 33, scope: !1408)
!1423 = !DILocation(line: 259, column: 27, scope: !1408)
!1424 = !DILocation(line: 259, column: 31, scope: !1408)
!1425 = !DILocation(line: 264, column: 1, scope: !1408)
!1426 = distinct !DISubprogram(name: "fromHLFto16SE", scope: !3, file: !3, line: 267, type: !8, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1427)
!1427 = !{!1428, !1429, !1430, !1431}
!1428 = !DILocalVariable(name: "dst", arg: 1, scope: !1426, file: !3, line: 267, type: !10)
!1429 = !DILocalVariable(name: "src", arg: 2, scope: !1426, file: !3, line: 267, type: !11)
!1430 = !DILocalVariable(name: "n", scope: !1426, file: !3, line: 270, type: !174)
!1431 = !DILocalVariable(name: "i", scope: !1426, file: !3, line: 271, type: !171)
!1432 = !DILocation(line: 267, column: 26, scope: !1426)
!1433 = !DILocation(line: 267, column: 43, scope: !1426)
!1434 = !DILocation(line: 270, column: 5, scope: !1426)
!1435 = !DILocation(line: 270, column: 22, scope: !1426)
!1436 = !DILocation(line: 270, column: 60, scope: !1426)
!1437 = !DILocation(line: 270, column: 41, scope: !1426)
!1438 = !DILocation(line: 270, column: 26, scope: !1426)
!1439 = !DILocation(line: 271, column: 5, scope: !1426)
!1440 = !DILocation(line: 271, column: 21, scope: !1426)
!1441 = !DILocation(line: 271, column: 47, scope: !1426)
!1442 = !DILocation(line: 271, column: 49, scope: !1426)
!1443 = !DILocation(line: 271, column: 25, scope: !1426)
!1444 = !DILocation(line: 272, column: 30, scope: !1426)
!1445 = !DILocation(line: 272, column: 24, scope: !1426)
!1446 = !DILocation(line: 272, column: 28, scope: !1426)
!1447 = !DILocation(line: 277, column: 1, scope: !1426)
!1448 = distinct !DISubprogram(name: "fromHLFtoFLT", scope: !3, file: !3, line: 280, type: !8, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1449)
!1449 = !{!1450, !1451}
!1450 = !DILocalVariable(name: "dst", arg: 1, scope: !1448, file: !3, line: 280, type: !10)
!1451 = !DILocalVariable(name: "src", arg: 2, scope: !1448, file: !3, line: 280, type: !11)
!1452 = !DILocation(line: 280, column: 25, scope: !1448)
!1453 = !DILocation(line: 280, column: 42, scope: !1448)
!1454 = !DILocation(line: 283, column: 68, scope: !1448)
!1455 = !DILocation(line: 283, column: 49, scope: !1448)
!1456 = !DILocation(line: 283, column: 34, scope: !1448)
!1457 = !DILocation(line: 283, column: 28, scope: !1448)
!1458 = !DILocation(line: 283, column: 32, scope: !1448)
!1459 = !DILocation(line: 288, column: 1, scope: !1448)
!1460 = distinct !DISubprogram(name: "fromHLFtoDBL", scope: !3, file: !3, line: 291, type: !8, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1461)
!1461 = !{!1462, !1463}
!1462 = !DILocalVariable(name: "dst", arg: 1, scope: !1460, file: !3, line: 291, type: !10)
!1463 = !DILocalVariable(name: "src", arg: 2, scope: !1460, file: !3, line: 291, type: !11)
!1464 = !DILocation(line: 291, column: 25, scope: !1460)
!1465 = !DILocation(line: 291, column: 42, scope: !1460)
!1466 = !DILocation(line: 294, column: 86, scope: !1460)
!1467 = !DILocation(line: 294, column: 67, scope: !1460)
!1468 = !DILocation(line: 294, column: 52, scope: !1460)
!1469 = !DILocation(line: 294, column: 34, scope: !1460)
!1470 = !DILocation(line: 294, column: 28, scope: !1460)
!1471 = !DILocation(line: 294, column: 32, scope: !1460)
!1472 = !DILocation(line: 299, column: 1, scope: !1460)
!1473 = distinct !DISubprogram(name: "fromFLTto8", scope: !3, file: !3, line: 191, type: !8, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1474)
!1474 = !{!1475, !1476, !1477}
!1475 = !DILocalVariable(name: "dst", arg: 1, scope: !1473, file: !3, line: 191, type: !10)
!1476 = !DILocalVariable(name: "src", arg: 2, scope: !1473, file: !3, line: 191, type: !11)
!1477 = !DILocalVariable(name: "n", scope: !1473, file: !3, line: 193, type: !174)
!1478 = !DILocation(line: 191, column: 23, scope: !1473)
!1479 = !DILocation(line: 191, column: 40, scope: !1473)
!1480 = !DILocation(line: 193, column: 5, scope: !1473)
!1481 = !DILocation(line: 193, column: 22, scope: !1473)
!1482 = !DILocation(line: 193, column: 46, scope: !1473)
!1483 = !DILocation(line: 193, column: 26, scope: !1473)
!1484 = !DILocation(line: 194, column: 51, scope: !1473)
!1485 = !DILocation(line: 194, column: 53, scope: !1473)
!1486 = !DILocation(line: 194, column: 29, scope: !1473)
!1487 = !DILocation(line: 194, column: 23, scope: !1473)
!1488 = !DILocation(line: 194, column: 27, scope: !1473)
!1489 = !DILocation(line: 195, column: 1, scope: !1473)
!1490 = distinct !DISubprogram(name: "fromFLTto16", scope: !3, file: !3, line: 198, type: !8, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1491)
!1491 = !{!1492, !1493, !1494}
!1492 = !DILocalVariable(name: "dst", arg: 1, scope: !1490, file: !3, line: 198, type: !10)
!1493 = !DILocalVariable(name: "src", arg: 2, scope: !1490, file: !3, line: 198, type: !11)
!1494 = !DILocalVariable(name: "n", scope: !1490, file: !3, line: 200, type: !174)
!1495 = !DILocation(line: 198, column: 24, scope: !1490)
!1496 = !DILocation(line: 198, column: 41, scope: !1490)
!1497 = !DILocation(line: 200, column: 5, scope: !1490)
!1498 = !DILocation(line: 200, column: 22, scope: !1490)
!1499 = !DILocation(line: 200, column: 46, scope: !1490)
!1500 = !DILocation(line: 200, column: 26, scope: !1490)
!1501 = !DILocation(line: 201, column: 52, scope: !1490)
!1502 = !DILocation(line: 201, column: 54, scope: !1490)
!1503 = !DILocation(line: 201, column: 30, scope: !1490)
!1504 = !DILocation(line: 201, column: 24, scope: !1490)
!1505 = !DILocation(line: 201, column: 28, scope: !1490)
!1506 = !DILocation(line: 202, column: 1, scope: !1490)
!1507 = distinct !DISubprogram(name: "fromFLTto16SE", scope: !3, file: !3, line: 205, type: !8, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1508)
!1508 = !{!1509, !1510, !1511, !1512}
!1509 = !DILocalVariable(name: "dst", arg: 1, scope: !1507, file: !3, line: 205, type: !10)
!1510 = !DILocalVariable(name: "src", arg: 2, scope: !1507, file: !3, line: 205, type: !11)
!1511 = !DILocalVariable(name: "n", scope: !1507, file: !3, line: 207, type: !174)
!1512 = !DILocalVariable(name: "i", scope: !1507, file: !3, line: 208, type: !171)
!1513 = !DILocation(line: 205, column: 26, scope: !1507)
!1514 = !DILocation(line: 205, column: 43, scope: !1507)
!1515 = !DILocation(line: 207, column: 5, scope: !1507)
!1516 = !DILocation(line: 207, column: 22, scope: !1507)
!1517 = !DILocation(line: 207, column: 46, scope: !1507)
!1518 = !DILocation(line: 207, column: 26, scope: !1507)
!1519 = !DILocation(line: 208, column: 5, scope: !1507)
!1520 = !DILocation(line: 208, column: 21, scope: !1507)
!1521 = !DILocation(line: 208, column: 47, scope: !1507)
!1522 = !DILocation(line: 208, column: 49, scope: !1507)
!1523 = !DILocation(line: 208, column: 25, scope: !1507)
!1524 = !DILocation(line: 210, column: 30, scope: !1507)
!1525 = !DILocation(line: 210, column: 24, scope: !1507)
!1526 = !DILocation(line: 210, column: 28, scope: !1507)
!1527 = !DILocation(line: 211, column: 1, scope: !1507)
!1528 = distinct !DISubprogram(name: "fromFLTtoHLF", scope: !3, file: !3, line: 227, type: !8, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1529)
!1529 = !{!1530, !1531, !1532}
!1530 = !DILocalVariable(name: "dst", arg: 1, scope: !1528, file: !3, line: 227, type: !10)
!1531 = !DILocalVariable(name: "src", arg: 2, scope: !1528, file: !3, line: 227, type: !11)
!1532 = !DILocalVariable(name: "n", scope: !1528, file: !3, line: 230, type: !174)
!1533 = !DILocation(line: 227, column: 25, scope: !1528)
!1534 = !DILocation(line: 227, column: 42, scope: !1528)
!1535 = !DILocation(line: 230, column: 8, scope: !1528)
!1536 = !DILocation(line: 230, column: 25, scope: !1528)
!1537 = !DILocation(line: 230, column: 49, scope: !1528)
!1538 = !DILocation(line: 230, column: 29, scope: !1528)
!1539 = !DILocation(line: 231, column: 48, scope: !1528)
!1540 = !DILocation(line: 231, column: 33, scope: !1528)
!1541 = !DILocation(line: 231, column: 27, scope: !1528)
!1542 = !DILocation(line: 231, column: 31, scope: !1528)
!1543 = !DILocation(line: 236, column: 1, scope: !1528)
!1544 = distinct !DISubprogram(name: "copy32", scope: !3, file: !3, line: 214, type: !8, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1545)
!1545 = !{!1546, !1547}
!1546 = !DILocalVariable(name: "dst", arg: 1, scope: !1544, file: !3, line: 214, type: !10)
!1547 = !DILocalVariable(name: "src", arg: 2, scope: !1544, file: !3, line: 214, type: !11)
!1548 = !DILocation(line: 214, column: 19, scope: !1544)
!1549 = !DILocation(line: 214, column: 36, scope: !1544)
!1550 = !DILocation(line: 216, column: 13, scope: !1544)
!1551 = !DILocation(line: 216, column: 18, scope: !1544)
!1552 = !DILocation(line: 216, column: 5, scope: !1544)
!1553 = !DILocation(line: 217, column: 1, scope: !1544)
!1554 = distinct !DISubprogram(name: "fromFLTtoDBL", scope: !3, file: !3, line: 220, type: !8, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1555)
!1555 = !{!1556, !1557, !1558}
!1556 = !DILocalVariable(name: "dst", arg: 1, scope: !1554, file: !3, line: 220, type: !10)
!1557 = !DILocalVariable(name: "src", arg: 2, scope: !1554, file: !3, line: 220, type: !11)
!1558 = !DILocalVariable(name: "n", scope: !1554, file: !3, line: 222, type: !174)
!1559 = !DILocation(line: 220, column: 25, scope: !1554)
!1560 = !DILocation(line: 220, column: 42, scope: !1554)
!1561 = !DILocation(line: 222, column: 5, scope: !1554)
!1562 = !DILocation(line: 222, column: 22, scope: !1554)
!1563 = !DILocation(line: 222, column: 46, scope: !1554)
!1564 = !DILocation(line: 222, column: 26, scope: !1554)
!1565 = !DILocation(line: 223, column: 49, scope: !1554)
!1566 = !DILocation(line: 223, column: 31, scope: !1554)
!1567 = !DILocation(line: 223, column: 25, scope: !1554)
!1568 = !DILocation(line: 223, column: 29, scope: !1554)
!1569 = !DILocation(line: 224, column: 1, scope: !1554)
!1570 = distinct !DISubprogram(name: "fromDBLto8", scope: !3, file: !3, line: 303, type: !8, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1571)
!1571 = !{!1572, !1573, !1574}
!1572 = !DILocalVariable(name: "dst", arg: 1, scope: !1570, file: !3, line: 303, type: !10)
!1573 = !DILocalVariable(name: "src", arg: 2, scope: !1570, file: !3, line: 303, type: !11)
!1574 = !DILocalVariable(name: "n", scope: !1570, file: !3, line: 305, type: !177)
!1575 = !DILocation(line: 303, column: 23, scope: !1570)
!1576 = !DILocation(line: 303, column: 40, scope: !1570)
!1577 = !DILocation(line: 305, column: 8, scope: !1570)
!1578 = !DILocation(line: 305, column: 25, scope: !1570)
!1579 = !DILocation(line: 305, column: 49, scope: !1570)
!1580 = !DILocation(line: 305, column: 29, scope: !1570)
!1581 = !DILocation(line: 306, column: 54, scope: !1570)
!1582 = !DILocation(line: 306, column: 56, scope: !1570)
!1583 = !DILocation(line: 306, column: 32, scope: !1570)
!1584 = !DILocation(line: 306, column: 26, scope: !1570)
!1585 = !DILocation(line: 306, column: 30, scope: !1570)
!1586 = !DILocation(line: 307, column: 1, scope: !1570)
!1587 = distinct !DISubprogram(name: "fromDBLto16", scope: !3, file: !3, line: 310, type: !8, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1588)
!1588 = !{!1589, !1590, !1591}
!1589 = !DILocalVariable(name: "dst", arg: 1, scope: !1587, file: !3, line: 310, type: !10)
!1590 = !DILocalVariable(name: "src", arg: 2, scope: !1587, file: !3, line: 310, type: !11)
!1591 = !DILocalVariable(name: "n", scope: !1587, file: !3, line: 312, type: !177)
!1592 = !DILocation(line: 310, column: 24, scope: !1587)
!1593 = !DILocation(line: 310, column: 41, scope: !1587)
!1594 = !DILocation(line: 312, column: 8, scope: !1587)
!1595 = !DILocation(line: 312, column: 25, scope: !1587)
!1596 = !DILocation(line: 312, column: 49, scope: !1587)
!1597 = !DILocation(line: 312, column: 29, scope: !1587)
!1598 = !DILocation(line: 313, column: 55, scope: !1587)
!1599 = !DILocation(line: 313, column: 57, scope: !1587)
!1600 = !DILocation(line: 313, column: 33, scope: !1587)
!1601 = !DILocation(line: 313, column: 27, scope: !1587)
!1602 = !DILocation(line: 313, column: 31, scope: !1587)
!1603 = !DILocation(line: 314, column: 1, scope: !1587)
!1604 = distinct !DISubprogram(name: "fromDBLto16SE", scope: !3, file: !3, line: 317, type: !8, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1605)
!1605 = !{!1606, !1607, !1608, !1609}
!1606 = !DILocalVariable(name: "dst", arg: 1, scope: !1604, file: !3, line: 317, type: !10)
!1607 = !DILocalVariable(name: "src", arg: 2, scope: !1604, file: !3, line: 317, type: !11)
!1608 = !DILocalVariable(name: "n", scope: !1604, file: !3, line: 319, type: !177)
!1609 = !DILocalVariable(name: "i", scope: !1604, file: !3, line: 320, type: !171)
!1610 = !DILocation(line: 317, column: 26, scope: !1604)
!1611 = !DILocation(line: 317, column: 43, scope: !1604)
!1612 = !DILocation(line: 319, column: 5, scope: !1604)
!1613 = !DILocation(line: 319, column: 22, scope: !1604)
!1614 = !DILocation(line: 319, column: 46, scope: !1604)
!1615 = !DILocation(line: 319, column: 26, scope: !1604)
!1616 = !DILocation(line: 320, column: 5, scope: !1604)
!1617 = !DILocation(line: 320, column: 22, scope: !1604)
!1618 = !DILocation(line: 320, column: 48, scope: !1604)
!1619 = !DILocation(line: 320, column: 50, scope: !1604)
!1620 = !DILocation(line: 320, column: 26, scope: !1604)
!1621 = !DILocation(line: 321, column: 30, scope: !1604)
!1622 = !DILocation(line: 321, column: 24, scope: !1604)
!1623 = !DILocation(line: 321, column: 28, scope: !1604)
!1624 = !DILocation(line: 322, column: 1, scope: !1604)
!1625 = distinct !DISubprogram(name: "fromDBLtoHLF", scope: !3, file: !3, line: 332, type: !8, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1626)
!1626 = !{!1627, !1628, !1629}
!1627 = !DILocalVariable(name: "dst", arg: 1, scope: !1625, file: !3, line: 332, type: !10)
!1628 = !DILocalVariable(name: "src", arg: 2, scope: !1625, file: !3, line: 332, type: !11)
!1629 = !DILocalVariable(name: "n", scope: !1625, file: !3, line: 335, type: !174)
!1630 = !DILocation(line: 332, column: 25, scope: !1625)
!1631 = !DILocation(line: 332, column: 42, scope: !1625)
!1632 = !DILocation(line: 335, column: 8, scope: !1625)
!1633 = !DILocation(line: 335, column: 25, scope: !1625)
!1634 = !DILocation(line: 335, column: 68, scope: !1625)
!1635 = !DILocation(line: 335, column: 48, scope: !1625)
!1636 = !DILocation(line: 335, column: 29, scope: !1625)
!1637 = !DILocation(line: 336, column: 48, scope: !1625)
!1638 = !DILocation(line: 336, column: 33, scope: !1625)
!1639 = !DILocation(line: 336, column: 27, scope: !1625)
!1640 = !DILocation(line: 336, column: 31, scope: !1625)
!1641 = !DILocation(line: 341, column: 1, scope: !1625)
!1642 = distinct !DISubprogram(name: "fromDBLtoFLT", scope: !3, file: !3, line: 325, type: !8, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1643)
!1643 = !{!1644, !1645, !1646}
!1644 = !DILocalVariable(name: "dst", arg: 1, scope: !1642, file: !3, line: 325, type: !10)
!1645 = !DILocalVariable(name: "src", arg: 2, scope: !1642, file: !3, line: 325, type: !11)
!1646 = !DILocalVariable(name: "n", scope: !1642, file: !3, line: 327, type: !177)
!1647 = !DILocation(line: 325, column: 25, scope: !1642)
!1648 = !DILocation(line: 325, column: 42, scope: !1642)
!1649 = !DILocation(line: 327, column: 8, scope: !1642)
!1650 = !DILocation(line: 327, column: 25, scope: !1642)
!1651 = !DILocation(line: 327, column: 49, scope: !1642)
!1652 = !DILocation(line: 327, column: 29, scope: !1642)
!1653 = !DILocation(line: 328, column: 53, scope: !1642)
!1654 = !DILocation(line: 328, column: 34, scope: !1642)
!1655 = !DILocation(line: 328, column: 28, scope: !1642)
!1656 = !DILocation(line: 328, column: 32, scope: !1642)
!1657 = !DILocation(line: 329, column: 1, scope: !1642)
!1658 = distinct !DISubprogram(name: "copy64", scope: !3, file: !3, line: 344, type: !8, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1659)
!1659 = !{!1660, !1661}
!1660 = !DILocalVariable(name: "dst", arg: 1, scope: !1658, file: !3, line: 344, type: !10)
!1661 = !DILocalVariable(name: "src", arg: 2, scope: !1658, file: !3, line: 344, type: !11)
!1662 = !DILocation(line: 344, column: 19, scope: !1658)
!1663 = !DILocation(line: 344, column: 36, scope: !1658)
!1664 = !DILocation(line: 346, column: 16, scope: !1658)
!1665 = !DILocation(line: 346, column: 21, scope: !1658)
!1666 = !DILocation(line: 346, column: 8, scope: !1658)
!1667 = !DILocation(line: 347, column: 1, scope: !1658)
!1668 = distinct !DISubprogram(name: "FormatterPos", scope: !3, file: !3, line: 352, type: !1669, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1671)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!192, !36}
!1671 = !{!1672, !1673}
!1672 = !DILocalVariable(name: "frm", arg: 1, scope: !1668, file: !3, line: 352, type: !36)
!1673 = !DILocalVariable(name: "b", scope: !1668, file: !3, line: 354, type: !36)
!1674 = !DILocation(line: 352, column: 34, scope: !1668)
!1675 = !DILocation(line: 354, column: 5, scope: !1668)
!1676 = !DILocation(line: 354, column: 22, scope: !1668)
!1677 = !DILocation(line: 354, column: 26, scope: !1668)
!1678 = !DILocation(line: 356, column: 9, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 356, column: 9)
!1680 = !DILocation(line: 356, column: 11, scope: !1679)
!1681 = !DILocation(line: 356, column: 16, scope: !1679)
!1682 = !DILocation(line: 356, column: 19, scope: !1679)
!1683 = !DILocation(line: 356, column: 9, scope: !1668)
!1684 = !DILocation(line: 357, column: 9, scope: !1679)
!1685 = !DILocation(line: 359, column: 9, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 359, column: 9)
!1687 = !DILocation(line: 359, column: 11, scope: !1686)
!1688 = !DILocation(line: 359, column: 16, scope: !1686)
!1689 = !DILocation(line: 359, column: 19, scope: !1686)
!1690 = !DILocation(line: 359, column: 9, scope: !1668)
!1691 = !DILocation(line: 360, column: 9, scope: !1686)
!1692 = !DILocation(line: 362, column: 9, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 362, column: 9)
!1694 = !DILocation(line: 362, column: 11, scope: !1693)
!1695 = !DILocation(line: 362, column: 16, scope: !1693)
!1696 = !DILocation(line: 362, column: 19, scope: !1693)
!1697 = !DILocation(line: 362, column: 9, scope: !1668)
!1698 = !DILocation(line: 363, column: 9, scope: !1693)
!1699 = !DILocation(line: 364, column: 9, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 364, column: 9)
!1701 = !DILocation(line: 364, column: 11, scope: !1700)
!1702 = !DILocation(line: 364, column: 16, scope: !1700)
!1703 = !DILocation(line: 364, column: 20, scope: !1700)
!1704 = !DILocation(line: 364, column: 9, scope: !1668)
!1705 = !DILocation(line: 366, column: 13, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 366, column: 13)
!1707 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 365, column: 5)
!1708 = !DILocation(line: 366, column: 13, scope: !1707)
!1709 = !DILocation(line: 367, column: 13, scope: !1706)
!1710 = !DILocation(line: 369, column: 13, scope: !1706)
!1711 = !DILocation(line: 371, column: 9, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 371, column: 9)
!1713 = !DILocation(line: 371, column: 11, scope: !1712)
!1714 = !DILocation(line: 371, column: 16, scope: !1712)
!1715 = !DILocation(line: 371, column: 20, scope: !1712)
!1716 = !DILocation(line: 371, column: 9, scope: !1668)
!1717 = !DILocation(line: 372, column: 9, scope: !1712)
!1718 = !DILocation(line: 373, column: 5, scope: !1668)
!1719 = !DILocation(line: 374, column: 1, scope: !1668)
!1720 = !DISubprogram(name: "cmsSignalError", scope: !51, file: !51, line: 105, type: !1721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{null, !13, !36, !1723, null}
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!1725 = !DISubprogram(name: "_cmsFloat2Half", scope: !17, file: !17, line: 1011, type: !1726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!171, !174}
!1728 = !DISubprogram(name: "_cmsHalf2Float", scope: !17, file: !17, line: 1010, type: !1729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!174, !171}
!1731 = distinct !DISubprogram(name: "_cmsQuickSaturateByte", scope: !3, file: !3, line: 36, type: !1732, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1734)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!33, !177}
!1734 = !{!1735}
!1735 = !DILocalVariable(name: "d", arg: 1, scope: !1731, file: !3, line: 36, type: !177)
!1736 = !DILocation(line: 36, column: 65, scope: !1731)
!1737 = !DILocation(line: 38, column: 10, scope: !1731)
!1738 = !DILocation(line: 39, column: 12, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 39, column: 12)
!1740 = !DILocation(line: 39, column: 14, scope: !1739)
!1741 = !DILocation(line: 39, column: 12, scope: !1731)
!1742 = !DILocation(line: 39, column: 20, scope: !1739)
!1743 = !DILocation(line: 40, column: 12, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 40, column: 12)
!1745 = !DILocation(line: 40, column: 14, scope: !1744)
!1746 = !DILocation(line: 40, column: 12, scope: !1731)
!1747 = !DILocation(line: 40, column: 24, scope: !1744)
!1748 = !DILocation(line: 42, column: 51, scope: !1731)
!1749 = !DILocation(line: 42, column: 32, scope: !1731)
!1750 = !DILocation(line: 42, column: 15, scope: !1731)
!1751 = !DILocation(line: 42, column: 8, scope: !1731)
!1752 = !DILocation(line: 43, column: 1, scope: !1731)
!1753 = distinct !DISubprogram(name: "_cmsQuickFloorWord", scope: !17, file: !17, line: 182, type: !1754, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1756)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!171, !177}
!1756 = !{!1757}
!1757 = !DILocalVariable(name: "d", arg: 1, scope: !1753, file: !17, line: 182, type: !177)
!1758 = !DILocation(line: 182, column: 63, scope: !1753)
!1759 = !DILocation(line: 184, column: 45, scope: !1753)
!1760 = !DILocation(line: 184, column: 47, scope: !1753)
!1761 = !DILocation(line: 184, column: 30, scope: !1753)
!1762 = !DILocation(line: 184, column: 12, scope: !1753)
!1763 = !DILocation(line: 184, column: 58, scope: !1753)
!1764 = !DILocation(line: 184, column: 5, scope: !1753)
!1765 = distinct !DISubprogram(name: "_cmsQuickFloor", scope: !17, file: !17, line: 160, type: !1766, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1768)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!192, !177}
!1768 = !{!1769, !1770, !1772}
!1769 = !DILocalVariable(name: "val", arg: 1, scope: !1765, file: !17, line: 160, type: !177)
!1770 = !DILocalVariable(name: "_lcms_double2fixmagic", scope: !1765, file: !17, line: 165, type: !1771)
!1771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!1772 = !DILocalVariable(name: "temp", scope: !1765, file: !17, line: 169, type: !1773)
!1773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1765, file: !17, line: 166, size: 64, elements: !1774)
!1774 = !{!1775, !1776}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1773, file: !17, line: 167, baseType: !177, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "halves", scope: !1773, file: !17, line: 168, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 64, elements: !1778)
!1778 = !{!1779}
!1779 = !DISubrange(count: 2)
!1780 = !DILocation(line: 160, column: 47, scope: !1765)
!1781 = !DILocation(line: 165, column: 5, scope: !1765)
!1782 = !DILocation(line: 165, column: 28, scope: !1765)
!1783 = !DILocation(line: 166, column: 5, scope: !1765)
!1784 = !DILocation(line: 169, column: 7, scope: !1765)
!1785 = !DILocation(line: 171, column: 16, scope: !1765)
!1786 = !DILocation(line: 171, column: 20, scope: !1765)
!1787 = !DILocation(line: 171, column: 14, scope: !1765)
!1788 = !DILocation(line: 176, column: 12, scope: !1765)
!1789 = !DILocation(line: 176, column: 27, scope: !1765)
!1790 = !DILocation(line: 179, column: 1, scope: !1765)
!1791 = !DILocation(line: 176, column: 5, scope: !1765)
!1792 = distinct !DISubprogram(name: "_cmsQuickSaturateWord", scope: !17, file: !17, line: 188, type: !1754, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1793)
!1793 = !{!1794}
!1794 = !DILocalVariable(name: "d", arg: 1, scope: !1792, file: !17, line: 188, type: !177)
!1795 = !DILocation(line: 188, column: 66, scope: !1792)
!1796 = !DILocation(line: 190, column: 7, scope: !1792)
!1797 = !DILocation(line: 191, column: 9, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1792, file: !17, line: 191, column: 9)
!1799 = !DILocation(line: 191, column: 11, scope: !1798)
!1800 = !DILocation(line: 191, column: 9, scope: !1792)
!1801 = !DILocation(line: 191, column: 17, scope: !1798)
!1802 = !DILocation(line: 192, column: 9, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1792, file: !17, line: 192, column: 9)
!1804 = !DILocation(line: 192, column: 11, scope: !1803)
!1805 = !DILocation(line: 192, column: 9, scope: !1792)
!1806 = !DILocation(line: 192, column: 23, scope: !1803)
!1807 = !DILocation(line: 194, column: 31, scope: !1792)
!1808 = !DILocation(line: 194, column: 12, scope: !1792)
!1809 = !DILocation(line: 194, column: 5, scope: !1792)
!1810 = !DILocation(line: 195, column: 1, scope: !1792)

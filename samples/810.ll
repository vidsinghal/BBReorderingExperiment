; ModuleID = 'samples/810.bc'
source_filename = "cmsmd5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmsMD5 = type { [4 x i32], [2 x i32], [64 x i8], ptr }
%struct._cms_iccprofile_struct = type { ptr, ptr, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %union.cmsProfileID, i32, [100 x i32], [100 x i32], [100 x i32], [100 x i32], [100 x i32], [100 x ptr], [100 x ptr], i32, ptr }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%union.cmsProfileID = type { [4 x i32] }

@.str = private unnamed_addr constant [25 x i8] c"(hProfile != ((void*)0))\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c"cmsmd5.c\00", align 1, !dbg !7
@__PRETTY_FUNCTION__.cmsMD5computeID = private unnamed_addr constant [37 x i8] c"cmsBool cmsMD5computeID(cmsHPROFILE)\00", align 1, !dbg !12

; Function Attrs: nounwind uwtable
define ptr @cmsMD5alloc(ptr noundef %ContextID) #0 !dbg !409 {
entry:
  %retval = alloca ptr, align 8
  %ContextID.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ContextID, ptr %ContextID.addr, align 8, !tbaa !415
  tail call void @llvm.dbg.declare(metadata ptr %ContextID.addr, metadata !413, metadata !DIExpression()), !dbg !419
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #7, !dbg !420
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !414, metadata !DIExpression()), !dbg !421
  %0 = load ptr, ptr %ContextID.addr, align 8, !dbg !422, !tbaa !415
  %call = call ptr @_cmsMallocZero(ptr noundef %0, i32 noundef 96), !dbg !423
  store ptr %call, ptr %ctx, align 8, !dbg !421, !tbaa !415
  %1 = load ptr, ptr %ctx, align 8, !dbg !424, !tbaa !415
  %cmp = icmp eq ptr %1, null, !dbg !426
  br i1 %cmp, label %if.then, label %if.end, !dbg !427

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !428

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ContextID.addr, align 8, !dbg !429, !tbaa !415
  %3 = load ptr, ptr %ctx, align 8, !dbg !430, !tbaa !415
  %ContextID1 = getelementptr inbounds %struct._cmsMD5, ptr %3, i32 0, i32 3, !dbg !431
  store ptr %2, ptr %ContextID1, align 8, !dbg !432, !tbaa !433
  %4 = load ptr, ptr %ctx, align 8, !dbg !435, !tbaa !415
  %buf = getelementptr inbounds %struct._cmsMD5, ptr %4, i32 0, i32 0, !dbg !436
  %arrayidx = getelementptr inbounds [4 x i32], ptr %buf, i64 0, i64 0, !dbg !435
  store i32 1732584193, ptr %arrayidx, align 8, !dbg !437, !tbaa !438
  %5 = load ptr, ptr %ctx, align 8, !dbg !440, !tbaa !415
  %buf2 = getelementptr inbounds %struct._cmsMD5, ptr %5, i32 0, i32 0, !dbg !441
  %arrayidx3 = getelementptr inbounds [4 x i32], ptr %buf2, i64 0, i64 1, !dbg !440
  store i32 -271733879, ptr %arrayidx3, align 4, !dbg !442, !tbaa !438
  %6 = load ptr, ptr %ctx, align 8, !dbg !443, !tbaa !415
  %buf4 = getelementptr inbounds %struct._cmsMD5, ptr %6, i32 0, i32 0, !dbg !444
  %arrayidx5 = getelementptr inbounds [4 x i32], ptr %buf4, i64 0, i64 2, !dbg !443
  store i32 -1732584194, ptr %arrayidx5, align 8, !dbg !445, !tbaa !438
  %7 = load ptr, ptr %ctx, align 8, !dbg !446, !tbaa !415
  %buf6 = getelementptr inbounds %struct._cmsMD5, ptr %7, i32 0, i32 0, !dbg !447
  %arrayidx7 = getelementptr inbounds [4 x i32], ptr %buf6, i64 0, i64 3, !dbg !446
  store i32 271733878, ptr %arrayidx7, align 4, !dbg !448, !tbaa !438
  %8 = load ptr, ptr %ctx, align 8, !dbg !449, !tbaa !415
  %bits = getelementptr inbounds %struct._cmsMD5, ptr %8, i32 0, i32 1, !dbg !450
  %arrayidx8 = getelementptr inbounds [2 x i32], ptr %bits, i64 0, i64 0, !dbg !449
  store i32 0, ptr %arrayidx8, align 8, !dbg !451, !tbaa !438
  %9 = load ptr, ptr %ctx, align 8, !dbg !452, !tbaa !415
  %bits9 = getelementptr inbounds %struct._cmsMD5, ptr %9, i32 0, i32 1, !dbg !453
  %arrayidx10 = getelementptr inbounds [2 x i32], ptr %bits9, i64 0, i64 1, !dbg !452
  store i32 0, ptr %arrayidx10, align 4, !dbg !454, !tbaa !438
  %10 = load ptr, ptr %ctx, align 8, !dbg !455, !tbaa !415
  store ptr %10, ptr %retval, align 8, !dbg !456
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !456

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #7, !dbg !457
  %11 = load ptr, ptr %retval, align 8, !dbg !457
  ret ptr %11, !dbg !457
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !458 ptr @_cmsMallocZero(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @cmsMD5add(ptr noundef %Handle, ptr noundef %buf, i32 noundef %len) #0 !dbg !459 {
entry:
  %Handle.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %ctx = alloca ptr, align 8
  %t = alloca i32, align 4
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Handle, ptr %Handle.addr, align 8, !tbaa !415
  tail call void @llvm.dbg.declare(metadata ptr %Handle.addr, metadata !465, metadata !DIExpression()), !dbg !473
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !415
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !466, metadata !DIExpression()), !dbg !474
  store i32 %len, ptr %len.addr, align 4, !tbaa !438
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !467, metadata !DIExpression()), !dbg !475
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #7, !dbg !476
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !468, metadata !DIExpression()), !dbg !477
  %0 = load ptr, ptr %Handle.addr, align 8, !dbg !478, !tbaa !415
  store ptr %0, ptr %ctx, align 8, !dbg !477, !tbaa !415
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #7, !dbg !479
  tail call void @llvm.dbg.declare(metadata ptr %t, metadata !469, metadata !DIExpression()), !dbg !480
  %1 = load ptr, ptr %ctx, align 8, !dbg !481, !tbaa !415
  %bits = getelementptr inbounds %struct._cmsMD5, ptr %1, i32 0, i32 1, !dbg !482
  %arrayidx = getelementptr inbounds [2 x i32], ptr %bits, i64 0, i64 0, !dbg !481
  %2 = load i32, ptr %arrayidx, align 8, !dbg !481, !tbaa !438
  store i32 %2, ptr %t, align 4, !dbg !483, !tbaa !438
  %3 = load i32, ptr %t, align 4, !dbg !484, !tbaa !438
  %4 = load i32, ptr %len.addr, align 4, !dbg !486, !tbaa !438
  %shl = shl i32 %4, 3, !dbg !487
  %add = add i32 %3, %shl, !dbg !488
  %5 = load ptr, ptr %ctx, align 8, !dbg !489, !tbaa !415
  %bits1 = getelementptr inbounds %struct._cmsMD5, ptr %5, i32 0, i32 1, !dbg !490
  %arrayidx2 = getelementptr inbounds [2 x i32], ptr %bits1, i64 0, i64 0, !dbg !489
  store i32 %add, ptr %arrayidx2, align 8, !dbg !491, !tbaa !438
  %6 = load i32, ptr %t, align 4, !dbg !492, !tbaa !438
  %cmp = icmp ult i32 %add, %6, !dbg !493
  br i1 %cmp, label %if.then, label %if.end, !dbg !494

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %ctx, align 8, !dbg !495, !tbaa !415
  %bits3 = getelementptr inbounds %struct._cmsMD5, ptr %7, i32 0, i32 1, !dbg !496
  %arrayidx4 = getelementptr inbounds [2 x i32], ptr %bits3, i64 0, i64 1, !dbg !495
  %8 = load i32, ptr %arrayidx4, align 4, !dbg !497, !tbaa !438
  %inc = add i32 %8, 1, !dbg !497
  store i32 %inc, ptr %arrayidx4, align 4, !dbg !497, !tbaa !438
  br label %if.end, !dbg !495

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, ptr %len.addr, align 4, !dbg !498, !tbaa !438
  %shr = lshr i32 %9, 29, !dbg !499
  %10 = load ptr, ptr %ctx, align 8, !dbg !500, !tbaa !415
  %bits5 = getelementptr inbounds %struct._cmsMD5, ptr %10, i32 0, i32 1, !dbg !501
  %arrayidx6 = getelementptr inbounds [2 x i32], ptr %bits5, i64 0, i64 1, !dbg !500
  %11 = load i32, ptr %arrayidx6, align 4, !dbg !502, !tbaa !438
  %add7 = add i32 %11, %shr, !dbg !502
  store i32 %add7, ptr %arrayidx6, align 4, !dbg !502, !tbaa !438
  %12 = load i32, ptr %t, align 4, !dbg !503, !tbaa !438
  %shr8 = lshr i32 %12, 3, !dbg !504
  %and = and i32 %shr8, 63, !dbg !505
  store i32 %and, ptr %t, align 4, !dbg !506, !tbaa !438
  %13 = load i32, ptr %t, align 4, !dbg !507, !tbaa !438
  %tobool = icmp ne i32 %13, 0, !dbg !507
  br i1 %tobool, label %if.then9, label %if.end21, !dbg !508

if.then9:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !509
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !470, metadata !DIExpression()), !dbg !510
  %14 = load ptr, ptr %ctx, align 8, !dbg !511, !tbaa !415
  %in = getelementptr inbounds %struct._cmsMD5, ptr %14, i32 0, i32 2, !dbg !512
  %arraydecay = getelementptr inbounds [64 x i8], ptr %in, i64 0, i64 0, !dbg !511
  %15 = load i32, ptr %t, align 4, !dbg !513, !tbaa !438
  %idx.ext = zext i32 %15 to i64, !dbg !514
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 %idx.ext, !dbg !514
  store ptr %add.ptr, ptr %p, align 8, !dbg !510, !tbaa !415
  %16 = load i32, ptr %t, align 4, !dbg !515, !tbaa !438
  %sub = sub i32 64, %16, !dbg !516
  store i32 %sub, ptr %t, align 4, !dbg !517, !tbaa !438
  %17 = load i32, ptr %len.addr, align 4, !dbg !518, !tbaa !438
  %18 = load i32, ptr %t, align 4, !dbg !520, !tbaa !438
  %cmp10 = icmp ult i32 %17, %18, !dbg !521
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !522

if.then11:                                        ; preds = %if.then9
  %19 = load ptr, ptr %p, align 8, !dbg !523, !tbaa !415
  %20 = load ptr, ptr %buf.addr, align 8, !dbg !525, !tbaa !415
  %21 = load i32, ptr %len.addr, align 4, !dbg !526, !tbaa !438
  %conv = zext i32 %21 to i64, !dbg !526
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %19, ptr align 1 %20, i64 %conv, i1 false), !dbg !527
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !528

if.end12:                                         ; preds = %if.then9
  %22 = load ptr, ptr %p, align 8, !dbg !529, !tbaa !415
  %23 = load ptr, ptr %buf.addr, align 8, !dbg !530, !tbaa !415
  %24 = load i32, ptr %t, align 4, !dbg !531, !tbaa !438
  %conv13 = zext i32 %24 to i64, !dbg !531
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %22, ptr align 1 %23, i64 %conv13, i1 false), !dbg !532
  %25 = load ptr, ptr %ctx, align 8, !dbg !533, !tbaa !415
  %buf14 = getelementptr inbounds %struct._cmsMD5, ptr %25, i32 0, i32 0, !dbg !534
  %arraydecay15 = getelementptr inbounds [4 x i32], ptr %buf14, i64 0, i64 0, !dbg !533
  %26 = load ptr, ptr %ctx, align 8, !dbg !535, !tbaa !415
  %in16 = getelementptr inbounds %struct._cmsMD5, ptr %26, i32 0, i32 2, !dbg !536
  %arraydecay17 = getelementptr inbounds [64 x i8], ptr %in16, i64 0, i64 0, !dbg !535
  call void @cmsMD5_Transform(ptr noundef %arraydecay15, ptr noundef %arraydecay17), !dbg !537
  %27 = load i32, ptr %t, align 4, !dbg !538, !tbaa !438
  %28 = load ptr, ptr %buf.addr, align 8, !dbg !539, !tbaa !415
  %idx.ext18 = zext i32 %27 to i64, !dbg !539
  %add.ptr19 = getelementptr inbounds i8, ptr %28, i64 %idx.ext18, !dbg !539
  store ptr %add.ptr19, ptr %buf.addr, align 8, !dbg !539, !tbaa !415
  %29 = load i32, ptr %t, align 4, !dbg !540, !tbaa !438
  %30 = load i32, ptr %len.addr, align 4, !dbg !541, !tbaa !438
  %sub20 = sub i32 %30, %29, !dbg !541
  store i32 %sub20, ptr %len.addr, align 4, !dbg !541, !tbaa !438
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !542
  br label %cleanup, !dbg !542

cleanup:                                          ; preds = %if.end12, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !542
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup35 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end21, !dbg !543

if.end21:                                         ; preds = %cleanup.cont, %if.end
  br label %while.cond, !dbg !544

while.cond:                                       ; preds = %while.body, %if.end21
  %31 = load i32, ptr %len.addr, align 4, !dbg !545, !tbaa !438
  %cmp22 = icmp uge i32 %31, 64, !dbg !546
  br i1 %cmp22, label %while.body, label %while.end, !dbg !544

while.body:                                       ; preds = %while.cond
  %32 = load ptr, ptr %ctx, align 8, !dbg !547, !tbaa !415
  %in24 = getelementptr inbounds %struct._cmsMD5, ptr %32, i32 0, i32 2, !dbg !549
  %arraydecay25 = getelementptr inbounds [64 x i8], ptr %in24, i64 0, i64 0, !dbg !550
  %33 = load ptr, ptr %buf.addr, align 8, !dbg !551, !tbaa !415
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %arraydecay25, ptr align 1 %33, i64 64, i1 false), !dbg !550
  %34 = load ptr, ptr %ctx, align 8, !dbg !552, !tbaa !415
  %buf26 = getelementptr inbounds %struct._cmsMD5, ptr %34, i32 0, i32 0, !dbg !553
  %arraydecay27 = getelementptr inbounds [4 x i32], ptr %buf26, i64 0, i64 0, !dbg !552
  %35 = load ptr, ptr %ctx, align 8, !dbg !554, !tbaa !415
  %in28 = getelementptr inbounds %struct._cmsMD5, ptr %35, i32 0, i32 2, !dbg !555
  %arraydecay29 = getelementptr inbounds [64 x i8], ptr %in28, i64 0, i64 0, !dbg !554
  call void @cmsMD5_Transform(ptr noundef %arraydecay27, ptr noundef %arraydecay29), !dbg !556
  %36 = load ptr, ptr %buf.addr, align 8, !dbg !557, !tbaa !415
  %add.ptr30 = getelementptr inbounds i8, ptr %36, i64 64, !dbg !557
  store ptr %add.ptr30, ptr %buf.addr, align 8, !dbg !557, !tbaa !415
  %37 = load i32, ptr %len.addr, align 4, !dbg !558, !tbaa !438
  %sub31 = sub i32 %37, 64, !dbg !558
  store i32 %sub31, ptr %len.addr, align 4, !dbg !558, !tbaa !438
  br label %while.cond, !dbg !544, !llvm.loop !559

while.end:                                        ; preds = %while.cond
  %38 = load ptr, ptr %ctx, align 8, !dbg !562, !tbaa !415
  %in32 = getelementptr inbounds %struct._cmsMD5, ptr %38, i32 0, i32 2, !dbg !563
  %arraydecay33 = getelementptr inbounds [64 x i8], ptr %in32, i64 0, i64 0, !dbg !564
  %39 = load ptr, ptr %buf.addr, align 8, !dbg !565, !tbaa !415
  %40 = load i32, ptr %len.addr, align 4, !dbg !566, !tbaa !438
  %conv34 = zext i32 %40 to i64, !dbg !566
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %arraydecay33, ptr align 1 %39, i64 %conv34, i1 false), !dbg !564
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !567
  br label %cleanup35, !dbg !567

cleanup35:                                        ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #7, !dbg !567
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #7, !dbg !567
  %cleanup.dest37 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest37, label %unreachable [
    i32 0, label %cleanup.cont38
    i32 1, label %cleanup.cont38
  ]

cleanup.cont38:                                   ; preds = %cleanup35, %cleanup35
  ret void, !dbg !567

unreachable:                                      ; preds = %cleanup35
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal void @cmsMD5_Transform(ptr noundef %buf, ptr noundef %in) #0 !dbg !568 {
entry:
  %buf.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !415
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !572, metadata !DIExpression()), !dbg !578
  store ptr %in, ptr %in.addr, align 8, !tbaa !415
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !573, metadata !DIExpression()), !dbg !579
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #7, !dbg !580
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !574, metadata !DIExpression()), !dbg !581
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #7, !dbg !580
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !575, metadata !DIExpression()), !dbg !582
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #7, !dbg !580
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !576, metadata !DIExpression()), !dbg !583
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #7, !dbg !580
  tail call void @llvm.dbg.declare(metadata ptr %d, metadata !577, metadata !DIExpression()), !dbg !584
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !585, !tbaa !415
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0, !dbg !585
  %1 = load i32, ptr %arrayidx, align 4, !dbg !585, !tbaa !438
  store i32 %1, ptr %a, align 4, !dbg !586, !tbaa !438
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !587, !tbaa !415
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 1, !dbg !587
  %3 = load i32, ptr %arrayidx1, align 4, !dbg !587, !tbaa !438
  store i32 %3, ptr %b, align 4, !dbg !588, !tbaa !438
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !589, !tbaa !415
  %arrayidx2 = getelementptr inbounds i32, ptr %4, i64 2, !dbg !589
  %5 = load i32, ptr %arrayidx2, align 4, !dbg !589, !tbaa !438
  store i32 %5, ptr %c, align 4, !dbg !590, !tbaa !438
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !591, !tbaa !415
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 3, !dbg !591
  %7 = load i32, ptr %arrayidx3, align 4, !dbg !591, !tbaa !438
  store i32 %7, ptr %d, align 4, !dbg !592, !tbaa !438
  %8 = load i32, ptr %d, align 4, !dbg !593, !tbaa !438
  %9 = load i32, ptr %b, align 4, !dbg !593, !tbaa !438
  %10 = load i32, ptr %c, align 4, !dbg !593, !tbaa !438
  %11 = load i32, ptr %d, align 4, !dbg !593, !tbaa !438
  %xor = xor i32 %10, %11, !dbg !593
  %and = and i32 %9, %xor, !dbg !593
  %xor4 = xor i32 %8, %and, !dbg !593
  %12 = load ptr, ptr %in.addr, align 8, !dbg !593, !tbaa !415
  %arrayidx5 = getelementptr inbounds i32, ptr %12, i64 0, !dbg !593
  %13 = load i32, ptr %arrayidx5, align 4, !dbg !593, !tbaa !438
  %add = add i32 %xor4, %13, !dbg !593
  %add6 = add i32 %add, -680876936, !dbg !593
  %14 = load i32, ptr %a, align 4, !dbg !593, !tbaa !438
  %add7 = add i32 %14, %add6, !dbg !593
  store i32 %add7, ptr %a, align 4, !dbg !593, !tbaa !438
  %15 = load i32, ptr %a, align 4, !dbg !593, !tbaa !438
  %shl = shl i32 %15, 7, !dbg !593
  %16 = load i32, ptr %a, align 4, !dbg !593, !tbaa !438
  %shr = lshr i32 %16, 25, !dbg !593
  %or = or i32 %shl, %shr, !dbg !593
  store i32 %or, ptr %a, align 4, !dbg !593, !tbaa !438
  %17 = load i32, ptr %b, align 4, !dbg !593, !tbaa !438
  %18 = load i32, ptr %a, align 4, !dbg !593, !tbaa !438
  %add8 = add i32 %18, %17, !dbg !593
  store i32 %add8, ptr %a, align 4, !dbg !593, !tbaa !438
  %19 = load i32, ptr %c, align 4, !dbg !594, !tbaa !438
  %20 = load i32, ptr %a, align 4, !dbg !594, !tbaa !438
  %21 = load i32, ptr %b, align 4, !dbg !594, !tbaa !438
  %22 = load i32, ptr %c, align 4, !dbg !594, !tbaa !438
  %xor9 = xor i32 %21, %22, !dbg !594
  %and10 = and i32 %20, %xor9, !dbg !594
  %xor11 = xor i32 %19, %and10, !dbg !594
  %23 = load ptr, ptr %in.addr, align 8, !dbg !594, !tbaa !415
  %arrayidx12 = getelementptr inbounds i32, ptr %23, i64 1, !dbg !594
  %24 = load i32, ptr %arrayidx12, align 4, !dbg !594, !tbaa !438
  %add13 = add i32 %xor11, %24, !dbg !594
  %add14 = add i32 %add13, -389564586, !dbg !594
  %25 = load i32, ptr %d, align 4, !dbg !594, !tbaa !438
  %add15 = add i32 %25, %add14, !dbg !594
  store i32 %add15, ptr %d, align 4, !dbg !594, !tbaa !438
  %26 = load i32, ptr %d, align 4, !dbg !594, !tbaa !438
  %shl16 = shl i32 %26, 12, !dbg !594
  %27 = load i32, ptr %d, align 4, !dbg !594, !tbaa !438
  %shr17 = lshr i32 %27, 20, !dbg !594
  %or18 = or i32 %shl16, %shr17, !dbg !594
  store i32 %or18, ptr %d, align 4, !dbg !594, !tbaa !438
  %28 = load i32, ptr %a, align 4, !dbg !594, !tbaa !438
  %29 = load i32, ptr %d, align 4, !dbg !594, !tbaa !438
  %add19 = add i32 %29, %28, !dbg !594
  store i32 %add19, ptr %d, align 4, !dbg !594, !tbaa !438
  %30 = load i32, ptr %b, align 4, !dbg !595, !tbaa !438
  %31 = load i32, ptr %d, align 4, !dbg !595, !tbaa !438
  %32 = load i32, ptr %a, align 4, !dbg !595, !tbaa !438
  %33 = load i32, ptr %b, align 4, !dbg !595, !tbaa !438
  %xor20 = xor i32 %32, %33, !dbg !595
  %and21 = and i32 %31, %xor20, !dbg !595
  %xor22 = xor i32 %30, %and21, !dbg !595
  %34 = load ptr, ptr %in.addr, align 8, !dbg !595, !tbaa !415
  %arrayidx23 = getelementptr inbounds i32, ptr %34, i64 2, !dbg !595
  %35 = load i32, ptr %arrayidx23, align 4, !dbg !595, !tbaa !438
  %add24 = add i32 %xor22, %35, !dbg !595
  %add25 = add i32 %add24, 606105819, !dbg !595
  %36 = load i32, ptr %c, align 4, !dbg !595, !tbaa !438
  %add26 = add i32 %36, %add25, !dbg !595
  store i32 %add26, ptr %c, align 4, !dbg !595, !tbaa !438
  %37 = load i32, ptr %c, align 4, !dbg !595, !tbaa !438
  %shl27 = shl i32 %37, 17, !dbg !595
  %38 = load i32, ptr %c, align 4, !dbg !595, !tbaa !438
  %shr28 = lshr i32 %38, 15, !dbg !595
  %or29 = or i32 %shl27, %shr28, !dbg !595
  store i32 %or29, ptr %c, align 4, !dbg !595, !tbaa !438
  %39 = load i32, ptr %d, align 4, !dbg !595, !tbaa !438
  %40 = load i32, ptr %c, align 4, !dbg !595, !tbaa !438
  %add30 = add i32 %40, %39, !dbg !595
  store i32 %add30, ptr %c, align 4, !dbg !595, !tbaa !438
  %41 = load i32, ptr %a, align 4, !dbg !596, !tbaa !438
  %42 = load i32, ptr %c, align 4, !dbg !596, !tbaa !438
  %43 = load i32, ptr %d, align 4, !dbg !596, !tbaa !438
  %44 = load i32, ptr %a, align 4, !dbg !596, !tbaa !438
  %xor31 = xor i32 %43, %44, !dbg !596
  %and32 = and i32 %42, %xor31, !dbg !596
  %xor33 = xor i32 %41, %and32, !dbg !596
  %45 = load ptr, ptr %in.addr, align 8, !dbg !596, !tbaa !415
  %arrayidx34 = getelementptr inbounds i32, ptr %45, i64 3, !dbg !596
  %46 = load i32, ptr %arrayidx34, align 4, !dbg !596, !tbaa !438
  %add35 = add i32 %xor33, %46, !dbg !596
  %add36 = add i32 %add35, -1044525330, !dbg !596
  %47 = load i32, ptr %b, align 4, !dbg !596, !tbaa !438
  %add37 = add i32 %47, %add36, !dbg !596
  store i32 %add37, ptr %b, align 4, !dbg !596, !tbaa !438
  %48 = load i32, ptr %b, align 4, !dbg !596, !tbaa !438
  %shl38 = shl i32 %48, 22, !dbg !596
  %49 = load i32, ptr %b, align 4, !dbg !596, !tbaa !438
  %shr39 = lshr i32 %49, 10, !dbg !596
  %or40 = or i32 %shl38, %shr39, !dbg !596
  store i32 %or40, ptr %b, align 4, !dbg !596, !tbaa !438
  %50 = load i32, ptr %c, align 4, !dbg !596, !tbaa !438
  %51 = load i32, ptr %b, align 4, !dbg !596, !tbaa !438
  %add41 = add i32 %51, %50, !dbg !596
  store i32 %add41, ptr %b, align 4, !dbg !596, !tbaa !438
  %52 = load i32, ptr %d, align 4, !dbg !597, !tbaa !438
  %53 = load i32, ptr %b, align 4, !dbg !597, !tbaa !438
  %54 = load i32, ptr %c, align 4, !dbg !597, !tbaa !438
  %55 = load i32, ptr %d, align 4, !dbg !597, !tbaa !438
  %xor42 = xor i32 %54, %55, !dbg !597
  %and43 = and i32 %53, %xor42, !dbg !597
  %xor44 = xor i32 %52, %and43, !dbg !597
  %56 = load ptr, ptr %in.addr, align 8, !dbg !597, !tbaa !415
  %arrayidx45 = getelementptr inbounds i32, ptr %56, i64 4, !dbg !597
  %57 = load i32, ptr %arrayidx45, align 4, !dbg !597, !tbaa !438
  %add46 = add i32 %xor44, %57, !dbg !597
  %add47 = add i32 %add46, -176418897, !dbg !597
  %58 = load i32, ptr %a, align 4, !dbg !597, !tbaa !438
  %add48 = add i32 %58, %add47, !dbg !597
  store i32 %add48, ptr %a, align 4, !dbg !597, !tbaa !438
  %59 = load i32, ptr %a, align 4, !dbg !597, !tbaa !438
  %shl49 = shl i32 %59, 7, !dbg !597
  %60 = load i32, ptr %a, align 4, !dbg !597, !tbaa !438
  %shr50 = lshr i32 %60, 25, !dbg !597
  %or51 = or i32 %shl49, %shr50, !dbg !597
  store i32 %or51, ptr %a, align 4, !dbg !597, !tbaa !438
  %61 = load i32, ptr %b, align 4, !dbg !597, !tbaa !438
  %62 = load i32, ptr %a, align 4, !dbg !597, !tbaa !438
  %add52 = add i32 %62, %61, !dbg !597
  store i32 %add52, ptr %a, align 4, !dbg !597, !tbaa !438
  %63 = load i32, ptr %c, align 4, !dbg !598, !tbaa !438
  %64 = load i32, ptr %a, align 4, !dbg !598, !tbaa !438
  %65 = load i32, ptr %b, align 4, !dbg !598, !tbaa !438
  %66 = load i32, ptr %c, align 4, !dbg !598, !tbaa !438
  %xor53 = xor i32 %65, %66, !dbg !598
  %and54 = and i32 %64, %xor53, !dbg !598
  %xor55 = xor i32 %63, %and54, !dbg !598
  %67 = load ptr, ptr %in.addr, align 8, !dbg !598, !tbaa !415
  %arrayidx56 = getelementptr inbounds i32, ptr %67, i64 5, !dbg !598
  %68 = load i32, ptr %arrayidx56, align 4, !dbg !598, !tbaa !438
  %add57 = add i32 %xor55, %68, !dbg !598
  %add58 = add i32 %add57, 1200080426, !dbg !598
  %69 = load i32, ptr %d, align 4, !dbg !598, !tbaa !438
  %add59 = add i32 %69, %add58, !dbg !598
  store i32 %add59, ptr %d, align 4, !dbg !598, !tbaa !438
  %70 = load i32, ptr %d, align 4, !dbg !598, !tbaa !438
  %shl60 = shl i32 %70, 12, !dbg !598
  %71 = load i32, ptr %d, align 4, !dbg !598, !tbaa !438
  %shr61 = lshr i32 %71, 20, !dbg !598
  %or62 = or i32 %shl60, %shr61, !dbg !598
  store i32 %or62, ptr %d, align 4, !dbg !598, !tbaa !438
  %72 = load i32, ptr %a, align 4, !dbg !598, !tbaa !438
  %73 = load i32, ptr %d, align 4, !dbg !598, !tbaa !438
  %add63 = add i32 %73, %72, !dbg !598
  store i32 %add63, ptr %d, align 4, !dbg !598, !tbaa !438
  %74 = load i32, ptr %b, align 4, !dbg !599, !tbaa !438
  %75 = load i32, ptr %d, align 4, !dbg !599, !tbaa !438
  %76 = load i32, ptr %a, align 4, !dbg !599, !tbaa !438
  %77 = load i32, ptr %b, align 4, !dbg !599, !tbaa !438
  %xor64 = xor i32 %76, %77, !dbg !599
  %and65 = and i32 %75, %xor64, !dbg !599
  %xor66 = xor i32 %74, %and65, !dbg !599
  %78 = load ptr, ptr %in.addr, align 8, !dbg !599, !tbaa !415
  %arrayidx67 = getelementptr inbounds i32, ptr %78, i64 6, !dbg !599
  %79 = load i32, ptr %arrayidx67, align 4, !dbg !599, !tbaa !438
  %add68 = add i32 %xor66, %79, !dbg !599
  %add69 = add i32 %add68, -1473231341, !dbg !599
  %80 = load i32, ptr %c, align 4, !dbg !599, !tbaa !438
  %add70 = add i32 %80, %add69, !dbg !599
  store i32 %add70, ptr %c, align 4, !dbg !599, !tbaa !438
  %81 = load i32, ptr %c, align 4, !dbg !599, !tbaa !438
  %shl71 = shl i32 %81, 17, !dbg !599
  %82 = load i32, ptr %c, align 4, !dbg !599, !tbaa !438
  %shr72 = lshr i32 %82, 15, !dbg !599
  %or73 = or i32 %shl71, %shr72, !dbg !599
  store i32 %or73, ptr %c, align 4, !dbg !599, !tbaa !438
  %83 = load i32, ptr %d, align 4, !dbg !599, !tbaa !438
  %84 = load i32, ptr %c, align 4, !dbg !599, !tbaa !438
  %add74 = add i32 %84, %83, !dbg !599
  store i32 %add74, ptr %c, align 4, !dbg !599, !tbaa !438
  %85 = load i32, ptr %a, align 4, !dbg !600, !tbaa !438
  %86 = load i32, ptr %c, align 4, !dbg !600, !tbaa !438
  %87 = load i32, ptr %d, align 4, !dbg !600, !tbaa !438
  %88 = load i32, ptr %a, align 4, !dbg !600, !tbaa !438
  %xor75 = xor i32 %87, %88, !dbg !600
  %and76 = and i32 %86, %xor75, !dbg !600
  %xor77 = xor i32 %85, %and76, !dbg !600
  %89 = load ptr, ptr %in.addr, align 8, !dbg !600, !tbaa !415
  %arrayidx78 = getelementptr inbounds i32, ptr %89, i64 7, !dbg !600
  %90 = load i32, ptr %arrayidx78, align 4, !dbg !600, !tbaa !438
  %add79 = add i32 %xor77, %90, !dbg !600
  %add80 = add i32 %add79, -45705983, !dbg !600
  %91 = load i32, ptr %b, align 4, !dbg !600, !tbaa !438
  %add81 = add i32 %91, %add80, !dbg !600
  store i32 %add81, ptr %b, align 4, !dbg !600, !tbaa !438
  %92 = load i32, ptr %b, align 4, !dbg !600, !tbaa !438
  %shl82 = shl i32 %92, 22, !dbg !600
  %93 = load i32, ptr %b, align 4, !dbg !600, !tbaa !438
  %shr83 = lshr i32 %93, 10, !dbg !600
  %or84 = or i32 %shl82, %shr83, !dbg !600
  store i32 %or84, ptr %b, align 4, !dbg !600, !tbaa !438
  %94 = load i32, ptr %c, align 4, !dbg !600, !tbaa !438
  %95 = load i32, ptr %b, align 4, !dbg !600, !tbaa !438
  %add85 = add i32 %95, %94, !dbg !600
  store i32 %add85, ptr %b, align 4, !dbg !600, !tbaa !438
  %96 = load i32, ptr %d, align 4, !dbg !601, !tbaa !438
  %97 = load i32, ptr %b, align 4, !dbg !601, !tbaa !438
  %98 = load i32, ptr %c, align 4, !dbg !601, !tbaa !438
  %99 = load i32, ptr %d, align 4, !dbg !601, !tbaa !438
  %xor86 = xor i32 %98, %99, !dbg !601
  %and87 = and i32 %97, %xor86, !dbg !601
  %xor88 = xor i32 %96, %and87, !dbg !601
  %100 = load ptr, ptr %in.addr, align 8, !dbg !601, !tbaa !415
  %arrayidx89 = getelementptr inbounds i32, ptr %100, i64 8, !dbg !601
  %101 = load i32, ptr %arrayidx89, align 4, !dbg !601, !tbaa !438
  %add90 = add i32 %xor88, %101, !dbg !601
  %add91 = add i32 %add90, 1770035416, !dbg !601
  %102 = load i32, ptr %a, align 4, !dbg !601, !tbaa !438
  %add92 = add i32 %102, %add91, !dbg !601
  store i32 %add92, ptr %a, align 4, !dbg !601, !tbaa !438
  %103 = load i32, ptr %a, align 4, !dbg !601, !tbaa !438
  %shl93 = shl i32 %103, 7, !dbg !601
  %104 = load i32, ptr %a, align 4, !dbg !601, !tbaa !438
  %shr94 = lshr i32 %104, 25, !dbg !601
  %or95 = or i32 %shl93, %shr94, !dbg !601
  store i32 %or95, ptr %a, align 4, !dbg !601, !tbaa !438
  %105 = load i32, ptr %b, align 4, !dbg !601, !tbaa !438
  %106 = load i32, ptr %a, align 4, !dbg !601, !tbaa !438
  %add96 = add i32 %106, %105, !dbg !601
  store i32 %add96, ptr %a, align 4, !dbg !601, !tbaa !438
  %107 = load i32, ptr %c, align 4, !dbg !602, !tbaa !438
  %108 = load i32, ptr %a, align 4, !dbg !602, !tbaa !438
  %109 = load i32, ptr %b, align 4, !dbg !602, !tbaa !438
  %110 = load i32, ptr %c, align 4, !dbg !602, !tbaa !438
  %xor97 = xor i32 %109, %110, !dbg !602
  %and98 = and i32 %108, %xor97, !dbg !602
  %xor99 = xor i32 %107, %and98, !dbg !602
  %111 = load ptr, ptr %in.addr, align 8, !dbg !602, !tbaa !415
  %arrayidx100 = getelementptr inbounds i32, ptr %111, i64 9, !dbg !602
  %112 = load i32, ptr %arrayidx100, align 4, !dbg !602, !tbaa !438
  %add101 = add i32 %xor99, %112, !dbg !602
  %add102 = add i32 %add101, -1958414417, !dbg !602
  %113 = load i32, ptr %d, align 4, !dbg !602, !tbaa !438
  %add103 = add i32 %113, %add102, !dbg !602
  store i32 %add103, ptr %d, align 4, !dbg !602, !tbaa !438
  %114 = load i32, ptr %d, align 4, !dbg !602, !tbaa !438
  %shl104 = shl i32 %114, 12, !dbg !602
  %115 = load i32, ptr %d, align 4, !dbg !602, !tbaa !438
  %shr105 = lshr i32 %115, 20, !dbg !602
  %or106 = or i32 %shl104, %shr105, !dbg !602
  store i32 %or106, ptr %d, align 4, !dbg !602, !tbaa !438
  %116 = load i32, ptr %a, align 4, !dbg !602, !tbaa !438
  %117 = load i32, ptr %d, align 4, !dbg !602, !tbaa !438
  %add107 = add i32 %117, %116, !dbg !602
  store i32 %add107, ptr %d, align 4, !dbg !602, !tbaa !438
  %118 = load i32, ptr %b, align 4, !dbg !603, !tbaa !438
  %119 = load i32, ptr %d, align 4, !dbg !603, !tbaa !438
  %120 = load i32, ptr %a, align 4, !dbg !603, !tbaa !438
  %121 = load i32, ptr %b, align 4, !dbg !603, !tbaa !438
  %xor108 = xor i32 %120, %121, !dbg !603
  %and109 = and i32 %119, %xor108, !dbg !603
  %xor110 = xor i32 %118, %and109, !dbg !603
  %122 = load ptr, ptr %in.addr, align 8, !dbg !603, !tbaa !415
  %arrayidx111 = getelementptr inbounds i32, ptr %122, i64 10, !dbg !603
  %123 = load i32, ptr %arrayidx111, align 4, !dbg !603, !tbaa !438
  %add112 = add i32 %xor110, %123, !dbg !603
  %add113 = add i32 %add112, -42063, !dbg !603
  %124 = load i32, ptr %c, align 4, !dbg !603, !tbaa !438
  %add114 = add i32 %124, %add113, !dbg !603
  store i32 %add114, ptr %c, align 4, !dbg !603, !tbaa !438
  %125 = load i32, ptr %c, align 4, !dbg !603, !tbaa !438
  %shl115 = shl i32 %125, 17, !dbg !603
  %126 = load i32, ptr %c, align 4, !dbg !603, !tbaa !438
  %shr116 = lshr i32 %126, 15, !dbg !603
  %or117 = or i32 %shl115, %shr116, !dbg !603
  store i32 %or117, ptr %c, align 4, !dbg !603, !tbaa !438
  %127 = load i32, ptr %d, align 4, !dbg !603, !tbaa !438
  %128 = load i32, ptr %c, align 4, !dbg !603, !tbaa !438
  %add118 = add i32 %128, %127, !dbg !603
  store i32 %add118, ptr %c, align 4, !dbg !603, !tbaa !438
  %129 = load i32, ptr %a, align 4, !dbg !604, !tbaa !438
  %130 = load i32, ptr %c, align 4, !dbg !604, !tbaa !438
  %131 = load i32, ptr %d, align 4, !dbg !604, !tbaa !438
  %132 = load i32, ptr %a, align 4, !dbg !604, !tbaa !438
  %xor119 = xor i32 %131, %132, !dbg !604
  %and120 = and i32 %130, %xor119, !dbg !604
  %xor121 = xor i32 %129, %and120, !dbg !604
  %133 = load ptr, ptr %in.addr, align 8, !dbg !604, !tbaa !415
  %arrayidx122 = getelementptr inbounds i32, ptr %133, i64 11, !dbg !604
  %134 = load i32, ptr %arrayidx122, align 4, !dbg !604, !tbaa !438
  %add123 = add i32 %xor121, %134, !dbg !604
  %add124 = add i32 %add123, -1990404162, !dbg !604
  %135 = load i32, ptr %b, align 4, !dbg !604, !tbaa !438
  %add125 = add i32 %135, %add124, !dbg !604
  store i32 %add125, ptr %b, align 4, !dbg !604, !tbaa !438
  %136 = load i32, ptr %b, align 4, !dbg !604, !tbaa !438
  %shl126 = shl i32 %136, 22, !dbg !604
  %137 = load i32, ptr %b, align 4, !dbg !604, !tbaa !438
  %shr127 = lshr i32 %137, 10, !dbg !604
  %or128 = or i32 %shl126, %shr127, !dbg !604
  store i32 %or128, ptr %b, align 4, !dbg !604, !tbaa !438
  %138 = load i32, ptr %c, align 4, !dbg !604, !tbaa !438
  %139 = load i32, ptr %b, align 4, !dbg !604, !tbaa !438
  %add129 = add i32 %139, %138, !dbg !604
  store i32 %add129, ptr %b, align 4, !dbg !604, !tbaa !438
  %140 = load i32, ptr %d, align 4, !dbg !605, !tbaa !438
  %141 = load i32, ptr %b, align 4, !dbg !605, !tbaa !438
  %142 = load i32, ptr %c, align 4, !dbg !605, !tbaa !438
  %143 = load i32, ptr %d, align 4, !dbg !605, !tbaa !438
  %xor130 = xor i32 %142, %143, !dbg !605
  %and131 = and i32 %141, %xor130, !dbg !605
  %xor132 = xor i32 %140, %and131, !dbg !605
  %144 = load ptr, ptr %in.addr, align 8, !dbg !605, !tbaa !415
  %arrayidx133 = getelementptr inbounds i32, ptr %144, i64 12, !dbg !605
  %145 = load i32, ptr %arrayidx133, align 4, !dbg !605, !tbaa !438
  %add134 = add i32 %xor132, %145, !dbg !605
  %add135 = add i32 %add134, 1804603682, !dbg !605
  %146 = load i32, ptr %a, align 4, !dbg !605, !tbaa !438
  %add136 = add i32 %146, %add135, !dbg !605
  store i32 %add136, ptr %a, align 4, !dbg !605, !tbaa !438
  %147 = load i32, ptr %a, align 4, !dbg !605, !tbaa !438
  %shl137 = shl i32 %147, 7, !dbg !605
  %148 = load i32, ptr %a, align 4, !dbg !605, !tbaa !438
  %shr138 = lshr i32 %148, 25, !dbg !605
  %or139 = or i32 %shl137, %shr138, !dbg !605
  store i32 %or139, ptr %a, align 4, !dbg !605, !tbaa !438
  %149 = load i32, ptr %b, align 4, !dbg !605, !tbaa !438
  %150 = load i32, ptr %a, align 4, !dbg !605, !tbaa !438
  %add140 = add i32 %150, %149, !dbg !605
  store i32 %add140, ptr %a, align 4, !dbg !605, !tbaa !438
  %151 = load i32, ptr %c, align 4, !dbg !606, !tbaa !438
  %152 = load i32, ptr %a, align 4, !dbg !606, !tbaa !438
  %153 = load i32, ptr %b, align 4, !dbg !606, !tbaa !438
  %154 = load i32, ptr %c, align 4, !dbg !606, !tbaa !438
  %xor141 = xor i32 %153, %154, !dbg !606
  %and142 = and i32 %152, %xor141, !dbg !606
  %xor143 = xor i32 %151, %and142, !dbg !606
  %155 = load ptr, ptr %in.addr, align 8, !dbg !606, !tbaa !415
  %arrayidx144 = getelementptr inbounds i32, ptr %155, i64 13, !dbg !606
  %156 = load i32, ptr %arrayidx144, align 4, !dbg !606, !tbaa !438
  %add145 = add i32 %xor143, %156, !dbg !606
  %add146 = add i32 %add145, -40341101, !dbg !606
  %157 = load i32, ptr %d, align 4, !dbg !606, !tbaa !438
  %add147 = add i32 %157, %add146, !dbg !606
  store i32 %add147, ptr %d, align 4, !dbg !606, !tbaa !438
  %158 = load i32, ptr %d, align 4, !dbg !606, !tbaa !438
  %shl148 = shl i32 %158, 12, !dbg !606
  %159 = load i32, ptr %d, align 4, !dbg !606, !tbaa !438
  %shr149 = lshr i32 %159, 20, !dbg !606
  %or150 = or i32 %shl148, %shr149, !dbg !606
  store i32 %or150, ptr %d, align 4, !dbg !606, !tbaa !438
  %160 = load i32, ptr %a, align 4, !dbg !606, !tbaa !438
  %161 = load i32, ptr %d, align 4, !dbg !606, !tbaa !438
  %add151 = add i32 %161, %160, !dbg !606
  store i32 %add151, ptr %d, align 4, !dbg !606, !tbaa !438
  %162 = load i32, ptr %b, align 4, !dbg !607, !tbaa !438
  %163 = load i32, ptr %d, align 4, !dbg !607, !tbaa !438
  %164 = load i32, ptr %a, align 4, !dbg !607, !tbaa !438
  %165 = load i32, ptr %b, align 4, !dbg !607, !tbaa !438
  %xor152 = xor i32 %164, %165, !dbg !607
  %and153 = and i32 %163, %xor152, !dbg !607
  %xor154 = xor i32 %162, %and153, !dbg !607
  %166 = load ptr, ptr %in.addr, align 8, !dbg !607, !tbaa !415
  %arrayidx155 = getelementptr inbounds i32, ptr %166, i64 14, !dbg !607
  %167 = load i32, ptr %arrayidx155, align 4, !dbg !607, !tbaa !438
  %add156 = add i32 %xor154, %167, !dbg !607
  %add157 = add i32 %add156, -1502002290, !dbg !607
  %168 = load i32, ptr %c, align 4, !dbg !607, !tbaa !438
  %add158 = add i32 %168, %add157, !dbg !607
  store i32 %add158, ptr %c, align 4, !dbg !607, !tbaa !438
  %169 = load i32, ptr %c, align 4, !dbg !607, !tbaa !438
  %shl159 = shl i32 %169, 17, !dbg !607
  %170 = load i32, ptr %c, align 4, !dbg !607, !tbaa !438
  %shr160 = lshr i32 %170, 15, !dbg !607
  %or161 = or i32 %shl159, %shr160, !dbg !607
  store i32 %or161, ptr %c, align 4, !dbg !607, !tbaa !438
  %171 = load i32, ptr %d, align 4, !dbg !607, !tbaa !438
  %172 = load i32, ptr %c, align 4, !dbg !607, !tbaa !438
  %add162 = add i32 %172, %171, !dbg !607
  store i32 %add162, ptr %c, align 4, !dbg !607, !tbaa !438
  %173 = load i32, ptr %a, align 4, !dbg !608, !tbaa !438
  %174 = load i32, ptr %c, align 4, !dbg !608, !tbaa !438
  %175 = load i32, ptr %d, align 4, !dbg !608, !tbaa !438
  %176 = load i32, ptr %a, align 4, !dbg !608, !tbaa !438
  %xor163 = xor i32 %175, %176, !dbg !608
  %and164 = and i32 %174, %xor163, !dbg !608
  %xor165 = xor i32 %173, %and164, !dbg !608
  %177 = load ptr, ptr %in.addr, align 8, !dbg !608, !tbaa !415
  %arrayidx166 = getelementptr inbounds i32, ptr %177, i64 15, !dbg !608
  %178 = load i32, ptr %arrayidx166, align 4, !dbg !608, !tbaa !438
  %add167 = add i32 %xor165, %178, !dbg !608
  %add168 = add i32 %add167, 1236535329, !dbg !608
  %179 = load i32, ptr %b, align 4, !dbg !608, !tbaa !438
  %add169 = add i32 %179, %add168, !dbg !608
  store i32 %add169, ptr %b, align 4, !dbg !608, !tbaa !438
  %180 = load i32, ptr %b, align 4, !dbg !608, !tbaa !438
  %shl170 = shl i32 %180, 22, !dbg !608
  %181 = load i32, ptr %b, align 4, !dbg !608, !tbaa !438
  %shr171 = lshr i32 %181, 10, !dbg !608
  %or172 = or i32 %shl170, %shr171, !dbg !608
  store i32 %or172, ptr %b, align 4, !dbg !608, !tbaa !438
  %182 = load i32, ptr %c, align 4, !dbg !608, !tbaa !438
  %183 = load i32, ptr %b, align 4, !dbg !608, !tbaa !438
  %add173 = add i32 %183, %182, !dbg !608
  store i32 %add173, ptr %b, align 4, !dbg !608, !tbaa !438
  %184 = load i32, ptr %c, align 4, !dbg !609, !tbaa !438
  %185 = load i32, ptr %d, align 4, !dbg !609, !tbaa !438
  %186 = load i32, ptr %b, align 4, !dbg !609, !tbaa !438
  %187 = load i32, ptr %c, align 4, !dbg !609, !tbaa !438
  %xor174 = xor i32 %186, %187, !dbg !609
  %and175 = and i32 %185, %xor174, !dbg !609
  %xor176 = xor i32 %184, %and175, !dbg !609
  %188 = load ptr, ptr %in.addr, align 8, !dbg !609, !tbaa !415
  %arrayidx177 = getelementptr inbounds i32, ptr %188, i64 1, !dbg !609
  %189 = load i32, ptr %arrayidx177, align 4, !dbg !609, !tbaa !438
  %add178 = add i32 %xor176, %189, !dbg !609
  %add179 = add i32 %add178, -165796510, !dbg !609
  %190 = load i32, ptr %a, align 4, !dbg !609, !tbaa !438
  %add180 = add i32 %190, %add179, !dbg !609
  store i32 %add180, ptr %a, align 4, !dbg !609, !tbaa !438
  %191 = load i32, ptr %a, align 4, !dbg !609, !tbaa !438
  %shl181 = shl i32 %191, 5, !dbg !609
  %192 = load i32, ptr %a, align 4, !dbg !609, !tbaa !438
  %shr182 = lshr i32 %192, 27, !dbg !609
  %or183 = or i32 %shl181, %shr182, !dbg !609
  store i32 %or183, ptr %a, align 4, !dbg !609, !tbaa !438
  %193 = load i32, ptr %b, align 4, !dbg !609, !tbaa !438
  %194 = load i32, ptr %a, align 4, !dbg !609, !tbaa !438
  %add184 = add i32 %194, %193, !dbg !609
  store i32 %add184, ptr %a, align 4, !dbg !609, !tbaa !438
  %195 = load i32, ptr %b, align 4, !dbg !610, !tbaa !438
  %196 = load i32, ptr %c, align 4, !dbg !610, !tbaa !438
  %197 = load i32, ptr %a, align 4, !dbg !610, !tbaa !438
  %198 = load i32, ptr %b, align 4, !dbg !610, !tbaa !438
  %xor185 = xor i32 %197, %198, !dbg !610
  %and186 = and i32 %196, %xor185, !dbg !610
  %xor187 = xor i32 %195, %and186, !dbg !610
  %199 = load ptr, ptr %in.addr, align 8, !dbg !610, !tbaa !415
  %arrayidx188 = getelementptr inbounds i32, ptr %199, i64 6, !dbg !610
  %200 = load i32, ptr %arrayidx188, align 4, !dbg !610, !tbaa !438
  %add189 = add i32 %xor187, %200, !dbg !610
  %add190 = add i32 %add189, -1069501632, !dbg !610
  %201 = load i32, ptr %d, align 4, !dbg !610, !tbaa !438
  %add191 = add i32 %201, %add190, !dbg !610
  store i32 %add191, ptr %d, align 4, !dbg !610, !tbaa !438
  %202 = load i32, ptr %d, align 4, !dbg !610, !tbaa !438
  %shl192 = shl i32 %202, 9, !dbg !610
  %203 = load i32, ptr %d, align 4, !dbg !610, !tbaa !438
  %shr193 = lshr i32 %203, 23, !dbg !610
  %or194 = or i32 %shl192, %shr193, !dbg !610
  store i32 %or194, ptr %d, align 4, !dbg !610, !tbaa !438
  %204 = load i32, ptr %a, align 4, !dbg !610, !tbaa !438
  %205 = load i32, ptr %d, align 4, !dbg !610, !tbaa !438
  %add195 = add i32 %205, %204, !dbg !610
  store i32 %add195, ptr %d, align 4, !dbg !610, !tbaa !438
  %206 = load i32, ptr %a, align 4, !dbg !611, !tbaa !438
  %207 = load i32, ptr %b, align 4, !dbg !611, !tbaa !438
  %208 = load i32, ptr %d, align 4, !dbg !611, !tbaa !438
  %209 = load i32, ptr %a, align 4, !dbg !611, !tbaa !438
  %xor196 = xor i32 %208, %209, !dbg !611
  %and197 = and i32 %207, %xor196, !dbg !611
  %xor198 = xor i32 %206, %and197, !dbg !611
  %210 = load ptr, ptr %in.addr, align 8, !dbg !611, !tbaa !415
  %arrayidx199 = getelementptr inbounds i32, ptr %210, i64 11, !dbg !611
  %211 = load i32, ptr %arrayidx199, align 4, !dbg !611, !tbaa !438
  %add200 = add i32 %xor198, %211, !dbg !611
  %add201 = add i32 %add200, 643717713, !dbg !611
  %212 = load i32, ptr %c, align 4, !dbg !611, !tbaa !438
  %add202 = add i32 %212, %add201, !dbg !611
  store i32 %add202, ptr %c, align 4, !dbg !611, !tbaa !438
  %213 = load i32, ptr %c, align 4, !dbg !611, !tbaa !438
  %shl203 = shl i32 %213, 14, !dbg !611
  %214 = load i32, ptr %c, align 4, !dbg !611, !tbaa !438
  %shr204 = lshr i32 %214, 18, !dbg !611
  %or205 = or i32 %shl203, %shr204, !dbg !611
  store i32 %or205, ptr %c, align 4, !dbg !611, !tbaa !438
  %215 = load i32, ptr %d, align 4, !dbg !611, !tbaa !438
  %216 = load i32, ptr %c, align 4, !dbg !611, !tbaa !438
  %add206 = add i32 %216, %215, !dbg !611
  store i32 %add206, ptr %c, align 4, !dbg !611, !tbaa !438
  %217 = load i32, ptr %d, align 4, !dbg !612, !tbaa !438
  %218 = load i32, ptr %a, align 4, !dbg !612, !tbaa !438
  %219 = load i32, ptr %c, align 4, !dbg !612, !tbaa !438
  %220 = load i32, ptr %d, align 4, !dbg !612, !tbaa !438
  %xor207 = xor i32 %219, %220, !dbg !612
  %and208 = and i32 %218, %xor207, !dbg !612
  %xor209 = xor i32 %217, %and208, !dbg !612
  %221 = load ptr, ptr %in.addr, align 8, !dbg !612, !tbaa !415
  %arrayidx210 = getelementptr inbounds i32, ptr %221, i64 0, !dbg !612
  %222 = load i32, ptr %arrayidx210, align 4, !dbg !612, !tbaa !438
  %add211 = add i32 %xor209, %222, !dbg !612
  %add212 = add i32 %add211, -373897302, !dbg !612
  %223 = load i32, ptr %b, align 4, !dbg !612, !tbaa !438
  %add213 = add i32 %223, %add212, !dbg !612
  store i32 %add213, ptr %b, align 4, !dbg !612, !tbaa !438
  %224 = load i32, ptr %b, align 4, !dbg !612, !tbaa !438
  %shl214 = shl i32 %224, 20, !dbg !612
  %225 = load i32, ptr %b, align 4, !dbg !612, !tbaa !438
  %shr215 = lshr i32 %225, 12, !dbg !612
  %or216 = or i32 %shl214, %shr215, !dbg !612
  store i32 %or216, ptr %b, align 4, !dbg !612, !tbaa !438
  %226 = load i32, ptr %c, align 4, !dbg !612, !tbaa !438
  %227 = load i32, ptr %b, align 4, !dbg !612, !tbaa !438
  %add217 = add i32 %227, %226, !dbg !612
  store i32 %add217, ptr %b, align 4, !dbg !612, !tbaa !438
  %228 = load i32, ptr %c, align 4, !dbg !613, !tbaa !438
  %229 = load i32, ptr %d, align 4, !dbg !613, !tbaa !438
  %230 = load i32, ptr %b, align 4, !dbg !613, !tbaa !438
  %231 = load i32, ptr %c, align 4, !dbg !613, !tbaa !438
  %xor218 = xor i32 %230, %231, !dbg !613
  %and219 = and i32 %229, %xor218, !dbg !613
  %xor220 = xor i32 %228, %and219, !dbg !613
  %232 = load ptr, ptr %in.addr, align 8, !dbg !613, !tbaa !415
  %arrayidx221 = getelementptr inbounds i32, ptr %232, i64 5, !dbg !613
  %233 = load i32, ptr %arrayidx221, align 4, !dbg !613, !tbaa !438
  %add222 = add i32 %xor220, %233, !dbg !613
  %add223 = add i32 %add222, -701558691, !dbg !613
  %234 = load i32, ptr %a, align 4, !dbg !613, !tbaa !438
  %add224 = add i32 %234, %add223, !dbg !613
  store i32 %add224, ptr %a, align 4, !dbg !613, !tbaa !438
  %235 = load i32, ptr %a, align 4, !dbg !613, !tbaa !438
  %shl225 = shl i32 %235, 5, !dbg !613
  %236 = load i32, ptr %a, align 4, !dbg !613, !tbaa !438
  %shr226 = lshr i32 %236, 27, !dbg !613
  %or227 = or i32 %shl225, %shr226, !dbg !613
  store i32 %or227, ptr %a, align 4, !dbg !613, !tbaa !438
  %237 = load i32, ptr %b, align 4, !dbg !613, !tbaa !438
  %238 = load i32, ptr %a, align 4, !dbg !613, !tbaa !438
  %add228 = add i32 %238, %237, !dbg !613
  store i32 %add228, ptr %a, align 4, !dbg !613, !tbaa !438
  %239 = load i32, ptr %b, align 4, !dbg !614, !tbaa !438
  %240 = load i32, ptr %c, align 4, !dbg !614, !tbaa !438
  %241 = load i32, ptr %a, align 4, !dbg !614, !tbaa !438
  %242 = load i32, ptr %b, align 4, !dbg !614, !tbaa !438
  %xor229 = xor i32 %241, %242, !dbg !614
  %and230 = and i32 %240, %xor229, !dbg !614
  %xor231 = xor i32 %239, %and230, !dbg !614
  %243 = load ptr, ptr %in.addr, align 8, !dbg !614, !tbaa !415
  %arrayidx232 = getelementptr inbounds i32, ptr %243, i64 10, !dbg !614
  %244 = load i32, ptr %arrayidx232, align 4, !dbg !614, !tbaa !438
  %add233 = add i32 %xor231, %244, !dbg !614
  %add234 = add i32 %add233, 38016083, !dbg !614
  %245 = load i32, ptr %d, align 4, !dbg !614, !tbaa !438
  %add235 = add i32 %245, %add234, !dbg !614
  store i32 %add235, ptr %d, align 4, !dbg !614, !tbaa !438
  %246 = load i32, ptr %d, align 4, !dbg !614, !tbaa !438
  %shl236 = shl i32 %246, 9, !dbg !614
  %247 = load i32, ptr %d, align 4, !dbg !614, !tbaa !438
  %shr237 = lshr i32 %247, 23, !dbg !614
  %or238 = or i32 %shl236, %shr237, !dbg !614
  store i32 %or238, ptr %d, align 4, !dbg !614, !tbaa !438
  %248 = load i32, ptr %a, align 4, !dbg !614, !tbaa !438
  %249 = load i32, ptr %d, align 4, !dbg !614, !tbaa !438
  %add239 = add i32 %249, %248, !dbg !614
  store i32 %add239, ptr %d, align 4, !dbg !614, !tbaa !438
  %250 = load i32, ptr %a, align 4, !dbg !615, !tbaa !438
  %251 = load i32, ptr %b, align 4, !dbg !615, !tbaa !438
  %252 = load i32, ptr %d, align 4, !dbg !615, !tbaa !438
  %253 = load i32, ptr %a, align 4, !dbg !615, !tbaa !438
  %xor240 = xor i32 %252, %253, !dbg !615
  %and241 = and i32 %251, %xor240, !dbg !615
  %xor242 = xor i32 %250, %and241, !dbg !615
  %254 = load ptr, ptr %in.addr, align 8, !dbg !615, !tbaa !415
  %arrayidx243 = getelementptr inbounds i32, ptr %254, i64 15, !dbg !615
  %255 = load i32, ptr %arrayidx243, align 4, !dbg !615, !tbaa !438
  %add244 = add i32 %xor242, %255, !dbg !615
  %add245 = add i32 %add244, -660478335, !dbg !615
  %256 = load i32, ptr %c, align 4, !dbg !615, !tbaa !438
  %add246 = add i32 %256, %add245, !dbg !615
  store i32 %add246, ptr %c, align 4, !dbg !615, !tbaa !438
  %257 = load i32, ptr %c, align 4, !dbg !615, !tbaa !438
  %shl247 = shl i32 %257, 14, !dbg !615
  %258 = load i32, ptr %c, align 4, !dbg !615, !tbaa !438
  %shr248 = lshr i32 %258, 18, !dbg !615
  %or249 = or i32 %shl247, %shr248, !dbg !615
  store i32 %or249, ptr %c, align 4, !dbg !615, !tbaa !438
  %259 = load i32, ptr %d, align 4, !dbg !615, !tbaa !438
  %260 = load i32, ptr %c, align 4, !dbg !615, !tbaa !438
  %add250 = add i32 %260, %259, !dbg !615
  store i32 %add250, ptr %c, align 4, !dbg !615, !tbaa !438
  %261 = load i32, ptr %d, align 4, !dbg !616, !tbaa !438
  %262 = load i32, ptr %a, align 4, !dbg !616, !tbaa !438
  %263 = load i32, ptr %c, align 4, !dbg !616, !tbaa !438
  %264 = load i32, ptr %d, align 4, !dbg !616, !tbaa !438
  %xor251 = xor i32 %263, %264, !dbg !616
  %and252 = and i32 %262, %xor251, !dbg !616
  %xor253 = xor i32 %261, %and252, !dbg !616
  %265 = load ptr, ptr %in.addr, align 8, !dbg !616, !tbaa !415
  %arrayidx254 = getelementptr inbounds i32, ptr %265, i64 4, !dbg !616
  %266 = load i32, ptr %arrayidx254, align 4, !dbg !616, !tbaa !438
  %add255 = add i32 %xor253, %266, !dbg !616
  %add256 = add i32 %add255, -405537848, !dbg !616
  %267 = load i32, ptr %b, align 4, !dbg !616, !tbaa !438
  %add257 = add i32 %267, %add256, !dbg !616
  store i32 %add257, ptr %b, align 4, !dbg !616, !tbaa !438
  %268 = load i32, ptr %b, align 4, !dbg !616, !tbaa !438
  %shl258 = shl i32 %268, 20, !dbg !616
  %269 = load i32, ptr %b, align 4, !dbg !616, !tbaa !438
  %shr259 = lshr i32 %269, 12, !dbg !616
  %or260 = or i32 %shl258, %shr259, !dbg !616
  store i32 %or260, ptr %b, align 4, !dbg !616, !tbaa !438
  %270 = load i32, ptr %c, align 4, !dbg !616, !tbaa !438
  %271 = load i32, ptr %b, align 4, !dbg !616, !tbaa !438
  %add261 = add i32 %271, %270, !dbg !616
  store i32 %add261, ptr %b, align 4, !dbg !616, !tbaa !438
  %272 = load i32, ptr %c, align 4, !dbg !617, !tbaa !438
  %273 = load i32, ptr %d, align 4, !dbg !617, !tbaa !438
  %274 = load i32, ptr %b, align 4, !dbg !617, !tbaa !438
  %275 = load i32, ptr %c, align 4, !dbg !617, !tbaa !438
  %xor262 = xor i32 %274, %275, !dbg !617
  %and263 = and i32 %273, %xor262, !dbg !617
  %xor264 = xor i32 %272, %and263, !dbg !617
  %276 = load ptr, ptr %in.addr, align 8, !dbg !617, !tbaa !415
  %arrayidx265 = getelementptr inbounds i32, ptr %276, i64 9, !dbg !617
  %277 = load i32, ptr %arrayidx265, align 4, !dbg !617, !tbaa !438
  %add266 = add i32 %xor264, %277, !dbg !617
  %add267 = add i32 %add266, 568446438, !dbg !617
  %278 = load i32, ptr %a, align 4, !dbg !617, !tbaa !438
  %add268 = add i32 %278, %add267, !dbg !617
  store i32 %add268, ptr %a, align 4, !dbg !617, !tbaa !438
  %279 = load i32, ptr %a, align 4, !dbg !617, !tbaa !438
  %shl269 = shl i32 %279, 5, !dbg !617
  %280 = load i32, ptr %a, align 4, !dbg !617, !tbaa !438
  %shr270 = lshr i32 %280, 27, !dbg !617
  %or271 = or i32 %shl269, %shr270, !dbg !617
  store i32 %or271, ptr %a, align 4, !dbg !617, !tbaa !438
  %281 = load i32, ptr %b, align 4, !dbg !617, !tbaa !438
  %282 = load i32, ptr %a, align 4, !dbg !617, !tbaa !438
  %add272 = add i32 %282, %281, !dbg !617
  store i32 %add272, ptr %a, align 4, !dbg !617, !tbaa !438
  %283 = load i32, ptr %b, align 4, !dbg !618, !tbaa !438
  %284 = load i32, ptr %c, align 4, !dbg !618, !tbaa !438
  %285 = load i32, ptr %a, align 4, !dbg !618, !tbaa !438
  %286 = load i32, ptr %b, align 4, !dbg !618, !tbaa !438
  %xor273 = xor i32 %285, %286, !dbg !618
  %and274 = and i32 %284, %xor273, !dbg !618
  %xor275 = xor i32 %283, %and274, !dbg !618
  %287 = load ptr, ptr %in.addr, align 8, !dbg !618, !tbaa !415
  %arrayidx276 = getelementptr inbounds i32, ptr %287, i64 14, !dbg !618
  %288 = load i32, ptr %arrayidx276, align 4, !dbg !618, !tbaa !438
  %add277 = add i32 %xor275, %288, !dbg !618
  %add278 = add i32 %add277, -1019803690, !dbg !618
  %289 = load i32, ptr %d, align 4, !dbg !618, !tbaa !438
  %add279 = add i32 %289, %add278, !dbg !618
  store i32 %add279, ptr %d, align 4, !dbg !618, !tbaa !438
  %290 = load i32, ptr %d, align 4, !dbg !618, !tbaa !438
  %shl280 = shl i32 %290, 9, !dbg !618
  %291 = load i32, ptr %d, align 4, !dbg !618, !tbaa !438
  %shr281 = lshr i32 %291, 23, !dbg !618
  %or282 = or i32 %shl280, %shr281, !dbg !618
  store i32 %or282, ptr %d, align 4, !dbg !618, !tbaa !438
  %292 = load i32, ptr %a, align 4, !dbg !618, !tbaa !438
  %293 = load i32, ptr %d, align 4, !dbg !618, !tbaa !438
  %add283 = add i32 %293, %292, !dbg !618
  store i32 %add283, ptr %d, align 4, !dbg !618, !tbaa !438
  %294 = load i32, ptr %a, align 4, !dbg !619, !tbaa !438
  %295 = load i32, ptr %b, align 4, !dbg !619, !tbaa !438
  %296 = load i32, ptr %d, align 4, !dbg !619, !tbaa !438
  %297 = load i32, ptr %a, align 4, !dbg !619, !tbaa !438
  %xor284 = xor i32 %296, %297, !dbg !619
  %and285 = and i32 %295, %xor284, !dbg !619
  %xor286 = xor i32 %294, %and285, !dbg !619
  %298 = load ptr, ptr %in.addr, align 8, !dbg !619, !tbaa !415
  %arrayidx287 = getelementptr inbounds i32, ptr %298, i64 3, !dbg !619
  %299 = load i32, ptr %arrayidx287, align 4, !dbg !619, !tbaa !438
  %add288 = add i32 %xor286, %299, !dbg !619
  %add289 = add i32 %add288, -187363961, !dbg !619
  %300 = load i32, ptr %c, align 4, !dbg !619, !tbaa !438
  %add290 = add i32 %300, %add289, !dbg !619
  store i32 %add290, ptr %c, align 4, !dbg !619, !tbaa !438
  %301 = load i32, ptr %c, align 4, !dbg !619, !tbaa !438
  %shl291 = shl i32 %301, 14, !dbg !619
  %302 = load i32, ptr %c, align 4, !dbg !619, !tbaa !438
  %shr292 = lshr i32 %302, 18, !dbg !619
  %or293 = or i32 %shl291, %shr292, !dbg !619
  store i32 %or293, ptr %c, align 4, !dbg !619, !tbaa !438
  %303 = load i32, ptr %d, align 4, !dbg !619, !tbaa !438
  %304 = load i32, ptr %c, align 4, !dbg !619, !tbaa !438
  %add294 = add i32 %304, %303, !dbg !619
  store i32 %add294, ptr %c, align 4, !dbg !619, !tbaa !438
  %305 = load i32, ptr %d, align 4, !dbg !620, !tbaa !438
  %306 = load i32, ptr %a, align 4, !dbg !620, !tbaa !438
  %307 = load i32, ptr %c, align 4, !dbg !620, !tbaa !438
  %308 = load i32, ptr %d, align 4, !dbg !620, !tbaa !438
  %xor295 = xor i32 %307, %308, !dbg !620
  %and296 = and i32 %306, %xor295, !dbg !620
  %xor297 = xor i32 %305, %and296, !dbg !620
  %309 = load ptr, ptr %in.addr, align 8, !dbg !620, !tbaa !415
  %arrayidx298 = getelementptr inbounds i32, ptr %309, i64 8, !dbg !620
  %310 = load i32, ptr %arrayidx298, align 4, !dbg !620, !tbaa !438
  %add299 = add i32 %xor297, %310, !dbg !620
  %add300 = add i32 %add299, 1163531501, !dbg !620
  %311 = load i32, ptr %b, align 4, !dbg !620, !tbaa !438
  %add301 = add i32 %311, %add300, !dbg !620
  store i32 %add301, ptr %b, align 4, !dbg !620, !tbaa !438
  %312 = load i32, ptr %b, align 4, !dbg !620, !tbaa !438
  %shl302 = shl i32 %312, 20, !dbg !620
  %313 = load i32, ptr %b, align 4, !dbg !620, !tbaa !438
  %shr303 = lshr i32 %313, 12, !dbg !620
  %or304 = or i32 %shl302, %shr303, !dbg !620
  store i32 %or304, ptr %b, align 4, !dbg !620, !tbaa !438
  %314 = load i32, ptr %c, align 4, !dbg !620, !tbaa !438
  %315 = load i32, ptr %b, align 4, !dbg !620, !tbaa !438
  %add305 = add i32 %315, %314, !dbg !620
  store i32 %add305, ptr %b, align 4, !dbg !620, !tbaa !438
  %316 = load i32, ptr %c, align 4, !dbg !621, !tbaa !438
  %317 = load i32, ptr %d, align 4, !dbg !621, !tbaa !438
  %318 = load i32, ptr %b, align 4, !dbg !621, !tbaa !438
  %319 = load i32, ptr %c, align 4, !dbg !621, !tbaa !438
  %xor306 = xor i32 %318, %319, !dbg !621
  %and307 = and i32 %317, %xor306, !dbg !621
  %xor308 = xor i32 %316, %and307, !dbg !621
  %320 = load ptr, ptr %in.addr, align 8, !dbg !621, !tbaa !415
  %arrayidx309 = getelementptr inbounds i32, ptr %320, i64 13, !dbg !621
  %321 = load i32, ptr %arrayidx309, align 4, !dbg !621, !tbaa !438
  %add310 = add i32 %xor308, %321, !dbg !621
  %add311 = add i32 %add310, -1444681467, !dbg !621
  %322 = load i32, ptr %a, align 4, !dbg !621, !tbaa !438
  %add312 = add i32 %322, %add311, !dbg !621
  store i32 %add312, ptr %a, align 4, !dbg !621, !tbaa !438
  %323 = load i32, ptr %a, align 4, !dbg !621, !tbaa !438
  %shl313 = shl i32 %323, 5, !dbg !621
  %324 = load i32, ptr %a, align 4, !dbg !621, !tbaa !438
  %shr314 = lshr i32 %324, 27, !dbg !621
  %or315 = or i32 %shl313, %shr314, !dbg !621
  store i32 %or315, ptr %a, align 4, !dbg !621, !tbaa !438
  %325 = load i32, ptr %b, align 4, !dbg !621, !tbaa !438
  %326 = load i32, ptr %a, align 4, !dbg !621, !tbaa !438
  %add316 = add i32 %326, %325, !dbg !621
  store i32 %add316, ptr %a, align 4, !dbg !621, !tbaa !438
  %327 = load i32, ptr %b, align 4, !dbg !622, !tbaa !438
  %328 = load i32, ptr %c, align 4, !dbg !622, !tbaa !438
  %329 = load i32, ptr %a, align 4, !dbg !622, !tbaa !438
  %330 = load i32, ptr %b, align 4, !dbg !622, !tbaa !438
  %xor317 = xor i32 %329, %330, !dbg !622
  %and318 = and i32 %328, %xor317, !dbg !622
  %xor319 = xor i32 %327, %and318, !dbg !622
  %331 = load ptr, ptr %in.addr, align 8, !dbg !622, !tbaa !415
  %arrayidx320 = getelementptr inbounds i32, ptr %331, i64 2, !dbg !622
  %332 = load i32, ptr %arrayidx320, align 4, !dbg !622, !tbaa !438
  %add321 = add i32 %xor319, %332, !dbg !622
  %add322 = add i32 %add321, -51403784, !dbg !622
  %333 = load i32, ptr %d, align 4, !dbg !622, !tbaa !438
  %add323 = add i32 %333, %add322, !dbg !622
  store i32 %add323, ptr %d, align 4, !dbg !622, !tbaa !438
  %334 = load i32, ptr %d, align 4, !dbg !622, !tbaa !438
  %shl324 = shl i32 %334, 9, !dbg !622
  %335 = load i32, ptr %d, align 4, !dbg !622, !tbaa !438
  %shr325 = lshr i32 %335, 23, !dbg !622
  %or326 = or i32 %shl324, %shr325, !dbg !622
  store i32 %or326, ptr %d, align 4, !dbg !622, !tbaa !438
  %336 = load i32, ptr %a, align 4, !dbg !622, !tbaa !438
  %337 = load i32, ptr %d, align 4, !dbg !622, !tbaa !438
  %add327 = add i32 %337, %336, !dbg !622
  store i32 %add327, ptr %d, align 4, !dbg !622, !tbaa !438
  %338 = load i32, ptr %a, align 4, !dbg !623, !tbaa !438
  %339 = load i32, ptr %b, align 4, !dbg !623, !tbaa !438
  %340 = load i32, ptr %d, align 4, !dbg !623, !tbaa !438
  %341 = load i32, ptr %a, align 4, !dbg !623, !tbaa !438
  %xor328 = xor i32 %340, %341, !dbg !623
  %and329 = and i32 %339, %xor328, !dbg !623
  %xor330 = xor i32 %338, %and329, !dbg !623
  %342 = load ptr, ptr %in.addr, align 8, !dbg !623, !tbaa !415
  %arrayidx331 = getelementptr inbounds i32, ptr %342, i64 7, !dbg !623
  %343 = load i32, ptr %arrayidx331, align 4, !dbg !623, !tbaa !438
  %add332 = add i32 %xor330, %343, !dbg !623
  %add333 = add i32 %add332, 1735328473, !dbg !623
  %344 = load i32, ptr %c, align 4, !dbg !623, !tbaa !438
  %add334 = add i32 %344, %add333, !dbg !623
  store i32 %add334, ptr %c, align 4, !dbg !623, !tbaa !438
  %345 = load i32, ptr %c, align 4, !dbg !623, !tbaa !438
  %shl335 = shl i32 %345, 14, !dbg !623
  %346 = load i32, ptr %c, align 4, !dbg !623, !tbaa !438
  %shr336 = lshr i32 %346, 18, !dbg !623
  %or337 = or i32 %shl335, %shr336, !dbg !623
  store i32 %or337, ptr %c, align 4, !dbg !623, !tbaa !438
  %347 = load i32, ptr %d, align 4, !dbg !623, !tbaa !438
  %348 = load i32, ptr %c, align 4, !dbg !623, !tbaa !438
  %add338 = add i32 %348, %347, !dbg !623
  store i32 %add338, ptr %c, align 4, !dbg !623, !tbaa !438
  %349 = load i32, ptr %d, align 4, !dbg !624, !tbaa !438
  %350 = load i32, ptr %a, align 4, !dbg !624, !tbaa !438
  %351 = load i32, ptr %c, align 4, !dbg !624, !tbaa !438
  %352 = load i32, ptr %d, align 4, !dbg !624, !tbaa !438
  %xor339 = xor i32 %351, %352, !dbg !624
  %and340 = and i32 %350, %xor339, !dbg !624
  %xor341 = xor i32 %349, %and340, !dbg !624
  %353 = load ptr, ptr %in.addr, align 8, !dbg !624, !tbaa !415
  %arrayidx342 = getelementptr inbounds i32, ptr %353, i64 12, !dbg !624
  %354 = load i32, ptr %arrayidx342, align 4, !dbg !624, !tbaa !438
  %add343 = add i32 %xor341, %354, !dbg !624
  %add344 = add i32 %add343, -1926607734, !dbg !624
  %355 = load i32, ptr %b, align 4, !dbg !624, !tbaa !438
  %add345 = add i32 %355, %add344, !dbg !624
  store i32 %add345, ptr %b, align 4, !dbg !624, !tbaa !438
  %356 = load i32, ptr %b, align 4, !dbg !624, !tbaa !438
  %shl346 = shl i32 %356, 20, !dbg !624
  %357 = load i32, ptr %b, align 4, !dbg !624, !tbaa !438
  %shr347 = lshr i32 %357, 12, !dbg !624
  %or348 = or i32 %shl346, %shr347, !dbg !624
  store i32 %or348, ptr %b, align 4, !dbg !624, !tbaa !438
  %358 = load i32, ptr %c, align 4, !dbg !624, !tbaa !438
  %359 = load i32, ptr %b, align 4, !dbg !624, !tbaa !438
  %add349 = add i32 %359, %358, !dbg !624
  store i32 %add349, ptr %b, align 4, !dbg !624, !tbaa !438
  %360 = load i32, ptr %b, align 4, !dbg !625, !tbaa !438
  %361 = load i32, ptr %c, align 4, !dbg !625, !tbaa !438
  %xor350 = xor i32 %360, %361, !dbg !625
  %362 = load i32, ptr %d, align 4, !dbg !625, !tbaa !438
  %xor351 = xor i32 %xor350, %362, !dbg !625
  %363 = load ptr, ptr %in.addr, align 8, !dbg !625, !tbaa !415
  %arrayidx352 = getelementptr inbounds i32, ptr %363, i64 5, !dbg !625
  %364 = load i32, ptr %arrayidx352, align 4, !dbg !625, !tbaa !438
  %add353 = add i32 %xor351, %364, !dbg !625
  %add354 = add i32 %add353, -378558, !dbg !625
  %365 = load i32, ptr %a, align 4, !dbg !625, !tbaa !438
  %add355 = add i32 %365, %add354, !dbg !625
  store i32 %add355, ptr %a, align 4, !dbg !625, !tbaa !438
  %366 = load i32, ptr %a, align 4, !dbg !625, !tbaa !438
  %shl356 = shl i32 %366, 4, !dbg !625
  %367 = load i32, ptr %a, align 4, !dbg !625, !tbaa !438
  %shr357 = lshr i32 %367, 28, !dbg !625
  %or358 = or i32 %shl356, %shr357, !dbg !625
  store i32 %or358, ptr %a, align 4, !dbg !625, !tbaa !438
  %368 = load i32, ptr %b, align 4, !dbg !625, !tbaa !438
  %369 = load i32, ptr %a, align 4, !dbg !625, !tbaa !438
  %add359 = add i32 %369, %368, !dbg !625
  store i32 %add359, ptr %a, align 4, !dbg !625, !tbaa !438
  %370 = load i32, ptr %a, align 4, !dbg !626, !tbaa !438
  %371 = load i32, ptr %b, align 4, !dbg !626, !tbaa !438
  %xor360 = xor i32 %370, %371, !dbg !626
  %372 = load i32, ptr %c, align 4, !dbg !626, !tbaa !438
  %xor361 = xor i32 %xor360, %372, !dbg !626
  %373 = load ptr, ptr %in.addr, align 8, !dbg !626, !tbaa !415
  %arrayidx362 = getelementptr inbounds i32, ptr %373, i64 8, !dbg !626
  %374 = load i32, ptr %arrayidx362, align 4, !dbg !626, !tbaa !438
  %add363 = add i32 %xor361, %374, !dbg !626
  %add364 = add i32 %add363, -2022574463, !dbg !626
  %375 = load i32, ptr %d, align 4, !dbg !626, !tbaa !438
  %add365 = add i32 %375, %add364, !dbg !626
  store i32 %add365, ptr %d, align 4, !dbg !626, !tbaa !438
  %376 = load i32, ptr %d, align 4, !dbg !626, !tbaa !438
  %shl366 = shl i32 %376, 11, !dbg !626
  %377 = load i32, ptr %d, align 4, !dbg !626, !tbaa !438
  %shr367 = lshr i32 %377, 21, !dbg !626
  %or368 = or i32 %shl366, %shr367, !dbg !626
  store i32 %or368, ptr %d, align 4, !dbg !626, !tbaa !438
  %378 = load i32, ptr %a, align 4, !dbg !626, !tbaa !438
  %379 = load i32, ptr %d, align 4, !dbg !626, !tbaa !438
  %add369 = add i32 %379, %378, !dbg !626
  store i32 %add369, ptr %d, align 4, !dbg !626, !tbaa !438
  %380 = load i32, ptr %d, align 4, !dbg !627, !tbaa !438
  %381 = load i32, ptr %a, align 4, !dbg !627, !tbaa !438
  %xor370 = xor i32 %380, %381, !dbg !627
  %382 = load i32, ptr %b, align 4, !dbg !627, !tbaa !438
  %xor371 = xor i32 %xor370, %382, !dbg !627
  %383 = load ptr, ptr %in.addr, align 8, !dbg !627, !tbaa !415
  %arrayidx372 = getelementptr inbounds i32, ptr %383, i64 11, !dbg !627
  %384 = load i32, ptr %arrayidx372, align 4, !dbg !627, !tbaa !438
  %add373 = add i32 %xor371, %384, !dbg !627
  %add374 = add i32 %add373, 1839030562, !dbg !627
  %385 = load i32, ptr %c, align 4, !dbg !627, !tbaa !438
  %add375 = add i32 %385, %add374, !dbg !627
  store i32 %add375, ptr %c, align 4, !dbg !627, !tbaa !438
  %386 = load i32, ptr %c, align 4, !dbg !627, !tbaa !438
  %shl376 = shl i32 %386, 16, !dbg !627
  %387 = load i32, ptr %c, align 4, !dbg !627, !tbaa !438
  %shr377 = lshr i32 %387, 16, !dbg !627
  %or378 = or i32 %shl376, %shr377, !dbg !627
  store i32 %or378, ptr %c, align 4, !dbg !627, !tbaa !438
  %388 = load i32, ptr %d, align 4, !dbg !627, !tbaa !438
  %389 = load i32, ptr %c, align 4, !dbg !627, !tbaa !438
  %add379 = add i32 %389, %388, !dbg !627
  store i32 %add379, ptr %c, align 4, !dbg !627, !tbaa !438
  %390 = load i32, ptr %c, align 4, !dbg !628, !tbaa !438
  %391 = load i32, ptr %d, align 4, !dbg !628, !tbaa !438
  %xor380 = xor i32 %390, %391, !dbg !628
  %392 = load i32, ptr %a, align 4, !dbg !628, !tbaa !438
  %xor381 = xor i32 %xor380, %392, !dbg !628
  %393 = load ptr, ptr %in.addr, align 8, !dbg !628, !tbaa !415
  %arrayidx382 = getelementptr inbounds i32, ptr %393, i64 14, !dbg !628
  %394 = load i32, ptr %arrayidx382, align 4, !dbg !628, !tbaa !438
  %add383 = add i32 %xor381, %394, !dbg !628
  %add384 = add i32 %add383, -35309556, !dbg !628
  %395 = load i32, ptr %b, align 4, !dbg !628, !tbaa !438
  %add385 = add i32 %395, %add384, !dbg !628
  store i32 %add385, ptr %b, align 4, !dbg !628, !tbaa !438
  %396 = load i32, ptr %b, align 4, !dbg !628, !tbaa !438
  %shl386 = shl i32 %396, 23, !dbg !628
  %397 = load i32, ptr %b, align 4, !dbg !628, !tbaa !438
  %shr387 = lshr i32 %397, 9, !dbg !628
  %or388 = or i32 %shl386, %shr387, !dbg !628
  store i32 %or388, ptr %b, align 4, !dbg !628, !tbaa !438
  %398 = load i32, ptr %c, align 4, !dbg !628, !tbaa !438
  %399 = load i32, ptr %b, align 4, !dbg !628, !tbaa !438
  %add389 = add i32 %399, %398, !dbg !628
  store i32 %add389, ptr %b, align 4, !dbg !628, !tbaa !438
  %400 = load i32, ptr %b, align 4, !dbg !629, !tbaa !438
  %401 = load i32, ptr %c, align 4, !dbg !629, !tbaa !438
  %xor390 = xor i32 %400, %401, !dbg !629
  %402 = load i32, ptr %d, align 4, !dbg !629, !tbaa !438
  %xor391 = xor i32 %xor390, %402, !dbg !629
  %403 = load ptr, ptr %in.addr, align 8, !dbg !629, !tbaa !415
  %arrayidx392 = getelementptr inbounds i32, ptr %403, i64 1, !dbg !629
  %404 = load i32, ptr %arrayidx392, align 4, !dbg !629, !tbaa !438
  %add393 = add i32 %xor391, %404, !dbg !629
  %add394 = add i32 %add393, -1530992060, !dbg !629
  %405 = load i32, ptr %a, align 4, !dbg !629, !tbaa !438
  %add395 = add i32 %405, %add394, !dbg !629
  store i32 %add395, ptr %a, align 4, !dbg !629, !tbaa !438
  %406 = load i32, ptr %a, align 4, !dbg !629, !tbaa !438
  %shl396 = shl i32 %406, 4, !dbg !629
  %407 = load i32, ptr %a, align 4, !dbg !629, !tbaa !438
  %shr397 = lshr i32 %407, 28, !dbg !629
  %or398 = or i32 %shl396, %shr397, !dbg !629
  store i32 %or398, ptr %a, align 4, !dbg !629, !tbaa !438
  %408 = load i32, ptr %b, align 4, !dbg !629, !tbaa !438
  %409 = load i32, ptr %a, align 4, !dbg !629, !tbaa !438
  %add399 = add i32 %409, %408, !dbg !629
  store i32 %add399, ptr %a, align 4, !dbg !629, !tbaa !438
  %410 = load i32, ptr %a, align 4, !dbg !630, !tbaa !438
  %411 = load i32, ptr %b, align 4, !dbg !630, !tbaa !438
  %xor400 = xor i32 %410, %411, !dbg !630
  %412 = load i32, ptr %c, align 4, !dbg !630, !tbaa !438
  %xor401 = xor i32 %xor400, %412, !dbg !630
  %413 = load ptr, ptr %in.addr, align 8, !dbg !630, !tbaa !415
  %arrayidx402 = getelementptr inbounds i32, ptr %413, i64 4, !dbg !630
  %414 = load i32, ptr %arrayidx402, align 4, !dbg !630, !tbaa !438
  %add403 = add i32 %xor401, %414, !dbg !630
  %add404 = add i32 %add403, 1272893353, !dbg !630
  %415 = load i32, ptr %d, align 4, !dbg !630, !tbaa !438
  %add405 = add i32 %415, %add404, !dbg !630
  store i32 %add405, ptr %d, align 4, !dbg !630, !tbaa !438
  %416 = load i32, ptr %d, align 4, !dbg !630, !tbaa !438
  %shl406 = shl i32 %416, 11, !dbg !630
  %417 = load i32, ptr %d, align 4, !dbg !630, !tbaa !438
  %shr407 = lshr i32 %417, 21, !dbg !630
  %or408 = or i32 %shl406, %shr407, !dbg !630
  store i32 %or408, ptr %d, align 4, !dbg !630, !tbaa !438
  %418 = load i32, ptr %a, align 4, !dbg !630, !tbaa !438
  %419 = load i32, ptr %d, align 4, !dbg !630, !tbaa !438
  %add409 = add i32 %419, %418, !dbg !630
  store i32 %add409, ptr %d, align 4, !dbg !630, !tbaa !438
  %420 = load i32, ptr %d, align 4, !dbg !631, !tbaa !438
  %421 = load i32, ptr %a, align 4, !dbg !631, !tbaa !438
  %xor410 = xor i32 %420, %421, !dbg !631
  %422 = load i32, ptr %b, align 4, !dbg !631, !tbaa !438
  %xor411 = xor i32 %xor410, %422, !dbg !631
  %423 = load ptr, ptr %in.addr, align 8, !dbg !631, !tbaa !415
  %arrayidx412 = getelementptr inbounds i32, ptr %423, i64 7, !dbg !631
  %424 = load i32, ptr %arrayidx412, align 4, !dbg !631, !tbaa !438
  %add413 = add i32 %xor411, %424, !dbg !631
  %add414 = add i32 %add413, -155497632, !dbg !631
  %425 = load i32, ptr %c, align 4, !dbg !631, !tbaa !438
  %add415 = add i32 %425, %add414, !dbg !631
  store i32 %add415, ptr %c, align 4, !dbg !631, !tbaa !438
  %426 = load i32, ptr %c, align 4, !dbg !631, !tbaa !438
  %shl416 = shl i32 %426, 16, !dbg !631
  %427 = load i32, ptr %c, align 4, !dbg !631, !tbaa !438
  %shr417 = lshr i32 %427, 16, !dbg !631
  %or418 = or i32 %shl416, %shr417, !dbg !631
  store i32 %or418, ptr %c, align 4, !dbg !631, !tbaa !438
  %428 = load i32, ptr %d, align 4, !dbg !631, !tbaa !438
  %429 = load i32, ptr %c, align 4, !dbg !631, !tbaa !438
  %add419 = add i32 %429, %428, !dbg !631
  store i32 %add419, ptr %c, align 4, !dbg !631, !tbaa !438
  %430 = load i32, ptr %c, align 4, !dbg !632, !tbaa !438
  %431 = load i32, ptr %d, align 4, !dbg !632, !tbaa !438
  %xor420 = xor i32 %430, %431, !dbg !632
  %432 = load i32, ptr %a, align 4, !dbg !632, !tbaa !438
  %xor421 = xor i32 %xor420, %432, !dbg !632
  %433 = load ptr, ptr %in.addr, align 8, !dbg !632, !tbaa !415
  %arrayidx422 = getelementptr inbounds i32, ptr %433, i64 10, !dbg !632
  %434 = load i32, ptr %arrayidx422, align 4, !dbg !632, !tbaa !438
  %add423 = add i32 %xor421, %434, !dbg !632
  %add424 = add i32 %add423, -1094730640, !dbg !632
  %435 = load i32, ptr %b, align 4, !dbg !632, !tbaa !438
  %add425 = add i32 %435, %add424, !dbg !632
  store i32 %add425, ptr %b, align 4, !dbg !632, !tbaa !438
  %436 = load i32, ptr %b, align 4, !dbg !632, !tbaa !438
  %shl426 = shl i32 %436, 23, !dbg !632
  %437 = load i32, ptr %b, align 4, !dbg !632, !tbaa !438
  %shr427 = lshr i32 %437, 9, !dbg !632
  %or428 = or i32 %shl426, %shr427, !dbg !632
  store i32 %or428, ptr %b, align 4, !dbg !632, !tbaa !438
  %438 = load i32, ptr %c, align 4, !dbg !632, !tbaa !438
  %439 = load i32, ptr %b, align 4, !dbg !632, !tbaa !438
  %add429 = add i32 %439, %438, !dbg !632
  store i32 %add429, ptr %b, align 4, !dbg !632, !tbaa !438
  %440 = load i32, ptr %b, align 4, !dbg !633, !tbaa !438
  %441 = load i32, ptr %c, align 4, !dbg !633, !tbaa !438
  %xor430 = xor i32 %440, %441, !dbg !633
  %442 = load i32, ptr %d, align 4, !dbg !633, !tbaa !438
  %xor431 = xor i32 %xor430, %442, !dbg !633
  %443 = load ptr, ptr %in.addr, align 8, !dbg !633, !tbaa !415
  %arrayidx432 = getelementptr inbounds i32, ptr %443, i64 13, !dbg !633
  %444 = load i32, ptr %arrayidx432, align 4, !dbg !633, !tbaa !438
  %add433 = add i32 %xor431, %444, !dbg !633
  %add434 = add i32 %add433, 681279174, !dbg !633
  %445 = load i32, ptr %a, align 4, !dbg !633, !tbaa !438
  %add435 = add i32 %445, %add434, !dbg !633
  store i32 %add435, ptr %a, align 4, !dbg !633, !tbaa !438
  %446 = load i32, ptr %a, align 4, !dbg !633, !tbaa !438
  %shl436 = shl i32 %446, 4, !dbg !633
  %447 = load i32, ptr %a, align 4, !dbg !633, !tbaa !438
  %shr437 = lshr i32 %447, 28, !dbg !633
  %or438 = or i32 %shl436, %shr437, !dbg !633
  store i32 %or438, ptr %a, align 4, !dbg !633, !tbaa !438
  %448 = load i32, ptr %b, align 4, !dbg !633, !tbaa !438
  %449 = load i32, ptr %a, align 4, !dbg !633, !tbaa !438
  %add439 = add i32 %449, %448, !dbg !633
  store i32 %add439, ptr %a, align 4, !dbg !633, !tbaa !438
  %450 = load i32, ptr %a, align 4, !dbg !634, !tbaa !438
  %451 = load i32, ptr %b, align 4, !dbg !634, !tbaa !438
  %xor440 = xor i32 %450, %451, !dbg !634
  %452 = load i32, ptr %c, align 4, !dbg !634, !tbaa !438
  %xor441 = xor i32 %xor440, %452, !dbg !634
  %453 = load ptr, ptr %in.addr, align 8, !dbg !634, !tbaa !415
  %arrayidx442 = getelementptr inbounds i32, ptr %453, i64 0, !dbg !634
  %454 = load i32, ptr %arrayidx442, align 4, !dbg !634, !tbaa !438
  %add443 = add i32 %xor441, %454, !dbg !634
  %add444 = add i32 %add443, -358537222, !dbg !634
  %455 = load i32, ptr %d, align 4, !dbg !634, !tbaa !438
  %add445 = add i32 %455, %add444, !dbg !634
  store i32 %add445, ptr %d, align 4, !dbg !634, !tbaa !438
  %456 = load i32, ptr %d, align 4, !dbg !634, !tbaa !438
  %shl446 = shl i32 %456, 11, !dbg !634
  %457 = load i32, ptr %d, align 4, !dbg !634, !tbaa !438
  %shr447 = lshr i32 %457, 21, !dbg !634
  %or448 = or i32 %shl446, %shr447, !dbg !634
  store i32 %or448, ptr %d, align 4, !dbg !634, !tbaa !438
  %458 = load i32, ptr %a, align 4, !dbg !634, !tbaa !438
  %459 = load i32, ptr %d, align 4, !dbg !634, !tbaa !438
  %add449 = add i32 %459, %458, !dbg !634
  store i32 %add449, ptr %d, align 4, !dbg !634, !tbaa !438
  %460 = load i32, ptr %d, align 4, !dbg !635, !tbaa !438
  %461 = load i32, ptr %a, align 4, !dbg !635, !tbaa !438
  %xor450 = xor i32 %460, %461, !dbg !635
  %462 = load i32, ptr %b, align 4, !dbg !635, !tbaa !438
  %xor451 = xor i32 %xor450, %462, !dbg !635
  %463 = load ptr, ptr %in.addr, align 8, !dbg !635, !tbaa !415
  %arrayidx452 = getelementptr inbounds i32, ptr %463, i64 3, !dbg !635
  %464 = load i32, ptr %arrayidx452, align 4, !dbg !635, !tbaa !438
  %add453 = add i32 %xor451, %464, !dbg !635
  %add454 = add i32 %add453, -722521979, !dbg !635
  %465 = load i32, ptr %c, align 4, !dbg !635, !tbaa !438
  %add455 = add i32 %465, %add454, !dbg !635
  store i32 %add455, ptr %c, align 4, !dbg !635, !tbaa !438
  %466 = load i32, ptr %c, align 4, !dbg !635, !tbaa !438
  %shl456 = shl i32 %466, 16, !dbg !635
  %467 = load i32, ptr %c, align 4, !dbg !635, !tbaa !438
  %shr457 = lshr i32 %467, 16, !dbg !635
  %or458 = or i32 %shl456, %shr457, !dbg !635
  store i32 %or458, ptr %c, align 4, !dbg !635, !tbaa !438
  %468 = load i32, ptr %d, align 4, !dbg !635, !tbaa !438
  %469 = load i32, ptr %c, align 4, !dbg !635, !tbaa !438
  %add459 = add i32 %469, %468, !dbg !635
  store i32 %add459, ptr %c, align 4, !dbg !635, !tbaa !438
  %470 = load i32, ptr %c, align 4, !dbg !636, !tbaa !438
  %471 = load i32, ptr %d, align 4, !dbg !636, !tbaa !438
  %xor460 = xor i32 %470, %471, !dbg !636
  %472 = load i32, ptr %a, align 4, !dbg !636, !tbaa !438
  %xor461 = xor i32 %xor460, %472, !dbg !636
  %473 = load ptr, ptr %in.addr, align 8, !dbg !636, !tbaa !415
  %arrayidx462 = getelementptr inbounds i32, ptr %473, i64 6, !dbg !636
  %474 = load i32, ptr %arrayidx462, align 4, !dbg !636, !tbaa !438
  %add463 = add i32 %xor461, %474, !dbg !636
  %add464 = add i32 %add463, 76029189, !dbg !636
  %475 = load i32, ptr %b, align 4, !dbg !636, !tbaa !438
  %add465 = add i32 %475, %add464, !dbg !636
  store i32 %add465, ptr %b, align 4, !dbg !636, !tbaa !438
  %476 = load i32, ptr %b, align 4, !dbg !636, !tbaa !438
  %shl466 = shl i32 %476, 23, !dbg !636
  %477 = load i32, ptr %b, align 4, !dbg !636, !tbaa !438
  %shr467 = lshr i32 %477, 9, !dbg !636
  %or468 = or i32 %shl466, %shr467, !dbg !636
  store i32 %or468, ptr %b, align 4, !dbg !636, !tbaa !438
  %478 = load i32, ptr %c, align 4, !dbg !636, !tbaa !438
  %479 = load i32, ptr %b, align 4, !dbg !636, !tbaa !438
  %add469 = add i32 %479, %478, !dbg !636
  store i32 %add469, ptr %b, align 4, !dbg !636, !tbaa !438
  %480 = load i32, ptr %b, align 4, !dbg !637, !tbaa !438
  %481 = load i32, ptr %c, align 4, !dbg !637, !tbaa !438
  %xor470 = xor i32 %480, %481, !dbg !637
  %482 = load i32, ptr %d, align 4, !dbg !637, !tbaa !438
  %xor471 = xor i32 %xor470, %482, !dbg !637
  %483 = load ptr, ptr %in.addr, align 8, !dbg !637, !tbaa !415
  %arrayidx472 = getelementptr inbounds i32, ptr %483, i64 9, !dbg !637
  %484 = load i32, ptr %arrayidx472, align 4, !dbg !637, !tbaa !438
  %add473 = add i32 %xor471, %484, !dbg !637
  %add474 = add i32 %add473, -640364487, !dbg !637
  %485 = load i32, ptr %a, align 4, !dbg !637, !tbaa !438
  %add475 = add i32 %485, %add474, !dbg !637
  store i32 %add475, ptr %a, align 4, !dbg !637, !tbaa !438
  %486 = load i32, ptr %a, align 4, !dbg !637, !tbaa !438
  %shl476 = shl i32 %486, 4, !dbg !637
  %487 = load i32, ptr %a, align 4, !dbg !637, !tbaa !438
  %shr477 = lshr i32 %487, 28, !dbg !637
  %or478 = or i32 %shl476, %shr477, !dbg !637
  store i32 %or478, ptr %a, align 4, !dbg !637, !tbaa !438
  %488 = load i32, ptr %b, align 4, !dbg !637, !tbaa !438
  %489 = load i32, ptr %a, align 4, !dbg !637, !tbaa !438
  %add479 = add i32 %489, %488, !dbg !637
  store i32 %add479, ptr %a, align 4, !dbg !637, !tbaa !438
  %490 = load i32, ptr %a, align 4, !dbg !638, !tbaa !438
  %491 = load i32, ptr %b, align 4, !dbg !638, !tbaa !438
  %xor480 = xor i32 %490, %491, !dbg !638
  %492 = load i32, ptr %c, align 4, !dbg !638, !tbaa !438
  %xor481 = xor i32 %xor480, %492, !dbg !638
  %493 = load ptr, ptr %in.addr, align 8, !dbg !638, !tbaa !415
  %arrayidx482 = getelementptr inbounds i32, ptr %493, i64 12, !dbg !638
  %494 = load i32, ptr %arrayidx482, align 4, !dbg !638, !tbaa !438
  %add483 = add i32 %xor481, %494, !dbg !638
  %add484 = add i32 %add483, -421815835, !dbg !638
  %495 = load i32, ptr %d, align 4, !dbg !638, !tbaa !438
  %add485 = add i32 %495, %add484, !dbg !638
  store i32 %add485, ptr %d, align 4, !dbg !638, !tbaa !438
  %496 = load i32, ptr %d, align 4, !dbg !638, !tbaa !438
  %shl486 = shl i32 %496, 11, !dbg !638
  %497 = load i32, ptr %d, align 4, !dbg !638, !tbaa !438
  %shr487 = lshr i32 %497, 21, !dbg !638
  %or488 = or i32 %shl486, %shr487, !dbg !638
  store i32 %or488, ptr %d, align 4, !dbg !638, !tbaa !438
  %498 = load i32, ptr %a, align 4, !dbg !638, !tbaa !438
  %499 = load i32, ptr %d, align 4, !dbg !638, !tbaa !438
  %add489 = add i32 %499, %498, !dbg !638
  store i32 %add489, ptr %d, align 4, !dbg !638, !tbaa !438
  %500 = load i32, ptr %d, align 4, !dbg !639, !tbaa !438
  %501 = load i32, ptr %a, align 4, !dbg !639, !tbaa !438
  %xor490 = xor i32 %500, %501, !dbg !639
  %502 = load i32, ptr %b, align 4, !dbg !639, !tbaa !438
  %xor491 = xor i32 %xor490, %502, !dbg !639
  %503 = load ptr, ptr %in.addr, align 8, !dbg !639, !tbaa !415
  %arrayidx492 = getelementptr inbounds i32, ptr %503, i64 15, !dbg !639
  %504 = load i32, ptr %arrayidx492, align 4, !dbg !639, !tbaa !438
  %add493 = add i32 %xor491, %504, !dbg !639
  %add494 = add i32 %add493, 530742520, !dbg !639
  %505 = load i32, ptr %c, align 4, !dbg !639, !tbaa !438
  %add495 = add i32 %505, %add494, !dbg !639
  store i32 %add495, ptr %c, align 4, !dbg !639, !tbaa !438
  %506 = load i32, ptr %c, align 4, !dbg !639, !tbaa !438
  %shl496 = shl i32 %506, 16, !dbg !639
  %507 = load i32, ptr %c, align 4, !dbg !639, !tbaa !438
  %shr497 = lshr i32 %507, 16, !dbg !639
  %or498 = or i32 %shl496, %shr497, !dbg !639
  store i32 %or498, ptr %c, align 4, !dbg !639, !tbaa !438
  %508 = load i32, ptr %d, align 4, !dbg !639, !tbaa !438
  %509 = load i32, ptr %c, align 4, !dbg !639, !tbaa !438
  %add499 = add i32 %509, %508, !dbg !639
  store i32 %add499, ptr %c, align 4, !dbg !639, !tbaa !438
  %510 = load i32, ptr %c, align 4, !dbg !640, !tbaa !438
  %511 = load i32, ptr %d, align 4, !dbg !640, !tbaa !438
  %xor500 = xor i32 %510, %511, !dbg !640
  %512 = load i32, ptr %a, align 4, !dbg !640, !tbaa !438
  %xor501 = xor i32 %xor500, %512, !dbg !640
  %513 = load ptr, ptr %in.addr, align 8, !dbg !640, !tbaa !415
  %arrayidx502 = getelementptr inbounds i32, ptr %513, i64 2, !dbg !640
  %514 = load i32, ptr %arrayidx502, align 4, !dbg !640, !tbaa !438
  %add503 = add i32 %xor501, %514, !dbg !640
  %add504 = add i32 %add503, -995338651, !dbg !640
  %515 = load i32, ptr %b, align 4, !dbg !640, !tbaa !438
  %add505 = add i32 %515, %add504, !dbg !640
  store i32 %add505, ptr %b, align 4, !dbg !640, !tbaa !438
  %516 = load i32, ptr %b, align 4, !dbg !640, !tbaa !438
  %shl506 = shl i32 %516, 23, !dbg !640
  %517 = load i32, ptr %b, align 4, !dbg !640, !tbaa !438
  %shr507 = lshr i32 %517, 9, !dbg !640
  %or508 = or i32 %shl506, %shr507, !dbg !640
  store i32 %or508, ptr %b, align 4, !dbg !640, !tbaa !438
  %518 = load i32, ptr %c, align 4, !dbg !640, !tbaa !438
  %519 = load i32, ptr %b, align 4, !dbg !640, !tbaa !438
  %add509 = add i32 %519, %518, !dbg !640
  store i32 %add509, ptr %b, align 4, !dbg !640, !tbaa !438
  %520 = load i32, ptr %c, align 4, !dbg !641, !tbaa !438
  %521 = load i32, ptr %b, align 4, !dbg !641, !tbaa !438
  %522 = load i32, ptr %d, align 4, !dbg !641, !tbaa !438
  %not = xor i32 %522, -1, !dbg !641
  %or510 = or i32 %521, %not, !dbg !641
  %xor511 = xor i32 %520, %or510, !dbg !641
  %523 = load ptr, ptr %in.addr, align 8, !dbg !641, !tbaa !415
  %arrayidx512 = getelementptr inbounds i32, ptr %523, i64 0, !dbg !641
  %524 = load i32, ptr %arrayidx512, align 4, !dbg !641, !tbaa !438
  %add513 = add i32 %xor511, %524, !dbg !641
  %add514 = add i32 %add513, -198630844, !dbg !641
  %525 = load i32, ptr %a, align 4, !dbg !641, !tbaa !438
  %add515 = add i32 %525, %add514, !dbg !641
  store i32 %add515, ptr %a, align 4, !dbg !641, !tbaa !438
  %526 = load i32, ptr %a, align 4, !dbg !641, !tbaa !438
  %shl516 = shl i32 %526, 6, !dbg !641
  %527 = load i32, ptr %a, align 4, !dbg !641, !tbaa !438
  %shr517 = lshr i32 %527, 26, !dbg !641
  %or518 = or i32 %shl516, %shr517, !dbg !641
  store i32 %or518, ptr %a, align 4, !dbg !641, !tbaa !438
  %528 = load i32, ptr %b, align 4, !dbg !641, !tbaa !438
  %529 = load i32, ptr %a, align 4, !dbg !641, !tbaa !438
  %add519 = add i32 %529, %528, !dbg !641
  store i32 %add519, ptr %a, align 4, !dbg !641, !tbaa !438
  %530 = load i32, ptr %b, align 4, !dbg !642, !tbaa !438
  %531 = load i32, ptr %a, align 4, !dbg !642, !tbaa !438
  %532 = load i32, ptr %c, align 4, !dbg !642, !tbaa !438
  %not520 = xor i32 %532, -1, !dbg !642
  %or521 = or i32 %531, %not520, !dbg !642
  %xor522 = xor i32 %530, %or521, !dbg !642
  %533 = load ptr, ptr %in.addr, align 8, !dbg !642, !tbaa !415
  %arrayidx523 = getelementptr inbounds i32, ptr %533, i64 7, !dbg !642
  %534 = load i32, ptr %arrayidx523, align 4, !dbg !642, !tbaa !438
  %add524 = add i32 %xor522, %534, !dbg !642
  %add525 = add i32 %add524, 1126891415, !dbg !642
  %535 = load i32, ptr %d, align 4, !dbg !642, !tbaa !438
  %add526 = add i32 %535, %add525, !dbg !642
  store i32 %add526, ptr %d, align 4, !dbg !642, !tbaa !438
  %536 = load i32, ptr %d, align 4, !dbg !642, !tbaa !438
  %shl527 = shl i32 %536, 10, !dbg !642
  %537 = load i32, ptr %d, align 4, !dbg !642, !tbaa !438
  %shr528 = lshr i32 %537, 22, !dbg !642
  %or529 = or i32 %shl527, %shr528, !dbg !642
  store i32 %or529, ptr %d, align 4, !dbg !642, !tbaa !438
  %538 = load i32, ptr %a, align 4, !dbg !642, !tbaa !438
  %539 = load i32, ptr %d, align 4, !dbg !642, !tbaa !438
  %add530 = add i32 %539, %538, !dbg !642
  store i32 %add530, ptr %d, align 4, !dbg !642, !tbaa !438
  %540 = load i32, ptr %a, align 4, !dbg !643, !tbaa !438
  %541 = load i32, ptr %d, align 4, !dbg !643, !tbaa !438
  %542 = load i32, ptr %b, align 4, !dbg !643, !tbaa !438
  %not531 = xor i32 %542, -1, !dbg !643
  %or532 = or i32 %541, %not531, !dbg !643
  %xor533 = xor i32 %540, %or532, !dbg !643
  %543 = load ptr, ptr %in.addr, align 8, !dbg !643, !tbaa !415
  %arrayidx534 = getelementptr inbounds i32, ptr %543, i64 14, !dbg !643
  %544 = load i32, ptr %arrayidx534, align 4, !dbg !643, !tbaa !438
  %add535 = add i32 %xor533, %544, !dbg !643
  %add536 = add i32 %add535, -1416354905, !dbg !643
  %545 = load i32, ptr %c, align 4, !dbg !643, !tbaa !438
  %add537 = add i32 %545, %add536, !dbg !643
  store i32 %add537, ptr %c, align 4, !dbg !643, !tbaa !438
  %546 = load i32, ptr %c, align 4, !dbg !643, !tbaa !438
  %shl538 = shl i32 %546, 15, !dbg !643
  %547 = load i32, ptr %c, align 4, !dbg !643, !tbaa !438
  %shr539 = lshr i32 %547, 17, !dbg !643
  %or540 = or i32 %shl538, %shr539, !dbg !643
  store i32 %or540, ptr %c, align 4, !dbg !643, !tbaa !438
  %548 = load i32, ptr %d, align 4, !dbg !643, !tbaa !438
  %549 = load i32, ptr %c, align 4, !dbg !643, !tbaa !438
  %add541 = add i32 %549, %548, !dbg !643
  store i32 %add541, ptr %c, align 4, !dbg !643, !tbaa !438
  %550 = load i32, ptr %d, align 4, !dbg !644, !tbaa !438
  %551 = load i32, ptr %c, align 4, !dbg !644, !tbaa !438
  %552 = load i32, ptr %a, align 4, !dbg !644, !tbaa !438
  %not542 = xor i32 %552, -1, !dbg !644
  %or543 = or i32 %551, %not542, !dbg !644
  %xor544 = xor i32 %550, %or543, !dbg !644
  %553 = load ptr, ptr %in.addr, align 8, !dbg !644, !tbaa !415
  %arrayidx545 = getelementptr inbounds i32, ptr %553, i64 5, !dbg !644
  %554 = load i32, ptr %arrayidx545, align 4, !dbg !644, !tbaa !438
  %add546 = add i32 %xor544, %554, !dbg !644
  %add547 = add i32 %add546, -57434055, !dbg !644
  %555 = load i32, ptr %b, align 4, !dbg !644, !tbaa !438
  %add548 = add i32 %555, %add547, !dbg !644
  store i32 %add548, ptr %b, align 4, !dbg !644, !tbaa !438
  %556 = load i32, ptr %b, align 4, !dbg !644, !tbaa !438
  %shl549 = shl i32 %556, 21, !dbg !644
  %557 = load i32, ptr %b, align 4, !dbg !644, !tbaa !438
  %shr550 = lshr i32 %557, 11, !dbg !644
  %or551 = or i32 %shl549, %shr550, !dbg !644
  store i32 %or551, ptr %b, align 4, !dbg !644, !tbaa !438
  %558 = load i32, ptr %c, align 4, !dbg !644, !tbaa !438
  %559 = load i32, ptr %b, align 4, !dbg !644, !tbaa !438
  %add552 = add i32 %559, %558, !dbg !644
  store i32 %add552, ptr %b, align 4, !dbg !644, !tbaa !438
  %560 = load i32, ptr %c, align 4, !dbg !645, !tbaa !438
  %561 = load i32, ptr %b, align 4, !dbg !645, !tbaa !438
  %562 = load i32, ptr %d, align 4, !dbg !645, !tbaa !438
  %not553 = xor i32 %562, -1, !dbg !645
  %or554 = or i32 %561, %not553, !dbg !645
  %xor555 = xor i32 %560, %or554, !dbg !645
  %563 = load ptr, ptr %in.addr, align 8, !dbg !645, !tbaa !415
  %arrayidx556 = getelementptr inbounds i32, ptr %563, i64 12, !dbg !645
  %564 = load i32, ptr %arrayidx556, align 4, !dbg !645, !tbaa !438
  %add557 = add i32 %xor555, %564, !dbg !645
  %add558 = add i32 %add557, 1700485571, !dbg !645
  %565 = load i32, ptr %a, align 4, !dbg !645, !tbaa !438
  %add559 = add i32 %565, %add558, !dbg !645
  store i32 %add559, ptr %a, align 4, !dbg !645, !tbaa !438
  %566 = load i32, ptr %a, align 4, !dbg !645, !tbaa !438
  %shl560 = shl i32 %566, 6, !dbg !645
  %567 = load i32, ptr %a, align 4, !dbg !645, !tbaa !438
  %shr561 = lshr i32 %567, 26, !dbg !645
  %or562 = or i32 %shl560, %shr561, !dbg !645
  store i32 %or562, ptr %a, align 4, !dbg !645, !tbaa !438
  %568 = load i32, ptr %b, align 4, !dbg !645, !tbaa !438
  %569 = load i32, ptr %a, align 4, !dbg !645, !tbaa !438
  %add563 = add i32 %569, %568, !dbg !645
  store i32 %add563, ptr %a, align 4, !dbg !645, !tbaa !438
  %570 = load i32, ptr %b, align 4, !dbg !646, !tbaa !438
  %571 = load i32, ptr %a, align 4, !dbg !646, !tbaa !438
  %572 = load i32, ptr %c, align 4, !dbg !646, !tbaa !438
  %not564 = xor i32 %572, -1, !dbg !646
  %or565 = or i32 %571, %not564, !dbg !646
  %xor566 = xor i32 %570, %or565, !dbg !646
  %573 = load ptr, ptr %in.addr, align 8, !dbg !646, !tbaa !415
  %arrayidx567 = getelementptr inbounds i32, ptr %573, i64 3, !dbg !646
  %574 = load i32, ptr %arrayidx567, align 4, !dbg !646, !tbaa !438
  %add568 = add i32 %xor566, %574, !dbg !646
  %add569 = add i32 %add568, -1894986606, !dbg !646
  %575 = load i32, ptr %d, align 4, !dbg !646, !tbaa !438
  %add570 = add i32 %575, %add569, !dbg !646
  store i32 %add570, ptr %d, align 4, !dbg !646, !tbaa !438
  %576 = load i32, ptr %d, align 4, !dbg !646, !tbaa !438
  %shl571 = shl i32 %576, 10, !dbg !646
  %577 = load i32, ptr %d, align 4, !dbg !646, !tbaa !438
  %shr572 = lshr i32 %577, 22, !dbg !646
  %or573 = or i32 %shl571, %shr572, !dbg !646
  store i32 %or573, ptr %d, align 4, !dbg !646, !tbaa !438
  %578 = load i32, ptr %a, align 4, !dbg !646, !tbaa !438
  %579 = load i32, ptr %d, align 4, !dbg !646, !tbaa !438
  %add574 = add i32 %579, %578, !dbg !646
  store i32 %add574, ptr %d, align 4, !dbg !646, !tbaa !438
  %580 = load i32, ptr %a, align 4, !dbg !647, !tbaa !438
  %581 = load i32, ptr %d, align 4, !dbg !647, !tbaa !438
  %582 = load i32, ptr %b, align 4, !dbg !647, !tbaa !438
  %not575 = xor i32 %582, -1, !dbg !647
  %or576 = or i32 %581, %not575, !dbg !647
  %xor577 = xor i32 %580, %or576, !dbg !647
  %583 = load ptr, ptr %in.addr, align 8, !dbg !647, !tbaa !415
  %arrayidx578 = getelementptr inbounds i32, ptr %583, i64 10, !dbg !647
  %584 = load i32, ptr %arrayidx578, align 4, !dbg !647, !tbaa !438
  %add579 = add i32 %xor577, %584, !dbg !647
  %add580 = add i32 %add579, -1051523, !dbg !647
  %585 = load i32, ptr %c, align 4, !dbg !647, !tbaa !438
  %add581 = add i32 %585, %add580, !dbg !647
  store i32 %add581, ptr %c, align 4, !dbg !647, !tbaa !438
  %586 = load i32, ptr %c, align 4, !dbg !647, !tbaa !438
  %shl582 = shl i32 %586, 15, !dbg !647
  %587 = load i32, ptr %c, align 4, !dbg !647, !tbaa !438
  %shr583 = lshr i32 %587, 17, !dbg !647
  %or584 = or i32 %shl582, %shr583, !dbg !647
  store i32 %or584, ptr %c, align 4, !dbg !647, !tbaa !438
  %588 = load i32, ptr %d, align 4, !dbg !647, !tbaa !438
  %589 = load i32, ptr %c, align 4, !dbg !647, !tbaa !438
  %add585 = add i32 %589, %588, !dbg !647
  store i32 %add585, ptr %c, align 4, !dbg !647, !tbaa !438
  %590 = load i32, ptr %d, align 4, !dbg !648, !tbaa !438
  %591 = load i32, ptr %c, align 4, !dbg !648, !tbaa !438
  %592 = load i32, ptr %a, align 4, !dbg !648, !tbaa !438
  %not586 = xor i32 %592, -1, !dbg !648
  %or587 = or i32 %591, %not586, !dbg !648
  %xor588 = xor i32 %590, %or587, !dbg !648
  %593 = load ptr, ptr %in.addr, align 8, !dbg !648, !tbaa !415
  %arrayidx589 = getelementptr inbounds i32, ptr %593, i64 1, !dbg !648
  %594 = load i32, ptr %arrayidx589, align 4, !dbg !648, !tbaa !438
  %add590 = add i32 %xor588, %594, !dbg !648
  %add591 = add i32 %add590, -2054922799, !dbg !648
  %595 = load i32, ptr %b, align 4, !dbg !648, !tbaa !438
  %add592 = add i32 %595, %add591, !dbg !648
  store i32 %add592, ptr %b, align 4, !dbg !648, !tbaa !438
  %596 = load i32, ptr %b, align 4, !dbg !648, !tbaa !438
  %shl593 = shl i32 %596, 21, !dbg !648
  %597 = load i32, ptr %b, align 4, !dbg !648, !tbaa !438
  %shr594 = lshr i32 %597, 11, !dbg !648
  %or595 = or i32 %shl593, %shr594, !dbg !648
  store i32 %or595, ptr %b, align 4, !dbg !648, !tbaa !438
  %598 = load i32, ptr %c, align 4, !dbg !648, !tbaa !438
  %599 = load i32, ptr %b, align 4, !dbg !648, !tbaa !438
  %add596 = add i32 %599, %598, !dbg !648
  store i32 %add596, ptr %b, align 4, !dbg !648, !tbaa !438
  %600 = load i32, ptr %c, align 4, !dbg !649, !tbaa !438
  %601 = load i32, ptr %b, align 4, !dbg !649, !tbaa !438
  %602 = load i32, ptr %d, align 4, !dbg !649, !tbaa !438
  %not597 = xor i32 %602, -1, !dbg !649
  %or598 = or i32 %601, %not597, !dbg !649
  %xor599 = xor i32 %600, %or598, !dbg !649
  %603 = load ptr, ptr %in.addr, align 8, !dbg !649, !tbaa !415
  %arrayidx600 = getelementptr inbounds i32, ptr %603, i64 8, !dbg !649
  %604 = load i32, ptr %arrayidx600, align 4, !dbg !649, !tbaa !438
  %add601 = add i32 %xor599, %604, !dbg !649
  %add602 = add i32 %add601, 1873313359, !dbg !649
  %605 = load i32, ptr %a, align 4, !dbg !649, !tbaa !438
  %add603 = add i32 %605, %add602, !dbg !649
  store i32 %add603, ptr %a, align 4, !dbg !649, !tbaa !438
  %606 = load i32, ptr %a, align 4, !dbg !649, !tbaa !438
  %shl604 = shl i32 %606, 6, !dbg !649
  %607 = load i32, ptr %a, align 4, !dbg !649, !tbaa !438
  %shr605 = lshr i32 %607, 26, !dbg !649
  %or606 = or i32 %shl604, %shr605, !dbg !649
  store i32 %or606, ptr %a, align 4, !dbg !649, !tbaa !438
  %608 = load i32, ptr %b, align 4, !dbg !649, !tbaa !438
  %609 = load i32, ptr %a, align 4, !dbg !649, !tbaa !438
  %add607 = add i32 %609, %608, !dbg !649
  store i32 %add607, ptr %a, align 4, !dbg !649, !tbaa !438
  %610 = load i32, ptr %b, align 4, !dbg !650, !tbaa !438
  %611 = load i32, ptr %a, align 4, !dbg !650, !tbaa !438
  %612 = load i32, ptr %c, align 4, !dbg !650, !tbaa !438
  %not608 = xor i32 %612, -1, !dbg !650
  %or609 = or i32 %611, %not608, !dbg !650
  %xor610 = xor i32 %610, %or609, !dbg !650
  %613 = load ptr, ptr %in.addr, align 8, !dbg !650, !tbaa !415
  %arrayidx611 = getelementptr inbounds i32, ptr %613, i64 15, !dbg !650
  %614 = load i32, ptr %arrayidx611, align 4, !dbg !650, !tbaa !438
  %add612 = add i32 %xor610, %614, !dbg !650
  %add613 = add i32 %add612, -30611744, !dbg !650
  %615 = load i32, ptr %d, align 4, !dbg !650, !tbaa !438
  %add614 = add i32 %615, %add613, !dbg !650
  store i32 %add614, ptr %d, align 4, !dbg !650, !tbaa !438
  %616 = load i32, ptr %d, align 4, !dbg !650, !tbaa !438
  %shl615 = shl i32 %616, 10, !dbg !650
  %617 = load i32, ptr %d, align 4, !dbg !650, !tbaa !438
  %shr616 = lshr i32 %617, 22, !dbg !650
  %or617 = or i32 %shl615, %shr616, !dbg !650
  store i32 %or617, ptr %d, align 4, !dbg !650, !tbaa !438
  %618 = load i32, ptr %a, align 4, !dbg !650, !tbaa !438
  %619 = load i32, ptr %d, align 4, !dbg !650, !tbaa !438
  %add618 = add i32 %619, %618, !dbg !650
  store i32 %add618, ptr %d, align 4, !dbg !650, !tbaa !438
  %620 = load i32, ptr %a, align 4, !dbg !651, !tbaa !438
  %621 = load i32, ptr %d, align 4, !dbg !651, !tbaa !438
  %622 = load i32, ptr %b, align 4, !dbg !651, !tbaa !438
  %not619 = xor i32 %622, -1, !dbg !651
  %or620 = or i32 %621, %not619, !dbg !651
  %xor621 = xor i32 %620, %or620, !dbg !651
  %623 = load ptr, ptr %in.addr, align 8, !dbg !651, !tbaa !415
  %arrayidx622 = getelementptr inbounds i32, ptr %623, i64 6, !dbg !651
  %624 = load i32, ptr %arrayidx622, align 4, !dbg !651, !tbaa !438
  %add623 = add i32 %xor621, %624, !dbg !651
  %add624 = add i32 %add623, -1560198380, !dbg !651
  %625 = load i32, ptr %c, align 4, !dbg !651, !tbaa !438
  %add625 = add i32 %625, %add624, !dbg !651
  store i32 %add625, ptr %c, align 4, !dbg !651, !tbaa !438
  %626 = load i32, ptr %c, align 4, !dbg !651, !tbaa !438
  %shl626 = shl i32 %626, 15, !dbg !651
  %627 = load i32, ptr %c, align 4, !dbg !651, !tbaa !438
  %shr627 = lshr i32 %627, 17, !dbg !651
  %or628 = or i32 %shl626, %shr627, !dbg !651
  store i32 %or628, ptr %c, align 4, !dbg !651, !tbaa !438
  %628 = load i32, ptr %d, align 4, !dbg !651, !tbaa !438
  %629 = load i32, ptr %c, align 4, !dbg !651, !tbaa !438
  %add629 = add i32 %629, %628, !dbg !651
  store i32 %add629, ptr %c, align 4, !dbg !651, !tbaa !438
  %630 = load i32, ptr %d, align 4, !dbg !652, !tbaa !438
  %631 = load i32, ptr %c, align 4, !dbg !652, !tbaa !438
  %632 = load i32, ptr %a, align 4, !dbg !652, !tbaa !438
  %not630 = xor i32 %632, -1, !dbg !652
  %or631 = or i32 %631, %not630, !dbg !652
  %xor632 = xor i32 %630, %or631, !dbg !652
  %633 = load ptr, ptr %in.addr, align 8, !dbg !652, !tbaa !415
  %arrayidx633 = getelementptr inbounds i32, ptr %633, i64 13, !dbg !652
  %634 = load i32, ptr %arrayidx633, align 4, !dbg !652, !tbaa !438
  %add634 = add i32 %xor632, %634, !dbg !652
  %add635 = add i32 %add634, 1309151649, !dbg !652
  %635 = load i32, ptr %b, align 4, !dbg !652, !tbaa !438
  %add636 = add i32 %635, %add635, !dbg !652
  store i32 %add636, ptr %b, align 4, !dbg !652, !tbaa !438
  %636 = load i32, ptr %b, align 4, !dbg !652, !tbaa !438
  %shl637 = shl i32 %636, 21, !dbg !652
  %637 = load i32, ptr %b, align 4, !dbg !652, !tbaa !438
  %shr638 = lshr i32 %637, 11, !dbg !652
  %or639 = or i32 %shl637, %shr638, !dbg !652
  store i32 %or639, ptr %b, align 4, !dbg !652, !tbaa !438
  %638 = load i32, ptr %c, align 4, !dbg !652, !tbaa !438
  %639 = load i32, ptr %b, align 4, !dbg !652, !tbaa !438
  %add640 = add i32 %639, %638, !dbg !652
  store i32 %add640, ptr %b, align 4, !dbg !652, !tbaa !438
  %640 = load i32, ptr %c, align 4, !dbg !653, !tbaa !438
  %641 = load i32, ptr %b, align 4, !dbg !653, !tbaa !438
  %642 = load i32, ptr %d, align 4, !dbg !653, !tbaa !438
  %not641 = xor i32 %642, -1, !dbg !653
  %or642 = or i32 %641, %not641, !dbg !653
  %xor643 = xor i32 %640, %or642, !dbg !653
  %643 = load ptr, ptr %in.addr, align 8, !dbg !653, !tbaa !415
  %arrayidx644 = getelementptr inbounds i32, ptr %643, i64 4, !dbg !653
  %644 = load i32, ptr %arrayidx644, align 4, !dbg !653, !tbaa !438
  %add645 = add i32 %xor643, %644, !dbg !653
  %add646 = add i32 %add645, -145523070, !dbg !653
  %645 = load i32, ptr %a, align 4, !dbg !653, !tbaa !438
  %add647 = add i32 %645, %add646, !dbg !653
  store i32 %add647, ptr %a, align 4, !dbg !653, !tbaa !438
  %646 = load i32, ptr %a, align 4, !dbg !653, !tbaa !438
  %shl648 = shl i32 %646, 6, !dbg !653
  %647 = load i32, ptr %a, align 4, !dbg !653, !tbaa !438
  %shr649 = lshr i32 %647, 26, !dbg !653
  %or650 = or i32 %shl648, %shr649, !dbg !653
  store i32 %or650, ptr %a, align 4, !dbg !653, !tbaa !438
  %648 = load i32, ptr %b, align 4, !dbg !653, !tbaa !438
  %649 = load i32, ptr %a, align 4, !dbg !653, !tbaa !438
  %add651 = add i32 %649, %648, !dbg !653
  store i32 %add651, ptr %a, align 4, !dbg !653, !tbaa !438
  %650 = load i32, ptr %b, align 4, !dbg !654, !tbaa !438
  %651 = load i32, ptr %a, align 4, !dbg !654, !tbaa !438
  %652 = load i32, ptr %c, align 4, !dbg !654, !tbaa !438
  %not652 = xor i32 %652, -1, !dbg !654
  %or653 = or i32 %651, %not652, !dbg !654
  %xor654 = xor i32 %650, %or653, !dbg !654
  %653 = load ptr, ptr %in.addr, align 8, !dbg !654, !tbaa !415
  %arrayidx655 = getelementptr inbounds i32, ptr %653, i64 11, !dbg !654
  %654 = load i32, ptr %arrayidx655, align 4, !dbg !654, !tbaa !438
  %add656 = add i32 %xor654, %654, !dbg !654
  %add657 = add i32 %add656, -1120210379, !dbg !654
  %655 = load i32, ptr %d, align 4, !dbg !654, !tbaa !438
  %add658 = add i32 %655, %add657, !dbg !654
  store i32 %add658, ptr %d, align 4, !dbg !654, !tbaa !438
  %656 = load i32, ptr %d, align 4, !dbg !654, !tbaa !438
  %shl659 = shl i32 %656, 10, !dbg !654
  %657 = load i32, ptr %d, align 4, !dbg !654, !tbaa !438
  %shr660 = lshr i32 %657, 22, !dbg !654
  %or661 = or i32 %shl659, %shr660, !dbg !654
  store i32 %or661, ptr %d, align 4, !dbg !654, !tbaa !438
  %658 = load i32, ptr %a, align 4, !dbg !654, !tbaa !438
  %659 = load i32, ptr %d, align 4, !dbg !654, !tbaa !438
  %add662 = add i32 %659, %658, !dbg !654
  store i32 %add662, ptr %d, align 4, !dbg !654, !tbaa !438
  %660 = load i32, ptr %a, align 4, !dbg !655, !tbaa !438
  %661 = load i32, ptr %d, align 4, !dbg !655, !tbaa !438
  %662 = load i32, ptr %b, align 4, !dbg !655, !tbaa !438
  %not663 = xor i32 %662, -1, !dbg !655
  %or664 = or i32 %661, %not663, !dbg !655
  %xor665 = xor i32 %660, %or664, !dbg !655
  %663 = load ptr, ptr %in.addr, align 8, !dbg !655, !tbaa !415
  %arrayidx666 = getelementptr inbounds i32, ptr %663, i64 2, !dbg !655
  %664 = load i32, ptr %arrayidx666, align 4, !dbg !655, !tbaa !438
  %add667 = add i32 %xor665, %664, !dbg !655
  %add668 = add i32 %add667, 718787259, !dbg !655
  %665 = load i32, ptr %c, align 4, !dbg !655, !tbaa !438
  %add669 = add i32 %665, %add668, !dbg !655
  store i32 %add669, ptr %c, align 4, !dbg !655, !tbaa !438
  %666 = load i32, ptr %c, align 4, !dbg !655, !tbaa !438
  %shl670 = shl i32 %666, 15, !dbg !655
  %667 = load i32, ptr %c, align 4, !dbg !655, !tbaa !438
  %shr671 = lshr i32 %667, 17, !dbg !655
  %or672 = or i32 %shl670, %shr671, !dbg !655
  store i32 %or672, ptr %c, align 4, !dbg !655, !tbaa !438
  %668 = load i32, ptr %d, align 4, !dbg !655, !tbaa !438
  %669 = load i32, ptr %c, align 4, !dbg !655, !tbaa !438
  %add673 = add i32 %669, %668, !dbg !655
  store i32 %add673, ptr %c, align 4, !dbg !655, !tbaa !438
  %670 = load i32, ptr %d, align 4, !dbg !656, !tbaa !438
  %671 = load i32, ptr %c, align 4, !dbg !656, !tbaa !438
  %672 = load i32, ptr %a, align 4, !dbg !656, !tbaa !438
  %not674 = xor i32 %672, -1, !dbg !656
  %or675 = or i32 %671, %not674, !dbg !656
  %xor676 = xor i32 %670, %or675, !dbg !656
  %673 = load ptr, ptr %in.addr, align 8, !dbg !656, !tbaa !415
  %arrayidx677 = getelementptr inbounds i32, ptr %673, i64 9, !dbg !656
  %674 = load i32, ptr %arrayidx677, align 4, !dbg !656, !tbaa !438
  %add678 = add i32 %xor676, %674, !dbg !656
  %add679 = add i32 %add678, -343485551, !dbg !656
  %675 = load i32, ptr %b, align 4, !dbg !656, !tbaa !438
  %add680 = add i32 %675, %add679, !dbg !656
  store i32 %add680, ptr %b, align 4, !dbg !656, !tbaa !438
  %676 = load i32, ptr %b, align 4, !dbg !656, !tbaa !438
  %shl681 = shl i32 %676, 21, !dbg !656
  %677 = load i32, ptr %b, align 4, !dbg !656, !tbaa !438
  %shr682 = lshr i32 %677, 11, !dbg !656
  %or683 = or i32 %shl681, %shr682, !dbg !656
  store i32 %or683, ptr %b, align 4, !dbg !656, !tbaa !438
  %678 = load i32, ptr %c, align 4, !dbg !656, !tbaa !438
  %679 = load i32, ptr %b, align 4, !dbg !656, !tbaa !438
  %add684 = add i32 %679, %678, !dbg !656
  store i32 %add684, ptr %b, align 4, !dbg !656, !tbaa !438
  %680 = load i32, ptr %a, align 4, !dbg !657, !tbaa !438
  %681 = load ptr, ptr %buf.addr, align 8, !dbg !658, !tbaa !415
  %arrayidx685 = getelementptr inbounds i32, ptr %681, i64 0, !dbg !658
  %682 = load i32, ptr %arrayidx685, align 4, !dbg !659, !tbaa !438
  %add686 = add i32 %682, %680, !dbg !659
  store i32 %add686, ptr %arrayidx685, align 4, !dbg !659, !tbaa !438
  %683 = load i32, ptr %b, align 4, !dbg !660, !tbaa !438
  %684 = load ptr, ptr %buf.addr, align 8, !dbg !661, !tbaa !415
  %arrayidx687 = getelementptr inbounds i32, ptr %684, i64 1, !dbg !661
  %685 = load i32, ptr %arrayidx687, align 4, !dbg !662, !tbaa !438
  %add688 = add i32 %685, %683, !dbg !662
  store i32 %add688, ptr %arrayidx687, align 4, !dbg !662, !tbaa !438
  %686 = load i32, ptr %c, align 4, !dbg !663, !tbaa !438
  %687 = load ptr, ptr %buf.addr, align 8, !dbg !664, !tbaa !415
  %arrayidx689 = getelementptr inbounds i32, ptr %687, i64 2, !dbg !664
  %688 = load i32, ptr %arrayidx689, align 4, !dbg !665, !tbaa !438
  %add690 = add i32 %688, %686, !dbg !665
  store i32 %add690, ptr %arrayidx689, align 4, !dbg !665, !tbaa !438
  %689 = load i32, ptr %d, align 4, !dbg !666, !tbaa !438
  %690 = load ptr, ptr %buf.addr, align 8, !dbg !667, !tbaa !415
  %arrayidx691 = getelementptr inbounds i32, ptr %690, i64 3, !dbg !667
  %691 = load i32, ptr %arrayidx691, align 4, !dbg !668, !tbaa !438
  %add692 = add i32 %691, %689, !dbg !668
  store i32 %add692, ptr %arrayidx691, align 4, !dbg !668, !tbaa !438
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #7, !dbg !669
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #7, !dbg !669
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #7, !dbg !669
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #7, !dbg !669
  ret void, !dbg !669
}

; Function Attrs: nounwind uwtable
define void @cmsMD5finish(ptr noundef %ProfileID, ptr noundef %Handle) #0 !dbg !670 {
entry:
  %ProfileID.addr = alloca ptr, align 8
  %Handle.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %count = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %ProfileID, ptr %ProfileID.addr, align 8, !tbaa !415
  tail call void @llvm.dbg.declare(metadata ptr %ProfileID.addr, metadata !675, metadata !DIExpression()), !dbg !680
  store ptr %Handle, ptr %Handle.addr, align 8, !tbaa !415
  tail call void @llvm.dbg.declare(metadata ptr %Handle.addr, metadata !676, metadata !DIExpression()), !dbg !681
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #7, !dbg !682
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !677, metadata !DIExpression()), !dbg !683
  %0 = load ptr, ptr %Handle.addr, align 8, !dbg !684, !tbaa !415
  store ptr %0, ptr %ctx, align 8, !dbg !683, !tbaa !415
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #7, !dbg !685
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !678, metadata !DIExpression()), !dbg !686
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !687
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !679, metadata !DIExpression()), !dbg !688
  %1 = load ptr, ptr %ctx, align 8, !dbg !689, !tbaa !415
  %bits = getelementptr inbounds %struct._cmsMD5, ptr %1, i32 0, i32 1, !dbg !690
  %arrayidx = getelementptr inbounds [2 x i32], ptr %bits, i64 0, i64 0, !dbg !689
  %2 = load i32, ptr %arrayidx, align 8, !dbg !689, !tbaa !438
  %shr = lshr i32 %2, 3, !dbg !691
  %and = and i32 %shr, 63, !dbg !692
  store i32 %and, ptr %count, align 4, !dbg !693, !tbaa !438
  %3 = load ptr, ptr %ctx, align 8, !dbg !694, !tbaa !415
  %in = getelementptr inbounds %struct._cmsMD5, ptr %3, i32 0, i32 2, !dbg !695
  %arraydecay = getelementptr inbounds [64 x i8], ptr %in, i64 0, i64 0, !dbg !694
  %4 = load i32, ptr %count, align 4, !dbg !696, !tbaa !438
  %idx.ext = zext i32 %4 to i64, !dbg !697
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 %idx.ext, !dbg !697
  store ptr %add.ptr, ptr %p, align 8, !dbg !698, !tbaa !415
  %5 = load ptr, ptr %p, align 8, !dbg !699, !tbaa !415
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1, !dbg !699
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !699, !tbaa !415
  store i8 -128, ptr %5, align 1, !dbg !700, !tbaa !701
  %6 = load i32, ptr %count, align 4, !dbg !702, !tbaa !438
  %sub = sub i32 63, %6, !dbg !703
  store i32 %sub, ptr %count, align 4, !dbg !704, !tbaa !438
  %7 = load i32, ptr %count, align 4, !dbg !705, !tbaa !438
  %cmp = icmp ult i32 %7, 8, !dbg !707
  br i1 %cmp, label %if.then, label %if.else, !dbg !708

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %p, align 8, !dbg !709, !tbaa !415
  %9 = load i32, ptr %count, align 4, !dbg !711, !tbaa !438
  %conv = zext i32 %9 to i64, !dbg !711
  call void @llvm.memset.p0.i64(ptr align 1 %8, i8 0, i64 %conv, i1 false), !dbg !712
  %10 = load ptr, ptr %ctx, align 8, !dbg !713, !tbaa !415
  %buf = getelementptr inbounds %struct._cmsMD5, ptr %10, i32 0, i32 0, !dbg !714
  %arraydecay1 = getelementptr inbounds [4 x i32], ptr %buf, i64 0, i64 0, !dbg !713
  %11 = load ptr, ptr %ctx, align 8, !dbg !715, !tbaa !415
  %in2 = getelementptr inbounds %struct._cmsMD5, ptr %11, i32 0, i32 2, !dbg !716
  %arraydecay3 = getelementptr inbounds [64 x i8], ptr %in2, i64 0, i64 0, !dbg !715
  call void @cmsMD5_Transform(ptr noundef %arraydecay1, ptr noundef %arraydecay3), !dbg !717
  %12 = load ptr, ptr %ctx, align 8, !dbg !718, !tbaa !415
  %in4 = getelementptr inbounds %struct._cmsMD5, ptr %12, i32 0, i32 2, !dbg !719
  %arraydecay5 = getelementptr inbounds [64 x i8], ptr %in4, i64 0, i64 0, !dbg !720
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay5, i8 0, i64 56, i1 false), !dbg !720
  br label %if.end, !dbg !721

if.else:                                          ; preds = %entry
  %13 = load ptr, ptr %p, align 8, !dbg !722, !tbaa !415
  %14 = load i32, ptr %count, align 4, !dbg !724, !tbaa !438
  %sub6 = sub i32 %14, 8, !dbg !725
  %conv7 = zext i32 %sub6 to i64, !dbg !724
  call void @llvm.memset.p0.i64(ptr align 1 %13, i8 0, i64 %conv7, i1 false), !dbg !726
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load ptr, ptr %ctx, align 8, !dbg !727, !tbaa !415
  %bits8 = getelementptr inbounds %struct._cmsMD5, ptr %15, i32 0, i32 1, !dbg !728
  %arrayidx9 = getelementptr inbounds [2 x i32], ptr %bits8, i64 0, i64 0, !dbg !727
  %16 = load i32, ptr %arrayidx9, align 8, !dbg !727, !tbaa !438
  %17 = load ptr, ptr %ctx, align 8, !dbg !729, !tbaa !415
  %in10 = getelementptr inbounds %struct._cmsMD5, ptr %17, i32 0, i32 2, !dbg !730
  %arraydecay11 = getelementptr inbounds [64 x i8], ptr %in10, i64 0, i64 0, !dbg !731
  %arrayidx12 = getelementptr inbounds i32, ptr %arraydecay11, i64 14, !dbg !731
  store i32 %16, ptr %arrayidx12, align 8, !dbg !732, !tbaa !438
  %18 = load ptr, ptr %ctx, align 8, !dbg !733, !tbaa !415
  %bits13 = getelementptr inbounds %struct._cmsMD5, ptr %18, i32 0, i32 1, !dbg !734
  %arrayidx14 = getelementptr inbounds [2 x i32], ptr %bits13, i64 0, i64 1, !dbg !733
  %19 = load i32, ptr %arrayidx14, align 4, !dbg !733, !tbaa !438
  %20 = load ptr, ptr %ctx, align 8, !dbg !735, !tbaa !415
  %in15 = getelementptr inbounds %struct._cmsMD5, ptr %20, i32 0, i32 2, !dbg !736
  %arraydecay16 = getelementptr inbounds [64 x i8], ptr %in15, i64 0, i64 0, !dbg !737
  %arrayidx17 = getelementptr inbounds i32, ptr %arraydecay16, i64 15, !dbg !737
  store i32 %19, ptr %arrayidx17, align 4, !dbg !738, !tbaa !438
  %21 = load ptr, ptr %ctx, align 8, !dbg !739, !tbaa !415
  %buf18 = getelementptr inbounds %struct._cmsMD5, ptr %21, i32 0, i32 0, !dbg !740
  %arraydecay19 = getelementptr inbounds [4 x i32], ptr %buf18, i64 0, i64 0, !dbg !739
  %22 = load ptr, ptr %ctx, align 8, !dbg !741, !tbaa !415
  %in20 = getelementptr inbounds %struct._cmsMD5, ptr %22, i32 0, i32 2, !dbg !742
  %arraydecay21 = getelementptr inbounds [64 x i8], ptr %in20, i64 0, i64 0, !dbg !741
  call void @cmsMD5_Transform(ptr noundef %arraydecay19, ptr noundef %arraydecay21), !dbg !743
  %23 = load ptr, ptr %ProfileID.addr, align 8, !dbg !744, !tbaa !415
  %arraydecay22 = getelementptr inbounds [16 x i8], ptr %23, i64 0, i64 0, !dbg !745
  %24 = load ptr, ptr %ctx, align 8, !dbg !746, !tbaa !415
  %buf23 = getelementptr inbounds %struct._cmsMD5, ptr %24, i32 0, i32 0, !dbg !747
  %arraydecay24 = getelementptr inbounds [4 x i32], ptr %buf23, i64 0, i64 0, !dbg !745
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %arraydecay22, ptr align 8 %arraydecay24, i64 16, i1 false), !dbg !745
  %25 = load ptr, ptr %ctx, align 8, !dbg !748, !tbaa !415
  %ContextID = getelementptr inbounds %struct._cmsMD5, ptr %25, i32 0, i32 3, !dbg !749
  %26 = load ptr, ptr %ContextID, align 8, !dbg !749, !tbaa !433
  %27 = load ptr, ptr %ctx, align 8, !dbg !750, !tbaa !415
  call void @_cmsFree(ptr noundef %26, ptr noundef %27), !dbg !751
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !752
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #7, !dbg !752
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #7, !dbg !752
  ret void, !dbg !752
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare !dbg !753 void @_cmsFree(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @cmsMD5computeID(ptr noundef %hProfile) #0 !dbg !754 {
entry:
  %retval = alloca i32, align 4
  %hProfile.addr = alloca ptr, align 8
  %ContextID = alloca ptr, align 8
  %BytesNeeded = alloca i32, align 4
  %Mem = alloca ptr, align 8
  %MD5 = alloca ptr, align 8
  %Icc = alloca ptr, align 8
  %Keep = alloca %struct._cms_iccprofile_struct, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hProfile, ptr %hProfile.addr, align 8, !tbaa !415
  tail call void @llvm.dbg.declare(metadata ptr %hProfile.addr, metadata !759, metadata !DIExpression()), !dbg !767
  call void @llvm.lifetime.start.p0(i64 8, ptr %ContextID) #7, !dbg !768
  tail call void @llvm.dbg.declare(metadata ptr %ContextID, metadata !760, metadata !DIExpression()), !dbg !769
  call void @llvm.lifetime.start.p0(i64 4, ptr %BytesNeeded) #7, !dbg !770
  tail call void @llvm.dbg.declare(metadata ptr %BytesNeeded, metadata !761, metadata !DIExpression()), !dbg !771
  call void @llvm.lifetime.start.p0(i64 8, ptr %Mem) #7, !dbg !772
  tail call void @llvm.dbg.declare(metadata ptr %Mem, metadata !762, metadata !DIExpression()), !dbg !773
  store ptr null, ptr %Mem, align 8, !dbg !773, !tbaa !415
  call void @llvm.lifetime.start.p0(i64 8, ptr %MD5) #7, !dbg !774
  tail call void @llvm.dbg.declare(metadata ptr %MD5, metadata !763, metadata !DIExpression()), !dbg !775
  store ptr null, ptr %MD5, align 8, !dbg !775, !tbaa !415
  call void @llvm.lifetime.start.p0(i64 8, ptr %Icc) #7, !dbg !776
  tail call void @llvm.dbg.declare(metadata ptr %Icc, metadata !764, metadata !DIExpression()), !dbg !777
  %0 = load ptr, ptr %hProfile.addr, align 8, !dbg !778, !tbaa !415
  store ptr %0, ptr %Icc, align 8, !dbg !777, !tbaa !415
  call void @llvm.lifetime.start.p0(i64 3752, ptr %Keep) #7, !dbg !779
  tail call void @llvm.dbg.declare(metadata ptr %Keep, metadata !765, metadata !DIExpression()), !dbg !780
  %1 = load ptr, ptr %hProfile.addr, align 8, !dbg !781, !tbaa !415
  %cmp = icmp ne ptr %1, null, !dbg !781
  br i1 %cmp, label %if.then, label %if.else, !dbg !784

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !784

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 266, ptr noundef @__PRETTY_FUNCTION__.cmsMD5computeID) #8, !dbg !781
  unreachable, !dbg !781

if.end:                                           ; preds = %if.then
  %2 = load ptr, ptr %hProfile.addr, align 8, !dbg !785, !tbaa !415
  %call = call ptr @cmsGetProfileContextID(ptr noundef %2), !dbg !786
  store ptr %call, ptr %ContextID, align 8, !dbg !787, !tbaa !415
  %3 = load ptr, ptr %Icc, align 8, !dbg !788, !tbaa !415
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %Keep, ptr align 8 %3, i64 3752, i1 false), !dbg !789
  %4 = load ptr, ptr %Icc, align 8, !dbg !790, !tbaa !415
  %attributes = getelementptr inbounds %struct._cms_iccprofile_struct, ptr %4, i32 0, i32 11, !dbg !791
  call void @llvm.memset.p0.i64(ptr align 8 %attributes, i8 0, i64 8, i1 false), !dbg !792
  %5 = load ptr, ptr %Icc, align 8, !dbg !793, !tbaa !415
  %RenderingIntent = getelementptr inbounds %struct._cms_iccprofile_struct, ptr %5, i32 0, i32 7, !dbg !794
  store i32 0, ptr %RenderingIntent, align 8, !dbg !795, !tbaa !796
  %6 = load ptr, ptr %Icc, align 8, !dbg !800, !tbaa !415
  %ProfileID = getelementptr inbounds %struct._cms_iccprofile_struct, ptr %6, i32 0, i32 13, !dbg !801
  call void @llvm.memset.p0.i64(ptr align 4 %ProfileID, i8 0, i64 16, i1 false), !dbg !802
  %7 = load ptr, ptr %hProfile.addr, align 8, !dbg !803, !tbaa !415
  %call1 = call i32 @cmsSaveProfileToMem(ptr noundef %7, ptr noundef null, ptr noundef %BytesNeeded), !dbg !805
  %tobool = icmp ne i32 %call1, 0, !dbg !805
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !806

if.then2:                                         ; preds = %if.end
  br label %Error, !dbg !807

if.end3:                                          ; preds = %if.end
  %8 = load ptr, ptr %ContextID, align 8, !dbg !808, !tbaa !415
  %9 = load i32, ptr %BytesNeeded, align 4, !dbg !809, !tbaa !438
  %call4 = call ptr @_cmsMalloc(ptr noundef %8, i32 noundef %9), !dbg !810
  store ptr %call4, ptr %Mem, align 8, !dbg !811, !tbaa !415
  %10 = load ptr, ptr %Mem, align 8, !dbg !812, !tbaa !415
  %cmp5 = icmp eq ptr %10, null, !dbg !814
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !815

if.then6:                                         ; preds = %if.end3
  br label %Error, !dbg !816

if.end7:                                          ; preds = %if.end3
  %11 = load ptr, ptr %hProfile.addr, align 8, !dbg !817, !tbaa !415
  %12 = load ptr, ptr %Mem, align 8, !dbg !819, !tbaa !415
  %call8 = call i32 @cmsSaveProfileToMem(ptr noundef %11, ptr noundef %12, ptr noundef %BytesNeeded), !dbg !820
  %tobool9 = icmp ne i32 %call8, 0, !dbg !820
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !821

if.then10:                                        ; preds = %if.end7
  br label %Error, !dbg !822

if.end11:                                         ; preds = %if.end7
  %13 = load ptr, ptr %ContextID, align 8, !dbg !823, !tbaa !415
  %call12 = call ptr @cmsMD5alloc(ptr noundef %13), !dbg !824
  store ptr %call12, ptr %MD5, align 8, !dbg !825, !tbaa !415
  %14 = load ptr, ptr %MD5, align 8, !dbg !826, !tbaa !415
  %cmp13 = icmp eq ptr %14, null, !dbg !828
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !829

if.then14:                                        ; preds = %if.end11
  br label %Error, !dbg !830

if.end15:                                         ; preds = %if.end11
  %15 = load ptr, ptr %MD5, align 8, !dbg !831, !tbaa !415
  %16 = load ptr, ptr %Mem, align 8, !dbg !832, !tbaa !415
  %17 = load i32, ptr %BytesNeeded, align 4, !dbg !833, !tbaa !438
  call void @cmsMD5add(ptr noundef %15, ptr noundef %16, i32 noundef %17), !dbg !834
  %18 = load ptr, ptr %ContextID, align 8, !dbg !835, !tbaa !415
  %19 = load ptr, ptr %Mem, align 8, !dbg !836, !tbaa !415
  call void @_cmsFree(ptr noundef %18, ptr noundef %19), !dbg !837
  %20 = load ptr, ptr %Icc, align 8, !dbg !838, !tbaa !415
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %20, ptr align 8 %Keep, i64 3752, i1 false), !dbg !839
  %21 = load ptr, ptr %Icc, align 8, !dbg !840, !tbaa !415
  %ProfileID16 = getelementptr inbounds %struct._cms_iccprofile_struct, ptr %21, i32 0, i32 13, !dbg !841
  %22 = load ptr, ptr %MD5, align 8, !dbg !842, !tbaa !415
  call void @cmsMD5finish(ptr noundef %ProfileID16, ptr noundef %22), !dbg !843
  store i32 1, ptr %retval, align 4, !dbg !844
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !844

Error:                                            ; preds = %if.then14, %if.then10, %if.then6, %if.then2
  tail call void @llvm.dbg.label(metadata !766), !dbg !845
  %23 = load ptr, ptr %Mem, align 8, !dbg !846, !tbaa !415
  %cmp17 = icmp ne ptr %23, null, !dbg !848
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !849

if.then18:                                        ; preds = %Error
  %24 = load ptr, ptr %ContextID, align 8, !dbg !850, !tbaa !415
  %25 = load ptr, ptr %Mem, align 8, !dbg !851, !tbaa !415
  call void @_cmsFree(ptr noundef %24, ptr noundef %25), !dbg !852
  br label %if.end19, !dbg !852

if.end19:                                         ; preds = %if.then18, %Error
  %26 = load ptr, ptr %Icc, align 8, !dbg !853, !tbaa !415
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %26, ptr align 8 %Keep, i64 3752, i1 false), !dbg !854
  store i32 0, ptr %retval, align 4, !dbg !855
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !855

cleanup:                                          ; preds = %if.end19, %if.end15
  call void @llvm.lifetime.end.p0(i64 3752, ptr %Keep) #7, !dbg !856
  call void @llvm.lifetime.end.p0(i64 8, ptr %Icc) #7, !dbg !856
  call void @llvm.lifetime.end.p0(i64 8, ptr %MD5) #7, !dbg !856
  call void @llvm.lifetime.end.p0(i64 8, ptr %Mem) #7, !dbg !856
  call void @llvm.lifetime.end.p0(i64 4, ptr %BytesNeeded) #7, !dbg !856
  call void @llvm.lifetime.end.p0(i64 8, ptr %ContextID) #7, !dbg !856
  %27 = load i32, ptr %retval, align 4, !dbg !856
  ret i32 %27, !dbg !856
}

; Function Attrs: noreturn nounwind
declare !dbg !857 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

declare !dbg !861 ptr @cmsGetProfileContextID(ptr noundef) #2

declare !dbg !864 i32 @cmsSaveProfileToMem(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !867 ptr @_cmsMalloc(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!18}
!llvm.module.flags = !{!403, !404, !405, !406, !407}
!llvm.ident = !{!408}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 266, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "cmsmd5.c", directory: "/local-ssd/lcms-ztpfygwoja345726vi3y4tc34unbjaib-build/aidengro/spack-stage-lcms-2.13.1-ztpfygwoja345726vi3y4tc34unbjaib/spack-src/src", checksumkind: CSK_MD5, checksum: "dfbd501b843ea21fcd720c8039eb0980")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 25)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 266, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 9)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 266, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 296, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 37)
!18 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !187, globals: !402, splitDebugInlining: false, nameTableKind: None)
!19 = !{!20, !31, !76, !149}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 490, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "../include/lcms2.h", directory: "/local-ssd/lcms-ztpfygwoja345726vi3y4tc34unbjaib-build/aidengro/spack-stage-lcms-2.13.1-ztpfygwoja345726vi3y4tc34unbjaib/spack-src/src", checksumkind: CSK_MD5, checksum: "b2bebc2d7c5ccc569b0d00311c47ac6c")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25, !26, !27, !28, !29, !30}
!24 = !DIEnumerator(name: "cmsSigInputClass", value: 1935896178)
!25 = !DIEnumerator(name: "cmsSigDisplayClass", value: 1835955314)
!26 = !DIEnumerator(name: "cmsSigOutputClass", value: 1886549106)
!27 = !DIEnumerator(name: "cmsSigLinkClass", value: 1818848875)
!28 = !DIEnumerator(name: "cmsSigAbstractClass", value: 1633842036)
!29 = !DIEnumerator(name: "cmsSigColorSpaceClass", value: 1936744803)
!30 = !DIEnumerator(name: "cmsSigNamedColorClass", value: 1852662636)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 442, baseType: !22, size: 32, elements: !32)
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75}
!33 = !DIEnumerator(name: "cmsSigXYZData", value: 1482250784)
!34 = !DIEnumerator(name: "cmsSigLabData", value: 1281450528)
!35 = !DIEnumerator(name: "cmsSigLuvData", value: 1282766368)
!36 = !DIEnumerator(name: "cmsSigYCbCrData", value: 1497588338)
!37 = !DIEnumerator(name: "cmsSigYxyData", value: 1501067552)
!38 = !DIEnumerator(name: "cmsSigRgbData", value: 1380401696)
!39 = !DIEnumerator(name: "cmsSigGrayData", value: 1196573017)
!40 = !DIEnumerator(name: "cmsSigHsvData", value: 1213421088)
!41 = !DIEnumerator(name: "cmsSigHlsData", value: 1212961568)
!42 = !DIEnumerator(name: "cmsSigCmykData", value: 1129142603)
!43 = !DIEnumerator(name: "cmsSigCmyData", value: 1129142560)
!44 = !DIEnumerator(name: "cmsSigMCH1Data", value: 1296255025)
!45 = !DIEnumerator(name: "cmsSigMCH2Data", value: 1296255026)
!46 = !DIEnumerator(name: "cmsSigMCH3Data", value: 1296255027)
!47 = !DIEnumerator(name: "cmsSigMCH4Data", value: 1296255028)
!48 = !DIEnumerator(name: "cmsSigMCH5Data", value: 1296255029)
!49 = !DIEnumerator(name: "cmsSigMCH6Data", value: 1296255030)
!50 = !DIEnumerator(name: "cmsSigMCH7Data", value: 1296255031)
!51 = !DIEnumerator(name: "cmsSigMCH8Data", value: 1296255032)
!52 = !DIEnumerator(name: "cmsSigMCH9Data", value: 1296255033)
!53 = !DIEnumerator(name: "cmsSigMCHAData", value: 1296255041)
!54 = !DIEnumerator(name: "cmsSigMCHBData", value: 1296255042)
!55 = !DIEnumerator(name: "cmsSigMCHCData", value: 1296255043)
!56 = !DIEnumerator(name: "cmsSigMCHDData", value: 1296255044)
!57 = !DIEnumerator(name: "cmsSigMCHEData", value: 1296255045)
!58 = !DIEnumerator(name: "cmsSigMCHFData", value: 1296255046)
!59 = !DIEnumerator(name: "cmsSigNamedData", value: 1852662636)
!60 = !DIEnumerator(name: "cmsSig1colorData", value: 826494034)
!61 = !DIEnumerator(name: "cmsSig2colorData", value: 843271250)
!62 = !DIEnumerator(name: "cmsSig3colorData", value: 860048466)
!63 = !DIEnumerator(name: "cmsSig4colorData", value: 876825682)
!64 = !DIEnumerator(name: "cmsSig5colorData", value: 893602898)
!65 = !DIEnumerator(name: "cmsSig6colorData", value: 910380114)
!66 = !DIEnumerator(name: "cmsSig7colorData", value: 927157330)
!67 = !DIEnumerator(name: "cmsSig8colorData", value: 943934546)
!68 = !DIEnumerator(name: "cmsSig9colorData", value: 960711762)
!69 = !DIEnumerator(name: "cmsSig10colorData", value: 1094929490)
!70 = !DIEnumerator(name: "cmsSig11colorData", value: 1111706706)
!71 = !DIEnumerator(name: "cmsSig12colorData", value: 1128483922)
!72 = !DIEnumerator(name: "cmsSig13colorData", value: 1145261138)
!73 = !DIEnumerator(name: "cmsSig14colorData", value: 1162038354)
!74 = !DIEnumerator(name: "cmsSig15colorData", value: 1178815570)
!75 = !DIEnumerator(name: "cmsSigLuvKData", value: 1282766411)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 333, baseType: !22, size: 32, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148}
!78 = !DIEnumerator(name: "cmsSigAToB0Tag", value: 1093812784)
!79 = !DIEnumerator(name: "cmsSigAToB1Tag", value: 1093812785)
!80 = !DIEnumerator(name: "cmsSigAToB2Tag", value: 1093812786)
!81 = !DIEnumerator(name: "cmsSigBlueColorantTag", value: 1649957210)
!82 = !DIEnumerator(name: "cmsSigBlueMatrixColumnTag", value: 1649957210)
!83 = !DIEnumerator(name: "cmsSigBlueTRCTag", value: 1649693251)
!84 = !DIEnumerator(name: "cmsSigBToA0Tag", value: 1110589744)
!85 = !DIEnumerator(name: "cmsSigBToA1Tag", value: 1110589745)
!86 = !DIEnumerator(name: "cmsSigBToA2Tag", value: 1110589746)
!87 = !DIEnumerator(name: "cmsSigCalibrationDateTimeTag", value: 1667329140)
!88 = !DIEnumerator(name: "cmsSigCharTargetTag", value: 1952543335)
!89 = !DIEnumerator(name: "cmsSigChromaticAdaptationTag", value: 1667785060)
!90 = !DIEnumerator(name: "cmsSigChromaticityTag", value: 1667789421)
!91 = !DIEnumerator(name: "cmsSigColorantOrderTag", value: 1668051567)
!92 = !DIEnumerator(name: "cmsSigColorantTableTag", value: 1668051572)
!93 = !DIEnumerator(name: "cmsSigColorantTableOutTag", value: 1668050804)
!94 = !DIEnumerator(name: "cmsSigColorimetricIntentImageStateTag", value: 1667852659)
!95 = !DIEnumerator(name: "cmsSigCopyrightTag", value: 1668313716)
!96 = !DIEnumerator(name: "cmsSigCrdInfoTag", value: 1668441193)
!97 = !DIEnumerator(name: "cmsSigDataTag", value: 1684108385)
!98 = !DIEnumerator(name: "cmsSigDateTimeTag", value: 1685350765)
!99 = !DIEnumerator(name: "cmsSigDeviceMfgDescTag", value: 1684893284)
!100 = !DIEnumerator(name: "cmsSigDeviceModelDescTag", value: 1684890724)
!101 = !DIEnumerator(name: "cmsSigDeviceSettingsTag", value: 1684371059)
!102 = !DIEnumerator(name: "cmsSigDToB0Tag", value: 1144144432)
!103 = !DIEnumerator(name: "cmsSigDToB1Tag", value: 1144144433)
!104 = !DIEnumerator(name: "cmsSigDToB2Tag", value: 1144144434)
!105 = !DIEnumerator(name: "cmsSigDToB3Tag", value: 1144144435)
!106 = !DIEnumerator(name: "cmsSigBToD0Tag", value: 1110590512)
!107 = !DIEnumerator(name: "cmsSigBToD1Tag", value: 1110590513)
!108 = !DIEnumerator(name: "cmsSigBToD2Tag", value: 1110590514)
!109 = !DIEnumerator(name: "cmsSigBToD3Tag", value: 1110590515)
!110 = !DIEnumerator(name: "cmsSigGamutTag", value: 1734438260)
!111 = !DIEnumerator(name: "cmsSigGrayTRCTag", value: 1800688195)
!112 = !DIEnumerator(name: "cmsSigGreenColorantTag", value: 1733843290)
!113 = !DIEnumerator(name: "cmsSigGreenMatrixColumnTag", value: 1733843290)
!114 = !DIEnumerator(name: "cmsSigGreenTRCTag", value: 1733579331)
!115 = !DIEnumerator(name: "cmsSigLuminanceTag", value: 1819635049)
!116 = !DIEnumerator(name: "cmsSigMeasurementTag", value: 1835360627)
!117 = !DIEnumerator(name: "cmsSigMediaBlackPointTag", value: 1651208308)
!118 = !DIEnumerator(name: "cmsSigMediaWhitePointTag", value: 2004119668)
!119 = !DIEnumerator(name: "cmsSigNamedColorTag", value: 1852010348)
!120 = !DIEnumerator(name: "cmsSigNamedColor2Tag", value: 1852009522)
!121 = !DIEnumerator(name: "cmsSigOutputResponseTag", value: 1919251312)
!122 = !DIEnumerator(name: "cmsSigPerceptualRenderingIntentGamutTag", value: 1919510320)
!123 = !DIEnumerator(name: "cmsSigPreview0Tag", value: 1886545200)
!124 = !DIEnumerator(name: "cmsSigPreview1Tag", value: 1886545201)
!125 = !DIEnumerator(name: "cmsSigPreview2Tag", value: 1886545202)
!126 = !DIEnumerator(name: "cmsSigProfileDescriptionTag", value: 1684370275)
!127 = !DIEnumerator(name: "cmsSigProfileDescriptionMLTag", value: 1685283693)
!128 = !DIEnumerator(name: "cmsSigProfileSequenceDescTag", value: 1886610801)
!129 = !DIEnumerator(name: "cmsSigProfileSequenceIdTag", value: 1886611812)
!130 = !DIEnumerator(name: "cmsSigPs2CRD0Tag", value: 1886610480)
!131 = !DIEnumerator(name: "cmsSigPs2CRD1Tag", value: 1886610481)
!132 = !DIEnumerator(name: "cmsSigPs2CRD2Tag", value: 1886610482)
!133 = !DIEnumerator(name: "cmsSigPs2CRD3Tag", value: 1886610483)
!134 = !DIEnumerator(name: "cmsSigPs2CSATag", value: 1886597747)
!135 = !DIEnumerator(name: "cmsSigPs2RenderingIntentTag", value: 1886597737)
!136 = !DIEnumerator(name: "cmsSigRedColorantTag", value: 1918392666)
!137 = !DIEnumerator(name: "cmsSigRedMatrixColumnTag", value: 1918392666)
!138 = !DIEnumerator(name: "cmsSigRedTRCTag", value: 1918128707)
!139 = !DIEnumerator(name: "cmsSigSaturationRenderingIntentGamutTag", value: 1919510322)
!140 = !DIEnumerator(name: "cmsSigScreeningDescTag", value: 1935897188)
!141 = !DIEnumerator(name: "cmsSigScreeningTag", value: 1935897198)
!142 = !DIEnumerator(name: "cmsSigTechnologyTag", value: 1952801640)
!143 = !DIEnumerator(name: "cmsSigUcrBgTag", value: 1650877472)
!144 = !DIEnumerator(name: "cmsSigViewingCondDescTag", value: 1987405156)
!145 = !DIEnumerator(name: "cmsSigViewingConditionsTag", value: 1986618743)
!146 = !DIEnumerator(name: "cmsSigVcgtTag", value: 1986226036)
!147 = !DIEnumerator(name: "cmsSigMetaTag", value: 1835365473)
!148 = !DIEnumerator(name: "cmsSigArgyllArtsTag", value: 1634890867)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 291, baseType: !22, size: 32, elements: !150)
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186}
!151 = !DIEnumerator(name: "cmsSigChromaticityType", value: 1667789421)
!152 = !DIEnumerator(name: "cmsSigColorantOrderType", value: 1668051567)
!153 = !DIEnumerator(name: "cmsSigColorantTableType", value: 1668051572)
!154 = !DIEnumerator(name: "cmsSigCrdInfoType", value: 1668441193)
!155 = !DIEnumerator(name: "cmsSigCurveType", value: 1668641398)
!156 = !DIEnumerator(name: "cmsSigDataType", value: 1684108385)
!157 = !DIEnumerator(name: "cmsSigDictType", value: 1684628340)
!158 = !DIEnumerator(name: "cmsSigDateTimeType", value: 1685350765)
!159 = !DIEnumerator(name: "cmsSigDeviceSettingsType", value: 1684371059)
!160 = !DIEnumerator(name: "cmsSigLut16Type", value: 1835430962)
!161 = !DIEnumerator(name: "cmsSigLut8Type", value: 1835430961)
!162 = !DIEnumerator(name: "cmsSigLutAtoBType", value: 1832993312)
!163 = !DIEnumerator(name: "cmsSigLutBtoAType", value: 1833058592)
!164 = !DIEnumerator(name: "cmsSigMeasurementType", value: 1835360627)
!165 = !DIEnumerator(name: "cmsSigMultiLocalizedUnicodeType", value: 1835824483)
!166 = !DIEnumerator(name: "cmsSigMultiProcessElementType", value: 1836082548)
!167 = !DIEnumerator(name: "cmsSigNamedColorType", value: 1852010348)
!168 = !DIEnumerator(name: "cmsSigNamedColor2Type", value: 1852009522)
!169 = !DIEnumerator(name: "cmsSigParametricCurveType", value: 1885434465)
!170 = !DIEnumerator(name: "cmsSigProfileSequenceDescType", value: 1886610801)
!171 = !DIEnumerator(name: "cmsSigProfileSequenceIdType", value: 1886611812)
!172 = !DIEnumerator(name: "cmsSigResponseCurveSet16Type", value: 1919120178)
!173 = !DIEnumerator(name: "cmsSigS15Fixed16ArrayType", value: 1936077618)
!174 = !DIEnumerator(name: "cmsSigScreeningType", value: 1935897198)
!175 = !DIEnumerator(name: "cmsSigSignatureType", value: 1936287520)
!176 = !DIEnumerator(name: "cmsSigTextType", value: 1952807028)
!177 = !DIEnumerator(name: "cmsSigTextDescriptionType", value: 1684370275)
!178 = !DIEnumerator(name: "cmsSigU16Fixed16ArrayType", value: 1969632050)
!179 = !DIEnumerator(name: "cmsSigUcrBgType", value: 1650877472)
!180 = !DIEnumerator(name: "cmsSigUInt16ArrayType", value: 1969828150)
!181 = !DIEnumerator(name: "cmsSigUInt32ArrayType", value: 1969828658)
!182 = !DIEnumerator(name: "cmsSigUInt64ArrayType", value: 1969829428)
!183 = !DIEnumerator(name: "cmsSigUInt8ArrayType", value: 1969827896)
!184 = !DIEnumerator(name: "cmsSigVcgtType", value: 1986226036)
!185 = !DIEnumerator(name: "cmsSigViewingConditionsType", value: 1986618743)
!186 = !DIEnumerator(name: "cmsSigXYZType", value: 1482250784)
!187 = !{!188, !233, !270, !226, !271, !272}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsMD5", file: !2, line: 56, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 49, size: 768, elements: !191)
!191 = !{!192, !197, !201, !207}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !190, file: !2, line: 51, baseType: !193, size: 128)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 128, elements: !195)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsUInt32Number", file: !21, line: 120, baseType: !22)
!195 = !{!196}
!196 = !DISubrange(count: 4)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !190, file: !2, line: 52, baseType: !198, size: 64, offset: 128)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 64, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 2)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !190, file: !2, line: 53, baseType: !202, size: 512, offset: 192)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 512, elements: !205)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsUInt8Number", file: !21, line: 90, baseType: !204)
!204 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!205 = !{!206}
!206 = !DISubrange(count: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ContextID", scope: !190, file: !2, line: 54, baseType: !208, size: 64, offset: 704)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsContext", file: !21, line: 1056, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cmsContext_struct", file: !211, line: 511, size: 1472, elements: !212)
!211 = !DIFile(filename: "./lcms2_internal.h", directory: "/local-ssd/lcms-ztpfygwoja345726vi3y4tc34unbjaib-build/aidengro/spack-stage-lcms-2.13.1-ztpfygwoja345726vi3y4tc34unbjaib/spack-src/src", checksumkind: CSK_MD5, checksum: "479b61780e49804306b4c5804e975f85")
!212 = !{!213, !214, !231, !236}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !210, file: !211, line: 513, baseType: !209, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "MemPool", scope: !210, file: !211, line: 514, baseType: !215, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsSubAllocator", file: !211, line: 460, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !211, line: 455, size: 128, elements: !218)
!218 = !{!219, !220}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "ContextID", scope: !217, file: !211, line: 457, baseType: !208, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !217, file: !211, line: 458, baseType: !221, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsSubAllocator_chunk", file: !211, line: 452, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cmsSubAllocator_chunk_st", file: !211, line: 444, size: 192, elements: !224)
!224 = !{!225, !227, !228, !229}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "Block", scope: !223, file: !211, line: 446, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "BlockSize", scope: !223, file: !211, line: 447, baseType: !194, size: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "Used", scope: !223, file: !211, line: 448, baseType: !194, size: 32, offset: 96)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !223, file: !211, line: 450, baseType: !230, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !210, file: !211, line: 516, baseType: !232, size: 960, offset: 128)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 960, elements: !234)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!234 = !{!235}
!235 = !DISubrange(count: 15)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "DefaultMemoryManager", scope: !210, file: !211, line: 519, baseType: !237, size: 384, offset: 1088)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsMemPluginChunkType", file: !211, line: 505, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !211, line: 496, size: 384, elements: !239)
!239 = !{!240, !246, !248, !253, !258, !263}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "MallocPtr", scope: !238, file: !211, line: 498, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsMallocFnPtrType", file: !242, line: 229, baseType: !243)
!242 = !DIFile(filename: "../include/lcms2_plugin.h", directory: "/local-ssd/lcms-ztpfygwoja345726vi3y4tc34unbjaib-build/aidengro/spack-stage-lcms-2.13.1-ztpfygwoja345726vi3y4tc34unbjaib/spack-src/src", checksumkind: CSK_MD5, checksum: "3a8f6b8afdf5dfc22373e8103ac5e8ca")
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!233, !208, !194}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "MallocZeroPtr", scope: !238, file: !211, line: 499, baseType: !247, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsMalloZerocFnPtrType", file: !242, line: 233, baseType: !243)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "FreePtr", scope: !238, file: !211, line: 500, baseType: !249, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsFreeFnPtrType", file: !242, line: 230, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !208, !233}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ReallocPtr", scope: !238, file: !211, line: 501, baseType: !254, size: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsReallocFnPtrType", file: !242, line: 231, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!233, !208, !233, !194}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "CallocPtr", scope: !238, file: !211, line: 502, baseType: !259, size: 64, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsCallocFnPtrType", file: !242, line: 234, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!233, !208, !194, !194}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "DupPtr", scope: !238, file: !211, line: 503, baseType: !264, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsDupFnPtrType", file: !242, line: 235, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!233, !208, !268, !194}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsHANDLE", file: !21, line: 660, baseType: !233)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cmsICCPROFILE", file: !211, line: 823, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cms_iccprofile_struct", file: !211, line: 781, size: 30016, elements: !275)
!275 = !{!276, !312, !313, !330, !331, !333, !335, !336, !337, !338, !339, !340, !343, !344, !359, !360, !365, !366, !368, !369, !371, !373, !400, !401}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "IOhandler", scope: !274, file: !211, line: 784, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsIOHANDLER", file: !21, line: 1548, baseType: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cms_io_handler", file: !242, line: 118, size: 2560, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !289, !294, !300, !304, !308}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !279, file: !242, line: 120, baseType: !233, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ContextID", scope: !279, file: !242, line: 122, baseType: !208, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "UsedSpace", scope: !279, file: !242, line: 123, baseType: !194, size: 32, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ReportedSize", scope: !279, file: !242, line: 124, baseType: !194, size: 32, offset: 160)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "PhysicalFile", scope: !279, file: !242, line: 125, baseType: !286, size: 2048, offset: 192)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 256)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "Read", scope: !279, file: !242, line: 127, baseType: !290, size: 64, offset: 2240)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!194, !293, !233, !194, !194}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "Seek", scope: !279, file: !242, line: 130, baseType: !295, size: 64, offset: 2304)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!298, !293, !194}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsBool", file: !21, line: 174, baseType: !299)
!299 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "Close", scope: !279, file: !242, line: 131, baseType: !301, size: 64, offset: 2368)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!298, !293}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "Tell", scope: !279, file: !242, line: 132, baseType: !305, size: 64, offset: 2432)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!194, !293}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "Write", scope: !279, file: !242, line: 133, baseType: !309, size: 64, offset: 2496)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!298, !293, !194, !268}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "ContextID", scope: !274, file: !211, line: 787, baseType: !208, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "Created", scope: !274, file: !211, line: 790, baseType: !314, size: 448, offset: 128)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !315, line: 7, size: 448, elements: !316)
!315 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "", checksumkind: CSK_MD5, checksum: "9e5545b565ef031c4cd0faf90b69386f")
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !328}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !314, file: !315, line: 9, baseType: !299, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !314, file: !315, line: 10, baseType: !299, size: 32, offset: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !314, file: !315, line: 11, baseType: !299, size: 32, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !314, file: !315, line: 12, baseType: !299, size: 32, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !314, file: !315, line: 13, baseType: !299, size: 32, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !314, file: !315, line: 14, baseType: !299, size: 32, offset: 160)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !314, file: !315, line: 15, baseType: !299, size: 32, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !314, file: !315, line: 16, baseType: !299, size: 32, offset: 224)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !314, file: !315, line: 17, baseType: !299, size: 32, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !314, file: !315, line: 20, baseType: !327, size: 64, offset: 320)
!327 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !314, file: !315, line: 21, baseType: !329, size: 64, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "Version", scope: !274, file: !211, line: 793, baseType: !194, size: 32, offset: 576)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceClass", scope: !274, file: !211, line: 794, baseType: !332, size: 32, offset: 608)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsProfileClassSignature", file: !21, line: 499, baseType: !20)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "ColorSpace", scope: !274, file: !211, line: 795, baseType: !334, size: 32, offset: 640)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsColorSpaceSignature", file: !21, line: 487, baseType: !31)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "PCS", scope: !274, file: !211, line: 796, baseType: !334, size: 32, offset: 672)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "RenderingIntent", scope: !274, file: !211, line: 797, baseType: !194, size: 32, offset: 704)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !274, file: !211, line: 799, baseType: !194, size: 32, offset: 736)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !274, file: !211, line: 800, baseType: !194, size: 32, offset: 768)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !274, file: !211, line: 800, baseType: !194, size: 32, offset: 800)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !274, file: !211, line: 801, baseType: !341, size: 64, offset: 832)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsUInt64Number", file: !21, line: 138, baseType: !342)
!342 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "creator", scope: !274, file: !211, line: 802, baseType: !194, size: 32, offset: 896)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "ProfileID", scope: !274, file: !211, line: 804, baseType: !345, size: 128, offset: 928)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsProfileID", file: !21, line: 611, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !21, line: 606, size: 128, elements: !347)
!347 = !{!348, !352, !358}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ID8", scope: !346, file: !21, line: 607, baseType: !349, size: 128)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 128, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 16)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ID16", scope: !346, file: !21, line: 608, baseType: !353, size: 128)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 128, elements: !356)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsUInt16Number", file: !21, line: 103, baseType: !355)
!355 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!356 = !{!357}
!357 = !DISubrange(count: 8)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ID32", scope: !346, file: !21, line: 609, baseType: !193, size: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "TagCount", scope: !274, file: !211, line: 807, baseType: !194, size: 32, offset: 1056)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "TagNames", scope: !274, file: !211, line: 808, baseType: !361, size: 3200, offset: 1088)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 3200, elements: !363)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsTagSignature", file: !21, line: 406, baseType: !76)
!363 = !{!364}
!364 = !DISubrange(count: 100)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "TagLinked", scope: !274, file: !211, line: 809, baseType: !361, size: 3200, offset: 4288)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "TagSizes", scope: !274, file: !211, line: 810, baseType: !367, size: 3200, offset: 7488)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 3200, elements: !363)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "TagOffsets", scope: !274, file: !211, line: 811, baseType: !367, size: 3200, offset: 10688)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "TagSaveAsRaw", scope: !274, file: !211, line: 812, baseType: !370, size: 3200, offset: 13888)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 3200, elements: !363)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "TagPtrs", scope: !274, file: !211, line: 813, baseType: !372, size: 6400, offset: 17088)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 6400, elements: !363)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "TagTypeHandlers", scope: !274, file: !211, line: 814, baseType: !374, size: 6400, offset: 23488)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 6400, elements: !363)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsTagTypeHandler", file: !242, line: 415, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cms_typehandler_struct", file: !242, line: 386, size: 448, elements: !378)
!378 = !{!379, !381, !386, !390, !394, !398, !399}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "Signature", scope: !377, file: !242, line: 388, baseType: !380, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsTagTypeSignature", file: !21, line: 330, baseType: !149)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ReadPtr", scope: !377, file: !242, line: 391, baseType: !382, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!233, !385, !277, !271, !194}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "WritePtr", scope: !377, file: !242, line: 397, baseType: !387, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!298, !385, !277, !233, !194}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "DupPtr", scope: !377, file: !242, line: 403, baseType: !391, size: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!233, !385, !268, !194}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "FreePtr", scope: !377, file: !242, line: 408, baseType: !395, size: 64, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !385, !233}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "ContextID", scope: !377, file: !242, line: 412, baseType: !208, size: 64, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "ICCVersion", scope: !377, file: !242, line: 413, baseType: !194, size: 32, offset: 384)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "IsWrite", scope: !274, file: !211, line: 818, baseType: !298, size: 32, offset: 29888)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "UsrMutex", scope: !274, file: !211, line: 821, baseType: !233, size: 64, offset: 29952)
!402 = !{!0, !7, !12}
!403 = !{i32 7, !"Dwarf Version", i32 5}
!404 = !{i32 2, !"Debug Info Version", i32 3}
!405 = !{i32 1, !"wchar_size", i32 4}
!406 = !{i32 8, !"PIC Level", i32 2}
!407 = !{i32 7, !"uwtable", i32 2}
!408 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!409 = distinct !DISubprogram(name: "cmsMD5alloc", scope: !2, file: !2, line: 154, type: !410, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !412)
!410 = !DISubroutineType(types: !411)
!411 = !{!270, !208}
!412 = !{!413, !414}
!413 = !DILocalVariable(name: "ContextID", arg: 1, scope: !409, file: !2, line: 154, type: !208)
!414 = !DILocalVariable(name: "ctx", scope: !409, file: !2, line: 156, type: !188)
!415 = !{!416, !416, i64 0}
!416 = !{!"any pointer", !417, i64 0}
!417 = !{!"omnipotent char", !418, i64 0}
!418 = !{!"Simple C/C++ TBAA"}
!419 = !DILocation(line: 154, column: 44, scope: !409)
!420 = !DILocation(line: 156, column: 5, scope: !409)
!421 = !DILocation(line: 156, column: 14, scope: !409)
!422 = !DILocation(line: 156, column: 46, scope: !409)
!423 = !DILocation(line: 156, column: 31, scope: !409)
!424 = !DILocation(line: 157, column: 9, scope: !425)
!425 = distinct !DILexicalBlock(scope: !409, file: !2, line: 157, column: 9)
!426 = !DILocation(line: 157, column: 13, scope: !425)
!427 = !DILocation(line: 157, column: 9, scope: !409)
!428 = !DILocation(line: 157, column: 22, scope: !425)
!429 = !DILocation(line: 159, column: 23, scope: !409)
!430 = !DILocation(line: 159, column: 5, scope: !409)
!431 = !DILocation(line: 159, column: 11, scope: !409)
!432 = !DILocation(line: 159, column: 21, scope: !409)
!433 = !{!434, !416, i64 88}
!434 = !{!"", !417, i64 0, !417, i64 16, !417, i64 24, !416, i64 88}
!435 = !DILocation(line: 161, column: 5, scope: !409)
!436 = !DILocation(line: 161, column: 10, scope: !409)
!437 = !DILocation(line: 161, column: 17, scope: !409)
!438 = !{!439, !439, i64 0}
!439 = !{!"int", !417, i64 0}
!440 = !DILocation(line: 162, column: 5, scope: !409)
!441 = !DILocation(line: 162, column: 10, scope: !409)
!442 = !DILocation(line: 162, column: 17, scope: !409)
!443 = !DILocation(line: 163, column: 5, scope: !409)
!444 = !DILocation(line: 163, column: 10, scope: !409)
!445 = !DILocation(line: 163, column: 17, scope: !409)
!446 = !DILocation(line: 164, column: 5, scope: !409)
!447 = !DILocation(line: 164, column: 10, scope: !409)
!448 = !DILocation(line: 164, column: 17, scope: !409)
!449 = !DILocation(line: 166, column: 5, scope: !409)
!450 = !DILocation(line: 166, column: 10, scope: !409)
!451 = !DILocation(line: 166, column: 18, scope: !409)
!452 = !DILocation(line: 167, column: 5, scope: !409)
!453 = !DILocation(line: 167, column: 10, scope: !409)
!454 = !DILocation(line: 167, column: 18, scope: !409)
!455 = !DILocation(line: 169, column: 24, scope: !409)
!456 = !DILocation(line: 169, column: 5, scope: !409)
!457 = !DILocation(line: 170, column: 1, scope: !409)
!458 = !DISubprogram(name: "_cmsMallocZero", scope: !242, file: !242, line: 110, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!459 = distinct !DISubprogram(name: "cmsMD5add", scope: !2, file: !2, line: 172, type: !460, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !464)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !270, !462, !194}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!464 = !{!465, !466, !467, !468, !469, !470}
!465 = !DILocalVariable(name: "Handle", arg: 1, scope: !459, file: !2, line: 172, type: !270)
!466 = !DILocalVariable(name: "buf", arg: 2, scope: !459, file: !2, line: 172, type: !462)
!467 = !DILocalVariable(name: "len", arg: 3, scope: !459, file: !2, line: 172, type: !194)
!468 = !DILocalVariable(name: "ctx", scope: !459, file: !2, line: 174, type: !188)
!469 = !DILocalVariable(name: "t", scope: !459, file: !2, line: 175, type: !194)
!470 = !DILocalVariable(name: "p", scope: !471, file: !2, line: 187, type: !226)
!471 = distinct !DILexicalBlock(scope: !472, file: !2, line: 185, column: 12)
!472 = distinct !DILexicalBlock(scope: !459, file: !2, line: 185, column: 9)
!473 = !DILocation(line: 172, column: 36, scope: !459)
!474 = !DILocation(line: 172, column: 66, scope: !459)
!475 = !DILocation(line: 172, column: 87, scope: !459)
!476 = !DILocation(line: 174, column: 5, scope: !459)
!477 = !DILocation(line: 174, column: 14, scope: !459)
!478 = !DILocation(line: 174, column: 31, scope: !459)
!479 = !DILocation(line: 175, column: 5, scope: !459)
!480 = !DILocation(line: 175, column: 21, scope: !459)
!481 = !DILocation(line: 177, column: 9, scope: !459)
!482 = !DILocation(line: 177, column: 14, scope: !459)
!483 = !DILocation(line: 177, column: 7, scope: !459)
!484 = !DILocation(line: 178, column: 25, scope: !485)
!485 = distinct !DILexicalBlock(scope: !459, file: !2, line: 178, column: 9)
!486 = !DILocation(line: 178, column: 30, scope: !485)
!487 = !DILocation(line: 178, column: 34, scope: !485)
!488 = !DILocation(line: 178, column: 27, scope: !485)
!489 = !DILocation(line: 178, column: 10, scope: !485)
!490 = !DILocation(line: 178, column: 15, scope: !485)
!491 = !DILocation(line: 178, column: 23, scope: !485)
!492 = !DILocation(line: 178, column: 43, scope: !485)
!493 = !DILocation(line: 178, column: 41, scope: !485)
!494 = !DILocation(line: 178, column: 9, scope: !459)
!495 = !DILocation(line: 179, column: 9, scope: !485)
!496 = !DILocation(line: 179, column: 14, scope: !485)
!497 = !DILocation(line: 179, column: 21, scope: !485)
!498 = !DILocation(line: 181, column: 21, scope: !459)
!499 = !DILocation(line: 181, column: 25, scope: !459)
!500 = !DILocation(line: 181, column: 5, scope: !459)
!501 = !DILocation(line: 181, column: 10, scope: !459)
!502 = !DILocation(line: 181, column: 18, scope: !459)
!503 = !DILocation(line: 183, column: 10, scope: !459)
!504 = !DILocation(line: 183, column: 12, scope: !459)
!505 = !DILocation(line: 183, column: 18, scope: !459)
!506 = !DILocation(line: 183, column: 7, scope: !459)
!507 = !DILocation(line: 185, column: 9, scope: !472)
!508 = !DILocation(line: 185, column: 9, scope: !459)
!509 = !DILocation(line: 187, column: 9, scope: !471)
!510 = !DILocation(line: 187, column: 25, scope: !471)
!511 = !DILocation(line: 187, column: 48, scope: !471)
!512 = !DILocation(line: 187, column: 53, scope: !471)
!513 = !DILocation(line: 187, column: 58, scope: !471)
!514 = !DILocation(line: 187, column: 56, scope: !471)
!515 = !DILocation(line: 189, column: 18, scope: !471)
!516 = !DILocation(line: 189, column: 16, scope: !471)
!517 = !DILocation(line: 189, column: 11, scope: !471)
!518 = !DILocation(line: 190, column: 13, scope: !519)
!519 = distinct !DILexicalBlock(scope: !471, file: !2, line: 190, column: 13)
!520 = !DILocation(line: 190, column: 19, scope: !519)
!521 = !DILocation(line: 190, column: 17, scope: !519)
!522 = !DILocation(line: 190, column: 13, scope: !471)
!523 = !DILocation(line: 191, column: 21, scope: !524)
!524 = distinct !DILexicalBlock(scope: !519, file: !2, line: 190, column: 22)
!525 = !DILocation(line: 191, column: 24, scope: !524)
!526 = !DILocation(line: 191, column: 29, scope: !524)
!527 = !DILocation(line: 191, column: 13, scope: !524)
!528 = !DILocation(line: 192, column: 13, scope: !524)
!529 = !DILocation(line: 195, column: 17, scope: !471)
!530 = !DILocation(line: 195, column: 20, scope: !471)
!531 = !DILocation(line: 195, column: 25, scope: !471)
!532 = !DILocation(line: 195, column: 9, scope: !471)
!533 = !DILocation(line: 198, column: 26, scope: !471)
!534 = !DILocation(line: 198, column: 31, scope: !471)
!535 = !DILocation(line: 198, column: 56, scope: !471)
!536 = !DILocation(line: 198, column: 61, scope: !471)
!537 = !DILocation(line: 198, column: 9, scope: !471)
!538 = !DILocation(line: 199, column: 16, scope: !471)
!539 = !DILocation(line: 199, column: 13, scope: !471)
!540 = !DILocation(line: 200, column: 16, scope: !471)
!541 = !DILocation(line: 200, column: 13, scope: !471)
!542 = !DILocation(line: 201, column: 5, scope: !472)
!543 = !DILocation(line: 201, column: 5, scope: !471)
!544 = !DILocation(line: 203, column: 5, scope: !459)
!545 = !DILocation(line: 203, column: 12, scope: !459)
!546 = !DILocation(line: 203, column: 16, scope: !459)
!547 = !DILocation(line: 204, column: 17, scope: !548)
!548 = distinct !DILexicalBlock(scope: !459, file: !2, line: 203, column: 23)
!549 = !DILocation(line: 204, column: 22, scope: !548)
!550 = !DILocation(line: 204, column: 9, scope: !548)
!551 = !DILocation(line: 204, column: 26, scope: !548)
!552 = !DILocation(line: 206, column: 26, scope: !548)
!553 = !DILocation(line: 206, column: 31, scope: !548)
!554 = !DILocation(line: 206, column: 56, scope: !548)
!555 = !DILocation(line: 206, column: 61, scope: !548)
!556 = !DILocation(line: 206, column: 9, scope: !548)
!557 = !DILocation(line: 207, column: 13, scope: !548)
!558 = !DILocation(line: 208, column: 13, scope: !548)
!559 = distinct !{!559, !544, !560, !561}
!560 = !DILocation(line: 209, column: 5, scope: !459)
!561 = !{!"llvm.loop.mustprogress"}
!562 = !DILocation(line: 211, column: 13, scope: !459)
!563 = !DILocation(line: 211, column: 18, scope: !459)
!564 = !DILocation(line: 211, column: 5, scope: !459)
!565 = !DILocation(line: 211, column: 22, scope: !459)
!566 = !DILocation(line: 211, column: 27, scope: !459)
!567 = !DILocation(line: 212, column: 1, scope: !459)
!568 = distinct !DISubprogram(name: "cmsMD5_Transform", scope: !2, file: !2, line: 68, type: !569, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !571)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !271, !271}
!571 = !{!572, !573, !574, !575, !576, !577}
!572 = !DILocalVariable(name: "buf", arg: 1, scope: !568, file: !2, line: 68, type: !271)
!573 = !DILocalVariable(name: "in", arg: 2, scope: !568, file: !2, line: 68, type: !271)
!574 = !DILocalVariable(name: "a", scope: !568, file: !2, line: 70, type: !194)
!575 = !DILocalVariable(name: "b", scope: !568, file: !2, line: 70, type: !194)
!576 = !DILocalVariable(name: "c", scope: !568, file: !2, line: 70, type: !194)
!577 = !DILocalVariable(name: "d", scope: !568, file: !2, line: 70, type: !194)
!578 = !DILocation(line: 68, column: 39, scope: !568)
!579 = !DILocation(line: 68, column: 63, scope: !568)
!580 = !DILocation(line: 70, column: 5, scope: !568)
!581 = !DILocation(line: 70, column: 33, scope: !568)
!582 = !DILocation(line: 70, column: 36, scope: !568)
!583 = !DILocation(line: 70, column: 39, scope: !568)
!584 = !DILocation(line: 70, column: 42, scope: !568)
!585 = !DILocation(line: 72, column: 9, scope: !568)
!586 = !DILocation(line: 72, column: 7, scope: !568)
!587 = !DILocation(line: 73, column: 9, scope: !568)
!588 = !DILocation(line: 73, column: 7, scope: !568)
!589 = !DILocation(line: 74, column: 9, scope: !568)
!590 = !DILocation(line: 74, column: 7, scope: !568)
!591 = !DILocation(line: 75, column: 9, scope: !568)
!592 = !DILocation(line: 75, column: 7, scope: !568)
!593 = !DILocation(line: 77, column: 5, scope: !568)
!594 = !DILocation(line: 78, column: 5, scope: !568)
!595 = !DILocation(line: 79, column: 5, scope: !568)
!596 = !DILocation(line: 80, column: 5, scope: !568)
!597 = !DILocation(line: 81, column: 5, scope: !568)
!598 = !DILocation(line: 82, column: 5, scope: !568)
!599 = !DILocation(line: 83, column: 5, scope: !568)
!600 = !DILocation(line: 84, column: 5, scope: !568)
!601 = !DILocation(line: 85, column: 5, scope: !568)
!602 = !DILocation(line: 86, column: 5, scope: !568)
!603 = !DILocation(line: 87, column: 5, scope: !568)
!604 = !DILocation(line: 88, column: 5, scope: !568)
!605 = !DILocation(line: 89, column: 5, scope: !568)
!606 = !DILocation(line: 90, column: 5, scope: !568)
!607 = !DILocation(line: 91, column: 5, scope: !568)
!608 = !DILocation(line: 92, column: 5, scope: !568)
!609 = !DILocation(line: 94, column: 5, scope: !568)
!610 = !DILocation(line: 95, column: 5, scope: !568)
!611 = !DILocation(line: 96, column: 5, scope: !568)
!612 = !DILocation(line: 97, column: 5, scope: !568)
!613 = !DILocation(line: 98, column: 5, scope: !568)
!614 = !DILocation(line: 99, column: 5, scope: !568)
!615 = !DILocation(line: 100, column: 5, scope: !568)
!616 = !DILocation(line: 101, column: 5, scope: !568)
!617 = !DILocation(line: 102, column: 5, scope: !568)
!618 = !DILocation(line: 103, column: 5, scope: !568)
!619 = !DILocation(line: 104, column: 5, scope: !568)
!620 = !DILocation(line: 105, column: 5, scope: !568)
!621 = !DILocation(line: 106, column: 5, scope: !568)
!622 = !DILocation(line: 107, column: 5, scope: !568)
!623 = !DILocation(line: 108, column: 5, scope: !568)
!624 = !DILocation(line: 109, column: 5, scope: !568)
!625 = !DILocation(line: 111, column: 5, scope: !568)
!626 = !DILocation(line: 112, column: 5, scope: !568)
!627 = !DILocation(line: 113, column: 5, scope: !568)
!628 = !DILocation(line: 114, column: 5, scope: !568)
!629 = !DILocation(line: 115, column: 5, scope: !568)
!630 = !DILocation(line: 116, column: 5, scope: !568)
!631 = !DILocation(line: 117, column: 5, scope: !568)
!632 = !DILocation(line: 118, column: 5, scope: !568)
!633 = !DILocation(line: 119, column: 5, scope: !568)
!634 = !DILocation(line: 120, column: 5, scope: !568)
!635 = !DILocation(line: 121, column: 5, scope: !568)
!636 = !DILocation(line: 122, column: 5, scope: !568)
!637 = !DILocation(line: 123, column: 5, scope: !568)
!638 = !DILocation(line: 124, column: 5, scope: !568)
!639 = !DILocation(line: 125, column: 5, scope: !568)
!640 = !DILocation(line: 126, column: 5, scope: !568)
!641 = !DILocation(line: 128, column: 5, scope: !568)
!642 = !DILocation(line: 129, column: 5, scope: !568)
!643 = !DILocation(line: 130, column: 5, scope: !568)
!644 = !DILocation(line: 131, column: 5, scope: !568)
!645 = !DILocation(line: 132, column: 5, scope: !568)
!646 = !DILocation(line: 133, column: 5, scope: !568)
!647 = !DILocation(line: 134, column: 5, scope: !568)
!648 = !DILocation(line: 135, column: 5, scope: !568)
!649 = !DILocation(line: 136, column: 5, scope: !568)
!650 = !DILocation(line: 137, column: 5, scope: !568)
!651 = !DILocation(line: 138, column: 5, scope: !568)
!652 = !DILocation(line: 139, column: 5, scope: !568)
!653 = !DILocation(line: 140, column: 5, scope: !568)
!654 = !DILocation(line: 141, column: 5, scope: !568)
!655 = !DILocation(line: 142, column: 5, scope: !568)
!656 = !DILocation(line: 143, column: 5, scope: !568)
!657 = !DILocation(line: 145, column: 15, scope: !568)
!658 = !DILocation(line: 145, column: 5, scope: !568)
!659 = !DILocation(line: 145, column: 12, scope: !568)
!660 = !DILocation(line: 146, column: 15, scope: !568)
!661 = !DILocation(line: 146, column: 5, scope: !568)
!662 = !DILocation(line: 146, column: 12, scope: !568)
!663 = !DILocation(line: 147, column: 15, scope: !568)
!664 = !DILocation(line: 147, column: 5, scope: !568)
!665 = !DILocation(line: 147, column: 12, scope: !568)
!666 = !DILocation(line: 148, column: 15, scope: !568)
!667 = !DILocation(line: 148, column: 5, scope: !568)
!668 = !DILocation(line: 148, column: 12, scope: !568)
!669 = !DILocation(line: 149, column: 1, scope: !568)
!670 = distinct !DISubprogram(name: "cmsMD5finish", scope: !2, file: !2, line: 215, type: !671, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !674)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !673, !270}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!674 = !{!675, !676, !677, !678, !679}
!675 = !DILocalVariable(name: "ProfileID", arg: 1, scope: !670, file: !2, line: 215, type: !673)
!676 = !DILocalVariable(name: "Handle", arg: 2, scope: !670, file: !2, line: 215, type: !270)
!677 = !DILocalVariable(name: "ctx", scope: !670, file: !2, line: 217, type: !188)
!678 = !DILocalVariable(name: "count", scope: !670, file: !2, line: 218, type: !194)
!679 = !DILocalVariable(name: "p", scope: !670, file: !2, line: 219, type: !226)
!680 = !DILocation(line: 215, column: 43, scope: !670)
!681 = !DILocation(line: 215, column: 65, scope: !670)
!682 = !DILocation(line: 217, column: 5, scope: !670)
!683 = !DILocation(line: 217, column: 14, scope: !670)
!684 = !DILocation(line: 217, column: 31, scope: !670)
!685 = !DILocation(line: 218, column: 5, scope: !670)
!686 = !DILocation(line: 218, column: 21, scope: !670)
!687 = !DILocation(line: 219, column: 5, scope: !670)
!688 = !DILocation(line: 219, column: 21, scope: !670)
!689 = !DILocation(line: 221, column: 14, scope: !670)
!690 = !DILocation(line: 221, column: 19, scope: !670)
!691 = !DILocation(line: 221, column: 27, scope: !670)
!692 = !DILocation(line: 221, column: 33, scope: !670)
!693 = !DILocation(line: 221, column: 11, scope: !670)
!694 = !DILocation(line: 223, column: 9, scope: !670)
!695 = !DILocation(line: 223, column: 14, scope: !670)
!696 = !DILocation(line: 223, column: 19, scope: !670)
!697 = !DILocation(line: 223, column: 17, scope: !670)
!698 = !DILocation(line: 223, column: 7, scope: !670)
!699 = !DILocation(line: 224, column: 7, scope: !670)
!700 = !DILocation(line: 224, column: 10, scope: !670)
!701 = !{!417, !417, i64 0}
!702 = !DILocation(line: 226, column: 22, scope: !670)
!703 = !DILocation(line: 226, column: 20, scope: !670)
!704 = !DILocation(line: 226, column: 11, scope: !670)
!705 = !DILocation(line: 228, column: 9, scope: !706)
!706 = distinct !DILexicalBlock(scope: !670, file: !2, line: 228, column: 9)
!707 = !DILocation(line: 228, column: 15, scope: !706)
!708 = !DILocation(line: 228, column: 9, scope: !670)
!709 = !DILocation(line: 230, column: 16, scope: !710)
!710 = distinct !DILexicalBlock(scope: !706, file: !2, line: 228, column: 20)
!711 = !DILocation(line: 230, column: 22, scope: !710)
!712 = !DILocation(line: 230, column: 9, scope: !710)
!713 = !DILocation(line: 232, column: 26, scope: !710)
!714 = !DILocation(line: 232, column: 31, scope: !710)
!715 = !DILocation(line: 232, column: 56, scope: !710)
!716 = !DILocation(line: 232, column: 61, scope: !710)
!717 = !DILocation(line: 232, column: 9, scope: !710)
!718 = !DILocation(line: 234, column: 16, scope: !710)
!719 = !DILocation(line: 234, column: 21, scope: !710)
!720 = !DILocation(line: 234, column: 9, scope: !710)
!721 = !DILocation(line: 235, column: 5, scope: !710)
!722 = !DILocation(line: 236, column: 16, scope: !723)
!723 = distinct !DILexicalBlock(scope: !706, file: !2, line: 235, column: 12)
!724 = !DILocation(line: 236, column: 22, scope: !723)
!725 = !DILocation(line: 236, column: 28, scope: !723)
!726 = !DILocation(line: 236, column: 9, scope: !723)
!727 = !DILocation(line: 240, column: 41, scope: !670)
!728 = !DILocation(line: 240, column: 46, scope: !670)
!729 = !DILocation(line: 240, column: 26, scope: !670)
!730 = !DILocation(line: 240, column: 31, scope: !670)
!731 = !DILocation(line: 240, column: 5, scope: !670)
!732 = !DILocation(line: 240, column: 39, scope: !670)
!733 = !DILocation(line: 241, column: 41, scope: !670)
!734 = !DILocation(line: 241, column: 46, scope: !670)
!735 = !DILocation(line: 241, column: 26, scope: !670)
!736 = !DILocation(line: 241, column: 31, scope: !670)
!737 = !DILocation(line: 241, column: 5, scope: !670)
!738 = !DILocation(line: 241, column: 39, scope: !670)
!739 = !DILocation(line: 243, column: 22, scope: !670)
!740 = !DILocation(line: 243, column: 27, scope: !670)
!741 = !DILocation(line: 243, column: 52, scope: !670)
!742 = !DILocation(line: 243, column: 57, scope: !670)
!743 = !DILocation(line: 243, column: 5, scope: !670)
!744 = !DILocation(line: 246, column: 13, scope: !670)
!745 = !DILocation(line: 246, column: 5, scope: !670)
!746 = !DILocation(line: 246, column: 30, scope: !670)
!747 = !DILocation(line: 246, column: 35, scope: !670)
!748 = !DILocation(line: 248, column: 14, scope: !670)
!749 = !DILocation(line: 248, column: 20, scope: !670)
!750 = !DILocation(line: 248, column: 31, scope: !670)
!751 = !DILocation(line: 248, column: 5, scope: !670)
!752 = !DILocation(line: 249, column: 1, scope: !670)
!753 = !DISubprogram(name: "_cmsFree", scope: !242, file: !242, line: 113, type: !251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!754 = distinct !DISubprogram(name: "cmsMD5computeID", scope: !2, file: !2, line: 257, type: !755, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !758)
!755 = !DISubroutineType(types: !756)
!756 = !{!298, !757}
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmsHPROFILE", file: !21, line: 661, baseType: !233)
!758 = !{!759, !760, !761, !762, !763, !764, !765, !766}
!759 = !DILocalVariable(name: "hProfile", arg: 1, scope: !754, file: !2, line: 257, type: !757)
!760 = !DILocalVariable(name: "ContextID", scope: !754, file: !2, line: 259, type: !208)
!761 = !DILocalVariable(name: "BytesNeeded", scope: !754, file: !2, line: 260, type: !194)
!762 = !DILocalVariable(name: "Mem", scope: !754, file: !2, line: 261, type: !226)
!763 = !DILocalVariable(name: "MD5", scope: !754, file: !2, line: 262, type: !270)
!764 = !DILocalVariable(name: "Icc", scope: !754, file: !2, line: 263, type: !272)
!765 = !DILocalVariable(name: "Keep", scope: !754, file: !2, line: 264, type: !273)
!766 = !DILabel(scope: !754, name: "Error", file: !2, line: 305)
!767 = !DILocation(line: 257, column: 47, scope: !754)
!768 = !DILocation(line: 259, column: 5, scope: !754)
!769 = !DILocation(line: 259, column: 18, scope: !754)
!770 = !DILocation(line: 260, column: 5, scope: !754)
!771 = !DILocation(line: 260, column: 21, scope: !754)
!772 = !DILocation(line: 261, column: 5, scope: !754)
!773 = !DILocation(line: 261, column: 21, scope: !754)
!774 = !DILocation(line: 262, column: 5, scope: !754)
!775 = !DILocation(line: 262, column: 16, scope: !754)
!776 = !DILocation(line: 263, column: 5, scope: !754)
!777 = !DILocation(line: 263, column: 21, scope: !754)
!778 = !DILocation(line: 263, column: 45, scope: !754)
!779 = !DILocation(line: 264, column: 5, scope: !754)
!780 = !DILocation(line: 264, column: 20, scope: !754)
!781 = !DILocation(line: 266, column: 5, scope: !782)
!782 = distinct !DILexicalBlock(scope: !783, file: !2, line: 266, column: 5)
!783 = distinct !DILexicalBlock(scope: !754, file: !2, line: 266, column: 5)
!784 = !DILocation(line: 266, column: 5, scope: !783)
!785 = !DILocation(line: 268, column: 40, scope: !754)
!786 = !DILocation(line: 268, column: 17, scope: !754)
!787 = !DILocation(line: 268, column: 15, scope: !754)
!788 = !DILocation(line: 271, column: 20, scope: !754)
!789 = !DILocation(line: 271, column: 5, scope: !754)
!790 = !DILocation(line: 274, column: 13, scope: !754)
!791 = !DILocation(line: 274, column: 19, scope: !754)
!792 = !DILocation(line: 274, column: 5, scope: !754)
!793 = !DILocation(line: 275, column: 5, scope: !754)
!794 = !DILocation(line: 275, column: 11, scope: !754)
!795 = !DILocation(line: 275, column: 27, scope: !754)
!796 = !{!797, !439, i64 88}
!797 = !{!"_cms_iccprofile_struct", !416, i64 0, !416, i64 8, !798, i64 16, !439, i64 72, !417, i64 76, !417, i64 80, !417, i64 84, !439, i64 88, !439, i64 92, !439, i64 96, !439, i64 100, !799, i64 104, !439, i64 112, !417, i64 116, !439, i64 132, !417, i64 136, !417, i64 536, !417, i64 936, !417, i64 1336, !417, i64 1736, !417, i64 2136, !417, i64 2936, !439, i64 3736, !416, i64 3744}
!798 = !{!"tm", !439, i64 0, !439, i64 4, !439, i64 8, !439, i64 12, !439, i64 16, !439, i64 20, !439, i64 24, !439, i64 28, !439, i64 32, !799, i64 40, !416, i64 48}
!799 = !{!"long", !417, i64 0}
!800 = !DILocation(line: 276, column: 13, scope: !754)
!801 = !DILocation(line: 276, column: 19, scope: !754)
!802 = !DILocation(line: 276, column: 5, scope: !754)
!803 = !DILocation(line: 279, column: 30, scope: !804)
!804 = distinct !DILexicalBlock(scope: !754, file: !2, line: 279, column: 9)
!805 = !DILocation(line: 279, column: 10, scope: !804)
!806 = !DILocation(line: 279, column: 9, scope: !754)
!807 = !DILocation(line: 279, column: 61, scope: !804)
!808 = !DILocation(line: 282, column: 40, scope: !754)
!809 = !DILocation(line: 282, column: 51, scope: !754)
!810 = !DILocation(line: 282, column: 29, scope: !754)
!811 = !DILocation(line: 282, column: 9, scope: !754)
!812 = !DILocation(line: 283, column: 9, scope: !813)
!813 = distinct !DILexicalBlock(scope: !754, file: !2, line: 283, column: 9)
!814 = !DILocation(line: 283, column: 13, scope: !813)
!815 = !DILocation(line: 283, column: 9, scope: !754)
!816 = !DILocation(line: 283, column: 22, scope: !813)
!817 = !DILocation(line: 286, column: 30, scope: !818)
!818 = distinct !DILexicalBlock(scope: !754, file: !2, line: 286, column: 9)
!819 = !DILocation(line: 286, column: 40, scope: !818)
!820 = !DILocation(line: 286, column: 10, scope: !818)
!821 = !DILocation(line: 286, column: 9, scope: !754)
!822 = !DILocation(line: 286, column: 60, scope: !818)
!823 = !DILocation(line: 289, column: 23, scope: !754)
!824 = !DILocation(line: 289, column: 11, scope: !754)
!825 = !DILocation(line: 289, column: 9, scope: !754)
!826 = !DILocation(line: 290, column: 9, scope: !827)
!827 = distinct !DILexicalBlock(scope: !754, file: !2, line: 290, column: 9)
!828 = !DILocation(line: 290, column: 13, scope: !827)
!829 = !DILocation(line: 290, column: 9, scope: !754)
!830 = !DILocation(line: 290, column: 22, scope: !827)
!831 = !DILocation(line: 293, column: 15, scope: !754)
!832 = !DILocation(line: 293, column: 20, scope: !754)
!833 = !DILocation(line: 293, column: 25, scope: !754)
!834 = !DILocation(line: 293, column: 5, scope: !754)
!835 = !DILocation(line: 296, column: 14, scope: !754)
!836 = !DILocation(line: 296, column: 25, scope: !754)
!837 = !DILocation(line: 296, column: 5, scope: !754)
!838 = !DILocation(line: 299, column: 13, scope: !754)
!839 = !DILocation(line: 299, column: 5, scope: !754)
!840 = !DILocation(line: 302, column: 19, scope: !754)
!841 = !DILocation(line: 302, column: 25, scope: !754)
!842 = !DILocation(line: 302, column: 37, scope: !754)
!843 = !DILocation(line: 302, column: 5, scope: !754)
!844 = !DILocation(line: 303, column: 5, scope: !754)
!845 = !DILocation(line: 305, column: 1, scope: !754)
!846 = !DILocation(line: 309, column: 9, scope: !847)
!847 = distinct !DILexicalBlock(scope: !754, file: !2, line: 309, column: 9)
!848 = !DILocation(line: 309, column: 13, scope: !847)
!849 = !DILocation(line: 309, column: 9, scope: !754)
!850 = !DILocation(line: 309, column: 31, scope: !847)
!851 = !DILocation(line: 309, column: 42, scope: !847)
!852 = !DILocation(line: 309, column: 22, scope: !847)
!853 = !DILocation(line: 310, column: 13, scope: !754)
!854 = !DILocation(line: 310, column: 5, scope: !754)
!855 = !DILocation(line: 311, column: 5, scope: !754)
!856 = !DILocation(line: 312, column: 1, scope: !754)
!857 = !DISubprogram(name: "__assert_fail", scope: !858, file: !858, line: 69, type: !859, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!858 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!859 = !DISubroutineType(types: !860)
!860 = !{null, !329, !329, !22, !329}
!861 = !DISubprogram(name: "cmsGetProfileContextID", scope: !21, file: !21, line: 1458, type: !862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!862 = !DISubroutineType(types: !863)
!863 = !{!208, !757}
!864 = !DISubprogram(name: "cmsSaveProfileToMem", scope: !21, file: !21, line: 1575, type: !865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!865 = !DISubroutineType(types: !866)
!866 = !{!298, !757, !233, !271}
!867 = !DISubprogram(name: "_cmsMalloc", scope: !242, file: !242, line: 109, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)

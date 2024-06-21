; ModuleID = 'samples/846.bc'
source_filename = "syst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_t = type { ptr, i32, i32, i32, i32 }
%struct.perf_event_desc_t = type { %struct.perf_event_attr, [3 x i64], [3 x i64], ptr, i64, ptr, i64, i32, i32, i32, i32, i32, ptr }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon, i64, i64, i64, %union.anon.0, i32, %union.anon.1, %union.anon.2, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i64 }

@options = internal global %struct.options_t zeroinitializer, align 8, !dbg !0
@all_fds = internal global ptr null, align 8, !dbg !314
@num_fds = internal global ptr null, align 8, !dbg !425
@.str = private unnamed_addr constant [21 x i8] c"cannot setup events\0A\00", align 1, !dbg !247
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot attach event to CPU%d %s\00", align 1, !dbg !252
@.str.2 = private unnamed_addr constant [46 x i8] c"<press CTRL-C to quit before %ds time limit>\0A\00", align 1, !dbg !257
@.str.3 = private unnamed_addr constant [39 x i8] c"cannot get number of online processors\00", align 1, !dbg !262
@.str.4 = private unnamed_addr constant [47 x i8] c"cannot allocate memory for internal structures\00", align 1, !dbg !267
@.str.5 = private unnamed_addr constant [24 x i8] c"cannot enable event %s\0A\00", align 1, !dbg !272
@.str.6 = private unnamed_addr constant [25 x i8] c"------------------------\00", align 1, !dbg !277
@.str.7 = private unnamed_addr constant [24 x i8] c"cannot read event %d:%d\00", align 1, !dbg !282
@.str.8 = private unnamed_addr constant [23 x i8] c"could not read event%d\00", align 1, !dbg !284
@.str.9 = private unnamed_addr constant [63 x i8] c"CPU%d val=%-20lu %-20lu raw=%lu ena=%lu run=%lu ratio=%.2f %s\0A\00", align 1, !dbg !289
@.str.10 = private unnamed_addr constant [10 x i8] c"hc:e:d:gx\00", align 1, !dbg !294
@optarg = external global ptr, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1, !dbg !299
@.str.12 = private unnamed_addr constant [20 x i8] c"cycles,instructions\00", align 1, !dbg !304
@.str.13 = private unnamed_addr constant [34 x i8] c"libpfm initialization failed: %s\0A\00", align 1, !dbg !309
@.str.14 = private unnamed_addr constant [62 x i8] c"WARNING: time_running = 0 = time_enabled, raw count not zero\0A\00", align 1, !dbg !428
@.str.15 = private unnamed_addr constant [38 x i8] c"WARNING: time_running > time_enabled\0A\00", align 1, !dbg !433
@.str.16 = private unnamed_addr constant [71 x i8] c"usage: syst [-c cpu] [-x] [-h] [-d delay] [-g] [-e event1,event2,...]\0A\00", align 1, !dbg !438

; Function Attrs: nounwind uwtable
define dso_local void @setup_cpu(i32 noundef %cpu) #0 !dbg !460 {
entry:
  %cpu.addr = alloca i32, align 4
  %fds = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4, !tbaa !468
  tail call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !464, metadata !DIExpression()), !dbg !472
  call void @llvm.lifetime.start.p0(i64 8, ptr %fds) #10, !dbg !473
  tail call void @llvm.dbg.declare(metadata ptr %fds, metadata !465, metadata !DIExpression()), !dbg !474
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !475
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !466, metadata !DIExpression()), !dbg !476
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !475
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !467, metadata !DIExpression()), !dbg !477
  %0 = load ptr, ptr @options, align 8, !dbg !478, !tbaa !479
  %1 = load ptr, ptr @all_fds, align 8, !dbg !482, !tbaa !483
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !484, !tbaa !468
  %idxprom = sext i32 %2 to i64, !dbg !482
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom, !dbg !482
  %3 = load ptr, ptr @num_fds, align 8, !dbg !485, !tbaa !483
  %4 = load i32, ptr %cpu.addr, align 4, !dbg !486, !tbaa !468
  %idxprom1 = sext i32 %4 to i64, !dbg !485
  %arrayidx2 = getelementptr inbounds i32, ptr %3, i64 %idxprom1, !dbg !485
  %call = call i32 @perf_setup_list_events(ptr noundef %0, ptr noundef %arrayidx, ptr noundef %arrayidx2), !dbg !487
  store i32 %call, ptr %ret, align 4, !dbg !488, !tbaa !468
  %5 = load i32, ptr %ret, align 4, !dbg !489, !tbaa !468
  %tobool = icmp ne i32 %5, 0, !dbg !489
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !491

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr @num_fds, align 8, !dbg !492, !tbaa !483
  %cmp = icmp eq ptr %6, null, !dbg !493
  br i1 %cmp, label %if.then, label %if.end, !dbg !494

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i32, ptr, ...) @errx(i32 noundef 1, ptr noundef @.str) #11, !dbg !495
  unreachable, !dbg !495

if.end:                                           ; preds = %lor.lhs.false
  %7 = load ptr, ptr @all_fds, align 8, !dbg !496, !tbaa !483
  %8 = load i32, ptr %cpu.addr, align 4, !dbg !497, !tbaa !468
  %idxprom3 = sext i32 %8 to i64, !dbg !496
  %arrayidx4 = getelementptr inbounds ptr, ptr %7, i64 %idxprom3, !dbg !496
  %9 = load ptr, ptr %arrayidx4, align 8, !dbg !496, !tbaa !483
  store ptr %9, ptr %fds, align 8, !dbg !498, !tbaa !483
  %10 = load ptr, ptr %fds, align 8, !dbg !499, !tbaa !483
  %arrayidx5 = getelementptr inbounds %struct.perf_event_desc_t, ptr %10, i64 0, !dbg !499
  %fd = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx5, i32 0, i32 8, !dbg !500
  store i32 -1, ptr %fd, align 4, !dbg !501, !tbaa !502
  store i32 0, ptr %i, align 4, !dbg !507, !tbaa !468
  br label %for.cond, !dbg !509

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, ptr %i, align 4, !dbg !510, !tbaa !468
  %12 = load ptr, ptr @num_fds, align 8, !dbg !512, !tbaa !483
  %13 = load i32, ptr %cpu.addr, align 4, !dbg !513, !tbaa !468
  %idxprom6 = sext i32 %13 to i64, !dbg !512
  %arrayidx7 = getelementptr inbounds i32, ptr %12, i64 %idxprom6, !dbg !512
  %14 = load i32, ptr %arrayidx7, align 4, !dbg !512, !tbaa !468
  %cmp8 = icmp slt i32 %11, %14, !dbg !514
  br i1 %cmp8, label %for.body, label %for.end, !dbg !515

for.body:                                         ; preds = %for.cond
  %15 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 4), align 4, !dbg !516, !tbaa !518
  %tobool9 = icmp ne i32 %15, 0, !dbg !519
  br i1 %tobool9, label %cond.true, label %cond.false, !dbg !519

cond.true:                                        ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !dbg !520, !tbaa !468
  %tobool10 = icmp ne i32 %16, 0, !dbg !521
  %lnot = xor i1 %tobool10, true, !dbg !521
  %lnot.ext = zext i1 %lnot to i32, !dbg !521
  br label %cond.end, !dbg !519

cond.false:                                       ; preds = %for.body
  br label %cond.end, !dbg !519

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %lnot.ext, %cond.true ], [ 1, %cond.false ], !dbg !519
  %conv = sext i32 %cond to i64, !dbg !519
  %17 = load ptr, ptr %fds, align 8, !dbg !522, !tbaa !483
  %18 = load i32, ptr %i, align 4, !dbg !523, !tbaa !468
  %idxprom11 = sext i32 %18 to i64, !dbg !522
  %arrayidx12 = getelementptr inbounds %struct.perf_event_desc_t, ptr %17, i64 %idxprom11, !dbg !522
  %hw = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx12, i32 0, i32 0, !dbg !524
  %disabled = getelementptr inbounds %struct.perf_event_attr, ptr %hw, i32 0, i32 6, !dbg !525
  %bf.load = load i64, ptr %disabled, align 8, !dbg !526
  %bf.value = and i64 %conv, 1, !dbg !526
  %bf.clear = and i64 %bf.load, -2, !dbg !526
  %bf.set = or i64 %bf.clear, %bf.value, !dbg !526
  store i64 %bf.set, ptr %disabled, align 8, !dbg !526
  %19 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 2), align 4, !dbg !527, !tbaa !529
  %tobool13 = icmp ne i32 %19, 0, !dbg !530
  br i1 %tobool13, label %land.lhs.true, label %if.end26, !dbg !531

land.lhs.true:                                    ; preds = %cond.end
  %20 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 4), align 4, !dbg !532, !tbaa !518
  %tobool14 = icmp ne i32 %20, 0, !dbg !533
  br i1 %tobool14, label %land.lhs.true15, label %lor.lhs.false17, !dbg !534

land.lhs.true15:                                  ; preds = %land.lhs.true
  %21 = load i32, ptr %i, align 4, !dbg !535, !tbaa !468
  %tobool16 = icmp ne i32 %21, 0, !dbg !535
  br i1 %tobool16, label %lor.lhs.false17, label %if.then19, !dbg !536

lor.lhs.false17:                                  ; preds = %land.lhs.true15, %land.lhs.true
  %22 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 4), align 4, !dbg !537, !tbaa !518
  %tobool18 = icmp ne i32 %22, 0, !dbg !538
  br i1 %tobool18, label %if.end26, label %if.then19, !dbg !539

if.then19:                                        ; preds = %lor.lhs.false17, %land.lhs.true15
  %23 = load ptr, ptr %fds, align 8, !dbg !540, !tbaa !483
  %24 = load i32, ptr %i, align 4, !dbg !541, !tbaa !468
  %idxprom20 = sext i32 %24 to i64, !dbg !540
  %arrayidx21 = getelementptr inbounds %struct.perf_event_desc_t, ptr %23, i64 %idxprom20, !dbg !540
  %hw22 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx21, i32 0, i32 0, !dbg !542
  %exclusive = getelementptr inbounds %struct.perf_event_attr, ptr %hw22, i32 0, i32 6, !dbg !543
  %bf.load23 = load i64, ptr %exclusive, align 8, !dbg !544
  %bf.clear24 = and i64 %bf.load23, -9, !dbg !544
  %bf.set25 = or i64 %bf.clear24, 8, !dbg !544
  store i64 %bf.set25, ptr %exclusive, align 8, !dbg !544
  br label %if.end26, !dbg !540

if.end26:                                         ; preds = %if.then19, %lor.lhs.false17, %cond.end
  %25 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 4), align 4, !dbg !545, !tbaa !518
  %tobool27 = icmp ne i32 %25, 0, !dbg !546
  br i1 %tobool27, label %cond.true28, label %cond.false32, !dbg !546

cond.true28:                                      ; preds = %if.end26
  %26 = load i32, ptr %i, align 4, !dbg !547, !tbaa !468
  %tobool29 = icmp ne i32 %26, 0, !dbg !548
  %lnot30 = xor i1 %tobool29, true, !dbg !548
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !548
  br label %cond.end33, !dbg !546

cond.false32:                                     ; preds = %if.end26
  br label %cond.end33, !dbg !546

cond.end33:                                       ; preds = %cond.false32, %cond.true28
  %cond34 = phi i32 [ %lnot.ext31, %cond.true28 ], [ 1, %cond.false32 ], !dbg !546
  %conv35 = sext i32 %cond34 to i64, !dbg !546
  %27 = load ptr, ptr %fds, align 8, !dbg !549, !tbaa !483
  %28 = load i32, ptr %i, align 4, !dbg !550, !tbaa !468
  %idxprom36 = sext i32 %28 to i64, !dbg !549
  %arrayidx37 = getelementptr inbounds %struct.perf_event_desc_t, ptr %27, i64 %idxprom36, !dbg !549
  %hw38 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx37, i32 0, i32 0, !dbg !551
  %disabled39 = getelementptr inbounds %struct.perf_event_attr, ptr %hw38, i32 0, i32 6, !dbg !552
  %bf.load40 = load i64, ptr %disabled39, align 8, !dbg !553
  %bf.value41 = and i64 %conv35, 1, !dbg !553
  %bf.clear42 = and i64 %bf.load40, -2, !dbg !553
  %bf.set43 = or i64 %bf.clear42, %bf.value41, !dbg !553
  store i64 %bf.set43, ptr %disabled39, align 8, !dbg !553
  %29 = load ptr, ptr %fds, align 8, !dbg !554, !tbaa !483
  %30 = load i32, ptr %i, align 4, !dbg !555, !tbaa !468
  %idxprom44 = sext i32 %30 to i64, !dbg !554
  %arrayidx45 = getelementptr inbounds %struct.perf_event_desc_t, ptr %29, i64 %idxprom44, !dbg !554
  %hw46 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx45, i32 0, i32 0, !dbg !556
  %read_format = getelementptr inbounds %struct.perf_event_attr, ptr %hw46, i32 0, i32 5, !dbg !557
  store i64 3, ptr %read_format, align 8, !dbg !558, !tbaa !559
  %31 = load ptr, ptr %fds, align 8, !dbg !560, !tbaa !483
  %32 = load i32, ptr %i, align 4, !dbg !561, !tbaa !468
  %idxprom47 = sext i32 %32 to i64, !dbg !560
  %arrayidx48 = getelementptr inbounds %struct.perf_event_desc_t, ptr %31, i64 %idxprom47, !dbg !560
  %hw49 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx48, i32 0, i32 0, !dbg !562
  %33 = load i32, ptr %cpu.addr, align 4, !dbg !563, !tbaa !468
  %34 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 4), align 4, !dbg !564, !tbaa !518
  %tobool50 = icmp ne i32 %34, 0, !dbg !565
  br i1 %tobool50, label %cond.true51, label %cond.false54, !dbg !565

cond.true51:                                      ; preds = %cond.end33
  %35 = load ptr, ptr %fds, align 8, !dbg !566, !tbaa !483
  %arrayidx52 = getelementptr inbounds %struct.perf_event_desc_t, ptr %35, i64 0, !dbg !566
  %fd53 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx52, i32 0, i32 8, !dbg !567
  %36 = load i32, ptr %fd53, align 4, !dbg !567, !tbaa !502
  br label %cond.end55, !dbg !565

cond.false54:                                     ; preds = %cond.end33
  br label %cond.end55, !dbg !565

cond.end55:                                       ; preds = %cond.false54, %cond.true51
  %cond56 = phi i32 [ %36, %cond.true51 ], [ -1, %cond.false54 ], !dbg !565
  %call57 = call i32 @perf_event_open(ptr noundef %hw49, i32 noundef -1, i32 noundef %33, i32 noundef %cond56, i64 noundef 0), !dbg !568
  %37 = load ptr, ptr %fds, align 8, !dbg !569, !tbaa !483
  %38 = load i32, ptr %i, align 4, !dbg !570, !tbaa !468
  %idxprom58 = sext i32 %38 to i64, !dbg !569
  %arrayidx59 = getelementptr inbounds %struct.perf_event_desc_t, ptr %37, i64 %idxprom58, !dbg !569
  %fd60 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx59, i32 0, i32 8, !dbg !571
  store i32 %call57, ptr %fd60, align 4, !dbg !572, !tbaa !502
  %39 = load ptr, ptr %fds, align 8, !dbg !573, !tbaa !483
  %40 = load i32, ptr %i, align 4, !dbg !575, !tbaa !468
  %idxprom61 = sext i32 %40 to i64, !dbg !573
  %arrayidx62 = getelementptr inbounds %struct.perf_event_desc_t, ptr %39, i64 %idxprom61, !dbg !573
  %fd63 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx62, i32 0, i32 8, !dbg !576
  %41 = load i32, ptr %fd63, align 4, !dbg !576, !tbaa !502
  %cmp64 = icmp eq i32 %41, -1, !dbg !577
  br i1 %cmp64, label %if.then66, label %if.end69, !dbg !578

if.then66:                                        ; preds = %cond.end55
  %42 = load i32, ptr %cpu.addr, align 4, !dbg !579, !tbaa !468
  %43 = load ptr, ptr %fds, align 8, !dbg !580, !tbaa !483
  %44 = load i32, ptr %i, align 4, !dbg !581, !tbaa !468
  %idxprom67 = sext i32 %44 to i64, !dbg !580
  %arrayidx68 = getelementptr inbounds %struct.perf_event_desc_t, ptr %43, i64 %idxprom67, !dbg !580
  %name = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx68, i32 0, i32 3, !dbg !582
  %45 = load ptr, ptr %name, align 8, !dbg !582, !tbaa !583
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef @.str.1, i32 noundef %42, ptr noundef %45) #11, !dbg !584
  unreachable, !dbg !584

if.end69:                                         ; preds = %cond.end55
  br label %for.inc, !dbg !585

for.inc:                                          ; preds = %if.end69
  %46 = load i32, ptr %i, align 4, !dbg !586, !tbaa !468
  %inc = add nsw i32 %46, 1, !dbg !586
  store i32 %inc, ptr %i, align 4, !dbg !586, !tbaa !468
  br label %for.cond, !dbg !587, !llvm.loop !588

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !591
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !591
  call void @llvm.lifetime.end.p0(i64 8, ptr %fds) #10, !dbg !591
  ret void, !dbg !591
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !592 i32 @perf_setup_list_events(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noreturn
declare !dbg !595 void @errx(i32 noundef, ptr noundef, ...) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @perf_event_open(ptr noundef %hw_event_uptr, i32 noundef %pid, i32 noundef %cpu, i32 noundef %group_fd, i64 noundef %flags) #4 !dbg !599 {
entry:
  %hw_event_uptr.addr = alloca ptr, align 8
  %pid.addr = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %group_fd.addr = alloca i32, align 4
  %flags.addr = alloca i64, align 8
  store ptr %hw_event_uptr, ptr %hw_event_uptr.addr, align 8, !tbaa !483
  tail call void @llvm.dbg.declare(metadata ptr %hw_event_uptr.addr, metadata !607, metadata !DIExpression()), !dbg !612
  store i32 %pid, ptr %pid.addr, align 4, !tbaa !468
  tail call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !608, metadata !DIExpression()), !dbg !613
  store i32 %cpu, ptr %cpu.addr, align 4, !tbaa !468
  tail call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !609, metadata !DIExpression()), !dbg !614
  store i32 %group_fd, ptr %group_fd.addr, align 4, !tbaa !468
  tail call void @llvm.dbg.declare(metadata ptr %group_fd.addr, metadata !610, metadata !DIExpression()), !dbg !615
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !616
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !611, metadata !DIExpression()), !dbg !617
  %0 = load ptr, ptr %hw_event_uptr.addr, align 8, !dbg !618, !tbaa !483
  %1 = load i32, ptr %pid.addr, align 4, !dbg !619, !tbaa !468
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !620, !tbaa !468
  %3 = load i32, ptr %group_fd.addr, align 4, !dbg !621, !tbaa !468
  %4 = load i64, ptr %flags.addr, align 8, !dbg !622, !tbaa !616
  %call = call i64 (i64, ...) @syscall(i64 noundef 298, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) #10, !dbg !623
  %conv = trunc i64 %call to i32, !dbg !623
  ret i32 %conv, !dbg !624
}

; Function Attrs: noreturn
declare !dbg !625 void @err(i32 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @measure() #0 !dbg !626 {
entry:
  %fds = alloca ptr, align 8
  %lret = alloca i64, align 8
  %c = alloca i32, align 4
  %cmin = alloca i32, align 4
  %cmax = alloca i32, align 4
  %ncpus = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %l = alloca i32, align 4
  %val = alloca i64, align 8
  %delta = alloca i64, align 8
  %ratio = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %fds) #10, !dbg !652
  tail call void @llvm.dbg.declare(metadata ptr %fds, metadata !630, metadata !DIExpression()), !dbg !653
  call void @llvm.lifetime.start.p0(i64 8, ptr %lret) #10, !dbg !654
  tail call void @llvm.dbg.declare(metadata ptr %lret, metadata !631, metadata !DIExpression()), !dbg !655
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #10, !dbg !656
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !633, metadata !DIExpression()), !dbg !657
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmin) #10, !dbg !656
  tail call void @llvm.dbg.declare(metadata ptr %cmin, metadata !634, metadata !DIExpression()), !dbg !658
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmax) #10, !dbg !656
  tail call void @llvm.dbg.declare(metadata ptr %cmax, metadata !635, metadata !DIExpression()), !dbg !659
  call void @llvm.lifetime.start.p0(i64 4, ptr %ncpus) #10, !dbg !656
  tail call void @llvm.dbg.declare(metadata ptr %ncpus, metadata !636, metadata !DIExpression()), !dbg !660
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !661
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !637, metadata !DIExpression()), !dbg !662
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !661
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !638, metadata !DIExpression()), !dbg !663
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #10, !dbg !661
  tail call void @llvm.dbg.declare(metadata ptr %l, metadata !639, metadata !DIExpression()), !dbg !664
  %0 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 1), align 8, !dbg !665, !tbaa !666
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %0), !dbg !667
  store i32 0, ptr %cmin, align 4, !dbg !668, !tbaa !468
  %call1 = call i64 @sysconf(i32 noundef 84) #10, !dbg !669
  store i64 %call1, ptr %lret, align 8, !dbg !670, !tbaa !616
  %1 = load i64, ptr %lret, align 8, !dbg !671, !tbaa !616
  %cmp = icmp slt i64 %1, 0, !dbg !673
  br i1 %cmp, label %if.then, label %if.end, !dbg !674

if.then:                                          ; preds = %entry
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef @.str.3) #11, !dbg !675
  unreachable, !dbg !675

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %lret, align 8, !dbg !676, !tbaa !616
  %conv = trunc i64 %2 to i32, !dbg !677
  store i32 %conv, ptr %cmax, align 4, !dbg !678, !tbaa !468
  %3 = load i32, ptr %cmax, align 4, !dbg !679, !tbaa !468
  store i32 %3, ptr %ncpus, align 4, !dbg !680, !tbaa !468
  %4 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 3), align 8, !dbg !681, !tbaa !683
  %cmp2 = icmp ne i32 %4, -1, !dbg !684
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !685

if.then4:                                         ; preds = %if.end
  %5 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 3), align 8, !dbg !686, !tbaa !683
  store i32 %5, ptr %cmin, align 4, !dbg !688, !tbaa !468
  %6 = load i32, ptr %cmin, align 4, !dbg !689, !tbaa !468
  %add = add nsw i32 %6, 1, !dbg !690
  store i32 %add, ptr %cmax, align 4, !dbg !691, !tbaa !468
  br label %if.end5, !dbg !692

if.end5:                                          ; preds = %if.then4, %if.end
  %7 = load i32, ptr %ncpus, align 4, !dbg !693, !tbaa !468
  %conv6 = sext i32 %7 to i64, !dbg !693
  %call7 = call noalias ptr @calloc(i64 noundef %conv6, i64 noundef 8) #12, !dbg !694
  store ptr %call7, ptr @all_fds, align 8, !dbg !695, !tbaa !483
  %8 = load i32, ptr %ncpus, align 4, !dbg !696, !tbaa !468
  %conv8 = sext i32 %8 to i64, !dbg !696
  %call9 = call noalias ptr @calloc(i64 noundef %conv8, i64 noundef 4) #12, !dbg !697
  store ptr %call9, ptr @num_fds, align 8, !dbg !698, !tbaa !483
  %9 = load ptr, ptr @all_fds, align 8, !dbg !699, !tbaa !483
  %tobool = icmp ne ptr %9, null, !dbg !699
  br i1 %tobool, label %lor.lhs.false, label %if.then11, !dbg !701

lor.lhs.false:                                    ; preds = %if.end5
  %10 = load ptr, ptr @num_fds, align 8, !dbg !702, !tbaa !483
  %tobool10 = icmp ne ptr %10, null, !dbg !702
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !703

if.then11:                                        ; preds = %lor.lhs.false, %if.end5
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef @.str.4) #11, !dbg !704
  unreachable, !dbg !704

if.end12:                                         ; preds = %lor.lhs.false
  %11 = load i32, ptr %cmin, align 4, !dbg !705, !tbaa !468
  store i32 %11, ptr %c, align 4, !dbg !707, !tbaa !468
  br label %for.cond, !dbg !708

for.cond:                                         ; preds = %for.inc, %if.end12
  %12 = load i32, ptr %c, align 4, !dbg !709, !tbaa !468
  %13 = load i32, ptr %cmax, align 4, !dbg !711, !tbaa !468
  %cmp13 = icmp slt i32 %12, %13, !dbg !712
  br i1 %cmp13, label %for.body, label %for.end, !dbg !713

for.body:                                         ; preds = %for.cond
  %14 = load i32, ptr %c, align 4, !dbg !714, !tbaa !468
  call void @setup_cpu(i32 noundef %14), !dbg !715
  br label %for.inc, !dbg !715

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %c, align 4, !dbg !716, !tbaa !468
  %inc = add nsw i32 %15, 1, !dbg !716
  store i32 %inc, ptr %c, align 4, !dbg !716, !tbaa !468
  br label %for.cond, !dbg !717, !llvm.loop !718

for.end:                                          ; preds = %for.cond
  %16 = load i32, ptr %cmin, align 4, !dbg !720, !tbaa !468
  store i32 %16, ptr %c, align 4, !dbg !722, !tbaa !468
  br label %for.cond15, !dbg !723

for.cond15:                                       ; preds = %for.inc42, %for.end
  %17 = load i32, ptr %c, align 4, !dbg !724, !tbaa !468
  %18 = load i32, ptr %cmax, align 4, !dbg !726, !tbaa !468
  %cmp16 = icmp slt i32 %17, %18, !dbg !727
  br i1 %cmp16, label %for.body18, label %for.end44, !dbg !728

for.body18:                                       ; preds = %for.cond15
  %19 = load ptr, ptr @all_fds, align 8, !dbg !729, !tbaa !483
  %20 = load i32, ptr %c, align 4, !dbg !731, !tbaa !468
  %idxprom = sext i32 %20 to i64, !dbg !729
  %arrayidx = getelementptr inbounds ptr, ptr %19, i64 %idxprom, !dbg !729
  %21 = load ptr, ptr %arrayidx, align 8, !dbg !729, !tbaa !483
  store ptr %21, ptr %fds, align 8, !dbg !732, !tbaa !483
  %22 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 4), align 4, !dbg !733, !tbaa !518
  %tobool19 = icmp ne i32 %22, 0, !dbg !735
  br i1 %tobool19, label %if.then20, label %if.else, !dbg !736

if.then20:                                        ; preds = %for.body18
  %23 = load ptr, ptr %fds, align 8, !dbg !737, !tbaa !483
  %arrayidx21 = getelementptr inbounds %struct.perf_event_desc_t, ptr %23, i64 0, !dbg !737
  %fd = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx21, i32 0, i32 8, !dbg !738
  %24 = load i32, ptr %fd, align 4, !dbg !738, !tbaa !502
  %call22 = call i32 (i32, i64, ...) @ioctl(i32 noundef %24, i64 noundef 9216, i32 noundef 0) #10, !dbg !739
  store i32 %call22, ptr %ret, align 4, !dbg !740, !tbaa !468
  br label %if.end41, !dbg !741

if.else:                                          ; preds = %for.body18
  store i32 0, ptr %i, align 4, !dbg !742, !tbaa !468
  br label %for.cond23, !dbg !744

for.cond23:                                       ; preds = %for.inc38, %if.else
  %25 = load i32, ptr %i, align 4, !dbg !745, !tbaa !468
  %26 = load ptr, ptr @num_fds, align 8, !dbg !747, !tbaa !483
  %27 = load i32, ptr %c, align 4, !dbg !748, !tbaa !468
  %idxprom24 = sext i32 %27 to i64, !dbg !747
  %arrayidx25 = getelementptr inbounds i32, ptr %26, i64 %idxprom24, !dbg !747
  %28 = load i32, ptr %arrayidx25, align 4, !dbg !747, !tbaa !468
  %cmp26 = icmp slt i32 %25, %28, !dbg !749
  br i1 %cmp26, label %for.body28, label %for.end40, !dbg !750

for.body28:                                       ; preds = %for.cond23
  %29 = load ptr, ptr %fds, align 8, !dbg !751, !tbaa !483
  %30 = load i32, ptr %i, align 4, !dbg !753, !tbaa !468
  %idxprom29 = sext i32 %30 to i64, !dbg !751
  %arrayidx30 = getelementptr inbounds %struct.perf_event_desc_t, ptr %29, i64 %idxprom29, !dbg !751
  %fd31 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx30, i32 0, i32 8, !dbg !754
  %31 = load i32, ptr %fd31, align 4, !dbg !754, !tbaa !502
  %call32 = call i32 (i32, i64, ...) @ioctl(i32 noundef %31, i64 noundef 9216, i32 noundef 0) #10, !dbg !755
  store i32 %call32, ptr %ret, align 4, !dbg !756, !tbaa !468
  %32 = load i32, ptr %ret, align 4, !dbg !757, !tbaa !468
  %tobool33 = icmp ne i32 %32, 0, !dbg !757
  br i1 %tobool33, label %if.then34, label %if.end37, !dbg !759

if.then34:                                        ; preds = %for.body28
  %33 = load ptr, ptr %fds, align 8, !dbg !760, !tbaa !483
  %34 = load i32, ptr %i, align 4, !dbg !761, !tbaa !468
  %idxprom35 = sext i32 %34 to i64, !dbg !760
  %arrayidx36 = getelementptr inbounds %struct.perf_event_desc_t, ptr %33, i64 %idxprom35, !dbg !760
  %name = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx36, i32 0, i32 3, !dbg !762
  %35 = load ptr, ptr %name, align 8, !dbg !762, !tbaa !583
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef @.str.5, ptr noundef %35) #11, !dbg !763
  unreachable, !dbg !763

if.end37:                                         ; preds = %for.body28
  br label %for.inc38, !dbg !764

for.inc38:                                        ; preds = %if.end37
  %36 = load i32, ptr %i, align 4, !dbg !765, !tbaa !468
  %inc39 = add nsw i32 %36, 1, !dbg !765
  store i32 %inc39, ptr %i, align 4, !dbg !765, !tbaa !468
  br label %for.cond23, !dbg !766, !llvm.loop !767

for.end40:                                        ; preds = %for.cond23
  br label %if.end41

if.end41:                                         ; preds = %for.end40, %if.then20
  br label %for.inc42, !dbg !769

for.inc42:                                        ; preds = %if.end41
  %37 = load i32, ptr %c, align 4, !dbg !770, !tbaa !468
  %inc43 = add nsw i32 %37, 1, !dbg !770
  store i32 %inc43, ptr %c, align 4, !dbg !770, !tbaa !468
  br label %for.cond15, !dbg !771, !llvm.loop !772

for.end44:                                        ; preds = %for.cond15
  store i32 0, ptr %l, align 4, !dbg !774, !tbaa !468
  br label %for.cond45, !dbg !775

for.cond45:                                       ; preds = %for.inc144, %for.end44
  %38 = load i32, ptr %l, align 4, !dbg !776, !tbaa !468
  %39 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 1), align 8, !dbg !777, !tbaa !666
  %cmp46 = icmp slt i32 %38, %39, !dbg !778
  br i1 %cmp46, label %for.body48, label %for.end146, !dbg !779

for.body48:                                       ; preds = %for.cond45
  %call49 = call i32 @sleep(i32 noundef 1), !dbg !780
  %call50 = call i32 @puts(ptr noundef @.str.6), !dbg !781
  %40 = load i32, ptr %cmin, align 4, !dbg !782, !tbaa !468
  store i32 %40, ptr %c, align 4, !dbg !783, !tbaa !468
  br label %for.cond51, !dbg !784

for.cond51:                                       ; preds = %for.inc141, %for.body48
  %41 = load i32, ptr %c, align 4, !dbg !785, !tbaa !468
  %42 = load i32, ptr %cmax, align 4, !dbg !786, !tbaa !468
  %cmp52 = icmp slt i32 %41, %42, !dbg !787
  br i1 %cmp52, label %for.body54, label %for.end143, !dbg !788

for.body54:                                       ; preds = %for.cond51
  %43 = load ptr, ptr @all_fds, align 8, !dbg !789, !tbaa !483
  %44 = load i32, ptr %c, align 4, !dbg !790, !tbaa !468
  %idxprom55 = sext i32 %44 to i64, !dbg !789
  %arrayidx56 = getelementptr inbounds ptr, ptr %43, i64 %idxprom55, !dbg !789
  %45 = load ptr, ptr %arrayidx56, align 8, !dbg !789, !tbaa !483
  store ptr %45, ptr %fds, align 8, !dbg !791, !tbaa !483
  store i32 0, ptr %i, align 4, !dbg !792, !tbaa !468
  br label %for.cond57, !dbg !793

for.cond57:                                       ; preds = %for.inc138, %for.body54
  %46 = load i32, ptr %i, align 4, !dbg !794, !tbaa !468
  %47 = load ptr, ptr @num_fds, align 8, !dbg !795, !tbaa !483
  %48 = load i32, ptr %c, align 4, !dbg !796, !tbaa !468
  %idxprom58 = sext i32 %48 to i64, !dbg !795
  %arrayidx59 = getelementptr inbounds i32, ptr %47, i64 %idxprom58, !dbg !795
  %49 = load i32, ptr %arrayidx59, align 4, !dbg !795, !tbaa !468
  %cmp60 = icmp slt i32 %46, %49, !dbg !797
  br i1 %cmp60, label %for.body62, label %for.end140, !dbg !798

for.body62:                                       ; preds = %for.cond57
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !799
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !640, metadata !DIExpression()), !dbg !800
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #10, !dbg !799
  tail call void @llvm.dbg.declare(metadata ptr %delta, metadata !650, metadata !DIExpression()), !dbg !801
  call void @llvm.lifetime.start.p0(i64 8, ptr %ratio) #10, !dbg !802
  tail call void @llvm.dbg.declare(metadata ptr %ratio, metadata !651, metadata !DIExpression()), !dbg !803
  %50 = load ptr, ptr %fds, align 8, !dbg !804, !tbaa !483
  %51 = load i32, ptr %i, align 4, !dbg !805, !tbaa !468
  %idxprom63 = sext i32 %51 to i64, !dbg !804
  %arrayidx64 = getelementptr inbounds %struct.perf_event_desc_t, ptr %50, i64 %idxprom63, !dbg !804
  %fd65 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx64, i32 0, i32 8, !dbg !806
  %52 = load i32, ptr %fd65, align 4, !dbg !806, !tbaa !502
  %53 = load ptr, ptr %fds, align 8, !dbg !807, !tbaa !483
  %54 = load i32, ptr %i, align 4, !dbg !808, !tbaa !468
  %idxprom66 = sext i32 %54 to i64, !dbg !807
  %arrayidx67 = getelementptr inbounds %struct.perf_event_desc_t, ptr %53, i64 %idxprom66, !dbg !807
  %values = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx67, i32 0, i32 1, !dbg !809
  %arraydecay = getelementptr inbounds [3 x i64], ptr %values, i64 0, i64 0, !dbg !807
  %call68 = call i64 @read(i32 noundef %52, ptr noundef %arraydecay, i64 noundef 24), !dbg !810
  %conv69 = trunc i64 %call68 to i32, !dbg !810
  store i32 %conv69, ptr %ret, align 4, !dbg !811, !tbaa !468
  %55 = load i32, ptr %ret, align 4, !dbg !812, !tbaa !468
  %conv70 = sext i32 %55 to i64, !dbg !812
  %cmp71 = icmp ne i64 %conv70, 24, !dbg !814
  br i1 %cmp71, label %if.then73, label %if.end79, !dbg !815

if.then73:                                        ; preds = %for.body62
  %56 = load i32, ptr %ret, align 4, !dbg !816, !tbaa !468
  %cmp74 = icmp eq i32 %56, -1, !dbg !819
  br i1 %cmp74, label %if.then76, label %if.else77, !dbg !820

if.then76:                                        ; preds = %if.then73
  %57 = load i32, ptr %i, align 4, !dbg !821, !tbaa !468
  %58 = load i32, ptr %ret, align 4, !dbg !822, !tbaa !468
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef @.str.7, i32 noundef %57, i32 noundef %58) #11, !dbg !823
  unreachable, !dbg !823

if.else77:                                        ; preds = %if.then73
  %59 = load i32, ptr %i, align 4, !dbg !824, !tbaa !468
  call void (ptr, ...) @warnx(ptr noundef @.str.8, i32 noundef %59), !dbg !825
  br label %if.end78

if.end78:                                         ; preds = %if.else77
  br label %if.end79, !dbg !826

if.end79:                                         ; preds = %if.end78, %for.body62
  %60 = load ptr, ptr %fds, align 8, !dbg !827, !tbaa !483
  %61 = load i32, ptr %i, align 4, !dbg !828, !tbaa !468
  %idxprom80 = sext i32 %61 to i64, !dbg !827
  %arrayidx81 = getelementptr inbounds %struct.perf_event_desc_t, ptr %60, i64 %idxprom80, !dbg !827
  %values82 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx81, i32 0, i32 1, !dbg !829
  %arraydecay83 = getelementptr inbounds [3 x i64], ptr %values82, i64 0, i64 0, !dbg !827
  %call84 = call i64 @perf_scale(ptr noundef %arraydecay83), !dbg !830
  store i64 %call84, ptr %val, align 8, !dbg !831, !tbaa !616
  %62 = load ptr, ptr %fds, align 8, !dbg !832, !tbaa !483
  %63 = load i32, ptr %i, align 4, !dbg !833, !tbaa !468
  %idxprom85 = sext i32 %63 to i64, !dbg !832
  %arrayidx86 = getelementptr inbounds %struct.perf_event_desc_t, ptr %62, i64 %idxprom85, !dbg !832
  %values87 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx86, i32 0, i32 1, !dbg !834
  %arraydecay88 = getelementptr inbounds [3 x i64], ptr %values87, i64 0, i64 0, !dbg !832
  %call89 = call double @perf_scale_ratio(ptr noundef %arraydecay88), !dbg !835
  store double %call89, ptr %ratio, align 8, !dbg !836, !tbaa !837
  %64 = load ptr, ptr %fds, align 8, !dbg !839, !tbaa !483
  %65 = load i32, ptr %i, align 4, !dbg !840, !tbaa !468
  %idxprom90 = sext i32 %65 to i64, !dbg !839
  %arrayidx91 = getelementptr inbounds %struct.perf_event_desc_t, ptr %64, i64 %idxprom90, !dbg !839
  %values92 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx91, i32 0, i32 1, !dbg !841
  %arraydecay93 = getelementptr inbounds [3 x i64], ptr %values92, i64 0, i64 0, !dbg !839
  %66 = load ptr, ptr %fds, align 8, !dbg !842, !tbaa !483
  %67 = load i32, ptr %i, align 4, !dbg !843, !tbaa !468
  %idxprom94 = sext i32 %67 to i64, !dbg !842
  %arrayidx95 = getelementptr inbounds %struct.perf_event_desc_t, ptr %66, i64 %idxprom94, !dbg !842
  %prev_values = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx95, i32 0, i32 2, !dbg !844
  %arraydecay96 = getelementptr inbounds [3 x i64], ptr %prev_values, i64 0, i64 0, !dbg !842
  %call97 = call i64 @perf_scale_delta(ptr noundef %arraydecay93, ptr noundef %arraydecay96), !dbg !845
  store i64 %call97, ptr %delta, align 8, !dbg !846, !tbaa !616
  %68 = load i32, ptr %c, align 4, !dbg !847, !tbaa !468
  %69 = load i64, ptr %val, align 8, !dbg !848, !tbaa !616
  %70 = load i64, ptr %delta, align 8, !dbg !849, !tbaa !616
  %71 = load ptr, ptr %fds, align 8, !dbg !850, !tbaa !483
  %72 = load i32, ptr %i, align 4, !dbg !851, !tbaa !468
  %idxprom98 = sext i32 %72 to i64, !dbg !850
  %arrayidx99 = getelementptr inbounds %struct.perf_event_desc_t, ptr %71, i64 %idxprom98, !dbg !850
  %values100 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx99, i32 0, i32 1, !dbg !852
  %arrayidx101 = getelementptr inbounds [3 x i64], ptr %values100, i64 0, i64 0, !dbg !850
  %73 = load i64, ptr %arrayidx101, align 8, !dbg !850, !tbaa !616
  %74 = load ptr, ptr %fds, align 8, !dbg !853, !tbaa !483
  %75 = load i32, ptr %i, align 4, !dbg !854, !tbaa !468
  %idxprom102 = sext i32 %75 to i64, !dbg !853
  %arrayidx103 = getelementptr inbounds %struct.perf_event_desc_t, ptr %74, i64 %idxprom102, !dbg !853
  %values104 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx103, i32 0, i32 1, !dbg !855
  %arrayidx105 = getelementptr inbounds [3 x i64], ptr %values104, i64 0, i64 1, !dbg !853
  %76 = load i64, ptr %arrayidx105, align 8, !dbg !853, !tbaa !616
  %77 = load ptr, ptr %fds, align 8, !dbg !856, !tbaa !483
  %78 = load i32, ptr %i, align 4, !dbg !857, !tbaa !468
  %idxprom106 = sext i32 %78 to i64, !dbg !856
  %arrayidx107 = getelementptr inbounds %struct.perf_event_desc_t, ptr %77, i64 %idxprom106, !dbg !856
  %values108 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx107, i32 0, i32 1, !dbg !858
  %arrayidx109 = getelementptr inbounds [3 x i64], ptr %values108, i64 0, i64 2, !dbg !856
  %79 = load i64, ptr %arrayidx109, align 8, !dbg !856, !tbaa !616
  %80 = load double, ptr %ratio, align 8, !dbg !859, !tbaa !837
  %81 = load ptr, ptr %fds, align 8, !dbg !860, !tbaa !483
  %82 = load i32, ptr %i, align 4, !dbg !861, !tbaa !468
  %idxprom110 = sext i32 %82 to i64, !dbg !860
  %arrayidx111 = getelementptr inbounds %struct.perf_event_desc_t, ptr %81, i64 %idxprom110, !dbg !860
  %name112 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx111, i32 0, i32 3, !dbg !862
  %83 = load ptr, ptr %name112, align 8, !dbg !862, !tbaa !583
  %call113 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %68, i64 noundef %69, i64 noundef %70, i64 noundef %73, i64 noundef %76, i64 noundef %79, double noundef %80, ptr noundef %83), !dbg !863
  %84 = load ptr, ptr %fds, align 8, !dbg !864, !tbaa !483
  %85 = load i32, ptr %i, align 4, !dbg !865, !tbaa !468
  %idxprom114 = sext i32 %85 to i64, !dbg !864
  %arrayidx115 = getelementptr inbounds %struct.perf_event_desc_t, ptr %84, i64 %idxprom114, !dbg !864
  %values116 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx115, i32 0, i32 1, !dbg !866
  %arrayidx117 = getelementptr inbounds [3 x i64], ptr %values116, i64 0, i64 0, !dbg !864
  %86 = load i64, ptr %arrayidx117, align 8, !dbg !864, !tbaa !616
  %87 = load ptr, ptr %fds, align 8, !dbg !867, !tbaa !483
  %88 = load i32, ptr %i, align 4, !dbg !868, !tbaa !468
  %idxprom118 = sext i32 %88 to i64, !dbg !867
  %arrayidx119 = getelementptr inbounds %struct.perf_event_desc_t, ptr %87, i64 %idxprom118, !dbg !867
  %prev_values120 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx119, i32 0, i32 2, !dbg !869
  %arrayidx121 = getelementptr inbounds [3 x i64], ptr %prev_values120, i64 0, i64 0, !dbg !867
  store i64 %86, ptr %arrayidx121, align 8, !dbg !870, !tbaa !616
  %89 = load ptr, ptr %fds, align 8, !dbg !871, !tbaa !483
  %90 = load i32, ptr %i, align 4, !dbg !872, !tbaa !468
  %idxprom122 = sext i32 %90 to i64, !dbg !871
  %arrayidx123 = getelementptr inbounds %struct.perf_event_desc_t, ptr %89, i64 %idxprom122, !dbg !871
  %values124 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx123, i32 0, i32 1, !dbg !873
  %arrayidx125 = getelementptr inbounds [3 x i64], ptr %values124, i64 0, i64 1, !dbg !871
  %91 = load i64, ptr %arrayidx125, align 8, !dbg !871, !tbaa !616
  %92 = load ptr, ptr %fds, align 8, !dbg !874, !tbaa !483
  %93 = load i32, ptr %i, align 4, !dbg !875, !tbaa !468
  %idxprom126 = sext i32 %93 to i64, !dbg !874
  %arrayidx127 = getelementptr inbounds %struct.perf_event_desc_t, ptr %92, i64 %idxprom126, !dbg !874
  %prev_values128 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx127, i32 0, i32 2, !dbg !876
  %arrayidx129 = getelementptr inbounds [3 x i64], ptr %prev_values128, i64 0, i64 1, !dbg !874
  store i64 %91, ptr %arrayidx129, align 8, !dbg !877, !tbaa !616
  %94 = load ptr, ptr %fds, align 8, !dbg !878, !tbaa !483
  %95 = load i32, ptr %i, align 4, !dbg !879, !tbaa !468
  %idxprom130 = sext i32 %95 to i64, !dbg !878
  %arrayidx131 = getelementptr inbounds %struct.perf_event_desc_t, ptr %94, i64 %idxprom130, !dbg !878
  %values132 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx131, i32 0, i32 1, !dbg !880
  %arrayidx133 = getelementptr inbounds [3 x i64], ptr %values132, i64 0, i64 2, !dbg !878
  %96 = load i64, ptr %arrayidx133, align 8, !dbg !878, !tbaa !616
  %97 = load ptr, ptr %fds, align 8, !dbg !881, !tbaa !483
  %98 = load i32, ptr %i, align 4, !dbg !882, !tbaa !468
  %idxprom134 = sext i32 %98 to i64, !dbg !881
  %arrayidx135 = getelementptr inbounds %struct.perf_event_desc_t, ptr %97, i64 %idxprom134, !dbg !881
  %prev_values136 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx135, i32 0, i32 2, !dbg !883
  %arrayidx137 = getelementptr inbounds [3 x i64], ptr %prev_values136, i64 0, i64 2, !dbg !881
  store i64 %96, ptr %arrayidx137, align 8, !dbg !884, !tbaa !616
  call void @llvm.lifetime.end.p0(i64 8, ptr %ratio) #10, !dbg !885
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #10, !dbg !885
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !885
  br label %for.inc138, !dbg !886

for.inc138:                                       ; preds = %if.end79
  %99 = load i32, ptr %i, align 4, !dbg !887, !tbaa !468
  %inc139 = add nsw i32 %99, 1, !dbg !887
  store i32 %inc139, ptr %i, align 4, !dbg !887, !tbaa !468
  br label %for.cond57, !dbg !888, !llvm.loop !889

for.end140:                                       ; preds = %for.cond57
  br label %for.inc141, !dbg !891

for.inc141:                                       ; preds = %for.end140
  %100 = load i32, ptr %c, align 4, !dbg !892, !tbaa !468
  %inc142 = add nsw i32 %100, 1, !dbg !892
  store i32 %inc142, ptr %c, align 4, !dbg !892, !tbaa !468
  br label %for.cond51, !dbg !893, !llvm.loop !894

for.end143:                                       ; preds = %for.cond51
  br label %for.inc144, !dbg !896

for.inc144:                                       ; preds = %for.end143
  %101 = load i32, ptr %l, align 4, !dbg !897, !tbaa !468
  %inc145 = add nsw i32 %101, 1, !dbg !897
  store i32 %inc145, ptr %l, align 4, !dbg !897, !tbaa !468
  br label %for.cond45, !dbg !898, !llvm.loop !899

for.end146:                                       ; preds = %for.cond45
  %102 = load i32, ptr %cmin, align 4, !dbg !901, !tbaa !468
  store i32 %102, ptr %c, align 4, !dbg !903, !tbaa !468
  br label %for.cond147, !dbg !904

for.cond147:                                      ; preds = %for.inc168, %for.end146
  %103 = load i32, ptr %c, align 4, !dbg !905, !tbaa !468
  %104 = load i32, ptr %cmax, align 4, !dbg !907, !tbaa !468
  %cmp148 = icmp slt i32 %103, %104, !dbg !908
  br i1 %cmp148, label %for.body150, label %for.end170, !dbg !909

for.body150:                                      ; preds = %for.cond147
  %105 = load ptr, ptr @all_fds, align 8, !dbg !910, !tbaa !483
  %106 = load i32, ptr %c, align 4, !dbg !912, !tbaa !468
  %idxprom151 = sext i32 %106 to i64, !dbg !910
  %arrayidx152 = getelementptr inbounds ptr, ptr %105, i64 %idxprom151, !dbg !910
  %107 = load ptr, ptr %arrayidx152, align 8, !dbg !910, !tbaa !483
  store ptr %107, ptr %fds, align 8, !dbg !913, !tbaa !483
  store i32 0, ptr %i, align 4, !dbg !914, !tbaa !468
  br label %for.cond153, !dbg !916

for.cond153:                                      ; preds = %for.inc163, %for.body150
  %108 = load i32, ptr %i, align 4, !dbg !917, !tbaa !468
  %109 = load ptr, ptr @num_fds, align 8, !dbg !919, !tbaa !483
  %110 = load i32, ptr %c, align 4, !dbg !920, !tbaa !468
  %idxprom154 = sext i32 %110 to i64, !dbg !919
  %arrayidx155 = getelementptr inbounds i32, ptr %109, i64 %idxprom154, !dbg !919
  %111 = load i32, ptr %arrayidx155, align 4, !dbg !919, !tbaa !468
  %cmp156 = icmp slt i32 %108, %111, !dbg !921
  br i1 %cmp156, label %for.body158, label %for.end165, !dbg !922

for.body158:                                      ; preds = %for.cond153
  %112 = load ptr, ptr %fds, align 8, !dbg !923, !tbaa !483
  %113 = load i32, ptr %i, align 4, !dbg !924, !tbaa !468
  %idxprom159 = sext i32 %113 to i64, !dbg !923
  %arrayidx160 = getelementptr inbounds %struct.perf_event_desc_t, ptr %112, i64 %idxprom159, !dbg !923
  %fd161 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx160, i32 0, i32 8, !dbg !925
  %114 = load i32, ptr %fd161, align 4, !dbg !925, !tbaa !502
  %call162 = call i32 @close(i32 noundef %114), !dbg !926
  br label %for.inc163, !dbg !926

for.inc163:                                       ; preds = %for.body158
  %115 = load i32, ptr %i, align 4, !dbg !927, !tbaa !468
  %inc164 = add nsw i32 %115, 1, !dbg !927
  store i32 %inc164, ptr %i, align 4, !dbg !927, !tbaa !468
  br label %for.cond153, !dbg !928, !llvm.loop !929

for.end165:                                       ; preds = %for.cond153
  %116 = load ptr, ptr %fds, align 8, !dbg !931, !tbaa !483
  %117 = load ptr, ptr @num_fds, align 8, !dbg !932, !tbaa !483
  %118 = load i32, ptr %c, align 4, !dbg !933, !tbaa !468
  %idxprom166 = sext i32 %118 to i64, !dbg !932
  %arrayidx167 = getelementptr inbounds i32, ptr %117, i64 %idxprom166, !dbg !932
  %119 = load i32, ptr %arrayidx167, align 4, !dbg !932, !tbaa !468
  call void @perf_free_fds(ptr noundef %116, i32 noundef %119), !dbg !934
  br label %for.inc168, !dbg !935

for.inc168:                                       ; preds = %for.end165
  %120 = load i32, ptr %c, align 4, !dbg !936, !tbaa !468
  %inc169 = add nsw i32 %120, 1, !dbg !936
  store i32 %inc169, ptr %c, align 4, !dbg !936, !tbaa !468
  br label %for.cond147, !dbg !937, !llvm.loop !938

for.end170:                                       ; preds = %for.cond147
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #10, !dbg !940
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !940
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !940
  call void @llvm.lifetime.end.p0(i64 4, ptr %ncpus) #10, !dbg !940
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmax) #10, !dbg !940
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmin) #10, !dbg !940
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #10, !dbg !940
  call void @llvm.lifetime.end.p0(i64 8, ptr %lret) #10, !dbg !940
  call void @llvm.lifetime.end.p0(i64 8, ptr %fds) #10, !dbg !940
  ret void, !dbg !940
}

declare !dbg !941 i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
declare !dbg !946 i64 @sysconf(i32 noundef) #5

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !950 noalias ptr @calloc(i64 noundef, i64 noundef) #6

; Function Attrs: nounwind
declare !dbg !954 i32 @ioctl(i32 noundef, i64 noundef, ...) #5

declare !dbg !958 i32 @sleep(i32 noundef) #2

declare !dbg !961 i32 @puts(ptr noundef) #2

declare !dbg !964 i64 @read(i32 noundef, ptr noundef, i64 noundef) #2

declare !dbg !969 void @warnx(ptr noundef, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @perf_scale(ptr noundef %values) #4 !dbg !972 {
entry:
  %values.addr = alloca ptr, align 8
  %res = alloca i64, align 8
  store ptr %values, ptr %values.addr, align 8, !tbaa !483
  tail call void @llvm.dbg.declare(metadata ptr %values.addr, metadata !977, metadata !DIExpression()), !dbg !979
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #10, !dbg !980
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !978, metadata !DIExpression()), !dbg !981
  store i64 0, ptr %res, align 8, !dbg !981, !tbaa !616
  %0 = load ptr, ptr %values.addr, align 8, !dbg !982, !tbaa !483
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 2, !dbg !982
  %1 = load i64, ptr %arrayidx, align 8, !dbg !982, !tbaa !616
  %tobool = icmp ne i64 %1, 0, !dbg !982
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !984

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %values.addr, align 8, !dbg !985, !tbaa !483
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 1, !dbg !985
  %3 = load i64, ptr %arrayidx1, align 8, !dbg !985, !tbaa !616
  %tobool2 = icmp ne i64 %3, 0, !dbg !985
  br i1 %tobool2, label %if.end, label %land.lhs.true3, !dbg !986

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %values.addr, align 8, !dbg !987, !tbaa !483
  %arrayidx4 = getelementptr inbounds i64, ptr %4, i64 0, !dbg !987
  %5 = load i64, ptr %arrayidx4, align 8, !dbg !987, !tbaa !616
  %tobool5 = icmp ne i64 %5, 0, !dbg !987
  br i1 %tobool5, label %if.then, label %if.end, !dbg !988

if.then:                                          ; preds = %land.lhs.true3
  call void (ptr, ...) @warnx(ptr noundef @.str.14), !dbg !989
  br label %if.end, !dbg !989

if.end:                                           ; preds = %if.then, %land.lhs.true3, %land.lhs.true, %entry
  %6 = load ptr, ptr %values.addr, align 8, !dbg !990, !tbaa !483
  %arrayidx6 = getelementptr inbounds i64, ptr %6, i64 2, !dbg !990
  %7 = load i64, ptr %arrayidx6, align 8, !dbg !990, !tbaa !616
  %8 = load ptr, ptr %values.addr, align 8, !dbg !992, !tbaa !483
  %arrayidx7 = getelementptr inbounds i64, ptr %8, i64 1, !dbg !992
  %9 = load i64, ptr %arrayidx7, align 8, !dbg !992, !tbaa !616
  %cmp = icmp ugt i64 %7, %9, !dbg !993
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !994

if.then8:                                         ; preds = %if.end
  call void (ptr, ...) @warnx(ptr noundef @.str.15), !dbg !995
  br label %if.end9, !dbg !995

if.end9:                                          ; preds = %if.then8, %if.end
  %10 = load ptr, ptr %values.addr, align 8, !dbg !996, !tbaa !483
  %arrayidx10 = getelementptr inbounds i64, ptr %10, i64 2, !dbg !996
  %11 = load i64, ptr %arrayidx10, align 8, !dbg !996, !tbaa !616
  %tobool11 = icmp ne i64 %11, 0, !dbg !996
  br i1 %tobool11, label %if.then12, label %if.end19, !dbg !998

if.then12:                                        ; preds = %if.end9
  %12 = load ptr, ptr %values.addr, align 8, !dbg !999, !tbaa !483
  %arrayidx13 = getelementptr inbounds i64, ptr %12, i64 0, !dbg !999
  %13 = load i64, ptr %arrayidx13, align 8, !dbg !999, !tbaa !616
  %conv = uitofp i64 %13 to double, !dbg !1000
  %14 = load ptr, ptr %values.addr, align 8, !dbg !1001, !tbaa !483
  %arrayidx14 = getelementptr inbounds i64, ptr %14, i64 1, !dbg !1001
  %15 = load i64, ptr %arrayidx14, align 8, !dbg !1001, !tbaa !616
  %conv15 = uitofp i64 %15 to double, !dbg !1001
  %mul = fmul double %conv, %conv15, !dbg !1002
  %16 = load ptr, ptr %values.addr, align 8, !dbg !1003, !tbaa !483
  %arrayidx16 = getelementptr inbounds i64, ptr %16, i64 2, !dbg !1003
  %17 = load i64, ptr %arrayidx16, align 8, !dbg !1003, !tbaa !616
  %conv17 = uitofp i64 %17 to double, !dbg !1003
  %div = fdiv double %mul, %conv17, !dbg !1004
  %conv18 = fptoui double %div to i64, !dbg !1005
  store i64 %conv18, ptr %res, align 8, !dbg !1006, !tbaa !616
  br label %if.end19, !dbg !1007

if.end19:                                         ; preds = %if.then12, %if.end9
  %18 = load i64, ptr %res, align 8, !dbg !1008, !tbaa !616
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #10, !dbg !1009
  ret i64 %18, !dbg !1010
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @perf_scale_ratio(ptr noundef %values) #4 !dbg !1011 {
entry:
  %retval = alloca double, align 8
  %values.addr = alloca ptr, align 8
  store ptr %values, ptr %values.addr, align 8, !tbaa !483
  tail call void @llvm.dbg.declare(metadata ptr %values.addr, metadata !1015, metadata !DIExpression()), !dbg !1016
  %0 = load ptr, ptr %values.addr, align 8, !dbg !1017, !tbaa !483
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 1, !dbg !1017
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1017, !tbaa !616
  %tobool = icmp ne i64 %1, 0, !dbg !1017
  br i1 %tobool, label %if.end, label %if.then, !dbg !1019

if.then:                                          ; preds = %entry
  store double 0.000000e+00, ptr %retval, align 8, !dbg !1020
  br label %return, !dbg !1020

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %values.addr, align 8, !dbg !1021, !tbaa !483
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 2, !dbg !1021
  %3 = load i64, ptr %arrayidx1, align 8, !dbg !1021, !tbaa !616
  %conv = uitofp i64 %3 to double, !dbg !1021
  %mul = fmul double %conv, 1.000000e+00, !dbg !1022
  %4 = load ptr, ptr %values.addr, align 8, !dbg !1023, !tbaa !483
  %arrayidx2 = getelementptr inbounds i64, ptr %4, i64 1, !dbg !1023
  %5 = load i64, ptr %arrayidx2, align 8, !dbg !1023, !tbaa !616
  %conv3 = uitofp i64 %5 to double, !dbg !1023
  %div = fdiv double %mul, %conv3, !dbg !1024
  store double %div, ptr %retval, align 8, !dbg !1025
  br label %return, !dbg !1025

return:                                           ; preds = %if.end, %if.then
  %6 = load double, ptr %retval, align 8, !dbg !1026
  ret double %6, !dbg !1026
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @perf_scale_delta(ptr noundef %values, ptr noundef %prev_values) #4 !dbg !1027 {
entry:
  %values.addr = alloca ptr, align 8
  %prev_values.addr = alloca ptr, align 8
  %pval = alloca [3 x double], align 16
  %val = alloca [3 x double], align 16
  %res = alloca i64, align 8
  store ptr %values, ptr %values.addr, align 8, !tbaa !483
  tail call void @llvm.dbg.declare(metadata ptr %values.addr, metadata !1031, metadata !DIExpression()), !dbg !1037
  store ptr %prev_values, ptr %prev_values.addr, align 8, !tbaa !483
  tail call void @llvm.dbg.declare(metadata ptr %prev_values.addr, metadata !1032, metadata !DIExpression()), !dbg !1038
  call void @llvm.lifetime.start.p0(i64 24, ptr %pval) #10, !dbg !1039
  tail call void @llvm.dbg.declare(metadata ptr %pval, metadata !1033, metadata !DIExpression()), !dbg !1040
  call void @llvm.lifetime.start.p0(i64 24, ptr %val) #10, !dbg !1039
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !1035, metadata !DIExpression()), !dbg !1041
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #10, !dbg !1042
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !1036, metadata !DIExpression()), !dbg !1043
  store i64 0, ptr %res, align 8, !dbg !1043, !tbaa !616
  %0 = load ptr, ptr %values.addr, align 8, !dbg !1044, !tbaa !483
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 2, !dbg !1044
  %1 = load i64, ptr %arrayidx, align 8, !dbg !1044, !tbaa !616
  %tobool = icmp ne i64 %1, 0, !dbg !1044
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !1046

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %values.addr, align 8, !dbg !1047, !tbaa !483
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 1, !dbg !1047
  %3 = load i64, ptr %arrayidx1, align 8, !dbg !1047, !tbaa !616
  %tobool2 = icmp ne i64 %3, 0, !dbg !1047
  br i1 %tobool2, label %if.end, label %land.lhs.true3, !dbg !1048

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %values.addr, align 8, !dbg !1049, !tbaa !483
  %arrayidx4 = getelementptr inbounds i64, ptr %4, i64 0, !dbg !1049
  %5 = load i64, ptr %arrayidx4, align 8, !dbg !1049, !tbaa !616
  %tobool5 = icmp ne i64 %5, 0, !dbg !1049
  br i1 %tobool5, label %if.then, label %if.end, !dbg !1050

if.then:                                          ; preds = %land.lhs.true3
  call void (ptr, ...) @warnx(ptr noundef @.str.14), !dbg !1051
  br label %if.end, !dbg !1051

if.end:                                           ; preds = %if.then, %land.lhs.true3, %land.lhs.true, %entry
  %6 = load ptr, ptr %values.addr, align 8, !dbg !1052, !tbaa !483
  %arrayidx6 = getelementptr inbounds i64, ptr %6, i64 2, !dbg !1052
  %7 = load i64, ptr %arrayidx6, align 8, !dbg !1052, !tbaa !616
  %8 = load ptr, ptr %values.addr, align 8, !dbg !1054, !tbaa !483
  %arrayidx7 = getelementptr inbounds i64, ptr %8, i64 1, !dbg !1054
  %9 = load i64, ptr %arrayidx7, align 8, !dbg !1054, !tbaa !616
  %cmp = icmp ugt i64 %7, %9, !dbg !1055
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !1056

if.then8:                                         ; preds = %if.end
  call void (ptr, ...) @warnx(ptr noundef @.str.15), !dbg !1057
  br label %if.end9, !dbg !1057

if.end9:                                          ; preds = %if.then8, %if.end
  %10 = load ptr, ptr %values.addr, align 8, !dbg !1058, !tbaa !483
  %arrayidx10 = getelementptr inbounds i64, ptr %10, i64 2, !dbg !1058
  %11 = load i64, ptr %arrayidx10, align 8, !dbg !1058, !tbaa !616
  %12 = load ptr, ptr %prev_values.addr, align 8, !dbg !1060, !tbaa !483
  %arrayidx11 = getelementptr inbounds i64, ptr %12, i64 2, !dbg !1060
  %13 = load i64, ptr %arrayidx11, align 8, !dbg !1060, !tbaa !616
  %sub = sub i64 %11, %13, !dbg !1061
  %tobool12 = icmp ne i64 %sub, 0, !dbg !1061
  br i1 %tobool12, label %if.then13, label %if.end41, !dbg !1062

if.then13:                                        ; preds = %if.end9
  %14 = load ptr, ptr %prev_values.addr, align 8, !dbg !1063, !tbaa !483
  %arrayidx14 = getelementptr inbounds i64, ptr %14, i64 0, !dbg !1063
  %15 = load i64, ptr %arrayidx14, align 8, !dbg !1063, !tbaa !616
  %conv = uitofp i64 %15 to double, !dbg !1063
  %arrayidx15 = getelementptr inbounds [3 x double], ptr %pval, i64 0, i64 0, !dbg !1065
  store double %conv, ptr %arrayidx15, align 16, !dbg !1066, !tbaa !837
  %16 = load ptr, ptr %prev_values.addr, align 8, !dbg !1067, !tbaa !483
  %arrayidx16 = getelementptr inbounds i64, ptr %16, i64 1, !dbg !1067
  %17 = load i64, ptr %arrayidx16, align 8, !dbg !1067, !tbaa !616
  %conv17 = uitofp i64 %17 to double, !dbg !1067
  %arrayidx18 = getelementptr inbounds [3 x double], ptr %pval, i64 0, i64 1, !dbg !1068
  store double %conv17, ptr %arrayidx18, align 8, !dbg !1069, !tbaa !837
  %18 = load ptr, ptr %prev_values.addr, align 8, !dbg !1070, !tbaa !483
  %arrayidx19 = getelementptr inbounds i64, ptr %18, i64 2, !dbg !1070
  %19 = load i64, ptr %arrayidx19, align 8, !dbg !1070, !tbaa !616
  %conv20 = uitofp i64 %19 to double, !dbg !1070
  %arrayidx21 = getelementptr inbounds [3 x double], ptr %pval, i64 0, i64 2, !dbg !1071
  store double %conv20, ptr %arrayidx21, align 16, !dbg !1072, !tbaa !837
  %20 = load ptr, ptr %values.addr, align 8, !dbg !1073, !tbaa !483
  %arrayidx22 = getelementptr inbounds i64, ptr %20, i64 0, !dbg !1073
  %21 = load i64, ptr %arrayidx22, align 8, !dbg !1073, !tbaa !616
  %conv23 = uitofp i64 %21 to double, !dbg !1073
  %arrayidx24 = getelementptr inbounds [3 x double], ptr %val, i64 0, i64 0, !dbg !1074
  store double %conv23, ptr %arrayidx24, align 16, !dbg !1075, !tbaa !837
  %22 = load ptr, ptr %values.addr, align 8, !dbg !1076, !tbaa !483
  %arrayidx25 = getelementptr inbounds i64, ptr %22, i64 1, !dbg !1076
  %23 = load i64, ptr %arrayidx25, align 8, !dbg !1076, !tbaa !616
  %conv26 = uitofp i64 %23 to double, !dbg !1076
  %arrayidx27 = getelementptr inbounds [3 x double], ptr %val, i64 0, i64 1, !dbg !1077
  store double %conv26, ptr %arrayidx27, align 8, !dbg !1078, !tbaa !837
  %24 = load ptr, ptr %values.addr, align 8, !dbg !1079, !tbaa !483
  %arrayidx28 = getelementptr inbounds i64, ptr %24, i64 2, !dbg !1079
  %25 = load i64, ptr %arrayidx28, align 8, !dbg !1079, !tbaa !616
  %conv29 = uitofp i64 %25 to double, !dbg !1079
  %arrayidx30 = getelementptr inbounds [3 x double], ptr %val, i64 0, i64 2, !dbg !1080
  store double %conv29, ptr %arrayidx30, align 16, !dbg !1081, !tbaa !837
  %arrayidx31 = getelementptr inbounds [3 x double], ptr %val, i64 0, i64 0, !dbg !1082
  %26 = load double, ptr %arrayidx31, align 16, !dbg !1082, !tbaa !837
  %arrayidx32 = getelementptr inbounds [3 x double], ptr %pval, i64 0, i64 0, !dbg !1083
  %27 = load double, ptr %arrayidx32, align 16, !dbg !1083, !tbaa !837
  %sub33 = fsub double %26, %27, !dbg !1084
  %arrayidx34 = getelementptr inbounds [3 x double], ptr %val, i64 0, i64 1, !dbg !1085
  %28 = load double, ptr %arrayidx34, align 8, !dbg !1085, !tbaa !837
  %arrayidx35 = getelementptr inbounds [3 x double], ptr %pval, i64 0, i64 1, !dbg !1086
  %29 = load double, ptr %arrayidx35, align 8, !dbg !1086, !tbaa !837
  %sub36 = fsub double %28, %29, !dbg !1087
  %mul = fmul double %sub33, %sub36, !dbg !1088
  %arrayidx37 = getelementptr inbounds [3 x double], ptr %val, i64 0, i64 2, !dbg !1089
  %30 = load double, ptr %arrayidx37, align 16, !dbg !1089, !tbaa !837
  %arrayidx38 = getelementptr inbounds [3 x double], ptr %pval, i64 0, i64 2, !dbg !1090
  %31 = load double, ptr %arrayidx38, align 16, !dbg !1090, !tbaa !837
  %sub39 = fsub double %30, %31, !dbg !1091
  %div = fdiv double %mul, %sub39, !dbg !1092
  %conv40 = fptoui double %div to i64, !dbg !1093
  store i64 %conv40, ptr %res, align 8, !dbg !1094, !tbaa !616
  br label %if.end41, !dbg !1095

if.end41:                                         ; preds = %if.then13, %if.end9
  %32 = load i64, ptr %res, align 8, !dbg !1096, !tbaa !616
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #10, !dbg !1097
  call void @llvm.lifetime.end.p0(i64 24, ptr %val) #10, !dbg !1097
  call void @llvm.lifetime.end.p0(i64 24, ptr %pval) #10, !dbg !1097
  ret i64 %32, !dbg !1098
}

declare !dbg !1099 i32 @close(i32 noundef) #2

declare !dbg !1102 void @perf_free_fds(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 !dbg !1105 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !468
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !1109, metadata !DIExpression()), !dbg !1113
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !483
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !1110, metadata !DIExpression()), !dbg !1114
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #10, !dbg !1115
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !1111, metadata !DIExpression()), !dbg !1116
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !1115
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1112, metadata !DIExpression()), !dbg !1117
  store i32 -1, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 3), align 8, !dbg !1118, !tbaa !683
  br label %while.cond, !dbg !1119

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, ptr %argc.addr, align 4, !dbg !1120, !tbaa !468
  %1 = load ptr, ptr %argv.addr, align 8, !dbg !1121, !tbaa !483
  %call = call i32 @getopt(i32 noundef %0, ptr noundef %1, ptr noundef @.str.10) #10, !dbg !1122
  store i32 %call, ptr %c, align 4, !dbg !1123, !tbaa !468
  %cmp = icmp ne i32 %call, -1, !dbg !1124
  br i1 %cmp, label %while.body, label %while.end, !dbg !1119

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %c, align 4, !dbg !1125, !tbaa !468
  switch i32 %2, label %sw.default [
    i32 120, label %sw.bb
    i32 101, label %sw.bb1
    i32 99, label %sw.bb2
    i32 103, label %sw.bb4
    i32 100, label %sw.bb5
    i32 104, label %sw.bb7
  ], !dbg !1127

sw.bb:                                            ; preds = %while.body
  store i32 1, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 2), align 4, !dbg !1128, !tbaa !529
  br label %sw.epilog, !dbg !1130

sw.bb1:                                           ; preds = %while.body
  %3 = load ptr, ptr @optarg, align 8, !dbg !1131, !tbaa !483
  store ptr %3, ptr @options, align 8, !dbg !1132, !tbaa !479
  br label %sw.epilog, !dbg !1133

sw.bb2:                                           ; preds = %while.body
  %4 = load ptr, ptr @optarg, align 8, !dbg !1134, !tbaa !483
  %call3 = call i32 @atoi(ptr noundef %4) #13, !dbg !1135
  store i32 %call3, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 3), align 8, !dbg !1136, !tbaa !683
  br label %sw.epilog, !dbg !1137

sw.bb4:                                           ; preds = %while.body
  store i32 1, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 4), align 4, !dbg !1138, !tbaa !518
  br label %sw.epilog, !dbg !1139

sw.bb5:                                           ; preds = %while.body
  %5 = load ptr, ptr @optarg, align 8, !dbg !1140, !tbaa !483
  %call6 = call i32 @atoi(ptr noundef %5) #13, !dbg !1141
  store i32 %call6, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 1), align 8, !dbg !1142, !tbaa !666
  br label %sw.epilog, !dbg !1143

sw.bb7:                                           ; preds = %while.body
  call void @usage(), !dbg !1144
  call void @exit(i32 noundef 0) #14, !dbg !1145
  unreachable, !dbg !1145

sw.default:                                       ; preds = %while.body
  call void (i32, ptr, ...) @errx(i32 noundef 1, ptr noundef @.str.11) #11, !dbg !1146
  unreachable, !dbg !1146

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb
  br label %while.cond, !dbg !1119, !llvm.loop !1147

while.end:                                        ; preds = %while.cond
  %6 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 1), align 8, !dbg !1149, !tbaa !666
  %tobool = icmp ne i32 %6, 0, !dbg !1151
  br i1 %tobool, label %if.end, label %if.then, !dbg !1152

if.then:                                          ; preds = %while.end
  store i32 20, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 1), align 8, !dbg !1153, !tbaa !666
  br label %if.end, !dbg !1154

if.end:                                           ; preds = %if.then, %while.end
  %7 = load ptr, ptr @options, align 8, !dbg !1155, !tbaa !479
  %tobool8 = icmp ne ptr %7, null, !dbg !1157
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1158

if.then9:                                         ; preds = %if.end
  store ptr @.str.12, ptr @options, align 8, !dbg !1159, !tbaa !479
  br label %if.end10, !dbg !1160

if.end10:                                         ; preds = %if.then9, %if.end
  %call11 = call i32 @pfm_initialize(), !dbg !1161
  store i32 %call11, ptr %ret, align 4, !dbg !1162, !tbaa !468
  %8 = load i32, ptr %ret, align 4, !dbg !1163, !tbaa !468
  %cmp12 = icmp ne i32 %8, 0, !dbg !1165
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !1166

if.then13:                                        ; preds = %if.end10
  %9 = load i32, ptr %ret, align 4, !dbg !1167, !tbaa !468
  %call14 = call ptr @pfm_strerror(i32 noundef %9), !dbg !1168
  call void (i32, ptr, ...) @errx(i32 noundef 1, ptr noundef @.str.13, ptr noundef %call14) #11, !dbg !1169
  unreachable, !dbg !1169

if.end15:                                         ; preds = %if.end10
  call void @measure(), !dbg !1170
  call void @pfm_terminate(), !dbg !1171
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !1172
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #10, !dbg !1172
  ret i32 0, !dbg !1173
}

; Function Attrs: nounwind
declare !dbg !1174 i32 @getopt(i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i32 @atoi(ptr noundef nonnull %__nptr) #7 !dbg !1180 {
entry:
  %__nptr.addr = alloca ptr, align 8
  store ptr %__nptr, ptr %__nptr.addr, align 8, !tbaa !483
  tail call void @llvm.dbg.declare(metadata ptr %__nptr.addr, metadata !1182, metadata !DIExpression()), !dbg !1183
  %0 = load ptr, ptr %__nptr.addr, align 8, !dbg !1184, !tbaa !483
  %call = call i64 @strtol(ptr noundef %0, ptr noundef null, i32 noundef 10) #10, !dbg !1185
  %conv = trunc i64 %call to i32, !dbg !1186
  ret i32 %conv, !dbg !1187
}

; Function Attrs: nounwind uwtable
define internal void @usage() #0 !dbg !1188 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.16), !dbg !1189
  ret void, !dbg !1190
}

; Function Attrs: noreturn nounwind
declare !dbg !1191 void @exit(i32 noundef) #8

declare !dbg !1192 i32 @pfm_initialize() #2

declare !dbg !1197 ptr @pfm_strerror(i32 noundef) #2

declare !dbg !1200 void @pfm_terminate() #2

; Function Attrs: nounwind
declare !dbg !1201 i64 @syscall(i64 noundef, ...) #5

; Function Attrs: nounwind
declare !dbg !1204 i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!453, !454, !455, !456, !457, !458}
!llvm.ident = !{!459}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "options", scope: !2, file: !3, line: 45, type: !443, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !234, globals: !246, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "syst.c", directory: "/local-ssd/libpfm4-eymjeez6kzzocrqb5p6y26hpb2o7cj4q-build/aidengro/spack-stage-libpfm4-4.13.0-eymjeez6kzzocrqb5p6y26hpb2o7cj4q/spack-src/perf_examples", checksumkind: CSK_MD5, checksum: "02d2c775da7c8060bf19df401ae06617")
!4 = !{!5, !14}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_read_format", file: !6, line: 227, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../include/perfmon/perf_event.h", directory: "/local-ssd/libpfm4-eymjeez6kzzocrqb5p6y26hpb2o7cj4q-build/aidengro/spack-stage-libpfm4-4.13.0-eymjeez6kzzocrqb5p6y26hpb2o7cj4q/spack-src/perf_examples", checksumkind: CSK_MD5, checksum: "c1043b8c89934cad1503e707e44d43ea")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PERF_FORMAT_TOTAL_TIME_ENABLED", value: 1)
!10 = !DIEnumerator(name: "PERF_FORMAT_TOTAL_TIME_RUNNING", value: 2)
!11 = !DIEnumerator(name: "PERF_FORMAT_ID", value: 4)
!12 = !DIEnumerator(name: "PERF_FORMAT_GROUP", value: 8)
!13 = !DIEnumerator(name: "PERF_FORMAT_MAX", value: 16)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 71, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "", checksumkind: CSK_MD5, checksum: "78b98c9476f9b4c41f6f4ea6bcb3195f")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233}
!17 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!18 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!19 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!20 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!21 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!22 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!23 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!24 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!25 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!26 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!27 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!28 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!29 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!30 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!31 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!32 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!33 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!34 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!35 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!36 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!37 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!38 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!39 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!40 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!41 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!42 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!43 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!44 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!45 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!46 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!47 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!48 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!49 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!50 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!51 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!52 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!53 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!54 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!55 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!56 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!57 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!58 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!59 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!60 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!61 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!62 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!63 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!64 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!65 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!66 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!67 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!68 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!69 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!70 = !DIEnumerator(name: "_SC_PII", value: 53)
!71 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!72 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!73 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!74 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!75 = !DIEnumerator(name: "_SC_POLL", value: 58)
!76 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!77 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!78 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!79 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!80 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!81 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!82 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!83 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!84 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!85 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!86 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!87 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!88 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!89 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!90 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!91 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!92 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!93 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!94 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!95 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!96 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!97 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!98 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!99 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!100 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!101 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!102 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!103 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!104 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!105 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!106 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!107 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!108 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!109 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!110 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!111 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!112 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!113 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!114 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!115 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!116 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!117 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!118 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!119 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!120 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!121 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!122 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!123 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!124 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!125 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!126 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!127 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!128 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!129 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!130 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!131 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!132 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!133 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!134 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!135 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!136 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!137 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!138 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!139 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!140 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!141 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!142 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!143 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!144 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!145 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!146 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!147 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!148 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!149 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!150 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!151 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!152 = !DIEnumerator(name: "_SC_BASE", value: 134)
!153 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!154 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!155 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!156 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!157 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!158 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!159 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!160 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!161 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!162 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!163 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!164 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!165 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!166 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!167 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!168 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!169 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!170 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!171 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!172 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!173 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!174 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!175 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!176 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!177 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!178 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!179 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!180 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!181 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!182 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!183 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!184 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!185 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!186 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!187 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!188 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!189 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!190 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!191 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!192 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!193 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!194 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!195 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!196 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!197 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!198 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!199 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!200 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!201 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!202 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!203 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!204 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!205 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!206 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!207 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!208 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!209 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!210 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!211 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!212 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!213 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!214 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!215 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!216 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!217 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!218 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!219 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!220 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!221 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!222 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!223 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!224 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!225 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!226 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!227 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!228 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!229 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!230 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!231 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!232 = !DIEnumerator(name: "_SC_MINSIGSTKSZ", value: 249)
!233 = !DIEnumerator(name: "_SC_SIGSTKSZ", value: 250)
!234 = !{!235, !236, !241, !242, !245}
!235 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !237, line: 27, baseType: !238)
!237 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !239, line: 45, baseType: !240)
!239 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!240 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!241 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!246 = !{!247, !252, !257, !262, !267, !272, !277, !282, !284, !289, !294, !299, !304, !309, !0, !314, !425, !428, !433, !438}
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !249, isLocal: true, isDefinition: true)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 168, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 21)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !3, line: 73, type: !254, isLocal: true, isDefinition: true)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 256, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 32)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !3, line: 85, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 368, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 46)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !3, line: 91, type: !264, isLocal: true, isDefinition: true)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 312, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 39)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !3, line: 104, type: !269, isLocal: true, isDefinition: true)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 376, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 47)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !3, line: 118, type: !274, isLocal: true, isDefinition: true)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 192, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 24)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !3, line: 126, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 200, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 25)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !3, line: 136, type: !274, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !3, line: 138, type: !286, isLocal: true, isDefinition: true)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 184, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 23)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !3, line: 149, type: !291, isLocal: true, isDefinition: true)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 504, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 63)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !3, line: 183, type: !296, isLocal: true, isDefinition: true)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 80, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 10)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !3, line: 204, type: !301, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 112, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 14)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !3, line: 211, type: !306, isLocal: true, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 160, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 20)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !3, line: 215, type: !311, isLocal: true, isDefinition: true)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 272, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 34)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "all_fds", scope: !2, file: !3, line: 46, type: !316, isLocal: true, isDefinition: true)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_event_desc_t", file: !319, line: 46, baseType: !320)
!319 = !DIFile(filename: "./perf_util.h", directory: "/local-ssd/libpfm4-eymjeez6kzzocrqb5p6y26hpb2o7cj4q-build/aidengro/spack-stage-libpfm4-4.13.0-eymjeez6kzzocrqb5p6y26hpb2o7cj4q/spack-src/perf_examples", checksumkind: CSK_MD5, checksum: "58f19a98364ac4cdad39b353d918f35f")
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !319, line: 32, size: 1920, elements: !321)
!321 = !{!322, !408, !412, !413, !414, !415, !416, !419, !420, !421, !422, !423, !424}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !320, file: !319, line: 33, baseType: !323, size: 1024)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !6, line: 260, size: 1024, elements: !324)
!324 = !{!325, !328, !329, !330, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !380, !381, !386, !391, !392, !393, !394, !398, !399, !400, !404, !405, !406, !407}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !323, file: !6, line: 261, baseType: !326, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !237, line: 26, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !239, line: 42, baseType: !7)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !323, file: !6, line: 262, baseType: !326, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !323, file: !6, line: 263, baseType: !236, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, scope: !323, file: !6, line: 265, baseType: !331, size: 64, offset: 128)
!331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !323, file: !6, line: 265, size: 64, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !331, file: !6, line: 266, baseType: !236, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !331, file: !6, line: 267, baseType: !236, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !323, file: !6, line: 270, baseType: !236, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !323, file: !6, line: 271, baseType: !236, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !323, file: !6, line: 273, baseType: !236, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !323, file: !6, line: 274, baseType: !236, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !323, file: !6, line: 275, baseType: !236, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !323, file: !6, line: 276, baseType: !236, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !323, file: !6, line: 277, baseType: !236, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !323, file: !6, line: 278, baseType: !236, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !323, file: !6, line: 279, baseType: !236, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !323, file: !6, line: 280, baseType: !236, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !323, file: !6, line: 281, baseType: !236, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !323, file: !6, line: 282, baseType: !236, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !323, file: !6, line: 283, baseType: !236, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !323, file: !6, line: 284, baseType: !236, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !323, file: !6, line: 285, baseType: !236, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !323, file: !6, line: 286, baseType: !236, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !323, file: !6, line: 287, baseType: !236, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !323, file: !6, line: 288, baseType: !236, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !323, file: !6, line: 289, baseType: !236, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !323, file: !6, line: 290, baseType: !236, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !323, file: !6, line: 291, baseType: !236, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !323, file: !6, line: 292, baseType: !236, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !323, file: !6, line: 293, baseType: !236, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !323, file: !6, line: 294, baseType: !236, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !323, file: !6, line: 295, baseType: !236, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !323, file: !6, line: 296, baseType: !236, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !323, file: !6, line: 297, baseType: !236, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !323, file: !6, line: 298, baseType: !236, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !323, file: !6, line: 299, baseType: !236, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !323, file: !6, line: 300, baseType: !236, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !323, file: !6, line: 301, baseType: !236, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !323, file: !6, line: 302, baseType: !236, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !323, file: !6, line: 303, baseType: !236, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !323, file: !6, line: 304, baseType: !236, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !323, file: !6, line: 305, baseType: !236, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !323, file: !6, line: 306, baseType: !236, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !323, file: !6, line: 307, baseType: !236, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !323, file: !6, line: 308, baseType: !236, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !323, file: !6, line: 309, baseType: !236, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !323, file: !6, line: 310, baseType: !236, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!375 = !DIDerivedType(tag: DW_TAG_member, scope: !323, file: !6, line: 312, baseType: !376, size: 32, offset: 384)
!376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !323, file: !6, line: 312, size: 32, elements: !377)
!377 = !{!378, !379}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !376, file: !6, line: 313, baseType: !326, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !376, file: !6, line: 314, baseType: !326, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !323, file: !6, line: 317, baseType: !326, size: 32, offset: 416)
!381 = !DIDerivedType(tag: DW_TAG_member, scope: !323, file: !6, line: 318, baseType: !382, size: 64, offset: 448)
!382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !323, file: !6, line: 318, size: 64, elements: !383)
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !382, file: !6, line: 319, baseType: !236, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !382, file: !6, line: 320, baseType: !236, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !323, file: !6, line: 322, baseType: !387, size: 64, offset: 512)
!387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !323, file: !6, line: 322, size: 64, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !387, file: !6, line: 323, baseType: !236, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !387, file: !6, line: 324, baseType: !236, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !323, file: !6, line: 326, baseType: !236, size: 64, offset: 576)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !323, file: !6, line: 327, baseType: !236, size: 64, offset: 640)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !323, file: !6, line: 328, baseType: !326, size: 32, offset: 704)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !323, file: !6, line: 329, baseType: !395, size: 32, offset: 736)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !396, line: 26, baseType: !397)
!396 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !239, line: 41, baseType: !235)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !323, file: !6, line: 330, baseType: !236, size: 64, offset: 768)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !323, file: !6, line: 331, baseType: !326, size: 32, offset: 832)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !323, file: !6, line: 332, baseType: !401, size: 16, offset: 864)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !237, line: 25, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !239, line: 40, baseType: !403)
!403 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !323, file: !6, line: 333, baseType: !401, size: 16, offset: 880)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !323, file: !6, line: 334, baseType: !326, size: 32, offset: 896)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !323, file: !6, line: 335, baseType: !326, size: 32, offset: 928)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !323, file: !6, line: 336, baseType: !236, size: 64, offset: 960)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !320, file: !319, line: 34, baseType: !409, size: 192, offset: 1024)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 192, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 3)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "prev_values", scope: !320, file: !319, line: 35, baseType: !409, size: 192, offset: 1216)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !320, file: !319, line: 36, baseType: !243, size: 64, offset: 1408)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !320, file: !319, line: 37, baseType: !236, size: 64, offset: 1472)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !320, file: !319, line: 38, baseType: !245, size: 64, offset: 1536)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "pgmsk", scope: !320, file: !319, line: 39, baseType: !417, size: 64, offset: 1600)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !418, line: 70, baseType: !240)
!418 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!419 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !320, file: !319, line: 40, baseType: !235, size: 32, offset: 1664)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !320, file: !319, line: 41, baseType: !235, size: 32, offset: 1696)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "max_fds", scope: !320, file: !319, line: 42, baseType: !235, size: 32, offset: 1728)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !320, file: !319, line: 43, baseType: !235, size: 32, offset: 1760)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !320, file: !319, line: 44, baseType: !235, size: 32, offset: 1792)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "fstr", scope: !320, file: !319, line: 45, baseType: !243, size: 64, offset: 1856)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(name: "num_fds", scope: !2, file: !3, line: 47, type: !427, isLocal: true, isDefinition: true)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !319, line: 80, type: !430, isLocal: true, isDefinition: true)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 496, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 62)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !319, line: 83, type: !435, isLocal: true, isDefinition: true)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 304, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 38)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !3, line: 173, type: !440, isLocal: true, isDefinition: true)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 568, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 71)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "options_t", file: !3, line: 43, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 37, size: 192, elements: !445)
!445 = !{!446, !449, !450, !451, !452}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !444, file: !3, line: 38, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !444, file: !3, line: 39, baseType: !235, size: 32, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "excl", scope: !444, file: !3, line: 40, baseType: !235, size: 32, offset: 96)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !444, file: !3, line: 41, baseType: !235, size: 32, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !444, file: !3, line: 42, baseType: !235, size: 32, offset: 160)
!453 = !{i32 7, !"Dwarf Version", i32 5}
!454 = !{i32 2, !"Debug Info Version", i32 3}
!455 = !{i32 1, !"wchar_size", i32 4}
!456 = !{i32 8, !"PIC Level", i32 2}
!457 = !{i32 7, !"PIE Level", i32 2}
!458 = !{i32 7, !"uwtable", i32 2}
!459 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!460 = distinct !DISubprogram(name: "setup_cpu", scope: !3, file: !3, line: 50, type: !461, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !463)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !235}
!463 = !{!464, !465, !466, !467}
!464 = !DILocalVariable(name: "cpu", arg: 1, scope: !460, file: !3, line: 50, type: !235)
!465 = !DILocalVariable(name: "fds", scope: !460, file: !3, line: 52, type: !317)
!466 = !DILocalVariable(name: "i", scope: !460, file: !3, line: 53, type: !235)
!467 = !DILocalVariable(name: "ret", scope: !460, file: !3, line: 53, type: !235)
!468 = !{!469, !469, i64 0}
!469 = !{!"int", !470, i64 0}
!470 = !{!"omnipotent char", !471, i64 0}
!471 = !{!"Simple C/C++ TBAA"}
!472 = !DILocation(line: 50, column: 15, scope: !460)
!473 = !DILocation(line: 52, column: 2, scope: !460)
!474 = !DILocation(line: 52, column: 21, scope: !460)
!475 = !DILocation(line: 53, column: 2, scope: !460)
!476 = !DILocation(line: 53, column: 6, scope: !460)
!477 = !DILocation(line: 53, column: 9, scope: !460)
!478 = !DILocation(line: 55, column: 39, scope: !460)
!479 = !{!480, !481, i64 0}
!480 = !{!"", !481, i64 0, !469, i64 8, !469, i64 12, !469, i64 16, !469, i64 20}
!481 = !{!"any pointer", !470, i64 0}
!482 = !DILocation(line: 55, column: 48, scope: !460)
!483 = !{!481, !481, i64 0}
!484 = !DILocation(line: 55, column: 56, scope: !460)
!485 = !DILocation(line: 55, column: 63, scope: !460)
!486 = !DILocation(line: 55, column: 71, scope: !460)
!487 = !DILocation(line: 55, column: 8, scope: !460)
!488 = !DILocation(line: 55, column: 6, scope: !460)
!489 = !DILocation(line: 56, column: 6, scope: !490)
!490 = distinct !DILexicalBlock(scope: !460, file: !3, line: 56, column: 6)
!491 = !DILocation(line: 56, column: 10, scope: !490)
!492 = !DILocation(line: 56, column: 14, scope: !490)
!493 = !DILocation(line: 56, column: 22, scope: !490)
!494 = !DILocation(line: 56, column: 6, scope: !460)
!495 = !DILocation(line: 57, column: 3, scope: !490)
!496 = !DILocation(line: 58, column: 8, scope: !460)
!497 = !DILocation(line: 58, column: 16, scope: !460)
!498 = !DILocation(line: 58, column: 6, scope: !460)
!499 = !DILocation(line: 60, column: 2, scope: !460)
!500 = !DILocation(line: 60, column: 9, scope: !460)
!501 = !DILocation(line: 60, column: 12, scope: !460)
!502 = !{!503, !469, i64 212}
!503 = !{!"", !504, i64 0, !470, i64 128, !470, i64 152, !481, i64 176, !505, i64 184, !481, i64 192, !505, i64 200, !469, i64 208, !469, i64 212, !469, i64 216, !469, i64 220, !469, i64 224, !481, i64 232}
!504 = !{!"perf_event_attr", !469, i64 0, !469, i64 4, !505, i64 8, !470, i64 16, !505, i64 24, !505, i64 32, !505, i64 40, !505, i64 40, !505, i64 40, !505, i64 40, !505, i64 40, !505, i64 40, !505, i64 40, !505, i64 40, !505, i64 41, !505, i64 41, !505, i64 41, !505, i64 41, !505, i64 41, !505, i64 41, !505, i64 41, !505, i64 41, !505, i64 42, !505, i64 42, !505, i64 42, !505, i64 42, !505, i64 42, !505, i64 42, !505, i64 42, !505, i64 43, !505, i64 43, !505, i64 43, !505, i64 43, !505, i64 43, !505, i64 43, !505, i64 43, !505, i64 43, !505, i64 44, !505, i64 44, !505, i64 44, !505, i64 44, !505, i64 44, !505, i64 44, !505, i64 44, !470, i64 48, !469, i64 52, !470, i64 56, !470, i64 64, !505, i64 72, !505, i64 80, !469, i64 88, !469, i64 92, !505, i64 96, !469, i64 104, !506, i64 108, !506, i64 110, !469, i64 112, !469, i64 116, !505, i64 120}
!505 = !{!"long", !470, i64 0}
!506 = !{!"short", !470, i64 0}
!507 = !DILocation(line: 61, column: 7, scope: !508)
!508 = distinct !DILexicalBlock(scope: !460, file: !3, line: 61, column: 2)
!509 = !DILocation(line: 61, column: 6, scope: !508)
!510 = !DILocation(line: 61, column: 11, scope: !511)
!511 = distinct !DILexicalBlock(scope: !508, file: !3, line: 61, column: 2)
!512 = !DILocation(line: 61, column: 15, scope: !511)
!513 = !DILocation(line: 61, column: 23, scope: !511)
!514 = !DILocation(line: 61, column: 13, scope: !511)
!515 = !DILocation(line: 61, column: 2, scope: !508)
!516 = !DILocation(line: 62, column: 32, scope: !517)
!517 = distinct !DILexicalBlock(scope: !511, file: !3, line: 61, column: 34)
!518 = !{!480, !469, i64 20}
!519 = !DILocation(line: 62, column: 24, scope: !517)
!520 = !DILocation(line: 62, column: 41, scope: !517)
!521 = !DILocation(line: 62, column: 40, scope: !517)
!522 = !DILocation(line: 62, column: 3, scope: !517)
!523 = !DILocation(line: 62, column: 7, scope: !517)
!524 = !DILocation(line: 62, column: 10, scope: !517)
!525 = !DILocation(line: 62, column: 13, scope: !517)
!526 = !DILocation(line: 62, column: 22, scope: !517)
!527 = !DILocation(line: 64, column: 15, scope: !528)
!528 = distinct !DILexicalBlock(scope: !517, file: !3, line: 64, column: 7)
!529 = !{!480, !469, i64 12}
!530 = !DILocation(line: 64, column: 7, scope: !528)
!531 = !DILocation(line: 64, column: 20, scope: !528)
!532 = !DILocation(line: 64, column: 33, scope: !528)
!533 = !DILocation(line: 64, column: 25, scope: !528)
!534 = !DILocation(line: 64, column: 39, scope: !528)
!535 = !DILocation(line: 64, column: 43, scope: !528)
!536 = !DILocation(line: 64, column: 46, scope: !528)
!537 = !DILocation(line: 64, column: 59, scope: !528)
!538 = !DILocation(line: 64, column: 51, scope: !528)
!539 = !DILocation(line: 64, column: 7, scope: !517)
!540 = !DILocation(line: 65, column: 4, scope: !528)
!541 = !DILocation(line: 65, column: 8, scope: !528)
!542 = !DILocation(line: 65, column: 11, scope: !528)
!543 = !DILocation(line: 65, column: 14, scope: !528)
!544 = !DILocation(line: 65, column: 24, scope: !528)
!545 = !DILocation(line: 67, column: 32, scope: !517)
!546 = !DILocation(line: 67, column: 24, scope: !517)
!547 = !DILocation(line: 67, column: 41, scope: !517)
!548 = !DILocation(line: 67, column: 40, scope: !517)
!549 = !DILocation(line: 67, column: 3, scope: !517)
!550 = !DILocation(line: 67, column: 7, scope: !517)
!551 = !DILocation(line: 67, column: 10, scope: !517)
!552 = !DILocation(line: 67, column: 13, scope: !517)
!553 = !DILocation(line: 67, column: 22, scope: !517)
!554 = !DILocation(line: 70, column: 3, scope: !517)
!555 = !DILocation(line: 70, column: 7, scope: !517)
!556 = !DILocation(line: 70, column: 10, scope: !517)
!557 = !DILocation(line: 70, column: 13, scope: !517)
!558 = !DILocation(line: 70, column: 25, scope: !517)
!559 = !{!503, !505, i64 32}
!560 = !DILocation(line: 71, column: 32, scope: !517)
!561 = !DILocation(line: 71, column: 36, scope: !517)
!562 = !DILocation(line: 71, column: 39, scope: !517)
!563 = !DILocation(line: 71, column: 47, scope: !517)
!564 = !DILocation(line: 71, column: 61, scope: !517)
!565 = !DILocation(line: 71, column: 53, scope: !517)
!566 = !DILocation(line: 71, column: 69, scope: !517)
!567 = !DILocation(line: 71, column: 76, scope: !517)
!568 = !DILocation(line: 71, column: 15, scope: !517)
!569 = !DILocation(line: 71, column: 3, scope: !517)
!570 = !DILocation(line: 71, column: 7, scope: !517)
!571 = !DILocation(line: 71, column: 10, scope: !517)
!572 = !DILocation(line: 71, column: 13, scope: !517)
!573 = !DILocation(line: 72, column: 7, scope: !574)
!574 = distinct !DILexicalBlock(scope: !517, file: !3, line: 72, column: 7)
!575 = !DILocation(line: 72, column: 11, scope: !574)
!576 = !DILocation(line: 72, column: 14, scope: !574)
!577 = !DILocation(line: 72, column: 17, scope: !574)
!578 = !DILocation(line: 72, column: 7, scope: !517)
!579 = !DILocation(line: 73, column: 46, scope: !574)
!580 = !DILocation(line: 73, column: 51, scope: !574)
!581 = !DILocation(line: 73, column: 55, scope: !574)
!582 = !DILocation(line: 73, column: 58, scope: !574)
!583 = !{!503, !481, i64 176}
!584 = !DILocation(line: 73, column: 4, scope: !574)
!585 = !DILocation(line: 74, column: 2, scope: !517)
!586 = !DILocation(line: 61, column: 30, scope: !511)
!587 = !DILocation(line: 61, column: 2, scope: !511)
!588 = distinct !{!588, !515, !589, !590}
!589 = !DILocation(line: 74, column: 2, scope: !508)
!590 = !{!"llvm.loop.mustprogress"}
!591 = !DILocation(line: 75, column: 1, scope: !460)
!592 = !DISubprogram(name: "perf_setup_list_events", scope: !319, file: !319, line: 52, type: !593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!593 = !DISubroutineType(types: !594)
!594 = !{!235, !447, !316, !427}
!595 = !DISubprogram(name: "errx", scope: !596, file: !596, line: 50, type: !597, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!596 = !DIFile(filename: "/usr/include/err.h", directory: "", checksumkind: CSK_MD5, checksum: "c1d02a7722f9cc1994ce2e5c5e6150dd")
!597 = !DISubroutineType(types: !598)
!598 = !{null, !235, !447, null}
!599 = distinct !DISubprogram(name: "perf_event_open", scope: !6, file: !6, line: 597, type: !600, scopeLine: 603, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !606)
!600 = !DISubroutineType(types: !601)
!601 = !{!235, !602, !603, !235, !235, !240}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !604, line: 97, baseType: !605)
!604 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !239, line: 154, baseType: !235)
!606 = !{!607, !608, !609, !610, !611}
!607 = !DILocalVariable(name: "hw_event_uptr", arg: 1, scope: !599, file: !6, line: 598, type: !602)
!608 = !DILocalVariable(name: "pid", arg: 2, scope: !599, file: !6, line: 599, type: !603)
!609 = !DILocalVariable(name: "cpu", arg: 3, scope: !599, file: !6, line: 600, type: !235)
!610 = !DILocalVariable(name: "group_fd", arg: 4, scope: !599, file: !6, line: 601, type: !235)
!611 = !DILocalVariable(name: "flags", arg: 5, scope: !599, file: !6, line: 602, type: !240)
!612 = !DILocation(line: 598, column: 27, scope: !599)
!613 = !DILocation(line: 599, column: 11, scope: !599)
!614 = !DILocation(line: 600, column: 9, scope: !599)
!615 = !DILocation(line: 601, column: 9, scope: !599)
!616 = !{!505, !505, i64 0}
!617 = !DILocation(line: 602, column: 18, scope: !599)
!618 = !DILocation(line: 605, column: 25, scope: !599)
!619 = !DILocation(line: 605, column: 40, scope: !599)
!620 = !DILocation(line: 605, column: 45, scope: !599)
!621 = !DILocation(line: 605, column: 50, scope: !599)
!622 = !DILocation(line: 605, column: 60, scope: !599)
!623 = !DILocation(line: 604, column: 9, scope: !599)
!624 = !DILocation(line: 604, column: 2, scope: !599)
!625 = !DISubprogram(name: "err", scope: !596, file: !596, line: 46, type: !597, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!626 = distinct !DISubprogram(name: "measure", scope: !3, file: !3, line: 78, type: !627, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !629)
!627 = !DISubroutineType(types: !628)
!628 = !{null}
!629 = !{!630, !631, !633, !634, !635, !636, !637, !638, !639, !640, !650, !651}
!630 = !DILocalVariable(name: "fds", scope: !626, file: !3, line: 80, type: !317)
!631 = !DILocalVariable(name: "lret", scope: !626, file: !3, line: 81, type: !632)
!632 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!633 = !DILocalVariable(name: "c", scope: !626, file: !3, line: 82, type: !235)
!634 = !DILocalVariable(name: "cmin", scope: !626, file: !3, line: 82, type: !235)
!635 = !DILocalVariable(name: "cmax", scope: !626, file: !3, line: 82, type: !235)
!636 = !DILocalVariable(name: "ncpus", scope: !626, file: !3, line: 82, type: !235)
!637 = !DILocalVariable(name: "i", scope: !626, file: !3, line: 83, type: !235)
!638 = !DILocalVariable(name: "ret", scope: !626, file: !3, line: 83, type: !235)
!639 = !DILocalVariable(name: "l", scope: !626, file: !3, line: 83, type: !235)
!640 = !DILocalVariable(name: "val", scope: !641, file: !3, line: 130, type: !236)
!641 = distinct !DILexicalBlock(scope: !642, file: !3, line: 129, column: 34)
!642 = distinct !DILexicalBlock(scope: !643, file: !3, line: 129, column: 4)
!643 = distinct !DILexicalBlock(scope: !644, file: !3, line: 129, column: 4)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 127, column: 32)
!645 = distinct !DILexicalBlock(scope: !646, file: !3, line: 127, column: 3)
!646 = distinct !DILexicalBlock(scope: !647, file: !3, line: 127, column: 3)
!647 = distinct !DILexicalBlock(scope: !648, file: !3, line: 122, column: 35)
!648 = distinct !DILexicalBlock(scope: !649, file: !3, line: 122, column: 2)
!649 = distinct !DILexicalBlock(scope: !626, file: !3, line: 122, column: 2)
!650 = !DILocalVariable(name: "delta", scope: !641, file: !3, line: 130, type: !236)
!651 = !DILocalVariable(name: "ratio", scope: !641, file: !3, line: 131, type: !241)
!652 = !DILocation(line: 80, column: 2, scope: !626)
!653 = !DILocation(line: 80, column: 21, scope: !626)
!654 = !DILocation(line: 81, column: 2, scope: !626)
!655 = !DILocation(line: 81, column: 7, scope: !626)
!656 = !DILocation(line: 82, column: 2, scope: !626)
!657 = !DILocation(line: 82, column: 6, scope: !626)
!658 = !DILocation(line: 82, column: 9, scope: !626)
!659 = !DILocation(line: 82, column: 15, scope: !626)
!660 = !DILocation(line: 82, column: 21, scope: !626)
!661 = !DILocation(line: 83, column: 2, scope: !626)
!662 = !DILocation(line: 83, column: 6, scope: !626)
!663 = !DILocation(line: 83, column: 9, scope: !626)
!664 = !DILocation(line: 83, column: 14, scope: !626)
!665 = !DILocation(line: 85, column: 67, scope: !626)
!666 = !{!480, !469, i64 8}
!667 = !DILocation(line: 85, column: 2, scope: !626)
!668 = !DILocation(line: 87, column: 7, scope: !626)
!669 = !DILocation(line: 89, column: 9, scope: !626)
!670 = !DILocation(line: 89, column: 7, scope: !626)
!671 = !DILocation(line: 90, column: 6, scope: !672)
!672 = distinct !DILexicalBlock(scope: !626, file: !3, line: 90, column: 6)
!673 = !DILocation(line: 90, column: 11, scope: !672)
!674 = !DILocation(line: 90, column: 6, scope: !626)
!675 = !DILocation(line: 91, column: 3, scope: !672)
!676 = !DILocation(line: 93, column: 14, scope: !626)
!677 = !DILocation(line: 93, column: 9, scope: !626)
!678 = !DILocation(line: 93, column: 7, scope: !626)
!679 = !DILocation(line: 95, column: 10, scope: !626)
!680 = !DILocation(line: 95, column: 8, scope: !626)
!681 = !DILocation(line: 96, column: 14, scope: !682)
!682 = distinct !DILexicalBlock(scope: !626, file: !3, line: 96, column: 6)
!683 = !{!480, !469, i64 16}
!684 = !DILocation(line: 96, column: 18, scope: !682)
!685 = !DILocation(line: 96, column: 6, scope: !626)
!686 = !DILocation(line: 97, column: 18, scope: !687)
!687 = distinct !DILexicalBlock(scope: !682, file: !3, line: 96, column: 25)
!688 = !DILocation(line: 97, column: 8, scope: !687)
!689 = !DILocation(line: 98, column: 10, scope: !687)
!690 = !DILocation(line: 98, column: 15, scope: !687)
!691 = !DILocation(line: 98, column: 8, scope: !687)
!692 = !DILocation(line: 99, column: 2, scope: !687)
!693 = !DILocation(line: 100, column: 19, scope: !626)
!694 = !DILocation(line: 100, column: 12, scope: !626)
!695 = !DILocation(line: 100, column: 10, scope: !626)
!696 = !DILocation(line: 101, column: 19, scope: !626)
!697 = !DILocation(line: 101, column: 12, scope: !626)
!698 = !DILocation(line: 101, column: 10, scope: !626)
!699 = !DILocation(line: 103, column: 7, scope: !700)
!700 = distinct !DILexicalBlock(scope: !626, file: !3, line: 103, column: 6)
!701 = !DILocation(line: 103, column: 15, scope: !700)
!702 = !DILocation(line: 103, column: 19, scope: !700)
!703 = !DILocation(line: 103, column: 6, scope: !626)
!704 = !DILocation(line: 104, column: 3, scope: !700)
!705 = !DILocation(line: 105, column: 8, scope: !706)
!706 = distinct !DILexicalBlock(scope: !626, file: !3, line: 105, column: 2)
!707 = !DILocation(line: 105, column: 7, scope: !706)
!708 = !DILocation(line: 105, column: 6, scope: !706)
!709 = !DILocation(line: 105, column: 15, scope: !710)
!710 = distinct !DILexicalBlock(scope: !706, file: !3, line: 105, column: 2)
!711 = !DILocation(line: 105, column: 19, scope: !710)
!712 = !DILocation(line: 105, column: 17, scope: !710)
!713 = !DILocation(line: 105, column: 2, scope: !706)
!714 = !DILocation(line: 106, column: 13, scope: !710)
!715 = !DILocation(line: 106, column: 3, scope: !710)
!716 = !DILocation(line: 105, column: 26, scope: !710)
!717 = !DILocation(line: 105, column: 2, scope: !710)
!718 = distinct !{!718, !713, !719, !590}
!719 = !DILocation(line: 106, column: 14, scope: !706)
!720 = !DILocation(line: 111, column: 8, scope: !721)
!721 = distinct !DILexicalBlock(scope: !626, file: !3, line: 111, column: 2)
!722 = !DILocation(line: 111, column: 7, scope: !721)
!723 = !DILocation(line: 111, column: 6, scope: !721)
!724 = !DILocation(line: 111, column: 15, scope: !725)
!725 = distinct !DILexicalBlock(scope: !721, file: !3, line: 111, column: 2)
!726 = !DILocation(line: 111, column: 19, scope: !725)
!727 = !DILocation(line: 111, column: 17, scope: !725)
!728 = !DILocation(line: 111, column: 2, scope: !721)
!729 = !DILocation(line: 112, column: 9, scope: !730)
!730 = distinct !DILexicalBlock(scope: !725, file: !3, line: 111, column: 30)
!731 = !DILocation(line: 112, column: 17, scope: !730)
!732 = !DILocation(line: 112, column: 7, scope: !730)
!733 = !DILocation(line: 113, column: 15, scope: !734)
!734 = distinct !DILexicalBlock(scope: !730, file: !3, line: 113, column: 7)
!735 = !DILocation(line: 113, column: 7, scope: !734)
!736 = !DILocation(line: 113, column: 7, scope: !730)
!737 = !DILocation(line: 114, column: 16, scope: !734)
!738 = !DILocation(line: 114, column: 23, scope: !734)
!739 = !DILocation(line: 114, column: 10, scope: !734)
!740 = !DILocation(line: 114, column: 8, scope: !734)
!741 = !DILocation(line: 114, column: 4, scope: !734)
!742 = !DILocation(line: 115, column: 13, scope: !743)
!743 = distinct !DILexicalBlock(scope: !734, file: !3, line: 115, column: 8)
!744 = !DILocation(line: 115, column: 12, scope: !743)
!745 = !DILocation(line: 115, column: 17, scope: !746)
!746 = distinct !DILexicalBlock(scope: !743, file: !3, line: 115, column: 8)
!747 = !DILocation(line: 115, column: 21, scope: !746)
!748 = !DILocation(line: 115, column: 29, scope: !746)
!749 = !DILocation(line: 115, column: 19, scope: !746)
!750 = !DILocation(line: 115, column: 8, scope: !743)
!751 = !DILocation(line: 116, column: 16, scope: !752)
!752 = distinct !DILexicalBlock(scope: !746, file: !3, line: 115, column: 38)
!753 = !DILocation(line: 116, column: 20, scope: !752)
!754 = !DILocation(line: 116, column: 23, scope: !752)
!755 = !DILocation(line: 116, column: 10, scope: !752)
!756 = !DILocation(line: 116, column: 8, scope: !752)
!757 = !DILocation(line: 117, column: 8, scope: !758)
!758 = distinct !DILexicalBlock(scope: !752, file: !3, line: 117, column: 8)
!759 = !DILocation(line: 117, column: 8, scope: !752)
!760 = !DILocation(line: 118, column: 40, scope: !758)
!761 = !DILocation(line: 118, column: 44, scope: !758)
!762 = !DILocation(line: 118, column: 47, scope: !758)
!763 = !DILocation(line: 118, column: 5, scope: !758)
!764 = !DILocation(line: 119, column: 3, scope: !752)
!765 = !DILocation(line: 115, column: 34, scope: !746)
!766 = !DILocation(line: 115, column: 8, scope: !746)
!767 = distinct !{!767, !750, !768, !590}
!768 = !DILocation(line: 119, column: 3, scope: !743)
!769 = !DILocation(line: 120, column: 2, scope: !730)
!770 = !DILocation(line: 111, column: 26, scope: !725)
!771 = !DILocation(line: 111, column: 2, scope: !725)
!772 = distinct !{!772, !728, !773, !590}
!773 = !DILocation(line: 120, column: 2, scope: !721)
!774 = !DILocation(line: 122, column: 7, scope: !649)
!775 = !DILocation(line: 122, column: 6, scope: !649)
!776 = !DILocation(line: 122, column: 11, scope: !648)
!777 = !DILocation(line: 122, column: 23, scope: !648)
!778 = !DILocation(line: 122, column: 13, scope: !648)
!779 = !DILocation(line: 122, column: 2, scope: !649)
!780 = !DILocation(line: 124, column: 3, scope: !647)
!781 = !DILocation(line: 126, column: 3, scope: !647)
!782 = !DILocation(line: 127, column: 11, scope: !646)
!783 = !DILocation(line: 127, column: 9, scope: !646)
!784 = !DILocation(line: 127, column: 7, scope: !646)
!785 = !DILocation(line: 127, column: 17, scope: !645)
!786 = !DILocation(line: 127, column: 21, scope: !645)
!787 = !DILocation(line: 127, column: 19, scope: !645)
!788 = !DILocation(line: 127, column: 3, scope: !646)
!789 = !DILocation(line: 128, column: 10, scope: !644)
!790 = !DILocation(line: 128, column: 18, scope: !644)
!791 = !DILocation(line: 128, column: 8, scope: !644)
!792 = !DILocation(line: 129, column: 9, scope: !643)
!793 = !DILocation(line: 129, column: 8, scope: !643)
!794 = !DILocation(line: 129, column: 13, scope: !642)
!795 = !DILocation(line: 129, column: 17, scope: !642)
!796 = !DILocation(line: 129, column: 25, scope: !642)
!797 = !DILocation(line: 129, column: 15, scope: !642)
!798 = !DILocation(line: 129, column: 4, scope: !643)
!799 = !DILocation(line: 130, column: 5, scope: !641)
!800 = !DILocation(line: 130, column: 14, scope: !641)
!801 = !DILocation(line: 130, column: 19, scope: !641)
!802 = !DILocation(line: 131, column: 5, scope: !641)
!803 = !DILocation(line: 131, column: 12, scope: !641)
!804 = !DILocation(line: 133, column: 16, scope: !641)
!805 = !DILocation(line: 133, column: 20, scope: !641)
!806 = !DILocation(line: 133, column: 23, scope: !641)
!807 = !DILocation(line: 133, column: 27, scope: !641)
!808 = !DILocation(line: 133, column: 31, scope: !641)
!809 = !DILocation(line: 133, column: 34, scope: !641)
!810 = !DILocation(line: 133, column: 11, scope: !641)
!811 = !DILocation(line: 133, column: 9, scope: !641)
!812 = !DILocation(line: 134, column: 9, scope: !813)
!813 = distinct !DILexicalBlock(scope: !641, file: !3, line: 134, column: 9)
!814 = !DILocation(line: 134, column: 13, scope: !813)
!815 = !DILocation(line: 134, column: 9, scope: !641)
!816 = !DILocation(line: 135, column: 10, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 135, column: 10)
!818 = distinct !DILexicalBlock(scope: !813, file: !3, line: 134, column: 39)
!819 = !DILocation(line: 135, column: 14, scope: !817)
!820 = !DILocation(line: 135, column: 10, scope: !818)
!821 = !DILocation(line: 136, column: 41, scope: !817)
!822 = !DILocation(line: 136, column: 44, scope: !817)
!823 = !DILocation(line: 136, column: 7, scope: !817)
!824 = !DILocation(line: 138, column: 39, scope: !817)
!825 = !DILocation(line: 138, column: 7, scope: !817)
!826 = !DILocation(line: 139, column: 5, scope: !818)
!827 = !DILocation(line: 145, column: 22, scope: !641)
!828 = !DILocation(line: 145, column: 26, scope: !641)
!829 = !DILocation(line: 145, column: 29, scope: !641)
!830 = !DILocation(line: 145, column: 11, scope: !641)
!831 = !DILocation(line: 145, column: 9, scope: !641)
!832 = !DILocation(line: 146, column: 30, scope: !641)
!833 = !DILocation(line: 146, column: 34, scope: !641)
!834 = !DILocation(line: 146, column: 37, scope: !641)
!835 = !DILocation(line: 146, column: 13, scope: !641)
!836 = !DILocation(line: 146, column: 11, scope: !641)
!837 = !{!838, !838, i64 0}
!838 = !{!"double", !470, i64 0}
!839 = !DILocation(line: 147, column: 30, scope: !641)
!840 = !DILocation(line: 147, column: 34, scope: !641)
!841 = !DILocation(line: 147, column: 37, scope: !641)
!842 = !DILocation(line: 147, column: 45, scope: !641)
!843 = !DILocation(line: 147, column: 49, scope: !641)
!844 = !DILocation(line: 147, column: 52, scope: !641)
!845 = !DILocation(line: 147, column: 13, scope: !641)
!846 = !DILocation(line: 147, column: 11, scope: !641)
!847 = !DILocation(line: 150, column: 6, scope: !641)
!848 = !DILocation(line: 151, column: 6, scope: !641)
!849 = !DILocation(line: 152, column: 6, scope: !641)
!850 = !DILocation(line: 153, column: 6, scope: !641)
!851 = !DILocation(line: 153, column: 10, scope: !641)
!852 = !DILocation(line: 153, column: 13, scope: !641)
!853 = !DILocation(line: 154, column: 6, scope: !641)
!854 = !DILocation(line: 154, column: 10, scope: !641)
!855 = !DILocation(line: 154, column: 13, scope: !641)
!856 = !DILocation(line: 154, column: 24, scope: !641)
!857 = !DILocation(line: 154, column: 28, scope: !641)
!858 = !DILocation(line: 154, column: 31, scope: !641)
!859 = !DILocation(line: 154, column: 42, scope: !641)
!860 = !DILocation(line: 155, column: 6, scope: !641)
!861 = !DILocation(line: 155, column: 10, scope: !641)
!862 = !DILocation(line: 155, column: 13, scope: !641)
!863 = !DILocation(line: 149, column: 5, scope: !641)
!864 = !DILocation(line: 156, column: 29, scope: !641)
!865 = !DILocation(line: 156, column: 33, scope: !641)
!866 = !DILocation(line: 156, column: 36, scope: !641)
!867 = !DILocation(line: 156, column: 5, scope: !641)
!868 = !DILocation(line: 156, column: 9, scope: !641)
!869 = !DILocation(line: 156, column: 12, scope: !641)
!870 = !DILocation(line: 156, column: 27, scope: !641)
!871 = !DILocation(line: 157, column: 29, scope: !641)
!872 = !DILocation(line: 157, column: 33, scope: !641)
!873 = !DILocation(line: 157, column: 36, scope: !641)
!874 = !DILocation(line: 157, column: 5, scope: !641)
!875 = !DILocation(line: 157, column: 9, scope: !641)
!876 = !DILocation(line: 157, column: 12, scope: !641)
!877 = !DILocation(line: 157, column: 27, scope: !641)
!878 = !DILocation(line: 158, column: 29, scope: !641)
!879 = !DILocation(line: 158, column: 33, scope: !641)
!880 = !DILocation(line: 158, column: 36, scope: !641)
!881 = !DILocation(line: 158, column: 5, scope: !641)
!882 = !DILocation(line: 158, column: 9, scope: !641)
!883 = !DILocation(line: 158, column: 12, scope: !641)
!884 = !DILocation(line: 158, column: 27, scope: !641)
!885 = !DILocation(line: 159, column: 4, scope: !642)
!886 = !DILocation(line: 159, column: 4, scope: !641)
!887 = !DILocation(line: 129, column: 30, scope: !642)
!888 = !DILocation(line: 129, column: 4, scope: !642)
!889 = distinct !{!889, !798, !890, !590}
!890 = !DILocation(line: 159, column: 4, scope: !643)
!891 = !DILocation(line: 160, column: 3, scope: !644)
!892 = !DILocation(line: 127, column: 28, scope: !645)
!893 = !DILocation(line: 127, column: 3, scope: !645)
!894 = distinct !{!894, !788, !895, !590}
!895 = !DILocation(line: 160, column: 3, scope: !646)
!896 = !DILocation(line: 161, column: 2, scope: !647)
!897 = !DILocation(line: 122, column: 31, scope: !648)
!898 = !DILocation(line: 122, column: 2, scope: !648)
!899 = distinct !{!899, !779, !900, !590}
!900 = !DILocation(line: 161, column: 2, scope: !649)
!901 = !DILocation(line: 162, column: 10, scope: !902)
!902 = distinct !DILexicalBlock(scope: !626, file: !3, line: 162, column: 2)
!903 = !DILocation(line: 162, column: 8, scope: !902)
!904 = !DILocation(line: 162, column: 6, scope: !902)
!905 = !DILocation(line: 162, column: 16, scope: !906)
!906 = distinct !DILexicalBlock(scope: !902, file: !3, line: 162, column: 2)
!907 = !DILocation(line: 162, column: 20, scope: !906)
!908 = !DILocation(line: 162, column: 18, scope: !906)
!909 = !DILocation(line: 162, column: 2, scope: !902)
!910 = !DILocation(line: 163, column: 9, scope: !911)
!911 = distinct !DILexicalBlock(scope: !906, file: !3, line: 162, column: 31)
!912 = !DILocation(line: 163, column: 17, scope: !911)
!913 = !DILocation(line: 163, column: 7, scope: !911)
!914 = !DILocation(line: 164, column: 8, scope: !915)
!915 = distinct !DILexicalBlock(scope: !911, file: !3, line: 164, column: 3)
!916 = !DILocation(line: 164, column: 7, scope: !915)
!917 = !DILocation(line: 164, column: 12, scope: !918)
!918 = distinct !DILexicalBlock(scope: !915, file: !3, line: 164, column: 3)
!919 = !DILocation(line: 164, column: 16, scope: !918)
!920 = !DILocation(line: 164, column: 24, scope: !918)
!921 = !DILocation(line: 164, column: 14, scope: !918)
!922 = !DILocation(line: 164, column: 3, scope: !915)
!923 = !DILocation(line: 165, column: 10, scope: !918)
!924 = !DILocation(line: 165, column: 14, scope: !918)
!925 = !DILocation(line: 165, column: 17, scope: !918)
!926 = !DILocation(line: 165, column: 4, scope: !918)
!927 = !DILocation(line: 164, column: 29, scope: !918)
!928 = !DILocation(line: 164, column: 3, scope: !918)
!929 = distinct !{!929, !922, !930, !590}
!930 = !DILocation(line: 165, column: 19, scope: !915)
!931 = !DILocation(line: 166, column: 17, scope: !911)
!932 = !DILocation(line: 166, column: 22, scope: !911)
!933 = !DILocation(line: 166, column: 30, scope: !911)
!934 = !DILocation(line: 166, column: 3, scope: !911)
!935 = !DILocation(line: 167, column: 2, scope: !911)
!936 = !DILocation(line: 162, column: 27, scope: !906)
!937 = !DILocation(line: 162, column: 2, scope: !906)
!938 = distinct !{!938, !909, !939, !590}
!939 = !DILocation(line: 167, column: 2, scope: !902)
!940 = !DILocation(line: 168, column: 1, scope: !626)
!941 = !DISubprogram(name: "printf", scope: !942, file: !942, line: 356, type: !943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!942 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!943 = !DISubroutineType(types: !944)
!944 = !{!235, !945, null}
!945 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !447)
!946 = !DISubprogram(name: "sysconf", scope: !947, file: !947, line: 640, type: !948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!947 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!948 = !DISubroutineType(types: !949)
!949 = !{!632, !235}
!950 = !DISubprogram(name: "calloc", scope: !951, file: !951, line: 543, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!951 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!952 = !DISubroutineType(types: !953)
!953 = !{!245, !417, !417}
!954 = !DISubprogram(name: "ioctl", scope: !955, file: !955, line: 42, type: !956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!955 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/ioctl.h", directory: "", checksumkind: CSK_MD5, checksum: "17041ae374bfd0bee8350d01883d298c")
!956 = !DISubroutineType(types: !957)
!957 = !{!235, !235, !240, null}
!958 = !DISubprogram(name: "sleep", scope: !947, file: !947, line: 464, type: !959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!959 = !DISubroutineType(types: !960)
!960 = !{!7, !7}
!961 = !DISubprogram(name: "puts", scope: !942, file: !942, line: 661, type: !962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!962 = !DISubroutineType(types: !963)
!963 = !{!235, !447}
!964 = !DISubprogram(name: "read", scope: !947, file: !947, line: 371, type: !965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!965 = !DISubroutineType(types: !966)
!966 = !{!967, !235, !245, !417}
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !604, line: 108, baseType: !968)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !239, line: 194, baseType: !632)
!969 = !DISubprogram(name: "warnx", scope: !596, file: !596, line: 40, type: !970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!970 = !DISubroutineType(types: !971)
!971 = !{null, !447, null}
!972 = distinct !DISubprogram(name: "perf_scale", scope: !319, file: !319, line: 75, type: !973, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !976)
!973 = !DISubroutineType(types: !974)
!974 = !{!236, !975}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!976 = !{!977, !978}
!977 = !DILocalVariable(name: "values", arg: 1, scope: !972, file: !319, line: 75, type: !975)
!978 = !DILocalVariable(name: "res", scope: !972, file: !319, line: 77, type: !236)
!979 = !DILocation(line: 75, column: 22, scope: !972)
!980 = !DILocation(line: 77, column: 2, scope: !972)
!981 = !DILocation(line: 77, column: 11, scope: !972)
!982 = !DILocation(line: 79, column: 7, scope: !983)
!983 = distinct !DILexicalBlock(scope: !972, file: !319, line: 79, column: 6)
!984 = !DILocation(line: 79, column: 17, scope: !983)
!985 = !DILocation(line: 79, column: 21, scope: !983)
!986 = !DILocation(line: 79, column: 31, scope: !983)
!987 = !DILocation(line: 79, column: 34, scope: !983)
!988 = !DILocation(line: 79, column: 6, scope: !972)
!989 = !DILocation(line: 80, column: 3, scope: !983)
!990 = !DILocation(line: 82, column: 6, scope: !991)
!991 = distinct !DILexicalBlock(scope: !972, file: !319, line: 82, column: 6)
!992 = !DILocation(line: 82, column: 18, scope: !991)
!993 = !DILocation(line: 82, column: 16, scope: !991)
!994 = !DILocation(line: 82, column: 6, scope: !972)
!995 = !DILocation(line: 83, column: 3, scope: !991)
!996 = !DILocation(line: 85, column: 6, scope: !997)
!997 = distinct !DILexicalBlock(scope: !972, file: !319, line: 85, column: 6)
!998 = !DILocation(line: 85, column: 6, scope: !972)
!999 = !DILocation(line: 86, column: 28, scope: !997)
!1000 = !DILocation(line: 86, column: 20, scope: !997)
!1001 = !DILocation(line: 86, column: 40, scope: !997)
!1002 = !DILocation(line: 86, column: 38, scope: !997)
!1003 = !DILocation(line: 86, column: 50, scope: !997)
!1004 = !DILocation(line: 86, column: 49, scope: !997)
!1005 = !DILocation(line: 86, column: 9, scope: !997)
!1006 = !DILocation(line: 86, column: 7, scope: !997)
!1007 = !DILocation(line: 86, column: 3, scope: !997)
!1008 = !DILocation(line: 87, column: 9, scope: !972)
!1009 = !DILocation(line: 88, column: 1, scope: !972)
!1010 = !DILocation(line: 87, column: 2, scope: !972)
!1011 = distinct !DISubprogram(name: "perf_scale_ratio", scope: !319, file: !319, line: 120, type: !1012, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1014)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!241, !975}
!1014 = !{!1015}
!1015 = !DILocalVariable(name: "values", arg: 1, scope: !1011, file: !319, line: 120, type: !975)
!1016 = !DILocation(line: 120, column: 28, scope: !1011)
!1017 = !DILocation(line: 122, column: 7, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1011, file: !319, line: 122, column: 6)
!1019 = !DILocation(line: 122, column: 6, scope: !1011)
!1020 = !DILocation(line: 123, column: 3, scope: !1018)
!1021 = !DILocation(line: 125, column: 9, scope: !1011)
!1022 = !DILocation(line: 125, column: 18, scope: !1011)
!1023 = !DILocation(line: 125, column: 23, scope: !1011)
!1024 = !DILocation(line: 125, column: 22, scope: !1011)
!1025 = !DILocation(line: 125, column: 2, scope: !1011)
!1026 = !DILocation(line: 126, column: 1, scope: !1011)
!1027 = distinct !DISubprogram(name: "perf_scale_delta", scope: !319, file: !319, line: 91, type: !1028, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1030)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!236, !975, !975}
!1030 = !{!1031, !1032, !1033, !1035, !1036}
!1031 = !DILocalVariable(name: "values", arg: 1, scope: !1027, file: !319, line: 91, type: !975)
!1032 = !DILocalVariable(name: "prev_values", arg: 2, scope: !1027, file: !319, line: 91, type: !975)
!1033 = !DILocalVariable(name: "pval", scope: !1027, file: !319, line: 93, type: !1034)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 192, elements: !410)
!1035 = !DILocalVariable(name: "val", scope: !1027, file: !319, line: 93, type: !1034)
!1036 = !DILocalVariable(name: "res", scope: !1027, file: !319, line: 94, type: !236)
!1037 = !DILocation(line: 91, column: 28, scope: !1027)
!1038 = !DILocation(line: 91, column: 46, scope: !1027)
!1039 = !DILocation(line: 93, column: 2, scope: !1027)
!1040 = !DILocation(line: 93, column: 9, scope: !1027)
!1041 = !DILocation(line: 93, column: 18, scope: !1027)
!1042 = !DILocation(line: 94, column: 2, scope: !1027)
!1043 = !DILocation(line: 94, column: 11, scope: !1027)
!1044 = !DILocation(line: 96, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1027, file: !319, line: 96, column: 6)
!1046 = !DILocation(line: 96, column: 17, scope: !1045)
!1047 = !DILocation(line: 96, column: 21, scope: !1045)
!1048 = !DILocation(line: 96, column: 31, scope: !1045)
!1049 = !DILocation(line: 96, column: 34, scope: !1045)
!1050 = !DILocation(line: 96, column: 6, scope: !1027)
!1051 = !DILocation(line: 97, column: 3, scope: !1045)
!1052 = !DILocation(line: 99, column: 6, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1027, file: !319, line: 99, column: 6)
!1054 = !DILocation(line: 99, column: 18, scope: !1053)
!1055 = !DILocation(line: 99, column: 16, scope: !1053)
!1056 = !DILocation(line: 99, column: 6, scope: !1027)
!1057 = !DILocation(line: 100, column: 3, scope: !1053)
!1058 = !DILocation(line: 102, column: 6, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1027, file: !319, line: 102, column: 6)
!1060 = !DILocation(line: 102, column: 18, scope: !1059)
!1061 = !DILocation(line: 102, column: 16, scope: !1059)
!1062 = !DILocation(line: 102, column: 6, scope: !1027)
!1063 = !DILocation(line: 104, column: 13, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !319, line: 102, column: 34)
!1065 = !DILocation(line: 104, column: 3, scope: !1064)
!1066 = !DILocation(line: 104, column: 11, scope: !1064)
!1067 = !DILocation(line: 105, column: 13, scope: !1064)
!1068 = !DILocation(line: 105, column: 3, scope: !1064)
!1069 = !DILocation(line: 105, column: 11, scope: !1064)
!1070 = !DILocation(line: 106, column: 13, scope: !1064)
!1071 = !DILocation(line: 106, column: 3, scope: !1064)
!1072 = !DILocation(line: 106, column: 11, scope: !1064)
!1073 = !DILocation(line: 107, column: 12, scope: !1064)
!1074 = !DILocation(line: 107, column: 3, scope: !1064)
!1075 = !DILocation(line: 107, column: 10, scope: !1064)
!1076 = !DILocation(line: 108, column: 12, scope: !1064)
!1077 = !DILocation(line: 108, column: 3, scope: !1064)
!1078 = !DILocation(line: 108, column: 10, scope: !1064)
!1079 = !DILocation(line: 109, column: 12, scope: !1064)
!1080 = !DILocation(line: 109, column: 3, scope: !1064)
!1081 = !DILocation(line: 109, column: 10, scope: !1064)
!1082 = !DILocation(line: 110, column: 22, scope: !1064)
!1083 = !DILocation(line: 110, column: 31, scope: !1064)
!1084 = !DILocation(line: 110, column: 29, scope: !1064)
!1085 = !DILocation(line: 110, column: 43, scope: !1064)
!1086 = !DILocation(line: 110, column: 52, scope: !1064)
!1087 = !DILocation(line: 110, column: 50, scope: !1064)
!1088 = !DILocation(line: 110, column: 40, scope: !1064)
!1089 = !DILocation(line: 110, column: 63, scope: !1064)
!1090 = !DILocation(line: 110, column: 72, scope: !1064)
!1091 = !DILocation(line: 110, column: 70, scope: !1064)
!1092 = !DILocation(line: 110, column: 60, scope: !1064)
!1093 = !DILocation(line: 110, column: 9, scope: !1064)
!1094 = !DILocation(line: 110, column: 7, scope: !1064)
!1095 = !DILocation(line: 111, column: 2, scope: !1064)
!1096 = !DILocation(line: 112, column: 9, scope: !1027)
!1097 = !DILocation(line: 113, column: 1, scope: !1027)
!1098 = !DILocation(line: 112, column: 2, scope: !1027)
!1099 = !DISubprogram(name: "close", scope: !947, file: !947, line: 358, type: !1100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!235, !235}
!1102 = !DISubprogram(name: "perf_free_fds", scope: !319, file: !319, line: 54, type: !1103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !317, !235}
!1105 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 177, type: !1106, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1108)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!235, !235, !242}
!1108 = !{!1109, !1110, !1111, !1112}
!1109 = !DILocalVariable(name: "argc", arg: 1, scope: !1105, file: !3, line: 177, type: !235)
!1110 = !DILocalVariable(name: "argv", arg: 2, scope: !1105, file: !3, line: 177, type: !242)
!1111 = !DILocalVariable(name: "c", scope: !1105, file: !3, line: 179, type: !235)
!1112 = !DILocalVariable(name: "ret", scope: !1105, file: !3, line: 179, type: !235)
!1113 = !DILocation(line: 177, column: 10, scope: !1105)
!1114 = !DILocation(line: 177, column: 23, scope: !1105)
!1115 = !DILocation(line: 179, column: 2, scope: !1105)
!1116 = !DILocation(line: 179, column: 6, scope: !1105)
!1117 = !DILocation(line: 179, column: 9, scope: !1105)
!1118 = !DILocation(line: 181, column: 14, scope: !1105)
!1119 = !DILocation(line: 183, column: 2, scope: !1105)
!1120 = !DILocation(line: 183, column: 19, scope: !1105)
!1121 = !DILocation(line: 183, column: 25, scope: !1105)
!1122 = !DILocation(line: 183, column: 12, scope: !1105)
!1123 = !DILocation(line: 183, column: 11, scope: !1105)
!1124 = !DILocation(line: 183, column: 44, scope: !1105)
!1125 = !DILocation(line: 184, column: 10, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 183, column: 51)
!1127 = !DILocation(line: 184, column: 3, scope: !1126)
!1128 = !DILocation(line: 186, column: 18, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 184, column: 13)
!1130 = !DILocation(line: 187, column: 5, scope: !1129)
!1131 = !DILocation(line: 189, column: 22, scope: !1129)
!1132 = !DILocation(line: 189, column: 20, scope: !1129)
!1133 = !DILocation(line: 190, column: 5, scope: !1129)
!1134 = !DILocation(line: 192, column: 24, scope: !1129)
!1135 = !DILocation(line: 192, column: 19, scope: !1129)
!1136 = !DILocation(line: 192, column: 17, scope: !1129)
!1137 = !DILocation(line: 193, column: 5, scope: !1129)
!1138 = !DILocation(line: 195, column: 19, scope: !1129)
!1139 = !DILocation(line: 196, column: 5, scope: !1129)
!1140 = !DILocation(line: 198, column: 26, scope: !1129)
!1141 = !DILocation(line: 198, column: 21, scope: !1129)
!1142 = !DILocation(line: 198, column: 19, scope: !1129)
!1143 = !DILocation(line: 199, column: 5, scope: !1129)
!1144 = !DILocation(line: 201, column: 5, scope: !1129)
!1145 = !DILocation(line: 202, column: 5, scope: !1129)
!1146 = !DILocation(line: 204, column: 5, scope: !1129)
!1147 = distinct !{!1147, !1119, !1148, !590}
!1148 = !DILocation(line: 206, column: 2, scope: !1105)
!1149 = !DILocation(line: 207, column: 15, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 207, column: 6)
!1151 = !DILocation(line: 207, column: 7, scope: !1150)
!1152 = !DILocation(line: 207, column: 6, scope: !1105)
!1153 = !DILocation(line: 208, column: 17, scope: !1150)
!1154 = !DILocation(line: 208, column: 3, scope: !1150)
!1155 = !DILocation(line: 210, column: 15, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 210, column: 6)
!1157 = !DILocation(line: 210, column: 7, scope: !1156)
!1158 = !DILocation(line: 210, column: 6, scope: !1105)
!1159 = !DILocation(line: 211, column: 18, scope: !1156)
!1160 = !DILocation(line: 211, column: 3, scope: !1156)
!1161 = !DILocation(line: 213, column: 8, scope: !1105)
!1162 = !DILocation(line: 213, column: 6, scope: !1105)
!1163 = !DILocation(line: 214, column: 6, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 214, column: 6)
!1165 = !DILocation(line: 214, column: 10, scope: !1164)
!1166 = !DILocation(line: 214, column: 6, scope: !1105)
!1167 = !DILocation(line: 215, column: 62, scope: !1164)
!1168 = !DILocation(line: 215, column: 49, scope: !1164)
!1169 = !DILocation(line: 215, column: 3, scope: !1164)
!1170 = !DILocation(line: 217, column: 2, scope: !1105)
!1171 = !DILocation(line: 220, column: 2, scope: !1105)
!1172 = !DILocation(line: 223, column: 1, scope: !1105)
!1173 = !DILocation(line: 222, column: 2, scope: !1105)
!1174 = !DISubprogram(name: "getopt", scope: !1175, file: !1175, line: 91, type: !1176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1175 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_core.h", directory: "", checksumkind: CSK_MD5, checksum: "81ab788980ce9d5be2ba931a6ae17301")
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!235, !235, !1178, !447}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!1180 = distinct !DISubprogram(name: "atoi", scope: !951, file: !951, line: 362, type: !962, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1181)
!1181 = !{!1182}
!1182 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1180, file: !951, line: 362, type: !447)
!1183 = !DILocation(line: 362, column: 1, scope: !1180)
!1184 = !DILocation(line: 364, column: 24, scope: !1180)
!1185 = !DILocation(line: 364, column: 16, scope: !1180)
!1186 = !DILocation(line: 364, column: 10, scope: !1180)
!1187 = !DILocation(line: 364, column: 3, scope: !1180)
!1188 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 171, type: !627, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1189 = !DILocation(line: 173, column: 2, scope: !1188)
!1190 = !DILocation(line: 174, column: 1, scope: !1188)
!1191 = !DISubprogram(name: "exit", scope: !951, file: !951, line: 624, type: !461, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1192 = !DISubprogram(name: "pfm_initialize", scope: !1193, file: !1193, line: 823, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1193 = !DIFile(filename: "../include/perfmon/pfmlib.h", directory: "/local-ssd/libpfm4-eymjeez6kzzocrqb5p6y26hpb2o7cj4q-build/aidengro/spack-stage-libpfm4-4.13.0-eymjeez6kzzocrqb5p6y26hpb2o7cj4q/spack-src/perf_examples", checksumkind: CSK_MD5, checksum: "2d38033c4ff3b3331ebd0e551ec2d3c7")
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!1196}
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "pfm_err_t", file: !1193, line: 720, baseType: !235)
!1197 = !DISubprogram(name: "pfm_strerror", scope: !1193, file: !1193, line: 825, type: !1198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!447, !235}
!1200 = !DISubprogram(name: "pfm_terminate", scope: !1193, file: !1193, line: 824, type: !627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1201 = !DISubprogram(name: "syscall", scope: !947, file: !947, line: 1091, type: !1202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!632, !632, null}
!1204 = !DISubprogram(name: "strtol", scope: !951, file: !951, line: 177, type: !1205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!632, !945, !1207, !235}
!1207 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !242)

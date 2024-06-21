; ModuleID = 'samples/752.bc'
source_filename = "syst_smpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_t = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.option = type { ptr, i32, ptr, i32 }
%struct.perf_event_desc_t = type { %struct.perf_event_attr, [3 x i64], [3 x i64], ptr, i64, ptr, i64, i32, i32, i32, i32, i32, ptr }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon, i64, i64, i64, %union.anon.0, i32, %union.anon.1, %union.anon.2, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i64 }
%struct.pollfd = type { i32, i16, i16 }
%struct.perf_event_header = type { i32, i16, i16 }

@options = internal global %struct.options_t zeroinitializer, align 8, !dbg !0
@fds = internal global ptr null, align 8, !dbg !444
@num_fds = internal global i32 0, align 4, !dbg !554
@.str = private unnamed_addr constant [24 x i8] c"cannot setup event list\00", align 1, !dbg !293
@.str.1 = private unnamed_addr constant [75 x i8] c"need to set sampling period or freq on first event, use :period= or :freq=\00", align 1, !dbg !298
@pgsz = internal global i64 0, align 8, !dbg !556
@.str.2 = private unnamed_addr constant [23 x i8] c"%s period=%lu freq=%d\0A\00", align 1, !dbg !303
@.str.3 = private unnamed_addr constant [58 x i8] c"cannot attach event %s: precise mode may not be supported\00", align 1, !dbg !308
@.str.4 = private unnamed_addr constant [23 x i8] c"cannot attach event %s\00", align 1, !dbg !313
@map_size = internal global i64 0, align 8, !dbg !558
@.str.5 = private unnamed_addr constant [19 x i8] c"cannot mmap buffer\00", align 1, !dbg !315
@.str.6 = private unnamed_addr constant [32 x i8] c"cannot redirect sampling output\00", align 1, !dbg !320
@.str.7 = private unnamed_addr constant [15 x i8] c"cannot read ID\00", align 1, !dbg !325
@.str.8 = private unnamed_addr constant [12 x i8] c"ID %lu  %s\0A\00", align 1, !dbg !330
@.str.9 = private unnamed_addr constant [34 x i8] c"cannot find cgroup fs mount point\00", align 1, !dbg !335
@.str.10 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1, !dbg !340
@.str.11 = private unnamed_addr constant [36 x i8] c"Unable to generate path name %s/%s\0A\00", align 1, !dbg !345
@.str.12 = private unnamed_addr constant [24 x i8] c"no access to cgroup %s\0A\00", align 1, !dbg !350
@mainloop.ovfl_count = internal global i64 0, align 8, !dbg !352
@.str.13 = private unnamed_addr constant [30 x i8] c"libpfm initialization failed\0A\00", align 1, !dbg !379
@.str.14 = private unnamed_addr constant [28 x i8] c"cannot open cgroup file %s\0A\00", align 1, !dbg !384
@.str.15 = private unnamed_addr constant [44 x i8] c"monitoring on CPU%d, session ending in %ds\0A\00", align 1, !dbg !389
@jbuf = internal global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 16, !dbg !415
@.str.16 = private unnamed_addr constant [60 x i8] c"%lu samples collected in %lu poll events, %lu lost samples\0A\00", align 1, !dbg !394
@collected_samples = internal global i64 0, align 8, !dbg !440
@lost_samples = internal global i64 0, align 8, !dbg !442
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !399
@.str.18 = private unnamed_addr constant [13 x i8] c"hPe:m:c:d:G:\00", align 1, !dbg !402
@the_options = internal global [3 x %struct.option] [%struct.option { ptr @.str.32, i32 0, ptr null, i32 1 }, %struct.option { ptr @.str.33, i32 0, ptr @options, i32 1 }, %struct.option zeroinitializer], align 16, !dbg !601
@.str.19 = private unnamed_addr constant [24 x i8] c"events specified twice\0A\00", align 1, !dbg !407
@optarg = external global ptr, align 8
@.str.20 = private unnamed_addr constant [24 x i8] c"mmap pages already set\0A\00", align 1, !dbg !409
@.str.21 = private unnamed_addr constant [15 x i8] c"unknown option\00", align 1, !dbg !411
@gen_events = internal global ptr @.str.35, align 8, !dbg !621
@.str.22 = private unnamed_addr constant [36 x i8] c"number of pages must be power of 2\0A\00", align 1, !dbg !413
@optind = external global i32, align 4
@.str.23 = private unnamed_addr constant [13 x i8] c"/proc/mounts\00", align 1, !dbg !560
@.str.24 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !562
@.str.25 = private unnamed_addr constant [34 x i8] c"%*s %1024s %1024s %1024s %*d %*d\0A\00", align 1, !dbg !567
@.str.26 = private unnamed_addr constant [7 x i8] c"cgroup\00", align 1, !dbg !569
@.str.27 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !574
@.str.28 = private unnamed_addr constant [11 x i8] c"perf_event\00", align 1, !dbg !576
@.str.29 = private unnamed_addr constant [21 x i8] c"cannot start counter\00", align 1, !dbg !581
@stdout = external global ptr, align 8
@.str.30 = private unnamed_addr constant [20 x i8] c"cannot parse sample\00", align 1, !dbg !586
@.str.31 = private unnamed_addr constant [24 x i8] c"unknown sample type %d\0A\00", align 1, !dbg !591
@.str.32 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !593
@.str.33 = private unnamed_addr constant [8 x i8] c"no-show\00", align 1, !dbg !598
@.str.34 = private unnamed_addr constant [103 x i8] c"usage: syst_smpl [-h] [-P] [--help] [-m mmap_pages] [-f] [-e event1,...,eventn] [-c cpu] [-d seconds]\0A\00", align 1, !dbg !614
@.str.35 = private unnamed_addr constant [20 x i8] c"cycles,instructions\00", align 1, !dbg !619

; Function Attrs: nounwind uwtable
define dso_local i32 @setup_cpu(i32 noundef %cpu, i32 noundef %fd) #0 !dbg !640 {
entry:
  %cpu.addr = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %flags = alloca i32, align 4
  %i = alloca i32, align 4
  %pid = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4, !tbaa !650
  tail call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !644, metadata !DIExpression()), !dbg !654
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !650
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !645, metadata !DIExpression()), !dbg !655
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !656
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !646, metadata !DIExpression()), !dbg !657
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #12, !dbg !656
  tail call void @llvm.dbg.declare(metadata ptr %flags, metadata !647, metadata !DIExpression()), !dbg !658
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !659
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !648, metadata !DIExpression()), !dbg !660
  call void @llvm.lifetime.start.p0(i64 4, ptr %pid) #12, !dbg !659
  tail call void @llvm.dbg.declare(metadata ptr %pid, metadata !649, metadata !DIExpression()), !dbg !661
  %0 = load ptr, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 5), align 8, !dbg !662, !tbaa !663
  %call = call i32 @perf_setup_list_events(ptr noundef %0, ptr noundef @fds, ptr noundef @num_fds), !dbg !666
  store i32 %call, ptr %ret, align 4, !dbg !667, !tbaa !650
  %1 = load i32, ptr %ret, align 4, !dbg !668, !tbaa !650
  %tobool = icmp ne i32 %1, 0, !dbg !668
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !670

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr @num_fds, align 4, !dbg !671, !tbaa !650
  %tobool1 = icmp ne i32 %2, 0, !dbg !671
  br i1 %tobool1, label %if.end, label %if.then, !dbg !672

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i32, ptr, ...) @errx(i32 noundef 1, ptr noundef @.str) #13, !dbg !673
  unreachable, !dbg !673

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr @fds, align 8, !dbg !674, !tbaa !676
  %arrayidx = getelementptr inbounds %struct.perf_event_desc_t, ptr %3, i64 0, !dbg !674
  %hw = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx, i32 0, i32 0, !dbg !677
  %4 = getelementptr inbounds %struct.perf_event_attr, ptr %hw, i32 0, i32 3, !dbg !678
  %5 = load i64, ptr %4, align 8, !dbg !678, !tbaa !679
  %tobool2 = icmp ne i64 %5, 0, !dbg !674
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !680

if.then3:                                         ; preds = %if.end
  call void (i32, ptr, ...) @errx(i32 noundef 1, ptr noundef @.str.1) #13, !dbg !681
  unreachable, !dbg !681

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr @fds, align 8, !dbg !682, !tbaa !676
  %arrayidx5 = getelementptr inbounds %struct.perf_event_desc_t, ptr %6, i64 0, !dbg !682
  %fd6 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx5, i32 0, i32 8, !dbg !683
  store i32 -1, ptr %fd6, align 4, !dbg !684, !tbaa !685
  store i32 0, ptr %i, align 4, !dbg !690, !tbaa !650
  br label %for.cond, !dbg !692

for.cond:                                         ; preds = %for.inc, %if.end4
  %7 = load i32, ptr %i, align 4, !dbg !693, !tbaa !650
  %8 = load i32, ptr @num_fds, align 4, !dbg !695, !tbaa !650
  %cmp = icmp slt i32 %7, %8, !dbg !696
  br i1 %cmp, label %for.body, label %for.end, !dbg !697

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %i, align 4, !dbg !698, !tbaa !650
  %tobool7 = icmp ne i32 %9, 0, !dbg !700
  %lnot = xor i1 %tobool7, true, !dbg !700
  %lnot.ext = zext i1 %lnot to i32, !dbg !700
  %conv = sext i32 %lnot.ext to i64, !dbg !700
  %10 = load ptr, ptr @fds, align 8, !dbg !701, !tbaa !676
  %11 = load i32, ptr %i, align 4, !dbg !702, !tbaa !650
  %idxprom = sext i32 %11 to i64, !dbg !701
  %arrayidx8 = getelementptr inbounds %struct.perf_event_desc_t, ptr %10, i64 %idxprom, !dbg !701
  %hw9 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx8, i32 0, i32 0, !dbg !703
  %disabled = getelementptr inbounds %struct.perf_event_attr, ptr %hw9, i32 0, i32 6, !dbg !704
  %bf.load = load i64, ptr %disabled, align 8, !dbg !705
  %bf.value = and i64 %conv, 1, !dbg !705
  %bf.clear = and i64 %bf.load, -2, !dbg !705
  %bf.set = or i64 %bf.clear, %bf.value, !dbg !705
  store i64 %bf.set, ptr %disabled, align 8, !dbg !705
  %12 = load ptr, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 6), align 8, !dbg !706, !tbaa !708
  %tobool10 = icmp ne ptr %12, null, !dbg !709
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !710

if.then11:                                        ; preds = %for.body
  store i32 4, ptr %flags, align 4, !dbg !711, !tbaa !650
  %13 = load i32, ptr %fd.addr, align 4, !dbg !713, !tbaa !650
  store i32 %13, ptr %pid, align 4, !dbg !714, !tbaa !650
  br label %if.end12, !dbg !715

if.else:                                          ; preds = %for.body
  store i32 0, ptr %flags, align 4, !dbg !716, !tbaa !650
  store i32 -1, ptr %pid, align 4, !dbg !718, !tbaa !650
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  %14 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 3), align 4, !dbg !719, !tbaa !721
  %tobool13 = icmp ne i32 %14, 0, !dbg !722
  br i1 %tobool13, label %if.then14, label %if.end21, !dbg !723

if.then14:                                        ; preds = %if.end12
  %15 = load ptr, ptr @fds, align 8, !dbg !724, !tbaa !676
  %16 = load i32, ptr %i, align 4, !dbg !725, !tbaa !650
  %idxprom15 = sext i32 %16 to i64, !dbg !724
  %arrayidx16 = getelementptr inbounds %struct.perf_event_desc_t, ptr %15, i64 %idxprom15, !dbg !724
  %hw17 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx16, i32 0, i32 0, !dbg !726
  %pinned = getelementptr inbounds %struct.perf_event_attr, ptr %hw17, i32 0, i32 6, !dbg !727
  %bf.load18 = load i64, ptr %pinned, align 8, !dbg !728
  %bf.clear19 = and i64 %bf.load18, -5, !dbg !728
  %bf.set20 = or i64 %bf.clear19, 4, !dbg !728
  store i64 %bf.set20, ptr %pinned, align 8, !dbg !728
  br label %if.end21, !dbg !724

if.end21:                                         ; preds = %if.then14, %if.end12
  %17 = load ptr, ptr @fds, align 8, !dbg !729, !tbaa !676
  %18 = load i32, ptr %i, align 4, !dbg !731, !tbaa !650
  %idxprom22 = sext i32 %18 to i64, !dbg !729
  %arrayidx23 = getelementptr inbounds %struct.perf_event_desc_t, ptr %17, i64 %idxprom22, !dbg !729
  %hw24 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx23, i32 0, i32 0, !dbg !732
  %19 = getelementptr inbounds %struct.perf_event_attr, ptr %hw24, i32 0, i32 3, !dbg !733
  %20 = load i64, ptr %19, align 8, !dbg !733, !tbaa !679
  %tobool25 = icmp ne i64 %20, 0, !dbg !729
  br i1 %tobool25, label %if.then26, label %if.end85, !dbg !734

if.then26:                                        ; preds = %if.end21
  %21 = load ptr, ptr @fds, align 8, !dbg !735, !tbaa !676
  %22 = load i32, ptr %i, align 4, !dbg !738, !tbaa !650
  %idxprom27 = sext i32 %22 to i64, !dbg !735
  %arrayidx28 = getelementptr inbounds %struct.perf_event_desc_t, ptr %21, i64 %idxprom27, !dbg !735
  %hw29 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx28, i32 0, i32 0, !dbg !739
  %23 = getelementptr inbounds %struct.perf_event_attr, ptr %hw29, i32 0, i32 3, !dbg !740
  %24 = load i64, ptr %23, align 8, !dbg !740, !tbaa !679
  %tobool30 = icmp ne i64 %24, 0, !dbg !735
  br i1 %tobool30, label %if.then31, label %if.end43, !dbg !741

if.then31:                                        ; preds = %if.then26
  %25 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 1), align 4, !dbg !742, !tbaa !744
  %conv32 = sext i32 %25 to i64, !dbg !745
  %26 = load i64, ptr @pgsz, align 8, !dbg !746, !tbaa !747
  %mul = mul i64 %conv32, %26, !dbg !748
  %div = udiv i64 %mul, 2, !dbg !749
  %conv33 = trunc i64 %div to i32, !dbg !750
  %27 = load ptr, ptr @fds, align 8, !dbg !751, !tbaa !676
  %28 = load i32, ptr %i, align 4, !dbg !752, !tbaa !650
  %idxprom34 = sext i32 %28 to i64, !dbg !751
  %arrayidx35 = getelementptr inbounds %struct.perf_event_desc_t, ptr %27, i64 %idxprom34, !dbg !751
  %hw36 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx35, i32 0, i32 0, !dbg !753
  %29 = getelementptr inbounds %struct.perf_event_attr, ptr %hw36, i32 0, i32 7, !dbg !754
  store i32 %conv33, ptr %29, align 8, !dbg !755, !tbaa !679
  %30 = load ptr, ptr @fds, align 8, !dbg !756, !tbaa !676
  %31 = load i32, ptr %i, align 4, !dbg !757, !tbaa !650
  %idxprom37 = sext i32 %31 to i64, !dbg !756
  %arrayidx38 = getelementptr inbounds %struct.perf_event_desc_t, ptr %30, i64 %idxprom37, !dbg !756
  %hw39 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx38, i32 0, i32 0, !dbg !758
  %watermark = getelementptr inbounds %struct.perf_event_attr, ptr %hw39, i32 0, i32 6, !dbg !759
  %bf.load40 = load i64, ptr %watermark, align 8, !dbg !760
  %bf.clear41 = and i64 %bf.load40, -16385, !dbg !760
  %bf.set42 = or i64 %bf.clear41, 16384, !dbg !760
  store i64 %bf.set42, ptr %watermark, align 8, !dbg !760
  br label %if.end43, !dbg !761

if.end43:                                         ; preds = %if.then31, %if.then26
  %32 = load ptr, ptr @fds, align 8, !dbg !762, !tbaa !676
  %33 = load i32, ptr %i, align 4, !dbg !763, !tbaa !650
  %idxprom44 = sext i32 %33 to i64, !dbg !762
  %arrayidx45 = getelementptr inbounds %struct.perf_event_desc_t, ptr %32, i64 %idxprom44, !dbg !762
  %hw46 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx45, i32 0, i32 0, !dbg !764
  %sample_type = getelementptr inbounds %struct.perf_event_attr, ptr %hw46, i32 0, i32 4, !dbg !765
  store i64 919, ptr %sample_type, align 8, !dbg !766, !tbaa !767
  %34 = load i32, ptr @num_fds, align 4, !dbg !768, !tbaa !650
  %cmp47 = icmp sgt i32 %34, 1, !dbg !770
  br i1 %cmp47, label %if.then49, label %if.end54, !dbg !771

if.then49:                                        ; preds = %if.end43
  %35 = load ptr, ptr @fds, align 8, !dbg !772, !tbaa !676
  %36 = load i32, ptr %i, align 4, !dbg !773, !tbaa !650
  %idxprom50 = sext i32 %36 to i64, !dbg !772
  %arrayidx51 = getelementptr inbounds %struct.perf_event_desc_t, ptr %35, i64 %idxprom50, !dbg !772
  %hw52 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx51, i32 0, i32 0, !dbg !774
  %sample_type53 = getelementptr inbounds %struct.perf_event_attr, ptr %hw52, i32 0, i32 4, !dbg !775
  %37 = load i64, ptr %sample_type53, align 8, !dbg !776, !tbaa !767
  %or = or i64 %37, 65536, !dbg !776
  store i64 %or, ptr %sample_type53, align 8, !dbg !776, !tbaa !767
  br label %if.end54, !dbg !772

if.end54:                                         ; preds = %if.then49, %if.end43
  %38 = load ptr, ptr @fds, align 8, !dbg !777, !tbaa !676
  %39 = load i32, ptr %i, align 4, !dbg !778, !tbaa !650
  %idxprom55 = sext i32 %39 to i64, !dbg !777
  %arrayidx56 = getelementptr inbounds %struct.perf_event_desc_t, ptr %38, i64 %idxprom55, !dbg !777
  %name = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx56, i32 0, i32 3, !dbg !779
  %40 = load ptr, ptr %name, align 8, !dbg !779, !tbaa !780
  %41 = load ptr, ptr @fds, align 8, !dbg !781, !tbaa !676
  %42 = load i32, ptr %i, align 4, !dbg !782, !tbaa !650
  %idxprom57 = sext i32 %42 to i64, !dbg !781
  %arrayidx58 = getelementptr inbounds %struct.perf_event_desc_t, ptr %41, i64 %idxprom57, !dbg !781
  %hw59 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx58, i32 0, i32 0, !dbg !783
  %43 = getelementptr inbounds %struct.perf_event_attr, ptr %hw59, i32 0, i32 3, !dbg !784
  %44 = load i64, ptr %43, align 8, !dbg !784, !tbaa !679
  %45 = load ptr, ptr @fds, align 8, !dbg !785, !tbaa !676
  %46 = load i32, ptr %i, align 4, !dbg !786, !tbaa !650
  %idxprom60 = sext i32 %46 to i64, !dbg !785
  %arrayidx61 = getelementptr inbounds %struct.perf_event_desc_t, ptr %45, i64 %idxprom60, !dbg !785
  %hw62 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx61, i32 0, i32 0, !dbg !787
  %freq = getelementptr inbounds %struct.perf_event_attr, ptr %hw62, i32 0, i32 6, !dbg !788
  %bf.load63 = load i64, ptr %freq, align 8, !dbg !788
  %bf.lshr = lshr i64 %bf.load63, 10, !dbg !788
  %bf.clear64 = and i64 %bf.lshr, 1, !dbg !788
  %conv65 = trunc i64 %bf.clear64 to i32, !dbg !785
  %call66 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %40, i64 noundef %44, i32 noundef %conv65), !dbg !789
  %47 = load ptr, ptr @fds, align 8, !dbg !790, !tbaa !676
  %48 = load i32, ptr %i, align 4, !dbg !791, !tbaa !650
  %idxprom67 = sext i32 %48 to i64, !dbg !790
  %arrayidx68 = getelementptr inbounds %struct.perf_event_desc_t, ptr %47, i64 %idxprom67, !dbg !790
  %hw69 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx68, i32 0, i32 0, !dbg !792
  %read_format = getelementptr inbounds %struct.perf_event_attr, ptr %hw69, i32 0, i32 5, !dbg !793
  store i64 3, ptr %read_format, align 8, !dbg !794, !tbaa !795
  %49 = load ptr, ptr @fds, align 8, !dbg !796, !tbaa !676
  %50 = load i32, ptr %i, align 4, !dbg !798, !tbaa !650
  %idxprom70 = sext i32 %50 to i64, !dbg !796
  %arrayidx71 = getelementptr inbounds %struct.perf_event_desc_t, ptr %49, i64 %idxprom70, !dbg !796
  %hw72 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx71, i32 0, i32 0, !dbg !799
  %freq73 = getelementptr inbounds %struct.perf_event_attr, ptr %hw72, i32 0, i32 6, !dbg !800
  %bf.load74 = load i64, ptr %freq73, align 8, !dbg !800
  %bf.lshr75 = lshr i64 %bf.load74, 10, !dbg !800
  %bf.clear76 = and i64 %bf.lshr75, 1, !dbg !800
  %tobool77 = icmp ne i64 %bf.clear76, 0, !dbg !796
  br i1 %tobool77, label %if.then78, label %if.end84, !dbg !801

if.then78:                                        ; preds = %if.end54
  %51 = load ptr, ptr @fds, align 8, !dbg !802, !tbaa !676
  %52 = load i32, ptr %i, align 4, !dbg !803, !tbaa !650
  %idxprom79 = sext i32 %52 to i64, !dbg !802
  %arrayidx80 = getelementptr inbounds %struct.perf_event_desc_t, ptr %51, i64 %idxprom79, !dbg !802
  %hw81 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx80, i32 0, i32 0, !dbg !804
  %sample_type82 = getelementptr inbounds %struct.perf_event_attr, ptr %hw81, i32 0, i32 4, !dbg !805
  %53 = load i64, ptr %sample_type82, align 8, !dbg !806, !tbaa !767
  %or83 = or i64 %53, 256, !dbg !806
  store i64 %or83, ptr %sample_type82, align 8, !dbg !806, !tbaa !767
  br label %if.end84, !dbg !802

if.end84:                                         ; preds = %if.then78, %if.end54
  br label %if.end85, !dbg !807

if.end85:                                         ; preds = %if.end84, %if.end21
  %54 = load ptr, ptr @fds, align 8, !dbg !808, !tbaa !676
  %55 = load i32, ptr %i, align 4, !dbg !809, !tbaa !650
  %idxprom86 = sext i32 %55 to i64, !dbg !808
  %arrayidx87 = getelementptr inbounds %struct.perf_event_desc_t, ptr %54, i64 %idxprom86, !dbg !808
  %hw88 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx87, i32 0, i32 0, !dbg !810
  %56 = load i32, ptr %pid, align 4, !dbg !811, !tbaa !650
  %57 = load i32, ptr %cpu.addr, align 4, !dbg !812, !tbaa !650
  %58 = load ptr, ptr @fds, align 8, !dbg !813, !tbaa !676
  %arrayidx89 = getelementptr inbounds %struct.perf_event_desc_t, ptr %58, i64 0, !dbg !813
  %fd90 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx89, i32 0, i32 8, !dbg !814
  %59 = load i32, ptr %fd90, align 4, !dbg !814, !tbaa !685
  %60 = load i32, ptr %flags, align 4, !dbg !815, !tbaa !650
  %conv91 = sext i32 %60 to i64, !dbg !815
  %call92 = call i32 @perf_event_open(ptr noundef %hw88, i32 noundef %56, i32 noundef %57, i32 noundef %59, i64 noundef %conv91), !dbg !816
  %61 = load ptr, ptr @fds, align 8, !dbg !817, !tbaa !676
  %62 = load i32, ptr %i, align 4, !dbg !818, !tbaa !650
  %idxprom93 = sext i32 %62 to i64, !dbg !817
  %arrayidx94 = getelementptr inbounds %struct.perf_event_desc_t, ptr %61, i64 %idxprom93, !dbg !817
  %fd95 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx94, i32 0, i32 8, !dbg !819
  store i32 %call92, ptr %fd95, align 4, !dbg !820, !tbaa !685
  %63 = load ptr, ptr @fds, align 8, !dbg !821, !tbaa !676
  %64 = load i32, ptr %i, align 4, !dbg !823, !tbaa !650
  %idxprom96 = sext i32 %64 to i64, !dbg !821
  %arrayidx97 = getelementptr inbounds %struct.perf_event_desc_t, ptr %63, i64 %idxprom96, !dbg !821
  %fd98 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx97, i32 0, i32 8, !dbg !824
  %65 = load i32, ptr %fd98, align 4, !dbg !824, !tbaa !685
  %cmp99 = icmp eq i32 %65, -1, !dbg !825
  br i1 %cmp99, label %if.then101, label %if.end117, !dbg !826

if.then101:                                       ; preds = %if.end85
  %66 = load ptr, ptr @fds, align 8, !dbg !827, !tbaa !676
  %67 = load i32, ptr %i, align 4, !dbg !830, !tbaa !650
  %idxprom102 = sext i32 %67 to i64, !dbg !827
  %arrayidx103 = getelementptr inbounds %struct.perf_event_desc_t, ptr %66, i64 %idxprom102, !dbg !827
  %hw104 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx103, i32 0, i32 0, !dbg !831
  %precise_ip = getelementptr inbounds %struct.perf_event_attr, ptr %hw104, i32 0, i32 6, !dbg !832
  %bf.load105 = load i64, ptr %precise_ip, align 8, !dbg !832
  %bf.lshr106 = lshr i64 %bf.load105, 15, !dbg !832
  %bf.clear107 = and i64 %bf.lshr106, 3, !dbg !832
  %tobool108 = icmp ne i64 %bf.clear107, 0, !dbg !827
  br i1 %tobool108, label %if.then109, label %if.end113, !dbg !833

if.then109:                                       ; preds = %if.then101
  %68 = load ptr, ptr @fds, align 8, !dbg !834, !tbaa !676
  %69 = load i32, ptr %i, align 4, !dbg !835, !tbaa !650
  %idxprom110 = sext i32 %69 to i64, !dbg !834
  %arrayidx111 = getelementptr inbounds %struct.perf_event_desc_t, ptr %68, i64 %idxprom110, !dbg !834
  %name112 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx111, i32 0, i32 3, !dbg !836
  %70 = load ptr, ptr %name112, align 8, !dbg !836, !tbaa !780
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef @.str.3, ptr noundef %70) #13, !dbg !837
  unreachable, !dbg !837

if.end113:                                        ; preds = %if.then101
  %71 = load ptr, ptr @fds, align 8, !dbg !838, !tbaa !676
  %72 = load i32, ptr %i, align 4, !dbg !839, !tbaa !650
  %idxprom114 = sext i32 %72 to i64, !dbg !838
  %arrayidx115 = getelementptr inbounds %struct.perf_event_desc_t, ptr %71, i64 %idxprom114, !dbg !838
  %name116 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx115, i32 0, i32 3, !dbg !840
  %73 = load ptr, ptr %name116, align 8, !dbg !840, !tbaa !780
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef @.str.4, ptr noundef %73) #13, !dbg !841
  unreachable, !dbg !841

if.end117:                                        ; preds = %if.end85
  br label %for.inc, !dbg !842

for.inc:                                          ; preds = %if.end117
  %74 = load i32, ptr %i, align 4, !dbg !843, !tbaa !650
  %inc = add nsw i32 %74, 1, !dbg !843
  store i32 %inc, ptr %i, align 4, !dbg !843, !tbaa !650
  br label %for.cond, !dbg !844, !llvm.loop !845

for.end:                                          ; preds = %for.cond
  %75 = load i64, ptr @map_size, align 8, !dbg !848, !tbaa !747
  %76 = load ptr, ptr @fds, align 8, !dbg !849, !tbaa !676
  %arrayidx118 = getelementptr inbounds %struct.perf_event_desc_t, ptr %76, i64 0, !dbg !849
  %fd119 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx118, i32 0, i32 8, !dbg !850
  %77 = load i32, ptr %fd119, align 4, !dbg !850, !tbaa !685
  %call120 = call ptr @mmap(ptr noundef null, i64 noundef %75, i32 noundef 3, i32 noundef 1, i32 noundef %77, i64 noundef 0) #12, !dbg !851
  %78 = load ptr, ptr @fds, align 8, !dbg !852, !tbaa !676
  %arrayidx121 = getelementptr inbounds %struct.perf_event_desc_t, ptr %78, i64 0, !dbg !852
  %buf = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx121, i32 0, i32 5, !dbg !853
  store ptr %call120, ptr %buf, align 8, !dbg !854, !tbaa !855
  %79 = load ptr, ptr @fds, align 8, !dbg !856, !tbaa !676
  %arrayidx122 = getelementptr inbounds %struct.perf_event_desc_t, ptr %79, i64 0, !dbg !856
  %buf123 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx122, i32 0, i32 5, !dbg !858
  %80 = load ptr, ptr %buf123, align 8, !dbg !858, !tbaa !855
  %cmp124 = icmp eq ptr %80, inttoptr (i64 -1 to ptr), !dbg !859
  br i1 %cmp124, label %if.then126, label %if.end127, !dbg !860

if.then126:                                       ; preds = %for.end
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef @.str.5) #13, !dbg !861
  unreachable, !dbg !861

if.end127:                                        ; preds = %for.end
  %81 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 1), align 4, !dbg !862, !tbaa !744
  %conv128 = sext i32 %81 to i64, !dbg !863
  %82 = load i64, ptr @pgsz, align 8, !dbg !864, !tbaa !747
  %mul129 = mul i64 %conv128, %82, !dbg !865
  %sub = sub i64 %mul129, 1, !dbg !866
  %83 = load ptr, ptr @fds, align 8, !dbg !867, !tbaa !676
  %arrayidx130 = getelementptr inbounds %struct.perf_event_desc_t, ptr %83, i64 0, !dbg !867
  %pgmsk = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx130, i32 0, i32 6, !dbg !868
  store i64 %sub, ptr %pgmsk, align 8, !dbg !869, !tbaa !870
  store i32 1, ptr %i, align 4, !dbg !871, !tbaa !650
  br label %for.cond131, !dbg !873

for.cond131:                                      ; preds = %for.inc150, %if.end127
  %84 = load i32, ptr %i, align 4, !dbg !874, !tbaa !650
  %85 = load i32, ptr @num_fds, align 4, !dbg !876, !tbaa !650
  %cmp132 = icmp slt i32 %84, %85, !dbg !877
  br i1 %cmp132, label %for.body134, label %for.end152, !dbg !878

for.body134:                                      ; preds = %for.cond131
  %86 = load ptr, ptr @fds, align 8, !dbg !879, !tbaa !676
  %87 = load i32, ptr %i, align 4, !dbg !882, !tbaa !650
  %idxprom135 = sext i32 %87 to i64, !dbg !879
  %arrayidx136 = getelementptr inbounds %struct.perf_event_desc_t, ptr %86, i64 %idxprom135, !dbg !879
  %hw137 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx136, i32 0, i32 0, !dbg !883
  %88 = getelementptr inbounds %struct.perf_event_attr, ptr %hw137, i32 0, i32 3, !dbg !884
  %89 = load i64, ptr %88, align 8, !dbg !884, !tbaa !679
  %tobool138 = icmp ne i64 %89, 0, !dbg !879
  br i1 %tobool138, label %if.end140, label %if.then139, !dbg !885

if.then139:                                       ; preds = %for.body134
  br label %for.inc150, !dbg !886

if.end140:                                        ; preds = %for.body134
  %90 = load ptr, ptr @fds, align 8, !dbg !887, !tbaa !676
  %91 = load i32, ptr %i, align 4, !dbg !888, !tbaa !650
  %idxprom141 = sext i32 %91 to i64, !dbg !887
  %arrayidx142 = getelementptr inbounds %struct.perf_event_desc_t, ptr %90, i64 %idxprom141, !dbg !887
  %fd143 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx142, i32 0, i32 8, !dbg !889
  %92 = load i32, ptr %fd143, align 4, !dbg !889, !tbaa !685
  %93 = load ptr, ptr @fds, align 8, !dbg !890, !tbaa !676
  %arrayidx144 = getelementptr inbounds %struct.perf_event_desc_t, ptr %93, i64 0, !dbg !890
  %fd145 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx144, i32 0, i32 8, !dbg !891
  %94 = load i32, ptr %fd145, align 4, !dbg !891, !tbaa !685
  %call146 = call i32 (i32, i64, ...) @ioctl(i32 noundef %92, i64 noundef 9221, i32 noundef %94) #12, !dbg !892
  store i32 %call146, ptr %ret, align 4, !dbg !893, !tbaa !650
  %95 = load i32, ptr %ret, align 4, !dbg !894, !tbaa !650
  %tobool147 = icmp ne i32 %95, 0, !dbg !894
  br i1 %tobool147, label %if.then148, label %if.end149, !dbg !896

if.then148:                                       ; preds = %if.end140
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef @.str.6) #13, !dbg !897
  unreachable, !dbg !897

if.end149:                                        ; preds = %if.end140
  br label %for.inc150, !dbg !898

for.inc150:                                       ; preds = %if.end149, %if.then139
  %96 = load i32, ptr %i, align 4, !dbg !899, !tbaa !650
  %inc151 = add nsw i32 %96, 1, !dbg !899
  store i32 %inc151, ptr %i, align 4, !dbg !899, !tbaa !650
  br label %for.cond131, !dbg !900, !llvm.loop !901

for.end152:                                       ; preds = %for.cond131
  %97 = load i32, ptr @num_fds, align 4, !dbg !903, !tbaa !650
  %cmp153 = icmp sgt i32 %97, 1, !dbg !905
  br i1 %cmp153, label %land.lhs.true, label %if.end184, !dbg !906

land.lhs.true:                                    ; preds = %for.end152
  %98 = load ptr, ptr @fds, align 8, !dbg !907, !tbaa !676
  %arrayidx155 = getelementptr inbounds %struct.perf_event_desc_t, ptr %98, i64 0, !dbg !907
  %fd156 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx155, i32 0, i32 8, !dbg !908
  %99 = load i32, ptr %fd156, align 4, !dbg !908, !tbaa !685
  %cmp157 = icmp sgt i32 %99, -1, !dbg !909
  br i1 %cmp157, label %if.then159, label %if.end184, !dbg !910

if.then159:                                       ; preds = %land.lhs.true
  store i32 0, ptr %i, align 4, !dbg !911, !tbaa !650
  br label %for.cond160, !dbg !914

for.cond160:                                      ; preds = %for.inc181, %if.then159
  %100 = load i32, ptr %i, align 4, !dbg !915, !tbaa !650
  %101 = load i32, ptr @num_fds, align 4, !dbg !917, !tbaa !650
  %cmp161 = icmp slt i32 %100, %101, !dbg !918
  br i1 %cmp161, label %for.body163, label %for.end183, !dbg !919

for.body163:                                      ; preds = %for.cond160
  %102 = load ptr, ptr @fds, align 8, !dbg !920, !tbaa !676
  %103 = load i32, ptr %i, align 4, !dbg !922, !tbaa !650
  %idxprom164 = sext i32 %103 to i64, !dbg !920
  %arrayidx165 = getelementptr inbounds %struct.perf_event_desc_t, ptr %102, i64 %idxprom164, !dbg !920
  %fd166 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx165, i32 0, i32 8, !dbg !923
  %104 = load i32, ptr %fd166, align 4, !dbg !923, !tbaa !685
  %105 = load ptr, ptr @fds, align 8, !dbg !924, !tbaa !676
  %106 = load i32, ptr %i, align 4, !dbg !925, !tbaa !650
  %idxprom167 = sext i32 %106 to i64, !dbg !924
  %arrayidx168 = getelementptr inbounds %struct.perf_event_desc_t, ptr %105, i64 %idxprom167, !dbg !924
  %id = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx168, i32 0, i32 4, !dbg !926
  %call169 = call i32 (i32, i64, ...) @ioctl(i32 noundef %104, i64 noundef 2148017159, ptr noundef %id) #12, !dbg !927
  store i32 %call169, ptr %ret, align 4, !dbg !928, !tbaa !650
  %107 = load i32, ptr %ret, align 4, !dbg !929, !tbaa !650
  %cmp170 = icmp eq i32 %107, -1, !dbg !931
  br i1 %cmp170, label %if.then172, label %if.end173, !dbg !932

if.then172:                                       ; preds = %for.body163
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef @.str.7) #13, !dbg !933
  unreachable, !dbg !933

if.end173:                                        ; preds = %for.body163
  %108 = load ptr, ptr @fds, align 8, !dbg !934, !tbaa !676
  %109 = load i32, ptr %i, align 4, !dbg !935, !tbaa !650
  %idxprom174 = sext i32 %109 to i64, !dbg !934
  %arrayidx175 = getelementptr inbounds %struct.perf_event_desc_t, ptr %108, i64 %idxprom174, !dbg !934
  %id176 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx175, i32 0, i32 4, !dbg !936
  %110 = load i64, ptr %id176, align 8, !dbg !936, !tbaa !937
  %111 = load ptr, ptr @fds, align 8, !dbg !938, !tbaa !676
  %112 = load i32, ptr %i, align 4, !dbg !939, !tbaa !650
  %idxprom177 = sext i32 %112 to i64, !dbg !938
  %arrayidx178 = getelementptr inbounds %struct.perf_event_desc_t, ptr %111, i64 %idxprom177, !dbg !938
  %name179 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx178, i32 0, i32 3, !dbg !940
  %113 = load ptr, ptr %name179, align 8, !dbg !940, !tbaa !780
  %call180 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i64 noundef %110, ptr noundef %113), !dbg !941
  br label %for.inc181, !dbg !942

for.inc181:                                       ; preds = %if.end173
  %114 = load i32, ptr %i, align 4, !dbg !943, !tbaa !650
  %inc182 = add nsw i32 %114, 1, !dbg !943
  store i32 %inc182, ptr %i, align 4, !dbg !943, !tbaa !650
  br label %for.cond160, !dbg !944, !llvm.loop !945

for.end183:                                       ; preds = %for.cond160
  br label %if.end184, !dbg !947

if.end184:                                        ; preds = %for.end183, %land.lhs.true, %for.end152
  call void @llvm.lifetime.end.p0(i64 4, ptr %pid) #12, !dbg !948
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !948
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #12, !dbg !948
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !948
  ret i32 0, !dbg !949
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !950 i32 @perf_setup_list_events(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noreturn
declare !dbg !954 void @errx(i32 noundef, ptr noundef, ...) #3

declare !dbg !958 i32 @printf(ptr noundef, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @perf_event_open(ptr noundef %hw_event_uptr, i32 noundef %pid, i32 noundef %cpu, i32 noundef %group_fd, i64 noundef %flags) #4 !dbg !963 {
entry:
  %hw_event_uptr.addr = alloca ptr, align 8
  %pid.addr = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %group_fd.addr = alloca i32, align 4
  %flags.addr = alloca i64, align 8
  store ptr %hw_event_uptr, ptr %hw_event_uptr.addr, align 8, !tbaa !676
  tail call void @llvm.dbg.declare(metadata ptr %hw_event_uptr.addr, metadata !971, metadata !DIExpression()), !dbg !976
  store i32 %pid, ptr %pid.addr, align 4, !tbaa !650
  tail call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !972, metadata !DIExpression()), !dbg !977
  store i32 %cpu, ptr %cpu.addr, align 4, !tbaa !650
  tail call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !973, metadata !DIExpression()), !dbg !978
  store i32 %group_fd, ptr %group_fd.addr, align 4, !tbaa !650
  tail call void @llvm.dbg.declare(metadata ptr %group_fd.addr, metadata !974, metadata !DIExpression()), !dbg !979
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !747
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !975, metadata !DIExpression()), !dbg !980
  %0 = load ptr, ptr %hw_event_uptr.addr, align 8, !dbg !981, !tbaa !676
  %1 = load i32, ptr %pid.addr, align 4, !dbg !982, !tbaa !650
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !983, !tbaa !650
  %3 = load i32, ptr %group_fd.addr, align 4, !dbg !984, !tbaa !650
  %4 = load i64, ptr %flags.addr, align 8, !dbg !985, !tbaa !747
  %call = call i64 (i64, ...) @syscall(i64 noundef 298, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) #12, !dbg !986
  %conv = trunc i64 %call to i32, !dbg !986
  ret i32 %conv, !dbg !987
}

; Function Attrs: noreturn
declare !dbg !988 void @err(i32 noundef, ptr noundef, ...) #3

; Function Attrs: nounwind
declare !dbg !989 ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #5

; Function Attrs: nounwind
declare !dbg !994 i32 @ioctl(i32 noundef, i64 noundef, ...) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @open_cgroup(ptr noundef %name) #0 !dbg !998 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %path = alloca [1025 x i8], align 16
  %mnt = alloca [1025 x i8], align 16
  %cfd = alloca i32, align 4
  %retlen = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !676
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1002, metadata !DIExpression()), !dbg !1010
  call void @llvm.lifetime.start.p0(i64 1025, ptr %path) #12, !dbg !1011
  tail call void @llvm.dbg.declare(metadata ptr %path, metadata !1003, metadata !DIExpression()), !dbg !1012
  call void @llvm.lifetime.start.p0(i64 1025, ptr %mnt) #12, !dbg !1013
  tail call void @llvm.dbg.declare(metadata ptr %mnt, metadata !1007, metadata !DIExpression()), !dbg !1014
  call void @llvm.lifetime.start.p0(i64 4, ptr %cfd) #12, !dbg !1015
  tail call void @llvm.dbg.declare(metadata ptr %cfd, metadata !1008, metadata !DIExpression()), !dbg !1016
  store i32 -1, ptr %cfd, align 4, !dbg !1016, !tbaa !650
  call void @llvm.lifetime.start.p0(i64 4, ptr %retlen) #12, !dbg !1017
  tail call void @llvm.dbg.declare(metadata ptr %retlen, metadata !1009, metadata !DIExpression()), !dbg !1018
  %arraydecay = getelementptr inbounds [1025 x i8], ptr %mnt, i64 0, i64 0, !dbg !1019
  %call = call i32 @cgroupfs_find_mountpoint(ptr noundef %arraydecay, i64 noundef 1025), !dbg !1021
  %tobool = icmp ne i32 %call, 0, !dbg !1021
  br i1 %tobool, label %if.then, label %if.end, !dbg !1022

if.then:                                          ; preds = %entry
  call void (i32, ptr, ...) @errx(i32 noundef 1, ptr noundef @.str.9) #13, !dbg !1023
  unreachable, !dbg !1023

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [1025 x i8], ptr %path, i64 0, i64 0, !dbg !1024
  %arraydecay2 = getelementptr inbounds [1025 x i8], ptr %mnt, i64 0, i64 0, !dbg !1025
  %0 = load ptr, ptr %name.addr, align 8, !dbg !1026, !tbaa !676
  %call3 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay1, i64 noundef 1024, ptr noundef @.str.10, ptr noundef %arraydecay2, ptr noundef %0) #12, !dbg !1027
  store i32 %call3, ptr %retlen, align 4, !dbg !1028, !tbaa !650
  %1 = load i32, ptr %retlen, align 4, !dbg !1029, !tbaa !650
  %cmp = icmp sle i32 %1, 0, !dbg !1031
  br i1 %cmp, label %if.then5, label %lor.lhs.false, !dbg !1032

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, ptr %retlen, align 4, !dbg !1033, !tbaa !650
  %cmp4 = icmp sle i32 1024, %2, !dbg !1034
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !1035

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %arraydecay6 = getelementptr inbounds [1025 x i8], ptr %mnt, i64 0, i64 0, !dbg !1036
  %3 = load ptr, ptr %name.addr, align 8, !dbg !1038, !tbaa !676
  call void (ptr, ...) @warn(ptr noundef @.str.11, ptr noundef %arraydecay6, ptr noundef %3), !dbg !1039
  %4 = load i32, ptr %cfd, align 4, !dbg !1040, !tbaa !650
  store i32 %4, ptr %retval, align 4, !dbg !1041
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1041

if.end7:                                          ; preds = %lor.lhs.false
  %arraydecay8 = getelementptr inbounds [1025 x i8], ptr %path, i64 0, i64 0, !dbg !1042
  %call9 = call i32 (ptr, i32, ...) @open(ptr noundef %arraydecay8, i32 noundef 0), !dbg !1043
  store i32 %call9, ptr %cfd, align 4, !dbg !1044, !tbaa !650
  %5 = load i32, ptr %cfd, align 4, !dbg !1045, !tbaa !650
  %cmp10 = icmp eq i32 %5, -1, !dbg !1047
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !1048

if.then11:                                        ; preds = %if.end7
  %6 = load ptr, ptr %name.addr, align 8, !dbg !1049, !tbaa !676
  call void (ptr, ...) @warn(ptr noundef @.str.12, ptr noundef %6), !dbg !1050
  br label %if.end12, !dbg !1050

if.end12:                                         ; preds = %if.then11, %if.end7
  %7 = load i32, ptr %cfd, align 4, !dbg !1051, !tbaa !650
  store i32 %7, ptr %retval, align 4, !dbg !1052
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1052

cleanup:                                          ; preds = %if.end12, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %retlen) #12, !dbg !1053
  call void @llvm.lifetime.end.p0(i64 4, ptr %cfd) #12, !dbg !1053
  call void @llvm.lifetime.end.p0(i64 1025, ptr %mnt) #12, !dbg !1053
  call void @llvm.lifetime.end.p0(i64 1025, ptr %path) #12, !dbg !1053
  %8 = load i32, ptr %retval, align 4, !dbg !1053
  ret i32 %8, !dbg !1053
}

; Function Attrs: nounwind uwtable
define internal i32 @cgroupfs_find_mountpoint(ptr noundef %buf, i64 noundef %maxlen) #0 !dbg !1054 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %maxlen.addr = alloca i64, align 8
  %fp = alloca ptr, align 8
  %mountpoint = alloca [1025 x i8], align 16
  %tokens = alloca [1025 x i8], align 16
  %type = alloca [1025 x i8], align 16
  %token = alloca ptr, align 8
  %saved_ptr = alloca ptr, align 8
  %found = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !676
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1058, metadata !DIExpression()), !dbg !1113
  store i64 %maxlen, ptr %maxlen.addr, align 8, !tbaa !747
  tail call void @llvm.dbg.declare(metadata ptr %maxlen.addr, metadata !1059, metadata !DIExpression()), !dbg !1114
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #12, !dbg !1115
  tail call void @llvm.dbg.declare(metadata ptr %fp, metadata !1060, metadata !DIExpression()), !dbg !1116
  call void @llvm.lifetime.start.p0(i64 1025, ptr %mountpoint) #12, !dbg !1117
  tail call void @llvm.dbg.declare(metadata ptr %mountpoint, metadata !1107, metadata !DIExpression()), !dbg !1118
  call void @llvm.lifetime.start.p0(i64 1025, ptr %tokens) #12, !dbg !1117
  tail call void @llvm.dbg.declare(metadata ptr %tokens, metadata !1108, metadata !DIExpression()), !dbg !1119
  call void @llvm.lifetime.start.p0(i64 1025, ptr %type) #12, !dbg !1117
  tail call void @llvm.dbg.declare(metadata ptr %type, metadata !1109, metadata !DIExpression()), !dbg !1120
  call void @llvm.lifetime.start.p0(i64 8, ptr %token) #12, !dbg !1121
  tail call void @llvm.dbg.declare(metadata ptr %token, metadata !1110, metadata !DIExpression()), !dbg !1122
  call void @llvm.lifetime.start.p0(i64 8, ptr %saved_ptr) #12, !dbg !1121
  tail call void @llvm.dbg.declare(metadata ptr %saved_ptr, metadata !1111, metadata !DIExpression()), !dbg !1123
  store ptr null, ptr %saved_ptr, align 8, !dbg !1123, !tbaa !676
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #12, !dbg !1124
  tail call void @llvm.dbg.declare(metadata ptr %found, metadata !1112, metadata !DIExpression()), !dbg !1125
  store i32 0, ptr %found, align 4, !dbg !1125, !tbaa !650
  %call = call noalias ptr @fopen(ptr noundef @.str.23, ptr noundef @.str.24), !dbg !1126
  store ptr %call, ptr %fp, align 8, !dbg !1127, !tbaa !676
  %0 = load ptr, ptr %fp, align 8, !dbg !1128, !tbaa !676
  %tobool = icmp ne ptr %0, null, !dbg !1128
  br i1 %tobool, label %if.end, label %if.then, !dbg !1130

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !1131
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1131

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !1132

while.cond:                                       ; preds = %if.end21, %if.end
  %1 = load ptr, ptr %fp, align 8, !dbg !1133, !tbaa !676
  %arraydecay = getelementptr inbounds [1025 x i8], ptr %mountpoint, i64 0, i64 0, !dbg !1134
  %arraydecay1 = getelementptr inbounds [1025 x i8], ptr %type, i64 0, i64 0, !dbg !1135
  %arraydecay2 = getelementptr inbounds [1025 x i8], ptr %tokens, i64 0, i64 0, !dbg !1136
  %call3 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %1, ptr noundef @.str.25, ptr noundef %arraydecay, ptr noundef %arraydecay1, ptr noundef %arraydecay2), !dbg !1137
  %cmp = icmp eq i32 %call3, 3, !dbg !1138
  br i1 %cmp, label %while.body, label %while.end22, !dbg !1132

while.body:                                       ; preds = %while.cond
  %arraydecay4 = getelementptr inbounds [1025 x i8], ptr %type, i64 0, i64 0, !dbg !1139
  %call5 = call i32 @strcmp(ptr noundef %arraydecay4, ptr noundef @.str.26) #14, !dbg !1142
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1142
  br i1 %tobool6, label %if.end18, label %if.then7, !dbg !1143

if.then7:                                         ; preds = %while.body
  %arraydecay8 = getelementptr inbounds [1025 x i8], ptr %tokens, i64 0, i64 0, !dbg !1144
  %call9 = call ptr @strtok_r(ptr noundef %arraydecay8, ptr noundef @.str.27, ptr noundef %saved_ptr) #12, !dbg !1146
  store ptr %call9, ptr %token, align 8, !dbg !1147, !tbaa !676
  br label %while.cond10, !dbg !1148

while.cond10:                                     ; preds = %if.end16, %if.then7
  %2 = load ptr, ptr %token, align 8, !dbg !1149, !tbaa !676
  %cmp11 = icmp ne ptr %2, null, !dbg !1150
  br i1 %cmp11, label %while.body12, label %while.end, !dbg !1148

while.body12:                                     ; preds = %while.cond10
  %3 = load ptr, ptr %token, align 8, !dbg !1151, !tbaa !676
  %call13 = call i32 @strcmp(ptr noundef %3, ptr noundef @.str.28) #14, !dbg !1154
  %tobool14 = icmp ne i32 %call13, 0, !dbg !1154
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !1155

if.then15:                                        ; preds = %while.body12
  store i32 1, ptr %found, align 4, !dbg !1156, !tbaa !650
  br label %while.end, !dbg !1158

if.end16:                                         ; preds = %while.body12
  %call17 = call ptr @strtok_r(ptr noundef null, ptr noundef @.str.27, ptr noundef %saved_ptr) #12, !dbg !1159
  store ptr %call17, ptr %token, align 8, !dbg !1160, !tbaa !676
  br label %while.cond10, !dbg !1148, !llvm.loop !1161

while.end:                                        ; preds = %if.then15, %while.cond10
  br label %if.end18, !dbg !1163

if.end18:                                         ; preds = %while.end, %while.body
  %4 = load i32, ptr %found, align 4, !dbg !1164, !tbaa !650
  %tobool19 = icmp ne i32 %4, 0, !dbg !1164
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1166

if.then20:                                        ; preds = %if.end18
  br label %while.end22, !dbg !1167

if.end21:                                         ; preds = %if.end18
  br label %while.cond, !dbg !1132, !llvm.loop !1168

while.end22:                                      ; preds = %if.then20, %while.cond
  %5 = load ptr, ptr %fp, align 8, !dbg !1170, !tbaa !676
  %call23 = call i32 @fclose(ptr noundef %5), !dbg !1171
  %6 = load i32, ptr %found, align 4, !dbg !1172, !tbaa !650
  %tobool24 = icmp ne i32 %6, 0, !dbg !1172
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !1174

if.then25:                                        ; preds = %while.end22
  store i32 -1, ptr %retval, align 4, !dbg !1175
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1175

if.end26:                                         ; preds = %while.end22
  %arraydecay27 = getelementptr inbounds [1025 x i8], ptr %mountpoint, i64 0, i64 0, !dbg !1176
  %call28 = call i64 @strlen(ptr noundef %arraydecay27) #14, !dbg !1178
  %7 = load i64, ptr %maxlen.addr, align 8, !dbg !1179, !tbaa !747
  %cmp29 = icmp ult i64 %call28, %7, !dbg !1180
  br i1 %cmp29, label %if.then30, label %if.end33, !dbg !1181

if.then30:                                        ; preds = %if.end26
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !1182, !tbaa !676
  %arraydecay31 = getelementptr inbounds [1025 x i8], ptr %mountpoint, i64 0, i64 0, !dbg !1184
  %call32 = call ptr @strcpy(ptr noundef %8, ptr noundef %arraydecay31) #12, !dbg !1185
  store i32 0, ptr %retval, align 4, !dbg !1186
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1186

if.end33:                                         ; preds = %if.end26
  store i32 -1, ptr %retval, align 4, !dbg !1187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1187

cleanup:                                          ; preds = %if.end33, %if.then30, %if.then25, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #12, !dbg !1188
  call void @llvm.lifetime.end.p0(i64 8, ptr %saved_ptr) #12, !dbg !1188
  call void @llvm.lifetime.end.p0(i64 8, ptr %token) #12, !dbg !1188
  call void @llvm.lifetime.end.p0(i64 1025, ptr %type) #12, !dbg !1188
  call void @llvm.lifetime.end.p0(i64 1025, ptr %tokens) #12, !dbg !1188
  call void @llvm.lifetime.end.p0(i64 1025, ptr %mountpoint) #12, !dbg !1188
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #12, !dbg !1188
  %9 = load i32, ptr %retval, align 4, !dbg !1188
  ret i32 %9, !dbg !1188
}

; Function Attrs: nounwind
declare !dbg !1189 i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #5

declare !dbg !1193 void @warn(ptr noundef, ...) #2

declare !dbg !1196 i32 @open(ptr noundef, i32 noundef, ...) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @mainloop(ptr noundef %arg) #0 !dbg !354 {
entry:
  %arg.addr = alloca ptr, align 8
  %pollfds = alloca [1 x %struct.pollfd], align 4
  %ret = alloca i32, align 4
  %fd = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !676
  tail call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !358, metadata !DIExpression()), !dbg !1200
  call void @llvm.lifetime.start.p0(i64 8, ptr %pollfds) #12, !dbg !1201
  tail call void @llvm.dbg.declare(metadata ptr %pollfds, metadata !359, metadata !DIExpression()), !dbg !1202
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !1203
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !370, metadata !DIExpression()), !dbg !1204
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #12, !dbg !1205
  tail call void @llvm.dbg.declare(metadata ptr %fd, metadata !371, metadata !DIExpression()), !dbg !1206
  store i32 -1, ptr %fd, align 4, !dbg !1206, !tbaa !650
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1207
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !372, metadata !DIExpression()), !dbg !1208
  %call = call i32 @pfm_initialize(), !dbg !1209
  %cmp = icmp ne i32 %call, 0, !dbg !1211
  br i1 %cmp, label %if.then, label %if.end, !dbg !1212

if.then:                                          ; preds = %entry
  call void (i32, ptr, ...) @errx(i32 noundef 1, ptr noundef @.str.13) #13, !dbg !1213
  unreachable, !dbg !1213

if.end:                                           ; preds = %entry
  %call1 = call i64 @sysconf(i32 noundef 30) #12, !dbg !1214
  store i64 %call1, ptr @pgsz, align 8, !dbg !1215, !tbaa !747
  %0 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 1), align 4, !dbg !1216, !tbaa !744
  %add = add nsw i32 %0, 1, !dbg !1217
  %conv = sext i32 %add to i64, !dbg !1218
  %1 = load i64, ptr @pgsz, align 8, !dbg !1219, !tbaa !747
  %mul = mul i64 %conv, %1, !dbg !1220
  store i64 %mul, ptr @map_size, align 8, !dbg !1221, !tbaa !747
  %2 = load ptr, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 6), align 8, !dbg !1222, !tbaa !708
  %tobool = icmp ne ptr %2, null, !dbg !1224
  br i1 %tobool, label %if.then2, label %if.end8, !dbg !1225

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 6), align 8, !dbg !1226, !tbaa !708
  %call3 = call i32 @open_cgroup(ptr noundef %3), !dbg !1228
  store i32 %call3, ptr %fd, align 4, !dbg !1229, !tbaa !650
  %4 = load i32, ptr %fd, align 4, !dbg !1230, !tbaa !650
  %cmp4 = icmp eq i32 %4, -1, !dbg !1232
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !1233

if.then6:                                         ; preds = %if.then2
  %5 = load ptr, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 6), align 8, !dbg !1234, !tbaa !708
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef @.str.14, ptr noundef %5) #13, !dbg !1235
  unreachable, !dbg !1235

if.end7:                                          ; preds = %if.then2
  br label %if.end8, !dbg !1236

if.end8:                                          ; preds = %if.end7, %if.end
  %6 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 2), align 8, !dbg !1237, !tbaa !1238
  %7 = load i32, ptr %fd, align 4, !dbg !1239, !tbaa !650
  %call9 = call i32 @setup_cpu(i32 noundef %6, i32 noundef %7), !dbg !1240
  %8 = load i32, ptr %fd, align 4, !dbg !1241, !tbaa !650
  %cmp10 = icmp ne i32 %8, -1, !dbg !1243
  br i1 %cmp10, label %if.then12, label %if.end14, !dbg !1244

if.then12:                                        ; preds = %if.end8
  %9 = load i32, ptr %fd, align 4, !dbg !1245, !tbaa !650
  %call13 = call i32 @close(i32 noundef %9), !dbg !1246
  br label %if.end14, !dbg !1246

if.end14:                                         ; preds = %if.then12, %if.end8
  %call15 = call ptr @signal(i32 noundef 14, ptr noundef @handler) #12, !dbg !1247
  %call16 = call ptr @signal(i32 noundef 2, ptr noundef @handler) #12, !dbg !1248
  %10 = load ptr, ptr @fds, align 8, !dbg !1249, !tbaa !676
  %arrayidx = getelementptr inbounds %struct.perf_event_desc_t, ptr %10, i64 0, !dbg !1249
  %fd17 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx, i32 0, i32 8, !dbg !1250
  %11 = load i32, ptr %fd17, align 4, !dbg !1250, !tbaa !685
  %arrayidx18 = getelementptr inbounds [1 x %struct.pollfd], ptr %pollfds, i64 0, i64 0, !dbg !1251
  %fd19 = getelementptr inbounds %struct.pollfd, ptr %arrayidx18, i32 0, i32 0, !dbg !1252
  store i32 %11, ptr %fd19, align 4, !dbg !1253, !tbaa !1254
  %arrayidx20 = getelementptr inbounds [1 x %struct.pollfd], ptr %pollfds, i64 0, i64 0, !dbg !1256
  %events = getelementptr inbounds %struct.pollfd, ptr %arrayidx20, i32 0, i32 1, !dbg !1257
  store i16 1, ptr %events, align 4, !dbg !1258, !tbaa !1259
  %12 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 2), align 8, !dbg !1260, !tbaa !1238
  %13 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 4), align 8, !dbg !1261, !tbaa !1262
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %12, i32 noundef %13), !dbg !1263
  %call22 = call i32 @_setjmp(ptr noundef @jbuf) #15, !dbg !1264
  %cmp23 = icmp eq i32 %call22, 1, !dbg !1266
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !1267

if.then25:                                        ; preds = %if.end14
  br label %terminate_session, !dbg !1268

if.end26:                                         ; preds = %if.end14
  call void @start_cpu(), !dbg !1269
  %14 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 4), align 8, !dbg !1270, !tbaa !1262
  %call27 = call i32 @alarm(i32 noundef %14) #12, !dbg !1271
  br label %for.cond, !dbg !1272

for.cond:                                         ; preds = %if.end35, %if.end26
  %arraydecay = getelementptr inbounds [1 x %struct.pollfd], ptr %pollfds, i64 0, i64 0, !dbg !1273
  %call28 = call i32 @poll(ptr noundef %arraydecay, i64 noundef 1, i32 noundef -1), !dbg !1277
  store i32 %call28, ptr %ret, align 4, !dbg !1278, !tbaa !650
  %15 = load i32, ptr %ret, align 4, !dbg !1279, !tbaa !650
  %cmp29 = icmp slt i32 %15, 0, !dbg !1281
  br i1 %cmp29, label %land.lhs.true, label %if.end35, !dbg !1282

land.lhs.true:                                    ; preds = %for.cond
  %call31 = call ptr @__errno_location() #16, !dbg !1283
  %16 = load i32, ptr %call31, align 4, !dbg !1283, !tbaa !650
  %cmp32 = icmp eq i32 %16, 4, !dbg !1284
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !1285

if.then34:                                        ; preds = %land.lhs.true
  br label %for.end, !dbg !1286

if.end35:                                         ; preds = %land.lhs.true, %for.cond
  %17 = load i64, ptr @mainloop.ovfl_count, align 8, !dbg !1287, !tbaa !747
  %inc = add i64 %17, 1, !dbg !1287
  store i64 %inc, ptr @mainloop.ovfl_count, align 8, !dbg !1287, !tbaa !747
  %18 = load ptr, ptr @fds, align 8, !dbg !1288, !tbaa !676
  %arrayidx36 = getelementptr inbounds %struct.perf_event_desc_t, ptr %18, i64 0, !dbg !1288
  call void @process_smpl_buf(ptr noundef %arrayidx36), !dbg !1289
  br label %for.cond, !dbg !1290, !llvm.loop !1291

for.end:                                          ; preds = %if.then34
  br label %terminate_session, !dbg !1293

terminate_session:                                ; preds = %for.end, %if.then25
  tail call void @llvm.dbg.label(metadata !373), !dbg !1294
  store i32 0, ptr %i, align 4, !dbg !1295, !tbaa !650
  br label %for.cond37, !dbg !1297

for.cond37:                                       ; preds = %for.inc, %terminate_session
  %19 = load i32, ptr %i, align 4, !dbg !1298, !tbaa !650
  %20 = load i32, ptr @num_fds, align 4, !dbg !1300, !tbaa !650
  %cmp38 = icmp slt i32 %19, %20, !dbg !1301
  br i1 %cmp38, label %for.body, label %for.end44, !dbg !1302

for.body:                                         ; preds = %for.cond37
  %21 = load ptr, ptr @fds, align 8, !dbg !1303, !tbaa !676
  %22 = load i32, ptr %i, align 4, !dbg !1304, !tbaa !650
  %idxprom = sext i32 %22 to i64, !dbg !1303
  %arrayidx40 = getelementptr inbounds %struct.perf_event_desc_t, ptr %21, i64 %idxprom, !dbg !1303
  %fd41 = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx40, i32 0, i32 8, !dbg !1305
  %23 = load i32, ptr %fd41, align 4, !dbg !1305, !tbaa !685
  %call42 = call i32 @close(i32 noundef %23), !dbg !1306
  br label %for.inc, !dbg !1306

for.inc:                                          ; preds = %for.body
  %24 = load i32, ptr %i, align 4, !dbg !1307, !tbaa !650
  %inc43 = add nsw i32 %24, 1, !dbg !1307
  store i32 %inc43, ptr %i, align 4, !dbg !1307, !tbaa !650
  br label %for.cond37, !dbg !1308, !llvm.loop !1309

for.end44:                                        ; preds = %for.cond37
  %25 = load ptr, ptr @fds, align 8, !dbg !1311, !tbaa !676
  %arrayidx45 = getelementptr inbounds %struct.perf_event_desc_t, ptr %25, i64 0, !dbg !1311
  call void @process_smpl_buf(ptr noundef %arrayidx45), !dbg !1312
  %26 = load ptr, ptr @fds, align 8, !dbg !1313, !tbaa !676
  %arrayidx46 = getelementptr inbounds %struct.perf_event_desc_t, ptr %26, i64 0, !dbg !1313
  %buf = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx46, i32 0, i32 5, !dbg !1314
  %27 = load ptr, ptr %buf, align 8, !dbg !1314, !tbaa !855
  %28 = load i64, ptr @map_size, align 8, !dbg !1315, !tbaa !747
  %call47 = call i32 @munmap(ptr noundef %27, i64 noundef %28) #12, !dbg !1316
  %29 = load ptr, ptr @fds, align 8, !dbg !1317, !tbaa !676
  %30 = load i32, ptr @num_fds, align 4, !dbg !1318, !tbaa !650
  call void @perf_free_fds(ptr noundef %29, i32 noundef %30), !dbg !1319
  %31 = load i64, ptr @collected_samples, align 8, !dbg !1320, !tbaa !747
  %32 = load i64, ptr @mainloop.ovfl_count, align 8, !dbg !1321, !tbaa !747
  %33 = load i64, ptr @lost_samples, align 8, !dbg !1322, !tbaa !747
  %call48 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i64 noundef %31, i64 noundef %32, i64 noundef %33), !dbg !1323
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1324
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #12, !dbg !1324
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !1324
  call void @llvm.lifetime.end.p0(i64 8, ptr %pollfds) #12, !dbg !1324
  ret i32 0, !dbg !1325
}

declare !dbg !1326 i32 @pfm_initialize() #2

; Function Attrs: nounwind
declare !dbg !1331 i64 @sysconf(i32 noundef) #5

declare !dbg !1335 i32 @close(i32 noundef) #2

; Function Attrs: nounwind
declare !dbg !1338 ptr @signal(i32 noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal void @handler(i32 noundef %n) #0 !dbg !1346 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !650
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1348, metadata !DIExpression()), !dbg !1349
  call void @longjmp(ptr noundef @jbuf, i32 noundef 1) #17, !dbg !1350
  unreachable, !dbg !1350
}

; Function Attrs: nounwind returns_twice
declare !dbg !1351 i32 @_setjmp(ptr noundef) #6

; Function Attrs: nounwind uwtable
define internal void @start_cpu() #0 !dbg !1355 {
entry:
  %ret = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !1360
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1359, metadata !DIExpression()), !dbg !1361
  %0 = load ptr, ptr @fds, align 8, !dbg !1362, !tbaa !676
  %arrayidx = getelementptr inbounds %struct.perf_event_desc_t, ptr %0, i64 0, !dbg !1362
  %fd = getelementptr inbounds %struct.perf_event_desc_t, ptr %arrayidx, i32 0, i32 8, !dbg !1363
  %1 = load i32, ptr %fd, align 4, !dbg !1363, !tbaa !685
  %call = call i32 (i32, i64, ...) @ioctl(i32 noundef %1, i64 noundef 9216, i32 noundef 0) #12, !dbg !1364
  store i32 %call, ptr %ret, align 4, !dbg !1365, !tbaa !650
  %2 = load i32, ptr %ret, align 4, !dbg !1366, !tbaa !650
  %tobool = icmp ne i32 %2, 0, !dbg !1366
  br i1 %tobool, label %if.then, label %if.end, !dbg !1368

if.then:                                          ; preds = %entry
  call void (i32, ptr, ...) @err(i32 noundef 1, ptr noundef @.str.29) #13, !dbg !1369
  unreachable, !dbg !1369

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !1370
  ret void, !dbg !1370
}

; Function Attrs: nounwind
declare !dbg !1371 i32 @alarm(i32 noundef) #5

declare !dbg !1374 i32 @poll(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !1379 ptr @__errno_location() #7

; Function Attrs: nounwind uwtable
define internal void @process_smpl_buf(ptr noundef %hw) #0 !dbg !1383 {
entry:
  %hw.addr = alloca ptr, align 8
  %ehdr = alloca %struct.perf_event_header, align 4
  %ret = alloca i32, align 4
  store ptr %hw, ptr %hw.addr, align 8, !tbaa !676
  tail call void @llvm.dbg.declare(metadata ptr %hw.addr, metadata !1387, metadata !DIExpression()), !dbg !1395
  call void @llvm.lifetime.start.p0(i64 8, ptr %ehdr) #12, !dbg !1396
  tail call void @llvm.dbg.declare(metadata ptr %ehdr, metadata !1388, metadata !DIExpression()), !dbg !1397
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !1398
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1394, metadata !DIExpression()), !dbg !1399
  br label %for.cond, !dbg !1400

for.cond:                                         ; preds = %sw.epilog, %entry
  %0 = load ptr, ptr %hw.addr, align 8, !dbg !1401, !tbaa !676
  %call = call i32 @perf_read_buffer(ptr noundef %0, ptr noundef %ehdr, i64 noundef 8), !dbg !1405
  store i32 %call, ptr %ret, align 4, !dbg !1406, !tbaa !650
  %1 = load i32, ptr %ret, align 4, !dbg !1407, !tbaa !650
  %tobool = icmp ne i32 %1, 0, !dbg !1407
  br i1 %tobool, label %if.then, label %if.end, !dbg !1409

if.then:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !1410
  call void @llvm.lifetime.end.p0(i64 8, ptr %ehdr) #12, !dbg !1410
  ret void, !dbg !1410

if.end:                                           ; preds = %for.cond
  %type = getelementptr inbounds %struct.perf_event_header, ptr %ehdr, i32 0, i32 0, !dbg !1411
  %2 = load i32, ptr %type, align 4, !dbg !1411, !tbaa !1412
  switch i32 %2, label %sw.default [
    i32 9, label %sw.bb
    i32 4, label %sw.bb5
    i32 2, label %sw.bb6
    i32 5, label %sw.bb8
    i32 6, label %sw.bb9
  ], !dbg !1414

sw.bb:                                            ; preds = %if.end
  %3 = load ptr, ptr @fds, align 8, !dbg !1415, !tbaa !676
  %4 = load i32, ptr @num_fds, align 4, !dbg !1417, !tbaa !650
  %5 = load ptr, ptr %hw.addr, align 8, !dbg !1418, !tbaa !676
  %6 = load ptr, ptr @fds, align 8, !dbg !1419, !tbaa !676
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i64, !dbg !1420
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i64, !dbg !1420
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1420
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 240, !dbg !1420
  %conv = trunc i64 %sub.ptr.div to i32, !dbg !1418
  %7 = load ptr, ptr @stdout, align 8, !dbg !1421, !tbaa !676
  %call1 = call i32 @perf_display_sample(ptr noundef %3, i32 noundef %4, i32 noundef %conv, ptr noundef %ehdr, ptr noundef %7), !dbg !1422
  store i32 %call1, ptr %ret, align 4, !dbg !1423, !tbaa !650
  %8 = load i32, ptr %ret, align 4, !dbg !1424, !tbaa !650
  %tobool2 = icmp ne i32 %8, 0, !dbg !1424
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1426

if.then3:                                         ; preds = %sw.bb
  call void (i32, ptr, ...) @errx(i32 noundef 1, ptr noundef @.str.30) #13, !dbg !1427
  unreachable, !dbg !1427

if.end4:                                          ; preds = %sw.bb
  %9 = load i64, ptr @collected_samples, align 8, !dbg !1428, !tbaa !747
  %inc = add i64 %9, 1, !dbg !1428
  store i64 %inc, ptr @collected_samples, align 8, !dbg !1428, !tbaa !747
  br label %sw.epilog, !dbg !1429

sw.bb5:                                           ; preds = %if.end
  %10 = load ptr, ptr %hw.addr, align 8, !dbg !1430, !tbaa !676
  %11 = load ptr, ptr @stdout, align 8, !dbg !1431, !tbaa !676
  call void @display_exit(ptr noundef %10, ptr noundef %11), !dbg !1432
  br label %sw.epilog, !dbg !1433

sw.bb6:                                           ; preds = %if.end
  %12 = load ptr, ptr %hw.addr, align 8, !dbg !1434, !tbaa !676
  %13 = load ptr, ptr @fds, align 8, !dbg !1435, !tbaa !676
  %14 = load i32, ptr @num_fds, align 4, !dbg !1436, !tbaa !650
  %15 = load ptr, ptr @stdout, align 8, !dbg !1437, !tbaa !676
  %call7 = call i64 @display_lost(ptr noundef %12, ptr noundef %13, i32 noundef %14, ptr noundef %15), !dbg !1438
  %16 = load i64, ptr @lost_samples, align 8, !dbg !1439, !tbaa !747
  %add = add i64 %16, %call7, !dbg !1439
  store i64 %add, ptr @lost_samples, align 8, !dbg !1439, !tbaa !747
  br label %sw.epilog, !dbg !1440

sw.bb8:                                           ; preds = %if.end
  %17 = load ptr, ptr %hw.addr, align 8, !dbg !1441, !tbaa !676
  %18 = load ptr, ptr @stdout, align 8, !dbg !1442, !tbaa !676
  call void @display_freq(i32 noundef 1, ptr noundef %17, ptr noundef %18), !dbg !1443
  br label %sw.epilog, !dbg !1444

sw.bb9:                                           ; preds = %if.end
  %19 = load ptr, ptr %hw.addr, align 8, !dbg !1445, !tbaa !676
  %20 = load ptr, ptr @stdout, align 8, !dbg !1446, !tbaa !676
  call void @display_freq(i32 noundef 0, ptr noundef %19, ptr noundef %20), !dbg !1447
  br label %sw.epilog, !dbg !1448

sw.default:                                       ; preds = %if.end
  %type10 = getelementptr inbounds %struct.perf_event_header, ptr %ehdr, i32 0, i32 0, !dbg !1449
  %21 = load i32, ptr %type10, align 4, !dbg !1449, !tbaa !1412
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.31, i32 noundef %21), !dbg !1450
  %22 = load ptr, ptr %hw.addr, align 8, !dbg !1451, !tbaa !676
  %size = getelementptr inbounds %struct.perf_event_header, ptr %ehdr, i32 0, i32 2, !dbg !1452
  %23 = load i16, ptr %size, align 2, !dbg !1452, !tbaa !1453
  %conv12 = zext i16 %23 to i64, !dbg !1454
  %sub = sub i64 %conv12, 8, !dbg !1455
  call void @perf_skip_buffer(ptr noundef %22, i64 noundef %sub), !dbg !1456
  br label %sw.epilog, !dbg !1457

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb8, %sw.bb6, %sw.bb5, %if.end4
  br label %for.cond, !dbg !1458, !llvm.loop !1459
}

; Function Attrs: nounwind
declare !dbg !1462 i32 @munmap(ptr noundef, i64 noundef) #5

declare !dbg !1465 void @perf_free_fds(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 !dbg !1468 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !650
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !1472, metadata !DIExpression()), !dbg !1475
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !676
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !1473, metadata !DIExpression()), !dbg !1476
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #12, !dbg !1477
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !1474, metadata !DIExpression()), !dbg !1478
  %call = call ptr @setlocale(i32 noundef 6, ptr noundef @.str.17) #12, !dbg !1479
  store i32 -1, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 2), align 8, !dbg !1480, !tbaa !1238
  store i32 -1, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 4), align 8, !dbg !1481, !tbaa !1262
  br label %while.cond, !dbg !1482

while.cond:                                       ; preds = %sw.epilog, %sw.bb, %entry
  %0 = load i32, ptr %argc.addr, align 4, !dbg !1483, !tbaa !650
  %1 = load ptr, ptr %argv.addr, align 8, !dbg !1484, !tbaa !676
  %call1 = call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef @.str.18, ptr noundef @the_options, ptr noundef null) #12, !dbg !1485
  store i32 %call1, ptr %c, align 4, !dbg !1486, !tbaa !650
  %cmp = icmp ne i32 %call1, -1, !dbg !1487
  br i1 %cmp, label %while.body, label %while.end, !dbg !1482

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %c, align 4, !dbg !1488, !tbaa !650
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 101, label %sw.bb2
    i32 109, label %sw.bb3
    i32 80, label %sw.bb8
    i32 100, label %sw.bb9
    i32 71, label %sw.bb11
    i32 99, label %sw.bb12
    i32 104, label %sw.bb14
  ], !dbg !1490

sw.bb:                                            ; preds = %while.body
  br label %while.cond, !dbg !1491, !llvm.loop !1493

sw.bb2:                                           ; preds = %while.body
  %3 = load ptr, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 5), align 8, !dbg !1495, !tbaa !663
  %tobool = icmp ne ptr %3, null, !dbg !1497
  br i1 %tobool, label %if.then, label %if.end, !dbg !1498

if.then:                                          ; preds = %sw.bb2
  call void (i32, ptr, ...) @errx(i32 noundef 1, ptr noundef @.str.19) #13, !dbg !1499
  unreachable, !dbg !1499

if.end:                                           ; preds = %sw.bb2
  %4 = load ptr, ptr @optarg, align 8, !dbg !1500, !tbaa !676
  store ptr %4, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 5), align 8, !dbg !1501, !tbaa !663
  br label %sw.epilog, !dbg !1502

sw.bb3:                                           ; preds = %while.body
  %5 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 1), align 4, !dbg !1503, !tbaa !744
  %tobool4 = icmp ne i32 %5, 0, !dbg !1505
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1506

if.then5:                                         ; preds = %sw.bb3
  call void (i32, ptr, ...) @errx(i32 noundef 1, ptr noundef @.str.20) #13, !dbg !1507
  unreachable, !dbg !1507

if.end6:                                          ; preds = %sw.bb3
  %6 = load ptr, ptr @optarg, align 8, !dbg !1508, !tbaa !676
  %call7 = call i32 @atoi(ptr noundef %6) #14, !dbg !1509
  store i32 %call7, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 1), align 4, !dbg !1510, !tbaa !744
  br label %sw.epilog, !dbg !1511

sw.bb8:                                           ; preds = %while.body
  store i32 1, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 3), align 4, !dbg !1512, !tbaa !721
  br label %sw.epilog, !dbg !1513

sw.bb9:                                           ; preds = %while.body
  %7 = load ptr, ptr @optarg, align 8, !dbg !1514, !tbaa !676
  %call10 = call i32 @atoi(ptr noundef %7) #14, !dbg !1515
  store i32 %call10, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 4), align 8, !dbg !1516, !tbaa !1262
  br label %sw.epilog, !dbg !1517

sw.bb11:                                          ; preds = %while.body
  %8 = load ptr, ptr @optarg, align 8, !dbg !1518, !tbaa !676
  store ptr %8, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 6), align 8, !dbg !1519, !tbaa !708
  br label %sw.epilog, !dbg !1520

sw.bb12:                                          ; preds = %while.body
  %9 = load ptr, ptr @optarg, align 8, !dbg !1521, !tbaa !676
  %call13 = call i32 @atoi(ptr noundef %9) #14, !dbg !1522
  store i32 %call13, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 2), align 8, !dbg !1523, !tbaa !1238
  br label %sw.epilog, !dbg !1524

sw.bb14:                                          ; preds = %while.body
  call void @usage(), !dbg !1525
  call void @exit(i32 noundef 0) #17, !dbg !1526
  unreachable, !dbg !1526

sw.default:                                       ; preds = %while.body
  call void (i32, ptr, ...) @errx(i32 noundef 1, ptr noundef @.str.21) #13, !dbg !1527
  unreachable, !dbg !1527

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb11, %sw.bb9, %sw.bb8, %if.end6, %if.end
  br label %while.cond, !dbg !1482, !llvm.loop !1493

while.end:                                        ; preds = %while.cond
  %10 = load ptr, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 5), align 8, !dbg !1528, !tbaa !663
  %tobool15 = icmp ne ptr %10, null, !dbg !1530
  br i1 %tobool15, label %if.end18, label %if.then16, !dbg !1531

if.then16:                                        ; preds = %while.end
  %11 = load ptr, ptr @gen_events, align 8, !dbg !1532, !tbaa !676
  %call17 = call noalias ptr @strdup(ptr noundef %11) #12, !dbg !1533
  store ptr %call17, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 5), align 8, !dbg !1534, !tbaa !663
  br label %if.end18, !dbg !1535

if.end18:                                         ; preds = %if.then16, %while.end
  %12 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 1), align 4, !dbg !1536, !tbaa !744
  %tobool19 = icmp ne i32 %12, 0, !dbg !1538
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !1539

if.then20:                                        ; preds = %if.end18
  store i32 1, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 1), align 4, !dbg !1540, !tbaa !744
  br label %if.end21, !dbg !1541

if.end21:                                         ; preds = %if.then20, %if.end18
  %13 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 2), align 8, !dbg !1542, !tbaa !1238
  %cmp22 = icmp eq i32 %13, -1, !dbg !1544
  br i1 %cmp22, label %if.then23, label %if.end26, !dbg !1545

if.then23:                                        ; preds = %if.end21
  %call24 = call i64 @random() #12, !dbg !1546
  %call25 = call i64 @sysconf(i32 noundef 84) #12, !dbg !1547
  %rem = srem i64 %call24, %call25, !dbg !1548
  %conv = trunc i64 %rem to i32, !dbg !1546
  store i32 %conv, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 2), align 8, !dbg !1549, !tbaa !1238
  br label %if.end26, !dbg !1550

if.end26:                                         ; preds = %if.then23, %if.end21
  %14 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 4), align 8, !dbg !1551, !tbaa !1262
  %cmp27 = icmp eq i32 %14, -1, !dbg !1553
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !1554

if.then29:                                        ; preds = %if.end26
  store i32 10, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 4), align 8, !dbg !1555, !tbaa !1262
  br label %if.end30, !dbg !1556

if.end30:                                         ; preds = %if.then29, %if.end26
  %15 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 1), align 4, !dbg !1557, !tbaa !744
  %cmp31 = icmp sgt i32 %15, 1, !dbg !1559
  br i1 %cmp31, label %land.lhs.true, label %if.end35, !dbg !1560

land.lhs.true:                                    ; preds = %if.end30
  %16 = load i32, ptr getelementptr inbounds (%struct.options_t, ptr @options, i32 0, i32 1), align 4, !dbg !1561, !tbaa !744
  %and = and i32 %16, 1, !dbg !1562
  %tobool33 = icmp ne i32 %and, 0, !dbg !1562
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !1563

if.then34:                                        ; preds = %land.lhs.true
  call void (i32, ptr, ...) @errx(i32 noundef 1, ptr noundef @.str.22) #13, !dbg !1564
  unreachable, !dbg !1564

if.end35:                                         ; preds = %land.lhs.true, %if.end30
  %17 = load ptr, ptr %argv.addr, align 8, !dbg !1565, !tbaa !676
  %18 = load i32, ptr @optind, align 4, !dbg !1566, !tbaa !650
  %idx.ext = sext i32 %18 to i64, !dbg !1567
  %add.ptr = getelementptr inbounds ptr, ptr %17, i64 %idx.ext, !dbg !1567
  %call36 = call i32 @mainloop(ptr noundef %add.ptr), !dbg !1568
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #12, !dbg !1569
  ret i32 %call36, !dbg !1570
}

; Function Attrs: nounwind
declare !dbg !1571 ptr @setlocale(i32 noundef, ptr noundef) #5

; Function Attrs: nounwind
declare !dbg !1575 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i32 @atoi(ptr noundef nonnull %__nptr) #8 !dbg !1582 {
entry:
  %__nptr.addr = alloca ptr, align 8
  store ptr %__nptr, ptr %__nptr.addr, align 8, !tbaa !676
  tail call void @llvm.dbg.declare(metadata ptr %__nptr.addr, metadata !1587, metadata !DIExpression()), !dbg !1588
  %0 = load ptr, ptr %__nptr.addr, align 8, !dbg !1589, !tbaa !676
  %call = call i64 @strtol(ptr noundef %0, ptr noundef null, i32 noundef 10) #12, !dbg !1590
  %conv = trunc i64 %call to i32, !dbg !1591
  ret i32 %conv, !dbg !1592
}

; Function Attrs: nounwind uwtable
define internal void @usage() #0 !dbg !1593 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.34), !dbg !1594
  ret void, !dbg !1595
}

; Function Attrs: noreturn nounwind
declare !dbg !1596 void @exit(i32 noundef) #9

; Function Attrs: nounwind
declare !dbg !1597 noalias ptr @strdup(ptr noundef) #5

; Function Attrs: nounwind
declare !dbg !1601 i64 @random() #5

; Function Attrs: nounwind
declare !dbg !1604 i64 @syscall(i64 noundef, ...) #5

declare !dbg !1607 noalias ptr @fopen(ptr noundef, ptr noundef) #2

declare !dbg !1610 i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1614 i32 @strcmp(ptr noundef, ptr noundef) #10

; Function Attrs: nounwind
declare !dbg !1617 ptr @strtok_r(ptr noundef, ptr noundef, ptr noundef) #5

declare !dbg !1621 i32 @fclose(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1624 i64 @strlen(ptr noundef) #10

; Function Attrs: nounwind
declare !dbg !1627 ptr @strcpy(ptr noundef, ptr noundef) #5

; Function Attrs: noreturn nounwind
declare !dbg !1630 void @longjmp(ptr noundef, i32 noundef) #9

declare !dbg !1633 i32 @perf_read_buffer(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !1636 i32 @perf_display_sample(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare !dbg !1640 void @display_exit(ptr noundef, ptr noundef) #2

declare !dbg !1643 i64 @display_lost(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare !dbg !1646 void @display_freq(i32 noundef, ptr noundef, ptr noundef) #2

declare !dbg !1649 void @perf_skip_buffer(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare !dbg !1652 i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind returns_twice }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!633, !634, !635, !636, !637, !638}
!llvm.ident = !{!639}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "options", scope: !2, file: !3, line: 67, type: !623, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !286, globals: !292, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "syst_smpl.c", directory: "/local-ssd/libpfm4-eymjeez6kzzocrqb5p6y26hpb2o7cj4q-build/aidengro/spack-stage-libpfm4-4.13.0-eymjeez6kzzocrqb5p6y26hpb2o7cj4q/spack-src/perf_examples", checksumkind: CSK_MD5, checksum: "7f89101be558d576bcedbc24ca6f9720")
!4 = !{!5, !35, !42, !262}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_sample_format", file: !6, line: 125, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../include/perfmon/perf_event.h", directory: "/local-ssd/libpfm4-eymjeez6kzzocrqb5p6y26hpb2o7cj4q-build/aidengro/spack-stage-libpfm4-4.13.0-eymjeez6kzzocrqb5p6y26hpb2o7cj4q/spack-src/perf_examples", checksumkind: CSK_MD5, checksum: "c1043b8c89934cad1503e707e44d43ea")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!9 = !DIEnumerator(name: "PERF_SAMPLE_IP", value: 1)
!10 = !DIEnumerator(name: "PERF_SAMPLE_TID", value: 2)
!11 = !DIEnumerator(name: "PERF_SAMPLE_TIME", value: 4)
!12 = !DIEnumerator(name: "PERF_SAMPLE_ADDR", value: 8)
!13 = !DIEnumerator(name: "PERF_SAMPLE_READ", value: 16)
!14 = !DIEnumerator(name: "PERF_SAMPLE_CALLCHAIN", value: 32)
!15 = !DIEnumerator(name: "PERF_SAMPLE_ID", value: 64)
!16 = !DIEnumerator(name: "PERF_SAMPLE_CPU", value: 128)
!17 = !DIEnumerator(name: "PERF_SAMPLE_PERIOD", value: 256)
!18 = !DIEnumerator(name: "PERF_SAMPLE_STREAM_ID", value: 512)
!19 = !DIEnumerator(name: "PERF_SAMPLE_RAW", value: 1024)
!20 = !DIEnumerator(name: "PERF_SAMPLE_BRANCH_STACK", value: 2048)
!21 = !DIEnumerator(name: "PERF_SAMPLE_REGS_USER", value: 4096)
!22 = !DIEnumerator(name: "PERF_SAMPLE_STACK_USER", value: 8192)
!23 = !DIEnumerator(name: "PERF_SAMPLE_WEIGHT", value: 16384)
!24 = !DIEnumerator(name: "PERF_SAMPLE_DATA_SRC", value: 32768)
!25 = !DIEnumerator(name: "PERF_SAMPLE_IDENTIFIER", value: 65536)
!26 = !DIEnumerator(name: "PERF_SAMPLE_TRANSACTION", value: 131072)
!27 = !DIEnumerator(name: "PERF_SAMPLE_REGS_INTR", value: 262144)
!28 = !DIEnumerator(name: "PERF_SAMPLE_PHYS_ADDR", value: 524288)
!29 = !DIEnumerator(name: "PERF_SAMPLE_AUX", value: 1048576)
!30 = !DIEnumerator(name: "PERF_SAMPLE_CGROUP", value: 2097152)
!31 = !DIEnumerator(name: "PERF_SAMPLE_DATA_PAGE_SIZE", value: 4194304)
!32 = !DIEnumerator(name: "PERF_SAMPLE_CODE_PAGE_SIZE", value: 8388608)
!33 = !DIEnumerator(name: "PERF_SAMPLE_WEIGHT_STRUCT", value: 16777216)
!34 = !DIEnumerator(name: "PERF_SAMPLE_MAX", value: 33554432)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_read_format", file: !6, line: 227, baseType: !7, size: 32, elements: !36)
!36 = !{!37, !38, !39, !40, !41}
!37 = !DIEnumerator(name: "PERF_FORMAT_TOTAL_TIME_ENABLED", value: 1)
!38 = !DIEnumerator(name: "PERF_FORMAT_TOTAL_TIME_RUNNING", value: 2)
!39 = !DIEnumerator(name: "PERF_FORMAT_ID", value: 4)
!40 = !DIEnumerator(name: "PERF_FORMAT_GROUP", value: 8)
!41 = !DIEnumerator(name: "PERF_FORMAT_MAX", value: 16)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 71, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "", checksumkind: CSK_MD5, checksum: "78b98c9476f9b4c41f6f4ea6bcb3195f")
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261}
!45 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!46 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!47 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!48 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!49 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!50 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!51 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!52 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!53 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!54 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!55 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!56 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!57 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!58 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!59 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!60 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!61 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!62 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!63 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!64 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!65 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!66 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!67 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!68 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!69 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!70 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!71 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!72 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!73 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!74 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!75 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!76 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!77 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!78 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!79 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!80 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!81 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!82 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!83 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!84 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!85 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!86 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!87 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!88 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!89 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!90 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!91 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!92 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!93 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!94 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!95 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!96 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!97 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!98 = !DIEnumerator(name: "_SC_PII", value: 53)
!99 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!100 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!101 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!102 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!103 = !DIEnumerator(name: "_SC_POLL", value: 58)
!104 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!105 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!106 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!107 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!108 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!109 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!110 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!111 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!112 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!113 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!114 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!115 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!116 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!117 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!118 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!119 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!120 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!121 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!122 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!123 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!124 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!125 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!126 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!127 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!128 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!129 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!130 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!131 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!132 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!133 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!134 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!135 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!136 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!137 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!138 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!139 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!140 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!141 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!142 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!143 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!144 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!145 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!146 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!147 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!148 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!149 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!150 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!151 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!152 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!153 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!154 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!155 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!156 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!157 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!158 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!159 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!160 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!161 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!162 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!163 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!164 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!165 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!166 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!167 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!168 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!169 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!170 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!171 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!172 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!173 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!174 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!175 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!176 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!177 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!178 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!179 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!180 = !DIEnumerator(name: "_SC_BASE", value: 134)
!181 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!182 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!183 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!184 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!185 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!186 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!187 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!188 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!189 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!190 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!191 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!192 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!193 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!194 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!195 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!196 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!197 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!198 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!199 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!200 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!201 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!202 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!203 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!204 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!205 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!206 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!207 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!208 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!209 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!210 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!211 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!212 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!213 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!214 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!215 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!216 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!217 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!218 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!219 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!220 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!221 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!222 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!223 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!224 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!225 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!226 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!227 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!228 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!229 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!230 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!231 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!232 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!233 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!234 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!235 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!236 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!237 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!238 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!239 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!240 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!241 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!242 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!243 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!244 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!245 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!246 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!247 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!248 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!249 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!250 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!251 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!252 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!253 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!254 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!255 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!256 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!257 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!258 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!259 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!260 = !DIEnumerator(name: "_SC_MINSIGSTKSZ", value: 249)
!261 = !DIEnumerator(name: "_SC_SIGSTKSZ", value: 250)
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_type", file: !6, line: 475, baseType: !7, size: 32, elements: !263)
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285}
!264 = !DIEnumerator(name: "PERF_RECORD_MMAP", value: 1)
!265 = !DIEnumerator(name: "PERF_RECORD_LOST", value: 2)
!266 = !DIEnumerator(name: "PERF_RECORD_COMM", value: 3)
!267 = !DIEnumerator(name: "PERF_RECORD_EXIT", value: 4)
!268 = !DIEnumerator(name: "PERF_RECORD_THROTTLE", value: 5)
!269 = !DIEnumerator(name: "PERF_RECORD_UNTHROTTLE", value: 6)
!270 = !DIEnumerator(name: "PERF_RECORD_FORK", value: 7)
!271 = !DIEnumerator(name: "PERF_RECORD_READ", value: 8)
!272 = !DIEnumerator(name: "PERF_RECORD_SAMPLE", value: 9)
!273 = !DIEnumerator(name: "PERF_RECORD_MMAP2", value: 10)
!274 = !DIEnumerator(name: "PERF_RECORD_AUX", value: 11)
!275 = !DIEnumerator(name: "PERF_RECORD_ITRACE_START", value: 12)
!276 = !DIEnumerator(name: "PERF_RECORD_LOST_SAMPLES", value: 13)
!277 = !DIEnumerator(name: "PERF_RECORD_SWITCH", value: 14)
!278 = !DIEnumerator(name: "PERF_RECORD_SWITCH_CPU_WIDE", value: 15)
!279 = !DIEnumerator(name: "PERF_RECORD_NAMESPACES", value: 16)
!280 = !DIEnumerator(name: "PERF_RECORD_KSYMBOL", value: 17)
!281 = !DIEnumerator(name: "PERF_RECORD_BPF_EVENT", value: 18)
!282 = !DIEnumerator(name: "PERF_RECORD_CGROUP", value: 19)
!283 = !DIEnumerator(name: "PERF_RECORD_TEXT_POKE", value: 20)
!284 = !DIEnumerator(name: "PERF_RECORD_AUX_OUTPUT_HW_ID", value: 21)
!285 = !DIEnumerator(name: "PERF_RECORD_MAX", value: 22)
!286 = !{!287, !288, !289}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!288 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!292 = !{!293, !298, !303, !308, !313, !315, !320, !325, !330, !335, !340, !345, !350, !352, !379, !384, !389, !394, !399, !402, !407, !409, !411, !413, !415, !440, !442, !444, !554, !0, !556, !558, !560, !562, !567, !569, !574, !576, !581, !586, !591, !593, !598, !601, !614, !619, !621}
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !3, line: 127, type: !295, isLocal: true, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 192, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 24)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !3, line: 130, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 600, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 75)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !3, line: 164, type: !305, isLocal: true, isDefinition: true)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 184, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 23)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !3, line: 175, type: !310, isLocal: true, isDefinition: true)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 464, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 58)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !3, line: 176, type: !305, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !3, line: 185, type: !317, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 152, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 19)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !3, line: 198, type: !322, isLocal: true, isDefinition: true)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 256, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 32)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !3, line: 212, type: !327, isLocal: true, isDefinition: true)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 120, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 15)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !3, line: 213, type: !332, isLocal: true, isDefinition: true)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 96, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 12)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !3, line: 285, type: !337, isLocal: true, isDefinition: true)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 272, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 34)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !3, line: 287, type: !342, isLocal: true, isDefinition: true)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 48, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 6)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !3, line: 291, type: !347, isLocal: true, isDefinition: true)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 288, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 36)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !3, line: 297, type: !295, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "ovfl_count", scope: !354, file: !3, line: 310, type: !374, isLocal: true, isDefinition: true)
!354 = distinct !DISubprogram(name: "mainloop", scope: !3, file: !3, line: 308, type: !355, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !357)
!355 = !DISubroutineType(types: !356)
!356 = !{!288, !289}
!357 = !{!358, !359, !370, !371, !372, !373}
!358 = !DILocalVariable(name: "arg", arg: 1, scope: !354, file: !3, line: 308, type: !289)
!359 = !DILocalVariable(name: "pollfds", scope: !354, file: !3, line: 311, type: !360)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 64, elements: !368)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !362, line: 36, size: 64, elements: !363)
!362 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!363 = !{!364, !365, !367}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !361, file: !362, line: 38, baseType: !288, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !361, file: !362, line: 39, baseType: !366, size: 16, offset: 32)
!366 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !361, file: !362, line: 40, baseType: !366, size: 16, offset: 48)
!368 = !{!369}
!369 = !DISubrange(count: 1)
!370 = !DILocalVariable(name: "ret", scope: !354, file: !3, line: 312, type: !288)
!371 = !DILocalVariable(name: "fd", scope: !354, file: !3, line: 313, type: !288)
!372 = !DILocalVariable(name: "i", scope: !354, file: !3, line: 314, type: !288)
!373 = !DILabel(scope: !354, name: "terminate_session", file: !3, line: 358)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !375, line: 27, baseType: !376)
!375 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !377, line: 45, baseType: !378)
!377 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!378 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !3, line: 317, type: !381, isLocal: true, isDefinition: true)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 240, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 30)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !3, line: 325, type: !386, isLocal: true, isDefinition: true)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 224, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 28)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !3, line: 340, type: !391, isLocal: true, isDefinition: true)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 352, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 44)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !3, line: 368, type: !396, isLocal: true, isDefinition: true)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 480, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 60)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !3, line: 385, type: !401, isLocal: true, isDefinition: true)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 8, elements: !368)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !3, line: 390, type: !404, isLocal: true, isDefinition: true)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 104, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 13)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !3, line: 395, type: !295, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !3, line: 400, type: !295, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !3, line: 419, type: !327, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !3, line: 435, type: !347, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(name: "jbuf", scope: !2, file: !3, line: 63, type: !417, isLocal: true, isDefinition: true)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "jmp_buf", file: !418, line: 32, baseType: !419)
!418 = !DIFile(filename: "/usr/include/setjmp.h", directory: "", checksumkind: CSK_MD5, checksum: "cd7862ae7ed31595227c999638ae74e7")
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 1600, elements: !368)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__jmp_buf_tag", file: !421, line: 26, size: 1600, elements: !422)
!421 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct___jmp_buf_tag.h", directory: "", checksumkind: CSK_MD5, checksum: "56a90a97e853c2bec1d9e290be5e92e4")
!422 = !{!423, !430, !431}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "__jmpbuf", scope: !420, file: !421, line: 32, baseType: !424, size: 512)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__jmp_buf", file: !425, line: 31, baseType: !426)
!425 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/setjmp.h", directory: "", checksumkind: CSK_MD5, checksum: "80e7796efafaf357b5e64731e4f6ac30")
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 512, elements: !428)
!427 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!428 = !{!429}
!429 = !DISubrange(count: 8)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "__mask_was_saved", scope: !420, file: !421, line: 33, baseType: !288, size: 32, offset: 512)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "__saved_mask", scope: !420, file: !421, line: 34, baseType: !432, size: 1024, offset: 576)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !433, line: 8, baseType: !434)
!433 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "acc6b14c0967857fec362a8d433e1cf2")
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !433, line: 5, size: 1024, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !434, file: !433, line: 7, baseType: !437, size: 1024)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 1024, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 16)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(name: "collected_samples", scope: !2, file: !3, line: 64, type: !374, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(name: "lost_samples", scope: !2, file: !3, line: 64, type: !374, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(name: "fds", scope: !2, file: !3, line: 65, type: !446, isLocal: true, isDefinition: true)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_event_desc_t", file: !448, line: 46, baseType: !449)
!448 = !DIFile(filename: "./perf_util.h", directory: "/local-ssd/libpfm4-eymjeez6kzzocrqb5p6y26hpb2o7cj4q-build/aidengro/spack-stage-libpfm4-4.13.0-eymjeez6kzzocrqb5p6y26hpb2o7cj4q/spack-src/perf_examples", checksumkind: CSK_MD5, checksum: "58f19a98364ac4cdad39b353d918f35f")
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !448, line: 32, size: 1920, elements: !450)
!450 = !{!451, !537, !541, !542, !543, !544, !545, !548, !549, !550, !551, !552, !553}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !449, file: !448, line: 33, baseType: !452, size: 1024)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !6, line: 260, size: 1024, elements: !453)
!453 = !{!454, !457, !458, !459, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !509, !510, !515, !520, !521, !522, !523, !527, !528, !529, !533, !534, !535, !536}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !6, line: 261, baseType: !455, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !375, line: 26, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !377, line: 42, baseType: !7)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !452, file: !6, line: 262, baseType: !455, size: 32, offset: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !452, file: !6, line: 263, baseType: !374, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !6, line: 265, baseType: !460, size: 64, offset: 128)
!460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !6, line: 265, size: 64, elements: !461)
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !460, file: !6, line: 266, baseType: !374, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !460, file: !6, line: 267, baseType: !374, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !452, file: !6, line: 270, baseType: !374, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !452, file: !6, line: 271, baseType: !374, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !452, file: !6, line: 273, baseType: !374, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !452, file: !6, line: 274, baseType: !374, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !452, file: !6, line: 275, baseType: !374, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !452, file: !6, line: 276, baseType: !374, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !452, file: !6, line: 277, baseType: !374, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !452, file: !6, line: 278, baseType: !374, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !452, file: !6, line: 279, baseType: !374, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !452, file: !6, line: 280, baseType: !374, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !452, file: !6, line: 281, baseType: !374, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !452, file: !6, line: 282, baseType: !374, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !452, file: !6, line: 283, baseType: !374, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !452, file: !6, line: 284, baseType: !374, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !452, file: !6, line: 285, baseType: !374, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !452, file: !6, line: 286, baseType: !374, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !452, file: !6, line: 287, baseType: !374, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !452, file: !6, line: 288, baseType: !374, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !452, file: !6, line: 289, baseType: !374, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !452, file: !6, line: 290, baseType: !374, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !452, file: !6, line: 291, baseType: !374, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !452, file: !6, line: 292, baseType: !374, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !452, file: !6, line: 293, baseType: !374, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !452, file: !6, line: 294, baseType: !374, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !452, file: !6, line: 295, baseType: !374, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !452, file: !6, line: 296, baseType: !374, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !452, file: !6, line: 297, baseType: !374, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !452, file: !6, line: 298, baseType: !374, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !452, file: !6, line: 299, baseType: !374, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !452, file: !6, line: 300, baseType: !374, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !452, file: !6, line: 301, baseType: !374, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !452, file: !6, line: 302, baseType: !374, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !452, file: !6, line: 303, baseType: !374, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !452, file: !6, line: 304, baseType: !374, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !452, file: !6, line: 305, baseType: !374, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !452, file: !6, line: 306, baseType: !374, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !452, file: !6, line: 307, baseType: !374, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !452, file: !6, line: 308, baseType: !374, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !452, file: !6, line: 309, baseType: !374, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !452, file: !6, line: 310, baseType: !374, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!504 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !6, line: 312, baseType: !505, size: 32, offset: 384)
!505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !6, line: 312, size: 32, elements: !506)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !505, file: !6, line: 313, baseType: !455, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !505, file: !6, line: 314, baseType: !455, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !452, file: !6, line: 317, baseType: !455, size: 32, offset: 416)
!510 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !6, line: 318, baseType: !511, size: 64, offset: 448)
!511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !6, line: 318, size: 64, elements: !512)
!512 = !{!513, !514}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !511, file: !6, line: 319, baseType: !374, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !511, file: !6, line: 320, baseType: !374, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !6, line: 322, baseType: !516, size: 64, offset: 512)
!516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !6, line: 322, size: 64, elements: !517)
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !516, file: !6, line: 323, baseType: !374, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !516, file: !6, line: 324, baseType: !374, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !452, file: !6, line: 326, baseType: !374, size: 64, offset: 576)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !452, file: !6, line: 327, baseType: !374, size: 64, offset: 640)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !452, file: !6, line: 328, baseType: !455, size: 32, offset: 704)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !452, file: !6, line: 329, baseType: !524, size: 32, offset: 736)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !525, line: 26, baseType: !526)
!525 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !377, line: 41, baseType: !288)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !452, file: !6, line: 330, baseType: !374, size: 64, offset: 768)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !452, file: !6, line: 331, baseType: !455, size: 32, offset: 832)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !452, file: !6, line: 332, baseType: !530, size: 16, offset: 864)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !375, line: 25, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !377, line: 40, baseType: !532)
!532 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !452, file: !6, line: 333, baseType: !530, size: 16, offset: 880)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !452, file: !6, line: 334, baseType: !455, size: 32, offset: 896)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !452, file: !6, line: 335, baseType: !455, size: 32, offset: 928)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !452, file: !6, line: 336, baseType: !374, size: 64, offset: 960)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !449, file: !448, line: 34, baseType: !538, size: 192, offset: 1024)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 192, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 3)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "prev_values", scope: !449, file: !448, line: 35, baseType: !538, size: 192, offset: 1216)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !449, file: !448, line: 36, baseType: !290, size: 64, offset: 1408)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !449, file: !448, line: 37, baseType: !374, size: 64, offset: 1472)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !449, file: !448, line: 38, baseType: !287, size: 64, offset: 1536)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "pgmsk", scope: !449, file: !448, line: 39, baseType: !546, size: 64, offset: 1600)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !547, line: 70, baseType: !378)
!547 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!548 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !449, file: !448, line: 40, baseType: !288, size: 32, offset: 1664)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !449, file: !448, line: 41, baseType: !288, size: 32, offset: 1696)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "max_fds", scope: !449, file: !448, line: 42, baseType: !288, size: 32, offset: 1728)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !449, file: !448, line: 43, baseType: !288, size: 32, offset: 1760)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !449, file: !448, line: 44, baseType: !288, size: 32, offset: 1792)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "fstr", scope: !449, file: !448, line: 45, baseType: !290, size: 64, offset: 1856)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(name: "num_fds", scope: !2, file: !3, line: 66, type: !288, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(name: "pgsz", scope: !2, file: !3, line: 68, type: !546, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(name: "map_size", scope: !2, file: !3, line: 69, type: !546, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !3, line: 237, type: !404, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !3, line: 237, type: !564, isLocal: true, isDefinition: true)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 16, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 2)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !3, line: 246, type: !337, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !3, line: 250, type: !571, isLocal: true, isDefinition: true)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 56, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 7)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !3, line: 252, type: !564, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !3, line: 255, type: !578, isLocal: true, isDefinition: true)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 88, elements: !579)
!579 = !{!580}
!580 = !DISubrange(count: 11)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !3, line: 226, type: !583, isLocal: true, isDefinition: true)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 168, elements: !584)
!584 = !{!585}
!585 = !DISubrange(count: 21)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !3, line: 94, type: !588, isLocal: true, isDefinition: true)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 160, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 20)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !3, line: 110, type: !295, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !3, line: 72, type: !595, isLocal: true, isDefinition: true)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 40, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 5)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !3, line: 73, type: !600, isLocal: true, isDefinition: true)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 64, elements: !428)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(name: "the_options", scope: !2, file: !3, line: 71, type: !603, isLocal: true, isDefinition: true)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 768, elements: !539)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !605, line: 50, size: 256, elements: !606)
!605 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!606 = !{!607, !610, !611, !613}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !604, file: !605, line: 52, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !604, file: !605, line: 55, baseType: !288, size: 32, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !604, file: !605, line: 56, baseType: !612, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !604, file: !605, line: 57, baseType: !288, size: 32, offset: 192)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !3, line: 377, type: !616, isLocal: true, isDefinition: true)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 824, elements: !617)
!617 = !{!618}
!618 = !DISubrange(count: 103)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !3, line: 77, type: !588, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(name: "gen_events", scope: !2, file: !3, line: 77, type: !608, isLocal: true, isDefinition: true)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "options_t", file: !3, line: 61, baseType: !624)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 53, size: 320, elements: !625)
!625 = !{!626, !627, !628, !629, !630, !631, !632}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "opt_no_show", scope: !624, file: !3, line: 54, baseType: !288, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_pages", scope: !624, file: !3, line: 55, baseType: !288, size: 32, offset: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !624, file: !3, line: 56, baseType: !288, size: 32, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !624, file: !3, line: 57, baseType: !288, size: 32, offset: 96)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !624, file: !3, line: 58, baseType: !288, size: 32, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !624, file: !3, line: 59, baseType: !290, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !624, file: !3, line: 60, baseType: !290, size: 64, offset: 256)
!633 = !{i32 7, !"Dwarf Version", i32 5}
!634 = !{i32 2, !"Debug Info Version", i32 3}
!635 = !{i32 1, !"wchar_size", i32 4}
!636 = !{i32 8, !"PIC Level", i32 2}
!637 = !{i32 7, !"PIE Level", i32 2}
!638 = !{i32 7, !"uwtable", i32 2}
!639 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!640 = distinct !DISubprogram(name: "setup_cpu", scope: !3, file: !3, line: 117, type: !641, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !643)
!641 = !DISubroutineType(types: !642)
!642 = !{!288, !288, !288}
!643 = !{!644, !645, !646, !647, !648, !649}
!644 = !DILocalVariable(name: "cpu", arg: 1, scope: !640, file: !3, line: 117, type: !288)
!645 = !DILocalVariable(name: "fd", arg: 2, scope: !640, file: !3, line: 117, type: !288)
!646 = !DILocalVariable(name: "ret", scope: !640, file: !3, line: 119, type: !288)
!647 = !DILocalVariable(name: "flags", scope: !640, file: !3, line: 119, type: !288)
!648 = !DILocalVariable(name: "i", scope: !640, file: !3, line: 120, type: !288)
!649 = !DILocalVariable(name: "pid", scope: !640, file: !3, line: 120, type: !288)
!650 = !{!651, !651, i64 0}
!651 = !{!"int", !652, i64 0}
!652 = !{!"omnipotent char", !653, i64 0}
!653 = !{!"Simple C/C++ TBAA"}
!654 = !DILocation(line: 117, column: 15, scope: !640)
!655 = !DILocation(line: 117, column: 24, scope: !640)
!656 = !DILocation(line: 119, column: 2, scope: !640)
!657 = !DILocation(line: 119, column: 6, scope: !640)
!658 = !DILocation(line: 119, column: 11, scope: !640)
!659 = !DILocation(line: 120, column: 2, scope: !640)
!660 = !DILocation(line: 120, column: 6, scope: !640)
!661 = !DILocation(line: 120, column: 9, scope: !640)
!662 = !DILocation(line: 125, column: 39, scope: !640)
!663 = !{!664, !665, i64 24}
!664 = !{!"", !651, i64 0, !651, i64 4, !651, i64 8, !651, i64 12, !651, i64 16, !665, i64 24, !665, i64 32}
!665 = !{!"any pointer", !652, i64 0}
!666 = !DILocation(line: 125, column: 8, scope: !640)
!667 = !DILocation(line: 125, column: 6, scope: !640)
!668 = !DILocation(line: 126, column: 6, scope: !669)
!669 = distinct !DILexicalBlock(scope: !640, file: !3, line: 126, column: 6)
!670 = !DILocation(line: 126, column: 10, scope: !669)
!671 = !DILocation(line: 126, column: 14, scope: !669)
!672 = !DILocation(line: 126, column: 6, scope: !640)
!673 = !DILocation(line: 127, column: 3, scope: !669)
!674 = !DILocation(line: 129, column: 7, scope: !675)
!675 = distinct !DILexicalBlock(scope: !640, file: !3, line: 129, column: 6)
!676 = !{!665, !665, i64 0}
!677 = !DILocation(line: 129, column: 14, scope: !675)
!678 = !DILocation(line: 129, column: 17, scope: !675)
!679 = !{!652, !652, i64 0}
!680 = !DILocation(line: 129, column: 6, scope: !640)
!681 = !DILocation(line: 130, column: 3, scope: !675)
!682 = !DILocation(line: 132, column: 2, scope: !640)
!683 = !DILocation(line: 132, column: 9, scope: !640)
!684 = !DILocation(line: 132, column: 12, scope: !640)
!685 = !{!686, !651, i64 212}
!686 = !{!"", !687, i64 0, !652, i64 128, !652, i64 152, !665, i64 176, !688, i64 184, !665, i64 192, !688, i64 200, !651, i64 208, !651, i64 212, !651, i64 216, !651, i64 220, !651, i64 224, !665, i64 232}
!687 = !{!"perf_event_attr", !651, i64 0, !651, i64 4, !688, i64 8, !652, i64 16, !688, i64 24, !688, i64 32, !688, i64 40, !688, i64 40, !688, i64 40, !688, i64 40, !688, i64 40, !688, i64 40, !688, i64 40, !688, i64 40, !688, i64 41, !688, i64 41, !688, i64 41, !688, i64 41, !688, i64 41, !688, i64 41, !688, i64 41, !688, i64 41, !688, i64 42, !688, i64 42, !688, i64 42, !688, i64 42, !688, i64 42, !688, i64 42, !688, i64 42, !688, i64 43, !688, i64 43, !688, i64 43, !688, i64 43, !688, i64 43, !688, i64 43, !688, i64 43, !688, i64 43, !688, i64 44, !688, i64 44, !688, i64 44, !688, i64 44, !688, i64 44, !688, i64 44, !688, i64 44, !652, i64 48, !651, i64 52, !652, i64 56, !652, i64 64, !688, i64 72, !688, i64 80, !651, i64 88, !651, i64 92, !688, i64 96, !651, i64 104, !689, i64 108, !689, i64 110, !651, i64 112, !651, i64 116, !688, i64 120}
!688 = !{!"long", !652, i64 0}
!689 = !{!"short", !652, i64 0}
!690 = !DILocation(line: 133, column: 7, scope: !691)
!691 = distinct !DILexicalBlock(scope: !640, file: !3, line: 133, column: 2)
!692 = !DILocation(line: 133, column: 6, scope: !691)
!693 = !DILocation(line: 133, column: 11, scope: !694)
!694 = distinct !DILexicalBlock(scope: !691, file: !3, line: 133, column: 2)
!695 = !DILocation(line: 133, column: 15, scope: !694)
!696 = !DILocation(line: 133, column: 13, scope: !694)
!697 = !DILocation(line: 133, column: 2, scope: !691)
!698 = !DILocation(line: 135, column: 25, scope: !699)
!699 = distinct !DILexicalBlock(scope: !694, file: !3, line: 133, column: 29)
!700 = !DILocation(line: 135, column: 24, scope: !699)
!701 = !DILocation(line: 135, column: 3, scope: !699)
!702 = !DILocation(line: 135, column: 7, scope: !699)
!703 = !DILocation(line: 135, column: 10, scope: !699)
!704 = !DILocation(line: 135, column: 13, scope: !699)
!705 = !DILocation(line: 135, column: 22, scope: !699)
!706 = !DILocation(line: 137, column: 15, scope: !707)
!707 = distinct !DILexicalBlock(scope: !699, file: !3, line: 137, column: 7)
!708 = !{!664, !665, i64 32}
!709 = !DILocation(line: 137, column: 7, scope: !707)
!710 = !DILocation(line: 137, column: 7, scope: !699)
!711 = !DILocation(line: 138, column: 10, scope: !712)
!712 = distinct !DILexicalBlock(scope: !707, file: !3, line: 137, column: 23)
!713 = !DILocation(line: 139, column: 10, scope: !712)
!714 = !DILocation(line: 139, column: 8, scope: !712)
!715 = !DILocation(line: 140, column: 3, scope: !712)
!716 = !DILocation(line: 141, column: 10, scope: !717)
!717 = distinct !DILexicalBlock(scope: !707, file: !3, line: 140, column: 10)
!718 = !DILocation(line: 142, column: 8, scope: !717)
!719 = !DILocation(line: 145, column: 15, scope: !720)
!720 = distinct !DILexicalBlock(scope: !699, file: !3, line: 145, column: 7)
!721 = !{!664, !651, i64 12}
!722 = !DILocation(line: 145, column: 7, scope: !720)
!723 = !DILocation(line: 145, column: 7, scope: !699)
!724 = !DILocation(line: 146, column: 4, scope: !720)
!725 = !DILocation(line: 146, column: 8, scope: !720)
!726 = !DILocation(line: 146, column: 11, scope: !720)
!727 = !DILocation(line: 146, column: 14, scope: !720)
!728 = !DILocation(line: 146, column: 21, scope: !720)
!729 = !DILocation(line: 148, column: 7, scope: !730)
!730 = distinct !DILexicalBlock(scope: !699, file: !3, line: 148, column: 7)
!731 = !DILocation(line: 148, column: 11, scope: !730)
!732 = !DILocation(line: 148, column: 14, scope: !730)
!733 = !DILocation(line: 148, column: 17, scope: !730)
!734 = !DILocation(line: 148, column: 7, scope: !699)
!735 = !DILocation(line: 152, column: 8, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !3, line: 152, column: 8)
!737 = distinct !DILexicalBlock(scope: !730, file: !3, line: 148, column: 32)
!738 = !DILocation(line: 152, column: 12, scope: !736)
!739 = !DILocation(line: 152, column: 15, scope: !736)
!740 = !DILocation(line: 152, column: 18, scope: !736)
!741 = !DILocation(line: 152, column: 8, scope: !737)
!742 = !DILocation(line: 153, column: 43, scope: !743)
!743 = distinct !DILexicalBlock(scope: !736, file: !3, line: 152, column: 33)
!744 = !{!664, !651, i64 4}
!745 = !DILocation(line: 153, column: 35, scope: !743)
!746 = !DILocation(line: 153, column: 54, scope: !743)
!747 = !{!688, !688, i64 0}
!748 = !DILocation(line: 153, column: 53, scope: !743)
!749 = !DILocation(line: 153, column: 60, scope: !743)
!750 = !DILocation(line: 153, column: 34, scope: !743)
!751 = !DILocation(line: 153, column: 5, scope: !743)
!752 = !DILocation(line: 153, column: 9, scope: !743)
!753 = !DILocation(line: 153, column: 12, scope: !743)
!754 = !DILocation(line: 153, column: 15, scope: !743)
!755 = !DILocation(line: 153, column: 32, scope: !743)
!756 = !DILocation(line: 154, column: 5, scope: !743)
!757 = !DILocation(line: 154, column: 9, scope: !743)
!758 = !DILocation(line: 154, column: 12, scope: !743)
!759 = !DILocation(line: 154, column: 15, scope: !743)
!760 = !DILocation(line: 154, column: 25, scope: !743)
!761 = !DILocation(line: 155, column: 4, scope: !743)
!762 = !DILocation(line: 157, column: 4, scope: !737)
!763 = !DILocation(line: 157, column: 8, scope: !737)
!764 = !DILocation(line: 157, column: 11, scope: !737)
!765 = !DILocation(line: 157, column: 14, scope: !737)
!766 = !DILocation(line: 157, column: 26, scope: !737)
!767 = !{!686, !688, i64 24}
!768 = !DILocation(line: 161, column: 8, scope: !769)
!769 = distinct !DILexicalBlock(scope: !737, file: !3, line: 161, column: 8)
!770 = !DILocation(line: 161, column: 16, scope: !769)
!771 = !DILocation(line: 161, column: 8, scope: !737)
!772 = !DILocation(line: 162, column: 5, scope: !769)
!773 = !DILocation(line: 162, column: 9, scope: !769)
!774 = !DILocation(line: 162, column: 12, scope: !769)
!775 = !DILocation(line: 162, column: 15, scope: !769)
!776 = !DILocation(line: 162, column: 27, scope: !769)
!777 = !DILocation(line: 164, column: 44, scope: !737)
!778 = !DILocation(line: 164, column: 48, scope: !737)
!779 = !DILocation(line: 164, column: 51, scope: !737)
!780 = !{!686, !665, i64 176}
!781 = !DILocation(line: 164, column: 57, scope: !737)
!782 = !DILocation(line: 164, column: 61, scope: !737)
!783 = !DILocation(line: 164, column: 64, scope: !737)
!784 = !DILocation(line: 164, column: 67, scope: !737)
!785 = !DILocation(line: 164, column: 82, scope: !737)
!786 = !DILocation(line: 164, column: 86, scope: !737)
!787 = !DILocation(line: 164, column: 89, scope: !737)
!788 = !DILocation(line: 164, column: 92, scope: !737)
!789 = !DILocation(line: 164, column: 4, scope: !737)
!790 = !DILocation(line: 166, column: 4, scope: !737)
!791 = !DILocation(line: 166, column: 8, scope: !737)
!792 = !DILocation(line: 166, column: 11, scope: !737)
!793 = !DILocation(line: 166, column: 14, scope: !737)
!794 = !DILocation(line: 166, column: 26, scope: !737)
!795 = !{!686, !688, i64 32}
!796 = !DILocation(line: 168, column: 8, scope: !797)
!797 = distinct !DILexicalBlock(scope: !737, file: !3, line: 168, column: 8)
!798 = !DILocation(line: 168, column: 12, scope: !797)
!799 = !DILocation(line: 168, column: 15, scope: !797)
!800 = !DILocation(line: 168, column: 18, scope: !797)
!801 = !DILocation(line: 168, column: 8, scope: !737)
!802 = !DILocation(line: 169, column: 5, scope: !797)
!803 = !DILocation(line: 169, column: 9, scope: !797)
!804 = !DILocation(line: 169, column: 12, scope: !797)
!805 = !DILocation(line: 169, column: 15, scope: !797)
!806 = !DILocation(line: 169, column: 27, scope: !797)
!807 = !DILocation(line: 170, column: 3, scope: !737)
!808 = !DILocation(line: 172, column: 32, scope: !699)
!809 = !DILocation(line: 172, column: 36, scope: !699)
!810 = !DILocation(line: 172, column: 39, scope: !699)
!811 = !DILocation(line: 172, column: 43, scope: !699)
!812 = !DILocation(line: 172, column: 48, scope: !699)
!813 = !DILocation(line: 172, column: 53, scope: !699)
!814 = !DILocation(line: 172, column: 60, scope: !699)
!815 = !DILocation(line: 172, column: 64, scope: !699)
!816 = !DILocation(line: 172, column: 15, scope: !699)
!817 = !DILocation(line: 172, column: 3, scope: !699)
!818 = !DILocation(line: 172, column: 7, scope: !699)
!819 = !DILocation(line: 172, column: 10, scope: !699)
!820 = !DILocation(line: 172, column: 13, scope: !699)
!821 = !DILocation(line: 173, column: 7, scope: !822)
!822 = distinct !DILexicalBlock(scope: !699, file: !3, line: 173, column: 7)
!823 = !DILocation(line: 173, column: 11, scope: !822)
!824 = !DILocation(line: 173, column: 14, scope: !822)
!825 = !DILocation(line: 173, column: 17, scope: !822)
!826 = !DILocation(line: 173, column: 7, scope: !699)
!827 = !DILocation(line: 174, column: 8, scope: !828)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 174, column: 8)
!829 = distinct !DILexicalBlock(scope: !822, file: !3, line: 173, column: 24)
!830 = !DILocation(line: 174, column: 12, scope: !828)
!831 = !DILocation(line: 174, column: 15, scope: !828)
!832 = !DILocation(line: 174, column: 18, scope: !828)
!833 = !DILocation(line: 174, column: 8, scope: !829)
!834 = !DILocation(line: 175, column: 73, scope: !828)
!835 = !DILocation(line: 175, column: 77, scope: !828)
!836 = !DILocation(line: 175, column: 80, scope: !828)
!837 = !DILocation(line: 175, column: 5, scope: !828)
!838 = !DILocation(line: 176, column: 37, scope: !829)
!839 = !DILocation(line: 176, column: 41, scope: !829)
!840 = !DILocation(line: 176, column: 44, scope: !829)
!841 = !DILocation(line: 176, column: 4, scope: !829)
!842 = !DILocation(line: 178, column: 2, scope: !699)
!843 = !DILocation(line: 133, column: 25, scope: !694)
!844 = !DILocation(line: 133, column: 2, scope: !694)
!845 = distinct !{!845, !697, !846, !847}
!846 = !DILocation(line: 178, column: 2, scope: !691)
!847 = !{!"llvm.loop.mustprogress"}
!848 = !DILocation(line: 183, column: 26, scope: !640)
!849 = !DILocation(line: 183, column: 70, scope: !640)
!850 = !DILocation(line: 183, column: 77, scope: !640)
!851 = !DILocation(line: 183, column: 15, scope: !640)
!852 = !DILocation(line: 183, column: 2, scope: !640)
!853 = !DILocation(line: 183, column: 9, scope: !640)
!854 = !DILocation(line: 183, column: 13, scope: !640)
!855 = !{!686, !665, i64 192}
!856 = !DILocation(line: 184, column: 6, scope: !857)
!857 = distinct !DILexicalBlock(scope: !640, file: !3, line: 184, column: 6)
!858 = !DILocation(line: 184, column: 13, scope: !857)
!859 = !DILocation(line: 184, column: 17, scope: !857)
!860 = !DILocation(line: 184, column: 6, scope: !640)
!861 = !DILocation(line: 185, column: 3, scope: !857)
!862 = !DILocation(line: 188, column: 26, scope: !640)
!863 = !DILocation(line: 188, column: 18, scope: !640)
!864 = !DILocation(line: 188, column: 37, scope: !640)
!865 = !DILocation(line: 188, column: 36, scope: !640)
!866 = !DILocation(line: 188, column: 42, scope: !640)
!867 = !DILocation(line: 188, column: 2, scope: !640)
!868 = !DILocation(line: 188, column: 9, scope: !640)
!869 = !DILocation(line: 188, column: 15, scope: !640)
!870 = !{!686, !688, i64 200}
!871 = !DILocation(line: 193, column: 9, scope: !872)
!872 = distinct !DILexicalBlock(scope: !640, file: !3, line: 193, column: 2)
!873 = !DILocation(line: 193, column: 7, scope: !872)
!874 = !DILocation(line: 193, column: 14, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !3, line: 193, column: 2)
!876 = !DILocation(line: 193, column: 18, scope: !875)
!877 = !DILocation(line: 193, column: 16, scope: !875)
!878 = !DILocation(line: 193, column: 2, scope: !872)
!879 = !DILocation(line: 194, column: 8, scope: !880)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 194, column: 7)
!881 = distinct !DILexicalBlock(scope: !875, file: !3, line: 193, column: 32)
!882 = !DILocation(line: 194, column: 12, scope: !880)
!883 = !DILocation(line: 194, column: 15, scope: !880)
!884 = !DILocation(line: 194, column: 18, scope: !880)
!885 = !DILocation(line: 194, column: 7, scope: !881)
!886 = !DILocation(line: 195, column: 4, scope: !880)
!887 = !DILocation(line: 196, column: 15, scope: !881)
!888 = !DILocation(line: 196, column: 19, scope: !881)
!889 = !DILocation(line: 196, column: 22, scope: !881)
!890 = !DILocation(line: 196, column: 53, scope: !881)
!891 = !DILocation(line: 196, column: 60, scope: !881)
!892 = !DILocation(line: 196, column: 9, scope: !881)
!893 = !DILocation(line: 196, column: 7, scope: !881)
!894 = !DILocation(line: 197, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !881, file: !3, line: 197, column: 7)
!896 = !DILocation(line: 197, column: 7, scope: !881)
!897 = !DILocation(line: 198, column: 4, scope: !895)
!898 = !DILocation(line: 199, column: 2, scope: !881)
!899 = !DILocation(line: 193, column: 28, scope: !875)
!900 = !DILocation(line: 193, column: 2, scope: !875)
!901 = distinct !{!901, !878, !902, !847}
!902 = !DILocation(line: 199, column: 2, scope: !872)
!903 = !DILocation(line: 204, column: 6, scope: !904)
!904 = distinct !DILexicalBlock(scope: !640, file: !3, line: 204, column: 6)
!905 = !DILocation(line: 204, column: 14, scope: !904)
!906 = !DILocation(line: 204, column: 18, scope: !904)
!907 = !DILocation(line: 204, column: 21, scope: !904)
!908 = !DILocation(line: 204, column: 28, scope: !904)
!909 = !DILocation(line: 204, column: 31, scope: !904)
!910 = !DILocation(line: 204, column: 6, scope: !640)
!911 = !DILocation(line: 205, column: 9, scope: !912)
!912 = distinct !DILexicalBlock(scope: !913, file: !3, line: 205, column: 3)
!913 = distinct !DILexicalBlock(scope: !904, file: !3, line: 204, column: 37)
!914 = !DILocation(line: 205, column: 7, scope: !912)
!915 = !DILocation(line: 205, column: 14, scope: !916)
!916 = distinct !DILexicalBlock(scope: !912, file: !3, line: 205, column: 3)
!917 = !DILocation(line: 205, column: 18, scope: !916)
!918 = !DILocation(line: 205, column: 16, scope: !916)
!919 = !DILocation(line: 205, column: 3, scope: !912)
!920 = !DILocation(line: 210, column: 16, scope: !921)
!921 = distinct !DILexicalBlock(scope: !916, file: !3, line: 205, column: 32)
!922 = !DILocation(line: 210, column: 20, scope: !921)
!923 = !DILocation(line: 210, column: 23, scope: !921)
!924 = !DILocation(line: 210, column: 47, scope: !921)
!925 = !DILocation(line: 210, column: 51, scope: !921)
!926 = !DILocation(line: 210, column: 54, scope: !921)
!927 = !DILocation(line: 210, column: 10, scope: !921)
!928 = !DILocation(line: 210, column: 8, scope: !921)
!929 = !DILocation(line: 211, column: 8, scope: !930)
!930 = distinct !DILexicalBlock(scope: !921, file: !3, line: 211, column: 8)
!931 = !DILocation(line: 211, column: 12, scope: !930)
!932 = !DILocation(line: 211, column: 8, scope: !921)
!933 = !DILocation(line: 212, column: 5, scope: !930)
!934 = !DILocation(line: 213, column: 33, scope: !921)
!935 = !DILocation(line: 213, column: 37, scope: !921)
!936 = !DILocation(line: 213, column: 40, scope: !921)
!937 = !{!686, !688, i64 184}
!938 = !DILocation(line: 213, column: 44, scope: !921)
!939 = !DILocation(line: 213, column: 48, scope: !921)
!940 = !DILocation(line: 213, column: 51, scope: !921)
!941 = !DILocation(line: 213, column: 4, scope: !921)
!942 = !DILocation(line: 214, column: 3, scope: !921)
!943 = !DILocation(line: 205, column: 28, scope: !916)
!944 = !DILocation(line: 205, column: 3, scope: !916)
!945 = distinct !{!945, !919, !946, !847}
!946 = !DILocation(line: 214, column: 3, scope: !912)
!947 = !DILocation(line: 215, column: 2, scope: !913)
!948 = !DILocation(line: 217, column: 1, scope: !640)
!949 = !DILocation(line: 216, column: 2, scope: !640)
!950 = !DISubprogram(name: "perf_setup_list_events", scope: !448, file: !448, line: 52, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!951 = !DISubroutineType(types: !952)
!952 = !{!288, !608, !953, !612}
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!954 = !DISubprogram(name: "errx", scope: !955, file: !955, line: 50, type: !956, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!955 = !DIFile(filename: "/usr/include/err.h", directory: "", checksumkind: CSK_MD5, checksum: "c1d02a7722f9cc1994ce2e5c5e6150dd")
!956 = !DISubroutineType(types: !957)
!957 = !{null, !288, !608, null}
!958 = !DISubprogram(name: "printf", scope: !959, file: !959, line: 356, type: !960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!959 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!960 = !DISubroutineType(types: !961)
!961 = !{!288, !962, null}
!962 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !608)
!963 = distinct !DISubprogram(name: "perf_event_open", scope: !6, file: !6, line: 597, type: !964, scopeLine: 603, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !970)
!964 = !DISubroutineType(types: !965)
!965 = !{!288, !966, !967, !288, !288, !378}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !968, line: 97, baseType: !969)
!968 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !377, line: 154, baseType: !288)
!970 = !{!971, !972, !973, !974, !975}
!971 = !DILocalVariable(name: "hw_event_uptr", arg: 1, scope: !963, file: !6, line: 598, type: !966)
!972 = !DILocalVariable(name: "pid", arg: 2, scope: !963, file: !6, line: 599, type: !967)
!973 = !DILocalVariable(name: "cpu", arg: 3, scope: !963, file: !6, line: 600, type: !288)
!974 = !DILocalVariable(name: "group_fd", arg: 4, scope: !963, file: !6, line: 601, type: !288)
!975 = !DILocalVariable(name: "flags", arg: 5, scope: !963, file: !6, line: 602, type: !378)
!976 = !DILocation(line: 598, column: 27, scope: !963)
!977 = !DILocation(line: 599, column: 11, scope: !963)
!978 = !DILocation(line: 600, column: 9, scope: !963)
!979 = !DILocation(line: 601, column: 9, scope: !963)
!980 = !DILocation(line: 602, column: 18, scope: !963)
!981 = !DILocation(line: 605, column: 25, scope: !963)
!982 = !DILocation(line: 605, column: 40, scope: !963)
!983 = !DILocation(line: 605, column: 45, scope: !963)
!984 = !DILocation(line: 605, column: 50, scope: !963)
!985 = !DILocation(line: 605, column: 60, scope: !963)
!986 = !DILocation(line: 604, column: 9, scope: !963)
!987 = !DILocation(line: 604, column: 2, scope: !963)
!988 = !DISubprogram(name: "err", scope: !955, file: !955, line: 46, type: !956, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!989 = !DISubprogram(name: "mmap", scope: !990, file: !990, line: 57, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!990 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/mman.h", directory: "", checksumkind: CSK_MD5, checksum: "93a87cc3b0558893646eb0c257165272")
!991 = !DISubroutineType(types: !992)
!992 = !{!287, !287, !546, !288, !288, !288, !993}
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !377, line: 152, baseType: !427)
!994 = !DISubprogram(name: "ioctl", scope: !995, file: !995, line: 42, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!995 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/ioctl.h", directory: "", checksumkind: CSK_MD5, checksum: "17041ae374bfd0bee8350d01883d298c")
!996 = !DISubroutineType(types: !997)
!997 = !{!288, !288, !378, null}
!998 = distinct !DISubprogram(name: "open_cgroup", scope: !3, file: !3, line: 277, type: !999, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1001)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!288, !290}
!1001 = !{!1002, !1003, !1007, !1008, !1009}
!1002 = !DILocalVariable(name: "name", arg: 1, scope: !998, file: !3, line: 277, type: !290)
!1003 = !DILocalVariable(name: "path", scope: !998, file: !3, line: 279, type: !1004)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 8200, elements: !1005)
!1005 = !{!1006}
!1006 = !DISubrange(count: 1025)
!1007 = !DILocalVariable(name: "mnt", scope: !998, file: !3, line: 280, type: !1004)
!1008 = !DILocalVariable(name: "cfd", scope: !998, file: !3, line: 281, type: !288)
!1009 = !DILocalVariable(name: "retlen", scope: !998, file: !3, line: 282, type: !288)
!1010 = !DILocation(line: 277, column: 19, scope: !998)
!1011 = !DILocation(line: 279, column: 9, scope: !998)
!1012 = !DILocation(line: 279, column: 14, scope: !998)
!1013 = !DILocation(line: 280, column: 9, scope: !998)
!1014 = !DILocation(line: 280, column: 14, scope: !998)
!1015 = !DILocation(line: 281, column: 9, scope: !998)
!1016 = !DILocation(line: 281, column: 13, scope: !998)
!1017 = !DILocation(line: 282, column: 2, scope: !998)
!1018 = !DILocation(line: 282, column: 6, scope: !998)
!1019 = !DILocation(line: 284, column: 38, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !998, file: !3, line: 284, column: 13)
!1021 = !DILocation(line: 284, column: 13, scope: !1020)
!1022 = !DILocation(line: 284, column: 13, scope: !998)
!1023 = !DILocation(line: 285, column: 17, scope: !1020)
!1024 = !DILocation(line: 287, column: 20, scope: !998)
!1025 = !DILocation(line: 287, column: 45, scope: !998)
!1026 = !DILocation(line: 287, column: 50, scope: !998)
!1027 = !DILocation(line: 287, column: 11, scope: !998)
!1028 = !DILocation(line: 287, column: 9, scope: !998)
!1029 = !DILocation(line: 290, column: 6, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !998, file: !3, line: 290, column: 6)
!1031 = !DILocation(line: 290, column: 13, scope: !1030)
!1032 = !DILocation(line: 290, column: 18, scope: !1030)
!1033 = !DILocation(line: 290, column: 33, scope: !1030)
!1034 = !DILocation(line: 290, column: 30, scope: !1030)
!1035 = !DILocation(line: 290, column: 6, scope: !998)
!1036 = !DILocation(line: 291, column: 48, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 290, column: 41)
!1038 = !DILocation(line: 291, column: 53, scope: !1037)
!1039 = !DILocation(line: 291, column: 3, scope: !1037)
!1040 = !DILocation(line: 292, column: 10, scope: !1037)
!1041 = !DILocation(line: 292, column: 3, scope: !1037)
!1042 = !DILocation(line: 295, column: 20, scope: !998)
!1043 = !DILocation(line: 295, column: 15, scope: !998)
!1044 = !DILocation(line: 295, column: 13, scope: !998)
!1045 = !DILocation(line: 296, column: 13, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !998, file: !3, line: 296, column: 13)
!1047 = !DILocation(line: 296, column: 17, scope: !1046)
!1048 = !DILocation(line: 296, column: 13, scope: !998)
!1049 = !DILocation(line: 297, column: 50, scope: !1046)
!1050 = !DILocation(line: 297, column: 17, scope: !1046)
!1051 = !DILocation(line: 299, column: 16, scope: !998)
!1052 = !DILocation(line: 299, column: 9, scope: !998)
!1053 = !DILocation(line: 300, column: 1, scope: !998)
!1054 = distinct !DISubprogram(name: "cgroupfs_find_mountpoint", scope: !3, file: !3, line: 230, type: !1055, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1057)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!288, !290, !546}
!1057 = !{!1058, !1059, !1060, !1107, !1108, !1109, !1110, !1111, !1112}
!1058 = !DILocalVariable(name: "buf", arg: 1, scope: !1054, file: !3, line: 230, type: !290)
!1059 = !DILocalVariable(name: "maxlen", arg: 2, scope: !1054, file: !3, line: 230, type: !546)
!1060 = !DILocalVariable(name: "fp", scope: !1054, file: !3, line: 232, type: !1061)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1063, line: 7, baseType: !1064)
!1063 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1065, line: 49, size: 1728, elements: !1066)
!1065 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1066 = !{!1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1082, !1084, !1085, !1086, !1087, !1088, !1090, !1091, !1094, !1096, !1099, !1102, !1103, !1104, !1105, !1106}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1064, file: !1065, line: 51, baseType: !288, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1064, file: !1065, line: 54, baseType: !290, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1064, file: !1065, line: 55, baseType: !290, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1064, file: !1065, line: 56, baseType: !290, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1064, file: !1065, line: 57, baseType: !290, size: 64, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1064, file: !1065, line: 58, baseType: !290, size: 64, offset: 320)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1064, file: !1065, line: 59, baseType: !290, size: 64, offset: 384)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1064, file: !1065, line: 60, baseType: !290, size: 64, offset: 448)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1064, file: !1065, line: 61, baseType: !290, size: 64, offset: 512)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1064, file: !1065, line: 64, baseType: !290, size: 64, offset: 576)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1064, file: !1065, line: 65, baseType: !290, size: 64, offset: 640)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1064, file: !1065, line: 66, baseType: !290, size: 64, offset: 704)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1064, file: !1065, line: 68, baseType: !1080, size: 64, offset: 768)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1065, line: 36, flags: DIFlagFwdDecl)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1064, file: !1065, line: 70, baseType: !1083, size: 64, offset: 832)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1064, file: !1065, line: 72, baseType: !288, size: 32, offset: 896)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1064, file: !1065, line: 73, baseType: !288, size: 32, offset: 928)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1064, file: !1065, line: 74, baseType: !993, size: 64, offset: 960)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1064, file: !1065, line: 77, baseType: !532, size: 16, offset: 1024)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1064, file: !1065, line: 78, baseType: !1089, size: 8, offset: 1040)
!1089 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1064, file: !1065, line: 79, baseType: !401, size: 8, offset: 1048)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1064, file: !1065, line: 81, baseType: !1092, size: 64, offset: 1088)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1065, line: 43, baseType: null)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1064, file: !1065, line: 89, baseType: !1095, size: 64, offset: 1152)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !377, line: 153, baseType: !427)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1064, file: !1065, line: 91, baseType: !1097, size: 64, offset: 1216)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1065, line: 37, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1064, file: !1065, line: 92, baseType: !1100, size: 64, offset: 1280)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1065, line: 38, flags: DIFlagFwdDecl)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1064, file: !1065, line: 93, baseType: !1083, size: 64, offset: 1344)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1064, file: !1065, line: 94, baseType: !287, size: 64, offset: 1408)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1064, file: !1065, line: 95, baseType: !546, size: 64, offset: 1472)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1064, file: !1065, line: 96, baseType: !288, size: 32, offset: 1536)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1064, file: !1065, line: 98, baseType: !588, size: 160, offset: 1568)
!1107 = !DILocalVariable(name: "mountpoint", scope: !1054, file: !3, line: 233, type: !1004)
!1108 = !DILocalVariable(name: "tokens", scope: !1054, file: !3, line: 233, type: !1004)
!1109 = !DILocalVariable(name: "type", scope: !1054, file: !3, line: 233, type: !1004)
!1110 = !DILocalVariable(name: "token", scope: !1054, file: !3, line: 234, type: !290)
!1111 = !DILocalVariable(name: "saved_ptr", scope: !1054, file: !3, line: 234, type: !290)
!1112 = !DILocalVariable(name: "found", scope: !1054, file: !3, line: 235, type: !288)
!1113 = !DILocation(line: 230, column: 32, scope: !1054)
!1114 = !DILocation(line: 230, column: 44, scope: !1054)
!1115 = !DILocation(line: 232, column: 2, scope: !1054)
!1116 = !DILocation(line: 232, column: 8, scope: !1054)
!1117 = !DILocation(line: 233, column: 2, scope: !1054)
!1118 = !DILocation(line: 233, column: 7, scope: !1054)
!1119 = !DILocation(line: 233, column: 31, scope: !1054)
!1120 = !DILocation(line: 233, column: 51, scope: !1054)
!1121 = !DILocation(line: 234, column: 2, scope: !1054)
!1122 = !DILocation(line: 234, column: 8, scope: !1054)
!1123 = !DILocation(line: 234, column: 16, scope: !1054)
!1124 = !DILocation(line: 235, column: 2, scope: !1054)
!1125 = !DILocation(line: 235, column: 6, scope: !1054)
!1126 = !DILocation(line: 237, column: 7, scope: !1054)
!1127 = !DILocation(line: 237, column: 5, scope: !1054)
!1128 = !DILocation(line: 238, column: 7, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 238, column: 6)
!1130 = !DILocation(line: 238, column: 6, scope: !1054)
!1131 = !DILocation(line: 239, column: 3, scope: !1129)
!1132 = !DILocation(line: 246, column: 2, scope: !1054)
!1133 = !DILocation(line: 246, column: 16, scope: !1054)
!1134 = !DILocation(line: 248, column: 5, scope: !1054)
!1135 = !DILocation(line: 248, column: 17, scope: !1054)
!1136 = !DILocation(line: 248, column: 23, scope: !1054)
!1137 = !DILocation(line: 246, column: 9, scope: !1054)
!1138 = !DILocation(line: 248, column: 31, scope: !1054)
!1139 = !DILocation(line: 250, column: 15, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 250, column: 7)
!1141 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 248, column: 37)
!1142 = !DILocation(line: 250, column: 8, scope: !1140)
!1143 = !DILocation(line: 250, column: 7, scope: !1141)
!1144 = !DILocation(line: 252, column: 21, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 250, column: 32)
!1146 = !DILocation(line: 252, column: 12, scope: !1145)
!1147 = !DILocation(line: 252, column: 10, scope: !1145)
!1148 = !DILocation(line: 254, column: 4, scope: !1145)
!1149 = !DILocation(line: 254, column: 11, scope: !1145)
!1150 = !DILocation(line: 254, column: 17, scope: !1145)
!1151 = !DILocation(line: 255, column: 17, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 255, column: 9)
!1153 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 254, column: 26)
!1154 = !DILocation(line: 255, column: 10, scope: !1152)
!1155 = !DILocation(line: 255, column: 9, scope: !1153)
!1156 = !DILocation(line: 256, column: 12, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 255, column: 39)
!1158 = !DILocation(line: 257, column: 6, scope: !1157)
!1159 = !DILocation(line: 259, column: 13, scope: !1153)
!1160 = !DILocation(line: 259, column: 11, scope: !1153)
!1161 = distinct !{!1161, !1148, !1162, !847}
!1162 = !DILocation(line: 260, column: 4, scope: !1145)
!1163 = !DILocation(line: 261, column: 3, scope: !1145)
!1164 = !DILocation(line: 262, column: 7, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 262, column: 7)
!1166 = !DILocation(line: 262, column: 7, scope: !1141)
!1167 = !DILocation(line: 263, column: 4, scope: !1165)
!1168 = distinct !{!1168, !1132, !1169, !847}
!1169 = !DILocation(line: 264, column: 2, scope: !1054)
!1170 = !DILocation(line: 265, column: 9, scope: !1054)
!1171 = !DILocation(line: 265, column: 2, scope: !1054)
!1172 = !DILocation(line: 266, column: 7, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 266, column: 6)
!1174 = !DILocation(line: 266, column: 6, scope: !1054)
!1175 = !DILocation(line: 267, column: 3, scope: !1173)
!1176 = !DILocation(line: 269, column: 13, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 269, column: 6)
!1178 = !DILocation(line: 269, column: 6, scope: !1177)
!1179 = !DILocation(line: 269, column: 27, scope: !1177)
!1180 = !DILocation(line: 269, column: 25, scope: !1177)
!1181 = !DILocation(line: 269, column: 6, scope: !1054)
!1182 = !DILocation(line: 270, column: 10, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 269, column: 35)
!1184 = !DILocation(line: 270, column: 15, scope: !1183)
!1185 = !DILocation(line: 270, column: 3, scope: !1183)
!1186 = !DILocation(line: 271, column: 3, scope: !1183)
!1187 = !DILocation(line: 273, column: 2, scope: !1054)
!1188 = !DILocation(line: 274, column: 1, scope: !1054)
!1189 = !DISubprogram(name: "snprintf", scope: !959, file: !959, line: 378, type: !1190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!288, !1192, !546, !962, null}
!1192 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !290)
!1193 = !DISubprogram(name: "warn", scope: !955, file: !955, line: 34, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !608, null}
!1196 = !DISubprogram(name: "open", scope: !1197, file: !1197, line: 181, type: !1198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1197 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!288, !608, !288, null}
!1200 = !DILocation(line: 308, column: 17, scope: !354)
!1201 = !DILocation(line: 311, column: 2, scope: !354)
!1202 = !DILocation(line: 311, column: 16, scope: !354)
!1203 = !DILocation(line: 312, column: 2, scope: !354)
!1204 = !DILocation(line: 312, column: 6, scope: !354)
!1205 = !DILocation(line: 313, column: 2, scope: !354)
!1206 = !DILocation(line: 313, column: 6, scope: !354)
!1207 = !DILocation(line: 314, column: 2, scope: !354)
!1208 = !DILocation(line: 314, column: 6, scope: !354)
!1209 = !DILocation(line: 316, column: 6, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !354, file: !3, line: 316, column: 6)
!1211 = !DILocation(line: 316, column: 23, scope: !1210)
!1212 = !DILocation(line: 316, column: 6, scope: !354)
!1213 = !DILocation(line: 317, column: 3, scope: !1210)
!1214 = !DILocation(line: 319, column: 9, scope: !354)
!1215 = !DILocation(line: 319, column: 7, scope: !354)
!1216 = !DILocation(line: 320, column: 22, scope: !354)
!1217 = !DILocation(line: 320, column: 32, scope: !354)
!1218 = !DILocation(line: 320, column: 13, scope: !354)
!1219 = !DILocation(line: 320, column: 36, scope: !354)
!1220 = !DILocation(line: 320, column: 35, scope: !354)
!1221 = !DILocation(line: 320, column: 11, scope: !354)
!1222 = !DILocation(line: 322, column: 14, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !354, file: !3, line: 322, column: 6)
!1224 = !DILocation(line: 322, column: 6, scope: !1223)
!1225 = !DILocation(line: 322, column: 6, scope: !354)
!1226 = !DILocation(line: 323, column: 28, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 322, column: 22)
!1228 = !DILocation(line: 323, column: 8, scope: !1227)
!1229 = !DILocation(line: 323, column: 6, scope: !1227)
!1230 = !DILocation(line: 324, column: 7, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 324, column: 7)
!1232 = !DILocation(line: 324, column: 10, scope: !1231)
!1233 = !DILocation(line: 324, column: 7, scope: !1227)
!1234 = !DILocation(line: 325, column: 51, scope: !1231)
!1235 = !DILocation(line: 325, column: 4, scope: !1231)
!1236 = !DILocation(line: 326, column: 2, scope: !1227)
!1237 = !DILocation(line: 328, column: 20, scope: !354)
!1238 = !{!664, !651, i64 8}
!1239 = !DILocation(line: 328, column: 25, scope: !354)
!1240 = !DILocation(line: 328, column: 2, scope: !354)
!1241 = !DILocation(line: 331, column: 6, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !354, file: !3, line: 331, column: 6)
!1243 = !DILocation(line: 331, column: 9, scope: !1242)
!1244 = !DILocation(line: 331, column: 6, scope: !354)
!1245 = !DILocation(line: 332, column: 9, scope: !1242)
!1246 = !DILocation(line: 332, column: 3, scope: !1242)
!1247 = !DILocation(line: 334, column: 2, scope: !354)
!1248 = !DILocation(line: 335, column: 2, scope: !354)
!1249 = !DILocation(line: 337, column: 18, scope: !354)
!1250 = !DILocation(line: 337, column: 25, scope: !354)
!1251 = !DILocation(line: 337, column: 2, scope: !354)
!1252 = !DILocation(line: 337, column: 13, scope: !354)
!1253 = !DILocation(line: 337, column: 16, scope: !354)
!1254 = !{!1255, !651, i64 0}
!1255 = !{!"pollfd", !651, i64 0, !689, i64 4, !689, i64 6}
!1256 = !DILocation(line: 338, column: 2, scope: !354)
!1257 = !DILocation(line: 338, column: 13, scope: !354)
!1258 = !DILocation(line: 338, column: 20, scope: !354)
!1259 = !{!1255, !689, i64 4}
!1260 = !DILocation(line: 340, column: 65, scope: !354)
!1261 = !DILocation(line: 340, column: 78, scope: !354)
!1262 = !{!664, !651, i64 16}
!1263 = !DILocation(line: 340, column: 2, scope: !354)
!1264 = !DILocation(line: 342, column: 6, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !354, file: !3, line: 342, column: 6)
!1266 = !DILocation(line: 342, column: 19, scope: !1265)
!1267 = !DILocation(line: 342, column: 6, scope: !354)
!1268 = !DILocation(line: 343, column: 3, scope: !1265)
!1269 = !DILocation(line: 345, column: 2, scope: !354)
!1270 = !DILocation(line: 347, column: 16, scope: !354)
!1271 = !DILocation(line: 347, column: 2, scope: !354)
!1272 = !DILocation(line: 351, column: 2, scope: !354)
!1273 = !DILocation(line: 352, column: 14, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 351, column: 10)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 351, column: 2)
!1276 = distinct !DILexicalBlock(scope: !354, file: !3, line: 351, column: 2)
!1277 = !DILocation(line: 352, column: 9, scope: !1274)
!1278 = !DILocation(line: 352, column: 7, scope: !1274)
!1279 = !DILocation(line: 353, column: 7, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 353, column: 7)
!1281 = !DILocation(line: 353, column: 11, scope: !1280)
!1282 = !DILocation(line: 353, column: 15, scope: !1280)
!1283 = !DILocation(line: 353, column: 18, scope: !1280)
!1284 = !DILocation(line: 353, column: 24, scope: !1280)
!1285 = !DILocation(line: 353, column: 7, scope: !1274)
!1286 = !DILocation(line: 354, column: 4, scope: !1280)
!1287 = !DILocation(line: 355, column: 13, scope: !1274)
!1288 = !DILocation(line: 356, column: 21, scope: !1274)
!1289 = !DILocation(line: 356, column: 3, scope: !1274)
!1290 = !DILocation(line: 351, column: 2, scope: !1275)
!1291 = distinct !{!1291, !1292, !1293}
!1292 = !DILocation(line: 351, column: 2, scope: !1276)
!1293 = !DILocation(line: 357, column: 2, scope: !1276)
!1294 = !DILocation(line: 358, column: 1, scope: !354)
!1295 = !DILocation(line: 359, column: 7, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !354, file: !3, line: 359, column: 2)
!1297 = !DILocation(line: 359, column: 6, scope: !1296)
!1298 = !DILocation(line: 359, column: 11, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 359, column: 2)
!1300 = !DILocation(line: 359, column: 15, scope: !1299)
!1301 = !DILocation(line: 359, column: 13, scope: !1299)
!1302 = !DILocation(line: 359, column: 2, scope: !1296)
!1303 = !DILocation(line: 360, column: 9, scope: !1299)
!1304 = !DILocation(line: 360, column: 13, scope: !1299)
!1305 = !DILocation(line: 360, column: 16, scope: !1299)
!1306 = !DILocation(line: 360, column: 3, scope: !1299)
!1307 = !DILocation(line: 359, column: 25, scope: !1299)
!1308 = !DILocation(line: 359, column: 2, scope: !1299)
!1309 = distinct !{!1309, !1302, !1310, !847}
!1310 = !DILocation(line: 360, column: 18, scope: !1296)
!1311 = !DILocation(line: 363, column: 20, scope: !354)
!1312 = !DILocation(line: 363, column: 2, scope: !354)
!1313 = !DILocation(line: 364, column: 9, scope: !354)
!1314 = !DILocation(line: 364, column: 16, scope: !354)
!1315 = !DILocation(line: 364, column: 21, scope: !354)
!1316 = !DILocation(line: 364, column: 2, scope: !354)
!1317 = !DILocation(line: 366, column: 16, scope: !354)
!1318 = !DILocation(line: 366, column: 21, scope: !354)
!1319 = !DILocation(line: 366, column: 2, scope: !354)
!1320 = !DILocation(line: 369, column: 3, scope: !354)
!1321 = !DILocation(line: 370, column: 3, scope: !354)
!1322 = !DILocation(line: 370, column: 15, scope: !354)
!1323 = !DILocation(line: 368, column: 2, scope: !354)
!1324 = !DILocation(line: 372, column: 1, scope: !354)
!1325 = !DILocation(line: 371, column: 2, scope: !354)
!1326 = !DISubprogram(name: "pfm_initialize", scope: !1327, file: !1327, line: 823, type: !1328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1327 = !DIFile(filename: "../include/perfmon/pfmlib.h", directory: "/local-ssd/libpfm4-eymjeez6kzzocrqb5p6y26hpb2o7cj4q-build/aidengro/spack-stage-libpfm4-4.13.0-eymjeez6kzzocrqb5p6y26hpb2o7cj4q/spack-src/perf_examples", checksumkind: CSK_MD5, checksum: "2d38033c4ff3b3331ebd0e551ec2d3c7")
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!1330}
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "pfm_err_t", file: !1327, line: 720, baseType: !288)
!1331 = !DISubprogram(name: "sysconf", scope: !1332, file: !1332, line: 640, type: !1333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1332 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!427, !288}
!1335 = !DISubprogram(name: "close", scope: !1332, file: !1332, line: 358, type: !1336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!288, !288}
!1338 = !DISubprogram(name: "signal", scope: !1339, file: !1339, line: 88, type: !1340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1339 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!1342, !288, !1342}
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1339, line: 72, baseType: !1343)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !288}
!1346 = distinct !DISubprogram(name: "handler", scope: !3, file: !3, line: 302, type: !1344, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1347)
!1347 = !{!1348}
!1348 = !DILocalVariable(name: "n", arg: 1, scope: !1346, file: !3, line: 302, type: !288)
!1349 = !DILocation(line: 302, column: 25, scope: !1346)
!1350 = !DILocation(line: 304, column: 2, scope: !1346)
!1351 = !DISubprogram(name: "_setjmp", scope: !418, file: !418, line: 45, type: !1352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!288, !1354}
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!1355 = distinct !DISubprogram(name: "start_cpu", scope: !3, file: !3, line: 220, type: !1356, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1358)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{null}
!1358 = !{!1359}
!1359 = !DILocalVariable(name: "ret", scope: !1355, file: !3, line: 222, type: !288)
!1360 = !DILocation(line: 222, column: 2, scope: !1355)
!1361 = !DILocation(line: 222, column: 6, scope: !1355)
!1362 = !DILocation(line: 224, column: 14, scope: !1355)
!1363 = !DILocation(line: 224, column: 21, scope: !1355)
!1364 = !DILocation(line: 224, column: 8, scope: !1355)
!1365 = !DILocation(line: 224, column: 6, scope: !1355)
!1366 = !DILocation(line: 225, column: 6, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 225, column: 6)
!1368 = !DILocation(line: 225, column: 6, scope: !1355)
!1369 = !DILocation(line: 226, column: 3, scope: !1367)
!1370 = !DILocation(line: 227, column: 1, scope: !1355)
!1371 = !DISubprogram(name: "alarm", scope: !1332, file: !1332, line: 452, type: !1372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!7, !7}
!1374 = !DISubprogram(name: "poll", scope: !362, file: !362, line: 54, type: !1375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!288, !1377, !1378, !288}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "nfds_t", file: !362, line: 33, baseType: !378)
!1379 = !DISubprogram(name: "__errno_location", scope: !1380, file: !1380, line: 37, type: !1381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1380 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!612}
!1383 = distinct !DISubprogram(name: "process_smpl_buf", scope: !3, file: !3, line: 80, type: !1384, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1386)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{null, !446}
!1386 = !{!1387, !1388, !1394}
!1387 = !DILocalVariable(name: "hw", arg: 1, scope: !1383, file: !3, line: 80, type: !446)
!1388 = !DILocalVariable(name: "ehdr", scope: !1383, file: !3, line: 82, type: !1389)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_header", file: !6, line: 448, size: 64, elements: !1390)
!1390 = !{!1391, !1392, !1393}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1389, file: !6, line: 449, baseType: !455, size: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !1389, file: !6, line: 450, baseType: !530, size: 16, offset: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1389, file: !6, line: 451, baseType: !530, size: 16, offset: 48)
!1394 = !DILocalVariable(name: "ret", scope: !1383, file: !3, line: 83, type: !288)
!1395 = !DILocation(line: 80, column: 37, scope: !1383)
!1396 = !DILocation(line: 82, column: 2, scope: !1383)
!1397 = !DILocation(line: 82, column: 27, scope: !1383)
!1398 = !DILocation(line: 83, column: 2, scope: !1383)
!1399 = !DILocation(line: 83, column: 6, scope: !1383)
!1400 = !DILocation(line: 85, column: 2, scope: !1383)
!1401 = !DILocation(line: 86, column: 26, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 85, column: 10)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 85, column: 2)
!1404 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 85, column: 2)
!1405 = !DILocation(line: 86, column: 9, scope: !1402)
!1406 = !DILocation(line: 86, column: 7, scope: !1402)
!1407 = !DILocation(line: 87, column: 7, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 87, column: 7)
!1409 = !DILocation(line: 87, column: 7, scope: !1402)
!1410 = !DILocation(line: 114, column: 1, scope: !1383)
!1411 = !DILocation(line: 90, column: 15, scope: !1402)
!1412 = !{!1413, !651, i64 0}
!1413 = !{!"perf_event_header", !651, i64 0, !689, i64 4, !689, i64 6}
!1414 = !DILocation(line: 90, column: 3, scope: !1402)
!1415 = !DILocation(line: 92, column: 31, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 90, column: 21)
!1417 = !DILocation(line: 92, column: 36, scope: !1416)
!1418 = !DILocation(line: 92, column: 45, scope: !1416)
!1419 = !DILocation(line: 92, column: 50, scope: !1416)
!1420 = !DILocation(line: 92, column: 48, scope: !1416)
!1421 = !DILocation(line: 92, column: 62, scope: !1416)
!1422 = !DILocation(line: 92, column: 11, scope: !1416)
!1423 = !DILocation(line: 92, column: 9, scope: !1416)
!1424 = !DILocation(line: 93, column: 9, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 93, column: 9)
!1426 = !DILocation(line: 93, column: 9, scope: !1416)
!1427 = !DILocation(line: 94, column: 6, scope: !1425)
!1428 = !DILocation(line: 95, column: 22, scope: !1416)
!1429 = !DILocation(line: 96, column: 5, scope: !1416)
!1430 = !DILocation(line: 98, column: 18, scope: !1416)
!1431 = !DILocation(line: 98, column: 22, scope: !1416)
!1432 = !DILocation(line: 98, column: 5, scope: !1416)
!1433 = !DILocation(line: 99, column: 5, scope: !1416)
!1434 = !DILocation(line: 101, column: 34, scope: !1416)
!1435 = !DILocation(line: 101, column: 38, scope: !1416)
!1436 = !DILocation(line: 101, column: 43, scope: !1416)
!1437 = !DILocation(line: 101, column: 52, scope: !1416)
!1438 = !DILocation(line: 101, column: 21, scope: !1416)
!1439 = !DILocation(line: 101, column: 18, scope: !1416)
!1440 = !DILocation(line: 102, column: 5, scope: !1416)
!1441 = !DILocation(line: 104, column: 21, scope: !1416)
!1442 = !DILocation(line: 104, column: 25, scope: !1416)
!1443 = !DILocation(line: 104, column: 5, scope: !1416)
!1444 = !DILocation(line: 105, column: 5, scope: !1416)
!1445 = !DILocation(line: 107, column: 21, scope: !1416)
!1446 = !DILocation(line: 107, column: 25, scope: !1416)
!1447 = !DILocation(line: 107, column: 5, scope: !1416)
!1448 = !DILocation(line: 108, column: 5, scope: !1416)
!1449 = !DILocation(line: 110, column: 45, scope: !1416)
!1450 = !DILocation(line: 110, column: 5, scope: !1416)
!1451 = !DILocation(line: 111, column: 22, scope: !1416)
!1452 = !DILocation(line: 111, column: 31, scope: !1416)
!1453 = !{!1413, !689, i64 6}
!1454 = !DILocation(line: 111, column: 26, scope: !1416)
!1455 = !DILocation(line: 111, column: 36, scope: !1416)
!1456 = !DILocation(line: 111, column: 5, scope: !1416)
!1457 = !DILocation(line: 112, column: 3, scope: !1416)
!1458 = !DILocation(line: 85, column: 2, scope: !1403)
!1459 = distinct !{!1459, !1460, !1461}
!1460 = !DILocation(line: 85, column: 2, scope: !1404)
!1461 = !DILocation(line: 113, column: 2, scope: !1404)
!1462 = !DISubprogram(name: "munmap", scope: !990, file: !990, line: 76, type: !1463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!288, !287, !546}
!1465 = !DISubprogram(name: "perf_free_fds", scope: !448, file: !448, line: 54, type: !1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{null, !446, !288}
!1468 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 381, type: !1469, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1471)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!288, !288, !289}
!1471 = !{!1472, !1473, !1474}
!1472 = !DILocalVariable(name: "argc", arg: 1, scope: !1468, file: !3, line: 381, type: !288)
!1473 = !DILocalVariable(name: "argv", arg: 2, scope: !1468, file: !3, line: 381, type: !289)
!1474 = !DILocalVariable(name: "c", scope: !1468, file: !3, line: 383, type: !288)
!1475 = !DILocation(line: 381, column: 10, scope: !1468)
!1476 = !DILocation(line: 381, column: 23, scope: !1468)
!1477 = !DILocation(line: 383, column: 2, scope: !1468)
!1478 = !DILocation(line: 383, column: 6, scope: !1468)
!1479 = !DILocation(line: 385, column: 2, scope: !1468)
!1480 = !DILocation(line: 387, column: 14, scope: !1468)
!1481 = !DILocation(line: 388, column: 16, scope: !1468)
!1482 = !DILocation(line: 390, column: 2, scope: !1468)
!1483 = !DILocation(line: 390, column: 24, scope: !1468)
!1484 = !DILocation(line: 390, column: 30, scope: !1468)
!1485 = !DILocation(line: 390, column: 12, scope: !1468)
!1486 = !DILocation(line: 390, column: 11, scope: !1468)
!1487 = !DILocation(line: 390, column: 68, scope: !1468)
!1488 = !DILocation(line: 391, column: 10, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 390, column: 75)
!1490 = !DILocation(line: 391, column: 3, scope: !1489)
!1491 = !DILocation(line: 392, column: 12, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 391, column: 13)
!1493 = distinct !{!1493, !1482, !1494, !847}
!1494 = !DILocation(line: 421, column: 2, scope: !1468)
!1495 = !DILocation(line: 394, column: 17, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 394, column: 9)
!1497 = !DILocation(line: 394, column: 9, scope: !1496)
!1498 = !DILocation(line: 394, column: 9, scope: !1492)
!1499 = !DILocation(line: 395, column: 6, scope: !1496)
!1500 = !DILocation(line: 396, column: 22, scope: !1492)
!1501 = !DILocation(line: 396, column: 20, scope: !1492)
!1502 = !DILocation(line: 397, column: 5, scope: !1492)
!1503 = !DILocation(line: 399, column: 17, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 399, column: 9)
!1505 = !DILocation(line: 399, column: 9, scope: !1504)
!1506 = !DILocation(line: 399, column: 9, scope: !1492)
!1507 = !DILocation(line: 400, column: 6, scope: !1504)
!1508 = !DILocation(line: 401, column: 31, scope: !1492)
!1509 = !DILocation(line: 401, column: 26, scope: !1492)
!1510 = !DILocation(line: 401, column: 24, scope: !1492)
!1511 = !DILocation(line: 402, column: 5, scope: !1492)
!1512 = !DILocation(line: 404, column: 17, scope: !1492)
!1513 = !DILocation(line: 405, column: 5, scope: !1492)
!1514 = !DILocation(line: 407, column: 26, scope: !1492)
!1515 = !DILocation(line: 407, column: 21, scope: !1492)
!1516 = !DILocation(line: 407, column: 19, scope: !1492)
!1517 = !DILocation(line: 408, column: 5, scope: !1492)
!1518 = !DILocation(line: 410, column: 22, scope: !1492)
!1519 = !DILocation(line: 410, column: 20, scope: !1492)
!1520 = !DILocation(line: 411, column: 5, scope: !1492)
!1521 = !DILocation(line: 413, column: 24, scope: !1492)
!1522 = !DILocation(line: 413, column: 19, scope: !1492)
!1523 = !DILocation(line: 413, column: 17, scope: !1492)
!1524 = !DILocation(line: 414, column: 5, scope: !1492)
!1525 = !DILocation(line: 416, column: 5, scope: !1492)
!1526 = !DILocation(line: 417, column: 5, scope: !1492)
!1527 = !DILocation(line: 419, column: 5, scope: !1492)
!1528 = !DILocation(line: 422, column: 15, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 422, column: 6)
!1530 = !DILocation(line: 422, column: 7, scope: !1529)
!1531 = !DILocation(line: 422, column: 6, scope: !1468)
!1532 = !DILocation(line: 423, column: 27, scope: !1529)
!1533 = !DILocation(line: 423, column: 20, scope: !1529)
!1534 = !DILocation(line: 423, column: 18, scope: !1529)
!1535 = !DILocation(line: 423, column: 3, scope: !1529)
!1536 = !DILocation(line: 425, column: 15, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 425, column: 6)
!1538 = !DILocation(line: 425, column: 7, scope: !1537)
!1539 = !DILocation(line: 425, column: 6, scope: !1468)
!1540 = !DILocation(line: 426, column: 22, scope: !1537)
!1541 = !DILocation(line: 426, column: 3, scope: !1537)
!1542 = !DILocation(line: 428, column: 14, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 428, column: 6)
!1544 = !DILocation(line: 428, column: 18, scope: !1543)
!1545 = !DILocation(line: 428, column: 6, scope: !1468)
!1546 = !DILocation(line: 429, column: 17, scope: !1543)
!1547 = !DILocation(line: 429, column: 28, scope: !1543)
!1548 = !DILocation(line: 429, column: 26, scope: !1543)
!1549 = !DILocation(line: 429, column: 15, scope: !1543)
!1550 = !DILocation(line: 429, column: 3, scope: !1543)
!1551 = !DILocation(line: 431, column: 14, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 431, column: 6)
!1553 = !DILocation(line: 431, column: 20, scope: !1552)
!1554 = !DILocation(line: 431, column: 6, scope: !1468)
!1555 = !DILocation(line: 432, column: 17, scope: !1552)
!1556 = !DILocation(line: 432, column: 3, scope: !1552)
!1557 = !DILocation(line: 434, column: 14, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 434, column: 6)
!1559 = !DILocation(line: 434, column: 25, scope: !1558)
!1560 = !DILocation(line: 434, column: 29, scope: !1558)
!1561 = !DILocation(line: 434, column: 42, scope: !1558)
!1562 = !DILocation(line: 434, column: 54, scope: !1558)
!1563 = !DILocation(line: 434, column: 6, scope: !1468)
!1564 = !DILocation(line: 435, column: 3, scope: !1558)
!1565 = !DILocation(line: 437, column: 18, scope: !1468)
!1566 = !DILocation(line: 437, column: 23, scope: !1468)
!1567 = !DILocation(line: 437, column: 22, scope: !1468)
!1568 = !DILocation(line: 437, column: 9, scope: !1468)
!1569 = !DILocation(line: 438, column: 1, scope: !1468)
!1570 = !DILocation(line: 437, column: 2, scope: !1468)
!1571 = !DISubprogram(name: "setlocale", scope: !1572, file: !1572, line: 122, type: !1573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1572 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!290, !288, !608}
!1575 = !DISubprogram(name: "getopt_long", scope: !605, file: !605, line: 66, type: !1576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!288, !288, !1578, !608, !1580, !612}
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !604)
!1582 = distinct !DISubprogram(name: "atoi", scope: !1583, file: !1583, line: 362, type: !1584, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1586)
!1583 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!288, !608}
!1586 = !{!1587}
!1587 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1582, file: !1583, line: 362, type: !608)
!1588 = !DILocation(line: 362, column: 1, scope: !1582)
!1589 = !DILocation(line: 364, column: 24, scope: !1582)
!1590 = !DILocation(line: 364, column: 16, scope: !1582)
!1591 = !DILocation(line: 364, column: 10, scope: !1582)
!1592 = !DILocation(line: 364, column: 3, scope: !1582)
!1593 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 375, type: !1356, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1594 = !DILocation(line: 377, column: 2, scope: !1593)
!1595 = !DILocation(line: 378, column: 1, scope: !1593)
!1596 = !DISubprogram(name: "exit", scope: !1583, file: !1583, line: 624, type: !1344, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1597 = !DISubprogram(name: "strdup", scope: !1598, file: !1598, line: 187, type: !1599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1598 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!290, !608}
!1601 = !DISubprogram(name: "random", scope: !1583, file: !1583, line: 402, type: !1602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!427}
!1604 = !DISubprogram(name: "syscall", scope: !1332, file: !1332, line: 1091, type: !1605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!427, !427, null}
!1607 = !DISubprogram(name: "fopen", scope: !959, file: !959, line: 258, type: !1608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!1061, !962, !962}
!1610 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !959, file: !959, line: 434, type: !1611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!288, !1613, !962, null}
!1613 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1061)
!1614 = !DISubprogram(name: "strcmp", scope: !1598, file: !1598, line: 156, type: !1615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!288, !608, !608}
!1617 = !DISubprogram(name: "strtok_r", scope: !1598, file: !1598, line: 366, type: !1618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!290, !1192, !962, !1620}
!1620 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !289)
!1621 = !DISubprogram(name: "fclose", scope: !959, file: !959, line: 178, type: !1622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!288, !1061}
!1624 = !DISubprogram(name: "strlen", scope: !1598, file: !1598, line: 407, type: !1625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!378, !608}
!1627 = !DISubprogram(name: "strcpy", scope: !1598, file: !1598, line: 141, type: !1628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!290, !1192, !962}
!1630 = !DISubprogram(name: "longjmp", scope: !418, file: !418, line: 54, type: !1631, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{null, !1354, !288}
!1633 = !DISubprogram(name: "perf_read_buffer", scope: !448, file: !448, line: 53, type: !1634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!288, !446, !287, !546}
!1636 = !DISubprogram(name: "perf_display_sample", scope: !448, file: !448, line: 159, type: !1637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!288, !446, !288, !288, !1639, !1061}
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1640 = !DISubprogram(name: "display_exit", scope: !448, file: !448, line: 161, type: !1641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !446, !1061}
!1643 = !DISubprogram(name: "display_lost", scope: !448, file: !448, line: 160, type: !1644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!374, !446, !446, !288, !1061}
!1646 = !DISubprogram(name: "display_freq", scope: !448, file: !448, line: 162, type: !1647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{null, !288, !446, !1061}
!1649 = !DISubprogram(name: "perf_skip_buffer", scope: !448, file: !448, line: 55, type: !1650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{null, !446, !546}
!1652 = !DISubprogram(name: "strtol", scope: !1583, file: !1583, line: 177, type: !1653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!427, !962, !1620, !288}

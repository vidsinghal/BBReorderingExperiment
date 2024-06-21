; ModuleID = 'samples/511.bc'
source_filename = "nauty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispatchvec = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tcnode_struct = type { ptr, ptr }
%struct.optionstruct = type { i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr }
%struct.statsblk = type { double, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i64, i32 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [32 x i8] c">E nauty: null dispatch vector\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Maybe you need to recompile\0A\00", align 1
@dispatch = internal global %struct.dispatchvec zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c">E bad dispatch vector\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"nauty: need m <= %d, but m=%d\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"nauty: need n <= min(%d,%d*m), but n=%d\0A\0A\00", align 1
@m = internal global i32 0, align 4
@n = internal global i32 0, align 4
@defltwork_sz = internal global i64 0, align 8
@defltwork = internal global ptr null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"nauty\00", align 1
@fixedpts_sz = internal global i64 0, align 8
@fixedpts = internal global ptr null, align 8
@active_sz = internal global i64 0, align 8
@active = internal global ptr null, align 8
@workperm_sz = internal global i64 0, align 8
@workperm = internal global ptr null, align 8
@firstlab_sz = internal global i64 0, align 8
@firstlab = internal global ptr null, align 8
@canonlab_sz = internal global i64 0, align 8
@canonlab = internal global ptr null, align 8
@firstcode_sz = internal global i64 0, align 8
@firstcode = internal global ptr null, align 8
@canoncode_sz = internal global i64 0, align 8
@canoncode = internal global ptr null, align 8
@firsttc_sz = internal global i64 0, align 8
@firsttc = internal global ptr null, align 8
@alloc_m = internal global i32 0, align 4
@tcnode0 = internal global %struct.tcnode_struct zeroinitializer, align 8
@orbits = internal global ptr null, align 8
@stats = internal global ptr null, align 8
@getcanon = internal global i32 0, align 4
@digraph = internal global i32 0, align 4
@writeautoms = internal global i32 0, align 4
@domarkers = internal global i32 0, align 4
@cartesian = internal global i32 0, align 4
@doschreier = internal global i32 0, align 4
@linelength = internal global i32 0, align 4
@tc_level = internal global i32 0, align 4
@stdout = external global ptr, align 8
@outfile = internal global ptr null, align 8
@usernodeproc = internal global ptr null, align 8
@userautomproc = internal global ptr null, align 8
@userlevelproc = internal global ptr null, align 8
@usercanonproc = internal global ptr null, align 8
@invarproc = internal global ptr null, align 8
@mininvarlevel = internal global i32 0, align 4
@maxinvarlevel = internal global i32 0, align 4
@invararg = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"nauty: canong=NULL but options.getcanon=TRUE\0A\0A\00", align 1
@bit = internal constant [32 x i32] [i32 -2147483648, i32 1073741824, i32 536870912, i32 268435456, i32 134217728, i32 67108864, i32 33554432, i32 16777216, i32 8388608, i32 4194304, i32 2097152, i32 1048576, i32 524288, i32 262144, i32 131072, i32 65536, i32 32768, i32 16384, i32 8192, i32 4096, i32 2048, i32 1024, i32 512, i32 256, i32 128, i32 64, i32 32, i32 16, i32 8, i32 4, i32 2, i32 1], align 16
@canong = internal global ptr null, align 8
@g = internal global ptr null, align 8
@gp = internal global ptr null, align 8
@gens = internal global ptr null, align 8
@noncheaplevel = internal global i32 0, align 4
@eqlev_canon = internal global i32 0, align 4
@workspace = internal global ptr null, align 8
@worktop = internal global ptr null, align 8
@fmptr = internal global ptr null, align 8
@needshortprune = internal global i32 0, align 4
@invarsuclevel = internal global i32 0, align 4
@invsuccesses = internal global i64 0, align 8
@invapplics = internal global i64 0, align 8
@samerows = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Error: WORDSIZE mismatch in nauty.c\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Error: nauty.c version mismatch\0A\00", align 1
@stabvertex = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"tcell\00", align 1
@cosetindex = internal global i32 0, align 4
@gca_first = internal global i32 0, align 4
@allsamelevel = internal global i32 0, align 4
@eqlev_first = internal global i32 0, align 4
@gca_canon = internal global i32 0, align 4
@canonlevel = internal global i32 0, align 4
@comp_canon = internal global i32 0, align 4
@nauty_kill_request = external global i32, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"level \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c":  \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c" cell\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"s; \00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c" orbit\00", align 1
@labelorg = external global i32, align 4
@.str.16 = private unnamed_addr constant [15 x i8] c" fixed; index \00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @nauty(ptr noundef %g_arg, ptr noundef %lab, ptr noundef %ptn, ptr noundef %active_arg, ptr noundef %orbits_arg, ptr noundef %options, ptr noundef %stats_arg, ptr noundef %ws_arg, i32 noundef %worksize, i32 noundef %m_arg, i32 noundef %n_arg, ptr noundef %canong_arg) #0 {
entry:
  %g_arg.addr = alloca ptr, align 8
  %lab.addr = alloca ptr, align 8
  %ptn.addr = alloca ptr, align 8
  %active_arg.addr = alloca ptr, align 8
  %orbits_arg.addr = alloca ptr, align 8
  %options.addr = alloca ptr, align 8
  %stats_arg.addr = alloca ptr, align 8
  %ws_arg.addr = alloca ptr, align 8
  %worksize.addr = alloca i32, align 4
  %m_arg.addr = alloca i32, align 4
  %n_arg.addr = alloca i32, align 4
  %canong_arg.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %numcells = alloca i32, align 4
  %retval = alloca i32, align 4
  %initstatus = alloca i32, align 4
  %tcp = alloca ptr, align 8
  %tcq = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %es = alloca ptr, align 8
  %es282 = alloca ptr, align 8
  %es360 = alloca ptr, align 8
  store ptr %g_arg, ptr %g_arg.addr, align 8, !tbaa !4
  store ptr %lab, ptr %lab.addr, align 8, !tbaa !4
  store ptr %ptn, ptr %ptn.addr, align 8, !tbaa !4
  store ptr %active_arg, ptr %active_arg.addr, align 8, !tbaa !4
  store ptr %orbits_arg, ptr %orbits_arg.addr, align 8, !tbaa !4
  store ptr %options, ptr %options.addr, align 8, !tbaa !4
  store ptr %stats_arg, ptr %stats_arg.addr, align 8, !tbaa !4
  store ptr %ws_arg, ptr %ws_arg.addr, align 8, !tbaa !4
  store i32 %worksize, ptr %worksize.addr, align 4, !tbaa !8
  store i32 %m_arg, ptr %m_arg.addr, align 4, !tbaa !8
  store i32 %n_arg, ptr %n_arg.addr, align 4, !tbaa !8
  store ptr %canong_arg, ptr %canong_arg.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %numcells) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %initstatus) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcq) #7
  %0 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %dispatch = getelementptr inbounds %struct.optionstruct, ptr %0, i32 0, i32 18
  %1 = load ptr, ptr %dispatch, align 8, !tbaa !10
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.1)
  call void @exit(i32 noundef 1) #8
  unreachable

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %dispatch2 = getelementptr inbounds %struct.optionstruct, ptr %4, i32 0, i32 18
  %5 = load ptr, ptr %dispatch2, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 @dispatch, ptr align 8 %5, i64 88, i1 false), !tbaa.struct !12
  br label %if.end

if.end:                                           ; preds = %if.else
  %6 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %userrefproc = getelementptr inbounds %struct.optionstruct, ptr %6, i32 0, i32 8
  %7 = load ptr, ptr %userrefproc, align 8, !tbaa !13
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %userrefproc4 = getelementptr inbounds %struct.optionstruct, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %userrefproc4, align 8, !tbaa !13
  store ptr %9, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 3), align 8, !tbaa !14
  br label %if.end10

if.else5:                                         ; preds = %if.end
  %10 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 4), align 8, !tbaa !16
  %tobool6 = icmp ne ptr %10, null
  br i1 %tobool6, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.else5
  %11 = load i32, ptr %m_arg.addr, align 4, !tbaa !8
  %cmp7 = icmp eq i32 %11, 1
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 4), align 8, !tbaa !16
  store ptr %12, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 3), align 8, !tbaa !14
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true, %if.else5
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then3
  %13 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 3), align 8, !tbaa !14
  %cmp11 = icmp eq ptr %13, null
  br i1 %cmp11, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %14 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 2), align 8, !tbaa !17
  %cmp12 = icmp eq ptr %14, null
  br i1 %cmp12, label %if.then17, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %15 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 6), align 8, !tbaa !18
  %cmp14 = icmp eq ptr %15, null
  br i1 %cmp14, label %if.then17, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false13
  %16 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 5), align 8, !tbaa !19
  %cmp16 = icmp eq ptr %16, null
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %lor.lhs.false15, %lor.lhs.false13, %lor.lhs.false, %if.end10
  %17 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.2)
  call void @exit(i32 noundef 1) #8
  unreachable

if.end19:                                         ; preds = %lor.lhs.false15
  %18 = load i32, ptr %m_arg.addr, align 4, !tbaa !8
  %cmp20 = icmp sgt i32 %18, 62500001
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end19
  %19 = load ptr, ptr %stats_arg.addr, align 8, !tbaa !4
  %errstatus = getelementptr inbounds %struct.statsblk, ptr %19, i32 0, i32 4
  store i32 2, ptr %errstatus, align 4, !tbaa !20
  %20 = load ptr, ptr @stderr, align 8, !tbaa !4
  %21 = load i32, ptr %m_arg.addr, align 4, !tbaa !8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.3, i32 noundef 62500001, i32 noundef %21)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %22 = load i32, ptr %n_arg.addr, align 4, !tbaa !8
  %cmp24 = icmp sgt i32 %22, 2000000000
  br i1 %cmp24, label %if.then27, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.end23
  %23 = load i32, ptr %n_arg.addr, align 4, !tbaa !8
  %24 = load i32, ptr %m_arg.addr, align 4, !tbaa !8
  %mul = mul nsw i32 32, %24
  %cmp26 = icmp sgt i32 %23, %mul
  br i1 %cmp26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %lor.lhs.false25, %if.end23
  %25 = load ptr, ptr %stats_arg.addr, align 8, !tbaa !4
  %errstatus28 = getelementptr inbounds %struct.statsblk, ptr %25, i32 0, i32 4
  store i32 1, ptr %errstatus28, align 4, !tbaa !20
  %26 = load ptr, ptr @stderr, align 8, !tbaa !4
  %27 = load i32, ptr %n_arg.addr, align 4, !tbaa !8
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.4, i32 noundef 2000000000, i32 noundef 32, i32 noundef %27)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %lor.lhs.false25
  %28 = load i32, ptr %n_arg.addr, align 4, !tbaa !8
  %cmp31 = icmp eq i32 %28, 0
  br i1 %cmp31, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.end30
  %29 = load ptr, ptr %stats_arg.addr, align 8, !tbaa !4
  %grpsize1 = getelementptr inbounds %struct.statsblk, ptr %29, i32 0, i32 0
  store double 1.000000e+00, ptr %grpsize1, align 8, !tbaa !24
  %30 = load ptr, ptr %stats_arg.addr, align 8, !tbaa !4
  %grpsize2 = getelementptr inbounds %struct.statsblk, ptr %30, i32 0, i32 1
  store i32 0, ptr %grpsize2, align 8, !tbaa !25
  %31 = load ptr, ptr %stats_arg.addr, align 8, !tbaa !4
  %numorbits = getelementptr inbounds %struct.statsblk, ptr %31, i32 0, i32 2
  store i32 0, ptr %numorbits, align 4, !tbaa !26
  %32 = load ptr, ptr %stats_arg.addr, align 8, !tbaa !4
  %numgenerators = getelementptr inbounds %struct.statsblk, ptr %32, i32 0, i32 3
  store i32 0, ptr %numgenerators, align 8, !tbaa !27
  %33 = load ptr, ptr %stats_arg.addr, align 8, !tbaa !4
  %errstatus33 = getelementptr inbounds %struct.statsblk, ptr %33, i32 0, i32 4
  store i32 0, ptr %errstatus33, align 4, !tbaa !20
  %34 = load ptr, ptr %stats_arg.addr, align 8, !tbaa !4
  %numnodes = getelementptr inbounds %struct.statsblk, ptr %34, i32 0, i32 5
  store i64 1, ptr %numnodes, align 8, !tbaa !28
  %35 = load ptr, ptr %stats_arg.addr, align 8, !tbaa !4
  %numbadleaves = getelementptr inbounds %struct.statsblk, ptr %35, i32 0, i32 6
  store i64 0, ptr %numbadleaves, align 8, !tbaa !29
  %36 = load ptr, ptr %stats_arg.addr, align 8, !tbaa !4
  %maxlevel = getelementptr inbounds %struct.statsblk, ptr %36, i32 0, i32 7
  store i32 1, ptr %maxlevel, align 8, !tbaa !30
  %37 = load ptr, ptr %stats_arg.addr, align 8, !tbaa !4
  %tctotal = getelementptr inbounds %struct.statsblk, ptr %37, i32 0, i32 8
  store i64 0, ptr %tctotal, align 8, !tbaa !31
  %38 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %getcanon = getelementptr inbounds %struct.optionstruct, ptr %38, i32 0, i32 0
  %39 = load i32, ptr %getcanon, align 8, !tbaa !32
  %cmp34 = icmp ne i32 %39, 0
  %conv = zext i1 %cmp34 to i32
  %conv35 = sext i32 %conv to i64
  %40 = load ptr, ptr %stats_arg.addr, align 8, !tbaa !4
  %canupdates = getelementptr inbounds %struct.statsblk, ptr %40, i32 0, i32 9
  store i64 %conv35, ptr %canupdates, align 8, !tbaa !33
  %41 = load ptr, ptr %stats_arg.addr, align 8, !tbaa !4
  %invapplics = getelementptr inbounds %struct.statsblk, ptr %41, i32 0, i32 10
  store i64 0, ptr %invapplics, align 8, !tbaa !34
  %42 = load ptr, ptr %stats_arg.addr, align 8, !tbaa !4
  %invsuccesses = getelementptr inbounds %struct.statsblk, ptr %42, i32 0, i32 11
  store i64 0, ptr %invsuccesses, align 8, !tbaa !35
  %43 = load ptr, ptr %stats_arg.addr, align 8, !tbaa !4
  %invarsuclevel = getelementptr inbounds %struct.statsblk, ptr %43, i32 0, i32 12
  store i32 0, ptr %invarsuclevel, align 8, !tbaa !36
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %44 = load i32, ptr %m_arg.addr, align 4, !tbaa !8
  store i32 %44, ptr @m, align 4, !tbaa !8
  %45 = load i32, ptr %n_arg.addr, align 4, !tbaa !8
  store i32 %45, ptr @n, align 4, !tbaa !8
  %46 = load i32, ptr @m, align 4, !tbaa !8
  %47 = load i32, ptr @n, align 4, !tbaa !8
  call void @nautil_check(i32 noundef 32, i32 noundef %46, i32 noundef %47, i32 noundef 26040)
  %48 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 8), align 8, !tbaa !37
  %cmp37 = icmp ne ptr %48, null
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36
  %49 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 8), align 8, !tbaa !37
  %50 = load i32, ptr @m, align 4, !tbaa !8
  %51 = load i32, ptr @n, align 4, !tbaa !8
  call void %49(i32 noundef 32, i32 noundef %50, i32 noundef %51, i32 noundef 26040)
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end36
  %52 = load i32, ptr @m, align 4, !tbaa !8
  %mul41 = mul nsw i32 2, %52
  %conv42 = sext i32 %mul41 to i64
  %53 = load i64, ptr @defltwork_sz, align 8, !tbaa !38
  %cmp43 = icmp ugt i64 %conv42, %53
  br i1 %cmp43, label %if.then45, label %if.end59

if.then45:                                        ; preds = %if.end40
  %54 = load i64, ptr @defltwork_sz, align 8, !tbaa !38
  %tobool46 = icmp ne i64 %54, 0
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.then45
  %55 = load ptr, ptr @defltwork, align 8, !tbaa !4
  call void @free(ptr noundef %55) #7
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.then45
  %56 = load i32, ptr @m, align 4, !tbaa !8
  %mul49 = mul nsw i32 2, %56
  %conv50 = sext i32 %mul49 to i64
  store i64 %conv50, ptr @defltwork_sz, align 8, !tbaa !38
  %57 = load i32, ptr @m, align 4, !tbaa !8
  %mul51 = mul nsw i32 2, %57
  %conv52 = sext i32 %mul51 to i64
  %mul53 = mul i64 %conv52, 4
  %call54 = call noalias ptr @malloc(i64 noundef %mul53) #9
  store ptr %call54, ptr @defltwork, align 8, !tbaa !4
  %cmp55 = icmp eq ptr %call54, null
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end48
  call void @alloc_error(ptr noundef @.str.5)
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end48
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end40
  %58 = load i32, ptr @m, align 4, !tbaa !8
  %conv60 = sext i32 %58 to i64
  %59 = load i64, ptr @fixedpts_sz, align 8, !tbaa !38
  %cmp61 = icmp ugt i64 %conv60, %59
  br i1 %cmp61, label %if.then63, label %if.end75

if.then63:                                        ; preds = %if.end59
  %60 = load i64, ptr @fixedpts_sz, align 8, !tbaa !38
  %tobool64 = icmp ne i64 %60, 0
  br i1 %tobool64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.then63
  %61 = load ptr, ptr @fixedpts, align 8, !tbaa !4
  call void @free(ptr noundef %61) #7
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.then63
  %62 = load i32, ptr @m, align 4, !tbaa !8
  %conv67 = sext i32 %62 to i64
  store i64 %conv67, ptr @fixedpts_sz, align 8, !tbaa !38
  %63 = load i32, ptr @m, align 4, !tbaa !8
  %conv68 = sext i32 %63 to i64
  %mul69 = mul i64 %conv68, 4
  %call70 = call noalias ptr @malloc(i64 noundef %mul69) #9
  store ptr %call70, ptr @fixedpts, align 8, !tbaa !4
  %cmp71 = icmp eq ptr %call70, null
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end66
  call void @alloc_error(ptr noundef @.str.5)
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end66
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end59
  %64 = load i32, ptr @m, align 4, !tbaa !8
  %conv76 = sext i32 %64 to i64
  %65 = load i64, ptr @active_sz, align 8, !tbaa !38
  %cmp77 = icmp ugt i64 %conv76, %65
  br i1 %cmp77, label %if.then79, label %if.end91

if.then79:                                        ; preds = %if.end75
  %66 = load i64, ptr @active_sz, align 8, !tbaa !38
  %tobool80 = icmp ne i64 %66, 0
  br i1 %tobool80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.then79
  %67 = load ptr, ptr @active, align 8, !tbaa !4
  call void @free(ptr noundef %67) #7
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.then79
  %68 = load i32, ptr @m, align 4, !tbaa !8
  %conv83 = sext i32 %68 to i64
  store i64 %conv83, ptr @active_sz, align 8, !tbaa !38
  %69 = load i32, ptr @m, align 4, !tbaa !8
  %conv84 = sext i32 %69 to i64
  %mul85 = mul i64 %conv84, 4
  %call86 = call noalias ptr @malloc(i64 noundef %mul85) #9
  store ptr %call86, ptr @active, align 8, !tbaa !4
  %cmp87 = icmp eq ptr %call86, null
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.end82
  call void @alloc_error(ptr noundef @.str.5)
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.end82
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.end75
  %70 = load i32, ptr @n, align 4, !tbaa !8
  %conv92 = sext i32 %70 to i64
  %71 = load i64, ptr @workperm_sz, align 8, !tbaa !38
  %cmp93 = icmp ugt i64 %conv92, %71
  br i1 %cmp93, label %if.then95, label %if.end107

if.then95:                                        ; preds = %if.end91
  %72 = load i64, ptr @workperm_sz, align 8, !tbaa !38
  %tobool96 = icmp ne i64 %72, 0
  br i1 %tobool96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.then95
  %73 = load ptr, ptr @workperm, align 8, !tbaa !4
  call void @free(ptr noundef %73) #7
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.then95
  %74 = load i32, ptr @n, align 4, !tbaa !8
  %conv99 = sext i32 %74 to i64
  store i64 %conv99, ptr @workperm_sz, align 8, !tbaa !38
  %75 = load i32, ptr @n, align 4, !tbaa !8
  %conv100 = sext i32 %75 to i64
  %mul101 = mul i64 %conv100, 4
  %call102 = call noalias ptr @malloc(i64 noundef %mul101) #9
  store ptr %call102, ptr @workperm, align 8, !tbaa !4
  %cmp103 = icmp eq ptr %call102, null
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end98
  call void @alloc_error(ptr noundef @.str.5)
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %if.end98
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.end91
  %76 = load i32, ptr @n, align 4, !tbaa !8
  %conv108 = sext i32 %76 to i64
  %77 = load i64, ptr @firstlab_sz, align 8, !tbaa !38
  %cmp109 = icmp ugt i64 %conv108, %77
  br i1 %cmp109, label %if.then111, label %if.end123

if.then111:                                       ; preds = %if.end107
  %78 = load i64, ptr @firstlab_sz, align 8, !tbaa !38
  %tobool112 = icmp ne i64 %78, 0
  br i1 %tobool112, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.then111
  %79 = load ptr, ptr @firstlab, align 8, !tbaa !4
  call void @free(ptr noundef %79) #7
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %if.then111
  %80 = load i32, ptr @n, align 4, !tbaa !8
  %conv115 = sext i32 %80 to i64
  store i64 %conv115, ptr @firstlab_sz, align 8, !tbaa !38
  %81 = load i32, ptr @n, align 4, !tbaa !8
  %conv116 = sext i32 %81 to i64
  %mul117 = mul i64 %conv116, 4
  %call118 = call noalias ptr @malloc(i64 noundef %mul117) #9
  store ptr %call118, ptr @firstlab, align 8, !tbaa !4
  %cmp119 = icmp eq ptr %call118, null
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %if.end114
  call void @alloc_error(ptr noundef @.str.5)
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %if.end114
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.end107
  %82 = load i32, ptr @n, align 4, !tbaa !8
  %conv124 = sext i32 %82 to i64
  %83 = load i64, ptr @canonlab_sz, align 8, !tbaa !38
  %cmp125 = icmp ugt i64 %conv124, %83
  br i1 %cmp125, label %if.then127, label %if.end139

if.then127:                                       ; preds = %if.end123
  %84 = load i64, ptr @canonlab_sz, align 8, !tbaa !38
  %tobool128 = icmp ne i64 %84, 0
  br i1 %tobool128, label %if.then129, label %if.end130

if.then129:                                       ; preds = %if.then127
  %85 = load ptr, ptr @canonlab, align 8, !tbaa !4
  call void @free(ptr noundef %85) #7
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %if.then127
  %86 = load i32, ptr @n, align 4, !tbaa !8
  %conv131 = sext i32 %86 to i64
  store i64 %conv131, ptr @canonlab_sz, align 8, !tbaa !38
  %87 = load i32, ptr @n, align 4, !tbaa !8
  %conv132 = sext i32 %87 to i64
  %mul133 = mul i64 %conv132, 4
  %call134 = call noalias ptr @malloc(i64 noundef %mul133) #9
  store ptr %call134, ptr @canonlab, align 8, !tbaa !4
  %cmp135 = icmp eq ptr %call134, null
  br i1 %cmp135, label %if.then137, label %if.end138

if.then137:                                       ; preds = %if.end130
  call void @alloc_error(ptr noundef @.str.5)
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %if.end130
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.end123
  %88 = load i32, ptr @n, align 4, !tbaa !8
  %add = add nsw i32 %88, 2
  %conv140 = sext i32 %add to i64
  %89 = load i64, ptr @firstcode_sz, align 8, !tbaa !38
  %cmp141 = icmp ugt i64 %conv140, %89
  br i1 %cmp141, label %if.then143, label %if.end157

if.then143:                                       ; preds = %if.end139
  %90 = load i64, ptr @firstcode_sz, align 8, !tbaa !38
  %tobool144 = icmp ne i64 %90, 0
  br i1 %tobool144, label %if.then145, label %if.end146

if.then145:                                       ; preds = %if.then143
  %91 = load ptr, ptr @firstcode, align 8, !tbaa !4
  call void @free(ptr noundef %91) #7
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %if.then143
  %92 = load i32, ptr @n, align 4, !tbaa !8
  %add147 = add nsw i32 %92, 2
  %conv148 = sext i32 %add147 to i64
  store i64 %conv148, ptr @firstcode_sz, align 8, !tbaa !38
  %93 = load i32, ptr @n, align 4, !tbaa !8
  %add149 = add nsw i32 %93, 2
  %conv150 = sext i32 %add149 to i64
  %mul151 = mul i64 %conv150, 2
  %call152 = call noalias ptr @malloc(i64 noundef %mul151) #9
  store ptr %call152, ptr @firstcode, align 8, !tbaa !4
  %cmp153 = icmp eq ptr %call152, null
  br i1 %cmp153, label %if.then155, label %if.end156

if.then155:                                       ; preds = %if.end146
  call void @alloc_error(ptr noundef @.str.5)
  br label %if.end156

if.end156:                                        ; preds = %if.then155, %if.end146
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.end139
  %94 = load i32, ptr @n, align 4, !tbaa !8
  %add158 = add nsw i32 %94, 2
  %conv159 = sext i32 %add158 to i64
  %95 = load i64, ptr @canoncode_sz, align 8, !tbaa !38
  %cmp160 = icmp ugt i64 %conv159, %95
  br i1 %cmp160, label %if.then162, label %if.end176

if.then162:                                       ; preds = %if.end157
  %96 = load i64, ptr @canoncode_sz, align 8, !tbaa !38
  %tobool163 = icmp ne i64 %96, 0
  br i1 %tobool163, label %if.then164, label %if.end165

if.then164:                                       ; preds = %if.then162
  %97 = load ptr, ptr @canoncode, align 8, !tbaa !4
  call void @free(ptr noundef %97) #7
  br label %if.end165

if.end165:                                        ; preds = %if.then164, %if.then162
  %98 = load i32, ptr @n, align 4, !tbaa !8
  %add166 = add nsw i32 %98, 2
  %conv167 = sext i32 %add166 to i64
  store i64 %conv167, ptr @canoncode_sz, align 8, !tbaa !38
  %99 = load i32, ptr @n, align 4, !tbaa !8
  %add168 = add nsw i32 %99, 2
  %conv169 = sext i32 %add168 to i64
  %mul170 = mul i64 %conv169, 2
  %call171 = call noalias ptr @malloc(i64 noundef %mul170) #9
  store ptr %call171, ptr @canoncode, align 8, !tbaa !4
  %cmp172 = icmp eq ptr %call171, null
  br i1 %cmp172, label %if.then174, label %if.end175

if.then174:                                       ; preds = %if.end165
  call void @alloc_error(ptr noundef @.str.5)
  br label %if.end175

if.end175:                                        ; preds = %if.then174, %if.end165
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %if.end157
  %100 = load i32, ptr @n, align 4, !tbaa !8
  %add177 = add nsw i32 %100, 2
  %conv178 = sext i32 %add177 to i64
  %101 = load i64, ptr @firsttc_sz, align 8, !tbaa !38
  %cmp179 = icmp ugt i64 %conv178, %101
  br i1 %cmp179, label %if.then181, label %if.end195

if.then181:                                       ; preds = %if.end176
  %102 = load i64, ptr @firsttc_sz, align 8, !tbaa !38
  %tobool182 = icmp ne i64 %102, 0
  br i1 %tobool182, label %if.then183, label %if.end184

if.then183:                                       ; preds = %if.then181
  %103 = load ptr, ptr @firsttc, align 8, !tbaa !4
  call void @free(ptr noundef %103) #7
  br label %if.end184

if.end184:                                        ; preds = %if.then183, %if.then181
  %104 = load i32, ptr @n, align 4, !tbaa !8
  %add185 = add nsw i32 %104, 2
  %conv186 = sext i32 %add185 to i64
  store i64 %conv186, ptr @firsttc_sz, align 8, !tbaa !38
  %105 = load i32, ptr @n, align 4, !tbaa !8
  %add187 = add nsw i32 %105, 2
  %conv188 = sext i32 %add187 to i64
  %mul189 = mul i64 %conv188, 4
  %call190 = call noalias ptr @malloc(i64 noundef %mul189) #9
  store ptr %call190, ptr @firsttc, align 8, !tbaa !4
  %cmp191 = icmp eq ptr %call190, null
  br i1 %cmp191, label %if.then193, label %if.end194

if.then193:                                       ; preds = %if.end184
  call void @alloc_error(ptr noundef @.str.5)
  br label %if.end194

if.end194:                                        ; preds = %if.then193, %if.end184
  br label %if.end195

if.end195:                                        ; preds = %if.end194, %if.end176
  %106 = load i32, ptr @m, align 4, !tbaa !8
  %107 = load i32, ptr @alloc_m, align 4, !tbaa !8
  %cmp196 = icmp sgt i32 %106, %107
  br i1 %cmp196, label %if.then198, label %if.end201

if.then198:                                       ; preds = %if.end195
  %108 = load ptr, ptr @tcnode0, align 8, !tbaa !39
  store ptr %108, ptr %tcp, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then198
  %109 = load ptr, ptr %tcp, align 8, !tbaa !4
  %cmp199 = icmp ne ptr %109, null
  br i1 %cmp199, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %110 = load ptr, ptr %tcp, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.tcnode_struct, ptr %110, i32 0, i32 0
  %111 = load ptr, ptr %next, align 8, !tbaa !39
  store ptr %111, ptr %tcq, align 8, !tbaa !4
  %112 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tcellptr = getelementptr inbounds %struct.tcnode_struct, ptr %112, i32 0, i32 1
  %113 = load ptr, ptr %tcellptr, align 8, !tbaa !41
  call void @free(ptr noundef %113) #7
  %114 = load ptr, ptr %tcp, align 8, !tbaa !4
  call void @free(ptr noundef %114) #7
  %115 = load ptr, ptr %tcq, align 8, !tbaa !4
  store ptr %115, ptr %tcp, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !42

while.end:                                        ; preds = %while.cond
  %116 = load i32, ptr @m, align 4, !tbaa !8
  store i32 %116, ptr @alloc_m, align 4, !tbaa !8
  store ptr null, ptr @tcnode0, align 8, !tbaa !39
  br label %if.end201

if.end201:                                        ; preds = %while.end, %if.end195
  %117 = load ptr, ptr %orbits_arg.addr, align 8, !tbaa !4
  store ptr %117, ptr @orbits, align 8, !tbaa !4
  %118 = load ptr, ptr %stats_arg.addr, align 8, !tbaa !4
  store ptr %118, ptr @stats, align 8, !tbaa !4
  %119 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %getcanon202 = getelementptr inbounds %struct.optionstruct, ptr %119, i32 0, i32 0
  %120 = load i32, ptr %getcanon202, align 8, !tbaa !32
  store i32 %120, ptr @getcanon, align 4, !tbaa !8
  %121 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %digraph = getelementptr inbounds %struct.optionstruct, ptr %121, i32 0, i32 1
  %122 = load i32, ptr %digraph, align 4, !tbaa !45
  store i32 %122, ptr @digraph, align 4, !tbaa !8
  %123 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %writeautoms = getelementptr inbounds %struct.optionstruct, ptr %123, i32 0, i32 2
  %124 = load i32, ptr %writeautoms, align 8, !tbaa !46
  store i32 %124, ptr @writeautoms, align 4, !tbaa !8
  %125 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %writemarkers = getelementptr inbounds %struct.optionstruct, ptr %125, i32 0, i32 3
  %126 = load i32, ptr %writemarkers, align 4, !tbaa !47
  store i32 %126, ptr @domarkers, align 4, !tbaa !8
  %127 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %cartesian = getelementptr inbounds %struct.optionstruct, ptr %127, i32 0, i32 5
  %128 = load i32, ptr %cartesian, align 4, !tbaa !48
  store i32 %128, ptr @cartesian, align 4, !tbaa !8
  %129 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %schreier = getelementptr inbounds %struct.optionstruct, ptr %129, i32 0, i32 19
  %130 = load i32, ptr %schreier, align 8, !tbaa !49
  store i32 %130, ptr @doschreier, align 4, !tbaa !8
  %131 = load i32, ptr @doschreier, align 4, !tbaa !8
  %tobool203 = icmp ne i32 %131, 0
  br i1 %tobool203, label %if.then204, label %if.end205

if.then204:                                       ; preds = %if.end201
  %132 = load i32, ptr @m, align 4, !tbaa !8
  %133 = load i32, ptr @n, align 4, !tbaa !8
  call void @schreier_check(i32 noundef 32, i32 noundef %132, i32 noundef %133, i32 noundef 26040)
  br label %if.end205

if.end205:                                        ; preds = %if.then204, %if.end201
  %134 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %linelength = getelementptr inbounds %struct.optionstruct, ptr %134, i32 0, i32 6
  %135 = load i32, ptr %linelength, align 8, !tbaa !50
  store i32 %135, ptr @linelength, align 4, !tbaa !8
  %136 = load i32, ptr @digraph, align 4, !tbaa !8
  %tobool206 = icmp ne i32 %136, 0
  br i1 %tobool206, label %if.then207, label %if.else208

if.then207:                                       ; preds = %if.end205
  store i32 0, ptr @tc_level, align 4, !tbaa !8
  br label %if.end209

if.else208:                                       ; preds = %if.end205
  %137 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %tc_level = getelementptr inbounds %struct.optionstruct, ptr %137, i32 0, i32 14
  %138 = load i32, ptr %tc_level, align 8, !tbaa !51
  store i32 %138, ptr @tc_level, align 4, !tbaa !8
  br label %if.end209

if.end209:                                        ; preds = %if.else208, %if.then207
  %139 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %outfile = getelementptr inbounds %struct.optionstruct, ptr %139, i32 0, i32 7
  %140 = load ptr, ptr %outfile, align 8, !tbaa !52
  %cmp210 = icmp eq ptr %140, null
  br i1 %cmp210, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end209
  %141 = load ptr, ptr @stdout, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.end209
  %142 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %outfile212 = getelementptr inbounds %struct.optionstruct, ptr %142, i32 0, i32 7
  %143 = load ptr, ptr %outfile212, align 8, !tbaa !52
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %141, %cond.true ], [ %143, %cond.false ]
  store ptr %cond, ptr @outfile, align 8, !tbaa !4
  %144 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %usernodeproc = getelementptr inbounds %struct.optionstruct, ptr %144, i32 0, i32 11
  %145 = load ptr, ptr %usernodeproc, align 8, !tbaa !53
  store ptr %145, ptr @usernodeproc, align 8, !tbaa !4
  %146 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %userautomproc = getelementptr inbounds %struct.optionstruct, ptr %146, i32 0, i32 9
  %147 = load ptr, ptr %userautomproc, align 8, !tbaa !54
  store ptr %147, ptr @userautomproc, align 8, !tbaa !4
  %148 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %userlevelproc = getelementptr inbounds %struct.optionstruct, ptr %148, i32 0, i32 10
  %149 = load ptr, ptr %userlevelproc, align 8, !tbaa !55
  store ptr %149, ptr @userlevelproc, align 8, !tbaa !4
  %150 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %usercanonproc = getelementptr inbounds %struct.optionstruct, ptr %150, i32 0, i32 12
  %151 = load ptr, ptr %usercanonproc, align 8, !tbaa !56
  store ptr %151, ptr @usercanonproc, align 8, !tbaa !4
  %152 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %invarproc = getelementptr inbounds %struct.optionstruct, ptr %152, i32 0, i32 13
  %153 = load ptr, ptr %invarproc, align 8, !tbaa !57
  store ptr %153, ptr @invarproc, align 8, !tbaa !4
  %154 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %mininvarlevel = getelementptr inbounds %struct.optionstruct, ptr %154, i32 0, i32 15
  %155 = load i32, ptr %mininvarlevel, align 4, !tbaa !58
  %cmp213 = icmp slt i32 %155, 0
  br i1 %cmp213, label %land.lhs.true215, label %if.else220

land.lhs.true215:                                 ; preds = %cond.end
  %156 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %getcanon216 = getelementptr inbounds %struct.optionstruct, ptr %156, i32 0, i32 0
  %157 = load i32, ptr %getcanon216, align 8, !tbaa !32
  %tobool217 = icmp ne i32 %157, 0
  br i1 %tobool217, label %if.then218, label %if.else220

if.then218:                                       ; preds = %land.lhs.true215
  %158 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %mininvarlevel219 = getelementptr inbounds %struct.optionstruct, ptr %158, i32 0, i32 15
  %159 = load i32, ptr %mininvarlevel219, align 4, !tbaa !58
  %sub = sub nsw i32 0, %159
  store i32 %sub, ptr @mininvarlevel, align 4, !tbaa !8
  br label %if.end222

if.else220:                                       ; preds = %land.lhs.true215, %cond.end
  %160 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %mininvarlevel221 = getelementptr inbounds %struct.optionstruct, ptr %160, i32 0, i32 15
  %161 = load i32, ptr %mininvarlevel221, align 4, !tbaa !58
  store i32 %161, ptr @mininvarlevel, align 4, !tbaa !8
  br label %if.end222

if.end222:                                        ; preds = %if.else220, %if.then218
  %162 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %maxinvarlevel = getelementptr inbounds %struct.optionstruct, ptr %162, i32 0, i32 16
  %163 = load i32, ptr %maxinvarlevel, align 8, !tbaa !59
  %cmp223 = icmp slt i32 %163, 0
  br i1 %cmp223, label %land.lhs.true225, label %if.else231

land.lhs.true225:                                 ; preds = %if.end222
  %164 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %getcanon226 = getelementptr inbounds %struct.optionstruct, ptr %164, i32 0, i32 0
  %165 = load i32, ptr %getcanon226, align 8, !tbaa !32
  %tobool227 = icmp ne i32 %165, 0
  br i1 %tobool227, label %if.then228, label %if.else231

if.then228:                                       ; preds = %land.lhs.true225
  %166 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %maxinvarlevel229 = getelementptr inbounds %struct.optionstruct, ptr %166, i32 0, i32 16
  %167 = load i32, ptr %maxinvarlevel229, align 8, !tbaa !59
  %sub230 = sub nsw i32 0, %167
  store i32 %sub230, ptr @maxinvarlevel, align 4, !tbaa !8
  br label %if.end233

if.else231:                                       ; preds = %land.lhs.true225, %if.end222
  %168 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %maxinvarlevel232 = getelementptr inbounds %struct.optionstruct, ptr %168, i32 0, i32 16
  %169 = load i32, ptr %maxinvarlevel232, align 8, !tbaa !59
  store i32 %169, ptr @maxinvarlevel, align 4, !tbaa !8
  br label %if.end233

if.end233:                                        ; preds = %if.else231, %if.then228
  %170 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %invararg = getelementptr inbounds %struct.optionstruct, ptr %170, i32 0, i32 17
  %171 = load i32, ptr %invararg, align 4, !tbaa !60
  store i32 %171, ptr @invararg, align 4, !tbaa !8
  %172 = load i32, ptr @getcanon, align 4, !tbaa !8
  %tobool234 = icmp ne i32 %172, 0
  br i1 %tobool234, label %if.then235, label %if.end242

if.then235:                                       ; preds = %if.end233
  %173 = load ptr, ptr %canong_arg.addr, align 8, !tbaa !4
  %cmp236 = icmp eq ptr %173, null
  br i1 %cmp236, label %if.then238, label %if.end241

if.then238:                                       ; preds = %if.then235
  %174 = load ptr, ptr %stats_arg.addr, align 8, !tbaa !4
  %errstatus239 = getelementptr inbounds %struct.statsblk, ptr %174, i32 0, i32 4
  store i32 3, ptr %errstatus239, align 4, !tbaa !20
  %175 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call240 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %175, ptr noundef @.str.6)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end241:                                        ; preds = %if.then235
  br label %if.end242

if.end242:                                        ; preds = %if.end241, %if.end233
  %176 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %defaultptn = getelementptr inbounds %struct.optionstruct, ptr %176, i32 0, i32 4
  %177 = load i32, ptr %defaultptn, align 8, !tbaa !61
  %tobool243 = icmp ne i32 %177, 0
  br i1 %tobool243, label %if.then244, label %if.else258

if.then244:                                       ; preds = %if.end242
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then244
  %178 = load i32, ptr %i, align 4, !tbaa !8
  %179 = load i32, ptr @n, align 4, !tbaa !8
  %cmp245 = icmp slt i32 %178, %179
  br i1 %cmp245, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %180 = load i32, ptr %i, align 4, !tbaa !8
  %181 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %182 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %182 to i64
  %arrayidx = getelementptr inbounds i32, ptr %181, i64 %idxprom
  store i32 %180, ptr %arrayidx, align 4, !tbaa !8
  %183 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %184 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom247 = sext i32 %184 to i64
  %arrayidx248 = getelementptr inbounds i32, ptr %183, i64 %idxprom247
  store i32 2000000002, ptr %arrayidx248, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %185 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %185, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !62

for.end:                                          ; preds = %for.cond
  %186 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %187 = load i32, ptr @n, align 4, !tbaa !8
  %sub249 = sub nsw i32 %187, 1
  %idxprom250 = sext i32 %sub249 to i64
  %arrayidx251 = getelementptr inbounds i32, ptr %186, i64 %idxprom250
  store i32 0, ptr %arrayidx251, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %es) #7
  %188 = load ptr, ptr @active, align 8, !tbaa !4
  %189 = load i32, ptr @m, align 4, !tbaa !8
  %idx.ext = sext i32 %189 to i64
  %add.ptr = getelementptr inbounds i32, ptr %188, i64 %idx.ext
  store ptr %add.ptr, ptr %es, align 8, !tbaa !4
  br label %for.cond252

for.cond252:                                      ; preds = %for.body255, %for.end
  %190 = load ptr, ptr %es, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %190, i32 -1
  store ptr %incdec.ptr, ptr %es, align 8, !tbaa !4
  %191 = load ptr, ptr @active, align 8, !tbaa !4
  %cmp253 = icmp uge ptr %incdec.ptr, %191
  br i1 %cmp253, label %for.body255, label %for.end256

for.body255:                                      ; preds = %for.cond252
  %192 = load ptr, ptr %es, align 8, !tbaa !4
  store i32 0, ptr %192, align 4, !tbaa !8
  br label %for.cond252, !llvm.loop !63

for.end256:                                       ; preds = %for.cond252
  call void @llvm.lifetime.end.p0(i64 8, ptr %es) #7
  %193 = load i32, ptr @bit, align 16, !tbaa !8
  %194 = load ptr, ptr @active, align 8, !tbaa !4
  %arrayidx257 = getelementptr inbounds i32, ptr %194, i64 0
  %195 = load i32, ptr %arrayidx257, align 4, !tbaa !8
  %or = or i32 %195, %193
  store i32 %or, ptr %arrayidx257, align 4, !tbaa !8
  store i32 1, ptr %numcells, align 4, !tbaa !8
  br label %if.end323

if.else258:                                       ; preds = %if.end242
  %196 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %197 = load i32, ptr @n, align 4, !tbaa !8
  %sub259 = sub nsw i32 %197, 1
  %idxprom260 = sext i32 %sub259 to i64
  %arrayidx261 = getelementptr inbounds i32, ptr %196, i64 %idxprom260
  store i32 0, ptr %arrayidx261, align 4, !tbaa !8
  store i32 0, ptr %numcells, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond262

for.cond262:                                      ; preds = %for.inc276, %if.else258
  %198 = load i32, ptr %i, align 4, !tbaa !8
  %199 = load i32, ptr @n, align 4, !tbaa !8
  %cmp263 = icmp slt i32 %198, %199
  br i1 %cmp263, label %for.body265, label %for.end278

for.body265:                                      ; preds = %for.cond262
  %200 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %201 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom266 = sext i32 %201 to i64
  %arrayidx267 = getelementptr inbounds i32, ptr %200, i64 %idxprom266
  %202 = load i32, ptr %arrayidx267, align 4, !tbaa !8
  %cmp268 = icmp ne i32 %202, 0
  br i1 %cmp268, label %if.then270, label %if.else273

if.then270:                                       ; preds = %for.body265
  %203 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %204 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom271 = sext i32 %204 to i64
  %arrayidx272 = getelementptr inbounds i32, ptr %203, i64 %idxprom271
  store i32 2000000002, ptr %arrayidx272, align 4, !tbaa !8
  br label %if.end275

if.else273:                                       ; preds = %for.body265
  %205 = load i32, ptr %numcells, align 4, !tbaa !8
  %inc274 = add nsw i32 %205, 1
  store i32 %inc274, ptr %numcells, align 4, !tbaa !8
  br label %if.end275

if.end275:                                        ; preds = %if.else273, %if.then270
  br label %for.inc276

for.inc276:                                       ; preds = %if.end275
  %206 = load i32, ptr %i, align 4, !tbaa !8
  %inc277 = add nsw i32 %206, 1
  store i32 %inc277, ptr %i, align 4, !tbaa !8
  br label %for.cond262, !llvm.loop !64

for.end278:                                       ; preds = %for.cond262
  %207 = load ptr, ptr %active_arg.addr, align 8, !tbaa !4
  %cmp279 = icmp eq ptr %207, null
  br i1 %cmp279, label %if.then281, label %if.else310

if.then281:                                       ; preds = %for.end278
  call void @llvm.lifetime.start.p0(i64 8, ptr %es282) #7
  %208 = load ptr, ptr @active, align 8, !tbaa !4
  %209 = load i32, ptr @m, align 4, !tbaa !8
  %idx.ext283 = sext i32 %209 to i64
  %add.ptr284 = getelementptr inbounds i32, ptr %208, i64 %idx.ext283
  store ptr %add.ptr284, ptr %es282, align 8, !tbaa !4
  br label %for.cond285

for.cond285:                                      ; preds = %for.body289, %if.then281
  %210 = load ptr, ptr %es282, align 8, !tbaa !4
  %incdec.ptr286 = getelementptr inbounds i32, ptr %210, i32 -1
  store ptr %incdec.ptr286, ptr %es282, align 8, !tbaa !4
  %211 = load ptr, ptr @active, align 8, !tbaa !4
  %cmp287 = icmp uge ptr %incdec.ptr286, %211
  br i1 %cmp287, label %for.body289, label %for.end290

for.body289:                                      ; preds = %for.cond285
  %212 = load ptr, ptr %es282, align 8, !tbaa !4
  store i32 0, ptr %212, align 4, !tbaa !8
  br label %for.cond285, !llvm.loop !65

for.end290:                                       ; preds = %for.cond285
  call void @llvm.lifetime.end.p0(i64 8, ptr %es282) #7
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond291

for.cond291:                                      ; preds = %for.inc307, %for.end290
  %213 = load i32, ptr %i, align 4, !tbaa !8
  %214 = load i32, ptr @n, align 4, !tbaa !8
  %cmp292 = icmp slt i32 %213, %214
  br i1 %cmp292, label %for.body294, label %for.end309

for.body294:                                      ; preds = %for.cond291
  %215 = load i32, ptr %i, align 4, !tbaa !8
  %and = and i32 %215, 31
  %idxprom295 = sext i32 %and to i64
  %arrayidx296 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom295
  %216 = load i32, ptr %arrayidx296, align 4, !tbaa !8
  %217 = load ptr, ptr @active, align 8, !tbaa !4
  %218 = load i32, ptr %i, align 4, !tbaa !8
  %shr = ashr i32 %218, 5
  %idxprom297 = sext i32 %shr to i64
  %arrayidx298 = getelementptr inbounds i32, ptr %217, i64 %idxprom297
  %219 = load i32, ptr %arrayidx298, align 4, !tbaa !8
  %or299 = or i32 %219, %216
  store i32 %or299, ptr %arrayidx298, align 4, !tbaa !8
  br label %while.cond300

while.cond300:                                    ; preds = %while.body304, %for.body294
  %220 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %221 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom301 = sext i32 %221 to i64
  %arrayidx302 = getelementptr inbounds i32, ptr %220, i64 %idxprom301
  %222 = load i32, ptr %arrayidx302, align 4, !tbaa !8
  %tobool303 = icmp ne i32 %222, 0
  br i1 %tobool303, label %while.body304, label %while.end306

while.body304:                                    ; preds = %while.cond300
  %223 = load i32, ptr %i, align 4, !tbaa !8
  %inc305 = add nsw i32 %223, 1
  store i32 %inc305, ptr %i, align 4, !tbaa !8
  br label %while.cond300, !llvm.loop !66

while.end306:                                     ; preds = %while.cond300
  br label %for.inc307

for.inc307:                                       ; preds = %while.end306
  %224 = load i32, ptr %i, align 4, !tbaa !8
  %inc308 = add nsw i32 %224, 1
  store i32 %inc308, ptr %i, align 4, !tbaa !8
  br label %for.cond291, !llvm.loop !67

for.end309:                                       ; preds = %for.cond291
  br label %if.end322

if.else310:                                       ; preds = %for.end278
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond311

for.cond311:                                      ; preds = %for.inc319, %if.else310
  %225 = load i32, ptr %i, align 4, !tbaa !8
  %226 = load i32, ptr @m, align 4, !tbaa !8
  %cmp312 = icmp slt i32 %225, %226
  br i1 %cmp312, label %for.body314, label %for.end321

for.body314:                                      ; preds = %for.cond311
  %227 = load ptr, ptr %active_arg.addr, align 8, !tbaa !4
  %228 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom315 = sext i32 %228 to i64
  %arrayidx316 = getelementptr inbounds i32, ptr %227, i64 %idxprom315
  %229 = load i32, ptr %arrayidx316, align 4, !tbaa !8
  %230 = load ptr, ptr @active, align 8, !tbaa !4
  %231 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom317 = sext i32 %231 to i64
  %arrayidx318 = getelementptr inbounds i32, ptr %230, i64 %idxprom317
  store i32 %229, ptr %arrayidx318, align 4, !tbaa !8
  br label %for.inc319

for.inc319:                                       ; preds = %for.body314
  %232 = load i32, ptr %i, align 4, !tbaa !8
  %inc320 = add nsw i32 %232, 1
  store i32 %inc320, ptr %i, align 4, !tbaa !8
  br label %for.cond311, !llvm.loop !68

for.end321:                                       ; preds = %for.cond311
  br label %if.end322

if.end322:                                        ; preds = %for.end321, %for.end309
  br label %if.end323

if.end323:                                        ; preds = %if.end322, %for.end256
  store ptr null, ptr @canong, align 8, !tbaa !4
  store ptr null, ptr @g, align 8, !tbaa !4
  store i32 0, ptr %initstatus, align 4, !tbaa !8
  %233 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 9), align 8, !tbaa !69
  %cmp324 = icmp ne ptr %233, null
  br i1 %cmp324, label %if.then326, label %if.end327

if.then326:                                       ; preds = %if.end323
  %234 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 9), align 8, !tbaa !69
  %235 = load ptr, ptr %g_arg.addr, align 8, !tbaa !4
  %236 = load ptr, ptr %canong_arg.addr, align 8, !tbaa !4
  %237 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %238 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %239 = load ptr, ptr @active, align 8, !tbaa !4
  %240 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %241 = load i32, ptr @m, align 4, !tbaa !8
  %242 = load i32, ptr @n, align 4, !tbaa !8
  call void %234(ptr noundef %235, ptr noundef @g, ptr noundef %236, ptr noundef @canong, ptr noundef %237, ptr noundef %238, ptr noundef %239, ptr noundef %240, ptr noundef %initstatus, i32 noundef %241, i32 noundef %242)
  br label %if.end327

if.end327:                                        ; preds = %if.then326, %if.end323
  %243 = load i32, ptr %initstatus, align 4, !tbaa !8
  %tobool328 = icmp ne i32 %243, 0
  br i1 %tobool328, label %if.then329, label %if.end331

if.then329:                                       ; preds = %if.end327
  %244 = load i32, ptr %initstatus, align 4, !tbaa !8
  %245 = load ptr, ptr @stats, align 8, !tbaa !4
  %errstatus330 = getelementptr inbounds %struct.statsblk, ptr %245, i32 0, i32 4
  store i32 %244, ptr %errstatus330, align 4, !tbaa !20
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end331:                                        ; preds = %if.end327
  %246 = load ptr, ptr @g, align 8, !tbaa !4
  %cmp332 = icmp eq ptr %246, null
  br i1 %cmp332, label %if.then334, label %if.end335

if.then334:                                       ; preds = %if.end331
  %247 = load ptr, ptr %g_arg.addr, align 8, !tbaa !4
  store ptr %247, ptr @g, align 8, !tbaa !4
  br label %if.end335

if.end335:                                        ; preds = %if.then334, %if.end331
  %248 = load ptr, ptr @canong, align 8, !tbaa !4
  %cmp336 = icmp eq ptr %248, null
  br i1 %cmp336, label %if.then338, label %if.end339

if.then338:                                       ; preds = %if.end335
  %249 = load ptr, ptr %canong_arg.addr, align 8, !tbaa !4
  store ptr %249, ptr @canong, align 8, !tbaa !4
  br label %if.end339

if.end339:                                        ; preds = %if.then338, %if.end335
  %250 = load i32, ptr @doschreier, align 4, !tbaa !8
  %tobool340 = icmp ne i32 %250, 0
  br i1 %tobool340, label %if.then341, label %if.end342

if.then341:                                       ; preds = %if.end339
  %251 = load i32, ptr @n, align 4, !tbaa !8
  call void @newgroup(ptr noundef @gp, ptr noundef @gens, i32 noundef %251)
  br label %if.end342

if.end342:                                        ; preds = %if.then341, %if.end339
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond343

for.cond343:                                      ; preds = %for.inc349, %if.end342
  %252 = load i32, ptr %i, align 4, !tbaa !8
  %253 = load i32, ptr @n, align 4, !tbaa !8
  %cmp344 = icmp slt i32 %252, %253
  br i1 %cmp344, label %for.body346, label %for.end351

for.body346:                                      ; preds = %for.cond343
  %254 = load i32, ptr %i, align 4, !tbaa !8
  %255 = load ptr, ptr @orbits, align 8, !tbaa !4
  %256 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom347 = sext i32 %256 to i64
  %arrayidx348 = getelementptr inbounds i32, ptr %255, i64 %idxprom347
  store i32 %254, ptr %arrayidx348, align 4, !tbaa !8
  br label %for.inc349

for.inc349:                                       ; preds = %for.body346
  %257 = load i32, ptr %i, align 4, !tbaa !8
  %inc350 = add nsw i32 %257, 1
  store i32 %inc350, ptr %i, align 4, !tbaa !8
  br label %for.cond343, !llvm.loop !70

for.end351:                                       ; preds = %for.cond343
  %258 = load ptr, ptr @stats, align 8, !tbaa !4
  %grpsize1352 = getelementptr inbounds %struct.statsblk, ptr %258, i32 0, i32 0
  store double 1.000000e+00, ptr %grpsize1352, align 8, !tbaa !24
  %259 = load ptr, ptr @stats, align 8, !tbaa !4
  %grpsize2353 = getelementptr inbounds %struct.statsblk, ptr %259, i32 0, i32 1
  store i32 0, ptr %grpsize2353, align 8, !tbaa !25
  %260 = load ptr, ptr @stats, align 8, !tbaa !4
  %numgenerators354 = getelementptr inbounds %struct.statsblk, ptr %260, i32 0, i32 3
  store i32 0, ptr %numgenerators354, align 8, !tbaa !27
  %261 = load ptr, ptr @stats, align 8, !tbaa !4
  %numnodes355 = getelementptr inbounds %struct.statsblk, ptr %261, i32 0, i32 5
  store i64 0, ptr %numnodes355, align 8, !tbaa !28
  %262 = load ptr, ptr @stats, align 8, !tbaa !4
  %numbadleaves356 = getelementptr inbounds %struct.statsblk, ptr %262, i32 0, i32 6
  store i64 0, ptr %numbadleaves356, align 8, !tbaa !29
  %263 = load ptr, ptr @stats, align 8, !tbaa !4
  %tctotal357 = getelementptr inbounds %struct.statsblk, ptr %263, i32 0, i32 8
  store i64 0, ptr %tctotal357, align 8, !tbaa !31
  %264 = load ptr, ptr @stats, align 8, !tbaa !4
  %canupdates358 = getelementptr inbounds %struct.statsblk, ptr %264, i32 0, i32 9
  store i64 0, ptr %canupdates358, align 8, !tbaa !33
  %265 = load i32, ptr @n, align 4, !tbaa !8
  %266 = load ptr, ptr @stats, align 8, !tbaa !4
  %numorbits359 = getelementptr inbounds %struct.statsblk, ptr %266, i32 0, i32 2
  store i32 %265, ptr %numorbits359, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr %es360) #7
  %267 = load ptr, ptr @fixedpts, align 8, !tbaa !4
  %268 = load i32, ptr @m, align 4, !tbaa !8
  %idx.ext361 = sext i32 %268 to i64
  %add.ptr362 = getelementptr inbounds i32, ptr %267, i64 %idx.ext361
  store ptr %add.ptr362, ptr %es360, align 8, !tbaa !4
  br label %for.cond363

for.cond363:                                      ; preds = %for.body367, %for.end351
  %269 = load ptr, ptr %es360, align 8, !tbaa !4
  %incdec.ptr364 = getelementptr inbounds i32, ptr %269, i32 -1
  store ptr %incdec.ptr364, ptr %es360, align 8, !tbaa !4
  %270 = load ptr, ptr @fixedpts, align 8, !tbaa !4
  %cmp365 = icmp uge ptr %incdec.ptr364, %270
  br i1 %cmp365, label %for.body367, label %for.end368

for.body367:                                      ; preds = %for.cond363
  %271 = load ptr, ptr %es360, align 8, !tbaa !4
  store i32 0, ptr %271, align 4, !tbaa !8
  br label %for.cond363, !llvm.loop !71

for.end368:                                       ; preds = %for.cond363
  call void @llvm.lifetime.end.p0(i64 8, ptr %es360) #7
  store i32 1, ptr @noncheaplevel, align 4, !tbaa !8
  store i32 -1, ptr @eqlev_canon, align 4, !tbaa !8
  %272 = load i32, ptr %worksize.addr, align 4, !tbaa !8
  %273 = load i32, ptr @m, align 4, !tbaa !8
  %mul369 = mul nsw i32 2, %273
  %cmp370 = icmp sge i32 %272, %mul369
  br i1 %cmp370, label %if.then372, label %if.else373

if.then372:                                       ; preds = %for.end368
  %274 = load ptr, ptr %ws_arg.addr, align 8, !tbaa !4
  store ptr %274, ptr @workspace, align 8, !tbaa !4
  br label %if.end375

if.else373:                                       ; preds = %for.end368
  %275 = load ptr, ptr @defltwork, align 8, !tbaa !4
  store ptr %275, ptr @workspace, align 8, !tbaa !4
  %276 = load i32, ptr @m, align 4, !tbaa !8
  %mul374 = mul nsw i32 2, %276
  store i32 %mul374, ptr %worksize.addr, align 4, !tbaa !8
  br label %if.end375

if.end375:                                        ; preds = %if.else373, %if.then372
  %277 = load ptr, ptr @workspace, align 8, !tbaa !4
  %278 = load i32, ptr %worksize.addr, align 4, !tbaa !8
  %279 = load i32, ptr %worksize.addr, align 4, !tbaa !8
  %280 = load i32, ptr @m, align 4, !tbaa !8
  %mul376 = mul nsw i32 2, %280
  %rem = srem i32 %279, %mul376
  %sub377 = sub nsw i32 %278, %rem
  %idx.ext378 = sext i32 %sub377 to i64
  %add.ptr379 = getelementptr inbounds i32, ptr %277, i64 %idx.ext378
  store ptr %add.ptr379, ptr @worktop, align 8, !tbaa !4
  %281 = load ptr, ptr @workspace, align 8, !tbaa !4
  store ptr %281, ptr @fmptr, align 8, !tbaa !4
  %282 = load ptr, ptr @stats, align 8, !tbaa !4
  %errstatus380 = getelementptr inbounds %struct.statsblk, ptr %282, i32 0, i32 4
  store i32 0, ptr %errstatus380, align 4, !tbaa !20
  store i32 0, ptr @needshortprune, align 4, !tbaa !8
  store i32 2000000002, ptr @invarsuclevel, align 4, !tbaa !8
  store i64 0, ptr @invsuccesses, align 8, !tbaa !38
  store i64 0, ptr @invapplics, align 8, !tbaa !38
  %283 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %284 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %285 = load i32, ptr %numcells, align 4, !tbaa !8
  %call381 = call i32 @firstpathnode0(ptr noundef %283, ptr noundef %284, i32 noundef 1, i32 noundef %285, ptr noundef @tcnode0)
  store i32 %call381, ptr %retval, align 4, !tbaa !8
  %286 = load i32, ptr %retval, align 4, !tbaa !8
  %cmp382 = icmp eq i32 %286, -11
  br i1 %cmp382, label %if.then384, label %if.else386

if.then384:                                       ; preds = %if.end375
  %287 = load ptr, ptr @stats, align 8, !tbaa !4
  %errstatus385 = getelementptr inbounds %struct.statsblk, ptr %287, i32 0, i32 4
  store i32 4, ptr %errstatus385, align 4, !tbaa !20
  br label %if.end416

if.else386:                                       ; preds = %if.end375
  %288 = load i32, ptr %retval, align 4, !tbaa !8
  %cmp387 = icmp eq i32 %288, -12
  br i1 %cmp387, label %if.then389, label %if.else391

if.then389:                                       ; preds = %if.else386
  %289 = load ptr, ptr @stats, align 8, !tbaa !4
  %errstatus390 = getelementptr inbounds %struct.statsblk, ptr %289, i32 0, i32 4
  store i32 5, ptr %errstatus390, align 4, !tbaa !20
  br label %if.end415

if.else391:                                       ; preds = %if.else386
  %290 = load i32, ptr @getcanon, align 4, !tbaa !8
  %tobool392 = icmp ne i32 %290, 0
  br i1 %tobool392, label %if.then393, label %if.end405

if.then393:                                       ; preds = %if.else391
  %291 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 2), align 8, !tbaa !17
  %292 = load ptr, ptr @g, align 8, !tbaa !4
  %293 = load ptr, ptr @canong, align 8, !tbaa !4
  %294 = load ptr, ptr @canonlab, align 8, !tbaa !4
  %295 = load i32, ptr @samerows, align 4, !tbaa !8
  %296 = load i32, ptr @m, align 4, !tbaa !8
  %297 = load i32, ptr @n, align 4, !tbaa !8
  call void %291(ptr noundef %292, ptr noundef %293, ptr noundef %294, i32 noundef %295, i32 noundef %296, i32 noundef %297)
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond394

for.cond394:                                      ; preds = %for.inc402, %if.then393
  %298 = load i32, ptr %i, align 4, !tbaa !8
  %299 = load i32, ptr @n, align 4, !tbaa !8
  %cmp395 = icmp slt i32 %298, %299
  br i1 %cmp395, label %for.body397, label %for.end404

for.body397:                                      ; preds = %for.cond394
  %300 = load ptr, ptr @canonlab, align 8, !tbaa !4
  %301 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom398 = sext i32 %301 to i64
  %arrayidx399 = getelementptr inbounds i32, ptr %300, i64 %idxprom398
  %302 = load i32, ptr %arrayidx399, align 4, !tbaa !8
  %303 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %304 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom400 = sext i32 %304 to i64
  %arrayidx401 = getelementptr inbounds i32, ptr %303, i64 %idxprom400
  store i32 %302, ptr %arrayidx401, align 4, !tbaa !8
  br label %for.inc402

for.inc402:                                       ; preds = %for.body397
  %305 = load i32, ptr %i, align 4, !tbaa !8
  %inc403 = add nsw i32 %305, 1
  store i32 %inc403, ptr %i, align 4, !tbaa !8
  br label %for.cond394, !llvm.loop !72

for.end404:                                       ; preds = %for.cond394
  br label %if.end405

if.end405:                                        ; preds = %for.end404, %if.else391
  %306 = load i32, ptr @invarsuclevel, align 4, !tbaa !8
  %cmp406 = icmp eq i32 %306, 2000000002
  br i1 %cmp406, label %cond.true408, label %cond.false409

cond.true408:                                     ; preds = %if.end405
  br label %cond.end410

cond.false409:                                    ; preds = %if.end405
  %307 = load i32, ptr @invarsuclevel, align 4, !tbaa !8
  br label %cond.end410

cond.end410:                                      ; preds = %cond.false409, %cond.true408
  %cond411 = phi i32 [ 0, %cond.true408 ], [ %307, %cond.false409 ]
  %308 = load ptr, ptr @stats, align 8, !tbaa !4
  %invarsuclevel412 = getelementptr inbounds %struct.statsblk, ptr %308, i32 0, i32 12
  store i32 %cond411, ptr %invarsuclevel412, align 8, !tbaa !36
  %309 = load i64, ptr @invapplics, align 8, !tbaa !38
  %310 = load ptr, ptr @stats, align 8, !tbaa !4
  %invapplics413 = getelementptr inbounds %struct.statsblk, ptr %310, i32 0, i32 10
  store i64 %309, ptr %invapplics413, align 8, !tbaa !34
  %311 = load i64, ptr @invsuccesses, align 8, !tbaa !38
  %312 = load ptr, ptr @stats, align 8, !tbaa !4
  %invsuccesses414 = getelementptr inbounds %struct.statsblk, ptr %312, i32 0, i32 11
  store i64 %311, ptr %invsuccesses414, align 8, !tbaa !35
  br label %if.end415

if.end415:                                        ; preds = %cond.end410, %if.then389
  br label %if.end416

if.end416:                                        ; preds = %if.end415, %if.then384
  %313 = load i32, ptr @n, align 4, !tbaa !8
  %cmp417 = icmp sge i32 %313, 320
  br i1 %cmp417, label %if.then419, label %if.end424

if.then419:                                       ; preds = %if.end416
  call void @nautil_freedyn()
  %314 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 7), align 8, !tbaa !73
  %cmp420 = icmp ne ptr %314, null
  br i1 %cmp420, label %if.then422, label %if.end423

if.then422:                                       ; preds = %if.then419
  %315 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 7), align 8, !tbaa !73
  call void %315()
  br label %if.end423

if.end423:                                        ; preds = %if.then422, %if.then419
  call void @nauty_freedyn()
  br label %if.end424

if.end424:                                        ; preds = %if.end423, %if.end416
  %316 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 10), align 8, !tbaa !74
  %cmp425 = icmp ne ptr %316, null
  br i1 %cmp425, label %if.then427, label %if.end428

if.then427:                                       ; preds = %if.end424
  %317 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 10), align 8, !tbaa !74
  %318 = load ptr, ptr %g_arg.addr, align 8, !tbaa !4
  %319 = load ptr, ptr %canong_arg.addr, align 8, !tbaa !4
  %320 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %321 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %322 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %323 = load ptr, ptr @stats, align 8, !tbaa !4
  %324 = load i32, ptr @m, align 4, !tbaa !8
  %325 = load i32, ptr @n, align 4, !tbaa !8
  call void %317(ptr noundef %318, ptr noundef @g, ptr noundef %319, ptr noundef @canong, ptr noundef %320, ptr noundef %321, ptr noundef %322, ptr noundef %323, i32 noundef %324, i32 noundef %325)
  br label %if.end428

if.end428:                                        ; preds = %if.then427, %if.end424
  %326 = load i32, ptr @doschreier, align 4, !tbaa !8
  %tobool429 = icmp ne i32 %326, 0
  br i1 %tobool429, label %if.then430, label %if.end435

if.then430:                                       ; preds = %if.end428
  call void @freeschreier(ptr noundef @gp, ptr noundef @gens)
  %327 = load i32, ptr @n, align 4, !tbaa !8
  %cmp431 = icmp sge i32 %327, 320
  br i1 %cmp431, label %if.then433, label %if.end434

if.then433:                                       ; preds = %if.then430
  call void @schreier_freedyn()
  br label %if.end434

if.end434:                                        ; preds = %if.then433, %if.then430
  br label %if.end435

if.end435:                                        ; preds = %if.end434, %if.end428
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end435, %if.then329, %if.then238, %if.then32, %if.then27, %if.then21
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcq) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %initstatus) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %numcells) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @nautil_check(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

declare void @alloc_error(ptr noundef) #2

declare void @schreier_check(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @newgroup(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @firstpathnode0(ptr noundef %lab, ptr noundef %ptn, i32 noundef %level, i32 noundef %numcells, ptr noundef %tcnode_parent) #0 {
entry:
  %retval = alloca i32, align 4
  %lab.addr = alloca ptr, align 8
  %ptn.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %numcells.addr = alloca i32, align 4
  %tcnode_parent.addr = alloca ptr, align 8
  %tv = alloca i32, align 4
  %tv1 = alloca i32, align 4
  %index = alloca i32, align 4
  %rtnlevel = alloca i32, align 4
  %tcellsize = alloca i32, align 4
  %tc = alloca i32, align 4
  %childcount = alloca i32, align 4
  %qinvar = alloca i32, align 4
  %refcode = alloca i32, align 4
  %tcell = alloca ptr, align 8
  %tcnode_this = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lab, ptr %lab.addr, align 8, !tbaa !4
  store ptr %ptn, ptr %ptn.addr, align 8, !tbaa !4
  store i32 %level, ptr %level.addr, align 4, !tbaa !8
  store i32 %numcells, ptr %numcells.addr, align 4, !tbaa !8
  store ptr %tcnode_parent, ptr %tcnode_parent.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tv) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %tv1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %rtnlevel) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %tcellsize) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %tc) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %childcount) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %qinvar) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %refcode) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcell) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcnode_this) #7
  %0 = load ptr, ptr %tcnode_parent.addr, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.tcnode_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %next, align 8, !tbaa !39
  store ptr %1, ptr %tcnode_this, align 8, !tbaa !4
  %2 = load ptr, ptr %tcnode_this, align 8, !tbaa !4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %call = call noalias ptr @malloc(i64 noundef 16) #9
  store ptr %call, ptr %tcnode_this, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i32, ptr @alloc_m, align 4, !tbaa !8
  %conv = sext i32 %3 to i64
  %mul = mul i64 %conv, 4
  %call2 = call noalias ptr @malloc(i64 noundef %mul) #9
  %4 = load ptr, ptr %tcnode_this, align 8, !tbaa !4
  %tcellptr = getelementptr inbounds %struct.tcnode_struct, ptr %4, i32 0, i32 1
  store ptr %call2, ptr %tcellptr, align 8, !tbaa !41
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %lor.lhs.false, %if.then
  call void @alloc_error(ptr noundef @.str.9)
  br label %if.end

if.end:                                           ; preds = %if.then5, %lor.lhs.false
  %5 = load ptr, ptr %tcnode_this, align 8, !tbaa !4
  %6 = load ptr, ptr %tcnode_parent.addr, align 8, !tbaa !4
  %next6 = getelementptr inbounds %struct.tcnode_struct, ptr %6, i32 0, i32 0
  store ptr %5, ptr %next6, align 8, !tbaa !39
  %7 = load ptr, ptr %tcnode_this, align 8, !tbaa !4
  %next7 = getelementptr inbounds %struct.tcnode_struct, ptr %7, i32 0, i32 0
  store ptr null, ptr %next7, align 8, !tbaa !39
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %8 = load ptr, ptr %tcnode_this, align 8, !tbaa !4
  %tcellptr9 = getelementptr inbounds %struct.tcnode_struct, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %tcellptr9, align 8, !tbaa !41
  store ptr %9, ptr %tcell, align 8, !tbaa !4
  %10 = load ptr, ptr @stats, align 8, !tbaa !4
  %numnodes = getelementptr inbounds %struct.statsblk, ptr %10, i32 0, i32 5
  %11 = load i64, ptr %numnodes, align 8, !tbaa !28
  %inc = add i64 %11, 1
  store i64 %inc, ptr %numnodes, align 8, !tbaa !28
  %12 = load ptr, ptr @g, align 8, !tbaa !4
  %13 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %15 = load i32, ptr %level.addr, align 4, !tbaa !8
  %16 = load ptr, ptr @workperm, align 8, !tbaa !4
  %17 = load ptr, ptr @active, align 8, !tbaa !4
  %18 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 3), align 8, !tbaa !14
  %19 = load ptr, ptr @invarproc, align 8, !tbaa !4
  %20 = load i32, ptr @mininvarlevel, align 4, !tbaa !8
  %21 = load i32, ptr @maxinvarlevel, align 4, !tbaa !8
  %22 = load i32, ptr @invararg, align 4, !tbaa !8
  %23 = load i32, ptr @digraph, align 4, !tbaa !8
  %24 = load i32, ptr @m, align 4, !tbaa !8
  %25 = load i32, ptr @n, align 4, !tbaa !8
  call void @doref(ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, ptr noundef %numcells.addr, ptr noundef %qinvar, ptr noundef %16, ptr noundef %17, ptr noundef %refcode, ptr noundef %18, ptr noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %25)
  %26 = load i32, ptr %refcode, align 4, !tbaa !8
  %conv10 = trunc i32 %26 to i16
  %27 = load ptr, ptr @firstcode, align 8, !tbaa !4
  %28 = load i32, ptr %level.addr, align 4, !tbaa !8
  %idxprom = sext i32 %28 to i64
  %arrayidx = getelementptr inbounds i16, ptr %27, i64 %idxprom
  store i16 %conv10, ptr %arrayidx, align 2, !tbaa !75
  %29 = load i32, ptr %qinvar, align 4, !tbaa !8
  %cmp11 = icmp sgt i32 %29, 0
  br i1 %cmp11, label %if.then13, label %if.end32

if.then13:                                        ; preds = %if.end8
  %30 = load i64, ptr @invapplics, align 8, !tbaa !38
  %inc14 = add i64 %30, 1
  store i64 %inc14, ptr @invapplics, align 8, !tbaa !38
  %31 = load i32, ptr %qinvar, align 4, !tbaa !8
  %cmp15 = icmp eq i32 %31, 2
  br i1 %cmp15, label %if.then17, label %if.end31

if.then17:                                        ; preds = %if.then13
  %32 = load i64, ptr @invsuccesses, align 8, !tbaa !38
  %inc18 = add i64 %32, 1
  store i64 %inc18, ptr @invsuccesses, align 8, !tbaa !38
  %33 = load i32, ptr @mininvarlevel, align 4, !tbaa !8
  %cmp19 = icmp slt i32 %33, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then17
  %34 = load i32, ptr %level.addr, align 4, !tbaa !8
  store i32 %34, ptr @mininvarlevel, align 4, !tbaa !8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then17
  %35 = load i32, ptr @maxinvarlevel, align 4, !tbaa !8
  %cmp23 = icmp slt i32 %35, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  %36 = load i32, ptr %level.addr, align 4, !tbaa !8
  store i32 %36, ptr @maxinvarlevel, align 4, !tbaa !8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22
  %37 = load i32, ptr %level.addr, align 4, !tbaa !8
  %38 = load i32, ptr @invarsuclevel, align 4, !tbaa !8
  %cmp27 = icmp slt i32 %37, %38
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end26
  %39 = load i32, ptr %level.addr, align 4, !tbaa !8
  store i32 %39, ptr @invarsuclevel, align 4, !tbaa !8
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then13
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end8
  store i32 -1, ptr %tc, align 4, !tbaa !8
  %40 = load i32, ptr %numcells.addr, align 4, !tbaa !8
  %41 = load i32, ptr @n, align 4, !tbaa !8
  %cmp33 = icmp ne i32 %40, %41
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end32
  %42 = load ptr, ptr @g, align 8, !tbaa !4
  %43 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %44 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %45 = load i32, ptr %level.addr, align 4, !tbaa !8
  %46 = load ptr, ptr %tcell, align 8, !tbaa !4
  %47 = load i32, ptr @tc_level, align 4, !tbaa !8
  %48 = load i32, ptr @digraph, align 4, !tbaa !8
  %49 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 6), align 8, !tbaa !18
  %50 = load i32, ptr @m, align 4, !tbaa !8
  %51 = load i32, ptr @n, align 4, !tbaa !8
  call void @maketargetcell(ptr noundef %42, ptr noundef %43, ptr noundef %44, i32 noundef %45, ptr noundef %46, ptr noundef %tcellsize, ptr noundef %tc, i32 noundef %47, i32 noundef %48, i32 noundef -1, ptr noundef %49, i32 noundef %50, i32 noundef %51)
  %52 = load i32, ptr %tcellsize, align 4, !tbaa !8
  %conv36 = sext i32 %52 to i64
  %53 = load ptr, ptr @stats, align 8, !tbaa !4
  %tctotal = getelementptr inbounds %struct.statsblk, ptr %53, i32 0, i32 8
  %54 = load i64, ptr %tctotal, align 8, !tbaa !31
  %add = add i64 %54, %conv36
  store i64 %add, ptr %tctotal, align 8, !tbaa !31
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end32
  %55 = load i32, ptr %tc, align 4, !tbaa !8
  %56 = load ptr, ptr @firsttc, align 8, !tbaa !4
  %57 = load i32, ptr %level.addr, align 4, !tbaa !8
  %idxprom38 = sext i32 %57 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %56, i64 %idxprom38
  store i32 %55, ptr %arrayidx39, align 4, !tbaa !8
  %58 = load ptr, ptr @usernodeproc, align 8, !tbaa !4
  %cmp40 = icmp ne ptr %58, null
  br i1 %cmp40, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.end37
  %59 = load ptr, ptr @usernodeproc, align 8, !tbaa !4
  %60 = load ptr, ptr @g, align 8, !tbaa !4
  %61 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %62 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %63 = load i32, ptr %level.addr, align 4, !tbaa !8
  %64 = load i32, ptr %numcells.addr, align 4, !tbaa !8
  %65 = load i32, ptr %tc, align 4, !tbaa !8
  %66 = load ptr, ptr @firstcode, align 8, !tbaa !4
  %67 = load i32, ptr %level.addr, align 4, !tbaa !8
  %idxprom43 = sext i32 %67 to i64
  %arrayidx44 = getelementptr inbounds i16, ptr %66, i64 %idxprom43
  %68 = load i16, ptr %arrayidx44, align 2, !tbaa !75
  %conv45 = sext i16 %68 to i32
  %69 = load i32, ptr @m, align 4, !tbaa !8
  %70 = load i32, ptr @n, align 4, !tbaa !8
  call void %59(ptr noundef %60, ptr noundef %61, ptr noundef %62, i32 noundef %63, i32 noundef %64, i32 noundef %65, i32 noundef %conv45, i32 noundef %69, i32 noundef %70)
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end37
  %71 = load i32, ptr %numcells.addr, align 4, !tbaa !8
  %72 = load i32, ptr @n, align 4, !tbaa !8
  %cmp47 = icmp eq i32 %71, %72
  br i1 %cmp47, label %if.then49, label %if.end66

if.then49:                                        ; preds = %if.end46
  %73 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %74 = load i32, ptr %level.addr, align 4, !tbaa !8
  call void @firstterminal(ptr noundef %73, i32 noundef %74)
  %75 = load ptr, ptr @userlevelproc, align 8, !tbaa !4
  %cmp50 = icmp ne ptr %75, null
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.then49
  %76 = load ptr, ptr @userlevelproc, align 8, !tbaa !4
  %77 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %78 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %79 = load i32, ptr %level.addr, align 4, !tbaa !8
  %80 = load ptr, ptr @orbits, align 8, !tbaa !4
  %81 = load ptr, ptr @stats, align 8, !tbaa !4
  %82 = load i32, ptr @n, align 4, !tbaa !8
  %83 = load i32, ptr @n, align 4, !tbaa !8
  call void %76(ptr noundef %77, ptr noundef %78, i32 noundef %79, ptr noundef %80, ptr noundef %81, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef %82, i32 noundef 0, i32 noundef %83)
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.then49
  %84 = load i32, ptr @getcanon, align 4, !tbaa !8
  %tobool = icmp ne i32 %84, 0
  br i1 %tobool, label %land.lhs.true, label %if.end65

land.lhs.true:                                    ; preds = %if.end53
  %85 = load ptr, ptr @usercanonproc, align 8, !tbaa !4
  %cmp54 = icmp ne ptr %85, null
  br i1 %cmp54, label %if.then56, label %if.end65

if.then56:                                        ; preds = %land.lhs.true
  %86 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 2), align 8, !tbaa !17
  %87 = load ptr, ptr @g, align 8, !tbaa !4
  %88 = load ptr, ptr @canong, align 8, !tbaa !4
  %89 = load ptr, ptr @canonlab, align 8, !tbaa !4
  %90 = load i32, ptr @samerows, align 4, !tbaa !8
  %91 = load i32, ptr @m, align 4, !tbaa !8
  %92 = load i32, ptr @n, align 4, !tbaa !8
  call void %86(ptr noundef %87, ptr noundef %88, ptr noundef %89, i32 noundef %90, i32 noundef %91, i32 noundef %92)
  %93 = load i32, ptr @n, align 4, !tbaa !8
  store i32 %93, ptr @samerows, align 4, !tbaa !8
  %94 = load ptr, ptr @usercanonproc, align 8, !tbaa !4
  %95 = load ptr, ptr @g, align 8, !tbaa !4
  %96 = load ptr, ptr @canonlab, align 8, !tbaa !4
  %97 = load ptr, ptr @canong, align 8, !tbaa !4
  %98 = load ptr, ptr @stats, align 8, !tbaa !4
  %canupdates = getelementptr inbounds %struct.statsblk, ptr %98, i32 0, i32 9
  %99 = load i64, ptr %canupdates, align 8, !tbaa !33
  %conv57 = trunc i64 %99 to i32
  %100 = load ptr, ptr @canoncode, align 8, !tbaa !4
  %101 = load i32, ptr %level.addr, align 4, !tbaa !8
  %idxprom58 = sext i32 %101 to i64
  %arrayidx59 = getelementptr inbounds i16, ptr %100, i64 %idxprom58
  %102 = load i16, ptr %arrayidx59, align 2, !tbaa !75
  %conv60 = sext i16 %102 to i32
  %103 = load i32, ptr @m, align 4, !tbaa !8
  %104 = load i32, ptr @n, align 4, !tbaa !8
  %call61 = call i32 %94(ptr noundef %95, ptr noundef %96, ptr noundef %97, i32 noundef %conv57, i32 noundef %conv60, i32 noundef %103, i32 noundef %104)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.then56
  store i32 -11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end64:                                         ; preds = %if.then56
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %land.lhs.true, %if.end53
  %105 = load i32, ptr %level.addr, align 4, !tbaa !8
  %sub = sub nsw i32 %105, 1
  store i32 %sub, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end66:                                         ; preds = %if.end46
  %106 = load i32, ptr @noncheaplevel, align 4, !tbaa !8
  %107 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp67 = icmp sge i32 %106, %107
  br i1 %cmp67, label %land.lhs.true69, label %if.end74

land.lhs.true69:                                  ; preds = %if.end66
  %108 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 5), align 8, !tbaa !19
  %109 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %110 = load i32, ptr %level.addr, align 4, !tbaa !8
  %111 = load i32, ptr @digraph, align 4, !tbaa !8
  %112 = load i32, ptr @n, align 4, !tbaa !8
  %call70 = call i32 %108(ptr noundef %109, i32 noundef %110, i32 noundef %111, i32 noundef %112)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.end74, label %if.then72

if.then72:                                        ; preds = %land.lhs.true69
  %113 = load i32, ptr %level.addr, align 4, !tbaa !8
  %add73 = add nsw i32 %113, 1
  store i32 %add73, ptr @noncheaplevel, align 4, !tbaa !8
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %land.lhs.true69, %if.end66
  store i32 0, ptr %index, align 4, !tbaa !8
  %114 = load ptr, ptr %tcell, align 8, !tbaa !4
  %115 = load i32, ptr @m, align 4, !tbaa !8
  %call75 = call i32 @nextelement(ptr noundef %114, i32 noundef %115, i32 noundef -1)
  store i32 %call75, ptr %tv, align 4, !tbaa !8
  store i32 %call75, ptr %tv1, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end74
  %116 = load i32, ptr %tv, align 4, !tbaa !8
  %cmp76 = icmp sge i32 %116, 0
  br i1 %cmp76, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %117 = load ptr, ptr @orbits, align 8, !tbaa !4
  %118 = load i32, ptr %tv, align 4, !tbaa !8
  %idxprom78 = sext i32 %118 to i64
  %arrayidx79 = getelementptr inbounds i32, ptr %117, i64 %idxprom78
  %119 = load i32, ptr %arrayidx79, align 4, !tbaa !8
  %120 = load i32, ptr %tv, align 4, !tbaa !8
  %cmp80 = icmp eq i32 %119, %120
  br i1 %cmp80, label %if.then82, label %if.end113

if.then82:                                        ; preds = %for.body
  %121 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %122 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %123 = load i32, ptr %level.addr, align 4, !tbaa !8
  %add83 = add nsw i32 %123, 1
  %124 = load i32, ptr %tc, align 4, !tbaa !8
  %125 = load i32, ptr %tv, align 4, !tbaa !8
  %126 = load ptr, ptr @active, align 8, !tbaa !4
  %127 = load i32, ptr @m, align 4, !tbaa !8
  call void @breakout(ptr noundef %121, ptr noundef %122, i32 noundef %add83, i32 noundef %124, i32 noundef %125, ptr noundef %126, i32 noundef %127)
  %128 = load i32, ptr %tv, align 4, !tbaa !8
  %and = and i32 %128, 31
  %idxprom84 = sext i32 %and to i64
  %arrayidx85 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom84
  %129 = load i32, ptr %arrayidx85, align 4, !tbaa !8
  %130 = load ptr, ptr @fixedpts, align 8, !tbaa !4
  %131 = load i32, ptr %tv, align 4, !tbaa !8
  %shr = ashr i32 %131, 5
  %idxprom86 = sext i32 %shr to i64
  %arrayidx87 = getelementptr inbounds i32, ptr %130, i64 %idxprom86
  %132 = load i32, ptr %arrayidx87, align 4, !tbaa !8
  %or = or i32 %132, %129
  store i32 %or, ptr %arrayidx87, align 4, !tbaa !8
  %133 = load i32, ptr %tv, align 4, !tbaa !8
  store i32 %133, ptr @cosetindex, align 4, !tbaa !8
  %134 = load i32, ptr %tv, align 4, !tbaa !8
  %135 = load i32, ptr %tv1, align 4, !tbaa !8
  %cmp88 = icmp eq i32 %134, %135
  br i1 %cmp88, label %if.then90, label %if.else

if.then90:                                        ; preds = %if.then82
  %136 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %137 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %138 = load i32, ptr %level.addr, align 4, !tbaa !8
  %add91 = add nsw i32 %138, 1
  %139 = load i32, ptr %numcells.addr, align 4, !tbaa !8
  %add92 = add nsw i32 %139, 1
  %140 = load ptr, ptr %tcnode_this, align 8, !tbaa !4
  %call93 = call i32 @firstpathnode0(ptr noundef %136, ptr noundef %137, i32 noundef %add91, i32 noundef %add92, ptr noundef %140)
  store i32 %call93, ptr %rtnlevel, align 4, !tbaa !8
  store i32 1, ptr %childcount, align 4, !tbaa !8
  %141 = load i32, ptr %level.addr, align 4, !tbaa !8
  store i32 %141, ptr @gca_first, align 4, !tbaa !8
  %142 = load i32, ptr %tv1, align 4, !tbaa !8
  store i32 %142, ptr @stabvertex, align 4, !tbaa !8
  br label %if.end98

if.else:                                          ; preds = %if.then82
  %143 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %144 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %145 = load i32, ptr %level.addr, align 4, !tbaa !8
  %add94 = add nsw i32 %145, 1
  %146 = load i32, ptr %numcells.addr, align 4, !tbaa !8
  %add95 = add nsw i32 %146, 1
  %147 = load ptr, ptr %tcnode_this, align 8, !tbaa !4
  %call96 = call i32 @othernode0(ptr noundef %143, ptr noundef %144, i32 noundef %add94, i32 noundef %add95, ptr noundef %147)
  store i32 %call96, ptr %rtnlevel, align 4, !tbaa !8
  %148 = load i32, ptr %childcount, align 4, !tbaa !8
  %inc97 = add nsw i32 %148, 1
  store i32 %inc97, ptr %childcount, align 4, !tbaa !8
  br label %if.end98

if.end98:                                         ; preds = %if.else, %if.then90
  %149 = load i32, ptr %tv, align 4, !tbaa !8
  %and99 = and i32 %149, 31
  %idxprom100 = sext i32 %and99 to i64
  %arrayidx101 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom100
  %150 = load i32, ptr %arrayidx101, align 4, !tbaa !8
  %not = xor i32 %150, -1
  %151 = load ptr, ptr @fixedpts, align 8, !tbaa !4
  %152 = load i32, ptr %tv, align 4, !tbaa !8
  %shr102 = ashr i32 %152, 5
  %idxprom103 = sext i32 %shr102 to i64
  %arrayidx104 = getelementptr inbounds i32, ptr %151, i64 %idxprom103
  %153 = load i32, ptr %arrayidx104, align 4, !tbaa !8
  %and105 = and i32 %153, %not
  store i32 %and105, ptr %arrayidx104, align 4, !tbaa !8
  %154 = load i32, ptr %rtnlevel, align 4, !tbaa !8
  %155 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp106 = icmp slt i32 %154, %155
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.end98
  %156 = load i32, ptr %rtnlevel, align 4, !tbaa !8
  store i32 %156, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end109:                                        ; preds = %if.end98
  %157 = load i32, ptr @needshortprune, align 4, !tbaa !8
  %tobool110 = icmp ne i32 %157, 0
  br i1 %tobool110, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end109
  store i32 0, ptr @needshortprune, align 4, !tbaa !8
  %158 = load ptr, ptr %tcell, align 8, !tbaa !4
  %159 = load ptr, ptr @fmptr, align 8, !tbaa !4
  %160 = load i32, ptr @m, align 4, !tbaa !8
  %idx.ext = sext i32 %160 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i32, ptr %159, i64 %idx.neg
  %161 = load i32, ptr @m, align 4, !tbaa !8
  call void @shortprune(ptr noundef %158, ptr noundef %add.ptr, i32 noundef %161)
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %if.end109
  %162 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %163 = load i32, ptr %level.addr, align 4, !tbaa !8
  call void @recover(ptr noundef %162, i32 noundef %163)
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %for.body
  %164 = load ptr, ptr @orbits, align 8, !tbaa !4
  %165 = load i32, ptr %tv, align 4, !tbaa !8
  %idxprom114 = sext i32 %165 to i64
  %arrayidx115 = getelementptr inbounds i32, ptr %164, i64 %idxprom114
  %166 = load i32, ptr %arrayidx115, align 4, !tbaa !8
  %167 = load i32, ptr %tv1, align 4, !tbaa !8
  %cmp116 = icmp eq i32 %166, %167
  br i1 %cmp116, label %if.then118, label %if.end120

if.then118:                                       ; preds = %if.end113
  %168 = load i32, ptr %index, align 4, !tbaa !8
  %inc119 = add nsw i32 %168, 1
  store i32 %inc119, ptr %index, align 4, !tbaa !8
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %if.end113
  br label %for.inc

for.inc:                                          ; preds = %if.end120
  %169 = load ptr, ptr %tcell, align 8, !tbaa !4
  %170 = load i32, ptr @m, align 4, !tbaa !8
  %171 = load i32, ptr %tv, align 4, !tbaa !8
  %call121 = call i32 @nextelement(ptr noundef %169, i32 noundef %170, i32 noundef %171)
  store i32 %call121, ptr %tv, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !77

for.end:                                          ; preds = %for.cond
  %172 = load i32, ptr %index, align 4, !tbaa !8
  %conv122 = sitofp i32 %172 to double
  %173 = load ptr, ptr @stats, align 8, !tbaa !4
  %grpsize1 = getelementptr inbounds %struct.statsblk, ptr %173, i32 0, i32 0
  %174 = load double, ptr %grpsize1, align 8, !tbaa !24
  %mul123 = fmul double %174, %conv122
  store double %mul123, ptr %grpsize1, align 8, !tbaa !24
  %cmp124 = fcmp oge double %mul123, 1.000000e+10
  br i1 %cmp124, label %if.then126, label %if.end129

if.then126:                                       ; preds = %for.end
  %175 = load ptr, ptr @stats, align 8, !tbaa !4
  %grpsize1127 = getelementptr inbounds %struct.statsblk, ptr %175, i32 0, i32 0
  %176 = load double, ptr %grpsize1127, align 8, !tbaa !24
  %div = fdiv double %176, 1.000000e+10
  store double %div, ptr %grpsize1127, align 8, !tbaa !24
  %177 = load ptr, ptr @stats, align 8, !tbaa !4
  %grpsize2 = getelementptr inbounds %struct.statsblk, ptr %177, i32 0, i32 1
  %178 = load i32, ptr %grpsize2, align 8, !tbaa !25
  %add128 = add nsw i32 %178, 10
  store i32 %add128, ptr %grpsize2, align 8, !tbaa !25
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %for.end
  %179 = load i32, ptr %tcellsize, align 4, !tbaa !8
  %180 = load i32, ptr %index, align 4, !tbaa !8
  %cmp130 = icmp eq i32 %179, %180
  br i1 %cmp130, label %land.lhs.true132, label %if.end137

land.lhs.true132:                                 ; preds = %if.end129
  %181 = load i32, ptr @allsamelevel, align 4, !tbaa !8
  %182 = load i32, ptr %level.addr, align 4, !tbaa !8
  %add133 = add nsw i32 %182, 1
  %cmp134 = icmp eq i32 %181, %add133
  br i1 %cmp134, label %if.then136, label %if.end137

if.then136:                                       ; preds = %land.lhs.true132
  %183 = load i32, ptr @allsamelevel, align 4, !tbaa !8
  %dec = add nsw i32 %183, -1
  store i32 %dec, ptr @allsamelevel, align 4, !tbaa !8
  br label %if.end137

if.end137:                                        ; preds = %if.then136, %land.lhs.true132, %if.end129
  %184 = load i32, ptr @domarkers, align 4, !tbaa !8
  %tobool138 = icmp ne i32 %184, 0
  br i1 %tobool138, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.end137
  %185 = load i32, ptr %level.addr, align 4, !tbaa !8
  %186 = load i32, ptr %tv1, align 4, !tbaa !8
  %187 = load i32, ptr %index, align 4, !tbaa !8
  %188 = load i32, ptr %tcellsize, align 4, !tbaa !8
  %189 = load ptr, ptr @stats, align 8, !tbaa !4
  %numorbits = getelementptr inbounds %struct.statsblk, ptr %189, i32 0, i32 2
  %190 = load i32, ptr %numorbits, align 4, !tbaa !26
  %191 = load i32, ptr %numcells.addr, align 4, !tbaa !8
  call void @writemarker(i32 noundef %185, i32 noundef %186, i32 noundef %187, i32 noundef %188, i32 noundef %190, i32 noundef %191)
  br label %if.end140

if.end140:                                        ; preds = %if.then139, %if.end137
  %192 = load ptr, ptr @userlevelproc, align 8, !tbaa !4
  %cmp141 = icmp ne ptr %192, null
  br i1 %cmp141, label %if.then143, label %if.end144

if.then143:                                       ; preds = %if.end140
  %193 = load ptr, ptr @userlevelproc, align 8, !tbaa !4
  %194 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %195 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %196 = load i32, ptr %level.addr, align 4, !tbaa !8
  %197 = load ptr, ptr @orbits, align 8, !tbaa !4
  %198 = load ptr, ptr @stats, align 8, !tbaa !4
  %199 = load i32, ptr %tv1, align 4, !tbaa !8
  %200 = load i32, ptr %index, align 4, !tbaa !8
  %201 = load i32, ptr %tcellsize, align 4, !tbaa !8
  %202 = load i32, ptr %numcells.addr, align 4, !tbaa !8
  %203 = load i32, ptr %childcount, align 4, !tbaa !8
  %204 = load i32, ptr @n, align 4, !tbaa !8
  call void %193(ptr noundef %194, ptr noundef %195, i32 noundef %196, ptr noundef %197, ptr noundef %198, i32 noundef %199, i32 noundef %200, i32 noundef %201, i32 noundef %202, i32 noundef %203, i32 noundef %204)
  br label %if.end144

if.end144:                                        ; preds = %if.then143, %if.end140
  %205 = load i32, ptr %level.addr, align 4, !tbaa !8
  %sub145 = sub nsw i32 %205, 1
  store i32 %sub145, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end144, %if.then108, %if.end65, %if.then63
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcnode_this) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcell) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %refcode) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %qinvar) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %childcount) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %tc) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %tcellsize) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %rtnlevel) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %tv1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %tv) #7
  %206 = load i32, ptr %retval, align 4
  ret i32 %206
}

declare void @nautil_freedyn() #2

; Function Attrs: nounwind uwtable
define void @nauty_freedyn() #0 {
entry:
  %tcp = alloca ptr, align 8
  %tcq = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcq) #7
  %0 = load ptr, ptr @tcnode0, align 8, !tbaa !39
  store ptr %0, ptr %tcp, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %tcp, align 8, !tbaa !4
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %tcp, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.tcnode_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next, align 8, !tbaa !39
  store ptr %3, ptr %tcq, align 8, !tbaa !4
  %4 = load ptr, ptr %tcp, align 8, !tbaa !4
  %tcellptr = getelementptr inbounds %struct.tcnode_struct, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %tcellptr, align 8, !tbaa !41
  call void @free(ptr noundef %5) #7
  %6 = load ptr, ptr %tcp, align 8, !tbaa !4
  call void @free(ptr noundef %6) #7
  %7 = load ptr, ptr %tcq, align 8, !tbaa !4
  store ptr %7, ptr %tcp, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !78

while.end:                                        ; preds = %while.cond
  store i32 0, ptr @alloc_m, align 4, !tbaa !8
  store ptr null, ptr @tcnode0, align 8, !tbaa !39
  %8 = load ptr, ptr @firsttc, align 8, !tbaa !4
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %9 = load ptr, ptr @firsttc, align 8, !tbaa !4
  call void @free(ptr noundef %9) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  store ptr null, ptr @firsttc, align 8, !tbaa !4
  store i64 0, ptr @firsttc_sz, align 8, !tbaa !38
  %10 = load ptr, ptr @canoncode, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %10, null
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %11 = load ptr, ptr @canoncode, align 8, !tbaa !4
  call void @free(ptr noundef %11) #7
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  store ptr null, ptr @canoncode, align 8, !tbaa !4
  store i64 0, ptr @canoncode_sz, align 8, !tbaa !38
  %12 = load ptr, ptr @firstcode, align 8, !tbaa !4
  %tobool4 = icmp ne ptr %12, null
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %13 = load ptr, ptr @firstcode, align 8, !tbaa !4
  call void @free(ptr noundef %13) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  store ptr null, ptr @firstcode, align 8, !tbaa !4
  store i64 0, ptr @firstcode_sz, align 8, !tbaa !38
  %14 = load ptr, ptr @workperm, align 8, !tbaa !4
  %tobool7 = icmp ne ptr %14, null
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %15 = load ptr, ptr @workperm, align 8, !tbaa !4
  call void @free(ptr noundef %15) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  store ptr null, ptr @workperm, align 8, !tbaa !4
  store i64 0, ptr @workperm_sz, align 8, !tbaa !38
  %16 = load ptr, ptr @canonlab, align 8, !tbaa !4
  %tobool10 = icmp ne ptr %16, null
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  %17 = load ptr, ptr @canonlab, align 8, !tbaa !4
  call void @free(ptr noundef %17) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9
  store ptr null, ptr @canonlab, align 8, !tbaa !4
  store i64 0, ptr @canonlab_sz, align 8, !tbaa !38
  %18 = load ptr, ptr @firstlab, align 8, !tbaa !4
  %tobool13 = icmp ne ptr %18, null
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  %19 = load ptr, ptr @firstlab, align 8, !tbaa !4
  call void @free(ptr noundef %19) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12
  store ptr null, ptr @firstlab, align 8, !tbaa !4
  store i64 0, ptr @firstlab_sz, align 8, !tbaa !38
  %20 = load ptr, ptr @defltwork, align 8, !tbaa !4
  %tobool16 = icmp ne ptr %20, null
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  %21 = load ptr, ptr @defltwork, align 8, !tbaa !4
  call void @free(ptr noundef %21) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15
  store ptr null, ptr @defltwork, align 8, !tbaa !4
  store i64 0, ptr @defltwork_sz, align 8, !tbaa !38
  %22 = load ptr, ptr @fixedpts, align 8, !tbaa !4
  %tobool19 = icmp ne ptr %22, null
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end18
  %23 = load ptr, ptr @fixedpts, align 8, !tbaa !4
  call void @free(ptr noundef %23) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18
  store ptr null, ptr @fixedpts, align 8, !tbaa !4
  store i64 0, ptr @fixedpts_sz, align 8, !tbaa !38
  %24 = load ptr, ptr @active, align 8, !tbaa !4
  %tobool22 = icmp ne ptr %24, null
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end21
  %25 = load ptr, ptr @active, align 8, !tbaa !4
  call void @free(ptr noundef %25) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end21
  store ptr null, ptr @active, align 8, !tbaa !4
  store i64 0, ptr @active_sz, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcq) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp) #7
  ret void
}

declare void @freeschreier(ptr noundef, ptr noundef) #2

declare void @schreier_freedyn() #2

; Function Attrs: nounwind uwtable
define void @nauty_check(i32 noundef %wordsize, i32 noundef %m, i32 noundef %n, i32 noundef %version) #0 {
entry:
  %wordsize.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %version.addr = alloca i32, align 4
  store i32 %wordsize, ptr %wordsize.addr, align 4, !tbaa !8
  store i32 %m, ptr %m.addr, align 4, !tbaa !8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  store i32 %version, ptr %version.addr, align 4, !tbaa !8
  %0 = load i32, ptr %wordsize.addr, align 4, !tbaa !8
  %cmp = icmp ne i32 %0, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.7)
  call void @exit(i32 noundef 1) #8
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %version.addr, align 4, !tbaa !8
  %cmp1 = icmp slt i32 %2, 26040
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.8)
  call void @exit(i32 noundef 1) #8
  unreachable

if.end4:                                          ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @extra_autom(ptr noundef %p, i32 noundef %n) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  %0 = load i32, ptr @writeautoms, align 4, !tbaa !8
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @outfile, align 8, !tbaa !4
  %2 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %3 = load i32, ptr @cartesian, align 4, !tbaa !8
  %4 = load i32, ptr @linelength, align 4, !tbaa !8
  %5 = load i32, ptr %n.addr, align 4, !tbaa !8
  call void @writeperm(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr @orbits, align 8, !tbaa !4
  %7 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %8 = load i32, ptr %n.addr, align 4, !tbaa !8
  %call = call i32 @orbjoin(ptr noundef %6, ptr noundef %7, i32 noundef %8)
  %9 = load ptr, ptr @stats, align 8, !tbaa !4
  %numorbits = getelementptr inbounds %struct.statsblk, ptr %9, i32 0, i32 2
  store i32 %call, ptr %numorbits, align 4, !tbaa !26
  %10 = load ptr, ptr @stats, align 8, !tbaa !4
  %numgenerators = getelementptr inbounds %struct.statsblk, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %numgenerators, align 8, !tbaa !27
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %numgenerators, align 8, !tbaa !27
  %12 = load ptr, ptr @userautomproc, align 8, !tbaa !4
  %cmp = icmp ne ptr %12, null
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  %13 = load ptr, ptr @userautomproc, align 8, !tbaa !4
  %14 = load ptr, ptr @stats, align 8, !tbaa !4
  %numgenerators2 = getelementptr inbounds %struct.statsblk, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %numgenerators2, align 8, !tbaa !27
  %16 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %17 = load ptr, ptr @orbits, align 8, !tbaa !4
  %18 = load ptr, ptr @stats, align 8, !tbaa !4
  %numorbits3 = getelementptr inbounds %struct.statsblk, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %numorbits3, align 4, !tbaa !26
  %20 = load i32, ptr @stabvertex, align 4, !tbaa !8
  %21 = load i32, ptr %n.addr, align 4, !tbaa !8
  call void %13(i32 noundef %15, ptr noundef %16, ptr noundef %17, i32 noundef %19, i32 noundef %20, i32 noundef %21)
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end
  ret void
}

declare void @writeperm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @orbjoin(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define void @extra_level(i32 noundef %level, ptr noundef %lab, ptr noundef %ptn, i32 noundef %numcells, i32 noundef %tv1, i32 noundef %index, i32 noundef %tcellsize, i32 noundef %childcount, i32 noundef %n) #0 {
entry:
  %level.addr = alloca i32, align 4
  %lab.addr = alloca ptr, align 8
  %ptn.addr = alloca ptr, align 8
  %numcells.addr = alloca i32, align 4
  %tv1.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %tcellsize.addr = alloca i32, align 4
  %childcount.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %level, ptr %level.addr, align 4, !tbaa !8
  store ptr %lab, ptr %lab.addr, align 8, !tbaa !4
  store ptr %ptn, ptr %ptn.addr, align 8, !tbaa !4
  store i32 %numcells, ptr %numcells.addr, align 4, !tbaa !8
  store i32 %tv1, ptr %tv1.addr, align 4, !tbaa !8
  store i32 %index, ptr %index.addr, align 4, !tbaa !8
  store i32 %tcellsize, ptr %tcellsize.addr, align 4, !tbaa !8
  store i32 %childcount, ptr %childcount.addr, align 4, !tbaa !8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  %0 = load i32, ptr %index.addr, align 4, !tbaa !8
  %conv = sitofp i32 %0 to double
  %1 = load ptr, ptr @stats, align 8, !tbaa !4
  %grpsize1 = getelementptr inbounds %struct.statsblk, ptr %1, i32 0, i32 0
  %2 = load double, ptr %grpsize1, align 8, !tbaa !24
  %mul = fmul double %2, %conv
  store double %mul, ptr %grpsize1, align 8, !tbaa !24
  %cmp = fcmp oge double %mul, 1.000000e+10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @stats, align 8, !tbaa !4
  %grpsize12 = getelementptr inbounds %struct.statsblk, ptr %3, i32 0, i32 0
  %4 = load double, ptr %grpsize12, align 8, !tbaa !24
  %div = fdiv double %4, 1.000000e+10
  store double %div, ptr %grpsize12, align 8, !tbaa !24
  %5 = load ptr, ptr @stats, align 8, !tbaa !4
  %grpsize2 = getelementptr inbounds %struct.statsblk, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %grpsize2, align 8, !tbaa !25
  %add = add nsw i32 %6, 10
  store i32 %add, ptr %grpsize2, align 8, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr @domarkers, align 4, !tbaa !8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %8 = load i32, ptr %level.addr, align 4, !tbaa !8
  %9 = load i32, ptr %tv1.addr, align 4, !tbaa !8
  %10 = load i32, ptr %index.addr, align 4, !tbaa !8
  %11 = load i32, ptr %tcellsize.addr, align 4, !tbaa !8
  %12 = load ptr, ptr @stats, align 8, !tbaa !4
  %numorbits = getelementptr inbounds %struct.statsblk, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %numorbits, align 4, !tbaa !26
  %14 = load i32, ptr %numcells.addr, align 4, !tbaa !8
  call void @writemarker(i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %13, i32 noundef %14)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %15 = load ptr, ptr @userlevelproc, align 8, !tbaa !4
  %cmp5 = icmp ne ptr %15, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  %16 = load ptr, ptr @userlevelproc, align 8, !tbaa !4
  %17 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %19 = load i32, ptr %level.addr, align 4, !tbaa !8
  %20 = load ptr, ptr @orbits, align 8, !tbaa !4
  %21 = load ptr, ptr @stats, align 8, !tbaa !4
  %22 = load i32, ptr %tv1.addr, align 4, !tbaa !8
  %23 = load i32, ptr %index.addr, align 4, !tbaa !8
  %24 = load i32, ptr %tcellsize.addr, align 4, !tbaa !8
  %25 = load i32, ptr %numcells.addr, align 4, !tbaa !8
  %26 = load i32, ptr %childcount.addr, align 4, !tbaa !8
  %27 = load i32, ptr %n.addr, align 4, !tbaa !8
  call void %16(ptr noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef %20, ptr noundef %21, i32 noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26, i32 noundef %27)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @writemarker(i32 noundef %level, i32 noundef %tv, i32 noundef %index, i32 noundef %tcellsize, i32 noundef %numorbits, i32 noundef %numcells) #0 {
entry:
  %level.addr = alloca i32, align 4
  %tv.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %tcellsize.addr = alloca i32, align 4
  %numorbits.addr = alloca i32, align 4
  %numcells.addr = alloca i32, align 4
  %s = alloca [30 x i8], align 16
  store i32 %level, ptr %level.addr, align 4, !tbaa !8
  store i32 %tv, ptr %tv.addr, align 4, !tbaa !8
  store i32 %index, ptr %index.addr, align 4, !tbaa !8
  store i32 %tcellsize, ptr %tcellsize.addr, align 4, !tbaa !8
  store i32 %numorbits, ptr %numorbits.addr, align 4, !tbaa !8
  store i32 %numcells, ptr %numcells.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 30, ptr %s) #7
  %0 = load ptr, ptr @outfile, align 8, !tbaa !4
  call void @putstring(ptr noundef %0, ptr noundef @.str.10)
  %1 = load i32, ptr %level.addr, align 4, !tbaa !8
  %arraydecay = getelementptr inbounds [30 x i8], ptr %s, i64 0, i64 0
  %call = call i32 @itos(i32 noundef %1, ptr noundef %arraydecay)
  %2 = load ptr, ptr @outfile, align 8, !tbaa !4
  %arraydecay1 = getelementptr inbounds [30 x i8], ptr %s, i64 0, i64 0
  call void @putstring(ptr noundef %2, ptr noundef %arraydecay1)
  %3 = load ptr, ptr @outfile, align 8, !tbaa !4
  call void @putstring(ptr noundef %3, ptr noundef @.str.11)
  %4 = load i32, ptr %numcells.addr, align 4, !tbaa !8
  %5 = load i32, ptr %numorbits.addr, align 4, !tbaa !8
  %cmp = icmp ne i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %numcells.addr, align 4, !tbaa !8
  %arraydecay2 = getelementptr inbounds [30 x i8], ptr %s, i64 0, i64 0
  %call3 = call i32 @itos(i32 noundef %6, ptr noundef %arraydecay2)
  %7 = load ptr, ptr @outfile, align 8, !tbaa !4
  %arraydecay4 = getelementptr inbounds [30 x i8], ptr %s, i64 0, i64 0
  call void @putstring(ptr noundef %7, ptr noundef %arraydecay4)
  %8 = load ptr, ptr @outfile, align 8, !tbaa !4
  call void @putstring(ptr noundef %8, ptr noundef @.str.12)
  %9 = load i32, ptr %numcells.addr, align 4, !tbaa !8
  %cmp5 = icmp eq i32 %9, 1
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %10 = load ptr, ptr @outfile, align 8, !tbaa !4
  call void @putstring(ptr noundef %10, ptr noundef @.str.13)
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load ptr, ptr @outfile, align 8, !tbaa !4
  call void @putstring(ptr noundef %11, ptr noundef @.str.14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %12 = load i32, ptr %numorbits.addr, align 4, !tbaa !8
  %arraydecay8 = getelementptr inbounds [30 x i8], ptr %s, i64 0, i64 0
  %call9 = call i32 @itos(i32 noundef %12, ptr noundef %arraydecay8)
  %13 = load ptr, ptr @outfile, align 8, !tbaa !4
  %arraydecay10 = getelementptr inbounds [30 x i8], ptr %s, i64 0, i64 0
  call void @putstring(ptr noundef %13, ptr noundef %arraydecay10)
  %14 = load ptr, ptr @outfile, align 8, !tbaa !4
  call void @putstring(ptr noundef %14, ptr noundef @.str.15)
  %15 = load i32, ptr %numorbits.addr, align 4, !tbaa !8
  %cmp11 = icmp eq i32 %15, 1
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.end7
  %16 = load ptr, ptr @outfile, align 8, !tbaa !4
  call void @putstring(ptr noundef %16, ptr noundef @.str.13)
  br label %if.end14

if.else13:                                        ; preds = %if.end7
  %17 = load ptr, ptr @outfile, align 8, !tbaa !4
  call void @putstring(ptr noundef %17, ptr noundef @.str.14)
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then12
  %18 = load i32, ptr %tv.addr, align 4, !tbaa !8
  %19 = load i32, ptr @labelorg, align 4, !tbaa !8
  %add = add nsw i32 %18, %19
  %arraydecay15 = getelementptr inbounds [30 x i8], ptr %s, i64 0, i64 0
  %call16 = call i32 @itos(i32 noundef %add, ptr noundef %arraydecay15)
  %20 = load ptr, ptr @outfile, align 8, !tbaa !4
  %arraydecay17 = getelementptr inbounds [30 x i8], ptr %s, i64 0, i64 0
  call void @putstring(ptr noundef %20, ptr noundef %arraydecay17)
  %21 = load ptr, ptr @outfile, align 8, !tbaa !4
  call void @putstring(ptr noundef %21, ptr noundef @.str.16)
  %22 = load i32, ptr %index.addr, align 4, !tbaa !8
  %arraydecay18 = getelementptr inbounds [30 x i8], ptr %s, i64 0, i64 0
  %call19 = call i32 @itos(i32 noundef %22, ptr noundef %arraydecay18)
  %23 = load ptr, ptr @outfile, align 8, !tbaa !4
  %arraydecay20 = getelementptr inbounds [30 x i8], ptr %s, i64 0, i64 0
  call void @putstring(ptr noundef %23, ptr noundef %arraydecay20)
  %24 = load i32, ptr %tcellsize.addr, align 4, !tbaa !8
  %25 = load i32, ptr %index.addr, align 4, !tbaa !8
  %cmp21 = icmp ne i32 %24, %25
  br i1 %cmp21, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.end14
  %26 = load ptr, ptr @outfile, align 8, !tbaa !4
  call void @putstring(ptr noundef %26, ptr noundef @.str.17)
  %27 = load i32, ptr %tcellsize.addr, align 4, !tbaa !8
  %arraydecay23 = getelementptr inbounds [30 x i8], ptr %s, i64 0, i64 0
  %call24 = call i32 @itos(i32 noundef %27, ptr noundef %arraydecay23)
  %28 = load ptr, ptr @outfile, align 8, !tbaa !4
  %arraydecay25 = getelementptr inbounds [30 x i8], ptr %s, i64 0, i64 0
  call void @putstring(ptr noundef %28, ptr noundef %arraydecay25)
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end14
  %29 = load ptr, ptr @outfile, align 8, !tbaa !4
  call void @putstring(ptr noundef %29, ptr noundef @.str.18)
  call void @llvm.lifetime.end.p0(i64 30, ptr %s) #7
  ret void
}

declare void @doref(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare void @maketargetcell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @firstterminal(ptr noundef %lab, i32 noundef %level) #0 {
entry:
  %lab.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %lab, ptr %lab.addr, align 8, !tbaa !4
  store i32 %level, ptr %level.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  %0 = load i32, ptr %level.addr, align 4, !tbaa !8
  %1 = load ptr, ptr @stats, align 8, !tbaa !4
  %maxlevel = getelementptr inbounds %struct.statsblk, ptr %1, i32 0, i32 7
  store i32 %0, ptr %maxlevel, align 8, !tbaa !30
  %2 = load i32, ptr %level.addr, align 4, !tbaa !8
  store i32 %2, ptr @eqlev_first, align 4, !tbaa !8
  store i32 %2, ptr @allsamelevel, align 4, !tbaa !8
  store i32 %2, ptr @gca_first, align 4, !tbaa !8
  %3 = load ptr, ptr @firstcode, align 8, !tbaa !4
  %4 = load i32, ptr %level.addr, align 4, !tbaa !8
  %add = add nsw i32 %4, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16, ptr %3, i64 %idxprom
  store i16 32767, ptr %arrayidx, align 2, !tbaa !75
  %5 = load ptr, ptr @firsttc, align 8, !tbaa !4
  %6 = load i32, ptr %level.addr, align 4, !tbaa !8
  %add1 = add nsw i32 %6, 1
  %idxprom2 = sext i32 %add1 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %5, i64 %idxprom2
  store i32 -1, ptr %arrayidx3, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, ptr %i, align 4, !tbaa !8
  %8 = load i32, ptr @n, align 4, !tbaa !8
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %10 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %9, i64 %idxprom4
  %11 = load i32, ptr %arrayidx5, align 4, !tbaa !8
  %12 = load ptr, ptr @firstlab, align 8, !tbaa !4
  %13 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %12, i64 %idxprom6
  store i32 %11, ptr %arrayidx7, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  %15 = load i32, ptr @getcanon, align 4, !tbaa !8
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %16 = load i32, ptr %level.addr, align 4, !tbaa !8
  store i32 %16, ptr @gca_canon, align 4, !tbaa !8
  store i32 %16, ptr @eqlev_canon, align 4, !tbaa !8
  store i32 %16, ptr @canonlevel, align 4, !tbaa !8
  store i32 0, ptr @comp_canon, align 4, !tbaa !8
  store i32 0, ptr @samerows, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc15, %if.then
  %17 = load i32, ptr %i, align 4, !tbaa !8
  %18 = load i32, ptr @n, align 4, !tbaa !8
  %cmp9 = icmp slt i32 %17, %18
  br i1 %cmp9, label %for.body10, label %for.end17

for.body10:                                       ; preds = %for.cond8
  %19 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %20 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom11 = sext i32 %20 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %19, i64 %idxprom11
  %21 = load i32, ptr %arrayidx12, align 4, !tbaa !8
  %22 = load ptr, ptr @canonlab, align 8, !tbaa !4
  %23 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom13 = sext i32 %23 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %22, i64 %idxprom13
  store i32 %21, ptr %arrayidx14, align 4, !tbaa !8
  br label %for.inc15

for.inc15:                                        ; preds = %for.body10
  %24 = load i32, ptr %i, align 4, !tbaa !8
  %inc16 = add nsw i32 %24, 1
  store i32 %inc16, ptr %i, align 4, !tbaa !8
  br label %for.cond8, !llvm.loop !80

for.end17:                                        ; preds = %for.cond8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc25, %for.end17
  %25 = load i32, ptr %i, align 4, !tbaa !8
  %26 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp19 = icmp sle i32 %25, %26
  br i1 %cmp19, label %for.body20, label %for.end27

for.body20:                                       ; preds = %for.cond18
  %27 = load ptr, ptr @firstcode, align 8, !tbaa !4
  %28 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom21 = sext i32 %28 to i64
  %arrayidx22 = getelementptr inbounds i16, ptr %27, i64 %idxprom21
  %29 = load i16, ptr %arrayidx22, align 2, !tbaa !75
  %30 = load ptr, ptr @canoncode, align 8, !tbaa !4
  %31 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom23 = sext i32 %31 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %30, i64 %idxprom23
  store i16 %29, ptr %arrayidx24, align 2, !tbaa !75
  br label %for.inc25

for.inc25:                                        ; preds = %for.body20
  %32 = load i32, ptr %i, align 4, !tbaa !8
  %inc26 = add nsw i32 %32, 1
  store i32 %inc26, ptr %i, align 4, !tbaa !8
  br label %for.cond18, !llvm.loop !81

for.end27:                                        ; preds = %for.cond18
  %33 = load ptr, ptr @canoncode, align 8, !tbaa !4
  %34 = load i32, ptr %level.addr, align 4, !tbaa !8
  %add28 = add nsw i32 %34, 1
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds i16, ptr %33, i64 %idxprom29
  store i16 32767, ptr %arrayidx30, align 2, !tbaa !75
  %35 = load ptr, ptr @stats, align 8, !tbaa !4
  %canupdates = getelementptr inbounds %struct.statsblk, ptr %35, i32 0, i32 9
  store i64 1, ptr %canupdates, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %for.end27, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret void
}

declare i32 @nextelement(ptr noundef, i32 noundef, i32 noundef) #2

declare void @breakout(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @othernode0(ptr noundef %lab, ptr noundef %ptn, i32 noundef %level, i32 noundef %numcells, ptr noundef %tcnode_parent) #0 {
entry:
  %retval = alloca i32, align 4
  %lab.addr = alloca ptr, align 8
  %ptn.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %numcells.addr = alloca i32, align 4
  %tcnode_parent.addr = alloca ptr, align 8
  %tv = alloca i32, align 4
  %tv1 = alloca i32, align 4
  %refcode = alloca i32, align 4
  %rtnlevel = alloca i32, align 4
  %tcellsize = alloca i32, align 4
  %tc = alloca i32, align 4
  %qinvar = alloca i32, align 4
  %code = alloca i16, align 2
  %tcell = alloca ptr, align 8
  %tcnode_this = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lab, ptr %lab.addr, align 8, !tbaa !4
  store ptr %ptn, ptr %ptn.addr, align 8, !tbaa !4
  store i32 %level, ptr %level.addr, align 4, !tbaa !8
  store i32 %numcells, ptr %numcells.addr, align 4, !tbaa !8
  store ptr %tcnode_parent, ptr %tcnode_parent.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tv) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %tv1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %refcode) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %rtnlevel) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %tcellsize) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %tc) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %qinvar) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr %code) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcell) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcnode_this) #7
  %0 = load ptr, ptr %tcnode_parent.addr, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.tcnode_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %next, align 8, !tbaa !39
  store ptr %1, ptr %tcnode_this, align 8, !tbaa !4
  %2 = load ptr, ptr %tcnode_this, align 8, !tbaa !4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %call = call noalias ptr @malloc(i64 noundef 16) #9
  store ptr %call, ptr %tcnode_this, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i32, ptr @alloc_m, align 4, !tbaa !8
  %conv = sext i32 %3 to i64
  %mul = mul i64 %conv, 4
  %call2 = call noalias ptr @malloc(i64 noundef %mul) #9
  %4 = load ptr, ptr %tcnode_this, align 8, !tbaa !4
  %tcellptr = getelementptr inbounds %struct.tcnode_struct, ptr %4, i32 0, i32 1
  store ptr %call2, ptr %tcellptr, align 8, !tbaa !41
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %lor.lhs.false, %if.then
  call void @alloc_error(ptr noundef @.str.9)
  br label %if.end

if.end:                                           ; preds = %if.then5, %lor.lhs.false
  %5 = load ptr, ptr %tcnode_this, align 8, !tbaa !4
  %6 = load ptr, ptr %tcnode_parent.addr, align 8, !tbaa !4
  %next6 = getelementptr inbounds %struct.tcnode_struct, ptr %6, i32 0, i32 0
  store ptr %5, ptr %next6, align 8, !tbaa !39
  %7 = load ptr, ptr %tcnode_this, align 8, !tbaa !4
  %next7 = getelementptr inbounds %struct.tcnode_struct, ptr %7, i32 0, i32 0
  store ptr null, ptr %next7, align 8, !tbaa !39
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %8 = load ptr, ptr %tcnode_this, align 8, !tbaa !4
  %tcellptr9 = getelementptr inbounds %struct.tcnode_struct, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %tcellptr9, align 8, !tbaa !41
  store ptr %9, ptr %tcell, align 8, !tbaa !4
  %10 = load volatile i32, ptr @nauty_kill_request, align 4, !tbaa !8
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  store i32 -12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %11 = load ptr, ptr @stats, align 8, !tbaa !4
  %numnodes = getelementptr inbounds %struct.statsblk, ptr %11, i32 0, i32 5
  %12 = load i64, ptr %numnodes, align 8, !tbaa !28
  %inc = add i64 %12, 1
  store i64 %inc, ptr %numnodes, align 8, !tbaa !28
  %13 = load ptr, ptr @g, align 8, !tbaa !4
  %14 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %16 = load i32, ptr %level.addr, align 4, !tbaa !8
  %17 = load ptr, ptr @workperm, align 8, !tbaa !4
  %18 = load ptr, ptr @active, align 8, !tbaa !4
  %19 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 3), align 8, !tbaa !14
  %20 = load ptr, ptr @invarproc, align 8, !tbaa !4
  %21 = load i32, ptr @mininvarlevel, align 4, !tbaa !8
  %22 = load i32, ptr @maxinvarlevel, align 4, !tbaa !8
  %23 = load i32, ptr @invararg, align 4, !tbaa !8
  %24 = load i32, ptr @digraph, align 4, !tbaa !8
  %25 = load i32, ptr @m, align 4, !tbaa !8
  %26 = load i32, ptr @n, align 4, !tbaa !8
  call void @doref(ptr noundef %13, ptr noundef %14, ptr noundef %15, i32 noundef %16, ptr noundef %numcells.addr, ptr noundef %qinvar, ptr noundef %17, ptr noundef %18, ptr noundef %refcode, ptr noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26)
  %27 = load i32, ptr %refcode, align 4, !tbaa !8
  %conv12 = trunc i32 %27 to i16
  store i16 %conv12, ptr %code, align 2, !tbaa !75
  %28 = load i32, ptr %qinvar, align 4, !tbaa !8
  %cmp13 = icmp sgt i32 %28, 0
  br i1 %cmp13, label %if.then15, label %if.end26

if.then15:                                        ; preds = %if.end11
  %29 = load i64, ptr @invapplics, align 8, !tbaa !38
  %inc16 = add i64 %29, 1
  store i64 %inc16, ptr @invapplics, align 8, !tbaa !38
  %30 = load i32, ptr %qinvar, align 4, !tbaa !8
  %cmp17 = icmp eq i32 %30, 2
  br i1 %cmp17, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.then15
  %31 = load i64, ptr @invsuccesses, align 8, !tbaa !38
  %inc20 = add i64 %31, 1
  store i64 %inc20, ptr @invsuccesses, align 8, !tbaa !38
  %32 = load i32, ptr %level.addr, align 4, !tbaa !8
  %33 = load i32, ptr @invarsuclevel, align 4, !tbaa !8
  %cmp21 = icmp slt i32 %32, %33
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then19
  %34 = load i32, ptr %level.addr, align 4, !tbaa !8
  store i32 %34, ptr @invarsuclevel, align 4, !tbaa !8
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then19
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then15
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end11
  %35 = load i32, ptr @eqlev_first, align 4, !tbaa !8
  %36 = load i32, ptr %level.addr, align 4, !tbaa !8
  %sub = sub nsw i32 %36, 1
  %cmp27 = icmp eq i32 %35, %sub
  br i1 %cmp27, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %if.end26
  %37 = load i16, ptr %code, align 2, !tbaa !75
  %conv29 = sext i16 %37 to i32
  %38 = load ptr, ptr @firstcode, align 8, !tbaa !4
  %39 = load i32, ptr %level.addr, align 4, !tbaa !8
  %idxprom = sext i32 %39 to i64
  %arrayidx = getelementptr inbounds i16, ptr %38, i64 %idxprom
  %40 = load i16, ptr %arrayidx, align 2, !tbaa !75
  %conv30 = sext i16 %40 to i32
  %cmp31 = icmp eq i32 %conv29, %conv30
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %land.lhs.true
  %41 = load i32, ptr %level.addr, align 4, !tbaa !8
  store i32 %41, ptr @eqlev_first, align 4, !tbaa !8
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %land.lhs.true, %if.end26
  %42 = load i32, ptr @getcanon, align 4, !tbaa !8
  %tobool35 = icmp ne i32 %42, 0
  br i1 %tobool35, label %if.then36, label %if.end65

if.then36:                                        ; preds = %if.end34
  %43 = load i32, ptr @eqlev_canon, align 4, !tbaa !8
  %44 = load i32, ptr %level.addr, align 4, !tbaa !8
  %sub37 = sub nsw i32 %44, 1
  %cmp38 = icmp eq i32 %43, %sub37
  br i1 %cmp38, label %if.then40, label %if.end58

if.then40:                                        ; preds = %if.then36
  %45 = load i16, ptr %code, align 2, !tbaa !75
  %conv41 = sext i16 %45 to i32
  %46 = load ptr, ptr @canoncode, align 8, !tbaa !4
  %47 = load i32, ptr %level.addr, align 4, !tbaa !8
  %idxprom42 = sext i32 %47 to i64
  %arrayidx43 = getelementptr inbounds i16, ptr %46, i64 %idxprom42
  %48 = load i16, ptr %arrayidx43, align 2, !tbaa !75
  %conv44 = sext i16 %48 to i32
  %cmp45 = icmp slt i32 %conv41, %conv44
  br i1 %cmp45, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.then40
  store i32 -1, ptr @comp_canon, align 4, !tbaa !8
  br label %if.end57

if.else:                                          ; preds = %if.then40
  %49 = load i16, ptr %code, align 2, !tbaa !75
  %conv48 = sext i16 %49 to i32
  %50 = load ptr, ptr @canoncode, align 8, !tbaa !4
  %51 = load i32, ptr %level.addr, align 4, !tbaa !8
  %idxprom49 = sext i32 %51 to i64
  %arrayidx50 = getelementptr inbounds i16, ptr %50, i64 %idxprom49
  %52 = load i16, ptr %arrayidx50, align 2, !tbaa !75
  %conv51 = sext i16 %52 to i32
  %cmp52 = icmp sgt i32 %conv48, %conv51
  br i1 %cmp52, label %if.then54, label %if.else55

if.then54:                                        ; preds = %if.else
  store i32 1, ptr @comp_canon, align 4, !tbaa !8
  br label %if.end56

if.else55:                                        ; preds = %if.else
  store i32 0, ptr @comp_canon, align 4, !tbaa !8
  %53 = load i32, ptr %level.addr, align 4, !tbaa !8
  store i32 %53, ptr @eqlev_canon, align 4, !tbaa !8
  br label %if.end56

if.end56:                                         ; preds = %if.else55, %if.then54
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then47
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then36
  %54 = load i32, ptr @comp_canon, align 4, !tbaa !8
  %cmp59 = icmp sgt i32 %54, 0
  br i1 %cmp59, label %if.then61, label %if.end64

if.then61:                                        ; preds = %if.end58
  %55 = load i16, ptr %code, align 2, !tbaa !75
  %56 = load ptr, ptr @canoncode, align 8, !tbaa !4
  %57 = load i32, ptr %level.addr, align 4, !tbaa !8
  %idxprom62 = sext i32 %57 to i64
  %arrayidx63 = getelementptr inbounds i16, ptr %56, i64 %idxprom62
  store i16 %55, ptr %arrayidx63, align 2, !tbaa !75
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end58
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end34
  store i32 -1, ptr %tc, align 4, !tbaa !8
  %58 = load i32, ptr %numcells.addr, align 4, !tbaa !8
  %59 = load i32, ptr @n, align 4, !tbaa !8
  %cmp66 = icmp slt i32 %58, %59
  br i1 %cmp66, label %land.lhs.true68, label %if.end94

land.lhs.true68:                                  ; preds = %if.end65
  %60 = load i32, ptr @eqlev_first, align 4, !tbaa !8
  %61 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp69 = icmp eq i32 %60, %61
  br i1 %cmp69, label %if.then76, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %land.lhs.true68
  %62 = load i32, ptr @getcanon, align 4, !tbaa !8
  %tobool72 = icmp ne i32 %62, 0
  br i1 %tobool72, label %land.lhs.true73, label %if.end94

land.lhs.true73:                                  ; preds = %lor.lhs.false71
  %63 = load i32, ptr @comp_canon, align 4, !tbaa !8
  %cmp74 = icmp sge i32 %63, 0
  br i1 %cmp74, label %if.then76, label %if.end94

if.then76:                                        ; preds = %land.lhs.true73, %land.lhs.true68
  %64 = load i32, ptr @getcanon, align 4, !tbaa !8
  %tobool77 = icmp ne i32 %64, 0
  br i1 %tobool77, label %lor.lhs.false78, label %if.then81

lor.lhs.false78:                                  ; preds = %if.then76
  %65 = load i32, ptr @comp_canon, align 4, !tbaa !8
  %cmp79 = icmp slt i32 %65, 0
  br i1 %cmp79, label %if.then81, label %if.else91

if.then81:                                        ; preds = %lor.lhs.false78, %if.then76
  %66 = load ptr, ptr @g, align 8, !tbaa !4
  %67 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %68 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %69 = load i32, ptr %level.addr, align 4, !tbaa !8
  %70 = load ptr, ptr %tcell, align 8, !tbaa !4
  %71 = load i32, ptr @tc_level, align 4, !tbaa !8
  %72 = load i32, ptr @digraph, align 4, !tbaa !8
  %73 = load ptr, ptr @firsttc, align 8, !tbaa !4
  %74 = load i32, ptr %level.addr, align 4, !tbaa !8
  %idxprom82 = sext i32 %74 to i64
  %arrayidx83 = getelementptr inbounds i32, ptr %73, i64 %idxprom82
  %75 = load i32, ptr %arrayidx83, align 4, !tbaa !8
  %76 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 6), align 8, !tbaa !18
  %77 = load i32, ptr @m, align 4, !tbaa !8
  %78 = load i32, ptr @n, align 4, !tbaa !8
  call void @maketargetcell(ptr noundef %66, ptr noundef %67, ptr noundef %68, i32 noundef %69, ptr noundef %70, ptr noundef %tcellsize, ptr noundef %tc, i32 noundef %71, i32 noundef %72, i32 noundef %75, ptr noundef %76, i32 noundef %77, i32 noundef %78)
  %79 = load i32, ptr %tc, align 4, !tbaa !8
  %80 = load ptr, ptr @firsttc, align 8, !tbaa !4
  %81 = load i32, ptr %level.addr, align 4, !tbaa !8
  %idxprom84 = sext i32 %81 to i64
  %arrayidx85 = getelementptr inbounds i32, ptr %80, i64 %idxprom84
  %82 = load i32, ptr %arrayidx85, align 4, !tbaa !8
  %cmp86 = icmp ne i32 %79, %82
  br i1 %cmp86, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.then81
  %83 = load i32, ptr %level.addr, align 4, !tbaa !8
  %sub89 = sub nsw i32 %83, 1
  store i32 %sub89, ptr @eqlev_first, align 4, !tbaa !8
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.then81
  br label %if.end92

if.else91:                                        ; preds = %lor.lhs.false78
  %84 = load ptr, ptr @g, align 8, !tbaa !4
  %85 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %86 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %87 = load i32, ptr %level.addr, align 4, !tbaa !8
  %88 = load ptr, ptr %tcell, align 8, !tbaa !4
  %89 = load i32, ptr @tc_level, align 4, !tbaa !8
  %90 = load i32, ptr @digraph, align 4, !tbaa !8
  %91 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 6), align 8, !tbaa !18
  %92 = load i32, ptr @m, align 4, !tbaa !8
  %93 = load i32, ptr @n, align 4, !tbaa !8
  call void @maketargetcell(ptr noundef %84, ptr noundef %85, ptr noundef %86, i32 noundef %87, ptr noundef %88, ptr noundef %tcellsize, ptr noundef %tc, i32 noundef %89, i32 noundef %90, i32 noundef -1, ptr noundef %91, i32 noundef %92, i32 noundef %93)
  br label %if.end92

if.end92:                                         ; preds = %if.else91, %if.end90
  %94 = load i32, ptr %tcellsize, align 4, !tbaa !8
  %conv93 = sext i32 %94 to i64
  %95 = load ptr, ptr @stats, align 8, !tbaa !4
  %tctotal = getelementptr inbounds %struct.statsblk, ptr %95, i32 0, i32 8
  %96 = load i64, ptr %tctotal, align 8, !tbaa !31
  %add = add i64 %96, %conv93
  store i64 %add, ptr %tctotal, align 8, !tbaa !31
  br label %if.end94

if.end94:                                         ; preds = %if.end92, %land.lhs.true73, %lor.lhs.false71, %if.end65
  %97 = load ptr, ptr @usernodeproc, align 8, !tbaa !4
  %cmp95 = icmp ne ptr %97, null
  br i1 %cmp95, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.end94
  %98 = load ptr, ptr @usernodeproc, align 8, !tbaa !4
  %99 = load ptr, ptr @g, align 8, !tbaa !4
  %100 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %101 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %102 = load i32, ptr %level.addr, align 4, !tbaa !8
  %103 = load i32, ptr %numcells.addr, align 4, !tbaa !8
  %104 = load i32, ptr %tc, align 4, !tbaa !8
  %105 = load i16, ptr %code, align 2, !tbaa !75
  %conv98 = sext i16 %105 to i32
  %106 = load i32, ptr @m, align 4, !tbaa !8
  %107 = load i32, ptr @n, align 4, !tbaa !8
  call void %98(ptr noundef %99, ptr noundef %100, ptr noundef %101, i32 noundef %102, i32 noundef %103, i32 noundef %104, i32 noundef %conv98, i32 noundef %106, i32 noundef %107)
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.end94
  %108 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %109 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %110 = load i32, ptr %level.addr, align 4, !tbaa !8
  %111 = load i32, ptr %numcells.addr, align 4, !tbaa !8
  %call100 = call i32 @processnode(ptr noundef %108, ptr noundef %109, i32 noundef %110, i32 noundef %111)
  store i32 %call100, ptr %rtnlevel, align 4, !tbaa !8
  %112 = load i32, ptr %rtnlevel, align 4, !tbaa !8
  %113 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp101 = icmp slt i32 %112, %113
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.end99
  %114 = load i32, ptr %rtnlevel, align 4, !tbaa !8
  store i32 %114, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end104:                                        ; preds = %if.end99
  %115 = load i32, ptr @needshortprune, align 4, !tbaa !8
  %tobool105 = icmp ne i32 %115, 0
  br i1 %tobool105, label %if.then106, label %if.end107

if.then106:                                       ; preds = %if.end104
  store i32 0, ptr @needshortprune, align 4, !tbaa !8
  %116 = load ptr, ptr %tcell, align 8, !tbaa !4
  %117 = load ptr, ptr @fmptr, align 8, !tbaa !4
  %118 = load i32, ptr @m, align 4, !tbaa !8
  %idx.ext = sext i32 %118 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i32, ptr %117, i64 %idx.neg
  %119 = load i32, ptr @m, align 4, !tbaa !8
  call void @shortprune(ptr noundef %116, ptr noundef %add.ptr, i32 noundef %119)
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %if.end104
  %120 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 5), align 8, !tbaa !19
  %121 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %122 = load i32, ptr %level.addr, align 4, !tbaa !8
  %123 = load i32, ptr @digraph, align 4, !tbaa !8
  %124 = load i32, ptr @n, align 4, !tbaa !8
  %call108 = call i32 %120(ptr noundef %121, i32 noundef %122, i32 noundef %123, i32 noundef %124)
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.end112, label %if.then110

if.then110:                                       ; preds = %if.end107
  %125 = load i32, ptr %level.addr, align 4, !tbaa !8
  %add111 = add nsw i32 %125, 1
  store i32 %add111, ptr @noncheaplevel, align 4, !tbaa !8
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.end107
  %126 = load ptr, ptr %tcell, align 8, !tbaa !4
  %127 = load i32, ptr @m, align 4, !tbaa !8
  %call113 = call i32 @nextelement(ptr noundef %126, i32 noundef %127, i32 noundef -1)
  store i32 %call113, ptr %tv, align 4, !tbaa !8
  store i32 %call113, ptr %tv1, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end112
  %128 = load i32, ptr %tv, align 4, !tbaa !8
  %cmp114 = icmp sge i32 %128, 0
  br i1 %cmp114, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %129 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %130 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %131 = load i32, ptr %level.addr, align 4, !tbaa !8
  %add116 = add nsw i32 %131, 1
  %132 = load i32, ptr %tc, align 4, !tbaa !8
  %133 = load i32, ptr %tv, align 4, !tbaa !8
  %134 = load ptr, ptr @active, align 8, !tbaa !4
  %135 = load i32, ptr @m, align 4, !tbaa !8
  call void @breakout(ptr noundef %129, ptr noundef %130, i32 noundef %add116, i32 noundef %132, i32 noundef %133, ptr noundef %134, i32 noundef %135)
  %136 = load i32, ptr %tv, align 4, !tbaa !8
  %and = and i32 %136, 31
  %idxprom117 = sext i32 %and to i64
  %arrayidx118 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom117
  %137 = load i32, ptr %arrayidx118, align 4, !tbaa !8
  %138 = load ptr, ptr @fixedpts, align 8, !tbaa !4
  %139 = load i32, ptr %tv, align 4, !tbaa !8
  %shr = ashr i32 %139, 5
  %idxprom119 = sext i32 %shr to i64
  %arrayidx120 = getelementptr inbounds i32, ptr %138, i64 %idxprom119
  %140 = load i32, ptr %arrayidx120, align 4, !tbaa !8
  %or = or i32 %140, %137
  store i32 %or, ptr %arrayidx120, align 4, !tbaa !8
  %141 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %142 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %143 = load i32, ptr %level.addr, align 4, !tbaa !8
  %add121 = add nsw i32 %143, 1
  %144 = load i32, ptr %numcells.addr, align 4, !tbaa !8
  %add122 = add nsw i32 %144, 1
  %145 = load ptr, ptr %tcnode_this, align 8, !tbaa !4
  %call123 = call i32 @othernode0(ptr noundef %141, ptr noundef %142, i32 noundef %add121, i32 noundef %add122, ptr noundef %145)
  store i32 %call123, ptr %rtnlevel, align 4, !tbaa !8
  %146 = load i32, ptr %tv, align 4, !tbaa !8
  %and124 = and i32 %146, 31
  %idxprom125 = sext i32 %and124 to i64
  %arrayidx126 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom125
  %147 = load i32, ptr %arrayidx126, align 4, !tbaa !8
  %not = xor i32 %147, -1
  %148 = load ptr, ptr @fixedpts, align 8, !tbaa !4
  %149 = load i32, ptr %tv, align 4, !tbaa !8
  %shr127 = ashr i32 %149, 5
  %idxprom128 = sext i32 %shr127 to i64
  %arrayidx129 = getelementptr inbounds i32, ptr %148, i64 %idxprom128
  %150 = load i32, ptr %arrayidx129, align 4, !tbaa !8
  %and130 = and i32 %150, %not
  store i32 %and130, ptr %arrayidx129, align 4, !tbaa !8
  %151 = load i32, ptr %rtnlevel, align 4, !tbaa !8
  %152 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp131 = icmp slt i32 %151, %152
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %for.body
  %153 = load i32, ptr %rtnlevel, align 4, !tbaa !8
  store i32 %153, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end134:                                        ; preds = %for.body
  %154 = load i32, ptr @needshortprune, align 4, !tbaa !8
  %tobool135 = icmp ne i32 %154, 0
  br i1 %tobool135, label %if.then136, label %if.end140

if.then136:                                       ; preds = %if.end134
  store i32 0, ptr @needshortprune, align 4, !tbaa !8
  %155 = load ptr, ptr %tcell, align 8, !tbaa !4
  %156 = load ptr, ptr @fmptr, align 8, !tbaa !4
  %157 = load i32, ptr @m, align 4, !tbaa !8
  %idx.ext137 = sext i32 %157 to i64
  %idx.neg138 = sub i64 0, %idx.ext137
  %add.ptr139 = getelementptr inbounds i32, ptr %156, i64 %idx.neg138
  %158 = load i32, ptr @m, align 4, !tbaa !8
  call void @shortprune(ptr noundef %155, ptr noundef %add.ptr139, i32 noundef %158)
  br label %if.end140

if.end140:                                        ; preds = %if.then136, %if.end134
  %159 = load i32, ptr %tv, align 4, !tbaa !8
  %160 = load i32, ptr %tv1, align 4, !tbaa !8
  %cmp141 = icmp eq i32 %159, %160
  br i1 %cmp141, label %if.then143, label %if.end147

if.then143:                                       ; preds = %if.end140
  %161 = load ptr, ptr %tcell, align 8, !tbaa !4
  %162 = load ptr, ptr @fixedpts, align 8, !tbaa !4
  %163 = load ptr, ptr @workspace, align 8, !tbaa !4
  %164 = load ptr, ptr @fmptr, align 8, !tbaa !4
  %165 = load i32, ptr @m, align 4, !tbaa !8
  call void @longprune(ptr noundef %161, ptr noundef %162, ptr noundef %163, ptr noundef %164, i32 noundef %165)
  %166 = load i32, ptr @doschreier, align 4, !tbaa !8
  %tobool144 = icmp ne i32 %166, 0
  br i1 %tobool144, label %if.then145, label %if.end146

if.then145:                                       ; preds = %if.then143
  %167 = load ptr, ptr @fixedpts, align 8, !tbaa !4
  %168 = load ptr, ptr @gp, align 8, !tbaa !4
  %169 = load ptr, ptr %tcell, align 8, !tbaa !4
  %170 = load i32, ptr @m, align 4, !tbaa !8
  %171 = load i32, ptr @n, align 4, !tbaa !8
  call void @pruneset(ptr noundef %167, ptr noundef %168, ptr noundef @gens, ptr noundef %169, i32 noundef %170, i32 noundef %171)
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %if.then143
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %if.end140
  %172 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %173 = load i32, ptr %level.addr, align 4, !tbaa !8
  call void @recover(ptr noundef %172, i32 noundef %173)
  br label %for.inc

for.inc:                                          ; preds = %if.end147
  %174 = load ptr, ptr %tcell, align 8, !tbaa !4
  %175 = load i32, ptr @m, align 4, !tbaa !8
  %176 = load i32, ptr %tv, align 4, !tbaa !8
  %call148 = call i32 @nextelement(ptr noundef %174, i32 noundef %175, i32 noundef %176)
  store i32 %call148, ptr %tv, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !82

for.end:                                          ; preds = %for.cond
  %177 = load i32, ptr %level.addr, align 4, !tbaa !8
  %sub149 = sub nsw i32 %177, 1
  store i32 %sub149, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then133, %if.then103, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcnode_this) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcell) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr %code) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %qinvar) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %tc) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %tcellsize) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %rtnlevel) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %refcode) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %tv1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %tv) #7
  %178 = load i32, ptr %retval, align 4
  ret i32 %178
}

declare void @shortprune(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @recover(ptr noundef %ptn, i32 noundef %level) #0 {
entry:
  %ptn.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %ptn, ptr %ptn.addr, align 8, !tbaa !4
  store i32 %level, ptr %level.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !8
  %1 = load i32, ptr @n, align 4, !tbaa !8
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %3 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %5 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp1 = icmp sgt i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %7 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 %idxprom2
  store i32 2000000002, ptr %arrayidx3, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !83

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %level.addr, align 4, !tbaa !8
  %10 = load i32, ptr @noncheaplevel, align 4, !tbaa !8
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.end
  %11 = load i32, ptr %level.addr, align 4, !tbaa !8
  %add = add nsw i32 %11, 1
  store i32 %add, ptr @noncheaplevel, align 4, !tbaa !8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.end
  %12 = load i32, ptr %level.addr, align 4, !tbaa !8
  %13 = load i32, ptr @eqlev_first, align 4, !tbaa !8
  %cmp7 = icmp slt i32 %12, %13
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %14 = load i32, ptr %level.addr, align 4, !tbaa !8
  store i32 %14, ptr @eqlev_first, align 4, !tbaa !8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %15 = load i32, ptr @getcanon, align 4, !tbaa !8
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then10, label %if.end17

if.then10:                                        ; preds = %if.end9
  %16 = load i32, ptr %level.addr, align 4, !tbaa !8
  %17 = load i32, ptr @gca_canon, align 4, !tbaa !8
  %cmp11 = icmp slt i32 %16, %17
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then10
  %18 = load i32, ptr %level.addr, align 4, !tbaa !8
  store i32 %18, ptr @gca_canon, align 4, !tbaa !8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then10
  %19 = load i32, ptr %level.addr, align 4, !tbaa !8
  %20 = load i32, ptr @eqlev_canon, align 4, !tbaa !8
  %cmp14 = icmp sle i32 %19, %20
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  %21 = load i32, ptr %level.addr, align 4, !tbaa !8
  store i32 %21, ptr @eqlev_canon, align 4, !tbaa !8
  store i32 0, ptr @comp_canon, align 4, !tbaa !8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @processnode(ptr noundef %lab, ptr noundef %ptn, i32 noundef %level, i32 noundef %numcells) #0 {
entry:
  %retval = alloca i32, align 4
  %lab.addr = alloca ptr, align 8
  %ptn.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %numcells.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %save = alloca i32, align 4
  %newlevel = alloca i32, align 4
  %ispruneok = alloca i32, align 4
  %sr = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lab, ptr %lab.addr, align 8, !tbaa !4
  store ptr %ptn, ptr %ptn.addr, align 8, !tbaa !4
  store i32 %level, ptr %level.addr, align 4, !tbaa !8
  store i32 %numcells, ptr %numcells.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %code) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %save) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %newlevel) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %ispruneok) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %sr) #7
  store i32 0, ptr %code, align 4, !tbaa !8
  %0 = load i32, ptr @eqlev_first, align 4, !tbaa !8
  %1 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr @getcanon, align 4, !tbaa !8
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr @comp_canon, align 4, !tbaa !8
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 4, ptr %code, align 4, !tbaa !8
  br label %if.end52

if.else:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, ptr %numcells.addr, align 4, !tbaa !8
  %5 = load i32, ptr @n, align 4, !tbaa !8
  %cmp2 = icmp eq i32 %4, %5
  br i1 %cmp2, label %if.then3, label %if.end51

if.then3:                                         ; preds = %if.else
  %6 = load i32, ptr @eqlev_first, align 4, !tbaa !8
  %7 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp4 = icmp eq i32 %6, %7
  br i1 %cmp4, label %if.then5, label %if.end15

if.then5:                                         ; preds = %if.then3
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then5
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %9 = load i32, ptr @n, align 4, !tbaa !8
  %cmp6 = icmp slt i32 %8, %9
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i32, ptr %10, i64 %idxprom
  %12 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %13 = load ptr, ptr @workperm, align 8, !tbaa !4
  %14 = load ptr, ptr @firstlab, align 8, !tbaa !4
  %15 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %14, i64 %idxprom7
  %16 = load i32, ptr %arrayidx8, align 4, !tbaa !8
  %idxprom9 = sext i32 %16 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %13, i64 %idxprom9
  store i32 %12, ptr %arrayidx10, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !84

for.end:                                          ; preds = %for.cond
  %18 = load i32, ptr @gca_first, align 4, !tbaa !8
  %19 = load i32, ptr @noncheaplevel, align 4, !tbaa !8
  %cmp11 = icmp sge i32 %18, %19
  br i1 %cmp11, label %if.then14, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %for.end
  %20 = load ptr, ptr @dispatch, align 8, !tbaa !85
  %21 = load ptr, ptr @g, align 8, !tbaa !4
  %22 = load ptr, ptr @workperm, align 8, !tbaa !4
  %23 = load i32, ptr @digraph, align 4, !tbaa !8
  %24 = load i32, ptr @m, align 4, !tbaa !8
  %25 = load i32, ptr @n, align 4, !tbaa !8
  %call = call i32 %20(ptr noundef %21, ptr noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %25)
  %tobool13 = icmp ne i32 %call, 0
  br i1 %tobool13, label %if.then14, label %if.end

if.then14:                                        ; preds = %lor.lhs.false12, %for.end
  store i32 1, ptr %code, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then14, %lor.lhs.false12
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then3
  %26 = load i32, ptr %code, align 4, !tbaa !8
  %cmp16 = icmp eq i32 %26, 0
  br i1 %cmp16, label %if.then17, label %if.end50

if.then17:                                        ; preds = %if.end15
  %27 = load i32, ptr @getcanon, align 4, !tbaa !8
  %tobool18 = icmp ne i32 %27, 0
  br i1 %tobool18, label %if.then19, label %if.else48

if.then19:                                        ; preds = %if.then17
  store i32 0, ptr %sr, align 4, !tbaa !8
  %28 = load i32, ptr @comp_canon, align 4, !tbaa !8
  %cmp20 = icmp eq i32 %28, 0
  br i1 %cmp20, label %if.then21, label %if.end27

if.then21:                                        ; preds = %if.then19
  %29 = load i32, ptr %level.addr, align 4, !tbaa !8
  %30 = load i32, ptr @canonlevel, align 4, !tbaa !8
  %cmp22 = icmp slt i32 %29, %30
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.then21
  store i32 1, ptr @comp_canon, align 4, !tbaa !8
  br label %if.end26

if.else24:                                        ; preds = %if.then21
  %31 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 2), align 8, !tbaa !17
  %32 = load ptr, ptr @g, align 8, !tbaa !4
  %33 = load ptr, ptr @canong, align 8, !tbaa !4
  %34 = load ptr, ptr @canonlab, align 8, !tbaa !4
  %35 = load i32, ptr @samerows, align 4, !tbaa !8
  %36 = load i32, ptr @m, align 4, !tbaa !8
  %37 = load i32, ptr @n, align 4, !tbaa !8
  call void %31(ptr noundef %32, ptr noundef %33, ptr noundef %34, i32 noundef %35, i32 noundef %36, i32 noundef %37)
  %38 = load i32, ptr @n, align 4, !tbaa !8
  store i32 %38, ptr @samerows, align 4, !tbaa !8
  %39 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 1), align 8, !tbaa !86
  %40 = load ptr, ptr @g, align 8, !tbaa !4
  %41 = load ptr, ptr @canong, align 8, !tbaa !4
  %42 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %43 = load i32, ptr @m, align 4, !tbaa !8
  %44 = load i32, ptr @n, align 4, !tbaa !8
  %call25 = call i32 %39(ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %sr, i32 noundef %43, i32 noundef %44)
  store i32 %call25, ptr @comp_canon, align 4, !tbaa !8
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then23
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then19
  %45 = load i32, ptr @comp_canon, align 4, !tbaa !8
  %cmp28 = icmp eq i32 %45, 0
  br i1 %cmp28, label %if.then29, label %if.else42

if.then29:                                        ; preds = %if.end27
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc39, %if.then29
  %46 = load i32, ptr %i, align 4, !tbaa !8
  %47 = load i32, ptr @n, align 4, !tbaa !8
  %cmp31 = icmp slt i32 %46, %47
  br i1 %cmp31, label %for.body32, label %for.end41

for.body32:                                       ; preds = %for.cond30
  %48 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %49 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom33 = sext i32 %49 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %48, i64 %idxprom33
  %50 = load i32, ptr %arrayidx34, align 4, !tbaa !8
  %51 = load ptr, ptr @workperm, align 8, !tbaa !4
  %52 = load ptr, ptr @canonlab, align 8, !tbaa !4
  %53 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom35 = sext i32 %53 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %52, i64 %idxprom35
  %54 = load i32, ptr %arrayidx36, align 4, !tbaa !8
  %idxprom37 = sext i32 %54 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %51, i64 %idxprom37
  store i32 %50, ptr %arrayidx38, align 4, !tbaa !8
  br label %for.inc39

for.inc39:                                        ; preds = %for.body32
  %55 = load i32, ptr %i, align 4, !tbaa !8
  %inc40 = add nsw i32 %55, 1
  store i32 %inc40, ptr %i, align 4, !tbaa !8
  br label %for.cond30, !llvm.loop !87

for.end41:                                        ; preds = %for.cond30
  store i32 2, ptr %code, align 4, !tbaa !8
  br label %if.end47

if.else42:                                        ; preds = %if.end27
  %56 = load i32, ptr @comp_canon, align 4, !tbaa !8
  %cmp43 = icmp sgt i32 %56, 0
  br i1 %cmp43, label %if.then44, label %if.else45

if.then44:                                        ; preds = %if.else42
  store i32 3, ptr %code, align 4, !tbaa !8
  br label %if.end46

if.else45:                                        ; preds = %if.else42
  store i32 4, ptr %code, align 4, !tbaa !8
  br label %if.end46

if.end46:                                         ; preds = %if.else45, %if.then44
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %for.end41
  br label %if.end49

if.else48:                                        ; preds = %if.then17
  store i32 4, ptr %code, align 4, !tbaa !8
  br label %if.end49

if.end49:                                         ; preds = %if.else48, %if.end47
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end15
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.else
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then
  %57 = load i32, ptr %code, align 4, !tbaa !8
  %cmp53 = icmp ne i32 %57, 0
  br i1 %cmp53, label %land.lhs.true54, label %if.end58

land.lhs.true54:                                  ; preds = %if.end52
  %58 = load i32, ptr %level.addr, align 4, !tbaa !8
  %59 = load ptr, ptr @stats, align 8, !tbaa !4
  %maxlevel = getelementptr inbounds %struct.statsblk, ptr %59, i32 0, i32 7
  %60 = load i32, ptr %maxlevel, align 8, !tbaa !30
  %cmp55 = icmp sgt i32 %58, %60
  br i1 %cmp55, label %if.then56, label %if.end58

if.then56:                                        ; preds = %land.lhs.true54
  %61 = load i32, ptr %level.addr, align 4, !tbaa !8
  %62 = load ptr, ptr @stats, align 8, !tbaa !4
  %maxlevel57 = getelementptr inbounds %struct.statsblk, ptr %62, i32 0, i32 7
  store i32 %61, ptr %maxlevel57, align 8, !tbaa !30
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %land.lhs.true54, %if.end52
  %63 = load i32, ptr %code, align 4, !tbaa !8
  switch i32 %63, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb59
    i32 2, label %sw.bb82
    i32 3, label %sw.bb127
    i32 4, label %sw.bb154
  ]

sw.bb:                                            ; preds = %if.end58
  %64 = load i32, ptr %level.addr, align 4, !tbaa !8
  store i32 %64, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb59:                                          ; preds = %if.end58
  %65 = load ptr, ptr @fmptr, align 8, !tbaa !4
  %66 = load ptr, ptr @worktop, align 8, !tbaa !4
  %cmp60 = icmp eq ptr %65, %66
  br i1 %cmp60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %sw.bb59
  %67 = load i32, ptr @m, align 4, !tbaa !8
  %mul = mul nsw i32 2, %67
  %68 = load ptr, ptr @fmptr, align 8, !tbaa !4
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i32, ptr %68, i64 %idx.neg
  store ptr %add.ptr, ptr @fmptr, align 8, !tbaa !4
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %sw.bb59
  %69 = load ptr, ptr @workperm, align 8, !tbaa !4
  %70 = load ptr, ptr @fmptr, align 8, !tbaa !4
  %71 = load ptr, ptr @fmptr, align 8, !tbaa !4
  %72 = load i32, ptr @m, align 4, !tbaa !8
  %idx.ext63 = sext i32 %72 to i64
  %add.ptr64 = getelementptr inbounds i32, ptr %71, i64 %idx.ext63
  %73 = load i32, ptr @m, align 4, !tbaa !8
  %74 = load i32, ptr @n, align 4, !tbaa !8
  call void @fmperm(ptr noundef %69, ptr noundef %70, ptr noundef %add.ptr64, i32 noundef %73, i32 noundef %74)
  %75 = load i32, ptr @m, align 4, !tbaa !8
  %mul65 = mul nsw i32 2, %75
  %76 = load ptr, ptr @fmptr, align 8, !tbaa !4
  %idx.ext66 = sext i32 %mul65 to i64
  %add.ptr67 = getelementptr inbounds i32, ptr %76, i64 %idx.ext66
  store ptr %add.ptr67, ptr @fmptr, align 8, !tbaa !4
  %77 = load i32, ptr @writeautoms, align 4, !tbaa !8
  %tobool68 = icmp ne i32 %77, 0
  br i1 %tobool68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end62
  %78 = load ptr, ptr @outfile, align 8, !tbaa !4
  %79 = load ptr, ptr @workperm, align 8, !tbaa !4
  %80 = load i32, ptr @cartesian, align 4, !tbaa !8
  %81 = load i32, ptr @linelength, align 4, !tbaa !8
  %82 = load i32, ptr @n, align 4, !tbaa !8
  call void @writeperm(ptr noundef %78, ptr noundef %79, i32 noundef %80, i32 noundef %81, i32 noundef %82)
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end62
  %83 = load ptr, ptr @orbits, align 8, !tbaa !4
  %84 = load ptr, ptr @workperm, align 8, !tbaa !4
  %85 = load i32, ptr @n, align 4, !tbaa !8
  %call71 = call i32 @orbjoin(ptr noundef %83, ptr noundef %84, i32 noundef %85)
  %86 = load ptr, ptr @stats, align 8, !tbaa !4
  %numorbits = getelementptr inbounds %struct.statsblk, ptr %86, i32 0, i32 2
  store i32 %call71, ptr %numorbits, align 4, !tbaa !26
  %87 = load ptr, ptr @stats, align 8, !tbaa !4
  %numgenerators = getelementptr inbounds %struct.statsblk, ptr %87, i32 0, i32 3
  %88 = load i32, ptr %numgenerators, align 8, !tbaa !27
  %inc72 = add nsw i32 %88, 1
  store i32 %inc72, ptr %numgenerators, align 8, !tbaa !27
  %89 = load ptr, ptr @userautomproc, align 8, !tbaa !4
  %cmp73 = icmp ne ptr %89, null
  br i1 %cmp73, label %if.then74, label %if.end77

if.then74:                                        ; preds = %if.end70
  %90 = load ptr, ptr @userautomproc, align 8, !tbaa !4
  %91 = load ptr, ptr @stats, align 8, !tbaa !4
  %numgenerators75 = getelementptr inbounds %struct.statsblk, ptr %91, i32 0, i32 3
  %92 = load i32, ptr %numgenerators75, align 8, !tbaa !27
  %93 = load ptr, ptr @workperm, align 8, !tbaa !4
  %94 = load ptr, ptr @orbits, align 8, !tbaa !4
  %95 = load ptr, ptr @stats, align 8, !tbaa !4
  %numorbits76 = getelementptr inbounds %struct.statsblk, ptr %95, i32 0, i32 2
  %96 = load i32, ptr %numorbits76, align 4, !tbaa !26
  %97 = load i32, ptr @stabvertex, align 4, !tbaa !8
  %98 = load i32, ptr @n, align 4, !tbaa !8
  call void %90(i32 noundef %92, ptr noundef %93, ptr noundef %94, i32 noundef %96, i32 noundef %97, i32 noundef %98)
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end70
  %99 = load i32, ptr @doschreier, align 4, !tbaa !8
  %tobool78 = icmp ne i32 %99, 0
  br i1 %tobool78, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.end77
  %100 = load ptr, ptr @workperm, align 8, !tbaa !4
  %101 = load i32, ptr @n, align 4, !tbaa !8
  %call80 = call i32 @addgenerator(ptr noundef @gp, ptr noundef @gens, ptr noundef %100, i32 noundef %101)
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.end77
  %102 = load i32, ptr @gca_first, align 4, !tbaa !8
  store i32 %102, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb82:                                          ; preds = %if.end58
  %103 = load ptr, ptr @fmptr, align 8, !tbaa !4
  %104 = load ptr, ptr @worktop, align 8, !tbaa !4
  %cmp83 = icmp eq ptr %103, %104
  br i1 %cmp83, label %if.then84, label %if.end89

if.then84:                                        ; preds = %sw.bb82
  %105 = load i32, ptr @m, align 4, !tbaa !8
  %mul85 = mul nsw i32 2, %105
  %106 = load ptr, ptr @fmptr, align 8, !tbaa !4
  %idx.ext86 = sext i32 %mul85 to i64
  %idx.neg87 = sub i64 0, %idx.ext86
  %add.ptr88 = getelementptr inbounds i32, ptr %106, i64 %idx.neg87
  store ptr %add.ptr88, ptr @fmptr, align 8, !tbaa !4
  br label %if.end89

if.end89:                                         ; preds = %if.then84, %sw.bb82
  %107 = load ptr, ptr @workperm, align 8, !tbaa !4
  %108 = load ptr, ptr @fmptr, align 8, !tbaa !4
  %109 = load ptr, ptr @fmptr, align 8, !tbaa !4
  %110 = load i32, ptr @m, align 4, !tbaa !8
  %idx.ext90 = sext i32 %110 to i64
  %add.ptr91 = getelementptr inbounds i32, ptr %109, i64 %idx.ext90
  %111 = load i32, ptr @m, align 4, !tbaa !8
  %112 = load i32, ptr @n, align 4, !tbaa !8
  call void @fmperm(ptr noundef %107, ptr noundef %108, ptr noundef %add.ptr91, i32 noundef %111, i32 noundef %112)
  %113 = load i32, ptr @m, align 4, !tbaa !8
  %mul92 = mul nsw i32 2, %113
  %114 = load ptr, ptr @fmptr, align 8, !tbaa !4
  %idx.ext93 = sext i32 %mul92 to i64
  %add.ptr94 = getelementptr inbounds i32, ptr %114, i64 %idx.ext93
  store ptr %add.ptr94, ptr @fmptr, align 8, !tbaa !4
  %115 = load ptr, ptr @stats, align 8, !tbaa !4
  %numorbits95 = getelementptr inbounds %struct.statsblk, ptr %115, i32 0, i32 2
  %116 = load i32, ptr %numorbits95, align 4, !tbaa !26
  store i32 %116, ptr %save, align 4, !tbaa !8
  %117 = load ptr, ptr @orbits, align 8, !tbaa !4
  %118 = load ptr, ptr @workperm, align 8, !tbaa !4
  %119 = load i32, ptr @n, align 4, !tbaa !8
  %call96 = call i32 @orbjoin(ptr noundef %117, ptr noundef %118, i32 noundef %119)
  %120 = load ptr, ptr @stats, align 8, !tbaa !4
  %numorbits97 = getelementptr inbounds %struct.statsblk, ptr %120, i32 0, i32 2
  store i32 %call96, ptr %numorbits97, align 4, !tbaa !26
  %121 = load ptr, ptr @stats, align 8, !tbaa !4
  %numorbits98 = getelementptr inbounds %struct.statsblk, ptr %121, i32 0, i32 2
  %122 = load i32, ptr %numorbits98, align 4, !tbaa !26
  %123 = load i32, ptr %save, align 4, !tbaa !8
  %cmp99 = icmp eq i32 %122, %123
  br i1 %cmp99, label %if.then100, label %if.end104

if.then100:                                       ; preds = %if.end89
  %124 = load i32, ptr @gca_canon, align 4, !tbaa !8
  %125 = load i32, ptr @gca_first, align 4, !tbaa !8
  %cmp101 = icmp ne i32 %124, %125
  br i1 %cmp101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.then100
  store i32 1, ptr @needshortprune, align 4, !tbaa !8
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.then100
  %126 = load i32, ptr @gca_canon, align 4, !tbaa !8
  store i32 %126, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end104:                                        ; preds = %if.end89
  %127 = load i32, ptr @writeautoms, align 4, !tbaa !8
  %tobool105 = icmp ne i32 %127, 0
  br i1 %tobool105, label %if.then106, label %if.end107

if.then106:                                       ; preds = %if.end104
  %128 = load ptr, ptr @outfile, align 8, !tbaa !4
  %129 = load ptr, ptr @workperm, align 8, !tbaa !4
  %130 = load i32, ptr @cartesian, align 4, !tbaa !8
  %131 = load i32, ptr @linelength, align 4, !tbaa !8
  %132 = load i32, ptr @n, align 4, !tbaa !8
  call void @writeperm(ptr noundef %128, ptr noundef %129, i32 noundef %130, i32 noundef %131, i32 noundef %132)
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %if.end104
  %133 = load ptr, ptr @stats, align 8, !tbaa !4
  %numgenerators108 = getelementptr inbounds %struct.statsblk, ptr %133, i32 0, i32 3
  %134 = load i32, ptr %numgenerators108, align 8, !tbaa !27
  %inc109 = add nsw i32 %134, 1
  store i32 %inc109, ptr %numgenerators108, align 8, !tbaa !27
  %135 = load ptr, ptr @userautomproc, align 8, !tbaa !4
  %cmp110 = icmp ne ptr %135, null
  br i1 %cmp110, label %if.then111, label %if.end114

if.then111:                                       ; preds = %if.end107
  %136 = load ptr, ptr @userautomproc, align 8, !tbaa !4
  %137 = load ptr, ptr @stats, align 8, !tbaa !4
  %numgenerators112 = getelementptr inbounds %struct.statsblk, ptr %137, i32 0, i32 3
  %138 = load i32, ptr %numgenerators112, align 8, !tbaa !27
  %139 = load ptr, ptr @workperm, align 8, !tbaa !4
  %140 = load ptr, ptr @orbits, align 8, !tbaa !4
  %141 = load ptr, ptr @stats, align 8, !tbaa !4
  %numorbits113 = getelementptr inbounds %struct.statsblk, ptr %141, i32 0, i32 2
  %142 = load i32, ptr %numorbits113, align 4, !tbaa !26
  %143 = load i32, ptr @stabvertex, align 4, !tbaa !8
  %144 = load i32, ptr @n, align 4, !tbaa !8
  call void %136(i32 noundef %138, ptr noundef %139, ptr noundef %140, i32 noundef %142, i32 noundef %143, i32 noundef %144)
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %if.end107
  %145 = load i32, ptr @doschreier, align 4, !tbaa !8
  %tobool115 = icmp ne i32 %145, 0
  br i1 %tobool115, label %if.then116, label %if.end118

if.then116:                                       ; preds = %if.end114
  %146 = load ptr, ptr @workperm, align 8, !tbaa !4
  %147 = load i32, ptr @n, align 4, !tbaa !8
  %call117 = call i32 @addgenerator(ptr noundef @gp, ptr noundef @gens, ptr noundef %146, i32 noundef %147)
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.end114
  %148 = load ptr, ptr @orbits, align 8, !tbaa !4
  %149 = load i32, ptr @cosetindex, align 4, !tbaa !8
  %idxprom119 = sext i32 %149 to i64
  %arrayidx120 = getelementptr inbounds i32, ptr %148, i64 %idxprom119
  %150 = load i32, ptr %arrayidx120, align 4, !tbaa !8
  %151 = load i32, ptr @cosetindex, align 4, !tbaa !8
  %cmp121 = icmp slt i32 %150, %151
  br i1 %cmp121, label %if.then122, label %if.end123

if.then122:                                       ; preds = %if.end118
  %152 = load i32, ptr @gca_first, align 4, !tbaa !8
  store i32 %152, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end123:                                        ; preds = %if.end118
  %153 = load i32, ptr @gca_canon, align 4, !tbaa !8
  %154 = load i32, ptr @gca_first, align 4, !tbaa !8
  %cmp124 = icmp ne i32 %153, %154
  br i1 %cmp124, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.end123
  store i32 1, ptr @needshortprune, align 4, !tbaa !8
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %if.end123
  %155 = load i32, ptr @gca_canon, align 4, !tbaa !8
  store i32 %155, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb127:                                         ; preds = %if.end58
  %156 = load ptr, ptr @stats, align 8, !tbaa !4
  %canupdates = getelementptr inbounds %struct.statsblk, ptr %156, i32 0, i32 9
  %157 = load i64, ptr %canupdates, align 8, !tbaa !33
  %inc128 = add i64 %157, 1
  store i64 %inc128, ptr %canupdates, align 8, !tbaa !33
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond129

for.cond129:                                      ; preds = %for.inc136, %sw.bb127
  %158 = load i32, ptr %i, align 4, !tbaa !8
  %159 = load i32, ptr @n, align 4, !tbaa !8
  %cmp130 = icmp slt i32 %158, %159
  br i1 %cmp130, label %for.body131, label %for.end138

for.body131:                                      ; preds = %for.cond129
  %160 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %161 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom132 = sext i32 %161 to i64
  %arrayidx133 = getelementptr inbounds i32, ptr %160, i64 %idxprom132
  %162 = load i32, ptr %arrayidx133, align 4, !tbaa !8
  %163 = load ptr, ptr @canonlab, align 8, !tbaa !4
  %164 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom134 = sext i32 %164 to i64
  %arrayidx135 = getelementptr inbounds i32, ptr %163, i64 %idxprom134
  store i32 %162, ptr %arrayidx135, align 4, !tbaa !8
  br label %for.inc136

for.inc136:                                       ; preds = %for.body131
  %165 = load i32, ptr %i, align 4, !tbaa !8
  %inc137 = add nsw i32 %165, 1
  store i32 %inc137, ptr %i, align 4, !tbaa !8
  br label %for.cond129, !llvm.loop !88

for.end138:                                       ; preds = %for.cond129
  %166 = load i32, ptr %level.addr, align 4, !tbaa !8
  store i32 %166, ptr @gca_canon, align 4, !tbaa !8
  store i32 %166, ptr @eqlev_canon, align 4, !tbaa !8
  store i32 %166, ptr @canonlevel, align 4, !tbaa !8
  store i32 0, ptr @comp_canon, align 4, !tbaa !8
  %167 = load ptr, ptr @canoncode, align 8, !tbaa !4
  %168 = load i32, ptr %level.addr, align 4, !tbaa !8
  %add = add nsw i32 %168, 1
  %idxprom139 = sext i32 %add to i64
  %arrayidx140 = getelementptr inbounds i16, ptr %167, i64 %idxprom139
  store i16 32767, ptr %arrayidx140, align 2, !tbaa !75
  %169 = load i32, ptr %sr, align 4, !tbaa !8
  store i32 %169, ptr @samerows, align 4, !tbaa !8
  %170 = load i32, ptr @getcanon, align 4, !tbaa !8
  %tobool141 = icmp ne i32 %170, 0
  br i1 %tobool141, label %land.lhs.true142, label %if.end153

land.lhs.true142:                                 ; preds = %for.end138
  %171 = load ptr, ptr @usercanonproc, align 8, !tbaa !4
  %cmp143 = icmp ne ptr %171, null
  br i1 %cmp143, label %if.then144, label %if.end153

if.then144:                                       ; preds = %land.lhs.true142
  %172 = load ptr, ptr getelementptr inbounds (%struct.dispatchvec, ptr @dispatch, i32 0, i32 2), align 8, !tbaa !17
  %173 = load ptr, ptr @g, align 8, !tbaa !4
  %174 = load ptr, ptr @canong, align 8, !tbaa !4
  %175 = load ptr, ptr @canonlab, align 8, !tbaa !4
  %176 = load i32, ptr @samerows, align 4, !tbaa !8
  %177 = load i32, ptr @m, align 4, !tbaa !8
  %178 = load i32, ptr @n, align 4, !tbaa !8
  call void %172(ptr noundef %173, ptr noundef %174, ptr noundef %175, i32 noundef %176, i32 noundef %177, i32 noundef %178)
  %179 = load i32, ptr @n, align 4, !tbaa !8
  store i32 %179, ptr @samerows, align 4, !tbaa !8
  %180 = load ptr, ptr @usercanonproc, align 8, !tbaa !4
  %181 = load ptr, ptr @g, align 8, !tbaa !4
  %182 = load ptr, ptr @canonlab, align 8, !tbaa !4
  %183 = load ptr, ptr @canong, align 8, !tbaa !4
  %184 = load ptr, ptr @stats, align 8, !tbaa !4
  %canupdates145 = getelementptr inbounds %struct.statsblk, ptr %184, i32 0, i32 9
  %185 = load i64, ptr %canupdates145, align 8, !tbaa !33
  %conv = trunc i64 %185 to i32
  %186 = load ptr, ptr @canoncode, align 8, !tbaa !4
  %187 = load i32, ptr %level.addr, align 4, !tbaa !8
  %idxprom146 = sext i32 %187 to i64
  %arrayidx147 = getelementptr inbounds i16, ptr %186, i64 %idxprom146
  %188 = load i16, ptr %arrayidx147, align 2, !tbaa !75
  %conv148 = sext i16 %188 to i32
  %189 = load i32, ptr @m, align 4, !tbaa !8
  %190 = load i32, ptr @n, align 4, !tbaa !8
  %call149 = call i32 %180(ptr noundef %181, ptr noundef %182, ptr noundef %183, i32 noundef %conv, i32 noundef %conv148, i32 noundef %189, i32 noundef %190)
  %tobool150 = icmp ne i32 %call149, 0
  br i1 %tobool150, label %if.then151, label %if.end152

if.then151:                                       ; preds = %if.then144
  store i32 -11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end152:                                        ; preds = %if.then144
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %land.lhs.true142, %for.end138
  br label %sw.epilog

sw.bb154:                                         ; preds = %if.end58
  %191 = load ptr, ptr @stats, align 8, !tbaa !4
  %numbadleaves = getelementptr inbounds %struct.statsblk, ptr %191, i32 0, i32 6
  %192 = load i64, ptr %numbadleaves, align 8, !tbaa !29
  %inc155 = add i64 %192, 1
  store i64 %inc155, ptr %numbadleaves, align 8, !tbaa !29
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end58, %sw.bb154, %if.end153
  %193 = load i32, ptr %level.addr, align 4, !tbaa !8
  %194 = load i32, ptr @noncheaplevel, align 4, !tbaa !8
  %cmp156 = icmp ne i32 %193, %194
  br i1 %cmp156, label %if.then158, label %if.else172

if.then158:                                       ; preds = %sw.epilog
  store i32 1, ptr %ispruneok, align 4, !tbaa !8
  %195 = load ptr, ptr @fmptr, align 8, !tbaa !4
  %196 = load ptr, ptr @worktop, align 8, !tbaa !4
  %cmp159 = icmp eq ptr %195, %196
  br i1 %cmp159, label %if.then161, label %if.end166

if.then161:                                       ; preds = %if.then158
  %197 = load i32, ptr @m, align 4, !tbaa !8
  %mul162 = mul nsw i32 2, %197
  %198 = load ptr, ptr @fmptr, align 8, !tbaa !4
  %idx.ext163 = sext i32 %mul162 to i64
  %idx.neg164 = sub i64 0, %idx.ext163
  %add.ptr165 = getelementptr inbounds i32, ptr %198, i64 %idx.neg164
  store ptr %add.ptr165, ptr @fmptr, align 8, !tbaa !4
  br label %if.end166

if.end166:                                        ; preds = %if.then161, %if.then158
  %199 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %200 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %201 = load i32, ptr @noncheaplevel, align 4, !tbaa !8
  %202 = load ptr, ptr @fmptr, align 8, !tbaa !4
  %203 = load ptr, ptr @fmptr, align 8, !tbaa !4
  %204 = load i32, ptr @m, align 4, !tbaa !8
  %idx.ext167 = sext i32 %204 to i64
  %add.ptr168 = getelementptr inbounds i32, ptr %203, i64 %idx.ext167
  %205 = load i32, ptr @m, align 4, !tbaa !8
  %206 = load i32, ptr @n, align 4, !tbaa !8
  call void @fmptn(ptr noundef %199, ptr noundef %200, i32 noundef %201, ptr noundef %202, ptr noundef %add.ptr168, i32 noundef %205, i32 noundef %206)
  %207 = load i32, ptr @m, align 4, !tbaa !8
  %mul169 = mul nsw i32 2, %207
  %208 = load ptr, ptr @fmptr, align 8, !tbaa !4
  %idx.ext170 = sext i32 %mul169 to i64
  %add.ptr171 = getelementptr inbounds i32, ptr %208, i64 %idx.ext170
  store ptr %add.ptr171, ptr @fmptr, align 8, !tbaa !4
  br label %if.end173

if.else172:                                       ; preds = %sw.epilog
  store i32 0, ptr %ispruneok, align 4, !tbaa !8
  br label %if.end173

if.end173:                                        ; preds = %if.else172, %if.end166
  %209 = load i32, ptr @allsamelevel, align 4, !tbaa !8
  %210 = load i32, ptr @eqlev_canon, align 4, !tbaa !8
  %cmp174 = icmp sgt i32 %209, %210
  br i1 %cmp174, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end173
  %211 = load i32, ptr @allsamelevel, align 4, !tbaa !8
  %sub = sub nsw i32 %211, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end173
  %212 = load i32, ptr @eqlev_canon, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %212, %cond.false ]
  store i32 %cond, ptr %save, align 4, !tbaa !8
  %213 = load i32, ptr @noncheaplevel, align 4, !tbaa !8
  %214 = load i32, ptr %save, align 4, !tbaa !8
  %cmp176 = icmp sle i32 %213, %214
  br i1 %cmp176, label %cond.true178, label %cond.false180

cond.true178:                                     ; preds = %cond.end
  %215 = load i32, ptr @noncheaplevel, align 4, !tbaa !8
  %sub179 = sub nsw i32 %215, 1
  br label %cond.end181

cond.false180:                                    ; preds = %cond.end
  %216 = load i32, ptr %save, align 4, !tbaa !8
  br label %cond.end181

cond.end181:                                      ; preds = %cond.false180, %cond.true178
  %cond182 = phi i32 [ %sub179, %cond.true178 ], [ %216, %cond.false180 ]
  store i32 %cond182, ptr %newlevel, align 4, !tbaa !8
  %217 = load i32, ptr %ispruneok, align 4, !tbaa !8
  %tobool183 = icmp ne i32 %217, 0
  br i1 %tobool183, label %land.lhs.true184, label %if.end188

land.lhs.true184:                                 ; preds = %cond.end181
  %218 = load i32, ptr %newlevel, align 4, !tbaa !8
  %219 = load i32, ptr @gca_first, align 4, !tbaa !8
  %cmp185 = icmp ne i32 %218, %219
  br i1 %cmp185, label %if.then187, label %if.end188

if.then187:                                       ; preds = %land.lhs.true184
  store i32 1, ptr @needshortprune, align 4, !tbaa !8
  br label %if.end188

if.end188:                                        ; preds = %if.then187, %land.lhs.true184, %cond.end181
  %220 = load i32, ptr %newlevel, align 4, !tbaa !8
  store i32 %220, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end188, %if.then151, %if.end126, %if.then122, %if.end103, %if.end81, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %sr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ispruneok) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %newlevel) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %save) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %code) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %221 = load i32, ptr %retval, align 4
  ret i32 %221
}

declare void @longprune(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @pruneset(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @fmperm(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @addgenerator(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @fmptn(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @putstring(ptr noundef, ptr noundef) #2

declare i32 @itos(i32 noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !5, i64 104}
!11 = !{!"optionstruct", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !5, i64 104, !9, i64 112, !5, i64 120}
!12 = !{i64 0, i64 8, !4, i64 8, i64 8, !4, i64 16, i64 8, !4, i64 24, i64 8, !4, i64 32, i64 8, !4, i64 40, i64 8, !4, i64 48, i64 8, !4, i64 56, i64 8, !4, i64 64, i64 8, !4, i64 72, i64 8, !4, i64 80, i64 8, !4}
!13 = !{!11, !5, i64 40}
!14 = !{!15, !5, i64 24}
!15 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80}
!16 = !{!15, !5, i64 32}
!17 = !{!15, !5, i64 16}
!18 = !{!15, !5, i64 48}
!19 = !{!15, !5, i64 40}
!20 = !{!21, !9, i64 20}
!21 = !{!"", !22, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !23, i64 24, !23, i64 32, !9, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !23, i64 72, !9, i64 80}
!22 = !{!"double", !6, i64 0}
!23 = !{!"long", !6, i64 0}
!24 = !{!21, !22, i64 0}
!25 = !{!21, !9, i64 8}
!26 = !{!21, !9, i64 12}
!27 = !{!21, !9, i64 16}
!28 = !{!21, !23, i64 24}
!29 = !{!21, !23, i64 32}
!30 = !{!21, !9, i64 40}
!31 = !{!21, !23, i64 48}
!32 = !{!11, !9, i64 0}
!33 = !{!21, !23, i64 56}
!34 = !{!21, !23, i64 64}
!35 = !{!21, !23, i64 72}
!36 = !{!21, !9, i64 80}
!37 = !{!15, !5, i64 64}
!38 = !{!23, !23, i64 0}
!39 = !{!40, !5, i64 0}
!40 = !{!"tcnode_struct", !5, i64 0, !5, i64 8}
!41 = !{!40, !5, i64 8}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!11, !9, i64 4}
!46 = !{!11, !9, i64 8}
!47 = !{!11, !9, i64 12}
!48 = !{!11, !9, i64 20}
!49 = !{!11, !9, i64 112}
!50 = !{!11, !9, i64 24}
!51 = !{!11, !9, i64 88}
!52 = !{!11, !5, i64 32}
!53 = !{!11, !5, i64 64}
!54 = !{!11, !5, i64 48}
!55 = !{!11, !5, i64 56}
!56 = !{!11, !5, i64 72}
!57 = !{!11, !5, i64 80}
!58 = !{!11, !9, i64 92}
!59 = !{!11, !9, i64 96}
!60 = !{!11, !9, i64 100}
!61 = !{!11, !9, i64 16}
!62 = distinct !{!62, !43, !44}
!63 = distinct !{!63, !43, !44}
!64 = distinct !{!64, !43, !44}
!65 = distinct !{!65, !43, !44}
!66 = distinct !{!66, !43, !44}
!67 = distinct !{!67, !43, !44}
!68 = distinct !{!68, !43, !44}
!69 = !{!15, !5, i64 72}
!70 = distinct !{!70, !43, !44}
!71 = distinct !{!71, !43, !44}
!72 = distinct !{!72, !43, !44}
!73 = !{!15, !5, i64 56}
!74 = !{!15, !5, i64 80}
!75 = !{!76, !76, i64 0}
!76 = !{!"short", !6, i64 0}
!77 = distinct !{!77, !43, !44}
!78 = distinct !{!78, !43, !44}
!79 = distinct !{!79, !43, !44}
!80 = distinct !{!80, !43, !44}
!81 = distinct !{!81, !43, !44}
!82 = distinct !{!82, !43, !44}
!83 = distinct !{!83, !43, !44}
!84 = distinct !{!84, !43, !44}
!85 = !{!15, !5, i64 0}
!86 = !{!15, !5, i64 8}
!87 = distinct !{!87, !43, !44}
!88 = distinct !{!88, !43, !44}

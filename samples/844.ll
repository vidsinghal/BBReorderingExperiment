; ModuleID = 'samples/844.bc'
source_filename = "src/match/esa-lcpintervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Elcpstate = type { %struct.Lcpinterval, ptr, ptr }
%struct.Lcpinterval = type { i64, i64, i64 }
%struct.Largelcpvalue = type { i64, i64 }
%struct.Sequentialsuffixarrayreader = type { ptr, i64, i64, i64, i64, i64, ptr, ptr, i8, ptr, i32 }
%struct.Suffixarray = type { ptr, %struct.Definedunsignedlong, %struct.Definedunsignedlong, %struct.Defineddouble, %struct.Definedunsignedlong, i32, i8, i64, ptr, ptr, ptr, ptr, i32, ptr, %struct.GtBufferedfile_uint32_t, %struct.GtBufferedfile_GtUword, %struct.GtBufferedfile_GtUchar, %struct.GtBufferedfile_GtUchar, %struct.GtBufferedfile_Largelcpvalue }
%struct.Defineddouble = type { i8, double }
%struct.Definedunsignedlong = type { i8, i64 }
%struct.GtBufferedfile_uint32_t = type { i32, i32, ptr, ptr }
%struct.GtBufferedfile_GtUword = type { i32, i32, ptr, ptr }
%struct.GtBufferedfile_GtUchar = type { i32, i32, ptr, ptr }
%struct.GtBufferedfile_Largelcpvalue = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [29 x i8] c"src/match/esa-lcpintervals.c\00", align 1, !dbg !0
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [30 x i8] c"!err || !gt_error_is_set(err)\00", align 1, !dbg !12
@__func__.gt_runenumlcpvalues_bottomup = private unnamed_addr constant [29 x i8] c"gt_runenumlcpvalues_bottomup\00", align 1, !dbg !17
@__func__.gt_runenumlcpvalues_process = private unnamed_addr constant [28 x i8] c"gt_runenumlcpvalues_process\00", align 1, !dbg !21
@__func__.gt_runscanesa = private unnamed_addr constant [14 x i8] c"gt_runscanesa\00", align 1, !dbg !26
@.str.3 = private unnamed_addr constant [18 x i8] c"L %c %lu %lu %lu\0A\00", align 1, !dbg !31
@.str.4 = private unnamed_addr constant [22 x i8] c"B %c %lu %lu %lu %lu\0A\00", align 1, !dbg !36
@.str.5 = private unnamed_addr constant [14 x i8] c"state != NULL\00", align 1, !dbg !41
@__func__.processcompletenode_elcp = private unnamed_addr constant [25 x i8] c"processcompletenode_elcp\00", align 1, !dbg !44
@.str.6 = private unnamed_addr constant [16 x i8] c"nodeptr != NULL\00", align 1, !dbg !49
@.str.7 = private unnamed_addr constant [12 x i8] c"retval >= 0\00", align 1, !dbg !54
@__func__.gt_esa_scantables = private unnamed_addr constant [18 x i8] c"gt_esa_scantables\00", align 1, !dbg !59
@.str.8 = private unnamed_addr constant [61 x i8] c"file %s: line %d: unexpected end of file when reading llvtab\00", align 1, !dbg !62
@.str.9 = private unnamed_addr constant [90 x i8] c"(ssar)->suffixarray->llvtab[(ssar)->largelcpindex] .position == (ssar)->nextlcptabindex-1\00", align 1, !dbg !67
@.str.10 = private unnamed_addr constant [34 x i8] c"error when trying to read next %s\00", align 1, !dbg !72
@.str.11 = private unnamed_addr constant [8 x i8] c"GtUword\00", align 1, !dbg !77
@.str.12 = private unnamed_addr constant [24 x i8] c"Missing value in suftab\00", align 1, !dbg !82
@.str.13 = private unnamed_addr constant [9 x i8] c"uint32_t\00", align 1, !dbg !87
@.str.14 = private unnamed_addr constant [28 x i8] c"illegal mode %u: use 1 or 2\00", align 1, !dbg !92
@.str.15 = private unnamed_addr constant [15 x i8] c"sumsuftab=%lu\0A\00", align 1, !dbg !95
@.str.16 = private unnamed_addr constant [15 x i8] c"sumlcptab=%lu\0A\00", align 1, !dbg !100
@.str.17 = private unnamed_addr constant [8 x i8] c"GtUchar\00", align 1, !dbg !102
@.str.18 = private unnamed_addr constant [14 x i8] c"Largelcpvalue\00", align 1, !dbg !105

; Function Attrs: nounwind uwtable
define i32 @gt_processlcpintervals(ptr noundef %ssar, ptr noundef %processfunction, ptr noundef %processinfo, ptr noundef %logger, ptr noundef %err) #0 !dbg !165 {
entry:
  %ssar.addr = alloca ptr, align 8
  %processfunction.addr = alloca ptr, align 8
  %processinfo.addr = alloca ptr, align 8
  %logger.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  %haserr = alloca i8, align 1
  store ptr %ssar, ptr %ssar.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %ssar.addr, metadata !344, metadata !DIExpression()), !dbg !355
  store ptr %processfunction, ptr %processfunction.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %processfunction.addr, metadata !345, metadata !DIExpression()), !dbg !356
  store ptr %processinfo, ptr %processinfo.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %processinfo.addr, metadata !346, metadata !DIExpression()), !dbg !357
  store ptr %logger, ptr %logger.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %logger.addr, metadata !347, metadata !DIExpression()), !dbg !358
  store ptr %err, ptr %err.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !348, metadata !DIExpression()), !dbg !359
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #7, !dbg !360
  tail call void @llvm.dbg.declare(metadata ptr %state, metadata !349, metadata !DIExpression()), !dbg !361
  call void @llvm.lifetime.start.p0(i64 1, ptr %haserr) #7, !dbg !362
  tail call void @llvm.dbg.declare(metadata ptr %haserr, metadata !350, metadata !DIExpression()), !dbg !363
  store i8 0, ptr %haserr, align 1, !dbg !363, !tbaa !364
  %call = call ptr @gt_malloc_mem(i64 noundef 40, ptr noundef @.str, i32 noundef 141), !dbg !366
  store ptr %call, ptr %state, align 8, !dbg !367, !tbaa !351
  %0 = load ptr, ptr %processfunction.addr, align 8, !dbg !368, !tbaa !351
  %1 = load ptr, ptr %state, align 8, !dbg !369, !tbaa !351
  %processlcpinterval = getelementptr inbounds %struct.Elcpstate, ptr %1, i32 0, i32 1, !dbg !370
  store ptr %0, ptr %processlcpinterval, align 8, !dbg !371, !tbaa !372
  %2 = load ptr, ptr %processinfo.addr, align 8, !dbg !376, !tbaa !351
  %3 = load ptr, ptr %state, align 8, !dbg !377, !tbaa !351
  %processinfo1 = getelementptr inbounds %struct.Elcpstate, ptr %3, i32 0, i32 2, !dbg !378
  store ptr %2, ptr %processinfo1, align 8, !dbg !379, !tbaa !380
  %4 = load ptr, ptr %ssar.addr, align 8, !dbg !381, !tbaa !351
  %5 = load ptr, ptr %state, align 8, !dbg !383, !tbaa !351
  %processlcpinterval2 = getelementptr inbounds %struct.Elcpstate, ptr %5, i32 0, i32 1, !dbg !384
  %6 = load ptr, ptr %processlcpinterval2, align 8, !dbg !384, !tbaa !372
  %cmp = icmp eq ptr %6, null, !dbg !385
  %7 = zext i1 %cmp to i64, !dbg !383
  %cond = select i1 %cmp, ptr @processleafedge_elcp, ptr null, !dbg !383
  %8 = load ptr, ptr %state, align 8, !dbg !386, !tbaa !351
  %processlcpinterval3 = getelementptr inbounds %struct.Elcpstate, ptr %8, i32 0, i32 1, !dbg !387
  %9 = load ptr, ptr %processlcpinterval3, align 8, !dbg !387, !tbaa !372
  %cmp4 = icmp eq ptr %9, null, !dbg !388
  %10 = zext i1 %cmp4 to i64, !dbg !386
  %cond5 = select i1 %cmp4, ptr @processbranchedge_elcp, ptr null, !dbg !386
  %11 = load ptr, ptr %state, align 8, !dbg !389, !tbaa !351
  %12 = load ptr, ptr %logger.addr, align 8, !dbg !390, !tbaa !351
  %13 = load ptr, ptr %err.addr, align 8, !dbg !391, !tbaa !351
  %call6 = call i32 @gt_depthfirstesa(ptr noundef %4, ptr noundef @allocateDfsinfo_elcp, ptr noundef @freeDfsinfo_elcp, ptr noundef %cond, ptr noundef %cond5, ptr noundef @processcompletenode_elcp, ptr noundef @assignleftmostleaf_elcp, ptr noundef @assignrightmostleaf_elcp, ptr noundef %11, ptr noundef %12, ptr noundef %13), !dbg !392
  %cmp7 = icmp ne i32 %call6, 0, !dbg !393
  br i1 %cmp7, label %if.then, label %if.end, !dbg !394

if.then:                                          ; preds = %entry
  store i8 1, ptr %haserr, align 1, !dbg !395, !tbaa !364
  br label %if.end, !dbg !397

if.end:                                           ; preds = %if.then, %entry
  %14 = load i8, ptr %haserr, align 1, !dbg !398, !tbaa !364, !range !400, !noundef !401
  %tobool = trunc i8 %14 to i1, !dbg !398
  br i1 %tobool, label %if.end21, label %land.lhs.true, !dbg !402

land.lhs.true:                                    ; preds = %if.end
  %15 = load ptr, ptr %state, align 8, !dbg !403, !tbaa !351
  %processlcpinterval8 = getelementptr inbounds %struct.Elcpstate, ptr %15, i32 0, i32 1, !dbg !404
  %16 = load ptr, ptr %processlcpinterval8, align 8, !dbg !404, !tbaa !372
  %cmp9 = icmp ne ptr %16, null, !dbg !405
  br i1 %cmp9, label %if.then10, label %if.end21, !dbg !406

if.then10:                                        ; preds = %land.lhs.true
  %17 = load ptr, ptr %state, align 8, !dbg !407, !tbaa !351
  %lastcompletenode = getelementptr inbounds %struct.Elcpstate, ptr %17, i32 0, i32 0, !dbg !409
  %offset = getelementptr inbounds %struct.Lcpinterval, ptr %lastcompletenode, i32 0, i32 0, !dbg !410
  store i64 0, ptr %offset, align 8, !dbg !411, !tbaa !412
  %18 = load ptr, ptr %state, align 8, !dbg !413, !tbaa !351
  %lastcompletenode11 = getelementptr inbounds %struct.Elcpstate, ptr %18, i32 0, i32 0, !dbg !414
  %left = getelementptr inbounds %struct.Lcpinterval, ptr %lastcompletenode11, i32 0, i32 1, !dbg !415
  store i64 0, ptr %left, align 8, !dbg !416, !tbaa !417
  %19 = load ptr, ptr %ssar.addr, align 8, !dbg !418, !tbaa !351
  %call12 = call i64 @gt_Sequentialsuffixarrayreader_totallength(ptr noundef %19), !dbg !419
  %20 = load ptr, ptr %state, align 8, !dbg !420, !tbaa !351
  %lastcompletenode13 = getelementptr inbounds %struct.Elcpstate, ptr %20, i32 0, i32 0, !dbg !421
  %right = getelementptr inbounds %struct.Lcpinterval, ptr %lastcompletenode13, i32 0, i32 2, !dbg !422
  store i64 %call12, ptr %right, align 8, !dbg !423, !tbaa !424
  %21 = load ptr, ptr %state, align 8, !dbg !425, !tbaa !351
  %processlcpinterval14 = getelementptr inbounds %struct.Elcpstate, ptr %21, i32 0, i32 1, !dbg !427
  %22 = load ptr, ptr %processlcpinterval14, align 8, !dbg !427, !tbaa !372
  %23 = load ptr, ptr %state, align 8, !dbg !428, !tbaa !351
  %processinfo15 = getelementptr inbounds %struct.Elcpstate, ptr %23, i32 0, i32 2, !dbg !429
  %24 = load ptr, ptr %processinfo15, align 8, !dbg !429, !tbaa !380
  %25 = load ptr, ptr %state, align 8, !dbg !430, !tbaa !351
  %lastcompletenode16 = getelementptr inbounds %struct.Elcpstate, ptr %25, i32 0, i32 0, !dbg !431
  %call17 = call i32 %22(ptr noundef %24, ptr noundef %lastcompletenode16), !dbg !425
  %cmp18 = icmp ne i32 %call17, 0, !dbg !432
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !433

if.then19:                                        ; preds = %if.then10
  store i8 1, ptr %haserr, align 1, !dbg !434, !tbaa !364
  br label %if.end20, !dbg !436

if.end20:                                         ; preds = %if.then19, %if.then10
  br label %if.end21, !dbg !437

if.end21:                                         ; preds = %if.end20, %land.lhs.true, %if.end
  %26 = load ptr, ptr %state, align 8, !dbg !438, !tbaa !351
  call void @gt_free_mem(ptr noundef %26, ptr noundef @.str, i32 noundef 172), !dbg !438
  %27 = load i8, ptr %haserr, align 1, !dbg !439, !tbaa !364, !range !400, !noundef !401
  %tobool22 = trunc i8 %27 to i1, !dbg !439
  %28 = zext i1 %tobool22 to i64, !dbg !439
  %cond23 = select i1 %tobool22, i32 -1, i32 0, !dbg !439
  call void @llvm.lifetime.end.p0(i64 1, ptr %haserr) #7, !dbg !440
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #7, !dbg !440
  ret i32 %cond23, !dbg !441
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !442 ptr @gt_malloc_mem(i64 noundef, ptr noundef, i32 noundef) #2

declare !dbg !447 i32 @gt_depthfirstesa(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @allocateDfsinfo_elcp(ptr noundef %astate) #0 !dbg !471 {
entry:
  %astate.addr = alloca ptr, align 8
  store ptr %astate, ptr %astate.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %astate.addr, metadata !473, metadata !DIExpression()), !dbg !474
  %call = call ptr @gt_malloc_mem(i64 noundef 24, ptr noundef @.str, i32 noundef 36), !dbg !475
  ret ptr %call, !dbg !476
}

; Function Attrs: nounwind uwtable
define internal void @freeDfsinfo_elcp(ptr noundef %adfsinfo, ptr noundef %state) #0 !dbg !477 {
entry:
  %adfsinfo.addr = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  store ptr %adfsinfo, ptr %adfsinfo.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %adfsinfo.addr, metadata !479, metadata !DIExpression()), !dbg !481
  store ptr %state, ptr %state.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !480, metadata !DIExpression()), !dbg !482
  %0 = load ptr, ptr %adfsinfo.addr, align 8, !dbg !483, !tbaa !351
  call void @gt_free_mem(ptr noundef %0, ptr noundef @.str, i32 noundef 41), !dbg !483
  ret void, !dbg !484
}

; Function Attrs: nounwind uwtable
define internal i32 @processleafedge_elcp(i1 noundef zeroext %firstsucc, i64 noundef %fatherdepth, ptr noundef %afather, i64 noundef %leafnumber, ptr noundef %astate, ptr noundef %err) #0 !dbg !485 {
entry:
  %firstsucc.addr = alloca i8, align 1
  %fatherdepth.addr = alloca i64, align 8
  %afather.addr = alloca ptr, align 8
  %leafnumber.addr = alloca i64, align 8
  %astate.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %father = alloca ptr, align 8
  %frombool = zext i1 %firstsucc to i8
  store i8 %frombool, ptr %firstsucc.addr, align 1, !tbaa !364
  tail call void @llvm.dbg.declare(metadata ptr %firstsucc.addr, metadata !487, metadata !DIExpression()), !dbg !494
  store i64 %fatherdepth, ptr %fatherdepth.addr, align 8, !tbaa !495
  tail call void @llvm.dbg.declare(metadata ptr %fatherdepth.addr, metadata !488, metadata !DIExpression()), !dbg !496
  store ptr %afather, ptr %afather.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %afather.addr, metadata !489, metadata !DIExpression()), !dbg !497
  store i64 %leafnumber, ptr %leafnumber.addr, align 8, !tbaa !495
  tail call void @llvm.dbg.declare(metadata ptr %leafnumber.addr, metadata !490, metadata !DIExpression()), !dbg !498
  store ptr %astate, ptr %astate.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %astate.addr, metadata !491, metadata !DIExpression()), !dbg !499
  store ptr %err, ptr %err.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !492, metadata !DIExpression()), !dbg !500
  call void @llvm.lifetime.start.p0(i64 8, ptr %father) #7, !dbg !501
  tail call void @llvm.dbg.declare(metadata ptr %father, metadata !493, metadata !DIExpression()), !dbg !502
  %0 = load ptr, ptr %afather.addr, align 8, !dbg !503, !tbaa !351
  store ptr %0, ptr %father, align 8, !dbg !502, !tbaa !351
  %1 = load i8, ptr %firstsucc.addr, align 1, !dbg !504, !tbaa !364, !range !400, !noundef !401
  %tobool = trunc i8 %1 to i1, !dbg !504
  %2 = zext i1 %tobool to i64, !dbg !504
  %cond = select i1 %tobool, i32 49, i32 48, !dbg !504
  %3 = load i64, ptr %fatherdepth.addr, align 8, !dbg !505, !tbaa !495
  %4 = load ptr, ptr %father, align 8, !dbg !506, !tbaa !351
  %left = getelementptr inbounds %struct.Lcpinterval, ptr %4, i32 0, i32 1, !dbg !507
  %5 = load i64, ptr %left, align 8, !dbg !507, !tbaa !508
  %6 = load i64, ptr %leafnumber.addr, align 8, !dbg !509, !tbaa !495
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %cond, i64 noundef %3, i64 noundef %5, i64 noundef %6), !dbg !510
  call void @llvm.lifetime.end.p0(i64 8, ptr %father) #7, !dbg !511
  ret i32 0, !dbg !512
}

; Function Attrs: nounwind uwtable
define internal i32 @processbranchedge_elcp(i1 noundef zeroext %firstsucc, i64 noundef %fatherdepth, ptr noundef %afather, ptr noundef %ason, ptr noundef %astate, ptr noundef %err) #0 !dbg !513 {
entry:
  %firstsucc.addr = alloca i8, align 1
  %fatherdepth.addr = alloca i64, align 8
  %afather.addr = alloca ptr, align 8
  %ason.addr = alloca ptr, align 8
  %astate.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %father = alloca ptr, align 8
  %son = alloca ptr, align 8
  %state = alloca ptr, align 8
  %frombool = zext i1 %firstsucc to i8
  store i8 %frombool, ptr %firstsucc.addr, align 1, !tbaa !364
  tail call void @llvm.dbg.declare(metadata ptr %firstsucc.addr, metadata !515, metadata !DIExpression()), !dbg !524
  store i64 %fatherdepth, ptr %fatherdepth.addr, align 8, !tbaa !495
  tail call void @llvm.dbg.declare(metadata ptr %fatherdepth.addr, metadata !516, metadata !DIExpression()), !dbg !525
  store ptr %afather, ptr %afather.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %afather.addr, metadata !517, metadata !DIExpression()), !dbg !526
  store ptr %ason, ptr %ason.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %ason.addr, metadata !518, metadata !DIExpression()), !dbg !527
  store ptr %astate, ptr %astate.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %astate.addr, metadata !519, metadata !DIExpression()), !dbg !528
  store ptr %err, ptr %err.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !520, metadata !DIExpression()), !dbg !529
  call void @llvm.lifetime.start.p0(i64 8, ptr %father) #7, !dbg !530
  tail call void @llvm.dbg.declare(metadata ptr %father, metadata !521, metadata !DIExpression()), !dbg !531
  %0 = load ptr, ptr %afather.addr, align 8, !dbg !532, !tbaa !351
  store ptr %0, ptr %father, align 8, !dbg !531, !tbaa !351
  call void @llvm.lifetime.start.p0(i64 8, ptr %son) #7, !dbg !533
  tail call void @llvm.dbg.declare(metadata ptr %son, metadata !522, metadata !DIExpression()), !dbg !534
  %1 = load ptr, ptr %ason.addr, align 8, !dbg !535, !tbaa !351
  store ptr %1, ptr %son, align 8, !dbg !534, !tbaa !351
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #7, !dbg !536
  tail call void @llvm.dbg.declare(metadata ptr %state, metadata !523, metadata !DIExpression()), !dbg !537
  %2 = load ptr, ptr %astate.addr, align 8, !dbg !538, !tbaa !351
  store ptr %2, ptr %state, align 8, !dbg !537, !tbaa !351
  %3 = load ptr, ptr %son, align 8, !dbg !539, !tbaa !351
  %cmp = icmp ne ptr %3, null, !dbg !541
  br i1 %cmp, label %if.then, label %if.else, !dbg !542

if.then:                                          ; preds = %entry
  %4 = load i8, ptr %firstsucc.addr, align 1, !dbg !543, !tbaa !364, !range !400, !noundef !401
  %tobool = trunc i8 %4 to i1, !dbg !543
  %5 = load i64, ptr %fatherdepth.addr, align 8, !dbg !545, !tbaa !495
  %6 = load ptr, ptr %father, align 8, !dbg !546, !tbaa !351
  %left = getelementptr inbounds %struct.Lcpinterval, ptr %6, i32 0, i32 1, !dbg !547
  %7 = load i64, ptr %left, align 8, !dbg !547, !tbaa !508
  %8 = load ptr, ptr %son, align 8, !dbg !548, !tbaa !351
  %offset = getelementptr inbounds %struct.Lcpinterval, ptr %8, i32 0, i32 0, !dbg !549
  %9 = load i64, ptr %offset, align 8, !dbg !549, !tbaa !550
  %10 = load ptr, ptr %son, align 8, !dbg !551, !tbaa !351
  %left1 = getelementptr inbounds %struct.Lcpinterval, ptr %10, i32 0, i32 1, !dbg !552
  %11 = load i64, ptr %left1, align 8, !dbg !552, !tbaa !508
  call void @showbranchingedgeDFS(i1 noundef zeroext %tobool, i64 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %11), !dbg !553
  br label %if.end, !dbg !554

if.else:                                          ; preds = %entry
  %12 = load i8, ptr %firstsucc.addr, align 1, !dbg !555, !tbaa !364, !range !400, !noundef !401
  %tobool2 = trunc i8 %12 to i1, !dbg !555
  %13 = load i64, ptr %fatherdepth.addr, align 8, !dbg !557, !tbaa !495
  %14 = load ptr, ptr %father, align 8, !dbg !558, !tbaa !351
  %left3 = getelementptr inbounds %struct.Lcpinterval, ptr %14, i32 0, i32 1, !dbg !559
  %15 = load i64, ptr %left3, align 8, !dbg !559, !tbaa !508
  %16 = load ptr, ptr %state, align 8, !dbg !560, !tbaa !351
  %lastcompletenode = getelementptr inbounds %struct.Elcpstate, ptr %16, i32 0, i32 0, !dbg !561
  %offset4 = getelementptr inbounds %struct.Lcpinterval, ptr %lastcompletenode, i32 0, i32 0, !dbg !562
  %17 = load i64, ptr %offset4, align 8, !dbg !562, !tbaa !412
  %18 = load ptr, ptr %state, align 8, !dbg !563, !tbaa !351
  %lastcompletenode5 = getelementptr inbounds %struct.Elcpstate, ptr %18, i32 0, i32 0, !dbg !564
  %left6 = getelementptr inbounds %struct.Lcpinterval, ptr %lastcompletenode5, i32 0, i32 1, !dbg !565
  %19 = load i64, ptr %left6, align 8, !dbg !565, !tbaa !417
  call void @showbranchingedgeDFS(i1 noundef zeroext %tobool2, i64 noundef %13, i64 noundef %15, i64 noundef %17, i64 noundef %19), !dbg !566
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #7, !dbg !567
  call void @llvm.lifetime.end.p0(i64 8, ptr %son) #7, !dbg !567
  call void @llvm.lifetime.end.p0(i64 8, ptr %father) #7, !dbg !567
  ret i32 0, !dbg !568
}

; Function Attrs: nounwind uwtable
define internal i32 @processcompletenode_elcp(i64 noundef %nodeptrdepth, ptr noundef %anodeptr, i64 noundef %nodeptrminusonedepth, ptr noundef %astate, ptr noundef %err) #0 !dbg !569 {
entry:
  %retval = alloca i32, align 4
  %nodeptrdepth.addr = alloca i64, align 8
  %anodeptr.addr = alloca ptr, align 8
  %nodeptrminusonedepth.addr = alloca i64, align 8
  %astate.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %nodeptr = alloca ptr, align 8
  %state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %nodeptrdepth, ptr %nodeptrdepth.addr, align 8, !tbaa !495
  tail call void @llvm.dbg.declare(metadata ptr %nodeptrdepth.addr, metadata !571, metadata !DIExpression()), !dbg !578
  store ptr %anodeptr, ptr %anodeptr.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %anodeptr.addr, metadata !572, metadata !DIExpression()), !dbg !579
  store i64 %nodeptrminusonedepth, ptr %nodeptrminusonedepth.addr, align 8, !tbaa !495
  tail call void @llvm.dbg.declare(metadata ptr %nodeptrminusonedepth.addr, metadata !573, metadata !DIExpression()), !dbg !580
  store ptr %astate, ptr %astate.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %astate.addr, metadata !574, metadata !DIExpression()), !dbg !581
  store ptr %err, ptr %err.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !575, metadata !DIExpression()), !dbg !582
  call void @llvm.lifetime.start.p0(i64 8, ptr %nodeptr) #7, !dbg !583
  tail call void @llvm.dbg.declare(metadata ptr %nodeptr, metadata !576, metadata !DIExpression()), !dbg !584
  %0 = load ptr, ptr %anodeptr.addr, align 8, !dbg !585, !tbaa !351
  store ptr %0, ptr %nodeptr, align 8, !dbg !584, !tbaa !351
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #7, !dbg !586
  tail call void @llvm.dbg.declare(metadata ptr %state, metadata !577, metadata !DIExpression()), !dbg !587
  %1 = load ptr, ptr %astate.addr, align 8, !dbg !588, !tbaa !351
  store ptr %1, ptr %state, align 8, !dbg !587, !tbaa !351
  br label %do.body, !dbg !589

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %state, align 8, !dbg !590, !tbaa !351
  %cmp = icmp ne ptr %2, null, !dbg !590
  br i1 %cmp, label %if.end, label %if.then, !dbg !593

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr @stderr, align 8, !dbg !594, !tbaa !351
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.1, ptr noundef @.str.5, ptr noundef @__func__.processcompletenode_elcp, ptr noundef @.str, i32 noundef 100), !dbg !594
  call void @abort() #8, !dbg !594
  unreachable, !dbg !594

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !593

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !593

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !596

do.body1:                                         ; preds = %do.end
  %4 = load ptr, ptr %nodeptr, align 8, !dbg !597, !tbaa !351
  %cmp2 = icmp ne ptr %4, null, !dbg !597
  br i1 %cmp2, label %if.end5, label %if.then3, !dbg !600

if.then3:                                         ; preds = %do.body1
  %5 = load ptr, ptr @stderr, align 8, !dbg !601, !tbaa !351
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, ptr noundef @.str.6, ptr noundef @__func__.processcompletenode_elcp, ptr noundef @.str, i32 noundef 101), !dbg !601
  call void @abort() #8, !dbg !601
  unreachable, !dbg !601

if.end5:                                          ; preds = %do.body1
  br label %do.cond6, !dbg !600

do.cond6:                                         ; preds = %if.end5
  br label %do.end7, !dbg !600

do.end7:                                          ; preds = %do.cond6
  %6 = load i64, ptr %nodeptrdepth.addr, align 8, !dbg !603, !tbaa !495
  %7 = load ptr, ptr %state, align 8, !dbg !604, !tbaa !351
  %lastcompletenode = getelementptr inbounds %struct.Elcpstate, ptr %7, i32 0, i32 0, !dbg !605
  %offset = getelementptr inbounds %struct.Lcpinterval, ptr %lastcompletenode, i32 0, i32 0, !dbg !606
  store i64 %6, ptr %offset, align 8, !dbg !607, !tbaa !412
  %8 = load ptr, ptr %nodeptr, align 8, !dbg !608, !tbaa !351
  %offset8 = getelementptr inbounds %struct.Lcpinterval, ptr %8, i32 0, i32 0, !dbg !609
  store i64 %6, ptr %offset8, align 8, !dbg !610, !tbaa !550
  %9 = load ptr, ptr %nodeptr, align 8, !dbg !611, !tbaa !351
  %left = getelementptr inbounds %struct.Lcpinterval, ptr %9, i32 0, i32 1, !dbg !612
  %10 = load i64, ptr %left, align 8, !dbg !612, !tbaa !508
  %11 = load ptr, ptr %state, align 8, !dbg !613, !tbaa !351
  %lastcompletenode9 = getelementptr inbounds %struct.Elcpstate, ptr %11, i32 0, i32 0, !dbg !614
  %left10 = getelementptr inbounds %struct.Lcpinterval, ptr %lastcompletenode9, i32 0, i32 1, !dbg !615
  store i64 %10, ptr %left10, align 8, !dbg !616, !tbaa !417
  %12 = load ptr, ptr %nodeptr, align 8, !dbg !617, !tbaa !351
  %right = getelementptr inbounds %struct.Lcpinterval, ptr %12, i32 0, i32 2, !dbg !618
  %13 = load i64, ptr %right, align 8, !dbg !618, !tbaa !619
  %14 = load ptr, ptr %state, align 8, !dbg !620, !tbaa !351
  %lastcompletenode11 = getelementptr inbounds %struct.Elcpstate, ptr %14, i32 0, i32 0, !dbg !621
  %right12 = getelementptr inbounds %struct.Lcpinterval, ptr %lastcompletenode11, i32 0, i32 2, !dbg !622
  store i64 %13, ptr %right12, align 8, !dbg !623, !tbaa !424
  %15 = load ptr, ptr %state, align 8, !dbg !624, !tbaa !351
  %processlcpinterval = getelementptr inbounds %struct.Elcpstate, ptr %15, i32 0, i32 1, !dbg !626
  %16 = load ptr, ptr %processlcpinterval, align 8, !dbg !626, !tbaa !372
  %cmp13 = icmp ne ptr %16, null, !dbg !627
  br i1 %cmp13, label %if.then14, label %if.end21, !dbg !628

if.then14:                                        ; preds = %do.end7
  %17 = load ptr, ptr %state, align 8, !dbg !629, !tbaa !351
  %processlcpinterval15 = getelementptr inbounds %struct.Elcpstate, ptr %17, i32 0, i32 1, !dbg !632
  %18 = load ptr, ptr %processlcpinterval15, align 8, !dbg !632, !tbaa !372
  %19 = load ptr, ptr %state, align 8, !dbg !633, !tbaa !351
  %processinfo = getelementptr inbounds %struct.Elcpstate, ptr %19, i32 0, i32 2, !dbg !634
  %20 = load ptr, ptr %processinfo, align 8, !dbg !634, !tbaa !380
  %21 = load ptr, ptr %state, align 8, !dbg !635, !tbaa !351
  %lastcompletenode16 = getelementptr inbounds %struct.Elcpstate, ptr %21, i32 0, i32 0, !dbg !636
  %call17 = call i32 %18(ptr noundef %20, ptr noundef %lastcompletenode16), !dbg !629
  %cmp18 = icmp ne i32 %call17, 0, !dbg !637
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !638

if.then19:                                        ; preds = %if.then14
  store i32 -1, ptr %retval, align 4, !dbg !639
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !639

if.end20:                                         ; preds = %if.then14
  br label %if.end21, !dbg !641

if.end21:                                         ; preds = %if.end20, %do.end7
  store i32 0, ptr %retval, align 4, !dbg !642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !642

cleanup:                                          ; preds = %if.end21, %if.then19
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #7, !dbg !643
  call void @llvm.lifetime.end.p0(i64 8, ptr %nodeptr) #7, !dbg !643
  %22 = load i32, ptr %retval, align 4, !dbg !643
  ret i32 %22, !dbg !643
}

; Function Attrs: nounwind uwtable
define internal void @assignleftmostleaf_elcp(ptr noundef %adfsinfo, i64 noundef %leftmostleaf, ptr noundef %dfsstate) #0 !dbg !644 {
entry:
  %adfsinfo.addr = alloca ptr, align 8
  %leftmostleaf.addr = alloca i64, align 8
  %dfsstate.addr = alloca ptr, align 8
  store ptr %adfsinfo, ptr %adfsinfo.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %adfsinfo.addr, metadata !646, metadata !DIExpression()), !dbg !649
  store i64 %leftmostleaf, ptr %leftmostleaf.addr, align 8, !tbaa !495
  tail call void @llvm.dbg.declare(metadata ptr %leftmostleaf.addr, metadata !647, metadata !DIExpression()), !dbg !650
  store ptr %dfsstate, ptr %dfsstate.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %dfsstate.addr, metadata !648, metadata !DIExpression()), !dbg !651
  %0 = load i64, ptr %leftmostleaf.addr, align 8, !dbg !652, !tbaa !495
  %1 = load ptr, ptr %adfsinfo.addr, align 8, !dbg !653, !tbaa !351
  %left = getelementptr inbounds %struct.Lcpinterval, ptr %1, i32 0, i32 1, !dbg !654
  store i64 %0, ptr %left, align 8, !dbg !655, !tbaa !508
  ret void, !dbg !656
}

; Function Attrs: nounwind uwtable
define internal void @assignrightmostleaf_elcp(ptr noundef %adfsinfo, i64 noundef %currentindex, i64 noundef %previoussuffix, i64 noundef %currentlcp, ptr noundef %dfsstate) #0 !dbg !657 {
entry:
  %adfsinfo.addr = alloca ptr, align 8
  %currentindex.addr = alloca i64, align 8
  %previoussuffix.addr = alloca i64, align 8
  %currentlcp.addr = alloca i64, align 8
  %dfsstate.addr = alloca ptr, align 8
  store ptr %adfsinfo, ptr %adfsinfo.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %adfsinfo.addr, metadata !659, metadata !DIExpression()), !dbg !664
  store i64 %currentindex, ptr %currentindex.addr, align 8, !tbaa !495
  tail call void @llvm.dbg.declare(metadata ptr %currentindex.addr, metadata !660, metadata !DIExpression()), !dbg !665
  store i64 %previoussuffix, ptr %previoussuffix.addr, align 8, !tbaa !495
  tail call void @llvm.dbg.declare(metadata ptr %previoussuffix.addr, metadata !661, metadata !DIExpression()), !dbg !666
  store i64 %currentlcp, ptr %currentlcp.addr, align 8, !tbaa !495
  tail call void @llvm.dbg.declare(metadata ptr %currentlcp.addr, metadata !662, metadata !DIExpression()), !dbg !667
  store ptr %dfsstate, ptr %dfsstate.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %dfsstate.addr, metadata !663, metadata !DIExpression()), !dbg !668
  %0 = load i64, ptr %currentindex.addr, align 8, !dbg !669, !tbaa !495
  %1 = load ptr, ptr %adfsinfo.addr, align 8, !dbg !670, !tbaa !351
  %right = getelementptr inbounds %struct.Lcpinterval, ptr %1, i32 0, i32 2, !dbg !671
  store i64 %0, ptr %right, align 8, !dbg !672, !tbaa !619
  ret void, !dbg !673
}

declare !dbg !674 i64 @gt_Sequentialsuffixarrayreader_totallength(ptr noundef) #2

declare !dbg !679 void @gt_free_mem(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gt_runenumlcpvalues_bottomup(ptr noundef %inputindex, ptr noundef %logger, ptr noundef %err) #0 !dbg !682 {
entry:
  %inputindex.addr = alloca ptr, align 8
  %logger.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %haserr = alloca i8, align 1
  %ssar = alloca ptr, align 8
  %elv = alloca ptr, align 8
  store ptr %inputindex, ptr %inputindex.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %inputindex.addr, metadata !686, metadata !DIExpression()), !dbg !698
  store ptr %logger, ptr %logger.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %logger.addr, metadata !687, metadata !DIExpression()), !dbg !699
  store ptr %err, ptr %err.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !688, metadata !DIExpression()), !dbg !700
  call void @llvm.lifetime.start.p0(i64 1, ptr %haserr) #7, !dbg !701
  tail call void @llvm.dbg.declare(metadata ptr %haserr, metadata !689, metadata !DIExpression()), !dbg !702
  store i8 0, ptr %haserr, align 1, !dbg !702, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 8, ptr %ssar) #7, !dbg !703
  tail call void @llvm.dbg.declare(metadata ptr %ssar, metadata !690, metadata !DIExpression()), !dbg !704
  br label %do.body, !dbg !705

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !706, !tbaa !351
  %tobool = icmp ne ptr %0, null, !dbg !706
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !706

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !706, !tbaa !351
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !706
  br i1 %call, label %if.then, label %if.end, !dbg !709

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !710, !tbaa !351
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_runenumlcpvalues_bottomup, ptr noundef @.str, i32 noundef 183), !dbg !710
  call void @abort() #8, !dbg !710
  unreachable, !dbg !710

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !709

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !709

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %inputindex.addr, align 8, !dbg !712, !tbaa !351
  %4 = load ptr, ptr %logger.addr, align 8, !dbg !713, !tbaa !351
  %5 = load ptr, ptr %err.addr, align 8, !dbg !714, !tbaa !351
  %call2 = call ptr @gt_newSequentialsuffixarrayreaderfromfile(ptr noundef %3, i32 noundef 7, i1 noundef zeroext true, ptr noundef %4, ptr noundef %5), !dbg !715
  store ptr %call2, ptr %ssar, align 8, !dbg !716, !tbaa !351
  %6 = load ptr, ptr %ssar, align 8, !dbg !717, !tbaa !351
  %cmp = icmp eq ptr %6, null, !dbg !719
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !720

if.then3:                                         ; preds = %do.end
  store i8 1, ptr %haserr, align 1, !dbg !721, !tbaa !364
  br label %if.end4, !dbg !723

if.end4:                                          ; preds = %if.then3, %do.end
  %7 = load i8, ptr %haserr, align 1, !dbg !724, !tbaa !364, !range !400, !noundef !401
  %tobool5 = trunc i8 %7 to i1, !dbg !724
  br i1 %tobool5, label %if.end12, label %if.then6, !dbg !725

if.then6:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %elv) #7, !dbg !726
  tail call void @llvm.dbg.declare(metadata ptr %elv, metadata !691, metadata !DIExpression()), !dbg !727
  %call7 = call ptr @gt_esa_lcpitvs_visitor_new(), !dbg !728
  store ptr %call7, ptr %elv, align 8, !dbg !727, !tbaa !351
  %8 = load ptr, ptr %ssar, align 8, !dbg !729, !tbaa !351
  %9 = load ptr, ptr %elv, align 8, !dbg !731, !tbaa !351
  %10 = load ptr, ptr %err.addr, align 8, !dbg !732, !tbaa !351
  %call8 = call i32 @gt_esa_bottomup(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !733
  %cmp9 = icmp ne i32 %call8, 0, !dbg !734
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !735

if.then10:                                        ; preds = %if.then6
  store i8 1, ptr %haserr, align 1, !dbg !736, !tbaa !364
  br label %if.end11, !dbg !738

if.end11:                                         ; preds = %if.then10, %if.then6
  %11 = load ptr, ptr %elv, align 8, !dbg !739, !tbaa !351
  call void @gt_esa_visitor_delete(ptr noundef %11), !dbg !740
  call void @llvm.lifetime.end.p0(i64 8, ptr %elv) #7, !dbg !741
  br label %if.end12, !dbg !742

if.end12:                                         ; preds = %if.end11, %if.end4
  %12 = load ptr, ptr %ssar, align 8, !dbg !743, !tbaa !351
  %cmp13 = icmp ne ptr %12, null, !dbg !745
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !746

if.then14:                                        ; preds = %if.end12
  call void @gt_freeSequentialsuffixarrayreader(ptr noundef %ssar), !dbg !747
  br label %if.end15, !dbg !749

if.end15:                                         ; preds = %if.then14, %if.end12
  %13 = load i8, ptr %haserr, align 1, !dbg !750, !tbaa !364, !range !400, !noundef !401
  %tobool16 = trunc i8 %13 to i1, !dbg !750
  %14 = zext i1 %tobool16 to i64, !dbg !750
  %cond = select i1 %tobool16, i32 -1, i32 0, !dbg !750
  call void @llvm.lifetime.end.p0(i64 8, ptr %ssar) #7, !dbg !751
  call void @llvm.lifetime.end.p0(i64 1, ptr %haserr) #7, !dbg !751
  ret i32 %cond, !dbg !752
}

declare !dbg !753 zeroext i1 @gt_error_is_set(ptr noundef) #2

declare !dbg !758 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare !dbg !764 void @abort() #3

declare !dbg !768 ptr @gt_newSequentialsuffixarrayreaderfromfile(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) #2

declare !dbg !771 ptr @gt_esa_lcpitvs_visitor_new() #2

declare !dbg !775 i32 @gt_esa_bottomup(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !779 void @gt_esa_visitor_delete(ptr noundef) #2

declare !dbg !782 void @gt_freeSequentialsuffixarrayreader(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @gt_runenumlcpvalues_process(ptr noundef %inputindex, ptr noundef %processfunction, ptr noundef %processdata, ptr noundef %logger, ptr noundef %err) #0 !dbg !786 {
entry:
  %inputindex.addr = alloca ptr, align 8
  %processfunction.addr = alloca ptr, align 8
  %processdata.addr = alloca ptr, align 8
  %logger.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %haserr = alloca i8, align 1
  %ssar = alloca ptr, align 8
  store ptr %inputindex, ptr %inputindex.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %inputindex.addr, metadata !790, metadata !DIExpression()), !dbg !797
  store ptr %processfunction, ptr %processfunction.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %processfunction.addr, metadata !791, metadata !DIExpression()), !dbg !798
  store ptr %processdata, ptr %processdata.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %processdata.addr, metadata !792, metadata !DIExpression()), !dbg !799
  store ptr %logger, ptr %logger.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %logger.addr, metadata !793, metadata !DIExpression()), !dbg !800
  store ptr %err, ptr %err.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !794, metadata !DIExpression()), !dbg !801
  call void @llvm.lifetime.start.p0(i64 1, ptr %haserr) #7, !dbg !802
  tail call void @llvm.dbg.declare(metadata ptr %haserr, metadata !795, metadata !DIExpression()), !dbg !803
  store i8 0, ptr %haserr, align 1, !dbg !803, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 8, ptr %ssar) #7, !dbg !804
  tail call void @llvm.dbg.declare(metadata ptr %ssar, metadata !796, metadata !DIExpression()), !dbg !805
  br label %do.body, !dbg !806

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !807, !tbaa !351
  %tobool = icmp ne ptr %0, null, !dbg !807
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !807

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !807, !tbaa !351
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !807
  br i1 %call, label %if.then, label %if.end, !dbg !810

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !811, !tbaa !351
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_runenumlcpvalues_process, ptr noundef @.str, i32 noundef 220), !dbg !811
  call void @abort() #8, !dbg !811
  unreachable, !dbg !811

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !810

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !810

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %inputindex.addr, align 8, !dbg !813, !tbaa !351
  %4 = load ptr, ptr %logger.addr, align 8, !dbg !814, !tbaa !351
  %5 = load ptr, ptr %err.addr, align 8, !dbg !815, !tbaa !351
  %call2 = call ptr @gt_newSequentialsuffixarrayreaderfromfile(ptr noundef %3, i32 noundef 7, i1 noundef zeroext true, ptr noundef %4, ptr noundef %5), !dbg !816
  store ptr %call2, ptr %ssar, align 8, !dbg !817, !tbaa !351
  %6 = load ptr, ptr %ssar, align 8, !dbg !818, !tbaa !351
  %cmp = icmp eq ptr %6, null, !dbg !820
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !821

if.then3:                                         ; preds = %do.end
  store i8 1, ptr %haserr, align 1, !dbg !822, !tbaa !364
  br label %if.end4, !dbg !824

if.end4:                                          ; preds = %if.then3, %do.end
  %7 = load i8, ptr %haserr, align 1, !dbg !825, !tbaa !364, !range !400, !noundef !401
  %tobool5 = trunc i8 %7 to i1, !dbg !825
  br i1 %tobool5, label %if.end11, label %if.then6, !dbg !827

if.then6:                                         ; preds = %if.end4
  %8 = load ptr, ptr %ssar, align 8, !dbg !828, !tbaa !351
  %9 = load ptr, ptr %processfunction.addr, align 8, !dbg !831, !tbaa !351
  %10 = load ptr, ptr %processdata.addr, align 8, !dbg !832, !tbaa !351
  %11 = load ptr, ptr %logger.addr, align 8, !dbg !833, !tbaa !351
  %12 = load ptr, ptr %err.addr, align 8, !dbg !834, !tbaa !351
  %call7 = call i32 @gt_processlcpintervals(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12), !dbg !835
  %cmp8 = icmp ne i32 %call7, 0, !dbg !836
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !837

if.then9:                                         ; preds = %if.then6
  store i8 1, ptr %haserr, align 1, !dbg !838, !tbaa !364
  br label %if.end10, !dbg !840

if.end10:                                         ; preds = %if.then9, %if.then6
  br label %if.end11, !dbg !841

if.end11:                                         ; preds = %if.end10, %if.end4
  %13 = load ptr, ptr %ssar, align 8, !dbg !842, !tbaa !351
  %cmp12 = icmp ne ptr %13, null, !dbg !844
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !845

if.then13:                                        ; preds = %if.end11
  call void @gt_freeSequentialsuffixarrayreader(ptr noundef %ssar), !dbg !846
  br label %if.end14, !dbg !848

if.end14:                                         ; preds = %if.then13, %if.end11
  %14 = load i8, ptr %haserr, align 1, !dbg !849, !tbaa !364, !range !400, !noundef !401
  %tobool15 = trunc i8 %14 to i1, !dbg !849
  %15 = zext i1 %tobool15 to i64, !dbg !849
  %cond = select i1 %tobool15, i32 -1, i32 0, !dbg !849
  call void @llvm.lifetime.end.p0(i64 8, ptr %ssar) #7, !dbg !850
  call void @llvm.lifetime.end.p0(i64 1, ptr %haserr) #7, !dbg !850
  ret i32 %cond, !dbg !851
}

; Function Attrs: nounwind uwtable
define i32 @gt_runscanesa(ptr noundef %inputindex, i32 noundef %mode, ptr noundef %logger, ptr noundef %err) #0 !dbg !852 {
entry:
  %inputindex.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %logger.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %haserr = alloca i8, align 1
  %ssar = alloca ptr, align 8
  store ptr %inputindex, ptr %inputindex.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %inputindex.addr, metadata !856, metadata !DIExpression()), !dbg !862
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !863
  tail call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !857, metadata !DIExpression()), !dbg !865
  store ptr %logger, ptr %logger.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %logger.addr, metadata !858, metadata !DIExpression()), !dbg !866
  store ptr %err, ptr %err.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !859, metadata !DIExpression()), !dbg !867
  call void @llvm.lifetime.start.p0(i64 1, ptr %haserr) #7, !dbg !868
  tail call void @llvm.dbg.declare(metadata ptr %haserr, metadata !860, metadata !DIExpression()), !dbg !869
  store i8 0, ptr %haserr, align 1, !dbg !869, !tbaa !364
  call void @llvm.lifetime.start.p0(i64 8, ptr %ssar) #7, !dbg !870
  tail call void @llvm.dbg.declare(metadata ptr %ssar, metadata !861, metadata !DIExpression()), !dbg !871
  br label %do.body, !dbg !872

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !873, !tbaa !351
  %tobool = icmp ne ptr %0, null, !dbg !873
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !873

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !873, !tbaa !351
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !873
  br i1 %call, label %if.then, label %if.end, !dbg !876

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !877, !tbaa !351
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_runscanesa, ptr noundef @.str, i32 noundef 318), !dbg !877
  call void @abort() #8, !dbg !877
  unreachable, !dbg !877

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !876

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !876

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %inputindex.addr, align 8, !dbg !879, !tbaa !351
  %4 = load ptr, ptr %logger.addr, align 8, !dbg !880, !tbaa !351
  %5 = load ptr, ptr %err.addr, align 8, !dbg !881, !tbaa !351
  %call2 = call ptr @gt_newSequentialsuffixarrayreaderfromfile(ptr noundef %3, i32 noundef 7, i1 noundef zeroext true, ptr noundef %4, ptr noundef %5), !dbg !882
  store ptr %call2, ptr %ssar, align 8, !dbg !883, !tbaa !351
  %6 = load ptr, ptr %ssar, align 8, !dbg !884, !tbaa !351
  %cmp = icmp eq ptr %6, null, !dbg !886
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !887

if.then3:                                         ; preds = %do.end
  store i8 1, ptr %haserr, align 1, !dbg !888, !tbaa !364
  br label %if.end4, !dbg !890

if.end4:                                          ; preds = %if.then3, %do.end
  %7 = load i8, ptr %haserr, align 1, !dbg !891, !tbaa !364, !range !400, !noundef !401
  %tobool5 = trunc i8 %7 to i1, !dbg !891
  br i1 %tobool5, label %if.end9, label %land.lhs.true, !dbg !893

land.lhs.true:                                    ; preds = %if.end4
  %8 = load ptr, ptr %ssar, align 8, !dbg !894, !tbaa !351
  %9 = load i32, ptr %mode.addr, align 4, !dbg !895, !tbaa !863
  %10 = load ptr, ptr %err.addr, align 8, !dbg !896, !tbaa !351
  %call6 = call i32 @gt_esa_scantables(ptr noundef %8, i32 noundef %9, ptr noundef %10), !dbg !897
  %cmp7 = icmp ne i32 %call6, 0, !dbg !898
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !899

if.then8:                                         ; preds = %land.lhs.true
  store i8 1, ptr %haserr, align 1, !dbg !900, !tbaa !364
  br label %if.end9, !dbg !902

if.end9:                                          ; preds = %if.then8, %land.lhs.true, %if.end4
  %11 = load ptr, ptr %ssar, align 8, !dbg !903, !tbaa !351
  %cmp10 = icmp ne ptr %11, null, !dbg !905
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !906

if.then11:                                        ; preds = %if.end9
  call void @gt_freeSequentialsuffixarrayreader(ptr noundef %ssar), !dbg !907
  br label %if.end12, !dbg !909

if.end12:                                         ; preds = %if.then11, %if.end9
  %12 = load i8, ptr %haserr, align 1, !dbg !910, !tbaa !364, !range !400, !noundef !401
  %tobool13 = trunc i8 %12 to i1, !dbg !910
  %13 = zext i1 %tobool13 to i64, !dbg !910
  %cond = select i1 %tobool13, i32 -1, i32 0, !dbg !910
  call void @llvm.lifetime.end.p0(i64 8, ptr %ssar) #7, !dbg !911
  call void @llvm.lifetime.end.p0(i64 1, ptr %haserr) #7, !dbg !911
  ret i32 %cond, !dbg !912
}

; Function Attrs: nounwind uwtable
define internal i32 @gt_esa_scantables(ptr noundef %ssar, i32 noundef %mode, ptr noundef %err) #0 !dbg !913 {
entry:
  %ssar.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %lcpvalue = alloca i64, align 8
  %previoussuffix = alloca i64, align 8
  %idx = alloca i64, align 8
  %nonspecials = alloca i64, align 8
  %sumsuftab = alloca i64, align 8
  %sumlcptab = alloca i64, align 8
  %haserr = alloca i8, align 1
  %retval2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmpsmalllcpvalue = alloca i8, align 1
  %retval25 = alloca i32, align 4
  %tmpexception = alloca %struct.Largelcpvalue, align 8
  %buf = alloca ptr, align 8
  %buf124 = alloca ptr, align 8
  store ptr %ssar, ptr %ssar.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %ssar.addr, metadata !917, metadata !DIExpression()), !dbg !960
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !863
  tail call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !918, metadata !DIExpression()), !dbg !961
  store ptr %err, ptr %err.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !919, metadata !DIExpression()), !dbg !962
  call void @llvm.lifetime.start.p0(i64 8, ptr %lcpvalue) #7, !dbg !963
  tail call void @llvm.dbg.declare(metadata ptr %lcpvalue, metadata !920, metadata !DIExpression()), !dbg !964
  call void @llvm.lifetime.start.p0(i64 8, ptr %previoussuffix) #7, !dbg !963
  tail call void @llvm.dbg.declare(metadata ptr %previoussuffix, metadata !921, metadata !DIExpression()), !dbg !965
  store i64 0, ptr %previoussuffix, align 8, !dbg !965, !tbaa !495
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #7, !dbg !963
  tail call void @llvm.dbg.declare(metadata ptr %idx, metadata !922, metadata !DIExpression()), !dbg !966
  call void @llvm.lifetime.start.p0(i64 8, ptr %nonspecials) #7, !dbg !963
  tail call void @llvm.dbg.declare(metadata ptr %nonspecials, metadata !923, metadata !DIExpression()), !dbg !967
  call void @llvm.lifetime.start.p0(i64 8, ptr %sumsuftab) #7, !dbg !963
  tail call void @llvm.dbg.declare(metadata ptr %sumsuftab, metadata !924, metadata !DIExpression()), !dbg !968
  store i64 0, ptr %sumsuftab, align 8, !dbg !968, !tbaa !495
  call void @llvm.lifetime.start.p0(i64 8, ptr %sumlcptab) #7, !dbg !963
  tail call void @llvm.dbg.declare(metadata ptr %sumlcptab, metadata !925, metadata !DIExpression()), !dbg !969
  store i64 0, ptr %sumlcptab, align 8, !dbg !969, !tbaa !495
  call void @llvm.lifetime.start.p0(i64 1, ptr %haserr) #7, !dbg !970
  tail call void @llvm.dbg.declare(metadata ptr %haserr, metadata !926, metadata !DIExpression()), !dbg !971
  store i8 0, ptr %haserr, align 1, !dbg !971, !tbaa !364
  %0 = load ptr, ptr %ssar.addr, align 8, !dbg !972, !tbaa !351
  %call = call i64 @gt_Sequentialsuffixarrayreader_nonspecials(ptr noundef %0), !dbg !973
  store i64 %call, ptr %nonspecials, align 8, !dbg !974, !tbaa !495
  %1 = load i32, ptr %mode.addr, align 4, !dbg !975, !tbaa !863
  %cmp = icmp eq i32 %1, 1, !dbg !976
  br i1 %cmp, label %if.then, label %if.else, !dbg !977

if.then:                                          ; preds = %entry
  store i64 0, ptr %idx, align 8, !dbg !978, !tbaa !495
  br label %for.cond, !dbg !979

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i64, ptr %idx, align 8, !dbg !980, !tbaa !495
  %3 = load i64, ptr %nonspecials, align 8, !dbg !981, !tbaa !495
  %cmp1 = icmp ult i64 %2, %3, !dbg !982
  br i1 %cmp1, label %for.body, label %for.end, !dbg !983

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval2) #7, !dbg !984
  tail call void @llvm.dbg.declare(metadata ptr %retval2, metadata !927, metadata !DIExpression()), !dbg !985
  %4 = load ptr, ptr %ssar.addr, align 8, !dbg !986, !tbaa !351
  %5 = load ptr, ptr %err.addr, align 8, !dbg !987, !tbaa !351
  %call3 = call i32 @gt_nextSequentiallcpvalue(ptr noundef %lcpvalue, ptr noundef %4, ptr noundef %5), !dbg !988
  store i32 %call3, ptr %retval2, align 4, !dbg !985, !tbaa !863
  %6 = load i32, ptr %retval2, align 4, !dbg !989, !tbaa !863
  %cmp4 = icmp slt i32 %6, 0, !dbg !991
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !992

if.then5:                                         ; preds = %for.body
  store i8 1, ptr %haserr, align 1, !dbg !993, !tbaa !364
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !995

if.end:                                           ; preds = %for.body
  %7 = load i32, ptr %retval2, align 4, !dbg !996, !tbaa !863
  %cmp6 = icmp eq i32 %7, 0, !dbg !998
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !999

if.then7:                                         ; preds = %if.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1000

if.end8:                                          ; preds = %if.end
  %8 = load i64, ptr %lcpvalue, align 8, !dbg !1002, !tbaa !495
  %9 = load i64, ptr %sumlcptab, align 8, !dbg !1003, !tbaa !495
  %add = add i64 %9, %8, !dbg !1003
  store i64 %add, ptr %sumlcptab, align 8, !dbg !1003, !tbaa !495
  %10 = load ptr, ptr %ssar.addr, align 8, !dbg !1004, !tbaa !351
  %call9 = call i32 @gt_nextSequentialsuftabvalue(ptr noundef %previoussuffix, ptr noundef %10), !dbg !1005
  store i32 %call9, ptr %retval2, align 4, !dbg !1006, !tbaa !863
  br label %do.body, !dbg !1007

do.body:                                          ; preds = %if.end8
  %11 = load i32, ptr %retval2, align 4, !dbg !1008, !tbaa !863
  %cmp10 = icmp sge i32 %11, 0, !dbg !1008
  br i1 %cmp10, label %if.end13, label %if.then11, !dbg !1011

if.then11:                                        ; preds = %do.body
  %12 = load ptr, ptr @stderr, align 8, !dbg !1012, !tbaa !351
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.1, ptr noundef @.str.7, ptr noundef @__func__.gt_esa_scantables, ptr noundef @.str, i32 noundef 277), !dbg !1012
  call void @abort() #8, !dbg !1012
  unreachable, !dbg !1012

if.end13:                                         ; preds = %do.body
  br label %do.cond, !dbg !1011

do.cond:                                          ; preds = %if.end13
  br label %do.end, !dbg !1011

do.end:                                           ; preds = %do.cond
  %13 = load i32, ptr %retval2, align 4, !dbg !1014, !tbaa !863
  %cmp14 = icmp eq i32 %13, 0, !dbg !1016
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1017

if.then15:                                        ; preds = %do.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1018

if.end16:                                         ; preds = %do.end
  %14 = load i64, ptr %previoussuffix, align 8, !dbg !1020, !tbaa !495
  %15 = load i64, ptr %sumsuftab, align 8, !dbg !1021, !tbaa !495
  %add17 = add i64 %15, %14, !dbg !1021
  store i64 %add17, ptr %sumsuftab, align 8, !dbg !1021, !tbaa !495
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1022
  br label %cleanup, !dbg !1022

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then7, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval2) #7, !dbg !1022
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1023

for.inc:                                          ; preds = %cleanup.cont
  %16 = load i64, ptr %idx, align 8, !dbg !1024, !tbaa !495
  %inc = add i64 %16, 1, !dbg !1024
  store i64 %inc, ptr %idx, align 8, !dbg !1024, !tbaa !495
  br label %for.cond, !dbg !1025, !llvm.loop !1026

for.end:                                          ; preds = %cleanup, %for.cond
  br label %if.end170, !dbg !1029

if.else:                                          ; preds = %entry
  %17 = load i32, ptr %mode.addr, align 4, !dbg !1030, !tbaa !863
  %cmp18 = icmp eq i32 %17, 2, !dbg !1031
  br i1 %cmp18, label %if.then19, label %if.else168, !dbg !1032

if.then19:                                        ; preds = %if.else
  store i64 0, ptr %idx, align 8, !dbg !1033, !tbaa !495
  br label %for.cond20, !dbg !1034

for.cond20:                                       ; preds = %for.inc165, %if.then19
  %18 = load i8, ptr %haserr, align 1, !dbg !1035, !tbaa !364, !range !400, !noundef !401
  %tobool = trunc i8 %18 to i1, !dbg !1035
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !1036

land.rhs:                                         ; preds = %for.cond20
  %19 = load i64, ptr %idx, align 8, !dbg !1037, !tbaa !495
  %20 = load i64, ptr %nonspecials, align 8, !dbg !1038, !tbaa !495
  %cmp21 = icmp ult i64 %19, %20, !dbg !1039
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond20
  %21 = phi i1 [ false, %for.cond20 ], [ %cmp21, %land.rhs ], !dbg !1040
  br i1 %21, label %for.body22, label %for.end167, !dbg !1041

for.body22:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %tmpsmalllcpvalue) #7, !dbg !1042
  tail call void @llvm.dbg.declare(metadata ptr %tmpsmalllcpvalue, metadata !933, metadata !DIExpression()), !dbg !1042
  %22 = load ptr, ptr %ssar.addr, align 8, !dbg !1043, !tbaa !351
  %scanfile = getelementptr inbounds %struct.Sequentialsuffixarrayreader, ptr %22, i32 0, i32 8, !dbg !1043
  %23 = load i8, ptr %scanfile, align 8, !dbg !1043, !tbaa !1044, !range !400, !noundef !401
  %tobool23 = trunc i8 %23 to i1, !dbg !1043
  br i1 %tobool23, label %if.then24, label %if.else49, !dbg !1042

if.then24:                                        ; preds = %for.body22
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval25) #7, !dbg !1046
  tail call void @llvm.dbg.declare(metadata ptr %retval25, metadata !941, metadata !DIExpression()), !dbg !1046
  %24 = load ptr, ptr %ssar.addr, align 8, !dbg !1046, !tbaa !351
  %suffixarray = getelementptr inbounds %struct.Sequentialsuffixarrayreader, ptr %24, i32 0, i32 0, !dbg !1046
  %25 = load ptr, ptr %suffixarray, align 8, !dbg !1046, !tbaa !1047
  %lcptabstream = getelementptr inbounds %struct.Suffixarray, ptr %25, i32 0, i32 17, !dbg !1046
  %call26 = call i32 @gt_readnextfromstream_GtUchar(ptr noundef %tmpsmalllcpvalue, ptr noundef %lcptabstream), !dbg !1046
  store i32 %call26, ptr %retval25, align 4, !dbg !1046, !tbaa !863
  %26 = load i32, ptr %retval25, align 4, !dbg !1048, !tbaa !863
  %cmp27 = icmp sgt i32 %26, 0, !dbg !1048
  br i1 %cmp27, label %if.then28, label %if.else44, !dbg !1046

if.then28:                                        ; preds = %if.then24
  %27 = load i8, ptr %tmpsmalllcpvalue, align 1, !dbg !1049, !tbaa !1050
  %conv = zext i8 %27 to i32, !dbg !1049
  %cmp29 = icmp slt i32 %conv, 255, !dbg !1049
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !1051

if.then31:                                        ; preds = %if.then28
  %28 = load i8, ptr %tmpsmalllcpvalue, align 1, !dbg !1052, !tbaa !1050
  %conv32 = zext i8 %28 to i64, !dbg !1052
  store i64 %conv32, ptr %lcpvalue, align 8, !dbg !1052, !tbaa !495
  br label %if.end43, !dbg !1052

if.else33:                                        ; preds = %if.then28
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmpexception) #7, !dbg !1054
  tail call void @llvm.dbg.declare(metadata ptr %tmpexception, metadata !944, metadata !DIExpression()), !dbg !1054
  %29 = load ptr, ptr %ssar.addr, align 8, !dbg !1054, !tbaa !351
  %suffixarray34 = getelementptr inbounds %struct.Sequentialsuffixarrayreader, ptr %29, i32 0, i32 0, !dbg !1054
  %30 = load ptr, ptr %suffixarray34, align 8, !dbg !1054, !tbaa !1047
  %llvtabstream = getelementptr inbounds %struct.Suffixarray, ptr %30, i32 0, i32 18, !dbg !1054
  %call35 = call i32 @gt_readnextfromstream_Largelcpvalue(ptr noundef %tmpexception, ptr noundef %llvtabstream), !dbg !1054
  store i32 %call35, ptr %retval25, align 4, !dbg !1054, !tbaa !863
  %31 = load i32, ptr %retval25, align 4, !dbg !1055, !tbaa !863
  %cmp36 = icmp eq i32 %31, 0, !dbg !1055
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !1054

if.then38:                                        ; preds = %if.else33
  %32 = load ptr, ptr %err.addr, align 8, !dbg !1057, !tbaa !351
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %32, ptr noundef @.str.8, ptr noundef @.str, i32 noundef 291), !dbg !1057
  store i8 1, ptr %haserr, align 1, !dbg !1057, !tbaa !364
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup40, !dbg !1057

if.end39:                                         ; preds = %if.else33
  %value = getelementptr inbounds %struct.Largelcpvalue, ptr %tmpexception, i32 0, i32 1, !dbg !1054
  %33 = load i64, ptr %value, align 8, !dbg !1054, !tbaa !1059
  store i64 %33, ptr %lcpvalue, align 8, !dbg !1054, !tbaa !495
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1049
  br label %cleanup40, !dbg !1049

cleanup40:                                        ; preds = %if.end39, %if.then38
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmpexception) #7, !dbg !1049
  %cleanup.dest41 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest41, label %cleanup46 [
    i32 0, label %cleanup.cont42
  ]

cleanup.cont42:                                   ; preds = %cleanup40
  br label %if.end43

if.end43:                                         ; preds = %cleanup.cont42, %if.then31
  br label %if.end45, !dbg !1051

if.else44:                                        ; preds = %if.then24
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !1061

if.end45:                                         ; preds = %if.end43
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1043
  br label %cleanup46, !dbg !1043

cleanup46:                                        ; preds = %if.end45, %if.else44, %cleanup40
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval25) #7, !dbg !1043
  %cleanup.dest47 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest47, label %cleanup83 [
    i32 0, label %cleanup.cont48
  ]

cleanup.cont48:                                   ; preds = %cleanup46
  br label %if.end82, !dbg !1046

if.else49:                                        ; preds = %for.body22
  %34 = load ptr, ptr %ssar.addr, align 8, !dbg !1063, !tbaa !351
  %nextlcptabindex = getelementptr inbounds %struct.Sequentialsuffixarrayreader, ptr %34, i32 0, i32 4, !dbg !1063
  %35 = load i64, ptr %nextlcptabindex, align 8, !dbg !1063, !tbaa !1066
  %36 = load ptr, ptr %ssar.addr, align 8, !dbg !1063, !tbaa !351
  %numberofsuffixes = getelementptr inbounds %struct.Sequentialsuffixarrayreader, ptr %36, i32 0, i32 2, !dbg !1063
  %37 = load i64, ptr %numberofsuffixes, align 8, !dbg !1063, !tbaa !1067
  %cmp50 = icmp ult i64 %35, %37, !dbg !1063
  br i1 %cmp50, label %if.then52, label %if.else80, !dbg !1068

if.then52:                                        ; preds = %if.else49
  %38 = load ptr, ptr %ssar.addr, align 8, !dbg !1069, !tbaa !351
  %suffixarray53 = getelementptr inbounds %struct.Sequentialsuffixarrayreader, ptr %38, i32 0, i32 0, !dbg !1069
  %39 = load ptr, ptr %suffixarray53, align 8, !dbg !1069, !tbaa !1047
  %lcptab = getelementptr inbounds %struct.Suffixarray, ptr %39, i32 0, i32 9, !dbg !1069
  %40 = load ptr, ptr %lcptab, align 8, !dbg !1069, !tbaa !1071
  %41 = load ptr, ptr %ssar.addr, align 8, !dbg !1069, !tbaa !351
  %nextlcptabindex54 = getelementptr inbounds %struct.Sequentialsuffixarrayreader, ptr %41, i32 0, i32 4, !dbg !1069
  %42 = load i64, ptr %nextlcptabindex54, align 8, !dbg !1069, !tbaa !1066
  %inc55 = add i64 %42, 1, !dbg !1069
  store i64 %inc55, ptr %nextlcptabindex54, align 8, !dbg !1069, !tbaa !1066
  %arrayidx = getelementptr inbounds i8, ptr %40, i64 %42, !dbg !1069
  %43 = load i8, ptr %arrayidx, align 1, !dbg !1069, !tbaa !1050
  store i8 %43, ptr %tmpsmalllcpvalue, align 1, !dbg !1069, !tbaa !1050
  %44 = load i8, ptr %tmpsmalllcpvalue, align 1, !dbg !1077, !tbaa !1050
  %conv56 = zext i8 %44 to i32, !dbg !1077
  %cmp57 = icmp slt i32 %conv56, 255, !dbg !1077
  br i1 %cmp57, label %if.then59, label %if.else61, !dbg !1069

if.then59:                                        ; preds = %if.then52
  %45 = load i8, ptr %tmpsmalllcpvalue, align 1, !dbg !1079, !tbaa !1050
  %conv60 = zext i8 %45 to i64, !dbg !1079
  store i64 %conv60, ptr %lcpvalue, align 8, !dbg !1079, !tbaa !495
  br label %if.end79, !dbg !1079

if.else61:                                        ; preds = %if.then52
  br label %do.body62, !dbg !1081

do.body62:                                        ; preds = %if.else61
  %46 = load ptr, ptr %ssar.addr, align 8, !dbg !1083, !tbaa !351
  %suffixarray63 = getelementptr inbounds %struct.Sequentialsuffixarrayreader, ptr %46, i32 0, i32 0, !dbg !1083
  %47 = load ptr, ptr %suffixarray63, align 8, !dbg !1083, !tbaa !1047
  %llvtab = getelementptr inbounds %struct.Suffixarray, ptr %47, i32 0, i32 10, !dbg !1083
  %48 = load ptr, ptr %llvtab, align 8, !dbg !1083, !tbaa !1086
  %49 = load ptr, ptr %ssar.addr, align 8, !dbg !1083, !tbaa !351
  %largelcpindex = getelementptr inbounds %struct.Sequentialsuffixarrayreader, ptr %49, i32 0, i32 5, !dbg !1083
  %50 = load i64, ptr %largelcpindex, align 8, !dbg !1083, !tbaa !1087
  %arrayidx64 = getelementptr inbounds %struct.Largelcpvalue, ptr %48, i64 %50, !dbg !1083
  %position = getelementptr inbounds %struct.Largelcpvalue, ptr %arrayidx64, i32 0, i32 0, !dbg !1083
  %51 = load i64, ptr %position, align 8, !dbg !1083, !tbaa !1088
  %52 = load ptr, ptr %ssar.addr, align 8, !dbg !1083, !tbaa !351
  %nextlcptabindex65 = getelementptr inbounds %struct.Sequentialsuffixarrayreader, ptr %52, i32 0, i32 4, !dbg !1083
  %53 = load i64, ptr %nextlcptabindex65, align 8, !dbg !1083, !tbaa !1066
  %sub = sub i64 %53, 1, !dbg !1083
  %cmp66 = icmp eq i64 %51, %sub, !dbg !1083
  br i1 %cmp66, label %if.end70, label %if.then68, !dbg !1089

if.then68:                                        ; preds = %do.body62
  %54 = load ptr, ptr @stderr, align 8, !dbg !1090, !tbaa !351
  %call69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef @.str.1, ptr noundef @.str.9, ptr noundef @__func__.gt_esa_scantables, ptr noundef @.str, i32 noundef 291), !dbg !1090
  call void @abort() #8, !dbg !1090
  unreachable, !dbg !1090

if.end70:                                         ; preds = %do.body62
  br label %do.cond71, !dbg !1089

do.cond71:                                        ; preds = %if.end70
  br label %do.end72, !dbg !1089

do.end72:                                         ; preds = %do.cond71
  %55 = load ptr, ptr %ssar.addr, align 8, !dbg !1081, !tbaa !351
  %suffixarray73 = getelementptr inbounds %struct.Sequentialsuffixarrayreader, ptr %55, i32 0, i32 0, !dbg !1081
  %56 = load ptr, ptr %suffixarray73, align 8, !dbg !1081, !tbaa !1047
  %llvtab74 = getelementptr inbounds %struct.Suffixarray, ptr %56, i32 0, i32 10, !dbg !1081
  %57 = load ptr, ptr %llvtab74, align 8, !dbg !1081, !tbaa !1086
  %58 = load ptr, ptr %ssar.addr, align 8, !dbg !1081, !tbaa !351
  %largelcpindex75 = getelementptr inbounds %struct.Sequentialsuffixarrayreader, ptr %58, i32 0, i32 5, !dbg !1081
  %59 = load i64, ptr %largelcpindex75, align 8, !dbg !1081, !tbaa !1087
  %inc76 = add i64 %59, 1, !dbg !1081
  store i64 %inc76, ptr %largelcpindex75, align 8, !dbg !1081, !tbaa !1087
  %arrayidx77 = getelementptr inbounds %struct.Largelcpvalue, ptr %57, i64 %59, !dbg !1081
  %value78 = getelementptr inbounds %struct.Largelcpvalue, ptr %arrayidx77, i32 0, i32 1, !dbg !1081
  %60 = load i64, ptr %value78, align 8, !dbg !1081, !tbaa !1059
  store i64 %60, ptr %lcpvalue, align 8, !dbg !1081, !tbaa !495
  br label %if.end79

if.end79:                                         ; preds = %do.end72, %if.then59
  br label %if.end81, !dbg !1069

if.else80:                                        ; preds = %if.else49
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !1092

if.end81:                                         ; preds = %if.end79
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %cleanup.cont48
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1094
  br label %cleanup83, !dbg !1094

cleanup83:                                        ; preds = %if.end82, %if.else80, %cleanup46
  call void @llvm.lifetime.end.p0(i64 1, ptr %tmpsmalllcpvalue) #7, !dbg !1094
  %cleanup.dest84 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest84, label %unreachable [
    i32 0, label %cleanup.cont85
    i32 7, label %for.end167
  ]

cleanup.cont85:                                   ; preds = %cleanup83
  %61 = load i64, ptr %lcpvalue, align 8, !dbg !1095, !tbaa !495
  %62 = load i64, ptr %sumlcptab, align 8, !dbg !1096, !tbaa !495
  %add86 = add i64 %62, %61, !dbg !1096
  store i64 %add86, ptr %sumlcptab, align 8, !dbg !1096, !tbaa !495
  %63 = load ptr, ptr %ssar.addr, align 8, !dbg !1097, !tbaa !351
  %scanfile87 = getelementptr inbounds %struct.Sequentialsuffixarrayreader, ptr %63, i32 0, i32 8, !dbg !1097
  %64 = load i8, ptr %scanfile87, align 8, !dbg !1097, !tbaa !1044, !range !400, !noundef !401
  %tobool88 = trunc i8 %64 to i1, !dbg !1097
  br i1 %tobool88, label %if.then89, label %if.else159, !dbg !1098

if.then89:                                        ; preds = %cleanup.cont85
  %65 = load ptr, ptr %ssar.addr, align 8, !dbg !1099, !tbaa !351
  %suffixarray90 = getelementptr inbounds %struct.Sequentialsuffixarrayreader, ptr %65, i32 0, i32 0, !dbg !1099
  %66 = load ptr, ptr %suffixarray90, align 8, !dbg !1099, !tbaa !1047
  %suftabstream_GtUword = getelementptr inbounds %struct.Suffixarray, ptr %66, i32 0, i32 15, !dbg !1099
  %fp = getelementptr inbounds %struct.GtBufferedfile_GtUword, ptr %suftabstream_GtUword, i32 0, i32 3, !dbg !1099
  %67 = load ptr, ptr %fp, align 8, !dbg !1099, !tbaa !1100
  %cmp91 = icmp ne ptr %67, null, !dbg !1099
  br i1 %cmp91, label %if.then93, label %if.else123, !dbg !1101

if.then93:                                        ; preds = %if.then89
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #7, !dbg !1102
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !949, metadata !DIExpression()), !dbg !1102
  %68 = load ptr, ptr %ssar.addr, align 8, !dbg !1102, !tbaa !351
  %suffixarray94 = getelementptr inbounds %struct.Sequentialsuffixarrayreader, ptr %68, i32 0, i32 0, !dbg !1102
  %69 = load ptr, ptr %suffixarray94, align 8, !dbg !1102, !tbaa !1047
  %suftabstream_GtUword95 = getelementptr inbounds %struct.Suffixarray, ptr %69, i32 0, i32 15, !dbg !1102
  store ptr %suftabstream_GtUword95, ptr %buf, align 8, !dbg !1102, !tbaa !351
  %70 = load ptr, ptr %buf, align 8, !dbg !1103, !tbaa !351
  %nextread = getelementptr inbounds %struct.GtBufferedfile_GtUword, ptr %70, i32 0, i32 1, !dbg !1103
  %71 = load i32, ptr %nextread, align 4, !dbg !1103, !tbaa !1105
  %72 = load ptr, ptr %buf, align 8, !dbg !1103, !tbaa !351
  %nextfree = getelementptr inbounds %struct.GtBufferedfile_GtUword, ptr %72, i32 0, i32 0, !dbg !1103
  %73 = load i32, ptr %nextfree, align 8, !dbg !1103, !tbaa !1106
  %cmp96 = icmp uge i32 %71, %73, !dbg !1103
  br i1 %cmp96, label %if.then98, label %if.end115, !dbg !1102

if.then98:                                        ; preds = %if.then93
  %74 = load ptr, ptr %buf, align 8, !dbg !1107, !tbaa !351
  %bufferedfilespace = getelementptr inbounds %struct.GtBufferedfile_GtUword, ptr %74, i32 0, i32 2, !dbg !1107
  %75 = load ptr, ptr %bufferedfilespace, align 8, !dbg !1107, !tbaa !1109
  %76 = load ptr, ptr %buf, align 8, !dbg !1107, !tbaa !351
  %fp99 = getelementptr inbounds %struct.GtBufferedfile_GtUword, ptr %76, i32 0, i32 3, !dbg !1107
  %77 = load ptr, ptr %fp99, align 8, !dbg !1107, !tbaa !1110
  %call100 = call i64 @fread(ptr noundef %75, i64 noundef 8, i64 noundef 4096, ptr noundef %77), !dbg !1107
  %conv101 = trunc i64 %call100 to i32, !dbg !1107
  %78 = load ptr, ptr %buf, align 8, !dbg !1107, !tbaa !351
  %nextfree102 = getelementptr inbounds %struct.GtBufferedfile_GtUword, ptr %78, i32 0, i32 0, !dbg !1107
  store i32 %conv101, ptr %nextfree102, align 8, !dbg !1107, !tbaa !1106
  %79 = load ptr, ptr %buf, align 8, !dbg !1111, !tbaa !351
  %fp103 = getelementptr inbounds %struct.GtBufferedfile_GtUword, ptr %79, i32 0, i32 3, !dbg !1111
  %80 = load ptr, ptr %fp103, align 8, !dbg !1111, !tbaa !1110
  %call104 = call i32 @ferror(ptr noundef %80) #7, !dbg !1111
  %tobool105 = icmp ne i32 %call104, 0, !dbg !1111
  br i1 %tobool105, label %if.then106, label %if.else107, !dbg !1107

if.then106:                                       ; preds = %if.then98
  %81 = load ptr, ptr %err.addr, align 8, !dbg !1113, !tbaa !351
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %81, ptr noundef @.str.10, ptr noundef @.str.11), !dbg !1113
  store i8 1, ptr %haserr, align 1, !dbg !1113, !tbaa !364
  br label %if.end114, !dbg !1113

if.else107:                                       ; preds = %if.then98
  %82 = load ptr, ptr %buf, align 8, !dbg !1115, !tbaa !351
  %nextread108 = getelementptr inbounds %struct.GtBufferedfile_GtUword, ptr %82, i32 0, i32 1, !dbg !1115
  store i32 0, ptr %nextread108, align 4, !dbg !1115, !tbaa !1105
  %83 = load ptr, ptr %buf, align 8, !dbg !1117, !tbaa !351
  %nextfree109 = getelementptr inbounds %struct.GtBufferedfile_GtUword, ptr %83, i32 0, i32 0, !dbg !1117
  %84 = load i32, ptr %nextfree109, align 8, !dbg !1117, !tbaa !1106
  %cmp110 = icmp eq i32 %84, 0, !dbg !1117
  br i1 %cmp110, label %if.then112, label %if.end113, !dbg !1115

if.then112:                                       ; preds = %if.else107
  %85 = load ptr, ptr %err.addr, align 8, !dbg !1119, !tbaa !351
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %85, ptr noundef @.str.12), !dbg !1119
  store i8 1, ptr %haserr, align 1, !dbg !1119, !tbaa !364
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup120, !dbg !1119

if.end113:                                        ; preds = %if.else107
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.then106
  br label %if.end115, !dbg !1107

if.end115:                                        ; preds = %if.end114, %if.then93
  %86 = load ptr, ptr %buf, align 8, !dbg !1102, !tbaa !351
  %bufferedfilespace116 = getelementptr inbounds %struct.GtBufferedfile_GtUword, ptr %86, i32 0, i32 2, !dbg !1102
  %87 = load ptr, ptr %bufferedfilespace116, align 8, !dbg !1102, !tbaa !1109
  %88 = load ptr, ptr %buf, align 8, !dbg !1102, !tbaa !351
  %nextread117 = getelementptr inbounds %struct.GtBufferedfile_GtUword, ptr %88, i32 0, i32 1, !dbg !1102
  %89 = load i32, ptr %nextread117, align 4, !dbg !1102, !tbaa !1105
  %inc118 = add i32 %89, 1, !dbg !1102
  store i32 %inc118, ptr %nextread117, align 4, !dbg !1102, !tbaa !1105
  %idxprom = zext i32 %89 to i64, !dbg !1102
  %arrayidx119 = getelementptr inbounds i64, ptr %87, i64 %idxprom, !dbg !1102
  %90 = load i64, ptr %arrayidx119, align 8, !dbg !1102, !tbaa !495
  store i64 %90, ptr %previoussuffix, align 8, !dbg !1102, !tbaa !495
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1121
  br label %cleanup120, !dbg !1121

cleanup120:                                       ; preds = %if.end115, %if.then112
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #7, !dbg !1121
  %cleanup.dest121 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest121, label %unreachable [
    i32 0, label %cleanup.cont122
    i32 7, label %for.end167
  ]

cleanup.cont122:                                  ; preds = %cleanup120
  br label %if.end158, !dbg !1121

if.else123:                                       ; preds = %if.then89
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf124) #7, !dbg !1122
  tail call void @llvm.dbg.declare(metadata ptr %buf124, metadata !956, metadata !DIExpression()), !dbg !1122
  %91 = load ptr, ptr %ssar.addr, align 8, !dbg !1122, !tbaa !351
  %suffixarray125 = getelementptr inbounds %struct.Sequentialsuffixarrayreader, ptr %91, i32 0, i32 0, !dbg !1122
  %92 = load ptr, ptr %suffixarray125, align 8, !dbg !1122, !tbaa !1047
  %suftabstream_uint32_t = getelementptr inbounds %struct.Suffixarray, ptr %92, i32 0, i32 14, !dbg !1122
  store ptr %suftabstream_uint32_t, ptr %buf124, align 8, !dbg !1122, !tbaa !351
  %93 = load ptr, ptr %buf124, align 8, !dbg !1123, !tbaa !351
  %nextread126 = getelementptr inbounds %struct.GtBufferedfile_uint32_t, ptr %93, i32 0, i32 1, !dbg !1123
  %94 = load i32, ptr %nextread126, align 4, !dbg !1123, !tbaa !1105
  %95 = load ptr, ptr %buf124, align 8, !dbg !1123, !tbaa !351
  %nextfree127 = getelementptr inbounds %struct.GtBufferedfile_uint32_t, ptr %95, i32 0, i32 0, !dbg !1123
  %96 = load i32, ptr %nextfree127, align 8, !dbg !1123, !tbaa !1106
  %cmp128 = icmp uge i32 %94, %96, !dbg !1123
  br i1 %cmp128, label %if.then130, label %if.end148, !dbg !1122

if.then130:                                       ; preds = %if.else123
  %97 = load ptr, ptr %buf124, align 8, !dbg !1125, !tbaa !351
  %bufferedfilespace131 = getelementptr inbounds %struct.GtBufferedfile_uint32_t, ptr %97, i32 0, i32 2, !dbg !1125
  %98 = load ptr, ptr %bufferedfilespace131, align 8, !dbg !1125, !tbaa !1109
  %99 = load ptr, ptr %buf124, align 8, !dbg !1125, !tbaa !351
  %fp132 = getelementptr inbounds %struct.GtBufferedfile_uint32_t, ptr %99, i32 0, i32 3, !dbg !1125
  %100 = load ptr, ptr %fp132, align 8, !dbg !1125, !tbaa !1110
  %call133 = call i64 @fread(ptr noundef %98, i64 noundef 4, i64 noundef 4096, ptr noundef %100), !dbg !1125
  %conv134 = trunc i64 %call133 to i32, !dbg !1125
  %101 = load ptr, ptr %buf124, align 8, !dbg !1125, !tbaa !351
  %nextfree135 = getelementptr inbounds %struct.GtBufferedfile_uint32_t, ptr %101, i32 0, i32 0, !dbg !1125
  store i32 %conv134, ptr %nextfree135, align 8, !dbg !1125, !tbaa !1106
  %102 = load ptr, ptr %buf124, align 8, !dbg !1127, !tbaa !351
  %fp136 = getelementptr inbounds %struct.GtBufferedfile_uint32_t, ptr %102, i32 0, i32 3, !dbg !1127
  %103 = load ptr, ptr %fp136, align 8, !dbg !1127, !tbaa !1110
  %call137 = call i32 @ferror(ptr noundef %103) #7, !dbg !1127
  %tobool138 = icmp ne i32 %call137, 0, !dbg !1127
  br i1 %tobool138, label %if.then139, label %if.else140, !dbg !1125

if.then139:                                       ; preds = %if.then130
  %104 = load ptr, ptr %err.addr, align 8, !dbg !1129, !tbaa !351
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %104, ptr noundef @.str.10, ptr noundef @.str.13), !dbg !1129
  store i8 1, ptr %haserr, align 1, !dbg !1129, !tbaa !364
  br label %if.end147, !dbg !1129

if.else140:                                       ; preds = %if.then130
  %105 = load ptr, ptr %buf124, align 8, !dbg !1131, !tbaa !351
  %nextread141 = getelementptr inbounds %struct.GtBufferedfile_uint32_t, ptr %105, i32 0, i32 1, !dbg !1131
  store i32 0, ptr %nextread141, align 4, !dbg !1131, !tbaa !1105
  %106 = load ptr, ptr %buf124, align 8, !dbg !1133, !tbaa !351
  %nextfree142 = getelementptr inbounds %struct.GtBufferedfile_uint32_t, ptr %106, i32 0, i32 0, !dbg !1133
  %107 = load i32, ptr %nextfree142, align 8, !dbg !1133, !tbaa !1106
  %cmp143 = icmp eq i32 %107, 0, !dbg !1133
  br i1 %cmp143, label %if.then145, label %if.end146, !dbg !1131

if.then145:                                       ; preds = %if.else140
  %108 = load ptr, ptr %err.addr, align 8, !dbg !1135, !tbaa !351
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %108, ptr noundef @.str.12), !dbg !1135
  store i8 1, ptr %haserr, align 1, !dbg !1135, !tbaa !364
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup155, !dbg !1135

if.end146:                                        ; preds = %if.else140
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %if.then139
  br label %if.end148, !dbg !1125

if.end148:                                        ; preds = %if.end147, %if.else123
  %109 = load ptr, ptr %buf124, align 8, !dbg !1122, !tbaa !351
  %bufferedfilespace149 = getelementptr inbounds %struct.GtBufferedfile_uint32_t, ptr %109, i32 0, i32 2, !dbg !1122
  %110 = load ptr, ptr %bufferedfilespace149, align 8, !dbg !1122, !tbaa !1109
  %111 = load ptr, ptr %buf124, align 8, !dbg !1122, !tbaa !351
  %nextread150 = getelementptr inbounds %struct.GtBufferedfile_uint32_t, ptr %111, i32 0, i32 1, !dbg !1122
  %112 = load i32, ptr %nextread150, align 4, !dbg !1122, !tbaa !1105
  %inc151 = add i32 %112, 1, !dbg !1122
  store i32 %inc151, ptr %nextread150, align 4, !dbg !1122, !tbaa !1105
  %idxprom152 = zext i32 %112 to i64, !dbg !1122
  %arrayidx153 = getelementptr inbounds i32, ptr %110, i64 %idxprom152, !dbg !1122
  %113 = load i32, ptr %arrayidx153, align 4, !dbg !1122, !tbaa !863
  %conv154 = zext i32 %113 to i64, !dbg !1122
  store i64 %conv154, ptr %previoussuffix, align 8, !dbg !1122, !tbaa !495
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1137
  br label %cleanup155, !dbg !1137

cleanup155:                                       ; preds = %if.end148, %if.then145
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf124) #7, !dbg !1137
  %cleanup.dest156 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest156, label %unreachable [
    i32 0, label %cleanup.cont157
    i32 7, label %for.end167
  ]

cleanup.cont157:                                  ; preds = %cleanup155
  br label %if.end158

if.end158:                                        ; preds = %cleanup.cont157, %cleanup.cont122
  br label %if.end163, !dbg !1101

if.else159:                                       ; preds = %cleanup.cont85
  %114 = load ptr, ptr %ssar.addr, align 8, !dbg !1138, !tbaa !351
  %suffixarray160 = getelementptr inbounds %struct.Sequentialsuffixarrayreader, ptr %114, i32 0, i32 0, !dbg !1138
  %115 = load ptr, ptr %suffixarray160, align 8, !dbg !1138, !tbaa !1047
  %suftab = getelementptr inbounds %struct.Suffixarray, ptr %115, i32 0, i32 8, !dbg !1138
  %116 = load ptr, ptr %suftab, align 8, !dbg !1138, !tbaa !1140
  %117 = load ptr, ptr %ssar.addr, align 8, !dbg !1138, !tbaa !351
  %nextsuftabindex = getelementptr inbounds %struct.Sequentialsuffixarrayreader, ptr %117, i32 0, i32 3, !dbg !1138
  %118 = load i64, ptr %nextsuftabindex, align 8, !dbg !1138, !tbaa !1141
  %inc161 = add i64 %118, 1, !dbg !1138
  store i64 %inc161, ptr %nextsuftabindex, align 8, !dbg !1138, !tbaa !1141
  %arrayidx162 = getelementptr inbounds i64, ptr %116, i64 %118, !dbg !1138
  %119 = load i64, ptr %arrayidx162, align 8, !dbg !1138, !tbaa !495
  store i64 %119, ptr %previoussuffix, align 8, !dbg !1138, !tbaa !495
  br label %if.end163

if.end163:                                        ; preds = %if.else159, %if.end158
  %120 = load i64, ptr %previoussuffix, align 8, !dbg !1142, !tbaa !495
  %121 = load i64, ptr %sumsuftab, align 8, !dbg !1143, !tbaa !495
  %add164 = add i64 %121, %120, !dbg !1143
  store i64 %add164, ptr %sumsuftab, align 8, !dbg !1143, !tbaa !495
  br label %for.inc165, !dbg !1144

for.inc165:                                       ; preds = %if.end163
  %122 = load i64, ptr %idx, align 8, !dbg !1145, !tbaa !495
  %inc166 = add i64 %122, 1, !dbg !1145
  store i64 %inc166, ptr %idx, align 8, !dbg !1145, !tbaa !495
  br label %for.cond20, !dbg !1146, !llvm.loop !1147

for.end167:                                       ; preds = %cleanup155, %cleanup120, %cleanup83, %land.end
  br label %if.end169, !dbg !1149

if.else168:                                       ; preds = %if.else
  %123 = load ptr, ptr %err.addr, align 8, !dbg !1150, !tbaa !351
  %124 = load i32, ptr %mode.addr, align 4, !dbg !1152, !tbaa !863
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %123, ptr noundef @.str.14, i32 noundef %124), !dbg !1153
  store i8 1, ptr %haserr, align 1, !dbg !1154, !tbaa !364
  br label %if.end169

if.end169:                                        ; preds = %if.else168, %for.end167
  br label %if.end170

if.end170:                                        ; preds = %if.end169, %for.end
  %125 = load i8, ptr %haserr, align 1, !dbg !1155, !tbaa !364, !range !400, !noundef !401
  %tobool171 = trunc i8 %125 to i1, !dbg !1155
  br i1 %tobool171, label %if.end175, label %if.then172, !dbg !1157

if.then172:                                       ; preds = %if.end170
  %126 = load i64, ptr %sumsuftab, align 8, !dbg !1158, !tbaa !495
  %call173 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i64 noundef %126), !dbg !1160
  %127 = load i64, ptr %sumlcptab, align 8, !dbg !1161, !tbaa !495
  %call174 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i64 noundef %127), !dbg !1162
  br label %if.end175, !dbg !1163

if.end175:                                        ; preds = %if.then172, %if.end170
  %128 = load i8, ptr %haserr, align 1, !dbg !1164, !tbaa !364, !range !400, !noundef !401
  %tobool176 = trunc i8 %128 to i1, !dbg !1164
  %129 = zext i1 %tobool176 to i64, !dbg !1164
  %cond = select i1 %tobool176, i32 -1, i32 0, !dbg !1164
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %haserr) #7, !dbg !1165
  call void @llvm.lifetime.end.p0(i64 8, ptr %sumlcptab) #7, !dbg !1165
  call void @llvm.lifetime.end.p0(i64 8, ptr %sumsuftab) #7, !dbg !1165
  call void @llvm.lifetime.end.p0(i64 8, ptr %nonspecials) #7, !dbg !1165
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #7, !dbg !1165
  call void @llvm.lifetime.end.p0(i64 8, ptr %previoussuffix) #7, !dbg !1165
  call void @llvm.lifetime.end.p0(i64 8, ptr %lcpvalue) #7, !dbg !1165
  ret i32 %cond, !dbg !1166

unreachable:                                      ; preds = %cleanup155, %cleanup120, %cleanup83, %cleanup
  unreachable
}

declare !dbg !1167 i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define internal void @showbranchingedgeDFS(i1 noundef zeroext %firstsucc, i64 noundef %fd, i64 noundef %flb, i64 noundef %sd, i64 noundef %slb) #0 !dbg !1170 {
entry:
  %firstsucc.addr = alloca i8, align 1
  %fd.addr = alloca i64, align 8
  %flb.addr = alloca i64, align 8
  %sd.addr = alloca i64, align 8
  %slb.addr = alloca i64, align 8
  %frombool = zext i1 %firstsucc to i8
  store i8 %frombool, ptr %firstsucc.addr, align 1, !tbaa !364
  tail call void @llvm.dbg.declare(metadata ptr %firstsucc.addr, metadata !1174, metadata !DIExpression()), !dbg !1179
  store i64 %fd, ptr %fd.addr, align 8, !tbaa !495
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !1175, metadata !DIExpression()), !dbg !1180
  store i64 %flb, ptr %flb.addr, align 8, !tbaa !495
  tail call void @llvm.dbg.declare(metadata ptr %flb.addr, metadata !1176, metadata !DIExpression()), !dbg !1181
  store i64 %sd, ptr %sd.addr, align 8, !tbaa !495
  tail call void @llvm.dbg.declare(metadata ptr %sd.addr, metadata !1177, metadata !DIExpression()), !dbg !1182
  store i64 %slb, ptr %slb.addr, align 8, !tbaa !495
  tail call void @llvm.dbg.declare(metadata ptr %slb.addr, metadata !1178, metadata !DIExpression()), !dbg !1183
  %0 = load i8, ptr %firstsucc.addr, align 1, !dbg !1184, !tbaa !364, !range !400, !noundef !401
  %tobool = trunc i8 %0 to i1, !dbg !1184
  %1 = zext i1 %tobool to i64, !dbg !1184
  %cond = select i1 %tobool, i32 49, i32 48, !dbg !1184
  %2 = load i64, ptr %fd.addr, align 8, !dbg !1185, !tbaa !495
  %3 = load i64, ptr %flb.addr, align 8, !dbg !1186, !tbaa !495
  %4 = load i64, ptr %sd.addr, align 8, !dbg !1187, !tbaa !495
  %5 = load i64, ptr %slb.addr, align 8, !dbg !1188, !tbaa !495
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %cond, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5), !dbg !1189
  ret void, !dbg !1190
}

declare !dbg !1191 i64 @gt_Sequentialsuffixarrayreader_nonspecials(ptr noundef) #2

declare !dbg !1192 i32 @gt_nextSequentiallcpvalue(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1195 i32 @gt_nextSequentialsuftabvalue(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @gt_readnextfromstream_GtUchar(ptr noundef %val, ptr noundef %buf) #0 !dbg !1198 {
entry:
  %retval = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %val, ptr %val.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1203, metadata !DIExpression()), !dbg !1205
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1204, metadata !DIExpression()), !dbg !1205
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !1206, !tbaa !351
  %nextread = getelementptr inbounds %struct.GtBufferedfile_GtUchar, ptr %0, i32 0, i32 1, !dbg !1206
  %1 = load i32, ptr %nextread, align 4, !dbg !1206, !tbaa !1105
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !1206, !tbaa !351
  %nextfree = getelementptr inbounds %struct.GtBufferedfile_GtUchar, ptr %2, i32 0, i32 0, !dbg !1206
  %3 = load i32, ptr %nextfree, align 8, !dbg !1206, !tbaa !1106
  %cmp = icmp uge i32 %1, %3, !dbg !1206
  br i1 %cmp, label %if.then, label %if.end12, !dbg !1205

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !1208, !tbaa !351
  %bufferedfilespace = getelementptr inbounds %struct.GtBufferedfile_GtUchar, ptr %4, i32 0, i32 2, !dbg !1208
  %5 = load ptr, ptr %bufferedfilespace, align 8, !dbg !1208, !tbaa !1109
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !1208, !tbaa !351
  %fp = getelementptr inbounds %struct.GtBufferedfile_GtUchar, ptr %6, i32 0, i32 3, !dbg !1208
  %7 = load ptr, ptr %fp, align 8, !dbg !1208, !tbaa !1110
  %call = call i64 @fread(ptr noundef %5, i64 noundef 1, i64 noundef 4096, ptr noundef %7), !dbg !1208
  %conv = trunc i64 %call to i32, !dbg !1208
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !1208, !tbaa !351
  %nextfree1 = getelementptr inbounds %struct.GtBufferedfile_GtUchar, ptr %8, i32 0, i32 0, !dbg !1208
  store i32 %conv, ptr %nextfree1, align 8, !dbg !1208, !tbaa !1106
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !1210, !tbaa !351
  %fp2 = getelementptr inbounds %struct.GtBufferedfile_GtUchar, ptr %9, i32 0, i32 3, !dbg !1210
  %10 = load ptr, ptr %fp2, align 8, !dbg !1210, !tbaa !1110
  %call3 = call i32 @ferror(ptr noundef %10) #7, !dbg !1210
  %tobool = icmp ne i32 %call3, 0, !dbg !1210
  br i1 %tobool, label %if.then4, label %if.end, !dbg !1208

if.then4:                                         ; preds = %if.then
  %11 = load ptr, ptr @stderr, align 8, !dbg !1212, !tbaa !351
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.10, ptr noundef @.str.17), !dbg !1212
  call void @exit(i32 noundef 2) #8, !dbg !1212
  unreachable, !dbg !1212

if.end:                                           ; preds = %if.then
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !1208, !tbaa !351
  %nextread6 = getelementptr inbounds %struct.GtBufferedfile_GtUchar, ptr %12, i32 0, i32 1, !dbg !1208
  store i32 0, ptr %nextread6, align 4, !dbg !1208, !tbaa !1105
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !1214, !tbaa !351
  %nextfree7 = getelementptr inbounds %struct.GtBufferedfile_GtUchar, ptr %13, i32 0, i32 0, !dbg !1214
  %14 = load i32, ptr %nextfree7, align 8, !dbg !1214, !tbaa !1106
  %cmp8 = icmp eq i32 %14, 0, !dbg !1214
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !1208

if.then10:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1216
  br label %return, !dbg !1216

if.end11:                                         ; preds = %if.end
  br label %if.end12, !dbg !1208

if.end12:                                         ; preds = %if.end11, %entry
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !1205, !tbaa !351
  %bufferedfilespace13 = getelementptr inbounds %struct.GtBufferedfile_GtUchar, ptr %15, i32 0, i32 2, !dbg !1205
  %16 = load ptr, ptr %bufferedfilespace13, align 8, !dbg !1205, !tbaa !1109
  %17 = load ptr, ptr %buf.addr, align 8, !dbg !1205, !tbaa !351
  %nextread14 = getelementptr inbounds %struct.GtBufferedfile_GtUchar, ptr %17, i32 0, i32 1, !dbg !1205
  %18 = load i32, ptr %nextread14, align 4, !dbg !1205, !tbaa !1105
  %inc = add i32 %18, 1, !dbg !1205
  store i32 %inc, ptr %nextread14, align 4, !dbg !1205, !tbaa !1105
  %idxprom = zext i32 %18 to i64, !dbg !1205
  %arrayidx = getelementptr inbounds i8, ptr %16, i64 %idxprom, !dbg !1205
  %19 = load i8, ptr %arrayidx, align 1, !dbg !1205, !tbaa !1050
  %20 = load ptr, ptr %val.addr, align 8, !dbg !1205, !tbaa !351
  store i8 %19, ptr %20, align 1, !dbg !1205, !tbaa !1050
  store i32 1, ptr %retval, align 4, !dbg !1205
  br label %return, !dbg !1205

return:                                           ; preds = %if.end12, %if.then10
  %21 = load i32, ptr %retval, align 4, !dbg !1205
  ret i32 %21, !dbg !1205
}

; Function Attrs: nounwind uwtable
define internal i32 @gt_readnextfromstream_Largelcpvalue(ptr noundef %val, ptr noundef %buf) #0 !dbg !1218 {
entry:
  %retval = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %val, ptr %val.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1223, metadata !DIExpression()), !dbg !1225
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !351
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1224, metadata !DIExpression()), !dbg !1225
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !1226, !tbaa !351
  %nextread = getelementptr inbounds %struct.GtBufferedfile_Largelcpvalue, ptr %0, i32 0, i32 1, !dbg !1226
  %1 = load i32, ptr %nextread, align 4, !dbg !1226, !tbaa !1105
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !1226, !tbaa !351
  %nextfree = getelementptr inbounds %struct.GtBufferedfile_Largelcpvalue, ptr %2, i32 0, i32 0, !dbg !1226
  %3 = load i32, ptr %nextfree, align 8, !dbg !1226, !tbaa !1106
  %cmp = icmp uge i32 %1, %3, !dbg !1226
  br i1 %cmp, label %if.then, label %if.end12, !dbg !1225

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !1228, !tbaa !351
  %bufferedfilespace = getelementptr inbounds %struct.GtBufferedfile_Largelcpvalue, ptr %4, i32 0, i32 2, !dbg !1228
  %5 = load ptr, ptr %bufferedfilespace, align 8, !dbg !1228, !tbaa !1109
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !1228, !tbaa !351
  %fp = getelementptr inbounds %struct.GtBufferedfile_Largelcpvalue, ptr %6, i32 0, i32 3, !dbg !1228
  %7 = load ptr, ptr %fp, align 8, !dbg !1228, !tbaa !1110
  %call = call i64 @fread(ptr noundef %5, i64 noundef 16, i64 noundef 4096, ptr noundef %7), !dbg !1228
  %conv = trunc i64 %call to i32, !dbg !1228
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !1228, !tbaa !351
  %nextfree1 = getelementptr inbounds %struct.GtBufferedfile_Largelcpvalue, ptr %8, i32 0, i32 0, !dbg !1228
  store i32 %conv, ptr %nextfree1, align 8, !dbg !1228, !tbaa !1106
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !1230, !tbaa !351
  %fp2 = getelementptr inbounds %struct.GtBufferedfile_Largelcpvalue, ptr %9, i32 0, i32 3, !dbg !1230
  %10 = load ptr, ptr %fp2, align 8, !dbg !1230, !tbaa !1110
  %call3 = call i32 @ferror(ptr noundef %10) #7, !dbg !1230
  %tobool = icmp ne i32 %call3, 0, !dbg !1230
  br i1 %tobool, label %if.then4, label %if.end, !dbg !1228

if.then4:                                         ; preds = %if.then
  %11 = load ptr, ptr @stderr, align 8, !dbg !1232, !tbaa !351
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.10, ptr noundef @.str.18), !dbg !1232
  call void @exit(i32 noundef 2) #8, !dbg !1232
  unreachable, !dbg !1232

if.end:                                           ; preds = %if.then
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !1228, !tbaa !351
  %nextread6 = getelementptr inbounds %struct.GtBufferedfile_Largelcpvalue, ptr %12, i32 0, i32 1, !dbg !1228
  store i32 0, ptr %nextread6, align 4, !dbg !1228, !tbaa !1105
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !1234, !tbaa !351
  %nextfree7 = getelementptr inbounds %struct.GtBufferedfile_Largelcpvalue, ptr %13, i32 0, i32 0, !dbg !1234
  %14 = load i32, ptr %nextfree7, align 8, !dbg !1234, !tbaa !1106
  %cmp8 = icmp eq i32 %14, 0, !dbg !1234
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !1228

if.then10:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1236
  br label %return, !dbg !1236

if.end11:                                         ; preds = %if.end
  br label %if.end12, !dbg !1228

if.end12:                                         ; preds = %if.end11, %entry
  %15 = load ptr, ptr %val.addr, align 8, !dbg !1225, !tbaa !351
  %16 = load ptr, ptr %buf.addr, align 8, !dbg !1225, !tbaa !351
  %bufferedfilespace13 = getelementptr inbounds %struct.GtBufferedfile_Largelcpvalue, ptr %16, i32 0, i32 2, !dbg !1225
  %17 = load ptr, ptr %bufferedfilespace13, align 8, !dbg !1225, !tbaa !1109
  %18 = load ptr, ptr %buf.addr, align 8, !dbg !1225, !tbaa !351
  %nextread14 = getelementptr inbounds %struct.GtBufferedfile_Largelcpvalue, ptr %18, i32 0, i32 1, !dbg !1225
  %19 = load i32, ptr %nextread14, align 4, !dbg !1225, !tbaa !1105
  %inc = add i32 %19, 1, !dbg !1225
  store i32 %inc, ptr %nextread14, align 4, !dbg !1225, !tbaa !1105
  %idxprom = zext i32 %19 to i64, !dbg !1225
  %arrayidx = getelementptr inbounds %struct.Largelcpvalue, ptr %17, i64 %idxprom, !dbg !1225
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %15, ptr align 8 %arrayidx, i64 16, i1 false), !dbg !1225, !tbaa.struct !1238
  store i32 1, ptr %retval, align 4, !dbg !1225
  br label %return, !dbg !1225

return:                                           ; preds = %if.end12, %if.then10
  %20 = load i32, ptr %retval, align 4, !dbg !1225
  ret i32 %20, !dbg !1225
}

declare !dbg !1239 void @gt_error_set(ptr noundef, ptr noundef, ...) #2

declare !dbg !1242 i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare !dbg !1246 i32 @ferror(ptr noundef) #4

; Function Attrs: noreturn nounwind
declare !dbg !1249 void @exit(i32 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!107}
!llvm.module.flags = !{!159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 141, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/match/esa-lcpintervals.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "b51d2b13544d215dfe22b2aef2499ad1")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 29)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 297)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 30)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 232, elements: !5)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 220, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 224, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 28)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 318, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 112, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 14)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 18)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 22)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !29)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 200, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 25)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 16)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 277, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 12)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 277, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 144, elements: !34)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 291, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 61)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 291, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 720, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 90)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 294, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 34)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 294, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 8)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 294, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 24)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 294, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 9)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 300, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !24)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !2, line: 306, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 15)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !2, line: 307, type: !97, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !104, line: 54, type: !79, isLocal: true, isDefinition: true)
!104 = !DIFile(filename: "src/match/sarr-def.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "680305296307322e88a803109233df34")
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !104, line: 57, type: !43, isLocal: true, isDefinition: true)
!107 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !108, retainedTypes: !117, globals: !158, splitDebugInlining: false, nameTableKind: None)
!108 = !{!109}
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "GtReadmode", file: !110, line: 23, baseType: !111, size: 32, elements: !112)
!110 = !DIFile(filename: "src/core/readmode_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "1b062e226e296972a431b9bfcad13aa9")
!111 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "GT_READMODE_FORWARD", value: 0)
!114 = !DIEnumerator(name: "GT_READMODE_REVERSE", value: 1)
!115 = !DIEnumerator(name: "GT_READMODE_COMPL", value: 2)
!116 = !DIEnumerator(name: "GT_READMODE_REVCOMPL", value: 3)
!117 = !{!118, !119, !123, !126, !137, !150, !152, !132, !111, !156}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "Dfsstate", file: !121, line: 27, baseType: !122)
!121 = !DIFile(filename: "src/match/esa-dfs.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "5851b1a4629a3d9ba3b6b54f4b70537b")
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "Dfsstate", file: !121, line: 27, flags: DIFlagFwdDecl)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "Dfsinfo", file: !121, line: 26, baseType: !125)
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "Dfsinfo", file: !121, line: 26, flags: DIFlagFwdDecl)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "Lcpinterval", file: !128, line: 28, baseType: !129)
!128 = !DIFile(filename: "src/match/lcpinterval.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "f84ce0d1ab0e926c629db5b5fc519a43")
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !128, line: 23, size: 192, elements: !130)
!130 = !{!131, !135, !136}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !129, file: !128, line: 25, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUword", file: !133, line: 83, baseType: !134)
!133 = !DIFile(filename: "src/core/types_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c1165644814b09ecabcfbfd3bda28077")
!134 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !129, file: !128, line: 26, baseType: !132, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !129, file: !128, line: 27, baseType: !132, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elcpstate", file: !2, line: 32, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 27, size: 320, elements: !140)
!140 = !{!141, !142, !149}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "lastcompletenode", scope: !139, file: !2, line: 29, baseType: !127, size: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "processlcpinterval", scope: !139, file: !2, line: 30, baseType: !143, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !118, !147}
!146 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "processinfo", scope: !139, file: !2, line: 31, baseType: !118, size: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUchar", file: !133, line: 102, baseType: !151)
!151 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !153, line: 24, baseType: !154)
!153 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !155, line: 38, baseType: !151)
!155 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !157, line: 70, baseType: !134)
!157 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!158 = !{!0, !7, !12, !17, !21, !26, !31, !36, !41, !44, !49, !54, !59, !62, !67, !72, !77, !82, !87, !92, !95, !100, !102, !105}
!159 = !{i32 7, !"Dwarf Version", i32 5}
!160 = !{i32 2, !"Debug Info Version", i32 3}
!161 = !{i32 1, !"wchar_size", i32 4}
!162 = !{i32 8, !"PIC Level", i32 2}
!163 = !{i32 7, !"uwtable", i32 2}
!164 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!165 = distinct !DISubprogram(name: "gt_processlcpintervals", scope: !2, file: !2, line: 132, type: !166, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !343)
!166 = !DISubroutineType(types: !167)
!167 = !{!146, !168, !143, !118, !335, !339}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "Sequentialsuffixarrayreader", file: !170, line: 42, baseType: !171)
!170 = !DIFile(filename: "src/match/esa-seqread.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "7d5afd2dc9fb2e0962102c19c42622ee")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Sequentialsuffixarrayreader", file: !170, line: 27, size: 704, elements: !172)
!172 = !{!173, !323, !324, !325, !326, !327, !328, !329, !332, !333, !334}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "suffixarray", scope: !171, file: !170, line: 29, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "Suffixarray", file: !104, line: 88, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !104, line: 63, size: 2048, elements: !177)
!177 = !{!178, !183, !191, !192, !199, !200, !202, !203, !204, !208, !211, !220, !221, !222, !227, !294, !304, !313, !314}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "encseq", scope: !176, file: !104, line: 65, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtEncseq", file: !181, line: 48, baseType: !182)
!181 = !DIFile(filename: "src/core/encseq_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "bab4512cadee996edd2995020539d931")
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtEncseq", file: !181, line: 48, flags: DIFlagFwdDecl)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "numoflargelcpvalues", scope: !176, file: !104, line: 66, baseType: !184, size: 128, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "Definedunsignedlong", file: !185, line: 28, baseType: !186)
!185 = !DIFile(filename: "src/core/defined-types.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e7a1f5519c7b299f300cac0dd118ae65")
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 24, size: 128, elements: !187)
!187 = !{!188, !190}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "defined", scope: !186, file: !185, line: 26, baseType: !189, size: 8)
!189 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "valueunsignedlong", scope: !186, file: !185, line: 27, baseType: !132, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "maxbranchdepth", scope: !176, file: !104, line: 67, baseType: !184, size: 128, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "averagelcp", scope: !176, file: !104, line: 68, baseType: !193, size: 128, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "Defineddouble", file: !185, line: 40, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 36, size: 128, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "defined", scope: !194, file: !185, line: 38, baseType: !189, size: 8)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "valuedouble", scope: !194, file: !185, line: 39, baseType: !198, size: 64, offset: 64)
!198 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "longest", scope: !176, file: !104, line: 69, baseType: !184, size: 128, offset: 448)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "readmode", scope: !176, file: !104, line: 70, baseType: !201, size: 32, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtReadmode", file: !110, line: 32, baseType: !109)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "mirroredencseq", scope: !176, file: !104, line: 71, baseType: !189, size: 8, offset: 608)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "numberofallsortedsuffixes", scope: !176, file: !104, line: 72, baseType: !132, size: 64, offset: 640)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "suftab", scope: !176, file: !104, line: 74, baseType: !205, size: 64, offset: 704)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "ESASuffixptr", file: !104, line: 59, baseType: !132)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "lcptab", scope: !176, file: !104, line: 75, baseType: !209, size: 64, offset: 768)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "llvtab", scope: !176, file: !104, line: 76, baseType: !212, size: 64, offset: 832)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "Largelcpvalue", file: !215, line: 30, baseType: !216)
!215 = !DIFile(filename: "src/match/lcpoverflow.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "fbf9328cf0deca32f53d590fbcd3426d")
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !215, line: 26, size: 128, elements: !217)
!217 = !{!218, !219}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !216, file: !215, line: 28, baseType: !132, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !216, file: !215, line: 29, baseType: !132, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "bwttab", scope: !176, file: !104, line: 77, baseType: !209, size: 64, offset: 896)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "prefixlength", scope: !176, file: !104, line: 78, baseType: !111, size: 32, offset: 960)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "bcktab", scope: !176, file: !104, line: 79, baseType: !223, size: 64, offset: 1024)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtBcktab", file: !225, line: 49, baseType: !226)
!225 = !DIFile(filename: "src/match/bcktab.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "1e275b447e1ba6b734897fa227cc90a3")
!226 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtBcktab", file: !225, line: 49, flags: DIFlagFwdDecl)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "suftabstream_uint32_t", scope: !176, file: !104, line: 82, baseType: !228, size: 192, offset: 1088)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtBufferedfile_uint32_t", file: !104, line: 49, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !104, line: 49, size: 192, elements: !230)
!230 = !{!231, !232, !233, !237}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "nextfree", scope: !229, file: !104, line: 49, baseType: !111, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "nextread", scope: !229, file: !104, line: 49, baseType: !111, size: 32, offset: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "bufferedfilespace", scope: !229, file: !104, line: 49, baseType: !234, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !153, line: 26, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !155, line: 42, baseType: !111)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !229, file: !104, line: 49, baseType: !238, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !241)
!240 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !243)
!242 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!243 = !{!244, !245, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !260, !262, !263, !264, !267, !269, !271, !275, !278, !280, !283, !286, !287, !288, !289, !290}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !241, file: !242, line: 51, baseType: !146, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !241, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !241, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !241, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !241, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !241, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !241, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !241, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !241, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !241, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !241, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !241, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !241, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !242, line: 36, flags: DIFlagFwdDecl)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !241, file: !242, line: 70, baseType: !261, size: 64, offset: 832)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !241, file: !242, line: 72, baseType: !146, size: 32, offset: 896)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !241, file: !242, line: 73, baseType: !146, size: 32, offset: 928)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !241, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !155, line: 152, baseType: !266)
!266 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !241, file: !242, line: 77, baseType: !268, size: 16, offset: 1024)
!268 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !241, file: !242, line: 78, baseType: !270, size: 8, offset: 1040)
!270 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !241, file: !242, line: 79, baseType: !272, size: 8, offset: 1048)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 1)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !241, file: !242, line: 81, baseType: !276, size: 64, offset: 1088)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !242, line: 43, baseType: null)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !241, file: !242, line: 89, baseType: !279, size: 64, offset: 1152)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !155, line: 153, baseType: !266)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !241, file: !242, line: 91, baseType: !281, size: 64, offset: 1216)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !242, line: 37, flags: DIFlagFwdDecl)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !241, file: !242, line: 92, baseType: !284, size: 64, offset: 1280)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !242, line: 38, flags: DIFlagFwdDecl)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !241, file: !242, line: 93, baseType: !261, size: 64, offset: 1344)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !241, file: !242, line: 94, baseType: !118, size: 64, offset: 1408)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !241, file: !242, line: 95, baseType: !156, size: 64, offset: 1472)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !241, file: !242, line: 96, baseType: !146, size: 32, offset: 1536)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !241, file: !242, line: 98, baseType: !291, size: 160, offset: 1568)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 20)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "suftabstream_GtUword", scope: !176, file: !104, line: 84, baseType: !295, size: 192, offset: 1280)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtBufferedfile_GtUword", file: !296, line: 61, baseType: !297)
!296 = !DIFile(filename: "src/match/declare-readfunc.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "efed3a700136885dfbda6df2e18c991e")
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !296, line: 61, size: 192, elements: !298)
!298 = !{!299, !300, !301, !303}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "nextfree", scope: !297, file: !296, line: 61, baseType: !111, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "nextread", scope: !297, file: !296, line: 61, baseType: !111, size: 32, offset: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "bufferedfilespace", scope: !297, file: !296, line: 61, baseType: !302, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !297, file: !296, line: 61, baseType: !238, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "bwttabstream", scope: !176, file: !104, line: 85, baseType: !305, size: 192, offset: 1472)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtBufferedfile_GtUchar", file: !104, line: 53, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !104, line: 53, size: 192, elements: !307)
!307 = !{!308, !309, !310, !312}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "nextfree", scope: !306, file: !104, line: 53, baseType: !111, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "nextread", scope: !306, file: !104, line: 53, baseType: !111, size: 32, offset: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "bufferedfilespace", scope: !306, file: !104, line: 53, baseType: !311, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !306, file: !104, line: 53, baseType: !238, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "lcptabstream", scope: !176, file: !104, line: 86, baseType: !305, size: 192, offset: 1664)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "llvtabstream", scope: !176, file: !104, line: 87, baseType: !315, size: 192, offset: 1856)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtBufferedfile_Largelcpvalue", file: !104, line: 56, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !104, line: 56, size: 192, elements: !317)
!317 = !{!318, !319, !320, !322}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "nextfree", scope: !316, file: !104, line: 56, baseType: !111, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "nextread", scope: !316, file: !104, line: 56, baseType: !111, size: 32, offset: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "bufferedfilespace", scope: !316, file: !104, line: 56, baseType: !321, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !316, file: !104, line: 56, baseType: !238, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "nonspecials", scope: !171, file: !170, line: 30, baseType: !132, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "numberofsuffixes", scope: !171, file: !170, line: 31, baseType: !132, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "nextsuftabindex", scope: !171, file: !170, line: 32, baseType: !132, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "nextlcptabindex", scope: !171, file: !170, line: 33, baseType: !132, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "largelcpindex", scope: !171, file: !170, line: 34, baseType: !132, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "suftab", scope: !171, file: !170, line: 35, baseType: !205, size: 64, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "encseq", scope: !171, file: !170, line: 36, baseType: !330, size: 64, offset: 448)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "scanfile", scope: !171, file: !170, line: 37, baseType: !189, size: 8, offset: 512)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "extrainfo", scope: !171, file: !170, line: 38, baseType: !118, size: 64, offset: 576)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "readmode", scope: !171, file: !170, line: 39, baseType: !201, size: 32, offset: 640)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtLogger", file: !337, line: 26, baseType: !338)
!337 = !DIFile(filename: "src/core/logger_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "076ebb09feb7de7a97ee09fc11eb7134")
!338 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtLogger", file: !337, line: 26, flags: DIFlagFwdDecl)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtError", file: !341, line: 44, baseType: !342)
!341 = !DIFile(filename: "src/core/error_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0ad6f2e2c3b3d359d3ae1d5a6962bc56")
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtError", file: !341, line: 44, flags: DIFlagFwdDecl)
!343 = !{!344, !345, !346, !347, !348, !349, !350}
!344 = !DILocalVariable(name: "ssar", arg: 1, scope: !165, file: !2, line: 132, type: !168)
!345 = !DILocalVariable(name: "processfunction", arg: 2, scope: !165, file: !2, line: 133, type: !143)
!346 = !DILocalVariable(name: "processinfo", arg: 3, scope: !165, file: !2, line: 134, type: !118)
!347 = !DILocalVariable(name: "logger", arg: 4, scope: !165, file: !2, line: 135, type: !335)
!348 = !DILocalVariable(name: "err", arg: 5, scope: !165, file: !2, line: 136, type: !339)
!349 = !DILocalVariable(name: "state", scope: !165, file: !2, line: 138, type: !137)
!350 = !DILocalVariable(name: "haserr", scope: !165, file: !2, line: 139, type: !189)
!351 = !{!352, !352, i64 0}
!352 = !{!"any pointer", !353, i64 0}
!353 = !{!"omnipotent char", !354, i64 0}
!354 = !{!"Simple C/C++ TBAA"}
!355 = !DILocation(line: 132, column: 57, scope: !165)
!356 = !DILocation(line: 133, column: 34, scope: !165)
!357 = !DILocation(line: 134, column: 34, scope: !165)
!358 = !DILocation(line: 135, column: 38, scope: !165)
!359 = !DILocation(line: 136, column: 37, scope: !165)
!360 = !DILocation(line: 138, column: 3, scope: !165)
!361 = !DILocation(line: 138, column: 14, scope: !165)
!362 = !DILocation(line: 139, column: 3, scope: !165)
!363 = !DILocation(line: 139, column: 8, scope: !165)
!364 = !{!365, !365, i64 0}
!365 = !{!"_Bool", !353, i64 0}
!366 = !DILocation(line: 141, column: 11, scope: !165)
!367 = !DILocation(line: 141, column: 9, scope: !165)
!368 = !DILocation(line: 142, column: 31, scope: !165)
!369 = !DILocation(line: 142, column: 3, scope: !165)
!370 = !DILocation(line: 142, column: 10, scope: !165)
!371 = !DILocation(line: 142, column: 29, scope: !165)
!372 = !{!373, !352, i64 24}
!373 = !{!"", !374, i64 0, !352, i64 24, !352, i64 32}
!374 = !{!"", !375, i64 0, !375, i64 8, !375, i64 16}
!375 = !{!"long", !353, i64 0}
!376 = !DILocation(line: 143, column: 24, scope: !165)
!377 = !DILocation(line: 143, column: 3, scope: !165)
!378 = !DILocation(line: 143, column: 10, scope: !165)
!379 = !DILocation(line: 143, column: 22, scope: !165)
!380 = !{!373, !352, i64 32}
!381 = !DILocation(line: 144, column: 24, scope: !382)
!382 = distinct !DILexicalBlock(scope: !165, file: !2, line: 144, column: 7)
!383 = !DILocation(line: 147, column: 24, scope: !382)
!384 = !DILocation(line: 147, column: 31, scope: !382)
!385 = !DILocation(line: 147, column: 50, scope: !382)
!386 = !DILocation(line: 149, column: 24, scope: !382)
!387 = !DILocation(line: 149, column: 31, scope: !382)
!388 = !DILocation(line: 149, column: 50, scope: !382)
!389 = !DILocation(line: 154, column: 37, scope: !382)
!390 = !DILocation(line: 155, column: 24, scope: !382)
!391 = !DILocation(line: 156, column: 24, scope: !382)
!392 = !DILocation(line: 144, column: 7, scope: !382)
!393 = !DILocation(line: 156, column: 29, scope: !382)
!394 = !DILocation(line: 144, column: 7, scope: !165)
!395 = !DILocation(line: 158, column: 12, scope: !396)
!396 = distinct !DILexicalBlock(scope: !382, file: !2, line: 157, column: 3)
!397 = !DILocation(line: 159, column: 3, scope: !396)
!398 = !DILocation(line: 160, column: 8, scope: !399)
!399 = distinct !DILexicalBlock(scope: !165, file: !2, line: 160, column: 7)
!400 = !{i8 0, i8 2}
!401 = !{}
!402 = !DILocation(line: 160, column: 15, scope: !399)
!403 = !DILocation(line: 160, column: 18, scope: !399)
!404 = !DILocation(line: 160, column: 25, scope: !399)
!405 = !DILocation(line: 160, column: 44, scope: !399)
!406 = !DILocation(line: 160, column: 7, scope: !165)
!407 = !DILocation(line: 162, column: 5, scope: !408)
!408 = distinct !DILexicalBlock(scope: !399, file: !2, line: 161, column: 3)
!409 = !DILocation(line: 162, column: 12, scope: !408)
!410 = !DILocation(line: 162, column: 29, scope: !408)
!411 = !DILocation(line: 162, column: 36, scope: !408)
!412 = !{!373, !375, i64 0}
!413 = !DILocation(line: 163, column: 5, scope: !408)
!414 = !DILocation(line: 163, column: 12, scope: !408)
!415 = !DILocation(line: 163, column: 29, scope: !408)
!416 = !DILocation(line: 163, column: 34, scope: !408)
!417 = !{!373, !375, i64 8}
!418 = !DILocation(line: 165, column: 52, scope: !408)
!419 = !DILocation(line: 165, column: 9, scope: !408)
!420 = !DILocation(line: 164, column: 5, scope: !408)
!421 = !DILocation(line: 164, column: 12, scope: !408)
!422 = !DILocation(line: 164, column: 29, scope: !408)
!423 = !DILocation(line: 165, column: 7, scope: !408)
!424 = !{!373, !375, i64 16}
!425 = !DILocation(line: 166, column: 9, scope: !426)
!426 = distinct !DILexicalBlock(scope: !408, file: !2, line: 166, column: 9)
!427 = !DILocation(line: 166, column: 16, scope: !426)
!428 = !DILocation(line: 166, column: 35, scope: !426)
!429 = !DILocation(line: 166, column: 42, scope: !426)
!430 = !DILocation(line: 167, column: 36, scope: !426)
!431 = !DILocation(line: 167, column: 43, scope: !426)
!432 = !DILocation(line: 167, column: 61, scope: !426)
!433 = !DILocation(line: 166, column: 9, scope: !408)
!434 = !DILocation(line: 169, column: 14, scope: !435)
!435 = distinct !DILexicalBlock(scope: !426, file: !2, line: 168, column: 5)
!436 = !DILocation(line: 170, column: 5, scope: !435)
!437 = !DILocation(line: 171, column: 3, scope: !408)
!438 = !DILocation(line: 172, column: 3, scope: !165)
!439 = !DILocation(line: 173, column: 10, scope: !165)
!440 = !DILocation(line: 174, column: 1, scope: !165)
!441 = !DILocation(line: 173, column: 3, scope: !165)
!442 = !DISubprogram(name: "gt_malloc_mem", scope: !443, file: !443, line: 56, type: !444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!443 = !DIFile(filename: "src/core/ma_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "7471aa5449adf19e6d72bdf5eac6e908")
!444 = !DISubroutineType(types: !445)
!445 = !{!118, !156, !446, !146}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!447 = !DISubprogram(name: "gt_depthfirstesa", scope: !121, file: !121, line: 29, type: !448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!448 = !DISubroutineType(types: !449)
!449 = !{!146, !168, !450, !453, !456, !459, !462, !465, !468, !119, !335, !339}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!123, !119}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !123, !119}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!146, !189, !132, !123, !132, !119, !339}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!146, !189, !132, !123, !123, !119, !339}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!146, !132, !123, !132, !119, !339}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !123, !132, !119}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !123, !132, !132, !132, !119}
!471 = distinct !DISubprogram(name: "allocateDfsinfo_elcp", scope: !2, file: !2, line: 34, type: !451, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !472)
!472 = !{!473}
!473 = !DILocalVariable(name: "astate", arg: 1, scope: !471, file: !2, line: 34, type: !119)
!474 = !DILocation(line: 34, column: 58, scope: !471)
!475 = !DILocation(line: 36, column: 22, scope: !471)
!476 = !DILocation(line: 36, column: 3, scope: !471)
!477 = distinct !DISubprogram(name: "freeDfsinfo_elcp", scope: !2, file: !2, line: 39, type: !454, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !478)
!478 = !{!479, !480}
!479 = !DILocalVariable(name: "adfsinfo", arg: 1, scope: !477, file: !2, line: 39, type: !123)
!480 = !DILocalVariable(name: "state", arg: 2, scope: !477, file: !2, line: 39, type: !119)
!481 = !DILocation(line: 39, column: 39, scope: !477)
!482 = !DILocation(line: 39, column: 68, scope: !477)
!483 = !DILocation(line: 41, column: 3, scope: !477)
!484 = !DILocation(line: 42, column: 1, scope: !477)
!485 = distinct !DISubprogram(name: "processleafedge_elcp", scope: !2, file: !2, line: 52, type: !457, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !493}
!487 = !DILocalVariable(name: "firstsucc", arg: 1, scope: !485, file: !2, line: 52, type: !189)
!488 = !DILocalVariable(name: "fatherdepth", arg: 2, scope: !485, file: !2, line: 53, type: !132)
!489 = !DILocalVariable(name: "afather", arg: 3, scope: !485, file: !2, line: 54, type: !123)
!490 = !DILocalVariable(name: "leafnumber", arg: 4, scope: !485, file: !2, line: 55, type: !132)
!491 = !DILocalVariable(name: "astate", arg: 5, scope: !485, file: !2, line: 56, type: !119)
!492 = !DILocalVariable(name: "err", arg: 6, scope: !485, file: !2, line: 57, type: !339)
!493 = !DILocalVariable(name: "father", scope: !485, file: !2, line: 59, type: !126)
!494 = !DILocation(line: 52, column: 38, scope: !485)
!495 = !{!375, !375, i64 0}
!496 = !DILocation(line: 53, column: 41, scope: !485)
!497 = !DILocation(line: 54, column: 42, scope: !485)
!498 = !DILocation(line: 55, column: 41, scope: !485)
!499 = !DILocation(line: 56, column: 53, scope: !485)
!500 = !DILocation(line: 57, column: 52, scope: !485)
!501 = !DILocation(line: 59, column: 3, scope: !485)
!502 = !DILocation(line: 59, column: 16, scope: !485)
!503 = !DILocation(line: 59, column: 41, scope: !485)
!504 = !DILocation(line: 61, column: 43, scope: !485)
!505 = !DILocation(line: 62, column: 31, scope: !485)
!506 = !DILocation(line: 62, column: 43, scope: !485)
!507 = !DILocation(line: 62, column: 51, scope: !485)
!508 = !{!374, !375, i64 8}
!509 = !DILocation(line: 62, column: 56, scope: !485)
!510 = !DILocation(line: 61, column: 3, scope: !485)
!511 = !DILocation(line: 64, column: 1, scope: !485)
!512 = !DILocation(line: 63, column: 3, scope: !485)
!513 = distinct !DISubprogram(name: "processbranchedge_elcp", scope: !2, file: !2, line: 66, type: !460, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !514)
!514 = !{!515, !516, !517, !518, !519, !520, !521, !522, !523}
!515 = !DILocalVariable(name: "firstsucc", arg: 1, scope: !513, file: !2, line: 66, type: !189)
!516 = !DILocalVariable(name: "fatherdepth", arg: 2, scope: !513, file: !2, line: 67, type: !132)
!517 = !DILocalVariable(name: "afather", arg: 3, scope: !513, file: !2, line: 68, type: !123)
!518 = !DILocalVariable(name: "ason", arg: 4, scope: !513, file: !2, line: 69, type: !123)
!519 = !DILocalVariable(name: "astate", arg: 5, scope: !513, file: !2, line: 70, type: !119)
!520 = !DILocalVariable(name: "err", arg: 6, scope: !513, file: !2, line: 71, type: !339)
!521 = !DILocalVariable(name: "father", scope: !513, file: !2, line: 73, type: !126)
!522 = !DILocalVariable(name: "son", scope: !513, file: !2, line: 74, type: !126)
!523 = !DILocalVariable(name: "state", scope: !513, file: !2, line: 75, type: !137)
!524 = !DILocation(line: 66, column: 40, scope: !513)
!525 = !DILocation(line: 67, column: 43, scope: !513)
!526 = !DILocation(line: 68, column: 44, scope: !513)
!527 = !DILocation(line: 69, column: 44, scope: !513)
!528 = !DILocation(line: 70, column: 45, scope: !513)
!529 = !DILocation(line: 71, column: 54, scope: !513)
!530 = !DILocation(line: 73, column: 3, scope: !513)
!531 = !DILocation(line: 73, column: 16, scope: !513)
!532 = !DILocation(line: 73, column: 41, scope: !513)
!533 = !DILocation(line: 74, column: 3, scope: !513)
!534 = !DILocation(line: 74, column: 16, scope: !513)
!535 = !DILocation(line: 74, column: 38, scope: !513)
!536 = !DILocation(line: 75, column: 3, scope: !513)
!537 = !DILocation(line: 75, column: 14, scope: !513)
!538 = !DILocation(line: 75, column: 36, scope: !513)
!539 = !DILocation(line: 77, column: 7, scope: !540)
!540 = distinct !DILexicalBlock(scope: !513, file: !2, line: 77, column: 7)
!541 = !DILocation(line: 77, column: 11, scope: !540)
!542 = !DILocation(line: 77, column: 7, scope: !513)
!543 = !DILocation(line: 79, column: 26, scope: !544)
!544 = distinct !DILexicalBlock(scope: !540, file: !2, line: 78, column: 3)
!545 = !DILocation(line: 79, column: 36, scope: !544)
!546 = !DILocation(line: 79, column: 48, scope: !544)
!547 = !DILocation(line: 79, column: 56, scope: !544)
!548 = !DILocation(line: 79, column: 61, scope: !544)
!549 = !DILocation(line: 79, column: 66, scope: !544)
!550 = !{!374, !375, i64 0}
!551 = !DILocation(line: 80, column: 24, scope: !544)
!552 = !DILocation(line: 80, column: 29, scope: !544)
!553 = !DILocation(line: 79, column: 5, scope: !544)
!554 = !DILocation(line: 81, column: 3, scope: !544)
!555 = !DILocation(line: 83, column: 26, scope: !556)
!556 = distinct !DILexicalBlock(scope: !540, file: !2, line: 82, column: 3)
!557 = !DILocation(line: 83, column: 36, scope: !556)
!558 = !DILocation(line: 83, column: 48, scope: !556)
!559 = !DILocation(line: 83, column: 56, scope: !556)
!560 = !DILocation(line: 84, column: 24, scope: !556)
!561 = !DILocation(line: 84, column: 31, scope: !556)
!562 = !DILocation(line: 84, column: 48, scope: !556)
!563 = !DILocation(line: 85, column: 24, scope: !556)
!564 = !DILocation(line: 85, column: 31, scope: !556)
!565 = !DILocation(line: 85, column: 48, scope: !556)
!566 = !DILocation(line: 83, column: 5, scope: !556)
!567 = !DILocation(line: 88, column: 1, scope: !513)
!568 = !DILocation(line: 87, column: 3, scope: !513)
!569 = distinct !DISubprogram(name: "processcompletenode_elcp", scope: !2, file: !2, line: 90, type: !463, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577}
!571 = !DILocalVariable(name: "nodeptrdepth", arg: 1, scope: !569, file: !2, line: 91, type: !132)
!572 = !DILocalVariable(name: "anodeptr", arg: 2, scope: !569, file: !2, line: 92, type: !123)
!573 = !DILocalVariable(name: "nodeptrminusonedepth", arg: 3, scope: !569, file: !2, line: 93, type: !132)
!574 = !DILocalVariable(name: "astate", arg: 4, scope: !569, file: !2, line: 94, type: !119)
!575 = !DILocalVariable(name: "err", arg: 5, scope: !569, file: !2, line: 95, type: !339)
!576 = !DILocalVariable(name: "nodeptr", scope: !569, file: !2, line: 97, type: !126)
!577 = !DILocalVariable(name: "state", scope: !569, file: !2, line: 98, type: !137)
!578 = !DILocation(line: 91, column: 35, scope: !569)
!579 = !DILocation(line: 92, column: 36, scope: !569)
!580 = !DILocation(line: 93, column: 45, scope: !569)
!581 = !DILocation(line: 94, column: 37, scope: !569)
!582 = !DILocation(line: 95, column: 46, scope: !569)
!583 = !DILocation(line: 97, column: 3, scope: !569)
!584 = !DILocation(line: 97, column: 16, scope: !569)
!585 = !DILocation(line: 97, column: 42, scope: !569)
!586 = !DILocation(line: 98, column: 3, scope: !569)
!587 = !DILocation(line: 98, column: 14, scope: !569)
!588 = !DILocation(line: 98, column: 36, scope: !569)
!589 = !DILocation(line: 100, column: 3, scope: !569)
!590 = !DILocation(line: 100, column: 3, scope: !591)
!591 = distinct !DILexicalBlock(scope: !592, file: !2, line: 100, column: 3)
!592 = distinct !DILexicalBlock(scope: !569, file: !2, line: 100, column: 3)
!593 = !DILocation(line: 100, column: 3, scope: !592)
!594 = !DILocation(line: 100, column: 3, scope: !595)
!595 = distinct !DILexicalBlock(scope: !591, file: !2, line: 100, column: 3)
!596 = !DILocation(line: 101, column: 3, scope: !569)
!597 = !DILocation(line: 101, column: 3, scope: !598)
!598 = distinct !DILexicalBlock(scope: !599, file: !2, line: 101, column: 3)
!599 = distinct !DILexicalBlock(scope: !569, file: !2, line: 101, column: 3)
!600 = !DILocation(line: 101, column: 3, scope: !599)
!601 = !DILocation(line: 101, column: 3, scope: !602)
!602 = distinct !DILexicalBlock(scope: !598, file: !2, line: 101, column: 3)
!603 = !DILocation(line: 102, column: 54, scope: !569)
!604 = !DILocation(line: 102, column: 21, scope: !569)
!605 = !DILocation(line: 102, column: 28, scope: !569)
!606 = !DILocation(line: 102, column: 45, scope: !569)
!607 = !DILocation(line: 102, column: 52, scope: !569)
!608 = !DILocation(line: 102, column: 3, scope: !569)
!609 = !DILocation(line: 102, column: 12, scope: !569)
!610 = !DILocation(line: 102, column: 19, scope: !569)
!611 = !DILocation(line: 103, column: 34, scope: !569)
!612 = !DILocation(line: 103, column: 43, scope: !569)
!613 = !DILocation(line: 103, column: 3, scope: !569)
!614 = !DILocation(line: 103, column: 10, scope: !569)
!615 = !DILocation(line: 103, column: 27, scope: !569)
!616 = !DILocation(line: 103, column: 32, scope: !569)
!617 = !DILocation(line: 104, column: 35, scope: !569)
!618 = !DILocation(line: 104, column: 44, scope: !569)
!619 = !{!374, !375, i64 16}
!620 = !DILocation(line: 104, column: 3, scope: !569)
!621 = !DILocation(line: 104, column: 10, scope: !569)
!622 = !DILocation(line: 104, column: 27, scope: !569)
!623 = !DILocation(line: 104, column: 33, scope: !569)
!624 = !DILocation(line: 105, column: 7, scope: !625)
!625 = distinct !DILexicalBlock(scope: !569, file: !2, line: 105, column: 7)
!626 = !DILocation(line: 105, column: 14, scope: !625)
!627 = !DILocation(line: 105, column: 33, scope: !625)
!628 = !DILocation(line: 105, column: 7, scope: !569)
!629 = !DILocation(line: 107, column: 9, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !2, line: 107, column: 9)
!631 = distinct !DILexicalBlock(scope: !625, file: !2, line: 106, column: 3)
!632 = !DILocation(line: 107, column: 16, scope: !630)
!633 = !DILocation(line: 107, column: 35, scope: !630)
!634 = !DILocation(line: 107, column: 42, scope: !630)
!635 = !DILocation(line: 108, column: 36, scope: !630)
!636 = !DILocation(line: 108, column: 43, scope: !630)
!637 = !DILocation(line: 108, column: 61, scope: !630)
!638 = !DILocation(line: 107, column: 9, scope: !631)
!639 = !DILocation(line: 110, column: 7, scope: !640)
!640 = distinct !DILexicalBlock(scope: !630, file: !2, line: 109, column: 5)
!641 = !DILocation(line: 112, column: 3, scope: !631)
!642 = !DILocation(line: 113, column: 3, scope: !569)
!643 = !DILocation(line: 114, column: 1, scope: !569)
!644 = distinct !DISubprogram(name: "assignleftmostleaf_elcp", scope: !2, file: !2, line: 116, type: !466, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !645)
!645 = !{!646, !647, !648}
!646 = !DILocalVariable(name: "adfsinfo", arg: 1, scope: !644, file: !2, line: 116, type: !123)
!647 = !DILocalVariable(name: "leftmostleaf", arg: 2, scope: !644, file: !2, line: 117, type: !132)
!648 = !DILocalVariable(name: "dfsstate", arg: 3, scope: !644, file: !2, line: 118, type: !119)
!649 = !DILocation(line: 116, column: 46, scope: !644)
!650 = !DILocation(line: 117, column: 45, scope: !644)
!651 = !DILocation(line: 118, column: 57, scope: !644)
!652 = !DILocation(line: 120, column: 38, scope: !644)
!653 = !DILocation(line: 120, column: 20, scope: !644)
!654 = !DILocation(line: 120, column: 31, scope: !644)
!655 = !DILocation(line: 120, column: 36, scope: !644)
!656 = !DILocation(line: 121, column: 1, scope: !644)
!657 = distinct !DISubprogram(name: "assignrightmostleaf_elcp", scope: !2, file: !2, line: 123, type: !469, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !658)
!658 = !{!659, !660, !661, !662, !663}
!659 = !DILocalVariable(name: "adfsinfo", arg: 1, scope: !657, file: !2, line: 123, type: !123)
!660 = !DILocalVariable(name: "currentindex", arg: 2, scope: !657, file: !2, line: 124, type: !132)
!661 = !DILocalVariable(name: "previoussuffix", arg: 3, scope: !657, file: !2, line: 125, type: !132)
!662 = !DILocalVariable(name: "currentlcp", arg: 4, scope: !657, file: !2, line: 126, type: !132)
!663 = !DILocalVariable(name: "dfsstate", arg: 5, scope: !657, file: !2, line: 127, type: !119)
!664 = !DILocation(line: 123, column: 47, scope: !657)
!665 = !DILocation(line: 124, column: 46, scope: !657)
!666 = !DILocation(line: 125, column: 56, scope: !657)
!667 = !DILocation(line: 126, column: 56, scope: !657)
!668 = !DILocation(line: 127, column: 58, scope: !657)
!669 = !DILocation(line: 129, column: 39, scope: !657)
!670 = !DILocation(line: 129, column: 20, scope: !657)
!671 = !DILocation(line: 129, column: 31, scope: !657)
!672 = !DILocation(line: 129, column: 37, scope: !657)
!673 = !DILocation(line: 130, column: 1, scope: !657)
!674 = !DISubprogram(name: "gt_Sequentialsuffixarrayreader_totallength", scope: !170, file: !170, line: 242, type: !675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!675 = !DISubroutineType(types: !676)
!676 = !{!132, !677}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!679 = !DISubprogram(name: "gt_free_mem", scope: !443, file: !443, line: 75, type: !680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !118, !446, !146}
!682 = distinct !DISubprogram(name: "gt_runenumlcpvalues_bottomup", scope: !2, file: !2, line: 176, type: !683, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !685)
!683 = !DISubroutineType(types: !684)
!684 = !{!146, !446, !335, !339}
!685 = !{!686, !687, !688, !689, !690, !691}
!686 = !DILocalVariable(name: "inputindex", arg: 1, scope: !682, file: !2, line: 176, type: !446)
!687 = !DILocalVariable(name: "logger", arg: 2, scope: !682, file: !2, line: 177, type: !335)
!688 = !DILocalVariable(name: "err", arg: 3, scope: !682, file: !2, line: 178, type: !339)
!689 = !DILocalVariable(name: "haserr", scope: !682, file: !2, line: 180, type: !189)
!690 = !DILocalVariable(name: "ssar", scope: !682, file: !2, line: 181, type: !168)
!691 = !DILocalVariable(name: "elv", scope: !692, file: !2, line: 197, type: !694)
!692 = distinct !DILexicalBlock(scope: !693, file: !2, line: 196, column: 3)
!693 = distinct !DILexicalBlock(scope: !682, file: !2, line: 195, column: 7)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtESAVisitor", file: !696, line: 26, baseType: !697)
!696 = !DIFile(filename: "src/match/esa_visitor.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "a8bbe679e6112e38cce29cb9a81e755f")
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtESAVisitor", file: !696, line: 26, flags: DIFlagFwdDecl)
!698 = !DILocation(line: 176, column: 46, scope: !682)
!699 = !DILocation(line: 177, column: 44, scope: !682)
!700 = !DILocation(line: 178, column: 43, scope: !682)
!701 = !DILocation(line: 180, column: 3, scope: !682)
!702 = !DILocation(line: 180, column: 8, scope: !682)
!703 = !DILocation(line: 181, column: 3, scope: !682)
!704 = !DILocation(line: 181, column: 32, scope: !682)
!705 = !DILocation(line: 183, column: 3, scope: !682)
!706 = !DILocation(line: 183, column: 3, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !2, line: 183, column: 3)
!708 = distinct !DILexicalBlock(scope: !682, file: !2, line: 183, column: 3)
!709 = !DILocation(line: 183, column: 3, scope: !708)
!710 = !DILocation(line: 183, column: 3, scope: !711)
!711 = distinct !DILexicalBlock(scope: !707, file: !2, line: 183, column: 3)
!712 = !DILocation(line: 184, column: 52, scope: !682)
!713 = !DILocation(line: 189, column: 52, scope: !682)
!714 = !DILocation(line: 190, column: 52, scope: !682)
!715 = !DILocation(line: 184, column: 10, scope: !682)
!716 = !DILocation(line: 184, column: 8, scope: !682)
!717 = !DILocation(line: 191, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !682, file: !2, line: 191, column: 7)
!719 = !DILocation(line: 191, column: 12, scope: !718)
!720 = !DILocation(line: 191, column: 7, scope: !682)
!721 = !DILocation(line: 193, column: 12, scope: !722)
!722 = distinct !DILexicalBlock(scope: !718, file: !2, line: 192, column: 3)
!723 = !DILocation(line: 194, column: 3, scope: !722)
!724 = !DILocation(line: 195, column: 8, scope: !693)
!725 = !DILocation(line: 195, column: 7, scope: !682)
!726 = !DILocation(line: 197, column: 5, scope: !692)
!727 = !DILocation(line: 197, column: 19, scope: !692)
!728 = !DILocation(line: 197, column: 25, scope: !692)
!729 = !DILocation(line: 198, column: 25, scope: !730)
!730 = distinct !DILexicalBlock(scope: !692, file: !2, line: 198, column: 9)
!731 = !DILocation(line: 198, column: 31, scope: !730)
!732 = !DILocation(line: 198, column: 36, scope: !730)
!733 = !DILocation(line: 198, column: 9, scope: !730)
!734 = !DILocation(line: 198, column: 41, scope: !730)
!735 = !DILocation(line: 198, column: 9, scope: !692)
!736 = !DILocation(line: 200, column: 14, scope: !737)
!737 = distinct !DILexicalBlock(scope: !730, file: !2, line: 199, column: 5)
!738 = !DILocation(line: 201, column: 5, scope: !737)
!739 = !DILocation(line: 202, column: 27, scope: !692)
!740 = !DILocation(line: 202, column: 5, scope: !692)
!741 = !DILocation(line: 203, column: 3, scope: !693)
!742 = !DILocation(line: 203, column: 3, scope: !692)
!743 = !DILocation(line: 204, column: 7, scope: !744)
!744 = distinct !DILexicalBlock(scope: !682, file: !2, line: 204, column: 7)
!745 = !DILocation(line: 204, column: 12, scope: !744)
!746 = !DILocation(line: 204, column: 7, scope: !682)
!747 = !DILocation(line: 206, column: 5, scope: !748)
!748 = distinct !DILexicalBlock(scope: !744, file: !2, line: 205, column: 3)
!749 = !DILocation(line: 207, column: 3, scope: !748)
!750 = !DILocation(line: 208, column: 10, scope: !682)
!751 = !DILocation(line: 209, column: 1, scope: !682)
!752 = !DILocation(line: 208, column: 3, scope: !682)
!753 = !DISubprogram(name: "gt_error_is_set", scope: !341, file: !341, line: 64, type: !754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!754 = !DISubroutineType(types: !755)
!755 = !{!189, !756}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!758 = !DISubprogram(name: "fprintf", scope: !759, file: !759, line: 350, type: !760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!759 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!760 = !DISubroutineType(types: !761)
!761 = !{!146, !762, !763, null}
!762 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !238)
!763 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !446)
!764 = !DISubprogram(name: "abort", scope: !765, file: !765, line: 598, type: !766, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!765 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!766 = !DISubroutineType(types: !767)
!767 = !{null}
!768 = !DISubprogram(name: "gt_newSequentialsuffixarrayreaderfromfile", scope: !170, file: !170, line: 218, type: !769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!769 = !DISubroutineType(types: !770)
!770 = !{!168, !446, !111, !189, !335, !339}
!771 = !DISubprogram(name: "gt_esa_lcpitvs_visitor_new", scope: !772, file: !772, line: 25, type: !773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!772 = !DIFile(filename: "src/match/esa_lcpintervals_visitor.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "ad425508111a9626f05557dc210f00a4")
!773 = !DISubroutineType(types: !774)
!774 = !{!694}
!775 = !DISubprogram(name: "gt_esa_bottomup", scope: !776, file: !776, line: 31, type: !777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!776 = !DIFile(filename: "src/match/esa-bottomup.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "6612e3a7d5916b358b2e91509c988dff")
!777 = !DISubroutineType(types: !778)
!778 = !{!146, !168, !694, !339}
!779 = !DISubprogram(name: "gt_esa_visitor_delete", scope: !696, file: !696, line: 54, type: !780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !694}
!782 = !DISubprogram(name: "gt_freeSequentialsuffixarrayreader", scope: !170, file: !170, line: 225, type: !783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !785}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!786 = distinct !DISubprogram(name: "gt_runenumlcpvalues_process", scope: !2, file: !2, line: 211, type: !787, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !789)
!787 = !DISubroutineType(types: !788)
!788 = !{!146, !446, !143, !118, !335, !339}
!789 = !{!790, !791, !792, !793, !794, !795, !796}
!790 = !DILocalVariable(name: "inputindex", arg: 1, scope: !786, file: !2, line: 211, type: !446)
!791 = !DILocalVariable(name: "processfunction", arg: 2, scope: !786, file: !2, line: 212, type: !143)
!792 = !DILocalVariable(name: "processdata", arg: 3, scope: !786, file: !2, line: 213, type: !118)
!793 = !DILocalVariable(name: "logger", arg: 4, scope: !786, file: !2, line: 214, type: !335)
!794 = !DILocalVariable(name: "err", arg: 5, scope: !786, file: !2, line: 215, type: !339)
!795 = !DILocalVariable(name: "haserr", scope: !786, file: !2, line: 217, type: !189)
!796 = !DILocalVariable(name: "ssar", scope: !786, file: !2, line: 218, type: !168)
!797 = !DILocation(line: 211, column: 45, scope: !786)
!798 = !DILocation(line: 212, column: 36, scope: !786)
!799 = !DILocation(line: 213, column: 36, scope: !786)
!800 = !DILocation(line: 214, column: 40, scope: !786)
!801 = !DILocation(line: 215, column: 39, scope: !786)
!802 = !DILocation(line: 217, column: 3, scope: !786)
!803 = !DILocation(line: 217, column: 8, scope: !786)
!804 = !DILocation(line: 218, column: 3, scope: !786)
!805 = !DILocation(line: 218, column: 32, scope: !786)
!806 = !DILocation(line: 220, column: 3, scope: !786)
!807 = !DILocation(line: 220, column: 3, scope: !808)
!808 = distinct !DILexicalBlock(scope: !809, file: !2, line: 220, column: 3)
!809 = distinct !DILexicalBlock(scope: !786, file: !2, line: 220, column: 3)
!810 = !DILocation(line: 220, column: 3, scope: !809)
!811 = !DILocation(line: 220, column: 3, scope: !812)
!812 = distinct !DILexicalBlock(scope: !808, file: !2, line: 220, column: 3)
!813 = !DILocation(line: 221, column: 52, scope: !786)
!814 = !DILocation(line: 226, column: 52, scope: !786)
!815 = !DILocation(line: 227, column: 52, scope: !786)
!816 = !DILocation(line: 221, column: 10, scope: !786)
!817 = !DILocation(line: 221, column: 8, scope: !786)
!818 = !DILocation(line: 228, column: 7, scope: !819)
!819 = distinct !DILexicalBlock(scope: !786, file: !2, line: 228, column: 7)
!820 = !DILocation(line: 228, column: 12, scope: !819)
!821 = !DILocation(line: 228, column: 7, scope: !786)
!822 = !DILocation(line: 230, column: 12, scope: !823)
!823 = distinct !DILexicalBlock(scope: !819, file: !2, line: 229, column: 3)
!824 = !DILocation(line: 231, column: 3, scope: !823)
!825 = !DILocation(line: 232, column: 8, scope: !826)
!826 = distinct !DILexicalBlock(scope: !786, file: !2, line: 232, column: 7)
!827 = !DILocation(line: 232, column: 7, scope: !786)
!828 = !DILocation(line: 234, column: 32, scope: !829)
!829 = distinct !DILexicalBlock(scope: !830, file: !2, line: 234, column: 9)
!830 = distinct !DILexicalBlock(scope: !826, file: !2, line: 233, column: 3)
!831 = !DILocation(line: 234, column: 38, scope: !829)
!832 = !DILocation(line: 234, column: 55, scope: !829)
!833 = !DILocation(line: 235, column: 32, scope: !829)
!834 = !DILocation(line: 235, column: 40, scope: !829)
!835 = !DILocation(line: 234, column: 9, scope: !829)
!836 = !DILocation(line: 235, column: 45, scope: !829)
!837 = !DILocation(line: 234, column: 9, scope: !830)
!838 = !DILocation(line: 237, column: 14, scope: !839)
!839 = distinct !DILexicalBlock(scope: !829, file: !2, line: 236, column: 5)
!840 = !DILocation(line: 238, column: 5, scope: !839)
!841 = !DILocation(line: 239, column: 3, scope: !830)
!842 = !DILocation(line: 240, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !786, file: !2, line: 240, column: 7)
!844 = !DILocation(line: 240, column: 12, scope: !843)
!845 = !DILocation(line: 240, column: 7, scope: !786)
!846 = !DILocation(line: 242, column: 5, scope: !847)
!847 = distinct !DILexicalBlock(scope: !843, file: !2, line: 241, column: 3)
!848 = !DILocation(line: 243, column: 3, scope: !847)
!849 = !DILocation(line: 244, column: 10, scope: !786)
!850 = !DILocation(line: 245, column: 1, scope: !786)
!851 = !DILocation(line: 244, column: 3, scope: !786)
!852 = distinct !DISubprogram(name: "gt_runscanesa", scope: !2, file: !2, line: 312, type: !853, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !855)
!853 = !DISubroutineType(types: !854)
!854 = !{!146, !446, !111, !335, !339}
!855 = !{!856, !857, !858, !859, !860, !861}
!856 = !DILocalVariable(name: "inputindex", arg: 1, scope: !852, file: !2, line: 312, type: !446)
!857 = !DILocalVariable(name: "mode", arg: 2, scope: !852, file: !2, line: 312, type: !111)
!858 = !DILocalVariable(name: "logger", arg: 3, scope: !852, file: !2, line: 313, type: !335)
!859 = !DILocalVariable(name: "err", arg: 4, scope: !852, file: !2, line: 313, type: !339)
!860 = !DILocalVariable(name: "haserr", scope: !852, file: !2, line: 315, type: !189)
!861 = !DILocalVariable(name: "ssar", scope: !852, file: !2, line: 316, type: !168)
!862 = !DILocation(line: 312, column: 31, scope: !852)
!863 = !{!864, !864, i64 0}
!864 = !{!"int", !353, i64 0}
!865 = !DILocation(line: 312, column: 56, scope: !852)
!866 = !DILocation(line: 313, column: 29, scope: !852)
!867 = !DILocation(line: 313, column: 45, scope: !852)
!868 = !DILocation(line: 315, column: 3, scope: !852)
!869 = !DILocation(line: 315, column: 8, scope: !852)
!870 = !DILocation(line: 316, column: 3, scope: !852)
!871 = !DILocation(line: 316, column: 32, scope: !852)
!872 = !DILocation(line: 318, column: 3, scope: !852)
!873 = !DILocation(line: 318, column: 3, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !2, line: 318, column: 3)
!875 = distinct !DILexicalBlock(scope: !852, file: !2, line: 318, column: 3)
!876 = !DILocation(line: 318, column: 3, scope: !875)
!877 = !DILocation(line: 318, column: 3, scope: !878)
!878 = distinct !DILexicalBlock(scope: !874, file: !2, line: 318, column: 3)
!879 = !DILocation(line: 319, column: 52, scope: !852)
!880 = !DILocation(line: 324, column: 52, scope: !852)
!881 = !DILocation(line: 325, column: 52, scope: !852)
!882 = !DILocation(line: 319, column: 10, scope: !852)
!883 = !DILocation(line: 319, column: 8, scope: !852)
!884 = !DILocation(line: 326, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !852, file: !2, line: 326, column: 7)
!886 = !DILocation(line: 326, column: 12, scope: !885)
!887 = !DILocation(line: 326, column: 7, scope: !852)
!888 = !DILocation(line: 328, column: 12, scope: !889)
!889 = distinct !DILexicalBlock(scope: !885, file: !2, line: 327, column: 3)
!890 = !DILocation(line: 329, column: 3, scope: !889)
!891 = !DILocation(line: 330, column: 8, scope: !892)
!892 = distinct !DILexicalBlock(scope: !852, file: !2, line: 330, column: 7)
!893 = !DILocation(line: 330, column: 15, scope: !892)
!894 = !DILocation(line: 330, column: 36, scope: !892)
!895 = !DILocation(line: 330, column: 42, scope: !892)
!896 = !DILocation(line: 330, column: 48, scope: !892)
!897 = !DILocation(line: 330, column: 18, scope: !892)
!898 = !DILocation(line: 330, column: 53, scope: !892)
!899 = !DILocation(line: 330, column: 7, scope: !852)
!900 = !DILocation(line: 332, column: 12, scope: !901)
!901 = distinct !DILexicalBlock(scope: !892, file: !2, line: 331, column: 3)
!902 = !DILocation(line: 333, column: 3, scope: !901)
!903 = !DILocation(line: 334, column: 7, scope: !904)
!904 = distinct !DILexicalBlock(scope: !852, file: !2, line: 334, column: 7)
!905 = !DILocation(line: 334, column: 12, scope: !904)
!906 = !DILocation(line: 334, column: 7, scope: !852)
!907 = !DILocation(line: 336, column: 5, scope: !908)
!908 = distinct !DILexicalBlock(scope: !904, file: !2, line: 335, column: 3)
!909 = !DILocation(line: 337, column: 3, scope: !908)
!910 = !DILocation(line: 338, column: 10, scope: !852)
!911 = !DILocation(line: 339, column: 1, scope: !852)
!912 = !DILocation(line: 338, column: 3, scope: !852)
!913 = distinct !DISubprogram(name: "gt_esa_scantables", scope: !2, file: !2, line: 247, type: !914, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !916)
!914 = !DISubroutineType(types: !915)
!915 = !{!146, !168, !111, !339}
!916 = !{!917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !933, !941, !944, !949, !956}
!917 = !DILocalVariable(name: "ssar", arg: 1, scope: !913, file: !2, line: 247, type: !168)
!918 = !DILocalVariable(name: "mode", arg: 2, scope: !913, file: !2, line: 248, type: !111)
!919 = !DILocalVariable(name: "err", arg: 3, scope: !913, file: !2, line: 248, type: !339)
!920 = !DILocalVariable(name: "lcpvalue", scope: !913, file: !2, line: 250, type: !132)
!921 = !DILocalVariable(name: "previoussuffix", scope: !913, file: !2, line: 251, type: !132)
!922 = !DILocalVariable(name: "idx", scope: !913, file: !2, line: 252, type: !132)
!923 = !DILocalVariable(name: "nonspecials", scope: !913, file: !2, line: 253, type: !132)
!924 = !DILocalVariable(name: "sumsuftab", scope: !913, file: !2, line: 254, type: !132)
!925 = !DILocalVariable(name: "sumlcptab", scope: !913, file: !2, line: 255, type: !132)
!926 = !DILocalVariable(name: "haserr", scope: !913, file: !2, line: 256, type: !189)
!927 = !DILocalVariable(name: "retval", scope: !928, file: !2, line: 263, type: !146)
!928 = distinct !DILexicalBlock(scope: !929, file: !2, line: 262, column: 5)
!929 = distinct !DILexicalBlock(scope: !930, file: !2, line: 261, column: 5)
!930 = distinct !DILexicalBlock(scope: !931, file: !2, line: 261, column: 5)
!931 = distinct !DILexicalBlock(scope: !932, file: !2, line: 260, column: 3)
!932 = distinct !DILexicalBlock(scope: !913, file: !2, line: 259, column: 7)
!933 = !DILocalVariable(name: "tmpsmalllcpvalue", scope: !934, file: !2, line: 291, type: !150)
!934 = distinct !DILexicalBlock(scope: !935, file: !2, line: 291, column: 9)
!935 = distinct !DILexicalBlock(scope: !936, file: !2, line: 290, column: 7)
!936 = distinct !DILexicalBlock(scope: !937, file: !2, line: 289, column: 7)
!937 = distinct !DILexicalBlock(scope: !938, file: !2, line: 289, column: 7)
!938 = distinct !DILexicalBlock(scope: !939, file: !2, line: 288, column: 5)
!939 = distinct !DILexicalBlock(scope: !940, file: !2, line: 287, column: 9)
!940 = distinct !DILexicalBlock(scope: !932, file: !2, line: 286, column: 3)
!941 = !DILocalVariable(name: "retval", scope: !942, file: !2, line: 291, type: !146)
!942 = distinct !DILexicalBlock(scope: !943, file: !2, line: 291, column: 9)
!943 = distinct !DILexicalBlock(scope: !934, file: !2, line: 291, column: 9)
!944 = !DILocalVariable(name: "tmpexception", scope: !945, file: !2, line: 291, type: !214)
!945 = distinct !DILexicalBlock(scope: !946, file: !2, line: 291, column: 9)
!946 = distinct !DILexicalBlock(scope: !947, file: !2, line: 291, column: 9)
!947 = distinct !DILexicalBlock(scope: !948, file: !2, line: 291, column: 9)
!948 = distinct !DILexicalBlock(scope: !942, file: !2, line: 291, column: 9)
!949 = !DILocalVariable(name: "buf", scope: !950, file: !2, line: 294, type: !955)
!950 = distinct !DILexicalBlock(scope: !951, file: !2, line: 294, column: 9)
!951 = distinct !DILexicalBlock(scope: !952, file: !2, line: 294, column: 9)
!952 = distinct !DILexicalBlock(scope: !953, file: !2, line: 294, column: 9)
!953 = distinct !DILexicalBlock(scope: !954, file: !2, line: 294, column: 9)
!954 = distinct !DILexicalBlock(scope: !935, file: !2, line: 294, column: 9)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!956 = !DILocalVariable(name: "buf", scope: !957, file: !2, line: 294, type: !959)
!957 = distinct !DILexicalBlock(scope: !958, file: !2, line: 294, column: 9)
!958 = distinct !DILexicalBlock(scope: !952, file: !2, line: 294, column: 9)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!960 = !DILocation(line: 247, column: 59, scope: !913)
!961 = !DILocation(line: 248, column: 43, scope: !913)
!962 = !DILocation(line: 248, column: 57, scope: !913)
!963 = !DILocation(line: 250, column: 3, scope: !913)
!964 = !DILocation(line: 250, column: 11, scope: !913)
!965 = !DILocation(line: 251, column: 17, scope: !913)
!966 = !DILocation(line: 252, column: 17, scope: !913)
!967 = !DILocation(line: 253, column: 17, scope: !913)
!968 = !DILocation(line: 254, column: 17, scope: !913)
!969 = !DILocation(line: 255, column: 17, scope: !913)
!970 = !DILocation(line: 256, column: 3, scope: !913)
!971 = !DILocation(line: 256, column: 8, scope: !913)
!972 = !DILocation(line: 258, column: 60, scope: !913)
!973 = !DILocation(line: 258, column: 17, scope: !913)
!974 = !DILocation(line: 258, column: 15, scope: !913)
!975 = !DILocation(line: 259, column: 7, scope: !932)
!976 = !DILocation(line: 259, column: 12, scope: !932)
!977 = !DILocation(line: 259, column: 7, scope: !913)
!978 = !DILocation(line: 261, column: 14, scope: !930)
!979 = !DILocation(line: 261, column: 10, scope: !930)
!980 = !DILocation(line: 261, column: 19, scope: !929)
!981 = !DILocation(line: 261, column: 25, scope: !929)
!982 = !DILocation(line: 261, column: 23, scope: !929)
!983 = !DILocation(line: 261, column: 5, scope: !930)
!984 = !DILocation(line: 263, column: 7, scope: !928)
!985 = !DILocation(line: 263, column: 11, scope: !928)
!986 = !DILocation(line: 263, column: 56, scope: !928)
!987 = !DILocation(line: 263, column: 61, scope: !928)
!988 = !DILocation(line: 263, column: 20, scope: !928)
!989 = !DILocation(line: 265, column: 11, scope: !990)
!990 = distinct !DILexicalBlock(scope: !928, file: !2, line: 265, column: 11)
!991 = !DILocation(line: 265, column: 18, scope: !990)
!992 = !DILocation(line: 265, column: 11, scope: !928)
!993 = !DILocation(line: 267, column: 16, scope: !994)
!994 = distinct !DILexicalBlock(scope: !990, file: !2, line: 266, column: 7)
!995 = !DILocation(line: 268, column: 9, scope: !994)
!996 = !DILocation(line: 270, column: 11, scope: !997)
!997 = distinct !DILexicalBlock(scope: !928, file: !2, line: 270, column: 11)
!998 = !DILocation(line: 270, column: 18, scope: !997)
!999 = !DILocation(line: 270, column: 11, scope: !928)
!1000 = !DILocation(line: 272, column: 9, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !997, file: !2, line: 271, column: 7)
!1002 = !DILocation(line: 274, column: 20, scope: !928)
!1003 = !DILocation(line: 274, column: 17, scope: !928)
!1004 = !DILocation(line: 276, column: 61, scope: !928)
!1005 = !DILocation(line: 276, column: 16, scope: !928)
!1006 = !DILocation(line: 276, column: 14, scope: !928)
!1007 = !DILocation(line: 277, column: 7, scope: !928)
!1008 = !DILocation(line: 277, column: 7, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 277, column: 7)
!1010 = distinct !DILexicalBlock(scope: !928, file: !2, line: 277, column: 7)
!1011 = !DILocation(line: 277, column: 7, scope: !1010)
!1012 = !DILocation(line: 277, column: 7, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 277, column: 7)
!1014 = !DILocation(line: 278, column: 11, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !928, file: !2, line: 278, column: 11)
!1016 = !DILocation(line: 278, column: 18, scope: !1015)
!1017 = !DILocation(line: 278, column: 11, scope: !928)
!1018 = !DILocation(line: 280, column: 9, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !2, line: 279, column: 7)
!1020 = !DILocation(line: 282, column: 20, scope: !928)
!1021 = !DILocation(line: 282, column: 17, scope: !928)
!1022 = !DILocation(line: 284, column: 5, scope: !929)
!1023 = !DILocation(line: 284, column: 5, scope: !928)
!1024 = !DILocation(line: 261, column: 41, scope: !929)
!1025 = !DILocation(line: 261, column: 5, scope: !929)
!1026 = distinct !{!1026, !983, !1027, !1028}
!1027 = !DILocation(line: 284, column: 5, scope: !930)
!1028 = !{!"llvm.loop.mustprogress"}
!1029 = !DILocation(line: 285, column: 3, scope: !931)
!1030 = !DILocation(line: 287, column: 9, scope: !939)
!1031 = !DILocation(line: 287, column: 14, scope: !939)
!1032 = !DILocation(line: 287, column: 9, scope: !940)
!1033 = !DILocation(line: 289, column: 16, scope: !937)
!1034 = !DILocation(line: 289, column: 12, scope: !937)
!1035 = !DILocation(line: 289, column: 22, scope: !936)
!1036 = !DILocation(line: 289, column: 29, scope: !936)
!1037 = !DILocation(line: 289, column: 32, scope: !936)
!1038 = !DILocation(line: 289, column: 38, scope: !936)
!1039 = !DILocation(line: 289, column: 36, scope: !936)
!1040 = !DILocation(line: 0, scope: !936)
!1041 = !DILocation(line: 289, column: 7, scope: !937)
!1042 = !DILocation(line: 291, column: 9, scope: !934)
!1043 = !DILocation(line: 291, column: 9, scope: !943)
!1044 = !{!1045, !365, i64 64}
!1045 = !{!"Sequentialsuffixarrayreader", !352, i64 0, !375, i64 8, !375, i64 16, !375, i64 24, !375, i64 32, !375, i64 40, !352, i64 48, !352, i64 56, !365, i64 64, !352, i64 72, !353, i64 80}
!1046 = !DILocation(line: 291, column: 9, scope: !942)
!1047 = !{!1045, !352, i64 0}
!1048 = !DILocation(line: 291, column: 9, scope: !948)
!1049 = !DILocation(line: 291, column: 9, scope: !946)
!1050 = !{!353, !353, i64 0}
!1051 = !DILocation(line: 291, column: 9, scope: !947)
!1052 = !DILocation(line: 291, column: 9, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !946, file: !2, line: 291, column: 9)
!1054 = !DILocation(line: 291, column: 9, scope: !945)
!1055 = !DILocation(line: 291, column: 9, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !945, file: !2, line: 291, column: 9)
!1057 = !DILocation(line: 291, column: 9, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 291, column: 9)
!1059 = !{!1060, !375, i64 8}
!1060 = !{!"", !375, i64 0, !375, i64 8}
!1061 = !DILocation(line: 291, column: 9, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !948, file: !2, line: 291, column: 9)
!1063 = !DILocation(line: 291, column: 9, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 291, column: 9)
!1065 = distinct !DILexicalBlock(scope: !943, file: !2, line: 291, column: 9)
!1066 = !{!1045, !375, i64 32}
!1067 = !{!1045, !375, i64 16}
!1068 = !DILocation(line: 291, column: 9, scope: !1065)
!1069 = !DILocation(line: 291, column: 9, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 291, column: 9)
!1071 = !{!1072, !352, i64 96}
!1072 = !{!"", !352, i64 0, !1073, i64 8, !1073, i64 24, !1074, i64 40, !1073, i64 56, !353, i64 72, !365, i64 76, !375, i64 80, !352, i64 88, !352, i64 96, !352, i64 104, !352, i64 112, !864, i64 120, !352, i64 128, !1076, i64 136, !1076, i64 160, !1076, i64 184, !1076, i64 208, !1076, i64 232}
!1073 = !{!"", !365, i64 0, !375, i64 8}
!1074 = !{!"", !365, i64 0, !1075, i64 8}
!1075 = !{!"double", !353, i64 0}
!1076 = !{!"", !864, i64 0, !864, i64 4, !352, i64 8, !352, i64 16}
!1077 = !DILocation(line: 291, column: 9, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1070, file: !2, line: 291, column: 9)
!1079 = !DILocation(line: 291, column: 9, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 291, column: 9)
!1081 = !DILocation(line: 291, column: 9, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 291, column: 9)
!1083 = !DILocation(line: 291, column: 9, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 291, column: 9)
!1085 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 291, column: 9)
!1086 = !{!1072, !352, i64 104}
!1087 = !{!1045, !375, i64 40}
!1088 = !{!1060, !375, i64 0}
!1089 = !DILocation(line: 291, column: 9, scope: !1085)
!1090 = !DILocation(line: 291, column: 9, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 291, column: 9)
!1092 = !DILocation(line: 291, column: 9, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 291, column: 9)
!1094 = !DILocation(line: 291, column: 9, scope: !935)
!1095 = !DILocation(line: 292, column: 22, scope: !935)
!1096 = !DILocation(line: 292, column: 19, scope: !935)
!1097 = !DILocation(line: 294, column: 9, scope: !954)
!1098 = !DILocation(line: 294, column: 9, scope: !935)
!1099 = !DILocation(line: 294, column: 9, scope: !952)
!1100 = !{!1072, !352, i64 176}
!1101 = !DILocation(line: 294, column: 9, scope: !953)
!1102 = !DILocation(line: 294, column: 9, scope: !950)
!1103 = !DILocation(line: 294, column: 9, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !950, file: !2, line: 294, column: 9)
!1105 = !{!1076, !864, i64 4}
!1106 = !{!1076, !864, i64 0}
!1107 = !DILocation(line: 294, column: 9, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 294, column: 9)
!1109 = !{!1076, !352, i64 8}
!1110 = !{!1076, !352, i64 16}
!1111 = !DILocation(line: 294, column: 9, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 294, column: 9)
!1113 = !DILocation(line: 294, column: 9, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 294, column: 9)
!1115 = !DILocation(line: 294, column: 9, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 294, column: 9)
!1117 = !DILocation(line: 294, column: 9, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 294, column: 9)
!1119 = !DILocation(line: 294, column: 9, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1118, file: !2, line: 294, column: 9)
!1121 = !DILocation(line: 294, column: 9, scope: !951)
!1122 = !DILocation(line: 294, column: 9, scope: !957)
!1123 = !DILocation(line: 294, column: 9, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !957, file: !2, line: 294, column: 9)
!1125 = !DILocation(line: 294, column: 9, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 294, column: 9)
!1127 = !DILocation(line: 294, column: 9, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 294, column: 9)
!1129 = !DILocation(line: 294, column: 9, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 294, column: 9)
!1131 = !DILocation(line: 294, column: 9, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 294, column: 9)
!1133 = !DILocation(line: 294, column: 9, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 294, column: 9)
!1135 = !DILocation(line: 294, column: 9, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 294, column: 9)
!1137 = !DILocation(line: 294, column: 9, scope: !958)
!1138 = !DILocation(line: 294, column: 9, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !954, file: !2, line: 294, column: 9)
!1140 = !{!1072, !352, i64 88}
!1141 = !{!1045, !375, i64 24}
!1142 = !DILocation(line: 295, column: 22, scope: !935)
!1143 = !DILocation(line: 295, column: 19, scope: !935)
!1144 = !DILocation(line: 297, column: 7, scope: !935)
!1145 = !DILocation(line: 289, column: 54, scope: !936)
!1146 = !DILocation(line: 289, column: 7, scope: !936)
!1147 = distinct !{!1147, !1041, !1148, !1028}
!1148 = !DILocation(line: 297, column: 7, scope: !937)
!1149 = !DILocation(line: 298, column: 5, scope: !938)
!1150 = !DILocation(line: 300, column: 20, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !939, file: !2, line: 299, column: 5)
!1152 = !DILocation(line: 300, column: 54, scope: !1151)
!1153 = !DILocation(line: 300, column: 7, scope: !1151)
!1154 = !DILocation(line: 301, column: 14, scope: !1151)
!1155 = !DILocation(line: 304, column: 8, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !913, file: !2, line: 304, column: 7)
!1157 = !DILocation(line: 304, column: 7, scope: !913)
!1158 = !DILocation(line: 306, column: 34, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1156, file: !2, line: 305, column: 3)
!1160 = !DILocation(line: 306, column: 5, scope: !1159)
!1161 = !DILocation(line: 307, column: 34, scope: !1159)
!1162 = !DILocation(line: 307, column: 5, scope: !1159)
!1163 = !DILocation(line: 308, column: 3, scope: !1159)
!1164 = !DILocation(line: 309, column: 10, scope: !913)
!1165 = !DILocation(line: 310, column: 1, scope: !913)
!1166 = !DILocation(line: 309, column: 3, scope: !913)
!1167 = !DISubprogram(name: "printf", scope: !759, file: !759, line: 356, type: !1168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!146, !763, null}
!1170 = distinct !DISubprogram(name: "showbranchingedgeDFS", scope: !2, file: !2, line: 44, type: !1171, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !1173)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !189, !132, !132, !132, !132}
!1173 = !{!1174, !1175, !1176, !1177, !1178}
!1174 = !DILocalVariable(name: "firstsucc", arg: 1, scope: !1170, file: !2, line: 44, type: !189)
!1175 = !DILocalVariable(name: "fd", arg: 2, scope: !1170, file: !2, line: 44, type: !132)
!1176 = !DILocalVariable(name: "flb", arg: 3, scope: !1170, file: !2, line: 45, type: !132)
!1177 = !DILocalVariable(name: "sd", arg: 4, scope: !1170, file: !2, line: 46, type: !132)
!1178 = !DILocalVariable(name: "slb", arg: 5, scope: !1170, file: !2, line: 46, type: !132)
!1179 = !DILocation(line: 44, column: 39, scope: !1170)
!1180 = !DILocation(line: 44, column: 57, scope: !1170)
!1181 = !DILocation(line: 45, column: 42, scope: !1170)
!1182 = !DILocation(line: 46, column: 42, scope: !1170)
!1183 = !DILocation(line: 46, column: 53, scope: !1170)
!1184 = !DILocation(line: 49, column: 10, scope: !1170)
!1185 = !DILocation(line: 49, column: 32, scope: !1170)
!1186 = !DILocation(line: 49, column: 35, scope: !1170)
!1187 = !DILocation(line: 49, column: 39, scope: !1170)
!1188 = !DILocation(line: 49, column: 42, scope: !1170)
!1189 = !DILocation(line: 48, column: 3, scope: !1170)
!1190 = !DILocation(line: 50, column: 1, scope: !1170)
!1191 = !DISubprogram(name: "gt_Sequentialsuffixarrayreader_nonspecials", scope: !170, file: !170, line: 233, type: !675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1192 = !DISubprogram(name: "gt_nextSequentiallcpvalue", scope: !170, file: !170, line: 44, type: !1193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!146, !302, !168, !339}
!1195 = !DISubprogram(name: "gt_nextSequentialsuftabvalue", scope: !170, file: !170, line: 48, type: !1196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!146, !302, !168}
!1198 = distinct !DISubprogram(name: "gt_readnextfromstream_GtUchar", scope: !104, file: !104, line: 54, type: !1199, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !1202)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!146, !311, !1201}
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!1202 = !{!1203, !1204}
!1203 = !DILocalVariable(name: "val", arg: 1, scope: !1198, file: !104, line: 54, type: !311)
!1204 = !DILocalVariable(name: "buf", arg: 2, scope: !1198, file: !104, line: 54, type: !1201)
!1205 = !DILocation(line: 54, column: 1, scope: !1198)
!1206 = !DILocation(line: 54, column: 1, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1198, file: !104, line: 54, column: 1)
!1208 = !DILocation(line: 54, column: 1, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1207, file: !104, line: 54, column: 1)
!1210 = !DILocation(line: 54, column: 1, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1209, file: !104, line: 54, column: 1)
!1212 = !DILocation(line: 54, column: 1, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1211, file: !104, line: 54, column: 1)
!1214 = !DILocation(line: 54, column: 1, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1209, file: !104, line: 54, column: 1)
!1216 = !DILocation(line: 54, column: 1, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1215, file: !104, line: 54, column: 1)
!1218 = distinct !DISubprogram(name: "gt_readnextfromstream_Largelcpvalue", scope: !104, file: !104, line: 57, type: !1219, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !1222)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!146, !321, !1221}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!1222 = !{!1223, !1224}
!1223 = !DILocalVariable(name: "val", arg: 1, scope: !1218, file: !104, line: 57, type: !321)
!1224 = !DILocalVariable(name: "buf", arg: 2, scope: !1218, file: !104, line: 57, type: !1221)
!1225 = !DILocation(line: 57, column: 1, scope: !1218)
!1226 = !DILocation(line: 57, column: 1, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1218, file: !104, line: 57, column: 1)
!1228 = !DILocation(line: 57, column: 1, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1227, file: !104, line: 57, column: 1)
!1230 = !DILocation(line: 57, column: 1, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1229, file: !104, line: 57, column: 1)
!1232 = !DILocation(line: 57, column: 1, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1231, file: !104, line: 57, column: 1)
!1234 = !DILocation(line: 57, column: 1, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1229, file: !104, line: 57, column: 1)
!1236 = !DILocation(line: 57, column: 1, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1235, file: !104, line: 57, column: 1)
!1238 = !{i64 0, i64 8, !495, i64 8, i64 8, !495}
!1239 = !DISubprogram(name: "gt_error_set", scope: !341, file: !341, line: 56, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{null, !339, !446, null}
!1242 = !DISubprogram(name: "fread", scope: !759, file: !759, line: 675, type: !1243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!134, !1245, !156, !156, !762}
!1245 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !118)
!1246 = !DISubprogram(name: "ferror", scope: !759, file: !759, line: 790, type: !1247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!146, !238}
!1249 = !DISubprogram(name: "exit", scope: !765, file: !765, line: 624, type: !1250, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{null, !146}

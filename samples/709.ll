; ModuleID = 'samples/709.bc'
source_filename = "check-tool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_logcategory = type { ptr, i32 }
%struct.dns_master_style = type opaque
%union.isc_logdestination = type { %struct.isc_logfile }
%struct.isc_logfile = type { ptr, ptr, i32, i32, i64, i8 }
%struct.isc_textregion = type { ptr, i32 }
%struct.isc_buffer = type { i32, ptr, i32, i32, i32, i32, %struct.anon, ptr, i8 }
%struct.anon = type { ptr, ptr }
%struct.dns_fixedname = type { %struct.dns_name, [128 x i8], %struct.isc_buffer, [255 x i8] }
%struct.dns_name = type { i32, ptr, i32, i32, i32, ptr, ptr, %struct.anon.0, %struct.anon.1 }
%struct.anon.0 = type { ptr, ptr }
%struct.anon.1 = type { ptr, ptr }
%union.anon = type { ptr }
%union.anon.7 = type { ptr }
%struct.addrinfo = type { i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.dns_rdata = type { ptr, i32, i16, i16, i32, %struct.anon.8 }
%struct.anon.8 = type { ptr, ptr }
%struct.dns_rdataset = type { i32, ptr, %struct.anon.9, i16, i16, i32, i32, i16, i16, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.anon.9 = type { ptr, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.10 }
%union.anon.10 = type { [4 x i32] }
%struct.isc_region = type { ptr, i32 }
%union.isc_symvalue = type { ptr }

@debug = global i32 0, align 4, !dbg !0
@journal = global ptr null, align 8, !dbg !268
@nomerge = global i8 1, align 1, !dbg !270
@docheckmx = global i8 1, align 1, !dbg !273
@dochecksrv = global i8 1, align 1, !dbg !275
@docheckns = global i8 1, align 1, !dbg !277
@zone_options = global i32 177801, align 4, !dbg !279
@.str = private unnamed_addr constant [13 x i8] c"check-tool.c\00", align 1, !dbg !282
@.str.1 = private unnamed_addr constant [44 x i8] c"isc_log_create(mctx, &log, &logconfig) == 0\00", align 1, !dbg !287
@categories = internal global [3 x %struct.isc_logcategory] [%struct.isc_logcategory { ptr @.str.13, i32 0 }, %struct.isc_logcategory { ptr @.str.14, i32 0 }, %struct.isc_logcategory zeroinitializer], align 16, !dbg !352
@.str.2 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1, !dbg !292
@.str.3 = private unnamed_addr constant [71 x i8] c"isc_log_createchannel(logconfig, \22stderr\22, 4, 0, &destination, 0) == 0\00", align 1, !dbg !297
@.str.4 = private unnamed_addr constant [69 x i8] c"isc_log_usechannel(logconfig, \22stderr\22, ((void*)0), ((void*)0)) == 0\00", align 1, !dbg !302
@.str.5 = private unnamed_addr constant [44 x i8] c"zonep == ((void*)0) || *zonep == ((void*)0)\00", align 1, !dbg !307
@stderr = external global ptr, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"loading \22%s\22 from \22%s\22 class \22%s\22\0A\00", align 1, !dbg !309
@dns_rootname = external global ptr, align 8
@dbtype = internal global [1 x ptr] [ptr @.str.15], align 8, !dbg !363
@dns_master_style_default = external constant %struct.dns_master_style, align 1
@stdout = external global ptr, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"w+\00", align 1, !dbg !314
@.str.8 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1, !dbg !319
@.str.9 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !322
@.str.10 = private unnamed_addr constant [22 x i8] c"dumping \22%s\22 to \22%s\22\0A\00", align 1, !dbg !327
@.str.11 = private unnamed_addr constant [14 x i8] c"dumping \22%s\22\0A\00", align 1, !dbg !332
@.str.12 = private unnamed_addr constant [45 x i8] c"could not open output file \22%s\22 for writing\0A\00", align 1, !dbg !337
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !342
@.str.14 = private unnamed_addr constant [10 x i8] c"unmatched\00", align 1, !dbg !347
@.str.15 = private unnamed_addr constant [4 x i8] c"rbt\00", align 1, !dbg !361
@.str.16 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !366
@.str.17 = private unnamed_addr constant [51 x i8] c"%s/MX '%s' (out of zone) is a CNAME '%s' (illegal)\00", align 1, !dbg !368
@.str.18 = private unnamed_addr constant [62 x i8] c"%s/MX '%s' (out of zone) has no addresses records (A or AAAA)\00", align 1, !dbg !373
@.str.19 = private unnamed_addr constant [27 x i8] c"getaddrinfo(%s) failed: %s\00", align 1, !dbg !378
@symtab = internal global ptr null, align 8, !dbg !383
@sym_mctx = internal global ptr null, align 8, !dbg !388
@.str.20 = private unnamed_addr constant [98 x i8] c"a == ((void*)0) || !dns_rdataset_isassociated(a) || a->type == ((dns_rdatatype_t)dns_rdatatype_a)\00", align 1, !dbg !432
@.str.21 = private unnamed_addr constant [110 x i8] c"aaaa == ((void*)0) || !dns_rdataset_isassociated(aaaa) || aaaa->type == ((dns_rdatatype_t)dns_rdatatype_aaaa)\00", align 1, !dbg !437
@.str.22 = private unnamed_addr constant [51 x i8] c"%s/NS '%s' (out of zone) is a CNAME '%s' (illegal)\00", align 1, !dbg !442
@.str.23 = private unnamed_addr constant [62 x i8] c"%s/NS '%s' (out of zone) has no addresses records (A or AAAA)\00", align 1, !dbg !444
@.str.24 = private unnamed_addr constant [36 x i8] c"%s/NS '%s' extra GLUE A record (%s)\00", align 1, !dbg !446
@.str.25 = private unnamed_addr constant [39 x i8] c"%s/NS '%s' extra GLUE AAAA record (%s)\00", align 1, !dbg !451
@.str.26 = private unnamed_addr constant [2 x i8] c"A\00", align 1, !dbg !456
@.str.27 = private unnamed_addr constant [5 x i8] c"AAAA\00", align 1, !dbg !458
@.str.28 = private unnamed_addr constant [39 x i8] c"%s/NS '%s' missing GLUE %s record (%s)\00", align 1, !dbg !463
@.str.29 = private unnamed_addr constant [52 x i8] c"%s/SRV '%s' (out of zone) is a CNAME '%s' (illegal)\00", align 1, !dbg !465
@.str.30 = private unnamed_addr constant [63 x i8] c"%s/SRV '%s' (out of zone) has no addresses records (A or AAAA)\00", align 1, !dbg !470
@.str.31 = private unnamed_addr constant [17 x i8] c"db != ((void*)0)\00", align 1, !dbg !475
@.str.32 = private unnamed_addr constant [36 x i8] c"%s/%s TTL %d exceeds maximum TTL %d\00", align 1, !dbg !480

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @setup_logging(ptr noundef %mctx, ptr noundef %errout, ptr noundef %logp) #0 !dbg !489 {
entry:
  %mctx.addr = alloca ptr, align 8
  %errout.addr = alloca ptr, align 8
  %logp.addr = alloca ptr, align 8
  %destination = alloca %union.isc_logdestination, align 8
  %logconfig = alloca ptr, align 8
  %log = alloca ptr, align 8
  store ptr %mctx, ptr %mctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mctx.addr, metadata !550, metadata !DIExpression()), !dbg !578
  store ptr %errout, ptr %errout.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %errout.addr, metadata !551, metadata !DIExpression()), !dbg !579
  store ptr %logp, ptr %logp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %logp.addr, metadata !552, metadata !DIExpression()), !dbg !580
  call void @llvm.lifetime.start.p0(i64 40, ptr %destination) #9, !dbg !581
  tail call void @llvm.dbg.declare(metadata ptr %destination, metadata !553, metadata !DIExpression()), !dbg !582
  call void @llvm.lifetime.start.p0(i64 8, ptr %logconfig) #9, !dbg !583
  tail call void @llvm.dbg.declare(metadata ptr %logconfig, metadata !573, metadata !DIExpression()), !dbg !584
  store ptr null, ptr %logconfig, align 8, !dbg !584
  call void @llvm.lifetime.start.p0(i64 8, ptr %log) #9, !dbg !585
  tail call void @llvm.dbg.declare(metadata ptr %log, metadata !577, metadata !DIExpression()), !dbg !586
  store ptr null, ptr %log, align 8, !dbg !586
  %0 = load ptr, ptr %mctx.addr, align 8, !dbg !587
  %call = call i32 @isc_log_create(ptr noundef %0, ptr noundef %log, ptr noundef %logconfig), !dbg !587
  %cmp = icmp eq i32 %call, 0, !dbg !587
  %lnot = xor i1 %cmp, true, !dbg !587
  %lnot1 = xor i1 %lnot, true, !dbg !587
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !587
  %conv = sext i32 %lnot.ext to i64, !dbg !587
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !587
  %tobool = icmp ne i64 %expval, 0, !dbg !587
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !587

lor.rhs:                                          ; preds = %entry
  call void @isc_error_runtimecheck(ptr noundef @.str, i32 noundef 538, ptr noundef @.str.1) #10, !dbg !587
  unreachable, !dbg !587

1:                                                ; No predecessors!
  br label %lor.end, !dbg !587

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !587
  %3 = load ptr, ptr %log, align 8, !dbg !588
  call void @isc_log_registercategories(ptr noundef %3, ptr noundef @categories), !dbg !589
  %4 = load ptr, ptr %log, align 8, !dbg !590
  call void @isc_log_setcontext(ptr noundef %4), !dbg !591
  %5 = load ptr, ptr %log, align 8, !dbg !592
  call void @dns_log_init(ptr noundef %5), !dbg !593
  %6 = load ptr, ptr %log, align 8, !dbg !594
  call void @dns_log_setcontext(ptr noundef %6), !dbg !595
  %7 = load ptr, ptr %log, align 8, !dbg !596
  call void @cfg_log_init(ptr noundef %7), !dbg !597
  %8 = load ptr, ptr %log, align 8, !dbg !598
  call void @ns_log_init(ptr noundef %8), !dbg !599
  %9 = load ptr, ptr %errout.addr, align 8, !dbg !600
  %stream = getelementptr inbounds %struct.isc_logfile, ptr %destination, i32 0, i32 0, !dbg !601
  store ptr %9, ptr %stream, align 8, !dbg !602
  %name = getelementptr inbounds %struct.isc_logfile, ptr %destination, i32 0, i32 1, !dbg !603
  store ptr null, ptr %name, align 8, !dbg !604
  %versions = getelementptr inbounds %struct.isc_logfile, ptr %destination, i32 0, i32 2, !dbg !605
  store i32 -2, ptr %versions, align 8, !dbg !606
  %maximum_size = getelementptr inbounds %struct.isc_logfile, ptr %destination, i32 0, i32 4, !dbg !607
  store i64 0, ptr %maximum_size, align 8, !dbg !608
  %10 = load ptr, ptr %logconfig, align 8, !dbg !609
  %call2 = call i32 @isc_log_createchannel(ptr noundef %10, ptr noundef @.str.2, i32 noundef 4, i32 noundef 0, ptr noundef %destination, i32 noundef 0), !dbg !609
  %cmp3 = icmp eq i32 %call2, 0, !dbg !609
  %lnot5 = xor i1 %cmp3, true, !dbg !609
  %lnot7 = xor i1 %lnot5, true, !dbg !609
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !609
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !609
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 1), !dbg !609
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !609
  br i1 %tobool11, label %lor.end13, label %lor.rhs12, !dbg !609

lor.rhs12:                                        ; preds = %lor.end
  call void @isc_error_runtimecheck(ptr noundef @.str, i32 noundef 553, ptr noundef @.str.3) #10, !dbg !609
  unreachable, !dbg !609

11:                                               ; No predecessors!
  br label %lor.end13, !dbg !609

lor.end13:                                        ; preds = %11, %lor.end
  %12 = phi i1 [ true, %lor.end ], [ false, %11 ]
  %lor.ext14 = zext i1 %12 to i32, !dbg !609
  %13 = load ptr, ptr %logconfig, align 8, !dbg !610
  %call15 = call i32 @isc_log_usechannel(ptr noundef %13, ptr noundef @.str.2, ptr noundef null, ptr noundef null), !dbg !610
  %cmp16 = icmp eq i32 %call15, 0, !dbg !610
  %lnot18 = xor i1 %cmp16, true, !dbg !610
  %lnot20 = xor i1 %lnot18, true, !dbg !610
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !610
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !610
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 1), !dbg !610
  %tobool24 = icmp ne i64 %expval23, 0, !dbg !610
  br i1 %tobool24, label %lor.end26, label %lor.rhs25, !dbg !610

lor.rhs25:                                        ; preds = %lor.end13
  call void @isc_error_runtimecheck(ptr noundef @.str, i32 noundef 555, ptr noundef @.str.4) #10, !dbg !610
  unreachable, !dbg !610

14:                                               ; No predecessors!
  br label %lor.end26, !dbg !610

lor.end26:                                        ; preds = %14, %lor.end13
  %15 = phi i1 [ true, %lor.end13 ], [ false, %14 ]
  %lor.ext27 = zext i1 %15 to i32, !dbg !610
  %16 = load ptr, ptr %log, align 8, !dbg !611
  %17 = load ptr, ptr %logp.addr, align 8, !dbg !612
  store ptr %16, ptr %17, align 8, !dbg !613
  call void @llvm.lifetime.end.p0(i64 8, ptr %log) #9, !dbg !614
  call void @llvm.lifetime.end.p0(i64 8, ptr %logconfig) #9, !dbg !614
  call void @llvm.lifetime.end.p0(i64 40, ptr %destination) #9, !dbg !614
  ret i32 0, !dbg !615
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare !dbg !616 i32 @isc_log_create(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: noreturn null_pointer_is_valid
declare !dbg !620 void @isc_error_runtimecheck(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !624 void @isc_log_registercategories(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !628 void @isc_log_setcontext(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !631 void @dns_log_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !633 void @dns_log_setcontext(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !634 void @cfg_log_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !636 void @ns_log_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !638 i32 @isc_log_createchannel(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !643 i32 @isc_log_usechannel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @load_zone(ptr noundef %mctx, ptr noundef %zonename, ptr noundef %filename, i32 noundef %fileformat, ptr noundef %classname, i32 noundef %maxttl, ptr noundef %zonep) #0 !dbg !655 {
entry:
  %mctx.addr = alloca ptr, align 8
  %zonename.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %fileformat.addr = alloca i32, align 4
  %classname.addr = alloca ptr, align 8
  %maxttl.addr = alloca i32, align 4
  %zonep.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %rdclass = alloca i16, align 2
  %region = alloca %struct.isc_textregion, align 8
  %buffer = alloca %struct.isc_buffer, align 8
  %fixorigin = alloca %struct.dns_fixedname, align 8
  %origin = alloca ptr, align 8
  %zone = alloca ptr, align 8
  %_deconst = alloca %union.anon, align 8
  %_u = alloca %union.anon.7, align 8
  store ptr %mctx, ptr %mctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mctx.addr, metadata !665, metadata !DIExpression()), !dbg !1035
  store ptr %zonename, ptr %zonename.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %zonename.addr, metadata !666, metadata !DIExpression()), !dbg !1036
  store ptr %filename, ptr %filename.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !667, metadata !DIExpression()), !dbg !1037
  store i32 %fileformat, ptr %fileformat.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %fileformat.addr, metadata !668, metadata !DIExpression()), !dbg !1038
  store ptr %classname, ptr %classname.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %classname.addr, metadata !669, metadata !DIExpression()), !dbg !1039
  store i32 %maxttl, ptr %maxttl.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %maxttl.addr, metadata !670, metadata !DIExpression()), !dbg !1040
  store ptr %zonep, ptr %zonep.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %zonep.addr, metadata !671, metadata !DIExpression()), !dbg !1041
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !1042
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !672, metadata !DIExpression()), !dbg !1043
  call void @llvm.lifetime.start.p0(i64 2, ptr %rdclass) #9, !dbg !1044
  tail call void @llvm.dbg.declare(metadata ptr %rdclass, metadata !673, metadata !DIExpression()), !dbg !1045
  call void @llvm.lifetime.start.p0(i64 16, ptr %region) #9, !dbg !1046
  tail call void @llvm.dbg.declare(metadata ptr %region, metadata !675, metadata !DIExpression()), !dbg !1047
  call void @llvm.lifetime.start.p0(i64 64, ptr %buffer) #9, !dbg !1048
  tail call void @llvm.dbg.declare(metadata ptr %buffer, metadata !682, metadata !DIExpression()), !dbg !1049
  call void @llvm.lifetime.start.p0(i64 528, ptr %fixorigin) #9, !dbg !1050
  tail call void @llvm.dbg.declare(metadata ptr %fixorigin, metadata !701, metadata !DIExpression()), !dbg !1051
  call void @llvm.lifetime.start.p0(i64 8, ptr %origin) #9, !dbg !1052
  tail call void @llvm.dbg.declare(metadata ptr %origin, metadata !1020, metadata !DIExpression()), !dbg !1053
  call void @llvm.lifetime.start.p0(i64 8, ptr %zone) #9, !dbg !1054
  tail call void @llvm.dbg.declare(metadata ptr %zone, metadata !1021, metadata !DIExpression()), !dbg !1055
  store ptr null, ptr %zone, align 8, !dbg !1055
  %0 = load ptr, ptr %zonep.addr, align 8, !dbg !1056
  %cmp = icmp eq ptr %0, null, !dbg !1056
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !1056

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %zonep.addr, align 8, !dbg !1056
  %2 = load ptr, ptr %1, align 8, !dbg !1056
  %cmp1 = icmp eq ptr %2, null, !dbg !1056
  br label %lor.end, !dbg !1056

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lnot = xor i1 %3, true, !dbg !1056
  %lnot2 = xor i1 %lnot, true, !dbg !1056
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1056
  %conv = sext i32 %lnot.ext to i64, !dbg !1056
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1056
  %tobool = icmp ne i64 %expval, 0, !dbg !1056
  br i1 %tobool, label %lor.end4, label %lor.rhs3, !dbg !1056

lor.rhs3:                                         ; preds = %lor.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 656, i32 noundef 0, ptr noundef @.str.5) #10, !dbg !1056
  unreachable, !dbg !1056

4:                                                ; No predecessors!
  br label %lor.end4, !dbg !1056

lor.end4:                                         ; preds = %4, %lor.end
  %5 = phi i1 [ true, %lor.end ], [ false, %4 ]
  %lor.ext = zext i1 %5 to i32, !dbg !1056
  %6 = load i32, ptr @debug, align 4, !dbg !1057
  %tobool5 = icmp ne i32 %6, 0, !dbg !1057
  br i1 %tobool5, label %if.then, label %if.end, !dbg !1059

if.then:                                          ; preds = %lor.end4
  %7 = load ptr, ptr @stderr, align 8, !dbg !1060
  %8 = load ptr, ptr %zonename.addr, align 8, !dbg !1061
  %9 = load ptr, ptr %filename.addr, align 8, !dbg !1062
  %10 = load ptr, ptr %classname.addr, align 8, !dbg !1063
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.6, ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !1064
  br label %if.end, !dbg !1064

if.end:                                           ; preds = %if.then, %lor.end4
  br label %do.body, !dbg !1065

do.body:                                          ; preds = %if.end
  %11 = load ptr, ptr %mctx.addr, align 8, !dbg !1066
  %call6 = call i32 @dns_zone_create(ptr noundef %zone, ptr noundef %11), !dbg !1066
  store i32 %call6, ptr %result, align 4, !dbg !1066
  %12 = load i32, ptr %result, align 4, !dbg !1068
  %cmp7 = icmp ne i32 %12, 0, !dbg !1068
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !1066

if.then9:                                         ; preds = %do.body
  br label %cleanup, !dbg !1068

if.end10:                                         ; preds = %do.body
  br label %do.cond, !dbg !1066

do.cond:                                          ; preds = %if.end10
  br label %do.end, !dbg !1066

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %zone, align 8, !dbg !1070
  call void @dns_zone_settype(ptr noundef %13, i32 noundef 1), !dbg !1071
  br label %do.body11, !dbg !1072

do.body11:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_deconst) #9, !dbg !1073
  tail call void @llvm.dbg.declare(metadata ptr %_deconst, metadata !1022, metadata !DIExpression()), !dbg !1073
  %14 = load ptr, ptr %zonename.addr, align 8, !dbg !1073
  store ptr %14, ptr %_deconst, align 8, !dbg !1073
  br label %do.body12, !dbg !1073

do.body12:                                        ; preds = %do.body11
  %15 = load ptr, ptr %_deconst, align 8, !dbg !1074
  %base = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 1, !dbg !1074
  store ptr %15, ptr %base, align 8, !dbg !1074
  %16 = load ptr, ptr %zonename.addr, align 8, !dbg !1074
  %call13 = call i64 @strlen(ptr noundef %16) #11, !dbg !1074
  %conv14 = trunc i64 %call13 to i32, !dbg !1074
  %length = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 2, !dbg !1074
  store i32 %conv14, ptr %length, align 8, !dbg !1074
  %used = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 3, !dbg !1074
  store i32 0, ptr %used, align 4, !dbg !1074
  %current = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 4, !dbg !1074
  store i32 0, ptr %current, align 8, !dbg !1074
  %active = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 5, !dbg !1074
  store i32 0, ptr %active, align 4, !dbg !1074
  %mctx15 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 7, !dbg !1074
  store ptr null, ptr %mctx15, align 8, !dbg !1074
  br label %do.body16, !dbg !1074

do.body16:                                        ; preds = %do.body12
  %link = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 6, !dbg !1076
  %prev = getelementptr inbounds %struct.anon, ptr %link, i32 0, i32 0, !dbg !1076
  store ptr inttoptr (i64 -1 to ptr), ptr %prev, align 8, !dbg !1076
  %link17 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 6, !dbg !1076
  %next = getelementptr inbounds %struct.anon, ptr %link17, i32 0, i32 1, !dbg !1076
  store ptr inttoptr (i64 -1 to ptr), ptr %next, align 8, !dbg !1076
  br label %do.cond18, !dbg !1076

do.cond18:                                        ; preds = %do.body16
  br label %do.end19, !dbg !1076

do.end19:                                         ; preds = %do.cond18
  %magic = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 0, !dbg !1074
  store i32 1114990113, ptr %magic, align 8, !dbg !1074
  %autore = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 8, !dbg !1074
  store i8 0, ptr %autore, align 8, !dbg !1074
  br label %do.cond20, !dbg !1074

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !1074

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.end.p0(i64 8, ptr %_deconst) #9, !dbg !1072
  br label %do.cond22, !dbg !1073

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !1073

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !1078

do.body24:                                        ; preds = %do.end23
  %17 = load ptr, ptr %zonename.addr, align 8, !dbg !1079
  %call25 = call i64 @strlen(ptr noundef %17) #11, !dbg !1079
  %used26 = getelementptr inbounds %struct.isc_buffer, ptr %buffer, i32 0, i32 3, !dbg !1079
  %18 = load i32, ptr %used26, align 4, !dbg !1079
  %conv27 = zext i32 %18 to i64, !dbg !1079
  %add = add i64 %conv27, %call25, !dbg !1079
  %conv28 = trunc i64 %add to i32, !dbg !1079
  store i32 %conv28, ptr %used26, align 4, !dbg !1079
  br label %do.cond29, !dbg !1079

do.cond29:                                        ; preds = %do.body24
  br label %do.end30, !dbg !1079

do.end30:                                         ; preds = %do.cond29
  %call31 = call ptr @dns_fixedname_initname(ptr noundef %fixorigin), !dbg !1081
  store ptr %call31, ptr %origin, align 8, !dbg !1082
  br label %do.body32, !dbg !1083

do.body32:                                        ; preds = %do.end30
  %19 = load ptr, ptr %origin, align 8, !dbg !1084
  %20 = load ptr, ptr @dns_rootname, align 8, !dbg !1084
  %call33 = call i32 @dns_name_fromtext(ptr noundef %19, ptr noundef %buffer, ptr noundef %20, i32 noundef 0, ptr noundef null), !dbg !1084
  store i32 %call33, ptr %result, align 4, !dbg !1084
  %21 = load i32, ptr %result, align 4, !dbg !1086
  %cmp34 = icmp ne i32 %21, 0, !dbg !1086
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !1084

if.then36:                                        ; preds = %do.body32
  br label %cleanup, !dbg !1086

if.end37:                                         ; preds = %do.body32
  br label %do.cond38, !dbg !1084

do.cond38:                                        ; preds = %if.end37
  br label %do.end39, !dbg !1084

do.end39:                                         ; preds = %do.cond38
  br label %do.body40, !dbg !1088

do.body40:                                        ; preds = %do.end39
  %22 = load ptr, ptr %zone, align 8, !dbg !1089
  %23 = load ptr, ptr %origin, align 8, !dbg !1089
  %call41 = call i32 @dns_zone_setorigin(ptr noundef %22, ptr noundef %23), !dbg !1089
  store i32 %call41, ptr %result, align 4, !dbg !1089
  %24 = load i32, ptr %result, align 4, !dbg !1091
  %cmp42 = icmp ne i32 %24, 0, !dbg !1091
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !1089

if.then44:                                        ; preds = %do.body40
  br label %cleanup, !dbg !1091

if.end45:                                         ; preds = %do.body40
  br label %do.cond46, !dbg !1089

do.cond46:                                        ; preds = %if.end45
  br label %do.end47, !dbg !1089

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !1093

do.body48:                                        ; preds = %do.end47
  %25 = load ptr, ptr %zone, align 8, !dbg !1094
  %call49 = call i32 @dns_zone_setdbtype(ptr noundef %25, i32 noundef 1, ptr noundef @dbtype), !dbg !1094
  store i32 %call49, ptr %result, align 4, !dbg !1094
  %26 = load i32, ptr %result, align 4, !dbg !1096
  %cmp50 = icmp ne i32 %26, 0, !dbg !1096
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !1094

if.then52:                                        ; preds = %do.body48
  br label %cleanup, !dbg !1096

if.end53:                                         ; preds = %do.body48
  br label %do.cond54, !dbg !1094

do.cond54:                                        ; preds = %if.end53
  br label %do.end55, !dbg !1094

do.end55:                                         ; preds = %do.cond54
  br label %do.body56, !dbg !1098

do.body56:                                        ; preds = %do.end55
  %27 = load ptr, ptr %zone, align 8, !dbg !1099
  %28 = load ptr, ptr %filename.addr, align 8, !dbg !1099
  %29 = load i32, ptr %fileformat.addr, align 4, !dbg !1099
  %call57 = call i32 @dns_zone_setfile(ptr noundef %27, ptr noundef %28, i32 noundef %29, ptr noundef @dns_master_style_default), !dbg !1099
  store i32 %call57, ptr %result, align 4, !dbg !1099
  %30 = load i32, ptr %result, align 4, !dbg !1101
  %cmp58 = icmp ne i32 %30, 0, !dbg !1101
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !1099

if.then60:                                        ; preds = %do.body56
  br label %cleanup, !dbg !1101

if.end61:                                         ; preds = %do.body56
  br label %do.cond62, !dbg !1099

do.cond62:                                        ; preds = %if.end61
  br label %do.end63, !dbg !1099

do.end63:                                         ; preds = %do.cond62
  %31 = load ptr, ptr @journal, align 8, !dbg !1103
  %cmp64 = icmp ne ptr %31, null, !dbg !1105
  br i1 %cmp64, label %if.then66, label %if.end75, !dbg !1106

if.then66:                                        ; preds = %do.end63
  br label %do.body67, !dbg !1107

do.body67:                                        ; preds = %if.then66
  %32 = load ptr, ptr %zone, align 8, !dbg !1108
  %33 = load ptr, ptr @journal, align 8, !dbg !1108
  %call68 = call i32 @dns_zone_setjournal(ptr noundef %32, ptr noundef %33), !dbg !1108
  store i32 %call68, ptr %result, align 4, !dbg !1108
  %34 = load i32, ptr %result, align 4, !dbg !1110
  %cmp69 = icmp ne i32 %34, 0, !dbg !1110
  br i1 %cmp69, label %if.then71, label %if.end72, !dbg !1108

if.then71:                                        ; preds = %do.body67
  br label %cleanup, !dbg !1110

if.end72:                                         ; preds = %do.body67
  br label %do.cond73, !dbg !1108

do.cond73:                                        ; preds = %if.end72
  br label %do.end74, !dbg !1108

do.end74:                                         ; preds = %do.cond73
  br label %if.end75, !dbg !1108

if.end75:                                         ; preds = %do.end74, %do.end63
  br label %do.body76, !dbg !1112

do.body76:                                        ; preds = %if.end75
  call void @llvm.lifetime.start.p0(i64 8, ptr %_u) #9, !dbg !1113
  tail call void @llvm.dbg.declare(metadata ptr %_u, metadata !1028, metadata !DIExpression()), !dbg !1113
  %35 = load ptr, ptr %classname.addr, align 8, !dbg !1113
  store ptr %35, ptr %_u, align 8, !dbg !1113
  %36 = load ptr, ptr %_u, align 8, !dbg !1113
  %base77 = getelementptr inbounds %struct.isc_textregion, ptr %region, i32 0, i32 0, !dbg !1113
  store ptr %36, ptr %base77, align 8, !dbg !1113
  call void @llvm.lifetime.end.p0(i64 8, ptr %_u) #9, !dbg !1112
  br label %do.cond78, !dbg !1113

do.cond78:                                        ; preds = %do.body76
  br label %do.end79, !dbg !1113

do.end79:                                         ; preds = %do.cond78
  %37 = load ptr, ptr %classname.addr, align 8, !dbg !1114
  %call80 = call i64 @strlen(ptr noundef %37) #11, !dbg !1115
  %conv81 = trunc i64 %call80 to i32, !dbg !1115
  %length82 = getelementptr inbounds %struct.isc_textregion, ptr %region, i32 0, i32 1, !dbg !1116
  store i32 %conv81, ptr %length82, align 8, !dbg !1117
  br label %do.body83, !dbg !1118

do.body83:                                        ; preds = %do.end79
  %call84 = call i32 @dns_rdataclass_fromtext(ptr noundef %rdclass, ptr noundef %region), !dbg !1119
  store i32 %call84, ptr %result, align 4, !dbg !1119
  %38 = load i32, ptr %result, align 4, !dbg !1121
  %cmp85 = icmp ne i32 %38, 0, !dbg !1121
  br i1 %cmp85, label %if.then87, label %if.end88, !dbg !1119

if.then87:                                        ; preds = %do.body83
  br label %cleanup, !dbg !1121

if.end88:                                         ; preds = %do.body83
  br label %do.cond89, !dbg !1119

do.cond89:                                        ; preds = %if.end88
  br label %do.end90, !dbg !1119

do.end90:                                         ; preds = %do.cond89
  %39 = load ptr, ptr %zone, align 8, !dbg !1123
  %40 = load i16, ptr %rdclass, align 2, !dbg !1124
  call void @dns_zone_setclass(ptr noundef %39, i16 noundef zeroext %40), !dbg !1125
  %41 = load ptr, ptr %zone, align 8, !dbg !1126
  %42 = load i32, ptr @zone_options, align 4, !dbg !1127
  call void @dns_zone_setoption(ptr noundef %41, i32 noundef %42, i1 noundef zeroext true), !dbg !1128
  %43 = load ptr, ptr %zone, align 8, !dbg !1129
  %44 = load i8, ptr @nomerge, align 1, !dbg !1130, !range !1131, !noundef !1132
  %tobool91 = trunc i8 %44 to i1, !dbg !1130
  call void @dns_zone_setoption(ptr noundef %43, i32 noundef 4, i1 noundef zeroext %tobool91), !dbg !1133
  %45 = load ptr, ptr %zone, align 8, !dbg !1134
  %46 = load i32, ptr %maxttl.addr, align 4, !dbg !1135
  call void @dns_zone_setmaxttl(ptr noundef %45, i32 noundef %46), !dbg !1136
  %47 = load i8, ptr @docheckmx, align 1, !dbg !1137, !range !1131, !noundef !1132
  %tobool92 = trunc i8 %47 to i1, !dbg !1137
  br i1 %tobool92, label %if.then93, label %if.end94, !dbg !1139

if.then93:                                        ; preds = %do.end90
  %48 = load ptr, ptr %zone, align 8, !dbg !1140
  call void @dns_zone_setcheckmx(ptr noundef %48, ptr noundef @checkmx), !dbg !1141
  br label %if.end94, !dbg !1141

if.end94:                                         ; preds = %if.then93, %do.end90
  %49 = load i8, ptr @docheckns, align 1, !dbg !1142, !range !1131, !noundef !1132
  %tobool95 = trunc i8 %49 to i1, !dbg !1142
  br i1 %tobool95, label %if.then96, label %if.end97, !dbg !1144

if.then96:                                        ; preds = %if.end94
  %50 = load ptr, ptr %zone, align 8, !dbg !1145
  call void @dns_zone_setcheckns(ptr noundef %50, ptr noundef @checkns), !dbg !1146
  br label %if.end97, !dbg !1146

if.end97:                                         ; preds = %if.then96, %if.end94
  %51 = load i8, ptr @dochecksrv, align 1, !dbg !1147, !range !1131, !noundef !1132
  %tobool98 = trunc i8 %51 to i1, !dbg !1147
  br i1 %tobool98, label %if.then99, label %if.end100, !dbg !1149

if.then99:                                        ; preds = %if.end97
  %52 = load ptr, ptr %zone, align 8, !dbg !1150
  call void @dns_zone_setchecksrv(ptr noundef %52, ptr noundef @checksrv), !dbg !1151
  br label %if.end100, !dbg !1151

if.end100:                                        ; preds = %if.then99, %if.end97
  br label %do.body101, !dbg !1152

do.body101:                                       ; preds = %if.end100
  %53 = load ptr, ptr %zone, align 8, !dbg !1153
  %call102 = call i32 @dns_zone_load(ptr noundef %53, i1 noundef zeroext false), !dbg !1153
  store i32 %call102, ptr %result, align 4, !dbg !1153
  %54 = load i32, ptr %result, align 4, !dbg !1155
  %cmp103 = icmp ne i32 %54, 0, !dbg !1155
  br i1 %cmp103, label %if.then105, label %if.end106, !dbg !1153

if.then105:                                       ; preds = %do.body101
  br label %cleanup, !dbg !1155

if.end106:                                        ; preds = %do.body101
  br label %do.cond107, !dbg !1153

do.cond107:                                       ; preds = %if.end106
  br label %do.end108, !dbg !1153

do.end108:                                        ; preds = %do.cond107
  %55 = load i32, ptr %fileformat.addr, align 4, !dbg !1157
  %cmp109 = icmp eq i32 %55, 3, !dbg !1159
  br i1 %cmp109, label %land.lhs.true, label %if.end122, !dbg !1160

land.lhs.true:                                    ; preds = %do.end108
  %56 = load i32, ptr %maxttl.addr, align 4, !dbg !1161
  %cmp111 = icmp ne i32 %56, 0, !dbg !1162
  br i1 %cmp111, label %if.then113, label %if.end122, !dbg !1163

if.then113:                                       ; preds = %land.lhs.true
  br label %do.body114, !dbg !1164

do.body114:                                       ; preds = %if.then113
  %57 = load ptr, ptr %zone, align 8, !dbg !1166
  %58 = load i32, ptr %maxttl.addr, align 4, !dbg !1166
  %call115 = call i32 @check_ttls(ptr noundef %57, i32 noundef %58), !dbg !1166
  store i32 %call115, ptr %result, align 4, !dbg !1166
  %59 = load i32, ptr %result, align 4, !dbg !1168
  %cmp116 = icmp ne i32 %59, 0, !dbg !1168
  br i1 %cmp116, label %if.then118, label %if.end119, !dbg !1166

if.then118:                                       ; preds = %do.body114
  br label %cleanup, !dbg !1168

if.end119:                                        ; preds = %do.body114
  br label %do.cond120, !dbg !1166

do.cond120:                                       ; preds = %if.end119
  br label %do.end121, !dbg !1166

do.end121:                                        ; preds = %do.cond120
  br label %if.end122, !dbg !1170

if.end122:                                        ; preds = %do.end121, %land.lhs.true, %do.end108
  %60 = load ptr, ptr %zonep.addr, align 8, !dbg !1171
  %cmp123 = icmp ne ptr %60, null, !dbg !1173
  br i1 %cmp123, label %if.then125, label %if.end126, !dbg !1174

if.then125:                                       ; preds = %if.end122
  %61 = load ptr, ptr %zone, align 8, !dbg !1175
  %62 = load ptr, ptr %zonep.addr, align 8, !dbg !1177
  store ptr %61, ptr %62, align 8, !dbg !1178
  store ptr null, ptr %zone, align 8, !dbg !1179
  br label %if.end126, !dbg !1180

if.end126:                                        ; preds = %if.then125, %if.end122
  br label %cleanup, !dbg !1181

cleanup:                                          ; preds = %if.end126, %if.then118, %if.then105, %if.then87, %if.then71, %if.then60, %if.then52, %if.then44, %if.then36, %if.then9
  tail call void @llvm.dbg.label(metadata !1034), !dbg !1182
  %63 = load ptr, ptr %zone, align 8, !dbg !1183
  %cmp127 = icmp ne ptr %63, null, !dbg !1185
  br i1 %cmp127, label %if.then129, label %if.end130, !dbg !1186

if.then129:                                       ; preds = %cleanup
  call void @dns_zone_detach(ptr noundef %zone), !dbg !1187
  br label %if.end130, !dbg !1187

if.end130:                                        ; preds = %if.then129, %cleanup
  %64 = load i32, ptr %result, align 4, !dbg !1188
  call void @llvm.lifetime.end.p0(i64 8, ptr %zone) #9, !dbg !1189
  call void @llvm.lifetime.end.p0(i64 8, ptr %origin) #9, !dbg !1189
  call void @llvm.lifetime.end.p0(i64 528, ptr %fixorigin) #9, !dbg !1189
  call void @llvm.lifetime.end.p0(i64 64, ptr %buffer) #9, !dbg !1189
  call void @llvm.lifetime.end.p0(i64 16, ptr %region) #9, !dbg !1189
  call void @llvm.lifetime.end.p0(i64 2, ptr %rdclass) #9, !dbg !1189
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !1189
  ret i32 %64, !dbg !1190
}

; Function Attrs: noreturn null_pointer_is_valid
declare !dbg !1191 void @isc_assertion_failed(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !1195 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1200 i32 @dns_zone_create(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1203 void @dns_zone_settype(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(read)
declare !dbg !1207 i64 @strlen(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare !dbg !1211 ptr @dns_fixedname_initname(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1215 i32 @dns_name_fromtext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1218 i32 @dns_zone_setorigin(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1221 i32 @dns_zone_setdbtype(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1224 i32 @dns_zone_setfile(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1232 i32 @dns_zone_setjournal(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1235 i32 @dns_rdataclass_fromtext(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1241 void @dns_zone_setclass(ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1244 void @dns_zone_setoption(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1247 void @dns_zone_setmaxttl(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !1250 void @dns_zone_setcheckmx(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal zeroext i1 @checkmx(ptr noundef %zone, ptr noundef %name, ptr noundef %owner) #0 !dbg !1257 {
entry:
  %retval = alloca i1, align 1
  %zone.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %owner.addr = alloca ptr, align 8
  %hints = alloca %struct.addrinfo, align 8
  %ai = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %namebuf = alloca [1025 x i8], align 16
  %ownerbuf = alloca [1024 x i8], align 16
  %result = alloca i32, align 4
  %level = alloca i32, align 4
  %answer = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %zone, ptr %zone.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %zone.addr, metadata !1259, metadata !DIExpression()), !dbg !1297
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1260, metadata !DIExpression()), !dbg !1298
  store ptr %owner, ptr %owner.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !1261, metadata !DIExpression()), !dbg !1299
  call void @llvm.lifetime.start.p0(i64 48, ptr %hints) #9, !dbg !1300
  tail call void @llvm.dbg.declare(metadata ptr %hints, metadata !1262, metadata !DIExpression()), !dbg !1301
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai) #9, !dbg !1300
  tail call void @llvm.dbg.declare(metadata ptr %ai, metadata !1284, metadata !DIExpression()), !dbg !1302
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #9, !dbg !1300
  tail call void @llvm.dbg.declare(metadata ptr %cur, metadata !1285, metadata !DIExpression()), !dbg !1303
  call void @llvm.lifetime.start.p0(i64 1025, ptr %namebuf) #9, !dbg !1304
  tail call void @llvm.dbg.declare(metadata ptr %namebuf, metadata !1286, metadata !DIExpression()), !dbg !1305
  call void @llvm.lifetime.start.p0(i64 1024, ptr %ownerbuf) #9, !dbg !1306
  tail call void @llvm.dbg.declare(metadata ptr %ownerbuf, metadata !1290, metadata !DIExpression()), !dbg !1307
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !1308
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1294, metadata !DIExpression()), !dbg !1309
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #9, !dbg !1310
  tail call void @llvm.dbg.declare(metadata ptr %level, metadata !1295, metadata !DIExpression()), !dbg !1311
  store i32 -4, ptr %level, align 4, !dbg !1311
  call void @llvm.lifetime.start.p0(i64 1, ptr %answer) #9, !dbg !1312
  tail call void @llvm.dbg.declare(metadata ptr %answer, metadata !1296, metadata !DIExpression()), !dbg !1313
  store i8 1, ptr %answer, align 1, !dbg !1313
  call void @llvm.memset.p0.i64(ptr align 8 %hints, i8 0, i64 48, i1 false), !dbg !1314
  %ai_flags = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 0, !dbg !1315
  store i32 2, ptr %ai_flags, align 8, !dbg !1316
  %ai_family = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 1, !dbg !1317
  store i32 0, ptr %ai_family, align 4, !dbg !1318
  %ai_socktype = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 2, !dbg !1319
  store i32 1, ptr %ai_socktype, align 8, !dbg !1320
  %ai_protocol = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 3, !dbg !1321
  store i32 6, ptr %ai_protocol, align 4, !dbg !1322
  %0 = load ptr, ptr %name.addr, align 8, !dbg !1323
  %arraydecay = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1324
  call void @dns_name_format(ptr noundef %0, ptr noundef %arraydecay, i32 noundef 1024), !dbg !1325
  %1 = load ptr, ptr %name.addr, align 8, !dbg !1326
  %call = call i32 @dns_name_countlabels(ptr noundef %1), !dbg !1328
  %cmp = icmp ugt i32 %call, 1, !dbg !1329
  br i1 %cmp, label %if.then, label %if.end, !dbg !1330

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1331
  %call2 = call i64 @strlcat(ptr noundef %arraydecay1, ptr noundef @.str.16, i64 noundef 1025), !dbg !1333
  br label %if.end, !dbg !1334

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %owner.addr, align 8, !dbg !1335
  %arraydecay3 = getelementptr inbounds [1024 x i8], ptr %ownerbuf, i64 0, i64 0, !dbg !1336
  call void @dns_name_format(ptr noundef %2, ptr noundef %arraydecay3, i32 noundef 1024), !dbg !1337
  %arraydecay4 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1338
  %call5 = call i32 @getaddrinfo(ptr noundef %arraydecay4, ptr noundef null, ptr noundef %hints, ptr noundef %ai), !dbg !1339
  store i32 %call5, ptr %result, align 4, !dbg !1340
  %3 = load ptr, ptr %name.addr, align 8, !dbg !1341
  %arraydecay6 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1342
  call void @dns_name_format(ptr noundef %3, ptr noundef %arraydecay6, i32 noundef 1024), !dbg !1343
  %4 = load i32, ptr %result, align 4, !dbg !1344
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 -2, label %sw.bb40
    i32 -5, label %sw.bb40
  ], !dbg !1345

sw.bb:                                            ; preds = %if.end
  %5 = load ptr, ptr %ai, align 8, !dbg !1346
  store ptr %5, ptr %cur, align 8, !dbg !1348
  br label %while.cond, !dbg !1349

while.cond:                                       ; preds = %while.body, %sw.bb
  %6 = load ptr, ptr %cur, align 8, !dbg !1350
  %cmp7 = icmp ne ptr %6, null, !dbg !1351
  br i1 %cmp7, label %land.lhs.true, label %land.end, !dbg !1352

land.lhs.true:                                    ; preds = %while.cond
  %7 = load ptr, ptr %cur, align 8, !dbg !1353
  %ai_canonname = getelementptr inbounds %struct.addrinfo, ptr %7, i32 0, i32 6, !dbg !1354
  %8 = load ptr, ptr %ai_canonname, align 8, !dbg !1354
  %cmp8 = icmp eq ptr %8, null, !dbg !1355
  br i1 %cmp8, label %land.rhs, label %land.end, !dbg !1356

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %cur, align 8, !dbg !1357
  %ai_next = getelementptr inbounds %struct.addrinfo, ptr %9, i32 0, i32 7, !dbg !1358
  %10 = load ptr, ptr %ai_next, align 8, !dbg !1358
  %cmp9 = icmp ne ptr %10, null, !dbg !1359
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp9, %land.rhs ], !dbg !1360
  br i1 %11, label %while.body, label %while.end, !dbg !1349

while.body:                                       ; preds = %land.end
  %12 = load ptr, ptr %cur, align 8, !dbg !1361
  %ai_next10 = getelementptr inbounds %struct.addrinfo, ptr %12, i32 0, i32 7, !dbg !1362
  %13 = load ptr, ptr %ai_next10, align 8, !dbg !1362
  store ptr %13, ptr %cur, align 8, !dbg !1363
  br label %while.cond, !dbg !1349, !llvm.loop !1364

while.end:                                        ; preds = %land.end
  %14 = load ptr, ptr %cur, align 8, !dbg !1366
  %cmp11 = icmp ne ptr %14, null, !dbg !1368
  br i1 %cmp11, label %land.lhs.true12, label %if.end39, !dbg !1369

land.lhs.true12:                                  ; preds = %while.end
  %15 = load ptr, ptr %cur, align 8, !dbg !1370
  %ai_canonname13 = getelementptr inbounds %struct.addrinfo, ptr %15, i32 0, i32 6, !dbg !1371
  %16 = load ptr, ptr %ai_canonname13, align 8, !dbg !1371
  %cmp14 = icmp ne ptr %16, null, !dbg !1372
  br i1 %cmp14, label %land.lhs.true15, label %if.end39, !dbg !1373

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %17 = load ptr, ptr %cur, align 8, !dbg !1374
  %ai_canonname16 = getelementptr inbounds %struct.addrinfo, ptr %17, i32 0, i32 6, !dbg !1375
  %18 = load ptr, ptr %ai_canonname16, align 8, !dbg !1375
  %arraydecay17 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1376
  %call18 = call i32 @strcasecmp(ptr noundef %18, ptr noundef %arraydecay17) #11, !dbg !1377
  %cmp19 = icmp ne i32 %call18, 0, !dbg !1378
  br i1 %cmp19, label %if.then20, label %if.end39, !dbg !1379

if.then20:                                        ; preds = %land.lhs.true15
  %19 = load i32, ptr @zone_options, align 4, !dbg !1380
  %and = and i32 %19, 32768, !dbg !1383
  %cmp21 = icmp ne i32 %and, 0, !dbg !1384
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1385

if.then22:                                        ; preds = %if.then20
  store i32 -3, ptr %level, align 4, !dbg !1386
  br label %if.end23, !dbg !1387

if.end23:                                         ; preds = %if.then22, %if.then20
  %20 = load i32, ptr @zone_options, align 4, !dbg !1388
  %and24 = and i32 %20, 65536, !dbg !1390
  %cmp25 = icmp eq i32 %and24, 0, !dbg !1391
  br i1 %cmp25, label %if.then26, label %if.end38, !dbg !1392

if.then26:                                        ; preds = %if.end23
  %arraydecay27 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1393
  %call28 = call zeroext i1 @logged(ptr noundef %arraydecay27, i32 noundef 6), !dbg !1396
  br i1 %call28, label %if.end34, label %if.then29, !dbg !1397

if.then29:                                        ; preds = %if.then26
  %21 = load ptr, ptr %zone.addr, align 8, !dbg !1398
  %22 = load i32, ptr %level, align 4, !dbg !1400
  %arraydecay30 = getelementptr inbounds [1024 x i8], ptr %ownerbuf, i64 0, i64 0, !dbg !1401
  %arraydecay31 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1402
  %23 = load ptr, ptr %cur, align 8, !dbg !1403
  %ai_canonname32 = getelementptr inbounds %struct.addrinfo, ptr %23, i32 0, i32 6, !dbg !1404
  %24 = load ptr, ptr %ai_canonname32, align 8, !dbg !1404
  call void (ptr, i32, ptr, ...) @dns_zone_log(ptr noundef %21, i32 noundef %22, ptr noundef @.str.17, ptr noundef %arraydecay30, ptr noundef %arraydecay31, ptr noundef %24), !dbg !1405
  %arraydecay33 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1406
  call void @add(ptr noundef %arraydecay33, i32 noundef 6), !dbg !1407
  br label %if.end34, !dbg !1408

if.end34:                                         ; preds = %if.then29, %if.then26
  %25 = load i32, ptr %level, align 4, !dbg !1409
  %cmp35 = icmp eq i32 %25, -4, !dbg !1411
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !1412

if.then36:                                        ; preds = %if.end34
  store i8 0, ptr %answer, align 1, !dbg !1413
  br label %if.end37, !dbg !1414

if.end37:                                         ; preds = %if.then36, %if.end34
  br label %if.end38, !dbg !1415

if.end38:                                         ; preds = %if.end37, %if.end23
  br label %if.end39, !dbg !1416

if.end39:                                         ; preds = %if.end38, %land.lhs.true15, %land.lhs.true12, %while.end
  %26 = load ptr, ptr %ai, align 8, !dbg !1417
  call void @freeaddrinfo(ptr noundef %26) #9, !dbg !1418
  %27 = load i8, ptr %answer, align 1, !dbg !1419, !range !1131, !noundef !1132
  %tobool = trunc i8 %27 to i1, !dbg !1419
  store i1 %tobool, ptr %retval, align 1, !dbg !1420
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1420

sw.bb40:                                          ; preds = %if.end, %if.end
  %arraydecay41 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1421
  %call42 = call zeroext i1 @logged(ptr noundef %arraydecay41, i32 noundef 2), !dbg !1423
  br i1 %call42, label %if.end47, label %if.then43, !dbg !1424

if.then43:                                        ; preds = %sw.bb40
  %28 = load ptr, ptr %zone.addr, align 8, !dbg !1425
  %arraydecay44 = getelementptr inbounds [1024 x i8], ptr %ownerbuf, i64 0, i64 0, !dbg !1427
  %arraydecay45 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1428
  call void (ptr, i32, ptr, ...) @dns_zone_log(ptr noundef %28, i32 noundef -4, ptr noundef @.str.18, ptr noundef %arraydecay44, ptr noundef %arraydecay45), !dbg !1429
  %arraydecay46 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1430
  call void @add(ptr noundef %arraydecay46, i32 noundef 2), !dbg !1431
  br label %if.end47, !dbg !1432

if.end47:                                         ; preds = %if.then43, %sw.bb40
  store i1 true, ptr %retval, align 1, !dbg !1433
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1433

sw.default:                                       ; preds = %if.end
  %arraydecay48 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1434
  %call49 = call zeroext i1 @logged(ptr noundef %arraydecay48, i32 noundef 3), !dbg !1436
  br i1 %call49, label %if.end54, label %if.then50, !dbg !1437

if.then50:                                        ; preds = %sw.default
  %29 = load ptr, ptr %zone.addr, align 8, !dbg !1438
  %arraydecay51 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1440
  %30 = load i32, ptr %result, align 4, !dbg !1441
  %call52 = call ptr @gai_strerror(i32 noundef %30) #9, !dbg !1442
  call void (ptr, i32, ptr, ...) @dns_zone_log(ptr noundef %29, i32 noundef -3, ptr noundef @.str.19, ptr noundef %arraydecay51, ptr noundef %call52), !dbg !1443
  %arraydecay53 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1444
  call void @add(ptr noundef %arraydecay53, i32 noundef 3), !dbg !1445
  br label %if.end54, !dbg !1446

if.end54:                                         ; preds = %if.then50, %sw.default
  store i1 true, ptr %retval, align 1, !dbg !1447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1447

cleanup:                                          ; preds = %if.end54, %if.end47, %if.end39
  call void @llvm.lifetime.end.p0(i64 1, ptr %answer) #9, !dbg !1448
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #9, !dbg !1448
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !1448
  call void @llvm.lifetime.end.p0(i64 1024, ptr %ownerbuf) #9, !dbg !1448
  call void @llvm.lifetime.end.p0(i64 1025, ptr %namebuf) #9, !dbg !1448
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #9, !dbg !1448
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai) #9, !dbg !1448
  call void @llvm.lifetime.end.p0(i64 48, ptr %hints) #9, !dbg !1448
  %31 = load i1, ptr %retval, align 1, !dbg !1448
  ret i1 %31, !dbg !1448
}

; Function Attrs: null_pointer_is_valid
declare !dbg !1449 void @dns_zone_setcheckns(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal zeroext i1 @checkns(ptr noundef %zone, ptr noundef %name, ptr noundef %owner, ptr noundef %a, ptr noundef %aaaa) #0 !dbg !1456 {
entry:
  %retval = alloca i1, align 1
  %zone.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %owner.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %aaaa.addr = alloca ptr, align 8
  %rdataset = alloca ptr, align 8
  %rdata = alloca %struct.dns_rdata, align 8
  %hints = alloca %struct.addrinfo, align 8
  %ai = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %namebuf = alloca [1025 x i8], align 16
  %ownerbuf = alloca [1024 x i8], align 16
  %addrbuf = alloca [46 x i8], align 16
  %answer = alloca i8, align 1
  %match = alloca i8, align 1
  %type = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %missing_glue = alloca i8, align 1
  store ptr %zone, ptr %zone.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %zone.addr, metadata !1458, metadata !DIExpression()), !dbg !1484
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1459, metadata !DIExpression()), !dbg !1485
  store ptr %owner, ptr %owner.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !1460, metadata !DIExpression()), !dbg !1486
  store ptr %a, ptr %a.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1461, metadata !DIExpression()), !dbg !1487
  store ptr %aaaa, ptr %aaaa.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %aaaa.addr, metadata !1462, metadata !DIExpression()), !dbg !1488
  call void @llvm.lifetime.start.p0(i64 8, ptr %rdataset) #9, !dbg !1489
  tail call void @llvm.dbg.declare(metadata ptr %rdataset, metadata !1463, metadata !DIExpression()), !dbg !1490
  call void @llvm.lifetime.start.p0(i64 40, ptr %rdata) #9, !dbg !1491
  tail call void @llvm.dbg.declare(metadata ptr %rdata, metadata !1464, metadata !DIExpression()), !dbg !1492
  call void @llvm.memset.p0.i64(ptr align 8 %rdata, i8 0, i64 40, i1 false), !dbg !1492
  %0 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 5, !dbg !1492
  %1 = getelementptr inbounds %struct.anon.8, ptr %0, i32 0, i32 0, !dbg !1492
  store ptr inttoptr (i64 -1 to ptr), ptr %1, align 8, !dbg !1492
  %2 = getelementptr inbounds %struct.anon.8, ptr %0, i32 0, i32 1, !dbg !1492
  store ptr inttoptr (i64 -1 to ptr), ptr %2, align 8, !dbg !1492
  call void @llvm.lifetime.start.p0(i64 48, ptr %hints) #9, !dbg !1493
  tail call void @llvm.dbg.declare(metadata ptr %hints, metadata !1465, metadata !DIExpression()), !dbg !1494
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai) #9, !dbg !1493
  tail call void @llvm.dbg.declare(metadata ptr %ai, metadata !1466, metadata !DIExpression()), !dbg !1495
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #9, !dbg !1493
  tail call void @llvm.dbg.declare(metadata ptr %cur, metadata !1467, metadata !DIExpression()), !dbg !1496
  call void @llvm.lifetime.start.p0(i64 1025, ptr %namebuf) #9, !dbg !1497
  tail call void @llvm.dbg.declare(metadata ptr %namebuf, metadata !1468, metadata !DIExpression()), !dbg !1498
  call void @llvm.lifetime.start.p0(i64 1024, ptr %ownerbuf) #9, !dbg !1499
  tail call void @llvm.dbg.declare(metadata ptr %ownerbuf, metadata !1469, metadata !DIExpression()), !dbg !1500
  call void @llvm.lifetime.start.p0(i64 46, ptr %addrbuf) #9, !dbg !1501
  tail call void @llvm.dbg.declare(metadata ptr %addrbuf, metadata !1470, metadata !DIExpression()), !dbg !1502
  call void @llvm.lifetime.start.p0(i64 1, ptr %answer) #9, !dbg !1503
  tail call void @llvm.dbg.declare(metadata ptr %answer, metadata !1474, metadata !DIExpression()), !dbg !1504
  store i8 1, ptr %answer, align 1, !dbg !1504
  call void @llvm.lifetime.start.p0(i64 1, ptr %match) #9, !dbg !1505
  tail call void @llvm.dbg.declare(metadata ptr %match, metadata !1475, metadata !DIExpression()), !dbg !1506
  call void @llvm.lifetime.start.p0(i64 8, ptr %type) #9, !dbg !1507
  tail call void @llvm.dbg.declare(metadata ptr %type, metadata !1476, metadata !DIExpression()), !dbg !1508
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #9, !dbg !1509
  tail call void @llvm.dbg.declare(metadata ptr %ptr, metadata !1477, metadata !DIExpression()), !dbg !1510
  store ptr null, ptr %ptr, align 8, !dbg !1510
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !1511
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1478, metadata !DIExpression()), !dbg !1512
  %3 = load ptr, ptr %a.addr, align 8, !dbg !1513
  %cmp = icmp eq ptr %3, null, !dbg !1513
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !1513

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %a.addr, align 8, !dbg !1513
  %call = call zeroext i1 @dns_rdataset_isassociated(ptr noundef %4), !dbg !1513
  br i1 %call, label %lor.rhs, label %lor.end, !dbg !1513

lor.rhs:                                          ; preds = %lor.lhs.false
  %5 = load ptr, ptr %a.addr, align 8, !dbg !1513
  %type1 = getelementptr inbounds %struct.dns_rdataset, ptr %5, i32 0, i32 4, !dbg !1513
  %6 = load i16, ptr %type1, align 2, !dbg !1513
  %conv = zext i16 %6 to i32, !dbg !1513
  %cmp2 = icmp eq i32 %conv, 1, !dbg !1513
  br label %lor.end, !dbg !1513

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %7 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lnot = xor i1 %7, true, !dbg !1513
  %lnot4 = xor i1 %lnot, true, !dbg !1513
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1513
  %conv5 = sext i32 %lnot.ext to i64, !dbg !1513
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 1), !dbg !1513
  %tobool = icmp ne i64 %expval, 0, !dbg !1513
  br i1 %tobool, label %lor.end7, label %lor.rhs6, !dbg !1513

lor.rhs6:                                         ; preds = %lor.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 185, i32 noundef 0, ptr noundef @.str.20) #10, !dbg !1513
  unreachable, !dbg !1513

8:                                                ; No predecessors!
  br label %lor.end7, !dbg !1513

lor.end7:                                         ; preds = %8, %lor.end
  %9 = phi i1 [ true, %lor.end ], [ false, %8 ]
  %lor.ext = zext i1 %9 to i32, !dbg !1513
  %10 = load ptr, ptr %aaaa.addr, align 8, !dbg !1514
  %cmp8 = icmp eq ptr %10, null, !dbg !1514
  br i1 %cmp8, label %lor.end17, label %lor.lhs.false10, !dbg !1514

lor.lhs.false10:                                  ; preds = %lor.end7
  %11 = load ptr, ptr %aaaa.addr, align 8, !dbg !1514
  %call11 = call zeroext i1 @dns_rdataset_isassociated(ptr noundef %11), !dbg !1514
  br i1 %call11, label %lor.rhs12, label %lor.end17, !dbg !1514

lor.rhs12:                                        ; preds = %lor.lhs.false10
  %12 = load ptr, ptr %aaaa.addr, align 8, !dbg !1514
  %type13 = getelementptr inbounds %struct.dns_rdataset, ptr %12, i32 0, i32 4, !dbg !1514
  %13 = load i16, ptr %type13, align 2, !dbg !1514
  %conv14 = zext i16 %13 to i32, !dbg !1514
  %cmp15 = icmp eq i32 %conv14, 28, !dbg !1514
  br label %lor.end17, !dbg !1514

lor.end17:                                        ; preds = %lor.rhs12, %lor.lhs.false10, %lor.end7
  %14 = phi i1 [ true, %lor.lhs.false10 ], [ true, %lor.end7 ], [ %cmp15, %lor.rhs12 ]
  %lnot19 = xor i1 %14, true, !dbg !1514
  %lnot21 = xor i1 %lnot19, true, !dbg !1514
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !1514
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !1514
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 1), !dbg !1514
  %tobool25 = icmp ne i64 %expval24, 0, !dbg !1514
  br i1 %tobool25, label %lor.end27, label %lor.rhs26, !dbg !1514

lor.rhs26:                                        ; preds = %lor.end17
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 187, i32 noundef 0, ptr noundef @.str.21) #10, !dbg !1514
  unreachable, !dbg !1514

15:                                               ; No predecessors!
  br label %lor.end27, !dbg !1514

lor.end27:                                        ; preds = %15, %lor.end17
  %16 = phi i1 [ true, %lor.end17 ], [ false, %15 ]
  %lor.ext28 = zext i1 %16 to i32, !dbg !1514
  %17 = load ptr, ptr %a.addr, align 8, !dbg !1515
  %cmp29 = icmp eq ptr %17, null, !dbg !1517
  br i1 %cmp29, label %if.then, label %lor.lhs.false31, !dbg !1518

lor.lhs.false31:                                  ; preds = %lor.end27
  %18 = load ptr, ptr %aaaa.addr, align 8, !dbg !1519
  %cmp32 = icmp eq ptr %18, null, !dbg !1520
  br i1 %cmp32, label %if.then, label %if.end, !dbg !1521

if.then:                                          ; preds = %lor.lhs.false31, %lor.end27
  %19 = load i8, ptr %answer, align 1, !dbg !1522, !range !1131, !noundef !1132
  %tobool34 = trunc i8 %19 to i1, !dbg !1522
  store i1 %tobool34, ptr %retval, align 1, !dbg !1523
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1523

if.end:                                           ; preds = %lor.lhs.false31
  call void @llvm.memset.p0.i64(ptr align 8 %hints, i8 0, i64 48, i1 false), !dbg !1524
  %ai_flags = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 0, !dbg !1525
  store i32 2, ptr %ai_flags, align 8, !dbg !1526
  %ai_family = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 1, !dbg !1527
  store i32 0, ptr %ai_family, align 4, !dbg !1528
  %ai_socktype = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 2, !dbg !1529
  store i32 1, ptr %ai_socktype, align 8, !dbg !1530
  %ai_protocol = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 3, !dbg !1531
  store i32 6, ptr %ai_protocol, align 4, !dbg !1532
  %20 = load ptr, ptr %name.addr, align 8, !dbg !1533
  %arraydecay = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1534
  call void @dns_name_format(ptr noundef %20, ptr noundef %arraydecay, i32 noundef 1024), !dbg !1535
  %21 = load ptr, ptr %name.addr, align 8, !dbg !1536
  %call35 = call i32 @dns_name_countlabels(ptr noundef %21), !dbg !1538
  %cmp36 = icmp ugt i32 %call35, 1, !dbg !1539
  br i1 %cmp36, label %if.then38, label %if.end41, !dbg !1540

if.then38:                                        ; preds = %if.end
  %arraydecay39 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1541
  %call40 = call i64 @strlcat(ptr noundef %arraydecay39, ptr noundef @.str.16, i64 noundef 1025), !dbg !1543
  br label %if.end41, !dbg !1544

if.end41:                                         ; preds = %if.then38, %if.end
  %22 = load ptr, ptr %owner.addr, align 8, !dbg !1545
  %arraydecay42 = getelementptr inbounds [1024 x i8], ptr %ownerbuf, i64 0, i64 0, !dbg !1546
  call void @dns_name_format(ptr noundef %22, ptr noundef %arraydecay42, i32 noundef 1024), !dbg !1547
  %arraydecay43 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1548
  %call44 = call i32 @getaddrinfo(ptr noundef %arraydecay43, ptr noundef null, ptr noundef %hints, ptr noundef %ai), !dbg !1549
  store i32 %call44, ptr %result, align 4, !dbg !1550
  %23 = load ptr, ptr %name.addr, align 8, !dbg !1551
  %arraydecay45 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1552
  call void @dns_name_format(ptr noundef %23, ptr noundef %arraydecay45, i32 noundef 1024), !dbg !1553
  %24 = load i32, ptr %result, align 4, !dbg !1554
  switch i32 %24, label %sw.default [
    i32 0, label %sw.bb
    i32 -2, label %sw.bb74
    i32 -5, label %sw.bb74
  ], !dbg !1555

sw.bb:                                            ; preds = %if.end41
  %25 = load ptr, ptr %ai, align 8, !dbg !1556
  store ptr %25, ptr %cur, align 8, !dbg !1558
  br label %while.cond, !dbg !1559

while.cond:                                       ; preds = %while.body, %sw.bb
  %26 = load ptr, ptr %cur, align 8, !dbg !1560
  %cmp46 = icmp ne ptr %26, null, !dbg !1561
  br i1 %cmp46, label %land.lhs.true, label %land.end, !dbg !1562

land.lhs.true:                                    ; preds = %while.cond
  %27 = load ptr, ptr %cur, align 8, !dbg !1563
  %ai_canonname = getelementptr inbounds %struct.addrinfo, ptr %27, i32 0, i32 6, !dbg !1564
  %28 = load ptr, ptr %ai_canonname, align 8, !dbg !1564
  %cmp48 = icmp eq ptr %28, null, !dbg !1565
  br i1 %cmp48, label %land.rhs, label %land.end, !dbg !1566

land.rhs:                                         ; preds = %land.lhs.true
  %29 = load ptr, ptr %cur, align 8, !dbg !1567
  %ai_next = getelementptr inbounds %struct.addrinfo, ptr %29, i32 0, i32 7, !dbg !1568
  %30 = load ptr, ptr %ai_next, align 8, !dbg !1568
  %cmp50 = icmp ne ptr %30, null, !dbg !1569
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %31 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp50, %land.rhs ], !dbg !1570
  br i1 %31, label %while.body, label %while.end, !dbg !1559

while.body:                                       ; preds = %land.end
  %32 = load ptr, ptr %cur, align 8, !dbg !1571
  %ai_next52 = getelementptr inbounds %struct.addrinfo, ptr %32, i32 0, i32 7, !dbg !1572
  %33 = load ptr, ptr %ai_next52, align 8, !dbg !1572
  store ptr %33, ptr %cur, align 8, !dbg !1573
  br label %while.cond, !dbg !1559, !llvm.loop !1574

while.end:                                        ; preds = %land.end
  %34 = load ptr, ptr %cur, align 8, !dbg !1575
  %cmp53 = icmp ne ptr %34, null, !dbg !1577
  br i1 %cmp53, label %land.lhs.true55, label %if.end73, !dbg !1578

land.lhs.true55:                                  ; preds = %while.end
  %35 = load ptr, ptr %cur, align 8, !dbg !1579
  %ai_canonname56 = getelementptr inbounds %struct.addrinfo, ptr %35, i32 0, i32 6, !dbg !1580
  %36 = load ptr, ptr %ai_canonname56, align 8, !dbg !1580
  %cmp57 = icmp ne ptr %36, null, !dbg !1581
  br i1 %cmp57, label %land.lhs.true59, label %if.end73, !dbg !1582

land.lhs.true59:                                  ; preds = %land.lhs.true55
  %37 = load ptr, ptr %cur, align 8, !dbg !1583
  %ai_canonname60 = getelementptr inbounds %struct.addrinfo, ptr %37, i32 0, i32 6, !dbg !1584
  %38 = load ptr, ptr %ai_canonname60, align 8, !dbg !1584
  %arraydecay61 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1585
  %call62 = call i32 @strcasecmp(ptr noundef %38, ptr noundef %arraydecay61) #11, !dbg !1586
  %cmp63 = icmp ne i32 %call62, 0, !dbg !1587
  br i1 %cmp63, label %land.lhs.true65, label %if.end73, !dbg !1588

land.lhs.true65:                                  ; preds = %land.lhs.true59
  %arraydecay66 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1589
  %call67 = call zeroext i1 @logged(ptr noundef %arraydecay66, i32 noundef 1), !dbg !1590
  br i1 %call67, label %if.end73, label %if.then68, !dbg !1591

if.then68:                                        ; preds = %land.lhs.true65
  %39 = load ptr, ptr %zone.addr, align 8, !dbg !1592
  %arraydecay69 = getelementptr inbounds [1024 x i8], ptr %ownerbuf, i64 0, i64 0, !dbg !1594
  %arraydecay70 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1595
  %40 = load ptr, ptr %cur, align 8, !dbg !1596
  %ai_canonname71 = getelementptr inbounds %struct.addrinfo, ptr %40, i32 0, i32 6, !dbg !1597
  %41 = load ptr, ptr %ai_canonname71, align 8, !dbg !1597
  call void (ptr, i32, ptr, ...) @dns_zone_log(ptr noundef %39, i32 noundef -4, ptr noundef @.str.22, ptr noundef %arraydecay69, ptr noundef %arraydecay70, ptr noundef %41), !dbg !1598
  %arraydecay72 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1599
  call void @add(ptr noundef %arraydecay72, i32 noundef 1), !dbg !1600
  br label %if.end73, !dbg !1601

if.end73:                                         ; preds = %if.then68, %land.lhs.true65, %land.lhs.true59, %land.lhs.true55, %while.end
  br label %sw.epilog, !dbg !1602

sw.bb74:                                          ; preds = %if.end41, %if.end41
  %arraydecay75 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1603
  %call76 = call zeroext i1 @logged(ptr noundef %arraydecay75, i32 noundef 2), !dbg !1605
  br i1 %call76, label %if.end81, label %if.then77, !dbg !1606

if.then77:                                        ; preds = %sw.bb74
  %42 = load ptr, ptr %zone.addr, align 8, !dbg !1607
  %arraydecay78 = getelementptr inbounds [1024 x i8], ptr %ownerbuf, i64 0, i64 0, !dbg !1609
  %arraydecay79 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1610
  call void (ptr, i32, ptr, ...) @dns_zone_log(ptr noundef %42, i32 noundef -4, ptr noundef @.str.23, ptr noundef %arraydecay78, ptr noundef %arraydecay79), !dbg !1611
  %arraydecay80 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1612
  call void @add(ptr noundef %arraydecay80, i32 noundef 2), !dbg !1613
  br label %if.end81, !dbg !1614

if.end81:                                         ; preds = %if.then77, %sw.bb74
  store i1 true, ptr %retval, align 1, !dbg !1615
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1615

sw.default:                                       ; preds = %if.end41
  %arraydecay82 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1616
  %call83 = call zeroext i1 @logged(ptr noundef %arraydecay82, i32 noundef 3), !dbg !1618
  br i1 %call83, label %if.end88, label %if.then84, !dbg !1619

if.then84:                                        ; preds = %sw.default
  %43 = load ptr, ptr %zone.addr, align 8, !dbg !1620
  %arraydecay85 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1622
  %44 = load i32, ptr %result, align 4, !dbg !1623
  %call86 = call ptr @gai_strerror(i32 noundef %44) #9, !dbg !1624
  call void (ptr, i32, ptr, ...) @dns_zone_log(ptr noundef %43, i32 noundef -3, ptr noundef @.str.19, ptr noundef %arraydecay85, ptr noundef %call86), !dbg !1625
  %arraydecay87 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1626
  call void @add(ptr noundef %arraydecay87, i32 noundef 3), !dbg !1627
  br label %if.end88, !dbg !1628

if.end88:                                         ; preds = %if.then84, %sw.default
  store i1 true, ptr %retval, align 1, !dbg !1629
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1629

sw.epilog:                                        ; preds = %if.end73
  %45 = load ptr, ptr %a.addr, align 8, !dbg !1630
  %call89 = call zeroext i1 @dns_rdataset_isassociated(ptr noundef %45), !dbg !1632
  br i1 %call89, label %if.end91, label %if.then90, !dbg !1633

if.then90:                                        ; preds = %sw.epilog
  br label %checkaaaa, !dbg !1634

if.end91:                                         ; preds = %sw.epilog
  %46 = load ptr, ptr %a.addr, align 8, !dbg !1635
  %call92 = call i32 @dns_rdataset_first(ptr noundef %46), !dbg !1636
  store i32 %call92, ptr %result, align 4, !dbg !1637
  br label %while.cond93, !dbg !1638

while.cond93:                                     ; preds = %if.end122, %if.end91
  %47 = load i32, ptr %result, align 4, !dbg !1639
  %cmp94 = icmp eq i32 %47, 0, !dbg !1640
  br i1 %cmp94, label %while.body96, label %while.end124, !dbg !1638

while.body96:                                     ; preds = %while.cond93
  %48 = load ptr, ptr %a.addr, align 8, !dbg !1641
  call void @dns_rdataset_current(ptr noundef %48, ptr noundef %rdata), !dbg !1643
  store i8 0, ptr %match, align 1, !dbg !1644
  %49 = load ptr, ptr %ai, align 8, !dbg !1645
  store ptr %49, ptr %cur, align 8, !dbg !1647
  br label %for.cond, !dbg !1648

for.cond:                                         ; preds = %for.inc, %while.body96
  %50 = load ptr, ptr %cur, align 8, !dbg !1649
  %cmp97 = icmp ne ptr %50, null, !dbg !1651
  br i1 %cmp97, label %for.body, label %for.end, !dbg !1652

for.body:                                         ; preds = %for.cond
  %51 = load ptr, ptr %cur, align 8, !dbg !1653
  %ai_family99 = getelementptr inbounds %struct.addrinfo, ptr %51, i32 0, i32 1, !dbg !1656
  %52 = load i32, ptr %ai_family99, align 4, !dbg !1656
  %cmp100 = icmp ne i32 %52, 2, !dbg !1657
  br i1 %cmp100, label %if.then102, label %if.end103, !dbg !1658

if.then102:                                       ; preds = %for.body
  br label %for.inc, !dbg !1659

if.end103:                                        ; preds = %for.body
  %53 = load ptr, ptr %cur, align 8, !dbg !1660
  %ai_addr = getelementptr inbounds %struct.addrinfo, ptr %53, i32 0, i32 5, !dbg !1661
  %54 = load ptr, ptr %ai_addr, align 8, !dbg !1661
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %54, i32 0, i32 2, !dbg !1662
  store ptr %sin_addr, ptr %ptr, align 8, !dbg !1663
  %55 = load ptr, ptr %ptr, align 8, !dbg !1664
  %data = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 0, !dbg !1666
  %56 = load ptr, ptr %data, align 8, !dbg !1666
  %length = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 1, !dbg !1667
  %57 = load i32, ptr %length, align 8, !dbg !1667
  %conv104 = zext i32 %57 to i64, !dbg !1668
  %call105 = call i32 @memcmp(ptr noundef %55, ptr noundef %56, i64 noundef %conv104) #11, !dbg !1669
  %cmp106 = icmp eq i32 %call105, 0, !dbg !1670
  br i1 %cmp106, label %if.then108, label %if.end109, !dbg !1671

if.then108:                                       ; preds = %if.end103
  store i8 1, ptr %match, align 1, !dbg !1672
  br label %for.end, !dbg !1674

if.end109:                                        ; preds = %if.end103
  br label %for.inc, !dbg !1675

for.inc:                                          ; preds = %if.end109, %if.then102
  %58 = load ptr, ptr %cur, align 8, !dbg !1676
  %ai_next110 = getelementptr inbounds %struct.addrinfo, ptr %58, i32 0, i32 7, !dbg !1677
  %59 = load ptr, ptr %ai_next110, align 8, !dbg !1677
  store ptr %59, ptr %cur, align 8, !dbg !1678
  br label %for.cond, !dbg !1679, !llvm.loop !1680

for.end:                                          ; preds = %if.then108, %for.cond
  %60 = load i8, ptr %match, align 1, !dbg !1682, !range !1131, !noundef !1132
  %tobool111 = trunc i8 %60 to i1, !dbg !1682
  br i1 %tobool111, label %if.end122, label %land.lhs.true112, !dbg !1684

land.lhs.true112:                                 ; preds = %for.end
  %arraydecay113 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1685
  %call114 = call zeroext i1 @logged(ptr noundef %arraydecay113, i32 noundef 4), !dbg !1686
  br i1 %call114, label %if.end122, label %if.then115, !dbg !1687

if.then115:                                       ; preds = %land.lhs.true112
  %61 = load ptr, ptr %zone.addr, align 8, !dbg !1688
  %arraydecay116 = getelementptr inbounds [1024 x i8], ptr %ownerbuf, i64 0, i64 0, !dbg !1690
  %arraydecay117 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1691
  %data118 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 0, !dbg !1692
  %62 = load ptr, ptr %data118, align 8, !dbg !1692
  %arraydecay119 = getelementptr inbounds [46 x i8], ptr %addrbuf, i64 0, i64 0, !dbg !1693
  %call120 = call ptr @inet_ntop(i32 noundef 2, ptr noundef %62, ptr noundef %arraydecay119, i32 noundef 46) #9, !dbg !1694
  call void (ptr, i32, ptr, ...) @dns_zone_log(ptr noundef %61, i32 noundef -4, ptr noundef @.str.24, ptr noundef %arraydecay116, ptr noundef %arraydecay117, ptr noundef %call120), !dbg !1695
  %arraydecay121 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1696
  call void @add(ptr noundef %arraydecay121, i32 noundef 4), !dbg !1697
  br label %if.end122, !dbg !1698

if.end122:                                        ; preds = %if.then115, %land.lhs.true112, %for.end
  call void @dns_rdata_reset(ptr noundef %rdata), !dbg !1699
  %63 = load ptr, ptr %a.addr, align 8, !dbg !1700
  %call123 = call i32 @dns_rdataset_next(ptr noundef %63), !dbg !1701
  store i32 %call123, ptr %result, align 4, !dbg !1702
  br label %while.cond93, !dbg !1638, !llvm.loop !1703

while.end124:                                     ; preds = %while.cond93
  br label %checkaaaa, !dbg !1638

checkaaaa:                                        ; preds = %while.end124, %if.then90
  tail call void @llvm.dbg.label(metadata !1479), !dbg !1705
  %64 = load ptr, ptr %aaaa.addr, align 8, !dbg !1706
  %call125 = call zeroext i1 @dns_rdataset_isassociated(ptr noundef %64), !dbg !1708
  br i1 %call125, label %if.end127, label %if.then126, !dbg !1709

if.then126:                                       ; preds = %checkaaaa
  br label %checkmissing, !dbg !1710

if.end127:                                        ; preds = %checkaaaa
  %65 = load ptr, ptr %aaaa.addr, align 8, !dbg !1711
  %call128 = call i32 @dns_rdataset_first(ptr noundef %65), !dbg !1712
  store i32 %call128, ptr %result, align 4, !dbg !1713
  br label %while.cond129, !dbg !1714

while.cond129:                                    ; preds = %if.end165, %if.end127
  %66 = load i32, ptr %result, align 4, !dbg !1715
  %cmp130 = icmp eq i32 %66, 0, !dbg !1716
  br i1 %cmp130, label %while.body132, label %while.end167, !dbg !1714

while.body132:                                    ; preds = %while.cond129
  %67 = load ptr, ptr %aaaa.addr, align 8, !dbg !1717
  call void @dns_rdataset_current(ptr noundef %67, ptr noundef %rdata), !dbg !1719
  store i8 0, ptr %match, align 1, !dbg !1720
  %68 = load ptr, ptr %ai, align 8, !dbg !1721
  store ptr %68, ptr %cur, align 8, !dbg !1723
  br label %for.cond133, !dbg !1724

for.cond133:                                      ; preds = %for.inc151, %while.body132
  %69 = load ptr, ptr %cur, align 8, !dbg !1725
  %cmp134 = icmp ne ptr %69, null, !dbg !1727
  br i1 %cmp134, label %for.body136, label %for.end153, !dbg !1728

for.body136:                                      ; preds = %for.cond133
  %70 = load ptr, ptr %cur, align 8, !dbg !1729
  %ai_family137 = getelementptr inbounds %struct.addrinfo, ptr %70, i32 0, i32 1, !dbg !1732
  %71 = load i32, ptr %ai_family137, align 4, !dbg !1732
  %cmp138 = icmp ne i32 %71, 10, !dbg !1733
  br i1 %cmp138, label %if.then140, label %if.end141, !dbg !1734

if.then140:                                       ; preds = %for.body136
  br label %for.inc151, !dbg !1735

if.end141:                                        ; preds = %for.body136
  %72 = load ptr, ptr %cur, align 8, !dbg !1736
  %ai_addr142 = getelementptr inbounds %struct.addrinfo, ptr %72, i32 0, i32 5, !dbg !1737
  %73 = load ptr, ptr %ai_addr142, align 8, !dbg !1737
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %73, i32 0, i32 3, !dbg !1738
  store ptr %sin6_addr, ptr %ptr, align 8, !dbg !1739
  %74 = load ptr, ptr %ptr, align 8, !dbg !1740
  %data143 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 0, !dbg !1742
  %75 = load ptr, ptr %data143, align 8, !dbg !1742
  %length144 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 1, !dbg !1743
  %76 = load i32, ptr %length144, align 8, !dbg !1743
  %conv145 = zext i32 %76 to i64, !dbg !1744
  %call146 = call i32 @memcmp(ptr noundef %74, ptr noundef %75, i64 noundef %conv145) #11, !dbg !1745
  %cmp147 = icmp eq i32 %call146, 0, !dbg !1746
  br i1 %cmp147, label %if.then149, label %if.end150, !dbg !1747

if.then149:                                       ; preds = %if.end141
  store i8 1, ptr %match, align 1, !dbg !1748
  br label %for.end153, !dbg !1750

if.end150:                                        ; preds = %if.end141
  br label %for.inc151, !dbg !1751

for.inc151:                                       ; preds = %if.end150, %if.then140
  %77 = load ptr, ptr %cur, align 8, !dbg !1752
  %ai_next152 = getelementptr inbounds %struct.addrinfo, ptr %77, i32 0, i32 7, !dbg !1753
  %78 = load ptr, ptr %ai_next152, align 8, !dbg !1753
  store ptr %78, ptr %cur, align 8, !dbg !1754
  br label %for.cond133, !dbg !1755, !llvm.loop !1756

for.end153:                                       ; preds = %if.then149, %for.cond133
  %79 = load i8, ptr %match, align 1, !dbg !1758, !range !1131, !noundef !1132
  %tobool154 = trunc i8 %79 to i1, !dbg !1758
  br i1 %tobool154, label %if.end165, label %land.lhs.true155, !dbg !1760

land.lhs.true155:                                 ; preds = %for.end153
  %arraydecay156 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1761
  %call157 = call zeroext i1 @logged(ptr noundef %arraydecay156, i32 noundef 5), !dbg !1762
  br i1 %call157, label %if.end165, label %if.then158, !dbg !1763

if.then158:                                       ; preds = %land.lhs.true155
  %80 = load ptr, ptr %zone.addr, align 8, !dbg !1764
  %arraydecay159 = getelementptr inbounds [1024 x i8], ptr %ownerbuf, i64 0, i64 0, !dbg !1766
  %arraydecay160 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1767
  %data161 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 0, !dbg !1768
  %81 = load ptr, ptr %data161, align 8, !dbg !1768
  %arraydecay162 = getelementptr inbounds [46 x i8], ptr %addrbuf, i64 0, i64 0, !dbg !1769
  %call163 = call ptr @inet_ntop(i32 noundef 10, ptr noundef %81, ptr noundef %arraydecay162, i32 noundef 46) #9, !dbg !1770
  call void (ptr, i32, ptr, ...) @dns_zone_log(ptr noundef %80, i32 noundef -4, ptr noundef @.str.25, ptr noundef %arraydecay159, ptr noundef %arraydecay160, ptr noundef %call163), !dbg !1771
  %arraydecay164 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1772
  call void @add(ptr noundef %arraydecay164, i32 noundef 5), !dbg !1773
  br label %if.end165, !dbg !1774

if.end165:                                        ; preds = %if.then158, %land.lhs.true155, %for.end153
  call void @dns_rdata_reset(ptr noundef %rdata), !dbg !1775
  %82 = load ptr, ptr %aaaa.addr, align 8, !dbg !1776
  %call166 = call i32 @dns_rdataset_next(ptr noundef %82), !dbg !1777
  store i32 %call166, ptr %result, align 4, !dbg !1778
  br label %while.cond129, !dbg !1714, !llvm.loop !1779

while.end167:                                     ; preds = %while.cond129
  br label %checkmissing, !dbg !1714

checkmissing:                                     ; preds = %while.end167, %if.then126
  tail call void @llvm.dbg.label(metadata !1480), !dbg !1781
  %arraydecay168 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1782
  %call169 = call zeroext i1 @logged(ptr noundef %arraydecay168, i32 noundef 5), !dbg !1783
  br i1 %call169, label %if.end222, label %if.then170, !dbg !1784

if.then170:                                       ; preds = %checkmissing
  call void @llvm.lifetime.start.p0(i64 1, ptr %missing_glue) #9, !dbg !1785
  tail call void @llvm.dbg.declare(metadata ptr %missing_glue, metadata !1481, metadata !DIExpression()), !dbg !1786
  store i8 0, ptr %missing_glue, align 1, !dbg !1786
  %83 = load ptr, ptr %ai, align 8, !dbg !1787
  store ptr %83, ptr %cur, align 8, !dbg !1789
  br label %for.cond171, !dbg !1790

for.cond171:                                      ; preds = %for.inc215, %if.then170
  %84 = load ptr, ptr %cur, align 8, !dbg !1791
  %cmp172 = icmp ne ptr %84, null, !dbg !1793
  br i1 %cmp172, label %for.body174, label %for.end217, !dbg !1794

for.body174:                                      ; preds = %for.cond171
  %85 = load ptr, ptr %cur, align 8, !dbg !1795
  %ai_family175 = getelementptr inbounds %struct.addrinfo, ptr %85, i32 0, i32 1, !dbg !1797
  %86 = load i32, ptr %ai_family175, align 4, !dbg !1797
  switch i32 %86, label %sw.default182 [
    i32 2, label %sw.bb176
    i32 10, label %sw.bb179
  ], !dbg !1798

sw.bb176:                                         ; preds = %for.body174
  %87 = load ptr, ptr %a.addr, align 8, !dbg !1799
  store ptr %87, ptr %rdataset, align 8, !dbg !1801
  %88 = load ptr, ptr %cur, align 8, !dbg !1802
  %ai_addr177 = getelementptr inbounds %struct.addrinfo, ptr %88, i32 0, i32 5, !dbg !1803
  %89 = load ptr, ptr %ai_addr177, align 8, !dbg !1803
  %sin_addr178 = getelementptr inbounds %struct.sockaddr_in, ptr %89, i32 0, i32 2, !dbg !1804
  store ptr %sin_addr178, ptr %ptr, align 8, !dbg !1805
  store ptr @.str.26, ptr %type, align 8, !dbg !1806
  br label %sw.epilog183, !dbg !1807

sw.bb179:                                         ; preds = %for.body174
  %90 = load ptr, ptr %aaaa.addr, align 8, !dbg !1808
  store ptr %90, ptr %rdataset, align 8, !dbg !1809
  %91 = load ptr, ptr %cur, align 8, !dbg !1810
  %ai_addr180 = getelementptr inbounds %struct.addrinfo, ptr %91, i32 0, i32 5, !dbg !1811
  %92 = load ptr, ptr %ai_addr180, align 8, !dbg !1811
  %sin6_addr181 = getelementptr inbounds %struct.sockaddr_in6, ptr %92, i32 0, i32 3, !dbg !1812
  store ptr %sin6_addr181, ptr %ptr, align 8, !dbg !1813
  store ptr @.str.27, ptr %type, align 8, !dbg !1814
  br label %sw.epilog183, !dbg !1815

sw.default182:                                    ; preds = %for.body174
  br label %for.inc215, !dbg !1816

sw.epilog183:                                     ; preds = %sw.bb179, %sw.bb176
  store i8 0, ptr %match, align 1, !dbg !1817
  %93 = load ptr, ptr %rdataset, align 8, !dbg !1818
  %call184 = call zeroext i1 @dns_rdataset_isassociated(ptr noundef %93), !dbg !1820
  br i1 %call184, label %if.then185, label %if.else, !dbg !1821

if.then185:                                       ; preds = %sw.epilog183
  %94 = load ptr, ptr %rdataset, align 8, !dbg !1822
  %call186 = call i32 @dns_rdataset_first(ptr noundef %94), !dbg !1823
  store i32 %call186, ptr %result, align 4, !dbg !1824
  br label %if.end187, !dbg !1825

if.else:                                          ; preds = %sw.epilog183
  store i32 25, ptr %result, align 4, !dbg !1826
  br label %if.end187

if.end187:                                        ; preds = %if.else, %if.then185
  br label %while.cond188, !dbg !1827

while.cond188:                                    ; preds = %if.end204, %if.end187
  %95 = load i32, ptr %result, align 4, !dbg !1828
  %cmp189 = icmp eq i32 %95, 0, !dbg !1829
  br i1 %cmp189, label %land.rhs191, label %land.end195, !dbg !1830

land.rhs191:                                      ; preds = %while.cond188
  %96 = load i8, ptr %match, align 1, !dbg !1831, !range !1131, !noundef !1132
  %tobool192 = trunc i8 %96 to i1, !dbg !1831
  %lnot193 = xor i1 %tobool192, true, !dbg !1832
  br label %land.end195

land.end195:                                      ; preds = %land.rhs191, %while.cond188
  %97 = phi i1 [ false, %while.cond188 ], [ %lnot193, %land.rhs191 ], !dbg !1833
  br i1 %97, label %while.body196, label %while.end206, !dbg !1827

while.body196:                                    ; preds = %land.end195
  %98 = load ptr, ptr %rdataset, align 8, !dbg !1834
  call void @dns_rdataset_current(ptr noundef %98, ptr noundef %rdata), !dbg !1836
  %99 = load ptr, ptr %ptr, align 8, !dbg !1837
  %data197 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 0, !dbg !1839
  %100 = load ptr, ptr %data197, align 8, !dbg !1839
  %length198 = getelementptr inbounds %struct.dns_rdata, ptr %rdata, i32 0, i32 1, !dbg !1840
  %101 = load i32, ptr %length198, align 8, !dbg !1840
  %conv199 = zext i32 %101 to i64, !dbg !1841
  %call200 = call i32 @memcmp(ptr noundef %99, ptr noundef %100, i64 noundef %conv199) #11, !dbg !1842
  %cmp201 = icmp eq i32 %call200, 0, !dbg !1843
  br i1 %cmp201, label %if.then203, label %if.end204, !dbg !1844

if.then203:                                       ; preds = %while.body196
  store i8 1, ptr %match, align 1, !dbg !1845
  br label %if.end204, !dbg !1846

if.end204:                                        ; preds = %if.then203, %while.body196
  call void @dns_rdata_reset(ptr noundef %rdata), !dbg !1847
  %102 = load ptr, ptr %rdataset, align 8, !dbg !1848
  %call205 = call i32 @dns_rdataset_next(ptr noundef %102), !dbg !1849
  store i32 %call205, ptr %result, align 4, !dbg !1850
  br label %while.cond188, !dbg !1827, !llvm.loop !1851

while.end206:                                     ; preds = %land.end195
  %103 = load i8, ptr %match, align 1, !dbg !1853, !range !1131, !noundef !1132
  %tobool207 = trunc i8 %103 to i1, !dbg !1853
  br i1 %tobool207, label %if.end214, label %if.then208, !dbg !1855

if.then208:                                       ; preds = %while.end206
  %104 = load ptr, ptr %zone.addr, align 8, !dbg !1856
  %arraydecay209 = getelementptr inbounds [1024 x i8], ptr %ownerbuf, i64 0, i64 0, !dbg !1858
  %arraydecay210 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1859
  %105 = load ptr, ptr %type, align 8, !dbg !1860
  %106 = load ptr, ptr %cur, align 8, !dbg !1861
  %ai_family211 = getelementptr inbounds %struct.addrinfo, ptr %106, i32 0, i32 1, !dbg !1862
  %107 = load i32, ptr %ai_family211, align 4, !dbg !1862
  %108 = load ptr, ptr %ptr, align 8, !dbg !1863
  %arraydecay212 = getelementptr inbounds [46 x i8], ptr %addrbuf, i64 0, i64 0, !dbg !1864
  %call213 = call ptr @inet_ntop(i32 noundef %107, ptr noundef %108, ptr noundef %arraydecay212, i32 noundef 46) #9, !dbg !1865
  call void (ptr, i32, ptr, ...) @dns_zone_log(ptr noundef %104, i32 noundef -4, ptr noundef @.str.28, ptr noundef %arraydecay209, ptr noundef %arraydecay210, ptr noundef %105, ptr noundef %call213), !dbg !1866
  store i8 1, ptr %missing_glue, align 1, !dbg !1867
  br label %if.end214, !dbg !1868

if.end214:                                        ; preds = %if.then208, %while.end206
  br label %for.inc215, !dbg !1869

for.inc215:                                       ; preds = %if.end214, %sw.default182
  %109 = load ptr, ptr %cur, align 8, !dbg !1870
  %ai_next216 = getelementptr inbounds %struct.addrinfo, ptr %109, i32 0, i32 7, !dbg !1871
  %110 = load ptr, ptr %ai_next216, align 8, !dbg !1871
  store ptr %110, ptr %cur, align 8, !dbg !1872
  br label %for.cond171, !dbg !1873, !llvm.loop !1874

for.end217:                                       ; preds = %for.cond171
  %111 = load i8, ptr %missing_glue, align 1, !dbg !1876, !range !1131, !noundef !1132
  %tobool218 = trunc i8 %111 to i1, !dbg !1876
  br i1 %tobool218, label %if.then219, label %if.end221, !dbg !1878

if.then219:                                       ; preds = %for.end217
  %arraydecay220 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1879
  call void @add(ptr noundef %arraydecay220, i32 noundef 5), !dbg !1880
  br label %if.end221, !dbg !1880

if.end221:                                        ; preds = %if.then219, %for.end217
  call void @llvm.lifetime.end.p0(i64 1, ptr %missing_glue) #9, !dbg !1881
  br label %if.end222, !dbg !1882

if.end222:                                        ; preds = %if.end221, %checkmissing
  %112 = load ptr, ptr %ai, align 8, !dbg !1883
  call void @freeaddrinfo(ptr noundef %112) #9, !dbg !1884
  %113 = load i8, ptr %answer, align 1, !dbg !1885, !range !1131, !noundef !1132
  %tobool223 = trunc i8 %113 to i1, !dbg !1885
  store i1 %tobool223, ptr %retval, align 1, !dbg !1886
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1886

cleanup:                                          ; preds = %if.end222, %if.end88, %if.end81, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !1887
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #9, !dbg !1887
  call void @llvm.lifetime.end.p0(i64 8, ptr %type) #9, !dbg !1887
  call void @llvm.lifetime.end.p0(i64 1, ptr %match) #9, !dbg !1887
  call void @llvm.lifetime.end.p0(i64 1, ptr %answer) #9, !dbg !1887
  call void @llvm.lifetime.end.p0(i64 46, ptr %addrbuf) #9, !dbg !1887
  call void @llvm.lifetime.end.p0(i64 1024, ptr %ownerbuf) #9, !dbg !1887
  call void @llvm.lifetime.end.p0(i64 1025, ptr %namebuf) #9, !dbg !1887
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #9, !dbg !1887
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai) #9, !dbg !1887
  call void @llvm.lifetime.end.p0(i64 48, ptr %hints) #9, !dbg !1887
  call void @llvm.lifetime.end.p0(i64 40, ptr %rdata) #9, !dbg !1887
  call void @llvm.lifetime.end.p0(i64 8, ptr %rdataset) #9, !dbg !1887
  %114 = load i1, ptr %retval, align 1, !dbg !1887
  ret i1 %114, !dbg !1887
}

; Function Attrs: null_pointer_is_valid
declare !dbg !1888 void @dns_zone_setchecksrv(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal zeroext i1 @checksrv(ptr noundef %zone, ptr noundef %name, ptr noundef %owner) #0 !dbg !1889 {
entry:
  %retval = alloca i1, align 1
  %zone.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %owner.addr = alloca ptr, align 8
  %hints = alloca %struct.addrinfo, align 8
  %ai = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %namebuf = alloca [1025 x i8], align 16
  %ownerbuf = alloca [1024 x i8], align 16
  %result = alloca i32, align 4
  %level = alloca i32, align 4
  %answer = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %zone, ptr %zone.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %zone.addr, metadata !1891, metadata !DIExpression()), !dbg !1902
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1892, metadata !DIExpression()), !dbg !1903
  store ptr %owner, ptr %owner.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !1893, metadata !DIExpression()), !dbg !1904
  call void @llvm.lifetime.start.p0(i64 48, ptr %hints) #9, !dbg !1905
  tail call void @llvm.dbg.declare(metadata ptr %hints, metadata !1894, metadata !DIExpression()), !dbg !1906
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai) #9, !dbg !1905
  tail call void @llvm.dbg.declare(metadata ptr %ai, metadata !1895, metadata !DIExpression()), !dbg !1907
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #9, !dbg !1905
  tail call void @llvm.dbg.declare(metadata ptr %cur, metadata !1896, metadata !DIExpression()), !dbg !1908
  call void @llvm.lifetime.start.p0(i64 1025, ptr %namebuf) #9, !dbg !1909
  tail call void @llvm.dbg.declare(metadata ptr %namebuf, metadata !1897, metadata !DIExpression()), !dbg !1910
  call void @llvm.lifetime.start.p0(i64 1024, ptr %ownerbuf) #9, !dbg !1911
  tail call void @llvm.dbg.declare(metadata ptr %ownerbuf, metadata !1898, metadata !DIExpression()), !dbg !1912
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !1913
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1899, metadata !DIExpression()), !dbg !1914
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #9, !dbg !1915
  tail call void @llvm.dbg.declare(metadata ptr %level, metadata !1900, metadata !DIExpression()), !dbg !1916
  store i32 -4, ptr %level, align 4, !dbg !1916
  call void @llvm.lifetime.start.p0(i64 1, ptr %answer) #9, !dbg !1917
  tail call void @llvm.dbg.declare(metadata ptr %answer, metadata !1901, metadata !DIExpression()), !dbg !1918
  store i8 1, ptr %answer, align 1, !dbg !1918
  call void @llvm.memset.p0.i64(ptr align 8 %hints, i8 0, i64 48, i1 false), !dbg !1919
  %ai_flags = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 0, !dbg !1920
  store i32 2, ptr %ai_flags, align 8, !dbg !1921
  %ai_family = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 1, !dbg !1922
  store i32 0, ptr %ai_family, align 4, !dbg !1923
  %ai_socktype = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 2, !dbg !1924
  store i32 1, ptr %ai_socktype, align 8, !dbg !1925
  %ai_protocol = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 3, !dbg !1926
  store i32 6, ptr %ai_protocol, align 4, !dbg !1927
  %0 = load ptr, ptr %name.addr, align 8, !dbg !1928
  %arraydecay = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1929
  call void @dns_name_format(ptr noundef %0, ptr noundef %arraydecay, i32 noundef 1024), !dbg !1930
  %1 = load ptr, ptr %name.addr, align 8, !dbg !1931
  %call = call i32 @dns_name_countlabels(ptr noundef %1), !dbg !1933
  %cmp = icmp ugt i32 %call, 1, !dbg !1934
  br i1 %cmp, label %if.then, label %if.end, !dbg !1935

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1936
  %call2 = call i64 @strlcat(ptr noundef %arraydecay1, ptr noundef @.str.16, i64 noundef 1025), !dbg !1938
  br label %if.end, !dbg !1939

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %owner.addr, align 8, !dbg !1940
  %arraydecay3 = getelementptr inbounds [1024 x i8], ptr %ownerbuf, i64 0, i64 0, !dbg !1941
  call void @dns_name_format(ptr noundef %2, ptr noundef %arraydecay3, i32 noundef 1024), !dbg !1942
  %arraydecay4 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1943
  %call5 = call i32 @getaddrinfo(ptr noundef %arraydecay4, ptr noundef null, ptr noundef %hints, ptr noundef %ai), !dbg !1944
  store i32 %call5, ptr %result, align 4, !dbg !1945
  %3 = load ptr, ptr %name.addr, align 8, !dbg !1946
  %arraydecay6 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1947
  call void @dns_name_format(ptr noundef %3, ptr noundef %arraydecay6, i32 noundef 1024), !dbg !1948
  %4 = load i32, ptr %result, align 4, !dbg !1949
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 -2, label %sw.bb40
    i32 -5, label %sw.bb40
  ], !dbg !1950

sw.bb:                                            ; preds = %if.end
  %5 = load ptr, ptr %ai, align 8, !dbg !1951
  store ptr %5, ptr %cur, align 8, !dbg !1953
  br label %while.cond, !dbg !1954

while.cond:                                       ; preds = %while.body, %sw.bb
  %6 = load ptr, ptr %cur, align 8, !dbg !1955
  %cmp7 = icmp ne ptr %6, null, !dbg !1956
  br i1 %cmp7, label %land.lhs.true, label %land.end, !dbg !1957

land.lhs.true:                                    ; preds = %while.cond
  %7 = load ptr, ptr %cur, align 8, !dbg !1958
  %ai_canonname = getelementptr inbounds %struct.addrinfo, ptr %7, i32 0, i32 6, !dbg !1959
  %8 = load ptr, ptr %ai_canonname, align 8, !dbg !1959
  %cmp8 = icmp eq ptr %8, null, !dbg !1960
  br i1 %cmp8, label %land.rhs, label %land.end, !dbg !1961

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %cur, align 8, !dbg !1962
  %ai_next = getelementptr inbounds %struct.addrinfo, ptr %9, i32 0, i32 7, !dbg !1963
  %10 = load ptr, ptr %ai_next, align 8, !dbg !1963
  %cmp9 = icmp ne ptr %10, null, !dbg !1964
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp9, %land.rhs ], !dbg !1965
  br i1 %11, label %while.body, label %while.end, !dbg !1954

while.body:                                       ; preds = %land.end
  %12 = load ptr, ptr %cur, align 8, !dbg !1966
  %ai_next10 = getelementptr inbounds %struct.addrinfo, ptr %12, i32 0, i32 7, !dbg !1967
  %13 = load ptr, ptr %ai_next10, align 8, !dbg !1967
  store ptr %13, ptr %cur, align 8, !dbg !1968
  br label %while.cond, !dbg !1954, !llvm.loop !1969

while.end:                                        ; preds = %land.end
  %14 = load ptr, ptr %cur, align 8, !dbg !1970
  %cmp11 = icmp ne ptr %14, null, !dbg !1972
  br i1 %cmp11, label %land.lhs.true12, label %if.end39, !dbg !1973

land.lhs.true12:                                  ; preds = %while.end
  %15 = load ptr, ptr %cur, align 8, !dbg !1974
  %ai_canonname13 = getelementptr inbounds %struct.addrinfo, ptr %15, i32 0, i32 6, !dbg !1975
  %16 = load ptr, ptr %ai_canonname13, align 8, !dbg !1975
  %cmp14 = icmp ne ptr %16, null, !dbg !1976
  br i1 %cmp14, label %land.lhs.true15, label %if.end39, !dbg !1977

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %17 = load ptr, ptr %cur, align 8, !dbg !1978
  %ai_canonname16 = getelementptr inbounds %struct.addrinfo, ptr %17, i32 0, i32 6, !dbg !1979
  %18 = load ptr, ptr %ai_canonname16, align 8, !dbg !1979
  %arraydecay17 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1980
  %call18 = call i32 @strcasecmp(ptr noundef %18, ptr noundef %arraydecay17) #11, !dbg !1981
  %cmp19 = icmp ne i32 %call18, 0, !dbg !1982
  br i1 %cmp19, label %if.then20, label %if.end39, !dbg !1983

if.then20:                                        ; preds = %land.lhs.true15
  %19 = load i32, ptr @zone_options, align 4, !dbg !1984
  %and = and i32 %19, 131072, !dbg !1987
  %cmp21 = icmp ne i32 %and, 0, !dbg !1988
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1989

if.then22:                                        ; preds = %if.then20
  store i32 -3, ptr %level, align 4, !dbg !1990
  br label %if.end23, !dbg !1991

if.end23:                                         ; preds = %if.then22, %if.then20
  %20 = load i32, ptr @zone_options, align 4, !dbg !1992
  %and24 = and i32 %20, 262144, !dbg !1994
  %cmp25 = icmp eq i32 %and24, 0, !dbg !1995
  br i1 %cmp25, label %if.then26, label %if.end38, !dbg !1996

if.then26:                                        ; preds = %if.end23
  %arraydecay27 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !1997
  %call28 = call zeroext i1 @logged(ptr noundef %arraydecay27, i32 noundef 7), !dbg !2000
  br i1 %call28, label %if.end34, label %if.then29, !dbg !2001

if.then29:                                        ; preds = %if.then26
  %21 = load ptr, ptr %zone.addr, align 8, !dbg !2002
  %22 = load i32, ptr %level, align 4, !dbg !2004
  %arraydecay30 = getelementptr inbounds [1024 x i8], ptr %ownerbuf, i64 0, i64 0, !dbg !2005
  %arraydecay31 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !2006
  %23 = load ptr, ptr %cur, align 8, !dbg !2007
  %ai_canonname32 = getelementptr inbounds %struct.addrinfo, ptr %23, i32 0, i32 6, !dbg !2008
  %24 = load ptr, ptr %ai_canonname32, align 8, !dbg !2008
  call void (ptr, i32, ptr, ...) @dns_zone_log(ptr noundef %21, i32 noundef %22, ptr noundef @.str.29, ptr noundef %arraydecay30, ptr noundef %arraydecay31, ptr noundef %24), !dbg !2009
  %arraydecay33 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !2010
  call void @add(ptr noundef %arraydecay33, i32 noundef 7), !dbg !2011
  br label %if.end34, !dbg !2012

if.end34:                                         ; preds = %if.then29, %if.then26
  %25 = load i32, ptr %level, align 4, !dbg !2013
  %cmp35 = icmp eq i32 %25, -4, !dbg !2015
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !2016

if.then36:                                        ; preds = %if.end34
  store i8 0, ptr %answer, align 1, !dbg !2017
  br label %if.end37, !dbg !2018

if.end37:                                         ; preds = %if.then36, %if.end34
  br label %if.end38, !dbg !2019

if.end38:                                         ; preds = %if.end37, %if.end23
  br label %if.end39, !dbg !2020

if.end39:                                         ; preds = %if.end38, %land.lhs.true15, %land.lhs.true12, %while.end
  %26 = load ptr, ptr %ai, align 8, !dbg !2021
  call void @freeaddrinfo(ptr noundef %26) #9, !dbg !2022
  %27 = load i8, ptr %answer, align 1, !dbg !2023, !range !1131, !noundef !1132
  %tobool = trunc i8 %27 to i1, !dbg !2023
  store i1 %tobool, ptr %retval, align 1, !dbg !2024
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2024

sw.bb40:                                          ; preds = %if.end, %if.end
  %arraydecay41 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !2025
  %call42 = call zeroext i1 @logged(ptr noundef %arraydecay41, i32 noundef 2), !dbg !2027
  br i1 %call42, label %if.end47, label %if.then43, !dbg !2028

if.then43:                                        ; preds = %sw.bb40
  %28 = load ptr, ptr %zone.addr, align 8, !dbg !2029
  %arraydecay44 = getelementptr inbounds [1024 x i8], ptr %ownerbuf, i64 0, i64 0, !dbg !2031
  %arraydecay45 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !2032
  call void (ptr, i32, ptr, ...) @dns_zone_log(ptr noundef %28, i32 noundef -4, ptr noundef @.str.30, ptr noundef %arraydecay44, ptr noundef %arraydecay45), !dbg !2033
  %arraydecay46 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !2034
  call void @add(ptr noundef %arraydecay46, i32 noundef 2), !dbg !2035
  br label %if.end47, !dbg !2036

if.end47:                                         ; preds = %if.then43, %sw.bb40
  store i1 true, ptr %retval, align 1, !dbg !2037
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2037

sw.default:                                       ; preds = %if.end
  %arraydecay48 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !2038
  %call49 = call zeroext i1 @logged(ptr noundef %arraydecay48, i32 noundef 3), !dbg !2040
  br i1 %call49, label %if.end54, label %if.then50, !dbg !2041

if.then50:                                        ; preds = %sw.default
  %29 = load ptr, ptr %zone.addr, align 8, !dbg !2042
  %arraydecay51 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !2044
  %30 = load i32, ptr %result, align 4, !dbg !2045
  %call52 = call ptr @gai_strerror(i32 noundef %30) #9, !dbg !2046
  call void (ptr, i32, ptr, ...) @dns_zone_log(ptr noundef %29, i32 noundef -3, ptr noundef @.str.19, ptr noundef %arraydecay51, ptr noundef %call52), !dbg !2047
  %arraydecay53 = getelementptr inbounds [1025 x i8], ptr %namebuf, i64 0, i64 0, !dbg !2048
  call void @add(ptr noundef %arraydecay53, i32 noundef 3), !dbg !2049
  br label %if.end54, !dbg !2050

if.end54:                                         ; preds = %if.then50, %sw.default
  store i1 true, ptr %retval, align 1, !dbg !2051
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2051

cleanup:                                          ; preds = %if.end54, %if.end47, %if.end39
  call void @llvm.lifetime.end.p0(i64 1, ptr %answer) #9, !dbg !2052
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #9, !dbg !2052
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !2052
  call void @llvm.lifetime.end.p0(i64 1024, ptr %ownerbuf) #9, !dbg !2052
  call void @llvm.lifetime.end.p0(i64 1025, ptr %namebuf) #9, !dbg !2052
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #9, !dbg !2052
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai) #9, !dbg !2052
  call void @llvm.lifetime.end.p0(i64 48, ptr %hints) #9, !dbg !2052
  %31 = load i1, ptr %retval, align 1, !dbg !2052
  ret i1 %31, !dbg !2052
}

; Function Attrs: null_pointer_is_valid
declare !dbg !2053 i32 @dns_zone_load(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @check_ttls(ptr noundef %zone, i32 noundef %maxttl) #0 !dbg !2056 {
entry:
  %retval = alloca i32, align 4
  %zone.addr = alloca ptr, align 8
  %maxttl.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %db = alloca ptr, align 8
  %version = alloca ptr, align 8
  %node = alloca ptr, align 8
  %dbiter = alloca ptr, align 8
  %rdsiter = alloca ptr, align 8
  %rdataset = alloca %struct.dns_rdataset, align 8
  %fname = alloca %struct.dns_fixedname, align 8
  %name = alloca ptr, align 8
  %nbuf = alloca [1024 x i8], align 16
  %tbuf = alloca [255 x i8], align 16
  %b = alloca %struct.isc_buffer, align 8
  %r = alloca %struct.isc_region, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %zone, ptr %zone.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %zone.addr, metadata !2060, metadata !DIExpression()), !dbg !2448
  store i32 %maxttl, ptr %maxttl.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %maxttl.addr, metadata !2061, metadata !DIExpression()), !dbg !2449
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !2450
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !2062, metadata !DIExpression()), !dbg !2451
  call void @llvm.lifetime.start.p0(i64 8, ptr %db) #9, !dbg !2452
  tail call void @llvm.dbg.declare(metadata ptr %db, metadata !2063, metadata !DIExpression()), !dbg !2453
  store ptr null, ptr %db, align 8, !dbg !2453
  call void @llvm.lifetime.start.p0(i64 8, ptr %version) #9, !dbg !2454
  tail call void @llvm.dbg.declare(metadata ptr %version, metadata !2427, metadata !DIExpression()), !dbg !2455
  store ptr null, ptr %version, align 8, !dbg !2455
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #9, !dbg !2456
  tail call void @llvm.dbg.declare(metadata ptr %node, metadata !2428, metadata !DIExpression()), !dbg !2457
  store ptr null, ptr %node, align 8, !dbg !2457
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbiter) #9, !dbg !2458
  tail call void @llvm.dbg.declare(metadata ptr %dbiter, metadata !2429, metadata !DIExpression()), !dbg !2459
  store ptr null, ptr %dbiter, align 8, !dbg !2459
  call void @llvm.lifetime.start.p0(i64 8, ptr %rdsiter) #9, !dbg !2460
  tail call void @llvm.dbg.declare(metadata ptr %rdsiter, metadata !2430, metadata !DIExpression()), !dbg !2461
  store ptr null, ptr %rdsiter, align 8, !dbg !2461
  call void @llvm.lifetime.start.p0(i64 120, ptr %rdataset) #9, !dbg !2462
  tail call void @llvm.dbg.declare(metadata ptr %rdataset, metadata !2431, metadata !DIExpression()), !dbg !2463
  call void @llvm.lifetime.start.p0(i64 528, ptr %fname) #9, !dbg !2464
  tail call void @llvm.dbg.declare(metadata ptr %fname, metadata !2432, metadata !DIExpression()), !dbg !2465
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #9, !dbg !2466
  tail call void @llvm.dbg.declare(metadata ptr %name, metadata !2433, metadata !DIExpression()), !dbg !2467
  %call = call ptr @dns_fixedname_initname(ptr noundef %fname), !dbg !2468
  store ptr %call, ptr %name, align 8, !dbg !2469
  call void @dns_rdataset_init(ptr noundef %rdataset), !dbg !2470
  br label %do.body, !dbg !2471

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %zone.addr, align 8, !dbg !2472
  %call1 = call i32 @dns_zone_getdb(ptr noundef %0, ptr noundef %db), !dbg !2472
  store i32 %call1, ptr %result, align 4, !dbg !2472
  %1 = load i32, ptr %result, align 4, !dbg !2474
  %cmp = icmp ne i32 %1, 0, !dbg !2474
  br i1 %cmp, label %if.then, label %if.end, !dbg !2472

if.then:                                          ; preds = %do.body
  br label %cleanup109, !dbg !2474

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !2472

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2472

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %db, align 8, !dbg !2476
  %cmp2 = icmp ne ptr %2, null, !dbg !2476
  %lnot = xor i1 %cmp2, true, !dbg !2476
  %lnot3 = xor i1 %lnot, true, !dbg !2476
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2476
  %conv = sext i32 %lnot.ext to i64, !dbg !2476
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2476
  %tobool = icmp ne i64 %expval, 0, !dbg !2476
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !2476

lor.rhs:                                          ; preds = %do.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 577, i32 noundef 2, ptr noundef @.str.31) #10, !dbg !2476
  unreachable, !dbg !2476

3:                                                ; No predecessors!
  br label %lor.end, !dbg !2476

lor.end:                                          ; preds = %3, %do.end
  %4 = phi i1 [ true, %do.end ], [ false, %3 ]
  %lor.ext = zext i1 %4 to i32, !dbg !2476
  br label %do.body4, !dbg !2477

do.body4:                                         ; preds = %lor.end
  %5 = load ptr, ptr %db, align 8, !dbg !2478
  %call5 = call i32 @dns_db_newversion(ptr noundef %5, ptr noundef %version), !dbg !2478
  store i32 %call5, ptr %result, align 4, !dbg !2478
  %6 = load i32, ptr %result, align 4, !dbg !2480
  %cmp6 = icmp ne i32 %6, 0, !dbg !2480
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !2478

if.then8:                                         ; preds = %do.body4
  br label %cleanup109, !dbg !2480

if.end9:                                          ; preds = %do.body4
  br label %do.cond10, !dbg !2478

do.cond10:                                        ; preds = %if.end9
  br label %do.end11, !dbg !2478

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !2482

do.body12:                                        ; preds = %do.end11
  %7 = load ptr, ptr %db, align 8, !dbg !2483
  %call13 = call i32 @dns_db_createiterator(ptr noundef %7, i32 noundef 0, ptr noundef %dbiter), !dbg !2483
  store i32 %call13, ptr %result, align 4, !dbg !2483
  %8 = load i32, ptr %result, align 4, !dbg !2485
  %cmp14 = icmp ne i32 %8, 0, !dbg !2485
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !2483

if.then16:                                        ; preds = %do.body12
  br label %cleanup109, !dbg !2485

if.end17:                                         ; preds = %do.body12
  br label %do.cond18, !dbg !2483

do.cond18:                                        ; preds = %if.end17
  br label %do.end19, !dbg !2483

do.end19:                                         ; preds = %do.cond18
  %9 = load ptr, ptr %dbiter, align 8, !dbg !2487
  %call20 = call i32 @dns_dbiterator_first(ptr noundef %9), !dbg !2488
  store i32 %call20, ptr %result, align 4, !dbg !2489
  br label %for.cond, !dbg !2490

for.cond:                                         ; preds = %for.inc102, %do.end19
  %10 = load i32, ptr %result, align 4, !dbg !2491
  %cmp21 = icmp eq i32 %10, 0, !dbg !2492
  br i1 %cmp21, label %for.body, label %for.end104, !dbg !2493

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %dbiter, align 8, !dbg !2494
  %12 = load ptr, ptr %name, align 8, !dbg !2495
  %call23 = call i32 @dns_dbiterator_current(ptr noundef %11, ptr noundef %node, ptr noundef %12), !dbg !2496
  store i32 %call23, ptr %result, align 4, !dbg !2497
  %13 = load i32, ptr %result, align 4, !dbg !2498
  %cmp24 = icmp eq i32 %13, 65560, !dbg !2500
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !2501

if.then26:                                        ; preds = %for.body
  store i32 0, ptr %result, align 4, !dbg !2502
  br label %if.end27, !dbg !2503

if.end27:                                         ; preds = %if.then26, %for.body
  br label %do.body28, !dbg !2504

do.body28:                                        ; preds = %if.end27
  %14 = load i32, ptr %result, align 4, !dbg !2505
  store i32 %14, ptr %result, align 4, !dbg !2505
  %15 = load i32, ptr %result, align 4, !dbg !2507
  %cmp29 = icmp ne i32 %15, 0, !dbg !2507
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !2505

if.then31:                                        ; preds = %do.body28
  br label %cleanup109, !dbg !2507

if.end32:                                         ; preds = %do.body28
  br label %do.cond33, !dbg !2505

do.cond33:                                        ; preds = %if.end32
  br label %do.end34, !dbg !2505

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !2509

do.body35:                                        ; preds = %do.end34
  %16 = load ptr, ptr %db, align 8, !dbg !2510
  %17 = load ptr, ptr %node, align 8, !dbg !2510
  %18 = load ptr, ptr %version, align 8, !dbg !2510
  %call36 = call i32 @dns_db_allrdatasets(ptr noundef %16, ptr noundef %17, ptr noundef %18, i32 noundef 0, ptr noundef %rdsiter), !dbg !2510
  store i32 %call36, ptr %result, align 4, !dbg !2510
  %19 = load i32, ptr %result, align 4, !dbg !2512
  %cmp37 = icmp ne i32 %19, 0, !dbg !2512
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !2510

if.then39:                                        ; preds = %do.body35
  br label %cleanup109, !dbg !2512

if.end40:                                         ; preds = %do.body35
  br label %do.cond41, !dbg !2510

do.cond41:                                        ; preds = %if.end40
  br label %do.end42, !dbg !2510

do.end42:                                         ; preds = %do.cond41
  %20 = load ptr, ptr %rdsiter, align 8, !dbg !2514
  %call43 = call i32 @dns_rdatasetiter_first(ptr noundef %20), !dbg !2515
  store i32 %call43, ptr %result, align 4, !dbg !2516
  br label %for.cond44, !dbg !2517

for.cond44:                                       ; preds = %for.inc, %do.end42
  %21 = load i32, ptr %result, align 4, !dbg !2518
  %cmp45 = icmp eq i32 %21, 0, !dbg !2519
  br i1 %cmp45, label %for.body47, label %for.end, !dbg !2520

for.body47:                                       ; preds = %for.cond44
  %22 = load ptr, ptr %rdsiter, align 8, !dbg !2521
  call void @dns_rdatasetiter_current(ptr noundef %22, ptr noundef %rdataset), !dbg !2522
  %ttl = getelementptr inbounds %struct.dns_rdataset, ptr %rdataset, i32 0, i32 5, !dbg !2523
  %23 = load i32, ptr %ttl, align 4, !dbg !2523
  %24 = load i32, ptr %maxttl.addr, align 4, !dbg !2524
  %cmp48 = icmp ugt i32 %23, %24, !dbg !2525
  br i1 %cmp48, label %if.then50, label %if.end89, !dbg !2526

if.then50:                                        ; preds = %for.body47
  call void @llvm.lifetime.start.p0(i64 1024, ptr %nbuf) #9, !dbg !2527
  tail call void @llvm.dbg.declare(metadata ptr %nbuf, metadata !2434, metadata !DIExpression()), !dbg !2528
  call void @llvm.lifetime.start.p0(i64 255, ptr %tbuf) #9, !dbg !2529
  tail call void @llvm.dbg.declare(metadata ptr %tbuf, metadata !2443, metadata !DIExpression()), !dbg !2530
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #9, !dbg !2531
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !2445, metadata !DIExpression()), !dbg !2532
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #9, !dbg !2533
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !2446, metadata !DIExpression()), !dbg !2534
  %25 = load ptr, ptr %name, align 8, !dbg !2535
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %nbuf, i64 0, i64 0, !dbg !2536
  call void @dns_name_format(ptr noundef %25, ptr noundef %arraydecay, i32 noundef 1024), !dbg !2537
  br label %do.body51, !dbg !2538

do.body51:                                        ; preds = %if.then50
  %arraydecay52 = getelementptr inbounds [255 x i8], ptr %tbuf, i64 0, i64 0, !dbg !2539
  %base = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 1, !dbg !2539
  store ptr %arraydecay52, ptr %base, align 8, !dbg !2539
  %length = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 2, !dbg !2539
  store i32 254, ptr %length, align 8, !dbg !2539
  %used = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 3, !dbg !2539
  store i32 0, ptr %used, align 4, !dbg !2539
  %current = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 4, !dbg !2539
  store i32 0, ptr %current, align 8, !dbg !2539
  %active = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 5, !dbg !2539
  store i32 0, ptr %active, align 4, !dbg !2539
  %mctx = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 7, !dbg !2539
  store ptr null, ptr %mctx, align 8, !dbg !2539
  br label %do.body53, !dbg !2539

do.body53:                                        ; preds = %do.body51
  %link = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 6, !dbg !2541
  %prev = getelementptr inbounds %struct.anon, ptr %link, i32 0, i32 0, !dbg !2541
  store ptr inttoptr (i64 -1 to ptr), ptr %prev, align 8, !dbg !2541
  %link54 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 6, !dbg !2541
  %next = getelementptr inbounds %struct.anon, ptr %link54, i32 0, i32 1, !dbg !2541
  store ptr inttoptr (i64 -1 to ptr), ptr %next, align 8, !dbg !2541
  br label %do.cond55, !dbg !2541

do.cond55:                                        ; preds = %do.body53
  br label %do.end56, !dbg !2541

do.end56:                                         ; preds = %do.cond55
  %magic = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 0, !dbg !2539
  store i32 1114990113, ptr %magic, align 8, !dbg !2539
  %autore = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 8, !dbg !2539
  store i8 0, ptr %autore, align 8, !dbg !2539
  br label %do.cond57, !dbg !2539

do.cond57:                                        ; preds = %do.end56
  br label %do.end58, !dbg !2539

do.end58:                                         ; preds = %do.cond57
  br label %do.body59, !dbg !2543

do.body59:                                        ; preds = %do.end58
  %type = getelementptr inbounds %struct.dns_rdataset, ptr %rdataset, i32 0, i32 4, !dbg !2544
  %26 = load i16, ptr %type, align 2, !dbg !2544
  %call60 = call i32 @dns_rdatatype_totext(i16 noundef zeroext %26, ptr noundef %b), !dbg !2544
  store i32 %call60, ptr %result, align 4, !dbg !2544
  %27 = load i32, ptr %result, align 4, !dbg !2546
  %cmp61 = icmp ne i32 %27, 0, !dbg !2546
  br i1 %cmp61, label %if.then63, label %if.end64, !dbg !2544

if.then63:                                        ; preds = %do.body59
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2546

if.end64:                                         ; preds = %do.body59
  br label %do.cond65, !dbg !2544

do.cond65:                                        ; preds = %if.end64
  br label %do.end66, !dbg !2544

do.end66:                                         ; preds = %do.cond65
  br label %do.body67, !dbg !2548

do.body67:                                        ; preds = %do.end66
  %base68 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 1, !dbg !2549
  %28 = load ptr, ptr %base68, align 8, !dbg !2549
  %base69 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !2549
  store ptr %28, ptr %base69, align 8, !dbg !2549
  %used70 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 3, !dbg !2549
  %29 = load i32, ptr %used70, align 4, !dbg !2549
  %length71 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !2549
  store i32 %29, ptr %length71, align 8, !dbg !2549
  br label %do.cond72, !dbg !2549

do.cond72:                                        ; preds = %do.body67
  br label %do.end73, !dbg !2549

do.end73:                                         ; preds = %do.cond72
  %base74 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !2551
  %30 = load ptr, ptr %base74, align 8, !dbg !2551
  %length75 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !2552
  %31 = load i32, ptr %length75, align 8, !dbg !2552
  %idxprom = zext i32 %31 to i64, !dbg !2553
  %arrayidx = getelementptr inbounds i8, ptr %30, i64 %idxprom, !dbg !2553
  store i8 0, ptr %arrayidx, align 1, !dbg !2554
  %32 = load ptr, ptr %zone.addr, align 8, !dbg !2555
  %arraydecay76 = getelementptr inbounds [1024 x i8], ptr %nbuf, i64 0, i64 0, !dbg !2556
  %arraydecay77 = getelementptr inbounds [255 x i8], ptr %tbuf, i64 0, i64 0, !dbg !2557
  %ttl78 = getelementptr inbounds %struct.dns_rdataset, ptr %rdataset, i32 0, i32 5, !dbg !2558
  %33 = load i32, ptr %ttl78, align 4, !dbg !2558
  %34 = load i32, ptr %maxttl.addr, align 4, !dbg !2559
  call void (ptr, i32, ptr, ...) @dns_zone_log(ptr noundef %32, i32 noundef -4, ptr noundef @.str.32, ptr noundef %arraydecay76, ptr noundef %arraydecay77, i32 noundef %33, i32 noundef %34), !dbg !2560
  call void @dns_rdataset_disassociate(ptr noundef %rdataset), !dbg !2561
  br label %do.body79, !dbg !2562

do.body79:                                        ; preds = %do.end73
  store i32 41, ptr %result, align 4, !dbg !2563
  %35 = load i32, ptr %result, align 4, !dbg !2565
  %cmp80 = icmp ne i32 %35, 0, !dbg !2565
  br i1 %cmp80, label %if.then82, label %if.end83, !dbg !2563

if.then82:                                        ; preds = %do.body79
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2565

if.end83:                                         ; preds = %do.body79
  br label %do.cond84, !dbg !2563

do.cond84:                                        ; preds = %if.end83
  br label %do.end85, !dbg !2563

do.end85:                                         ; preds = %do.cond84
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2567
  br label %cleanup, !dbg !2567

cleanup:                                          ; preds = %if.then82, %if.then63, %do.end85
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #9, !dbg !2567
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #9, !dbg !2567
  call void @llvm.lifetime.end.p0(i64 255, ptr %tbuf) #9, !dbg !2567
  call void @llvm.lifetime.end.p0(i64 1024, ptr %nbuf) #9, !dbg !2567
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup130 [
    i32 0, label %cleanup.cont
    i32 4, label %cleanup109
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end89, !dbg !2568

if.end89:                                         ; preds = %cleanup.cont, %for.body47
  call void @dns_rdataset_disassociate(ptr noundef %rdataset), !dbg !2569
  br label %for.inc, !dbg !2570

for.inc:                                          ; preds = %if.end89
  %36 = load ptr, ptr %rdsiter, align 8, !dbg !2571
  %call90 = call i32 @dns_rdatasetiter_next(ptr noundef %36), !dbg !2572
  store i32 %call90, ptr %result, align 4, !dbg !2573
  br label %for.cond44, !dbg !2574, !llvm.loop !2575

for.end:                                          ; preds = %for.cond44
  %37 = load i32, ptr %result, align 4, !dbg !2577
  %cmp91 = icmp eq i32 %37, 29, !dbg !2579
  br i1 %cmp91, label %if.then93, label %if.end94, !dbg !2580

if.then93:                                        ; preds = %for.end
  store i32 0, ptr %result, align 4, !dbg !2581
  br label %if.end94, !dbg !2582

if.end94:                                         ; preds = %if.then93, %for.end
  br label %do.body95, !dbg !2583

do.body95:                                        ; preds = %if.end94
  %38 = load i32, ptr %result, align 4, !dbg !2584
  store i32 %38, ptr %result, align 4, !dbg !2584
  %39 = load i32, ptr %result, align 4, !dbg !2586
  %cmp96 = icmp ne i32 %39, 0, !dbg !2586
  br i1 %cmp96, label %if.then98, label %if.end99, !dbg !2584

if.then98:                                        ; preds = %do.body95
  br label %cleanup109, !dbg !2586

if.end99:                                         ; preds = %do.body95
  br label %do.cond100, !dbg !2584

do.cond100:                                       ; preds = %if.end99
  br label %do.end101, !dbg !2584

do.end101:                                        ; preds = %do.cond100
  call void @dns_rdatasetiter_destroy(ptr noundef %rdsiter), !dbg !2588
  %40 = load ptr, ptr %db, align 8, !dbg !2589
  call void @dns_db_detachnode(ptr noundef %40, ptr noundef %node), !dbg !2590
  br label %for.inc102, !dbg !2591

for.inc102:                                       ; preds = %do.end101
  %41 = load ptr, ptr %dbiter, align 8, !dbg !2592
  %call103 = call i32 @dns_dbiterator_next(ptr noundef %41), !dbg !2593
  store i32 %call103, ptr %result, align 4, !dbg !2594
  br label %for.cond, !dbg !2595, !llvm.loop !2596

for.end104:                                       ; preds = %for.cond
  %42 = load i32, ptr %result, align 4, !dbg !2598
  %cmp105 = icmp eq i32 %42, 29, !dbg !2600
  br i1 %cmp105, label %if.then107, label %if.end108, !dbg !2601

if.then107:                                       ; preds = %for.end104
  store i32 0, ptr %result, align 4, !dbg !2602
  br label %if.end108, !dbg !2603

if.end108:                                        ; preds = %if.then107, %for.end104
  br label %cleanup109, !dbg !2604

cleanup109:                                       ; preds = %if.end108, %cleanup, %if.then98, %if.then39, %if.then31, %if.then16, %if.then8, %if.then
  tail call void @llvm.dbg.label(metadata !2447), !dbg !2605
  %43 = load ptr, ptr %node, align 8, !dbg !2606
  %cmp110 = icmp ne ptr %43, null, !dbg !2608
  br i1 %cmp110, label %if.then112, label %if.end113, !dbg !2609

if.then112:                                       ; preds = %cleanup109
  %44 = load ptr, ptr %db, align 8, !dbg !2610
  call void @dns_db_detachnode(ptr noundef %44, ptr noundef %node), !dbg !2611
  br label %if.end113, !dbg !2611

if.end113:                                        ; preds = %if.then112, %cleanup109
  %45 = load ptr, ptr %rdsiter, align 8, !dbg !2612
  %cmp114 = icmp ne ptr %45, null, !dbg !2614
  br i1 %cmp114, label %if.then116, label %if.end117, !dbg !2615

if.then116:                                       ; preds = %if.end113
  call void @dns_rdatasetiter_destroy(ptr noundef %rdsiter), !dbg !2616
  br label %if.end117, !dbg !2616

if.end117:                                        ; preds = %if.then116, %if.end113
  %46 = load ptr, ptr %dbiter, align 8, !dbg !2617
  %cmp118 = icmp ne ptr %46, null, !dbg !2619
  br i1 %cmp118, label %if.then120, label %if.end121, !dbg !2620

if.then120:                                       ; preds = %if.end117
  call void @dns_dbiterator_destroy(ptr noundef %dbiter), !dbg !2621
  br label %if.end121, !dbg !2621

if.end121:                                        ; preds = %if.then120, %if.end117
  %47 = load ptr, ptr %version, align 8, !dbg !2622
  %cmp122 = icmp ne ptr %47, null, !dbg !2624
  br i1 %cmp122, label %if.then124, label %if.end125, !dbg !2625

if.then124:                                       ; preds = %if.end121
  %48 = load ptr, ptr %db, align 8, !dbg !2626
  call void @dns_db_closeversion(ptr noundef %48, ptr noundef %version, i1 noundef zeroext false), !dbg !2627
  br label %if.end125, !dbg !2627

if.end125:                                        ; preds = %if.then124, %if.end121
  %49 = load ptr, ptr %db, align 8, !dbg !2628
  %cmp126 = icmp ne ptr %49, null, !dbg !2630
  br i1 %cmp126, label %if.then128, label %if.end129, !dbg !2631

if.then128:                                       ; preds = %if.end125
  call void @dns_db_detach(ptr noundef %db), !dbg !2632
  br label %if.end129, !dbg !2632

if.end129:                                        ; preds = %if.then128, %if.end125
  %50 = load i32, ptr %result, align 4, !dbg !2633
  store i32 %50, ptr %retval, align 4, !dbg !2634
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup130, !dbg !2634

cleanup130:                                       ; preds = %if.end129, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #9, !dbg !2635
  call void @llvm.lifetime.end.p0(i64 528, ptr %fname) #9, !dbg !2635
  call void @llvm.lifetime.end.p0(i64 120, ptr %rdataset) #9, !dbg !2635
  call void @llvm.lifetime.end.p0(i64 8, ptr %rdsiter) #9, !dbg !2635
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbiter) #9, !dbg !2635
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #9, !dbg !2635
  call void @llvm.lifetime.end.p0(i64 8, ptr %version) #9, !dbg !2635
  call void @llvm.lifetime.end.p0(i64 8, ptr %db) #9, !dbg !2635
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !2635
  %51 = load i32, ptr %retval, align 4, !dbg !2635
  ret i32 %51, !dbg !2635
}

; Function Attrs: null_pointer_is_valid
declare !dbg !2636 void @dns_zone_detach(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @dump_zone(ptr noundef %zonename, ptr noundef %zone, ptr noundef %filename, i32 noundef %fileformat, ptr noundef %style, i32 noundef %rawversion) #0 !dbg !2639 {
entry:
  %retval = alloca i32, align 4
  %zonename.addr = alloca ptr, align 8
  %zone.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %fileformat.addr = alloca i32, align 4
  %style.addr = alloca ptr, align 8
  %rawversion.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %output = alloca ptr, align 8
  %flags = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %zonename, ptr %zonename.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %zonename.addr, metadata !2644, metadata !DIExpression()), !dbg !2653
  store ptr %zone, ptr %zone.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %zone.addr, metadata !2645, metadata !DIExpression()), !dbg !2654
  store ptr %filename, ptr %filename.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !2646, metadata !DIExpression()), !dbg !2655
  store i32 %fileformat, ptr %fileformat.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %fileformat.addr, metadata !2647, metadata !DIExpression()), !dbg !2656
  store ptr %style, ptr %style.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %style.addr, metadata !2648, metadata !DIExpression()), !dbg !2657
  store i32 %rawversion, ptr %rawversion.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %rawversion.addr, metadata !2649, metadata !DIExpression()), !dbg !2658
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !2659
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !2650, metadata !DIExpression()), !dbg !2660
  call void @llvm.lifetime.start.p0(i64 8, ptr %output) #9, !dbg !2661
  tail call void @llvm.dbg.declare(metadata ptr %output, metadata !2651, metadata !DIExpression()), !dbg !2662
  %0 = load ptr, ptr @stdout, align 8, !dbg !2663
  store ptr %0, ptr %output, align 8, !dbg !2662
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !2664
  tail call void @llvm.dbg.declare(metadata ptr %flags, metadata !2652, metadata !DIExpression()), !dbg !2665
  %1 = load i32, ptr %fileformat.addr, align 4, !dbg !2666
  %cmp = icmp eq i32 %1, 1, !dbg !2667
  %2 = zext i1 %cmp to i64, !dbg !2668
  %cond = select i1 %cmp, ptr @.str.7, ptr @.str.8, !dbg !2668
  store ptr %cond, ptr %flags, align 8, !dbg !2669
  %3 = load i32, ptr @debug, align 4, !dbg !2670
  %tobool = icmp ne i32 %3, 0, !dbg !2670
  br i1 %tobool, label %if.then, label %if.end6, !dbg !2672

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %filename.addr, align 8, !dbg !2673
  %cmp1 = icmp ne ptr %4, null, !dbg !2676
  br i1 %cmp1, label %land.lhs.true, label %if.else, !dbg !2677

land.lhs.true:                                    ; preds = %if.then
  %5 = load ptr, ptr %filename.addr, align 8, !dbg !2678
  %call = call i32 @strcmp(ptr noundef %5, ptr noundef @.str.9) #11, !dbg !2679
  %cmp2 = icmp ne i32 %call, 0, !dbg !2680
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !2681

if.then3:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr @stderr, align 8, !dbg !2682
  %7 = load ptr, ptr %zonename.addr, align 8, !dbg !2683
  %8 = load ptr, ptr %filename.addr, align 8, !dbg !2684
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.10, ptr noundef %7, ptr noundef %8), !dbg !2685
  br label %if.end, !dbg !2685

if.else:                                          ; preds = %land.lhs.true, %if.then
  %9 = load ptr, ptr @stderr, align 8, !dbg !2686
  %10 = load ptr, ptr %zonename.addr, align 8, !dbg !2687
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.11, ptr noundef %10), !dbg !2688
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end6, !dbg !2689

if.end6:                                          ; preds = %if.end, %entry
  %11 = load ptr, ptr %filename.addr, align 8, !dbg !2690
  %cmp7 = icmp ne ptr %11, null, !dbg !2692
  br i1 %cmp7, label %land.lhs.true8, label %if.end17, !dbg !2693

land.lhs.true8:                                   ; preds = %if.end6
  %12 = load ptr, ptr %filename.addr, align 8, !dbg !2694
  %call9 = call i32 @strcmp(ptr noundef %12, ptr noundef @.str.9) #11, !dbg !2695
  %cmp10 = icmp ne i32 %call9, 0, !dbg !2696
  br i1 %cmp10, label %if.then11, label %if.end17, !dbg !2697

if.then11:                                        ; preds = %land.lhs.true8
  %13 = load ptr, ptr %filename.addr, align 8, !dbg !2698
  %14 = load ptr, ptr %flags, align 8, !dbg !2700
  %call12 = call i32 @isc_stdio_open(ptr noundef %13, ptr noundef %14, ptr noundef %output), !dbg !2701
  store i32 %call12, ptr %result, align 4, !dbg !2702
  %15 = load i32, ptr %result, align 4, !dbg !2703
  %cmp13 = icmp ne i32 %15, 0, !dbg !2705
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !2706

if.then14:                                        ; preds = %if.then11
  %16 = load ptr, ptr @stderr, align 8, !dbg !2707
  %17 = load ptr, ptr %filename.addr, align 8, !dbg !2709
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.12, ptr noundef %17), !dbg !2710
  store i32 25, ptr %retval, align 4, !dbg !2711
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2711

if.end16:                                         ; preds = %if.then11
  br label %if.end17, !dbg !2712

if.end17:                                         ; preds = %if.end16, %land.lhs.true8, %if.end6
  %18 = load ptr, ptr %zone.addr, align 8, !dbg !2713
  %19 = load ptr, ptr %output, align 8, !dbg !2714
  %20 = load i32, ptr %fileformat.addr, align 4, !dbg !2715
  %21 = load ptr, ptr %style.addr, align 8, !dbg !2716
  %22 = load i32, ptr %rawversion.addr, align 4, !dbg !2717
  %call18 = call i32 @dns_zone_dumptostream(ptr noundef %18, ptr noundef %19, i32 noundef %20, ptr noundef %21, i32 noundef %22), !dbg !2718
  store i32 %call18, ptr %result, align 4, !dbg !2719
  %23 = load ptr, ptr %output, align 8, !dbg !2720
  %24 = load ptr, ptr @stdout, align 8, !dbg !2722
  %cmp19 = icmp ne ptr %23, %24, !dbg !2723
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !2724

if.then20:                                        ; preds = %if.end17
  %25 = load ptr, ptr %output, align 8, !dbg !2725
  %call21 = call i32 @isc_stdio_close(ptr noundef %25), !dbg !2726
  br label %if.end22, !dbg !2727

if.end22:                                         ; preds = %if.then20, %if.end17
  %26 = load i32, ptr %result, align 4, !dbg !2728
  store i32 %26, ptr %retval, align 4, !dbg !2729
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2729

cleanup:                                          ; preds = %if.end22, %if.then14
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !2730
  call void @llvm.lifetime.end.p0(i64 8, ptr %output) #9, !dbg !2730
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !2730
  %27 = load i32, ptr %retval, align 4, !dbg !2730
  ret i32 %27, !dbg !2730
}

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(read)
declare !dbg !2731 i32 @strcmp(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare !dbg !2734 i32 @isc_stdio_open(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2739 i32 @dns_zone_dumptostream(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2742 i32 @isc_stdio_close(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !2745 void @dns_name_format(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2748 i32 @dns_name_countlabels(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2751 i64 @strlcat(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2755 i32 @getaddrinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(read)
declare !dbg !2763 i32 @strcasecmp(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal zeroext i1 @logged(ptr noundef %key, i32 noundef %value) #0 !dbg !2765 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2769, metadata !DIExpression()), !dbg !2772
  store i32 %value, ptr %value.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !2770, metadata !DIExpression()), !dbg !2773
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !2774
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !2771, metadata !DIExpression()), !dbg !2775
  %0 = load ptr, ptr @symtab, align 8, !dbg !2776
  %cmp = icmp eq ptr %0, null, !dbg !2778
  br i1 %cmp, label %if.then, label %if.end, !dbg !2779

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2780
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2780

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @symtab, align 8, !dbg !2781
  %2 = load ptr, ptr %key.addr, align 8, !dbg !2782
  %3 = load i32, ptr %value.addr, align 4, !dbg !2783
  %call = call i32 @isc_symtab_lookup(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef null), !dbg !2784
  store i32 %call, ptr %result, align 4, !dbg !2785
  %4 = load i32, ptr %result, align 4, !dbg !2786
  %cmp1 = icmp eq i32 %4, 0, !dbg !2788
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2789

if.then2:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !2790
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2790

if.end3:                                          ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !2791
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2791

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !2792
  %5 = load i1, ptr %retval, align 1, !dbg !2792
  ret i1 %5, !dbg !2792
}

; Function Attrs: null_pointer_is_valid
declare !dbg !2793 void @dns_zone_log(ptr noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @add(ptr noundef %key, i32 noundef %value) #0 !dbg !2796 {
entry:
  %key.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %symvalue = alloca %union.isc_symvalue, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2800, metadata !DIExpression()), !dbg !2811
  store i32 %value, ptr %value.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !2801, metadata !DIExpression()), !dbg !2812
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !2813
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !2802, metadata !DIExpression()), !dbg !2814
  call void @llvm.lifetime.start.p0(i64 8, ptr %symvalue) #9, !dbg !2815
  tail call void @llvm.dbg.declare(metadata ptr %symvalue, metadata !2803, metadata !DIExpression()), !dbg !2816
  %0 = load ptr, ptr @sym_mctx, align 8, !dbg !2817
  %cmp = icmp eq ptr %0, null, !dbg !2819
  br i1 %cmp, label %if.then, label %if.end3, !dbg !2820

if.then:                                          ; preds = %entry
  %call = call i32 @isc_mem_create(i64 noundef 0, i64 noundef 0, ptr noundef @sym_mctx), !dbg !2821
  store i32 %call, ptr %result, align 4, !dbg !2823
  %1 = load i32, ptr %result, align 4, !dbg !2824
  %cmp1 = icmp ne i32 %1, 0, !dbg !2826
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !2827

if.then2:                                         ; preds = %if.then
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2828

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !2829

if.end3:                                          ; preds = %if.end, %entry
  %2 = load ptr, ptr @symtab, align 8, !dbg !2830
  %cmp4 = icmp eq ptr %2, null, !dbg !2832
  br i1 %cmp4, label %if.then5, label %if.end10, !dbg !2833

if.then5:                                         ; preds = %if.end3
  %3 = load ptr, ptr @sym_mctx, align 8, !dbg !2834
  %4 = load ptr, ptr @sym_mctx, align 8, !dbg !2836
  %call6 = call i32 @isc_symtab_create(ptr noundef %3, i32 noundef 100, ptr noundef @freekey, ptr noundef %4, i1 noundef zeroext false, ptr noundef @symtab), !dbg !2837
  store i32 %call6, ptr %result, align 4, !dbg !2838
  %5 = load i32, ptr %result, align 4, !dbg !2839
  %cmp7 = icmp ne i32 %5, 0, !dbg !2841
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2842

if.then8:                                         ; preds = %if.then5
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2843

if.end9:                                          ; preds = %if.then5
  br label %if.end10, !dbg !2844

if.end10:                                         ; preds = %if.end9, %if.end3
  %6 = load ptr, ptr @sym_mctx, align 8, !dbg !2845
  %7 = load ptr, ptr %key.addr, align 8, !dbg !2845
  %call11 = call ptr @isc__mem_strdup(ptr noundef %6, ptr noundef %7, ptr noundef @.str, i32 noundef 144), !dbg !2845
  store ptr %call11, ptr %key.addr, align 8, !dbg !2846
  %8 = load ptr, ptr %key.addr, align 8, !dbg !2847
  %cmp12 = icmp eq ptr %8, null, !dbg !2849
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2850

if.then13:                                        ; preds = %if.end10
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2851

if.end14:                                         ; preds = %if.end10
  store ptr null, ptr %symvalue, align 8, !dbg !2852
  %9 = load ptr, ptr @symtab, align 8, !dbg !2853
  %10 = load ptr, ptr %key.addr, align 8, !dbg !2854
  %11 = load i32, ptr %value.addr, align 4, !dbg !2855
  %coerce.dive = getelementptr inbounds %union.isc_symvalue, ptr %symvalue, i32 0, i32 0, !dbg !2856
  %12 = load ptr, ptr %coerce.dive, align 8, !dbg !2856
  %call15 = call i32 @isc_symtab_define(ptr noundef %9, ptr noundef %10, i32 noundef %11, ptr %12, i32 noundef 0), !dbg !2856
  store i32 %call15, ptr %result, align 4, !dbg !2857
  %13 = load i32, ptr %result, align 4, !dbg !2858
  %cmp16 = icmp ne i32 %13, 0, !dbg !2860
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !2861

if.then17:                                        ; preds = %if.end14
  br label %do.body, !dbg !2862

do.body:                                          ; preds = %if.then17
  %14 = load ptr, ptr @sym_mctx, align 8, !dbg !2863
  %15 = load ptr, ptr %key.addr, align 8, !dbg !2863
  call void @isc__mem_free(ptr noundef %14, ptr noundef %15, ptr noundef @.str, i32 noundef 152), !dbg !2863
  store ptr null, ptr %key.addr, align 8, !dbg !2863
  br label %do.cond, !dbg !2863

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2863

do.end:                                           ; preds = %do.cond
  br label %if.end18, !dbg !2863

if.end18:                                         ; preds = %do.end, %if.end14
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2865
  br label %cleanup, !dbg !2865

cleanup:                                          ; preds = %if.end18, %if.then13, %if.then8, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %symvalue) #9, !dbg !2865
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !2865
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2865

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !2866 void @freeaddrinfo(ptr noundef) #7

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !2869 ptr @gai_strerror(i32 noundef) #7

; Function Attrs: null_pointer_is_valid
declare !dbg !2872 i32 @isc_symtab_lookup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2876 i32 @isc_mem_create(i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2879 i32 @isc_symtab_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @freekey(ptr noundef %key, i32 noundef %type, ptr %value.coerce, ptr noundef %userarg) #0 !dbg !2887 {
entry:
  %value = alloca %union.isc_symvalue, align 8
  %key.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %userarg.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %union.isc_symvalue, ptr %value, i32 0, i32 0
  store ptr %value.coerce, ptr %coerce.dive, align 8
  store ptr %key, ptr %key.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2889, metadata !DIExpression()), !dbg !2893
  store i32 %type, ptr %type.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2890, metadata !DIExpression()), !dbg !2894
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !2891, metadata !DIExpression()), !dbg !2895
  store ptr %userarg, ptr %userarg.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %userarg.addr, metadata !2892, metadata !DIExpression()), !dbg !2896
  %0 = load i32, ptr %type.addr, align 4, !dbg !2897
  br label %do.body, !dbg !2898

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %userarg.addr, align 8, !dbg !2899
  %2 = load ptr, ptr %key.addr, align 8, !dbg !2899
  call void @isc__mem_free(ptr noundef %1, ptr noundef %2, ptr noundef @.str, i32 noundef 123), !dbg !2899
  store ptr null, ptr %key.addr, align 8, !dbg !2899
  br label %do.end, !dbg !2899

do.end:                                           ; preds = %do.body
  ret void, !dbg !2901
}

; Function Attrs: null_pointer_is_valid
declare !dbg !2902 ptr @isc__mem_strdup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2903 i32 @isc_symtab_define(ptr noundef, ptr noundef, i32 noundef, ptr, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2907 void @isc__mem_free(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2908 zeroext i1 @dns_rdataset_isassociated(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2911 i32 @dns_rdataset_first(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2912 void @dns_rdataset_current(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(read)
declare !dbg !2913 i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !2916 ptr @inet_ntop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #7

; Function Attrs: null_pointer_is_valid
declare !dbg !2922 void @dns_rdata_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2925 i32 @dns_rdataset_next(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2926 void @dns_rdataset_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2927 i32 @dns_zone_getdb(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2930 i32 @dns_db_newversion(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2931 i32 @dns_db_createiterator(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2932 i32 @dns_dbiterator_first(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2933 i32 @dns_dbiterator_current(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2934 i32 @dns_db_allrdatasets(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2935 i32 @dns_rdatasetiter_first(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2936 void @dns_rdatasetiter_current(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2937 i32 @dns_rdatatype_totext(i16 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2941 void @dns_rdataset_disassociate(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2942 i32 @dns_rdatasetiter_next(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2943 void @dns_rdatasetiter_destroy(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2944 void @dns_db_detachnode(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2945 i32 @dns_dbiterator_next(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2946 void @dns_dbiterator_destroy(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2947 void @dns_db_closeversion(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !2948 void @dns_db_detach(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #8

attributes #0 = { nounwind null_pointer_is_valid uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!483, !484, !485, !486, !487}
!llvm.ident = !{!488}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 83, type: !482, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !209, globals: !267, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "check-tool.c", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/check", checksumkind: CSK_MD5, checksum: "037dcaf45b34c711eb2c5ff23c6055f2")
!4 = !{!5, !39, !44, !51, !58, !69, !81, !112, !118, !206}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 55, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "lib/dns/include/dns/zone.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "79052a5b8c22d236ae2b4e2129d4a54a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!9 = !DIEnumerator(name: "DNS_ZONEOPT_MANYERRORS", value: 1)
!10 = !DIEnumerator(name: "DNS_ZONEOPT_IXFRFROMDIFFS", value: 2)
!11 = !DIEnumerator(name: "DNS_ZONEOPT_NOMERGE", value: 4)
!12 = !DIEnumerator(name: "DNS_ZONEOPT_CHECKNS", value: 8)
!13 = !DIEnumerator(name: "DNS_ZONEOPT_FATALNS", value: 16)
!14 = !DIEnumerator(name: "DNS_ZONEOPT_MULTIMASTER", value: 32)
!15 = !DIEnumerator(name: "DNS_ZONEOPT_USEALTXFRSRC", value: 64)
!16 = !DIEnumerator(name: "DNS_ZONEOPT_CHECKNAMES", value: 128)
!17 = !DIEnumerator(name: "DNS_ZONEOPT_CHECKNAMESFAIL", value: 256)
!18 = !DIEnumerator(name: "DNS_ZONEOPT_CHECKWILDCARD", value: 512)
!19 = !DIEnumerator(name: "DNS_ZONEOPT_CHECKMX", value: 1024)
!20 = !DIEnumerator(name: "DNS_ZONEOPT_CHECKMXFAIL", value: 2048)
!21 = !DIEnumerator(name: "DNS_ZONEOPT_CHECKINTEGRITY", value: 4096)
!22 = !DIEnumerator(name: "DNS_ZONEOPT_CHECKSIBLING", value: 8192)
!23 = !DIEnumerator(name: "DNS_ZONEOPT_NOCHECKNS", value: 16384)
!24 = !DIEnumerator(name: "DNS_ZONEOPT_WARNMXCNAME", value: 32768)
!25 = !DIEnumerator(name: "DNS_ZONEOPT_IGNOREMXCNAME", value: 65536)
!26 = !DIEnumerator(name: "DNS_ZONEOPT_WARNSRVCNAME", value: 131072)
!27 = !DIEnumerator(name: "DNS_ZONEOPT_IGNORESRVCNAME", value: 262144)
!28 = !DIEnumerator(name: "DNS_ZONEOPT_UPDATECHECKKSK", value: 524288)
!29 = !DIEnumerator(name: "DNS_ZONEOPT_TRYTCPREFRESH", value: 1048576)
!30 = !DIEnumerator(name: "DNS_ZONEOPT_NOTIFYTOSOA", value: 2097152)
!31 = !DIEnumerator(name: "DNS_ZONEOPT_NSEC3TESTZONE", value: 4194304)
!32 = !DIEnumerator(name: "DNS_ZONEOPT_SECURETOINSECURE", value: 8388608)
!33 = !DIEnumerator(name: "DNS_ZONEOPT_DNSKEYKSKONLY", value: 16777216)
!34 = !DIEnumerator(name: "DNS_ZONEOPT_CHECKDUPRR", value: 33554432)
!35 = !DIEnumerator(name: "DNS_ZONEOPT_CHECKDUPRRFAIL", value: 67108864)
!36 = !DIEnumerator(name: "DNS_ZONEOPT_CHECKSPF", value: 134217728)
!37 = !DIEnumerator(name: "DNS_ZONEOPT_CHECKTTL", value: 268435456)
!38 = !DIEnumerator(name: "DNS_ZONEOPT_AUTOEMPTY", value: 536870912)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !40, line: 91, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "lib/isc/include/isc/log.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "6c5d6bf932d34a38240a36d83b90e60a")
!41 = !{!42, !43}
!42 = !DIEnumerator(name: "isc_log_rollsuffix_increment", value: 0)
!43 = !DIEnumerator(name: "isc_log_rollsuffix_timestamp", value: 1)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 213, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "lib/dns/include/dns/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "f35a187441d60b1b4301c816339e75b0")
!46 = !{!47, !48, !49, !50}
!47 = !DIEnumerator(name: "dns_masterformat_none", value: 0)
!48 = !DIEnumerator(name: "dns_masterformat_text", value: 1)
!49 = !DIEnumerator(name: "dns_masterformat_raw", value: 2)
!50 = !DIEnumerator(name: "dns_masterformat_map", value: 3)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !52, line: 25, baseType: !7, size: 32, elements: !53)
!52 = !DIFile(filename: "lib/isc/include/isc/assertions.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "d437064b1a440cf5712e89d244b6208d")
!53 = !{!54, !55, !56, !57}
!54 = !DIEnumerator(name: "isc_assertiontype_require", value: 0)
!55 = !DIEnumerator(name: "isc_assertiontype_ensure", value: 1)
!56 = !DIEnumerator(name: "isc_assertiontype_insist", value: 2)
!57 = !DIEnumerator(name: "isc_assertiontype_invariant", value: 3)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 37, baseType: !7, size: 32, elements: !59)
!59 = !{!60, !61, !62, !63, !64, !65, !66, !67, !68}
!60 = !DIEnumerator(name: "dns_zone_none", value: 0)
!61 = !DIEnumerator(name: "dns_zone_master", value: 1)
!62 = !DIEnumerator(name: "dns_zone_slave", value: 2)
!63 = !DIEnumerator(name: "dns_zone_mirror", value: 3)
!64 = !DIEnumerator(name: "dns_zone_stub", value: 4)
!65 = !DIEnumerator(name: "dns_zone_staticstub", value: 5)
!66 = !DIEnumerator(name: "dns_zone_key", value: 6)
!67 = !DIEnumerator(name: "dns_zone_dlz", value: 7)
!68 = !DIEnumerator(name: "dns_zone_redirect", value: 8)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !70, line: 24, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "", checksumkind: CSK_MD5, checksum: "0d4e972fdeb3da9a5bc94fa41144e9f8")
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80}
!72 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!73 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!74 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!75 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!76 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!77 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!78 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!79 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!80 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !82, line: 40, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!84 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!85 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!86 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!87 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!88 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!89 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!90 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!91 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!92 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!93 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!94 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!95 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!96 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!97 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!98 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!99 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!100 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!101 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!102 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!103 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!104 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!105 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!106 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!107 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!108 = !DIEnumerator(name: "IPPROTO_ETHERNET", value: 143)
!109 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!110 = !DIEnumerator(name: "IPPROTO_MPTCP", value: 262)
!111 = !DIEnumerator(name: "IPPROTO_MAX", value: 263)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !113, line: 100, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "lib/isc/include/isc/symtab.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "edd8405072f3a07e3d7f305791ab108b")
!114 = !{!115, !116, !117}
!115 = !DIEnumerator(name: "isc_symexists_reject", value: 0)
!116 = !DIEnumerator(name: "isc_symexists_replace", value: 1)
!117 = !DIEnumerator(name: "isc_symexists_add", value: 2)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !119, line: 21, baseType: !7, size: 32, elements: !120)
!119 = !DIFile(filename: "lib/dns/include/dns/enumtype.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "11dbf2b1e0a48ddc2542c96b9ee9da38")
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205}
!121 = !DIEnumerator(name: "dns_rdatatype_none", value: 0)
!122 = !DIEnumerator(name: "dns_rdatatype_a", value: 1)
!123 = !DIEnumerator(name: "dns_rdatatype_ns", value: 2)
!124 = !DIEnumerator(name: "dns_rdatatype_md", value: 3)
!125 = !DIEnumerator(name: "dns_rdatatype_mf", value: 4)
!126 = !DIEnumerator(name: "dns_rdatatype_cname", value: 5)
!127 = !DIEnumerator(name: "dns_rdatatype_soa", value: 6)
!128 = !DIEnumerator(name: "dns_rdatatype_mb", value: 7)
!129 = !DIEnumerator(name: "dns_rdatatype_mg", value: 8)
!130 = !DIEnumerator(name: "dns_rdatatype_mr", value: 9)
!131 = !DIEnumerator(name: "dns_rdatatype_null", value: 10)
!132 = !DIEnumerator(name: "dns_rdatatype_wks", value: 11)
!133 = !DIEnumerator(name: "dns_rdatatype_ptr", value: 12)
!134 = !DIEnumerator(name: "dns_rdatatype_hinfo", value: 13)
!135 = !DIEnumerator(name: "dns_rdatatype_minfo", value: 14)
!136 = !DIEnumerator(name: "dns_rdatatype_mx", value: 15)
!137 = !DIEnumerator(name: "dns_rdatatype_txt", value: 16)
!138 = !DIEnumerator(name: "dns_rdatatype_rp", value: 17)
!139 = !DIEnumerator(name: "dns_rdatatype_afsdb", value: 18)
!140 = !DIEnumerator(name: "dns_rdatatype_x25", value: 19)
!141 = !DIEnumerator(name: "dns_rdatatype_isdn", value: 20)
!142 = !DIEnumerator(name: "dns_rdatatype_rt", value: 21)
!143 = !DIEnumerator(name: "dns_rdatatype_nsap", value: 22)
!144 = !DIEnumerator(name: "dns_rdatatype_nsap_ptr", value: 23)
!145 = !DIEnumerator(name: "dns_rdatatype_sig", value: 24)
!146 = !DIEnumerator(name: "dns_rdatatype_key", value: 25)
!147 = !DIEnumerator(name: "dns_rdatatype_px", value: 26)
!148 = !DIEnumerator(name: "dns_rdatatype_gpos", value: 27)
!149 = !DIEnumerator(name: "dns_rdatatype_aaaa", value: 28)
!150 = !DIEnumerator(name: "dns_rdatatype_loc", value: 29)
!151 = !DIEnumerator(name: "dns_rdatatype_nxt", value: 30)
!152 = !DIEnumerator(name: "dns_rdatatype_eid", value: 31)
!153 = !DIEnumerator(name: "dns_rdatatype_nimloc", value: 32)
!154 = !DIEnumerator(name: "dns_rdatatype_srv", value: 33)
!155 = !DIEnumerator(name: "dns_rdatatype_atma", value: 34)
!156 = !DIEnumerator(name: "dns_rdatatype_naptr", value: 35)
!157 = !DIEnumerator(name: "dns_rdatatype_kx", value: 36)
!158 = !DIEnumerator(name: "dns_rdatatype_cert", value: 37)
!159 = !DIEnumerator(name: "dns_rdatatype_a6", value: 38)
!160 = !DIEnumerator(name: "dns_rdatatype_dname", value: 39)
!161 = !DIEnumerator(name: "dns_rdatatype_sink", value: 40)
!162 = !DIEnumerator(name: "dns_rdatatype_opt", value: 41)
!163 = !DIEnumerator(name: "dns_rdatatype_apl", value: 42)
!164 = !DIEnumerator(name: "dns_rdatatype_ds", value: 43)
!165 = !DIEnumerator(name: "dns_rdatatype_sshfp", value: 44)
!166 = !DIEnumerator(name: "dns_rdatatype_ipseckey", value: 45)
!167 = !DIEnumerator(name: "dns_rdatatype_rrsig", value: 46)
!168 = !DIEnumerator(name: "dns_rdatatype_nsec", value: 47)
!169 = !DIEnumerator(name: "dns_rdatatype_dnskey", value: 48)
!170 = !DIEnumerator(name: "dns_rdatatype_dhcid", value: 49)
!171 = !DIEnumerator(name: "dns_rdatatype_nsec3", value: 50)
!172 = !DIEnumerator(name: "dns_rdatatype_nsec3param", value: 51)
!173 = !DIEnumerator(name: "dns_rdatatype_tlsa", value: 52)
!174 = !DIEnumerator(name: "dns_rdatatype_smimea", value: 53)
!175 = !DIEnumerator(name: "dns_rdatatype_hip", value: 55)
!176 = !DIEnumerator(name: "dns_rdatatype_ninfo", value: 56)
!177 = !DIEnumerator(name: "dns_rdatatype_rkey", value: 57)
!178 = !DIEnumerator(name: "dns_rdatatype_talink", value: 58)
!179 = !DIEnumerator(name: "dns_rdatatype_cds", value: 59)
!180 = !DIEnumerator(name: "dns_rdatatype_cdnskey", value: 60)
!181 = !DIEnumerator(name: "dns_rdatatype_openpgpkey", value: 61)
!182 = !DIEnumerator(name: "dns_rdatatype_csync", value: 62)
!183 = !DIEnumerator(name: "dns_rdatatype_zonemd", value: 63)
!184 = !DIEnumerator(name: "dns_rdatatype_spf", value: 99)
!185 = !DIEnumerator(name: "dns_rdatatype_nid", value: 104)
!186 = !DIEnumerator(name: "dns_rdatatype_l32", value: 105)
!187 = !DIEnumerator(name: "dns_rdatatype_l64", value: 106)
!188 = !DIEnumerator(name: "dns_rdatatype_lp", value: 107)
!189 = !DIEnumerator(name: "dns_rdatatype_eui48", value: 108)
!190 = !DIEnumerator(name: "dns_rdatatype_eui64", value: 109)
!191 = !DIEnumerator(name: "dns_rdatatype_tkey", value: 249)
!192 = !DIEnumerator(name: "dns_rdatatype_tsig", value: 250)
!193 = !DIEnumerator(name: "dns_rdatatype_uri", value: 256)
!194 = !DIEnumerator(name: "dns_rdatatype_caa", value: 257)
!195 = !DIEnumerator(name: "dns_rdatatype_avc", value: 258)
!196 = !DIEnumerator(name: "dns_rdatatype_doa", value: 259)
!197 = !DIEnumerator(name: "dns_rdatatype_amtrelay", value: 260)
!198 = !DIEnumerator(name: "dns_rdatatype_ta", value: 32768)
!199 = !DIEnumerator(name: "dns_rdatatype_dlv", value: 32769)
!200 = !DIEnumerator(name: "dns_rdatatype_keydata", value: 65533)
!201 = !DIEnumerator(name: "dns_rdatatype_ixfr", value: 251)
!202 = !DIEnumerator(name: "dns_rdatatype_axfr", value: 252)
!203 = !DIEnumerator(name: "dns_rdatatype_mailb", value: 253)
!204 = !DIEnumerator(name: "dns_rdatatype_maila", value: 254)
!205 = !DIEnumerator(name: "dns_rdatatype_any", value: 255)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 164, baseType: !7, size: 32, elements: !207)
!207 = !{!208}
!208 = !DIEnumerator(name: "dns_hash_sha1", value: 1)
!209 = !{!210, !211, !216, !222, !242}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatatype_t", file: !45, line: 126, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !218, line: 25, baseType: !219)
!218 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !220, line: 40, baseType: !221)
!220 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!221 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !82, line: 245, size: 128, elements: !224)
!224 = !{!225, !228, !230, !237}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !223, file: !82, line: 247, baseType: !226, size: 16)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !227, line: 28, baseType: !221)
!227 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!228 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !223, file: !82, line: 248, baseType: !229, size: 16, offset: 16)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !82, line: 123, baseType: !217)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !223, file: !82, line: 249, baseType: !231, size: 32, offset: 32)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !82, line: 31, size: 32, elements: !232)
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !231, file: !82, line: 33, baseType: !234, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !82, line: 30, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !218, line: 26, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !220, line: 42, baseType: !7)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !223, file: !82, line: 252, baseType: !238, size: 64, offset: 64)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 64, elements: !240)
!239 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!240 = !{!241}
!241 = !DISubrange(count: 8)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !82, line: 260, size: 224, elements: !244)
!244 = !{!245, !246, !247, !248, !266}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !243, file: !82, line: 262, baseType: !226, size: 16)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !243, file: !82, line: 263, baseType: !229, size: 16, offset: 16)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !243, file: !82, line: 264, baseType: !235, size: 32, offset: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !243, file: !82, line: 265, baseType: !249, size: 128, offset: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !82, line: 219, size: 128, elements: !250)
!250 = !{!251}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !249, file: !82, line: 226, baseType: !252, size: 128)
!252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !249, file: !82, line: 221, size: 128, elements: !253)
!253 = !{!254, !260, !262}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !252, file: !82, line: 223, baseType: !255, size: 128)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 128, elements: !258)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !218, line: 24, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !220, line: 38, baseType: !239)
!258 = !{!259}
!259 = !DISubrange(count: 16)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !252, file: !82, line: 224, baseType: !261, size: 128)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 128, elements: !240)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !252, file: !82, line: 225, baseType: !263, size: 128)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 128, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 4)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !243, file: !82, line: 266, baseType: !235, size: 32, offset: 192)
!267 = !{!0, !268, !270, !273, !275, !277, !279, !282, !287, !292, !297, !302, !307, !309, !314, !319, !322, !327, !332, !337, !342, !347, !352, !361, !363, !366, !368, !373, !378, !383, !388, !432, !437, !442, !444, !446, !451, !456, !458, !463, !465, !470, !475, !480}
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(name: "journal", scope: !2, file: !3, line: 84, type: !213, isLocal: false, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "nomerge", scope: !2, file: !3, line: 85, type: !272, isLocal: false, isDefinition: true)
!272 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(name: "docheckmx", scope: !2, file: !3, line: 87, type: !272, isLocal: false, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(name: "dochecksrv", scope: !2, file: !3, line: 88, type: !272, isLocal: false, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(name: "docheckns", scope: !2, file: !3, line: 89, type: !272, isLocal: false, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(name: "zone_options", scope: !2, file: !3, line: 95, type: !281, isLocal: false, isDefinition: true)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_zoneopt_t", file: !6, line: 86, baseType: !5)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !3, line: 538, type: !284, isLocal: true, isDefinition: true)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 104, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 13)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !3, line: 538, type: !289, isLocal: true, isDefinition: true)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 352, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 44)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !3, line: 550, type: !294, isLocal: true, isDefinition: true)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 56, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 7)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !3, line: 550, type: !299, isLocal: true, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 568, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 71)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !3, line: 554, type: !304, isLocal: true, isDefinition: true)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 552, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 69)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !3, line: 656, type: !289, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !3, line: 659, type: !311, isLocal: true, isDefinition: true)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 280, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 35)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !3, line: 725, type: !316, isLocal: true, isDefinition: true)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 24, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 3)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !3, line: 725, type: !321, isLocal: true, isDefinition: true)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 32, elements: !264)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !3, line: 728, type: !324, isLocal: true, isDefinition: true)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 16, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 2)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !3, line: 729, type: !329, isLocal: true, isDefinition: true)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 176, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 22)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !3, line: 732, type: !334, isLocal: true, isDefinition: true)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 112, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 14)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !3, line: 739, type: !339, isLocal: true, isDefinition: true)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 360, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 45)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !3, line: 111, type: !344, isLocal: true, isDefinition: true)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 8, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 1)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !3, line: 112, type: !349, isLocal: true, isDefinition: true)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 80, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 10)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "categories", scope: !2, file: !3, line: 110, type: !354, isLocal: true, isDefinition: true)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 384, elements: !317)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_logcategory_t", file: !356, line: 56, baseType: !357)
!356 = !DIFile(filename: "lib/isc/include/isc/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "6a355582c4f962c465b18bab43b68c96")
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_logcategory", file: !40, line: 104, size: 128, elements: !358)
!358 = !{!359, !360}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !357, file: !40, line: 105, baseType: !213, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !357, file: !40, line: 106, baseType: !7, size: 32, offset: 64)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !3, line: 81, type: !321, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(name: "dbtype", scope: !2, file: !3, line: 81, type: !365, isLocal: true, isDefinition: true)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 64, elements: !345)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !3, line: 389, type: !324, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !3, line: 412, type: !370, isLocal: true, isDefinition: true)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 408, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 51)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !3, line: 432, type: !375, isLocal: true, isDefinition: true)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 496, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 62)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !3, line: 443, type: !380, isLocal: true, isDefinition: true)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 216, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 27)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(name: "symtab", scope: !2, file: !3, line: 116, type: !385, isLocal: true, isDefinition: true)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_symtab_t", file: !356, line: 76, baseType: !387)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_symtab", file: !356, line: 76, flags: DIFlagFwdDecl)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(name: "sym_mctx", scope: !2, file: !3, line: 117, type: !390, isLocal: true, isDefinition: true)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_mem_t", file: !356, line: 59, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_mem", file: !393, line: 191, size: 128, elements: !394)
!393 = !DIFile(filename: "lib/isc/include/isc/mem.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "587a841195795b087519b89f298822b2")
!394 = !{!395, !396, !397}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !392, file: !393, line: 192, baseType: !7, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !392, file: !393, line: 193, baseType: !7, size: 32, offset: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !392, file: !393, line: 194, baseType: !398, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_memmethods_t", file: !393, line: 180, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_memmethods", file: !393, line: 170, size: 448, elements: !401)
!401 = !{!402, !409, !413, !418, !419, !423, !428}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "memget", scope: !400, file: !393, line: 171, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!210, !390, !406, !213, !7}
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !407, line: 70, baseType: !408)
!407 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!408 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "memput", scope: !400, file: !393, line: 172, baseType: !410, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !390, !210, !406, !213, !7}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "memputanddetach", scope: !400, file: !393, line: 173, baseType: !414, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !417, !210, !406, !213, !7}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "memallocate", scope: !400, file: !393, line: 175, baseType: !403, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "memreallocate", scope: !400, file: !393, line: 176, baseType: !420, size: 64, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!210, !390, !210, !406, !213, !7}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "memstrdup", scope: !400, file: !393, line: 178, baseType: !424, size: 64, offset: 320)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!427, !390, !213, !213, !7}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "memfree", scope: !400, file: !393, line: 179, baseType: !429, size: 64, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !390, !210, !213, !7}
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !3, line: 184, type: !434, isLocal: true, isDefinition: true)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 784, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 98)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !3, line: 186, type: !439, isLocal: true, isDefinition: true)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 880, elements: !440)
!440 = !{!441}
!441 = !DISubrange(count: 110)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !3, line: 223, type: !370, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !3, line: 238, type: !375, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !3, line: 275, type: !448, isLocal: true, isDefinition: true)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 288, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 36)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !3, line: 305, type: !453, isLocal: true, isDefinition: true)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 312, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 39)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !3, line: 329, type: !324, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !3, line: 334, type: !460, isLocal: true, isDefinition: true)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 40, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 5)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !3, line: 352, type: !453, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !3, line: 493, type: !467, isLocal: true, isDefinition: true)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 416, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 52)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !3, line: 513, type: !472, isLocal: true, isDefinition: true)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 504, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 63)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !3, line: 577, type: !477, isLocal: true, isDefinition: true)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 136, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 17)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !3, line: 608, type: !448, isLocal: true, isDefinition: true)
!482 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!483 = !{i32 7, !"Dwarf Version", i32 5}
!484 = !{i32 2, !"Debug Info Version", i32 3}
!485 = !{i32 1, !"wchar_size", i32 4}
!486 = !{i32 8, !"PIC Level", i32 2}
!487 = !{i32 7, !"uwtable", i32 2}
!488 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!489 = distinct !DISubprogram(name: "setup_logging", scope: !3, file: !3, line: 533, type: !490, scopeLine: 533, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !549)
!490 = !DISubroutineType(types: !491)
!491 = !{!492, !390, !493, !545}
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_result_t", file: !356, line: 67, baseType: !7)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !495, line: 7, baseType: !496)
!495 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !497, line: 49, size: 1728, elements: !498)
!497 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !514, !516, !517, !518, !521, !522, !524, !526, !529, !531, !534, !537, !538, !539, !540, !541}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !496, file: !497, line: 51, baseType: !482, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !496, file: !497, line: 54, baseType: !427, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !496, file: !497, line: 55, baseType: !427, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !496, file: !497, line: 56, baseType: !427, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !496, file: !497, line: 57, baseType: !427, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !496, file: !497, line: 58, baseType: !427, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !496, file: !497, line: 59, baseType: !427, size: 64, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !496, file: !497, line: 60, baseType: !427, size: 64, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !496, file: !497, line: 61, baseType: !427, size: 64, offset: 512)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !496, file: !497, line: 64, baseType: !427, size: 64, offset: 576)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !496, file: !497, line: 65, baseType: !427, size: 64, offset: 640)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !496, file: !497, line: 66, baseType: !427, size: 64, offset: 704)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !496, file: !497, line: 68, baseType: !512, size: 64, offset: 768)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !497, line: 36, flags: DIFlagFwdDecl)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !496, file: !497, line: 70, baseType: !515, size: 64, offset: 832)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !496, file: !497, line: 72, baseType: !482, size: 32, offset: 896)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !496, file: !497, line: 73, baseType: !482, size: 32, offset: 928)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !496, file: !497, line: 74, baseType: !519, size: 64, offset: 960)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !220, line: 152, baseType: !520)
!520 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !496, file: !497, line: 77, baseType: !221, size: 16, offset: 1024)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !496, file: !497, line: 78, baseType: !523, size: 8, offset: 1040)
!523 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !496, file: !497, line: 79, baseType: !525, size: 8, offset: 1048)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 8, elements: !345)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !496, file: !497, line: 81, baseType: !527, size: 64, offset: 1088)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !497, line: 43, baseType: null)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !496, file: !497, line: 89, baseType: !530, size: 64, offset: 1152)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !220, line: 153, baseType: !520)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !496, file: !497, line: 91, baseType: !532, size: 64, offset: 1216)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !497, line: 37, flags: DIFlagFwdDecl)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !496, file: !497, line: 92, baseType: !535, size: 64, offset: 1280)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !497, line: 38, flags: DIFlagFwdDecl)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !496, file: !497, line: 93, baseType: !515, size: 64, offset: 1344)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !496, file: !497, line: 94, baseType: !210, size: 64, offset: 1408)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !496, file: !497, line: 95, baseType: !406, size: 64, offset: 1472)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !496, file: !497, line: 96, baseType: !482, size: 32, offset: 1536)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !496, file: !497, line: 98, baseType: !542, size: 160, offset: 1568)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 160, elements: !543)
!543 = !{!544}
!544 = !DISubrange(count: 20)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_log_t", file: !356, line: 55, baseType: !548)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_log", file: !356, line: 55, flags: DIFlagFwdDecl)
!549 = !{!550, !551, !552, !553, !573, !577}
!550 = !DILocalVariable(name: "mctx", arg: 1, scope: !489, file: !3, line: 533, type: !390)
!551 = !DILocalVariable(name: "errout", arg: 2, scope: !489, file: !3, line: 533, type: !493)
!552 = !DILocalVariable(name: "logp", arg: 3, scope: !489, file: !3, line: 533, type: !545)
!553 = !DILocalVariable(name: "destination", scope: !489, file: !3, line: 534, type: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_logdestination_t", file: !40, line: 151, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "isc_logdestination", file: !40, line: 148, size: 320, elements: !556)
!556 = !{!557, !572}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !555, file: !40, line: 149, baseType: !558, size: 320)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_logfile_t", file: !40, line: 142, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_logfile", file: !40, line: 128, size: 320, elements: !560)
!560 = !{!561, !562, !563, !564, !566, !571}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !559, file: !40, line: 129, baseType: !493, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !559, file: !40, line: 130, baseType: !213, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "versions", scope: !559, file: !40, line: 131, baseType: !482, size: 32, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "suffix", scope: !559, file: !40, line: 132, baseType: !565, size: 32, offset: 160)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_log_rollsuffix_t", file: !40, line: 94, baseType: !39)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_size", scope: !559, file: !40, line: 140, baseType: !567, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_offset_t", file: !568, line: 24, baseType: !569)
!568 = !DIFile(filename: "../../lib/isc/unix/include/isc/offset.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/check", checksumkind: CSK_MD5, checksum: "bcf92adabe55bfd4bb2a4ec0fa8b7b63")
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !570, line: 63, baseType: !519)
!570 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!571 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_reached", scope: !559, file: !40, line: 141, baseType: !272, size: 8, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "facility", scope: !555, file: !40, line: 150, baseType: !482, size: 32)
!573 = !DILocalVariable(name: "logconfig", scope: !489, file: !3, line: 535, type: !574)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_logconfig_t", file: !356, line: 57, baseType: !576)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_logconfig", file: !356, line: 57, flags: DIFlagFwdDecl)
!577 = !DILocalVariable(name: "log", scope: !489, file: !3, line: 536, type: !546)
!578 = !DILocation(line: 533, column: 26, scope: !489)
!579 = !DILocation(line: 533, column: 38, scope: !489)
!580 = !DILocation(line: 533, column: 58, scope: !489)
!581 = !DILocation(line: 534, column: 2, scope: !489)
!582 = !DILocation(line: 534, column: 23, scope: !489)
!583 = !DILocation(line: 535, column: 2, scope: !489)
!584 = !DILocation(line: 535, column: 19, scope: !489)
!585 = !DILocation(line: 536, column: 2, scope: !489)
!586 = !DILocation(line: 536, column: 13, scope: !489)
!587 = !DILocation(line: 538, column: 2, scope: !489)
!588 = !DILocation(line: 539, column: 29, scope: !489)
!589 = !DILocation(line: 539, column: 2, scope: !489)
!590 = !DILocation(line: 540, column: 21, scope: !489)
!591 = !DILocation(line: 540, column: 2, scope: !489)
!592 = !DILocation(line: 541, column: 15, scope: !489)
!593 = !DILocation(line: 541, column: 2, scope: !489)
!594 = !DILocation(line: 542, column: 21, scope: !489)
!595 = !DILocation(line: 542, column: 2, scope: !489)
!596 = !DILocation(line: 543, column: 15, scope: !489)
!597 = !DILocation(line: 543, column: 2, scope: !489)
!598 = !DILocation(line: 544, column: 14, scope: !489)
!599 = !DILocation(line: 544, column: 2, scope: !489)
!600 = !DILocation(line: 546, column: 28, scope: !489)
!601 = !DILocation(line: 546, column: 19, scope: !489)
!602 = !DILocation(line: 546, column: 26, scope: !489)
!603 = !DILocation(line: 547, column: 19, scope: !489)
!604 = !DILocation(line: 547, column: 24, scope: !489)
!605 = !DILocation(line: 548, column: 19, scope: !489)
!606 = !DILocation(line: 548, column: 28, scope: !489)
!607 = !DILocation(line: 549, column: 19, scope: !489)
!608 = !DILocation(line: 549, column: 32, scope: !489)
!609 = !DILocation(line: 550, column: 2, scope: !489)
!610 = !DILocation(line: 554, column: 2, scope: !489)
!611 = !DILocation(line: 557, column: 10, scope: !489)
!612 = !DILocation(line: 557, column: 3, scope: !489)
!613 = !DILocation(line: 557, column: 8, scope: !489)
!614 = !DILocation(line: 559, column: 1, scope: !489)
!615 = !DILocation(line: 558, column: 2, scope: !489)
!616 = !DISubprogram(name: "isc_log_create", scope: !40, file: !40, line: 185, type: !617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!617 = !DISubroutineType(types: !618)
!618 = !{!492, !390, !545, !619}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!620 = !DISubprogram(name: "isc_error_runtimecheck", scope: !621, file: !621, line: 49, type: !622, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!621 = !DIFile(filename: "lib/isc/include/isc/error.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "e90b8298ea6c947397fab383c61a094d")
!622 = !DISubroutineType(types: !623)
!623 = !{null, !213, !482, !213}
!624 = !DISubprogram(name: "isc_log_registercategories", scope: !40, file: !40, line: 334, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !546, !627}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!628 = !DISubprogram(name: "isc_log_setcontext", scope: !40, file: !40, line: 868, type: !629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !546}
!631 = !DISubprogram(name: "dns_log_init", scope: !632, file: !632, line: 85, type: !629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!632 = !DIFile(filename: "lib/dns/include/dns/log.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "a1fcabf1d990e4dcfc8018b99f6db47c")
!633 = !DISubprogram(name: "dns_log_setcontext", scope: !632, file: !632, line: 101, type: !629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!634 = !DISubprogram(name: "cfg_log_init", scope: !635, file: !635, line: 31, type: !629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!635 = !DIFile(filename: "lib/isccfg/include/isccfg/log.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "c81f0e1f0f40c29aa1b8b2e2bb01501f")
!636 = !DISubprogram(name: "ns_log_init", scope: !637, file: !637, line: 48, type: !629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!637 = !DIFile(filename: "lib/ns/include/ns/log.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "d4b08e0ce0798c43f8faa6a5f8af455e")
!638 = !DISubprogram(name: "isc_log_createchannel", scope: !40, file: !40, line: 410, type: !639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!639 = !DISubroutineType(types: !640)
!640 = !{!492, !574, !213, !7, !482, !641, !7}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!643 = !DISubprogram(name: "isc_log_usechannel", scope: !40, file: !40, line: 479, type: !644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!644 = !DISubroutineType(types: !645)
!645 = !{!492, !574, !213, !646, !648}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_logmodule_t", file: !356, line: 58, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_logmodule", file: !40, line: 112, size: 128, elements: !652)
!652 = !{!653, !654}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !651, file: !40, line: 113, baseType: !213, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !651, file: !40, line: 114, baseType: !7, size: 32, offset: 64)
!655 = distinct !DISubprogram(name: "load_zone", scope: !3, file: !3, line: 644, type: !656, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !664)
!656 = !DISubroutineType(types: !657)
!657 = !{!492, !390, !213, !213, !658, !213, !659, !660}
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_masterformat_t", file: !45, line: 218, baseType: !44)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_ttl_t", file: !45, line: 144, baseType: !235)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_zone_t", file: !45, line: 149, baseType: !663)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_zone", file: !45, line: 149, flags: DIFlagFwdDecl)
!664 = !{!665, !666, !667, !668, !669, !670, !671, !672, !673, !675, !682, !701, !1020, !1021, !1022, !1028, !1034}
!665 = !DILocalVariable(name: "mctx", arg: 1, scope: !655, file: !3, line: 644, type: !390)
!666 = !DILocalVariable(name: "zonename", arg: 2, scope: !655, file: !3, line: 644, type: !213)
!667 = !DILocalVariable(name: "filename", arg: 3, scope: !655, file: !3, line: 644, type: !213)
!668 = !DILocalVariable(name: "fileformat", arg: 4, scope: !655, file: !3, line: 645, type: !658)
!669 = !DILocalVariable(name: "classname", arg: 5, scope: !655, file: !3, line: 645, type: !213)
!670 = !DILocalVariable(name: "maxttl", arg: 6, scope: !655, file: !3, line: 646, type: !659)
!671 = !DILocalVariable(name: "zonep", arg: 7, scope: !655, file: !3, line: 646, type: !660)
!672 = !DILocalVariable(name: "result", scope: !655, file: !3, line: 648, type: !492)
!673 = !DILocalVariable(name: "rdclass", scope: !655, file: !3, line: 649, type: !674)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdataclass_t", file: !45, line: 121, baseType: !217)
!675 = !DILocalVariable(name: "region", scope: !655, file: !3, line: 650, type: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_textregion_t", file: !356, line: 80, baseType: !677)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_textregion", file: !678, line: 26, size: 128, elements: !679)
!678 = !DIFile(filename: "lib/isc/include/isc/region.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "2ed4a07dc05ddbd48f51e2dc9be9f317")
!679 = !{!680, !681}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !677, file: !678, line: 27, baseType: !427, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !677, file: !678, line: 28, baseType: !7, size: 32, offset: 64)
!682 = !DILocalVariable(name: "buffer", scope: !655, file: !3, line: 651, type: !683)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_buffer_t", file: !356, line: 35, baseType: !684)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_buffer", file: !685, line: 173, size: 512, elements: !686)
!685 = !DIFile(filename: "lib/isc/include/isc/buffer.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "feec9784066f3891a27281dd5bdccd55")
!686 = !{!687, !688, !689, !690, !691, !692, !693, !699, !700}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !684, file: !685, line: 174, baseType: !7, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !684, file: !685, line: 175, baseType: !210, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !684, file: !685, line: 178, baseType: !7, size: 32, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !684, file: !685, line: 179, baseType: !7, size: 32, offset: 160)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !684, file: !685, line: 180, baseType: !7, size: 32, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !684, file: !685, line: 181, baseType: !7, size: 32, offset: 224)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !684, file: !685, line: 184, baseType: !694, size: 128, offset: 256)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !684, file: !685, line: 184, size: 128, elements: !695)
!695 = !{!696, !698}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !694, file: !685, line: 184, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !694, file: !685, line: 184, baseType: !697, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !684, file: !685, line: 186, baseType: !390, size: 64, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "autore", scope: !684, file: !685, line: 188, baseType: !272, size: 8, offset: 448)
!701 = !DILocalVariable(name: "fixorigin", scope: !655, file: !3, line: 652, type: !702)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_fixedname_t", file: !45, line: 87, baseType: !703)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_fixedname", file: !704, line: 61, size: 4224, elements: !705)
!704 = !DIFile(filename: "lib/dns/include/dns/fixedname.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "0de03067a9d468538b5b154e7da6cb18")
!705 = !{!706, !1010, !1015, !1016}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !703, file: !704, line: 62, baseType: !707, size: 640)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_name_t", file: !45, line: 107, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_name", file: !709, line: 104, size: 640, elements: !710)
!709 = !DIFile(filename: "lib/dns/include/dns/name.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "ec64c9a43875cd86cb4b0e37c1191a89")
!710 = !{!711, !712, !714, !715, !716, !717, !718, !719, !725}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !708, file: !709, line: 105, baseType: !7, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ndata", scope: !708, file: !709, line: 106, baseType: !713, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !708, file: !709, line: 107, baseType: !7, size: 32, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "labels", scope: !708, file: !709, line: 108, baseType: !7, size: 32, offset: 160)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !708, file: !709, line: 109, baseType: !7, size: 32, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !708, file: !709, line: 110, baseType: !713, size: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !708, file: !709, line: 111, baseType: !697, size: 64, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !708, file: !709, line: 112, baseType: !720, size: 128, offset: 384)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !708, file: !709, line: 112, size: 128, elements: !721)
!721 = !{!722, !724}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !720, file: !709, line: 112, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !720, file: !709, line: 112, baseType: !723, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !708, file: !709, line: 113, baseType: !726, size: 128, offset: 512)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !708, file: !709, line: 113, size: 128, elements: !727)
!727 = !{!728, !1009}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !726, file: !709, line: 113, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdataset_t", file: !45, line: 123, baseType: !731)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdataset", file: !732, line: 107, size: 960, elements: !733)
!732 = !DIFile(filename: "lib/dns/include/dns/rdataset.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "a2414fd23f718a363582354673aed6a8")
!733 = !{!734, !735, !986, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1002, !1003, !1004, !1005, !1006, !1007, !1008}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !731, file: !732, line: 108, baseType: !7, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !731, file: !732, line: 109, baseType: !736, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatasetmethods_t", file: !732, line: 96, baseType: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatasetmethods", file: !732, line: 64, size: 1024, elements: !739)
!739 = !{!740, !744, !748, !749, !768, !772, !776, !782, !786, !787, !788, !793, !794, !795, !799, !805}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "disassociate", scope: !738, file: !732, line: 65, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !729}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !738, file: !732, line: 66, baseType: !745, size: 64, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!492, !729}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !738, file: !732, line: 67, baseType: !745, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !738, file: !732, line: 68, baseType: !750, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{null, !729, !753}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdata_t", file: !45, line: 119, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdata", file: !756, line: 112, size: 320, elements: !757)
!756 = !DIFile(filename: "lib/dns/include/dns/rdata.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "e790fb4f336bc4fdcd566550403b32a6")
!757 = !{!758, !759, !760, !761, !762, !763}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !755, file: !756, line: 113, baseType: !713, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !755, file: !756, line: 114, baseType: !7, size: 32, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !755, file: !756, line: 115, baseType: !674, size: 16, offset: 96)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !755, file: !756, line: 116, baseType: !216, size: 16, offset: 112)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !755, file: !756, line: 117, baseType: !7, size: 32, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !755, file: !756, line: 118, baseType: !764, size: 128, offset: 192)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !755, file: !756, line: 118, size: 128, elements: !765)
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !764, file: !756, line: 118, baseType: !753, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !764, file: !756, line: 118, baseType: !753, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !738, file: !732, line: 70, baseType: !769, size: 64, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !729, !729}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !738, file: !732, line: 72, baseType: !773, size: 64, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!7, !729}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "addnoqname", scope: !738, file: !732, line: 73, baseType: !777, size: 64, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!492, !729, !780}
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "getnoqname", scope: !738, file: !732, line: 75, baseType: !783, size: 64, offset: 448)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!492, !729, !723, !729, !729}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "addclosest", scope: !738, file: !732, line: 79, baseType: !777, size: 64, offset: 512)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "getclosest", scope: !738, file: !732, line: 81, baseType: !783, size: 64, offset: 576)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "settrust", scope: !738, file: !732, line: 85, baseType: !789, size: 64, offset: 640)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !729, !792}
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_trust_t", file: !45, line: 140, baseType: !217)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "expire", scope: !738, file: !732, line: 87, baseType: !741, size: 64, offset: 704)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "clearprefetch", scope: !738, file: !732, line: 88, baseType: !741, size: 64, offset: 768)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "setownercase", scope: !738, file: !732, line: 89, baseType: !796, size: 64, offset: 832)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !729, !780}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "getownercase", scope: !738, file: !732, line: 91, baseType: !800, size: 64, offset: 896)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !803, !723}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !730)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "addglue", scope: !738, file: !732, line: 93, baseType: !806, size: 64, offset: 960)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!492, !729, !809, !811}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbversion_t", file: !45, line: 61, baseType: null)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_message_t", file: !45, line: 103, baseType: !813)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_message", file: !814, line: 197, size: 3840, elements: !815)
!814 = !DIFile(filename: "lib/dns/include/dns/message.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "6416f0e57c4314c86bb1ccbb29bdbc0d")
!815 = !{!816, !817, !819, !820, !822, !824, !825, !827, !834, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !889, !890, !897, !898, !904, !905, !913, !918, !923, !928, !936, !937, !938, !939, !940, !944, !949, !950, !951, !952, !956, !957, !958, !959, !968}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !813, file: !814, line: 199, baseType: !7, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !813, file: !814, line: 201, baseType: !818, size: 16, offset: 32)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_messageid_t", file: !45, line: 104, baseType: !217)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !813, file: !814, line: 202, baseType: !7, size: 32, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "rcode", scope: !813, file: !814, line: 203, baseType: !821, size: 16, offset: 96)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rcode_t", file: !45, line: 118, baseType: !217)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !813, file: !814, line: 204, baseType: !823, size: 16, offset: 112)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_opcode_t", file: !45, line: 111, baseType: !217)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !813, file: !814, line: 205, baseType: !674, size: 16, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !813, file: !814, line: 208, baseType: !826, size: 128, offset: 160)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !264)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "sections", scope: !813, file: !814, line: 211, baseType: !828, size: 512, offset: 320)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !829, size: 512, elements: !264)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_namelist_t", file: !45, line: 108, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 108, size: 128, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !830, file: !45, line: 108, baseType: !723, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !830, file: !45, line: 108, baseType: !723, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "cursors", scope: !813, file: !814, line: 212, baseType: !835, size: 256, offset: 832)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !723, size: 256, elements: !264)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !813, file: !814, line: 213, baseType: !729, size: 64, offset: 1088)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "sig0", scope: !813, file: !814, line: 214, baseType: !729, size: 64, offset: 1152)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "tsig", scope: !813, file: !814, line: 215, baseType: !729, size: 64, offset: 1216)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !813, file: !814, line: 217, baseType: !482, size: 32, offset: 1280)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "from_to_wire", scope: !813, file: !814, line: 218, baseType: !7, size: 2, offset: 1312, flags: DIFlagBitField, extraData: i64 1312)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "header_ok", scope: !813, file: !814, line: 219, baseType: !7, size: 1, offset: 1314, flags: DIFlagBitField, extraData: i64 1312)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "question_ok", scope: !813, file: !814, line: 220, baseType: !7, size: 1, offset: 1315, flags: DIFlagBitField, extraData: i64 1312)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_continuation", scope: !813, file: !814, line: 221, baseType: !7, size: 1, offset: 1316, flags: DIFlagBitField, extraData: i64 1312)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "verified_sig", scope: !813, file: !814, line: 222, baseType: !7, size: 1, offset: 1317, flags: DIFlagBitField, extraData: i64 1312)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "verify_attempted", scope: !813, file: !814, line: 223, baseType: !7, size: 1, offset: 1318, flags: DIFlagBitField, extraData: i64 1312)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "free_query", scope: !813, file: !814, line: 224, baseType: !7, size: 1, offset: 1319, flags: DIFlagBitField, extraData: i64 1312)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "free_saved", scope: !813, file: !814, line: 225, baseType: !7, size: 1, offset: 1320, flags: DIFlagBitField, extraData: i64 1312)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "cc_ok", scope: !813, file: !814, line: 226, baseType: !7, size: 1, offset: 1321, flags: DIFlagBitField, extraData: i64 1312)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "cc_bad", scope: !813, file: !814, line: 227, baseType: !7, size: 1, offset: 1322, flags: DIFlagBitField, extraData: i64 1312)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "tkey", scope: !813, file: !814, line: 228, baseType: !7, size: 1, offset: 1323, flags: DIFlagBitField, extraData: i64 1312)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass_set", scope: !813, file: !814, line: 229, baseType: !7, size: 1, offset: 1324, flags: DIFlagBitField, extraData: i64 1312)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "opt_reserved", scope: !813, file: !814, line: 231, baseType: !7, size: 32, offset: 1344)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "sig_reserved", scope: !813, file: !814, line: 232, baseType: !7, size: 32, offset: 1376)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !813, file: !814, line: 233, baseType: !7, size: 32, offset: 1408)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !813, file: !814, line: 235, baseType: !217, size: 16, offset: 1440)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "padding_off", scope: !813, file: !814, line: 236, baseType: !7, size: 32, offset: 1472)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !813, file: !814, line: 238, baseType: !697, size: 64, offset: 1536)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "cctx", scope: !813, file: !814, line: 239, baseType: !859, size: 64, offset: 1600)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_compress_t", file: !45, line: 53, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_compress", file: !862, line: 66, size: 18688, elements: !863)
!862 = !DIFile(filename: "lib/dns/include/dns/compress.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "ae360072e6dd15c4fe76c4efa2dcea4c")
!863 = !{!864, !865, !866, !867, !885, !887, !888}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !861, file: !862, line: 67, baseType: !7, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !861, file: !862, line: 68, baseType: !7, size: 32, offset: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "edns", scope: !861, file: !862, line: 69, baseType: !482, size: 32, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !861, file: !862, line: 71, baseType: !868, size: 4096, offset: 128)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !869, size: 4096, elements: !883)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_compressnode_t", file: !862, line: 56, baseType: !871)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_compressnode", file: !862, line: 58, size: 896, elements: !872)
!872 = !{!873, !874, !875, !876, !882}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !871, file: !862, line: 59, baseType: !869, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !871, file: !862, line: 60, baseType: !217, size: 16, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !871, file: !862, line: 61, baseType: !217, size: 16, offset: 80)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !871, file: !862, line: 62, baseType: !877, size: 128, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_region_t", file: !356, line: 65, baseType: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_region", file: !678, line: 21, size: 128, elements: !879)
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !878, file: !678, line: 22, baseType: !713, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !878, file: !678, line: 23, baseType: !7, size: 32, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !871, file: !862, line: 63, baseType: !707, size: 640, offset: 256)
!883 = !{!884}
!884 = !DISubrange(count: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "initialnodes", scope: !861, file: !862, line: 73, baseType: !886, size: 14336, offset: 4224)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !870, size: 14336, elements: !258)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !861, file: !862, line: 74, baseType: !217, size: 16, offset: 18560)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !861, file: !862, line: 75, baseType: !390, size: 64, offset: 18624)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !813, file: !814, line: 241, baseType: !390, size: 64, offset: 1664)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "namepool", scope: !813, file: !814, line: 242, baseType: !891, size: 64, offset: 1728)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_mempool_t", file: !356, line: 60, baseType: !893)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_mempool", file: !393, line: 205, size: 64, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !893, file: !393, line: 206, baseType: !7, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !893, file: !393, line: 207, baseType: !7, size: 32, offset: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "rdspool", scope: !813, file: !814, line: 243, baseType: !891, size: 64, offset: 1792)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "scratchpad", scope: !813, file: !814, line: 245, baseType: !899, size: 128, offset: 1856)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_bufferlist_t", file: !356, line: 36, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !356, line: 36, size: 128, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !900, file: !356, line: 36, baseType: !697, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !900, file: !356, line: 36, baseType: !697, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !813, file: !814, line: 246, baseType: !899, size: 128, offset: 1984)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "rdatas", scope: !813, file: !814, line: 248, baseType: !906, size: 128, offset: 2112)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !813, file: !814, line: 248, size: 128, elements: !907)
!907 = !{!908, !912}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !906, file: !814, line: 248, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_msgblock_t", file: !814, line: 189, baseType: !911)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_msgblock", file: !814, line: 189, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !906, file: !814, line: 248, baseType: !909, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "rdatalists", scope: !813, file: !814, line: 249, baseType: !914, size: 128, offset: 2240)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !813, file: !814, line: 249, size: 128, elements: !915)
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !914, file: !814, line: 249, baseType: !909, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !914, file: !814, line: 249, baseType: !909, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !813, file: !814, line: 250, baseType: !919, size: 128, offset: 2368)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !813, file: !814, line: 250, size: 128, elements: !920)
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !919, file: !814, line: 250, baseType: !909, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !919, file: !814, line: 250, baseType: !909, size: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "freerdata", scope: !813, file: !814, line: 252, baseType: !924, size: 128, offset: 2496)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !813, file: !814, line: 252, size: 128, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !924, file: !814, line: 252, baseType: !753, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !924, file: !814, line: 252, baseType: !753, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "freerdatalist", scope: !813, file: !814, line: 253, baseType: !929, size: 128, offset: 2624)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !813, file: !814, line: 253, size: 128, elements: !930)
!930 = !{!931, !935}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !929, file: !814, line: 253, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatalist_t", file: !45, line: 122, baseType: !934)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatalist", file: !45, line: 122, flags: DIFlagFwdDecl)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !929, file: !814, line: 253, baseType: !932, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "tsigstatus", scope: !813, file: !814, line: 255, baseType: !821, size: 16, offset: 2752)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "querytsigstatus", scope: !813, file: !814, line: 256, baseType: !821, size: 16, offset: 2768)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "tsigname", scope: !813, file: !814, line: 257, baseType: !723, size: 64, offset: 2816)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "querytsig", scope: !813, file: !814, line: 258, baseType: !729, size: 64, offset: 2880)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "tsigkey", scope: !813, file: !814, line: 259, baseType: !941, size: 64, offset: 2944)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_tsigkey_t", file: !45, line: 143, baseType: !943)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_tsigkey", file: !45, line: 143, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "tsigctx", scope: !813, file: !814, line: 260, baseType: !945, size: 64, offset: 3008)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "dst_context_t", file: !947, line: 45, baseType: !948)
!947 = !DIFile(filename: "lib/dns/include/dst/dst.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "10e76bcacbe005e6cc7dee2ac6ffac9a")
!948 = !DICompositeType(tag: DW_TAG_structure_type, name: "dst_context", file: !947, line: 45, flags: DIFlagFwdDecl)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "sigstart", scope: !813, file: !814, line: 261, baseType: !482, size: 32, offset: 3072)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "timeadjust", scope: !813, file: !814, line: 262, baseType: !482, size: 32, offset: 3104)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "sig0name", scope: !813, file: !814, line: 264, baseType: !723, size: 64, offset: 3136)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "sig0key", scope: !813, file: !814, line: 265, baseType: !953, size: 64, offset: 3200)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "dst_key_t", file: !947, line: 44, baseType: !955)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "dst_key", file: !947, line: 44, flags: DIFlagFwdDecl)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "sig0status", scope: !813, file: !814, line: 266, baseType: !821, size: 16, offset: 3264)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !813, file: !814, line: 267, baseType: !877, size: 128, offset: 3328)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "saved", scope: !813, file: !814, line: 268, baseType: !877, size: 128, offset: 3456)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !813, file: !814, line: 270, baseType: !960, size: 64, offset: 3584)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatasetorderfunc_t", file: !45, line: 415, baseType: !961)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!482, !964, !966}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "order_arg", scope: !813, file: !814, line: 271, baseType: !969, size: 192, offset: 3648)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_sortlist_arg_t", file: !45, line: 134, baseType: !970)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_sortlist_arg", file: !814, line: 191, size: 192, elements: !971)
!971 = !{!972, !976, !981}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !970, file: !814, line: 192, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_aclenv_t", file: !45, line: 32, baseType: !975)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_aclenv", file: !45, line: 32, flags: DIFlagFwdDecl)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "acl", scope: !970, file: !814, line: 193, baseType: !977, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !979)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_acl_t", file: !45, line: 30, baseType: !980)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_acl", file: !45, line: 30, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "element", scope: !970, file: !814, line: 194, baseType: !982, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_aclelement_t", file: !45, line: 31, baseType: !985)
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_aclelement", file: !45, line: 31, flags: DIFlagFwdDecl)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !731, file: !732, line: 110, baseType: !987, size: 128, offset: 128)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !731, file: !732, line: 110, size: 128, elements: !988)
!988 = !{!989, !990}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !987, file: !732, line: 110, baseType: !729, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !987, file: !732, line: 110, baseType: !729, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !731, file: !732, line: 117, baseType: !674, size: 16, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !731, file: !732, line: 118, baseType: !216, size: 16, offset: 272)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !731, file: !732, line: 119, baseType: !659, size: 32, offset: 288)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "stale_ttl", scope: !731, file: !732, line: 124, baseType: !659, size: 32, offset: 320)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "trust", scope: !731, file: !732, line: 125, baseType: !792, size: 16, offset: 352)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "covers", scope: !731, file: !732, line: 126, baseType: !216, size: 16, offset: 368)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !731, file: !732, line: 131, baseType: !7, size: 32, offset: 384)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !731, file: !732, line: 139, baseType: !235, size: 32, offset: 416)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "resign", scope: !731, file: !732, line: 145, baseType: !1000, size: 32, offset: 448)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_stdtime_t", file: !1001, line: 26, baseType: !235)
!1001 = !DIFile(filename: "../../lib/isc/unix/include/isc/stdtime.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/check", checksumkind: CSK_MD5, checksum: "b8868fded6c0eb282ad50986c628a693")
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "private1", scope: !731, file: !732, line: 152, baseType: !210, size: 64, offset: 512)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "private2", scope: !731, file: !732, line: 153, baseType: !210, size: 64, offset: 576)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "private3", scope: !731, file: !732, line: 154, baseType: !210, size: 64, offset: 640)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "privateuint4", scope: !731, file: !732, line: 155, baseType: !7, size: 32, offset: 704)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "private5", scope: !731, file: !732, line: 156, baseType: !210, size: 64, offset: 768)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "private6", scope: !731, file: !732, line: 157, baseType: !966, size: 64, offset: 832)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "private7", scope: !731, file: !732, line: 158, baseType: !966, size: 64, offset: 896)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !726, file: !709, line: 113, baseType: !729, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !703, file: !704, line: 63, baseType: !1011, size: 1024, offset: 640)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_offsets_t", file: !45, line: 112, baseType: !1012)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 1024, elements: !1013)
!1013 = !{!1014}
!1014 = !DISubrange(count: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !703, file: !704, line: 64, baseType: !683, size: 512, offset: 1664)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !703, file: !704, line: 65, baseType: !1017, size: 2040, offset: 2176)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 2040, elements: !1018)
!1018 = !{!1019}
!1019 = !DISubrange(count: 255)
!1020 = !DILocalVariable(name: "origin", scope: !655, file: !3, line: 653, type: !723)
!1021 = !DILocalVariable(name: "zone", scope: !655, file: !3, line: 654, type: !661)
!1022 = !DILocalVariable(name: "_deconst", scope: !1023, file: !3, line: 666, type: !1024)
!1023 = distinct !DILexicalBlock(scope: !655, file: !3, line: 666, column: 2)
!1024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !655, file: !3, line: 666, size: 64, elements: !1025)
!1025 = !{!1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_var", scope: !1024, file: !3, line: 666, baseType: !210, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_const", scope: !1024, file: !3, line: 666, baseType: !966, size: 64)
!1028 = !DILocalVariable(name: "_u", scope: !1029, file: !3, line: 677, type: !1030)
!1029 = distinct !DILexicalBlock(scope: !655, file: !3, line: 677, column: 2)
!1030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !655, file: !3, line: 677, size: 64, elements: !1031)
!1031 = !{!1032, !1033}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !1030, file: !3, line: 677, baseType: !966, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1030, file: !3, line: 677, baseType: !210, size: 64)
!1034 = !DILabel(scope: !655, name: "cleanup", file: !3, line: 709)
!1035 = !DILocation(line: 644, column: 22, scope: !655)
!1036 = !DILocation(line: 644, column: 40, scope: !655)
!1037 = !DILocation(line: 644, column: 62, scope: !655)
!1038 = !DILocation(line: 645, column: 23, scope: !655)
!1039 = !DILocation(line: 645, column: 47, scope: !655)
!1040 = !DILocation(line: 646, column: 14, scope: !655)
!1041 = !DILocation(line: 646, column: 35, scope: !655)
!1042 = !DILocation(line: 648, column: 2, scope: !655)
!1043 = !DILocation(line: 648, column: 15, scope: !655)
!1044 = !DILocation(line: 649, column: 2, scope: !655)
!1045 = !DILocation(line: 649, column: 19, scope: !655)
!1046 = !DILocation(line: 650, column: 2, scope: !655)
!1047 = !DILocation(line: 650, column: 19, scope: !655)
!1048 = !DILocation(line: 651, column: 2, scope: !655)
!1049 = !DILocation(line: 651, column: 15, scope: !655)
!1050 = !DILocation(line: 652, column: 2, scope: !655)
!1051 = !DILocation(line: 652, column: 18, scope: !655)
!1052 = !DILocation(line: 653, column: 2, scope: !655)
!1053 = !DILocation(line: 653, column: 14, scope: !655)
!1054 = !DILocation(line: 654, column: 2, scope: !655)
!1055 = !DILocation(line: 654, column: 14, scope: !655)
!1056 = !DILocation(line: 656, column: 2, scope: !655)
!1057 = !DILocation(line: 658, column: 6, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !655, file: !3, line: 658, column: 6)
!1059 = !DILocation(line: 658, column: 6, scope: !655)
!1060 = !DILocation(line: 659, column: 11, scope: !1058)
!1061 = !DILocation(line: 660, column: 4, scope: !1058)
!1062 = !DILocation(line: 660, column: 14, scope: !1058)
!1063 = !DILocation(line: 660, column: 24, scope: !1058)
!1064 = !DILocation(line: 659, column: 3, scope: !1058)
!1065 = !DILocation(line: 662, column: 2, scope: !655)
!1066 = !DILocation(line: 662, column: 2, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !655, file: !3, line: 662, column: 2)
!1068 = !DILocation(line: 662, column: 2, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 662, column: 2)
!1070 = !DILocation(line: 664, column: 19, scope: !655)
!1071 = !DILocation(line: 664, column: 2, scope: !655)
!1072 = !DILocation(line: 666, column: 2, scope: !655)
!1073 = !DILocation(line: 666, column: 2, scope: !1023)
!1074 = !DILocation(line: 666, column: 2, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 666, column: 2)
!1076 = !DILocation(line: 666, column: 2, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 666, column: 2)
!1078 = !DILocation(line: 667, column: 2, scope: !655)
!1079 = !DILocation(line: 667, column: 2, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !655, file: !3, line: 667, column: 2)
!1081 = !DILocation(line: 668, column: 11, scope: !655)
!1082 = !DILocation(line: 668, column: 9, scope: !655)
!1083 = !DILocation(line: 669, column: 2, scope: !655)
!1084 = !DILocation(line: 669, column: 2, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !655, file: !3, line: 669, column: 2)
!1086 = !DILocation(line: 669, column: 2, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 669, column: 2)
!1088 = !DILocation(line: 670, column: 2, scope: !655)
!1089 = !DILocation(line: 670, column: 2, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !655, file: !3, line: 670, column: 2)
!1091 = !DILocation(line: 670, column: 2, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 670, column: 2)
!1093 = !DILocation(line: 671, column: 2, scope: !655)
!1094 = !DILocation(line: 671, column: 2, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !655, file: !3, line: 671, column: 2)
!1096 = !DILocation(line: 671, column: 2, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 671, column: 2)
!1098 = !DILocation(line: 672, column: 2, scope: !655)
!1099 = !DILocation(line: 672, column: 2, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !655, file: !3, line: 672, column: 2)
!1101 = !DILocation(line: 672, column: 2, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 672, column: 2)
!1103 = !DILocation(line: 674, column: 6, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !655, file: !3, line: 674, column: 6)
!1105 = !DILocation(line: 674, column: 14, scope: !1104)
!1106 = !DILocation(line: 674, column: 6, scope: !655)
!1107 = !DILocation(line: 675, column: 3, scope: !1104)
!1108 = !DILocation(line: 675, column: 3, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 675, column: 3)
!1110 = !DILocation(line: 675, column: 3, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 675, column: 3)
!1112 = !DILocation(line: 677, column: 2, scope: !655)
!1113 = !DILocation(line: 677, column: 2, scope: !1029)
!1114 = !DILocation(line: 678, column: 25, scope: !655)
!1115 = !DILocation(line: 678, column: 18, scope: !655)
!1116 = !DILocation(line: 678, column: 9, scope: !655)
!1117 = !DILocation(line: 678, column: 16, scope: !655)
!1118 = !DILocation(line: 679, column: 2, scope: !655)
!1119 = !DILocation(line: 679, column: 2, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !655, file: !3, line: 679, column: 2)
!1121 = !DILocation(line: 679, column: 2, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 679, column: 2)
!1123 = !DILocation(line: 681, column: 20, scope: !655)
!1124 = !DILocation(line: 681, column: 26, scope: !655)
!1125 = !DILocation(line: 681, column: 2, scope: !655)
!1126 = !DILocation(line: 682, column: 21, scope: !655)
!1127 = !DILocation(line: 682, column: 27, scope: !655)
!1128 = !DILocation(line: 682, column: 2, scope: !655)
!1129 = !DILocation(line: 683, column: 21, scope: !655)
!1130 = !DILocation(line: 683, column: 48, scope: !655)
!1131 = !{i8 0, i8 2}
!1132 = !{}
!1133 = !DILocation(line: 683, column: 2, scope: !655)
!1134 = !DILocation(line: 685, column: 21, scope: !655)
!1135 = !DILocation(line: 685, column: 27, scope: !655)
!1136 = !DILocation(line: 685, column: 2, scope: !655)
!1137 = !DILocation(line: 687, column: 6, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !655, file: !3, line: 687, column: 6)
!1139 = !DILocation(line: 687, column: 6, scope: !655)
!1140 = !DILocation(line: 688, column: 23, scope: !1138)
!1141 = !DILocation(line: 688, column: 3, scope: !1138)
!1142 = !DILocation(line: 689, column: 6, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !655, file: !3, line: 689, column: 6)
!1144 = !DILocation(line: 689, column: 6, scope: !655)
!1145 = !DILocation(line: 690, column: 23, scope: !1143)
!1146 = !DILocation(line: 690, column: 3, scope: !1143)
!1147 = !DILocation(line: 691, column: 6, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !655, file: !3, line: 691, column: 6)
!1149 = !DILocation(line: 691, column: 6, scope: !655)
!1150 = !DILocation(line: 692, column: 24, scope: !1148)
!1151 = !DILocation(line: 692, column: 3, scope: !1148)
!1152 = !DILocation(line: 694, column: 2, scope: !655)
!1153 = !DILocation(line: 694, column: 2, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !655, file: !3, line: 694, column: 2)
!1155 = !DILocation(line: 694, column: 2, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 694, column: 2)
!1157 = !DILocation(line: 700, column: 6, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !655, file: !3, line: 700, column: 6)
!1159 = !DILocation(line: 700, column: 17, scope: !1158)
!1160 = !DILocation(line: 700, column: 41, scope: !1158)
!1161 = !DILocation(line: 700, column: 44, scope: !1158)
!1162 = !DILocation(line: 700, column: 51, scope: !1158)
!1163 = !DILocation(line: 700, column: 6, scope: !655)
!1164 = !DILocation(line: 701, column: 3, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 700, column: 57)
!1166 = !DILocation(line: 701, column: 3, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 701, column: 3)
!1168 = !DILocation(line: 701, column: 3, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 701, column: 3)
!1170 = !DILocation(line: 702, column: 2, scope: !1165)
!1171 = !DILocation(line: 704, column: 6, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !655, file: !3, line: 704, column: 6)
!1173 = !DILocation(line: 704, column: 12, scope: !1172)
!1174 = !DILocation(line: 704, column: 6, scope: !655)
!1175 = !DILocation(line: 705, column: 12, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 704, column: 21)
!1177 = !DILocation(line: 705, column: 4, scope: !1176)
!1178 = !DILocation(line: 705, column: 10, scope: !1176)
!1179 = !DILocation(line: 706, column: 8, scope: !1176)
!1180 = !DILocation(line: 707, column: 2, scope: !1176)
!1181 = !DILocation(line: 704, column: 15, scope: !1172)
!1182 = !DILocation(line: 709, column: 2, scope: !655)
!1183 = !DILocation(line: 710, column: 6, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !655, file: !3, line: 710, column: 6)
!1185 = !DILocation(line: 710, column: 11, scope: !1184)
!1186 = !DILocation(line: 710, column: 6, scope: !655)
!1187 = !DILocation(line: 711, column: 3, scope: !1184)
!1188 = !DILocation(line: 712, column: 10, scope: !655)
!1189 = !DILocation(line: 713, column: 1, scope: !655)
!1190 = !DILocation(line: 712, column: 2, scope: !655)
!1191 = !DISubprogram(name: "isc_assertion_failed", scope: !52, file: !52, line: 37, type: !1192, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !213, !482, !1194, !213}
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_assertiontype_t", file: !52, line: 30, baseType: !51)
!1195 = !DISubprogram(name: "fprintf", scope: !570, file: !570, line: 350, type: !1196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!482, !1198, !1199, null}
!1198 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !493)
!1199 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !213)
!1200 = !DISubprogram(name: "dns_zone_create", scope: !6, file: !6, line: 130, type: !1201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!492, !660, !390}
!1203 = !DISubprogram(name: "dns_zone_settype", scope: !6, file: !6, line: 185, type: !1204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !661, !1206}
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_zonetype_t", file: !6, line: 47, baseType: !58)
!1207 = !DISubprogram(name: "strlen", scope: !1208, file: !1208, line: 407, type: !1209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1208 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!408, !213}
!1211 = !DISubprogram(name: "dns_fixedname_initname", scope: !704, file: !704, line: 80, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!723, !1214}
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!1215 = !DISubprogram(name: "dns_name_fromtext", scope: !709, file: !709, line: 784, type: !1216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!492, !723, !697, !780, !7, !697}
!1218 = !DISubprogram(name: "dns_zone_setorigin", scope: !6, file: !6, line: 236, type: !1219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!492, !661, !780}
!1221 = !DISubprogram(name: "dns_zone_setdbtype", scope: !6, file: !6, line: 487, type: !1222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!492, !661, !7, !211}
!1224 = !DISubprogram(name: "dns_zone_setfile", scope: !6, file: !6, line: 259, type: !1225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!492, !661, !213, !658, !1227}
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1229)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_master_style_t", file: !1230, line: 32, baseType: !1231)
!1230 = !DIFile(filename: "lib/dns/include/dns/masterdump.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "ca71d9f8f00020df7306dd98e6970576")
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_master_style", file: !1230, line: 32, flags: DIFlagFwdDecl)
!1232 = !DISubprogram(name: "dns_zone_setjournal", scope: !6, file: !6, line: 1262, type: !1233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!492, !661, !213}
!1235 = !DISubprogram(name: "dns_rdataclass_fromtext", scope: !1236, file: !1236, line: 25, type: !1237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1236 = !DIFile(filename: "lib/dns/include/dns/rdataclass.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "ea79dedb4935b282d4502bc127f702d6")
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!492, !1239, !1240}
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!1241 = !DISubprogram(name: "dns_zone_setclass", scope: !6, file: !6, line: 148, type: !1242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !661, !674}
!1244 = !DISubprogram(name: "dns_zone_setoption", scope: !6, file: !6, line: 669, type: !1245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{null, !661, !281, !272}
!1247 = !DISubprogram(name: "dns_zone_setmaxttl", scope: !6, file: !6, line: 317, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{null, !661, !235}
!1250 = !DISubprogram(name: "dns_zone_setcheckmx", scope: !6, file: !6, line: 2057, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{null, !661, !1253}
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_checkmxfunc_t", file: !45, line: 418, baseType: !1254)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!272, !661, !780, !780}
!1257 = distinct !DISubprogram(name: "checkmx", scope: !3, file: !3, line: 370, type: !1255, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1258)
!1258 = !{!1259, !1260, !1261, !1262, !1284, !1285, !1286, !1290, !1294, !1295, !1296}
!1259 = !DILocalVariable(name: "zone", arg: 1, scope: !1257, file: !3, line: 370, type: !661)
!1260 = !DILocalVariable(name: "name", arg: 2, scope: !1257, file: !3, line: 370, type: !780)
!1261 = !DILocalVariable(name: "owner", arg: 3, scope: !1257, file: !3, line: 370, type: !780)
!1262 = !DILocalVariable(name: "hints", scope: !1257, file: !3, line: 371, type: !1263)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !1264, line: 565, size: 384, elements: !1265)
!1264 = !DIFile(filename: "/usr/include/netdb.h", directory: "", checksumkind: CSK_MD5, checksum: "dd84cdc2a8dcb66c232d326e9ca8b469")
!1265 = !{!1266, !1267, !1268, !1269, !1270, !1274, !1281, !1282}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !1263, file: !1264, line: 567, baseType: !482, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !1263, file: !1264, line: 568, baseType: !482, size: 32, offset: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !1263, file: !1264, line: 569, baseType: !482, size: 32, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !1263, file: !1264, line: 570, baseType: !482, size: 32, offset: 96)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !1263, file: !1264, line: 571, baseType: !1271, size: 32, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !1272, line: 33, baseType: !1273)
!1272 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !220, line: 210, baseType: !7)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !1263, file: !1264, line: 572, baseType: !1275, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !1272, line: 180, size: 128, elements: !1277)
!1277 = !{!1278, !1279}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !1276, file: !1272, line: 182, baseType: !226, size: 16)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !1276, file: !1272, line: 183, baseType: !1280, size: 112, offset: 16)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 112, elements: !335)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !1263, file: !1264, line: 573, baseType: !427, size: 64, offset: 256)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !1263, file: !1264, line: 574, baseType: !1283, size: 64, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1284 = !DILocalVariable(name: "ai", scope: !1257, file: !3, line: 371, type: !1283)
!1285 = !DILocalVariable(name: "cur", scope: !1257, file: !3, line: 371, type: !1283)
!1286 = !DILocalVariable(name: "namebuf", scope: !1257, file: !3, line: 372, type: !1287)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 8200, elements: !1288)
!1288 = !{!1289}
!1289 = !DISubrange(count: 1025)
!1290 = !DILocalVariable(name: "ownerbuf", scope: !1257, file: !3, line: 373, type: !1291)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 8192, elements: !1292)
!1292 = !{!1293}
!1293 = !DISubrange(count: 1024)
!1294 = !DILocalVariable(name: "result", scope: !1257, file: !3, line: 374, type: !482)
!1295 = !DILocalVariable(name: "level", scope: !1257, file: !3, line: 375, type: !482)
!1296 = !DILocalVariable(name: "answer", scope: !1257, file: !3, line: 376, type: !272)
!1297 = !DILocation(line: 370, column: 21, scope: !1257)
!1298 = !DILocation(line: 370, column: 45, scope: !1257)
!1299 = !DILocation(line: 370, column: 69, scope: !1257)
!1300 = !DILocation(line: 371, column: 2, scope: !1257)
!1301 = !DILocation(line: 371, column: 18, scope: !1257)
!1302 = !DILocation(line: 371, column: 26, scope: !1257)
!1303 = !DILocation(line: 371, column: 31, scope: !1257)
!1304 = !DILocation(line: 372, column: 2, scope: !1257)
!1305 = !DILocation(line: 372, column: 7, scope: !1257)
!1306 = !DILocation(line: 373, column: 2, scope: !1257)
!1307 = !DILocation(line: 373, column: 7, scope: !1257)
!1308 = !DILocation(line: 374, column: 2, scope: !1257)
!1309 = !DILocation(line: 374, column: 6, scope: !1257)
!1310 = !DILocation(line: 375, column: 2, scope: !1257)
!1311 = !DILocation(line: 375, column: 6, scope: !1257)
!1312 = !DILocation(line: 376, column: 2, scope: !1257)
!1313 = !DILocation(line: 376, column: 7, scope: !1257)
!1314 = !DILocation(line: 378, column: 2, scope: !1257)
!1315 = !DILocation(line: 379, column: 8, scope: !1257)
!1316 = !DILocation(line: 379, column: 17, scope: !1257)
!1317 = !DILocation(line: 380, column: 8, scope: !1257)
!1318 = !DILocation(line: 380, column: 18, scope: !1257)
!1319 = !DILocation(line: 381, column: 8, scope: !1257)
!1320 = !DILocation(line: 381, column: 20, scope: !1257)
!1321 = !DILocation(line: 382, column: 8, scope: !1257)
!1322 = !DILocation(line: 382, column: 20, scope: !1257)
!1323 = !DILocation(line: 384, column: 18, scope: !1257)
!1324 = !DILocation(line: 384, column: 24, scope: !1257)
!1325 = !DILocation(line: 384, column: 2, scope: !1257)
!1326 = !DILocation(line: 388, column: 27, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 388, column: 6)
!1328 = !DILocation(line: 388, column: 6, scope: !1327)
!1329 = !DILocation(line: 388, column: 33, scope: !1327)
!1330 = !DILocation(line: 388, column: 6, scope: !1257)
!1331 = !DILocation(line: 389, column: 11, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 388, column: 39)
!1333 = !DILocation(line: 389, column: 3, scope: !1332)
!1334 = !DILocation(line: 390, column: 2, scope: !1332)
!1335 = !DILocation(line: 391, column: 18, scope: !1257)
!1336 = !DILocation(line: 391, column: 25, scope: !1257)
!1337 = !DILocation(line: 391, column: 2, scope: !1257)
!1338 = !DILocation(line: 393, column: 23, scope: !1257)
!1339 = !DILocation(line: 393, column: 11, scope: !1257)
!1340 = !DILocation(line: 393, column: 9, scope: !1257)
!1341 = !DILocation(line: 394, column: 18, scope: !1257)
!1342 = !DILocation(line: 394, column: 24, scope: !1257)
!1343 = !DILocation(line: 394, column: 2, scope: !1257)
!1344 = !DILocation(line: 395, column: 10, scope: !1257)
!1345 = !DILocation(line: 395, column: 2, scope: !1257)
!1346 = !DILocation(line: 401, column: 9, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 395, column: 18)
!1348 = !DILocation(line: 401, column: 7, scope: !1347)
!1349 = !DILocation(line: 402, column: 3, scope: !1347)
!1350 = !DILocation(line: 402, column: 10, scope: !1347)
!1351 = !DILocation(line: 402, column: 14, scope: !1347)
!1352 = !DILocation(line: 402, column: 22, scope: !1347)
!1353 = !DILocation(line: 402, column: 25, scope: !1347)
!1354 = !DILocation(line: 402, column: 30, scope: !1347)
!1355 = !DILocation(line: 402, column: 43, scope: !1347)
!1356 = !DILocation(line: 402, column: 51, scope: !1347)
!1357 = !DILocation(line: 403, column: 10, scope: !1347)
!1358 = !DILocation(line: 403, column: 15, scope: !1347)
!1359 = !DILocation(line: 403, column: 23, scope: !1347)
!1360 = !DILocation(line: 0, scope: !1347)
!1361 = !DILocation(line: 404, column: 10, scope: !1347)
!1362 = !DILocation(line: 404, column: 15, scope: !1347)
!1363 = !DILocation(line: 404, column: 8, scope: !1347)
!1364 = distinct !{!1364, !1349, !1362, !1365}
!1365 = !{!"llvm.loop.mustprogress"}
!1366 = !DILocation(line: 405, column: 7, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 405, column: 7)
!1368 = !DILocation(line: 405, column: 11, scope: !1367)
!1369 = !DILocation(line: 405, column: 19, scope: !1367)
!1370 = !DILocation(line: 405, column: 22, scope: !1367)
!1371 = !DILocation(line: 405, column: 27, scope: !1367)
!1372 = !DILocation(line: 405, column: 40, scope: !1367)
!1373 = !DILocation(line: 405, column: 48, scope: !1367)
!1374 = !DILocation(line: 406, column: 18, scope: !1367)
!1375 = !DILocation(line: 406, column: 23, scope: !1367)
!1376 = !DILocation(line: 406, column: 37, scope: !1367)
!1377 = !DILocation(line: 406, column: 7, scope: !1367)
!1378 = !DILocation(line: 406, column: 46, scope: !1367)
!1379 = !DILocation(line: 405, column: 7, scope: !1347)
!1380 = !DILocation(line: 407, column: 9, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 407, column: 8)
!1382 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 406, column: 52)
!1383 = !DILocation(line: 407, column: 22, scope: !1381)
!1384 = !DILocation(line: 407, column: 49, scope: !1381)
!1385 = !DILocation(line: 407, column: 8, scope: !1382)
!1386 = !DILocation(line: 408, column: 11, scope: !1381)
!1387 = !DILocation(line: 408, column: 5, scope: !1381)
!1388 = !DILocation(line: 409, column: 9, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 409, column: 8)
!1390 = !DILocation(line: 409, column: 22, scope: !1389)
!1391 = !DILocation(line: 409, column: 51, scope: !1389)
!1392 = !DILocation(line: 409, column: 8, scope: !1382)
!1393 = !DILocation(line: 410, column: 17, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 410, column: 9)
!1395 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 409, column: 57)
!1396 = !DILocation(line: 410, column: 10, scope: !1394)
!1397 = !DILocation(line: 410, column: 9, scope: !1395)
!1398 = !DILocation(line: 411, column: 19, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 410, column: 43)
!1400 = !DILocation(line: 411, column: 25, scope: !1399)
!1401 = !DILocation(line: 415, column: 12, scope: !1399)
!1402 = !DILocation(line: 415, column: 22, scope: !1399)
!1403 = !DILocation(line: 416, column: 12, scope: !1399)
!1404 = !DILocation(line: 416, column: 17, scope: !1399)
!1405 = !DILocation(line: 411, column: 6, scope: !1399)
!1406 = !DILocation(line: 417, column: 10, scope: !1399)
!1407 = !DILocation(line: 417, column: 6, scope: !1399)
!1408 = !DILocation(line: 418, column: 5, scope: !1399)
!1409 = !DILocation(line: 419, column: 9, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 419, column: 9)
!1411 = !DILocation(line: 419, column: 15, scope: !1410)
!1412 = !DILocation(line: 419, column: 9, scope: !1395)
!1413 = !DILocation(line: 420, column: 13, scope: !1410)
!1414 = !DILocation(line: 420, column: 6, scope: !1410)
!1415 = !DILocation(line: 421, column: 4, scope: !1395)
!1416 = !DILocation(line: 422, column: 3, scope: !1382)
!1417 = !DILocation(line: 423, column: 16, scope: !1347)
!1418 = !DILocation(line: 423, column: 3, scope: !1347)
!1419 = !DILocation(line: 424, column: 11, scope: !1347)
!1420 = !DILocation(line: 424, column: 3, scope: !1347)
!1421 = !DILocation(line: 430, column: 15, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 430, column: 7)
!1423 = !DILocation(line: 430, column: 8, scope: !1422)
!1424 = !DILocation(line: 430, column: 7, scope: !1347)
!1425 = !DILocation(line: 431, column: 17, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 430, column: 43)
!1427 = !DILocation(line: 434, column: 10, scope: !1426)
!1428 = !DILocation(line: 434, column: 20, scope: !1426)
!1429 = !DILocation(line: 431, column: 4, scope: !1426)
!1430 = !DILocation(line: 435, column: 8, scope: !1426)
!1431 = !DILocation(line: 435, column: 4, scope: !1426)
!1432 = !DILocation(line: 436, column: 3, scope: !1426)
!1433 = !DILocation(line: 438, column: 3, scope: !1347)
!1434 = !DILocation(line: 441, column: 15, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 441, column: 7)
!1436 = !DILocation(line: 441, column: 8, scope: !1435)
!1437 = !DILocation(line: 441, column: 7, scope: !1347)
!1438 = !DILocation(line: 442, column: 17, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 441, column: 45)
!1440 = !DILocation(line: 444, column: 9, scope: !1439)
!1441 = !DILocation(line: 444, column: 31, scope: !1439)
!1442 = !DILocation(line: 444, column: 18, scope: !1439)
!1443 = !DILocation(line: 442, column: 4, scope: !1439)
!1444 = !DILocation(line: 445, column: 8, scope: !1439)
!1445 = !DILocation(line: 445, column: 4, scope: !1439)
!1446 = !DILocation(line: 446, column: 3, scope: !1439)
!1447 = !DILocation(line: 447, column: 3, scope: !1347)
!1448 = !DILocation(line: 449, column: 1, scope: !1257)
!1449 = !DISubprogram(name: "dns_zone_setcheckns", scope: !6, file: !6, line: 2077, type: !1450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{null, !661, !1452}
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_checknsfunc_t", file: !45, line: 424, baseType: !1453)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!272, !661, !780, !780, !729, !729}
!1456 = distinct !DISubprogram(name: "checkns", scope: !3, file: !3, line: 169, type: !1454, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1457)
!1457 = !{!1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481}
!1458 = !DILocalVariable(name: "zone", arg: 1, scope: !1456, file: !3, line: 169, type: !661)
!1459 = !DILocalVariable(name: "name", arg: 2, scope: !1456, file: !3, line: 169, type: !780)
!1460 = !DILocalVariable(name: "owner", arg: 3, scope: !1456, file: !3, line: 169, type: !780)
!1461 = !DILocalVariable(name: "a", arg: 4, scope: !1456, file: !3, line: 170, type: !729)
!1462 = !DILocalVariable(name: "aaaa", arg: 5, scope: !1456, file: !3, line: 170, type: !729)
!1463 = !DILocalVariable(name: "rdataset", scope: !1456, file: !3, line: 172, type: !729)
!1464 = !DILocalVariable(name: "rdata", scope: !1456, file: !3, line: 173, type: !754)
!1465 = !DILocalVariable(name: "hints", scope: !1456, file: !3, line: 174, type: !1263)
!1466 = !DILocalVariable(name: "ai", scope: !1456, file: !3, line: 174, type: !1283)
!1467 = !DILocalVariable(name: "cur", scope: !1456, file: !3, line: 174, type: !1283)
!1468 = !DILocalVariable(name: "namebuf", scope: !1456, file: !3, line: 175, type: !1287)
!1469 = !DILocalVariable(name: "ownerbuf", scope: !1456, file: !3, line: 176, type: !1291)
!1470 = !DILocalVariable(name: "addrbuf", scope: !1456, file: !3, line: 177, type: !1471)
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 368, elements: !1472)
!1472 = !{!1473}
!1473 = !DISubrange(count: 46)
!1474 = !DILocalVariable(name: "answer", scope: !1456, file: !3, line: 178, type: !272)
!1475 = !DILocalVariable(name: "match", scope: !1456, file: !3, line: 179, type: !272)
!1476 = !DILocalVariable(name: "type", scope: !1456, file: !3, line: 180, type: !213)
!1477 = !DILocalVariable(name: "ptr", scope: !1456, file: !3, line: 181, type: !210)
!1478 = !DILocalVariable(name: "result", scope: !1456, file: !3, line: 182, type: !482)
!1479 = !DILabel(scope: !1456, name: "checkaaaa", file: !3, line: 288)
!1480 = !DILabel(scope: !1456, name: "checkmissing", file: !3, line: 318)
!1481 = !DILocalVariable(name: "missing_glue", scope: !1482, file: !3, line: 323, type: !272)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 322, column: 42)
!1483 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 322, column: 6)
!1484 = !DILocation(line: 169, column: 21, scope: !1456)
!1485 = !DILocation(line: 169, column: 45, scope: !1456)
!1486 = !DILocation(line: 169, column: 69, scope: !1456)
!1487 = !DILocation(line: 170, column: 18, scope: !1456)
!1488 = !DILocation(line: 170, column: 37, scope: !1456)
!1489 = !DILocation(line: 172, column: 2, scope: !1456)
!1490 = !DILocation(line: 172, column: 18, scope: !1456)
!1491 = !DILocation(line: 173, column: 2, scope: !1456)
!1492 = !DILocation(line: 173, column: 14, scope: !1456)
!1493 = !DILocation(line: 174, column: 2, scope: !1456)
!1494 = !DILocation(line: 174, column: 18, scope: !1456)
!1495 = !DILocation(line: 174, column: 26, scope: !1456)
!1496 = !DILocation(line: 174, column: 31, scope: !1456)
!1497 = !DILocation(line: 175, column: 2, scope: !1456)
!1498 = !DILocation(line: 175, column: 7, scope: !1456)
!1499 = !DILocation(line: 176, column: 2, scope: !1456)
!1500 = !DILocation(line: 176, column: 7, scope: !1456)
!1501 = !DILocation(line: 177, column: 2, scope: !1456)
!1502 = !DILocation(line: 177, column: 7, scope: !1456)
!1503 = !DILocation(line: 178, column: 2, scope: !1456)
!1504 = !DILocation(line: 178, column: 7, scope: !1456)
!1505 = !DILocation(line: 179, column: 2, scope: !1456)
!1506 = !DILocation(line: 179, column: 7, scope: !1456)
!1507 = !DILocation(line: 180, column: 2, scope: !1456)
!1508 = !DILocation(line: 180, column: 14, scope: !1456)
!1509 = !DILocation(line: 181, column: 2, scope: !1456)
!1510 = !DILocation(line: 181, column: 8, scope: !1456)
!1511 = !DILocation(line: 182, column: 2, scope: !1456)
!1512 = !DILocation(line: 182, column: 6, scope: !1456)
!1513 = !DILocation(line: 184, column: 2, scope: !1456)
!1514 = !DILocation(line: 186, column: 2, scope: !1456)
!1515 = !DILocation(line: 189, column: 6, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 189, column: 6)
!1517 = !DILocation(line: 189, column: 8, scope: !1516)
!1518 = !DILocation(line: 189, column: 16, scope: !1516)
!1519 = !DILocation(line: 189, column: 19, scope: !1516)
!1520 = !DILocation(line: 189, column: 24, scope: !1516)
!1521 = !DILocation(line: 189, column: 6, scope: !1456)
!1522 = !DILocation(line: 190, column: 11, scope: !1516)
!1523 = !DILocation(line: 190, column: 3, scope: !1516)
!1524 = !DILocation(line: 192, column: 2, scope: !1456)
!1525 = !DILocation(line: 193, column: 8, scope: !1456)
!1526 = !DILocation(line: 193, column: 17, scope: !1456)
!1527 = !DILocation(line: 194, column: 8, scope: !1456)
!1528 = !DILocation(line: 194, column: 18, scope: !1456)
!1529 = !DILocation(line: 195, column: 8, scope: !1456)
!1530 = !DILocation(line: 195, column: 20, scope: !1456)
!1531 = !DILocation(line: 196, column: 8, scope: !1456)
!1532 = !DILocation(line: 196, column: 20, scope: !1456)
!1533 = !DILocation(line: 198, column: 18, scope: !1456)
!1534 = !DILocation(line: 198, column: 24, scope: !1456)
!1535 = !DILocation(line: 198, column: 2, scope: !1456)
!1536 = !DILocation(line: 202, column: 27, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 202, column: 6)
!1538 = !DILocation(line: 202, column: 6, scope: !1537)
!1539 = !DILocation(line: 202, column: 33, scope: !1537)
!1540 = !DILocation(line: 202, column: 6, scope: !1456)
!1541 = !DILocation(line: 203, column: 11, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 202, column: 39)
!1543 = !DILocation(line: 203, column: 3, scope: !1542)
!1544 = !DILocation(line: 204, column: 2, scope: !1542)
!1545 = !DILocation(line: 205, column: 18, scope: !1456)
!1546 = !DILocation(line: 205, column: 25, scope: !1456)
!1547 = !DILocation(line: 205, column: 2, scope: !1456)
!1548 = !DILocation(line: 207, column: 23, scope: !1456)
!1549 = !DILocation(line: 207, column: 11, scope: !1456)
!1550 = !DILocation(line: 207, column: 9, scope: !1456)
!1551 = !DILocation(line: 208, column: 18, scope: !1456)
!1552 = !DILocation(line: 208, column: 24, scope: !1456)
!1553 = !DILocation(line: 208, column: 2, scope: !1456)
!1554 = !DILocation(line: 209, column: 10, scope: !1456)
!1555 = !DILocation(line: 209, column: 2, scope: !1456)
!1556 = !DILocation(line: 215, column: 9, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 209, column: 18)
!1558 = !DILocation(line: 215, column: 7, scope: !1557)
!1559 = !DILocation(line: 216, column: 3, scope: !1557)
!1560 = !DILocation(line: 216, column: 10, scope: !1557)
!1561 = !DILocation(line: 216, column: 14, scope: !1557)
!1562 = !DILocation(line: 216, column: 22, scope: !1557)
!1563 = !DILocation(line: 216, column: 25, scope: !1557)
!1564 = !DILocation(line: 216, column: 30, scope: !1557)
!1565 = !DILocation(line: 216, column: 43, scope: !1557)
!1566 = !DILocation(line: 216, column: 51, scope: !1557)
!1567 = !DILocation(line: 217, column: 10, scope: !1557)
!1568 = !DILocation(line: 217, column: 15, scope: !1557)
!1569 = !DILocation(line: 217, column: 23, scope: !1557)
!1570 = !DILocation(line: 0, scope: !1557)
!1571 = !DILocation(line: 218, column: 10, scope: !1557)
!1572 = !DILocation(line: 218, column: 15, scope: !1557)
!1573 = !DILocation(line: 218, column: 8, scope: !1557)
!1574 = distinct !{!1574, !1559, !1572, !1365}
!1575 = !DILocation(line: 219, column: 7, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 219, column: 7)
!1577 = !DILocation(line: 219, column: 11, scope: !1576)
!1578 = !DILocation(line: 219, column: 19, scope: !1576)
!1579 = !DILocation(line: 219, column: 22, scope: !1576)
!1580 = !DILocation(line: 219, column: 27, scope: !1576)
!1581 = !DILocation(line: 219, column: 40, scope: !1576)
!1582 = !DILocation(line: 219, column: 48, scope: !1576)
!1583 = !DILocation(line: 220, column: 18, scope: !1576)
!1584 = !DILocation(line: 220, column: 23, scope: !1576)
!1585 = !DILocation(line: 220, column: 37, scope: !1576)
!1586 = !DILocation(line: 220, column: 7, scope: !1576)
!1587 = !DILocation(line: 220, column: 46, scope: !1576)
!1588 = !DILocation(line: 220, column: 51, scope: !1576)
!1589 = !DILocation(line: 221, column: 15, scope: !1576)
!1590 = !DILocation(line: 221, column: 8, scope: !1576)
!1591 = !DILocation(line: 219, column: 7, scope: !1557)
!1592 = !DILocation(line: 222, column: 17, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 221, column: 39)
!1594 = !DILocation(line: 225, column: 10, scope: !1593)
!1595 = !DILocation(line: 225, column: 20, scope: !1593)
!1596 = !DILocation(line: 226, column: 10, scope: !1593)
!1597 = !DILocation(line: 226, column: 15, scope: !1593)
!1598 = !DILocation(line: 222, column: 4, scope: !1593)
!1599 = !DILocation(line: 229, column: 8, scope: !1593)
!1600 = !DILocation(line: 229, column: 4, scope: !1593)
!1601 = !DILocation(line: 230, column: 3, scope: !1593)
!1602 = !DILocation(line: 231, column: 3, scope: !1557)
!1603 = !DILocation(line: 236, column: 15, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 236, column: 7)
!1605 = !DILocation(line: 236, column: 8, scope: !1604)
!1606 = !DILocation(line: 236, column: 7, scope: !1557)
!1607 = !DILocation(line: 237, column: 17, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 236, column: 43)
!1609 = !DILocation(line: 240, column: 10, scope: !1608)
!1610 = !DILocation(line: 240, column: 20, scope: !1608)
!1611 = !DILocation(line: 237, column: 4, scope: !1608)
!1612 = !DILocation(line: 241, column: 8, scope: !1608)
!1613 = !DILocation(line: 241, column: 4, scope: !1608)
!1614 = !DILocation(line: 242, column: 3, scope: !1608)
!1615 = !DILocation(line: 244, column: 3, scope: !1557)
!1616 = !DILocation(line: 247, column: 15, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 247, column: 7)
!1618 = !DILocation(line: 247, column: 8, scope: !1617)
!1619 = !DILocation(line: 247, column: 7, scope: !1557)
!1620 = !DILocation(line: 248, column: 17, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 247, column: 45)
!1622 = !DILocation(line: 250, column: 10, scope: !1621)
!1623 = !DILocation(line: 250, column: 32, scope: !1621)
!1624 = !DILocation(line: 250, column: 19, scope: !1621)
!1625 = !DILocation(line: 248, column: 4, scope: !1621)
!1626 = !DILocation(line: 251, column: 8, scope: !1621)
!1627 = !DILocation(line: 251, column: 4, scope: !1621)
!1628 = !DILocation(line: 252, column: 3, scope: !1621)
!1629 = !DILocation(line: 253, column: 3, scope: !1557)
!1630 = !DILocation(line: 259, column: 33, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 259, column: 6)
!1632 = !DILocation(line: 259, column: 7, scope: !1631)
!1633 = !DILocation(line: 259, column: 6, scope: !1456)
!1634 = !DILocation(line: 260, column: 3, scope: !1631)
!1635 = !DILocation(line: 261, column: 30, scope: !1456)
!1636 = !DILocation(line: 261, column: 11, scope: !1456)
!1637 = !DILocation(line: 261, column: 9, scope: !1456)
!1638 = !DILocation(line: 262, column: 2, scope: !1456)
!1639 = !DILocation(line: 262, column: 9, scope: !1456)
!1640 = !DILocation(line: 262, column: 16, scope: !1456)
!1641 = !DILocation(line: 263, column: 24, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 262, column: 34)
!1643 = !DILocation(line: 263, column: 3, scope: !1642)
!1644 = !DILocation(line: 264, column: 9, scope: !1642)
!1645 = !DILocation(line: 265, column: 14, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 265, column: 3)
!1647 = !DILocation(line: 265, column: 12, scope: !1646)
!1648 = !DILocation(line: 265, column: 8, scope: !1646)
!1649 = !DILocation(line: 265, column: 18, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 265, column: 3)
!1651 = !DILocation(line: 265, column: 22, scope: !1650)
!1652 = !DILocation(line: 265, column: 3, scope: !1646)
!1653 = !DILocation(line: 266, column: 8, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 266, column: 8)
!1655 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 265, column: 51)
!1656 = !DILocation(line: 266, column: 13, scope: !1654)
!1657 = !DILocation(line: 266, column: 23, scope: !1654)
!1658 = !DILocation(line: 266, column: 8, scope: !1655)
!1659 = !DILocation(line: 267, column: 5, scope: !1654)
!1660 = !DILocation(line: 268, column: 35, scope: !1655)
!1661 = !DILocation(line: 268, column: 40, scope: !1655)
!1662 = !DILocation(line: 268, column: 51, scope: !1655)
!1663 = !DILocation(line: 268, column: 8, scope: !1655)
!1664 = !DILocation(line: 269, column: 15, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 269, column: 8)
!1666 = !DILocation(line: 269, column: 26, scope: !1665)
!1667 = !DILocation(line: 269, column: 38, scope: !1665)
!1668 = !DILocation(line: 269, column: 32, scope: !1665)
!1669 = !DILocation(line: 269, column: 8, scope: !1665)
!1670 = !DILocation(line: 269, column: 46, scope: !1665)
!1671 = !DILocation(line: 269, column: 8, scope: !1655)
!1672 = !DILocation(line: 270, column: 11, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 269, column: 52)
!1674 = !DILocation(line: 271, column: 5, scope: !1673)
!1675 = !DILocation(line: 273, column: 3, scope: !1655)
!1676 = !DILocation(line: 265, column: 37, scope: !1650)
!1677 = !DILocation(line: 265, column: 42, scope: !1650)
!1678 = !DILocation(line: 265, column: 35, scope: !1650)
!1679 = !DILocation(line: 265, column: 3, scope: !1650)
!1680 = distinct !{!1680, !1652, !1681, !1365}
!1681 = !DILocation(line: 273, column: 3, scope: !1646)
!1682 = !DILocation(line: 274, column: 8, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 274, column: 7)
!1684 = !DILocation(line: 274, column: 14, scope: !1683)
!1685 = !DILocation(line: 274, column: 25, scope: !1683)
!1686 = !DILocation(line: 274, column: 18, scope: !1683)
!1687 = !DILocation(line: 274, column: 7, scope: !1642)
!1688 = !DILocation(line: 275, column: 17, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 274, column: 48)
!1690 = !DILocation(line: 277, column: 10, scope: !1689)
!1691 = !DILocation(line: 277, column: 20, scope: !1689)
!1692 = !DILocation(line: 278, column: 35, scope: !1689)
!1693 = !DILocation(line: 279, column: 13, scope: !1689)
!1694 = !DILocation(line: 278, column: 10, scope: !1689)
!1695 = !DILocation(line: 275, column: 4, scope: !1689)
!1696 = !DILocation(line: 280, column: 8, scope: !1689)
!1697 = !DILocation(line: 280, column: 4, scope: !1689)
!1698 = !DILocation(line: 283, column: 3, scope: !1689)
!1699 = !DILocation(line: 284, column: 3, scope: !1642)
!1700 = !DILocation(line: 285, column: 30, scope: !1642)
!1701 = !DILocation(line: 285, column: 12, scope: !1642)
!1702 = !DILocation(line: 285, column: 10, scope: !1642)
!1703 = distinct !{!1703, !1638, !1704, !1365}
!1704 = !DILocation(line: 286, column: 2, scope: !1456)
!1705 = !DILocation(line: 288, column: 2, scope: !1456)
!1706 = !DILocation(line: 289, column: 33, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 289, column: 6)
!1708 = !DILocation(line: 289, column: 7, scope: !1707)
!1709 = !DILocation(line: 289, column: 6, scope: !1456)
!1710 = !DILocation(line: 290, column: 3, scope: !1707)
!1711 = !DILocation(line: 291, column: 30, scope: !1456)
!1712 = !DILocation(line: 291, column: 11, scope: !1456)
!1713 = !DILocation(line: 291, column: 9, scope: !1456)
!1714 = !DILocation(line: 292, column: 2, scope: !1456)
!1715 = !DILocation(line: 292, column: 9, scope: !1456)
!1716 = !DILocation(line: 292, column: 16, scope: !1456)
!1717 = !DILocation(line: 293, column: 24, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 292, column: 34)
!1719 = !DILocation(line: 293, column: 3, scope: !1718)
!1720 = !DILocation(line: 294, column: 9, scope: !1718)
!1721 = !DILocation(line: 295, column: 14, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 295, column: 3)
!1723 = !DILocation(line: 295, column: 12, scope: !1722)
!1724 = !DILocation(line: 295, column: 8, scope: !1722)
!1725 = !DILocation(line: 295, column: 18, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 295, column: 3)
!1727 = !DILocation(line: 295, column: 22, scope: !1726)
!1728 = !DILocation(line: 295, column: 3, scope: !1722)
!1729 = !DILocation(line: 296, column: 8, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 296, column: 8)
!1731 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 295, column: 51)
!1732 = !DILocation(line: 296, column: 13, scope: !1730)
!1733 = !DILocation(line: 296, column: 23, scope: !1730)
!1734 = !DILocation(line: 296, column: 8, scope: !1731)
!1735 = !DILocation(line: 297, column: 5, scope: !1730)
!1736 = !DILocation(line: 298, column: 36, scope: !1731)
!1737 = !DILocation(line: 298, column: 41, scope: !1731)
!1738 = !DILocation(line: 298, column: 52, scope: !1731)
!1739 = !DILocation(line: 298, column: 8, scope: !1731)
!1740 = !DILocation(line: 299, column: 15, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 299, column: 8)
!1742 = !DILocation(line: 299, column: 26, scope: !1741)
!1743 = !DILocation(line: 299, column: 38, scope: !1741)
!1744 = !DILocation(line: 299, column: 32, scope: !1741)
!1745 = !DILocation(line: 299, column: 8, scope: !1741)
!1746 = !DILocation(line: 299, column: 46, scope: !1741)
!1747 = !DILocation(line: 299, column: 8, scope: !1731)
!1748 = !DILocation(line: 300, column: 11, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1741, file: !3, line: 299, column: 52)
!1750 = !DILocation(line: 301, column: 5, scope: !1749)
!1751 = !DILocation(line: 303, column: 3, scope: !1731)
!1752 = !DILocation(line: 295, column: 37, scope: !1726)
!1753 = !DILocation(line: 295, column: 42, scope: !1726)
!1754 = !DILocation(line: 295, column: 35, scope: !1726)
!1755 = !DILocation(line: 295, column: 3, scope: !1726)
!1756 = distinct !{!1756, !1728, !1757, !1365}
!1757 = !DILocation(line: 303, column: 3, scope: !1722)
!1758 = !DILocation(line: 304, column: 8, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 304, column: 7)
!1760 = !DILocation(line: 304, column: 14, scope: !1759)
!1761 = !DILocation(line: 304, column: 25, scope: !1759)
!1762 = !DILocation(line: 304, column: 18, scope: !1759)
!1763 = !DILocation(line: 304, column: 7, scope: !1718)
!1764 = !DILocation(line: 305, column: 17, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 304, column: 51)
!1766 = !DILocation(line: 307, column: 10, scope: !1765)
!1767 = !DILocation(line: 307, column: 20, scope: !1765)
!1768 = !DILocation(line: 308, column: 36, scope: !1765)
!1769 = !DILocation(line: 309, column: 13, scope: !1765)
!1770 = !DILocation(line: 308, column: 10, scope: !1765)
!1771 = !DILocation(line: 305, column: 4, scope: !1765)
!1772 = !DILocation(line: 310, column: 8, scope: !1765)
!1773 = !DILocation(line: 310, column: 4, scope: !1765)
!1774 = !DILocation(line: 313, column: 3, scope: !1765)
!1775 = !DILocation(line: 314, column: 3, scope: !1718)
!1776 = !DILocation(line: 315, column: 30, scope: !1718)
!1777 = !DILocation(line: 315, column: 12, scope: !1718)
!1778 = !DILocation(line: 315, column: 10, scope: !1718)
!1779 = distinct !{!1779, !1714, !1780, !1365}
!1780 = !DILocation(line: 316, column: 2, scope: !1456)
!1781 = !DILocation(line: 318, column: 2, scope: !1456)
!1782 = !DILocation(line: 322, column: 14, scope: !1483)
!1783 = !DILocation(line: 322, column: 7, scope: !1483)
!1784 = !DILocation(line: 322, column: 6, scope: !1456)
!1785 = !DILocation(line: 323, column: 3, scope: !1482)
!1786 = !DILocation(line: 323, column: 8, scope: !1482)
!1787 = !DILocation(line: 324, column: 14, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 324, column: 3)
!1789 = !DILocation(line: 324, column: 12, scope: !1788)
!1790 = !DILocation(line: 324, column: 8, scope: !1788)
!1791 = !DILocation(line: 324, column: 18, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 324, column: 3)
!1793 = !DILocation(line: 324, column: 22, scope: !1792)
!1794 = !DILocation(line: 324, column: 3, scope: !1788)
!1795 = !DILocation(line: 325, column: 12, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 324, column: 51)
!1797 = !DILocation(line: 325, column: 17, scope: !1796)
!1798 = !DILocation(line: 325, column: 4, scope: !1796)
!1799 = !DILocation(line: 327, column: 16, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 325, column: 28)
!1801 = !DILocation(line: 327, column: 14, scope: !1800)
!1802 = !DILocation(line: 328, column: 36, scope: !1800)
!1803 = !DILocation(line: 328, column: 41, scope: !1800)
!1804 = !DILocation(line: 328, column: 52, scope: !1800)
!1805 = !DILocation(line: 328, column: 9, scope: !1800)
!1806 = !DILocation(line: 329, column: 10, scope: !1800)
!1807 = !DILocation(line: 330, column: 5, scope: !1800)
!1808 = !DILocation(line: 332, column: 16, scope: !1800)
!1809 = !DILocation(line: 332, column: 14, scope: !1800)
!1810 = !DILocation(line: 333, column: 37, scope: !1800)
!1811 = !DILocation(line: 333, column: 42, scope: !1800)
!1812 = !DILocation(line: 333, column: 53, scope: !1800)
!1813 = !DILocation(line: 333, column: 9, scope: !1800)
!1814 = !DILocation(line: 334, column: 10, scope: !1800)
!1815 = !DILocation(line: 335, column: 5, scope: !1800)
!1816 = !DILocation(line: 337, column: 6, scope: !1800)
!1817 = !DILocation(line: 339, column: 10, scope: !1796)
!1818 = !DILocation(line: 340, column: 34, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 340, column: 8)
!1820 = !DILocation(line: 340, column: 8, scope: !1819)
!1821 = !DILocation(line: 340, column: 8, scope: !1796)
!1822 = !DILocation(line: 341, column: 33, scope: !1819)
!1823 = !DILocation(line: 341, column: 14, scope: !1819)
!1824 = !DILocation(line: 341, column: 12, scope: !1819)
!1825 = !DILocation(line: 341, column: 5, scope: !1819)
!1826 = !DILocation(line: 343, column: 12, scope: !1819)
!1827 = !DILocation(line: 344, column: 4, scope: !1796)
!1828 = !DILocation(line: 344, column: 11, scope: !1796)
!1829 = !DILocation(line: 344, column: 18, scope: !1796)
!1830 = !DILocation(line: 344, column: 35, scope: !1796)
!1831 = !DILocation(line: 344, column: 39, scope: !1796)
!1832 = !DILocation(line: 344, column: 38, scope: !1796)
!1833 = !DILocation(line: 0, scope: !1796)
!1834 = !DILocation(line: 345, column: 26, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 344, column: 46)
!1836 = !DILocation(line: 345, column: 5, scope: !1835)
!1837 = !DILocation(line: 346, column: 16, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 346, column: 9)
!1839 = !DILocation(line: 346, column: 27, scope: !1838)
!1840 = !DILocation(line: 346, column: 39, scope: !1838)
!1841 = !DILocation(line: 346, column: 33, scope: !1838)
!1842 = !DILocation(line: 346, column: 9, scope: !1838)
!1843 = !DILocation(line: 346, column: 47, scope: !1838)
!1844 = !DILocation(line: 346, column: 9, scope: !1835)
!1845 = !DILocation(line: 347, column: 12, scope: !1838)
!1846 = !DILocation(line: 347, column: 6, scope: !1838)
!1847 = !DILocation(line: 348, column: 5, scope: !1835)
!1848 = !DILocation(line: 349, column: 32, scope: !1835)
!1849 = !DILocation(line: 349, column: 14, scope: !1835)
!1850 = !DILocation(line: 349, column: 12, scope: !1835)
!1851 = distinct !{!1851, !1827, !1852, !1365}
!1852 = !DILocation(line: 350, column: 4, scope: !1796)
!1853 = !DILocation(line: 351, column: 9, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 351, column: 8)
!1855 = !DILocation(line: 351, column: 8, scope: !1796)
!1856 = !DILocation(line: 352, column: 18, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 351, column: 16)
!1858 = !DILocation(line: 354, column: 11, scope: !1857)
!1859 = !DILocation(line: 354, column: 21, scope: !1857)
!1860 = !DILocation(line: 354, column: 30, scope: !1857)
!1861 = !DILocation(line: 355, column: 21, scope: !1857)
!1862 = !DILocation(line: 355, column: 26, scope: !1857)
!1863 = !DILocation(line: 355, column: 37, scope: !1857)
!1864 = !DILocation(line: 356, column: 14, scope: !1857)
!1865 = !DILocation(line: 355, column: 11, scope: !1857)
!1866 = !DILocation(line: 352, column: 5, scope: !1857)
!1867 = !DILocation(line: 359, column: 18, scope: !1857)
!1868 = !DILocation(line: 360, column: 4, scope: !1857)
!1869 = !DILocation(line: 361, column: 3, scope: !1796)
!1870 = !DILocation(line: 324, column: 37, scope: !1792)
!1871 = !DILocation(line: 324, column: 42, scope: !1792)
!1872 = !DILocation(line: 324, column: 35, scope: !1792)
!1873 = !DILocation(line: 324, column: 3, scope: !1792)
!1874 = distinct !{!1874, !1794, !1875, !1365}
!1875 = !DILocation(line: 361, column: 3, scope: !1788)
!1876 = !DILocation(line: 362, column: 7, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 362, column: 7)
!1878 = !DILocation(line: 362, column: 7, scope: !1482)
!1879 = !DILocation(line: 363, column: 8, scope: !1877)
!1880 = !DILocation(line: 363, column: 4, scope: !1877)
!1881 = !DILocation(line: 364, column: 2, scope: !1483)
!1882 = !DILocation(line: 364, column: 2, scope: !1482)
!1883 = !DILocation(line: 365, column: 15, scope: !1456)
!1884 = !DILocation(line: 365, column: 2, scope: !1456)
!1885 = !DILocation(line: 366, column: 10, scope: !1456)
!1886 = !DILocation(line: 366, column: 2, scope: !1456)
!1887 = !DILocation(line: 367, column: 1, scope: !1456)
!1888 = !DISubprogram(name: "dns_zone_setchecksrv", scope: !6, file: !6, line: 2067, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1889 = distinct !DISubprogram(name: "checksrv", scope: !3, file: !3, line: 452, type: !1255, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1890)
!1890 = !{!1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901}
!1891 = !DILocalVariable(name: "zone", arg: 1, scope: !1889, file: !3, line: 452, type: !661)
!1892 = !DILocalVariable(name: "name", arg: 2, scope: !1889, file: !3, line: 452, type: !780)
!1893 = !DILocalVariable(name: "owner", arg: 3, scope: !1889, file: !3, line: 452, type: !780)
!1894 = !DILocalVariable(name: "hints", scope: !1889, file: !3, line: 453, type: !1263)
!1895 = !DILocalVariable(name: "ai", scope: !1889, file: !3, line: 453, type: !1283)
!1896 = !DILocalVariable(name: "cur", scope: !1889, file: !3, line: 453, type: !1283)
!1897 = !DILocalVariable(name: "namebuf", scope: !1889, file: !3, line: 454, type: !1287)
!1898 = !DILocalVariable(name: "ownerbuf", scope: !1889, file: !3, line: 455, type: !1291)
!1899 = !DILocalVariable(name: "result", scope: !1889, file: !3, line: 456, type: !482)
!1900 = !DILocalVariable(name: "level", scope: !1889, file: !3, line: 457, type: !482)
!1901 = !DILocalVariable(name: "answer", scope: !1889, file: !3, line: 458, type: !272)
!1902 = !DILocation(line: 452, column: 22, scope: !1889)
!1903 = !DILocation(line: 452, column: 46, scope: !1889)
!1904 = !DILocation(line: 452, column: 70, scope: !1889)
!1905 = !DILocation(line: 453, column: 2, scope: !1889)
!1906 = !DILocation(line: 453, column: 18, scope: !1889)
!1907 = !DILocation(line: 453, column: 26, scope: !1889)
!1908 = !DILocation(line: 453, column: 31, scope: !1889)
!1909 = !DILocation(line: 454, column: 2, scope: !1889)
!1910 = !DILocation(line: 454, column: 7, scope: !1889)
!1911 = !DILocation(line: 455, column: 2, scope: !1889)
!1912 = !DILocation(line: 455, column: 7, scope: !1889)
!1913 = !DILocation(line: 456, column: 2, scope: !1889)
!1914 = !DILocation(line: 456, column: 6, scope: !1889)
!1915 = !DILocation(line: 457, column: 2, scope: !1889)
!1916 = !DILocation(line: 457, column: 6, scope: !1889)
!1917 = !DILocation(line: 458, column: 2, scope: !1889)
!1918 = !DILocation(line: 458, column: 7, scope: !1889)
!1919 = !DILocation(line: 460, column: 2, scope: !1889)
!1920 = !DILocation(line: 461, column: 8, scope: !1889)
!1921 = !DILocation(line: 461, column: 17, scope: !1889)
!1922 = !DILocation(line: 462, column: 8, scope: !1889)
!1923 = !DILocation(line: 462, column: 18, scope: !1889)
!1924 = !DILocation(line: 463, column: 8, scope: !1889)
!1925 = !DILocation(line: 463, column: 20, scope: !1889)
!1926 = !DILocation(line: 464, column: 8, scope: !1889)
!1927 = !DILocation(line: 464, column: 20, scope: !1889)
!1928 = !DILocation(line: 466, column: 18, scope: !1889)
!1929 = !DILocation(line: 466, column: 24, scope: !1889)
!1930 = !DILocation(line: 466, column: 2, scope: !1889)
!1931 = !DILocation(line: 470, column: 27, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 470, column: 6)
!1933 = !DILocation(line: 470, column: 6, scope: !1932)
!1934 = !DILocation(line: 470, column: 33, scope: !1932)
!1935 = !DILocation(line: 470, column: 6, scope: !1889)
!1936 = !DILocation(line: 471, column: 11, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 470, column: 39)
!1938 = !DILocation(line: 471, column: 3, scope: !1937)
!1939 = !DILocation(line: 472, column: 2, scope: !1937)
!1940 = !DILocation(line: 473, column: 18, scope: !1889)
!1941 = !DILocation(line: 473, column: 25, scope: !1889)
!1942 = !DILocation(line: 473, column: 2, scope: !1889)
!1943 = !DILocation(line: 475, column: 23, scope: !1889)
!1944 = !DILocation(line: 475, column: 11, scope: !1889)
!1945 = !DILocation(line: 475, column: 9, scope: !1889)
!1946 = !DILocation(line: 476, column: 18, scope: !1889)
!1947 = !DILocation(line: 476, column: 24, scope: !1889)
!1948 = !DILocation(line: 476, column: 2, scope: !1889)
!1949 = !DILocation(line: 477, column: 10, scope: !1889)
!1950 = !DILocation(line: 477, column: 2, scope: !1889)
!1951 = !DILocation(line: 483, column: 9, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 477, column: 18)
!1953 = !DILocation(line: 483, column: 7, scope: !1952)
!1954 = !DILocation(line: 484, column: 3, scope: !1952)
!1955 = !DILocation(line: 484, column: 10, scope: !1952)
!1956 = !DILocation(line: 484, column: 14, scope: !1952)
!1957 = !DILocation(line: 484, column: 22, scope: !1952)
!1958 = !DILocation(line: 484, column: 25, scope: !1952)
!1959 = !DILocation(line: 484, column: 30, scope: !1952)
!1960 = !DILocation(line: 484, column: 43, scope: !1952)
!1961 = !DILocation(line: 484, column: 51, scope: !1952)
!1962 = !DILocation(line: 485, column: 10, scope: !1952)
!1963 = !DILocation(line: 485, column: 15, scope: !1952)
!1964 = !DILocation(line: 485, column: 23, scope: !1952)
!1965 = !DILocation(line: 0, scope: !1952)
!1966 = !DILocation(line: 486, column: 10, scope: !1952)
!1967 = !DILocation(line: 486, column: 15, scope: !1952)
!1968 = !DILocation(line: 486, column: 8, scope: !1952)
!1969 = distinct !{!1969, !1954, !1967, !1365}
!1970 = !DILocation(line: 487, column: 7, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 487, column: 7)
!1972 = !DILocation(line: 487, column: 11, scope: !1971)
!1973 = !DILocation(line: 487, column: 19, scope: !1971)
!1974 = !DILocation(line: 487, column: 22, scope: !1971)
!1975 = !DILocation(line: 487, column: 27, scope: !1971)
!1976 = !DILocation(line: 487, column: 40, scope: !1971)
!1977 = !DILocation(line: 487, column: 48, scope: !1971)
!1978 = !DILocation(line: 488, column: 18, scope: !1971)
!1979 = !DILocation(line: 488, column: 23, scope: !1971)
!1980 = !DILocation(line: 488, column: 37, scope: !1971)
!1981 = !DILocation(line: 488, column: 7, scope: !1971)
!1982 = !DILocation(line: 488, column: 46, scope: !1971)
!1983 = !DILocation(line: 487, column: 7, scope: !1952)
!1984 = !DILocation(line: 489, column: 9, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 489, column: 8)
!1986 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 488, column: 52)
!1987 = !DILocation(line: 489, column: 22, scope: !1985)
!1988 = !DILocation(line: 489, column: 50, scope: !1985)
!1989 = !DILocation(line: 489, column: 8, scope: !1986)
!1990 = !DILocation(line: 490, column: 11, scope: !1985)
!1991 = !DILocation(line: 490, column: 5, scope: !1985)
!1992 = !DILocation(line: 491, column: 9, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 491, column: 8)
!1994 = !DILocation(line: 491, column: 22, scope: !1993)
!1995 = !DILocation(line: 491, column: 52, scope: !1993)
!1996 = !DILocation(line: 491, column: 8, scope: !1986)
!1997 = !DILocation(line: 492, column: 17, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 492, column: 9)
!1999 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 491, column: 58)
!2000 = !DILocation(line: 492, column: 10, scope: !1998)
!2001 = !DILocation(line: 492, column: 9, scope: !1999)
!2002 = !DILocation(line: 493, column: 19, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 492, column: 44)
!2004 = !DILocation(line: 493, column: 25, scope: !2003)
!2005 = !DILocation(line: 496, column: 12, scope: !2003)
!2006 = !DILocation(line: 496, column: 22, scope: !2003)
!2007 = !DILocation(line: 497, column: 12, scope: !2003)
!2008 = !DILocation(line: 497, column: 17, scope: !2003)
!2009 = !DILocation(line: 493, column: 6, scope: !2003)
!2010 = !DILocation(line: 498, column: 10, scope: !2003)
!2011 = !DILocation(line: 498, column: 6, scope: !2003)
!2012 = !DILocation(line: 499, column: 5, scope: !2003)
!2013 = !DILocation(line: 500, column: 9, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 500, column: 9)
!2015 = !DILocation(line: 500, column: 15, scope: !2014)
!2016 = !DILocation(line: 500, column: 9, scope: !1999)
!2017 = !DILocation(line: 501, column: 13, scope: !2014)
!2018 = !DILocation(line: 501, column: 6, scope: !2014)
!2019 = !DILocation(line: 502, column: 4, scope: !1999)
!2020 = !DILocation(line: 503, column: 3, scope: !1986)
!2021 = !DILocation(line: 504, column: 16, scope: !1952)
!2022 = !DILocation(line: 504, column: 3, scope: !1952)
!2023 = !DILocation(line: 505, column: 11, scope: !1952)
!2024 = !DILocation(line: 505, column: 3, scope: !1952)
!2025 = !DILocation(line: 511, column: 15, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 511, column: 7)
!2027 = !DILocation(line: 511, column: 8, scope: !2026)
!2028 = !DILocation(line: 511, column: 7, scope: !1952)
!2029 = !DILocation(line: 512, column: 17, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 511, column: 43)
!2031 = !DILocation(line: 515, column: 10, scope: !2030)
!2032 = !DILocation(line: 515, column: 20, scope: !2030)
!2033 = !DILocation(line: 512, column: 4, scope: !2030)
!2034 = !DILocation(line: 516, column: 8, scope: !2030)
!2035 = !DILocation(line: 516, column: 4, scope: !2030)
!2036 = !DILocation(line: 517, column: 3, scope: !2030)
!2037 = !DILocation(line: 519, column: 3, scope: !1952)
!2038 = !DILocation(line: 522, column: 15, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 522, column: 7)
!2040 = !DILocation(line: 522, column: 8, scope: !2039)
!2041 = !DILocation(line: 522, column: 7, scope: !1952)
!2042 = !DILocation(line: 523, column: 17, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 522, column: 45)
!2044 = !DILocation(line: 525, column: 10, scope: !2043)
!2045 = !DILocation(line: 525, column: 32, scope: !2043)
!2046 = !DILocation(line: 525, column: 19, scope: !2043)
!2047 = !DILocation(line: 523, column: 4, scope: !2043)
!2048 = !DILocation(line: 526, column: 8, scope: !2043)
!2049 = !DILocation(line: 526, column: 4, scope: !2043)
!2050 = !DILocation(line: 527, column: 3, scope: !2043)
!2051 = !DILocation(line: 528, column: 3, scope: !1952)
!2052 = !DILocation(line: 530, column: 1, scope: !1889)
!2053 = !DISubprogram(name: "dns_zone_load", scope: !6, file: !6, line: 341, type: !2054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!492, !661, !272}
!2056 = distinct !DISubprogram(name: "check_ttls", scope: !3, file: !3, line: 563, type: !2057, scopeLine: 563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!492, !661, !659}
!2059 = !{!2060, !2061, !2062, !2063, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2443, !2445, !2446, !2447}
!2060 = !DILocalVariable(name: "zone", arg: 1, scope: !2056, file: !3, line: 563, type: !661)
!2061 = !DILocalVariable(name: "maxttl", arg: 2, scope: !2056, file: !3, line: 563, type: !659)
!2062 = !DILocalVariable(name: "result", scope: !2056, file: !3, line: 564, type: !492)
!2063 = !DILocalVariable(name: "db", scope: !2056, file: !3, line: 565, type: !2064)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_db_t", file: !45, line: 54, baseType: !2066)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_db", file: !2067, line: 223, size: 1024, elements: !2068)
!2067 = !DIFile(filename: "lib/dns/include/dns/db.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "f7341a6445a0da00d6edbc7f74bf2ce5")
!2068 = !{!2069, !2070, !2071, !2403, !2404, !2405, !2406, !2407}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2066, file: !2067, line: 224, baseType: !7, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !2066, file: !2067, line: 225, baseType: !7, size: 32, offset: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !2066, file: !2067, line: 226, baseType: !2072, size: 64, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbmethods_t", file: !2067, line: 200, baseType: !2074)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dbmethods", file: !2067, line: 71, size: 3072, elements: !2075)
!2075 = !{!2076, !2081, !2085, !2092, !2093, !2097, !2101, !2106, !2110, !2114, !2118, !2125, !2129, !2133, !2137, !2141, !2145, !2149, !2192, !2196, !2229, !2233, !2237, !2241, !2245, !2249, !2250, !2254, !2261, !2265, !2269, !2278, !2279, !2283, !2287, !2291, !2292, !2299, !2303, !2307, !2367, !2371, !2378, !2382, !2386, !2393, !2397, !2402}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2074, file: !2067, line: 72, baseType: !2077, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{null, !2064, !2080}
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2074, file: !2067, line: 73, baseType: !2082, size: 64, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{null, !2080}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "beginload", scope: !2074, file: !2067, line: 74, baseType: !2086, size: 64, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!492, !2064, !2089}
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatacallbacks_t", file: !45, line: 120, baseType: !2091)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatacallbacks", file: !45, line: 120, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "endload", scope: !2074, file: !2067, line: 76, baseType: !2086, size: 64, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "serialize", scope: !2074, file: !2067, line: 78, baseType: !2094, size: 64, offset: 256)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!492, !2064, !809, !493}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !2074, file: !2067, line: 80, baseType: !2098, size: 64, offset: 320)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!492, !2064, !809, !213, !658}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "currentversion", scope: !2074, file: !2067, line: 83, baseType: !2102, size: 64, offset: 384)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{null, !2064, !2105}
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "newversion", scope: !2074, file: !2067, line: 85, baseType: !2107, size: 64, offset: 448)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!492, !2064, !2105}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "attachversion", scope: !2074, file: !2067, line: 87, baseType: !2111, size: 64, offset: 512)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{null, !2064, !809, !2105}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "closeversion", scope: !2074, file: !2067, line: 89, baseType: !2115, size: 64, offset: 576)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{null, !2064, !2105, !272}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "findnode", scope: !2074, file: !2067, line: 92, baseType: !2119, size: 64, offset: 640)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!492, !2064, !780, !272, !2122}
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbnode_t", file: !45, line: 58, baseType: null)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "find", scope: !2074, file: !2067, line: 95, baseType: !2126, size: 64, offset: 704)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!492, !2064, !780, !809, !216, !7, !1000, !2122, !723, !729, !729}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "findzonecut", scope: !2074, file: !2067, line: 102, baseType: !2130, size: 64, offset: 768)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!492, !2064, !780, !7, !1000, !2122, !723, !723, !729, !729}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "attachnode", scope: !2074, file: !2067, line: 109, baseType: !2134, size: 64, offset: 832)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{null, !2064, !2123, !2122}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "detachnode", scope: !2074, file: !2067, line: 112, baseType: !2138, size: 64, offset: 896)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{null, !2064, !2122}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "expirenode", scope: !2074, file: !2067, line: 114, baseType: !2142, size: 64, offset: 960)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!492, !2064, !2123, !1000}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "printnode", scope: !2074, file: !2067, line: 116, baseType: !2146, size: 64, offset: 1024)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{null, !2064, !2123, !493}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "createiterator", scope: !2074, file: !2067, line: 118, baseType: !2150, size: 64, offset: 1088)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!492, !2064, !7, !2153}
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbiterator_t", file: !45, line: 56, baseType: !2156)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dbiterator", file: !2157, line: 97, size: 256, elements: !2158)
!2157 = !DIFile(filename: "lib/dns/include/dns/dbiterator.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "e80aa0115ff591a0b9e600123d76473d")
!2158 = !{!2159, !2160, !2189, !2190, !2191}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2156, file: !2157, line: 99, baseType: !7, size: 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !2156, file: !2157, line: 100, baseType: !2161, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbiteratormethods_t", file: !2157, line: 83, baseType: !2163)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dbiteratormethods", file: !2157, line: 70, size: 576, elements: !2164)
!2164 = !{!2165, !2169, !2173, !2174, !2178, !2179, !2180, !2184, !2185}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2163, file: !2157, line: 71, baseType: !2166, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{null, !2153}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2163, file: !2157, line: 72, baseType: !2170, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!492, !2154}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !2163, file: !2157, line: 73, baseType: !2170, size: 64, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !2163, file: !2157, line: 74, baseType: !2175, size: 64, offset: 192)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!492, !2154, !780}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2163, file: !2157, line: 76, baseType: !2170, size: 64, offset: 256)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2163, file: !2157, line: 77, baseType: !2170, size: 64, offset: 320)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !2163, file: !2157, line: 78, baseType: !2181, size: 64, offset: 384)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!492, !2154, !2122, !723}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "pause", scope: !2163, file: !2157, line: 80, baseType: !2170, size: 64, offset: 448)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !2163, file: !2157, line: 81, baseType: !2186, size: 64, offset: 512)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!492, !2154, !723}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !2156, file: !2157, line: 101, baseType: !2064, size: 64, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "relative_names", scope: !2156, file: !2157, line: 102, baseType: !272, size: 8, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "cleaning", scope: !2156, file: !2157, line: 103, baseType: !272, size: 8, offset: 200)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "findrdataset", scope: !2074, file: !2067, line: 120, baseType: !2193, size: 64, offset: 1152)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!492, !2064, !2123, !809, !216, !216, !1000, !729, !729}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "allrdatasets", scope: !2074, file: !2067, line: 127, baseType: !2197, size: 64, offset: 1216)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!492, !2064, !2123, !809, !1000, !2200}
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatasetiter_t", file: !45, line: 125, baseType: !2203)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatasetiter", file: !2204, line: 89, size: 384, elements: !2205)
!2204 = !DIFile(filename: "lib/dns/include/dns/rdatasetiter.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "9746ed7a00ac2faebfbf0cffc47d675f")
!2205 = !{!2206, !2207, !2225, !2226, !2227, !2228}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2203, file: !2204, line: 91, baseType: !7, size: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !2203, file: !2204, line: 92, baseType: !2208, size: 64, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdatasetitermethods_t", file: !2204, line: 75, baseType: !2210)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdatasetitermethods", file: !2204, line: 69, size: 256, elements: !2211)
!2211 = !{!2212, !2216, !2220, !2221}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2210, file: !2204, line: 70, baseType: !2213, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{null, !2200}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2210, file: !2204, line: 71, baseType: !2217, size: 64, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!492, !2201}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2210, file: !2204, line: 72, baseType: !2217, size: 64, offset: 128)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !2210, file: !2204, line: 73, baseType: !2222, size: 64, offset: 192)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{null, !2201, !729}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !2203, file: !2204, line: 93, baseType: !2064, size: 64, offset: 128)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2203, file: !2204, line: 94, baseType: !2123, size: 64, offset: 192)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2203, file: !2204, line: 95, baseType: !809, size: 64, offset: 256)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "now", scope: !2203, file: !2204, line: 96, baseType: !1000, size: 32, offset: 320)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "addrdataset", scope: !2074, file: !2067, line: 131, baseType: !2230, size: 64, offset: 1280)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!492, !2064, !2123, !809, !1000, !729, !7, !729}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "subtractrdataset", scope: !2074, file: !2067, line: 137, baseType: !2234, size: 64, offset: 1344)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!492, !2064, !2123, !809, !729, !7, !729}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "deleterdataset", scope: !2074, file: !2067, line: 142, baseType: !2238, size: 64, offset: 1408)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!492, !2064, !2123, !809, !216, !216}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "issecure", scope: !2074, file: !2067, line: 146, baseType: !2242, size: 64, offset: 1472)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!272, !2064}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "nodecount", scope: !2074, file: !2067, line: 147, baseType: !2246, size: 64, offset: 1536)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!7, !2064}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "ispersistent", scope: !2074, file: !2067, line: 148, baseType: !2242, size: 64, offset: 1600)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "overmem", scope: !2074, file: !2067, line: 149, baseType: !2251, size: 64, offset: 1664)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{null, !2064, !272}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "settask", scope: !2074, file: !2067, line: 150, baseType: !2255, size: 64, offset: 1728)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{null, !2064, !2258}
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_task_t", file: !356, line: 77, baseType: !2260)
!2260 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_task", file: !356, line: 77, flags: DIFlagFwdDecl)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "getoriginnode", scope: !2074, file: !2067, line: 151, baseType: !2262, size: 64, offset: 1792)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!492, !2064, !2122}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "transfernode", scope: !2074, file: !2067, line: 152, baseType: !2266, size: 64, offset: 1856)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{null, !2064, !2122, !2122}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "getnsec3parameters", scope: !2074, file: !2067, line: 154, baseType: !2270, size: 64, offset: 1920)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!492, !2064, !809, !2273, !2275, !2276, !713, !2277}
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_hash_t", file: !45, line: 166, baseType: !206)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "findnsec3node", scope: !2074, file: !2067, line: 161, baseType: !2119, size: 64, offset: 1984)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "setsigningtime", scope: !2074, file: !2067, line: 164, baseType: !2280, size: 64, offset: 2048)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!492, !2064, !729, !1000}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "getsigningtime", scope: !2074, file: !2067, line: 167, baseType: !2284, size: 64, offset: 2112)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!492, !2064, !729, !723}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "resigned", scope: !2074, file: !2067, line: 170, baseType: !2288, size: 64, offset: 2176)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{null, !2064, !729, !809}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "isdnssec", scope: !2074, file: !2067, line: 172, baseType: !2242, size: 64, offset: 2240)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "getrrsetstats", scope: !2074, file: !2067, line: 173, baseType: !2293, size: 64, offset: 2304)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!2296, !2064}
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_stats_t", file: !45, line: 137, baseType: !2298)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_stats", file: !45, line: 137, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "rpz_attach", scope: !2074, file: !2067, line: 174, baseType: !2300, size: 64, offset: 2368)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{null, !2064, !210, !256}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "rpz_ready", scope: !2074, file: !2067, line: 176, baseType: !2304, size: 64, offset: 2432)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!492, !2064}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "findnodeext", scope: !2074, file: !2067, line: 177, baseType: !2308, size: 64, offset: 2496)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!492, !2064, !780, !272, !2311, !2323, !2122}
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_clientinfomethods_t", file: !2313, line: 68, baseType: !2314)
!2313 = !DIFile(filename: "lib/dns/include/dns/clientinfo.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "f273dbbef534c5352c6d152e1993b2e9")
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_clientinfomethods", file: !2313, line: 64, size: 128, elements: !2315)
!2315 = !{!2316, !2317, !2318}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2314, file: !2313, line: 65, baseType: !217, size: 16)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "age", scope: !2314, file: !2313, line: 66, baseType: !217, size: 16, offset: 16)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "sourceip", scope: !2314, file: !2313, line: 67, baseType: !2319, size: 64, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_clientinfo_sourceip_t", file: !2313, line: 58, baseType: !2320)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!492, !2323, !2330}
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_clientinfo_t", file: !2313, line: 56, baseType: !2325)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_clientinfo", file: !2313, line: 52, size: 192, elements: !2326)
!2326 = !{!2327, !2328, !2329}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2325, file: !2313, line: 53, baseType: !217, size: 16)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2325, file: !2313, line: 54, baseType: !210, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "dbversion", scope: !2325, file: !2313, line: 55, baseType: !210, size: 64, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_sockaddr_t", file: !356, line: 69, baseType: !2333)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_sockaddr", file: !2334, line: 27, size: 1216, elements: !2335)
!2334 = !DIFile(filename: "lib/isc/include/isc/sockaddr.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "b46a0f057942d922d0824c5621821d46")
!2335 = !{!2336, !2360, !2361}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2333, file: !2334, line: 36, baseType: !2337, size: 1024)
!2337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2333, file: !2334, line: 28, size: 1024, elements: !2338)
!2338 = !{!2339, !2340, !2341, !2342, !2351}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2337, file: !2334, line: 29, baseType: !1276, size: 128)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !2337, file: !2334, line: 30, baseType: !223, size: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "sin6", scope: !2337, file: !2334, line: 31, baseType: !243, size: 224)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2337, file: !2334, line: 32, baseType: !2343, size: 1024)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !1272, line: 193, size: 1024, elements: !2344)
!2344 = !{!2345, !2346, !2350}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !2343, file: !1272, line: 195, baseType: !226, size: 16)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !2343, file: !1272, line: 196, baseType: !2347, size: 944, offset: 16)
!2347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 944, elements: !2348)
!2348 = !{!2349}
!2349 = !DISubrange(count: 118)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !2343, file: !1272, line: 197, baseType: !408, size: 64, offset: 960)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "sunix", scope: !2337, file: !2334, line: 34, baseType: !2352, size: 880)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !2353, line: 29, size: 880, elements: !2354)
!2353 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/un.h", directory: "", checksumkind: CSK_MD5, checksum: "543d98cd612c9215c9333043f81a0cd3")
!2354 = !{!2355, !2356}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !2352, file: !2353, line: 31, baseType: !226, size: 16)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !2352, file: !2353, line: 32, baseType: !2357, size: 864, offset: 16)
!2357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 864, elements: !2358)
!2358 = !{!2359}
!2359 = !DISubrange(count: 108)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2333, file: !2334, line: 37, baseType: !7, size: 32, offset: 1024)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2333, file: !2334, line: 38, baseType: !2362, size: 128, offset: 1088)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2333, file: !2334, line: 38, size: 128, elements: !2363)
!2363 = !{!2364, !2366}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2362, file: !2334, line: 38, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2362, file: !2334, line: 38, baseType: !2365, size: 64, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "findext", scope: !2074, file: !2067, line: 182, baseType: !2368, size: 64, offset: 2560)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!492, !2064, !780, !809, !216, !7, !1000, !2122, !723, !2311, !2323, !729, !729}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "setcachestats", scope: !2074, file: !2067, line: 191, baseType: !2372, size: 64, offset: 2624)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!492, !2064, !2375}
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_stats_t", file: !356, line: 74, baseType: !2377)
!2377 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_stats", file: !356, line: 74, flags: DIFlagFwdDecl)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "hashsize", scope: !2074, file: !2067, line: 192, baseType: !2379, size: 64, offset: 2688)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!406, !2064}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "nodefullname", scope: !2074, file: !2067, line: 193, baseType: !2383, size: 64, offset: 2752)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!492, !2064, !2123, !723}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "getsize", scope: !2074, file: !2067, line: 195, baseType: !2387, size: 64, offset: 2816)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!492, !2064, !809, !2390, !2390}
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !218, line: 27, baseType: !2392)
!2392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !220, line: 45, baseType: !408)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "setservestalettl", scope: !2074, file: !2067, line: 197, baseType: !2394, size: 64, offset: 2880)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!492, !2064, !659}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "getservestalettl", scope: !2074, file: !2067, line: 198, baseType: !2398, size: 64, offset: 2944)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!492, !2064, !2401}
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "setgluecachestats", scope: !2074, file: !2067, line: 199, baseType: !2372, size: 64, offset: 3008)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2066, file: !2067, line: 227, baseType: !217, size: 16, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "rdclass", scope: !2066, file: !2067, line: 228, baseType: !674, size: 16, offset: 144)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !2066, file: !2067, line: 229, baseType: !707, size: 640, offset: 192)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !2066, file: !2067, line: 230, baseType: !390, size: 64, offset: 832)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "update_listeners", scope: !2066, file: !2067, line: 231, baseType: !2408, size: 128, offset: 896)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2066, file: !2067, line: 231, size: 128, elements: !2409)
!2409 = !{!2410, !2426}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2408, file: !2067, line: 231, baseType: !2411, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbonupdatelistener_t", file: !45, line: 59, baseType: !2413)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_dbonupdatelistener", file: !2067, line: 237, size: 256, elements: !2414)
!2414 = !{!2415, !2420, !2421}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "onupdate", scope: !2413, file: !2067, line: 238, baseType: !2416, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_dbupdate_callback_t", file: !2067, line: 209, baseType: !2417)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!492, !2064, !210}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "onupdate_arg", scope: !2413, file: !2067, line: 239, baseType: !210, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2413, file: !2067, line: 240, baseType: !2422, size: 128, offset: 128)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2413, file: !2067, line: 240, size: 128, elements: !2423)
!2423 = !{!2424, !2425}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2422, file: !2067, line: 240, baseType: !2411, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2422, file: !2067, line: 240, baseType: !2411, size: 64, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2408, file: !2067, line: 231, baseType: !2411, size: 64, offset: 64)
!2427 = !DILocalVariable(name: "version", scope: !2056, file: !3, line: 566, type: !809)
!2428 = !DILocalVariable(name: "node", scope: !2056, file: !3, line: 567, type: !2123)
!2429 = !DILocalVariable(name: "dbiter", scope: !2056, file: !3, line: 568, type: !2154)
!2430 = !DILocalVariable(name: "rdsiter", scope: !2056, file: !3, line: 569, type: !2201)
!2431 = !DILocalVariable(name: "rdataset", scope: !2056, file: !3, line: 570, type: !730)
!2432 = !DILocalVariable(name: "fname", scope: !2056, file: !3, line: 571, type: !702)
!2433 = !DILocalVariable(name: "name", scope: !2056, file: !3, line: 572, type: !723)
!2434 = !DILocalVariable(name: "nbuf", scope: !2435, file: !3, line: 596, type: !1291)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 595, column: 31)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 595, column: 8)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 593, column: 49)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 591, column: 3)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 591, column: 3)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 584, column: 45)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 582, column: 2)
!2442 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 582, column: 2)
!2443 = !DILocalVariable(name: "tbuf", scope: !2435, file: !3, line: 597, type: !2444)
!2444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 2040, elements: !1018)
!2445 = !DILocalVariable(name: "b", scope: !2435, file: !3, line: 598, type: !683)
!2446 = !DILocalVariable(name: "r", scope: !2435, file: !3, line: 599, type: !877)
!2447 = !DILabel(scope: !2056, name: "cleanup", file: !3, line: 627)
!2448 = !DILocation(line: 563, column: 24, scope: !2056)
!2449 = !DILocation(line: 563, column: 40, scope: !2056)
!2450 = !DILocation(line: 564, column: 2, scope: !2056)
!2451 = !DILocation(line: 564, column: 15, scope: !2056)
!2452 = !DILocation(line: 565, column: 2, scope: !2056)
!2453 = !DILocation(line: 565, column: 12, scope: !2056)
!2454 = !DILocation(line: 566, column: 2, scope: !2056)
!2455 = !DILocation(line: 566, column: 19, scope: !2056)
!2456 = !DILocation(line: 567, column: 2, scope: !2056)
!2457 = !DILocation(line: 567, column: 16, scope: !2056)
!2458 = !DILocation(line: 568, column: 2, scope: !2056)
!2459 = !DILocation(line: 568, column: 20, scope: !2056)
!2460 = !DILocation(line: 569, column: 2, scope: !2056)
!2461 = !DILocation(line: 569, column: 22, scope: !2056)
!2462 = !DILocation(line: 570, column: 2, scope: !2056)
!2463 = !DILocation(line: 570, column: 17, scope: !2056)
!2464 = !DILocation(line: 571, column: 2, scope: !2056)
!2465 = !DILocation(line: 571, column: 18, scope: !2056)
!2466 = !DILocation(line: 572, column: 2, scope: !2056)
!2467 = !DILocation(line: 572, column: 14, scope: !2056)
!2468 = !DILocation(line: 573, column: 9, scope: !2056)
!2469 = !DILocation(line: 573, column: 7, scope: !2056)
!2470 = !DILocation(line: 574, column: 2, scope: !2056)
!2471 = !DILocation(line: 576, column: 2, scope: !2056)
!2472 = !DILocation(line: 576, column: 2, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 576, column: 2)
!2474 = !DILocation(line: 576, column: 2, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 576, column: 2)
!2476 = !DILocation(line: 577, column: 2, scope: !2056)
!2477 = !DILocation(line: 579, column: 2, scope: !2056)
!2478 = !DILocation(line: 579, column: 2, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 579, column: 2)
!2480 = !DILocation(line: 579, column: 2, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 579, column: 2)
!2482 = !DILocation(line: 580, column: 2, scope: !2056)
!2483 = !DILocation(line: 580, column: 2, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 580, column: 2)
!2485 = !DILocation(line: 580, column: 2, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 580, column: 2)
!2487 = !DILocation(line: 582, column: 37, scope: !2442)
!2488 = !DILocation(line: 582, column: 16, scope: !2442)
!2489 = !DILocation(line: 582, column: 14, scope: !2442)
!2490 = !DILocation(line: 582, column: 7, scope: !2442)
!2491 = !DILocation(line: 583, column: 7, scope: !2441)
!2492 = !DILocation(line: 583, column: 14, scope: !2441)
!2493 = !DILocation(line: 582, column: 2, scope: !2442)
!2494 = !DILocation(line: 585, column: 35, scope: !2440)
!2495 = !DILocation(line: 585, column: 50, scope: !2440)
!2496 = !DILocation(line: 585, column: 12, scope: !2440)
!2497 = !DILocation(line: 585, column: 10, scope: !2440)
!2498 = !DILocation(line: 586, column: 7, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 586, column: 7)
!2500 = !DILocation(line: 586, column: 14, scope: !2499)
!2501 = !DILocation(line: 586, column: 7, scope: !2440)
!2502 = !DILocation(line: 587, column: 11, scope: !2499)
!2503 = !DILocation(line: 587, column: 4, scope: !2499)
!2504 = !DILocation(line: 588, column: 3, scope: !2440)
!2505 = !DILocation(line: 588, column: 3, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 588, column: 3)
!2507 = !DILocation(line: 588, column: 3, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 588, column: 3)
!2509 = !DILocation(line: 590, column: 3, scope: !2440)
!2510 = !DILocation(line: 590, column: 3, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 590, column: 3)
!2512 = !DILocation(line: 590, column: 3, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 590, column: 3)
!2514 = !DILocation(line: 591, column: 40, scope: !2439)
!2515 = !DILocation(line: 591, column: 17, scope: !2439)
!2516 = !DILocation(line: 591, column: 15, scope: !2439)
!2517 = !DILocation(line: 591, column: 8, scope: !2439)
!2518 = !DILocation(line: 592, column: 8, scope: !2438)
!2519 = !DILocation(line: 592, column: 15, scope: !2438)
!2520 = !DILocation(line: 591, column: 3, scope: !2439)
!2521 = !DILocation(line: 594, column: 29, scope: !2437)
!2522 = !DILocation(line: 594, column: 4, scope: !2437)
!2523 = !DILocation(line: 595, column: 17, scope: !2436)
!2524 = !DILocation(line: 595, column: 23, scope: !2436)
!2525 = !DILocation(line: 595, column: 21, scope: !2436)
!2526 = !DILocation(line: 595, column: 8, scope: !2437)
!2527 = !DILocation(line: 596, column: 5, scope: !2435)
!2528 = !DILocation(line: 596, column: 10, scope: !2435)
!2529 = !DILocation(line: 597, column: 5, scope: !2435)
!2530 = !DILocation(line: 597, column: 10, scope: !2435)
!2531 = !DILocation(line: 598, column: 5, scope: !2435)
!2532 = !DILocation(line: 598, column: 18, scope: !2435)
!2533 = !DILocation(line: 599, column: 5, scope: !2435)
!2534 = !DILocation(line: 599, column: 18, scope: !2435)
!2535 = !DILocation(line: 601, column: 21, scope: !2435)
!2536 = !DILocation(line: 601, column: 27, scope: !2435)
!2537 = !DILocation(line: 601, column: 5, scope: !2435)
!2538 = !DILocation(line: 602, column: 5, scope: !2435)
!2539 = !DILocation(line: 602, column: 5, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 602, column: 5)
!2541 = !DILocation(line: 602, column: 5, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 602, column: 5)
!2543 = !DILocation(line: 603, column: 5, scope: !2435)
!2544 = !DILocation(line: 603, column: 5, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 603, column: 5)
!2546 = !DILocation(line: 603, column: 5, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 603, column: 5)
!2548 = !DILocation(line: 604, column: 5, scope: !2435)
!2549 = !DILocation(line: 604, column: 5, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 604, column: 5)
!2551 = !DILocation(line: 605, column: 7, scope: !2435)
!2552 = !DILocation(line: 605, column: 14, scope: !2435)
!2553 = !DILocation(line: 605, column: 5, scope: !2435)
!2554 = !DILocation(line: 605, column: 22, scope: !2435)
!2555 = !DILocation(line: 607, column: 18, scope: !2435)
!2556 = !DILocation(line: 610, column: 11, scope: !2435)
!2557 = !DILocation(line: 610, column: 17, scope: !2435)
!2558 = !DILocation(line: 610, column: 32, scope: !2435)
!2559 = !DILocation(line: 610, column: 37, scope: !2435)
!2560 = !DILocation(line: 607, column: 5, scope: !2435)
!2561 = !DILocation(line: 611, column: 5, scope: !2435)
!2562 = !DILocation(line: 612, column: 5, scope: !2435)
!2563 = !DILocation(line: 612, column: 5, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 612, column: 5)
!2565 = !DILocation(line: 612, column: 5, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 612, column: 5)
!2567 = !DILocation(line: 613, column: 4, scope: !2436)
!2568 = !DILocation(line: 613, column: 4, scope: !2435)
!2569 = !DILocation(line: 614, column: 4, scope: !2437)
!2570 = !DILocation(line: 615, column: 3, scope: !2437)
!2571 = !DILocation(line: 593, column: 39, scope: !2438)
!2572 = !DILocation(line: 593, column: 17, scope: !2438)
!2573 = !DILocation(line: 593, column: 15, scope: !2438)
!2574 = !DILocation(line: 591, column: 3, scope: !2438)
!2575 = distinct !{!2575, !2520, !2576, !1365}
!2576 = !DILocation(line: 615, column: 3, scope: !2439)
!2577 = !DILocation(line: 616, column: 7, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 616, column: 7)
!2579 = !DILocation(line: 616, column: 14, scope: !2578)
!2580 = !DILocation(line: 616, column: 7, scope: !2440)
!2581 = !DILocation(line: 617, column: 11, scope: !2578)
!2582 = !DILocation(line: 617, column: 4, scope: !2578)
!2583 = !DILocation(line: 618, column: 3, scope: !2440)
!2584 = !DILocation(line: 618, column: 3, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 618, column: 3)
!2586 = !DILocation(line: 618, column: 3, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 618, column: 3)
!2588 = !DILocation(line: 620, column: 3, scope: !2440)
!2589 = !DILocation(line: 621, column: 21, scope: !2440)
!2590 = !DILocation(line: 621, column: 3, scope: !2440)
!2591 = !DILocation(line: 622, column: 2, scope: !2440)
!2592 = !DILocation(line: 584, column: 36, scope: !2441)
!2593 = !DILocation(line: 584, column: 16, scope: !2441)
!2594 = !DILocation(line: 584, column: 14, scope: !2441)
!2595 = !DILocation(line: 582, column: 2, scope: !2441)
!2596 = distinct !{!2596, !2493, !2597, !1365}
!2597 = !DILocation(line: 622, column: 2, scope: !2442)
!2598 = !DILocation(line: 624, column: 6, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 624, column: 6)
!2600 = !DILocation(line: 624, column: 13, scope: !2599)
!2601 = !DILocation(line: 624, column: 6, scope: !2056)
!2602 = !DILocation(line: 625, column: 10, scope: !2599)
!2603 = !DILocation(line: 625, column: 3, scope: !2599)
!2604 = !DILocation(line: 624, column: 16, scope: !2599)
!2605 = !DILocation(line: 627, column: 2, scope: !2056)
!2606 = !DILocation(line: 628, column: 6, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 628, column: 6)
!2608 = !DILocation(line: 628, column: 11, scope: !2607)
!2609 = !DILocation(line: 628, column: 6, scope: !2056)
!2610 = !DILocation(line: 629, column: 21, scope: !2607)
!2611 = !DILocation(line: 629, column: 3, scope: !2607)
!2612 = !DILocation(line: 630, column: 6, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 630, column: 6)
!2614 = !DILocation(line: 630, column: 14, scope: !2613)
!2615 = !DILocation(line: 630, column: 6, scope: !2056)
!2616 = !DILocation(line: 631, column: 3, scope: !2613)
!2617 = !DILocation(line: 632, column: 6, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 632, column: 6)
!2619 = !DILocation(line: 632, column: 13, scope: !2618)
!2620 = !DILocation(line: 632, column: 6, scope: !2056)
!2621 = !DILocation(line: 633, column: 3, scope: !2618)
!2622 = !DILocation(line: 634, column: 6, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 634, column: 6)
!2624 = !DILocation(line: 634, column: 14, scope: !2623)
!2625 = !DILocation(line: 634, column: 6, scope: !2056)
!2626 = !DILocation(line: 635, column: 23, scope: !2623)
!2627 = !DILocation(line: 635, column: 3, scope: !2623)
!2628 = !DILocation(line: 636, column: 6, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 636, column: 6)
!2630 = !DILocation(line: 636, column: 9, scope: !2629)
!2631 = !DILocation(line: 636, column: 6, scope: !2056)
!2632 = !DILocation(line: 637, column: 3, scope: !2629)
!2633 = !DILocation(line: 639, column: 10, scope: !2056)
!2634 = !DILocation(line: 639, column: 2, scope: !2056)
!2635 = !DILocation(line: 640, column: 1, scope: !2056)
!2636 = !DISubprogram(name: "dns_zone_detach", scope: !6, file: !6, line: 409, type: !2637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{null, !660}
!2639 = distinct !DISubprogram(name: "dump_zone", scope: !3, file: !3, line: 717, type: !2640, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2643)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!492, !213, !661, !213, !658, !1227, !2642}
!2642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!2643 = !{!2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652}
!2644 = !DILocalVariable(name: "zonename", arg: 1, scope: !2639, file: !3, line: 717, type: !213)
!2645 = !DILocalVariable(name: "zone", arg: 2, scope: !2639, file: !3, line: 717, type: !661)
!2646 = !DILocalVariable(name: "filename", arg: 3, scope: !2639, file: !3, line: 717, type: !213)
!2647 = !DILocalVariable(name: "fileformat", arg: 4, scope: !2639, file: !3, line: 718, type: !658)
!2648 = !DILocalVariable(name: "style", arg: 5, scope: !2639, file: !3, line: 718, type: !1227)
!2649 = !DILocalVariable(name: "rawversion", arg: 6, scope: !2639, file: !3, line: 719, type: !2642)
!2650 = !DILocalVariable(name: "result", scope: !2639, file: !3, line: 721, type: !492)
!2651 = !DILocalVariable(name: "output", scope: !2639, file: !3, line: 722, type: !493)
!2652 = !DILocalVariable(name: "flags", scope: !2639, file: !3, line: 723, type: !213)
!2653 = !DILocation(line: 717, column: 23, scope: !2639)
!2654 = !DILocation(line: 717, column: 45, scope: !2639)
!2655 = !DILocation(line: 717, column: 63, scope: !2639)
!2656 = !DILocation(line: 718, column: 23, scope: !2639)
!2657 = !DILocation(line: 718, column: 61, scope: !2639)
!2658 = !DILocation(line: 719, column: 19, scope: !2639)
!2659 = !DILocation(line: 721, column: 2, scope: !2639)
!2660 = !DILocation(line: 721, column: 15, scope: !2639)
!2661 = !DILocation(line: 722, column: 2, scope: !2639)
!2662 = !DILocation(line: 722, column: 8, scope: !2639)
!2663 = !DILocation(line: 722, column: 17, scope: !2639)
!2664 = !DILocation(line: 723, column: 2, scope: !2639)
!2665 = !DILocation(line: 723, column: 14, scope: !2639)
!2666 = !DILocation(line: 725, column: 11, scope: !2639)
!2667 = !DILocation(line: 725, column: 22, scope: !2639)
!2668 = !DILocation(line: 725, column: 10, scope: !2639)
!2669 = !DILocation(line: 725, column: 8, scope: !2639)
!2670 = !DILocation(line: 727, column: 6, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 727, column: 6)
!2672 = !DILocation(line: 727, column: 6, scope: !2639)
!2673 = !DILocation(line: 728, column: 7, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 728, column: 7)
!2675 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 727, column: 13)
!2676 = !DILocation(line: 728, column: 16, scope: !2674)
!2677 = !DILocation(line: 728, column: 24, scope: !2674)
!2678 = !DILocation(line: 728, column: 34, scope: !2674)
!2679 = !DILocation(line: 728, column: 27, scope: !2674)
!2680 = !DILocation(line: 728, column: 49, scope: !2674)
!2681 = !DILocation(line: 728, column: 7, scope: !2675)
!2682 = !DILocation(line: 729, column: 12, scope: !2674)
!2683 = !DILocation(line: 730, column: 5, scope: !2674)
!2684 = !DILocation(line: 730, column: 15, scope: !2674)
!2685 = !DILocation(line: 729, column: 4, scope: !2674)
!2686 = !DILocation(line: 732, column: 12, scope: !2674)
!2687 = !DILocation(line: 732, column: 40, scope: !2674)
!2688 = !DILocation(line: 732, column: 4, scope: !2674)
!2689 = !DILocation(line: 733, column: 2, scope: !2675)
!2690 = !DILocation(line: 735, column: 6, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 735, column: 6)
!2692 = !DILocation(line: 735, column: 15, scope: !2691)
!2693 = !DILocation(line: 735, column: 23, scope: !2691)
!2694 = !DILocation(line: 735, column: 33, scope: !2691)
!2695 = !DILocation(line: 735, column: 26, scope: !2691)
!2696 = !DILocation(line: 735, column: 48, scope: !2691)
!2697 = !DILocation(line: 735, column: 6, scope: !2639)
!2698 = !DILocation(line: 736, column: 27, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 735, column: 54)
!2700 = !DILocation(line: 736, column: 37, scope: !2699)
!2701 = !DILocation(line: 736, column: 12, scope: !2699)
!2702 = !DILocation(line: 736, column: 10, scope: !2699)
!2703 = !DILocation(line: 738, column: 7, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 738, column: 7)
!2705 = !DILocation(line: 738, column: 14, scope: !2704)
!2706 = !DILocation(line: 738, column: 7, scope: !2699)
!2707 = !DILocation(line: 739, column: 12, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 738, column: 32)
!2709 = !DILocation(line: 740, column: 34, scope: !2708)
!2710 = !DILocation(line: 739, column: 4, scope: !2708)
!2711 = !DILocation(line: 741, column: 4, scope: !2708)
!2712 = !DILocation(line: 743, column: 2, scope: !2699)
!2713 = !DILocation(line: 745, column: 33, scope: !2639)
!2714 = !DILocation(line: 745, column: 39, scope: !2639)
!2715 = !DILocation(line: 745, column: 47, scope: !2639)
!2716 = !DILocation(line: 745, column: 59, scope: !2639)
!2717 = !DILocation(line: 746, column: 12, scope: !2639)
!2718 = !DILocation(line: 745, column: 11, scope: !2639)
!2719 = !DILocation(line: 745, column: 9, scope: !2639)
!2720 = !DILocation(line: 747, column: 6, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 747, column: 6)
!2722 = !DILocation(line: 747, column: 16, scope: !2721)
!2723 = !DILocation(line: 747, column: 13, scope: !2721)
!2724 = !DILocation(line: 747, column: 6, scope: !2639)
!2725 = !DILocation(line: 748, column: 25, scope: !2721)
!2726 = !DILocation(line: 748, column: 9, scope: !2721)
!2727 = !DILocation(line: 748, column: 3, scope: !2721)
!2728 = !DILocation(line: 750, column: 10, scope: !2639)
!2729 = !DILocation(line: 750, column: 2, scope: !2639)
!2730 = !DILocation(line: 751, column: 1, scope: !2639)
!2731 = !DISubprogram(name: "strcmp", scope: !1208, file: !1208, line: 156, type: !2732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!482, !213, !213}
!2734 = !DISubprogram(name: "isc_stdio_open", scope: !2735, file: !2735, line: 36, type: !2736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2735 = !DIFile(filename: "lib/isc/include/isc/stdio.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "3bf7a2b337189a24695ff529cc154bb2")
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!492, !213, !213, !2738}
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!2739 = !DISubprogram(name: "dns_zone_dumptostream", scope: !6, file: !6, line: 570, type: !2740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!492, !661, !493, !658, !1227, !2642}
!2742 = !DISubprogram(name: "isc_stdio_close", scope: !2735, file: !2735, line: 40, type: !2743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!492, !493}
!2745 = !DISubprogram(name: "dns_name_format", scope: !709, file: !709, line: 1144, type: !2746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{null, !780, !427, !7}
!2748 = !DISubprogram(name: "dns_name_countlabels", scope: !709, file: !709, line: 570, type: !2749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!7, !780}
!2751 = !DISubprogram(name: "strlcat", scope: !2752, file: !2752, line: 30, type: !2753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2752 = !DIFile(filename: "lib/isc/include/isc/string.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "f245dcbdceb547553a76113e9d71cd5e")
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!408, !427, !213, !406}
!2755 = !DISubprogram(name: "getaddrinfo", scope: !1264, file: !1264, line: 660, type: !2756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!482, !1199, !1199, !2758, !2761}
!2758 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2759)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1263)
!2761 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2762)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!2763 = !DISubprogram(name: "strcasecmp", scope: !2764, file: !2764, line: 116, type: !2732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2764 = !DIFile(filename: "/usr/include/strings.h", directory: "", checksumkind: CSK_MD5, checksum: "7444da68ad94ab9f25ff447750787173")
!2765 = distinct !DISubprogram(name: "logged", scope: !3, file: !3, line: 156, type: !2766, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!272, !427, !482}
!2768 = !{!2769, !2770, !2771}
!2769 = !DILocalVariable(name: "key", arg: 1, scope: !2765, file: !3, line: 156, type: !427)
!2770 = !DILocalVariable(name: "value", arg: 2, scope: !2765, file: !3, line: 156, type: !482)
!2771 = !DILocalVariable(name: "result", scope: !2765, file: !3, line: 157, type: !492)
!2772 = !DILocation(line: 156, column: 14, scope: !2765)
!2773 = !DILocation(line: 156, column: 23, scope: !2765)
!2774 = !DILocation(line: 157, column: 2, scope: !2765)
!2775 = !DILocation(line: 157, column: 15, scope: !2765)
!2776 = !DILocation(line: 159, column: 6, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 159, column: 6)
!2778 = !DILocation(line: 159, column: 13, scope: !2777)
!2779 = !DILocation(line: 159, column: 6, scope: !2765)
!2780 = !DILocation(line: 160, column: 3, scope: !2777)
!2781 = !DILocation(line: 162, column: 29, scope: !2765)
!2782 = !DILocation(line: 162, column: 37, scope: !2765)
!2783 = !DILocation(line: 162, column: 42, scope: !2765)
!2784 = !DILocation(line: 162, column: 11, scope: !2765)
!2785 = !DILocation(line: 162, column: 9, scope: !2765)
!2786 = !DILocation(line: 163, column: 6, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 163, column: 6)
!2788 = !DILocation(line: 163, column: 13, scope: !2787)
!2789 = !DILocation(line: 163, column: 6, scope: !2765)
!2790 = !DILocation(line: 164, column: 3, scope: !2787)
!2791 = !DILocation(line: 165, column: 2, scope: !2765)
!2792 = !DILocation(line: 166, column: 1, scope: !2765)
!2793 = !DISubprogram(name: "dns_zone_log", scope: !6, file: !6, line: 2004, type: !2794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{null, !661, !482, !213, null}
!2796 = distinct !DISubprogram(name: "add", scope: !3, file: !3, line: 127, type: !2797, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2799)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{null, !427, !482}
!2799 = !{!2800, !2801, !2802, !2803}
!2800 = !DILocalVariable(name: "key", arg: 1, scope: !2796, file: !3, line: 127, type: !427)
!2801 = !DILocalVariable(name: "value", arg: 2, scope: !2796, file: !3, line: 127, type: !482)
!2802 = !DILocalVariable(name: "result", scope: !2796, file: !3, line: 128, type: !492)
!2803 = !DILocalVariable(name: "symvalue", scope: !2796, file: !3, line: 129, type: !2804)
!2804 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_symvalue_t", file: !113, line: 95, baseType: !2805)
!2805 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "isc_symvalue", file: !113, line: 90, size: 64, elements: !2806)
!2806 = !{!2807, !2808, !2809, !2810}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "as_pointer", scope: !2805, file: !113, line: 91, baseType: !210, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "as_cpointer", scope: !2805, file: !113, line: 92, baseType: !966, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "as_integer", scope: !2805, file: !113, line: 93, baseType: !482, size: 32)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "as_uinteger", scope: !2805, file: !113, line: 94, baseType: !7, size: 32)
!2811 = !DILocation(line: 127, column: 11, scope: !2796)
!2812 = !DILocation(line: 127, column: 20, scope: !2796)
!2813 = !DILocation(line: 128, column: 2, scope: !2796)
!2814 = !DILocation(line: 128, column: 15, scope: !2796)
!2815 = !DILocation(line: 129, column: 2, scope: !2796)
!2816 = !DILocation(line: 129, column: 17, scope: !2796)
!2817 = !DILocation(line: 131, column: 6, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 131, column: 6)
!2819 = !DILocation(line: 131, column: 15, scope: !2818)
!2820 = !DILocation(line: 131, column: 6, scope: !2796)
!2821 = !DILocation(line: 132, column: 12, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 131, column: 24)
!2823 = !DILocation(line: 132, column: 10, scope: !2822)
!2824 = !DILocation(line: 133, column: 7, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 133, column: 7)
!2826 = !DILocation(line: 133, column: 14, scope: !2825)
!2827 = !DILocation(line: 133, column: 7, scope: !2822)
!2828 = !DILocation(line: 134, column: 4, scope: !2825)
!2829 = !DILocation(line: 135, column: 2, scope: !2822)
!2830 = !DILocation(line: 137, column: 6, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 137, column: 6)
!2832 = !DILocation(line: 137, column: 13, scope: !2831)
!2833 = !DILocation(line: 137, column: 6, scope: !2796)
!2834 = !DILocation(line: 138, column: 30, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 137, column: 22)
!2836 = !DILocation(line: 138, column: 54, scope: !2835)
!2837 = !DILocation(line: 138, column: 12, scope: !2835)
!2838 = !DILocation(line: 138, column: 10, scope: !2835)
!2839 = !DILocation(line: 140, column: 7, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 140, column: 7)
!2841 = !DILocation(line: 140, column: 14, scope: !2840)
!2842 = !DILocation(line: 140, column: 7, scope: !2835)
!2843 = !DILocation(line: 141, column: 4, scope: !2840)
!2844 = !DILocation(line: 142, column: 2, scope: !2835)
!2845 = !DILocation(line: 144, column: 8, scope: !2796)
!2846 = !DILocation(line: 144, column: 6, scope: !2796)
!2847 = !DILocation(line: 145, column: 6, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 145, column: 6)
!2849 = !DILocation(line: 145, column: 10, scope: !2848)
!2850 = !DILocation(line: 145, column: 6, scope: !2796)
!2851 = !DILocation(line: 146, column: 3, scope: !2848)
!2852 = !DILocation(line: 148, column: 22, scope: !2796)
!2853 = !DILocation(line: 149, column: 29, scope: !2796)
!2854 = !DILocation(line: 149, column: 37, scope: !2796)
!2855 = !DILocation(line: 149, column: 42, scope: !2796)
!2856 = !DILocation(line: 149, column: 11, scope: !2796)
!2857 = !DILocation(line: 149, column: 9, scope: !2796)
!2858 = !DILocation(line: 151, column: 6, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 151, column: 6)
!2860 = !DILocation(line: 151, column: 13, scope: !2859)
!2861 = !DILocation(line: 151, column: 6, scope: !2796)
!2862 = !DILocation(line: 152, column: 3, scope: !2859)
!2863 = !DILocation(line: 152, column: 3, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2859, file: !3, line: 152, column: 3)
!2865 = !DILocation(line: 153, column: 1, scope: !2796)
!2866 = !DISubprogram(name: "freeaddrinfo", scope: !1264, file: !1264, line: 666, type: !2867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{null, !1283}
!2869 = !DISubprogram(name: "gai_strerror", scope: !1264, file: !1264, line: 669, type: !2870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!213, !482}
!2872 = !DISubprogram(name: "isc_symtab_lookup", scope: !113, file: !113, line: 120, type: !2873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!492, !385, !213, !7, !2875}
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2876 = !DISubprogram(name: "isc_mem_create", scope: !393, file: !393, line: 258, type: !2877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!492, !406, !406, !417}
!2879 = !DISubprogram(name: "isc_symtab_create", scope: !113, file: !113, line: 110, type: !2880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!492, !390, !7, !2882, !210, !272, !2886}
!2882 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_symtabaction_t", file: !113, line: 97, baseType: !2883)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{null, !427, !7, !2804, !210}
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!2887 = distinct !DISubprogram(name: "freekey", scope: !3, file: !3, line: 120, type: !2884, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2888)
!2888 = !{!2889, !2890, !2891, !2892}
!2889 = !DILocalVariable(name: "key", arg: 1, scope: !2887, file: !3, line: 120, type: !427)
!2890 = !DILocalVariable(name: "type", arg: 2, scope: !2887, file: !3, line: 120, type: !7)
!2891 = !DILocalVariable(name: "value", arg: 3, scope: !2887, file: !3, line: 120, type: !2804)
!2892 = !DILocalVariable(name: "userarg", arg: 4, scope: !2887, file: !3, line: 120, type: !210)
!2893 = !DILocation(line: 120, column: 15, scope: !2887)
!2894 = !DILocation(line: 120, column: 33, scope: !2887)
!2895 = !DILocation(line: 120, column: 54, scope: !2887)
!2896 = !DILocation(line: 120, column: 67, scope: !2887)
!2897 = !DILocation(line: 121, column: 2, scope: !2887)
!2898 = !DILocation(line: 123, column: 2, scope: !2887)
!2899 = !DILocation(line: 123, column: 2, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 123, column: 2)
!2901 = !DILocation(line: 124, column: 1, scope: !2887)
!2902 = !DISubprogram(name: "isc__mem_strdup", scope: !393, file: !393, line: 642, type: !425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2903 = !DISubprogram(name: "isc_symtab_define", scope: !113, file: !113, line: 125, type: !2904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!492, !385, !213, !7, !2804, !2906}
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_symexists_t", file: !113, line: 104, baseType: !112)
!2907 = !DISubprogram(name: "isc__mem_free", scope: !393, file: !393, line: 640, type: !430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2908 = !DISubprogram(name: "dns_rdataset_isassociated", scope: !732, file: !732, line: 251, type: !2909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!272, !729}
!2911 = !DISubprogram(name: "dns_rdataset_first", scope: !732, file: !732, line: 307, type: !746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2912 = !DISubprogram(name: "dns_rdataset_current", scope: !732, file: !732, line: 333, type: !751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2913 = !DISubprogram(name: "memcmp", scope: !1208, file: !1208, line: 64, type: !2914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!482, !966, !966, !406}
!2916 = !DISubprogram(name: "inet_ntop", scope: !2917, file: !2917, line: 64, type: !2918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2917 = !DIFile(filename: "/usr/include/arpa/inet.h", directory: "", checksumkind: CSK_MD5, checksum: "b2f9474dc296b712fc0e47c2c084f87d")
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!213, !482, !2920, !2921, !1271}
!2920 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !966)
!2921 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !427)
!2922 = !DISubprogram(name: "dns_rdata_reset", scope: !756, file: !756, line: 197, type: !2923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{null, !753}
!2925 = !DISubprogram(name: "dns_rdataset_next", scope: !732, file: !732, line: 320, type: !746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2926 = !DISubprogram(name: "dns_rdataset_init", scope: !732, file: !732, line: 210, type: !742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2927 = !DISubprogram(name: "dns_zone_getdb", scope: !6, file: !6, line: 456, type: !2928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!492, !661, !2080}
!2930 = !DISubprogram(name: "dns_db_newversion", scope: !2067, file: !2067, line: 616, type: !2108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2931 = !DISubprogram(name: "dns_db_createiterator", scope: !2067, file: !2067, line: 1076, type: !2151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2932 = !DISubprogram(name: "dns_dbiterator_first", scope: !2157, file: !2157, line: 123, type: !2171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2933 = !DISubprogram(name: "dns_dbiterator_current", scope: !2157, file: !2157, line: 204, type: !2182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2934 = !DISubprogram(name: "dns_db_allrdatasets", scope: !2067, file: !2067, line: 1163, type: !2198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2935 = !DISubprogram(name: "dns_rdatasetiter_first", scope: !2204, file: !2204, line: 116, type: !2218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2936 = !DISubprogram(name: "dns_rdatasetiter_current", scope: !2204, file: !2204, line: 147, type: !2223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2937 = !DISubprogram(name: "dns_rdatatype_totext", scope: !2938, file: !2938, line: 40, type: !2939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2938 = !DIFile(filename: "lib/dns/include/dns/rdatatype.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "4060731bfe5fe2bfc52e6e897b3068ce")
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!492, !216, !697}
!2941 = !DISubprogram(name: "dns_rdataset_disassociate", scope: !732, file: !732, line: 235, type: !742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2942 = !DISubprogram(name: "dns_rdatasetiter_next", scope: !2204, file: !2204, line: 131, type: !2218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2943 = !DISubprogram(name: "dns_rdatasetiter_destroy", scope: !2204, file: !2204, line: 100, type: !2214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2944 = !DISubprogram(name: "dns_db_detachnode", scope: !2067, file: !2067, line: 1006, type: !2139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2945 = !DISubprogram(name: "dns_dbiterator_next", scope: !2157, file: !2157, line: 188, type: !2171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2946 = !DISubprogram(name: "dns_dbiterator_destroy", scope: !2157, file: !2157, line: 107, type: !2167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2947 = !DISubprogram(name: "dns_db_closeversion", scope: !2067, file: !2067, line: 659, type: !2116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2948 = !DISubprogram(name: "dns_db_detach", scope: !2067, file: !2067, line: 350, type: !2083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)

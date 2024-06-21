; ModuleID = 'samples/619.bc'
source_filename = "ftl_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftl_reloc = type { ptr, i8, ptr, %struct.anon, i64, i8, i64, ptr, [5 x %struct.anon.0] }
%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { ptr, ptr }
%struct.spdk_ftl_dev = type { %struct.spdk_ftl_conf, %struct.ftl_layout, ptr, ptr, ptr, %struct.anon.6, ptr, i64, i8, i8, i8, i8, ptr, %struct.ftl_nv_cache, ptr, ptr, ptr, %struct.ftl_trace, %struct.ftl_stats, ptr, i64, ptr, %struct.anon.14, %struct.anon.15, i64, ptr, %struct.anon.16, i64, ptr, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.17, %struct.anon.18, %struct.anon.19, ptr, ptr, i64, i8, %struct.ftl_writer, %struct.ftl_writer, i32, i8, %struct.anon.22 }
%struct.spdk_ftl_conf = type { ptr, %struct.spdk_uuid, i64, i64, ptr, i64, [4 x i64], i32, %struct.anon.1, [4 x i8], ptr, ptr, i8, [7 x i8], i64 }
%struct.spdk_uuid = type { %union.anon }
%union.anon = type { [16 x i8] }
%struct.anon.1 = type { i32, i32 }
%struct.ftl_layout = type { %struct.anon.2, %struct.anon.3, %struct.anon.4, %struct.anon.5, [16 x %struct.ftl_layout_region], [16 x ptr] }
%struct.anon.2 = type { i64, i64, i64 }
%struct.anon.3 = type { i64, i64, i64, i64, i64 }
%struct.anon.4 = type { i64, i64, i64 }
%struct.anon.5 = type { i64 }
%struct.ftl_layout_region = type { ptr, i32, i32, %struct.ftl_layout_region_descriptor, %struct.ftl_layout_region_descriptor, i64, i64, i64, ptr, ptr }
%struct.ftl_layout_region_descriptor = type { i64, i64, i64, ptr }
%struct.anon.6 = type { ptr, ptr }
%struct.ftl_nv_cache = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, i64, i64, ptr, %struct.anon.7, i64, %struct.anon.8, i64, %struct.anon.9, i64, %struct.anon.10, i64, %struct.anon.11, i64, %struct.anon.12, i64, i64, ptr, i64, i64, double, %struct.compaction_bw_stats, %struct.anon.13 }
%struct.anon.7 = type { ptr, ptr }
%struct.anon.8 = type { ptr, ptr }
%struct.anon.9 = type { ptr, ptr }
%struct.anon.10 = type { ptr, ptr }
%struct.anon.11 = type { ptr, ptr }
%struct.anon.12 = type { ptr, ptr }
%struct.compaction_bw_stats = type { [16 x double], i64, i64, double }
%struct.anon.13 = type { i64, i64, i64, i64 }
%struct.ftl_trace = type { i64 }
%struct.ftl_stats = type { [4 x i64], i64, [6 x %struct.ftl_stats_entry] }
%struct.ftl_stats_entry = type { %struct.ftl_stats_group, %struct.ftl_stats_group }
%struct.ftl_stats_group = type { i64, i64, %struct.ftl_stats_error }
%struct.ftl_stats_error = type { i64, i64, i64 }
%struct.anon.14 = type { ptr, ptr }
%struct.anon.15 = type { ptr, ptr }
%struct.anon.16 = type { ptr, ptr }
%struct.anon.17 = type { ptr, ptr }
%struct.anon.18 = type { ptr, ptr }
%struct.anon.19 = type { ptr, ptr }
%struct.ftl_writer = type { ptr, %struct.anon.20, ptr, i64, ptr, %struct.anon.21, i32, i8, i32, i64 }
%struct.anon.20 = type { ptr, ptr }
%struct.anon.21 = type { ptr, ptr }
%struct.anon.22 = type { %struct.anon.23, %struct.anon.24 }
%struct.anon.23 = type { ptr, ptr }
%struct.anon.24 = type { ptr, ptr }
%struct.ftl_superblock = type { %struct.ftl_superblock_header, %struct.spdk_uuid, i64, i64, i64, i64, i64, [16 x i8], i64, %struct.ftl_superblock_gc_info, %struct.ftl_superblock_md_region }
%struct.ftl_superblock_header = type { i64, i64, i64 }
%struct.ftl_superblock_gc_info = type { i64, i64, i64, i64 }
%struct.ftl_superblock_md_region = type { i32, i32, i64, i64, i64 }
%struct.ftl_reloc_move = type { ptr, ptr, ptr, i32, %struct.anon.25 }
%struct.anon.25 = type { ptr, ptr }
%struct.ftl_rq = type { ptr, %struct.anon.26, i64, ptr, i64, i64, ptr, ptr, i8, %struct.anon.27, %struct.anon.28, %struct.anon.29, %struct.ftl_md_io_entry_ctx, [0 x %struct.ftl_rq_entry] }
%struct.anon.26 = type { ptr, ptr }
%struct.anon.27 = type { ptr, ptr, ptr, i8 }
%struct.anon.28 = type { i32, i32, i32, i32, i32 }
%struct.anon.29 = type { i64, ptr, %struct.spdk_bdev_io_wait_entry }
%struct.spdk_bdev_io_wait_entry = type { ptr, ptr, ptr, %struct.anon.30 }
%struct.anon.30 = type { ptr, ptr }
%struct.ftl_md_io_entry_ctx = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr, %struct.spdk_bdev_io_wait_entry }
%struct.ftl_rq_entry = type { ptr, ptr, i64, i64, i64, i64, %struct.anon.31, %struct.anon.32, %struct.ftl_l2p_pin_ctx, %struct.anon.34 }
%struct.anon.31 = type { ptr }
%struct.anon.32 = type { ptr }
%struct.ftl_l2p_pin_ctx = type { i64, i64, ptr, ptr, %struct.anon.33 }
%struct.anon.33 = type { ptr, ptr }
%struct.anon.34 = type { i64, i64, %struct.spdk_bdev_io_wait_entry }
%struct.ftl_band = type { ptr, ptr, i64, %struct.anon.35, %struct.ftl_p2l_map, i8, i32, i32, i64, i64, %struct.ftl_basic_rq, %struct.anon.42, %struct.ftl_md_io_entry_ctx, ptr }
%struct.anon.35 = type { ptr, ptr, %union.anon.36, i64 }
%union.anon.36 = type { ptr }
%struct.ftl_p2l_map = type { i64, i64, ptr, %union.anon.37, %union.anon.38, ptr }
%union.anon.37 = type { ptr }
%union.anon.38 = type { ptr }
%struct.ftl_basic_rq = type { ptr, %struct.anon.39, i64, ptr, i8, %struct.anon.40, %struct.anon.41 }
%struct.anon.39 = type { ptr, ptr }
%struct.anon.40 = type { ptr, ptr }
%struct.anon.41 = type { i64, ptr, ptr, %struct.spdk_bdev_io_wait_entry }
%struct.anon.42 = type { ptr, ptr }
%struct.ftl_band_md = type { %struct.anon.43, i32, i32, i32, [4 x i8], i64, i64, i64, i64, i32, [4028 x i8] }
%struct.anon.43 = type { i64, i64 }
%struct.ftl_p2l_map_entry = type { i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"ftl_reloc.c\00", align 1, !dbg !0
@__func__.ftl_reloc_init = private unnamed_addr constant [15 x i8] c"ftl_reloc_init\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [48 x i8] c"[FTL][%s] Failed to initialize reloc moves pool\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1, !dbg !18

; Function Attrs: nounwind ssp uwtable
define ptr @ftl_reloc_init(ptr noundef %dev) #0 !dbg !124 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %reloc = alloca ptr, align 8
  %move = alloca ptr, align 8
  %i = alloca i64, align 8
  %count = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !953, metadata !DIExpression()), !dbg !959
  call void @llvm.lifetime.start.p0(i64 8, ptr %reloc) #9, !dbg !960
  tail call void @llvm.dbg.declare(metadata ptr %reloc, metadata !954, metadata !DIExpression()), !dbg !961
  call void @llvm.lifetime.start.p0(i64 8, ptr %move) #9, !dbg !962
  tail call void @llvm.dbg.declare(metadata ptr %move, metadata !955, metadata !DIExpression()), !dbg !963
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9, !dbg !964
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !956, metadata !DIExpression()), !dbg !965
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #9, !dbg !964
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !957, metadata !DIExpression()), !dbg !966
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 152) #10, !dbg !967
  store ptr %call, ptr %reloc, align 8, !dbg !968
  %0 = load ptr, ptr %reloc, align 8, !dbg !969
  %tobool = icmp ne ptr %0, null, !dbg !969
  br i1 %tobool, label %if.end, label %if.then, !dbg !971

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !972

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !974
  %2 = load ptr, ptr %reloc, align 8, !dbg !975
  %dev1 = getelementptr inbounds %struct.ftl_reloc, ptr %2, i32 0, i32 0, !dbg !976
  store ptr %1, ptr %dev1, align 8, !dbg !977
  %3 = load ptr, ptr %reloc, align 8, !dbg !978
  %halt = getelementptr inbounds %struct.ftl_reloc, ptr %3, i32 0, i32 1, !dbg !979
  store i8 1, ptr %halt, align 8, !dbg !980
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !981
  %sb = getelementptr inbounds %struct.spdk_ftl_dev, ptr %4, i32 0, i32 2, !dbg !982
  %5 = load ptr, ptr %sb, align 8, !dbg !982
  %max_reloc_qdepth = getelementptr inbounds %struct.ftl_superblock, ptr %5, i32 0, i32 6, !dbg !983
  %6 = load i64, ptr %max_reloc_qdepth, align 1, !dbg !983
  %7 = load ptr, ptr %reloc, align 8, !dbg !984
  %max_qdepth = getelementptr inbounds %struct.ftl_reloc, ptr %7, i32 0, i32 6, !dbg !985
  store i64 %6, ptr %max_qdepth, align 8, !dbg !986
  %8 = load ptr, ptr %reloc, align 8, !dbg !987
  %max_qdepth2 = getelementptr inbounds %struct.ftl_reloc, ptr %8, i32 0, i32 6, !dbg !988
  %9 = load i64, ptr %max_qdepth2, align 8, !dbg !988
  %call3 = call noalias ptr @calloc(i64 noundef %9, i64 noundef 48) #10, !dbg !989
  %10 = load ptr, ptr %reloc, align 8, !dbg !990
  %move_buffer = getelementptr inbounds %struct.ftl_reloc, ptr %10, i32 0, i32 7, !dbg !991
  store ptr %call3, ptr %move_buffer, align 8, !dbg !992
  %11 = load ptr, ptr %reloc, align 8, !dbg !993
  %move_buffer4 = getelementptr inbounds %struct.ftl_reloc, ptr %11, i32 0, i32 7, !dbg !995
  %12 = load ptr, ptr %move_buffer4, align 8, !dbg !995
  %tobool5 = icmp ne ptr %12, null, !dbg !993
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !996

if.then6:                                         ; preds = %if.end
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !997
  %cmp = icmp ne ptr %13, null, !dbg !997
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !997

cond.true:                                        ; preds = %if.then6
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !997
  %conf = getelementptr inbounds %struct.spdk_ftl_dev, ptr %14, i32 0, i32 0, !dbg !997
  %name = getelementptr inbounds %struct.spdk_ftl_conf, ptr %conf, i32 0, i32 0, !dbg !997
  %15 = load ptr, ptr %name, align 8, !dbg !997
  br label %cond.end, !dbg !997

cond.false:                                       ; preds = %if.then6
  br label %cond.end, !dbg !997

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %15, %cond.true ], [ @.str.2, %cond.false ], !dbg !997
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str, i32 noundef 122, ptr noundef @__func__.ftl_reloc_init, ptr noundef @.str.1, ptr noundef %cond), !dbg !997
  br label %error, !dbg !999

if.end7:                                          ; preds = %if.end
  store i64 5, ptr %count, align 8, !dbg !1000
  store i64 0, ptr %i, align 8, !dbg !1001
  br label %for.cond, !dbg !1003

for.cond:                                         ; preds = %for.inc, %if.end7
  %16 = load i64, ptr %i, align 8, !dbg !1004
  %17 = load i64, ptr %count, align 8, !dbg !1006
  %cmp8 = icmp ult i64 %16, %17, !dbg !1007
  br i1 %cmp8, label %for.body, label %for.end, !dbg !1008

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !1009

do.body:                                          ; preds = %for.body
  %18 = load ptr, ptr %reloc, align 8, !dbg !1011
  %move_queue = getelementptr inbounds %struct.ftl_reloc, ptr %18, i32 0, i32 8, !dbg !1011
  %19 = load i64, ptr %i, align 8, !dbg !1011
  %arrayidx = getelementptr inbounds [5 x %struct.anon.0], ptr %move_queue, i64 0, i64 %19, !dbg !1011
  %tqh_first = getelementptr inbounds %struct.anon.0, ptr %arrayidx, i32 0, i32 0, !dbg !1011
  store ptr null, ptr %tqh_first, align 8, !dbg !1011
  %20 = load ptr, ptr %reloc, align 8, !dbg !1011
  %move_queue9 = getelementptr inbounds %struct.ftl_reloc, ptr %20, i32 0, i32 8, !dbg !1011
  %21 = load i64, ptr %i, align 8, !dbg !1011
  %arrayidx10 = getelementptr inbounds [5 x %struct.anon.0], ptr %move_queue9, i64 0, i64 %21, !dbg !1011
  %tqh_first11 = getelementptr inbounds %struct.anon.0, ptr %arrayidx10, i32 0, i32 0, !dbg !1011
  %22 = load ptr, ptr %reloc, align 8, !dbg !1011
  %move_queue12 = getelementptr inbounds %struct.ftl_reloc, ptr %22, i32 0, i32 8, !dbg !1011
  %23 = load i64, ptr %i, align 8, !dbg !1011
  %arrayidx13 = getelementptr inbounds [5 x %struct.anon.0], ptr %move_queue12, i64 0, i64 %23, !dbg !1011
  %tqh_last = getelementptr inbounds %struct.anon.0, ptr %arrayidx13, i32 0, i32 1, !dbg !1011
  store ptr %tqh_first11, ptr %tqh_last, align 8, !dbg !1011
  br label %do.cond, !dbg !1011

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1011

do.end:                                           ; preds = %do.cond
  br label %for.inc, !dbg !1013

for.inc:                                          ; preds = %do.end
  %24 = load i64, ptr %i, align 8, !dbg !1014
  %inc = add i64 %24, 1, !dbg !1014
  store i64 %inc, ptr %i, align 8, !dbg !1014
  br label %for.cond, !dbg !1015, !llvm.loop !1016

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %i, align 8, !dbg !1018
  br label %for.cond14, !dbg !1020

for.cond14:                                       ; preds = %for.inc24, %for.end
  %25 = load i64, ptr %i, align 8, !dbg !1021
  %26 = load ptr, ptr %reloc, align 8, !dbg !1023
  %max_qdepth15 = getelementptr inbounds %struct.ftl_reloc, ptr %26, i32 0, i32 6, !dbg !1024
  %27 = load i64, ptr %max_qdepth15, align 8, !dbg !1024
  %cmp16 = icmp ult i64 %25, %27, !dbg !1025
  br i1 %cmp16, label %for.body17, label %for.end26, !dbg !1026

for.body17:                                       ; preds = %for.cond14
  %28 = load ptr, ptr %reloc, align 8, !dbg !1027
  %move_buffer18 = getelementptr inbounds %struct.ftl_reloc, ptr %28, i32 0, i32 7, !dbg !1029
  %29 = load ptr, ptr %move_buffer18, align 8, !dbg !1029
  %30 = load i64, ptr %i, align 8, !dbg !1030
  %arrayidx19 = getelementptr inbounds %struct.ftl_reloc_move, ptr %29, i64 %30, !dbg !1027
  store ptr %arrayidx19, ptr %move, align 8, !dbg !1031
  %31 = load ptr, ptr %reloc, align 8, !dbg !1032
  %32 = load ptr, ptr %move, align 8, !dbg !1034
  %call20 = call i32 @move_init(ptr noundef %31, ptr noundef %32), !dbg !1035
  %tobool21 = icmp ne i32 %call20, 0, !dbg !1035
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !1036

if.then22:                                        ; preds = %for.body17
  br label %error, !dbg !1037

if.end23:                                         ; preds = %for.body17
  br label %for.inc24, !dbg !1039

for.inc24:                                        ; preds = %if.end23
  %33 = load i64, ptr %i, align 8, !dbg !1040
  %inc25 = add i64 %33, 1, !dbg !1040
  store i64 %inc25, ptr %i, align 8, !dbg !1040
  br label %for.cond14, !dbg !1041, !llvm.loop !1042

for.end26:                                        ; preds = %for.cond14
  br label %do.body27, !dbg !1044

do.body27:                                        ; preds = %for.end26
  %34 = load ptr, ptr %reloc, align 8, !dbg !1045
  %band_done = getelementptr inbounds %struct.ftl_reloc, ptr %34, i32 0, i32 3, !dbg !1045
  %tqh_first28 = getelementptr inbounds %struct.anon, ptr %band_done, i32 0, i32 0, !dbg !1045
  store ptr null, ptr %tqh_first28, align 8, !dbg !1045
  %35 = load ptr, ptr %reloc, align 8, !dbg !1045
  %band_done29 = getelementptr inbounds %struct.ftl_reloc, ptr %35, i32 0, i32 3, !dbg !1045
  %tqh_first30 = getelementptr inbounds %struct.anon, ptr %band_done29, i32 0, i32 0, !dbg !1045
  %36 = load ptr, ptr %reloc, align 8, !dbg !1045
  %band_done31 = getelementptr inbounds %struct.ftl_reloc, ptr %36, i32 0, i32 3, !dbg !1045
  %tqh_last32 = getelementptr inbounds %struct.anon, ptr %band_done31, i32 0, i32 1, !dbg !1045
  store ptr %tqh_first30, ptr %tqh_last32, align 8, !dbg !1045
  br label %do.cond33, !dbg !1045

do.cond33:                                        ; preds = %do.body27
  br label %do.end34, !dbg !1045

do.end34:                                         ; preds = %do.cond33
  %37 = load ptr, ptr %reloc, align 8, !dbg !1047
  store ptr %37, ptr %retval, align 8, !dbg !1048
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1048

error:                                            ; preds = %if.then22, %cond.end
  tail call void @llvm.dbg.label(metadata !958), !dbg !1049
  %38 = load ptr, ptr %reloc, align 8, !dbg !1050
  call void @ftl_reloc_free(ptr noundef %38), !dbg !1051
  store ptr null, ptr %retval, align 8, !dbg !1052
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1052

cleanup:                                          ; preds = %error, %do.end34, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #9, !dbg !1053
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9, !dbg !1053
  call void @llvm.lifetime.end.p0(i64 8, ptr %move) #9, !dbg !1053
  call void @llvm.lifetime.end.p0(i64 8, ptr %reloc) #9, !dbg !1053
  %39 = load ptr, ptr %retval, align 8, !dbg !1053
  ret ptr %39, !dbg !1053
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !1054 noalias ptr @calloc(i64 noundef, i64 noundef) #2

declare !dbg !1058 void @spdk_log(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind ssp uwtable
define internal i32 @move_init(ptr noundef %reloc, ptr noundef %mv) #0 !dbg !1062 {
entry:
  %retval = alloca i32, align 4
  %reloc.addr = alloca ptr, align 8
  %mv.addr = alloca ptr, align 8
  store ptr %reloc, ptr %reloc.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %reloc.addr, metadata !1066, metadata !DIExpression()), !dbg !1068
  store ptr %mv, ptr %mv.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mv.addr, metadata !1067, metadata !DIExpression()), !dbg !1069
  %0 = load ptr, ptr %mv.addr, align 8, !dbg !1070
  %state = getelementptr inbounds %struct.ftl_reloc_move, ptr %0, i32 0, i32 3, !dbg !1071
  store i32 4, ptr %state, align 8, !dbg !1072
  br label %do.body, !dbg !1073

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %mv.addr, align 8, !dbg !1074
  %qentry = getelementptr inbounds %struct.ftl_reloc_move, ptr %1, i32 0, i32 4, !dbg !1074
  %tqe_next = getelementptr inbounds %struct.anon.25, ptr %qentry, i32 0, i32 0, !dbg !1074
  store ptr null, ptr %tqe_next, align 8, !dbg !1074
  %2 = load ptr, ptr %reloc.addr, align 8, !dbg !1074
  %move_queue = getelementptr inbounds %struct.ftl_reloc, ptr %2, i32 0, i32 8, !dbg !1074
  %arrayidx = getelementptr inbounds [5 x %struct.anon.0], ptr %move_queue, i64 0, i64 4, !dbg !1074
  %tqh_last = getelementptr inbounds %struct.anon.0, ptr %arrayidx, i32 0, i32 1, !dbg !1074
  %3 = load ptr, ptr %tqh_last, align 8, !dbg !1074
  %4 = load ptr, ptr %mv.addr, align 8, !dbg !1074
  %qentry1 = getelementptr inbounds %struct.ftl_reloc_move, ptr %4, i32 0, i32 4, !dbg !1074
  %tqe_prev = getelementptr inbounds %struct.anon.25, ptr %qentry1, i32 0, i32 1, !dbg !1074
  store ptr %3, ptr %tqe_prev, align 8, !dbg !1074
  %5 = load ptr, ptr %mv.addr, align 8, !dbg !1074
  %6 = load ptr, ptr %reloc.addr, align 8, !dbg !1074
  %move_queue2 = getelementptr inbounds %struct.ftl_reloc, ptr %6, i32 0, i32 8, !dbg !1074
  %arrayidx3 = getelementptr inbounds [5 x %struct.anon.0], ptr %move_queue2, i64 0, i64 4, !dbg !1074
  %tqh_last4 = getelementptr inbounds %struct.anon.0, ptr %arrayidx3, i32 0, i32 1, !dbg !1074
  %7 = load ptr, ptr %tqh_last4, align 8, !dbg !1074
  store ptr %5, ptr %7, align 8, !dbg !1074
  %8 = load ptr, ptr %mv.addr, align 8, !dbg !1074
  %qentry5 = getelementptr inbounds %struct.ftl_reloc_move, ptr %8, i32 0, i32 4, !dbg !1074
  %tqe_next6 = getelementptr inbounds %struct.anon.25, ptr %qentry5, i32 0, i32 0, !dbg !1074
  %9 = load ptr, ptr %reloc.addr, align 8, !dbg !1074
  %move_queue7 = getelementptr inbounds %struct.ftl_reloc, ptr %9, i32 0, i32 8, !dbg !1074
  %arrayidx8 = getelementptr inbounds [5 x %struct.anon.0], ptr %move_queue7, i64 0, i64 4, !dbg !1074
  %tqh_last9 = getelementptr inbounds %struct.anon.0, ptr %arrayidx8, i32 0, i32 1, !dbg !1074
  store ptr %tqe_next6, ptr %tqh_last9, align 8, !dbg !1074
  br label %do.end, !dbg !1074

do.end:                                           ; preds = %do.body
  %10 = load ptr, ptr %reloc.addr, align 8, !dbg !1076
  %11 = load ptr, ptr %mv.addr, align 8, !dbg !1077
  %reloc10 = getelementptr inbounds %struct.ftl_reloc_move, ptr %11, i32 0, i32 1, !dbg !1078
  store ptr %10, ptr %reloc10, align 8, !dbg !1079
  %12 = load ptr, ptr %reloc.addr, align 8, !dbg !1080
  %dev = getelementptr inbounds %struct.ftl_reloc, ptr %12, i32 0, i32 0, !dbg !1081
  %13 = load ptr, ptr %dev, align 8, !dbg !1081
  %14 = load ptr, ptr %mv.addr, align 8, !dbg !1082
  %dev11 = getelementptr inbounds %struct.ftl_reloc_move, ptr %14, i32 0, i32 0, !dbg !1083
  store ptr %13, ptr %dev11, align 8, !dbg !1084
  %15 = load ptr, ptr %mv.addr, align 8, !dbg !1085
  %dev12 = getelementptr inbounds %struct.ftl_reloc_move, ptr %15, i32 0, i32 0, !dbg !1086
  %16 = load ptr, ptr %dev12, align 8, !dbg !1086
  %17 = load ptr, ptr %mv.addr, align 8, !dbg !1087
  %dev13 = getelementptr inbounds %struct.ftl_reloc_move, ptr %17, i32 0, i32 0, !dbg !1088
  %18 = load ptr, ptr %dev13, align 8, !dbg !1088
  %md_size = getelementptr inbounds %struct.spdk_ftl_dev, ptr %18, i32 0, i32 29, !dbg !1089
  %19 = load i64, ptr %md_size, align 8, !dbg !1089
  %conv = trunc i64 %19 to i32, !dbg !1087
  %call = call ptr @ftl_rq_new(ptr noundef %16, i32 noundef %conv), !dbg !1090
  %20 = load ptr, ptr %mv.addr, align 8, !dbg !1091
  %rq = getelementptr inbounds %struct.ftl_reloc_move, ptr %20, i32 0, i32 2, !dbg !1092
  store ptr %call, ptr %rq, align 8, !dbg !1093
  %21 = load ptr, ptr %mv.addr, align 8, !dbg !1094
  %rq14 = getelementptr inbounds %struct.ftl_reloc_move, ptr %21, i32 0, i32 2, !dbg !1096
  %22 = load ptr, ptr %rq14, align 8, !dbg !1096
  %tobool = icmp ne ptr %22, null, !dbg !1094
  br i1 %tobool, label %if.end, label %if.then, !dbg !1097

if.then:                                          ; preds = %do.end
  store i32 -12, ptr %retval, align 4, !dbg !1098
  br label %return, !dbg !1098

if.end:                                           ; preds = %do.end
  %23 = load ptr, ptr %mv.addr, align 8, !dbg !1100
  %24 = load ptr, ptr %mv.addr, align 8, !dbg !1101
  %rq15 = getelementptr inbounds %struct.ftl_reloc_move, ptr %24, i32 0, i32 2, !dbg !1102
  %25 = load ptr, ptr %rq15, align 8, !dbg !1102
  %owner = getelementptr inbounds %struct.ftl_rq, ptr %25, i32 0, i32 9, !dbg !1103
  %priv = getelementptr inbounds %struct.anon.27, ptr %owner, i32 0, i32 2, !dbg !1104
  store ptr %23, ptr %priv, align 8, !dbg !1105
  store i32 0, ptr %retval, align 4, !dbg !1106
  br label %return, !dbg !1106

return:                                           ; preds = %if.end, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1107
  ret i32 %26, !dbg !1107
}

; Function Attrs: nounwind ssp uwtable
define void @ftl_reloc_free(ptr noundef %reloc) #0 !dbg !1108 {
entry:
  %reloc.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %reloc, ptr %reloc.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %reloc.addr, metadata !1112, metadata !DIExpression()), !dbg !1114
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9, !dbg !1115
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1113, metadata !DIExpression()), !dbg !1116
  %0 = load ptr, ptr %reloc.addr, align 8, !dbg !1117
  %tobool = icmp ne ptr %0, null, !dbg !1117
  br i1 %tobool, label %if.end, label %if.then, !dbg !1119

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1120

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %reloc.addr, align 8, !dbg !1122
  %move_buffer = getelementptr inbounds %struct.ftl_reloc, ptr %1, i32 0, i32 7, !dbg !1124
  %2 = load ptr, ptr %move_buffer, align 8, !dbg !1124
  %tobool1 = icmp ne ptr %2, null, !dbg !1122
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !1125

if.then2:                                         ; preds = %if.end
  store i64 0, ptr %i, align 8, !dbg !1126
  br label %for.cond, !dbg !1129

for.cond:                                         ; preds = %for.inc, %if.then2
  %3 = load i64, ptr %i, align 8, !dbg !1130
  %4 = load ptr, ptr %reloc.addr, align 8, !dbg !1132
  %max_qdepth = getelementptr inbounds %struct.ftl_reloc, ptr %4, i32 0, i32 6, !dbg !1133
  %5 = load i64, ptr %max_qdepth, align 8, !dbg !1133
  %cmp = icmp ult i64 %3, %5, !dbg !1134
  br i1 %cmp, label %for.body, label %for.end, !dbg !1135

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %reloc.addr, align 8, !dbg !1136
  %move_buffer3 = getelementptr inbounds %struct.ftl_reloc, ptr %6, i32 0, i32 7, !dbg !1138
  %7 = load ptr, ptr %move_buffer3, align 8, !dbg !1138
  %8 = load i64, ptr %i, align 8, !dbg !1139
  %arrayidx = getelementptr inbounds %struct.ftl_reloc_move, ptr %7, i64 %8, !dbg !1136
  call void @move_deinit(ptr noundef %arrayidx), !dbg !1140
  br label %for.inc, !dbg !1141

for.inc:                                          ; preds = %for.body
  %9 = load i64, ptr %i, align 8, !dbg !1142
  %inc = add i64 %9, 1, !dbg !1142
  store i64 %inc, ptr %i, align 8, !dbg !1142
  br label %for.cond, !dbg !1143, !llvm.loop !1144

for.end:                                          ; preds = %for.cond
  br label %if.end4, !dbg !1146

if.end4:                                          ; preds = %for.end, %if.end
  %10 = load ptr, ptr %reloc.addr, align 8, !dbg !1147
  %move_buffer5 = getelementptr inbounds %struct.ftl_reloc, ptr %10, i32 0, i32 7, !dbg !1148
  %11 = load ptr, ptr %move_buffer5, align 8, !dbg !1148
  call void @free(ptr noundef %11) #9, !dbg !1149
  %12 = load ptr, ptr %reloc.addr, align 8, !dbg !1150
  call void @free(ptr noundef %12) #9, !dbg !1151
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1152
  br label %cleanup, !dbg !1152

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9, !dbg !1152
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1152

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @move_deinit(ptr noundef %mv) #0 !dbg !1153 {
entry:
  %mv.addr = alloca ptr, align 8
  store ptr %mv, ptr %mv.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mv.addr, metadata !1157, metadata !DIExpression()), !dbg !1158
  %0 = load ptr, ptr %mv.addr, align 8, !dbg !1159
  %rq = getelementptr inbounds %struct.ftl_reloc_move, ptr %0, i32 0, i32 2, !dbg !1160
  %1 = load ptr, ptr %rq, align 8, !dbg !1160
  call void @ftl_rq_del(ptr noundef %1), !dbg !1161
  ret void, !dbg !1162
}

; Function Attrs: nounwind
declare !dbg !1163 void @free(ptr noundef) #4

; Function Attrs: nounwind ssp uwtable
define void @ftl_reloc_halt(ptr noundef %reloc) #0 !dbg !1164 {
entry:
  %reloc.addr = alloca ptr, align 8
  store ptr %reloc, ptr %reloc.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %reloc.addr, metadata !1166, metadata !DIExpression()), !dbg !1167
  %0 = load ptr, ptr %reloc.addr, align 8, !dbg !1168
  %halt = getelementptr inbounds %struct.ftl_reloc, ptr %0, i32 0, i32 1, !dbg !1169
  store i8 1, ptr %halt, align 8, !dbg !1170
  ret void, !dbg !1171
}

; Function Attrs: nounwind ssp uwtable
define void @ftl_reloc_resume(ptr noundef %reloc) #0 !dbg !1172 {
entry:
  %reloc.addr = alloca ptr, align 8
  %mv = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %reloc, ptr %reloc.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %reloc.addr, metadata !1174, metadata !DIExpression()), !dbg !1177
  call void @llvm.lifetime.start.p0(i64 8, ptr %mv) #9, !dbg !1178
  tail call void @llvm.dbg.declare(metadata ptr %mv, metadata !1175, metadata !DIExpression()), !dbg !1179
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #9, !dbg !1178
  tail call void @llvm.dbg.declare(metadata ptr %next, metadata !1176, metadata !DIExpression()), !dbg !1180
  %0 = load ptr, ptr %reloc.addr, align 8, !dbg !1181
  %halt = getelementptr inbounds %struct.ftl_reloc, ptr %0, i32 0, i32 1, !dbg !1182
  store i8 0, ptr %halt, align 8, !dbg !1183
  %1 = load ptr, ptr %reloc.addr, align 8, !dbg !1184
  %move_queue = getelementptr inbounds %struct.ftl_reloc, ptr %1, i32 0, i32 8, !dbg !1184
  %arrayidx = getelementptr inbounds [5 x %struct.anon.0], ptr %move_queue, i64 0, i64 4, !dbg !1184
  %tqh_first = getelementptr inbounds %struct.anon.0, ptr %arrayidx, i32 0, i32 0, !dbg !1184
  %2 = load ptr, ptr %tqh_first, align 8, !dbg !1184
  store ptr %2, ptr %mv, align 8, !dbg !1184
  br label %for.cond, !dbg !1184

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %mv, align 8, !dbg !1186
  %tobool = icmp ne ptr %3, null, !dbg !1186
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1186

land.rhs:                                         ; preds = %for.cond
  %4 = load ptr, ptr %mv, align 8, !dbg !1186
  %qentry = getelementptr inbounds %struct.ftl_reloc_move, ptr %4, i32 0, i32 4, !dbg !1186
  %tqe_next = getelementptr inbounds %struct.anon.25, ptr %qentry, i32 0, i32 0, !dbg !1186
  %5 = load ptr, ptr %tqe_next, align 8, !dbg !1186
  store ptr %5, ptr %next, align 8, !dbg !1186
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ true, %land.rhs ], !dbg !1188
  br i1 %6, label %for.body, label %for.end, !dbg !1184

for.body:                                         ; preds = %land.end
  %7 = load ptr, ptr %mv, align 8, !dbg !1189
  call void @move_set_state(ptr noundef %7, i32 noundef 0), !dbg !1191
  br label %for.inc, !dbg !1192

for.inc:                                          ; preds = %for.body
  %8 = load ptr, ptr %next, align 8, !dbg !1186
  store ptr %8, ptr %mv, align 8, !dbg !1186
  br label %for.cond, !dbg !1186, !llvm.loop !1193

for.end:                                          ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #9, !dbg !1195
  call void @llvm.lifetime.end.p0(i64 8, ptr %mv) #9, !dbg !1195
  ret void, !dbg !1195
}

; Function Attrs: nounwind ssp uwtable
define internal void @move_set_state(ptr noundef %mv, i32 noundef %state) #0 !dbg !1196 {
entry:
  %mv.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  %reloc = alloca ptr, align 8
  store ptr %mv, ptr %mv.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mv.addr, metadata !1200, metadata !DIExpression()), !dbg !1203
  store i32 %state, ptr %state.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !1201, metadata !DIExpression()), !dbg !1204
  call void @llvm.lifetime.start.p0(i64 8, ptr %reloc) #9, !dbg !1205
  tail call void @llvm.dbg.declare(metadata ptr %reloc, metadata !1202, metadata !DIExpression()), !dbg !1206
  %0 = load ptr, ptr %mv.addr, align 8, !dbg !1207
  %reloc1 = getelementptr inbounds %struct.ftl_reloc_move, ptr %0, i32 0, i32 1, !dbg !1208
  %1 = load ptr, ptr %reloc1, align 8, !dbg !1208
  store ptr %1, ptr %reloc, align 8, !dbg !1206
  %2 = load i32, ptr %state.addr, align 4, !dbg !1209
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb8
    i32 1, label %sw.bb15
    i32 3, label %sw.bb15
    i32 4, label %sw.bb15
  ], !dbg !1210

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %mv.addr, align 8, !dbg !1211
  %rq = getelementptr inbounds %struct.ftl_reloc_move, ptr %3, i32 0, i32 2, !dbg !1213
  %4 = load ptr, ptr %rq, align 8, !dbg !1213
  %owner = getelementptr inbounds %struct.ftl_rq, ptr %4, i32 0, i32 9, !dbg !1214
  %cb = getelementptr inbounds %struct.anon.27, ptr %owner, i32 0, i32 0, !dbg !1215
  store ptr @move_read_cb, ptr %cb, align 8, !dbg !1216
  %5 = load ptr, ptr %mv.addr, align 8, !dbg !1217
  %rq2 = getelementptr inbounds %struct.ftl_reloc_move, ptr %5, i32 0, i32 2, !dbg !1218
  %6 = load ptr, ptr %rq2, align 8, !dbg !1218
  %owner3 = getelementptr inbounds %struct.ftl_rq, ptr %6, i32 0, i32 9, !dbg !1219
  %error = getelementptr inbounds %struct.anon.27, ptr %owner3, i32 0, i32 1, !dbg !1220
  store ptr @move_read_error_cb, ptr %error, align 8, !dbg !1221
  %7 = load ptr, ptr %mv.addr, align 8, !dbg !1222
  %rq4 = getelementptr inbounds %struct.ftl_reloc_move, ptr %7, i32 0, i32 2, !dbg !1223
  %8 = load ptr, ptr %rq4, align 8, !dbg !1223
  %iter = getelementptr inbounds %struct.ftl_rq, ptr %8, i32 0, i32 10, !dbg !1224
  %idx = getelementptr inbounds %struct.anon.28, ptr %iter, i32 0, i32 0, !dbg !1225
  store i32 0, ptr %idx, align 8, !dbg !1226
  %9 = load ptr, ptr %mv.addr, align 8, !dbg !1227
  %rq5 = getelementptr inbounds %struct.ftl_reloc_move, ptr %9, i32 0, i32 2, !dbg !1228
  %10 = load ptr, ptr %rq5, align 8, !dbg !1228
  %iter6 = getelementptr inbounds %struct.ftl_rq, ptr %10, i32 0, i32 10, !dbg !1229
  %count = getelementptr inbounds %struct.anon.28, ptr %iter6, i32 0, i32 1, !dbg !1230
  store i32 0, ptr %count, align 4, !dbg !1231
  %11 = load ptr, ptr %mv.addr, align 8, !dbg !1232
  %rq7 = getelementptr inbounds %struct.ftl_reloc_move, ptr %11, i32 0, i32 2, !dbg !1233
  %12 = load ptr, ptr %rq7, align 8, !dbg !1233
  %success = getelementptr inbounds %struct.ftl_rq, ptr %12, i32 0, i32 8, !dbg !1234
  store i8 1, ptr %success, align 8, !dbg !1235
  br label %sw.epilog, !dbg !1236

sw.bb8:                                           ; preds = %entry
  %13 = load ptr, ptr %mv.addr, align 8, !dbg !1237
  %rq9 = getelementptr inbounds %struct.ftl_reloc_move, ptr %13, i32 0, i32 2, !dbg !1238
  %14 = load ptr, ptr %rq9, align 8, !dbg !1238
  %owner10 = getelementptr inbounds %struct.ftl_rq, ptr %14, i32 0, i32 9, !dbg !1239
  %cb11 = getelementptr inbounds %struct.anon.27, ptr %owner10, i32 0, i32 0, !dbg !1240
  store ptr @move_write_cb, ptr %cb11, align 8, !dbg !1241
  %15 = load ptr, ptr %mv.addr, align 8, !dbg !1242
  %rq12 = getelementptr inbounds %struct.ftl_reloc_move, ptr %15, i32 0, i32 2, !dbg !1243
  %16 = load ptr, ptr %rq12, align 8, !dbg !1243
  %owner13 = getelementptr inbounds %struct.ftl_rq, ptr %16, i32 0, i32 9, !dbg !1244
  %error14 = getelementptr inbounds %struct.anon.27, ptr %owner13, i32 0, i32 1, !dbg !1245
  store ptr null, ptr %error14, align 8, !dbg !1246
  br label %sw.epilog, !dbg !1247

sw.bb15:                                          ; preds = %entry, %entry, %entry
  br label %sw.epilog, !dbg !1248

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !1249

do.body:                                          ; preds = %sw.default
  call void @abort() #11, !dbg !1250
  unreachable, !dbg !1250

do.cond:                                          ; No predecessors!
  br label %do.end, !dbg !1250

do.end:                                           ; preds = %do.cond
  br label %sw.epilog, !dbg !1252

sw.epilog:                                        ; preds = %do.end, %sw.bb15, %sw.bb8, %sw.bb
  %17 = load ptr, ptr %mv.addr, align 8, !dbg !1253
  %state16 = getelementptr inbounds %struct.ftl_reloc_move, ptr %17, i32 0, i32 3, !dbg !1255
  %18 = load i32, ptr %state16, align 8, !dbg !1255
  %19 = load i32, ptr %state.addr, align 4, !dbg !1256
  %cmp = icmp ne i32 %18, %19, !dbg !1257
  br i1 %cmp, label %if.then, label %if.end56, !dbg !1258

if.then:                                          ; preds = %sw.epilog
  br label %do.body17, !dbg !1259

do.body17:                                        ; preds = %if.then
  %20 = load ptr, ptr %mv.addr, align 8, !dbg !1261
  %qentry = getelementptr inbounds %struct.ftl_reloc_move, ptr %20, i32 0, i32 4, !dbg !1261
  %tqe_next = getelementptr inbounds %struct.anon.25, ptr %qentry, i32 0, i32 0, !dbg !1261
  %21 = load ptr, ptr %tqe_next, align 8, !dbg !1261
  %cmp18 = icmp ne ptr %21, null, !dbg !1261
  br i1 %cmp18, label %if.then19, label %if.else, !dbg !1264

if.then19:                                        ; preds = %do.body17
  %22 = load ptr, ptr %mv.addr, align 8, !dbg !1261
  %qentry20 = getelementptr inbounds %struct.ftl_reloc_move, ptr %22, i32 0, i32 4, !dbg !1261
  %tqe_prev = getelementptr inbounds %struct.anon.25, ptr %qentry20, i32 0, i32 1, !dbg !1261
  %23 = load ptr, ptr %tqe_prev, align 8, !dbg !1261
  %24 = load ptr, ptr %mv.addr, align 8, !dbg !1261
  %qentry21 = getelementptr inbounds %struct.ftl_reloc_move, ptr %24, i32 0, i32 4, !dbg !1261
  %tqe_next22 = getelementptr inbounds %struct.anon.25, ptr %qentry21, i32 0, i32 0, !dbg !1261
  %25 = load ptr, ptr %tqe_next22, align 8, !dbg !1261
  %qentry23 = getelementptr inbounds %struct.ftl_reloc_move, ptr %25, i32 0, i32 4, !dbg !1261
  %tqe_prev24 = getelementptr inbounds %struct.anon.25, ptr %qentry23, i32 0, i32 1, !dbg !1261
  store ptr %23, ptr %tqe_prev24, align 8, !dbg !1261
  br label %if.end, !dbg !1261

if.else:                                          ; preds = %do.body17
  %26 = load ptr, ptr %mv.addr, align 8, !dbg !1261
  %qentry25 = getelementptr inbounds %struct.ftl_reloc_move, ptr %26, i32 0, i32 4, !dbg !1261
  %tqe_prev26 = getelementptr inbounds %struct.anon.25, ptr %qentry25, i32 0, i32 1, !dbg !1261
  %27 = load ptr, ptr %tqe_prev26, align 8, !dbg !1261
  %28 = load ptr, ptr %reloc, align 8, !dbg !1261
  %move_queue = getelementptr inbounds %struct.ftl_reloc, ptr %28, i32 0, i32 8, !dbg !1261
  %29 = load ptr, ptr %mv.addr, align 8, !dbg !1261
  %state27 = getelementptr inbounds %struct.ftl_reloc_move, ptr %29, i32 0, i32 3, !dbg !1261
  %30 = load i32, ptr %state27, align 8, !dbg !1261
  %idxprom = zext i32 %30 to i64, !dbg !1261
  %arrayidx = getelementptr inbounds [5 x %struct.anon.0], ptr %move_queue, i64 0, i64 %idxprom, !dbg !1261
  %tqh_last = getelementptr inbounds %struct.anon.0, ptr %arrayidx, i32 0, i32 1, !dbg !1261
  store ptr %27, ptr %tqh_last, align 8, !dbg !1261
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then19
  %31 = load ptr, ptr %mv.addr, align 8, !dbg !1264
  %qentry28 = getelementptr inbounds %struct.ftl_reloc_move, ptr %31, i32 0, i32 4, !dbg !1264
  %tqe_next29 = getelementptr inbounds %struct.anon.25, ptr %qentry28, i32 0, i32 0, !dbg !1264
  %32 = load ptr, ptr %tqe_next29, align 8, !dbg !1264
  %33 = load ptr, ptr %mv.addr, align 8, !dbg !1264
  %qentry30 = getelementptr inbounds %struct.ftl_reloc_move, ptr %33, i32 0, i32 4, !dbg !1264
  %tqe_prev31 = getelementptr inbounds %struct.anon.25, ptr %qentry30, i32 0, i32 1, !dbg !1264
  %34 = load ptr, ptr %tqe_prev31, align 8, !dbg !1264
  store ptr %32, ptr %34, align 8, !dbg !1264
  br label %do.cond32, !dbg !1264

do.cond32:                                        ; preds = %if.end
  br label %do.end33, !dbg !1264

do.end33:                                         ; preds = %do.cond32
  br label %do.body34, !dbg !1265

do.body34:                                        ; preds = %do.end33
  %35 = load ptr, ptr %mv.addr, align 8, !dbg !1266
  %qentry35 = getelementptr inbounds %struct.ftl_reloc_move, ptr %35, i32 0, i32 4, !dbg !1266
  %tqe_next36 = getelementptr inbounds %struct.anon.25, ptr %qentry35, i32 0, i32 0, !dbg !1266
  store ptr null, ptr %tqe_next36, align 8, !dbg !1266
  %36 = load ptr, ptr %reloc, align 8, !dbg !1266
  %move_queue37 = getelementptr inbounds %struct.ftl_reloc, ptr %36, i32 0, i32 8, !dbg !1266
  %37 = load i32, ptr %state.addr, align 4, !dbg !1266
  %idxprom38 = zext i32 %37 to i64, !dbg !1266
  %arrayidx39 = getelementptr inbounds [5 x %struct.anon.0], ptr %move_queue37, i64 0, i64 %idxprom38, !dbg !1266
  %tqh_last40 = getelementptr inbounds %struct.anon.0, ptr %arrayidx39, i32 0, i32 1, !dbg !1266
  %38 = load ptr, ptr %tqh_last40, align 8, !dbg !1266
  %39 = load ptr, ptr %mv.addr, align 8, !dbg !1266
  %qentry41 = getelementptr inbounds %struct.ftl_reloc_move, ptr %39, i32 0, i32 4, !dbg !1266
  %tqe_prev42 = getelementptr inbounds %struct.anon.25, ptr %qentry41, i32 0, i32 1, !dbg !1266
  store ptr %38, ptr %tqe_prev42, align 8, !dbg !1266
  %40 = load ptr, ptr %mv.addr, align 8, !dbg !1266
  %41 = load ptr, ptr %reloc, align 8, !dbg !1266
  %move_queue43 = getelementptr inbounds %struct.ftl_reloc, ptr %41, i32 0, i32 8, !dbg !1266
  %42 = load i32, ptr %state.addr, align 4, !dbg !1266
  %idxprom44 = zext i32 %42 to i64, !dbg !1266
  %arrayidx45 = getelementptr inbounds [5 x %struct.anon.0], ptr %move_queue43, i64 0, i64 %idxprom44, !dbg !1266
  %tqh_last46 = getelementptr inbounds %struct.anon.0, ptr %arrayidx45, i32 0, i32 1, !dbg !1266
  %43 = load ptr, ptr %tqh_last46, align 8, !dbg !1266
  store ptr %40, ptr %43, align 8, !dbg !1266
  %44 = load ptr, ptr %mv.addr, align 8, !dbg !1266
  %qentry47 = getelementptr inbounds %struct.ftl_reloc_move, ptr %44, i32 0, i32 4, !dbg !1266
  %tqe_next48 = getelementptr inbounds %struct.anon.25, ptr %qentry47, i32 0, i32 0, !dbg !1266
  %45 = load ptr, ptr %reloc, align 8, !dbg !1266
  %move_queue49 = getelementptr inbounds %struct.ftl_reloc, ptr %45, i32 0, i32 8, !dbg !1266
  %46 = load i32, ptr %state.addr, align 4, !dbg !1266
  %idxprom50 = zext i32 %46 to i64, !dbg !1266
  %arrayidx51 = getelementptr inbounds [5 x %struct.anon.0], ptr %move_queue49, i64 0, i64 %idxprom50, !dbg !1266
  %tqh_last52 = getelementptr inbounds %struct.anon.0, ptr %arrayidx51, i32 0, i32 1, !dbg !1266
  store ptr %tqe_next48, ptr %tqh_last52, align 8, !dbg !1266
  br label %do.cond53, !dbg !1266

do.cond53:                                        ; preds = %do.body34
  br label %do.end54, !dbg !1266

do.end54:                                         ; preds = %do.cond53
  %47 = load i32, ptr %state.addr, align 4, !dbg !1268
  %48 = load ptr, ptr %mv.addr, align 8, !dbg !1269
  %state55 = getelementptr inbounds %struct.ftl_reloc_move, ptr %48, i32 0, i32 3, !dbg !1270
  store i32 %47, ptr %state55, align 8, !dbg !1271
  br label %if.end56, !dbg !1272

if.end56:                                         ; preds = %do.end54, %sw.epilog
  call void @llvm.lifetime.end.p0(i64 8, ptr %reloc) #9, !dbg !1273
  ret void, !dbg !1273
}

; Function Attrs: nounwind ssp uwtable
define zeroext i1 @ftl_reloc_is_halted(ptr noundef %reloc) #0 !dbg !1274 {
entry:
  %retval = alloca i1, align 1
  %reloc.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %count = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %reloc, ptr %reloc.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %reloc.addr, metadata !1280, metadata !DIExpression()), !dbg !1283
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9, !dbg !1284
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1281, metadata !DIExpression()), !dbg !1285
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #9, !dbg !1284
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !1282, metadata !DIExpression()), !dbg !1286
  store i64 5, ptr %count, align 8, !dbg !1287
  store i64 0, ptr %i, align 8, !dbg !1288
  br label %for.cond, !dbg !1290

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !1291
  %1 = load i64, ptr %count, align 8, !dbg !1293
  %cmp = icmp ult i64 %0, %1, !dbg !1294
  br i1 %cmp, label %for.body, label %for.end, !dbg !1295

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %i, align 8, !dbg !1296
  %cmp1 = icmp eq i64 %2, 4, !dbg !1299
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1300

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !1301

if.end:                                           ; preds = %for.body
  %3 = load ptr, ptr %reloc.addr, align 8, !dbg !1303
  %move_queue = getelementptr inbounds %struct.ftl_reloc, ptr %3, i32 0, i32 8, !dbg !1303
  %4 = load i64, ptr %i, align 8, !dbg !1303
  %arrayidx = getelementptr inbounds [5 x %struct.anon.0], ptr %move_queue, i64 0, i64 %4, !dbg !1303
  %tqh_first = getelementptr inbounds %struct.anon.0, ptr %arrayidx, i32 0, i32 0, !dbg !1303
  %5 = load ptr, ptr %tqh_first, align 8, !dbg !1303
  %cmp2 = icmp eq ptr %5, null, !dbg !1303
  br i1 %cmp2, label %if.end4, label %if.then3, !dbg !1305

if.then3:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !1306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1306

if.end4:                                          ; preds = %if.end
  br label %for.inc, !dbg !1308

for.inc:                                          ; preds = %if.end4, %if.then
  %6 = load i64, ptr %i, align 8, !dbg !1309
  %inc = add i64 %6, 1, !dbg !1309
  store i64 %inc, ptr %i, align 8, !dbg !1309
  br label %for.cond, !dbg !1310, !llvm.loop !1311

for.end:                                          ; preds = %for.cond
  store i1 true, ptr %retval, align 1, !dbg !1313
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1313

cleanup:                                          ; preds = %for.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #9, !dbg !1314
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9, !dbg !1314
  %7 = load i1, ptr %retval, align 1, !dbg !1314
  ret i1 %7, !dbg !1314
}

; Function Attrs: nounwind ssp uwtable
define void @ftl_reloc(ptr noundef %reloc) #0 !dbg !1315 {
entry:
  %reloc.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %count = alloca i64, align 8
  store ptr %reloc, ptr %reloc.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %reloc.addr, metadata !1317, metadata !DIExpression()), !dbg !1320
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9, !dbg !1321
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1318, metadata !DIExpression()), !dbg !1322
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #9, !dbg !1321
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !1319, metadata !DIExpression()), !dbg !1323
  store i64 5, ptr %count, align 8, !dbg !1324
  store i64 0, ptr %i, align 8, !dbg !1325
  br label %for.cond, !dbg !1327

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !1328
  %1 = load i64, ptr %count, align 8, !dbg !1330
  %cmp = icmp ult i64 %0, %1, !dbg !1331
  br i1 %cmp, label %for.body, label %for.end, !dbg !1332

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %reloc.addr, align 8, !dbg !1333
  %move_queue = getelementptr inbounds %struct.ftl_reloc, ptr %2, i32 0, i32 8, !dbg !1333
  %3 = load i64, ptr %i, align 8, !dbg !1333
  %arrayidx = getelementptr inbounds [5 x %struct.anon.0], ptr %move_queue, i64 0, i64 %3, !dbg !1333
  %tqh_first = getelementptr inbounds %struct.anon.0, ptr %arrayidx, i32 0, i32 0, !dbg !1333
  %4 = load ptr, ptr %tqh_first, align 8, !dbg !1333
  %cmp1 = icmp eq ptr %4, null, !dbg !1333
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1336

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !1337

if.end:                                           ; preds = %for.body
  %5 = load ptr, ptr %reloc.addr, align 8, !dbg !1339
  %6 = load ptr, ptr %reloc.addr, align 8, !dbg !1340
  %move_queue2 = getelementptr inbounds %struct.ftl_reloc, ptr %6, i32 0, i32 8, !dbg !1340
  %7 = load i64, ptr %i, align 8, !dbg !1340
  %arrayidx3 = getelementptr inbounds [5 x %struct.anon.0], ptr %move_queue2, i64 0, i64 %7, !dbg !1340
  %tqh_first4 = getelementptr inbounds %struct.anon.0, ptr %arrayidx3, i32 0, i32 0, !dbg !1340
  %8 = load ptr, ptr %tqh_first4, align 8, !dbg !1340
  call void @move_run(ptr noundef %5, ptr noundef %8), !dbg !1341
  br label %for.inc, !dbg !1342

for.inc:                                          ; preds = %if.end, %if.then
  %9 = load i64, ptr %i, align 8, !dbg !1343
  %inc = add i64 %9, 1, !dbg !1343
  store i64 %inc, ptr %i, align 8, !dbg !1343
  br label %for.cond, !dbg !1344, !llvm.loop !1345

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %reloc.addr, align 8, !dbg !1347
  call void @move_release_bands(ptr noundef %10), !dbg !1348
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #9, !dbg !1349
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9, !dbg !1349
  ret void, !dbg !1349
}

; Function Attrs: nounwind ssp uwtable
define internal void @move_run(ptr noundef %reloc, ptr noundef %mv) #0 !dbg !1350 {
entry:
  %reloc.addr = alloca ptr, align 8
  %mv.addr = alloca ptr, align 8
  %band = alloca ptr, align 8
  store ptr %reloc, ptr %reloc.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %reloc.addr, metadata !1354, metadata !DIExpression()), !dbg !1357
  store ptr %mv, ptr %mv.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mv.addr, metadata !1355, metadata !DIExpression()), !dbg !1358
  call void @llvm.lifetime.start.p0(i64 8, ptr %band) #9, !dbg !1359
  tail call void @llvm.dbg.declare(metadata ptr %band, metadata !1356, metadata !DIExpression()), !dbg !1360
  %0 = load ptr, ptr %mv.addr, align 8, !dbg !1361
  %state = getelementptr inbounds %struct.ftl_reloc_move, ptr %0, i32 0, i32 3, !dbg !1362
  %1 = load i32, ptr %state, align 8, !dbg !1362
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb6
    i32 4, label %sw.bb15
    i32 3, label %sw.bb15
  ], !dbg !1363

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %reloc.addr, align 8, !dbg !1364
  %halt = getelementptr inbounds %struct.ftl_reloc, ptr %2, i32 0, i32 1, !dbg !1364
  %3 = load i8, ptr %halt, align 8, !dbg !1364, !range !1368, !noundef !1369
  %tobool = trunc i8 %3 to i1, !dbg !1364
  %conv = zext i1 %tobool to i64, !dbg !1364
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1364
  %tobool1 = icmp ne i64 %expval, 0, !dbg !1364
  br i1 %tobool1, label %if.then, label %if.end, !dbg !1370

if.then:                                          ; preds = %sw.bb
  %4 = load ptr, ptr %mv.addr, align 8, !dbg !1371
  call void @move_set_state(ptr noundef %4, i32 noundef 4), !dbg !1373
  br label %sw.epilog, !dbg !1374

if.end:                                           ; preds = %sw.bb
  %5 = load ptr, ptr %reloc.addr, align 8, !dbg !1375
  %call = call ptr @move_get_band(ptr noundef %5), !dbg !1376
  store ptr %call, ptr %band, align 8, !dbg !1377
  %6 = load ptr, ptr %band, align 8, !dbg !1378
  %tobool2 = icmp ne ptr %6, null, !dbg !1378
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1380

if.then3:                                         ; preds = %if.end
  br label %sw.epilog, !dbg !1381

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %reloc.addr, align 8, !dbg !1383
  %8 = load ptr, ptr %mv.addr, align 8, !dbg !1384
  %9 = load ptr, ptr %band, align 8, !dbg !1385
  call void @move_read(ptr noundef %7, ptr noundef %8, ptr noundef %9), !dbg !1386
  br label %sw.epilog, !dbg !1387

sw.bb5:                                           ; preds = %entry
  %10 = load ptr, ptr %mv.addr, align 8, !dbg !1388
  call void @move_pin(ptr noundef %10), !dbg !1389
  %11 = load ptr, ptr %reloc.addr, align 8, !dbg !1390
  %dev = getelementptr inbounds %struct.ftl_reloc, ptr %11, i32 0, i32 0, !dbg !1391
  %12 = load ptr, ptr %dev, align 8, !dbg !1391
  call void @ftl_add_io_activity(ptr noundef %12), !dbg !1392
  br label %sw.epilog, !dbg !1393

sw.bb6:                                           ; preds = %entry
  %13 = load ptr, ptr %reloc.addr, align 8, !dbg !1394
  %halt7 = getelementptr inbounds %struct.ftl_reloc, ptr %13, i32 0, i32 1, !dbg !1394
  %14 = load i8, ptr %halt7, align 8, !dbg !1394, !range !1368, !noundef !1369
  %tobool8 = trunc i8 %14 to i1, !dbg !1394
  %conv9 = zext i1 %tobool8 to i64, !dbg !1394
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !1394
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !1394
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !1396

if.then12:                                        ; preds = %sw.bb6
  %15 = load ptr, ptr %mv.addr, align 8, !dbg !1397
  %rq = getelementptr inbounds %struct.ftl_reloc_move, ptr %15, i32 0, i32 2, !dbg !1399
  %16 = load ptr, ptr %rq, align 8, !dbg !1399
  call void @ftl_rq_unpin(ptr noundef %16), !dbg !1400
  %17 = load ptr, ptr %mv.addr, align 8, !dbg !1401
  call void @move_set_state(ptr noundef %17, i32 noundef 4), !dbg !1402
  br label %sw.epilog, !dbg !1403

if.end13:                                         ; preds = %sw.bb6
  %18 = load ptr, ptr %reloc.addr, align 8, !dbg !1404
  %dev14 = getelementptr inbounds %struct.ftl_reloc, ptr %18, i32 0, i32 0, !dbg !1405
  %19 = load ptr, ptr %dev14, align 8, !dbg !1405
  call void @ftl_add_io_activity(ptr noundef %19), !dbg !1406
  %20 = load ptr, ptr %reloc.addr, align 8, !dbg !1407
  %21 = load ptr, ptr %mv.addr, align 8, !dbg !1408
  call void @move_write(ptr noundef %20, ptr noundef %21), !dbg !1409
  br label %sw.epilog, !dbg !1410

sw.bb15:                                          ; preds = %entry, %entry
  br label %sw.epilog, !dbg !1411

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !1412

do.body:                                          ; preds = %sw.default
  call void @abort() #11, !dbg !1413
  unreachable, !dbg !1413

do.cond:                                          ; No predecessors!
  br label %do.end, !dbg !1413

do.end:                                           ; preds = %do.cond
  br label %sw.epilog, !dbg !1415

sw.epilog:                                        ; preds = %do.end, %sw.bb15, %if.end13, %if.then12, %sw.bb5, %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %band) #9, !dbg !1416
  ret void, !dbg !1416
}

; Function Attrs: nounwind ssp uwtable
define internal void @move_release_bands(ptr noundef %reloc) #0 !dbg !1417 {
entry:
  %reloc.addr = alloca ptr, align 8
  %band = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %reloc, ptr %reloc.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %reloc.addr, metadata !1419, metadata !DIExpression()), !dbg !1421
  call void @llvm.lifetime.start.p0(i64 8, ptr %band) #9, !dbg !1422
  tail call void @llvm.dbg.declare(metadata ptr %band, metadata !1420, metadata !DIExpression()), !dbg !1423
  %0 = load ptr, ptr %reloc.addr, align 8, !dbg !1424
  %band_done = getelementptr inbounds %struct.ftl_reloc, ptr %0, i32 0, i32 3, !dbg !1424
  %tqh_first = getelementptr inbounds %struct.anon, ptr %band_done, i32 0, i32 0, !dbg !1424
  %1 = load ptr, ptr %tqh_first, align 8, !dbg !1424
  %cmp = icmp eq ptr %1, null, !dbg !1424
  br i1 %cmp, label %if.then, label %if.end, !dbg !1426

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1427

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %reloc.addr, align 8, !dbg !1429
  %band_done1 = getelementptr inbounds %struct.ftl_reloc, ptr %2, i32 0, i32 3, !dbg !1429
  %tqh_first2 = getelementptr inbounds %struct.anon, ptr %band_done1, i32 0, i32 0, !dbg !1429
  %3 = load ptr, ptr %tqh_first2, align 8, !dbg !1429
  store ptr %3, ptr %band, align 8, !dbg !1430
  %4 = load ptr, ptr %band, align 8, !dbg !1431
  %owner = getelementptr inbounds %struct.ftl_band, ptr %4, i32 0, i32 3, !dbg !1433
  %cnt = getelementptr inbounds %struct.anon.35, ptr %owner, i32 0, i32 3, !dbg !1434
  %5 = load i64, ptr %cnt, align 8, !dbg !1434
  %tobool = icmp ne i64 %5, 0, !dbg !1431
  br i1 %tobool, label %if.then4, label %lor.lhs.false, !dbg !1435

lor.lhs.false:                                    ; preds = %if.end
  %6 = load ptr, ptr %band, align 8, !dbg !1436
  %call = call i64 @ftl_band_qd(ptr noundef %6), !dbg !1437
  %tobool3 = icmp ne i64 %call, 0, !dbg !1437
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1438

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1439

if.end5:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr %band, align 8, !dbg !1441
  %call6 = call i32 @ftl_band_empty(ptr noundef %7), !dbg !1443
  %tobool7 = icmp ne i32 %call6, 0, !dbg !1443
  br i1 %tobool7, label %if.then8, label %if.else24, !dbg !1444

if.then8:                                         ; preds = %if.end5
  br label %do.body, !dbg !1445

do.body:                                          ; preds = %if.then8
  %8 = load ptr, ptr %band, align 8, !dbg !1447
  %queue_entry = getelementptr inbounds %struct.ftl_band, ptr %8, i32 0, i32 11, !dbg !1447
  %tqe_next = getelementptr inbounds %struct.anon.42, ptr %queue_entry, i32 0, i32 0, !dbg !1447
  %9 = load ptr, ptr %tqe_next, align 8, !dbg !1447
  %cmp9 = icmp ne ptr %9, null, !dbg !1447
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !1450

if.then10:                                        ; preds = %do.body
  %10 = load ptr, ptr %band, align 8, !dbg !1447
  %queue_entry11 = getelementptr inbounds %struct.ftl_band, ptr %10, i32 0, i32 11, !dbg !1447
  %tqe_prev = getelementptr inbounds %struct.anon.42, ptr %queue_entry11, i32 0, i32 1, !dbg !1447
  %11 = load ptr, ptr %tqe_prev, align 8, !dbg !1447
  %12 = load ptr, ptr %band, align 8, !dbg !1447
  %queue_entry12 = getelementptr inbounds %struct.ftl_band, ptr %12, i32 0, i32 11, !dbg !1447
  %tqe_next13 = getelementptr inbounds %struct.anon.42, ptr %queue_entry12, i32 0, i32 0, !dbg !1447
  %13 = load ptr, ptr %tqe_next13, align 8, !dbg !1447
  %queue_entry14 = getelementptr inbounds %struct.ftl_band, ptr %13, i32 0, i32 11, !dbg !1447
  %tqe_prev15 = getelementptr inbounds %struct.anon.42, ptr %queue_entry14, i32 0, i32 1, !dbg !1447
  store ptr %11, ptr %tqe_prev15, align 8, !dbg !1447
  br label %if.end19, !dbg !1447

if.else:                                          ; preds = %do.body
  %14 = load ptr, ptr %band, align 8, !dbg !1447
  %queue_entry16 = getelementptr inbounds %struct.ftl_band, ptr %14, i32 0, i32 11, !dbg !1447
  %tqe_prev17 = getelementptr inbounds %struct.anon.42, ptr %queue_entry16, i32 0, i32 1, !dbg !1447
  %15 = load ptr, ptr %tqe_prev17, align 8, !dbg !1447
  %16 = load ptr, ptr %reloc.addr, align 8, !dbg !1447
  %band_done18 = getelementptr inbounds %struct.ftl_reloc, ptr %16, i32 0, i32 3, !dbg !1447
  %tqh_last = getelementptr inbounds %struct.anon, ptr %band_done18, i32 0, i32 1, !dbg !1447
  store ptr %15, ptr %tqh_last, align 8, !dbg !1447
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then10
  %17 = load ptr, ptr %band, align 8, !dbg !1450
  %queue_entry20 = getelementptr inbounds %struct.ftl_band, ptr %17, i32 0, i32 11, !dbg !1450
  %tqe_next21 = getelementptr inbounds %struct.anon.42, ptr %queue_entry20, i32 0, i32 0, !dbg !1450
  %18 = load ptr, ptr %tqe_next21, align 8, !dbg !1450
  %19 = load ptr, ptr %band, align 8, !dbg !1450
  %queue_entry22 = getelementptr inbounds %struct.ftl_band, ptr %19, i32 0, i32 11, !dbg !1450
  %tqe_prev23 = getelementptr inbounds %struct.anon.42, ptr %queue_entry22, i32 0, i32 1, !dbg !1450
  %20 = load ptr, ptr %tqe_prev23, align 8, !dbg !1450
  store ptr %18, ptr %20, align 8, !dbg !1450
  br label %do.cond, !dbg !1450

do.cond:                                          ; preds = %if.end19
  br label %do.end, !dbg !1450

do.end:                                           ; preds = %do.cond
  %21 = load ptr, ptr %reloc.addr, align 8, !dbg !1451
  %band_done_count = getelementptr inbounds %struct.ftl_reloc, ptr %21, i32 0, i32 4, !dbg !1452
  %22 = load i64, ptr %band_done_count, align 8, !dbg !1453
  %dec = add i64 %22, -1, !dbg !1453
  store i64 %dec, ptr %band_done_count, align 8, !dbg !1453
  %23 = load ptr, ptr %band, align 8, !dbg !1454
  call void @ftl_band_free(ptr noundef %23), !dbg !1455
  br label %if.end25, !dbg !1456

if.else24:                                        ; preds = %if.end5
  %24 = load ptr, ptr %band, align 8, !dbg !1457
  call void @move_handle_band_error(ptr noundef %24), !dbg !1459
  br label %if.end25

if.end25:                                         ; preds = %if.else24, %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1460
  br label %cleanup, !dbg !1460

cleanup:                                          ; preds = %if.end25, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %band) #9, !dbg !1460
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1460

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !1461 ptr @ftl_rq_new(ptr noundef, i32 noundef) #3

declare !dbg !1464 void @ftl_rq_del(ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal void @move_read_cb(ptr noundef %rq) #0 !dbg !1465 {
entry:
  %rq.addr = alloca ptr, align 8
  %mv = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rq, ptr %rq.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !1467, metadata !DIExpression()), !dbg !1469
  call void @llvm.lifetime.start.p0(i64 8, ptr %mv) #9, !dbg !1470
  tail call void @llvm.dbg.declare(metadata ptr %mv, metadata !1468, metadata !DIExpression()), !dbg !1471
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !1472
  %owner = getelementptr inbounds %struct.ftl_rq, ptr %0, i32 0, i32 9, !dbg !1473
  %priv = getelementptr inbounds %struct.anon.27, ptr %owner, i32 0, i32 2, !dbg !1474
  %1 = load ptr, ptr %priv, align 8, !dbg !1474
  store ptr %1, ptr %mv, align 8, !dbg !1471
  %2 = load ptr, ptr %rq.addr, align 8, !dbg !1475
  %iter = getelementptr inbounds %struct.ftl_rq, ptr %2, i32 0, i32 10, !dbg !1476
  %qd = getelementptr inbounds %struct.anon.28, ptr %iter, i32 0, i32 2, !dbg !1477
  %3 = load i32, ptr %qd, align 8, !dbg !1478
  %dec = add i32 %3, -1, !dbg !1478
  store i32 %dec, ptr %qd, align 8, !dbg !1478
  %4 = load ptr, ptr %rq.addr, align 8, !dbg !1479
  %iter1 = getelementptr inbounds %struct.ftl_rq, ptr %4, i32 0, i32 10, !dbg !1481
  %idx = getelementptr inbounds %struct.anon.28, ptr %iter1, i32 0, i32 0, !dbg !1482
  %5 = load i32, ptr %idx, align 8, !dbg !1482
  %conv = zext i32 %5 to i64, !dbg !1479
  %6 = load ptr, ptr %rq.addr, align 8, !dbg !1483
  %num_blocks = getelementptr inbounds %struct.ftl_rq, ptr %6, i32 0, i32 2, !dbg !1484
  %7 = load i64, ptr %num_blocks, align 8, !dbg !1484
  %cmp = icmp ne i64 %conv, %7, !dbg !1485
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1486

lor.lhs.false:                                    ; preds = %entry
  %8 = load ptr, ptr %rq.addr, align 8, !dbg !1487
  %iter3 = getelementptr inbounds %struct.ftl_rq, ptr %8, i32 0, i32 10, !dbg !1488
  %qd4 = getelementptr inbounds %struct.anon.28, ptr %iter3, i32 0, i32 2, !dbg !1489
  %9 = load i32, ptr %qd4, align 8, !dbg !1489
  %tobool = icmp ne i32 %9, 0, !dbg !1487
  br i1 %tobool, label %if.then, label %if.end, !dbg !1490

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1491

if.end:                                           ; preds = %lor.lhs.false
  %10 = load ptr, ptr %mv, align 8, !dbg !1493
  call void @move_set_state(ptr noundef %10, i32 noundef 1), !dbg !1494
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1495
  br label %cleanup, !dbg !1495

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mv) #9, !dbg !1495
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1495

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal void @move_read_error_cb(ptr noundef %rq, ptr noundef %band, i64 noundef %idx, i64 noundef %count) #0 !dbg !1496 {
entry:
  %rq.addr = alloca ptr, align 8
  %band.addr = alloca ptr, align 8
  %idx.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  store ptr %rq, ptr %rq.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !1498, metadata !DIExpression()), !dbg !1502
  store ptr %band, ptr %band.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %band.addr, metadata !1499, metadata !DIExpression()), !dbg !1503
  store i64 %idx, ptr %idx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !1500, metadata !DIExpression()), !dbg !1504
  store i64 %count, ptr %count.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1501, metadata !DIExpression()), !dbg !1505
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !1506
  %1 = load i64, ptr %idx.addr, align 8, !dbg !1507
  %2 = load i64, ptr %count.addr, align 8, !dbg !1508
  call void @move_init_entries(ptr noundef %0, i64 noundef %1, i64 noundef %2), !dbg !1509
  %3 = load i64, ptr %count.addr, align 8, !dbg !1510
  %4 = load ptr, ptr %band.addr, align 8, !dbg !1511
  %owner = getelementptr inbounds %struct.ftl_band, ptr %4, i32 0, i32 3, !dbg !1512
  %cnt = getelementptr inbounds %struct.anon.35, ptr %owner, i32 0, i32 3, !dbg !1513
  %5 = load i64, ptr %cnt, align 8, !dbg !1514
  %sub = sub i64 %5, %3, !dbg !1514
  store i64 %sub, ptr %cnt, align 8, !dbg !1514
  ret void, !dbg !1515
}

; Function Attrs: nounwind ssp uwtable
define internal void @move_write_cb(ptr noundef %rq) #0 !dbg !1516 {
entry:
  %rq.addr = alloca ptr, align 8
  %mv = alloca ptr, align 8
  store ptr %rq, ptr %rq.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !1518, metadata !DIExpression()), !dbg !1520
  call void @llvm.lifetime.start.p0(i64 8, ptr %mv) #9, !dbg !1521
  tail call void @llvm.dbg.declare(metadata ptr %mv, metadata !1519, metadata !DIExpression()), !dbg !1522
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !1523
  %owner = getelementptr inbounds %struct.ftl_rq, ptr %0, i32 0, i32 9, !dbg !1524
  %priv = getelementptr inbounds %struct.anon.27, ptr %owner, i32 0, i32 2, !dbg !1525
  %1 = load ptr, ptr %priv, align 8, !dbg !1525
  store ptr %1, ptr %mv, align 8, !dbg !1522
  %2 = load ptr, ptr %rq.addr, align 8, !dbg !1526
  %iter = getelementptr inbounds %struct.ftl_rq, ptr %2, i32 0, i32 10, !dbg !1527
  %qd = getelementptr inbounds %struct.anon.28, ptr %iter, i32 0, i32 2, !dbg !1528
  %3 = load i32, ptr %qd, align 8, !dbg !1529
  %dec = add i32 %3, -1, !dbg !1529
  store i32 %dec, ptr %qd, align 8, !dbg !1529
  %4 = load ptr, ptr %rq.addr, align 8, !dbg !1530
  %success = getelementptr inbounds %struct.ftl_rq, ptr %4, i32 0, i32 8, !dbg !1530
  %5 = load i8, ptr %success, align 8, !dbg !1530, !range !1368, !noundef !1369
  %tobool = trunc i8 %5 to i1, !dbg !1530
  %lnot = xor i1 %tobool, true, !dbg !1530
  %lnot1 = xor i1 %lnot, true, !dbg !1530
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1530
  %conv = sext i32 %lnot.ext to i64, !dbg !1530
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1530
  %tobool2 = icmp ne i64 %expval, 0, !dbg !1530
  br i1 %tobool2, label %if.then, label %if.else, !dbg !1532

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %rq.addr, align 8, !dbg !1533
  call void @move_finish_write(ptr noundef %6), !dbg !1535
  %7 = load ptr, ptr %mv, align 8, !dbg !1536
  call void @move_set_state(ptr noundef %7, i32 noundef 0), !dbg !1537
  br label %if.end, !dbg !1538

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %mv, align 8, !dbg !1539
  call void @move_set_state(ptr noundef %8, i32 noundef 2), !dbg !1541
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mv) #9, !dbg !1542
  ret void, !dbg !1542
}

; Function Attrs: noreturn nounwind
declare !dbg !1543 void @abort() #5

; Function Attrs: nounwind ssp uwtable
define internal void @move_init_entries(ptr noundef %rq, i64 noundef %idx, i64 noundef %count) #0 !dbg !1546 {
entry:
  %rq.addr = alloca ptr, align 8
  %idx.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %iter = alloca ptr, align 8
  store ptr %rq, ptr %rq.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !1550, metadata !DIExpression()), !dbg !1556
  store i64 %idx, ptr %idx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !1551, metadata !DIExpression()), !dbg !1557
  store i64 %count, ptr %count.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1552, metadata !DIExpression()), !dbg !1558
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9, !dbg !1559
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1553, metadata !DIExpression()), !dbg !1560
  store i64 0, ptr %i, align 8, !dbg !1560
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #9, !dbg !1561
  tail call void @llvm.dbg.declare(metadata ptr %iter, metadata !1554, metadata !DIExpression()), !dbg !1562
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !1563
  %entries = getelementptr inbounds %struct.ftl_rq, ptr %0, i32 0, i32 13, !dbg !1564
  %1 = load i64, ptr %idx.addr, align 8, !dbg !1565
  %arrayidx = getelementptr inbounds [0 x %struct.ftl_rq_entry], ptr %entries, i64 0, i64 %1, !dbg !1563
  store ptr %arrayidx, ptr %iter, align 8, !dbg !1562
  store i64 0, ptr %i, align 8, !dbg !1566
  br label %while.cond, !dbg !1567

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, ptr %i, align 8, !dbg !1568
  %3 = load i64, ptr %count.addr, align 8, !dbg !1569
  %cmp = icmp ult i64 %2, %3, !dbg !1570
  br i1 %cmp, label %while.body, label %while.end, !dbg !1567

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %iter, align 8, !dbg !1571
  %addr = getelementptr inbounds %struct.ftl_rq_entry, ptr %4, i32 0, i32 2, !dbg !1573
  store i64 -1, ptr %addr, align 8, !dbg !1574
  %5 = load ptr, ptr %iter, align 8, !dbg !1575
  %owner = getelementptr inbounds %struct.ftl_rq_entry, ptr %5, i32 0, i32 6, !dbg !1576
  %priv = getelementptr inbounds %struct.anon.31, ptr %owner, i32 0, i32 0, !dbg !1577
  store ptr null, ptr %priv, align 8, !dbg !1578
  %6 = load ptr, ptr %iter, align 8, !dbg !1579
  %lba = getelementptr inbounds %struct.ftl_rq_entry, ptr %6, i32 0, i32 3, !dbg !1580
  store i64 -1, ptr %lba, align 8, !dbg !1581
  %7 = load ptr, ptr %iter, align 8, !dbg !1582
  %seq_id = getelementptr inbounds %struct.ftl_rq_entry, ptr %7, i32 0, i32 4, !dbg !1583
  store i64 0, ptr %seq_id, align 8, !dbg !1584
  %8 = load ptr, ptr %iter, align 8, !dbg !1585
  %incdec.ptr = getelementptr inbounds %struct.ftl_rq_entry, ptr %8, i32 1, !dbg !1585
  store ptr %incdec.ptr, ptr %iter, align 8, !dbg !1585
  %9 = load i64, ptr %i, align 8, !dbg !1586
  %inc = add i64 %9, 1, !dbg !1586
  store i64 %inc, ptr %i, align 8, !dbg !1586
  br label %while.cond, !dbg !1567, !llvm.loop !1587

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #9, !dbg !1589
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9, !dbg !1589
  ret void, !dbg !1589
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nounwind ssp uwtable
define internal void @move_finish_write(ptr noundef %rq) #0 !dbg !1590 {
entry:
  %rq.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %dev = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %addr = alloca i64, align 8
  %rq_band = alloca ptr, align 8
  %band4 = alloca ptr, align 8
  store ptr %rq, ptr %rq.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !1592, metadata !DIExpression()), !dbg !1599
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9, !dbg !1600
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1593, metadata !DIExpression()), !dbg !1601
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #9, !dbg !1602
  tail call void @llvm.dbg.declare(metadata ptr %dev, metadata !1594, metadata !DIExpression()), !dbg !1603
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !1604
  %dev1 = getelementptr inbounds %struct.ftl_rq, ptr %0, i32 0, i32 0, !dbg !1605
  %1 = load ptr, ptr %dev1, align 8, !dbg !1605
  store ptr %1, ptr %dev, align 8, !dbg !1603
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #9, !dbg !1606
  tail call void @llvm.dbg.declare(metadata ptr %iter, metadata !1595, metadata !DIExpression()), !dbg !1607
  %2 = load ptr, ptr %rq.addr, align 8, !dbg !1608
  %entries = getelementptr inbounds %struct.ftl_rq, ptr %2, i32 0, i32 13, !dbg !1609
  %arraydecay = getelementptr inbounds [0 x %struct.ftl_rq_entry], ptr %entries, i64 0, i64 0, !dbg !1608
  store ptr %arraydecay, ptr %iter, align 8, !dbg !1607
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #9, !dbg !1610
  tail call void @llvm.dbg.declare(metadata ptr %addr, metadata !1596, metadata !DIExpression()), !dbg !1611
  %3 = load ptr, ptr %rq.addr, align 8, !dbg !1612
  %io = getelementptr inbounds %struct.ftl_rq, ptr %3, i32 0, i32 11, !dbg !1613
  %addr2 = getelementptr inbounds %struct.anon.29, ptr %io, i32 0, i32 0, !dbg !1614
  %4 = load i64, ptr %addr2, align 8, !dbg !1614
  store i64 %4, ptr %addr, align 8, !dbg !1611
  call void @llvm.lifetime.start.p0(i64 8, ptr %rq_band) #9, !dbg !1615
  tail call void @llvm.dbg.declare(metadata ptr %rq_band, metadata !1597, metadata !DIExpression()), !dbg !1616
  %5 = load ptr, ptr %rq.addr, align 8, !dbg !1617
  %io3 = getelementptr inbounds %struct.ftl_rq, ptr %5, i32 0, i32 11, !dbg !1618
  %band = getelementptr inbounds %struct.anon.29, ptr %io3, i32 0, i32 1, !dbg !1619
  %6 = load ptr, ptr %band, align 8, !dbg !1619
  store ptr %6, ptr %rq_band, align 8, !dbg !1616
  call void @llvm.lifetime.start.p0(i64 8, ptr %band4) #9, !dbg !1620
  tail call void @llvm.dbg.declare(metadata ptr %band4, metadata !1598, metadata !DIExpression()), !dbg !1621
  store i64 0, ptr %i, align 8, !dbg !1622
  br label %for.cond, !dbg !1624

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, ptr %i, align 8, !dbg !1625
  %8 = load ptr, ptr %rq.addr, align 8, !dbg !1627
  %num_blocks = getelementptr inbounds %struct.ftl_rq, ptr %8, i32 0, i32 2, !dbg !1628
  %9 = load i64, ptr %num_blocks, align 8, !dbg !1628
  %cmp = icmp ult i64 %7, %9, !dbg !1629
  br i1 %cmp, label %for.body, label %for.end, !dbg !1630

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %iter, align 8, !dbg !1631
  %owner = getelementptr inbounds %struct.ftl_rq_entry, ptr %10, i32 0, i32 6, !dbg !1633
  %priv = getelementptr inbounds %struct.anon.31, ptr %owner, i32 0, i32 0, !dbg !1634
  %11 = load ptr, ptr %priv, align 8, !dbg !1634
  store ptr %11, ptr %band4, align 8, !dbg !1635
  %12 = load ptr, ptr %band4, align 8, !dbg !1636
  %tobool = icmp ne ptr %12, null, !dbg !1636
  br i1 %tobool, label %if.then, label %if.end, !dbg !1638

if.then:                                          ; preds = %for.body
  %13 = load ptr, ptr %band4, align 8, !dbg !1639
  %owner5 = getelementptr inbounds %struct.ftl_band, ptr %13, i32 0, i32 3, !dbg !1641
  %cnt = getelementptr inbounds %struct.anon.35, ptr %owner5, i32 0, i32 3, !dbg !1642
  %14 = load i64, ptr %cnt, align 8, !dbg !1643
  %dec = add i64 %14, -1, !dbg !1643
  store i64 %dec, ptr %cnt, align 8, !dbg !1643
  br label %if.end, !dbg !1644

if.end:                                           ; preds = %if.then, %for.body
  %15 = load ptr, ptr %iter, align 8, !dbg !1645
  %lba = getelementptr inbounds %struct.ftl_rq_entry, ptr %15, i32 0, i32 3, !dbg !1647
  %16 = load i64, ptr %lba, align 8, !dbg !1647
  %cmp6 = icmp ne i64 %16, -1, !dbg !1648
  br i1 %cmp6, label %if.then7, label %if.end11, !dbg !1649

if.then7:                                         ; preds = %if.end
  %17 = load ptr, ptr %dev, align 8, !dbg !1650
  %18 = load ptr, ptr %iter, align 8, !dbg !1652
  %lba8 = getelementptr inbounds %struct.ftl_rq_entry, ptr %18, i32 0, i32 3, !dbg !1653
  %19 = load i64, ptr %lba8, align 8, !dbg !1653
  %20 = load i64, ptr %addr, align 8, !dbg !1654
  %21 = load ptr, ptr %iter, align 8, !dbg !1655
  %addr9 = getelementptr inbounds %struct.ftl_rq_entry, ptr %21, i32 0, i32 2, !dbg !1656
  %22 = load i64, ptr %addr9, align 8, !dbg !1656
  call void @ftl_l2p_update_base(ptr noundef %17, i64 noundef %19, i64 noundef %20, i64 noundef %22), !dbg !1657
  %23 = load ptr, ptr %dev, align 8, !dbg !1658
  %24 = load ptr, ptr %iter, align 8, !dbg !1659
  %lba10 = getelementptr inbounds %struct.ftl_rq_entry, ptr %24, i32 0, i32 3, !dbg !1660
  %25 = load i64, ptr %lba10, align 8, !dbg !1660
  call void @ftl_l2p_unpin(ptr noundef %23, i64 noundef %25, i64 noundef 1), !dbg !1661
  br label %if.end11, !dbg !1662

if.end11:                                         ; preds = %if.then7, %if.end
  %26 = load ptr, ptr %rq_band, align 8, !dbg !1663
  %27 = load i64, ptr %addr, align 8, !dbg !1664
  %call = call i64 @ftl_band_next_addr(ptr noundef %26, i64 noundef %27, i64 noundef 1), !dbg !1665
  store i64 %call, ptr %addr, align 8, !dbg !1666
  br label %for.inc, !dbg !1667

for.inc:                                          ; preds = %if.end11
  %28 = load i64, ptr %i, align 8, !dbg !1668
  %inc = add i64 %28, 1, !dbg !1668
  store i64 %inc, ptr %i, align 8, !dbg !1668
  %29 = load ptr, ptr %iter, align 8, !dbg !1669
  %incdec.ptr = getelementptr inbounds %struct.ftl_rq_entry, ptr %29, i32 1, !dbg !1669
  store ptr %incdec.ptr, ptr %iter, align 8, !dbg !1669
  br label %for.cond, !dbg !1670, !llvm.loop !1671

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %band4) #9, !dbg !1673
  call void @llvm.lifetime.end.p0(i64 8, ptr %rq_band) #9, !dbg !1673
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #9, !dbg !1673
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #9, !dbg !1673
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #9, !dbg !1673
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9, !dbg !1673
  ret void, !dbg !1673
}

declare !dbg !1674 void @ftl_l2p_update_base(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #3

declare !dbg !1677 void @ftl_l2p_unpin(ptr noundef, i64 noundef, i64 noundef) #3

declare !dbg !1680 i64 @ftl_band_next_addr(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal ptr @move_get_band(ptr noundef %reloc) #0 !dbg !1683 {
entry:
  %retval = alloca ptr, align 8
  %reloc.addr = alloca ptr, align 8
  %band = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %reloc, ptr %reloc.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %reloc.addr, metadata !1687, metadata !DIExpression()), !dbg !1689
  call void @llvm.lifetime.start.p0(i64 8, ptr %band) #9, !dbg !1690
  tail call void @llvm.dbg.declare(metadata ptr %band, metadata !1688, metadata !DIExpression()), !dbg !1691
  %0 = load ptr, ptr %reloc.addr, align 8, !dbg !1692
  %band1 = getelementptr inbounds %struct.ftl_reloc, ptr %0, i32 0, i32 2, !dbg !1693
  %1 = load ptr, ptr %band1, align 8, !dbg !1693
  store ptr %1, ptr %band, align 8, !dbg !1691
  %2 = load ptr, ptr %band, align 8, !dbg !1694
  %tobool = icmp ne ptr %2, null, !dbg !1694
  br i1 %tobool, label %if.end, label %if.then, !dbg !1696

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %reloc.addr, align 8, !dbg !1697
  call void @move_grab_new_band(ptr noundef %3), !dbg !1699
  store ptr null, ptr %retval, align 8, !dbg !1700
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1700

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %band, align 8, !dbg !1701
  %5 = load ptr, ptr %band, align 8, !dbg !1703
  %md = getelementptr inbounds %struct.ftl_band, ptr %5, i32 0, i32 1, !dbg !1704
  %6 = load ptr, ptr %md, align 8, !dbg !1704
  %iter = getelementptr inbounds %struct.ftl_band_md, ptr %6, i32 0, i32 0, !dbg !1705
  %offset = getelementptr inbounds %struct.anon.43, ptr %iter, i32 0, i32 1, !dbg !1706
  %7 = load i64, ptr %offset, align 1, !dbg !1706
  %call = call i32 @ftl_band_filled(ptr noundef %4, i64 noundef %7), !dbg !1707
  %tobool2 = icmp ne i32 %call, 0, !dbg !1707
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1708

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %band, align 8, !dbg !1709
  store ptr %8, ptr %retval, align 8, !dbg !1711
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1711

if.end4:                                          ; preds = %if.end
  br label %do.body, !dbg !1712

do.body:                                          ; preds = %if.end4
  %9 = load ptr, ptr %band, align 8, !dbg !1713
  %queue_entry = getelementptr inbounds %struct.ftl_band, ptr %9, i32 0, i32 11, !dbg !1713
  %tqe_next = getelementptr inbounds %struct.anon.42, ptr %queue_entry, i32 0, i32 0, !dbg !1713
  store ptr null, ptr %tqe_next, align 8, !dbg !1713
  %10 = load ptr, ptr %reloc.addr, align 8, !dbg !1713
  %band_done = getelementptr inbounds %struct.ftl_reloc, ptr %10, i32 0, i32 3, !dbg !1713
  %tqh_last = getelementptr inbounds %struct.anon, ptr %band_done, i32 0, i32 1, !dbg !1713
  %11 = load ptr, ptr %tqh_last, align 8, !dbg !1713
  %12 = load ptr, ptr %band, align 8, !dbg !1713
  %queue_entry5 = getelementptr inbounds %struct.ftl_band, ptr %12, i32 0, i32 11, !dbg !1713
  %tqe_prev = getelementptr inbounds %struct.anon.42, ptr %queue_entry5, i32 0, i32 1, !dbg !1713
  store ptr %11, ptr %tqe_prev, align 8, !dbg !1713
  %13 = load ptr, ptr %band, align 8, !dbg !1713
  %14 = load ptr, ptr %reloc.addr, align 8, !dbg !1713
  %band_done6 = getelementptr inbounds %struct.ftl_reloc, ptr %14, i32 0, i32 3, !dbg !1713
  %tqh_last7 = getelementptr inbounds %struct.anon, ptr %band_done6, i32 0, i32 1, !dbg !1713
  %15 = load ptr, ptr %tqh_last7, align 8, !dbg !1713
  store ptr %13, ptr %15, align 8, !dbg !1713
  %16 = load ptr, ptr %band, align 8, !dbg !1713
  %queue_entry8 = getelementptr inbounds %struct.ftl_band, ptr %16, i32 0, i32 11, !dbg !1713
  %tqe_next9 = getelementptr inbounds %struct.anon.42, ptr %queue_entry8, i32 0, i32 0, !dbg !1713
  %17 = load ptr, ptr %reloc.addr, align 8, !dbg !1713
  %band_done10 = getelementptr inbounds %struct.ftl_reloc, ptr %17, i32 0, i32 3, !dbg !1713
  %tqh_last11 = getelementptr inbounds %struct.anon, ptr %band_done10, i32 0, i32 1, !dbg !1713
  store ptr %tqe_next9, ptr %tqh_last11, align 8, !dbg !1713
  br label %do.cond, !dbg !1713

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1713

do.end:                                           ; preds = %do.cond
  %18 = load ptr, ptr %reloc.addr, align 8, !dbg !1715
  %band_done_count = getelementptr inbounds %struct.ftl_reloc, ptr %18, i32 0, i32 4, !dbg !1716
  %19 = load i64, ptr %band_done_count, align 8, !dbg !1717
  %inc = add i64 %19, 1, !dbg !1717
  store i64 %inc, ptr %band_done_count, align 8, !dbg !1717
  %20 = load ptr, ptr %reloc.addr, align 8, !dbg !1718
  %band12 = getelementptr inbounds %struct.ftl_reloc, ptr %20, i32 0, i32 2, !dbg !1719
  store ptr null, ptr %band12, align 8, !dbg !1720
  store ptr null, ptr %retval, align 8, !dbg !1721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1721

cleanup:                                          ; preds = %do.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %band) #9, !dbg !1722
  %21 = load ptr, ptr %retval, align 8, !dbg !1722
  ret ptr %21, !dbg !1722
}

; Function Attrs: nounwind ssp uwtable
define internal void @move_read(ptr noundef %reloc, ptr noundef %mv, ptr noundef %band) #0 !dbg !1723 {
entry:
  %reloc.addr = alloca ptr, align 8
  %mv.addr = alloca ptr, align 8
  %band.addr = alloca ptr, align 8
  %rq = alloca ptr, align 8
  %blocks = alloca i64, align 8
  %pos = alloca i64, align 8
  %begin = alloca i64, align 8
  %end = alloca i64, align 8
  %band_left = alloca i64, align 8
  %rq_left = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %reloc, ptr %reloc.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %reloc.addr, metadata !1727, metadata !DIExpression()), !dbg !1737
  store ptr %mv, ptr %mv.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mv.addr, metadata !1728, metadata !DIExpression()), !dbg !1738
  store ptr %band, ptr %band.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %band.addr, metadata !1729, metadata !DIExpression()), !dbg !1739
  call void @llvm.lifetime.start.p0(i64 8, ptr %rq) #9, !dbg !1740
  tail call void @llvm.dbg.declare(metadata ptr %rq, metadata !1730, metadata !DIExpression()), !dbg !1741
  %0 = load ptr, ptr %mv.addr, align 8, !dbg !1742
  %rq1 = getelementptr inbounds %struct.ftl_reloc_move, ptr %0, i32 0, i32 2, !dbg !1743
  %1 = load ptr, ptr %rq1, align 8, !dbg !1743
  store ptr %1, ptr %rq, align 8, !dbg !1741
  call void @llvm.lifetime.start.p0(i64 8, ptr %blocks) #9, !dbg !1744
  tail call void @llvm.dbg.declare(metadata ptr %blocks, metadata !1731, metadata !DIExpression()), !dbg !1745
  %2 = load ptr, ptr %band.addr, align 8, !dbg !1746
  %dev = getelementptr inbounds %struct.ftl_band, ptr %2, i32 0, i32 0, !dbg !1747
  %3 = load ptr, ptr %dev, align 8, !dbg !1747
  %call = call i64 @ftl_get_num_blocks_in_band(ptr noundef %3), !dbg !1748
  store i64 %call, ptr %blocks, align 8, !dbg !1745
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #9, !dbg !1749
  tail call void @llvm.dbg.declare(metadata ptr %pos, metadata !1732, metadata !DIExpression()), !dbg !1750
  %4 = load ptr, ptr %band.addr, align 8, !dbg !1751
  %md = getelementptr inbounds %struct.ftl_band, ptr %4, i32 0, i32 1, !dbg !1752
  %5 = load ptr, ptr %md, align 8, !dbg !1752
  %iter = getelementptr inbounds %struct.ftl_band_md, ptr %5, i32 0, i32 0, !dbg !1753
  %offset = getelementptr inbounds %struct.anon.43, ptr %iter, i32 0, i32 1, !dbg !1754
  %6 = load i64, ptr %offset, align 1, !dbg !1754
  store i64 %6, ptr %pos, align 8, !dbg !1750
  call void @llvm.lifetime.start.p0(i64 8, ptr %begin) #9, !dbg !1755
  tail call void @llvm.dbg.declare(metadata ptr %begin, metadata !1733, metadata !DIExpression()), !dbg !1756
  %7 = load ptr, ptr %band.addr, align 8, !dbg !1757
  %p2l_map = getelementptr inbounds %struct.ftl_band, ptr %7, i32 0, i32 4, !dbg !1758
  %valid = getelementptr inbounds %struct.ftl_p2l_map, ptr %p2l_map, i32 0, i32 2, !dbg !1759
  %8 = load ptr, ptr %valid, align 8, !dbg !1759
  %9 = load i64, ptr %pos, align 8, !dbg !1760
  %call2 = call i64 @ftl_bitmap_find_first_set(ptr noundef %8, i64 noundef %9, i64 noundef -1), !dbg !1761
  store i64 %call2, ptr %begin, align 8, !dbg !1756
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #9, !dbg !1762
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !1734, metadata !DIExpression()), !dbg !1763
  call void @llvm.lifetime.start.p0(i64 8, ptr %band_left) #9, !dbg !1762
  tail call void @llvm.dbg.declare(metadata ptr %band_left, metadata !1735, metadata !DIExpression()), !dbg !1764
  call void @llvm.lifetime.start.p0(i64 8, ptr %rq_left) #9, !dbg !1762
  tail call void @llvm.dbg.declare(metadata ptr %rq_left, metadata !1736, metadata !DIExpression()), !dbg !1765
  %10 = load i64, ptr %begin, align 8, !dbg !1766
  %11 = load i64, ptr %blocks, align 8, !dbg !1766
  %cmp = icmp ult i64 %10, %11, !dbg !1766
  %lnot = xor i1 %cmp, true, !dbg !1766
  %lnot3 = xor i1 %lnot, true, !dbg !1766
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !1766
  %conv = sext i32 %lnot.ext to i64, !dbg !1766
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1766
  %tobool = icmp ne i64 %expval, 0, !dbg !1766
  br i1 %tobool, label %if.then, label %if.else12, !dbg !1768

if.then:                                          ; preds = %entry
  %12 = load i64, ptr %begin, align 8, !dbg !1769
  %13 = load i64, ptr %pos, align 8, !dbg !1772
  %cmp4 = icmp ugt i64 %12, %13, !dbg !1773
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !1774

if.then6:                                         ; preds = %if.then
  %14 = load ptr, ptr %band.addr, align 8, !dbg !1775
  %15 = load i64, ptr %begin, align 8, !dbg !1777
  %16 = load i64, ptr %pos, align 8, !dbg !1778
  %sub = sub i64 %15, %16, !dbg !1779
  call void @ftl_band_iter_advance(ptr noundef %14, i64 noundef %sub), !dbg !1780
  br label %if.end11, !dbg !1781

if.else:                                          ; preds = %if.then
  %17 = load i64, ptr %begin, align 8, !dbg !1782
  %18 = load i64, ptr %pos, align 8, !dbg !1784
  %cmp7 = icmp eq i64 %17, %18, !dbg !1785
  br i1 %cmp7, label %if.then9, label %if.else10, !dbg !1786

if.then9:                                         ; preds = %if.else
  br label %if.end, !dbg !1787

if.else10:                                        ; preds = %if.else
  br label %do.body, !dbg !1789

do.body:                                          ; preds = %if.else10
  call void @abort() #11, !dbg !1791
  unreachable, !dbg !1791

do.cond:                                          ; No predecessors!
  br label %do.end, !dbg !1791

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then6
  br label %if.end27, !dbg !1793

if.else12:                                        ; preds = %entry
  %19 = load i64, ptr %begin, align 8, !dbg !1794
  %cmp13 = icmp eq i64 -1, %19, !dbg !1796
  br i1 %cmp13, label %if.then15, label %if.else22, !dbg !1797

if.then15:                                        ; preds = %if.else12
  %20 = load ptr, ptr %band.addr, align 8, !dbg !1798
  %21 = load i64, ptr %pos, align 8, !dbg !1800
  %call16 = call i64 @ftl_band_user_blocks_left(ptr noundef %20, i64 noundef %21), !dbg !1801
  store i64 %call16, ptr %band_left, align 8, !dbg !1802
  %22 = load ptr, ptr %band.addr, align 8, !dbg !1803
  %23 = load i64, ptr %band_left, align 8, !dbg !1804
  call void @ftl_band_iter_advance(ptr noundef %22, i64 noundef %23), !dbg !1805
  %24 = load ptr, ptr %rq, align 8, !dbg !1806
  %iter17 = getelementptr inbounds %struct.ftl_rq, ptr %24, i32 0, i32 10, !dbg !1808
  %idx = getelementptr inbounds %struct.anon.28, ptr %iter17, i32 0, i32 0, !dbg !1809
  %25 = load i32, ptr %idx, align 8, !dbg !1809
  %tobool18 = icmp ne i32 %25, 0, !dbg !1806
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !1810

if.then19:                                        ; preds = %if.then15
  %26 = load ptr, ptr %rq, align 8, !dbg !1811
  %27 = load ptr, ptr %band.addr, align 8, !dbg !1813
  call void @move_rq_pad(ptr noundef %26, ptr noundef %27), !dbg !1814
  %28 = load ptr, ptr %mv.addr, align 8, !dbg !1815
  call void @move_set_state(ptr noundef %28, i32 noundef 3), !dbg !1816
  %29 = load ptr, ptr %rq, align 8, !dbg !1817
  %iter20 = getelementptr inbounds %struct.ftl_rq, ptr %29, i32 0, i32 10, !dbg !1818
  %qd = getelementptr inbounds %struct.anon.28, ptr %iter20, i32 0, i32 2, !dbg !1819
  %30 = load i32, ptr %qd, align 8, !dbg !1820
  %inc = add i32 %30, 1, !dbg !1820
  store i32 %inc, ptr %qd, align 8, !dbg !1820
  %31 = load ptr, ptr %rq, align 8, !dbg !1821
  %owner = getelementptr inbounds %struct.ftl_rq, ptr %31, i32 0, i32 9, !dbg !1822
  %cb = getelementptr inbounds %struct.anon.27, ptr %owner, i32 0, i32 0, !dbg !1823
  %32 = load ptr, ptr %cb, align 8, !dbg !1823
  %33 = load ptr, ptr %rq, align 8, !dbg !1824
  call void %32(ptr noundef %33), !dbg !1821
  br label %if.end21, !dbg !1825

if.end21:                                         ; preds = %if.then19, %if.then15
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1826

if.else22:                                        ; preds = %if.else12
  br label %do.body23, !dbg !1827

do.body23:                                        ; preds = %if.else22
  call void @abort() #11, !dbg !1829
  unreachable, !dbg !1829

do.cond24:                                        ; No predecessors!
  br label %do.end25, !dbg !1829

do.end25:                                         ; preds = %do.cond24
  br label %if.end26

if.end26:                                         ; preds = %do.end25
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end11
  %34 = load ptr, ptr %rq, align 8, !dbg !1831
  %num_blocks = getelementptr inbounds %struct.ftl_rq, ptr %34, i32 0, i32 2, !dbg !1832
  %35 = load i64, ptr %num_blocks, align 8, !dbg !1832
  %36 = load ptr, ptr %rq, align 8, !dbg !1833
  %iter28 = getelementptr inbounds %struct.ftl_rq, ptr %36, i32 0, i32 10, !dbg !1834
  %idx29 = getelementptr inbounds %struct.anon.28, ptr %iter28, i32 0, i32 0, !dbg !1835
  %37 = load i32, ptr %idx29, align 8, !dbg !1835
  %conv30 = zext i32 %37 to i64, !dbg !1833
  %sub31 = sub i64 %35, %conv30, !dbg !1836
  store i64 %sub31, ptr %rq_left, align 8, !dbg !1837
  %38 = load ptr, ptr %band.addr, align 8, !dbg !1838
  %p2l_map32 = getelementptr inbounds %struct.ftl_band, ptr %38, i32 0, i32 4, !dbg !1839
  %valid33 = getelementptr inbounds %struct.ftl_p2l_map, ptr %p2l_map32, i32 0, i32 2, !dbg !1840
  %39 = load ptr, ptr %valid33, align 8, !dbg !1840
  %40 = load i64, ptr %begin, align 8, !dbg !1841
  %add = add i64 %40, 1, !dbg !1842
  %41 = load i64, ptr %begin, align 8, !dbg !1843
  %42 = load i64, ptr %rq_left, align 8, !dbg !1844
  %add34 = add i64 %41, %42, !dbg !1845
  %call35 = call i64 @ftl_bitmap_find_first_clear(ptr noundef %39, i64 noundef %add, i64 noundef %add34), !dbg !1846
  store i64 %call35, ptr %end, align 8, !dbg !1847
  %43 = load i64, ptr %end, align 8, !dbg !1848
  %cmp36 = icmp ne i64 %43, -1, !dbg !1850
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !1851

if.then38:                                        ; preds = %if.end27
  %44 = load i64, ptr %end, align 8, !dbg !1852
  %45 = load i64, ptr %begin, align 8, !dbg !1854
  %sub39 = sub i64 %44, %45, !dbg !1855
  store i64 %sub39, ptr %rq_left, align 8, !dbg !1856
  br label %if.end40, !dbg !1857

if.end40:                                         ; preds = %if.then38, %if.end27
  %46 = load ptr, ptr %band.addr, align 8, !dbg !1858
  %47 = load ptr, ptr %band.addr, align 8, !dbg !1859
  %md41 = getelementptr inbounds %struct.ftl_band, ptr %47, i32 0, i32 1, !dbg !1860
  %48 = load ptr, ptr %md41, align 8, !dbg !1860
  %iter42 = getelementptr inbounds %struct.ftl_band_md, ptr %48, i32 0, i32 0, !dbg !1861
  %offset43 = getelementptr inbounds %struct.anon.43, ptr %iter42, i32 0, i32 1, !dbg !1862
  %49 = load i64, ptr %offset43, align 1, !dbg !1862
  %call44 = call i64 @ftl_band_user_blocks_left(ptr noundef %46, i64 noundef %49), !dbg !1863
  store i64 %call44, ptr %band_left, align 8, !dbg !1864
  %50 = load i64, ptr %rq_left, align 8, !dbg !1865
  %51 = load i64, ptr %band_left, align 8, !dbg !1865
  %cmp45 = icmp ult i64 %50, %51, !dbg !1865
  br i1 %cmp45, label %cond.true, label %cond.false, !dbg !1865

cond.true:                                        ; preds = %if.end40
  %52 = load i64, ptr %rq_left, align 8, !dbg !1865
  br label %cond.end, !dbg !1865

cond.false:                                       ; preds = %if.end40
  %53 = load i64, ptr %band_left, align 8, !dbg !1865
  br label %cond.end, !dbg !1865

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %52, %cond.true ], [ %53, %cond.false ], !dbg !1865
  %conv47 = trunc i64 %cond to i32, !dbg !1865
  %54 = load ptr, ptr %rq, align 8, !dbg !1866
  %iter48 = getelementptr inbounds %struct.ftl_rq, ptr %54, i32 0, i32 10, !dbg !1867
  %count = getelementptr inbounds %struct.anon.28, ptr %iter48, i32 0, i32 1, !dbg !1868
  store i32 %conv47, ptr %count, align 4, !dbg !1869
  %55 = load ptr, ptr %band.addr, align 8, !dbg !1870
  %56 = load ptr, ptr %rq, align 8, !dbg !1871
  call void @ftl_band_rq_read(ptr noundef %55, ptr noundef %56), !dbg !1872
  %57 = load ptr, ptr %rq, align 8, !dbg !1873
  call void @move_advance_rq(ptr noundef %57), !dbg !1874
  %58 = load ptr, ptr %band.addr, align 8, !dbg !1875
  %59 = load ptr, ptr %rq, align 8, !dbg !1876
  %iter49 = getelementptr inbounds %struct.ftl_rq, ptr %59, i32 0, i32 10, !dbg !1877
  %count50 = getelementptr inbounds %struct.anon.28, ptr %iter49, i32 0, i32 1, !dbg !1878
  %60 = load i32, ptr %count50, align 4, !dbg !1878
  %conv51 = zext i32 %60 to i64, !dbg !1876
  call void @ftl_band_iter_advance(ptr noundef %58, i64 noundef %conv51), !dbg !1879
  %61 = load ptr, ptr %band.addr, align 8, !dbg !1880
  %62 = load ptr, ptr %band.addr, align 8, !dbg !1882
  %md52 = getelementptr inbounds %struct.ftl_band, ptr %62, i32 0, i32 1, !dbg !1883
  %63 = load ptr, ptr %md52, align 8, !dbg !1883
  %iter53 = getelementptr inbounds %struct.ftl_band_md, ptr %63, i32 0, i32 0, !dbg !1884
  %offset54 = getelementptr inbounds %struct.anon.43, ptr %iter53, i32 0, i32 1, !dbg !1885
  %64 = load i64, ptr %offset54, align 1, !dbg !1885
  %call55 = call i32 @ftl_band_filled(ptr noundef %61, i64 noundef %64), !dbg !1886
  %tobool56 = icmp ne i32 %call55, 0, !dbg !1886
  br i1 %tobool56, label %if.then57, label %if.end58, !dbg !1887

if.then57:                                        ; preds = %cond.end
  %65 = load ptr, ptr %rq, align 8, !dbg !1888
  %66 = load ptr, ptr %band.addr, align 8, !dbg !1890
  call void @move_rq_pad(ptr noundef %65, ptr noundef %66), !dbg !1891
  br label %if.end58, !dbg !1892

if.end58:                                         ; preds = %if.then57, %cond.end
  %67 = load ptr, ptr %rq, align 8, !dbg !1893
  %iter59 = getelementptr inbounds %struct.ftl_rq, ptr %67, i32 0, i32 10, !dbg !1895
  %idx60 = getelementptr inbounds %struct.anon.28, ptr %iter59, i32 0, i32 0, !dbg !1896
  %68 = load i32, ptr %idx60, align 8, !dbg !1896
  %conv61 = zext i32 %68 to i64, !dbg !1893
  %69 = load ptr, ptr %rq, align 8, !dbg !1897
  %num_blocks62 = getelementptr inbounds %struct.ftl_rq, ptr %69, i32 0, i32 2, !dbg !1898
  %70 = load i64, ptr %num_blocks62, align 8, !dbg !1898
  %cmp63 = icmp eq i64 %conv61, %70, !dbg !1899
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !1900

if.then65:                                        ; preds = %if.end58
  %71 = load ptr, ptr %mv.addr, align 8, !dbg !1901
  call void @move_set_state(ptr noundef %71, i32 noundef 3), !dbg !1903
  br label %if.end66, !dbg !1904

if.end66:                                         ; preds = %if.then65, %if.end58
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1905
  br label %cleanup, !dbg !1905

cleanup:                                          ; preds = %if.end66, %if.end21
  call void @llvm.lifetime.end.p0(i64 8, ptr %rq_left) #9, !dbg !1905
  call void @llvm.lifetime.end.p0(i64 8, ptr %band_left) #9, !dbg !1905
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #9, !dbg !1905
  call void @llvm.lifetime.end.p0(i64 8, ptr %begin) #9, !dbg !1905
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #9, !dbg !1905
  call void @llvm.lifetime.end.p0(i64 8, ptr %blocks) #9, !dbg !1905
  call void @llvm.lifetime.end.p0(i64 8, ptr %rq) #9, !dbg !1905
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1905

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal void @move_pin(ptr noundef %mv) #0 !dbg !1906 {
entry:
  %mv.addr = alloca ptr, align 8
  %rq = alloca ptr, align 8
  %entry2 = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %mv, ptr %mv.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mv.addr, metadata !1908, metadata !DIExpression()), !dbg !1912
  call void @llvm.lifetime.start.p0(i64 8, ptr %rq) #9, !dbg !1913
  tail call void @llvm.dbg.declare(metadata ptr %rq, metadata !1909, metadata !DIExpression()), !dbg !1914
  %0 = load ptr, ptr %mv.addr, align 8, !dbg !1915
  %rq1 = getelementptr inbounds %struct.ftl_reloc_move, ptr %0, i32 0, i32 2, !dbg !1916
  %1 = load ptr, ptr %rq1, align 8, !dbg !1916
  store ptr %1, ptr %rq, align 8, !dbg !1914
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry2) #9, !dbg !1917
  tail call void @llvm.dbg.declare(metadata ptr %entry2, metadata !1910, metadata !DIExpression()), !dbg !1918
  %2 = load ptr, ptr %rq, align 8, !dbg !1919
  %entries = getelementptr inbounds %struct.ftl_rq, ptr %2, i32 0, i32 13, !dbg !1920
  %arraydecay = getelementptr inbounds [0 x %struct.ftl_rq_entry], ptr %entries, i64 0, i64 0, !dbg !1919
  store ptr %arraydecay, ptr %entry2, align 8, !dbg !1918
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9, !dbg !1921
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1911, metadata !DIExpression()), !dbg !1922
  %3 = load ptr, ptr %mv.addr, align 8, !dbg !1923
  call void @move_set_state(ptr noundef %3, i32 noundef 3), !dbg !1924
  %4 = load ptr, ptr %rq, align 8, !dbg !1925
  %num_blocks = getelementptr inbounds %struct.ftl_rq, ptr %4, i32 0, i32 2, !dbg !1926
  %5 = load i64, ptr %num_blocks, align 8, !dbg !1926
  %conv = trunc i64 %5 to i32, !dbg !1925
  %6 = load ptr, ptr %rq, align 8, !dbg !1927
  %iter = getelementptr inbounds %struct.ftl_rq, ptr %6, i32 0, i32 10, !dbg !1928
  %count = getelementptr inbounds %struct.anon.28, ptr %iter, i32 0, i32 1, !dbg !1929
  store i32 %conv, ptr %count, align 4, !dbg !1930
  %7 = load ptr, ptr %rq, align 8, !dbg !1931
  %iter3 = getelementptr inbounds %struct.ftl_rq, ptr %7, i32 0, i32 10, !dbg !1932
  %remaining = getelementptr inbounds %struct.anon.28, ptr %iter3, i32 0, i32 3, !dbg !1933
  store i32 %conv, ptr %remaining, align 4, !dbg !1934
  %8 = load ptr, ptr %rq, align 8, !dbg !1935
  %iter4 = getelementptr inbounds %struct.ftl_rq, ptr %8, i32 0, i32 10, !dbg !1936
  %status = getelementptr inbounds %struct.anon.28, ptr %iter4, i32 0, i32 4, !dbg !1937
  store i32 0, ptr %status, align 8, !dbg !1938
  store i64 0, ptr %i, align 8, !dbg !1939
  br label %for.cond, !dbg !1941

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i64, ptr %i, align 8, !dbg !1942
  %10 = load ptr, ptr %rq, align 8, !dbg !1944
  %num_blocks5 = getelementptr inbounds %struct.ftl_rq, ptr %10, i32 0, i32 2, !dbg !1945
  %11 = load i64, ptr %num_blocks5, align 8, !dbg !1945
  %cmp = icmp ult i64 %9, %11, !dbg !1946
  br i1 %cmp, label %for.body, label %for.end, !dbg !1947

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %entry2, align 8, !dbg !1948
  %lba = getelementptr inbounds %struct.ftl_rq_entry, ptr %12, i32 0, i32 3, !dbg !1951
  %13 = load i64, ptr %lba, align 8, !dbg !1951
  %cmp7 = icmp ne i64 %13, -1, !dbg !1952
  br i1 %cmp7, label %if.then, label %if.else, !dbg !1953

if.then:                                          ; preds = %for.body
  %14 = load ptr, ptr %rq, align 8, !dbg !1954
  %dev = getelementptr inbounds %struct.ftl_rq, ptr %14, i32 0, i32 0, !dbg !1956
  %15 = load ptr, ptr %dev, align 8, !dbg !1956
  %16 = load ptr, ptr %entry2, align 8, !dbg !1957
  %lba9 = getelementptr inbounds %struct.ftl_rq_entry, ptr %16, i32 0, i32 3, !dbg !1958
  %17 = load i64, ptr %lba9, align 8, !dbg !1958
  %18 = load ptr, ptr %mv.addr, align 8, !dbg !1959
  %19 = load ptr, ptr %entry2, align 8, !dbg !1960
  %l2p_pin_ctx = getelementptr inbounds %struct.ftl_rq_entry, ptr %19, i32 0, i32 8, !dbg !1961
  call void @ftl_l2p_pin(ptr noundef %15, i64 noundef %17, i64 noundef 1, ptr noundef @move_pin_cb, ptr noundef %18, ptr noundef %l2p_pin_ctx), !dbg !1962
  br label %if.end, !dbg !1963

if.else:                                          ; preds = %for.body
  %20 = load ptr, ptr %rq, align 8, !dbg !1964
  %dev10 = getelementptr inbounds %struct.ftl_rq, ptr %20, i32 0, i32 0, !dbg !1966
  %21 = load ptr, ptr %dev10, align 8, !dbg !1966
  %22 = load ptr, ptr %mv.addr, align 8, !dbg !1967
  %23 = load ptr, ptr %entry2, align 8, !dbg !1968
  %l2p_pin_ctx11 = getelementptr inbounds %struct.ftl_rq_entry, ptr %23, i32 0, i32 8, !dbg !1969
  call void @ftl_l2p_pin_skip(ptr noundef %21, ptr noundef @move_pin_cb, ptr noundef %22, ptr noundef %l2p_pin_ctx11), !dbg !1970
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load ptr, ptr %entry2, align 8, !dbg !1971
  %incdec.ptr = getelementptr inbounds %struct.ftl_rq_entry, ptr %24, i32 1, !dbg !1971
  store ptr %incdec.ptr, ptr %entry2, align 8, !dbg !1971
  br label %for.inc, !dbg !1972

for.inc:                                          ; preds = %if.end
  %25 = load i64, ptr %i, align 8, !dbg !1973
  %inc = add i64 %25, 1, !dbg !1973
  store i64 %inc, ptr %i, align 8, !dbg !1973
  br label %for.cond, !dbg !1974, !llvm.loop !1975

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9, !dbg !1977
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry2) #9, !dbg !1977
  call void @llvm.lifetime.end.p0(i64 8, ptr %rq) #9, !dbg !1977
  ret void, !dbg !1977
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @ftl_add_io_activity(ptr noundef %dev) #7 !dbg !1978 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1982, metadata !DIExpression()), !dbg !1983
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1984
  %stats = getelementptr inbounds %struct.spdk_ftl_dev, ptr %0, i32 0, i32 18, !dbg !1985
  %io_activity_total = getelementptr inbounds %struct.ftl_stats, ptr %stats, i32 0, i32 1, !dbg !1986
  %1 = load i64, ptr %io_activity_total, align 8, !dbg !1987
  %inc = add i64 %1, 1, !dbg !1987
  store i64 %inc, ptr %io_activity_total, align 8, !dbg !1987
  ret void, !dbg !1988
}

declare !dbg !1989 void @ftl_rq_unpin(ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal void @move_write(ptr noundef %reloc, ptr noundef %mv) #0 !dbg !1990 {
entry:
  %reloc.addr = alloca ptr, align 8
  %mv.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %rq = alloca ptr, align 8
  store ptr %reloc, ptr %reloc.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %reloc.addr, metadata !1992, metadata !DIExpression()), !dbg !1996
  store ptr %mv, ptr %mv.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mv.addr, metadata !1993, metadata !DIExpression()), !dbg !1997
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #9, !dbg !1998
  tail call void @llvm.dbg.declare(metadata ptr %dev, metadata !1994, metadata !DIExpression()), !dbg !1999
  %0 = load ptr, ptr %mv.addr, align 8, !dbg !2000
  %dev1 = getelementptr inbounds %struct.ftl_reloc_move, ptr %0, i32 0, i32 0, !dbg !2001
  %1 = load ptr, ptr %dev1, align 8, !dbg !2001
  store ptr %1, ptr %dev, align 8, !dbg !1999
  call void @llvm.lifetime.start.p0(i64 8, ptr %rq) #9, !dbg !2002
  tail call void @llvm.dbg.declare(metadata ptr %rq, metadata !1995, metadata !DIExpression()), !dbg !2003
  %2 = load ptr, ptr %mv.addr, align 8, !dbg !2004
  %rq2 = getelementptr inbounds %struct.ftl_reloc_move, ptr %2, i32 0, i32 2, !dbg !2005
  %3 = load ptr, ptr %rq2, align 8, !dbg !2005
  store ptr %3, ptr %rq, align 8, !dbg !2003
  %4 = load ptr, ptr %dev, align 8, !dbg !2006
  %writer_gc = getelementptr inbounds %struct.spdk_ftl_dev, ptr %4, i32 0, i32 46, !dbg !2007
  %5 = load ptr, ptr %rq, align 8, !dbg !2008
  call void @ftl_writer_queue_rq(ptr noundef %writer_gc, ptr noundef %5), !dbg !2009
  %6 = load ptr, ptr %rq, align 8, !dbg !2010
  %iter = getelementptr inbounds %struct.ftl_rq, ptr %6, i32 0, i32 10, !dbg !2011
  %qd = getelementptr inbounds %struct.anon.28, ptr %iter, i32 0, i32 2, !dbg !2012
  %7 = load i32, ptr %qd, align 8, !dbg !2013
  %inc = add i32 %7, 1, !dbg !2013
  store i32 %inc, ptr %qd, align 8, !dbg !2013
  %8 = load ptr, ptr %mv.addr, align 8, !dbg !2014
  call void @move_set_state(ptr noundef %8, i32 noundef 3), !dbg !2015
  call void @llvm.lifetime.end.p0(i64 8, ptr %rq) #9, !dbg !2016
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #9, !dbg !2016
  ret void, !dbg !2016
}

; Function Attrs: nounwind ssp uwtable
define internal void @move_grab_new_band(ptr noundef %reloc) #0 !dbg !2017 {
entry:
  %reloc.addr = alloca ptr, align 8
  store ptr %reloc, ptr %reloc.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %reloc.addr, metadata !2019, metadata !DIExpression()), !dbg !2020
  %0 = load ptr, ptr %reloc.addr, align 8, !dbg !2021
  %band_waiting = getelementptr inbounds %struct.ftl_reloc, ptr %0, i32 0, i32 5, !dbg !2023
  %1 = load i8, ptr %band_waiting, align 8, !dbg !2023, !range !1368, !noundef !1369
  %tobool = trunc i8 %1 to i1, !dbg !2023
  br i1 %tobool, label %if.end6, label %if.then, !dbg !2024

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %reloc.addr, align 8, !dbg !2025
  %dev = getelementptr inbounds %struct.ftl_reloc, ptr %2, i32 0, i32 0, !dbg !2028
  %3 = load ptr, ptr %dev, align 8, !dbg !2028
  %call = call zeroext i1 @ftl_needs_reloc(ptr noundef %3), !dbg !2029
  br i1 %call, label %if.end, label %if.then1, !dbg !2030

if.then1:                                         ; preds = %if.then
  br label %if.end6, !dbg !2031

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %reloc.addr, align 8, !dbg !2033
  %band_done_count = getelementptr inbounds %struct.ftl_reloc, ptr %4, i32 0, i32 4, !dbg !2035
  %5 = load i64, ptr %band_done_count, align 8, !dbg !2035
  %cmp = icmp ugt i64 %5, 2, !dbg !2036
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2037

if.then2:                                         ; preds = %if.end
  br label %if.end6, !dbg !2038

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %reloc.addr, align 8, !dbg !2040
  %band_waiting4 = getelementptr inbounds %struct.ftl_reloc, ptr %6, i32 0, i32 5, !dbg !2041
  store i8 1, ptr %band_waiting4, align 8, !dbg !2042
  %7 = load ptr, ptr %reloc.addr, align 8, !dbg !2043
  %dev5 = getelementptr inbounds %struct.ftl_reloc, ptr %7, i32 0, i32 0, !dbg !2044
  %8 = load ptr, ptr %dev5, align 8, !dbg !2044
  %9 = load ptr, ptr %reloc.addr, align 8, !dbg !2045
  call void @ftl_band_get_next_gc(ptr noundef %8, ptr noundef @move_get_band_cb, ptr noundef %9), !dbg !2046
  br label %if.end6, !dbg !2047

if.end6:                                          ; preds = %if.then1, %if.then2, %if.end3, %entry
  ret void, !dbg !2048
}

declare !dbg !2049 i32 @ftl_band_filled(ptr noundef, i64 noundef) #3

declare !dbg !2052 zeroext i1 @ftl_needs_reloc(ptr noundef) #3

declare !dbg !2055 void @ftl_band_get_next_gc(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal void @move_get_band_cb(ptr noundef %band, ptr noundef %cntx, i1 noundef zeroext %status) #0 !dbg !2058 {
entry:
  %band.addr = alloca ptr, align 8
  %cntx.addr = alloca ptr, align 8
  %status.addr = alloca i8, align 1
  %reloc = alloca ptr, align 8
  store ptr %band, ptr %band.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %band.addr, metadata !2060, metadata !DIExpression()), !dbg !2064
  store ptr %cntx, ptr %cntx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cntx.addr, metadata !2061, metadata !DIExpression()), !dbg !2065
  %frombool = zext i1 %status to i8
  store i8 %frombool, ptr %status.addr, align 1
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !2062, metadata !DIExpression()), !dbg !2066
  call void @llvm.lifetime.start.p0(i64 8, ptr %reloc) #9, !dbg !2067
  tail call void @llvm.dbg.declare(metadata ptr %reloc, metadata !2063, metadata !DIExpression()), !dbg !2068
  %0 = load ptr, ptr %cntx.addr, align 8, !dbg !2069
  store ptr %0, ptr %reloc, align 8, !dbg !2068
  %1 = load i8, ptr %status.addr, align 1, !dbg !2070, !range !1368, !noundef !1369
  %tobool = trunc i8 %1 to i1, !dbg !2070
  %lnot = xor i1 %tobool, true, !dbg !2070
  %lnot1 = xor i1 %lnot, true, !dbg !2070
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2070
  %conv = sext i32 %lnot.ext to i64, !dbg !2070
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2070
  %tobool2 = icmp ne i64 %expval, 0, !dbg !2070
  br i1 %tobool2, label %if.then, label %if.end, !dbg !2072

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %band.addr, align 8, !dbg !2073
  %3 = load ptr, ptr %reloc, align 8, !dbg !2075
  %band3 = getelementptr inbounds %struct.ftl_reloc, ptr %3, i32 0, i32 2, !dbg !2076
  store ptr %2, ptr %band3, align 8, !dbg !2077
  %4 = load ptr, ptr %band.addr, align 8, !dbg !2078
  call void @ftl_band_iter_init(ptr noundef %4), !dbg !2079
  br label %if.end, !dbg !2080

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %reloc, align 8, !dbg !2081
  %band_waiting = getelementptr inbounds %struct.ftl_reloc, ptr %5, i32 0, i32 5, !dbg !2082
  store i8 0, ptr %band_waiting, align 8, !dbg !2083
  call void @llvm.lifetime.end.p0(i64 8, ptr %reloc) #9, !dbg !2084
  ret void, !dbg !2084
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @ftl_band_iter_init(ptr noundef %band) #7 !dbg !2085 {
entry:
  %band.addr = alloca ptr, align 8
  store ptr %band, ptr %band.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %band.addr, metadata !2087, metadata !DIExpression()), !dbg !2088
  %0 = load ptr, ptr %band.addr, align 8, !dbg !2089
  %start_addr = getelementptr inbounds %struct.ftl_band, ptr %0, i32 0, i32 8, !dbg !2090
  %1 = load i64, ptr %start_addr, align 8, !dbg !2090
  %2 = load ptr, ptr %band.addr, align 8, !dbg !2091
  %md = getelementptr inbounds %struct.ftl_band, ptr %2, i32 0, i32 1, !dbg !2092
  %3 = load ptr, ptr %md, align 8, !dbg !2092
  %iter = getelementptr inbounds %struct.ftl_band_md, ptr %3, i32 0, i32 0, !dbg !2093
  %addr = getelementptr inbounds %struct.anon.43, ptr %iter, i32 0, i32 0, !dbg !2094
  store i64 %1, ptr %addr, align 1, !dbg !2095
  %4 = load ptr, ptr %band.addr, align 8, !dbg !2096
  %md1 = getelementptr inbounds %struct.ftl_band, ptr %4, i32 0, i32 1, !dbg !2097
  %5 = load ptr, ptr %md1, align 8, !dbg !2097
  %iter2 = getelementptr inbounds %struct.ftl_band_md, ptr %5, i32 0, i32 0, !dbg !2098
  %offset = getelementptr inbounds %struct.anon.43, ptr %iter2, i32 0, i32 1, !dbg !2099
  store i64 0, ptr %offset, align 1, !dbg !2100
  ret void, !dbg !2101
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i64 @ftl_get_num_blocks_in_band(ptr noundef %dev) #7 !dbg !2102 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2108, metadata !DIExpression()), !dbg !2109
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2110
  %num_blocks_in_band = getelementptr inbounds %struct.spdk_ftl_dev, ptr %0, i32 0, i32 7, !dbg !2111
  %1 = load i64, ptr %num_blocks_in_band, align 8, !dbg !2111
  ret i64 %1, !dbg !2112
}

declare !dbg !2113 i64 @ftl_bitmap_find_first_set(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @ftl_band_iter_advance(ptr noundef %band, i64 noundef %num_blocks) #7 !dbg !2116 {
entry:
  %band.addr = alloca ptr, align 8
  %num_blocks.addr = alloca i64, align 8
  store ptr %band, ptr %band.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %band.addr, metadata !2120, metadata !DIExpression()), !dbg !2122
  store i64 %num_blocks, ptr %num_blocks.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %num_blocks.addr, metadata !2121, metadata !DIExpression()), !dbg !2123
  %0 = load i64, ptr %num_blocks.addr, align 8, !dbg !2124
  %1 = load ptr, ptr %band.addr, align 8, !dbg !2125
  %md = getelementptr inbounds %struct.ftl_band, ptr %1, i32 0, i32 1, !dbg !2126
  %2 = load ptr, ptr %md, align 8, !dbg !2126
  %iter = getelementptr inbounds %struct.ftl_band_md, ptr %2, i32 0, i32 0, !dbg !2127
  %offset = getelementptr inbounds %struct.anon.43, ptr %iter, i32 0, i32 1, !dbg !2128
  %3 = load i64, ptr %offset, align 1, !dbg !2129
  %add = add i64 %3, %0, !dbg !2129
  store i64 %add, ptr %offset, align 1, !dbg !2129
  %4 = load ptr, ptr %band.addr, align 8, !dbg !2130
  %5 = load ptr, ptr %band.addr, align 8, !dbg !2131
  %md1 = getelementptr inbounds %struct.ftl_band, ptr %5, i32 0, i32 1, !dbg !2132
  %6 = load ptr, ptr %md1, align 8, !dbg !2132
  %iter2 = getelementptr inbounds %struct.ftl_band_md, ptr %6, i32 0, i32 0, !dbg !2133
  %addr = getelementptr inbounds %struct.anon.43, ptr %iter2, i32 0, i32 0, !dbg !2134
  %7 = load i64, ptr %addr, align 1, !dbg !2134
  %8 = load i64, ptr %num_blocks.addr, align 8, !dbg !2135
  %call = call i64 @ftl_band_next_xfer_addr(ptr noundef %4, i64 noundef %7, i64 noundef %8), !dbg !2136
  %9 = load ptr, ptr %band.addr, align 8, !dbg !2137
  %md3 = getelementptr inbounds %struct.ftl_band, ptr %9, i32 0, i32 1, !dbg !2138
  %10 = load ptr, ptr %md3, align 8, !dbg !2138
  %iter4 = getelementptr inbounds %struct.ftl_band_md, ptr %10, i32 0, i32 0, !dbg !2139
  %addr5 = getelementptr inbounds %struct.anon.43, ptr %iter4, i32 0, i32 0, !dbg !2140
  store i64 %call, ptr %addr5, align 1, !dbg !2141
  ret void, !dbg !2142
}

declare !dbg !2143 i64 @ftl_band_user_blocks_left(ptr noundef, i64 noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal void @move_rq_pad(ptr noundef %rq, ptr noundef %band) #0 !dbg !2148 {
entry:
  %rq.addr = alloca ptr, align 8
  %band.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  store ptr %rq, ptr %rq.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !2152, metadata !DIExpression()), !dbg !2155
  store ptr %band, ptr %band.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %band.addr, metadata !2153, metadata !DIExpression()), !dbg !2156
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #9, !dbg !2157
  tail call void @llvm.dbg.declare(metadata ptr %entry1, metadata !2154, metadata !DIExpression()), !dbg !2158
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !2159
  %entries = getelementptr inbounds %struct.ftl_rq, ptr %0, i32 0, i32 13, !dbg !2160
  %1 = load ptr, ptr %rq.addr, align 8, !dbg !2161
  %iter = getelementptr inbounds %struct.ftl_rq, ptr %1, i32 0, i32 10, !dbg !2162
  %idx = getelementptr inbounds %struct.anon.28, ptr %iter, i32 0, i32 0, !dbg !2163
  %2 = load i32, ptr %idx, align 8, !dbg !2163
  %idxprom = zext i32 %2 to i64, !dbg !2159
  %arrayidx = getelementptr inbounds [0 x %struct.ftl_rq_entry], ptr %entries, i64 0, i64 %idxprom, !dbg !2159
  store ptr %arrayidx, ptr %entry1, align 8, !dbg !2158
  br label %for.cond, !dbg !2164

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %rq.addr, align 8, !dbg !2165
  %iter2 = getelementptr inbounds %struct.ftl_rq, ptr %3, i32 0, i32 10, !dbg !2168
  %idx3 = getelementptr inbounds %struct.anon.28, ptr %iter2, i32 0, i32 0, !dbg !2169
  %4 = load i32, ptr %idx3, align 8, !dbg !2169
  %conv = zext i32 %4 to i64, !dbg !2165
  %5 = load ptr, ptr %rq.addr, align 8, !dbg !2170
  %num_blocks = getelementptr inbounds %struct.ftl_rq, ptr %5, i32 0, i32 2, !dbg !2171
  %6 = load i64, ptr %num_blocks, align 8, !dbg !2171
  %cmp = icmp ult i64 %conv, %6, !dbg !2172
  br i1 %cmp, label %for.body, label %for.end, !dbg !2173

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %rq.addr, align 8, !dbg !2174
  %io = getelementptr inbounds %struct.ftl_rq, ptr %7, i32 0, i32 11, !dbg !2176
  %addr = getelementptr inbounds %struct.anon.29, ptr %io, i32 0, i32 0, !dbg !2177
  %8 = load i64, ptr %addr, align 8, !dbg !2177
  %9 = load ptr, ptr %entry1, align 8, !dbg !2178
  %addr5 = getelementptr inbounds %struct.ftl_rq_entry, ptr %9, i32 0, i32 2, !dbg !2179
  store i64 %8, ptr %addr5, align 8, !dbg !2180
  %10 = load ptr, ptr %band.addr, align 8, !dbg !2181
  %11 = load ptr, ptr %entry1, align 8, !dbg !2182
  %owner = getelementptr inbounds %struct.ftl_rq_entry, ptr %11, i32 0, i32 6, !dbg !2183
  %priv = getelementptr inbounds %struct.anon.31, ptr %owner, i32 0, i32 0, !dbg !2184
  store ptr %10, ptr %priv, align 8, !dbg !2185
  %12 = load ptr, ptr %entry1, align 8, !dbg !2186
  %lba = getelementptr inbounds %struct.ftl_rq_entry, ptr %12, i32 0, i32 3, !dbg !2187
  store i64 -1, ptr %lba, align 8, !dbg !2188
  %13 = load ptr, ptr %entry1, align 8, !dbg !2189
  %seq_id = getelementptr inbounds %struct.ftl_rq_entry, ptr %13, i32 0, i32 4, !dbg !2190
  store i64 0, ptr %seq_id, align 8, !dbg !2191
  %14 = load ptr, ptr %entry1, align 8, !dbg !2192
  %incdec.ptr = getelementptr inbounds %struct.ftl_rq_entry, ptr %14, i32 1, !dbg !2192
  store ptr %incdec.ptr, ptr %entry1, align 8, !dbg !2192
  %15 = load ptr, ptr %band.addr, align 8, !dbg !2193
  %16 = load ptr, ptr %rq.addr, align 8, !dbg !2194
  %io6 = getelementptr inbounds %struct.ftl_rq, ptr %16, i32 0, i32 11, !dbg !2195
  %addr7 = getelementptr inbounds %struct.anon.29, ptr %io6, i32 0, i32 0, !dbg !2196
  %17 = load i64, ptr %addr7, align 8, !dbg !2196
  %call = call i64 @ftl_band_next_addr(ptr noundef %15, i64 noundef %17, i64 noundef 1), !dbg !2197
  %18 = load ptr, ptr %rq.addr, align 8, !dbg !2198
  %io8 = getelementptr inbounds %struct.ftl_rq, ptr %18, i32 0, i32 11, !dbg !2199
  %addr9 = getelementptr inbounds %struct.anon.29, ptr %io8, i32 0, i32 0, !dbg !2200
  store i64 %call, ptr %addr9, align 8, !dbg !2201
  %19 = load ptr, ptr %band.addr, align 8, !dbg !2202
  %owner10 = getelementptr inbounds %struct.ftl_band, ptr %19, i32 0, i32 3, !dbg !2203
  %cnt = getelementptr inbounds %struct.anon.35, ptr %owner10, i32 0, i32 3, !dbg !2204
  %20 = load i64, ptr %cnt, align 8, !dbg !2205
  %inc = add i64 %20, 1, !dbg !2205
  store i64 %inc, ptr %cnt, align 8, !dbg !2205
  br label %for.inc, !dbg !2206

for.inc:                                          ; preds = %for.body
  %21 = load ptr, ptr %rq.addr, align 8, !dbg !2207
  %iter11 = getelementptr inbounds %struct.ftl_rq, ptr %21, i32 0, i32 10, !dbg !2208
  %idx12 = getelementptr inbounds %struct.anon.28, ptr %iter11, i32 0, i32 0, !dbg !2209
  %22 = load i32, ptr %idx12, align 8, !dbg !2210
  %inc13 = add i32 %22, 1, !dbg !2210
  store i32 %inc13, ptr %idx12, align 8, !dbg !2210
  br label %for.cond, !dbg !2211, !llvm.loop !2212

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #9, !dbg !2214
  ret void, !dbg !2214
}

declare !dbg !2215 i64 @ftl_bitmap_find_first_clear(ptr noundef, i64 noundef, i64 noundef) #3

declare !dbg !2216 void @ftl_band_rq_read(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal void @move_advance_rq(ptr noundef %rq) #0 !dbg !2219 {
entry:
  %rq.addr = alloca ptr, align 8
  %band = alloca ptr, align 8
  %offset = alloca i64, align 8
  %i = alloca i64, align 8
  %entry2 = alloca ptr, align 8
  store ptr %rq, ptr %rq.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !2221, metadata !DIExpression()), !dbg !2226
  call void @llvm.lifetime.start.p0(i64 8, ptr %band) #9, !dbg !2227
  tail call void @llvm.dbg.declare(metadata ptr %band, metadata !2222, metadata !DIExpression()), !dbg !2228
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !2229
  %io = getelementptr inbounds %struct.ftl_rq, ptr %0, i32 0, i32 11, !dbg !2230
  %band1 = getelementptr inbounds %struct.anon.29, ptr %io, i32 0, i32 1, !dbg !2231
  %1 = load ptr, ptr %band1, align 8, !dbg !2231
  store ptr %1, ptr %band, align 8, !dbg !2228
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #9, !dbg !2232
  tail call void @llvm.dbg.declare(metadata ptr %offset, metadata !2223, metadata !DIExpression()), !dbg !2233
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9, !dbg !2232
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2224, metadata !DIExpression()), !dbg !2234
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry2) #9, !dbg !2235
  tail call void @llvm.dbg.declare(metadata ptr %entry2, metadata !2225, metadata !DIExpression()), !dbg !2236
  %2 = load ptr, ptr %rq.addr, align 8, !dbg !2237
  %entries = getelementptr inbounds %struct.ftl_rq, ptr %2, i32 0, i32 13, !dbg !2238
  %3 = load ptr, ptr %rq.addr, align 8, !dbg !2239
  %iter = getelementptr inbounds %struct.ftl_rq, ptr %3, i32 0, i32 10, !dbg !2240
  %idx = getelementptr inbounds %struct.anon.28, ptr %iter, i32 0, i32 0, !dbg !2241
  %4 = load i32, ptr %idx, align 8, !dbg !2241
  %idxprom = zext i32 %4 to i64, !dbg !2237
  %arrayidx = getelementptr inbounds [0 x %struct.ftl_rq_entry], ptr %entries, i64 0, i64 %idxprom, !dbg !2237
  store ptr %arrayidx, ptr %entry2, align 8, !dbg !2236
  store i64 0, ptr %i, align 8, !dbg !2242
  br label %for.cond, !dbg !2244

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, ptr %i, align 8, !dbg !2245
  %6 = load ptr, ptr %rq.addr, align 8, !dbg !2247
  %iter3 = getelementptr inbounds %struct.ftl_rq, ptr %6, i32 0, i32 10, !dbg !2248
  %count = getelementptr inbounds %struct.anon.28, ptr %iter3, i32 0, i32 1, !dbg !2249
  %7 = load i32, ptr %count, align 4, !dbg !2249
  %conv = zext i32 %7 to i64, !dbg !2247
  %cmp = icmp ult i64 %5, %conv, !dbg !2250
  br i1 %cmp, label %for.body, label %for.end, !dbg !2251

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %band, align 8, !dbg !2252
  %9 = load ptr, ptr %rq.addr, align 8, !dbg !2254
  %io5 = getelementptr inbounds %struct.ftl_rq, ptr %9, i32 0, i32 11, !dbg !2255
  %addr = getelementptr inbounds %struct.anon.29, ptr %io5, i32 0, i32 0, !dbg !2256
  %10 = load i64, ptr %addr, align 8, !dbg !2256
  %call = call i64 @ftl_band_block_offset_from_addr(ptr noundef %8, i64 noundef %10), !dbg !2257
  store i64 %call, ptr %offset, align 8, !dbg !2258
  %11 = load ptr, ptr %band, align 8, !dbg !2259
  %p2l_map = getelementptr inbounds %struct.ftl_band, ptr %11, i32 0, i32 4, !dbg !2260
  %12 = getelementptr inbounds %struct.ftl_p2l_map, ptr %p2l_map, i32 0, i32 3, !dbg !2261
  %13 = load ptr, ptr %12, align 8, !dbg !2261
  %14 = load i64, ptr %offset, align 8, !dbg !2262
  %arrayidx6 = getelementptr inbounds %struct.ftl_p2l_map_entry, ptr %13, i64 %14, !dbg !2259
  %lba = getelementptr inbounds %struct.ftl_p2l_map_entry, ptr %arrayidx6, i32 0, i32 0, !dbg !2263
  %15 = load i64, ptr %lba, align 8, !dbg !2263
  %16 = load ptr, ptr %entry2, align 8, !dbg !2264
  %lba7 = getelementptr inbounds %struct.ftl_rq_entry, ptr %16, i32 0, i32 3, !dbg !2265
  store i64 %15, ptr %lba7, align 8, !dbg !2266
  %17 = load ptr, ptr %rq.addr, align 8, !dbg !2267
  %io8 = getelementptr inbounds %struct.ftl_rq, ptr %17, i32 0, i32 11, !dbg !2268
  %addr9 = getelementptr inbounds %struct.anon.29, ptr %io8, i32 0, i32 0, !dbg !2269
  %18 = load i64, ptr %addr9, align 8, !dbg !2269
  %19 = load ptr, ptr %entry2, align 8, !dbg !2270
  %addr10 = getelementptr inbounds %struct.ftl_rq_entry, ptr %19, i32 0, i32 2, !dbg !2271
  store i64 %18, ptr %addr10, align 8, !dbg !2272
  %20 = load ptr, ptr %band, align 8, !dbg !2273
  %21 = load ptr, ptr %entry2, align 8, !dbg !2274
  %owner = getelementptr inbounds %struct.ftl_rq_entry, ptr %21, i32 0, i32 6, !dbg !2275
  %priv = getelementptr inbounds %struct.anon.31, ptr %owner, i32 0, i32 0, !dbg !2276
  store ptr %20, ptr %priv, align 8, !dbg !2277
  %22 = load ptr, ptr %band, align 8, !dbg !2278
  %p2l_map11 = getelementptr inbounds %struct.ftl_band, ptr %22, i32 0, i32 4, !dbg !2279
  %23 = getelementptr inbounds %struct.ftl_p2l_map, ptr %p2l_map11, i32 0, i32 3, !dbg !2280
  %24 = load ptr, ptr %23, align 8, !dbg !2280
  %25 = load i64, ptr %offset, align 8, !dbg !2281
  %arrayidx12 = getelementptr inbounds %struct.ftl_p2l_map_entry, ptr %24, i64 %25, !dbg !2278
  %seq_id = getelementptr inbounds %struct.ftl_p2l_map_entry, ptr %arrayidx12, i32 0, i32 1, !dbg !2282
  %26 = load i64, ptr %seq_id, align 8, !dbg !2282
  %27 = load ptr, ptr %entry2, align 8, !dbg !2283
  %seq_id13 = getelementptr inbounds %struct.ftl_rq_entry, ptr %27, i32 0, i32 4, !dbg !2284
  store i64 %26, ptr %seq_id13, align 8, !dbg !2285
  %28 = load ptr, ptr %entry2, align 8, !dbg !2286
  %incdec.ptr = getelementptr inbounds %struct.ftl_rq_entry, ptr %28, i32 1, !dbg !2286
  store ptr %incdec.ptr, ptr %entry2, align 8, !dbg !2286
  %29 = load ptr, ptr %band, align 8, !dbg !2287
  %30 = load ptr, ptr %rq.addr, align 8, !dbg !2288
  %io14 = getelementptr inbounds %struct.ftl_rq, ptr %30, i32 0, i32 11, !dbg !2289
  %addr15 = getelementptr inbounds %struct.anon.29, ptr %io14, i32 0, i32 0, !dbg !2290
  %31 = load i64, ptr %addr15, align 8, !dbg !2290
  %call16 = call i64 @ftl_band_next_addr(ptr noundef %29, i64 noundef %31, i64 noundef 1), !dbg !2291
  %32 = load ptr, ptr %rq.addr, align 8, !dbg !2292
  %io17 = getelementptr inbounds %struct.ftl_rq, ptr %32, i32 0, i32 11, !dbg !2293
  %addr18 = getelementptr inbounds %struct.anon.29, ptr %io17, i32 0, i32 0, !dbg !2294
  store i64 %call16, ptr %addr18, align 8, !dbg !2295
  %33 = load ptr, ptr %band, align 8, !dbg !2296
  %owner19 = getelementptr inbounds %struct.ftl_band, ptr %33, i32 0, i32 3, !dbg !2297
  %cnt = getelementptr inbounds %struct.anon.35, ptr %owner19, i32 0, i32 3, !dbg !2298
  %34 = load i64, ptr %cnt, align 8, !dbg !2299
  %inc = add i64 %34, 1, !dbg !2299
  store i64 %inc, ptr %cnt, align 8, !dbg !2299
  br label %for.inc, !dbg !2300

for.inc:                                          ; preds = %for.body
  %35 = load i64, ptr %i, align 8, !dbg !2301
  %inc20 = add i64 %35, 1, !dbg !2301
  store i64 %inc20, ptr %i, align 8, !dbg !2301
  br label %for.cond, !dbg !2302, !llvm.loop !2303

for.end:                                          ; preds = %for.cond
  %36 = load ptr, ptr %rq.addr, align 8, !dbg !2305
  %iter21 = getelementptr inbounds %struct.ftl_rq, ptr %36, i32 0, i32 10, !dbg !2306
  %qd = getelementptr inbounds %struct.anon.28, ptr %iter21, i32 0, i32 2, !dbg !2307
  %37 = load i32, ptr %qd, align 8, !dbg !2308
  %inc22 = add i32 %37, 1, !dbg !2308
  store i32 %inc22, ptr %qd, align 8, !dbg !2308
  %38 = load ptr, ptr %rq.addr, align 8, !dbg !2309
  %iter23 = getelementptr inbounds %struct.ftl_rq, ptr %38, i32 0, i32 10, !dbg !2310
  %count24 = getelementptr inbounds %struct.anon.28, ptr %iter23, i32 0, i32 1, !dbg !2311
  %39 = load i32, ptr %count24, align 4, !dbg !2311
  %40 = load ptr, ptr %rq.addr, align 8, !dbg !2312
  %iter25 = getelementptr inbounds %struct.ftl_rq, ptr %40, i32 0, i32 10, !dbg !2313
  %idx26 = getelementptr inbounds %struct.anon.28, ptr %iter25, i32 0, i32 0, !dbg !2314
  %41 = load i32, ptr %idx26, align 8, !dbg !2315
  %add = add i32 %41, %39, !dbg !2315
  store i32 %add, ptr %idx26, align 8, !dbg !2315
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry2) #9, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #9, !dbg !2316
  call void @llvm.lifetime.end.p0(i64 8, ptr %band) #9, !dbg !2316
  ret void, !dbg !2316
}

declare !dbg !2317 i64 @ftl_band_next_xfer_addr(ptr noundef, i64 noundef, i64 noundef) #3

declare !dbg !2318 i64 @ftl_band_block_offset_from_addr(ptr noundef, i64 noundef) #3

declare !dbg !2321 void @ftl_l2p_pin(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal void @move_pin_cb(ptr noundef %dev, i32 noundef %status, ptr noundef %pin_ctx) #0 !dbg !2324 {
entry:
  %dev.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %pin_ctx.addr = alloca ptr, align 8
  %mv = alloca ptr, align 8
  %rq = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2326, metadata !DIExpression()), !dbg !2331
  store i32 %status, ptr %status.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !2327, metadata !DIExpression()), !dbg !2332
  store ptr %pin_ctx, ptr %pin_ctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %pin_ctx.addr, metadata !2328, metadata !DIExpression()), !dbg !2333
  call void @llvm.lifetime.start.p0(i64 8, ptr %mv) #9, !dbg !2334
  tail call void @llvm.dbg.declare(metadata ptr %mv, metadata !2329, metadata !DIExpression()), !dbg !2335
  %0 = load ptr, ptr %pin_ctx.addr, align 8, !dbg !2336
  %cb_ctx = getelementptr inbounds %struct.ftl_l2p_pin_ctx, ptr %0, i32 0, i32 3, !dbg !2337
  %1 = load ptr, ptr %cb_ctx, align 8, !dbg !2337
  store ptr %1, ptr %mv, align 8, !dbg !2335
  call void @llvm.lifetime.start.p0(i64 8, ptr %rq) #9, !dbg !2338
  tail call void @llvm.dbg.declare(metadata ptr %rq, metadata !2330, metadata !DIExpression()), !dbg !2339
  %2 = load ptr, ptr %mv, align 8, !dbg !2340
  %rq1 = getelementptr inbounds %struct.ftl_reloc_move, ptr %2, i32 0, i32 2, !dbg !2341
  %3 = load ptr, ptr %rq1, align 8, !dbg !2341
  store ptr %3, ptr %rq, align 8, !dbg !2339
  %4 = load i32, ptr %status.addr, align 4, !dbg !2342
  %tobool = icmp ne i32 %4, 0, !dbg !2342
  br i1 %tobool, label %if.then, label %if.end, !dbg !2344

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %status.addr, align 4, !dbg !2345
  %6 = load ptr, ptr %rq, align 8, !dbg !2347
  %iter = getelementptr inbounds %struct.ftl_rq, ptr %6, i32 0, i32 10, !dbg !2348
  %status2 = getelementptr inbounds %struct.anon.28, ptr %iter, i32 0, i32 4, !dbg !2349
  store i32 %5, ptr %status2, align 8, !dbg !2350
  %7 = load ptr, ptr %pin_ctx.addr, align 8, !dbg !2351
  %lba = getelementptr inbounds %struct.ftl_l2p_pin_ctx, ptr %7, i32 0, i32 0, !dbg !2352
  store i64 -1, ptr %lba, align 8, !dbg !2353
  br label %if.end, !dbg !2354

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %rq, align 8, !dbg !2355
  %iter3 = getelementptr inbounds %struct.ftl_rq, ptr %8, i32 0, i32 10, !dbg !2357
  %remaining = getelementptr inbounds %struct.anon.28, ptr %iter3, i32 0, i32 3, !dbg !2358
  %9 = load i32, ptr %remaining, align 4, !dbg !2359
  %dec = add i32 %9, -1, !dbg !2359
  store i32 %dec, ptr %remaining, align 4, !dbg !2359
  %cmp = icmp eq i32 %dec, 0, !dbg !2360
  br i1 %cmp, label %if.then4, label %if.end10, !dbg !2361

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %rq, align 8, !dbg !2362
  %iter5 = getelementptr inbounds %struct.ftl_rq, ptr %10, i32 0, i32 10, !dbg !2365
  %status6 = getelementptr inbounds %struct.anon.28, ptr %iter5, i32 0, i32 4, !dbg !2366
  %11 = load i32, ptr %status6, align 8, !dbg !2366
  %tobool7 = icmp ne i32 %11, 0, !dbg !2362
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2367

if.then8:                                         ; preds = %if.then4
  %12 = load ptr, ptr %rq, align 8, !dbg !2368
  call void @ftl_rq_unpin(ptr noundef %12), !dbg !2370
  %13 = load ptr, ptr %mv, align 8, !dbg !2371
  call void @move_set_state(ptr noundef %13, i32 noundef 1), !dbg !2372
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2373

if.end9:                                          ; preds = %if.then4
  %14 = load ptr, ptr %mv, align 8, !dbg !2374
  call void @move_set_state(ptr noundef %14, i32 noundef 2), !dbg !2375
  br label %if.end10, !dbg !2376

if.end10:                                         ; preds = %if.end9, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2377
  br label %cleanup, !dbg !2377

cleanup:                                          ; preds = %if.end10, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %rq) #9, !dbg !2377
  call void @llvm.lifetime.end.p0(i64 8, ptr %mv) #9, !dbg !2377
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2377

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !2378 void @ftl_l2p_pin_skip(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @ftl_writer_queue_rq(ptr noundef %writer, ptr noundef %rq) #7 !dbg !2381 {
entry:
  %writer.addr = alloca ptr, align 8
  %rq.addr = alloca ptr, align 8
  store ptr %writer, ptr %writer.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %writer.addr, metadata !2386, metadata !DIExpression()), !dbg !2388
  store ptr %rq, ptr %rq.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %rq.addr, metadata !2387, metadata !DIExpression()), !dbg !2389
  br label %do.body, !dbg !2390

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %rq.addr, align 8, !dbg !2391
  %qentry = getelementptr inbounds %struct.ftl_rq, ptr %0, i32 0, i32 1, !dbg !2391
  %tqe_next = getelementptr inbounds %struct.anon.26, ptr %qentry, i32 0, i32 0, !dbg !2391
  store ptr null, ptr %tqe_next, align 8, !dbg !2391
  %1 = load ptr, ptr %writer.addr, align 8, !dbg !2391
  %rq_queue = getelementptr inbounds %struct.ftl_writer, ptr %1, i32 0, i32 1, !dbg !2391
  %tqh_last = getelementptr inbounds %struct.anon.20, ptr %rq_queue, i32 0, i32 1, !dbg !2391
  %2 = load ptr, ptr %tqh_last, align 8, !dbg !2391
  %3 = load ptr, ptr %rq.addr, align 8, !dbg !2391
  %qentry1 = getelementptr inbounds %struct.ftl_rq, ptr %3, i32 0, i32 1, !dbg !2391
  %tqe_prev = getelementptr inbounds %struct.anon.26, ptr %qentry1, i32 0, i32 1, !dbg !2391
  store ptr %2, ptr %tqe_prev, align 8, !dbg !2391
  %4 = load ptr, ptr %rq.addr, align 8, !dbg !2391
  %5 = load ptr, ptr %writer.addr, align 8, !dbg !2391
  %rq_queue2 = getelementptr inbounds %struct.ftl_writer, ptr %5, i32 0, i32 1, !dbg !2391
  %tqh_last3 = getelementptr inbounds %struct.anon.20, ptr %rq_queue2, i32 0, i32 1, !dbg !2391
  %6 = load ptr, ptr %tqh_last3, align 8, !dbg !2391
  store ptr %4, ptr %6, align 8, !dbg !2391
  %7 = load ptr, ptr %rq.addr, align 8, !dbg !2391
  %qentry4 = getelementptr inbounds %struct.ftl_rq, ptr %7, i32 0, i32 1, !dbg !2391
  %tqe_next5 = getelementptr inbounds %struct.anon.26, ptr %qentry4, i32 0, i32 0, !dbg !2391
  %8 = load ptr, ptr %writer.addr, align 8, !dbg !2391
  %rq_queue6 = getelementptr inbounds %struct.ftl_writer, ptr %8, i32 0, i32 1, !dbg !2391
  %tqh_last7 = getelementptr inbounds %struct.anon.20, ptr %rq_queue6, i32 0, i32 1, !dbg !2391
  store ptr %tqe_next5, ptr %tqh_last7, align 8, !dbg !2391
  br label %do.end, !dbg !2391

do.end:                                           ; preds = %do.body
  ret void, !dbg !2393
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i64 @ftl_band_qd(ptr noundef %band) #7 !dbg !2394 {
entry:
  %band.addr = alloca ptr, align 8
  store ptr %band, ptr %band.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %band.addr, metadata !2398, metadata !DIExpression()), !dbg !2399
  %0 = load ptr, ptr %band.addr, align 8, !dbg !2400
  %queue_depth = getelementptr inbounds %struct.ftl_band, ptr %0, i32 0, i32 2, !dbg !2401
  %1 = load i64, ptr %queue_depth, align 8, !dbg !2401
  ret i64 %1, !dbg !2402
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i32 @ftl_band_empty(ptr noundef %band) #7 !dbg !2403 {
entry:
  %band.addr = alloca ptr, align 8
  store ptr %band, ptr %band.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %band.addr, metadata !2407, metadata !DIExpression()), !dbg !2408
  %0 = load ptr, ptr %band.addr, align 8, !dbg !2409
  %p2l_map = getelementptr inbounds %struct.ftl_band, ptr %0, i32 0, i32 4, !dbg !2410
  %num_valid = getelementptr inbounds %struct.ftl_p2l_map, ptr %p2l_map, i32 0, i32 0, !dbg !2411
  %1 = load i64, ptr %num_valid, align 8, !dbg !2411
  %cmp = icmp eq i64 %1, 0, !dbg !2412
  %conv = zext i1 %cmp to i32, !dbg !2412
  ret i32 %conv, !dbg !2413
}

declare !dbg !2414 void @ftl_band_free(ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal void @move_handle_band_error(ptr noundef %band) #0 !dbg !2415 {
entry:
  %band.addr = alloca ptr, align 8
  %reloc = alloca ptr, align 8
  store ptr %band, ptr %band.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %band.addr, metadata !2417, metadata !DIExpression()), !dbg !2419
  call void @llvm.lifetime.start.p0(i64 8, ptr %reloc) #9, !dbg !2420
  tail call void @llvm.dbg.declare(metadata ptr %reloc, metadata !2418, metadata !DIExpression()), !dbg !2421
  %0 = load ptr, ptr %band.addr, align 8, !dbg !2422
  %dev = getelementptr inbounds %struct.ftl_band, ptr %0, i32 0, i32 0, !dbg !2423
  %1 = load ptr, ptr %dev, align 8, !dbg !2423
  %reloc1 = getelementptr inbounds %struct.spdk_ftl_dev, ptr %1, i32 0, i32 33, !dbg !2424
  %2 = load ptr, ptr %reloc1, align 8, !dbg !2424
  store ptr %2, ptr %reloc, align 8, !dbg !2421
  br label %do.body, !dbg !2425

do.body:                                          ; preds = %entry
  %3 = load ptr, ptr %band.addr, align 8, !dbg !2426
  %queue_entry = getelementptr inbounds %struct.ftl_band, ptr %3, i32 0, i32 11, !dbg !2426
  %tqe_next = getelementptr inbounds %struct.anon.42, ptr %queue_entry, i32 0, i32 0, !dbg !2426
  %4 = load ptr, ptr %tqe_next, align 8, !dbg !2426
  %cmp = icmp ne ptr %4, null, !dbg !2426
  br i1 %cmp, label %if.then, label %if.else, !dbg !2429

if.then:                                          ; preds = %do.body
  %5 = load ptr, ptr %band.addr, align 8, !dbg !2426
  %queue_entry2 = getelementptr inbounds %struct.ftl_band, ptr %5, i32 0, i32 11, !dbg !2426
  %tqe_prev = getelementptr inbounds %struct.anon.42, ptr %queue_entry2, i32 0, i32 1, !dbg !2426
  %6 = load ptr, ptr %tqe_prev, align 8, !dbg !2426
  %7 = load ptr, ptr %band.addr, align 8, !dbg !2426
  %queue_entry3 = getelementptr inbounds %struct.ftl_band, ptr %7, i32 0, i32 11, !dbg !2426
  %tqe_next4 = getelementptr inbounds %struct.anon.42, ptr %queue_entry3, i32 0, i32 0, !dbg !2426
  %8 = load ptr, ptr %tqe_next4, align 8, !dbg !2426
  %queue_entry5 = getelementptr inbounds %struct.ftl_band, ptr %8, i32 0, i32 11, !dbg !2426
  %tqe_prev6 = getelementptr inbounds %struct.anon.42, ptr %queue_entry5, i32 0, i32 1, !dbg !2426
  store ptr %6, ptr %tqe_prev6, align 8, !dbg !2426
  br label %if.end, !dbg !2426

if.else:                                          ; preds = %do.body
  %9 = load ptr, ptr %band.addr, align 8, !dbg !2426
  %queue_entry7 = getelementptr inbounds %struct.ftl_band, ptr %9, i32 0, i32 11, !dbg !2426
  %tqe_prev8 = getelementptr inbounds %struct.anon.42, ptr %queue_entry7, i32 0, i32 1, !dbg !2426
  %10 = load ptr, ptr %tqe_prev8, align 8, !dbg !2426
  %11 = load ptr, ptr %reloc, align 8, !dbg !2426
  %band_done = getelementptr inbounds %struct.ftl_reloc, ptr %11, i32 0, i32 3, !dbg !2426
  %tqh_last = getelementptr inbounds %struct.anon, ptr %band_done, i32 0, i32 1, !dbg !2426
  store ptr %10, ptr %tqh_last, align 8, !dbg !2426
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load ptr, ptr %band.addr, align 8, !dbg !2429
  %queue_entry9 = getelementptr inbounds %struct.ftl_band, ptr %12, i32 0, i32 11, !dbg !2429
  %tqe_next10 = getelementptr inbounds %struct.anon.42, ptr %queue_entry9, i32 0, i32 0, !dbg !2429
  %13 = load ptr, ptr %tqe_next10, align 8, !dbg !2429
  %14 = load ptr, ptr %band.addr, align 8, !dbg !2429
  %queue_entry11 = getelementptr inbounds %struct.ftl_band, ptr %14, i32 0, i32 11, !dbg !2429
  %tqe_prev12 = getelementptr inbounds %struct.anon.42, ptr %queue_entry11, i32 0, i32 1, !dbg !2429
  %15 = load ptr, ptr %tqe_prev12, align 8, !dbg !2429
  store ptr %13, ptr %15, align 8, !dbg !2429
  br label %do.cond, !dbg !2429

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2429

do.end:                                           ; preds = %do.cond
  %16 = load ptr, ptr %reloc, align 8, !dbg !2430
  %band_done_count = getelementptr inbounds %struct.ftl_reloc, ptr %16, i32 0, i32 4, !dbg !2431
  %17 = load i64, ptr %band_done_count, align 8, !dbg !2432
  %dec = add i64 %17, -1, !dbg !2432
  store i64 %dec, ptr %band_done_count, align 8, !dbg !2432
  %18 = load ptr, ptr %band.addr, align 8, !dbg !2433
  %md = getelementptr inbounds %struct.ftl_band, ptr %18, i32 0, i32 1, !dbg !2434
  %19 = load ptr, ptr %md, align 8, !dbg !2434
  %state = getelementptr inbounds %struct.ftl_band_md, ptr %19, i32 0, i32 1, !dbg !2435
  store i32 5, ptr %state, align 1, !dbg !2436
  %20 = load ptr, ptr %band.addr, align 8, !dbg !2437
  call void @ftl_band_set_state(ptr noundef %20, i32 noundef 6), !dbg !2438
  call void @llvm.lifetime.end.p0(i64 8, ptr %reloc) #9, !dbg !2439
  ret void, !dbg !2439
}

declare !dbg !2440 void @ftl_band_set_state(ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #8

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { inlinehint nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!23}
!llvm.module.flags = !{!118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ftl_reloc.c", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "85ea47c05dc56da51f02c63b20b23212")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 12)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 120, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 15)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 48)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 4)
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !24, retainedTypes: !109, globals: !117, splitDebugInlining: false, nameTableKind: None)
!24 = !{!25, !48, !54, !61, !72, !77, !85, !91, !99}
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ftl_layout_region_type", file: !26, line: 17, baseType: !27, size: 32, elements: !28)
!26 = !DIFile(filename: "./ftl_layout.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "c37eaa6ae940715128424a248a8af236")
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!29 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_SB", value: 0)
!30 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_SB_BASE", value: 1)
!31 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_L2P", value: 2)
!32 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_BAND_MD", value: 3)
!33 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_BAND_MD_MIRROR", value: 4)
!34 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_VALID_MAP", value: 5)
!35 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_NVC_MD", value: 6)
!36 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_NVC_MD_MIRROR", value: 7)
!37 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_DATA_NVC", value: 8)
!38 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_DATA_BASE", value: 9)
!39 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_P2L_CKPT_GC", value: 10)
!40 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_P2L_CKPT_MIN", value: 10)
!41 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_P2L_CKPT_GC_NEXT", value: 11)
!42 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_P2L_CKPT_COMP", value: 12)
!43 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_P2L_CKPT_COMP_NEXT", value: 13)
!44 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_P2L_CKPT_MAX", value: 13)
!45 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_TRIM_MD", value: 14)
!46 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_TRIM_MD_MIRROR", value: 15)
!47 = !DIEnumerator(name: "FTL_LAYOUT_REGION_TYPE_MAX", value: 16)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ftl_md_ops", file: !49, line: 18, baseType: !27, size: 32, elements: !50)
!49 = !DIFile(filename: "./utils/ftl_md.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "011f7dc1d5bafce8f248087afb1a211c")
!50 = !{!51, !52, !53}
!51 = !DIEnumerator(name: "FTL_MD_OP_RESTORE", value: 0)
!52 = !DIEnumerator(name: "FTL_MD_OP_PERSIST", value: 1)
!53 = !DIEnumerator(name: "FTL_MD_OP_CLEAR", value: 2)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ftl_chunk_state", file: !55, line: 52, baseType: !27, size: 32, elements: !56)
!55 = !DIFile(filename: "./ftl_nv_cache.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "ab40a95371e7ce0e8bb4a747c54fba17")
!56 = !{!57, !58, !59, !60}
!57 = !DIEnumerator(name: "FTL_CHUNK_STATE_FREE", value: 0)
!58 = !DIEnumerator(name: "FTL_CHUNK_STATE_OPEN", value: 1)
!59 = !DIEnumerator(name: "FTL_CHUNK_STATE_CLOSED", value: 2)
!60 = !DIEnumerator(name: "FTL_CHUNK_STATE_MAX", value: 3)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ftl_band_state", file: !62, line: 32, baseType: !27, size: 32, elements: !63)
!62 = !DIFile(filename: "./ftl_band.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "2f90dc4b982c4db102e2fcc4c0df5efa")
!63 = !{!64, !65, !66, !67, !68, !69, !70, !71}
!64 = !DIEnumerator(name: "FTL_BAND_STATE_FREE", value: 0)
!65 = !DIEnumerator(name: "FTL_BAND_STATE_PREP", value: 1)
!66 = !DIEnumerator(name: "FTL_BAND_STATE_OPENING", value: 2)
!67 = !DIEnumerator(name: "FTL_BAND_STATE_OPEN", value: 3)
!68 = !DIEnumerator(name: "FTL_BAND_STATE_FULL", value: 4)
!69 = !DIEnumerator(name: "FTL_BAND_STATE_CLOSING", value: 5)
!70 = !DIEnumerator(name: "FTL_BAND_STATE_CLOSED", value: 6)
!71 = !DIEnumerator(name: "FTL_BAND_STATE_MAX", value: 7)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ftl_band_type", file: !73, line: 41, baseType: !27, size: 32, elements: !74)
!73 = !DIFile(filename: "./ftl_internal.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "639459d74dde441eb9b190068b535de4")
!74 = !{!75, !76}
!75 = !DIEnumerator(name: "FTL_BAND_TYPE_GC", value: 1)
!76 = !DIEnumerator(name: "FTL_BAND_TYPE_COMPACTION", value: 2)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ftl_md_status", file: !73, line: 46, baseType: !27, size: 32, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84}
!79 = !DIEnumerator(name: "FTL_MD_SUCCESS", value: 0)
!80 = !DIEnumerator(name: "FTL_MD_IO_FAILURE", value: 1)
!81 = !DIEnumerator(name: "FTL_MD_INVALID_VER", value: 2)
!82 = !DIEnumerator(name: "FTL_MD_NO_MD", value: 3)
!83 = !DIEnumerator(name: "FTL_MD_INVALID_CRC", value: 4)
!84 = !DIEnumerator(name: "FTL_MD_INVALID_SIZE", value: 5)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ftl_io_type", file: !86, line: 34, baseType: !27, size: 32, elements: !87)
!86 = !DIFile(filename: "./ftl_io.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "dbc694b485774c77420341a94dbbe416")
!87 = !{!88, !89, !90}
!88 = !DIEnumerator(name: "FTL_IO_READ", value: 0)
!89 = !DIEnumerator(name: "FTL_IO_WRITE", value: 1)
!90 = !DIEnumerator(name: "FTL_IO_UNMAP", value: 2)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ftl_reloc_move_state", file: !2, line: 18, baseType: !27, size: 32, elements: !92)
!92 = !{!93, !94, !95, !96, !97, !98}
!93 = !DIEnumerator(name: "FTL_RELOC_STATE_READ", value: 0)
!94 = !DIEnumerator(name: "FTL_RELOC_STATE_PIN", value: 1)
!95 = !DIEnumerator(name: "FTL_RELOC_STATE_WRITE", value: 2)
!96 = !DIEnumerator(name: "FTL_RELOC_STATE_WAIT", value: 3)
!97 = !DIEnumerator(name: "FTL_RELOC_STATE_HALT", value: 4)
!98 = !DIEnumerator(name: "FTL_RELOC_STATE_MAX", value: 5)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spdk_log_level", file: !100, line: 52, baseType: !101, size: 32, elements: !102)
!100 = !DIFile(filename: "include/spdk/log.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "dc79cb206a5da324f77777fd137cb5d7")
!101 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!102 = !{!103, !104, !105, !106, !107, !108}
!103 = !DIEnumerator(name: "SPDK_LOG_DISABLED", value: -1)
!104 = !DIEnumerator(name: "SPDK_LOG_ERROR", value: 0)
!105 = !DIEnumerator(name: "SPDK_LOG_WARN", value: 1)
!106 = !DIEnumerator(name: "SPDK_LOG_NOTICE", value: 2)
!107 = !DIEnumerator(name: "SPDK_LOG_INFO", value: 3)
!108 = !DIEnumerator(name: "SPDK_LOG_DEBUG", value: 4)
!109 = !{!110, !111, !112}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "ftl_addr", file: !73, line: 32, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !113, line: 27, baseType: !114)
!113 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !115, line: 45, baseType: !116)
!115 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!116 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!117 = !{!0, !7, !13, !18}
!118 = !{i32 7, !"Dwarf Version", i32 5}
!119 = !{i32 2, !"Debug Info Version", i32 3}
!120 = !{i32 1, !"wchar_size", i32 4}
!121 = !{i32 8, !"PIC Level", i32 2}
!122 = !{i32 7, !"uwtable", i32 2}
!123 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!124 = distinct !DISubprogram(name: "ftl_reloc_init", scope: !2, file: !2, line: 105, type: !125, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !952)
!125 = !DISubroutineType(types: !126)
!126 = !{!127, !131}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_reloc", file: !2, line: 44, size: 1216, elements: !129)
!129 = !{!130, !920, !921, !922, !927, !928, !929, !930, !944}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !128, file: !2, line: 46, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_ftl_dev", file: !133, line: 42, size: 30720, elements: !134)
!133 = !DIFile(filename: "./ftl_core.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "37cad5a800a858b02f32e26afc2ef2b0")
!134 = !{!135, !182, !322, !349, !363, !364, !390, !391, !392, !393, !394, !395, !396, !399, !759, !760, !761, !762, !767, !791, !792, !793, !794, !799, !804, !805, !806, !811, !812, !813, !814, !815, !816, !817, !818, !821, !822, !823, !824, !867, !872, !877, !878, !879, !880, !881, !903, !904, !905, !906}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !132, file: !133, line: 44, baseType: !136, size: 1088)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_ftl_conf", file: !137, line: 81, size: 1088, elements: !138)
!137 = !DIFile(filename: "include/spdk/ftl.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "39b048091f7c910e883a0ee44a4990de")
!138 = !{!139, !141, !155, !156, !159, !160, !161, !163, !166, !171, !173, !174, !175, !177, !181}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !136, file: !137, line: 83, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !136, file: !137, line: 86, baseType: !142, size: 128, offset: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_uuid", file: !143, line: 21, size: 128, elements: !144)
!143 = !DIFile(filename: "include/spdk/uuid.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "184998928e884963453b933bb411eaa6")
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !142, file: !143, line: 24, baseType: !146, size: 128)
!146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !142, file: !143, line: 22, size: 128, elements: !147)
!147 = !{!148}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !146, file: !143, line: 23, baseType: !149, size: 128)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 128, elements: !153)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !113, line: 24, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !115, line: 38, baseType: !152)
!152 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!153 = !{!154}
!154 = !DISubrange(count: 16)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "overprovisioning", scope: !136, file: !137, line: 89, baseType: !112, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "l2p_dram_limit", scope: !136, file: !137, line: 92, baseType: !157, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !158, line: 29, baseType: !116)
!158 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "fe493b50b1dc220fe9bcfb4d648abdef")
!159 = !DIDerivedType(tag: DW_TAG_member, name: "core_mask", scope: !136, file: !137, line: 95, baseType: !140, size: 64, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "user_io_pool_size", scope: !136, file: !137, line: 98, baseType: !157, size: 64, offset: 384)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !136, file: !137, line: 101, baseType: !162, size: 256, offset: 448)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 256, elements: !21)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !136, file: !137, line: 104, baseType: !164, size: 32, offset: 704)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !113, line: 26, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !115, line: 42, baseType: !27)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nv_cache", scope: !136, file: !137, line: 112, baseType: !167, size: 64, offset: 736)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !137, line: 106, size: 64, elements: !168)
!168 = !{!169, !170}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_compaction_threshold", scope: !167, file: !137, line: 108, baseType: !164, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_free_target", scope: !167, file: !137, line: 111, baseType: !164, size: 32, offset: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !136, file: !137, line: 115, baseType: !172, size: 32, offset: 800)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 32, elements: !21)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "base_bdev", scope: !136, file: !137, line: 118, baseType: !140, size: 64, offset: 832)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "cache_bdev", scope: !136, file: !137, line: 121, baseType: !140, size: 64, offset: 896)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "fast_shutdown", scope: !136, file: !137, line: 124, baseType: !176, size: 8, offset: 960)
!176 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !136, file: !137, line: 127, baseType: !178, size: 56, offset: 968)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 56, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 7)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "conf_size", scope: !136, file: !137, line: 134, baseType: !157, size: 64, offset: 1024)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "layout", scope: !132, file: !133, line: 47, baseType: !183, size: 17152, offset: 1088)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_layout", file: !26, line: 127, size: 17152, elements: !184)
!184 = !{!185, !191, !199, !205, !209, !247}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !183, file: !26, line: 133, baseType: !186, size: 192)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !183, file: !26, line: 129, size: 192, elements: !187)
!187 = !{!188, !189, !190}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "total_blocks", scope: !186, file: !26, line: 130, baseType: !112, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "num_usable_blocks", scope: !186, file: !26, line: 131, baseType: !112, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "user_blocks", scope: !186, file: !26, line: 132, baseType: !112, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "nvc", scope: !183, file: !26, line: 142, baseType: !192, size: 320, offset: 192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !183, file: !26, line: 136, size: 320, elements: !193)
!193 = !{!194, !195, !196, !197, !198}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "total_blocks", scope: !192, file: !26, line: 137, baseType: !112, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_data_blocks", scope: !192, file: !26, line: 138, baseType: !112, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_meta_size", scope: !192, file: !26, line: 139, baseType: !112, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_count", scope: !192, file: !26, line: 140, baseType: !112, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_tail_md_num_blocks", scope: !192, file: !26, line: 141, baseType: !112, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "l2p", scope: !183, file: !26, line: 152, baseType: !200, size: 192, offset: 512)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !183, file: !26, line: 145, size: 192, elements: !201)
!201 = !{!202, !203, !204}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "addr_length", scope: !200, file: !26, line: 147, baseType: !112, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "addr_size", scope: !200, file: !26, line: 149, baseType: !112, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "lbas_in_page", scope: !200, file: !26, line: 151, baseType: !112, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "p2l", scope: !183, file: !26, line: 158, baseType: !206, size: 64, offset: 704)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !183, file: !26, line: 155, size: 64, elements: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ckpt_pages", scope: !206, file: !26, line: 157, baseType: !112, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !183, file: !26, line: 160, baseType: !210, size: 15360, offset: 768)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 15360, elements: !153)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_layout_region", file: !26, line: 88, size: 960, elements: !212)
!212 = !{!213, !215, !216, !217, !235, !236, !237, !238, !239, !243}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !211, file: !26, line: 90, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !211, file: !26, line: 93, baseType: !25, size: 32, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "mirror_type", scope: !211, file: !26, line: 96, baseType: !25, size: 32, offset: 96)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !211, file: !26, line: 99, baseType: !218, size: 256, offset: 128)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_layout_region_descriptor", file: !26, line: 74, size: 256, elements: !219)
!219 = !{!220, !221, !222, !223}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !218, file: !26, line: 76, baseType: !112, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !218, file: !26, line: 79, baseType: !112, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !218, file: !26, line: 82, baseType: !112, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "sb_md_reg", scope: !218, file: !26, line: 84, baseType: !224, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_superblock_md_region", file: !226, line: 48, size: 256, elements: !227)
!226 = !DIFile(filename: "./ftl_sb_common.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "4e2b3ed6e002be341073dc542da38b27")
!227 = !{!228, !229, !230, !231, !232}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !225, file: !226, line: 49, baseType: !164, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !225, file: !226, line: 50, baseType: !164, size: 32, offset: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "blk_offs", scope: !225, file: !226, line: 51, baseType: !112, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "blk_sz", scope: !225, file: !226, line: 52, baseType: !112, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "df_next", scope: !225, file: !226, line: 53, baseType: !233, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "ftl_df_obj_id", file: !234, line: 12, baseType: !112)
!234 = !DIFile(filename: "./utils/ftl_df.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "52ec2517c2959b262ff51f96d4eec83e")
!235 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !211, file: !26, line: 102, baseType: !218, size: 256, offset: 384)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "entry_size", scope: !211, file: !26, line: 109, baseType: !112, size: 64, offset: 640)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !211, file: !26, line: 112, baseType: !112, size: 64, offset: 704)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "vss_blksz", scope: !211, file: !26, line: 115, baseType: !112, size: 64, offset: 768)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_desc", scope: !211, file: !26, line: 118, baseType: !240, size: 64, offset: 832)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_bdev_desc", file: !242, line: 99, flags: DIFlagFwdDecl)
!242 = !DIFile(filename: "include/spdk/bdev.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "ad5de07e01a6cdcb8de0ed834fd6bc82")
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ioch", scope: !211, file: !26, line: 121, baseType: !244, size: 64, offset: 896)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_io_channel", file: !246, line: 689, flags: DIFlagFwdDecl)
!246 = !DIFile(filename: "include/spdk/thread.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "049d1606c4c83167baed644453ef96cb")
!247 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !183, file: !26, line: 163, baseType: !248, size: 1024, offset: 16128)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 1024, elements: !153)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_md", file: !49, line: 28, size: 3776, elements: !251)
!251 = !{!252, !257, !262, !263, !266, !267, !268, !269, !270, !299, !300, !304, !305, !306, !314, !319, !320, !321}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !250, file: !49, line: 36, baseType: !253, size: 128)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !250, file: !49, line: 30, size: 128, elements: !254)
!254 = !{!255, !256}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !253, file: !49, line: 32, baseType: !110, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "cb_ctx", scope: !253, file: !49, line: 35, baseType: !110, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !250, file: !49, line: 39, baseType: !258, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "ftl_md_cb", file: !49, line: 16, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !131, !249, !101}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !250, file: !49, line: 42, baseType: !131, size: 64, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !250, file: !49, line: 45, baseType: !264, size: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !250, file: !49, line: 48, baseType: !110, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "data_blocks", scope: !250, file: !49, line: 51, baseType: !112, size: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "vss_data", scope: !250, file: !49, line: 54, baseType: !110, size: 64, offset: 448)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "entry_vss_dma_buf", scope: !250, file: !49, line: 57, baseType: !110, size: 64, offset: 512)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !250, file: !49, line: 69, baseType: !271, size: 704, offset: 576)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !250, file: !49, line: 60, size: 704, elements: !272)
!272 = !{!273, !274, !275, !276, !277, !278, !279, !280}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !271, file: !49, line: 61, baseType: !110, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !271, file: !49, line: 62, baseType: !110, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !271, file: !49, line: 63, baseType: !112, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !271, file: !49, line: 64, baseType: !112, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "data_offset", scope: !271, file: !49, line: 65, baseType: !112, size: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !271, file: !49, line: 66, baseType: !101, size: 32, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !271, file: !49, line: 67, baseType: !48, size: 32, offset: 352)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_io_wait", scope: !271, file: !49, line: 68, baseType: !281, size: 320, offset: 384)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_bdev_io_wait_entry", file: !242, line: 1790, size: 320, elements: !282)
!282 = !{!283, !286, !291, !292}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !281, file: !242, line: 1791, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_bdev", file: !242, line: 57, flags: DIFlagFwdDecl)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "cb_fn", scope: !281, file: !242, line: 1792, baseType: !287, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_bdev_io_wait_cb", file: !242, line: 1785, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !110}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "cb_arg", scope: !281, file: !242, line: 1793, baseType: !110, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !281, file: !242, line: 1794, baseType: !293, size: 128, offset: 192)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !281, file: !242, line: 1794, size: 128, elements: !294)
!294 = !{!295, !297}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !293, file: !242, line: 1794, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !293, file: !242, line: 1794, baseType: !298, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "shm_fd", scope: !250, file: !49, line: 72, baseType: !101, size: 32, offset: 1280)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !250, file: !49, line: 75, baseType: !301, size: 2048, offset: 1312)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "shm_mmap_flags", scope: !250, file: !49, line: 78, baseType: !101, size: 32, offset: 3360)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "shm_sz", scope: !250, file: !49, line: 81, baseType: !157, size: 64, offset: 3392)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "shm_open", scope: !250, file: !49, line: 84, baseType: !307, size: 64, offset: 3456)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "shm_open_t", file: !49, line: 24, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!101, !214, !101, !311}
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !312, line: 69, baseType: !313)
!312 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !115, line: 150, baseType: !27)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "shm_unlink", scope: !250, file: !49, line: 87, baseType: !315, size: 64, offset: 3520)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "shm_unlink_t", file: !49, line: 25, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!101, !214}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "mem_reg", scope: !250, file: !49, line: 90, baseType: !176, size: 8, offset: 3584)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mirror", scope: !250, file: !49, line: 93, baseType: !249, size: 64, offset: 3648)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mirror_enabled", scope: !250, file: !49, line: 96, baseType: !176, size: 8, offset: 3712)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !132, file: !133, line: 50, baseType: !323, size: 64, offset: 18240)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_superblock", file: !325, line: 15, size: 1344, elements: !326)
!325 = !DIFile(filename: "./ftl_sb_current.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "edcbfeaf54501013c764a3d5e3ad829e")
!326 = !{!327, !333, !334, !335, !336, !337, !338, !339, !340, !341, !348}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !324, file: !325, line: 16, baseType: !328, size: 192)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_superblock_header", file: !226, line: 40, size: 192, elements: !329)
!329 = !{!330, !331, !332}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !328, file: !226, line: 41, baseType: !112, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !328, file: !226, line: 42, baseType: !112, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !328, file: !226, line: 43, baseType: !112, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !324, file: !325, line: 18, baseType: !142, size: 128, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "seq_id", scope: !324, file: !325, line: 21, baseType: !112, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "clean", scope: !324, file: !325, line: 24, baseType: !112, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "lba_cnt", scope: !324, file: !325, line: 27, baseType: !112, size: 64, offset: 448)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "overprovisioning", scope: !324, file: !325, line: 30, baseType: !112, size: 64, offset: 512)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "max_reloc_qdepth", scope: !324, file: !325, line: 33, baseType: !112, size: 64, offset: 576)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !324, file: !325, line: 36, baseType: !149, size: 128, offset: 640)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ckpt_seq_id", scope: !324, file: !325, line: 39, baseType: !112, size: 64, offset: 768)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "gc_info", scope: !324, file: !325, line: 41, baseType: !342, size: 256, offset: 832)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_superblock_gc_info", file: !226, line: 25, size: 256, elements: !343)
!343 = !{!344, !345, !346, !347}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "band_id_high_prio", scope: !342, file: !226, line: 29, baseType: !112, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "current_band_id", scope: !342, file: !226, line: 31, baseType: !112, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "band_phys_id", scope: !342, file: !226, line: 33, baseType: !112, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "is_valid", scope: !342, file: !226, line: 35, baseType: !112, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "md_layout_head", scope: !324, file: !325, line: 43, baseType: !225, size: 256, offset: 1088)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "sb_shm", scope: !132, file: !133, line: 53, baseType: !350, size: 64, offset: 18304)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_superblock_shm", file: !226, line: 58, size: 576, elements: !352)
!352 = !{!353, !354, !355, !362}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "shm_ready", scope: !351, file: !226, line: 60, baseType: !176, size: 8)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clean", scope: !351, file: !226, line: 63, baseType: !176, size: 8, offset: 8)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "trim", scope: !351, file: !226, line: 71, baseType: !356, size: 256, offset: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !351, file: !226, line: 66, size: 256, elements: !357)
!357 = !{!358, !359, !360, !361}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "in_progress", scope: !356, file: !226, line: 67, baseType: !176, size: 8)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "start_lba", scope: !356, file: !226, line: 68, baseType: !112, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !356, file: !226, line: 69, baseType: !112, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "seq_id", scope: !356, file: !226, line: 70, baseType: !112, size: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "gc_info", scope: !351, file: !226, line: 73, baseType: !342, size: 256, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "sb_shm_md", scope: !132, file: !133, line: 54, baseType: !249, size: 64, offset: 18368)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ioch_queue", scope: !132, file: !133, line: 57, baseType: !365, size: 128, offset: 18432)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !132, file: !133, line: 57, size: 128, elements: !366)
!366 = !{!367, !389}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !365, file: !133, line: 57, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_io_channel", file: !86, line: 42, size: 448, elements: !370)
!370 = !{!371, !372, !378, !381, !384, !388}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !369, file: !86, line: 44, baseType: !131, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !369, file: !86, line: 46, baseType: !373, size: 128, offset: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !369, file: !86, line: 46, size: 128, elements: !374)
!374 = !{!375, !376}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !373, file: !86, line: 46, baseType: !368, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !373, file: !86, line: 46, baseType: !377, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "map_pool", scope: !369, file: !86, line: 48, baseType: !379, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_mempool", file: !86, line: 48, flags: DIFlagFwdDecl)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !369, file: !86, line: 50, baseType: !382, size: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_poller", file: !246, line: 45, flags: DIFlagFwdDecl)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "sq", scope: !369, file: !86, line: 52, baseType: !385, size: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_ring", file: !387, line: 557, flags: DIFlagFwdDecl)
!387 = !DIFile(filename: "include/spdk/env.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "c5bb62a61dfb30b3c4fe3f80f0d985bb")
!388 = !DIDerivedType(tag: DW_TAG_member, name: "cq", scope: !369, file: !86, line: 54, baseType: !385, size: 64, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !365, file: !133, line: 57, baseType: !377, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "base_bdev_desc", scope: !132, file: !133, line: 60, baseType: !240, size: 64, offset: 18560)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks_in_band", scope: !132, file: !133, line: 63, baseType: !112, size: 64, offset: 18624)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "is_zoned", scope: !132, file: !133, line: 64, baseType: !176, size: 8, offset: 18688)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !132, file: !133, line: 67, baseType: !176, size: 8, offset: 18696)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "halt", scope: !132, file: !133, line: 70, baseType: !176, size: 8, offset: 18704)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "io_device_registered", scope: !132, file: !133, line: 73, baseType: !176, size: 8, offset: 18712)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "unregister_process", scope: !132, file: !133, line: 76, baseType: !397, size: 64, offset: 18752)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_mngt_process", file: !73, line: 117, flags: DIFlagFwdDecl)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "nv_cache", scope: !132, file: !133, line: 79, baseType: !400, size: 3776, offset: 18816)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_nv_cache", file: !55, line: 132, size: 3776, elements: !401)
!401 = !{!402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !588, !593, !594, !599, !600, !605, !606, !611, !612, !617, !618, !735, !736, !737, !738, !739, !740, !742, !752}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "halt", scope: !400, file: !55, line: 134, baseType: !176, size: 8)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_desc", scope: !400, file: !55, line: 137, baseType: !240, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "cache_ioch", scope: !400, file: !55, line: 140, baseType: !244, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "md_pool", scope: !400, file: !55, line: 143, baseType: !379, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "p2l_pool", scope: !400, file: !55, line: 146, baseType: !379, size: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_md_pool", scope: !400, file: !55, line: 149, baseType: !379, size: 64, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "free_chunk_md_pool", scope: !400, file: !55, line: 152, baseType: !379, size: 64, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "md_size", scope: !400, file: !55, line: 155, baseType: !112, size: 64, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !400, file: !55, line: 158, baseType: !249, size: 64, offset: 512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_blocks", scope: !400, file: !55, line: 161, baseType: !112, size: 64, offset: 576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tail_md_chunk_blocks", scope: !400, file: !55, line: 164, baseType: !112, size: 64, offset: 640)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_count", scope: !400, file: !55, line: 167, baseType: !112, size: 64, offset: 704)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_current", scope: !400, file: !55, line: 170, baseType: !415, size: 64, offset: 768)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_nv_cache_chunk", file: !55, line: 95, size: 2688, elements: !417)
!417 = !{!418, !420, !437, !438, !486, !578, !584, !585, !586, !587}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "nv_cache", scope: !416, file: !55, line: 96, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !416, file: !55, line: 98, baseType: !421, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_nv_cache_chunk_md", file: !55, line: 59, size: 32768, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !429, !430, !431, !432, !433}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "seq_id", scope: !422, file: !55, line: 61, baseType: !112, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "close_seq_id", scope: !422, file: !55, line: 64, baseType: !112, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "write_pointer", scope: !422, file: !55, line: 67, baseType: !164, size: 32, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_written", scope: !422, file: !55, line: 70, baseType: !164, size: 32, offset: 160)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_skipped", scope: !422, file: !55, line: 73, baseType: !164, size: 32, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "read_pointer", scope: !422, file: !55, line: 76, baseType: !164, size: 32, offset: 224)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_compacted", scope: !422, file: !55, line: 79, baseType: !164, size: 32, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !422, file: !55, line: 82, baseType: !54, size: 32, offset: 288)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "p2l_map_checksum", scope: !422, file: !55, line: 85, baseType: !164, size: 32, offset: 320)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !422, file: !55, line: 88, baseType: !434, size: 32416, offset: 352)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 32416, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 4052)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !416, file: !55, line: 101, baseType: !112, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "p2l_map", scope: !416, file: !55, line: 104, baseType: !439, size: 384, offset: 192)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_p2l_map", file: !73, line: 76, size: 384, elements: !440)
!440 = !{!441, !442, !443, !447, !457, !483}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "num_valid", scope: !439, file: !73, line: 78, baseType: !157, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ref_cnt", scope: !439, file: !73, line: 81, baseType: !157, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !439, file: !73, line: 84, baseType: !444, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_bitmap", file: !446, line: 11, flags: DIFlagFwdDecl)
!446 = !DIFile(filename: "./utils/ftl_bitmap.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "2c6a07f26f6c458013e36e233acb2f3d")
!447 = !DIDerivedType(tag: DW_TAG_member, scope: !439, file: !73, line: 87, baseType: !448, size: 64, offset: 192)
!448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !439, file: !73, line: 87, size: 64, elements: !449)
!449 = !{!450, !456}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "band_map", scope: !448, file: !73, line: 88, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_p2l_map_entry", file: !73, line: 60, size: 128, elements: !453)
!453 = !{!454, !455}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "lba", scope: !452, file: !73, line: 61, baseType: !112, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "seq_id", scope: !452, file: !73, line: 62, baseType: !112, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_map", scope: !448, file: !73, line: 89, baseType: !110, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, scope: !439, file: !73, line: 93, baseType: !458, size: 64, offset: 256)
!458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !439, file: !73, line: 93, size: 64, elements: !459)
!459 = !{!460, !482}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "band_dma_md", scope: !458, file: !73, line: 94, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_band_md", file: !62, line: 48, size: 32768, elements: !463)
!463 = !{!464, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !462, file: !62, line: 56, baseType: !465, size: 128)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !462, file: !62, line: 50, size: 128, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !465, file: !62, line: 52, baseType: !111, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !465, file: !62, line: 55, baseType: !112, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !462, file: !62, line: 59, baseType: !61, size: 32, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !462, file: !62, line: 62, baseType: !72, size: 32, offset: 160)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "p2l_md_region", scope: !462, file: !62, line: 65, baseType: !25, size: 32, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !462, file: !62, line: 68, baseType: !172, size: 32, offset: 224)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !462, file: !62, line: 71, baseType: !112, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "close_seq_id", scope: !462, file: !62, line: 74, baseType: !112, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "wr_cnt", scope: !462, file: !62, line: 77, baseType: !112, size: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "df_p2l_map", scope: !462, file: !62, line: 80, baseType: !233, size: 64, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "p2l_map_checksum", scope: !462, file: !62, line: 83, baseType: !164, size: 32, offset: 512)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !462, file: !62, line: 86, baseType: !479, size: 32224, offset: 544)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 32224, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 4028)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_dma_md", scope: !458, file: !73, line: 96, baseType: !421, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "p2l_ckpt", scope: !439, file: !73, line: 100, baseType: !484, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_p2l_ckpt", file: !73, line: 100, flags: DIFlagFwdDecl)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_rq", scope: !416, file: !55, line: 107, baseType: !487, size: 1024, offset: 576)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_basic_rq", file: !86, line: 255, size: 1024, elements: !488)
!488 = !{!489, !490, !497, !498, !499, !500, !508}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !487, file: !86, line: 256, baseType: !131, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "qentry", scope: !487, file: !86, line: 259, baseType: !491, size: 128, offset: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !487, file: !86, line: 259, size: 128, elements: !492)
!492 = !{!493, !495}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !491, file: !86, line: 259, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !491, file: !86, line: 259, baseType: !496, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !487, file: !86, line: 262, baseType: !112, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "io_payload", scope: !487, file: !86, line: 265, baseType: !110, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "success", scope: !487, file: !86, line: 268, baseType: !176, size: 8, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !487, file: !86, line: 277, baseType: !501, size: 128, offset: 384)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !487, file: !86, line: 271, size: 128, elements: !502)
!502 = !{!503, !507}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !501, file: !86, line: 273, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !494}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !501, file: !86, line: 276, baseType: !110, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !487, file: !86, line: 291, baseType: !509, size: 512, offset: 512)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !487, file: !86, line: 280, size: 512, elements: !510)
!510 = !{!511, !512, !576, !577}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !509, file: !86, line: 282, baseType: !111, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "band", scope: !509, file: !86, line: 285, baseType: !513, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_band", file: !62, line: 91, size: 3072, elements: !515)
!515 = !{!516, !517, !518, !519, !542, !543, !544, !545, !546, !547, !548, !549, !555, !571}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !514, file: !62, line: 93, baseType: !131, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !514, file: !62, line: 95, baseType: !461, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !514, file: !62, line: 98, baseType: !112, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !514, file: !62, line: 116, baseType: !520, size: 256, offset: 192)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !514, file: !62, line: 101, size: 256, elements: !521)
!521 = !{!522, !523, !528, !541}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !520, file: !62, line: 103, baseType: !110, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "state_change_fn", scope: !520, file: !62, line: 106, baseType: !524, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "ftl_band_state_change_fn", file: !62, line: 43, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !513}
!528 = !DIDerivedType(tag: DW_TAG_member, scope: !520, file: !62, line: 109, baseType: !529, size: 64, offset: 128)
!529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !520, file: !62, line: 109, size: 64, elements: !530)
!530 = !{!531, !536}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ops_fn", scope: !529, file: !62, line: 110, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "ftl_band_ops_cb", file: !62, line: 44, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !513, !110, !176}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "md_fn", scope: !529, file: !62, line: 111, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "ftl_band_md_cb", file: !62, line: 45, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !513, !110, !77}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "cnt", scope: !520, file: !62, line: 115, baseType: !112, size: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "p2l_map", scope: !514, file: !62, line: 119, baseType: !439, size: 384, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "reloc", scope: !514, file: !62, line: 122, baseType: !176, size: 8, offset: 832)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !514, file: !62, line: 125, baseType: !164, size: 32, offset: 864)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "phys_id", scope: !514, file: !62, line: 131, baseType: !164, size: 32, offset: 896)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "start_addr", scope: !514, file: !62, line: 134, baseType: !111, size: 64, offset: 960)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "tail_md_addr", scope: !514, file: !62, line: 137, baseType: !111, size: 64, offset: 1024)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_rq", scope: !514, file: !62, line: 140, baseType: !487, size: 1024, offset: 1088)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "queue_entry", scope: !514, file: !62, line: 147, baseType: !550, size: 128, offset: 2112)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !514, file: !62, line: 147, size: 128, elements: !551)
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !550, file: !62, line: 147, baseType: !513, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !550, file: !62, line: 147, baseType: !554, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "md_persist_entry_ctx", scope: !514, file: !62, line: 150, baseType: !556, size: 768, offset: 2240)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_md_io_entry_ctx", file: !49, line: 101, size: 768, elements: !557)
!557 = !{!558, !559, !560, !565, !566, !567, !568, !569, !570}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !556, file: !49, line: 102, baseType: !164, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !556, file: !49, line: 103, baseType: !101, size: 32, offset: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !556, file: !49, line: 104, baseType: !561, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "ftl_md_io_entry_cb", file: !49, line: 99, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !101, !110}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "cb_arg", scope: !556, file: !49, line: 105, baseType: !110, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !556, file: !49, line: 106, baseType: !249, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "start_entry", scope: !556, file: !49, line: 107, baseType: !112, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !556, file: !49, line: 108, baseType: !110, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "vss_buffer", scope: !556, file: !49, line: 109, baseType: !110, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_io_wait", scope: !556, file: !49, line: 110, baseType: !281, size: 320, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "validate_cb", scope: !514, file: !62, line: 153, baseType: !572, size: 64, offset: 3008)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "ftl_band_validate_md_cb", file: !62, line: 46, baseType: !573)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !513, !176}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !509, file: !86, line: 288, baseType: !415, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_io_wait", scope: !509, file: !86, line: 290, baseType: !281, size: 320, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !416, file: !55, line: 109, baseType: !579, size: 128, offset: 1600)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !416, file: !55, line: 109, size: 128, elements: !580)
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !579, file: !55, line: 109, baseType: !415, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !579, file: !55, line: 109, baseType: !583, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "recovery", scope: !416, file: !55, line: 112, baseType: !176, size: 8, offset: 1728)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "compaction_start_tsc", scope: !416, file: !55, line: 115, baseType: !112, size: 64, offset: 1792)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "compaction_length_tsc", scope: !416, file: !55, line: 118, baseType: !112, size: 64, offset: 1856)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "md_persist_entry_ctx", scope: !416, file: !55, line: 121, baseType: !556, size: 768, offset: 1920)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_free_list", scope: !400, file: !55, line: 173, baseType: !589, size: 128, offset: 832)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !400, file: !55, line: 173, size: 128, elements: !590)
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !589, file: !55, line: 173, baseType: !415, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !589, file: !55, line: 173, baseType: !583, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_free_count", scope: !400, file: !55, line: 174, baseType: !112, size: 64, offset: 960)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_open_list", scope: !400, file: !55, line: 177, baseType: !595, size: 128, offset: 1024)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !400, file: !55, line: 177, size: 128, elements: !596)
!596 = !{!597, !598}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !595, file: !55, line: 177, baseType: !415, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !595, file: !55, line: 177, baseType: !583, size: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_open_count", scope: !400, file: !55, line: 178, baseType: !112, size: 64, offset: 1152)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_full_list", scope: !400, file: !55, line: 181, baseType: !601, size: 128, offset: 1216)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !400, file: !55, line: 181, size: 128, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !601, file: !55, line: 181, baseType: !415, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !601, file: !55, line: 181, baseType: !583, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_full_count", scope: !400, file: !55, line: 182, baseType: !112, size: 64, offset: 1344)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_comp_list", scope: !400, file: !55, line: 185, baseType: !607, size: 128, offset: 1408)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !400, file: !55, line: 185, size: 128, elements: !608)
!608 = !{!609, !610}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !607, file: !55, line: 185, baseType: !415, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !607, file: !55, line: 185, baseType: !583, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_comp_count", scope: !400, file: !55, line: 186, baseType: !112, size: 64, offset: 1536)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "needs_free_persist_list", scope: !400, file: !55, line: 189, baseType: !613, size: 128, offset: 1600)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !400, file: !55, line: 189, size: 128, elements: !614)
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !613, file: !55, line: 189, baseType: !415, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !613, file: !55, line: 189, baseType: !583, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_free_persist_count", scope: !400, file: !55, line: 190, baseType: !112, size: 64, offset: 1728)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "compactor_list", scope: !400, file: !55, line: 192, baseType: !619, size: 128, offset: 1792)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !400, file: !55, line: 192, size: 128, elements: !620)
!620 = !{!621, !734}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !619, file: !55, line: 192, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_nv_cache_compactor", file: !55, line: 124, size: 640, elements: !624)
!624 = !{!625, !626, !726, !727, !733}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "nv_cache", scope: !623, file: !55, line: 125, baseType: !419, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "wr", scope: !623, file: !55, line: 126, baseType: !627, size: 64, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_rq", file: !86, line: 181, size: 2304, elements: !629)
!629 = !{!630, !631, !637, !638, !639, !640, !641, !650, !651, !652, !665, !673, !679, !680}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !628, file: !86, line: 182, baseType: !131, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "qentry", scope: !628, file: !86, line: 185, baseType: !632, size: 128, offset: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !628, file: !86, line: 185, size: 128, elements: !633)
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !632, file: !86, line: 185, baseType: !627, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !632, file: !86, line: 185, baseType: !636, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !628, file: !86, line: 188, baseType: !112, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "io_md", scope: !628, file: !86, line: 191, baseType: !110, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "io_md_size", scope: !628, file: !86, line: 194, baseType: !112, size: 64, offset: 320)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "io_vec_size", scope: !628, file: !86, line: 197, baseType: !112, size: 64, offset: 384)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "io_vec", scope: !628, file: !86, line: 200, baseType: !642, size: 64, offset: 448)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !644, line: 26, size: 128, elements: !645)
!644 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!645 = !{!646, !647}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !643, file: !644, line: 28, baseType: !110, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !643, file: !644, line: 29, baseType: !648, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !649, line: 70, baseType: !116)
!649 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!650 = !DIDerivedType(tag: DW_TAG_member, name: "io_payload", scope: !628, file: !86, line: 203, baseType: !110, size: 64, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "success", scope: !628, file: !86, line: 206, baseType: !176, size: 8, offset: 576)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !628, file: !86, line: 222, baseType: !653, size: 256, offset: 640)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !628, file: !86, line: 209, size: 256, elements: !654)
!654 = !{!655, !659, !663, !664}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !653, file: !86, line: 211, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !627}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !653, file: !86, line: 214, baseType: !660, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !627, !513, !112, !112}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !653, file: !86, line: 218, baseType: !110, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "compaction", scope: !653, file: !86, line: 221, baseType: !176, size: 8, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !628, file: !86, line: 235, baseType: !666, size: 160, offset: 896)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !628, file: !86, line: 225, size: 160, elements: !667)
!667 = !{!668, !669, !670, !671, !672}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !666, file: !86, line: 226, baseType: !164, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !666, file: !86, line: 228, baseType: !164, size: 32, offset: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "qd", scope: !666, file: !86, line: 231, baseType: !164, size: 32, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !666, file: !86, line: 233, baseType: !164, size: 32, offset: 96)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !666, file: !86, line: 234, baseType: !101, size: 32, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !628, file: !86, line: 246, baseType: !674, size: 448, offset: 1088)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !628, file: !86, line: 238, size: 448, elements: !675)
!675 = !{!676, !677, !678}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !674, file: !86, line: 240, baseType: !111, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "band", scope: !674, file: !86, line: 243, baseType: !513, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_io_wait", scope: !674, file: !86, line: 245, baseType: !281, size: 320, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "md_persist_entry_ctx", scope: !628, file: !86, line: 249, baseType: !556, size: 768, offset: 1536)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !628, file: !86, line: 251, baseType: !681, offset: 2304)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, elements: !724)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_rq_entry", file: !86, line: 136, size: 1344, elements: !683)
!683 = !{!684, !685, !686, !687, !688, !689, !691, !695, !699, !718}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "io_payload", scope: !682, file: !86, line: 138, baseType: !110, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "io_md", scope: !682, file: !86, line: 140, baseType: !110, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !682, file: !86, line: 146, baseType: !111, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "lba", scope: !682, file: !86, line: 149, baseType: !112, size: 64, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "seq_id", scope: !682, file: !86, line: 152, baseType: !112, size: 64, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !682, file: !86, line: 155, baseType: !690, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !682, file: !86, line: 159, baseType: !692, size: 64, offset: 384)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !682, file: !86, line: 157, size: 64, elements: !693)
!693 = !{!694}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !692, file: !86, line: 158, baseType: !110, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !682, file: !86, line: 164, baseType: !696, size: 64, offset: 448)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !682, file: !86, line: 162, size: 64, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "band", scope: !696, file: !86, line: 163, baseType: !513, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "l2p_pin_ctx", scope: !682, file: !86, line: 167, baseType: !700, size: 384, offset: 512)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_l2p_pin_ctx", file: !701, line: 26, size: 384, elements: !702)
!701 = !DIFile(filename: "./ftl_l2p.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "4e1308098fc9e1827f9d87efff6ff9b7")
!702 = !{!703, !704, !705, !711, !712}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "lba", scope: !700, file: !701, line: 27, baseType: !112, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !700, file: !701, line: 28, baseType: !112, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !700, file: !701, line: 29, baseType: !706, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "ftl_l2p_pin_cb", file: !701, line: 20, baseType: !707)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{null, !131, !101, !710}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "cb_ctx", scope: !700, file: !701, line: 30, baseType: !110, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !700, file: !701, line: 31, baseType: !713, size: 128, offset: 256)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !700, file: !701, line: 31, size: 128, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !713, file: !701, line: 31, baseType: !710, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !713, file: !701, line: 31, baseType: !717, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_io", scope: !682, file: !86, line: 173, baseType: !719, size: 448, offset: 896)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !682, file: !86, line: 169, size: 448, elements: !720)
!720 = !{!721, !722, !723}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "offset_blocks", scope: !719, file: !86, line: 170, baseType: !112, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !719, file: !86, line: 171, baseType: !112, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "wait_entry", scope: !719, file: !86, line: 172, baseType: !281, size: 320, offset: 128)
!724 = !{!725}
!725 = !DISubrange(count: -1)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "rd", scope: !623, file: !55, line: 127, baseType: !627, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !623, file: !55, line: 128, baseType: !728, size: 128, offset: 192)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !623, file: !55, line: 128, size: 128, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !728, file: !55, line: 128, baseType: !622, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !728, file: !55, line: 128, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_io_wait", scope: !623, file: !55, line: 129, baseType: !281, size: 320, offset: 320)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !619, file: !55, line: 192, baseType: !732, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "compaction_active_count", scope: !400, file: !55, line: 193, baseType: !112, size: 64, offset: 1920)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_compaction_threshold", scope: !400, file: !55, line: 194, baseType: !112, size: 64, offset: 1984)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !400, file: !55, line: 196, baseType: !415, size: 64, offset: 2048)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "last_seq_id", scope: !400, file: !55, line: 198, baseType: !112, size: 64, offset: 2112)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_free_target", scope: !400, file: !55, line: 200, baseType: !112, size: 64, offset: 2176)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "compaction_sma", scope: !400, file: !55, line: 203, baseType: !741, size: 64, offset: 2240)
!741 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "compaction_recent_bw", scope: !400, file: !55, line: 212, baseType: !743, size: 1216, offset: 2304)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compaction_bw_stats", file: !55, line: 207, size: 1216, elements: !744)
!744 = !{!745, !747, !750, !751}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !743, file: !55, line: 208, baseType: !746, size: 1024)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 1024, elements: !153)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !743, file: !55, line: 209, baseType: !748, size: 64, offset: 1024)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !649, line: 59, baseType: !749)
!749 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !743, file: !55, line: 210, baseType: !157, size: 64, offset: 1088)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "sum", scope: !743, file: !55, line: 211, baseType: !741, size: 64, offset: 1152)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !400, file: !55, line: 219, baseType: !753, size: 256, offset: 3520)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !400, file: !55, line: 214, size: 256, elements: !754)
!754 = !{!755, !756, !757, !758}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "interval_tsc", scope: !753, file: !55, line: 215, baseType: !112, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "start_tsc", scope: !753, file: !55, line: 216, baseType: !112, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_submitted", scope: !753, file: !55, line: 217, baseType: !112, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_submitted_limit", scope: !753, file: !55, line: 218, baseType: !112, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "p2l_pool", scope: !132, file: !133, line: 82, baseType: !379, size: 64, offset: 22592)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "p2l_pool_md", scope: !132, file: !133, line: 85, baseType: !249, size: 64, offset: 22656)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "band_md_pool", scope: !132, file: !133, line: 88, baseType: !379, size: 64, offset: 22720)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !132, file: !133, line: 91, baseType: !763, size: 64, offset: 22784)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_trace", file: !764, line: 19, size: 64, elements: !765)
!764 = !DIFile(filename: "./ftl_trace.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "738b8251f0db103d44568a9a6ca7c3e7")
!765 = !{!766}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !763, file: !764, line: 21, baseType: !112, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !132, file: !133, line: 94, baseType: !768, size: 4160, offset: 22848)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_stats", file: !137, line: 57, size: 4160, elements: !769)
!769 = !{!770, !772, !773}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !768, file: !137, line: 63, baseType: !771, size: 256)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 256, elements: !21)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "io_activity_total", scope: !768, file: !137, line: 69, baseType: !112, size: 64, offset: 256)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !768, file: !137, line: 71, baseType: !774, size: 3840, offset: 320)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !775, size: 3840, elements: !789)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_stats_entry", file: !137, line: 42, size: 640, elements: !776)
!776 = !{!777, !788}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !775, file: !137, line: 43, baseType: !778, size: 320)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_stats_group", file: !137, line: 36, size: 320, elements: !779)
!779 = !{!780, !781, !782}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ios", scope: !778, file: !137, line: 37, baseType: !112, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !778, file: !137, line: 38, baseType: !112, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "errors", scope: !778, file: !137, line: 39, baseType: !783, size: 192, offset: 128)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_stats_error", file: !137, line: 30, size: 192, elements: !784)
!784 = !{!785, !786, !787}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "media", scope: !783, file: !137, line: 31, baseType: !112, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !783, file: !137, line: 32, baseType: !112, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !783, file: !137, line: 33, baseType: !112, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !775, file: !137, line: 44, baseType: !778, size: 320, offset: 320)
!789 = !{!790}
!790 = !DISubrange(count: 6)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "bands", scope: !132, file: !133, line: 97, baseType: !513, size: 64, offset: 27008)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "num_bands", scope: !132, file: !133, line: 100, baseType: !112, size: 64, offset: 27072)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "next_band", scope: !132, file: !133, line: 103, baseType: !513, size: 64, offset: 27136)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "free_bands", scope: !132, file: !133, line: 106, baseType: !795, size: 128, offset: 27200)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !132, file: !133, line: 106, size: 128, elements: !796)
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !795, file: !133, line: 106, baseType: !513, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !795, file: !133, line: 106, baseType: !554, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "shut_bands", scope: !132, file: !133, line: 109, baseType: !800, size: 128, offset: 27328)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !132, file: !133, line: 109, size: 128, elements: !801)
!801 = !{!802, !803}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !800, file: !133, line: 109, baseType: !513, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !800, file: !133, line: 109, baseType: !554, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "num_free", scope: !132, file: !133, line: 112, baseType: !112, size: 64, offset: 27456)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "l2p", scope: !132, file: !133, line: 115, baseType: !110, size: 64, offset: 27520)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "l2p_deferred_pins", scope: !132, file: !133, line: 118, baseType: !807, size: 128, offset: 27584)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !132, file: !133, line: 118, size: 128, elements: !808)
!808 = !{!809, !810}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !807, file: !133, line: 118, baseType: !710, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !807, file: !133, line: 118, baseType: !717, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "num_lbas", scope: !132, file: !133, line: 121, baseType: !112, size: 64, offset: 27712)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "valid_map", scope: !132, file: !133, line: 124, baseType: !444, size: 64, offset: 27776)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "md_size", scope: !132, file: !133, line: 127, baseType: !112, size: 64, offset: 27840)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "xfer_size", scope: !132, file: !133, line: 130, baseType: !112, size: 64, offset: 27904)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !132, file: !133, line: 133, baseType: !101, size: 32, offset: 27968)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "num_inflight", scope: !132, file: !133, line: 136, baseType: !164, size: 32, offset: 28000)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "reloc", scope: !132, file: !133, line: 139, baseType: !127, size: 64, offset: 28032)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "core_thread", scope: !132, file: !133, line: 142, baseType: !819, size: 64, offset: 28096)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_thread", file: !246, line: 40, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ioch", scope: !132, file: !133, line: 147, baseType: !244, size: 64, offset: 28160)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "base_ioch", scope: !132, file: !133, line: 150, baseType: !244, size: 64, offset: 28224)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "core_poller", scope: !132, file: !133, line: 153, baseType: !382, size: 64, offset: 28288)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "rd_sq", scope: !132, file: !133, line: 156, baseType: !825, size: 128, offset: 28352)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !132, file: !133, line: 156, size: 128, elements: !826)
!826 = !{!827, !866}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !825, file: !133, line: 156, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_io", file: !86, line: 58, size: 2176, elements: !830)
!830 = !{!831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !851, !852, !853, !854, !855, !861, !862, !863, !865}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !829, file: !86, line: 60, baseType: !131, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ioch", scope: !829, file: !86, line: 63, baseType: !244, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "lba", scope: !829, file: !86, line: 66, baseType: !112, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !829, file: !86, line: 69, baseType: !111, size: 64, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !829, file: !86, line: 72, baseType: !157, size: 64, offset: 256)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !829, file: !86, line: 75, baseType: !157, size: 64, offset: 320)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !829, file: !86, line: 78, baseType: !642, size: 64, offset: 384)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !829, file: !86, line: 81, baseType: !110, size: 64, offset: 448)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "iov_cnt", scope: !829, file: !86, line: 84, baseType: !157, size: 64, offset: 512)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "iov_pos", scope: !829, file: !86, line: 87, baseType: !157, size: 64, offset: 576)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "iov_off", scope: !829, file: !86, line: 90, baseType: !157, size: 64, offset: 640)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "band", scope: !829, file: !86, line: 93, baseType: !513, size: 64, offset: 704)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !829, file: !86, line: 96, baseType: !101, size: 32, offset: 768)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "req_cnt", scope: !829, file: !86, line: 99, baseType: !157, size: 64, offset: 832)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "cb_ctx", scope: !829, file: !86, line: 102, baseType: !110, size: 64, offset: 896)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "user_fn", scope: !829, file: !86, line: 105, baseType: !847, size: 64, offset: 960)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_ftl_fn", file: !137, line: 157, baseType: !848)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !110, !101}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !829, file: !86, line: 108, baseType: !101, size: 32, offset: 1024)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !829, file: !86, line: 111, baseType: !85, size: 32, offset: 1056)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !829, file: !86, line: 114, baseType: !176, size: 8, offset: 1088)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !829, file: !86, line: 117, baseType: !112, size: 64, offset: 1152)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "queue_entry", scope: !829, file: !86, line: 120, baseType: !856, size: 128, offset: 1216)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !829, file: !86, line: 120, size: 128, elements: !857)
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !856, file: !86, line: 120, baseType: !828, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !856, file: !86, line: 120, baseType: !860, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "nv_cache_chunk", scope: !829, file: !86, line: 123, baseType: !415, size: 64, offset: 1344)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "l2p_pin_ctx", scope: !829, file: !86, line: 126, baseType: !700, size: 384, offset: 1408)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !829, file: !86, line: 130, baseType: !864, size: 64, offset: 1792)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_io_wait", scope: !829, file: !86, line: 132, baseType: !281, size: 320, offset: 1856)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !825, file: !133, line: 156, baseType: !860, size: 64, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "wr_sq", scope: !132, file: !133, line: 159, baseType: !868, size: 128, offset: 28480)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !132, file: !133, line: 159, size: 128, elements: !869)
!869 = !{!870, !871}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !868, file: !133, line: 159, baseType: !828, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !868, file: !133, line: 159, baseType: !860, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_sq", scope: !132, file: !133, line: 162, baseType: !873, size: 128, offset: 28608)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !132, file: !133, line: 162, size: 128, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !873, file: !133, line: 162, baseType: !828, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !873, file: !133, line: 162, baseType: !860, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_map", scope: !132, file: !133, line: 165, baseType: !444, size: 64, offset: 28736)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_map_md", scope: !132, file: !133, line: 166, baseType: !249, size: 64, offset: 28800)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_qd", scope: !132, file: !133, line: 167, baseType: !157, size: 64, offset: 28864)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_in_progress", scope: !132, file: !133, line: 168, baseType: !176, size: 8, offset: 28928)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "writer_user", scope: !132, file: !133, line: 171, baseType: !882, size: 704, offset: 28992)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_writer", file: !883, line: 14, size: 704, elements: !884)
!883 = !DIFile(filename: "./ftl_writer.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/ftl", checksumkind: CSK_MD5, checksum: "7cf22c54234e488fa1c5090db7da82bf")
!884 = !{!885, !886, !891, !892, !893, !894, !899, !900, !901, !902}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !882, file: !883, line: 15, baseType: !131, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "rq_queue", scope: !882, file: !883, line: 17, baseType: !887, size: 128, offset: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !883, line: 17, size: 128, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !887, file: !883, line: 17, baseType: !627, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !887, file: !883, line: 17, baseType: !636, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "band", scope: !882, file: !883, line: 20, baseType: !513, size: 64, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "num_bands", scope: !882, file: !883, line: 23, baseType: !112, size: 64, offset: 256)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "next_band", scope: !882, file: !883, line: 26, baseType: !513, size: 64, offset: 320)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "full_bands", scope: !882, file: !883, line: 29, baseType: !895, size: 128, offset: 384)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !883, line: 29, size: 128, elements: !896)
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !895, file: !883, line: 29, baseType: !513, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !895, file: !883, line: 29, baseType: !554, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !882, file: !883, line: 32, baseType: !101, size: 32, offset: 512)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "halt", scope: !882, file: !883, line: 35, baseType: !176, size: 8, offset: 544)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "writer_type", scope: !882, file: !883, line: 38, baseType: !72, size: 32, offset: 576)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "last_seq_id", scope: !882, file: !883, line: 40, baseType: !112, size: 64, offset: 640)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "writer_gc", scope: !132, file: !133, line: 174, baseType: !882, size: 704, offset: 29696)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "num_logical_bands_in_physical", scope: !132, file: !133, line: 176, baseType: !164, size: 32, offset: 30400)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "init_retry", scope: !132, file: !133, line: 179, baseType: !176, size: 8, offset: 30432)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "p2l_ckpt", scope: !132, file: !133, line: 187, baseType: !907, size: 256, offset: 30464)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !132, file: !133, line: 182, size: 256, elements: !908)
!908 = !{!909, !915}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !907, file: !133, line: 184, baseType: !910, size: 128)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !907, file: !133, line: 184, size: 128, elements: !911)
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !910, file: !133, line: 184, baseType: !484, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !910, file: !133, line: 184, baseType: !914, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !907, file: !133, line: 186, baseType: !916, size: 128, offset: 128)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !907, file: !133, line: 186, size: 128, elements: !917)
!917 = !{!918, !919}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !916, file: !133, line: 186, baseType: !484, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !916, file: !133, line: 186, baseType: !914, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "halt", scope: !128, file: !2, line: 49, baseType: !176, size: 8, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "band", scope: !128, file: !2, line: 52, baseType: !513, size: 64, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "band_done", scope: !128, file: !2, line: 55, baseType: !923, size: 128, offset: 192)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !128, file: !2, line: 55, size: 128, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !923, file: !2, line: 55, baseType: !513, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !923, file: !2, line: 55, baseType: !554, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "band_done_count", scope: !128, file: !2, line: 56, baseType: !157, size: 64, offset: 320)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "band_waiting", scope: !128, file: !2, line: 59, baseType: !176, size: 8, offset: 384)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "max_qdepth", scope: !128, file: !2, line: 62, baseType: !157, size: 64, offset: 448)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "move_buffer", scope: !128, file: !2, line: 65, baseType: !931, size: 64, offset: 512)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ftl_reloc_move", file: !2, line: 28, size: 384, elements: !933)
!933 = !{!934, !935, !936, !937, !938}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !932, file: !2, line: 30, baseType: !131, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "reloc", scope: !932, file: !2, line: 32, baseType: !127, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "rq", scope: !932, file: !2, line: 35, baseType: !627, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !932, file: !2, line: 38, baseType: !91, size: 32, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "qentry", scope: !932, file: !2, line: 41, baseType: !939, size: 128, offset: 256)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !932, file: !2, line: 41, size: 128, elements: !940)
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !939, file: !2, line: 41, baseType: !931, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !939, file: !2, line: 41, baseType: !943, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "move_queue", scope: !128, file: !2, line: 68, baseType: !945, size: 640, offset: 576)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !946, size: 640, elements: !950)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !128, file: !2, line: 68, size: 128, elements: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !946, file: !2, line: 68, baseType: !931, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !946, file: !2, line: 68, baseType: !943, size: 64, offset: 64)
!950 = !{!951}
!951 = !DISubrange(count: 5)
!952 = !{!953, !954, !955, !956, !957, !958}
!953 = !DILocalVariable(name: "dev", arg: 1, scope: !124, file: !2, line: 105, type: !131)
!954 = !DILocalVariable(name: "reloc", scope: !124, file: !2, line: 107, type: !127)
!955 = !DILocalVariable(name: "move", scope: !124, file: !2, line: 108, type: !931)
!956 = !DILocalVariable(name: "i", scope: !124, file: !2, line: 109, type: !157)
!957 = !DILocalVariable(name: "count", scope: !124, file: !2, line: 109, type: !157)
!958 = !DILabel(scope: !124, name: "error", file: !2, line: 143)
!959 = !DILocation(line: 105, column: 37, scope: !124)
!960 = !DILocation(line: 107, column: 2, scope: !124)
!961 = !DILocation(line: 107, column: 20, scope: !124)
!962 = !DILocation(line: 108, column: 2, scope: !124)
!963 = !DILocation(line: 108, column: 25, scope: !124)
!964 = !DILocation(line: 109, column: 2, scope: !124)
!965 = !DILocation(line: 109, column: 9, scope: !124)
!966 = !DILocation(line: 109, column: 12, scope: !124)
!967 = !DILocation(line: 111, column: 10, scope: !124)
!968 = !DILocation(line: 111, column: 8, scope: !124)
!969 = !DILocation(line: 112, column: 7, scope: !970)
!970 = distinct !DILexicalBlock(scope: !124, file: !2, line: 112, column: 6)
!971 = !DILocation(line: 112, column: 6, scope: !124)
!972 = !DILocation(line: 113, column: 3, scope: !973)
!973 = distinct !DILexicalBlock(scope: !970, file: !2, line: 112, column: 14)
!974 = !DILocation(line: 116, column: 15, scope: !124)
!975 = !DILocation(line: 116, column: 2, scope: !124)
!976 = !DILocation(line: 116, column: 9, scope: !124)
!977 = !DILocation(line: 116, column: 13, scope: !124)
!978 = !DILocation(line: 117, column: 2, scope: !124)
!979 = !DILocation(line: 117, column: 9, scope: !124)
!980 = !DILocation(line: 117, column: 14, scope: !124)
!981 = !DILocation(line: 118, column: 22, scope: !124)
!982 = !DILocation(line: 118, column: 27, scope: !124)
!983 = !DILocation(line: 118, column: 31, scope: !124)
!984 = !DILocation(line: 118, column: 2, scope: !124)
!985 = !DILocation(line: 118, column: 9, scope: !124)
!986 = !DILocation(line: 118, column: 20, scope: !124)
!987 = !DILocation(line: 120, column: 30, scope: !124)
!988 = !DILocation(line: 120, column: 37, scope: !124)
!989 = !DILocation(line: 120, column: 23, scope: !124)
!990 = !DILocation(line: 120, column: 2, scope: !124)
!991 = !DILocation(line: 120, column: 9, scope: !124)
!992 = !DILocation(line: 120, column: 21, scope: !124)
!993 = !DILocation(line: 121, column: 7, scope: !994)
!994 = distinct !DILexicalBlock(scope: !124, file: !2, line: 121, column: 6)
!995 = !DILocation(line: 121, column: 14, scope: !994)
!996 = !DILocation(line: 121, column: 6, scope: !124)
!997 = !DILocation(line: 122, column: 3, scope: !998)
!998 = distinct !DILexicalBlock(scope: !994, file: !2, line: 121, column: 27)
!999 = !DILocation(line: 123, column: 3, scope: !998)
!1000 = !DILocation(line: 127, column: 8, scope: !124)
!1001 = !DILocation(line: 128, column: 9, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !124, file: !2, line: 128, column: 2)
!1003 = !DILocation(line: 128, column: 7, scope: !1002)
!1004 = !DILocation(line: 128, column: 14, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1002, file: !2, line: 128, column: 2)
!1006 = !DILocation(line: 128, column: 18, scope: !1005)
!1007 = !DILocation(line: 128, column: 16, scope: !1005)
!1008 = !DILocation(line: 128, column: 2, scope: !1002)
!1009 = !DILocation(line: 129, column: 3, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !2, line: 128, column: 30)
!1011 = !DILocation(line: 129, column: 3, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 129, column: 3)
!1013 = !DILocation(line: 130, column: 2, scope: !1010)
!1014 = !DILocation(line: 128, column: 25, scope: !1005)
!1015 = !DILocation(line: 128, column: 2, scope: !1005)
!1016 = distinct !{!1016, !1008, !1017}
!1017 = !DILocation(line: 130, column: 2, scope: !1002)
!1018 = !DILocation(line: 132, column: 9, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !124, file: !2, line: 132, column: 2)
!1020 = !DILocation(line: 132, column: 7, scope: !1019)
!1021 = !DILocation(line: 132, column: 14, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 132, column: 2)
!1023 = !DILocation(line: 132, column: 18, scope: !1022)
!1024 = !DILocation(line: 132, column: 25, scope: !1022)
!1025 = !DILocation(line: 132, column: 16, scope: !1022)
!1026 = !DILocation(line: 132, column: 2, scope: !1019)
!1027 = !DILocation(line: 133, column: 11, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1022, file: !2, line: 132, column: 42)
!1029 = !DILocation(line: 133, column: 18, scope: !1028)
!1030 = !DILocation(line: 133, column: 30, scope: !1028)
!1031 = !DILocation(line: 133, column: 8, scope: !1028)
!1032 = !DILocation(line: 135, column: 17, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1028, file: !2, line: 135, column: 7)
!1034 = !DILocation(line: 135, column: 24, scope: !1033)
!1035 = !DILocation(line: 135, column: 7, scope: !1033)
!1036 = !DILocation(line: 135, column: 7, scope: !1028)
!1037 = !DILocation(line: 136, column: 4, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !2, line: 135, column: 31)
!1039 = !DILocation(line: 138, column: 2, scope: !1028)
!1040 = !DILocation(line: 132, column: 37, scope: !1022)
!1041 = !DILocation(line: 132, column: 2, scope: !1022)
!1042 = distinct !{!1042, !1026, !1043}
!1043 = !DILocation(line: 138, column: 2, scope: !1019)
!1044 = !DILocation(line: 140, column: 2, scope: !124)
!1045 = !DILocation(line: 140, column: 2, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !124, file: !2, line: 140, column: 2)
!1047 = !DILocation(line: 142, column: 9, scope: !124)
!1048 = !DILocation(line: 142, column: 2, scope: !124)
!1049 = !DILocation(line: 143, column: 1, scope: !124)
!1050 = !DILocation(line: 144, column: 17, scope: !124)
!1051 = !DILocation(line: 144, column: 2, scope: !124)
!1052 = !DILocation(line: 145, column: 2, scope: !124)
!1053 = !DILocation(line: 146, column: 1, scope: !124)
!1054 = !DISubprogram(name: "calloc", scope: !1055, file: !1055, line: 543, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1055 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!110, !648, !648}
!1058 = !DISubprogram(name: "spdk_log", scope: !100, file: !100, line: 156, type: !1059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{null, !99, !214, !1061, !214, !214, null}
!1061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!1062 = distinct !DISubprogram(name: "move_init", scope: !2, file: !2, line: 87, type: !1063, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1065)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!101, !127, !931}
!1065 = !{!1066, !1067}
!1066 = !DILocalVariable(name: "reloc", arg: 1, scope: !1062, file: !2, line: 87, type: !127)
!1067 = !DILocalVariable(name: "mv", arg: 2, scope: !1062, file: !2, line: 87, type: !931)
!1068 = !DILocation(line: 87, column: 29, scope: !1062)
!1069 = !DILocation(line: 87, column: 59, scope: !1062)
!1070 = !DILocation(line: 89, column: 2, scope: !1062)
!1071 = !DILocation(line: 89, column: 6, scope: !1062)
!1072 = !DILocation(line: 89, column: 12, scope: !1062)
!1073 = !DILocation(line: 90, column: 2, scope: !1062)
!1074 = !DILocation(line: 90, column: 2, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 90, column: 2)
!1076 = !DILocation(line: 92, column: 14, scope: !1062)
!1077 = !DILocation(line: 92, column: 2, scope: !1062)
!1078 = !DILocation(line: 92, column: 6, scope: !1062)
!1079 = !DILocation(line: 92, column: 12, scope: !1062)
!1080 = !DILocation(line: 93, column: 12, scope: !1062)
!1081 = !DILocation(line: 93, column: 19, scope: !1062)
!1082 = !DILocation(line: 93, column: 2, scope: !1062)
!1083 = !DILocation(line: 93, column: 6, scope: !1062)
!1084 = !DILocation(line: 93, column: 10, scope: !1062)
!1085 = !DILocation(line: 94, column: 22, scope: !1062)
!1086 = !DILocation(line: 94, column: 26, scope: !1062)
!1087 = !DILocation(line: 94, column: 31, scope: !1062)
!1088 = !DILocation(line: 94, column: 35, scope: !1062)
!1089 = !DILocation(line: 94, column: 40, scope: !1062)
!1090 = !DILocation(line: 94, column: 11, scope: !1062)
!1091 = !DILocation(line: 94, column: 2, scope: !1062)
!1092 = !DILocation(line: 94, column: 6, scope: !1062)
!1093 = !DILocation(line: 94, column: 9, scope: !1062)
!1094 = !DILocation(line: 96, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 96, column: 6)
!1096 = !DILocation(line: 96, column: 11, scope: !1095)
!1097 = !DILocation(line: 96, column: 6, scope: !1062)
!1098 = !DILocation(line: 97, column: 3, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1095, file: !2, line: 96, column: 15)
!1100 = !DILocation(line: 99, column: 23, scope: !1062)
!1101 = !DILocation(line: 99, column: 2, scope: !1062)
!1102 = !DILocation(line: 99, column: 6, scope: !1062)
!1103 = !DILocation(line: 99, column: 10, scope: !1062)
!1104 = !DILocation(line: 99, column: 16, scope: !1062)
!1105 = !DILocation(line: 99, column: 21, scope: !1062)
!1106 = !DILocation(line: 101, column: 2, scope: !1062)
!1107 = !DILocation(line: 102, column: 1, scope: !1062)
!1108 = distinct !DISubprogram(name: "ftl_reloc_free", scope: !2, file: !2, line: 155, type: !1109, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1111)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !127}
!1111 = !{!1112, !1113}
!1112 = !DILocalVariable(name: "reloc", arg: 1, scope: !1108, file: !2, line: 155, type: !127)
!1113 = !DILocalVariable(name: "i", scope: !1108, file: !2, line: 157, type: !157)
!1114 = !DILocation(line: 155, column: 34, scope: !1108)
!1115 = !DILocation(line: 157, column: 2, scope: !1108)
!1116 = !DILocation(line: 157, column: 9, scope: !1108)
!1117 = !DILocation(line: 159, column: 7, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 159, column: 6)
!1119 = !DILocation(line: 159, column: 6, scope: !1108)
!1120 = !DILocation(line: 160, column: 3, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1118, file: !2, line: 159, column: 14)
!1122 = !DILocation(line: 163, column: 6, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 163, column: 6)
!1124 = !DILocation(line: 163, column: 13, scope: !1123)
!1125 = !DILocation(line: 163, column: 6, scope: !1108)
!1126 = !DILocation(line: 164, column: 10, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 164, column: 3)
!1128 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 163, column: 26)
!1129 = !DILocation(line: 164, column: 8, scope: !1127)
!1130 = !DILocation(line: 164, column: 15, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 164, column: 3)
!1132 = !DILocation(line: 164, column: 19, scope: !1131)
!1133 = !DILocation(line: 164, column: 26, scope: !1131)
!1134 = !DILocation(line: 164, column: 17, scope: !1131)
!1135 = !DILocation(line: 164, column: 3, scope: !1127)
!1136 = !DILocation(line: 165, column: 17, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 164, column: 43)
!1138 = !DILocation(line: 165, column: 24, scope: !1137)
!1139 = !DILocation(line: 165, column: 36, scope: !1137)
!1140 = !DILocation(line: 165, column: 4, scope: !1137)
!1141 = !DILocation(line: 166, column: 3, scope: !1137)
!1142 = !DILocation(line: 164, column: 38, scope: !1131)
!1143 = !DILocation(line: 164, column: 3, scope: !1131)
!1144 = distinct !{!1144, !1135, !1145}
!1145 = !DILocation(line: 166, column: 3, scope: !1127)
!1146 = !DILocation(line: 167, column: 2, scope: !1128)
!1147 = !DILocation(line: 169, column: 7, scope: !1108)
!1148 = !DILocation(line: 169, column: 14, scope: !1108)
!1149 = !DILocation(line: 169, column: 2, scope: !1108)
!1150 = !DILocation(line: 170, column: 7, scope: !1108)
!1151 = !DILocation(line: 170, column: 2, scope: !1108)
!1152 = !DILocation(line: 171, column: 1, scope: !1108)
!1153 = distinct !DISubprogram(name: "move_deinit", scope: !2, file: !2, line: 80, type: !1154, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1156)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{null, !931}
!1156 = !{!1157}
!1157 = !DILocalVariable(name: "mv", arg: 1, scope: !1153, file: !2, line: 80, type: !931)
!1158 = !DILocation(line: 80, column: 36, scope: !1153)
!1159 = !DILocation(line: 83, column: 13, scope: !1153)
!1160 = !DILocation(line: 83, column: 17, scope: !1153)
!1161 = !DILocation(line: 83, column: 2, scope: !1153)
!1162 = !DILocation(line: 84, column: 1, scope: !1153)
!1163 = !DISubprogram(name: "free", scope: !1055, file: !1055, line: 555, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1164 = distinct !DISubprogram(name: "ftl_reloc_halt", scope: !2, file: !2, line: 174, type: !1109, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1165)
!1165 = !{!1166}
!1166 = !DILocalVariable(name: "reloc", arg: 1, scope: !1164, file: !2, line: 174, type: !127)
!1167 = !DILocation(line: 174, column: 34, scope: !1164)
!1168 = !DILocation(line: 176, column: 2, scope: !1164)
!1169 = !DILocation(line: 176, column: 9, scope: !1164)
!1170 = !DILocation(line: 176, column: 14, scope: !1164)
!1171 = !DILocation(line: 177, column: 1, scope: !1164)
!1172 = distinct !DISubprogram(name: "ftl_reloc_resume", scope: !2, file: !2, line: 180, type: !1109, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1173)
!1173 = !{!1174, !1175, !1176}
!1174 = !DILocalVariable(name: "reloc", arg: 1, scope: !1172, file: !2, line: 180, type: !127)
!1175 = !DILocalVariable(name: "mv", scope: !1172, file: !2, line: 182, type: !931)
!1176 = !DILocalVariable(name: "next", scope: !1172, file: !2, line: 182, type: !931)
!1177 = !DILocation(line: 180, column: 36, scope: !1172)
!1178 = !DILocation(line: 182, column: 2, scope: !1172)
!1179 = !DILocation(line: 182, column: 25, scope: !1172)
!1180 = !DILocation(line: 182, column: 30, scope: !1172)
!1181 = !DILocation(line: 183, column: 2, scope: !1172)
!1182 = !DILocation(line: 183, column: 9, scope: !1172)
!1183 = !DILocation(line: 183, column: 14, scope: !1172)
!1184 = !DILocation(line: 185, column: 2, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 185, column: 2)
!1186 = !DILocation(line: 185, column: 2, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 185, column: 2)
!1188 = !DILocation(line: 0, scope: !1187)
!1189 = !DILocation(line: 187, column: 18, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 186, column: 13)
!1191 = !DILocation(line: 187, column: 3, scope: !1190)
!1192 = !DILocation(line: 188, column: 2, scope: !1190)
!1193 = distinct !{!1193, !1184, !1194}
!1194 = !DILocation(line: 188, column: 2, scope: !1185)
!1195 = !DILocation(line: 189, column: 1, scope: !1172)
!1196 = distinct !DISubprogram(name: "move_set_state", scope: !2, file: !2, line: 192, type: !1197, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1199)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{null, !931, !91}
!1199 = !{!1200, !1201, !1202}
!1200 = !DILocalVariable(name: "mv", arg: 1, scope: !1196, file: !2, line: 192, type: !931)
!1201 = !DILocalVariable(name: "state", arg: 2, scope: !1196, file: !2, line: 192, type: !91)
!1202 = !DILocalVariable(name: "reloc", scope: !1196, file: !2, line: 194, type: !127)
!1203 = !DILocation(line: 192, column: 39, scope: !1196)
!1204 = !DILocation(line: 192, column: 69, scope: !1196)
!1205 = !DILocation(line: 194, column: 2, scope: !1196)
!1206 = !DILocation(line: 194, column: 20, scope: !1196)
!1207 = !DILocation(line: 194, column: 28, scope: !1196)
!1208 = !DILocation(line: 194, column: 32, scope: !1196)
!1209 = !DILocation(line: 196, column: 10, scope: !1196)
!1210 = !DILocation(line: 196, column: 2, scope: !1196)
!1211 = !DILocation(line: 198, column: 3, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 196, column: 17)
!1213 = !DILocation(line: 198, column: 7, scope: !1212)
!1214 = !DILocation(line: 198, column: 11, scope: !1212)
!1215 = !DILocation(line: 198, column: 17, scope: !1212)
!1216 = !DILocation(line: 198, column: 20, scope: !1212)
!1217 = !DILocation(line: 199, column: 3, scope: !1212)
!1218 = !DILocation(line: 199, column: 7, scope: !1212)
!1219 = !DILocation(line: 199, column: 11, scope: !1212)
!1220 = !DILocation(line: 199, column: 17, scope: !1212)
!1221 = !DILocation(line: 199, column: 23, scope: !1212)
!1222 = !DILocation(line: 200, column: 3, scope: !1212)
!1223 = !DILocation(line: 200, column: 7, scope: !1212)
!1224 = !DILocation(line: 200, column: 11, scope: !1212)
!1225 = !DILocation(line: 200, column: 16, scope: !1212)
!1226 = !DILocation(line: 200, column: 20, scope: !1212)
!1227 = !DILocation(line: 201, column: 3, scope: !1212)
!1228 = !DILocation(line: 201, column: 7, scope: !1212)
!1229 = !DILocation(line: 201, column: 11, scope: !1212)
!1230 = !DILocation(line: 201, column: 16, scope: !1212)
!1231 = !DILocation(line: 201, column: 22, scope: !1212)
!1232 = !DILocation(line: 202, column: 3, scope: !1212)
!1233 = !DILocation(line: 202, column: 7, scope: !1212)
!1234 = !DILocation(line: 202, column: 11, scope: !1212)
!1235 = !DILocation(line: 202, column: 19, scope: !1212)
!1236 = !DILocation(line: 203, column: 3, scope: !1212)
!1237 = !DILocation(line: 206, column: 3, scope: !1212)
!1238 = !DILocation(line: 206, column: 7, scope: !1212)
!1239 = !DILocation(line: 206, column: 11, scope: !1212)
!1240 = !DILocation(line: 206, column: 17, scope: !1212)
!1241 = !DILocation(line: 206, column: 20, scope: !1212)
!1242 = !DILocation(line: 207, column: 3, scope: !1212)
!1243 = !DILocation(line: 207, column: 7, scope: !1212)
!1244 = !DILocation(line: 207, column: 11, scope: !1212)
!1245 = !DILocation(line: 207, column: 17, scope: !1212)
!1246 = !DILocation(line: 207, column: 23, scope: !1212)
!1247 = !DILocation(line: 208, column: 3, scope: !1212)
!1248 = !DILocation(line: 213, column: 3, scope: !1212)
!1249 = !DILocation(line: 216, column: 3, scope: !1212)
!1250 = !DILocation(line: 216, column: 3, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1212, file: !2, line: 216, column: 3)
!1252 = !DILocation(line: 217, column: 3, scope: !1212)
!1253 = !DILocation(line: 220, column: 6, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 220, column: 6)
!1255 = !DILocation(line: 220, column: 10, scope: !1254)
!1256 = !DILocation(line: 220, column: 19, scope: !1254)
!1257 = !DILocation(line: 220, column: 16, scope: !1254)
!1258 = !DILocation(line: 220, column: 6, scope: !1196)
!1259 = !DILocation(line: 222, column: 3, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 220, column: 26)
!1261 = !DILocation(line: 222, column: 3, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 222, column: 3)
!1263 = distinct !DILexicalBlock(scope: !1260, file: !2, line: 222, column: 3)
!1264 = !DILocation(line: 222, column: 3, scope: !1263)
!1265 = !DILocation(line: 224, column: 3, scope: !1260)
!1266 = !DILocation(line: 224, column: 3, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1260, file: !2, line: 224, column: 3)
!1268 = !DILocation(line: 226, column: 15, scope: !1260)
!1269 = !DILocation(line: 226, column: 3, scope: !1260)
!1270 = !DILocation(line: 226, column: 7, scope: !1260)
!1271 = !DILocation(line: 226, column: 13, scope: !1260)
!1272 = !DILocation(line: 227, column: 2, scope: !1260)
!1273 = !DILocation(line: 228, column: 1, scope: !1196)
!1274 = distinct !DISubprogram(name: "ftl_reloc_is_halted", scope: !2, file: !2, line: 638, type: !1275, scopeLine: 639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1279)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!176, !1277}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!1279 = !{!1280, !1281, !1282}
!1280 = !DILocalVariable(name: "reloc", arg: 1, scope: !1274, file: !2, line: 638, type: !1277)
!1281 = !DILocalVariable(name: "i", scope: !1274, file: !2, line: 640, type: !157)
!1282 = !DILocalVariable(name: "count", scope: !1274, file: !2, line: 640, type: !157)
!1283 = !DILocation(line: 638, column: 45, scope: !1274)
!1284 = !DILocation(line: 640, column: 2, scope: !1274)
!1285 = !DILocation(line: 640, column: 9, scope: !1274)
!1286 = !DILocation(line: 640, column: 12, scope: !1274)
!1287 = !DILocation(line: 642, column: 8, scope: !1274)
!1288 = !DILocation(line: 643, column: 9, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1274, file: !2, line: 643, column: 2)
!1290 = !DILocation(line: 643, column: 7, scope: !1289)
!1291 = !DILocation(line: 643, column: 14, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 643, column: 2)
!1293 = !DILocation(line: 643, column: 18, scope: !1292)
!1294 = !DILocation(line: 643, column: 16, scope: !1292)
!1295 = !DILocation(line: 643, column: 2, scope: !1289)
!1296 = !DILocation(line: 644, column: 7, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 644, column: 7)
!1298 = distinct !DILexicalBlock(scope: !1292, file: !2, line: 643, column: 30)
!1299 = !DILocation(line: 644, column: 9, scope: !1297)
!1300 = !DILocation(line: 644, column: 7, scope: !1298)
!1301 = !DILocation(line: 645, column: 4, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1297, file: !2, line: 644, column: 34)
!1303 = !DILocation(line: 648, column: 8, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 648, column: 7)
!1305 = !DILocation(line: 648, column: 7, scope: !1298)
!1306 = !DILocation(line: 649, column: 4, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 648, column: 44)
!1308 = !DILocation(line: 651, column: 2, scope: !1298)
!1309 = !DILocation(line: 643, column: 25, scope: !1292)
!1310 = !DILocation(line: 643, column: 2, scope: !1292)
!1311 = distinct !{!1311, !1295, !1312}
!1312 = !DILocation(line: 651, column: 2, scope: !1289)
!1313 = !DILocation(line: 653, column: 2, scope: !1274)
!1314 = !DILocation(line: 654, column: 1, scope: !1274)
!1315 = distinct !DISubprogram(name: "ftl_reloc", scope: !2, file: !2, line: 657, type: !1109, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1316)
!1316 = !{!1317, !1318, !1319}
!1317 = !DILocalVariable(name: "reloc", arg: 1, scope: !1315, file: !2, line: 657, type: !127)
!1318 = !DILocalVariable(name: "i", scope: !1315, file: !2, line: 659, type: !157)
!1319 = !DILocalVariable(name: "count", scope: !1315, file: !2, line: 659, type: !157)
!1320 = !DILocation(line: 657, column: 29, scope: !1315)
!1321 = !DILocation(line: 659, column: 2, scope: !1315)
!1322 = !DILocation(line: 659, column: 9, scope: !1315)
!1323 = !DILocation(line: 659, column: 12, scope: !1315)
!1324 = !DILocation(line: 661, column: 8, scope: !1315)
!1325 = !DILocation(line: 662, column: 9, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 662, column: 2)
!1327 = !DILocation(line: 662, column: 7, scope: !1326)
!1328 = !DILocation(line: 662, column: 14, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 662, column: 2)
!1330 = !DILocation(line: 662, column: 18, scope: !1329)
!1331 = !DILocation(line: 662, column: 16, scope: !1329)
!1332 = !DILocation(line: 662, column: 2, scope: !1326)
!1333 = !DILocation(line: 663, column: 7, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 663, column: 7)
!1335 = distinct !DILexicalBlock(scope: !1329, file: !2, line: 662, column: 30)
!1336 = !DILocation(line: 663, column: 7, scope: !1335)
!1337 = !DILocation(line: 664, column: 4, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1334, file: !2, line: 663, column: 43)
!1339 = !DILocation(line: 667, column: 12, scope: !1335)
!1340 = !DILocation(line: 667, column: 19, scope: !1335)
!1341 = !DILocation(line: 667, column: 3, scope: !1335)
!1342 = !DILocation(line: 668, column: 2, scope: !1335)
!1343 = !DILocation(line: 662, column: 25, scope: !1329)
!1344 = !DILocation(line: 662, column: 2, scope: !1329)
!1345 = distinct !{!1345, !1332, !1346}
!1346 = !DILocation(line: 668, column: 2, scope: !1326)
!1347 = !DILocation(line: 670, column: 21, scope: !1315)
!1348 = !DILocation(line: 670, column: 2, scope: !1315)
!1349 = !DILocation(line: 671, column: 1, scope: !1315)
!1350 = distinct !DISubprogram(name: "move_run", scope: !2, file: !2, line: 549, type: !1351, scopeLine: 550, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1353)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{null, !127, !931}
!1353 = !{!1354, !1355, !1356}
!1354 = !DILocalVariable(name: "reloc", arg: 1, scope: !1350, file: !2, line: 549, type: !127)
!1355 = !DILocalVariable(name: "mv", arg: 2, scope: !1350, file: !2, line: 549, type: !931)
!1356 = !DILocalVariable(name: "band", scope: !1350, file: !2, line: 551, type: !513)
!1357 = !DILocation(line: 549, column: 28, scope: !1350)
!1358 = !DILocation(line: 549, column: 58, scope: !1350)
!1359 = !DILocation(line: 551, column: 2, scope: !1350)
!1360 = !DILocation(line: 551, column: 19, scope: !1350)
!1361 = !DILocation(line: 553, column: 10, scope: !1350)
!1362 = !DILocation(line: 553, column: 14, scope: !1350)
!1363 = !DILocation(line: 553, column: 2, scope: !1350)
!1364 = !DILocation(line: 555, column: 7, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !2, line: 555, column: 7)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 554, column: 29)
!1367 = distinct !DILexicalBlock(scope: !1350, file: !2, line: 553, column: 21)
!1368 = !{i8 0, i8 2}
!1369 = !{}
!1370 = !DILocation(line: 555, column: 7, scope: !1366)
!1371 = !DILocation(line: 556, column: 19, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1365, file: !2, line: 555, column: 35)
!1373 = !DILocation(line: 556, column: 4, scope: !1372)
!1374 = !DILocation(line: 557, column: 4, scope: !1372)
!1375 = !DILocation(line: 560, column: 24, scope: !1366)
!1376 = !DILocation(line: 560, column: 10, scope: !1366)
!1377 = !DILocation(line: 560, column: 8, scope: !1366)
!1378 = !DILocation(line: 561, column: 8, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1366, file: !2, line: 561, column: 7)
!1380 = !DILocation(line: 561, column: 7, scope: !1366)
!1381 = !DILocation(line: 562, column: 4, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 561, column: 14)
!1383 = !DILocation(line: 565, column: 13, scope: !1366)
!1384 = !DILocation(line: 565, column: 20, scope: !1366)
!1385 = !DILocation(line: 565, column: 24, scope: !1366)
!1386 = !DILocation(line: 565, column: 3, scope: !1366)
!1387 = !DILocation(line: 567, column: 2, scope: !1367)
!1388 = !DILocation(line: 570, column: 12, scope: !1367)
!1389 = !DILocation(line: 570, column: 3, scope: !1367)
!1390 = !DILocation(line: 571, column: 23, scope: !1367)
!1391 = !DILocation(line: 571, column: 30, scope: !1367)
!1392 = !DILocation(line: 571, column: 3, scope: !1367)
!1393 = !DILocation(line: 572, column: 3, scope: !1367)
!1394 = !DILocation(line: 575, column: 7, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 575, column: 7)
!1396 = !DILocation(line: 575, column: 7, scope: !1367)
!1397 = !DILocation(line: 576, column: 17, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1395, file: !2, line: 575, column: 35)
!1399 = !DILocation(line: 576, column: 21, scope: !1398)
!1400 = !DILocation(line: 576, column: 4, scope: !1398)
!1401 = !DILocation(line: 577, column: 19, scope: !1398)
!1402 = !DILocation(line: 577, column: 4, scope: !1398)
!1403 = !DILocation(line: 578, column: 4, scope: !1398)
!1404 = !DILocation(line: 581, column: 23, scope: !1367)
!1405 = !DILocation(line: 581, column: 30, scope: !1367)
!1406 = !DILocation(line: 581, column: 3, scope: !1367)
!1407 = !DILocation(line: 582, column: 14, scope: !1367)
!1408 = !DILocation(line: 582, column: 21, scope: !1367)
!1409 = !DILocation(line: 582, column: 3, scope: !1367)
!1410 = !DILocation(line: 583, column: 3, scope: !1367)
!1411 = !DILocation(line: 587, column: 3, scope: !1367)
!1412 = !DILocation(line: 591, column: 3, scope: !1367)
!1413 = !DILocation(line: 591, column: 3, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 591, column: 3)
!1415 = !DILocation(line: 592, column: 3, scope: !1367)
!1416 = !DILocation(line: 594, column: 1, scope: !1350)
!1417 = distinct !DISubprogram(name: "move_release_bands", scope: !2, file: !2, line: 612, type: !1109, scopeLine: 613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1418)
!1418 = !{!1419, !1420}
!1419 = !DILocalVariable(name: "reloc", arg: 1, scope: !1417, file: !2, line: 612, type: !127)
!1420 = !DILocalVariable(name: "band", scope: !1417, file: !2, line: 614, type: !513)
!1421 = !DILocation(line: 612, column: 38, scope: !1417)
!1422 = !DILocation(line: 614, column: 2, scope: !1417)
!1423 = !DILocation(line: 614, column: 19, scope: !1417)
!1424 = !DILocation(line: 616, column: 6, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 616, column: 6)
!1426 = !DILocation(line: 616, column: 6, scope: !1417)
!1427 = !DILocation(line: 617, column: 3, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1425, file: !2, line: 616, column: 38)
!1429 = !DILocation(line: 620, column: 9, scope: !1417)
!1430 = !DILocation(line: 620, column: 7, scope: !1417)
!1431 = !DILocation(line: 622, column: 6, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 622, column: 6)
!1433 = !DILocation(line: 622, column: 12, scope: !1432)
!1434 = !DILocation(line: 622, column: 18, scope: !1432)
!1435 = !DILocation(line: 622, column: 22, scope: !1432)
!1436 = !DILocation(line: 622, column: 37, scope: !1432)
!1437 = !DILocation(line: 622, column: 25, scope: !1432)
!1438 = !DILocation(line: 622, column: 6, scope: !1417)
!1439 = !DILocation(line: 624, column: 3, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 622, column: 44)
!1441 = !DILocation(line: 627, column: 21, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 627, column: 6)
!1443 = !DILocation(line: 627, column: 6, scope: !1442)
!1444 = !DILocation(line: 627, column: 6, scope: !1417)
!1445 = !DILocation(line: 629, column: 3, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1442, file: !2, line: 627, column: 28)
!1447 = !DILocation(line: 629, column: 3, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !2, line: 629, column: 3)
!1449 = distinct !DILexicalBlock(scope: !1446, file: !2, line: 629, column: 3)
!1450 = !DILocation(line: 629, column: 3, scope: !1449)
!1451 = !DILocation(line: 630, column: 3, scope: !1446)
!1452 = !DILocation(line: 630, column: 10, scope: !1446)
!1453 = !DILocation(line: 630, column: 25, scope: !1446)
!1454 = !DILocation(line: 631, column: 17, scope: !1446)
!1455 = !DILocation(line: 631, column: 3, scope: !1446)
!1456 = !DILocation(line: 632, column: 2, scope: !1446)
!1457 = !DILocation(line: 633, column: 26, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1442, file: !2, line: 632, column: 9)
!1459 = !DILocation(line: 633, column: 3, scope: !1458)
!1460 = !DILocation(line: 635, column: 1, scope: !1417)
!1461 = !DISubprogram(name: "ftl_rq_new", scope: !86, file: !86, line: 310, type: !1462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!627, !131, !164}
!1464 = !DISubprogram(name: "ftl_rq_del", scope: !86, file: !86, line: 309, type: !657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1465 = distinct !DISubprogram(name: "move_read_cb", scope: !2, file: !2, line: 341, type: !657, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1466)
!1466 = !{!1467, !1468}
!1467 = !DILocalVariable(name: "rq", arg: 1, scope: !1465, file: !2, line: 341, type: !627)
!1468 = !DILocalVariable(name: "mv", scope: !1465, file: !2, line: 343, type: !931)
!1469 = !DILocation(line: 341, column: 29, scope: !1465)
!1470 = !DILocation(line: 343, column: 2, scope: !1465)
!1471 = !DILocation(line: 343, column: 25, scope: !1465)
!1472 = !DILocation(line: 343, column: 30, scope: !1465)
!1473 = !DILocation(line: 343, column: 34, scope: !1465)
!1474 = !DILocation(line: 343, column: 40, scope: !1465)
!1475 = !DILocation(line: 347, column: 2, scope: !1465)
!1476 = !DILocation(line: 347, column: 6, scope: !1465)
!1477 = !DILocation(line: 347, column: 11, scope: !1465)
!1478 = !DILocation(line: 347, column: 13, scope: !1465)
!1479 = !DILocation(line: 349, column: 6, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1465, file: !2, line: 349, column: 6)
!1481 = !DILocation(line: 349, column: 10, scope: !1480)
!1482 = !DILocation(line: 349, column: 15, scope: !1480)
!1483 = !DILocation(line: 349, column: 22, scope: !1480)
!1484 = !DILocation(line: 349, column: 26, scope: !1480)
!1485 = !DILocation(line: 349, column: 19, scope: !1480)
!1486 = !DILocation(line: 349, column: 37, scope: !1480)
!1487 = !DILocation(line: 349, column: 40, scope: !1480)
!1488 = !DILocation(line: 349, column: 44, scope: !1480)
!1489 = !DILocation(line: 349, column: 49, scope: !1480)
!1490 = !DILocation(line: 349, column: 6, scope: !1465)
!1491 = !DILocation(line: 350, column: 3, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1480, file: !2, line: 349, column: 53)
!1493 = !DILocation(line: 353, column: 17, scope: !1465)
!1494 = !DILocation(line: 353, column: 2, scope: !1465)
!1495 = !DILocation(line: 354, column: 1, scope: !1465)
!1496 = distinct !DISubprogram(name: "move_read_error_cb", scope: !2, file: !2, line: 334, type: !661, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1497)
!1497 = !{!1498, !1499, !1500, !1501}
!1498 = !DILocalVariable(name: "rq", arg: 1, scope: !1496, file: !2, line: 334, type: !627)
!1499 = !DILocalVariable(name: "band", arg: 2, scope: !1496, file: !2, line: 334, type: !513)
!1500 = !DILocalVariable(name: "idx", arg: 3, scope: !1496, file: !2, line: 334, type: !112)
!1501 = !DILocalVariable(name: "count", arg: 4, scope: !1496, file: !2, line: 334, type: !112)
!1502 = !DILocation(line: 334, column: 35, scope: !1496)
!1503 = !DILocation(line: 334, column: 56, scope: !1496)
!1504 = !DILocation(line: 334, column: 71, scope: !1496)
!1505 = !DILocation(line: 334, column: 85, scope: !1496)
!1506 = !DILocation(line: 336, column: 20, scope: !1496)
!1507 = !DILocation(line: 336, column: 24, scope: !1496)
!1508 = !DILocation(line: 336, column: 29, scope: !1496)
!1509 = !DILocation(line: 336, column: 2, scope: !1496)
!1510 = !DILocation(line: 337, column: 21, scope: !1496)
!1511 = !DILocation(line: 337, column: 2, scope: !1496)
!1512 = !DILocation(line: 337, column: 8, scope: !1496)
!1513 = !DILocation(line: 337, column: 14, scope: !1496)
!1514 = !DILocation(line: 337, column: 18, scope: !1496)
!1515 = !DILocation(line: 338, column: 1, scope: !1496)
!1516 = distinct !DISubprogram(name: "move_write_cb", scope: !2, file: !2, line: 517, type: !657, scopeLine: 518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1517)
!1517 = !{!1518, !1519}
!1518 = !DILocalVariable(name: "rq", arg: 1, scope: !1516, file: !2, line: 517, type: !627)
!1519 = !DILocalVariable(name: "mv", scope: !1516, file: !2, line: 519, type: !931)
!1520 = !DILocation(line: 517, column: 30, scope: !1516)
!1521 = !DILocation(line: 519, column: 2, scope: !1516)
!1522 = !DILocation(line: 519, column: 25, scope: !1516)
!1523 = !DILocation(line: 519, column: 30, scope: !1516)
!1524 = !DILocation(line: 519, column: 34, scope: !1516)
!1525 = !DILocation(line: 519, column: 40, scope: !1516)
!1526 = !DILocation(line: 522, column: 2, scope: !1516)
!1527 = !DILocation(line: 522, column: 6, scope: !1516)
!1528 = !DILocation(line: 522, column: 11, scope: !1516)
!1529 = !DILocation(line: 522, column: 13, scope: !1516)
!1530 = !DILocation(line: 524, column: 6, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 524, column: 6)
!1532 = !DILocation(line: 524, column: 6, scope: !1516)
!1533 = !DILocation(line: 525, column: 21, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 524, column: 32)
!1535 = !DILocation(line: 525, column: 3, scope: !1534)
!1536 = !DILocation(line: 526, column: 18, scope: !1534)
!1537 = !DILocation(line: 526, column: 3, scope: !1534)
!1538 = !DILocation(line: 527, column: 2, scope: !1534)
!1539 = !DILocation(line: 529, column: 18, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 527, column: 9)
!1541 = !DILocation(line: 529, column: 3, scope: !1540)
!1542 = !DILocation(line: 531, column: 1, scope: !1516)
!1543 = !DISubprogram(name: "abort", scope: !1055, file: !1055, line: 598, type: !1544, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{null}
!1546 = distinct !DISubprogram(name: "move_init_entries", scope: !2, file: !2, line: 315, type: !1547, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1549)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{null, !627, !112, !112}
!1549 = !{!1550, !1551, !1552, !1553, !1554}
!1550 = !DILocalVariable(name: "rq", arg: 1, scope: !1546, file: !2, line: 315, type: !627)
!1551 = !DILocalVariable(name: "idx", arg: 2, scope: !1546, file: !2, line: 315, type: !112)
!1552 = !DILocalVariable(name: "count", arg: 3, scope: !1546, file: !2, line: 315, type: !112)
!1553 = !DILocalVariable(name: "i", scope: !1546, file: !2, line: 317, type: !112)
!1554 = !DILocalVariable(name: "iter", scope: !1546, file: !2, line: 318, type: !1555)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!1556 = !DILocation(line: 315, column: 34, scope: !1546)
!1557 = !DILocation(line: 315, column: 47, scope: !1546)
!1558 = !DILocation(line: 315, column: 61, scope: !1546)
!1559 = !DILocation(line: 317, column: 2, scope: !1546)
!1560 = !DILocation(line: 317, column: 11, scope: !1546)
!1561 = !DILocation(line: 318, column: 2, scope: !1546)
!1562 = !DILocation(line: 318, column: 23, scope: !1546)
!1563 = !DILocation(line: 318, column: 31, scope: !1546)
!1564 = !DILocation(line: 318, column: 35, scope: !1546)
!1565 = !DILocation(line: 318, column: 43, scope: !1546)
!1566 = !DILocation(line: 322, column: 4, scope: !1546)
!1567 = !DILocation(line: 323, column: 2, scope: !1546)
!1568 = !DILocation(line: 323, column: 9, scope: !1546)
!1569 = !DILocation(line: 323, column: 13, scope: !1546)
!1570 = !DILocation(line: 323, column: 11, scope: !1546)
!1571 = !DILocation(line: 324, column: 3, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1546, file: !2, line: 323, column: 20)
!1573 = !DILocation(line: 324, column: 9, scope: !1572)
!1574 = !DILocation(line: 324, column: 14, scope: !1572)
!1575 = !DILocation(line: 325, column: 3, scope: !1572)
!1576 = !DILocation(line: 325, column: 9, scope: !1572)
!1577 = !DILocation(line: 325, column: 15, scope: !1572)
!1578 = !DILocation(line: 325, column: 20, scope: !1572)
!1579 = !DILocation(line: 326, column: 3, scope: !1572)
!1580 = !DILocation(line: 326, column: 9, scope: !1572)
!1581 = !DILocation(line: 326, column: 13, scope: !1572)
!1582 = !DILocation(line: 327, column: 3, scope: !1572)
!1583 = !DILocation(line: 327, column: 9, scope: !1572)
!1584 = !DILocation(line: 327, column: 16, scope: !1572)
!1585 = !DILocation(line: 328, column: 7, scope: !1572)
!1586 = !DILocation(line: 329, column: 4, scope: !1572)
!1587 = distinct !{!1587, !1567, !1588}
!1588 = !DILocation(line: 330, column: 2, scope: !1546)
!1589 = !DILocation(line: 331, column: 1, scope: !1546)
!1590 = distinct !DISubprogram(name: "move_finish_write", scope: !2, file: !2, line: 491, type: !657, scopeLine: 492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1591)
!1591 = !{!1592, !1593, !1594, !1595, !1596, !1597, !1598}
!1592 = !DILocalVariable(name: "rq", arg: 1, scope: !1590, file: !2, line: 491, type: !627)
!1593 = !DILocalVariable(name: "i", scope: !1590, file: !2, line: 493, type: !112)
!1594 = !DILocalVariable(name: "dev", scope: !1590, file: !2, line: 494, type: !131)
!1595 = !DILocalVariable(name: "iter", scope: !1590, file: !2, line: 495, type: !1555)
!1596 = !DILocalVariable(name: "addr", scope: !1590, file: !2, line: 496, type: !111)
!1597 = !DILocalVariable(name: "rq_band", scope: !1590, file: !2, line: 497, type: !513)
!1598 = !DILocalVariable(name: "band", scope: !1590, file: !2, line: 498, type: !513)
!1599 = !DILocation(line: 491, column: 34, scope: !1590)
!1600 = !DILocation(line: 493, column: 2, scope: !1590)
!1601 = !DILocation(line: 493, column: 11, scope: !1590)
!1602 = !DILocation(line: 494, column: 2, scope: !1590)
!1603 = !DILocation(line: 494, column: 23, scope: !1590)
!1604 = !DILocation(line: 494, column: 29, scope: !1590)
!1605 = !DILocation(line: 494, column: 33, scope: !1590)
!1606 = !DILocation(line: 495, column: 2, scope: !1590)
!1607 = !DILocation(line: 495, column: 23, scope: !1590)
!1608 = !DILocation(line: 495, column: 30, scope: !1590)
!1609 = !DILocation(line: 495, column: 34, scope: !1590)
!1610 = !DILocation(line: 496, column: 2, scope: !1590)
!1611 = !DILocation(line: 496, column: 11, scope: !1590)
!1612 = !DILocation(line: 496, column: 18, scope: !1590)
!1613 = !DILocation(line: 496, column: 22, scope: !1590)
!1614 = !DILocation(line: 496, column: 25, scope: !1590)
!1615 = !DILocation(line: 497, column: 2, scope: !1590)
!1616 = !DILocation(line: 497, column: 19, scope: !1590)
!1617 = !DILocation(line: 497, column: 29, scope: !1590)
!1618 = !DILocation(line: 497, column: 33, scope: !1590)
!1619 = !DILocation(line: 497, column: 36, scope: !1590)
!1620 = !DILocation(line: 498, column: 2, scope: !1590)
!1621 = !DILocation(line: 498, column: 19, scope: !1590)
!1622 = !DILocation(line: 500, column: 9, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 500, column: 2)
!1624 = !DILocation(line: 500, column: 7, scope: !1623)
!1625 = !DILocation(line: 500, column: 14, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 500, column: 2)
!1627 = !DILocation(line: 500, column: 18, scope: !1626)
!1628 = !DILocation(line: 500, column: 22, scope: !1626)
!1629 = !DILocation(line: 500, column: 16, scope: !1626)
!1630 = !DILocation(line: 500, column: 2, scope: !1623)
!1631 = !DILocation(line: 501, column: 10, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1626, file: !2, line: 500, column: 47)
!1633 = !DILocation(line: 501, column: 16, scope: !1632)
!1634 = !DILocation(line: 501, column: 22, scope: !1632)
!1635 = !DILocation(line: 501, column: 8, scope: !1632)
!1636 = !DILocation(line: 503, column: 7, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1632, file: !2, line: 503, column: 7)
!1638 = !DILocation(line: 503, column: 7, scope: !1632)
!1639 = !DILocation(line: 505, column: 4, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1637, file: !2, line: 503, column: 13)
!1641 = !DILocation(line: 505, column: 10, scope: !1640)
!1642 = !DILocation(line: 505, column: 16, scope: !1640)
!1643 = !DILocation(line: 505, column: 19, scope: !1640)
!1644 = !DILocation(line: 506, column: 3, scope: !1640)
!1645 = !DILocation(line: 507, column: 7, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1632, file: !2, line: 507, column: 7)
!1647 = !DILocation(line: 507, column: 13, scope: !1646)
!1648 = !DILocation(line: 507, column: 17, scope: !1646)
!1649 = !DILocation(line: 507, column: 7, scope: !1632)
!1650 = !DILocation(line: 509, column: 24, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1646, file: !2, line: 507, column: 37)
!1652 = !DILocation(line: 509, column: 29, scope: !1651)
!1653 = !DILocation(line: 509, column: 35, scope: !1651)
!1654 = !DILocation(line: 509, column: 40, scope: !1651)
!1655 = !DILocation(line: 509, column: 46, scope: !1651)
!1656 = !DILocation(line: 509, column: 52, scope: !1651)
!1657 = !DILocation(line: 509, column: 4, scope: !1651)
!1658 = !DILocation(line: 510, column: 18, scope: !1651)
!1659 = !DILocation(line: 510, column: 23, scope: !1651)
!1660 = !DILocation(line: 510, column: 29, scope: !1651)
!1661 = !DILocation(line: 510, column: 4, scope: !1651)
!1662 = !DILocation(line: 511, column: 3, scope: !1651)
!1663 = !DILocation(line: 512, column: 29, scope: !1632)
!1664 = !DILocation(line: 512, column: 38, scope: !1632)
!1665 = !DILocation(line: 512, column: 10, scope: !1632)
!1666 = !DILocation(line: 512, column: 8, scope: !1632)
!1667 = !DILocation(line: 513, column: 2, scope: !1632)
!1668 = !DILocation(line: 500, column: 34, scope: !1626)
!1669 = !DILocation(line: 500, column: 39, scope: !1626)
!1670 = !DILocation(line: 500, column: 2, scope: !1626)
!1671 = distinct !{!1671, !1630, !1672}
!1672 = !DILocation(line: 513, column: 2, scope: !1623)
!1673 = !DILocation(line: 514, column: 1, scope: !1590)
!1674 = !DISubprogram(name: "ftl_l2p_update_base", scope: !701, file: !701, line: 54, type: !1675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{null, !131, !112, !111, !111}
!1677 = !DISubprogram(name: "ftl_l2p_unpin", scope: !701, file: !701, line: 36, type: !1678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{null, !131, !112, !112}
!1680 = !DISubprogram(name: "ftl_band_next_addr", scope: !62, file: !62, line: 166, type: !1681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!111, !513, !111, !157}
!1683 = distinct !DISubprogram(name: "move_get_band", scope: !2, file: !2, line: 261, type: !1684, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1686)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!513, !127}
!1686 = !{!1687, !1688}
!1687 = !DILocalVariable(name: "reloc", arg: 1, scope: !1683, file: !2, line: 261, type: !127)
!1688 = !DILocalVariable(name: "band", scope: !1683, file: !2, line: 263, type: !513)
!1689 = !DILocation(line: 261, column: 33, scope: !1683)
!1690 = !DILocation(line: 263, column: 2, scope: !1683)
!1691 = !DILocation(line: 263, column: 19, scope: !1683)
!1692 = !DILocation(line: 263, column: 26, scope: !1683)
!1693 = !DILocation(line: 263, column: 33, scope: !1683)
!1694 = !DILocation(line: 265, column: 7, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1683, file: !2, line: 265, column: 6)
!1696 = !DILocation(line: 265, column: 6, scope: !1683)
!1697 = !DILocation(line: 266, column: 22, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1695, file: !2, line: 265, column: 13)
!1699 = !DILocation(line: 266, column: 3, scope: !1698)
!1700 = !DILocation(line: 267, column: 3, scope: !1698)
!1701 = !DILocation(line: 270, column: 23, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1683, file: !2, line: 270, column: 6)
!1703 = !DILocation(line: 270, column: 29, scope: !1702)
!1704 = !DILocation(line: 270, column: 35, scope: !1702)
!1705 = !DILocation(line: 270, column: 39, scope: !1702)
!1706 = !DILocation(line: 270, column: 44, scope: !1702)
!1707 = !DILocation(line: 270, column: 7, scope: !1702)
!1708 = !DILocation(line: 270, column: 6, scope: !1683)
!1709 = !DILocation(line: 272, column: 10, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1702, file: !2, line: 270, column: 53)
!1711 = !DILocation(line: 272, column: 3, scope: !1710)
!1712 = !DILocation(line: 275, column: 2, scope: !1683)
!1713 = !DILocation(line: 275, column: 2, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1683, file: !2, line: 275, column: 2)
!1715 = !DILocation(line: 276, column: 2, scope: !1683)
!1716 = !DILocation(line: 276, column: 9, scope: !1683)
!1717 = !DILocation(line: 276, column: 24, scope: !1683)
!1718 = !DILocation(line: 277, column: 2, scope: !1683)
!1719 = !DILocation(line: 277, column: 9, scope: !1683)
!1720 = !DILocation(line: 277, column: 14, scope: !1683)
!1721 = !DILocation(line: 279, column: 2, scope: !1683)
!1722 = !DILocation(line: 280, column: 1, scope: !1683)
!1723 = distinct !DISubprogram(name: "move_read", scope: !2, file: !2, line: 375, type: !1724, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1726)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !127, !931, !513}
!1726 = !{!1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736}
!1727 = !DILocalVariable(name: "reloc", arg: 1, scope: !1723, file: !2, line: 375, type: !127)
!1728 = !DILocalVariable(name: "mv", arg: 2, scope: !1723, file: !2, line: 375, type: !931)
!1729 = !DILocalVariable(name: "band", arg: 3, scope: !1723, file: !2, line: 375, type: !513)
!1730 = !DILocalVariable(name: "rq", scope: !1723, file: !2, line: 377, type: !627)
!1731 = !DILocalVariable(name: "blocks", scope: !1723, file: !2, line: 378, type: !112)
!1732 = !DILocalVariable(name: "pos", scope: !1723, file: !2, line: 379, type: !112)
!1733 = !DILocalVariable(name: "begin", scope: !1723, file: !2, line: 380, type: !112)
!1734 = !DILocalVariable(name: "end", scope: !1723, file: !2, line: 381, type: !112)
!1735 = !DILocalVariable(name: "band_left", scope: !1723, file: !2, line: 381, type: !112)
!1736 = !DILocalVariable(name: "rq_left", scope: !1723, file: !2, line: 381, type: !112)
!1737 = !DILocation(line: 375, column: 29, scope: !1723)
!1738 = !DILocation(line: 375, column: 59, scope: !1723)
!1739 = !DILocation(line: 375, column: 80, scope: !1723)
!1740 = !DILocation(line: 377, column: 2, scope: !1723)
!1741 = !DILocation(line: 377, column: 17, scope: !1723)
!1742 = !DILocation(line: 377, column: 22, scope: !1723)
!1743 = !DILocation(line: 377, column: 26, scope: !1723)
!1744 = !DILocation(line: 378, column: 2, scope: !1723)
!1745 = !DILocation(line: 378, column: 11, scope: !1723)
!1746 = !DILocation(line: 378, column: 47, scope: !1723)
!1747 = !DILocation(line: 378, column: 53, scope: !1723)
!1748 = !DILocation(line: 378, column: 20, scope: !1723)
!1749 = !DILocation(line: 379, column: 2, scope: !1723)
!1750 = !DILocation(line: 379, column: 11, scope: !1723)
!1751 = !DILocation(line: 379, column: 17, scope: !1723)
!1752 = !DILocation(line: 379, column: 23, scope: !1723)
!1753 = !DILocation(line: 379, column: 27, scope: !1723)
!1754 = !DILocation(line: 379, column: 32, scope: !1723)
!1755 = !DILocation(line: 380, column: 2, scope: !1723)
!1756 = !DILocation(line: 380, column: 11, scope: !1723)
!1757 = !DILocation(line: 380, column: 45, scope: !1723)
!1758 = !DILocation(line: 380, column: 51, scope: !1723)
!1759 = !DILocation(line: 380, column: 59, scope: !1723)
!1760 = !DILocation(line: 380, column: 66, scope: !1723)
!1761 = !DILocation(line: 380, column: 19, scope: !1723)
!1762 = !DILocation(line: 381, column: 2, scope: !1723)
!1763 = !DILocation(line: 381, column: 11, scope: !1723)
!1764 = !DILocation(line: 381, column: 16, scope: !1723)
!1765 = !DILocation(line: 381, column: 27, scope: !1723)
!1766 = !DILocation(line: 383, column: 6, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1723, file: !2, line: 383, column: 6)
!1768 = !DILocation(line: 383, column: 6, scope: !1723)
!1769 = !DILocation(line: 384, column: 7, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !2, line: 384, column: 7)
!1771 = distinct !DILexicalBlock(scope: !1767, file: !2, line: 383, column: 35)
!1772 = !DILocation(line: 384, column: 15, scope: !1770)
!1773 = !DILocation(line: 384, column: 13, scope: !1770)
!1774 = !DILocation(line: 384, column: 7, scope: !1771)
!1775 = !DILocation(line: 385, column: 26, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1770, file: !2, line: 384, column: 20)
!1777 = !DILocation(line: 385, column: 32, scope: !1776)
!1778 = !DILocation(line: 385, column: 40, scope: !1776)
!1779 = !DILocation(line: 385, column: 38, scope: !1776)
!1780 = !DILocation(line: 385, column: 4, scope: !1776)
!1781 = !DILocation(line: 386, column: 3, scope: !1776)
!1782 = !DILocation(line: 386, column: 14, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1770, file: !2, line: 386, column: 14)
!1784 = !DILocation(line: 386, column: 23, scope: !1783)
!1785 = !DILocation(line: 386, column: 20, scope: !1783)
!1786 = !DILocation(line: 386, column: 14, scope: !1770)
!1787 = !DILocation(line: 388, column: 3, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1783, file: !2, line: 386, column: 28)
!1789 = !DILocation(line: 390, column: 4, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1783, file: !2, line: 388, column: 10)
!1791 = !DILocation(line: 390, column: 4, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1790, file: !2, line: 390, column: 4)
!1793 = !DILocation(line: 392, column: 2, scope: !1771)
!1794 = !DILocation(line: 392, column: 27, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1767, file: !2, line: 392, column: 13)
!1796 = !DILocation(line: 392, column: 24, scope: !1795)
!1797 = !DILocation(line: 392, column: 13, scope: !1767)
!1798 = !DILocation(line: 394, column: 41, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1795, file: !2, line: 392, column: 34)
!1800 = !DILocation(line: 394, column: 47, scope: !1799)
!1801 = !DILocation(line: 394, column: 15, scope: !1799)
!1802 = !DILocation(line: 394, column: 13, scope: !1799)
!1803 = !DILocation(line: 395, column: 25, scope: !1799)
!1804 = !DILocation(line: 395, column: 31, scope: !1799)
!1805 = !DILocation(line: 395, column: 3, scope: !1799)
!1806 = !DILocation(line: 399, column: 7, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1799, file: !2, line: 399, column: 7)
!1808 = !DILocation(line: 399, column: 11, scope: !1807)
!1809 = !DILocation(line: 399, column: 16, scope: !1807)
!1810 = !DILocation(line: 399, column: 7, scope: !1799)
!1811 = !DILocation(line: 400, column: 16, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1807, file: !2, line: 399, column: 21)
!1813 = !DILocation(line: 400, column: 20, scope: !1812)
!1814 = !DILocation(line: 400, column: 4, scope: !1812)
!1815 = !DILocation(line: 401, column: 19, scope: !1812)
!1816 = !DILocation(line: 401, column: 4, scope: !1812)
!1817 = !DILocation(line: 402, column: 4, scope: !1812)
!1818 = !DILocation(line: 402, column: 8, scope: !1812)
!1819 = !DILocation(line: 402, column: 13, scope: !1812)
!1820 = !DILocation(line: 402, column: 15, scope: !1812)
!1821 = !DILocation(line: 403, column: 4, scope: !1812)
!1822 = !DILocation(line: 403, column: 8, scope: !1812)
!1823 = !DILocation(line: 403, column: 14, scope: !1812)
!1824 = !DILocation(line: 403, column: 17, scope: !1812)
!1825 = !DILocation(line: 404, column: 3, scope: !1812)
!1826 = !DILocation(line: 406, column: 3, scope: !1799)
!1827 = !DILocation(line: 409, column: 3, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1795, file: !2, line: 407, column: 9)
!1829 = !DILocation(line: 409, column: 3, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1828, file: !2, line: 409, column: 3)
!1831 = !DILocation(line: 412, column: 12, scope: !1723)
!1832 = !DILocation(line: 412, column: 16, scope: !1723)
!1833 = !DILocation(line: 412, column: 29, scope: !1723)
!1834 = !DILocation(line: 412, column: 33, scope: !1723)
!1835 = !DILocation(line: 412, column: 38, scope: !1723)
!1836 = !DILocation(line: 412, column: 27, scope: !1723)
!1837 = !DILocation(line: 412, column: 10, scope: !1723)
!1838 = !DILocation(line: 416, column: 36, scope: !1723)
!1839 = !DILocation(line: 416, column: 42, scope: !1723)
!1840 = !DILocation(line: 416, column: 50, scope: !1723)
!1841 = !DILocation(line: 416, column: 57, scope: !1723)
!1842 = !DILocation(line: 416, column: 63, scope: !1723)
!1843 = !DILocation(line: 416, column: 68, scope: !1723)
!1844 = !DILocation(line: 416, column: 76, scope: !1723)
!1845 = !DILocation(line: 416, column: 74, scope: !1723)
!1846 = !DILocation(line: 416, column: 8, scope: !1723)
!1847 = !DILocation(line: 416, column: 6, scope: !1723)
!1848 = !DILocation(line: 417, column: 6, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1723, file: !2, line: 417, column: 6)
!1850 = !DILocation(line: 417, column: 10, scope: !1849)
!1851 = !DILocation(line: 417, column: 6, scope: !1723)
!1852 = !DILocation(line: 418, column: 13, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !2, line: 417, column: 25)
!1854 = !DILocation(line: 418, column: 19, scope: !1853)
!1855 = !DILocation(line: 418, column: 17, scope: !1853)
!1856 = !DILocation(line: 418, column: 11, scope: !1853)
!1857 = !DILocation(line: 419, column: 2, scope: !1853)
!1858 = !DILocation(line: 421, column: 40, scope: !1723)
!1859 = !DILocation(line: 421, column: 46, scope: !1723)
!1860 = !DILocation(line: 421, column: 52, scope: !1723)
!1861 = !DILocation(line: 421, column: 56, scope: !1723)
!1862 = !DILocation(line: 421, column: 61, scope: !1723)
!1863 = !DILocation(line: 421, column: 14, scope: !1723)
!1864 = !DILocation(line: 421, column: 12, scope: !1723)
!1865 = !DILocation(line: 422, column: 19, scope: !1723)
!1866 = !DILocation(line: 422, column: 2, scope: !1723)
!1867 = !DILocation(line: 422, column: 6, scope: !1723)
!1868 = !DILocation(line: 422, column: 11, scope: !1723)
!1869 = !DILocation(line: 422, column: 17, scope: !1723)
!1870 = !DILocation(line: 424, column: 19, scope: !1723)
!1871 = !DILocation(line: 424, column: 25, scope: !1723)
!1872 = !DILocation(line: 424, column: 2, scope: !1723)
!1873 = !DILocation(line: 426, column: 18, scope: !1723)
!1874 = !DILocation(line: 426, column: 2, scope: !1723)
!1875 = !DILocation(line: 429, column: 24, scope: !1723)
!1876 = !DILocation(line: 429, column: 30, scope: !1723)
!1877 = !DILocation(line: 429, column: 34, scope: !1723)
!1878 = !DILocation(line: 429, column: 39, scope: !1723)
!1879 = !DILocation(line: 429, column: 2, scope: !1723)
!1880 = !DILocation(line: 432, column: 22, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1723, file: !2, line: 432, column: 6)
!1882 = !DILocation(line: 432, column: 28, scope: !1881)
!1883 = !DILocation(line: 432, column: 34, scope: !1881)
!1884 = !DILocation(line: 432, column: 38, scope: !1881)
!1885 = !DILocation(line: 432, column: 43, scope: !1881)
!1886 = !DILocation(line: 432, column: 6, scope: !1881)
!1887 = !DILocation(line: 432, column: 6, scope: !1723)
!1888 = !DILocation(line: 433, column: 15, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1881, file: !2, line: 432, column: 52)
!1890 = !DILocation(line: 433, column: 19, scope: !1889)
!1891 = !DILocation(line: 433, column: 3, scope: !1889)
!1892 = !DILocation(line: 434, column: 2, scope: !1889)
!1893 = !DILocation(line: 436, column: 6, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1723, file: !2, line: 436, column: 6)
!1895 = !DILocation(line: 436, column: 10, scope: !1894)
!1896 = !DILocation(line: 436, column: 15, scope: !1894)
!1897 = !DILocation(line: 436, column: 22, scope: !1894)
!1898 = !DILocation(line: 436, column: 26, scope: !1894)
!1899 = !DILocation(line: 436, column: 19, scope: !1894)
!1900 = !DILocation(line: 436, column: 6, scope: !1723)
!1901 = !DILocation(line: 441, column: 18, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1894, file: !2, line: 436, column: 38)
!1903 = !DILocation(line: 441, column: 3, scope: !1902)
!1904 = !DILocation(line: 442, column: 2, scope: !1902)
!1905 = !DILocation(line: 443, column: 1, scope: !1723)
!1906 = distinct !DISubprogram(name: "move_pin", scope: !2, file: !2, line: 469, type: !1154, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1907)
!1907 = !{!1908, !1909, !1910, !1911}
!1908 = !DILocalVariable(name: "mv", arg: 1, scope: !1906, file: !2, line: 469, type: !931)
!1909 = !DILocalVariable(name: "rq", scope: !1906, file: !2, line: 471, type: !627)
!1910 = !DILocalVariable(name: "entry", scope: !1906, file: !2, line: 472, type: !1555)
!1911 = !DILocalVariable(name: "i", scope: !1906, file: !2, line: 473, type: !112)
!1912 = !DILocation(line: 469, column: 33, scope: !1906)
!1913 = !DILocation(line: 471, column: 2, scope: !1906)
!1914 = !DILocation(line: 471, column: 17, scope: !1906)
!1915 = !DILocation(line: 471, column: 22, scope: !1906)
!1916 = !DILocation(line: 471, column: 26, scope: !1906)
!1917 = !DILocation(line: 472, column: 2, scope: !1906)
!1918 = !DILocation(line: 472, column: 23, scope: !1906)
!1919 = !DILocation(line: 472, column: 31, scope: !1906)
!1920 = !DILocation(line: 472, column: 35, scope: !1906)
!1921 = !DILocation(line: 473, column: 2, scope: !1906)
!1922 = !DILocation(line: 473, column: 11, scope: !1906)
!1923 = !DILocation(line: 475, column: 17, scope: !1906)
!1924 = !DILocation(line: 475, column: 2, scope: !1906)
!1925 = !DILocation(line: 477, column: 40, scope: !1906)
!1926 = !DILocation(line: 477, column: 44, scope: !1906)
!1927 = !DILocation(line: 477, column: 23, scope: !1906)
!1928 = !DILocation(line: 477, column: 27, scope: !1906)
!1929 = !DILocation(line: 477, column: 32, scope: !1906)
!1930 = !DILocation(line: 477, column: 38, scope: !1906)
!1931 = !DILocation(line: 477, column: 2, scope: !1906)
!1932 = !DILocation(line: 477, column: 6, scope: !1906)
!1933 = !DILocation(line: 477, column: 11, scope: !1906)
!1934 = !DILocation(line: 477, column: 21, scope: !1906)
!1935 = !DILocation(line: 478, column: 2, scope: !1906)
!1936 = !DILocation(line: 478, column: 6, scope: !1906)
!1937 = !DILocation(line: 478, column: 11, scope: !1906)
!1938 = !DILocation(line: 478, column: 18, scope: !1906)
!1939 = !DILocation(line: 480, column: 9, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1906, file: !2, line: 480, column: 2)
!1941 = !DILocation(line: 480, column: 7, scope: !1940)
!1942 = !DILocation(line: 480, column: 14, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1940, file: !2, line: 480, column: 2)
!1944 = !DILocation(line: 480, column: 18, scope: !1943)
!1945 = !DILocation(line: 480, column: 22, scope: !1943)
!1946 = !DILocation(line: 480, column: 16, scope: !1943)
!1947 = !DILocation(line: 480, column: 2, scope: !1940)
!1948 = !DILocation(line: 481, column: 7, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !2, line: 481, column: 7)
!1950 = distinct !DILexicalBlock(scope: !1943, file: !2, line: 480, column: 39)
!1951 = !DILocation(line: 481, column: 14, scope: !1949)
!1952 = !DILocation(line: 481, column: 18, scope: !1949)
!1953 = !DILocation(line: 481, column: 7, scope: !1950)
!1954 = !DILocation(line: 482, column: 16, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1949, file: !2, line: 481, column: 38)
!1956 = !DILocation(line: 482, column: 20, scope: !1955)
!1957 = !DILocation(line: 482, column: 25, scope: !1955)
!1958 = !DILocation(line: 482, column: 32, scope: !1955)
!1959 = !DILocation(line: 482, column: 53, scope: !1955)
!1960 = !DILocation(line: 482, column: 58, scope: !1955)
!1961 = !DILocation(line: 482, column: 65, scope: !1955)
!1962 = !DILocation(line: 482, column: 4, scope: !1955)
!1963 = !DILocation(line: 483, column: 3, scope: !1955)
!1964 = !DILocation(line: 484, column: 21, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1949, file: !2, line: 483, column: 10)
!1966 = !DILocation(line: 484, column: 25, scope: !1965)
!1967 = !DILocation(line: 484, column: 43, scope: !1965)
!1968 = !DILocation(line: 484, column: 48, scope: !1965)
!1969 = !DILocation(line: 484, column: 55, scope: !1965)
!1970 = !DILocation(line: 484, column: 4, scope: !1965)
!1971 = !DILocation(line: 486, column: 8, scope: !1950)
!1972 = !DILocation(line: 487, column: 2, scope: !1950)
!1973 = !DILocation(line: 480, column: 35, scope: !1943)
!1974 = !DILocation(line: 480, column: 2, scope: !1943)
!1975 = distinct !{!1975, !1947, !1976}
!1976 = !DILocation(line: 487, column: 2, scope: !1940)
!1977 = !DILocation(line: 488, column: 1, scope: !1906)
!1978 = distinct !DISubprogram(name: "ftl_add_io_activity", scope: !133, file: !133, line: 237, type: !1979, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1981)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{null, !131}
!1981 = !{!1982}
!1982 = !DILocalVariable(name: "dev", arg: 1, scope: !1978, file: !133, line: 237, type: !131)
!1983 = !DILocation(line: 237, column: 42, scope: !1978)
!1984 = !DILocation(line: 239, column: 2, scope: !1978)
!1985 = !DILocation(line: 239, column: 7, scope: !1978)
!1986 = !DILocation(line: 239, column: 13, scope: !1978)
!1987 = !DILocation(line: 239, column: 30, scope: !1978)
!1988 = !DILocation(line: 240, column: 1, scope: !1978)
!1989 = !DISubprogram(name: "ftl_rq_unpin", scope: !86, file: !86, line: 311, type: !657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1990 = distinct !DISubprogram(name: "move_write", scope: !2, file: !2, line: 534, type: !1351, scopeLine: 535, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1991)
!1991 = !{!1992, !1993, !1994, !1995}
!1992 = !DILocalVariable(name: "reloc", arg: 1, scope: !1990, file: !2, line: 534, type: !127)
!1993 = !DILocalVariable(name: "mv", arg: 2, scope: !1990, file: !2, line: 534, type: !931)
!1994 = !DILocalVariable(name: "dev", scope: !1990, file: !2, line: 536, type: !131)
!1995 = !DILocalVariable(name: "rq", scope: !1990, file: !2, line: 537, type: !627)
!1996 = !DILocation(line: 534, column: 30, scope: !1990)
!1997 = !DILocation(line: 534, column: 60, scope: !1990)
!1998 = !DILocation(line: 536, column: 2, scope: !1990)
!1999 = !DILocation(line: 536, column: 23, scope: !1990)
!2000 = !DILocation(line: 536, column: 29, scope: !1990)
!2001 = !DILocation(line: 536, column: 33, scope: !1990)
!2002 = !DILocation(line: 537, column: 2, scope: !1990)
!2003 = !DILocation(line: 537, column: 17, scope: !1990)
!2004 = !DILocation(line: 537, column: 22, scope: !1990)
!2005 = !DILocation(line: 537, column: 26, scope: !1990)
!2006 = !DILocation(line: 542, column: 23, scope: !1990)
!2007 = !DILocation(line: 542, column: 28, scope: !1990)
!2008 = !DILocation(line: 542, column: 39, scope: !1990)
!2009 = !DILocation(line: 542, column: 2, scope: !1990)
!2010 = !DILocation(line: 543, column: 2, scope: !1990)
!2011 = !DILocation(line: 543, column: 6, scope: !1990)
!2012 = !DILocation(line: 543, column: 11, scope: !1990)
!2013 = !DILocation(line: 543, column: 13, scope: !1990)
!2014 = !DILocation(line: 545, column: 17, scope: !1990)
!2015 = !DILocation(line: 545, column: 2, scope: !1990)
!2016 = !DILocation(line: 546, column: 1, scope: !1990)
!2017 = distinct !DISubprogram(name: "move_grab_new_band", scope: !2, file: !2, line: 243, type: !1109, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2018)
!2018 = !{!2019}
!2019 = !DILocalVariable(name: "reloc", arg: 1, scope: !2017, file: !2, line: 243, type: !127)
!2020 = !DILocation(line: 243, column: 38, scope: !2017)
!2021 = !DILocation(line: 245, column: 7, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2017, file: !2, line: 245, column: 6)
!2023 = !DILocation(line: 245, column: 14, scope: !2022)
!2024 = !DILocation(line: 245, column: 6, scope: !2017)
!2025 = !DILocation(line: 246, column: 24, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !2, line: 246, column: 7)
!2027 = distinct !DILexicalBlock(scope: !2022, file: !2, line: 245, column: 28)
!2028 = !DILocation(line: 246, column: 31, scope: !2026)
!2029 = !DILocation(line: 246, column: 8, scope: !2026)
!2030 = !DILocation(line: 246, column: 7, scope: !2027)
!2031 = !DILocation(line: 247, column: 4, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2026, file: !2, line: 246, column: 37)
!2033 = !DILocation(line: 251, column: 7, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2027, file: !2, line: 251, column: 7)
!2035 = !DILocation(line: 251, column: 14, scope: !2034)
!2036 = !DILocation(line: 251, column: 30, scope: !2034)
!2037 = !DILocation(line: 251, column: 7, scope: !2027)
!2038 = !DILocation(line: 252, column: 4, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2034, file: !2, line: 251, column: 35)
!2040 = !DILocation(line: 255, column: 3, scope: !2027)
!2041 = !DILocation(line: 255, column: 10, scope: !2027)
!2042 = !DILocation(line: 255, column: 23, scope: !2027)
!2043 = !DILocation(line: 256, column: 24, scope: !2027)
!2044 = !DILocation(line: 256, column: 31, scope: !2027)
!2045 = !DILocation(line: 256, column: 54, scope: !2027)
!2046 = !DILocation(line: 256, column: 3, scope: !2027)
!2047 = !DILocation(line: 257, column: 2, scope: !2027)
!2048 = !DILocation(line: 258, column: 1, scope: !2017)
!2049 = !DISubprogram(name: "ftl_band_filled", scope: !62, file: !62, line: 173, type: !2050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!101, !513, !157}
!2052 = !DISubprogram(name: "ftl_needs_reloc", scope: !133, file: !133, line: 200, type: !2053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!176, !131}
!2055 = !DISubprogram(name: "ftl_band_get_next_gc", scope: !62, file: !62, line: 188, type: !2056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{null, !131, !532, !110}
!2058 = distinct !DISubprogram(name: "move_get_band_cb", scope: !2, file: !2, line: 231, type: !534, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2059)
!2059 = !{!2060, !2061, !2062, !2063}
!2060 = !DILocalVariable(name: "band", arg: 1, scope: !2058, file: !2, line: 231, type: !513)
!2061 = !DILocalVariable(name: "cntx", arg: 2, scope: !2058, file: !2, line: 231, type: !110)
!2062 = !DILocalVariable(name: "status", arg: 3, scope: !2058, file: !2, line: 231, type: !176)
!2063 = !DILocalVariable(name: "reloc", scope: !2058, file: !2, line: 233, type: !127)
!2064 = !DILocation(line: 231, column: 35, scope: !2058)
!2065 = !DILocation(line: 231, column: 47, scope: !2058)
!2066 = !DILocation(line: 231, column: 58, scope: !2058)
!2067 = !DILocation(line: 233, column: 2, scope: !2058)
!2068 = !DILocation(line: 233, column: 20, scope: !2058)
!2069 = !DILocation(line: 233, column: 28, scope: !2058)
!2070 = !DILocation(line: 235, column: 6, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2058, file: !2, line: 235, column: 6)
!2072 = !DILocation(line: 235, column: 6, scope: !2058)
!2073 = !DILocation(line: 236, column: 17, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 235, column: 27)
!2075 = !DILocation(line: 236, column: 3, scope: !2074)
!2076 = !DILocation(line: 236, column: 10, scope: !2074)
!2077 = !DILocation(line: 236, column: 15, scope: !2074)
!2078 = !DILocation(line: 237, column: 22, scope: !2074)
!2079 = !DILocation(line: 237, column: 3, scope: !2074)
!2080 = !DILocation(line: 238, column: 2, scope: !2074)
!2081 = !DILocation(line: 239, column: 2, scope: !2058)
!2082 = !DILocation(line: 239, column: 9, scope: !2058)
!2083 = !DILocation(line: 239, column: 22, scope: !2058)
!2084 = !DILocation(line: 240, column: 1, scope: !2058)
!2085 = distinct !DISubprogram(name: "ftl_band_iter_init", scope: !62, file: !62, line: 237, type: !526, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2086)
!2086 = !{!2087}
!2087 = !DILocalVariable(name: "band", arg: 1, scope: !2085, file: !62, line: 237, type: !513)
!2088 = !DILocation(line: 237, column: 37, scope: !2085)
!2089 = !DILocation(line: 240, column: 24, scope: !2085)
!2090 = !DILocation(line: 240, column: 30, scope: !2085)
!2091 = !DILocation(line: 240, column: 2, scope: !2085)
!2092 = !DILocation(line: 240, column: 8, scope: !2085)
!2093 = !DILocation(line: 240, column: 12, scope: !2085)
!2094 = !DILocation(line: 240, column: 17, scope: !2085)
!2095 = !DILocation(line: 240, column: 22, scope: !2085)
!2096 = !DILocation(line: 241, column: 2, scope: !2085)
!2097 = !DILocation(line: 241, column: 8, scope: !2085)
!2098 = !DILocation(line: 241, column: 12, scope: !2085)
!2099 = !DILocation(line: 241, column: 17, scope: !2085)
!2100 = !DILocation(line: 241, column: 24, scope: !2085)
!2101 = !DILocation(line: 242, column: 1, scope: !2085)
!2102 = distinct !DISubprogram(name: "ftl_get_num_blocks_in_band", scope: !133, file: !133, line: 218, type: !2103, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2107)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!112, !2105}
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!2107 = !{!2108}
!2108 = !DILocalVariable(name: "dev", arg: 1, scope: !2102, file: !133, line: 218, type: !2105)
!2109 = !DILocation(line: 218, column: 55, scope: !2102)
!2110 = !DILocation(line: 220, column: 9, scope: !2102)
!2111 = !DILocation(line: 220, column: 14, scope: !2102)
!2112 = !DILocation(line: 220, column: 2, scope: !2102)
!2113 = !DISubprogram(name: "ftl_bitmap_find_first_set", scope: !446, file: !446, line: 88, type: !2114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!112, !444, !112, !112}
!2116 = distinct !DISubprogram(name: "ftl_band_iter_advance", scope: !62, file: !62, line: 245, type: !2117, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2119)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null, !513, !112}
!2119 = !{!2120, !2121}
!2120 = !DILocalVariable(name: "band", arg: 1, scope: !2116, file: !62, line: 245, type: !513)
!2121 = !DILocalVariable(name: "num_blocks", arg: 2, scope: !2116, file: !62, line: 245, type: !112)
!2122 = !DILocation(line: 245, column: 40, scope: !2116)
!2123 = !DILocation(line: 245, column: 55, scope: !2116)
!2124 = !DILocation(line: 247, column: 27, scope: !2116)
!2125 = !DILocation(line: 247, column: 2, scope: !2116)
!2126 = !DILocation(line: 247, column: 8, scope: !2116)
!2127 = !DILocation(line: 247, column: 12, scope: !2116)
!2128 = !DILocation(line: 247, column: 17, scope: !2116)
!2129 = !DILocation(line: 247, column: 24, scope: !2116)
!2130 = !DILocation(line: 248, column: 48, scope: !2116)
!2131 = !DILocation(line: 248, column: 54, scope: !2116)
!2132 = !DILocation(line: 248, column: 60, scope: !2116)
!2133 = !DILocation(line: 248, column: 64, scope: !2116)
!2134 = !DILocation(line: 248, column: 69, scope: !2116)
!2135 = !DILocation(line: 248, column: 75, scope: !2116)
!2136 = !DILocation(line: 248, column: 24, scope: !2116)
!2137 = !DILocation(line: 248, column: 2, scope: !2116)
!2138 = !DILocation(line: 248, column: 8, scope: !2116)
!2139 = !DILocation(line: 248, column: 12, scope: !2116)
!2140 = !DILocation(line: 248, column: 17, scope: !2116)
!2141 = !DILocation(line: 248, column: 22, scope: !2116)
!2142 = !DILocation(line: 250, column: 1, scope: !2116)
!2143 = !DISubprogram(name: "ftl_band_user_blocks_left", scope: !62, file: !62, line: 167, type: !2144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!157, !2146, !157}
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!2148 = distinct !DISubprogram(name: "move_rq_pad", scope: !2, file: !2, line: 357, type: !2149, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2151)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{null, !627, !513}
!2151 = !{!2152, !2153, !2154}
!2152 = !DILocalVariable(name: "rq", arg: 1, scope: !2148, file: !2, line: 357, type: !627)
!2153 = !DILocalVariable(name: "band", arg: 2, scope: !2148, file: !2, line: 357, type: !513)
!2154 = !DILocalVariable(name: "entry", scope: !2148, file: !2, line: 359, type: !1555)
!2155 = !DILocation(line: 357, column: 28, scope: !2148)
!2156 = !DILocation(line: 357, column: 49, scope: !2148)
!2157 = !DILocation(line: 359, column: 2, scope: !2148)
!2158 = !DILocation(line: 359, column: 23, scope: !2148)
!2159 = !DILocation(line: 359, column: 32, scope: !2148)
!2160 = !DILocation(line: 359, column: 36, scope: !2148)
!2161 = !DILocation(line: 359, column: 44, scope: !2148)
!2162 = !DILocation(line: 359, column: 48, scope: !2148)
!2163 = !DILocation(line: 359, column: 53, scope: !2148)
!2164 = !DILocation(line: 361, column: 2, scope: !2148)
!2165 = !DILocation(line: 361, column: 9, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !2, line: 361, column: 2)
!2167 = distinct !DILexicalBlock(scope: !2148, file: !2, line: 361, column: 2)
!2168 = !DILocation(line: 361, column: 13, scope: !2166)
!2169 = !DILocation(line: 361, column: 18, scope: !2166)
!2170 = !DILocation(line: 361, column: 24, scope: !2166)
!2171 = !DILocation(line: 361, column: 28, scope: !2166)
!2172 = !DILocation(line: 361, column: 22, scope: !2166)
!2173 = !DILocation(line: 361, column: 2, scope: !2167)
!2174 = !DILocation(line: 362, column: 17, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2166, file: !2, line: 361, column: 56)
!2176 = !DILocation(line: 362, column: 21, scope: !2175)
!2177 = !DILocation(line: 362, column: 24, scope: !2175)
!2178 = !DILocation(line: 362, column: 3, scope: !2175)
!2179 = !DILocation(line: 362, column: 10, scope: !2175)
!2180 = !DILocation(line: 362, column: 15, scope: !2175)
!2181 = !DILocation(line: 363, column: 23, scope: !2175)
!2182 = !DILocation(line: 363, column: 3, scope: !2175)
!2183 = !DILocation(line: 363, column: 10, scope: !2175)
!2184 = !DILocation(line: 363, column: 16, scope: !2175)
!2185 = !DILocation(line: 363, column: 21, scope: !2175)
!2186 = !DILocation(line: 364, column: 3, scope: !2175)
!2187 = !DILocation(line: 364, column: 10, scope: !2175)
!2188 = !DILocation(line: 364, column: 14, scope: !2175)
!2189 = !DILocation(line: 365, column: 3, scope: !2175)
!2190 = !DILocation(line: 365, column: 10, scope: !2175)
!2191 = !DILocation(line: 365, column: 17, scope: !2175)
!2192 = !DILocation(line: 366, column: 8, scope: !2175)
!2193 = !DILocation(line: 367, column: 36, scope: !2175)
!2194 = !DILocation(line: 367, column: 42, scope: !2175)
!2195 = !DILocation(line: 367, column: 46, scope: !2175)
!2196 = !DILocation(line: 367, column: 49, scope: !2175)
!2197 = !DILocation(line: 367, column: 17, scope: !2175)
!2198 = !DILocation(line: 367, column: 3, scope: !2175)
!2199 = !DILocation(line: 367, column: 7, scope: !2175)
!2200 = !DILocation(line: 367, column: 10, scope: !2175)
!2201 = !DILocation(line: 367, column: 15, scope: !2175)
!2202 = !DILocation(line: 368, column: 3, scope: !2175)
!2203 = !DILocation(line: 368, column: 9, scope: !2175)
!2204 = !DILocation(line: 368, column: 15, scope: !2175)
!2205 = !DILocation(line: 368, column: 18, scope: !2175)
!2206 = !DILocation(line: 369, column: 2, scope: !2175)
!2207 = !DILocation(line: 361, column: 42, scope: !2166)
!2208 = !DILocation(line: 361, column: 46, scope: !2166)
!2209 = !DILocation(line: 361, column: 51, scope: !2166)
!2210 = !DILocation(line: 361, column: 40, scope: !2166)
!2211 = !DILocation(line: 361, column: 2, scope: !2166)
!2212 = distinct !{!2212, !2173, !2213}
!2213 = !DILocation(line: 369, column: 2, scope: !2167)
!2214 = !DILocation(line: 372, column: 1, scope: !2148)
!2215 = !DISubprogram(name: "ftl_bitmap_find_first_clear", scope: !446, file: !446, line: 99, type: !2114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2216 = !DISubprogram(name: "ftl_band_rq_read", scope: !62, file: !62, line: 185, type: !2217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{null, !513, !627}
!2219 = distinct !DISubprogram(name: "move_advance_rq", scope: !2, file: !2, line: 283, type: !657, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2220)
!2220 = !{!2221, !2222, !2223, !2224, !2225}
!2221 = !DILocalVariable(name: "rq", arg: 1, scope: !2219, file: !2, line: 283, type: !627)
!2222 = !DILocalVariable(name: "band", scope: !2219, file: !2, line: 285, type: !513)
!2223 = !DILocalVariable(name: "offset", scope: !2219, file: !2, line: 286, type: !112)
!2224 = !DILocalVariable(name: "i", scope: !2219, file: !2, line: 286, type: !112)
!2225 = !DILocalVariable(name: "entry", scope: !2219, file: !2, line: 287, type: !1555)
!2226 = !DILocation(line: 283, column: 32, scope: !2219)
!2227 = !DILocation(line: 285, column: 2, scope: !2219)
!2228 = !DILocation(line: 285, column: 19, scope: !2219)
!2229 = !DILocation(line: 285, column: 26, scope: !2219)
!2230 = !DILocation(line: 285, column: 30, scope: !2219)
!2231 = !DILocation(line: 285, column: 33, scope: !2219)
!2232 = !DILocation(line: 286, column: 2, scope: !2219)
!2233 = !DILocation(line: 286, column: 11, scope: !2219)
!2234 = !DILocation(line: 286, column: 19, scope: !2219)
!2235 = !DILocation(line: 287, column: 2, scope: !2219)
!2236 = !DILocation(line: 287, column: 23, scope: !2219)
!2237 = !DILocation(line: 287, column: 32, scope: !2219)
!2238 = !DILocation(line: 287, column: 36, scope: !2219)
!2239 = !DILocation(line: 287, column: 44, scope: !2219)
!2240 = !DILocation(line: 287, column: 48, scope: !2219)
!2241 = !DILocation(line: 287, column: 53, scope: !2219)
!2242 = !DILocation(line: 291, column: 9, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2219, file: !2, line: 291, column: 2)
!2244 = !DILocation(line: 291, column: 7, scope: !2243)
!2245 = !DILocation(line: 291, column: 14, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2243, file: !2, line: 291, column: 2)
!2247 = !DILocation(line: 291, column: 18, scope: !2246)
!2248 = !DILocation(line: 291, column: 22, scope: !2246)
!2249 = !DILocation(line: 291, column: 27, scope: !2246)
!2250 = !DILocation(line: 291, column: 16, scope: !2246)
!2251 = !DILocation(line: 291, column: 2, scope: !2243)
!2252 = !DILocation(line: 292, column: 44, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2246, file: !2, line: 291, column: 39)
!2254 = !DILocation(line: 292, column: 50, scope: !2253)
!2255 = !DILocation(line: 292, column: 54, scope: !2253)
!2256 = !DILocation(line: 292, column: 57, scope: !2253)
!2257 = !DILocation(line: 292, column: 12, scope: !2253)
!2258 = !DILocation(line: 292, column: 10, scope: !2253)
!2259 = !DILocation(line: 297, column: 16, scope: !2253)
!2260 = !DILocation(line: 297, column: 22, scope: !2253)
!2261 = !DILocation(line: 297, column: 30, scope: !2253)
!2262 = !DILocation(line: 297, column: 39, scope: !2253)
!2263 = !DILocation(line: 297, column: 47, scope: !2253)
!2264 = !DILocation(line: 297, column: 3, scope: !2253)
!2265 = !DILocation(line: 297, column: 10, scope: !2253)
!2266 = !DILocation(line: 297, column: 14, scope: !2253)
!2267 = !DILocation(line: 298, column: 17, scope: !2253)
!2268 = !DILocation(line: 298, column: 21, scope: !2253)
!2269 = !DILocation(line: 298, column: 24, scope: !2253)
!2270 = !DILocation(line: 298, column: 3, scope: !2253)
!2271 = !DILocation(line: 298, column: 10, scope: !2253)
!2272 = !DILocation(line: 298, column: 15, scope: !2253)
!2273 = !DILocation(line: 299, column: 23, scope: !2253)
!2274 = !DILocation(line: 299, column: 3, scope: !2253)
!2275 = !DILocation(line: 299, column: 10, scope: !2253)
!2276 = !DILocation(line: 299, column: 16, scope: !2253)
!2277 = !DILocation(line: 299, column: 21, scope: !2253)
!2278 = !DILocation(line: 300, column: 19, scope: !2253)
!2279 = !DILocation(line: 300, column: 25, scope: !2253)
!2280 = !DILocation(line: 300, column: 33, scope: !2253)
!2281 = !DILocation(line: 300, column: 42, scope: !2253)
!2282 = !DILocation(line: 300, column: 50, scope: !2253)
!2283 = !DILocation(line: 300, column: 3, scope: !2253)
!2284 = !DILocation(line: 300, column: 10, scope: !2253)
!2285 = !DILocation(line: 300, column: 17, scope: !2253)
!2286 = !DILocation(line: 302, column: 8, scope: !2253)
!2287 = !DILocation(line: 303, column: 36, scope: !2253)
!2288 = !DILocation(line: 303, column: 42, scope: !2253)
!2289 = !DILocation(line: 303, column: 46, scope: !2253)
!2290 = !DILocation(line: 303, column: 49, scope: !2253)
!2291 = !DILocation(line: 303, column: 17, scope: !2253)
!2292 = !DILocation(line: 303, column: 3, scope: !2253)
!2293 = !DILocation(line: 303, column: 7, scope: !2253)
!2294 = !DILocation(line: 303, column: 10, scope: !2253)
!2295 = !DILocation(line: 303, column: 15, scope: !2253)
!2296 = !DILocation(line: 304, column: 3, scope: !2253)
!2297 = !DILocation(line: 304, column: 9, scope: !2253)
!2298 = !DILocation(line: 304, column: 15, scope: !2253)
!2299 = !DILocation(line: 304, column: 18, scope: !2253)
!2300 = !DILocation(line: 305, column: 2, scope: !2253)
!2301 = !DILocation(line: 291, column: 35, scope: !2246)
!2302 = !DILocation(line: 291, column: 2, scope: !2246)
!2303 = distinct !{!2303, !2251, !2304}
!2304 = !DILocation(line: 305, column: 2, scope: !2243)
!2305 = !DILocation(line: 308, column: 2, scope: !2219)
!2306 = !DILocation(line: 308, column: 6, scope: !2219)
!2307 = !DILocation(line: 308, column: 11, scope: !2219)
!2308 = !DILocation(line: 308, column: 13, scope: !2219)
!2309 = !DILocation(line: 311, column: 18, scope: !2219)
!2310 = !DILocation(line: 311, column: 22, scope: !2219)
!2311 = !DILocation(line: 311, column: 27, scope: !2219)
!2312 = !DILocation(line: 311, column: 2, scope: !2219)
!2313 = !DILocation(line: 311, column: 6, scope: !2219)
!2314 = !DILocation(line: 311, column: 11, scope: !2219)
!2315 = !DILocation(line: 311, column: 15, scope: !2219)
!2316 = !DILocation(line: 312, column: 1, scope: !2219)
!2317 = !DISubprogram(name: "ftl_band_next_xfer_addr", scope: !62, file: !62, line: 165, type: !1681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2318 = !DISubprogram(name: "ftl_band_block_offset_from_addr", scope: !62, file: !62, line: 157, type: !2319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!112, !513, !111}
!2321 = !DISubprogram(name: "ftl_l2p_pin", scope: !701, file: !701, line: 34, type: !2322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{null, !131, !112, !112, !706, !110, !710}
!2324 = distinct !DISubprogram(name: "move_pin_cb", scope: !2, file: !2, line: 446, type: !708, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2325)
!2325 = !{!2326, !2327, !2328, !2329, !2330}
!2326 = !DILocalVariable(name: "dev", arg: 1, scope: !2324, file: !2, line: 446, type: !131)
!2327 = !DILocalVariable(name: "status", arg: 2, scope: !2324, file: !2, line: 446, type: !101)
!2328 = !DILocalVariable(name: "pin_ctx", arg: 3, scope: !2324, file: !2, line: 446, type: !710)
!2329 = !DILocalVariable(name: "mv", scope: !2324, file: !2, line: 448, type: !931)
!2330 = !DILocalVariable(name: "rq", scope: !2324, file: !2, line: 449, type: !627)
!2331 = !DILocation(line: 446, column: 34, scope: !2324)
!2332 = !DILocation(line: 446, column: 43, scope: !2324)
!2333 = !DILocation(line: 446, column: 75, scope: !2324)
!2334 = !DILocation(line: 448, column: 2, scope: !2324)
!2335 = !DILocation(line: 448, column: 25, scope: !2324)
!2336 = !DILocation(line: 448, column: 30, scope: !2324)
!2337 = !DILocation(line: 448, column: 39, scope: !2324)
!2338 = !DILocation(line: 449, column: 2, scope: !2324)
!2339 = !DILocation(line: 449, column: 17, scope: !2324)
!2340 = !DILocation(line: 449, column: 22, scope: !2324)
!2341 = !DILocation(line: 449, column: 26, scope: !2324)
!2342 = !DILocation(line: 451, column: 6, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2324, file: !2, line: 451, column: 6)
!2344 = !DILocation(line: 451, column: 6, scope: !2324)
!2345 = !DILocation(line: 452, column: 21, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2343, file: !2, line: 451, column: 14)
!2347 = !DILocation(line: 452, column: 3, scope: !2346)
!2348 = !DILocation(line: 452, column: 7, scope: !2346)
!2349 = !DILocation(line: 452, column: 12, scope: !2346)
!2350 = !DILocation(line: 452, column: 19, scope: !2346)
!2351 = !DILocation(line: 453, column: 3, scope: !2346)
!2352 = !DILocation(line: 453, column: 12, scope: !2346)
!2353 = !DILocation(line: 453, column: 16, scope: !2346)
!2354 = !DILocation(line: 454, column: 2, scope: !2346)
!2355 = !DILocation(line: 456, column: 8, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2324, file: !2, line: 456, column: 6)
!2357 = !DILocation(line: 456, column: 12, scope: !2356)
!2358 = !DILocation(line: 456, column: 17, scope: !2356)
!2359 = !DILocation(line: 456, column: 6, scope: !2356)
!2360 = !DILocation(line: 456, column: 27, scope: !2356)
!2361 = !DILocation(line: 456, column: 6, scope: !2324)
!2362 = !DILocation(line: 457, column: 7, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !2, line: 457, column: 7)
!2364 = distinct !DILexicalBlock(scope: !2356, file: !2, line: 456, column: 33)
!2365 = !DILocation(line: 457, column: 11, scope: !2363)
!2366 = !DILocation(line: 457, column: 16, scope: !2363)
!2367 = !DILocation(line: 457, column: 7, scope: !2364)
!2368 = !DILocation(line: 459, column: 17, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2363, file: !2, line: 457, column: 24)
!2370 = !DILocation(line: 459, column: 4, scope: !2369)
!2371 = !DILocation(line: 460, column: 19, scope: !2369)
!2372 = !DILocation(line: 460, column: 4, scope: !2369)
!2373 = !DILocation(line: 461, column: 4, scope: !2369)
!2374 = !DILocation(line: 464, column: 18, scope: !2364)
!2375 = !DILocation(line: 464, column: 3, scope: !2364)
!2376 = !DILocation(line: 465, column: 2, scope: !2364)
!2377 = !DILocation(line: 466, column: 1, scope: !2324)
!2378 = !DISubprogram(name: "ftl_l2p_pin_skip", scope: !701, file: !701, line: 37, type: !2379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{null, !131, !706, !110, !710}
!2381 = distinct !DISubprogram(name: "ftl_writer_queue_rq", scope: !883, file: !883, line: 69, type: !2382, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2385)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{null, !2384, !627}
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!2385 = !{!2386, !2387}
!2386 = !DILocalVariable(name: "writer", arg: 1, scope: !2381, file: !883, line: 69, type: !2384)
!2387 = !DILocalVariable(name: "rq", arg: 2, scope: !2381, file: !883, line: 69, type: !627)
!2388 = !DILocation(line: 69, column: 40, scope: !2381)
!2389 = !DILocation(line: 69, column: 63, scope: !2381)
!2390 = !DILocation(line: 71, column: 2, scope: !2381)
!2391 = !DILocation(line: 71, column: 2, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2381, file: !883, line: 71, column: 2)
!2393 = !DILocation(line: 72, column: 1, scope: !2381)
!2394 = distinct !DISubprogram(name: "ftl_band_qd", scope: !62, file: !62, line: 223, type: !2395, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2397)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!112, !2146}
!2397 = !{!2398}
!2398 = !DILocalVariable(name: "band", arg: 1, scope: !2394, file: !62, line: 223, type: !2146)
!2399 = !DILocation(line: 223, column: 36, scope: !2394)
!2400 = !DILocation(line: 225, column: 9, scope: !2394)
!2401 = !DILocation(line: 225, column: 15, scope: !2394)
!2402 = !DILocation(line: 225, column: 2, scope: !2394)
!2403 = distinct !DISubprogram(name: "ftl_band_empty", scope: !62, file: !62, line: 217, type: !2404, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2406)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!101, !2146}
!2406 = !{!2407}
!2407 = !DILocalVariable(name: "band", arg: 1, scope: !2403, file: !62, line: 217, type: !2146)
!2408 = !DILocation(line: 217, column: 39, scope: !2403)
!2409 = !DILocation(line: 219, column: 9, scope: !2403)
!2410 = !DILocation(line: 219, column: 15, scope: !2403)
!2411 = !DILocation(line: 219, column: 23, scope: !2403)
!2412 = !DILocation(line: 219, column: 33, scope: !2403)
!2413 = !DILocation(line: 219, column: 2, scope: !2403)
!2414 = !DISubprogram(name: "ftl_band_free", scope: !62, file: !62, line: 183, type: !526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2415 = distinct !DISubprogram(name: "move_handle_band_error", scope: !2, file: !2, line: 597, type: !526, scopeLine: 598, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2416)
!2416 = !{!2417, !2418}
!2417 = !DILocalVariable(name: "band", arg: 1, scope: !2415, file: !2, line: 597, type: !513)
!2418 = !DILocalVariable(name: "reloc", scope: !2415, file: !2, line: 599, type: !127)
!2419 = !DILocation(line: 597, column: 41, scope: !2415)
!2420 = !DILocation(line: 599, column: 2, scope: !2415)
!2421 = !DILocation(line: 599, column: 20, scope: !2415)
!2422 = !DILocation(line: 599, column: 28, scope: !2415)
!2423 = !DILocation(line: 599, column: 34, scope: !2415)
!2424 = !DILocation(line: 599, column: 39, scope: !2415)
!2425 = !DILocation(line: 604, column: 2, scope: !2415)
!2426 = !DILocation(line: 604, column: 2, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !2, line: 604, column: 2)
!2428 = distinct !DILexicalBlock(scope: !2415, file: !2, line: 604, column: 2)
!2429 = !DILocation(line: 604, column: 2, scope: !2428)
!2430 = !DILocation(line: 605, column: 2, scope: !2415)
!2431 = !DILocation(line: 605, column: 9, scope: !2415)
!2432 = !DILocation(line: 605, column: 24, scope: !2415)
!2433 = !DILocation(line: 607, column: 2, scope: !2415)
!2434 = !DILocation(line: 607, column: 8, scope: !2415)
!2435 = !DILocation(line: 607, column: 12, scope: !2415)
!2436 = !DILocation(line: 607, column: 18, scope: !2415)
!2437 = !DILocation(line: 608, column: 21, scope: !2415)
!2438 = !DILocation(line: 608, column: 2, scope: !2415)
!2439 = !DILocation(line: 609, column: 1, scope: !2415)
!2440 = !DISubprogram(name: "ftl_band_set_state", scope: !62, file: !62, line: 160, type: !2441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{null, !513, !61}

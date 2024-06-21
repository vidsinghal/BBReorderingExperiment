; ModuleID = 'samples/258.bc'
source_filename = "topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct._HsaSystemProperties = type { i32, i32, i32, i32 }
%struct.node_t = type <{ i32, %struct._HsaNodeProperties, [4 x i8], ptr, ptr, ptr }>
%struct._HsaNodeProperties = type { i32, i32, i32, i32, i32, i32, i32, %union.HSA_CAPABILITY, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i64, i32, i32, [128 x i16] }
%union.HSA_CAPABILITY = type { i32 }
%struct._HsaMemoryProperties = type <{ i32, %union.anon, %union.HSA_MEMORYPROPERTY, i32, i32, i64 }>
%union.anon = type { i64 }
%union.HSA_MEMORYPROPERTY = type { i32 }
%struct._HaCacheProperties = type { i32, i32, i32, i32, i32, i32, i32, %union.HsaCacheType, [256 x i32] }
%union.HsaCacheType = type { i32 }
%struct._HsaIoLinkProperties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.HSA_LINKPROPERTY }
%union.HSA_LINKPROPERTY = type { i32 }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@node = internal global ptr null, align 8, !dbg !0
@system = internal global ptr null, align 8, !dbg !116
@kfd_open_count = external global i64, align 8
@hsakmt_mutex = external global %union.pthread_mutex_t, align 8
@.str = private unnamed_addr constant [7 x i8] c"system\00", align 1, !dbg !67
@.str.1 = private unnamed_addr constant [11 x i8] c"topology.c\00", align 1, !dbg !73
@__PRETTY_FUNCTION__.hsaKmtAcquireSystemProperties = private unnamed_addr constant [67 x i8] c"HSAKMT_STATUS hsaKmtAcquireSystemProperties(HsaSystemProperties *)\00", align 1, !dbg !78
@__PRETTY_FUNCTION__.hsaKmtGetNodeProperties = private unnamed_addr constant [70 x i8] c"HSAKMT_STATUS hsaKmtGetNodeProperties(HSAuint32, HsaNodeProperties *)\00", align 1, !dbg !84
@__PRETTY_FUNCTION__.hsaKmtGetNodeMemoryProperties = private unnamed_addr constant [89 x i8] c"HSAKMT_STATUS hsaKmtGetNodeMemoryProperties(HSAuint32, HSAuint32, HsaMemoryProperties *)\00", align 1, !dbg !89
@.str.2 = private unnamed_addr constant [17 x i8] c"node[NodeId].mem\00", align 1, !dbg !94
@__PRETTY_FUNCTION__.hsaKmtGetNodeCacheProperties = private unnamed_addr constant [98 x i8] c"HSAKMT_STATUS hsaKmtGetNodeCacheProperties(HSAuint32, HSAuint32, HSAuint32, HsaCacheProperties *)\00", align 1, !dbg !99
@.str.3 = private unnamed_addr constant [19 x i8] c"node[NodeId].cache\00", align 1, !dbg !104
@__PRETTY_FUNCTION__.hsaKmtGetNodeIoLinkProperties = private unnamed_addr constant [89 x i8] c"HSAKMT_STATUS hsaKmtGetNodeIoLinkProperties(HSAuint32, HSAuint32, HsaIoLinkProperties *)\00", align 1, !dbg !109
@.str.4 = private unnamed_addr constant [18 x i8] c"node[NodeId].link\00", align 1, !dbg !111
@.str.5 = private unnamed_addr constant [4 x i8] c"gen\00", align 1, !dbg !127
@__PRETTY_FUNCTION__.topology_sysfs_get_generation = private unnamed_addr constant [56 x i8] c"HSAKMT_STATUS topology_sysfs_get_generation(uint32_t *)\00", align 1, !dbg !132
@.str.6 = private unnamed_addr constant [52 x i8] c"/sys/devices/virtual/kfd/kfd/topology/generation_id\00", align 1, !dbg !137
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !142
@.str.8 = private unnamed_addr constant [4 x i8] c"%ul\00", align 1, !dbg !147
@.str.9 = private unnamed_addr constant [6 x i8] c"props\00", align 1, !dbg !149
@__PRETTY_FUNCTION__.topology_sysfs_get_system_props = private unnamed_addr constant [69 x i8] c"HSAKMT_STATUS topology_sysfs_get_system_props(HsaSystemProperties *)\00", align 1, !dbg !154
@.str.10 = private unnamed_addr constant [56 x i8] c"/sys/devices/virtual/kfd/kfd/topology/system_properties\00", align 1, !dbg !159
@.str.11 = private unnamed_addr constant [11 x i8] c"%s %llu\0A%n\00", align 1, !dbg !162
@.str.12 = private unnamed_addr constant [13 x i8] c"platform_oem\00", align 1, !dbg !164
@.str.13 = private unnamed_addr constant [12 x i8] c"platform_id\00", align 1, !dbg !169
@.str.14 = private unnamed_addr constant [13 x i8] c"platform_rev\00", align 1, !dbg !174
@.str.15 = private unnamed_addr constant [44 x i8] c"/sys/devices/virtual/kfd/kfd/topology/nodes\00", align 1, !dbg !176
@.str.16 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !181
@.str.17 = private unnamed_addr constant [3 x i8] c"..\00", align 1, !dbg !183
@__PRETTY_FUNCTION__.topology_sysfs_get_node_props = private unnamed_addr constant [87 x i8] c"HSAKMT_STATUS topology_sysfs_get_node_props(uint32_t, HsaNodeProperties *, uint32_t *)\00", align 1, !dbg !188
@.str.18 = private unnamed_addr constant [7 x i8] c"gpu_id\00", align 1, !dbg !193
@.str.19 = private unnamed_addr constant [11 x i8] c"%s/%d/name\00", align 1, !dbg !195
@.str.20 = private unnamed_addr constant [17 x i8] c"%s/%d/properties\00", align 1, !dbg !197
@.str.21 = private unnamed_addr constant [16 x i8] c"cpu_cores_count\00", align 1, !dbg !199
@.str.22 = private unnamed_addr constant [11 x i8] c"simd_count\00", align 1, !dbg !204
@.str.23 = private unnamed_addr constant [16 x i8] c"mem_banks_count\00", align 1, !dbg !206
@.str.24 = private unnamed_addr constant [13 x i8] c"caches_count\00", align 1, !dbg !208
@.str.25 = private unnamed_addr constant [15 x i8] c"io_links_count\00", align 1, !dbg !210
@.str.26 = private unnamed_addr constant [17 x i8] c"cpu_core_id_base\00", align 1, !dbg !215
@.str.27 = private unnamed_addr constant [13 x i8] c"simd_id_base\00", align 1, !dbg !217
@.str.28 = private unnamed_addr constant [11 x i8] c"capability\00", align 1, !dbg !219
@.str.29 = private unnamed_addr constant [19 x i8] c"max_waves_per_simd\00", align 1, !dbg !221
@.str.30 = private unnamed_addr constant [15 x i8] c"lds_size_in_kb\00", align 1, !dbg !223
@.str.31 = private unnamed_addr constant [15 x i8] c"gds_size_in_kb\00", align 1, !dbg !225
@.str.32 = private unnamed_addr constant [16 x i8] c"wave_front_size\00", align 1, !dbg !227
@.str.33 = private unnamed_addr constant [12 x i8] c"array_count\00", align 1, !dbg !229
@.str.34 = private unnamed_addr constant [23 x i8] c"simd_arrays_per_engine\00", align 1, !dbg !231
@.str.35 = private unnamed_addr constant [18 x i8] c"cu_per_simd_array\00", align 1, !dbg !236
@.str.36 = private unnamed_addr constant [12 x i8] c"simd_per_cu\00", align 1, !dbg !238
@.str.37 = private unnamed_addr constant [21 x i8] c"max_slots_scratch_cu\00", align 1, !dbg !240
@.str.38 = private unnamed_addr constant [11 x i8] c"fw_version\00", align 1, !dbg !245
@.str.39 = private unnamed_addr constant [10 x i8] c"vendor_id\00", align 1, !dbg !247
@.str.40 = private unnamed_addr constant [10 x i8] c"device_id\00", align 1, !dbg !252
@.str.41 = private unnamed_addr constant [12 x i8] c"location_id\00", align 1, !dbg !254
@.str.42 = private unnamed_addr constant [24 x i8] c"max_engine_clk_fcompute\00", align 1, !dbg !256
@.str.43 = private unnamed_addr constant [24 x i8] c"max_engine_clk_ccompute\00", align 1, !dbg !261
@.str.44 = private unnamed_addr constant [15 x i8] c"local_mem_size\00", align 1, !dbg !263
@__PRETTY_FUNCTION__.topology_sysfs_get_gpu_id = private unnamed_addr constant [62 x i8] c"HSAKMT_STATUS topology_sysfs_get_gpu_id(uint32_t, uint32_t *)\00", align 1, !dbg !265
@.str.45 = private unnamed_addr constant [13 x i8] c"%s/%d/gpu_id\00", align 1, !dbg !270
@.str.46 = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1, !dbg !272
@.str.47 = private unnamed_addr constant [9 x i8] c"stepping\00", align 1, !dbg !277
@.str.48 = private unnamed_addr constant [16 x i8] c"stepping\09: %hu\0A\00", align 1, !dbg !282
@.str.49 = private unnamed_addr constant [2 x i8] c"n\00", align 1, !dbg !284
@__PRETTY_FUNCTION__.free_node = private unnamed_addr constant [25 x i8] c"void free_node(node_t *)\00", align 1, !dbg !286
@__PRETTY_FUNCTION__.topology_sysfs_get_mem_props = private unnamed_addr constant [86 x i8] c"HSAKMT_STATUS topology_sysfs_get_mem_props(uint32_t, uint32_t, HsaMemoryProperties *)\00", align 1, !dbg !291
@.str.50 = private unnamed_addr constant [30 x i8] c"%s/%d/mem_banks/%d/properties\00", align 1, !dbg !296
@.str.51 = private unnamed_addr constant [10 x i8] c"heap_type\00", align 1, !dbg !301
@.str.52 = private unnamed_addr constant [14 x i8] c"size_in_bytes\00", align 1, !dbg !303
@.str.53 = private unnamed_addr constant [6 x i8] c"flags\00", align 1, !dbg !305
@.str.54 = private unnamed_addr constant [6 x i8] c"width\00", align 1, !dbg !307
@.str.55 = private unnamed_addr constant [12 x i8] c"mem_clk_max\00", align 1, !dbg !309
@__PRETTY_FUNCTION__.topology_sysfs_get_cache_props = private unnamed_addr constant [87 x i8] c"HSAKMT_STATUS topology_sysfs_get_cache_props(uint32_t, uint32_t, HsaCacheProperties *)\00", align 1, !dbg !311
@.str.56 = private unnamed_addr constant [27 x i8] c"%s/%d/caches/%d/properties\00", align 1, !dbg !313
@.str.57 = private unnamed_addr constant [17 x i8] c"processor_id_low\00", align 1, !dbg !318
@.str.58 = private unnamed_addr constant [6 x i8] c"level\00", align 1, !dbg !320
@.str.59 = private unnamed_addr constant [5 x i8] c"size\00", align 1, !dbg !322
@.str.60 = private unnamed_addr constant [16 x i8] c"cache_line_size\00", align 1, !dbg !327
@.str.61 = private unnamed_addr constant [20 x i8] c"cache_lines_per_tag\00", align 1, !dbg !329
@.str.62 = private unnamed_addr constant [12 x i8] c"association\00", align 1, !dbg !334
@.str.63 = private unnamed_addr constant [8 x i8] c"latency\00", align 1, !dbg !336
@.str.64 = private unnamed_addr constant [5 x i8] c"type\00", align 1, !dbg !341
@.str.65 = private unnamed_addr constant [12 x i8] c"sibling_map\00", align 1, !dbg !343
@.str.66 = private unnamed_addr constant [15 x i8] c"sibling_map %n\00", align 1, !dbg !345
@.str.67 = private unnamed_addr constant [11 x i8] c"%u%*[,\0A]%n\00", align 1, !dbg !347
@__PRETTY_FUNCTION__.topology_sysfs_get_iolink_props = private unnamed_addr constant [89 x i8] c"HSAKMT_STATUS topology_sysfs_get_iolink_props(uint32_t, uint32_t, HsaIoLinkProperties *)\00", align 1, !dbg !349
@.str.68 = private unnamed_addr constant [28 x i8] c"%s/%d/io_link/%d/properties\00", align 1, !dbg !351
@.str.69 = private unnamed_addr constant [14 x i8] c"version_major\00", align 1, !dbg !356
@.str.70 = private unnamed_addr constant [14 x i8] c"version_minor\00", align 1, !dbg !358
@.str.71 = private unnamed_addr constant [10 x i8] c"node_from\00", align 1, !dbg !360
@.str.72 = private unnamed_addr constant [8 x i8] c"node_to\00", align 1, !dbg !362
@.str.73 = private unnamed_addr constant [7 x i8] c"weight\00", align 1, !dbg !364
@.str.74 = private unnamed_addr constant [12 x i8] c"min_latency\00", align 1, !dbg !366
@.str.75 = private unnamed_addr constant [12 x i8] c"max_latency\00", align 1, !dbg !368
@.str.76 = private unnamed_addr constant [14 x i8] c"min_bandwidth\00", align 1, !dbg !370
@.str.77 = private unnamed_addr constant [14 x i8] c"max_bandwidth\00", align 1, !dbg !372
@.str.78 = private unnamed_addr constant [26 x i8] c"recommended_transfer_size\00", align 1, !dbg !374
@.str.79 = private unnamed_addr constant [25 x i8] c"Probable inconsistency?\0A\00", align 1, !dbg !379

; Function Attrs: nounwind uwtable
define i32 @validate_nodeid(i32 noundef %nodeid, ptr noundef %gpu_id) #0 !dbg !537 {
entry:
  %retval = alloca i32, align 4
  %nodeid.addr = alloca i32, align 4
  %gpu_id.addr = alloca ptr, align 8
  store i32 %nodeid, ptr %nodeid.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %nodeid.addr, metadata !543, metadata !DIExpression()), !dbg !545
  store ptr %gpu_id, ptr %gpu_id.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %gpu_id.addr, metadata !544, metadata !DIExpression()), !dbg !546
  %0 = load i32, ptr %nodeid.addr, align 4, !dbg !547
  %cmp = icmp uge i32 %0, 8, !dbg !549
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !550

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr @node, align 8, !dbg !551
  %tobool = icmp ne ptr %1, null, !dbg !551
  br i1 %tobool, label %lor.lhs.false1, label %if.then, !dbg !552

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr @system, align 8, !dbg !553
  %tobool2 = icmp ne ptr %2, null, !dbg !553
  br i1 %tobool2, label %lor.lhs.false3, label %if.then, !dbg !554

lor.lhs.false3:                                   ; preds = %lor.lhs.false1
  %3 = load ptr, ptr @system, align 8, !dbg !555
  %NumNodes = getelementptr inbounds %struct._HsaSystemProperties, ptr %3, i32 0, i32 0, !dbg !556
  %4 = load i32, ptr %NumNodes, align 4, !dbg !556
  %5 = load i32, ptr %nodeid.addr, align 4, !dbg !557
  %cmp4 = icmp ule i32 %4, %5, !dbg !558
  br i1 %cmp4, label %if.then, label %if.end, !dbg !559

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false1, %lor.lhs.false, %entry
  store i32 5, ptr %retval, align 4, !dbg !560
  br label %return, !dbg !560

if.end:                                           ; preds = %lor.lhs.false3
  %6 = load ptr, ptr %gpu_id.addr, align 8, !dbg !561
  %tobool5 = icmp ne ptr %6, null, !dbg !561
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !563

if.then6:                                         ; preds = %if.end
  %7 = load ptr, ptr @node, align 8, !dbg !564
  %8 = load i32, ptr %nodeid.addr, align 4, !dbg !565
  %idxprom = zext i32 %8 to i64, !dbg !564
  %arrayidx = getelementptr inbounds %struct.node_t, ptr %7, i64 %idxprom, !dbg !564
  %gpu_id7 = getelementptr inbounds %struct.node_t, ptr %arrayidx, i32 0, i32 0, !dbg !566
  %9 = load i32, ptr %gpu_id7, align 8, !dbg !566
  %10 = load ptr, ptr %gpu_id.addr, align 8, !dbg !567
  store i32 %9, ptr %10, align 4, !dbg !568
  br label %if.end8, !dbg !569

if.end8:                                          ; preds = %if.then6, %if.end
  store i32 0, ptr %retval, align 4, !dbg !570
  br label %return, !dbg !570

return:                                           ; preds = %if.end8, %if.then
  %11 = load i32, ptr %retval, align 4, !dbg !571
  ret i32 %11, !dbg !571
}

; Function Attrs: nounwind uwtable
define i32 @gpuid_to_nodeid(i32 noundef %gpu_id, ptr noundef %node_id) #0 !dbg !572 {
entry:
  %retval = alloca i32, align 4
  %gpu_id.addr = alloca i32, align 4
  %node_id.addr = alloca ptr, align 8
  %node_idx = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %gpu_id, ptr %gpu_id.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %gpu_id.addr, metadata !574, metadata !DIExpression()), !dbg !577
  store ptr %node_id, ptr %node_id.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %node_id.addr, metadata !575, metadata !DIExpression()), !dbg !578
  call void @llvm.lifetime.start.p0(i64 8, ptr %node_idx) #10, !dbg !579
  tail call void @llvm.dbg.declare(metadata ptr %node_idx, metadata !576, metadata !DIExpression()), !dbg !580
  store i64 0, ptr %node_idx, align 8, !dbg !581
  br label %for.cond, !dbg !583

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %node_idx, align 8, !dbg !584
  %1 = load ptr, ptr @system, align 8, !dbg !586
  %NumNodes = getelementptr inbounds %struct._HsaSystemProperties, ptr %1, i32 0, i32 0, !dbg !587
  %2 = load i32, ptr %NumNodes, align 4, !dbg !587
  %conv = zext i32 %2 to i64, !dbg !586
  %cmp = icmp ult i64 %0, %conv, !dbg !588
  br i1 %cmp, label %for.body, label %for.end, !dbg !589

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr @node, align 8, !dbg !590
  %4 = load i64, ptr %node_idx, align 8, !dbg !593
  %arrayidx = getelementptr inbounds %struct.node_t, ptr %3, i64 %4, !dbg !590
  %gpu_id2 = getelementptr inbounds %struct.node_t, ptr %arrayidx, i32 0, i32 0, !dbg !594
  %5 = load i32, ptr %gpu_id2, align 8, !dbg !594
  %6 = load i32, ptr %gpu_id.addr, align 4, !dbg !595
  %cmp3 = icmp eq i32 %5, %6, !dbg !596
  br i1 %cmp3, label %if.then, label %if.end, !dbg !597

if.then:                                          ; preds = %for.body
  %7 = load i64, ptr %node_idx, align 8, !dbg !598
  %conv5 = trunc i64 %7 to i32, !dbg !598
  %8 = load ptr, ptr %node_id.addr, align 8, !dbg !600
  store i32 %conv5, ptr %8, align 4, !dbg !601
  store i32 0, ptr %retval, align 4, !dbg !602
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !602

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !603

for.inc:                                          ; preds = %if.end
  %9 = load i64, ptr %node_idx, align 8, !dbg !604
  %inc = add i64 %9, 1, !dbg !604
  store i64 %inc, ptr %node_idx, align 8, !dbg !604
  br label %for.cond, !dbg !605, !llvm.loop !606

for.end:                                          ; preds = %for.cond
  store i32 5, ptr %retval, align 4, !dbg !609
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !609

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node_idx) #10, !dbg !610
  %10 = load i32, ptr %retval, align 4, !dbg !610
  ret i32 %10, !dbg !610
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @hsaKmtAcquireSystemProperties(ptr noundef %SystemProperties) #0 !dbg !611 {
entry:
  %retval = alloca i32, align 4
  %SystemProperties.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %SystemProperties, ptr %SystemProperties.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %SystemProperties.addr, metadata !615, metadata !DIExpression()), !dbg !618
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !619
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !616, metadata !DIExpression()), !dbg !620
  br label %do.body, !dbg !621

do.body:                                          ; preds = %entry
  %0 = load i64, ptr @kfd_open_count, align 8, !dbg !622
  %cmp = icmp eq i64 %0, 0, !dbg !622
  br i1 %cmp, label %if.then, label %if.end, !dbg !625

if.then:                                          ; preds = %do.body
  store i32 20, ptr %retval, align 4, !dbg !622
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !622

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !625

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !625

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %SystemProperties.addr, align 8, !dbg !626
  %tobool = icmp ne ptr %1, null, !dbg !626
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !628

if.then1:                                         ; preds = %do.end
  store i32 3, ptr %retval, align 4, !dbg !629
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !629

if.end2:                                          ; preds = %do.end
  %call = call i32 @pthread_mutex_lock(ptr noundef @hsakmt_mutex) #10, !dbg !630
  %call3 = call i32 @topology_take_snapshot(), !dbg !631
  store i32 %call3, ptr %err, align 4, !dbg !632
  %2 = load i32, ptr %err, align 4, !dbg !633
  %cmp4 = icmp ne i32 %2, 0, !dbg !635
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !636

if.then5:                                         ; preds = %if.end2
  br label %out, !dbg !637

if.end6:                                          ; preds = %if.end2
  %3 = load ptr, ptr @system, align 8, !dbg !638
  %tobool7 = icmp ne ptr %3, null, !dbg !638
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !641

if.then8:                                         ; preds = %if.end6
  br label %if.end9, !dbg !641

if.else:                                          ; preds = %if.end6
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 732, ptr noundef @__PRETTY_FUNCTION__.hsaKmtAcquireSystemProperties) #11, !dbg !638
  unreachable, !dbg !638

if.end9:                                          ; preds = %if.then8
  %4 = load ptr, ptr %SystemProperties.addr, align 8, !dbg !642
  %5 = load ptr, ptr @system, align 8, !dbg !643
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 4 %5, i64 16, i1 false), !dbg !644
  store i32 0, ptr %err, align 4, !dbg !645
  br label %out, !dbg !646

out:                                              ; preds = %if.end9, %if.then5
  tail call void @llvm.dbg.label(metadata !617), !dbg !647
  %call10 = call i32 @pthread_mutex_unlock(ptr noundef @hsakmt_mutex) #10, !dbg !648
  %6 = load i32, ptr %err, align 4, !dbg !649
  store i32 %6, ptr %retval, align 4, !dbg !650
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !650

cleanup:                                          ; preds = %out, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !651
  %7 = load i32, ptr %retval, align 4, !dbg !651
  ret i32 %7, !dbg !651
}

; Function Attrs: nounwind
declare !dbg !652 i32 @pthread_mutex_lock(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @topology_take_snapshot() #0 !dbg !688 {
entry:
  %retval = alloca i32, align 4
  %gen_start = alloca i32, align 4
  %gen_end = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %mem_id = alloca i32, align 4
  %cache_id = alloca i32, align 4
  %link_id = alloca i32, align 4
  %sys_props = alloca %struct._HsaSystemProperties, align 4
  %temp_nodes = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %gen_start) #10, !dbg !704
  tail call void @llvm.dbg.declare(metadata ptr %gen_start, metadata !692, metadata !DIExpression()), !dbg !705
  call void @llvm.lifetime.start.p0(i64 4, ptr %gen_end) #10, !dbg !704
  tail call void @llvm.dbg.declare(metadata ptr %gen_end, metadata !693, metadata !DIExpression()), !dbg !706
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !704
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !694, metadata !DIExpression()), !dbg !707
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10, !dbg !704
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !695, metadata !DIExpression()), !dbg !708
  call void @llvm.lifetime.start.p0(i64 4, ptr %mem_id) #10, !dbg !704
  tail call void @llvm.dbg.declare(metadata ptr %mem_id, metadata !696, metadata !DIExpression()), !dbg !709
  call void @llvm.lifetime.start.p0(i64 4, ptr %cache_id) #10, !dbg !704
  tail call void @llvm.dbg.declare(metadata ptr %cache_id, metadata !697, metadata !DIExpression()), !dbg !710
  call void @llvm.lifetime.start.p0(i64 4, ptr %link_id) #10, !dbg !704
  tail call void @llvm.dbg.declare(metadata ptr %link_id, metadata !698, metadata !DIExpression()), !dbg !711
  call void @llvm.lifetime.start.p0(i64 16, ptr %sys_props) #10, !dbg !712
  tail call void @llvm.dbg.declare(metadata ptr %sys_props, metadata !699, metadata !DIExpression()), !dbg !713
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp_nodes) #10, !dbg !714
  tail call void @llvm.dbg.declare(metadata ptr %temp_nodes, metadata !700, metadata !DIExpression()), !dbg !715
  store ptr null, ptr %temp_nodes, align 8, !dbg !715
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !716
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !701, metadata !DIExpression()), !dbg !717
  store i32 0, ptr %ret, align 4, !dbg !717
  br label %retry, !dbg !716

retry:                                            ; preds = %if.end244, %entry
  tail call void @llvm.dbg.label(metadata !702), !dbg !718
  %call = call i32 @topology_sysfs_get_generation(ptr noundef %gen_start), !dbg !719
  store i32 %call, ptr %ret, align 4, !dbg !720
  %0 = load i32, ptr %ret, align 4, !dbg !721
  %cmp = icmp ne i32 %0, 0, !dbg !723
  br i1 %cmp, label %if.then, label %if.end, !dbg !724

if.then:                                          ; preds = %retry
  %1 = load i32, ptr %ret, align 4, !dbg !725
  store i32 %1, ptr %retval, align 4, !dbg !726
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !726

if.end:                                           ; preds = %retry
  %call1 = call i32 @topology_sysfs_get_system_props(ptr noundef %sys_props), !dbg !727
  store i32 %call1, ptr %ret, align 4, !dbg !728
  %2 = load i32, ptr %ret, align 4, !dbg !729
  %cmp2 = icmp ne i32 %2, 0, !dbg !731
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !732

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %ret, align 4, !dbg !733
  store i32 %3, ptr %retval, align 4, !dbg !734
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !734

if.end4:                                          ; preds = %if.end
  %NumNodes = getelementptr inbounds %struct._HsaSystemProperties, ptr %sys_props, i32 0, i32 0, !dbg !735
  %4 = load i32, ptr %NumNodes, align 4, !dbg !735
  %cmp5 = icmp ugt i32 %4, 0, !dbg !737
  br i1 %cmp5, label %if.then6, label %if.end210, !dbg !738

if.then6:                                         ; preds = %if.end4
  %NumNodes7 = getelementptr inbounds %struct._HsaSystemProperties, ptr %sys_props, i32 0, i32 0, !dbg !739
  %5 = load i32, ptr %NumNodes7, align 4, !dbg !739
  %conv = zext i32 %5 to i64, !dbg !741
  %mul = mul i64 %conv, 384, !dbg !742
  %call8 = call noalias ptr @calloc(i64 noundef %mul, i64 noundef 1) #12, !dbg !743
  store ptr %call8, ptr %temp_nodes, align 8, !dbg !744
  %6 = load ptr, ptr %temp_nodes, align 8, !dbg !745
  %tobool = icmp ne ptr %6, null, !dbg !745
  br i1 %tobool, label %if.end10, label %if.then9, !dbg !747

if.then9:                                         ; preds = %if.then6
  store i32 6, ptr %retval, align 4, !dbg !748
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !748

if.end10:                                         ; preds = %if.then6
  store i32 0, ptr %i, align 4, !dbg !749
  br label %for.cond, !dbg !751

for.cond:                                         ; preds = %for.inc207, %if.end10
  %7 = load i32, ptr %i, align 4, !dbg !752
  %NumNodes11 = getelementptr inbounds %struct._HsaSystemProperties, ptr %sys_props, i32 0, i32 0, !dbg !754
  %8 = load i32, ptr %NumNodes11, align 4, !dbg !754
  %cmp12 = icmp ult i32 %7, %8, !dbg !755
  br i1 %cmp12, label %for.body, label %for.end209, !dbg !756

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %i, align 4, !dbg !757
  %10 = load ptr, ptr %temp_nodes, align 8, !dbg !759
  %11 = load i32, ptr %i, align 4, !dbg !760
  %idxprom = zext i32 %11 to i64, !dbg !759
  %arrayidx = getelementptr inbounds %struct.node_t, ptr %10, i64 %idxprom, !dbg !759
  %node = getelementptr inbounds %struct.node_t, ptr %arrayidx, i32 0, i32 1, !dbg !761
  %12 = load ptr, ptr %temp_nodes, align 8, !dbg !762
  %13 = load i32, ptr %i, align 4, !dbg !763
  %idxprom14 = zext i32 %13 to i64, !dbg !762
  %arrayidx15 = getelementptr inbounds %struct.node_t, ptr %12, i64 %idxprom14, !dbg !762
  %gpu_id = getelementptr inbounds %struct.node_t, ptr %arrayidx15, i32 0, i32 0, !dbg !764
  %call16 = call i32 @topology_sysfs_get_node_props(i32 noundef %9, ptr noundef %node, ptr noundef %gpu_id), !dbg !765
  store i32 %call16, ptr %ret, align 4, !dbg !766
  %14 = load i32, ptr %ret, align 4, !dbg !767
  %cmp17 = icmp ne i32 %14, 0, !dbg !769
  br i1 %cmp17, label %if.then19, label %if.end26, !dbg !770

if.then19:                                        ; preds = %for.body
  store i32 0, ptr %j, align 4, !dbg !771
  br label %for.cond20, !dbg !774

for.cond20:                                       ; preds = %for.inc, %if.then19
  %15 = load i32, ptr %j, align 4, !dbg !775
  %16 = load i32, ptr %i, align 4, !dbg !777
  %cmp21 = icmp ult i32 %15, %16, !dbg !778
  br i1 %cmp21, label %for.body23, label %for.end, !dbg !779

for.body23:                                       ; preds = %for.cond20
  %17 = load ptr, ptr %temp_nodes, align 8, !dbg !780
  %18 = load i32, ptr %j, align 4, !dbg !781
  %idxprom24 = zext i32 %18 to i64, !dbg !780
  %arrayidx25 = getelementptr inbounds %struct.node_t, ptr %17, i64 %idxprom24, !dbg !780
  call void @free_node(ptr noundef %arrayidx25), !dbg !782
  br label %for.inc, !dbg !782

for.inc:                                          ; preds = %for.body23
  %19 = load i32, ptr %j, align 4, !dbg !783
  %inc = add i32 %19, 1, !dbg !783
  store i32 %inc, ptr %j, align 4, !dbg !783
  br label %for.cond20, !dbg !784, !llvm.loop !785

for.end:                                          ; preds = %for.cond20
  %20 = load ptr, ptr %temp_nodes, align 8, !dbg !787
  call void @free(ptr noundef %20) #10, !dbg !788
  br label %err, !dbg !789

if.end26:                                         ; preds = %for.body
  %21 = load ptr, ptr %temp_nodes, align 8, !dbg !790
  %22 = load i32, ptr %i, align 4, !dbg !792
  %idxprom27 = zext i32 %22 to i64, !dbg !790
  %arrayidx28 = getelementptr inbounds %struct.node_t, ptr %21, i64 %idxprom27, !dbg !790
  %node29 = getelementptr inbounds %struct.node_t, ptr %arrayidx28, i32 0, i32 1, !dbg !793
  %NumMemoryBanks = getelementptr inbounds %struct._HsaNodeProperties, ptr %node29, i32 0, i32 2, !dbg !794
  %23 = load i32, ptr %NumMemoryBanks, align 4, !dbg !794
  %tobool30 = icmp ne i32 %23, 0, !dbg !790
  br i1 %tobool30, label %if.then31, label %if.end86, !dbg !795

if.then31:                                        ; preds = %if.end26
  %24 = load ptr, ptr %temp_nodes, align 8, !dbg !796
  %25 = load i32, ptr %i, align 4, !dbg !798
  %idxprom32 = zext i32 %25 to i64, !dbg !796
  %arrayidx33 = getelementptr inbounds %struct.node_t, ptr %24, i64 %idxprom32, !dbg !796
  %node34 = getelementptr inbounds %struct.node_t, ptr %arrayidx33, i32 0, i32 1, !dbg !799
  %NumMemoryBanks35 = getelementptr inbounds %struct._HsaNodeProperties, ptr %node34, i32 0, i32 2, !dbg !800
  %26 = load i32, ptr %NumMemoryBanks35, align 4, !dbg !800
  %conv36 = zext i32 %26 to i64, !dbg !796
  %mul37 = mul i64 %conv36, 32, !dbg !801
  %call38 = call noalias ptr @calloc(i64 noundef %mul37, i64 noundef 1) #12, !dbg !802
  %27 = load ptr, ptr %temp_nodes, align 8, !dbg !803
  %28 = load i32, ptr %i, align 4, !dbg !804
  %idxprom39 = zext i32 %28 to i64, !dbg !803
  %arrayidx40 = getelementptr inbounds %struct.node_t, ptr %27, i64 %idxprom39, !dbg !803
  %mem = getelementptr inbounds %struct.node_t, ptr %arrayidx40, i32 0, i32 3, !dbg !805
  store ptr %call38, ptr %mem, align 8, !dbg !806
  %29 = load ptr, ptr %temp_nodes, align 8, !dbg !807
  %30 = load i32, ptr %i, align 4, !dbg !809
  %idxprom41 = zext i32 %30 to i64, !dbg !807
  %arrayidx42 = getelementptr inbounds %struct.node_t, ptr %29, i64 %idxprom41, !dbg !807
  %mem43 = getelementptr inbounds %struct.node_t, ptr %arrayidx42, i32 0, i32 3, !dbg !810
  %31 = load ptr, ptr %mem43, align 8, !dbg !810
  %tobool44 = icmp ne ptr %31, null, !dbg !807
  br i1 %tobool44, label %if.end55, label %if.then45, !dbg !811

if.then45:                                        ; preds = %if.then31
  store i32 6, ptr %ret, align 4, !dbg !812
  store i32 0, ptr %j, align 4, !dbg !814
  br label %for.cond46, !dbg !816

for.cond46:                                       ; preds = %for.inc52, %if.then45
  %32 = load i32, ptr %j, align 4, !dbg !817
  %33 = load i32, ptr %i, align 4, !dbg !819
  %cmp47 = icmp ule i32 %32, %33, !dbg !820
  br i1 %cmp47, label %for.body49, label %for.end54, !dbg !821

for.body49:                                       ; preds = %for.cond46
  %34 = load ptr, ptr %temp_nodes, align 8, !dbg !822
  %35 = load i32, ptr %j, align 4, !dbg !823
  %idxprom50 = zext i32 %35 to i64, !dbg !822
  %arrayidx51 = getelementptr inbounds %struct.node_t, ptr %34, i64 %idxprom50, !dbg !822
  call void @free_node(ptr noundef %arrayidx51), !dbg !824
  br label %for.inc52, !dbg !824

for.inc52:                                        ; preds = %for.body49
  %36 = load i32, ptr %j, align 4, !dbg !825
  %inc53 = add i32 %36, 1, !dbg !825
  store i32 %inc53, ptr %j, align 4, !dbg !825
  br label %for.cond46, !dbg !826, !llvm.loop !827

for.end54:                                        ; preds = %for.cond46
  %37 = load ptr, ptr %temp_nodes, align 8, !dbg !829
  call void @free(ptr noundef %37) #10, !dbg !830
  br label %err, !dbg !831

if.end55:                                         ; preds = %if.then31
  store i32 0, ptr %mem_id, align 4, !dbg !832
  br label %for.cond56, !dbg !834

for.cond56:                                       ; preds = %for.inc83, %if.end55
  %38 = load i32, ptr %mem_id, align 4, !dbg !835
  %39 = load ptr, ptr %temp_nodes, align 8, !dbg !837
  %40 = load i32, ptr %i, align 4, !dbg !838
  %idxprom57 = zext i32 %40 to i64, !dbg !837
  %arrayidx58 = getelementptr inbounds %struct.node_t, ptr %39, i64 %idxprom57, !dbg !837
  %node59 = getelementptr inbounds %struct.node_t, ptr %arrayidx58, i32 0, i32 1, !dbg !839
  %NumMemoryBanks60 = getelementptr inbounds %struct._HsaNodeProperties, ptr %node59, i32 0, i32 2, !dbg !840
  %41 = load i32, ptr %NumMemoryBanks60, align 4, !dbg !840
  %cmp61 = icmp ult i32 %38, %41, !dbg !841
  br i1 %cmp61, label %for.body63, label %for.end85, !dbg !842

for.body63:                                       ; preds = %for.cond56
  %42 = load i32, ptr %i, align 4, !dbg !843
  %43 = load i32, ptr %mem_id, align 4, !dbg !845
  %44 = load ptr, ptr %temp_nodes, align 8, !dbg !846
  %45 = load i32, ptr %i, align 4, !dbg !847
  %idxprom64 = zext i32 %45 to i64, !dbg !846
  %arrayidx65 = getelementptr inbounds %struct.node_t, ptr %44, i64 %idxprom64, !dbg !846
  %mem66 = getelementptr inbounds %struct.node_t, ptr %arrayidx65, i32 0, i32 3, !dbg !848
  %46 = load ptr, ptr %mem66, align 8, !dbg !848
  %47 = load i32, ptr %mem_id, align 4, !dbg !849
  %idxprom67 = zext i32 %47 to i64, !dbg !846
  %arrayidx68 = getelementptr inbounds %struct._HsaMemoryProperties, ptr %46, i64 %idxprom67, !dbg !846
  %call69 = call i32 @topology_sysfs_get_mem_props(i32 noundef %42, i32 noundef %43, ptr noundef %arrayidx68), !dbg !850
  store i32 %call69, ptr %ret, align 4, !dbg !851
  %48 = load i32, ptr %ret, align 4, !dbg !852
  %cmp70 = icmp ne i32 %48, 0, !dbg !854
  br i1 %cmp70, label %if.then72, label %if.end82, !dbg !855

if.then72:                                        ; preds = %for.body63
  store i32 0, ptr %j, align 4, !dbg !856
  br label %for.cond73, !dbg !859

for.cond73:                                       ; preds = %for.inc79, %if.then72
  %49 = load i32, ptr %j, align 4, !dbg !860
  %50 = load i32, ptr %i, align 4, !dbg !862
  %cmp74 = icmp ule i32 %49, %50, !dbg !863
  br i1 %cmp74, label %for.body76, label %for.end81, !dbg !864

for.body76:                                       ; preds = %for.cond73
  %51 = load ptr, ptr %temp_nodes, align 8, !dbg !865
  %52 = load i32, ptr %j, align 4, !dbg !866
  %idxprom77 = zext i32 %52 to i64, !dbg !865
  %arrayidx78 = getelementptr inbounds %struct.node_t, ptr %51, i64 %idxprom77, !dbg !865
  call void @free_node(ptr noundef %arrayidx78), !dbg !867
  br label %for.inc79, !dbg !867

for.inc79:                                        ; preds = %for.body76
  %53 = load i32, ptr %j, align 4, !dbg !868
  %inc80 = add i32 %53, 1, !dbg !868
  store i32 %inc80, ptr %j, align 4, !dbg !868
  br label %for.cond73, !dbg !869, !llvm.loop !870

for.end81:                                        ; preds = %for.cond73
  %54 = load ptr, ptr %temp_nodes, align 8, !dbg !872
  call void @free(ptr noundef %54) #10, !dbg !873
  br label %err, !dbg !874

if.end82:                                         ; preds = %for.body63
  br label %for.inc83, !dbg !875

for.inc83:                                        ; preds = %if.end82
  %55 = load i32, ptr %mem_id, align 4, !dbg !876
  %inc84 = add i32 %55, 1, !dbg !876
  store i32 %inc84, ptr %mem_id, align 4, !dbg !876
  br label %for.cond56, !dbg !877, !llvm.loop !878

for.end85:                                        ; preds = %for.cond56
  br label %if.end86, !dbg !880

if.end86:                                         ; preds = %for.end85, %if.end26
  %56 = load ptr, ptr %temp_nodes, align 8, !dbg !881
  %57 = load i32, ptr %i, align 4, !dbg !883
  %idxprom87 = zext i32 %57 to i64, !dbg !881
  %arrayidx88 = getelementptr inbounds %struct.node_t, ptr %56, i64 %idxprom87, !dbg !881
  %node89 = getelementptr inbounds %struct.node_t, ptr %arrayidx88, i32 0, i32 1, !dbg !884
  %NumCaches = getelementptr inbounds %struct._HsaNodeProperties, ptr %node89, i32 0, i32 3, !dbg !885
  %58 = load i32, ptr %NumCaches, align 4, !dbg !885
  %tobool90 = icmp ne i32 %58, 0, !dbg !881
  br i1 %tobool90, label %if.then91, label %if.end146, !dbg !886

if.then91:                                        ; preds = %if.end86
  %59 = load ptr, ptr %temp_nodes, align 8, !dbg !887
  %60 = load i32, ptr %i, align 4, !dbg !889
  %idxprom92 = zext i32 %60 to i64, !dbg !887
  %arrayidx93 = getelementptr inbounds %struct.node_t, ptr %59, i64 %idxprom92, !dbg !887
  %node94 = getelementptr inbounds %struct.node_t, ptr %arrayidx93, i32 0, i32 1, !dbg !890
  %NumCaches95 = getelementptr inbounds %struct._HsaNodeProperties, ptr %node94, i32 0, i32 3, !dbg !891
  %61 = load i32, ptr %NumCaches95, align 4, !dbg !891
  %conv96 = zext i32 %61 to i64, !dbg !887
  %mul97 = mul i64 %conv96, 1056, !dbg !892
  %call98 = call noalias ptr @calloc(i64 noundef %mul97, i64 noundef 1) #12, !dbg !893
  %62 = load ptr, ptr %temp_nodes, align 8, !dbg !894
  %63 = load i32, ptr %i, align 4, !dbg !895
  %idxprom99 = zext i32 %63 to i64, !dbg !894
  %arrayidx100 = getelementptr inbounds %struct.node_t, ptr %62, i64 %idxprom99, !dbg !894
  %cache = getelementptr inbounds %struct.node_t, ptr %arrayidx100, i32 0, i32 4, !dbg !896
  store ptr %call98, ptr %cache, align 8, !dbg !897
  %64 = load ptr, ptr %temp_nodes, align 8, !dbg !898
  %65 = load i32, ptr %i, align 4, !dbg !900
  %idxprom101 = zext i32 %65 to i64, !dbg !898
  %arrayidx102 = getelementptr inbounds %struct.node_t, ptr %64, i64 %idxprom101, !dbg !898
  %cache103 = getelementptr inbounds %struct.node_t, ptr %arrayidx102, i32 0, i32 4, !dbg !901
  %66 = load ptr, ptr %cache103, align 8, !dbg !901
  %tobool104 = icmp ne ptr %66, null, !dbg !898
  br i1 %tobool104, label %if.end115, label %if.then105, !dbg !902

if.then105:                                       ; preds = %if.then91
  store i32 6, ptr %ret, align 4, !dbg !903
  store i32 0, ptr %j, align 4, !dbg !905
  br label %for.cond106, !dbg !907

for.cond106:                                      ; preds = %for.inc112, %if.then105
  %67 = load i32, ptr %j, align 4, !dbg !908
  %68 = load i32, ptr %i, align 4, !dbg !910
  %cmp107 = icmp ule i32 %67, %68, !dbg !911
  br i1 %cmp107, label %for.body109, label %for.end114, !dbg !912

for.body109:                                      ; preds = %for.cond106
  %69 = load ptr, ptr %temp_nodes, align 8, !dbg !913
  %70 = load i32, ptr %j, align 4, !dbg !914
  %idxprom110 = zext i32 %70 to i64, !dbg !913
  %arrayidx111 = getelementptr inbounds %struct.node_t, ptr %69, i64 %idxprom110, !dbg !913
  call void @free_node(ptr noundef %arrayidx111), !dbg !915
  br label %for.inc112, !dbg !915

for.inc112:                                       ; preds = %for.body109
  %71 = load i32, ptr %j, align 4, !dbg !916
  %inc113 = add i32 %71, 1, !dbg !916
  store i32 %inc113, ptr %j, align 4, !dbg !916
  br label %for.cond106, !dbg !917, !llvm.loop !918

for.end114:                                       ; preds = %for.cond106
  %72 = load ptr, ptr %temp_nodes, align 8, !dbg !920
  call void @free(ptr noundef %72) #10, !dbg !921
  br label %err, !dbg !922

if.end115:                                        ; preds = %if.then91
  store i32 0, ptr %cache_id, align 4, !dbg !923
  br label %for.cond116, !dbg !925

for.cond116:                                      ; preds = %for.inc143, %if.end115
  %73 = load i32, ptr %cache_id, align 4, !dbg !926
  %74 = load ptr, ptr %temp_nodes, align 8, !dbg !928
  %75 = load i32, ptr %i, align 4, !dbg !929
  %idxprom117 = zext i32 %75 to i64, !dbg !928
  %arrayidx118 = getelementptr inbounds %struct.node_t, ptr %74, i64 %idxprom117, !dbg !928
  %node119 = getelementptr inbounds %struct.node_t, ptr %arrayidx118, i32 0, i32 1, !dbg !930
  %NumCaches120 = getelementptr inbounds %struct._HsaNodeProperties, ptr %node119, i32 0, i32 3, !dbg !931
  %76 = load i32, ptr %NumCaches120, align 4, !dbg !931
  %cmp121 = icmp ult i32 %73, %76, !dbg !932
  br i1 %cmp121, label %for.body123, label %for.end145, !dbg !933

for.body123:                                      ; preds = %for.cond116
  %77 = load i32, ptr %i, align 4, !dbg !934
  %78 = load i32, ptr %cache_id, align 4, !dbg !936
  %79 = load ptr, ptr %temp_nodes, align 8, !dbg !937
  %80 = load i32, ptr %i, align 4, !dbg !938
  %idxprom124 = zext i32 %80 to i64, !dbg !937
  %arrayidx125 = getelementptr inbounds %struct.node_t, ptr %79, i64 %idxprom124, !dbg !937
  %cache126 = getelementptr inbounds %struct.node_t, ptr %arrayidx125, i32 0, i32 4, !dbg !939
  %81 = load ptr, ptr %cache126, align 8, !dbg !939
  %82 = load i32, ptr %cache_id, align 4, !dbg !940
  %idxprom127 = zext i32 %82 to i64, !dbg !937
  %arrayidx128 = getelementptr inbounds %struct._HaCacheProperties, ptr %81, i64 %idxprom127, !dbg !937
  %call129 = call i32 @topology_sysfs_get_cache_props(i32 noundef %77, i32 noundef %78, ptr noundef %arrayidx128), !dbg !941
  store i32 %call129, ptr %ret, align 4, !dbg !942
  %83 = load i32, ptr %ret, align 4, !dbg !943
  %cmp130 = icmp ne i32 %83, 0, !dbg !945
  br i1 %cmp130, label %if.then132, label %if.end142, !dbg !946

if.then132:                                       ; preds = %for.body123
  store i32 0, ptr %j, align 4, !dbg !947
  br label %for.cond133, !dbg !950

for.cond133:                                      ; preds = %for.inc139, %if.then132
  %84 = load i32, ptr %j, align 4, !dbg !951
  %85 = load i32, ptr %i, align 4, !dbg !953
  %cmp134 = icmp ule i32 %84, %85, !dbg !954
  br i1 %cmp134, label %for.body136, label %for.end141, !dbg !955

for.body136:                                      ; preds = %for.cond133
  %86 = load ptr, ptr %temp_nodes, align 8, !dbg !956
  %87 = load i32, ptr %j, align 4, !dbg !957
  %idxprom137 = zext i32 %87 to i64, !dbg !956
  %arrayidx138 = getelementptr inbounds %struct.node_t, ptr %86, i64 %idxprom137, !dbg !956
  call void @free_node(ptr noundef %arrayidx138), !dbg !958
  br label %for.inc139, !dbg !958

for.inc139:                                       ; preds = %for.body136
  %88 = load i32, ptr %j, align 4, !dbg !959
  %inc140 = add i32 %88, 1, !dbg !959
  store i32 %inc140, ptr %j, align 4, !dbg !959
  br label %for.cond133, !dbg !960, !llvm.loop !961

for.end141:                                       ; preds = %for.cond133
  %89 = load ptr, ptr %temp_nodes, align 8, !dbg !963
  call void @free(ptr noundef %89) #10, !dbg !964
  br label %err, !dbg !965

if.end142:                                        ; preds = %for.body123
  br label %for.inc143, !dbg !966

for.inc143:                                       ; preds = %if.end142
  %90 = load i32, ptr %cache_id, align 4, !dbg !967
  %inc144 = add i32 %90, 1, !dbg !967
  store i32 %inc144, ptr %cache_id, align 4, !dbg !967
  br label %for.cond116, !dbg !968, !llvm.loop !969

for.end145:                                       ; preds = %for.cond116
  br label %if.end146, !dbg !971

if.end146:                                        ; preds = %for.end145, %if.end86
  %91 = load ptr, ptr %temp_nodes, align 8, !dbg !972
  %92 = load i32, ptr %i, align 4, !dbg !974
  %idxprom147 = zext i32 %92 to i64, !dbg !972
  %arrayidx148 = getelementptr inbounds %struct.node_t, ptr %91, i64 %idxprom147, !dbg !972
  %node149 = getelementptr inbounds %struct.node_t, ptr %arrayidx148, i32 0, i32 1, !dbg !975
  %NumIOLinks = getelementptr inbounds %struct._HsaNodeProperties, ptr %node149, i32 0, i32 4, !dbg !976
  %93 = load i32, ptr %NumIOLinks, align 4, !dbg !976
  %tobool150 = icmp ne i32 %93, 0, !dbg !972
  br i1 %tobool150, label %if.then151, label %if.end206, !dbg !977

if.then151:                                       ; preds = %if.end146
  %94 = load ptr, ptr %temp_nodes, align 8, !dbg !978
  %95 = load i32, ptr %i, align 4, !dbg !980
  %idxprom152 = zext i32 %95 to i64, !dbg !978
  %arrayidx153 = getelementptr inbounds %struct.node_t, ptr %94, i64 %idxprom152, !dbg !978
  %node154 = getelementptr inbounds %struct.node_t, ptr %arrayidx153, i32 0, i32 1, !dbg !981
  %NumIOLinks155 = getelementptr inbounds %struct._HsaNodeProperties, ptr %node154, i32 0, i32 4, !dbg !982
  %96 = load i32, ptr %NumIOLinks155, align 4, !dbg !982
  %conv156 = zext i32 %96 to i64, !dbg !978
  %mul157 = mul i64 %conv156, 48, !dbg !983
  %call158 = call noalias ptr @calloc(i64 noundef %mul157, i64 noundef 1) #12, !dbg !984
  %97 = load ptr, ptr %temp_nodes, align 8, !dbg !985
  %98 = load i32, ptr %i, align 4, !dbg !986
  %idxprom159 = zext i32 %98 to i64, !dbg !985
  %arrayidx160 = getelementptr inbounds %struct.node_t, ptr %97, i64 %idxprom159, !dbg !985
  %link = getelementptr inbounds %struct.node_t, ptr %arrayidx160, i32 0, i32 5, !dbg !987
  store ptr %call158, ptr %link, align 8, !dbg !988
  %99 = load ptr, ptr %temp_nodes, align 8, !dbg !989
  %100 = load i32, ptr %i, align 4, !dbg !991
  %idxprom161 = zext i32 %100 to i64, !dbg !989
  %arrayidx162 = getelementptr inbounds %struct.node_t, ptr %99, i64 %idxprom161, !dbg !989
  %link163 = getelementptr inbounds %struct.node_t, ptr %arrayidx162, i32 0, i32 5, !dbg !992
  %101 = load ptr, ptr %link163, align 8, !dbg !992
  %tobool164 = icmp ne ptr %101, null, !dbg !989
  br i1 %tobool164, label %if.end175, label %if.then165, !dbg !993

if.then165:                                       ; preds = %if.then151
  store i32 6, ptr %ret, align 4, !dbg !994
  store i32 0, ptr %j, align 4, !dbg !996
  br label %for.cond166, !dbg !998

for.cond166:                                      ; preds = %for.inc172, %if.then165
  %102 = load i32, ptr %j, align 4, !dbg !999
  %103 = load i32, ptr %i, align 4, !dbg !1001
  %cmp167 = icmp ule i32 %102, %103, !dbg !1002
  br i1 %cmp167, label %for.body169, label %for.end174, !dbg !1003

for.body169:                                      ; preds = %for.cond166
  %104 = load ptr, ptr %temp_nodes, align 8, !dbg !1004
  %105 = load i32, ptr %j, align 4, !dbg !1005
  %idxprom170 = zext i32 %105 to i64, !dbg !1004
  %arrayidx171 = getelementptr inbounds %struct.node_t, ptr %104, i64 %idxprom170, !dbg !1004
  call void @free_node(ptr noundef %arrayidx171), !dbg !1006
  br label %for.inc172, !dbg !1006

for.inc172:                                       ; preds = %for.body169
  %106 = load i32, ptr %j, align 4, !dbg !1007
  %inc173 = add i32 %106, 1, !dbg !1007
  store i32 %inc173, ptr %j, align 4, !dbg !1007
  br label %for.cond166, !dbg !1008, !llvm.loop !1009

for.end174:                                       ; preds = %for.cond166
  %107 = load ptr, ptr %temp_nodes, align 8, !dbg !1011
  call void @free(ptr noundef %107) #10, !dbg !1012
  br label %err, !dbg !1013

if.end175:                                        ; preds = %if.then151
  store i32 0, ptr %link_id, align 4, !dbg !1014
  br label %for.cond176, !dbg !1016

for.cond176:                                      ; preds = %for.inc203, %if.end175
  %108 = load i32, ptr %link_id, align 4, !dbg !1017
  %109 = load ptr, ptr %temp_nodes, align 8, !dbg !1019
  %110 = load i32, ptr %i, align 4, !dbg !1020
  %idxprom177 = zext i32 %110 to i64, !dbg !1019
  %arrayidx178 = getelementptr inbounds %struct.node_t, ptr %109, i64 %idxprom177, !dbg !1019
  %node179 = getelementptr inbounds %struct.node_t, ptr %arrayidx178, i32 0, i32 1, !dbg !1021
  %NumIOLinks180 = getelementptr inbounds %struct._HsaNodeProperties, ptr %node179, i32 0, i32 4, !dbg !1022
  %111 = load i32, ptr %NumIOLinks180, align 4, !dbg !1022
  %cmp181 = icmp ult i32 %108, %111, !dbg !1023
  br i1 %cmp181, label %for.body183, label %for.end205, !dbg !1024

for.body183:                                      ; preds = %for.cond176
  %112 = load i32, ptr %i, align 4, !dbg !1025
  %113 = load i32, ptr %link_id, align 4, !dbg !1027
  %114 = load ptr, ptr %temp_nodes, align 8, !dbg !1028
  %115 = load i32, ptr %i, align 4, !dbg !1029
  %idxprom184 = zext i32 %115 to i64, !dbg !1028
  %arrayidx185 = getelementptr inbounds %struct.node_t, ptr %114, i64 %idxprom184, !dbg !1028
  %link186 = getelementptr inbounds %struct.node_t, ptr %arrayidx185, i32 0, i32 5, !dbg !1030
  %116 = load ptr, ptr %link186, align 8, !dbg !1030
  %117 = load i32, ptr %link_id, align 4, !dbg !1031
  %idxprom187 = zext i32 %117 to i64, !dbg !1028
  %arrayidx188 = getelementptr inbounds %struct._HsaIoLinkProperties, ptr %116, i64 %idxprom187, !dbg !1028
  %call189 = call i32 @topology_sysfs_get_iolink_props(i32 noundef %112, i32 noundef %113, ptr noundef %arrayidx188), !dbg !1032
  store i32 %call189, ptr %ret, align 4, !dbg !1033
  %118 = load i32, ptr %ret, align 4, !dbg !1034
  %cmp190 = icmp ne i32 %118, 0, !dbg !1036
  br i1 %cmp190, label %if.then192, label %if.end202, !dbg !1037

if.then192:                                       ; preds = %for.body183
  store i32 0, ptr %j, align 4, !dbg !1038
  br label %for.cond193, !dbg !1041

for.cond193:                                      ; preds = %for.inc199, %if.then192
  %119 = load i32, ptr %j, align 4, !dbg !1042
  %120 = load i32, ptr %i, align 4, !dbg !1044
  %cmp194 = icmp ule i32 %119, %120, !dbg !1045
  br i1 %cmp194, label %for.body196, label %for.end201, !dbg !1046

for.body196:                                      ; preds = %for.cond193
  %121 = load ptr, ptr %temp_nodes, align 8, !dbg !1047
  %122 = load i32, ptr %j, align 4, !dbg !1048
  %idxprom197 = zext i32 %122 to i64, !dbg !1047
  %arrayidx198 = getelementptr inbounds %struct.node_t, ptr %121, i64 %idxprom197, !dbg !1047
  call void @free_node(ptr noundef %arrayidx198), !dbg !1049
  br label %for.inc199, !dbg !1049

for.inc199:                                       ; preds = %for.body196
  %123 = load i32, ptr %j, align 4, !dbg !1050
  %inc200 = add i32 %123, 1, !dbg !1050
  store i32 %inc200, ptr %j, align 4, !dbg !1050
  br label %for.cond193, !dbg !1051, !llvm.loop !1052

for.end201:                                       ; preds = %for.cond193
  %124 = load ptr, ptr %temp_nodes, align 8, !dbg !1054
  call void @free(ptr noundef %124) #10, !dbg !1055
  br label %err, !dbg !1056

if.end202:                                        ; preds = %for.body183
  br label %for.inc203, !dbg !1057

for.inc203:                                       ; preds = %if.end202
  %125 = load i32, ptr %link_id, align 4, !dbg !1058
  %inc204 = add i32 %125, 1, !dbg !1058
  store i32 %inc204, ptr %link_id, align 4, !dbg !1058
  br label %for.cond176, !dbg !1059, !llvm.loop !1060

for.end205:                                       ; preds = %for.cond176
  br label %if.end206, !dbg !1062

if.end206:                                        ; preds = %for.end205, %if.end146
  br label %for.inc207, !dbg !1063

for.inc207:                                       ; preds = %if.end206
  %126 = load i32, ptr %i, align 4, !dbg !1064
  %inc208 = add i32 %126, 1, !dbg !1064
  store i32 %inc208, ptr %i, align 4, !dbg !1064
  br label %for.cond, !dbg !1065, !llvm.loop !1066

for.end209:                                       ; preds = %for.cond
  br label %if.end210, !dbg !1068

if.end210:                                        ; preds = %for.end209, %if.end4
  %call211 = call i32 @topology_sysfs_get_generation(ptr noundef %gen_end), !dbg !1069
  store i32 %call211, ptr %ret, align 4, !dbg !1070
  %127 = load i32, ptr %ret, align 4, !dbg !1071
  %cmp212 = icmp ne i32 %127, 0, !dbg !1073
  br i1 %cmp212, label %if.then214, label %if.end228, !dbg !1074

if.then214:                                       ; preds = %if.end210
  %128 = load ptr, ptr %temp_nodes, align 8, !dbg !1075
  %tobool215 = icmp ne ptr %128, null, !dbg !1075
  br i1 %tobool215, label %if.then216, label %if.end227, !dbg !1078

if.then216:                                       ; preds = %if.then214
  store i32 0, ptr %j, align 4, !dbg !1079
  br label %for.cond217, !dbg !1082

for.cond217:                                      ; preds = %for.inc224, %if.then216
  %129 = load i32, ptr %j, align 4, !dbg !1083
  %NumNodes218 = getelementptr inbounds %struct._HsaSystemProperties, ptr %sys_props, i32 0, i32 0, !dbg !1085
  %130 = load i32, ptr %NumNodes218, align 4, !dbg !1085
  %cmp219 = icmp ult i32 %129, %130, !dbg !1086
  br i1 %cmp219, label %for.body221, label %for.end226, !dbg !1087

for.body221:                                      ; preds = %for.cond217
  %131 = load ptr, ptr %temp_nodes, align 8, !dbg !1088
  %132 = load i32, ptr %j, align 4, !dbg !1089
  %idxprom222 = zext i32 %132 to i64, !dbg !1088
  %arrayidx223 = getelementptr inbounds %struct.node_t, ptr %131, i64 %idxprom222, !dbg !1088
  call void @free_node(ptr noundef %arrayidx223), !dbg !1090
  br label %for.inc224, !dbg !1090

for.inc224:                                       ; preds = %for.body221
  %133 = load i32, ptr %j, align 4, !dbg !1091
  %inc225 = add i32 %133, 1, !dbg !1091
  store i32 %inc225, ptr %j, align 4, !dbg !1091
  br label %for.cond217, !dbg !1092, !llvm.loop !1093

for.end226:                                       ; preds = %for.cond217
  %134 = load ptr, ptr %temp_nodes, align 8, !dbg !1095
  call void @free(ptr noundef %134) #10, !dbg !1096
  br label %if.end227, !dbg !1097

if.end227:                                        ; preds = %for.end226, %if.then214
  br label %err, !dbg !1098

if.end228:                                        ; preds = %if.end210
  %135 = load i32, ptr %gen_start, align 4, !dbg !1099
  %136 = load i32, ptr %gen_end, align 4, !dbg !1101
  %cmp229 = icmp ne i32 %135, %136, !dbg !1102
  br i1 %cmp229, label %if.then231, label %if.end245, !dbg !1103

if.then231:                                       ; preds = %if.end228
  %137 = load ptr, ptr %temp_nodes, align 8, !dbg !1104
  %tobool232 = icmp ne ptr %137, null, !dbg !1104
  br i1 %tobool232, label %if.then233, label %if.end244, !dbg !1107

if.then233:                                       ; preds = %if.then231
  store i32 0, ptr %j, align 4, !dbg !1108
  br label %for.cond234, !dbg !1111

for.cond234:                                      ; preds = %for.inc241, %if.then233
  %138 = load i32, ptr %j, align 4, !dbg !1112
  %NumNodes235 = getelementptr inbounds %struct._HsaSystemProperties, ptr %sys_props, i32 0, i32 0, !dbg !1114
  %139 = load i32, ptr %NumNodes235, align 4, !dbg !1114
  %cmp236 = icmp ult i32 %138, %139, !dbg !1115
  br i1 %cmp236, label %for.body238, label %for.end243, !dbg !1116

for.body238:                                      ; preds = %for.cond234
  %140 = load ptr, ptr %temp_nodes, align 8, !dbg !1117
  %141 = load i32, ptr %j, align 4, !dbg !1118
  %idxprom239 = zext i32 %141 to i64, !dbg !1117
  %arrayidx240 = getelementptr inbounds %struct.node_t, ptr %140, i64 %idxprom239, !dbg !1117
  call void @free_node(ptr noundef %arrayidx240), !dbg !1119
  br label %for.inc241, !dbg !1119

for.inc241:                                       ; preds = %for.body238
  %142 = load i32, ptr %j, align 4, !dbg !1120
  %inc242 = add i32 %142, 1, !dbg !1120
  store i32 %inc242, ptr %j, align 4, !dbg !1120
  br label %for.cond234, !dbg !1121, !llvm.loop !1122

for.end243:                                       ; preds = %for.cond234
  %143 = load ptr, ptr %temp_nodes, align 8, !dbg !1124
  call void @free(ptr noundef %143) #10, !dbg !1125
  store ptr null, ptr %temp_nodes, align 8, !dbg !1126
  br label %if.end244, !dbg !1127

if.end244:                                        ; preds = %for.end243, %if.then231
  br label %retry, !dbg !1128

if.end245:                                        ; preds = %if.end228
  %144 = load ptr, ptr @system, align 8, !dbg !1129
  %tobool246 = icmp ne ptr %144, null, !dbg !1129
  br i1 %tobool246, label %if.end265, label %if.then247, !dbg !1131

if.then247:                                       ; preds = %if.end245
  %call248 = call noalias ptr @malloc(i64 noundef 16) #13, !dbg !1132
  store ptr %call248, ptr @system, align 8, !dbg !1134
  %145 = load ptr, ptr @system, align 8, !dbg !1135
  %tobool249 = icmp ne ptr %145, null, !dbg !1135
  br i1 %tobool249, label %if.end264, label %if.then250, !dbg !1137

if.then250:                                       ; preds = %if.then247
  %146 = load ptr, ptr %temp_nodes, align 8, !dbg !1138
  %tobool251 = icmp ne ptr %146, null, !dbg !1138
  br i1 %tobool251, label %if.then252, label %if.end263, !dbg !1141

if.then252:                                       ; preds = %if.then250
  store i32 0, ptr %j, align 4, !dbg !1142
  br label %for.cond253, !dbg !1145

for.cond253:                                      ; preds = %for.inc260, %if.then252
  %147 = load i32, ptr %j, align 4, !dbg !1146
  %NumNodes254 = getelementptr inbounds %struct._HsaSystemProperties, ptr %sys_props, i32 0, i32 0, !dbg !1148
  %148 = load i32, ptr %NumNodes254, align 4, !dbg !1148
  %cmp255 = icmp ult i32 %147, %148, !dbg !1149
  br i1 %cmp255, label %for.body257, label %for.end262, !dbg !1150

for.body257:                                      ; preds = %for.cond253
  %149 = load ptr, ptr %temp_nodes, align 8, !dbg !1151
  %150 = load i32, ptr %j, align 4, !dbg !1152
  %idxprom258 = zext i32 %150 to i64, !dbg !1151
  %arrayidx259 = getelementptr inbounds %struct.node_t, ptr %149, i64 %idxprom258, !dbg !1151
  call void @free_node(ptr noundef %arrayidx259), !dbg !1153
  br label %for.inc260, !dbg !1153

for.inc260:                                       ; preds = %for.body257
  %151 = load i32, ptr %j, align 4, !dbg !1154
  %inc261 = add i32 %151, 1, !dbg !1154
  store i32 %inc261, ptr %j, align 4, !dbg !1154
  br label %for.cond253, !dbg !1155, !llvm.loop !1156

for.end262:                                       ; preds = %for.cond253
  %152 = load ptr, ptr %temp_nodes, align 8, !dbg !1158
  call void @free(ptr noundef %152) #10, !dbg !1159
  br label %if.end263, !dbg !1160

if.end263:                                        ; preds = %for.end262, %if.then250
  store i32 6, ptr %retval, align 4, !dbg !1161
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1161

if.end264:                                        ; preds = %if.then247
  br label %if.end265, !dbg !1162

if.end265:                                        ; preds = %if.end264, %if.end245
  %153 = load ptr, ptr @system, align 8, !dbg !1163
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %153, ptr align 4 %sys_props, i64 16, i1 false), !dbg !1164
  %154 = load ptr, ptr @node, align 8, !dbg !1165
  %tobool266 = icmp ne ptr %154, null, !dbg !1165
  br i1 %tobool266, label %if.then267, label %if.end268, !dbg !1167

if.then267:                                       ; preds = %if.end265
  %155 = load ptr, ptr @node, align 8, !dbg !1168
  call void @free(ptr noundef %155) #10, !dbg !1169
  br label %if.end268, !dbg !1169

if.end268:                                        ; preds = %if.then267, %if.end265
  %156 = load ptr, ptr %temp_nodes, align 8, !dbg !1170
  store ptr %156, ptr @node, align 8, !dbg !1171
  br label %err, !dbg !1172

err:                                              ; preds = %if.end268, %if.end227, %for.end201, %for.end174, %for.end141, %for.end114, %for.end81, %for.end54, %for.end
  tail call void @llvm.dbg.label(metadata !703), !dbg !1173
  %157 = load i32, ptr %ret, align 4, !dbg !1174
  store i32 %157, ptr %retval, align 4, !dbg !1175
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1175

cleanup:                                          ; preds = %err, %if.end263, %if.then9, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !1176
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp_nodes) #10, !dbg !1176
  call void @llvm.lifetime.end.p0(i64 16, ptr %sys_props) #10, !dbg !1176
  call void @llvm.lifetime.end.p0(i64 4, ptr %link_id) #10, !dbg !1176
  call void @llvm.lifetime.end.p0(i64 4, ptr %cache_id) #10, !dbg !1176
  call void @llvm.lifetime.end.p0(i64 4, ptr %mem_id) #10, !dbg !1176
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10, !dbg !1176
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !1176
  call void @llvm.lifetime.end.p0(i64 4, ptr %gen_end) #10, !dbg !1176
  call void @llvm.lifetime.end.p0(i64 4, ptr %gen_start) #10, !dbg !1176
  %158 = load i32, ptr %retval, align 4, !dbg !1176
  ret i32 %158, !dbg !1176
}

; Function Attrs: noreturn nounwind
declare !dbg !1177 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare !dbg !1182 i32 @pthread_mutex_unlock(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hsaKmtReleaseSystemProperties() #0 !dbg !1183 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !1186
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1185, metadata !DIExpression()), !dbg !1187
  br label %do.body, !dbg !1188

do.body:                                          ; preds = %entry
  %0 = load i64, ptr @kfd_open_count, align 8, !dbg !1189
  %cmp = icmp eq i64 %0, 0, !dbg !1189
  br i1 %cmp, label %if.then, label %if.end, !dbg !1192

if.then:                                          ; preds = %do.body
  store i32 20, ptr %retval, align 4, !dbg !1189
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1189

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !1192

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1192

do.end:                                           ; preds = %do.cond
  %call = call i32 @pthread_mutex_lock(ptr noundef @hsakmt_mutex) #10, !dbg !1193
  %call1 = call i32 @topology_drop_snapshot(), !dbg !1194
  store i32 %call1, ptr %err, align 4, !dbg !1195
  %call2 = call i32 @pthread_mutex_unlock(ptr noundef @hsakmt_mutex) #10, !dbg !1196
  %1 = load i32, ptr %err, align 4, !dbg !1197
  store i32 %1, ptr %retval, align 4, !dbg !1198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1198

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !1199
  %2 = load i32, ptr %retval, align 4, !dbg !1199
  ret i32 %2, !dbg !1199
}

; Function Attrs: nounwind uwtable
define internal i32 @topology_drop_snapshot() #0 !dbg !1200 {
entry:
  %err = alloca i32, align 4
  %nodeid = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !1207
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1202, metadata !DIExpression()), !dbg !1208
  %0 = load ptr, ptr @system, align 8, !dbg !1209
  %tobool = icmp ne ptr %0, null, !dbg !1211
  %lnot = xor i1 %tobool, true, !dbg !1211
  %lnot1 = xor i1 %lnot, true, !dbg !1212
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1212
  %1 = load ptr, ptr @node, align 8, !dbg !1213
  %tobool2 = icmp ne ptr %1, null, !dbg !1214
  %lnot3 = xor i1 %tobool2, true, !dbg !1214
  %lnot5 = xor i1 %lnot3, true, !dbg !1215
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !1215
  %cmp = icmp ne i32 %lnot.ext, %lnot.ext6, !dbg !1216
  br i1 %cmp, label %if.then, label %if.end, !dbg !1217

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.79), !dbg !1218
  store i32 0, ptr %err, align 4, !dbg !1220
  br label %out, !dbg !1221

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @node, align 8, !dbg !1222
  %tobool7 = icmp ne ptr %2, null, !dbg !1222
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !1223

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %nodeid) #10, !dbg !1224
  tail call void @llvm.dbg.declare(metadata ptr %nodeid, metadata !1203, metadata !DIExpression()), !dbg !1225
  store i64 0, ptr %nodeid, align 8, !dbg !1226
  br label %for.cond, !dbg !1228

for.cond:                                         ; preds = %for.inc, %if.then8
  %3 = load i64, ptr %nodeid, align 8, !dbg !1229
  %4 = load ptr, ptr @system, align 8, !dbg !1231
  %NumNodes = getelementptr inbounds %struct._HsaSystemProperties, ptr %4, i32 0, i32 0, !dbg !1232
  %5 = load i32, ptr %NumNodes, align 4, !dbg !1232
  %conv = zext i32 %5 to i64, !dbg !1231
  %cmp9 = icmp ult i64 %3, %conv, !dbg !1233
  br i1 %cmp9, label %for.body, label %for.end, !dbg !1234

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr @node, align 8, !dbg !1235
  %7 = load i64, ptr %nodeid, align 8, !dbg !1237
  %arrayidx = getelementptr inbounds %struct.node_t, ptr %6, i64 %7, !dbg !1235
  call void @free_node(ptr noundef %arrayidx), !dbg !1238
  br label %for.inc, !dbg !1239

for.inc:                                          ; preds = %for.body
  %8 = load i64, ptr %nodeid, align 8, !dbg !1240
  %inc = add i64 %8, 1, !dbg !1240
  store i64 %inc, ptr %nodeid, align 8, !dbg !1240
  br label %for.cond, !dbg !1241, !llvm.loop !1242

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr @node, align 8, !dbg !1244
  call void @free(ptr noundef %9) #10, !dbg !1245
  store ptr null, ptr @node, align 8, !dbg !1246
  call void @llvm.lifetime.end.p0(i64 8, ptr %nodeid) #10, !dbg !1247
  br label %if.end11, !dbg !1248

if.end11:                                         ; preds = %for.end, %if.end
  %10 = load ptr, ptr @system, align 8, !dbg !1249
  call void @free(ptr noundef %10) #10, !dbg !1250
  store ptr null, ptr @system, align 8, !dbg !1251
  store i32 0, ptr %err, align 4, !dbg !1252
  br label %out, !dbg !1253

out:                                              ; preds = %if.end11, %if.then
  tail call void @llvm.dbg.label(metadata !1206), !dbg !1254
  %11 = load i32, ptr %err, align 4, !dbg !1255
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !1256
  ret i32 %11, !dbg !1257
}

; Function Attrs: nounwind uwtable
define i32 @hsaKmtGetNodeProperties(i32 noundef %NodeId, ptr noundef %NodeProperties) #0 !dbg !1258 {
entry:
  %retval = alloca i32, align 4
  %NodeId.addr = alloca i32, align 4
  %NodeProperties.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %gpu_id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %NodeId, ptr %NodeId.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %NodeId.addr, metadata !1263, metadata !DIExpression()), !dbg !1268
  store ptr %NodeProperties, ptr %NodeProperties.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %NodeProperties.addr, metadata !1264, metadata !DIExpression()), !dbg !1269
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !1270
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1265, metadata !DIExpression()), !dbg !1271
  call void @llvm.lifetime.start.p0(i64 4, ptr %gpu_id) #10, !dbg !1272
  tail call void @llvm.dbg.declare(metadata ptr %gpu_id, metadata !1266, metadata !DIExpression()), !dbg !1273
  %0 = load ptr, ptr %NodeProperties.addr, align 8, !dbg !1274
  %tobool = icmp ne ptr %0, null, !dbg !1274
  br i1 %tobool, label %if.end, label %if.then, !dbg !1276

if.then:                                          ; preds = %entry
  store i32 3, ptr %retval, align 4, !dbg !1277
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1277

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !1278

do.body:                                          ; preds = %if.end
  %1 = load i64, ptr @kfd_open_count, align 8, !dbg !1279
  %cmp = icmp eq i64 %1, 0, !dbg !1279
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1282

if.then1:                                         ; preds = %do.body
  store i32 20, ptr %retval, align 4, !dbg !1279
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1279

if.end2:                                          ; preds = %do.body
  br label %do.cond, !dbg !1282

do.cond:                                          ; preds = %if.end2
  br label %do.end, !dbg !1282

do.end:                                           ; preds = %do.cond
  %call = call i32 @pthread_mutex_lock(ptr noundef @hsakmt_mutex) #10, !dbg !1283
  %2 = load ptr, ptr @system, align 8, !dbg !1284
  %cmp3 = icmp eq ptr %2, null, !dbg !1286
  br i1 %cmp3, label %if.then4, label %if.end8, !dbg !1287

if.then4:                                         ; preds = %do.end
  store i32 5, ptr %err, align 4, !dbg !1288
  %3 = load ptr, ptr @system, align 8, !dbg !1290
  %tobool5 = icmp ne ptr %3, null, !dbg !1290
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !1293

if.then6:                                         ; preds = %if.then4
  br label %if.end7, !dbg !1293

if.else:                                          ; preds = %if.then4
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 778, ptr noundef @__PRETTY_FUNCTION__.hsaKmtGetNodeProperties) #11, !dbg !1290
  unreachable, !dbg !1290

if.end7:                                          ; preds = %if.then6
  br label %out, !dbg !1294

if.end8:                                          ; preds = %do.end
  %4 = load i32, ptr %NodeId.addr, align 4, !dbg !1295
  %5 = load ptr, ptr @system, align 8, !dbg !1297
  %NumNodes = getelementptr inbounds %struct._HsaSystemProperties, ptr %5, i32 0, i32 0, !dbg !1298
  %6 = load i32, ptr %NumNodes, align 4, !dbg !1298
  %cmp9 = icmp uge i32 %4, %6, !dbg !1299
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1300

if.then10:                                        ; preds = %if.end8
  store i32 3, ptr %err, align 4, !dbg !1301
  br label %out, !dbg !1303

if.end11:                                         ; preds = %if.end8
  %7 = load i32, ptr %NodeId.addr, align 4, !dbg !1304
  %call12 = call i32 @validate_nodeid(i32 noundef %7, ptr noundef %gpu_id), !dbg !1305
  store i32 %call12, ptr %err, align 4, !dbg !1306
  %8 = load i32, ptr %err, align 4, !dbg !1307
  %cmp13 = icmp ne i32 %8, 0, !dbg !1309
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !1310

if.then14:                                        ; preds = %if.end11
  %9 = load i32, ptr %err, align 4, !dbg !1311
  store i32 %9, ptr %retval, align 4, !dbg !1312
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1312

if.end15:                                         ; preds = %if.end11
  %10 = load ptr, ptr %NodeProperties.addr, align 8, !dbg !1313
  %11 = load ptr, ptr @node, align 8, !dbg !1314
  %12 = load i32, ptr %NodeId.addr, align 4, !dbg !1315
  %idxprom = zext i32 %12 to i64, !dbg !1314
  %arrayidx = getelementptr inbounds %struct.node_t, ptr %11, i64 %idxprom, !dbg !1314
  %node = getelementptr inbounds %struct.node_t, ptr %arrayidx, i32 0, i32 1, !dbg !1316
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 4 %node, i64 352, i1 false), !dbg !1316
  %13 = load ptr, ptr %NodeProperties.addr, align 8, !dbg !1317
  %NumMemoryBanks = getelementptr inbounds %struct._HsaNodeProperties, ptr %13, i32 0, i32 2, !dbg !1318
  %14 = load i32, ptr %NumMemoryBanks, align 4, !dbg !1319
  %add = add i32 %14, 2, !dbg !1319
  store i32 %add, ptr %NumMemoryBanks, align 4, !dbg !1319
  store i32 0, ptr %err, align 4, !dbg !1320
  br label %out, !dbg !1321

out:                                              ; preds = %if.end15, %if.then10, %if.end7
  tail call void @llvm.dbg.label(metadata !1267), !dbg !1322
  %call16 = call i32 @pthread_mutex_unlock(ptr noundef @hsakmt_mutex) #10, !dbg !1323
  %15 = load i32, ptr %err, align 4, !dbg !1324
  store i32 %15, ptr %retval, align 4, !dbg !1325
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1325

cleanup:                                          ; preds = %out, %if.then14, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %gpu_id) #10, !dbg !1326
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !1326
  %16 = load i32, ptr %retval, align 4, !dbg !1326
  ret i32 %16, !dbg !1326
}

; Function Attrs: nounwind uwtable
define i32 @hsaKmtGetNodeMemoryProperties(i32 noundef %NodeId, i32 noundef %NumBanks, ptr noundef %MemoryProperties) #0 !dbg !1327 {
entry:
  %retval = alloca i32, align 4
  %NodeId.addr = alloca i32, align 4
  %NumBanks.addr = alloca i32, align 4
  %MemoryProperties.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  %gpu_id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %NodeId, ptr %NodeId.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %NodeId.addr, metadata !1331, metadata !DIExpression()), !dbg !1338
  store i32 %NumBanks, ptr %NumBanks.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %NumBanks.addr, metadata !1332, metadata !DIExpression()), !dbg !1339
  store ptr %MemoryProperties, ptr %MemoryProperties.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %MemoryProperties.addr, metadata !1333, metadata !DIExpression()), !dbg !1340
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !1341
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1334, metadata !DIExpression()), !dbg !1342
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !1343
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1335, metadata !DIExpression()), !dbg !1344
  call void @llvm.lifetime.start.p0(i64 4, ptr %gpu_id) #10, !dbg !1343
  tail call void @llvm.dbg.declare(metadata ptr %gpu_id, metadata !1336, metadata !DIExpression()), !dbg !1345
  %0 = load ptr, ptr %MemoryProperties.addr, align 8, !dbg !1346
  %tobool = icmp ne ptr %0, null, !dbg !1346
  br i1 %tobool, label %if.end, label %if.then, !dbg !1348

if.then:                                          ; preds = %entry
  store i32 3, ptr %retval, align 4, !dbg !1349
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1349

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !1350

do.body:                                          ; preds = %if.end
  %1 = load i64, ptr @kfd_open_count, align 8, !dbg !1351
  %cmp = icmp eq i64 %1, 0, !dbg !1351
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1354

if.then1:                                         ; preds = %do.body
  store i32 20, ptr %retval, align 4, !dbg !1351
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1351

if.end2:                                          ; preds = %do.body
  br label %do.cond, !dbg !1354

do.cond:                                          ; preds = %if.end2
  br label %do.end, !dbg !1354

do.end:                                           ; preds = %do.cond
  %call = call i32 @pthread_mutex_lock(ptr noundef @hsakmt_mutex) #10, !dbg !1355
  %2 = load ptr, ptr @system, align 8, !dbg !1356
  %cmp3 = icmp eq ptr %2, null, !dbg !1358
  br i1 %cmp3, label %if.then4, label %if.end8, !dbg !1359

if.then4:                                         ; preds = %do.end
  store i32 5, ptr %err, align 4, !dbg !1360
  %3 = load ptr, ptr @system, align 8, !dbg !1362
  %tobool5 = icmp ne ptr %3, null, !dbg !1362
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !1365

if.then6:                                         ; preds = %if.then4
  br label %if.end7, !dbg !1365

if.else:                                          ; preds = %if.then4
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 821, ptr noundef @__PRETTY_FUNCTION__.hsaKmtGetNodeMemoryProperties) #11, !dbg !1362
  unreachable, !dbg !1362

if.end7:                                          ; preds = %if.then6
  br label %out, !dbg !1366

if.end8:                                          ; preds = %do.end
  %4 = load i32, ptr %NodeId.addr, align 4, !dbg !1367
  %5 = load ptr, ptr @system, align 8, !dbg !1369
  %NumNodes = getelementptr inbounds %struct._HsaSystemProperties, ptr %5, i32 0, i32 0, !dbg !1370
  %6 = load i32, ptr %NumNodes, align 4, !dbg !1370
  %cmp9 = icmp uge i32 %4, %6, !dbg !1371
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1372

if.then10:                                        ; preds = %if.end8
  store i32 3, ptr %err, align 4, !dbg !1373
  br label %out, !dbg !1375

if.end11:                                         ; preds = %if.end8
  %7 = load i32, ptr %NodeId.addr, align 4, !dbg !1376
  %call12 = call i32 @validate_nodeid(i32 noundef %7, ptr noundef %gpu_id), !dbg !1377
  store i32 %call12, ptr %err, align 4, !dbg !1378
  %8 = load i32, ptr %err, align 4, !dbg !1379
  %cmp13 = icmp ne i32 %8, 0, !dbg !1381
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !1382

if.then14:                                        ; preds = %if.end11
  %9 = load i32, ptr %err, align 4, !dbg !1383
  store i32 %9, ptr %retval, align 4, !dbg !1384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1384

if.end15:                                         ; preds = %if.end11
  store i32 0, ptr %i, align 4, !dbg !1385
  br label %for.cond, !dbg !1387

for.cond:                                         ; preds = %for.inc, %if.end15
  %10 = load i32, ptr %i, align 4, !dbg !1388
  %11 = load ptr, ptr @node, align 8, !dbg !1390
  %12 = load i32, ptr %NodeId.addr, align 4, !dbg !1390
  %idxprom = zext i32 %12 to i64, !dbg !1390
  %arrayidx = getelementptr inbounds %struct.node_t, ptr %11, i64 %idxprom, !dbg !1390
  %node = getelementptr inbounds %struct.node_t, ptr %arrayidx, i32 0, i32 1, !dbg !1390
  %NumMemoryBanks = getelementptr inbounds %struct._HsaNodeProperties, ptr %node, i32 0, i32 2, !dbg !1390
  %13 = load i32, ptr %NumMemoryBanks, align 4, !dbg !1390
  %14 = load i32, ptr %NumBanks.addr, align 4, !dbg !1390
  %cmp16 = icmp ult i32 %13, %14, !dbg !1390
  br i1 %cmp16, label %cond.true, label %cond.false, !dbg !1390

cond.true:                                        ; preds = %for.cond
  %15 = load ptr, ptr @node, align 8, !dbg !1390
  %16 = load i32, ptr %NodeId.addr, align 4, !dbg !1390
  %idxprom17 = zext i32 %16 to i64, !dbg !1390
  %arrayidx18 = getelementptr inbounds %struct.node_t, ptr %15, i64 %idxprom17, !dbg !1390
  %node19 = getelementptr inbounds %struct.node_t, ptr %arrayidx18, i32 0, i32 1, !dbg !1390
  %NumMemoryBanks20 = getelementptr inbounds %struct._HsaNodeProperties, ptr %node19, i32 0, i32 2, !dbg !1390
  %17 = load i32, ptr %NumMemoryBanks20, align 4, !dbg !1390
  br label %cond.end, !dbg !1390

cond.false:                                       ; preds = %for.cond
  %18 = load i32, ptr %NumBanks.addr, align 4, !dbg !1390
  br label %cond.end, !dbg !1390

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %18, %cond.false ], !dbg !1390
  %cmp21 = icmp ult i32 %10, %cond, !dbg !1391
  br i1 %cmp21, label %for.body, label %for.end, !dbg !1392

for.body:                                         ; preds = %cond.end
  %19 = load ptr, ptr @node, align 8, !dbg !1393
  %20 = load i32, ptr %NodeId.addr, align 4, !dbg !1393
  %idxprom22 = zext i32 %20 to i64, !dbg !1393
  %arrayidx23 = getelementptr inbounds %struct.node_t, ptr %19, i64 %idxprom22, !dbg !1393
  %mem = getelementptr inbounds %struct.node_t, ptr %arrayidx23, i32 0, i32 3, !dbg !1393
  %21 = load ptr, ptr %mem, align 8, !dbg !1393
  %tobool24 = icmp ne ptr %21, null, !dbg !1393
  br i1 %tobool24, label %if.then25, label %if.else26, !dbg !1397

if.then25:                                        ; preds = %for.body
  br label %if.end27, !dbg !1397

if.else26:                                        ; preds = %for.body
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 836, ptr noundef @__PRETTY_FUNCTION__.hsaKmtGetNodeMemoryProperties) #11, !dbg !1393
  unreachable, !dbg !1393

if.end27:                                         ; preds = %if.then25
  %22 = load ptr, ptr %MemoryProperties.addr, align 8, !dbg !1398
  %23 = load i32, ptr %i, align 4, !dbg !1399
  %idxprom28 = zext i32 %23 to i64, !dbg !1398
  %arrayidx29 = getelementptr inbounds %struct._HsaMemoryProperties, ptr %22, i64 %idxprom28, !dbg !1398
  %24 = load ptr, ptr @node, align 8, !dbg !1400
  %25 = load i32, ptr %NodeId.addr, align 4, !dbg !1401
  %idxprom30 = zext i32 %25 to i64, !dbg !1400
  %arrayidx31 = getelementptr inbounds %struct.node_t, ptr %24, i64 %idxprom30, !dbg !1400
  %mem32 = getelementptr inbounds %struct.node_t, ptr %arrayidx31, i32 0, i32 3, !dbg !1402
  %26 = load ptr, ptr %mem32, align 8, !dbg !1402
  %27 = load i32, ptr %i, align 4, !dbg !1403
  %idxprom33 = zext i32 %27 to i64, !dbg !1400
  %arrayidx34 = getelementptr inbounds %struct._HsaMemoryProperties, ptr %26, i64 %idxprom33, !dbg !1400
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx29, ptr align 4 %arrayidx34, i64 32, i1 false), !dbg !1400
  br label %for.inc, !dbg !1404

for.inc:                                          ; preds = %if.end27
  %28 = load i32, ptr %i, align 4, !dbg !1405
  %inc = add i32 %28, 1, !dbg !1405
  store i32 %inc, ptr %i, align 4, !dbg !1405
  br label %for.cond, !dbg !1406, !llvm.loop !1407

for.end:                                          ; preds = %cond.end
  %29 = load i32, ptr %i, align 4, !dbg !1409
  %30 = load i32, ptr %NumBanks.addr, align 4, !dbg !1411
  %cmp35 = icmp ult i32 %29, %30, !dbg !1412
  br i1 %cmp35, label %if.then36, label %if.end48, !dbg !1413

if.then36:                                        ; preds = %for.end
  %31 = load ptr, ptr %MemoryProperties.addr, align 8, !dbg !1414
  %32 = load i32, ptr %i, align 4, !dbg !1416
  %idxprom37 = zext i32 %32 to i64, !dbg !1414
  %arrayidx38 = getelementptr inbounds %struct._HsaMemoryProperties, ptr %31, i64 %idxprom37, !dbg !1414
  %HeapType = getelementptr inbounds %struct._HsaMemoryProperties, ptr %arrayidx38, i32 0, i32 0, !dbg !1417
  store i32 4, ptr %HeapType, align 4, !dbg !1418
  %33 = load ptr, ptr @node, align 8, !dbg !1419
  %34 = load i32, ptr %NodeId.addr, align 4, !dbg !1420
  %idxprom39 = zext i32 %34 to i64, !dbg !1419
  %arrayidx40 = getelementptr inbounds %struct.node_t, ptr %33, i64 %idxprom39, !dbg !1419
  %node41 = getelementptr inbounds %struct.node_t, ptr %arrayidx40, i32 0, i32 1, !dbg !1421
  %LDSSizeInKB = getelementptr inbounds %struct._HsaNodeProperties, ptr %node41, i32 0, i32 9, !dbg !1422
  %35 = load i32, ptr %LDSSizeInKB, align 4, !dbg !1422
  %mul = mul i32 %35, 1024, !dbg !1423
  %conv = zext i32 %mul to i64, !dbg !1419
  %36 = load ptr, ptr %MemoryProperties.addr, align 8, !dbg !1424
  %37 = load i32, ptr %i, align 4, !dbg !1425
  %idxprom42 = zext i32 %37 to i64, !dbg !1424
  %arrayidx43 = getelementptr inbounds %struct._HsaMemoryProperties, ptr %36, i64 %idxprom42, !dbg !1424
  %38 = getelementptr inbounds %struct._HsaMemoryProperties, ptr %arrayidx43, i32 0, i32 1, !dbg !1426
  store i64 %conv, ptr %38, align 4, !dbg !1427
  %39 = load i32, ptr %gpu_id, align 4, !dbg !1428
  %call44 = call i64 @fmm_get_aperture_base(i32 noundef 1, i32 noundef %39), !dbg !1429
  %40 = load ptr, ptr %MemoryProperties.addr, align 8, !dbg !1430
  %41 = load i32, ptr %i, align 4, !dbg !1431
  %idxprom45 = zext i32 %41 to i64, !dbg !1430
  %arrayidx46 = getelementptr inbounds %struct._HsaMemoryProperties, ptr %40, i64 %idxprom45, !dbg !1430
  %VirtualBaseAddress = getelementptr inbounds %struct._HsaMemoryProperties, ptr %arrayidx46, i32 0, i32 5, !dbg !1432
  store i64 %call44, ptr %VirtualBaseAddress, align 4, !dbg !1433
  %42 = load i32, ptr %i, align 4, !dbg !1434
  %inc47 = add i32 %42, 1, !dbg !1434
  store i32 %inc47, ptr %i, align 4, !dbg !1434
  br label %if.end48, !dbg !1435

if.end48:                                         ; preds = %if.then36, %for.end
  %43 = load i32, ptr %i, align 4, !dbg !1436
  %44 = load i32, ptr %NumBanks.addr, align 4, !dbg !1438
  %cmp49 = icmp ult i32 %43, %44, !dbg !1439
  br i1 %cmp49, label %land.lhs.true, label %if.end71, !dbg !1440

land.lhs.true:                                    ; preds = %if.end48
  %45 = load ptr, ptr @node, align 8, !dbg !1441
  %46 = load i32, ptr %NodeId.addr, align 4, !dbg !1442
  %idxprom51 = zext i32 %46 to i64, !dbg !1441
  %arrayidx52 = getelementptr inbounds %struct.node_t, ptr %45, i64 %idxprom51, !dbg !1441
  %node53 = getelementptr inbounds %struct.node_t, ptr %arrayidx52, i32 0, i32 1, !dbg !1443
  %LocalMemSize = getelementptr inbounds %struct._HsaNodeProperties, ptr %node53, i32 0, i32 21, !dbg !1444
  %47 = load i64, ptr %LocalMemSize, align 4, !dbg !1444
  %cmp54 = icmp ugt i64 %47, 0, !dbg !1445
  br i1 %cmp54, label %if.then56, label %if.end71, !dbg !1446

if.then56:                                        ; preds = %land.lhs.true
  %48 = load ptr, ptr %MemoryProperties.addr, align 8, !dbg !1447
  %49 = load i32, ptr %i, align 4, !dbg !1449
  %idxprom57 = zext i32 %49 to i64, !dbg !1447
  %arrayidx58 = getelementptr inbounds %struct._HsaMemoryProperties, ptr %48, i64 %idxprom57, !dbg !1447
  %HeapType59 = getelementptr inbounds %struct._HsaMemoryProperties, ptr %arrayidx58, i32 0, i32 0, !dbg !1450
  store i32 2, ptr %HeapType59, align 4, !dbg !1451
  %50 = load ptr, ptr @node, align 8, !dbg !1452
  %51 = load i32, ptr %NodeId.addr, align 4, !dbg !1453
  %idxprom60 = zext i32 %51 to i64, !dbg !1452
  %arrayidx61 = getelementptr inbounds %struct.node_t, ptr %50, i64 %idxprom60, !dbg !1452
  %node62 = getelementptr inbounds %struct.node_t, ptr %arrayidx61, i32 0, i32 1, !dbg !1454
  %LocalMemSize63 = getelementptr inbounds %struct._HsaNodeProperties, ptr %node62, i32 0, i32 21, !dbg !1455
  %52 = load i64, ptr %LocalMemSize63, align 4, !dbg !1455
  %53 = load ptr, ptr %MemoryProperties.addr, align 8, !dbg !1456
  %54 = load i32, ptr %i, align 4, !dbg !1457
  %idxprom64 = zext i32 %54 to i64, !dbg !1456
  %arrayidx65 = getelementptr inbounds %struct._HsaMemoryProperties, ptr %53, i64 %idxprom64, !dbg !1456
  %55 = getelementptr inbounds %struct._HsaMemoryProperties, ptr %arrayidx65, i32 0, i32 1, !dbg !1458
  store i64 %52, ptr %55, align 4, !dbg !1459
  %56 = load i32, ptr %gpu_id, align 4, !dbg !1460
  %call66 = call i64 @fmm_get_aperture_base(i32 noundef 0, i32 noundef %56), !dbg !1461
  %57 = load ptr, ptr %MemoryProperties.addr, align 8, !dbg !1462
  %58 = load i32, ptr %i, align 4, !dbg !1463
  %idxprom67 = zext i32 %58 to i64, !dbg !1462
  %arrayidx68 = getelementptr inbounds %struct._HsaMemoryProperties, ptr %57, i64 %idxprom67, !dbg !1462
  %VirtualBaseAddress69 = getelementptr inbounds %struct._HsaMemoryProperties, ptr %arrayidx68, i32 0, i32 5, !dbg !1464
  store i64 %call66, ptr %VirtualBaseAddress69, align 4, !dbg !1465
  %59 = load i32, ptr %i, align 4, !dbg !1466
  %inc70 = add i32 %59, 1, !dbg !1466
  store i32 %inc70, ptr %i, align 4, !dbg !1466
  br label %if.end71, !dbg !1467

if.end71:                                         ; preds = %if.then56, %land.lhs.true, %if.end48
  store i32 0, ptr %err, align 4, !dbg !1468
  br label %out, !dbg !1469

out:                                              ; preds = %if.end71, %if.then10, %if.end7
  tail call void @llvm.dbg.label(metadata !1337), !dbg !1470
  %call72 = call i32 @pthread_mutex_unlock(ptr noundef @hsakmt_mutex) #10, !dbg !1471
  %60 = load i32, ptr %err, align 4, !dbg !1472
  store i32 %60, ptr %retval, align 4, !dbg !1473
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1473

cleanup:                                          ; preds = %out, %if.then14, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %gpu_id) #10, !dbg !1474
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !1474
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !1474
  %61 = load i32, ptr %retval, align 4, !dbg !1474
  ret i32 %61, !dbg !1474
}

declare !dbg !1475 i64 @fmm_get_aperture_base(i32 noundef, i32 noundef) #5

; Function Attrs: nounwind uwtable
define i32 @hsaKmtGetNodeCacheProperties(i32 noundef %NodeId, i32 noundef %ProcessorId, i32 noundef %NumCaches, ptr noundef %CacheProperties) #0 !dbg !1479 {
entry:
  %retval = alloca i32, align 4
  %NodeId.addr = alloca i32, align 4
  %ProcessorId.addr = alloca i32, align 4
  %NumCaches.addr = alloca i32, align 4
  %CacheProperties.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %NodeId, ptr %NodeId.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %NodeId.addr, metadata !1483, metadata !DIExpression()), !dbg !1490
  store i32 %ProcessorId, ptr %ProcessorId.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %ProcessorId.addr, metadata !1484, metadata !DIExpression()), !dbg !1491
  store i32 %NumCaches, ptr %NumCaches.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %NumCaches.addr, metadata !1485, metadata !DIExpression()), !dbg !1492
  store ptr %CacheProperties, ptr %CacheProperties.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %CacheProperties.addr, metadata !1486, metadata !DIExpression()), !dbg !1493
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !1494
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1487, metadata !DIExpression()), !dbg !1495
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !1496
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1488, metadata !DIExpression()), !dbg !1497
  %0 = load ptr, ptr %CacheProperties.addr, align 8, !dbg !1498
  %tobool = icmp ne ptr %0, null, !dbg !1498
  br i1 %tobool, label %if.end, label %if.then, !dbg !1500

if.then:                                          ; preds = %entry
  store i32 3, ptr %retval, align 4, !dbg !1501
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1501

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !1502

do.body:                                          ; preds = %if.end
  %1 = load i64, ptr @kfd_open_count, align 8, !dbg !1503
  %cmp = icmp eq i64 %1, 0, !dbg !1503
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1506

if.then1:                                         ; preds = %do.body
  store i32 20, ptr %retval, align 4, !dbg !1503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1503

if.end2:                                          ; preds = %do.body
  br label %do.cond, !dbg !1506

do.cond:                                          ; preds = %if.end2
  br label %do.end, !dbg !1506

do.end:                                           ; preds = %do.cond
  %call = call i32 @pthread_mutex_lock(ptr noundef @hsakmt_mutex) #10, !dbg !1507
  %2 = load ptr, ptr @system, align 8, !dbg !1508
  %cmp3 = icmp eq ptr %2, null, !dbg !1510
  br i1 %cmp3, label %if.then4, label %if.end8, !dbg !1511

if.then4:                                         ; preds = %do.end
  store i32 5, ptr %err, align 4, !dbg !1512
  %3 = load ptr, ptr @system, align 8, !dbg !1514
  %tobool5 = icmp ne ptr %3, null, !dbg !1514
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !1517

if.then6:                                         ; preds = %if.then4
  br label %if.end7, !dbg !1517

if.else:                                          ; preds = %if.then4
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 884, ptr noundef @__PRETTY_FUNCTION__.hsaKmtGetNodeCacheProperties) #11, !dbg !1514
  unreachable, !dbg !1514

if.end7:                                          ; preds = %if.then6
  br label %out, !dbg !1518

if.end8:                                          ; preds = %do.end
  %4 = load i32, ptr %NodeId.addr, align 4, !dbg !1519
  %5 = load ptr, ptr @system, align 8, !dbg !1521
  %NumNodes = getelementptr inbounds %struct._HsaSystemProperties, ptr %5, i32 0, i32 0, !dbg !1522
  %6 = load i32, ptr %NumNodes, align 4, !dbg !1522
  %cmp9 = icmp uge i32 %4, %6, !dbg !1523
  br i1 %cmp9, label %if.then12, label %lor.lhs.false, !dbg !1524

lor.lhs.false:                                    ; preds = %if.end8
  %7 = load i32, ptr %NumCaches.addr, align 4, !dbg !1525
  %8 = load ptr, ptr @node, align 8, !dbg !1526
  %9 = load i32, ptr %NodeId.addr, align 4, !dbg !1527
  %idxprom = zext i32 %9 to i64, !dbg !1526
  %arrayidx = getelementptr inbounds %struct.node_t, ptr %8, i64 %idxprom, !dbg !1526
  %node = getelementptr inbounds %struct.node_t, ptr %arrayidx, i32 0, i32 1, !dbg !1528
  %NumCaches10 = getelementptr inbounds %struct._HsaNodeProperties, ptr %node, i32 0, i32 3, !dbg !1529
  %10 = load i32, ptr %NumCaches10, align 4, !dbg !1529
  %cmp11 = icmp ugt i32 %7, %10, !dbg !1530
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !1531

if.then12:                                        ; preds = %lor.lhs.false, %if.end8
  store i32 3, ptr %err, align 4, !dbg !1532
  br label %out, !dbg !1534

if.end13:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %i, align 4, !dbg !1535
  br label %for.cond, !dbg !1537

for.cond:                                         ; preds = %for.inc, %if.end13
  %11 = load i32, ptr %i, align 4, !dbg !1538
  %12 = load ptr, ptr @node, align 8, !dbg !1540
  %13 = load i32, ptr %NodeId.addr, align 4, !dbg !1540
  %idxprom14 = zext i32 %13 to i64, !dbg !1540
  %arrayidx15 = getelementptr inbounds %struct.node_t, ptr %12, i64 %idxprom14, !dbg !1540
  %node16 = getelementptr inbounds %struct.node_t, ptr %arrayidx15, i32 0, i32 1, !dbg !1540
  %NumCaches17 = getelementptr inbounds %struct._HsaNodeProperties, ptr %node16, i32 0, i32 3, !dbg !1540
  %14 = load i32, ptr %NumCaches17, align 4, !dbg !1540
  %15 = load i32, ptr %NumCaches.addr, align 4, !dbg !1540
  %cmp18 = icmp ult i32 %14, %15, !dbg !1540
  br i1 %cmp18, label %cond.true, label %cond.false, !dbg !1540

cond.true:                                        ; preds = %for.cond
  %16 = load ptr, ptr @node, align 8, !dbg !1540
  %17 = load i32, ptr %NodeId.addr, align 4, !dbg !1540
  %idxprom19 = zext i32 %17 to i64, !dbg !1540
  %arrayidx20 = getelementptr inbounds %struct.node_t, ptr %16, i64 %idxprom19, !dbg !1540
  %node21 = getelementptr inbounds %struct.node_t, ptr %arrayidx20, i32 0, i32 1, !dbg !1540
  %NumCaches22 = getelementptr inbounds %struct._HsaNodeProperties, ptr %node21, i32 0, i32 3, !dbg !1540
  %18 = load i32, ptr %NumCaches22, align 4, !dbg !1540
  br label %cond.end, !dbg !1540

cond.false:                                       ; preds = %for.cond
  %19 = load i32, ptr %NumCaches.addr, align 4, !dbg !1540
  br label %cond.end, !dbg !1540

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %19, %cond.false ], !dbg !1540
  %cmp23 = icmp ult i32 %11, %cond, !dbg !1541
  br i1 %cmp23, label %for.body, label %for.end, !dbg !1542

for.body:                                         ; preds = %cond.end
  %20 = load ptr, ptr @node, align 8, !dbg !1543
  %21 = load i32, ptr %NodeId.addr, align 4, !dbg !1543
  %idxprom24 = zext i32 %21 to i64, !dbg !1543
  %arrayidx25 = getelementptr inbounds %struct.node_t, ptr %20, i64 %idxprom24, !dbg !1543
  %cache = getelementptr inbounds %struct.node_t, ptr %arrayidx25, i32 0, i32 4, !dbg !1543
  %22 = load ptr, ptr %cache, align 8, !dbg !1543
  %tobool26 = icmp ne ptr %22, null, !dbg !1543
  br i1 %tobool26, label %if.then27, label %if.else28, !dbg !1547

if.then27:                                        ; preds = %for.body
  br label %if.end29, !dbg !1547

if.else28:                                        ; preds = %for.body
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 894, ptr noundef @__PRETTY_FUNCTION__.hsaKmtGetNodeCacheProperties) #11, !dbg !1543
  unreachable, !dbg !1543

if.end29:                                         ; preds = %if.then27
  %23 = load ptr, ptr %CacheProperties.addr, align 8, !dbg !1548
  %24 = load i32, ptr %i, align 4, !dbg !1549
  %idxprom30 = zext i32 %24 to i64, !dbg !1548
  %arrayidx31 = getelementptr inbounds %struct._HaCacheProperties, ptr %23, i64 %idxprom30, !dbg !1548
  %25 = load ptr, ptr @node, align 8, !dbg !1550
  %26 = load i32, ptr %NodeId.addr, align 4, !dbg !1551
  %idxprom32 = zext i32 %26 to i64, !dbg !1550
  %arrayidx33 = getelementptr inbounds %struct.node_t, ptr %25, i64 %idxprom32, !dbg !1550
  %cache34 = getelementptr inbounds %struct.node_t, ptr %arrayidx33, i32 0, i32 4, !dbg !1552
  %27 = load ptr, ptr %cache34, align 8, !dbg !1552
  %28 = load i32, ptr %i, align 4, !dbg !1553
  %idxprom35 = zext i32 %28 to i64, !dbg !1550
  %arrayidx36 = getelementptr inbounds %struct._HaCacheProperties, ptr %27, i64 %idxprom35, !dbg !1550
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx31, ptr align 4 %arrayidx36, i64 1056, i1 false), !dbg !1550
  br label %for.inc, !dbg !1554

for.inc:                                          ; preds = %if.end29
  %29 = load i32, ptr %i, align 4, !dbg !1555
  %inc = add i32 %29, 1, !dbg !1555
  store i32 %inc, ptr %i, align 4, !dbg !1555
  br label %for.cond, !dbg !1556, !llvm.loop !1557

for.end:                                          ; preds = %cond.end
  store i32 0, ptr %err, align 4, !dbg !1559
  br label %out, !dbg !1560

out:                                              ; preds = %for.end, %if.then12, %if.end7
  tail call void @llvm.dbg.label(metadata !1489), !dbg !1561
  %call37 = call i32 @pthread_mutex_unlock(ptr noundef @hsakmt_mutex) #10, !dbg !1562
  %30 = load i32, ptr %err, align 4, !dbg !1563
  store i32 %30, ptr %retval, align 4, !dbg !1564
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1564

cleanup:                                          ; preds = %out, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !1565
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !1565
  %31 = load i32, ptr %retval, align 4, !dbg !1565
  ret i32 %31, !dbg !1565
}

; Function Attrs: nounwind uwtable
define i32 @hsaKmtGetNodeIoLinkProperties(i32 noundef %NodeId, i32 noundef %NumIoLinks, ptr noundef %IoLinkProperties) #0 !dbg !1566 {
entry:
  %retval = alloca i32, align 4
  %NodeId.addr = alloca i32, align 4
  %NumIoLinks.addr = alloca i32, align 4
  %IoLinkProperties.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %NodeId, ptr %NodeId.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %NodeId.addr, metadata !1570, metadata !DIExpression()), !dbg !1576
  store i32 %NumIoLinks, ptr %NumIoLinks.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %NumIoLinks.addr, metadata !1571, metadata !DIExpression()), !dbg !1577
  store ptr %IoLinkProperties, ptr %IoLinkProperties.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %IoLinkProperties.addr, metadata !1572, metadata !DIExpression()), !dbg !1578
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !1579
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1573, metadata !DIExpression()), !dbg !1580
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !1581
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1574, metadata !DIExpression()), !dbg !1582
  %0 = load ptr, ptr %IoLinkProperties.addr, align 8, !dbg !1583
  %tobool = icmp ne ptr %0, null, !dbg !1583
  br i1 %tobool, label %if.end, label %if.then, !dbg !1585

if.then:                                          ; preds = %entry
  store i32 3, ptr %retval, align 4, !dbg !1586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1586

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !1587

do.body:                                          ; preds = %if.end
  %1 = load i64, ptr @kfd_open_count, align 8, !dbg !1588
  %cmp = icmp eq i64 %1, 0, !dbg !1588
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1591

if.then1:                                         ; preds = %do.body
  store i32 20, ptr %retval, align 4, !dbg !1588
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1588

if.end2:                                          ; preds = %do.body
  br label %do.cond, !dbg !1591

do.cond:                                          ; preds = %if.end2
  br label %do.end, !dbg !1591

do.end:                                           ; preds = %do.cond
  %call = call i32 @pthread_mutex_lock(ptr noundef @hsakmt_mutex) #10, !dbg !1592
  %2 = load ptr, ptr @system, align 8, !dbg !1593
  %cmp3 = icmp eq ptr %2, null, !dbg !1595
  br i1 %cmp3, label %if.then4, label %if.end8, !dbg !1596

if.then4:                                         ; preds = %do.end
  store i32 5, ptr %err, align 4, !dbg !1597
  %3 = load ptr, ptr @system, align 8, !dbg !1599
  %tobool5 = icmp ne ptr %3, null, !dbg !1599
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !1602

if.then6:                                         ; preds = %if.then4
  br label %if.end7, !dbg !1602

if.else:                                          ; preds = %if.then4
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 926, ptr noundef @__PRETTY_FUNCTION__.hsaKmtGetNodeIoLinkProperties) #11, !dbg !1599
  unreachable, !dbg !1599

if.end7:                                          ; preds = %if.then6
  br label %out, !dbg !1603

if.end8:                                          ; preds = %do.end
  %4 = load i32, ptr %NodeId.addr, align 4, !dbg !1604
  %5 = load ptr, ptr @system, align 8, !dbg !1606
  %NumNodes = getelementptr inbounds %struct._HsaSystemProperties, ptr %5, i32 0, i32 0, !dbg !1607
  %6 = load i32, ptr %NumNodes, align 4, !dbg !1607
  %cmp9 = icmp uge i32 %4, %6, !dbg !1608
  br i1 %cmp9, label %if.then11, label %lor.lhs.false, !dbg !1609

lor.lhs.false:                                    ; preds = %if.end8
  %7 = load i32, ptr %NumIoLinks.addr, align 4, !dbg !1610
  %8 = load ptr, ptr @node, align 8, !dbg !1611
  %9 = load i32, ptr %NodeId.addr, align 4, !dbg !1612
  %idxprom = zext i32 %9 to i64, !dbg !1611
  %arrayidx = getelementptr inbounds %struct.node_t, ptr %8, i64 %idxprom, !dbg !1611
  %node = getelementptr inbounds %struct.node_t, ptr %arrayidx, i32 0, i32 1, !dbg !1613
  %NumIOLinks = getelementptr inbounds %struct._HsaNodeProperties, ptr %node, i32 0, i32 4, !dbg !1614
  %10 = load i32, ptr %NumIOLinks, align 4, !dbg !1614
  %cmp10 = icmp ugt i32 %7, %10, !dbg !1615
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !1616

if.then11:                                        ; preds = %lor.lhs.false, %if.end8
  store i32 3, ptr %err, align 4, !dbg !1617
  br label %out, !dbg !1619

if.end12:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %i, align 4, !dbg !1620
  br label %for.cond, !dbg !1622

for.cond:                                         ; preds = %for.inc, %if.end12
  %11 = load i32, ptr %i, align 4, !dbg !1623
  %12 = load ptr, ptr @node, align 8, !dbg !1625
  %13 = load i32, ptr %NodeId.addr, align 4, !dbg !1625
  %idxprom13 = zext i32 %13 to i64, !dbg !1625
  %arrayidx14 = getelementptr inbounds %struct.node_t, ptr %12, i64 %idxprom13, !dbg !1625
  %node15 = getelementptr inbounds %struct.node_t, ptr %arrayidx14, i32 0, i32 1, !dbg !1625
  %NumIOLinks16 = getelementptr inbounds %struct._HsaNodeProperties, ptr %node15, i32 0, i32 4, !dbg !1625
  %14 = load i32, ptr %NumIOLinks16, align 4, !dbg !1625
  %15 = load i32, ptr %NumIoLinks.addr, align 4, !dbg !1625
  %cmp17 = icmp ult i32 %14, %15, !dbg !1625
  br i1 %cmp17, label %cond.true, label %cond.false, !dbg !1625

cond.true:                                        ; preds = %for.cond
  %16 = load ptr, ptr @node, align 8, !dbg !1625
  %17 = load i32, ptr %NodeId.addr, align 4, !dbg !1625
  %idxprom18 = zext i32 %17 to i64, !dbg !1625
  %arrayidx19 = getelementptr inbounds %struct.node_t, ptr %16, i64 %idxprom18, !dbg !1625
  %node20 = getelementptr inbounds %struct.node_t, ptr %arrayidx19, i32 0, i32 1, !dbg !1625
  %NumIOLinks21 = getelementptr inbounds %struct._HsaNodeProperties, ptr %node20, i32 0, i32 4, !dbg !1625
  %18 = load i32, ptr %NumIOLinks21, align 4, !dbg !1625
  br label %cond.end, !dbg !1625

cond.false:                                       ; preds = %for.cond
  %19 = load i32, ptr %NumIoLinks.addr, align 4, !dbg !1625
  br label %cond.end, !dbg !1625

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %19, %cond.false ], !dbg !1625
  %cmp22 = icmp ult i32 %11, %cond, !dbg !1626
  br i1 %cmp22, label %for.body, label %for.end, !dbg !1627

for.body:                                         ; preds = %cond.end
  %20 = load ptr, ptr @node, align 8, !dbg !1628
  %21 = load i32, ptr %NodeId.addr, align 4, !dbg !1628
  %idxprom23 = zext i32 %21 to i64, !dbg !1628
  %arrayidx24 = getelementptr inbounds %struct.node_t, ptr %20, i64 %idxprom23, !dbg !1628
  %link = getelementptr inbounds %struct.node_t, ptr %arrayidx24, i32 0, i32 5, !dbg !1628
  %22 = load ptr, ptr %link, align 8, !dbg !1628
  %tobool25 = icmp ne ptr %22, null, !dbg !1628
  br i1 %tobool25, label %if.then26, label %if.else27, !dbg !1632

if.then26:                                        ; preds = %for.body
  br label %if.end28, !dbg !1632

if.else27:                                        ; preds = %for.body
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 936, ptr noundef @__PRETTY_FUNCTION__.hsaKmtGetNodeIoLinkProperties) #11, !dbg !1628
  unreachable, !dbg !1628

if.end28:                                         ; preds = %if.then26
  %23 = load ptr, ptr %IoLinkProperties.addr, align 8, !dbg !1633
  %24 = load i32, ptr %i, align 4, !dbg !1634
  %idxprom29 = zext i32 %24 to i64, !dbg !1633
  %arrayidx30 = getelementptr inbounds %struct._HsaIoLinkProperties, ptr %23, i64 %idxprom29, !dbg !1633
  %25 = load ptr, ptr @node, align 8, !dbg !1635
  %26 = load i32, ptr %NodeId.addr, align 4, !dbg !1636
  %idxprom31 = zext i32 %26 to i64, !dbg !1635
  %arrayidx32 = getelementptr inbounds %struct.node_t, ptr %25, i64 %idxprom31, !dbg !1635
  %link33 = getelementptr inbounds %struct.node_t, ptr %arrayidx32, i32 0, i32 5, !dbg !1637
  %27 = load ptr, ptr %link33, align 8, !dbg !1637
  %28 = load i32, ptr %i, align 4, !dbg !1638
  %idxprom34 = zext i32 %28 to i64, !dbg !1635
  %arrayidx35 = getelementptr inbounds %struct._HsaIoLinkProperties, ptr %27, i64 %idxprom34, !dbg !1635
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx30, ptr align 4 %arrayidx35, i64 48, i1 false), !dbg !1635
  br label %for.inc, !dbg !1639

for.inc:                                          ; preds = %if.end28
  %29 = load i32, ptr %i, align 4, !dbg !1640
  %inc = add i32 %29, 1, !dbg !1640
  store i32 %inc, ptr %i, align 4, !dbg !1640
  br label %for.cond, !dbg !1641, !llvm.loop !1642

for.end:                                          ; preds = %cond.end
  store i32 0, ptr %err, align 4, !dbg !1644
  br label %out, !dbg !1645

out:                                              ; preds = %for.end, %if.then11, %if.end7
  tail call void @llvm.dbg.label(metadata !1575), !dbg !1646
  %call36 = call i32 @pthread_mutex_unlock(ptr noundef @hsakmt_mutex) #10, !dbg !1647
  %30 = load i32, ptr %err, align 4, !dbg !1648
  store i32 %30, ptr %retval, align 4, !dbg !1649
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1649

cleanup:                                          ; preds = %out, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !1650
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !1650
  %31 = load i32, ptr %retval, align 4, !dbg !1650
  ret i32 %31, !dbg !1650
}

; Function Attrs: nounwind uwtable
define zeroext i16 @get_device_id_by_node(i32 noundef %node_id) #0 !dbg !1651 {
entry:
  %retval = alloca i16, align 2
  %node_id.addr = alloca i32, align 4
  store i32 %node_id, ptr %node_id.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %node_id.addr, metadata !1655, metadata !DIExpression()), !dbg !1656
  %0 = load ptr, ptr @node, align 8, !dbg !1657
  %tobool = icmp ne ptr %0, null, !dbg !1657
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1659

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr @system, align 8, !dbg !1660
  %tobool1 = icmp ne ptr %1, null, !dbg !1660
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !1661

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr @system, align 8, !dbg !1662
  %NumNodes = getelementptr inbounds %struct._HsaSystemProperties, ptr %2, i32 0, i32 0, !dbg !1663
  %3 = load i32, ptr %NumNodes, align 4, !dbg !1663
  %4 = load i32, ptr %node_id.addr, align 4, !dbg !1664
  %cmp = icmp ule i32 %3, %4, !dbg !1665
  br i1 %cmp, label %if.then, label %if.end, !dbg !1666

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i16 0, ptr %retval, align 2, !dbg !1667
  br label %return, !dbg !1667

if.end:                                           ; preds = %lor.lhs.false2
  %5 = load ptr, ptr @node, align 8, !dbg !1668
  %6 = load i32, ptr %node_id.addr, align 4, !dbg !1669
  %idxprom = zext i32 %6 to i64, !dbg !1668
  %arrayidx = getelementptr inbounds %struct.node_t, ptr %5, i64 %idxprom, !dbg !1668
  %node = getelementptr inbounds %struct.node_t, ptr %arrayidx, i32 0, i32 1, !dbg !1670
  %DeviceId = getelementptr inbounds %struct._HsaNodeProperties, ptr %node, i32 0, i32 19, !dbg !1671
  %7 = load i16, ptr %DeviceId, align 2, !dbg !1671
  store i16 %7, ptr %retval, align 2, !dbg !1672
  br label %return, !dbg !1672

return:                                           ; preds = %if.end, %if.then
  %8 = load i16, ptr %retval, align 2, !dbg !1673
  ret i16 %8, !dbg !1673
}

; Function Attrs: nounwind uwtable
define internal i32 @topology_sysfs_get_generation(ptr noundef %gen) #0 !dbg !1674 {
entry:
  %retval = alloca i32, align 4
  %gen.addr = alloca ptr, align 8
  %fd = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gen, ptr %gen.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %gen.addr, metadata !1678, metadata !DIExpression()), !dbg !1735
  call void @llvm.lifetime.start.p0(i64 8, ptr %fd) #10, !dbg !1736
  tail call void @llvm.dbg.declare(metadata ptr %fd, metadata !1679, metadata !DIExpression()), !dbg !1737
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !1738
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1733, metadata !DIExpression()), !dbg !1739
  store i32 0, ptr %ret, align 4, !dbg !1739
  %0 = load ptr, ptr %gen.addr, align 8, !dbg !1740
  %tobool = icmp ne ptr %0, null, !dbg !1740
  br i1 %tobool, label %if.then, label %if.else, !dbg !1743

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !1743

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 78, ptr noundef @__PRETTY_FUNCTION__.topology_sysfs_get_generation) #11, !dbg !1740
  unreachable, !dbg !1740

if.end:                                           ; preds = %if.then
  %call = call noalias ptr @fopen(ptr noundef @.str.6, ptr noundef @.str.7), !dbg !1744
  store ptr %call, ptr %fd, align 8, !dbg !1745
  %1 = load ptr, ptr %fd, align 8, !dbg !1746
  %tobool1 = icmp ne ptr %1, null, !dbg !1746
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1748

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1749
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1749

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %fd, align 8, !dbg !1750
  %3 = load ptr, ptr %gen.addr, align 8, !dbg !1752
  %call4 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %2, ptr noundef @.str.8, ptr noundef %3), !dbg !1753
  %cmp = icmp ne i32 %call4, 1, !dbg !1754
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !1755

if.then5:                                         ; preds = %if.end3
  store i32 1, ptr %ret, align 4, !dbg !1756
  br label %err, !dbg !1758

if.end6:                                          ; preds = %if.end3
  br label %err, !dbg !1759

err:                                              ; preds = %if.end6, %if.then5
  tail call void @llvm.dbg.label(metadata !1734), !dbg !1760
  %4 = load ptr, ptr %fd, align 8, !dbg !1761
  %call7 = call i32 @fclose(ptr noundef %4), !dbg !1762
  %5 = load i32, ptr %ret, align 4, !dbg !1763
  store i32 %5, ptr %retval, align 4, !dbg !1764
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1764

cleanup:                                          ; preds = %err, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !1765
  call void @llvm.lifetime.end.p0(i64 8, ptr %fd) #10, !dbg !1765
  %6 = load i32, ptr %retval, align 4, !dbg !1765
  ret i32 %6, !dbg !1765
}

; Function Attrs: nounwind uwtable
define internal i32 @topology_sysfs_get_system_props(ptr noundef %props) #0 !dbg !1766 {
entry:
  %retval = alloca i32, align 4
  %props.addr = alloca ptr, align 8
  %fd = alloca ptr, align 8
  %dirp = alloca ptr, align 8
  %read_buf = alloca ptr, align 8
  %p = alloca ptr, align 8
  %prop_name = alloca [256 x i8], align 16
  %prop_val = alloca i64, align 8
  %node_count = alloca i32, align 4
  %prog = alloca i32, align 4
  %dir = alloca ptr, align 8
  %read_size = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %props, ptr %props.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %props.addr, metadata !1768, metadata !DIExpression()), !dbg !1799
  call void @llvm.lifetime.start.p0(i64 8, ptr %fd) #10, !dbg !1800
  tail call void @llvm.dbg.declare(metadata ptr %fd, metadata !1769, metadata !DIExpression()), !dbg !1801
  call void @llvm.lifetime.start.p0(i64 8, ptr %dirp) #10, !dbg !1802
  tail call void @llvm.dbg.declare(metadata ptr %dirp, metadata !1770, metadata !DIExpression()), !dbg !1803
  call void @llvm.lifetime.start.p0(i64 8, ptr %read_buf) #10, !dbg !1804
  tail call void @llvm.dbg.declare(metadata ptr %read_buf, metadata !1775, metadata !DIExpression()), !dbg !1805
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !1804
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !1776, metadata !DIExpression()), !dbg !1806
  call void @llvm.lifetime.start.p0(i64 256, ptr %prop_name) #10, !dbg !1807
  tail call void @llvm.dbg.declare(metadata ptr %prop_name, metadata !1777, metadata !DIExpression()), !dbg !1808
  call void @llvm.lifetime.start.p0(i64 8, ptr %prop_val) #10, !dbg !1809
  tail call void @llvm.dbg.declare(metadata ptr %prop_val, metadata !1779, metadata !DIExpression()), !dbg !1810
  call void @llvm.lifetime.start.p0(i64 4, ptr %node_count) #10, !dbg !1811
  tail call void @llvm.dbg.declare(metadata ptr %node_count, metadata !1781, metadata !DIExpression()), !dbg !1812
  call void @llvm.lifetime.start.p0(i64 4, ptr %prog) #10, !dbg !1811
  tail call void @llvm.dbg.declare(metadata ptr %prog, metadata !1782, metadata !DIExpression()), !dbg !1813
  call void @llvm.lifetime.start.p0(i64 8, ptr %dir) #10, !dbg !1814
  tail call void @llvm.dbg.declare(metadata ptr %dir, metadata !1783, metadata !DIExpression()), !dbg !1815
  call void @llvm.lifetime.start.p0(i64 4, ptr %read_size) #10, !dbg !1816
  tail call void @llvm.dbg.declare(metadata ptr %read_size, metadata !1795, metadata !DIExpression()), !dbg !1817
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !1818
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1796, metadata !DIExpression()), !dbg !1819
  store i32 0, ptr %ret, align 4, !dbg !1819
  %0 = load ptr, ptr %props.addr, align 8, !dbg !1820
  %tobool = icmp ne ptr %0, null, !dbg !1820
  br i1 %tobool, label %if.then, label %if.else, !dbg !1823

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !1823

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.9, ptr noundef @.str.1, i32 noundef 105, ptr noundef @__PRETTY_FUNCTION__.topology_sysfs_get_system_props) #11, !dbg !1820
  unreachable, !dbg !1820

if.end:                                           ; preds = %if.then
  %call = call noalias ptr @fopen(ptr noundef @.str.10, ptr noundef @.str.7), !dbg !1824
  store ptr %call, ptr %fd, align 8, !dbg !1825
  %1 = load ptr, ptr %fd, align 8, !dbg !1826
  %tobool1 = icmp ne ptr %1, null, !dbg !1826
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1828

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1829
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1829

if.end3:                                          ; preds = %if.end
  %call4 = call noalias ptr @malloc(i64 noundef 4096) #13, !dbg !1830
  store ptr %call4, ptr %read_buf, align 8, !dbg !1831
  %2 = load ptr, ptr %read_buf, align 8, !dbg !1832
  %tobool5 = icmp ne ptr %2, null, !dbg !1832
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !1834

if.then6:                                         ; preds = %if.end3
  store i32 6, ptr %ret, align 4, !dbg !1835
  br label %err1, !dbg !1837

if.end7:                                          ; preds = %if.end3
  %3 = load ptr, ptr %read_buf, align 8, !dbg !1838
  %4 = load ptr, ptr %fd, align 8, !dbg !1839
  %call8 = call i64 @fread(ptr noundef %3, i64 noundef 1, i64 noundef 4096, ptr noundef %4), !dbg !1840
  %conv = trunc i64 %call8 to i32, !dbg !1840
  store i32 %conv, ptr %read_size, align 4, !dbg !1841
  %5 = load i32, ptr %read_size, align 4, !dbg !1842
  %cmp = icmp sle i32 %5, 0, !dbg !1844
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !1845

if.then10:                                        ; preds = %if.end7
  store i32 1, ptr %ret, align 4, !dbg !1846
  br label %err2, !dbg !1848

if.end11:                                         ; preds = %if.end7
  %6 = load i32, ptr %read_size, align 4, !dbg !1849
  %cmp12 = icmp sge i32 %6, 4096, !dbg !1851
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !1852

if.then14:                                        ; preds = %if.end11
  store i32 4095, ptr %read_size, align 4, !dbg !1853
  br label %if.end15, !dbg !1854

if.end15:                                         ; preds = %if.then14, %if.end11
  %7 = load ptr, ptr %read_buf, align 8, !dbg !1855
  %8 = load i32, ptr %read_size, align 4, !dbg !1856
  %idxprom = sext i32 %8 to i64, !dbg !1855
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 %idxprom, !dbg !1855
  store i8 0, ptr %arrayidx, align 1, !dbg !1857
  store i32 0, ptr %prog, align 4, !dbg !1858
  %9 = load ptr, ptr %read_buf, align 8, !dbg !1859
  store ptr %9, ptr %p, align 8, !dbg !1860
  br label %while.cond, !dbg !1861

while.cond:                                       ; preds = %if.end41, %if.end15
  %10 = load i32, ptr %prog, align 4, !dbg !1862
  %11 = load ptr, ptr %p, align 8, !dbg !1863
  %idx.ext = zext i32 %10 to i64, !dbg !1863
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext, !dbg !1863
  store ptr %add.ptr, ptr %p, align 8, !dbg !1863
  %arraydecay = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !1864
  %call16 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %add.ptr, ptr noundef @.str.11, ptr noundef %arraydecay, ptr noundef %prop_val, ptr noundef %prog) #10, !dbg !1865
  %cmp17 = icmp eq i32 %call16, 2, !dbg !1866
  br i1 %cmp17, label %while.body, label %while.end, !dbg !1861

while.body:                                       ; preds = %while.cond
  %arraydecay19 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !1867
  %call20 = call i32 @strcmp(ptr noundef %arraydecay19, ptr noundef @.str.12) #14, !dbg !1870
  %cmp21 = icmp eq i32 %call20, 0, !dbg !1871
  br i1 %cmp21, label %if.then23, label %if.else25, !dbg !1872

if.then23:                                        ; preds = %while.body
  %12 = load i64, ptr %prop_val, align 8, !dbg !1873
  %conv24 = trunc i64 %12 to i32, !dbg !1874
  %13 = load ptr, ptr %props.addr, align 8, !dbg !1875
  %PlatformOem = getelementptr inbounds %struct._HsaSystemProperties, ptr %13, i32 0, i32 1, !dbg !1876
  store i32 %conv24, ptr %PlatformOem, align 4, !dbg !1877
  br label %if.end41, !dbg !1875

if.else25:                                        ; preds = %while.body
  %arraydecay26 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !1878
  %call27 = call i32 @strcmp(ptr noundef %arraydecay26, ptr noundef @.str.13) #14, !dbg !1880
  %cmp28 = icmp eq i32 %call27, 0, !dbg !1881
  br i1 %cmp28, label %if.then30, label %if.else32, !dbg !1882

if.then30:                                        ; preds = %if.else25
  %14 = load i64, ptr %prop_val, align 8, !dbg !1883
  %conv31 = trunc i64 %14 to i32, !dbg !1884
  %15 = load ptr, ptr %props.addr, align 8, !dbg !1885
  %PlatformId = getelementptr inbounds %struct._HsaSystemProperties, ptr %15, i32 0, i32 2, !dbg !1886
  store i32 %conv31, ptr %PlatformId, align 4, !dbg !1887
  br label %if.end40, !dbg !1885

if.else32:                                        ; preds = %if.else25
  %arraydecay33 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !1888
  %call34 = call i32 @strcmp(ptr noundef %arraydecay33, ptr noundef @.str.14) #14, !dbg !1890
  %cmp35 = icmp eq i32 %call34, 0, !dbg !1891
  br i1 %cmp35, label %if.then37, label %if.end39, !dbg !1892

if.then37:                                        ; preds = %if.else32
  %16 = load i64, ptr %prop_val, align 8, !dbg !1893
  %conv38 = trunc i64 %16 to i32, !dbg !1894
  %17 = load ptr, ptr %props.addr, align 8, !dbg !1895
  %PlatformRev = getelementptr inbounds %struct._HsaSystemProperties, ptr %17, i32 0, i32 3, !dbg !1896
  store i32 %conv38, ptr %PlatformRev, align 4, !dbg !1897
  br label %if.end39, !dbg !1895

if.end39:                                         ; preds = %if.then37, %if.else32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then30
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then23
  br label %while.cond, !dbg !1861, !llvm.loop !1898

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %node_count, align 4, !dbg !1900
  %call42 = call ptr @opendir(ptr noundef @.str.15), !dbg !1901
  store ptr %call42, ptr %dirp, align 8, !dbg !1902
  %18 = load ptr, ptr %dirp, align 8, !dbg !1903
  %tobool43 = icmp ne ptr %18, null, !dbg !1903
  br i1 %tobool43, label %if.then44, label %if.end63, !dbg !1905

if.then44:                                        ; preds = %while.end
  br label %while.cond45, !dbg !1906

while.cond45:                                     ; preds = %if.end60, %if.then59, %if.then44
  %19 = load ptr, ptr %dirp, align 8, !dbg !1908
  %call46 = call ptr @readdir(ptr noundef %19), !dbg !1909
  store ptr %call46, ptr %dir, align 8, !dbg !1910
  %cmp47 = icmp ne ptr %call46, null, !dbg !1911
  br i1 %cmp47, label %while.body49, label %while.end61, !dbg !1906

while.body49:                                     ; preds = %while.cond45
  %20 = load ptr, ptr %dir, align 8, !dbg !1912
  %d_name = getelementptr inbounds %struct.dirent, ptr %20, i32 0, i32 4, !dbg !1915
  %arraydecay50 = getelementptr inbounds [256 x i8], ptr %d_name, i64 0, i64 0, !dbg !1912
  %call51 = call i32 @strcmp(ptr noundef %arraydecay50, ptr noundef @.str.16) #14, !dbg !1916
  %cmp52 = icmp eq i32 %call51, 0, !dbg !1917
  br i1 %cmp52, label %if.then59, label %lor.lhs.false, !dbg !1918

lor.lhs.false:                                    ; preds = %while.body49
  %21 = load ptr, ptr %dir, align 8, !dbg !1919
  %d_name54 = getelementptr inbounds %struct.dirent, ptr %21, i32 0, i32 4, !dbg !1920
  %arraydecay55 = getelementptr inbounds [256 x i8], ptr %d_name54, i64 0, i64 0, !dbg !1919
  %call56 = call i32 @strcmp(ptr noundef %arraydecay55, ptr noundef @.str.17) #14, !dbg !1921
  %cmp57 = icmp eq i32 %call56, 0, !dbg !1922
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !1923

if.then59:                                        ; preds = %lor.lhs.false, %while.body49
  br label %while.cond45, !dbg !1924, !llvm.loop !1925

if.end60:                                         ; preds = %lor.lhs.false
  %22 = load i32, ptr %node_count, align 4, !dbg !1927
  %inc = add i32 %22, 1, !dbg !1927
  store i32 %inc, ptr %node_count, align 4, !dbg !1927
  br label %while.cond45, !dbg !1906, !llvm.loop !1925

while.end61:                                      ; preds = %while.cond45
  %23 = load ptr, ptr %dirp, align 8, !dbg !1928
  %call62 = call i32 @closedir(ptr noundef %23), !dbg !1929
  br label %if.end63, !dbg !1930

if.end63:                                         ; preds = %while.end61, %while.end
  %24 = load i32, ptr %node_count, align 4, !dbg !1931
  %25 = load ptr, ptr %props.addr, align 8, !dbg !1932
  %NumNodes = getelementptr inbounds %struct._HsaSystemProperties, ptr %25, i32 0, i32 0, !dbg !1933
  store i32 %24, ptr %NumNodes, align 4, !dbg !1934
  br label %err2, !dbg !1932

err2:                                             ; preds = %if.end63, %if.then10
  tail call void @llvm.dbg.label(metadata !1797), !dbg !1935
  %26 = load ptr, ptr %read_buf, align 8, !dbg !1936
  call void @free(ptr noundef %26) #10, !dbg !1937
  br label %err1, !dbg !1937

err1:                                             ; preds = %err2, %if.then6
  tail call void @llvm.dbg.label(metadata !1798), !dbg !1938
  %27 = load ptr, ptr %fd, align 8, !dbg !1939
  %call64 = call i32 @fclose(ptr noundef %27), !dbg !1940
  %28 = load i32, ptr %ret, align 4, !dbg !1941
  store i32 %28, ptr %retval, align 4, !dbg !1942
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1942

cleanup:                                          ; preds = %err1, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !1943
  call void @llvm.lifetime.end.p0(i64 4, ptr %read_size) #10, !dbg !1943
  call void @llvm.lifetime.end.p0(i64 8, ptr %dir) #10, !dbg !1943
  call void @llvm.lifetime.end.p0(i64 4, ptr %prog) #10, !dbg !1943
  call void @llvm.lifetime.end.p0(i64 4, ptr %node_count) #10, !dbg !1943
  call void @llvm.lifetime.end.p0(i64 8, ptr %prop_val) #10, !dbg !1943
  call void @llvm.lifetime.end.p0(i64 256, ptr %prop_name) #10, !dbg !1943
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !1943
  call void @llvm.lifetime.end.p0(i64 8, ptr %read_buf) #10, !dbg !1943
  call void @llvm.lifetime.end.p0(i64 8, ptr %dirp) #10, !dbg !1943
  call void @llvm.lifetime.end.p0(i64 8, ptr %fd) #10, !dbg !1943
  %29 = load i32, ptr %retval, align 4, !dbg !1943
  ret i32 %29, !dbg !1943
}

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !1944 noalias ptr @calloc(i64 noundef, i64 noundef) #6

; Function Attrs: nounwind uwtable
define internal i32 @topology_sysfs_get_node_props(i32 noundef %node_id, ptr noundef %props, ptr noundef %gpu_id) #0 !dbg !1948 {
entry:
  %retval = alloca i32, align 4
  %node_id.addr = alloca i32, align 4
  %props.addr = alloca ptr, align 8
  %gpu_id.addr = alloca ptr, align 8
  %fd = alloca ptr, align 8
  %read_buf = alloca ptr, align 8
  %p = alloca ptr, align 8
  %prop_name = alloca [256 x i8], align 16
  %path = alloca [256 x i8], align 16
  %prop_val = alloca i64, align 8
  %i = alloca i32, align 4
  %prog = alloca i32, align 4
  %stepping = alloca i16, align 2
  %fw_version = alloca i16, align 2
  %read_size = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %node_id, ptr %node_id.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %node_id.addr, metadata !1952, metadata !DIExpression()), !dbg !1969
  store ptr %props, ptr %props.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %props.addr, metadata !1953, metadata !DIExpression()), !dbg !1970
  store ptr %gpu_id, ptr %gpu_id.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %gpu_id.addr, metadata !1954, metadata !DIExpression()), !dbg !1971
  call void @llvm.lifetime.start.p0(i64 8, ptr %fd) #10, !dbg !1972
  tail call void @llvm.dbg.declare(metadata ptr %fd, metadata !1955, metadata !DIExpression()), !dbg !1973
  call void @llvm.lifetime.start.p0(i64 8, ptr %read_buf) #10, !dbg !1974
  tail call void @llvm.dbg.declare(metadata ptr %read_buf, metadata !1956, metadata !DIExpression()), !dbg !1975
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !1974
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !1957, metadata !DIExpression()), !dbg !1976
  call void @llvm.lifetime.start.p0(i64 256, ptr %prop_name) #10, !dbg !1977
  tail call void @llvm.dbg.declare(metadata ptr %prop_name, metadata !1958, metadata !DIExpression()), !dbg !1978
  call void @llvm.lifetime.start.p0(i64 256, ptr %path) #10, !dbg !1979
  tail call void @llvm.dbg.declare(metadata ptr %path, metadata !1959, metadata !DIExpression()), !dbg !1980
  call void @llvm.lifetime.start.p0(i64 8, ptr %prop_val) #10, !dbg !1981
  tail call void @llvm.dbg.declare(metadata ptr %prop_val, metadata !1960, metadata !DIExpression()), !dbg !1982
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !1983
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1961, metadata !DIExpression()), !dbg !1984
  call void @llvm.lifetime.start.p0(i64 4, ptr %prog) #10, !dbg !1983
  tail call void @llvm.dbg.declare(metadata ptr %prog, metadata !1962, metadata !DIExpression()), !dbg !1985
  call void @llvm.lifetime.start.p0(i64 2, ptr %stepping) #10, !dbg !1986
  tail call void @llvm.dbg.declare(metadata ptr %stepping, metadata !1963, metadata !DIExpression()), !dbg !1987
  store i16 0, ptr %stepping, align 2, !dbg !1987
  call void @llvm.lifetime.start.p0(i64 2, ptr %fw_version) #10, !dbg !1986
  tail call void @llvm.dbg.declare(metadata ptr %fw_version, metadata !1964, metadata !DIExpression()), !dbg !1988
  store i16 0, ptr %fw_version, align 2, !dbg !1988
  call void @llvm.lifetime.start.p0(i64 4, ptr %read_size) #10, !dbg !1989
  tail call void @llvm.dbg.declare(metadata ptr %read_size, metadata !1965, metadata !DIExpression()), !dbg !1990
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !1991
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1966, metadata !DIExpression()), !dbg !1992
  store i32 0, ptr %ret, align 4, !dbg !1992
  %0 = load ptr, ptr %props.addr, align 8, !dbg !1993
  %tobool = icmp ne ptr %0, null, !dbg !1993
  br i1 %tobool, label %if.then, label %if.else, !dbg !1996

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !1996

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.9, ptr noundef @.str.1, i32 noundef 201, ptr noundef @__PRETTY_FUNCTION__.topology_sysfs_get_node_props) #11, !dbg !1993
  unreachable, !dbg !1993

if.end:                                           ; preds = %if.then
  %1 = load ptr, ptr %gpu_id.addr, align 8, !dbg !1997
  %tobool1 = icmp ne ptr %1, null, !dbg !1997
  br i1 %tobool1, label %if.then2, label %if.else3, !dbg !2000

if.then2:                                         ; preds = %if.end
  br label %if.end4, !dbg !2000

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.18, ptr noundef @.str.1, i32 noundef 202, ptr noundef @__PRETTY_FUNCTION__.topology_sysfs_get_node_props) #11, !dbg !1997
  unreachable, !dbg !1997

if.end4:                                          ; preds = %if.then2
  %2 = load i32, ptr %node_id.addr, align 4, !dbg !2001
  %3 = load ptr, ptr %gpu_id.addr, align 8, !dbg !2002
  %call = call i32 @topology_sysfs_get_gpu_id(i32 noundef %2, ptr noundef %3), !dbg !2003
  store i32 %call, ptr %ret, align 4, !dbg !2004
  %arraydecay = getelementptr inbounds [256 x i8], ptr %path, i64 0, i64 0, !dbg !2005
  %4 = load i32, ptr %node_id.addr, align 4, !dbg !2006
  %call5 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 256, ptr noundef @.str.19, ptr noundef @.str.15, i32 noundef %4) #10, !dbg !2007
  %arraydecay6 = getelementptr inbounds [256 x i8], ptr %path, i64 0, i64 0, !dbg !2008
  %call7 = call noalias ptr @fopen(ptr noundef %arraydecay6, ptr noundef @.str.7), !dbg !2009
  store ptr %call7, ptr %fd, align 8, !dbg !2010
  %5 = load ptr, ptr %fd, align 8, !dbg !2011
  %tobool8 = icmp ne ptr %5, null, !dbg !2011
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !2013

if.then9:                                         ; preds = %if.end4
  store i32 1, ptr %retval, align 4, !dbg !2014
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2014

if.end10:                                         ; preds = %if.end4
  %call11 = call noalias ptr @malloc(i64 noundef 4096) #13, !dbg !2015
  store ptr %call11, ptr %read_buf, align 8, !dbg !2016
  %6 = load ptr, ptr %read_buf, align 8, !dbg !2017
  %tobool12 = icmp ne ptr %6, null, !dbg !2017
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !2019

if.then13:                                        ; preds = %if.end10
  store i32 6, ptr %ret, align 4, !dbg !2020
  br label %err1, !dbg !2022

if.end14:                                         ; preds = %if.end10
  %7 = load ptr, ptr %read_buf, align 8, !dbg !2023
  %8 = load ptr, ptr %fd, align 8, !dbg !2024
  %call15 = call i64 @fread(ptr noundef %7, i64 noundef 1, i64 noundef 4096, ptr noundef %8), !dbg !2025
  %conv = trunc i64 %call15 to i32, !dbg !2025
  store i32 %conv, ptr %read_size, align 4, !dbg !2026
  %9 = load i32, ptr %read_size, align 4, !dbg !2027
  %cmp = icmp sle i32 %9, 0, !dbg !2029
  br i1 %cmp, label %if.then17, label %if.end18, !dbg !2030

if.then17:                                        ; preds = %if.end14
  store i32 1, ptr %ret, align 4, !dbg !2031
  br label %err2, !dbg !2033

if.end18:                                         ; preds = %if.end14
  %10 = load ptr, ptr %read_buf, align 8, !dbg !2034
  %11 = load i32, ptr %read_size, align 4, !dbg !2035
  %conv19 = sext i32 %11 to i64, !dbg !2035
  %call20 = call ptr @memchr(ptr noundef %10, i32 noundef 10, i64 noundef %conv19) #14, !dbg !2036
  store ptr %call20, ptr %p, align 8, !dbg !2037
  %12 = load ptr, ptr %p, align 8, !dbg !2038
  %tobool21 = icmp ne ptr %12, null, !dbg !2038
  br i1 %tobool21, label %lor.lhs.false, label %if.then24, !dbg !2040

lor.lhs.false:                                    ; preds = %if.end18
  %13 = load ptr, ptr %p, align 8, !dbg !2041
  %14 = load ptr, ptr %read_buf, align 8, !dbg !2042
  %sub.ptr.lhs.cast = ptrtoint ptr %13 to i64, !dbg !2043
  %sub.ptr.rhs.cast = ptrtoint ptr %14 to i64, !dbg !2043
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2043
  %cmp22 = icmp sgt i64 %sub.ptr.sub, 128, !dbg !2044
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !2045

if.then24:                                        ; preds = %lor.lhs.false, %if.end18
  store i32 1, ptr %ret, align 4, !dbg !2046
  br label %err2, !dbg !2048

if.end25:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %i, align 4, !dbg !2049
  br label %for.cond, !dbg !2051

for.cond:                                         ; preds = %for.inc, %if.end25
  %15 = load i32, ptr %i, align 4, !dbg !2052
  %cmp26 = icmp ult i32 %15, 128, !dbg !2054
  br i1 %cmp26, label %land.rhs, label %land.end, !dbg !2055

land.rhs:                                         ; preds = %for.cond
  %16 = load ptr, ptr %read_buf, align 8, !dbg !2056
  %17 = load i32, ptr %i, align 4, !dbg !2057
  %idxprom = zext i32 %17 to i64, !dbg !2056
  %arrayidx = getelementptr inbounds i8, ptr %16, i64 %idxprom, !dbg !2056
  %18 = load i8, ptr %arrayidx, align 1, !dbg !2056
  %conv28 = sext i8 %18 to i32, !dbg !2056
  %cmp29 = icmp ne i32 %conv28, 10, !dbg !2058
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %19 = phi i1 [ false, %for.cond ], [ %cmp29, %land.rhs ], !dbg !2059
  br i1 %19, label %for.body, label %for.end, !dbg !2060

for.body:                                         ; preds = %land.end
  %20 = load ptr, ptr %read_buf, align 8, !dbg !2061
  %21 = load i32, ptr %i, align 4, !dbg !2062
  %idxprom31 = zext i32 %21 to i64, !dbg !2061
  %arrayidx32 = getelementptr inbounds i8, ptr %20, i64 %idxprom31, !dbg !2061
  %22 = load i8, ptr %arrayidx32, align 1, !dbg !2061
  %conv33 = sext i8 %22 to i16, !dbg !2061
  %23 = load ptr, ptr %props.addr, align 8, !dbg !2063
  %MarketingName = getelementptr inbounds %struct._HsaNodeProperties, ptr %23, i32 0, i32 24, !dbg !2064
  %24 = load i32, ptr %i, align 4, !dbg !2065
  %idxprom34 = zext i32 %24 to i64, !dbg !2063
  %arrayidx35 = getelementptr inbounds [128 x i16], ptr %MarketingName, i64 0, i64 %idxprom34, !dbg !2063
  store i16 %conv33, ptr %arrayidx35, align 2, !dbg !2066
  br label %for.inc, !dbg !2063

for.inc:                                          ; preds = %for.body
  %25 = load i32, ptr %i, align 4, !dbg !2067
  %inc = add i32 %25, 1, !dbg !2067
  store i32 %inc, ptr %i, align 4, !dbg !2067
  br label %for.cond, !dbg !2068, !llvm.loop !2069

for.end:                                          ; preds = %land.end
  %26 = load ptr, ptr %props.addr, align 8, !dbg !2071
  %MarketingName36 = getelementptr inbounds %struct._HsaNodeProperties, ptr %26, i32 0, i32 24, !dbg !2072
  %27 = load i32, ptr %i, align 4, !dbg !2073
  %idxprom37 = zext i32 %27 to i64, !dbg !2071
  %arrayidx38 = getelementptr inbounds [128 x i16], ptr %MarketingName36, i64 0, i64 %idxprom37, !dbg !2071
  store i16 0, ptr %arrayidx38, align 2, !dbg !2074
  %28 = load ptr, ptr %fd, align 8, !dbg !2075
  %call39 = call i32 @fclose(ptr noundef %28), !dbg !2076
  %arraydecay40 = getelementptr inbounds [256 x i8], ptr %path, i64 0, i64 0, !dbg !2077
  %29 = load i32, ptr %node_id.addr, align 4, !dbg !2078
  %call41 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay40, i64 noundef 256, ptr noundef @.str.20, ptr noundef @.str.15, i32 noundef %29) #10, !dbg !2079
  %arraydecay42 = getelementptr inbounds [256 x i8], ptr %path, i64 0, i64 0, !dbg !2080
  %call43 = call noalias ptr @fopen(ptr noundef %arraydecay42, ptr noundef @.str.7), !dbg !2081
  store ptr %call43, ptr %fd, align 8, !dbg !2082
  %30 = load ptr, ptr %fd, align 8, !dbg !2083
  %tobool44 = icmp ne ptr %30, null, !dbg !2083
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !2085

if.then45:                                        ; preds = %for.end
  %31 = load ptr, ptr %read_buf, align 8, !dbg !2086
  call void @free(ptr noundef %31) #10, !dbg !2088
  store i32 1, ptr %retval, align 4, !dbg !2089
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2089

if.end46:                                         ; preds = %for.end
  %32 = load ptr, ptr %read_buf, align 8, !dbg !2090
  %33 = load ptr, ptr %fd, align 8, !dbg !2091
  %call47 = call i64 @fread(ptr noundef %32, i64 noundef 1, i64 noundef 4096, ptr noundef %33), !dbg !2092
  %conv48 = trunc i64 %call47 to i32, !dbg !2092
  store i32 %conv48, ptr %read_size, align 4, !dbg !2093
  %34 = load i32, ptr %read_size, align 4, !dbg !2094
  %cmp49 = icmp sle i32 %34, 0, !dbg !2096
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !2097

if.then51:                                        ; preds = %if.end46
  store i32 1, ptr %ret, align 4, !dbg !2098
  br label %err2, !dbg !2100

if.end52:                                         ; preds = %if.end46
  %35 = load i32, ptr %read_size, align 4, !dbg !2101
  %cmp53 = icmp sge i32 %35, 4096, !dbg !2103
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !2104

if.then55:                                        ; preds = %if.end52
  store i32 4095, ptr %read_size, align 4, !dbg !2105
  br label %if.end56, !dbg !2106

if.end56:                                         ; preds = %if.then55, %if.end52
  %36 = load ptr, ptr %read_buf, align 8, !dbg !2107
  %37 = load i32, ptr %read_size, align 4, !dbg !2108
  %idxprom57 = sext i32 %37 to i64, !dbg !2107
  %arrayidx58 = getelementptr inbounds i8, ptr %36, i64 %idxprom57, !dbg !2107
  store i8 0, ptr %arrayidx58, align 1, !dbg !2109
  store i32 0, ptr %prog, align 4, !dbg !2110
  %38 = load ptr, ptr %read_buf, align 8, !dbg !2111
  store ptr %38, ptr %p, align 8, !dbg !2112
  br label %while.cond, !dbg !2113

while.cond:                                       ; preds = %if.end256, %if.end56
  %39 = load i32, ptr %prog, align 4, !dbg !2114
  %40 = load ptr, ptr %p, align 8, !dbg !2115
  %idx.ext = zext i32 %39 to i64, !dbg !2115
  %add.ptr = getelementptr inbounds i8, ptr %40, i64 %idx.ext, !dbg !2115
  store ptr %add.ptr, ptr %p, align 8, !dbg !2115
  %arraydecay59 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2116
  %call60 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %add.ptr, ptr noundef @.str.11, ptr noundef %arraydecay59, ptr noundef %prop_val, ptr noundef %prog) #10, !dbg !2117
  %cmp61 = icmp eq i32 %call60, 2, !dbg !2118
  br i1 %cmp61, label %while.body, label %while.end, !dbg !2113

while.body:                                       ; preds = %while.cond
  %arraydecay63 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2119
  %call64 = call i32 @strcmp(ptr noundef %arraydecay63, ptr noundef @.str.21) #14, !dbg !2122
  %cmp65 = icmp eq i32 %call64, 0, !dbg !2123
  br i1 %cmp65, label %if.then67, label %if.else69, !dbg !2124

if.then67:                                        ; preds = %while.body
  %41 = load i64, ptr %prop_val, align 8, !dbg !2125
  %conv68 = trunc i64 %41 to i32, !dbg !2126
  %42 = load ptr, ptr %props.addr, align 8, !dbg !2127
  %NumCPUCores = getelementptr inbounds %struct._HsaNodeProperties, ptr %42, i32 0, i32 0, !dbg !2128
  store i32 %conv68, ptr %NumCPUCores, align 4, !dbg !2129
  br label %if.end256, !dbg !2127

if.else69:                                        ; preds = %while.body
  %arraydecay70 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2130
  %call71 = call i32 @strcmp(ptr noundef %arraydecay70, ptr noundef @.str.22) #14, !dbg !2132
  %cmp72 = icmp eq i32 %call71, 0, !dbg !2133
  br i1 %cmp72, label %if.then74, label %if.else76, !dbg !2134

if.then74:                                        ; preds = %if.else69
  %43 = load i64, ptr %prop_val, align 8, !dbg !2135
  %conv75 = trunc i64 %43 to i32, !dbg !2136
  %44 = load ptr, ptr %props.addr, align 8, !dbg !2137
  %NumFComputeCores = getelementptr inbounds %struct._HsaNodeProperties, ptr %44, i32 0, i32 1, !dbg !2138
  store i32 %conv75, ptr %NumFComputeCores, align 4, !dbg !2139
  br label %if.end255, !dbg !2137

if.else76:                                        ; preds = %if.else69
  %arraydecay77 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2140
  %call78 = call i32 @strcmp(ptr noundef %arraydecay77, ptr noundef @.str.23) #14, !dbg !2142
  %cmp79 = icmp eq i32 %call78, 0, !dbg !2143
  br i1 %cmp79, label %if.then81, label %if.else83, !dbg !2144

if.then81:                                        ; preds = %if.else76
  %45 = load i64, ptr %prop_val, align 8, !dbg !2145
  %conv82 = trunc i64 %45 to i32, !dbg !2146
  %46 = load ptr, ptr %props.addr, align 8, !dbg !2147
  %NumMemoryBanks = getelementptr inbounds %struct._HsaNodeProperties, ptr %46, i32 0, i32 2, !dbg !2148
  store i32 %conv82, ptr %NumMemoryBanks, align 4, !dbg !2149
  br label %if.end254, !dbg !2147

if.else83:                                        ; preds = %if.else76
  %arraydecay84 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2150
  %call85 = call i32 @strcmp(ptr noundef %arraydecay84, ptr noundef @.str.24) #14, !dbg !2152
  %cmp86 = icmp eq i32 %call85, 0, !dbg !2153
  br i1 %cmp86, label %if.then88, label %if.else90, !dbg !2154

if.then88:                                        ; preds = %if.else83
  %47 = load i64, ptr %prop_val, align 8, !dbg !2155
  %conv89 = trunc i64 %47 to i32, !dbg !2156
  %48 = load ptr, ptr %props.addr, align 8, !dbg !2157
  %NumCaches = getelementptr inbounds %struct._HsaNodeProperties, ptr %48, i32 0, i32 3, !dbg !2158
  store i32 %conv89, ptr %NumCaches, align 4, !dbg !2159
  br label %if.end253, !dbg !2157

if.else90:                                        ; preds = %if.else83
  %arraydecay91 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2160
  %call92 = call i32 @strcmp(ptr noundef %arraydecay91, ptr noundef @.str.25) #14, !dbg !2162
  %cmp93 = icmp eq i32 %call92, 0, !dbg !2163
  br i1 %cmp93, label %if.then95, label %if.else97, !dbg !2164

if.then95:                                        ; preds = %if.else90
  %49 = load i64, ptr %prop_val, align 8, !dbg !2165
  %conv96 = trunc i64 %49 to i32, !dbg !2166
  %50 = load ptr, ptr %props.addr, align 8, !dbg !2167
  %NumIOLinks = getelementptr inbounds %struct._HsaNodeProperties, ptr %50, i32 0, i32 4, !dbg !2168
  store i32 %conv96, ptr %NumIOLinks, align 4, !dbg !2169
  br label %if.end252, !dbg !2167

if.else97:                                        ; preds = %if.else90
  %arraydecay98 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2170
  %call99 = call i32 @strcmp(ptr noundef %arraydecay98, ptr noundef @.str.26) #14, !dbg !2172
  %cmp100 = icmp eq i32 %call99, 0, !dbg !2173
  br i1 %cmp100, label %if.then102, label %if.else104, !dbg !2174

if.then102:                                       ; preds = %if.else97
  %51 = load i64, ptr %prop_val, align 8, !dbg !2175
  %conv103 = trunc i64 %51 to i32, !dbg !2176
  %52 = load ptr, ptr %props.addr, align 8, !dbg !2177
  %CComputeIdLo = getelementptr inbounds %struct._HsaNodeProperties, ptr %52, i32 0, i32 5, !dbg !2178
  store i32 %conv103, ptr %CComputeIdLo, align 4, !dbg !2179
  br label %if.end251, !dbg !2177

if.else104:                                       ; preds = %if.else97
  %arraydecay105 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2180
  %call106 = call i32 @strcmp(ptr noundef %arraydecay105, ptr noundef @.str.27) #14, !dbg !2182
  %cmp107 = icmp eq i32 %call106, 0, !dbg !2183
  br i1 %cmp107, label %if.then109, label %if.else111, !dbg !2184

if.then109:                                       ; preds = %if.else104
  %53 = load i64, ptr %prop_val, align 8, !dbg !2185
  %conv110 = trunc i64 %53 to i32, !dbg !2186
  %54 = load ptr, ptr %props.addr, align 8, !dbg !2187
  %FComputeIdLo = getelementptr inbounds %struct._HsaNodeProperties, ptr %54, i32 0, i32 6, !dbg !2188
  store i32 %conv110, ptr %FComputeIdLo, align 4, !dbg !2189
  br label %if.end250, !dbg !2187

if.else111:                                       ; preds = %if.else104
  %arraydecay112 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2190
  %call113 = call i32 @strcmp(ptr noundef %arraydecay112, ptr noundef @.str.28) #14, !dbg !2192
  %cmp114 = icmp eq i32 %call113, 0, !dbg !2193
  br i1 %cmp114, label %if.then116, label %if.else118, !dbg !2194

if.then116:                                       ; preds = %if.else111
  %55 = load i64, ptr %prop_val, align 8, !dbg !2195
  %conv117 = trunc i64 %55 to i32, !dbg !2196
  %56 = load ptr, ptr %props.addr, align 8, !dbg !2197
  %Capability = getelementptr inbounds %struct._HsaNodeProperties, ptr %56, i32 0, i32 7, !dbg !2198
  store i32 %conv117, ptr %Capability, align 4, !dbg !2199
  br label %if.end249, !dbg !2197

if.else118:                                       ; preds = %if.else111
  %arraydecay119 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2200
  %call120 = call i32 @strcmp(ptr noundef %arraydecay119, ptr noundef @.str.29) #14, !dbg !2202
  %cmp121 = icmp eq i32 %call120, 0, !dbg !2203
  br i1 %cmp121, label %if.then123, label %if.else125, !dbg !2204

if.then123:                                       ; preds = %if.else118
  %57 = load i64, ptr %prop_val, align 8, !dbg !2205
  %conv124 = trunc i64 %57 to i32, !dbg !2206
  %58 = load ptr, ptr %props.addr, align 8, !dbg !2207
  %MaxWavesPerSIMD = getelementptr inbounds %struct._HsaNodeProperties, ptr %58, i32 0, i32 8, !dbg !2208
  store i32 %conv124, ptr %MaxWavesPerSIMD, align 4, !dbg !2209
  br label %if.end248, !dbg !2207

if.else125:                                       ; preds = %if.else118
  %arraydecay126 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2210
  %call127 = call i32 @strcmp(ptr noundef %arraydecay126, ptr noundef @.str.30) #14, !dbg !2212
  %cmp128 = icmp eq i32 %call127, 0, !dbg !2213
  br i1 %cmp128, label %if.then130, label %if.else132, !dbg !2214

if.then130:                                       ; preds = %if.else125
  %59 = load i64, ptr %prop_val, align 8, !dbg !2215
  %conv131 = trunc i64 %59 to i32, !dbg !2216
  %60 = load ptr, ptr %props.addr, align 8, !dbg !2217
  %LDSSizeInKB = getelementptr inbounds %struct._HsaNodeProperties, ptr %60, i32 0, i32 9, !dbg !2218
  store i32 %conv131, ptr %LDSSizeInKB, align 4, !dbg !2219
  br label %if.end247, !dbg !2217

if.else132:                                       ; preds = %if.else125
  %arraydecay133 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2220
  %call134 = call i32 @strcmp(ptr noundef %arraydecay133, ptr noundef @.str.31) #14, !dbg !2222
  %cmp135 = icmp eq i32 %call134, 0, !dbg !2223
  br i1 %cmp135, label %if.then137, label %if.else139, !dbg !2224

if.then137:                                       ; preds = %if.else132
  %61 = load i64, ptr %prop_val, align 8, !dbg !2225
  %conv138 = trunc i64 %61 to i32, !dbg !2226
  %62 = load ptr, ptr %props.addr, align 8, !dbg !2227
  %GDSSizeInKB = getelementptr inbounds %struct._HsaNodeProperties, ptr %62, i32 0, i32 10, !dbg !2228
  store i32 %conv138, ptr %GDSSizeInKB, align 4, !dbg !2229
  br label %if.end246, !dbg !2227

if.else139:                                       ; preds = %if.else132
  %arraydecay140 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2230
  %call141 = call i32 @strcmp(ptr noundef %arraydecay140, ptr noundef @.str.32) #14, !dbg !2232
  %cmp142 = icmp eq i32 %call141, 0, !dbg !2233
  br i1 %cmp142, label %if.then144, label %if.else146, !dbg !2234

if.then144:                                       ; preds = %if.else139
  %63 = load i64, ptr %prop_val, align 8, !dbg !2235
  %conv145 = trunc i64 %63 to i32, !dbg !2236
  %64 = load ptr, ptr %props.addr, align 8, !dbg !2237
  %WaveFrontSize = getelementptr inbounds %struct._HsaNodeProperties, ptr %64, i32 0, i32 11, !dbg !2238
  store i32 %conv145, ptr %WaveFrontSize, align 4, !dbg !2239
  br label %if.end245, !dbg !2237

if.else146:                                       ; preds = %if.else139
  %arraydecay147 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2240
  %call148 = call i32 @strcmp(ptr noundef %arraydecay147, ptr noundef @.str.33) #14, !dbg !2242
  %cmp149 = icmp eq i32 %call148, 0, !dbg !2243
  br i1 %cmp149, label %if.then151, label %if.else153, !dbg !2244

if.then151:                                       ; preds = %if.else146
  %65 = load i64, ptr %prop_val, align 8, !dbg !2245
  %conv152 = trunc i64 %65 to i32, !dbg !2246
  %66 = load ptr, ptr %props.addr, align 8, !dbg !2247
  %NumShaderBanks = getelementptr inbounds %struct._HsaNodeProperties, ptr %66, i32 0, i32 12, !dbg !2248
  store i32 %conv152, ptr %NumShaderBanks, align 4, !dbg !2249
  br label %if.end244, !dbg !2247

if.else153:                                       ; preds = %if.else146
  %arraydecay154 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2250
  %call155 = call i32 @strcmp(ptr noundef %arraydecay154, ptr noundef @.str.34) #14, !dbg !2252
  %cmp156 = icmp eq i32 %call155, 0, !dbg !2253
  br i1 %cmp156, label %if.then158, label %if.else160, !dbg !2254

if.then158:                                       ; preds = %if.else153
  %67 = load i64, ptr %prop_val, align 8, !dbg !2255
  %conv159 = trunc i64 %67 to i32, !dbg !2256
  %68 = load ptr, ptr %props.addr, align 8, !dbg !2257
  %NumArrays = getelementptr inbounds %struct._HsaNodeProperties, ptr %68, i32 0, i32 13, !dbg !2258
  store i32 %conv159, ptr %NumArrays, align 4, !dbg !2259
  br label %if.end243, !dbg !2257

if.else160:                                       ; preds = %if.else153
  %arraydecay161 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2260
  %call162 = call i32 @strcmp(ptr noundef %arraydecay161, ptr noundef @.str.35) #14, !dbg !2262
  %cmp163 = icmp eq i32 %call162, 0, !dbg !2263
  br i1 %cmp163, label %if.then165, label %if.else167, !dbg !2264

if.then165:                                       ; preds = %if.else160
  %69 = load i64, ptr %prop_val, align 8, !dbg !2265
  %conv166 = trunc i64 %69 to i32, !dbg !2266
  %70 = load ptr, ptr %props.addr, align 8, !dbg !2267
  %NumCUPerArray = getelementptr inbounds %struct._HsaNodeProperties, ptr %70, i32 0, i32 14, !dbg !2268
  store i32 %conv166, ptr %NumCUPerArray, align 4, !dbg !2269
  br label %if.end242, !dbg !2267

if.else167:                                       ; preds = %if.else160
  %arraydecay168 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2270
  %call169 = call i32 @strcmp(ptr noundef %arraydecay168, ptr noundef @.str.36) #14, !dbg !2272
  %cmp170 = icmp eq i32 %call169, 0, !dbg !2273
  br i1 %cmp170, label %if.then172, label %if.else174, !dbg !2274

if.then172:                                       ; preds = %if.else167
  %71 = load i64, ptr %prop_val, align 8, !dbg !2275
  %conv173 = trunc i64 %71 to i32, !dbg !2276
  %72 = load ptr, ptr %props.addr, align 8, !dbg !2277
  %NumSIMDPerCU = getelementptr inbounds %struct._HsaNodeProperties, ptr %72, i32 0, i32 15, !dbg !2278
  store i32 %conv173, ptr %NumSIMDPerCU, align 4, !dbg !2279
  br label %if.end241, !dbg !2277

if.else174:                                       ; preds = %if.else167
  %arraydecay175 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2280
  %call176 = call i32 @strcmp(ptr noundef %arraydecay175, ptr noundef @.str.37) #14, !dbg !2282
  %cmp177 = icmp eq i32 %call176, 0, !dbg !2283
  br i1 %cmp177, label %if.then179, label %if.else181, !dbg !2284

if.then179:                                       ; preds = %if.else174
  %73 = load i64, ptr %prop_val, align 8, !dbg !2285
  %conv180 = trunc i64 %73 to i32, !dbg !2286
  %74 = load ptr, ptr %props.addr, align 8, !dbg !2287
  %MaxSlotsScratchCU = getelementptr inbounds %struct._HsaNodeProperties, ptr %74, i32 0, i32 16, !dbg !2288
  store i32 %conv180, ptr %MaxSlotsScratchCU, align 4, !dbg !2289
  br label %if.end240, !dbg !2287

if.else181:                                       ; preds = %if.else174
  %arraydecay182 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2290
  %call183 = call i32 @strcmp(ptr noundef %arraydecay182, ptr noundef @.str.38) #14, !dbg !2292
  %cmp184 = icmp eq i32 %call183, 0, !dbg !2293
  br i1 %cmp184, label %if.then186, label %if.else188, !dbg !2294

if.then186:                                       ; preds = %if.else181
  %75 = load i64, ptr %prop_val, align 8, !dbg !2295
  %conv187 = trunc i64 %75 to i16, !dbg !2296
  store i16 %conv187, ptr %fw_version, align 2, !dbg !2297
  br label %if.end239, !dbg !2298

if.else188:                                       ; preds = %if.else181
  %arraydecay189 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2299
  %call190 = call i32 @strcmp(ptr noundef %arraydecay189, ptr noundef @.str.39) #14, !dbg !2301
  %cmp191 = icmp eq i32 %call190, 0, !dbg !2302
  br i1 %cmp191, label %if.then193, label %if.else196, !dbg !2303

if.then193:                                       ; preds = %if.else188
  %76 = load i64, ptr %prop_val, align 8, !dbg !2304
  %conv194 = trunc i64 %76 to i32, !dbg !2305
  %conv195 = trunc i32 %conv194 to i16, !dbg !2305
  %77 = load ptr, ptr %props.addr, align 8, !dbg !2306
  %VendorId = getelementptr inbounds %struct._HsaNodeProperties, ptr %77, i32 0, i32 18, !dbg !2307
  store i16 %conv195, ptr %VendorId, align 4, !dbg !2308
  br label %if.end238, !dbg !2306

if.else196:                                       ; preds = %if.else188
  %arraydecay197 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2309
  %call198 = call i32 @strcmp(ptr noundef %arraydecay197, ptr noundef @.str.40) #14, !dbg !2311
  %cmp199 = icmp eq i32 %call198, 0, !dbg !2312
  br i1 %cmp199, label %if.then201, label %if.else204, !dbg !2313

if.then201:                                       ; preds = %if.else196
  %78 = load i64, ptr %prop_val, align 8, !dbg !2314
  %conv202 = trunc i64 %78 to i32, !dbg !2315
  %conv203 = trunc i32 %conv202 to i16, !dbg !2315
  %79 = load ptr, ptr %props.addr, align 8, !dbg !2316
  %DeviceId = getelementptr inbounds %struct._HsaNodeProperties, ptr %79, i32 0, i32 19, !dbg !2317
  store i16 %conv203, ptr %DeviceId, align 2, !dbg !2318
  br label %if.end237, !dbg !2316

if.else204:                                       ; preds = %if.else196
  %arraydecay205 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2319
  %call206 = call i32 @strcmp(ptr noundef %arraydecay205, ptr noundef @.str.41) #14, !dbg !2321
  %cmp207 = icmp eq i32 %call206, 0, !dbg !2322
  br i1 %cmp207, label %if.then209, label %if.else211, !dbg !2323

if.then209:                                       ; preds = %if.else204
  %80 = load i64, ptr %prop_val, align 8, !dbg !2324
  %conv210 = trunc i64 %80 to i32, !dbg !2325
  %81 = load ptr, ptr %props.addr, align 8, !dbg !2326
  %LocationId = getelementptr inbounds %struct._HsaNodeProperties, ptr %81, i32 0, i32 20, !dbg !2327
  store i32 %conv210, ptr %LocationId, align 4, !dbg !2328
  br label %if.end236, !dbg !2326

if.else211:                                       ; preds = %if.else204
  %arraydecay212 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2329
  %call213 = call i32 @strcmp(ptr noundef %arraydecay212, ptr noundef @.str.42) #14, !dbg !2331
  %cmp214 = icmp eq i32 %call213, 0, !dbg !2332
  br i1 %cmp214, label %if.then216, label %if.else218, !dbg !2333

if.then216:                                       ; preds = %if.else211
  %82 = load i64, ptr %prop_val, align 8, !dbg !2334
  %conv217 = trunc i64 %82 to i32, !dbg !2335
  %83 = load ptr, ptr %props.addr, align 8, !dbg !2336
  %MaxEngineClockMhzFCompute = getelementptr inbounds %struct._HsaNodeProperties, ptr %83, i32 0, i32 22, !dbg !2337
  store i32 %conv217, ptr %MaxEngineClockMhzFCompute, align 4, !dbg !2338
  br label %if.end235, !dbg !2336

if.else218:                                       ; preds = %if.else211
  %arraydecay219 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2339
  %call220 = call i32 @strcmp(ptr noundef %arraydecay219, ptr noundef @.str.43) #14, !dbg !2341
  %cmp221 = icmp eq i32 %call220, 0, !dbg !2342
  br i1 %cmp221, label %if.then223, label %if.else225, !dbg !2343

if.then223:                                       ; preds = %if.else218
  %84 = load i64, ptr %prop_val, align 8, !dbg !2344
  %conv224 = trunc i64 %84 to i32, !dbg !2345
  %85 = load ptr, ptr %props.addr, align 8, !dbg !2346
  %MaxEngineClockMhzCCompute = getelementptr inbounds %struct._HsaNodeProperties, ptr %85, i32 0, i32 23, !dbg !2347
  store i32 %conv224, ptr %MaxEngineClockMhzCCompute, align 4, !dbg !2348
  br label %if.end234, !dbg !2346

if.else225:                                       ; preds = %if.else218
  %arraydecay226 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2349
  %call227 = call i32 @strcmp(ptr noundef %arraydecay226, ptr noundef @.str.44) #14, !dbg !2351
  %cmp228 = icmp eq i32 %call227, 0, !dbg !2352
  br i1 %cmp228, label %if.then230, label %if.end233, !dbg !2353

if.then230:                                       ; preds = %if.else225
  %86 = load i64, ptr %prop_val, align 8, !dbg !2354
  %conv231 = trunc i64 %86 to i32, !dbg !2355
  %conv232 = zext i32 %conv231 to i64, !dbg !2355
  %87 = load ptr, ptr %props.addr, align 8, !dbg !2356
  %LocalMemSize = getelementptr inbounds %struct._HsaNodeProperties, ptr %87, i32 0, i32 21, !dbg !2357
  store i64 %conv232, ptr %LocalMemSize, align 4, !dbg !2358
  br label %if.end233, !dbg !2356

if.end233:                                        ; preds = %if.then230, %if.else225
  br label %if.end234

if.end234:                                        ; preds = %if.end233, %if.then223
  br label %if.end235

if.end235:                                        ; preds = %if.end234, %if.then216
  br label %if.end236

if.end236:                                        ; preds = %if.end235, %if.then209
  br label %if.end237

if.end237:                                        ; preds = %if.end236, %if.then201
  br label %if.end238

if.end238:                                        ; preds = %if.end237, %if.then193
  br label %if.end239

if.end239:                                        ; preds = %if.end238, %if.then186
  br label %if.end240

if.end240:                                        ; preds = %if.end239, %if.then179
  br label %if.end241

if.end241:                                        ; preds = %if.end240, %if.then172
  br label %if.end242

if.end242:                                        ; preds = %if.end241, %if.then165
  br label %if.end243

if.end243:                                        ; preds = %if.end242, %if.then158
  br label %if.end244

if.end244:                                        ; preds = %if.end243, %if.then151
  br label %if.end245

if.end245:                                        ; preds = %if.end244, %if.then144
  br label %if.end246

if.end246:                                        ; preds = %if.end245, %if.then137
  br label %if.end247

if.end247:                                        ; preds = %if.end246, %if.then130
  br label %if.end248

if.end248:                                        ; preds = %if.end247, %if.then123
  br label %if.end249

if.end249:                                        ; preds = %if.end248, %if.then116
  br label %if.end250

if.end250:                                        ; preds = %if.end249, %if.then109
  br label %if.end251

if.end251:                                        ; preds = %if.end250, %if.then102
  br label %if.end252

if.end252:                                        ; preds = %if.end251, %if.then95
  br label %if.end253

if.end253:                                        ; preds = %if.end252, %if.then88
  br label %if.end254

if.end254:                                        ; preds = %if.end253, %if.then81
  br label %if.end255

if.end255:                                        ; preds = %if.end254, %if.then74
  br label %if.end256

if.end256:                                        ; preds = %if.end255, %if.then67
  br label %while.cond, !dbg !2113, !llvm.loop !2359

while.end:                                        ; preds = %while.cond
  %call257 = call i32 @get_cpu_stepping(ptr noundef %stepping), !dbg !2361
  %88 = load i16, ptr %stepping, align 2, !dbg !2362
  %conv258 = zext i16 %88 to i32, !dbg !2362
  %shl = shl i32 %conv258, 16, !dbg !2363
  %89 = load i16, ptr %fw_version, align 2, !dbg !2364
  %conv259 = zext i16 %89 to i32, !dbg !2364
  %or = or i32 %shl, %conv259, !dbg !2365
  %90 = load ptr, ptr %props.addr, align 8, !dbg !2366
  %EngineId = getelementptr inbounds %struct._HsaNodeProperties, ptr %90, i32 0, i32 17, !dbg !2367
  store i32 %or, ptr %EngineId, align 4, !dbg !2368
  br label %err2, !dbg !2366

err2:                                             ; preds = %while.end, %if.then51, %if.then24, %if.then17
  tail call void @llvm.dbg.label(metadata !1967), !dbg !2369
  %91 = load ptr, ptr %read_buf, align 8, !dbg !2370
  call void @free(ptr noundef %91) #10, !dbg !2371
  br label %err1, !dbg !2371

err1:                                             ; preds = %err2, %if.then13
  tail call void @llvm.dbg.label(metadata !1968), !dbg !2372
  %92 = load ptr, ptr %fd, align 8, !dbg !2373
  %call260 = call i32 @fclose(ptr noundef %92), !dbg !2374
  %93 = load i32, ptr %ret, align 4, !dbg !2375
  store i32 %93, ptr %retval, align 4, !dbg !2376
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2376

cleanup:                                          ; preds = %err1, %if.then45, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !2377
  call void @llvm.lifetime.end.p0(i64 4, ptr %read_size) #10, !dbg !2377
  call void @llvm.lifetime.end.p0(i64 2, ptr %fw_version) #10, !dbg !2377
  call void @llvm.lifetime.end.p0(i64 2, ptr %stepping) #10, !dbg !2377
  call void @llvm.lifetime.end.p0(i64 4, ptr %prog) #10, !dbg !2377
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !2377
  call void @llvm.lifetime.end.p0(i64 8, ptr %prop_val) #10, !dbg !2377
  call void @llvm.lifetime.end.p0(i64 256, ptr %path) #10, !dbg !2377
  call void @llvm.lifetime.end.p0(i64 256, ptr %prop_name) #10, !dbg !2377
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !2377
  call void @llvm.lifetime.end.p0(i64 8, ptr %read_buf) #10, !dbg !2377
  call void @llvm.lifetime.end.p0(i64 8, ptr %fd) #10, !dbg !2377
  %94 = load i32, ptr %retval, align 4, !dbg !2377
  ret i32 %94, !dbg !2377
}

; Function Attrs: nounwind uwtable
define internal void @free_node(ptr noundef %n) #0 !dbg !2378 {
entry:
  %n.addr = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2382, metadata !DIExpression()), !dbg !2383
  %0 = load ptr, ptr %n.addr, align 8, !dbg !2384
  %tobool = icmp ne ptr %0, null, !dbg !2384
  br i1 %tobool, label %if.then, label %if.else, !dbg !2387

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !2387

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.49, ptr noundef @.str.1, i32 noundef 60, ptr noundef @__PRETTY_FUNCTION__.free_node) #11, !dbg !2384
  unreachable, !dbg !2384

if.end:                                           ; preds = %if.then
  %1 = load ptr, ptr %n.addr, align 8, !dbg !2388
  %cmp = icmp eq ptr %1, null, !dbg !2390
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2391

if.then1:                                         ; preds = %if.end
  br label %if.end14, !dbg !2392

if.end2:                                          ; preds = %if.end
  %2 = load ptr, ptr %n.addr, align 8, !dbg !2393
  %mem = getelementptr inbounds %struct.node_t, ptr %2, i32 0, i32 3, !dbg !2395
  %3 = load ptr, ptr %mem, align 8, !dbg !2395
  %tobool3 = icmp ne ptr %3, null, !dbg !2396
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !2397

if.then4:                                         ; preds = %if.end2
  %4 = load ptr, ptr %n.addr, align 8, !dbg !2398
  %mem5 = getelementptr inbounds %struct.node_t, ptr %4, i32 0, i32 3, !dbg !2399
  %5 = load ptr, ptr %mem5, align 8, !dbg !2399
  call void @free(ptr noundef %5) #10, !dbg !2400
  br label %if.end6, !dbg !2400

if.end6:                                          ; preds = %if.then4, %if.end2
  %6 = load ptr, ptr %n.addr, align 8, !dbg !2401
  %cache = getelementptr inbounds %struct.node_t, ptr %6, i32 0, i32 4, !dbg !2403
  %7 = load ptr, ptr %cache, align 8, !dbg !2403
  %tobool7 = icmp ne ptr %7, null, !dbg !2404
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !2405

if.then8:                                         ; preds = %if.end6
  %8 = load ptr, ptr %n.addr, align 8, !dbg !2406
  %cache9 = getelementptr inbounds %struct.node_t, ptr %8, i32 0, i32 4, !dbg !2407
  %9 = load ptr, ptr %cache9, align 8, !dbg !2407
  call void @free(ptr noundef %9) #10, !dbg !2408
  br label %if.end10, !dbg !2408

if.end10:                                         ; preds = %if.then8, %if.end6
  %10 = load ptr, ptr %n.addr, align 8, !dbg !2409
  %link = getelementptr inbounds %struct.node_t, ptr %10, i32 0, i32 5, !dbg !2411
  %11 = load ptr, ptr %link, align 8, !dbg !2411
  %tobool11 = icmp ne ptr %11, null, !dbg !2412
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !2413

if.then12:                                        ; preds = %if.end10
  %12 = load ptr, ptr %n.addr, align 8, !dbg !2414
  %link13 = getelementptr inbounds %struct.node_t, ptr %12, i32 0, i32 5, !dbg !2415
  %13 = load ptr, ptr %link13, align 8, !dbg !2415
  call void @free(ptr noundef %13) #10, !dbg !2416
  br label %if.end14, !dbg !2416

if.end14:                                         ; preds = %if.then1, %if.then12, %if.end10
  ret void, !dbg !2417
}

; Function Attrs: nounwind
declare !dbg !2418 void @free(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @topology_sysfs_get_mem_props(i32 noundef %node_id, i32 noundef %mem_id, ptr noundef %props) #0 !dbg !2421 {
entry:
  %retval = alloca i32, align 4
  %node_id.addr = alloca i32, align 4
  %mem_id.addr = alloca i32, align 4
  %props.addr = alloca ptr, align 8
  %fd = alloca ptr, align 8
  %read_buf = alloca ptr, align 8
  %p = alloca ptr, align 8
  %prop_name = alloca [256 x i8], align 16
  %path = alloca [256 x i8], align 16
  %prop_val = alloca i64, align 8
  %prog = alloca i32, align 4
  %read_size = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %node_id, ptr %node_id.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %node_id.addr, metadata !2425, metadata !DIExpression()), !dbg !2439
  store i32 %mem_id, ptr %mem_id.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %mem_id.addr, metadata !2426, metadata !DIExpression()), !dbg !2440
  store ptr %props, ptr %props.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %props.addr, metadata !2427, metadata !DIExpression()), !dbg !2441
  call void @llvm.lifetime.start.p0(i64 8, ptr %fd) #10, !dbg !2442
  tail call void @llvm.dbg.declare(metadata ptr %fd, metadata !2428, metadata !DIExpression()), !dbg !2443
  call void @llvm.lifetime.start.p0(i64 8, ptr %read_buf) #10, !dbg !2444
  tail call void @llvm.dbg.declare(metadata ptr %read_buf, metadata !2429, metadata !DIExpression()), !dbg !2445
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !2444
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !2430, metadata !DIExpression()), !dbg !2446
  call void @llvm.lifetime.start.p0(i64 256, ptr %prop_name) #10, !dbg !2447
  tail call void @llvm.dbg.declare(metadata ptr %prop_name, metadata !2431, metadata !DIExpression()), !dbg !2448
  call void @llvm.lifetime.start.p0(i64 256, ptr %path) #10, !dbg !2449
  tail call void @llvm.dbg.declare(metadata ptr %path, metadata !2432, metadata !DIExpression()), !dbg !2450
  call void @llvm.lifetime.start.p0(i64 8, ptr %prop_val) #10, !dbg !2451
  tail call void @llvm.dbg.declare(metadata ptr %prop_val, metadata !2433, metadata !DIExpression()), !dbg !2452
  call void @llvm.lifetime.start.p0(i64 4, ptr %prog) #10, !dbg !2453
  tail call void @llvm.dbg.declare(metadata ptr %prog, metadata !2434, metadata !DIExpression()), !dbg !2454
  call void @llvm.lifetime.start.p0(i64 4, ptr %read_size) #10, !dbg !2455
  tail call void @llvm.dbg.declare(metadata ptr %read_size, metadata !2435, metadata !DIExpression()), !dbg !2456
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !2457
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !2436, metadata !DIExpression()), !dbg !2458
  store i32 0, ptr %ret, align 4, !dbg !2458
  %0 = load ptr, ptr %props.addr, align 8, !dbg !2459
  %tobool = icmp ne ptr %0, null, !dbg !2459
  br i1 %tobool, label %if.then, label %if.else, !dbg !2462

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !2462

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.9, ptr noundef @.str.1, i32 noundef 333, ptr noundef @__PRETTY_FUNCTION__.topology_sysfs_get_mem_props) #11, !dbg !2459
  unreachable, !dbg !2459

if.end:                                           ; preds = %if.then
  %arraydecay = getelementptr inbounds [256 x i8], ptr %path, i64 0, i64 0, !dbg !2463
  %1 = load i32, ptr %node_id.addr, align 4, !dbg !2464
  %2 = load i32, ptr %mem_id.addr, align 4, !dbg !2465
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 256, ptr noundef @.str.50, ptr noundef @.str.15, i32 noundef %1, i32 noundef %2) #10, !dbg !2466
  %arraydecay1 = getelementptr inbounds [256 x i8], ptr %path, i64 0, i64 0, !dbg !2467
  %call2 = call noalias ptr @fopen(ptr noundef %arraydecay1, ptr noundef @.str.7), !dbg !2468
  store ptr %call2, ptr %fd, align 8, !dbg !2469
  %3 = load ptr, ptr %fd, align 8, !dbg !2470
  %tobool3 = icmp ne ptr %3, null, !dbg !2470
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !2472

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2473
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2473

if.end5:                                          ; preds = %if.end
  %call6 = call noalias ptr @malloc(i64 noundef 4096) #13, !dbg !2475
  store ptr %call6, ptr %read_buf, align 8, !dbg !2476
  %4 = load ptr, ptr %read_buf, align 8, !dbg !2477
  %tobool7 = icmp ne ptr %4, null, !dbg !2477
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !2479

if.then8:                                         ; preds = %if.end5
  store i32 6, ptr %ret, align 4, !dbg !2480
  br label %err1, !dbg !2482

if.end9:                                          ; preds = %if.end5
  %5 = load ptr, ptr %read_buf, align 8, !dbg !2483
  %6 = load ptr, ptr %fd, align 8, !dbg !2484
  %call10 = call i64 @fread(ptr noundef %5, i64 noundef 1, i64 noundef 4096, ptr noundef %6), !dbg !2485
  %conv = trunc i64 %call10 to i32, !dbg !2485
  store i32 %conv, ptr %read_size, align 4, !dbg !2486
  %7 = load i32, ptr %read_size, align 4, !dbg !2487
  %cmp = icmp sle i32 %7, 0, !dbg !2489
  br i1 %cmp, label %if.then12, label %if.end13, !dbg !2490

if.then12:                                        ; preds = %if.end9
  store i32 1, ptr %ret, align 4, !dbg !2491
  br label %err2, !dbg !2493

if.end13:                                         ; preds = %if.end9
  %8 = load i32, ptr %read_size, align 4, !dbg !2494
  %cmp14 = icmp sge i32 %8, 4096, !dbg !2496
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !2497

if.then16:                                        ; preds = %if.end13
  store i32 4095, ptr %read_size, align 4, !dbg !2498
  br label %if.end17, !dbg !2499

if.end17:                                         ; preds = %if.then16, %if.end13
  %9 = load ptr, ptr %read_buf, align 8, !dbg !2500
  %10 = load i32, ptr %read_size, align 4, !dbg !2501
  %idxprom = sext i32 %10 to i64, !dbg !2500
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 %idxprom, !dbg !2500
  store i8 0, ptr %arrayidx, align 1, !dbg !2502
  store i32 0, ptr %prog, align 4, !dbg !2503
  %11 = load ptr, ptr %read_buf, align 8, !dbg !2504
  store ptr %11, ptr %p, align 8, !dbg !2505
  br label %while.cond, !dbg !2506

while.cond:                                       ; preds = %if.end59, %if.end17
  %12 = load i32, ptr %prog, align 4, !dbg !2507
  %13 = load ptr, ptr %p, align 8, !dbg !2508
  %idx.ext = zext i32 %12 to i64, !dbg !2508
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %idx.ext, !dbg !2508
  store ptr %add.ptr, ptr %p, align 8, !dbg !2508
  %arraydecay18 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2509
  %call19 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %add.ptr, ptr noundef @.str.11, ptr noundef %arraydecay18, ptr noundef %prop_val, ptr noundef %prog) #10, !dbg !2510
  %cmp20 = icmp eq i32 %call19, 2, !dbg !2511
  br i1 %cmp20, label %while.body, label %while.end, !dbg !2506

while.body:                                       ; preds = %while.cond
  %arraydecay22 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2512
  %call23 = call i32 @strcmp(ptr noundef %arraydecay22, ptr noundef @.str.51) #14, !dbg !2515
  %cmp24 = icmp eq i32 %call23, 0, !dbg !2516
  br i1 %cmp24, label %if.then26, label %if.else28, !dbg !2517

if.then26:                                        ; preds = %while.body
  %14 = load i64, ptr %prop_val, align 8, !dbg !2518
  %conv27 = trunc i64 %14 to i32, !dbg !2519
  %15 = load ptr, ptr %props.addr, align 8, !dbg !2520
  %HeapType = getelementptr inbounds %struct._HsaMemoryProperties, ptr %15, i32 0, i32 0, !dbg !2521
  store i32 %conv27, ptr %HeapType, align 4, !dbg !2522
  br label %if.end59, !dbg !2520

if.else28:                                        ; preds = %while.body
  %arraydecay29 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2523
  %call30 = call i32 @strcmp(ptr noundef %arraydecay29, ptr noundef @.str.52) #14, !dbg !2525
  %cmp31 = icmp eq i32 %call30, 0, !dbg !2526
  br i1 %cmp31, label %if.then33, label %if.else34, !dbg !2527

if.then33:                                        ; preds = %if.else28
  %16 = load i64, ptr %prop_val, align 8, !dbg !2528
  %17 = load ptr, ptr %props.addr, align 8, !dbg !2529
  %18 = getelementptr inbounds %struct._HsaMemoryProperties, ptr %17, i32 0, i32 1, !dbg !2530
  store i64 %16, ptr %18, align 4, !dbg !2531
  br label %if.end58, !dbg !2529

if.else34:                                        ; preds = %if.else28
  %arraydecay35 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2532
  %call36 = call i32 @strcmp(ptr noundef %arraydecay35, ptr noundef @.str.53) #14, !dbg !2534
  %cmp37 = icmp eq i32 %call36, 0, !dbg !2535
  br i1 %cmp37, label %if.then39, label %if.else41, !dbg !2536

if.then39:                                        ; preds = %if.else34
  %19 = load i64, ptr %prop_val, align 8, !dbg !2537
  %conv40 = trunc i64 %19 to i32, !dbg !2538
  %20 = load ptr, ptr %props.addr, align 8, !dbg !2539
  %Flags = getelementptr inbounds %struct._HsaMemoryProperties, ptr %20, i32 0, i32 2, !dbg !2540
  store i32 %conv40, ptr %Flags, align 4, !dbg !2541
  br label %if.end57, !dbg !2539

if.else41:                                        ; preds = %if.else34
  %arraydecay42 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2542
  %call43 = call i32 @strcmp(ptr noundef %arraydecay42, ptr noundef @.str.54) #14, !dbg !2544
  %cmp44 = icmp eq i32 %call43, 0, !dbg !2545
  br i1 %cmp44, label %if.then46, label %if.else48, !dbg !2546

if.then46:                                        ; preds = %if.else41
  %21 = load i64, ptr %prop_val, align 8, !dbg !2547
  %conv47 = trunc i64 %21 to i32, !dbg !2548
  %22 = load ptr, ptr %props.addr, align 8, !dbg !2549
  %Width = getelementptr inbounds %struct._HsaMemoryProperties, ptr %22, i32 0, i32 3, !dbg !2550
  store i32 %conv47, ptr %Width, align 4, !dbg !2551
  br label %if.end56, !dbg !2549

if.else48:                                        ; preds = %if.else41
  %arraydecay49 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2552
  %call50 = call i32 @strcmp(ptr noundef %arraydecay49, ptr noundef @.str.55) #14, !dbg !2554
  %cmp51 = icmp eq i32 %call50, 0, !dbg !2555
  br i1 %cmp51, label %if.then53, label %if.end55, !dbg !2556

if.then53:                                        ; preds = %if.else48
  %23 = load i64, ptr %prop_val, align 8, !dbg !2557
  %conv54 = trunc i64 %23 to i32, !dbg !2558
  %24 = load ptr, ptr %props.addr, align 8, !dbg !2559
  %MemoryClockMax = getelementptr inbounds %struct._HsaMemoryProperties, ptr %24, i32 0, i32 4, !dbg !2560
  store i32 %conv54, ptr %MemoryClockMax, align 4, !dbg !2561
  br label %if.end55, !dbg !2559

if.end55:                                         ; preds = %if.then53, %if.else48
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then46
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then39
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then33
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then26
  br label %while.cond, !dbg !2506, !llvm.loop !2562

while.end:                                        ; preds = %while.cond
  br label %err2, !dbg !2506

err2:                                             ; preds = %while.end, %if.then12
  tail call void @llvm.dbg.label(metadata !2437), !dbg !2564
  %25 = load ptr, ptr %read_buf, align 8, !dbg !2565
  call void @free(ptr noundef %25) #10, !dbg !2566
  br label %err1, !dbg !2566

err1:                                             ; preds = %err2, %if.then8
  tail call void @llvm.dbg.label(metadata !2438), !dbg !2567
  %26 = load ptr, ptr %fd, align 8, !dbg !2568
  %call60 = call i32 @fclose(ptr noundef %26), !dbg !2569
  %27 = load i32, ptr %ret, align 4, !dbg !2570
  store i32 %27, ptr %retval, align 4, !dbg !2571
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2571

cleanup:                                          ; preds = %err1, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !2572
  call void @llvm.lifetime.end.p0(i64 4, ptr %read_size) #10, !dbg !2572
  call void @llvm.lifetime.end.p0(i64 4, ptr %prog) #10, !dbg !2572
  call void @llvm.lifetime.end.p0(i64 8, ptr %prop_val) #10, !dbg !2572
  call void @llvm.lifetime.end.p0(i64 256, ptr %path) #10, !dbg !2572
  call void @llvm.lifetime.end.p0(i64 256, ptr %prop_name) #10, !dbg !2572
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !2572
  call void @llvm.lifetime.end.p0(i64 8, ptr %read_buf) #10, !dbg !2572
  call void @llvm.lifetime.end.p0(i64 8, ptr %fd) #10, !dbg !2572
  %28 = load i32, ptr %retval, align 4, !dbg !2572
  ret i32 %28, !dbg !2572
}

; Function Attrs: nounwind uwtable
define internal i32 @topology_sysfs_get_cache_props(i32 noundef %node_id, i32 noundef %cache_id, ptr noundef %props) #0 !dbg !2573 {
entry:
  %retval = alloca i32, align 4
  %node_id.addr = alloca i32, align 4
  %cache_id.addr = alloca i32, align 4
  %props.addr = alloca ptr, align 8
  %fd = alloca ptr, align 8
  %read_buf = alloca ptr, align 8
  %p = alloca ptr, align 8
  %prop_name = alloca [256 x i8], align 16
  %path = alloca [256 x i8], align 16
  %prop_val = alloca i64, align 8
  %i = alloca i32, align 4
  %prog = alloca i32, align 4
  %read_size = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %node_id, ptr %node_id.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %node_id.addr, metadata !2577, metadata !DIExpression()), !dbg !2592
  store i32 %cache_id, ptr %cache_id.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %cache_id.addr, metadata !2578, metadata !DIExpression()), !dbg !2593
  store ptr %props, ptr %props.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %props.addr, metadata !2579, metadata !DIExpression()), !dbg !2594
  call void @llvm.lifetime.start.p0(i64 8, ptr %fd) #10, !dbg !2595
  tail call void @llvm.dbg.declare(metadata ptr %fd, metadata !2580, metadata !DIExpression()), !dbg !2596
  call void @llvm.lifetime.start.p0(i64 8, ptr %read_buf) #10, !dbg !2597
  tail call void @llvm.dbg.declare(metadata ptr %read_buf, metadata !2581, metadata !DIExpression()), !dbg !2598
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !2597
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !2582, metadata !DIExpression()), !dbg !2599
  call void @llvm.lifetime.start.p0(i64 256, ptr %prop_name) #10, !dbg !2600
  tail call void @llvm.dbg.declare(metadata ptr %prop_name, metadata !2583, metadata !DIExpression()), !dbg !2601
  call void @llvm.lifetime.start.p0(i64 256, ptr %path) #10, !dbg !2602
  tail call void @llvm.dbg.declare(metadata ptr %path, metadata !2584, metadata !DIExpression()), !dbg !2603
  call void @llvm.lifetime.start.p0(i64 8, ptr %prop_val) #10, !dbg !2604
  tail call void @llvm.dbg.declare(metadata ptr %prop_val, metadata !2585, metadata !DIExpression()), !dbg !2605
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !2606
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2586, metadata !DIExpression()), !dbg !2607
  call void @llvm.lifetime.start.p0(i64 4, ptr %prog) #10, !dbg !2606
  tail call void @llvm.dbg.declare(metadata ptr %prog, metadata !2587, metadata !DIExpression()), !dbg !2608
  call void @llvm.lifetime.start.p0(i64 4, ptr %read_size) #10, !dbg !2609
  tail call void @llvm.dbg.declare(metadata ptr %read_size, metadata !2588, metadata !DIExpression()), !dbg !2610
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !2611
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !2589, metadata !DIExpression()), !dbg !2612
  store i32 0, ptr %ret, align 4, !dbg !2612
  %0 = load ptr, ptr %props.addr, align 8, !dbg !2613
  %tobool = icmp ne ptr %0, null, !dbg !2613
  br i1 %tobool, label %if.then, label %if.else, !dbg !2616

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !2616

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.9, ptr noundef @.str.1, i32 noundef 389, ptr noundef @__PRETTY_FUNCTION__.topology_sysfs_get_cache_props) #11, !dbg !2613
  unreachable, !dbg !2613

if.end:                                           ; preds = %if.then
  %arraydecay = getelementptr inbounds [256 x i8], ptr %path, i64 0, i64 0, !dbg !2617
  %1 = load i32, ptr %node_id.addr, align 4, !dbg !2618
  %2 = load i32, ptr %cache_id.addr, align 4, !dbg !2619
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 256, ptr noundef @.str.56, ptr noundef @.str.15, i32 noundef %1, i32 noundef %2) #10, !dbg !2620
  %arraydecay1 = getelementptr inbounds [256 x i8], ptr %path, i64 0, i64 0, !dbg !2621
  %call2 = call noalias ptr @fopen(ptr noundef %arraydecay1, ptr noundef @.str.7), !dbg !2622
  store ptr %call2, ptr %fd, align 8, !dbg !2623
  %3 = load ptr, ptr %fd, align 8, !dbg !2624
  %tobool3 = icmp ne ptr %3, null, !dbg !2624
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !2626

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2627
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2627

if.end5:                                          ; preds = %if.end
  %call6 = call noalias ptr @malloc(i64 noundef 4096) #13, !dbg !2629
  store ptr %call6, ptr %read_buf, align 8, !dbg !2630
  %4 = load ptr, ptr %read_buf, align 8, !dbg !2631
  %tobool7 = icmp ne ptr %4, null, !dbg !2631
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !2633

if.then8:                                         ; preds = %if.end5
  store i32 6, ptr %ret, align 4, !dbg !2634
  br label %err1, !dbg !2636

if.end9:                                          ; preds = %if.end5
  %5 = load ptr, ptr %read_buf, align 8, !dbg !2637
  %6 = load ptr, ptr %fd, align 8, !dbg !2638
  %call10 = call i64 @fread(ptr noundef %5, i64 noundef 1, i64 noundef 4096, ptr noundef %6), !dbg !2639
  %conv = trunc i64 %call10 to i32, !dbg !2639
  store i32 %conv, ptr %read_size, align 4, !dbg !2640
  %7 = load i32, ptr %read_size, align 4, !dbg !2641
  %cmp = icmp sle i32 %7, 0, !dbg !2643
  br i1 %cmp, label %if.then12, label %if.end13, !dbg !2644

if.then12:                                        ; preds = %if.end9
  store i32 1, ptr %ret, align 4, !dbg !2645
  br label %err2, !dbg !2647

if.end13:                                         ; preds = %if.end9
  %8 = load i32, ptr %read_size, align 4, !dbg !2648
  %cmp14 = icmp sge i32 %8, 4096, !dbg !2650
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !2651

if.then16:                                        ; preds = %if.end13
  store i32 4095, ptr %read_size, align 4, !dbg !2652
  br label %if.end17, !dbg !2653

if.end17:                                         ; preds = %if.then16, %if.end13
  %9 = load ptr, ptr %read_buf, align 8, !dbg !2654
  %10 = load i32, ptr %read_size, align 4, !dbg !2655
  %idxprom = sext i32 %10 to i64, !dbg !2654
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 %idxprom, !dbg !2654
  store i8 0, ptr %arrayidx, align 1, !dbg !2656
  store i32 0, ptr %prog, align 4, !dbg !2657
  %11 = load ptr, ptr %read_buf, align 8, !dbg !2658
  store ptr %11, ptr %p, align 8, !dbg !2659
  br label %while.cond, !dbg !2660

while.cond:                                       ; preds = %if.end91, %if.end17
  %12 = load i32, ptr %prog, align 4, !dbg !2661
  %13 = load ptr, ptr %p, align 8, !dbg !2662
  %idx.ext = zext i32 %12 to i64, !dbg !2662
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %idx.ext, !dbg !2662
  store ptr %add.ptr, ptr %p, align 8, !dbg !2662
  %arraydecay18 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2663
  %call19 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %add.ptr, ptr noundef @.str.11, ptr noundef %arraydecay18, ptr noundef %prop_val, ptr noundef %prog) #10, !dbg !2664
  %cmp20 = icmp eq i32 %call19, 2, !dbg !2665
  br i1 %cmp20, label %while.body, label %while.end, !dbg !2660

while.body:                                       ; preds = %while.cond
  %arraydecay22 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2666
  %call23 = call i32 @strcmp(ptr noundef %arraydecay22, ptr noundef @.str.57) #14, !dbg !2669
  %cmp24 = icmp eq i32 %call23, 0, !dbg !2670
  br i1 %cmp24, label %if.then26, label %if.else28, !dbg !2671

if.then26:                                        ; preds = %while.body
  %14 = load i64, ptr %prop_val, align 8, !dbg !2672
  %conv27 = trunc i64 %14 to i32, !dbg !2673
  %15 = load ptr, ptr %props.addr, align 8, !dbg !2674
  %ProcessorIdLow = getelementptr inbounds %struct._HaCacheProperties, ptr %15, i32 0, i32 0, !dbg !2675
  store i32 %conv27, ptr %ProcessorIdLow, align 4, !dbg !2676
  br label %if.end91, !dbg !2674

if.else28:                                        ; preds = %while.body
  %arraydecay29 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2677
  %call30 = call i32 @strcmp(ptr noundef %arraydecay29, ptr noundef @.str.58) #14, !dbg !2679
  %cmp31 = icmp eq i32 %call30, 0, !dbg !2680
  br i1 %cmp31, label %if.then33, label %if.else35, !dbg !2681

if.then33:                                        ; preds = %if.else28
  %16 = load i64, ptr %prop_val, align 8, !dbg !2682
  %conv34 = trunc i64 %16 to i32, !dbg !2683
  %17 = load ptr, ptr %props.addr, align 8, !dbg !2684
  %CacheLevel = getelementptr inbounds %struct._HaCacheProperties, ptr %17, i32 0, i32 1, !dbg !2685
  store i32 %conv34, ptr %CacheLevel, align 4, !dbg !2686
  br label %if.end90, !dbg !2684

if.else35:                                        ; preds = %if.else28
  %arraydecay36 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2687
  %call37 = call i32 @strcmp(ptr noundef %arraydecay36, ptr noundef @.str.59) #14, !dbg !2689
  %cmp38 = icmp eq i32 %call37, 0, !dbg !2690
  br i1 %cmp38, label %if.then40, label %if.else42, !dbg !2691

if.then40:                                        ; preds = %if.else35
  %18 = load i64, ptr %prop_val, align 8, !dbg !2692
  %conv41 = trunc i64 %18 to i32, !dbg !2693
  %19 = load ptr, ptr %props.addr, align 8, !dbg !2694
  %CacheSize = getelementptr inbounds %struct._HaCacheProperties, ptr %19, i32 0, i32 2, !dbg !2695
  store i32 %conv41, ptr %CacheSize, align 4, !dbg !2696
  br label %if.end89, !dbg !2694

if.else42:                                        ; preds = %if.else35
  %arraydecay43 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2697
  %call44 = call i32 @strcmp(ptr noundef %arraydecay43, ptr noundef @.str.60) #14, !dbg !2699
  %cmp45 = icmp eq i32 %call44, 0, !dbg !2700
  br i1 %cmp45, label %if.then47, label %if.else49, !dbg !2701

if.then47:                                        ; preds = %if.else42
  %20 = load i64, ptr %prop_val, align 8, !dbg !2702
  %conv48 = trunc i64 %20 to i32, !dbg !2703
  %21 = load ptr, ptr %props.addr, align 8, !dbg !2704
  %CacheLineSize = getelementptr inbounds %struct._HaCacheProperties, ptr %21, i32 0, i32 3, !dbg !2705
  store i32 %conv48, ptr %CacheLineSize, align 4, !dbg !2706
  br label %if.end88, !dbg !2704

if.else49:                                        ; preds = %if.else42
  %arraydecay50 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2707
  %call51 = call i32 @strcmp(ptr noundef %arraydecay50, ptr noundef @.str.61) #14, !dbg !2709
  %cmp52 = icmp eq i32 %call51, 0, !dbg !2710
  br i1 %cmp52, label %if.then54, label %if.else56, !dbg !2711

if.then54:                                        ; preds = %if.else49
  %22 = load i64, ptr %prop_val, align 8, !dbg !2712
  %conv55 = trunc i64 %22 to i32, !dbg !2713
  %23 = load ptr, ptr %props.addr, align 8, !dbg !2714
  %CacheLinesPerTag = getelementptr inbounds %struct._HaCacheProperties, ptr %23, i32 0, i32 4, !dbg !2715
  store i32 %conv55, ptr %CacheLinesPerTag, align 4, !dbg !2716
  br label %if.end87, !dbg !2714

if.else56:                                        ; preds = %if.else49
  %arraydecay57 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2717
  %call58 = call i32 @strcmp(ptr noundef %arraydecay57, ptr noundef @.str.62) #14, !dbg !2719
  %cmp59 = icmp eq i32 %call58, 0, !dbg !2720
  br i1 %cmp59, label %if.then61, label %if.else63, !dbg !2721

if.then61:                                        ; preds = %if.else56
  %24 = load i64, ptr %prop_val, align 8, !dbg !2722
  %conv62 = trunc i64 %24 to i32, !dbg !2723
  %25 = load ptr, ptr %props.addr, align 8, !dbg !2724
  %CacheAssociativity = getelementptr inbounds %struct._HaCacheProperties, ptr %25, i32 0, i32 5, !dbg !2725
  store i32 %conv62, ptr %CacheAssociativity, align 4, !dbg !2726
  br label %if.end86, !dbg !2724

if.else63:                                        ; preds = %if.else56
  %arraydecay64 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2727
  %call65 = call i32 @strcmp(ptr noundef %arraydecay64, ptr noundef @.str.63) #14, !dbg !2729
  %cmp66 = icmp eq i32 %call65, 0, !dbg !2730
  br i1 %cmp66, label %if.then68, label %if.else70, !dbg !2731

if.then68:                                        ; preds = %if.else63
  %26 = load i64, ptr %prop_val, align 8, !dbg !2732
  %conv69 = trunc i64 %26 to i32, !dbg !2733
  %27 = load ptr, ptr %props.addr, align 8, !dbg !2734
  %CacheLatency = getelementptr inbounds %struct._HaCacheProperties, ptr %27, i32 0, i32 6, !dbg !2735
  store i32 %conv69, ptr %CacheLatency, align 4, !dbg !2736
  br label %if.end85, !dbg !2734

if.else70:                                        ; preds = %if.else63
  %arraydecay71 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2737
  %call72 = call i32 @strcmp(ptr noundef %arraydecay71, ptr noundef @.str.64) #14, !dbg !2739
  %cmp73 = icmp eq i32 %call72, 0, !dbg !2740
  br i1 %cmp73, label %if.then75, label %if.else77, !dbg !2741

if.then75:                                        ; preds = %if.else70
  %28 = load i64, ptr %prop_val, align 8, !dbg !2742
  %conv76 = trunc i64 %28 to i32, !dbg !2743
  %29 = load ptr, ptr %props.addr, align 8, !dbg !2744
  %CacheType = getelementptr inbounds %struct._HaCacheProperties, ptr %29, i32 0, i32 7, !dbg !2745
  store i32 %conv76, ptr %CacheType, align 4, !dbg !2746
  br label %if.end84, !dbg !2744

if.else77:                                        ; preds = %if.else70
  %arraydecay78 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2747
  %call79 = call i32 @strcmp(ptr noundef %arraydecay78, ptr noundef @.str.65) #14, !dbg !2749
  %cmp80 = icmp eq i32 %call79, 0, !dbg !2750
  br i1 %cmp80, label %if.then82, label %if.end83, !dbg !2751

if.then82:                                        ; preds = %if.else77
  br label %while.end, !dbg !2752

if.end83:                                         ; preds = %if.else77
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then75
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then68
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then61
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then54
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then47
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.then40
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.then33
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then26
  br label %while.cond, !dbg !2660, !llvm.loop !2753

while.end:                                        ; preds = %if.then82, %while.cond
  store i32 0, ptr %prog, align 4, !dbg !2755
  %30 = load ptr, ptr %p, align 8, !dbg !2756
  %call92 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %30, ptr noundef @.str.66, ptr noundef %prog) #10, !dbg !2758
  %cmp93 = icmp eq i32 %call92, 0, !dbg !2759
  br i1 %cmp93, label %land.lhs.true, label %if.end109, !dbg !2760

land.lhs.true:                                    ; preds = %while.end
  %31 = load i32, ptr %prog, align 4, !dbg !2761
  %tobool95 = icmp ne i32 %31, 0, !dbg !2761
  br i1 %tobool95, label %if.then96, label %if.end109, !dbg !2762

if.then96:                                        ; preds = %land.lhs.true
  store i32 0, ptr %i, align 4, !dbg !2763
  br label %while.cond97, !dbg !2765

while.cond97:                                     ; preds = %while.body107, %if.then96
  %32 = load i32, ptr %i, align 4, !dbg !2766
  %cmp98 = icmp ult i32 %32, 256, !dbg !2767
  br i1 %cmp98, label %land.rhs, label %land.end, !dbg !2768

land.rhs:                                         ; preds = %while.cond97
  %33 = load i32, ptr %prog, align 4, !dbg !2769
  %34 = load ptr, ptr %p, align 8, !dbg !2770
  %idx.ext100 = zext i32 %33 to i64, !dbg !2770
  %add.ptr101 = getelementptr inbounds i8, ptr %34, i64 %idx.ext100, !dbg !2770
  store ptr %add.ptr101, ptr %p, align 8, !dbg !2770
  %35 = load ptr, ptr %props.addr, align 8, !dbg !2771
  %SiblingMap = getelementptr inbounds %struct._HaCacheProperties, ptr %35, i32 0, i32 8, !dbg !2772
  %36 = load i32, ptr %i, align 4, !dbg !2773
  %inc = add i32 %36, 1, !dbg !2773
  store i32 %inc, ptr %i, align 4, !dbg !2773
  %idxprom102 = zext i32 %36 to i64, !dbg !2771
  %arrayidx103 = getelementptr inbounds [256 x i32], ptr %SiblingMap, i64 0, i64 %idxprom102, !dbg !2771
  %call104 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %add.ptr101, ptr noundef @.str.67, ptr noundef %arrayidx103, ptr noundef %prog) #10, !dbg !2774
  %cmp105 = icmp eq i32 %call104, 1, !dbg !2775
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond97
  %37 = phi i1 [ false, %while.cond97 ], [ %cmp105, %land.rhs ], !dbg !2776
  br i1 %37, label %while.body107, label %while.end108, !dbg !2765

while.body107:                                    ; preds = %land.end
  br label %while.cond97, !dbg !2765, !llvm.loop !2777

while.end108:                                     ; preds = %land.end
  br label %if.end109, !dbg !2779

if.end109:                                        ; preds = %while.end108, %land.lhs.true, %while.end
  br label %err2, !dbg !2761

err2:                                             ; preds = %if.end109, %if.then12
  tail call void @llvm.dbg.label(metadata !2590), !dbg !2780
  %38 = load ptr, ptr %read_buf, align 8, !dbg !2781
  call void @free(ptr noundef %38) #10, !dbg !2782
  br label %err1, !dbg !2782

err1:                                             ; preds = %err2, %if.then8
  tail call void @llvm.dbg.label(metadata !2591), !dbg !2783
  %39 = load ptr, ptr %fd, align 8, !dbg !2784
  %call110 = call i32 @fclose(ptr noundef %39), !dbg !2785
  %40 = load i32, ptr %ret, align 4, !dbg !2786
  store i32 %40, ptr %retval, align 4, !dbg !2787
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2787

cleanup:                                          ; preds = %err1, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !2788
  call void @llvm.lifetime.end.p0(i64 4, ptr %read_size) #10, !dbg !2788
  call void @llvm.lifetime.end.p0(i64 4, ptr %prog) #10, !dbg !2788
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !2788
  call void @llvm.lifetime.end.p0(i64 8, ptr %prop_val) #10, !dbg !2788
  call void @llvm.lifetime.end.p0(i64 256, ptr %path) #10, !dbg !2788
  call void @llvm.lifetime.end.p0(i64 256, ptr %prop_name) #10, !dbg !2788
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !2788
  call void @llvm.lifetime.end.p0(i64 8, ptr %read_buf) #10, !dbg !2788
  call void @llvm.lifetime.end.p0(i64 8, ptr %fd) #10, !dbg !2788
  %41 = load i32, ptr %retval, align 4, !dbg !2788
  ret i32 %41, !dbg !2788
}

; Function Attrs: nounwind uwtable
define internal i32 @topology_sysfs_get_iolink_props(i32 noundef %node_id, i32 noundef %iolink_id, ptr noundef %props) #0 !dbg !2789 {
entry:
  %retval = alloca i32, align 4
  %node_id.addr = alloca i32, align 4
  %iolink_id.addr = alloca i32, align 4
  %props.addr = alloca ptr, align 8
  %fd = alloca ptr, align 8
  %read_buf = alloca ptr, align 8
  %p = alloca ptr, align 8
  %prop_name = alloca [256 x i8], align 16
  %path = alloca [256 x i8], align 16
  %prop_val = alloca i64, align 8
  %prog = alloca i32, align 4
  %read_size = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %node_id, ptr %node_id.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %node_id.addr, metadata !2793, metadata !DIExpression()), !dbg !2807
  store i32 %iolink_id, ptr %iolink_id.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %iolink_id.addr, metadata !2794, metadata !DIExpression()), !dbg !2808
  store ptr %props, ptr %props.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %props.addr, metadata !2795, metadata !DIExpression()), !dbg !2809
  call void @llvm.lifetime.start.p0(i64 8, ptr %fd) #10, !dbg !2810
  tail call void @llvm.dbg.declare(metadata ptr %fd, metadata !2796, metadata !DIExpression()), !dbg !2811
  call void @llvm.lifetime.start.p0(i64 8, ptr %read_buf) #10, !dbg !2812
  tail call void @llvm.dbg.declare(metadata ptr %read_buf, metadata !2797, metadata !DIExpression()), !dbg !2813
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !2812
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !2798, metadata !DIExpression()), !dbg !2814
  call void @llvm.lifetime.start.p0(i64 256, ptr %prop_name) #10, !dbg !2815
  tail call void @llvm.dbg.declare(metadata ptr %prop_name, metadata !2799, metadata !DIExpression()), !dbg !2816
  call void @llvm.lifetime.start.p0(i64 256, ptr %path) #10, !dbg !2817
  tail call void @llvm.dbg.declare(metadata ptr %path, metadata !2800, metadata !DIExpression()), !dbg !2818
  call void @llvm.lifetime.start.p0(i64 8, ptr %prop_val) #10, !dbg !2819
  tail call void @llvm.dbg.declare(metadata ptr %prop_val, metadata !2801, metadata !DIExpression()), !dbg !2820
  call void @llvm.lifetime.start.p0(i64 4, ptr %prog) #10, !dbg !2821
  tail call void @llvm.dbg.declare(metadata ptr %prog, metadata !2802, metadata !DIExpression()), !dbg !2822
  call void @llvm.lifetime.start.p0(i64 4, ptr %read_size) #10, !dbg !2823
  tail call void @llvm.dbg.declare(metadata ptr %read_size, metadata !2803, metadata !DIExpression()), !dbg !2824
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !2825
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !2804, metadata !DIExpression()), !dbg !2826
  store i32 0, ptr %ret, align 4, !dbg !2826
  %0 = load ptr, ptr %props.addr, align 8, !dbg !2827
  %tobool = icmp ne ptr %0, null, !dbg !2827
  br i1 %tobool, label %if.then, label %if.else, !dbg !2830

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !2830

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.9, ptr noundef @.str.1, i32 noundef 461, ptr noundef @__PRETTY_FUNCTION__.topology_sysfs_get_iolink_props) #11, !dbg !2827
  unreachable, !dbg !2827

if.end:                                           ; preds = %if.then
  %arraydecay = getelementptr inbounds [256 x i8], ptr %path, i64 0, i64 0, !dbg !2831
  %1 = load i32, ptr %node_id.addr, align 4, !dbg !2832
  %2 = load i32, ptr %iolink_id.addr, align 4, !dbg !2833
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 256, ptr noundef @.str.68, ptr noundef @.str.15, i32 noundef %1, i32 noundef %2) #10, !dbg !2834
  %arraydecay1 = getelementptr inbounds [256 x i8], ptr %path, i64 0, i64 0, !dbg !2835
  %call2 = call noalias ptr @fopen(ptr noundef %arraydecay1, ptr noundef @.str.7), !dbg !2836
  store ptr %call2, ptr %fd, align 8, !dbg !2837
  %3 = load ptr, ptr %fd, align 8, !dbg !2838
  %tobool3 = icmp ne ptr %3, null, !dbg !2838
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !2840

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2841

if.end5:                                          ; preds = %if.end
  %call6 = call noalias ptr @malloc(i64 noundef 4096) #13, !dbg !2843
  store ptr %call6, ptr %read_buf, align 8, !dbg !2844
  %4 = load ptr, ptr %read_buf, align 8, !dbg !2845
  %tobool7 = icmp ne ptr %4, null, !dbg !2845
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !2847

if.then8:                                         ; preds = %if.end5
  store i32 6, ptr %ret, align 4, !dbg !2848
  br label %err1, !dbg !2850

if.end9:                                          ; preds = %if.end5
  %5 = load ptr, ptr %read_buf, align 8, !dbg !2851
  %6 = load ptr, ptr %fd, align 8, !dbg !2852
  %call10 = call i64 @fread(ptr noundef %5, i64 noundef 1, i64 noundef 4096, ptr noundef %6), !dbg !2853
  %conv = trunc i64 %call10 to i32, !dbg !2853
  store i32 %conv, ptr %read_size, align 4, !dbg !2854
  %7 = load i32, ptr %read_size, align 4, !dbg !2855
  %cmp = icmp sle i32 %7, 0, !dbg !2857
  br i1 %cmp, label %if.then12, label %if.end13, !dbg !2858

if.then12:                                        ; preds = %if.end9
  store i32 1, ptr %ret, align 4, !dbg !2859
  br label %err2, !dbg !2861

if.end13:                                         ; preds = %if.end9
  %8 = load i32, ptr %read_size, align 4, !dbg !2862
  %cmp14 = icmp sge i32 %8, 4096, !dbg !2864
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !2865

if.then16:                                        ; preds = %if.end13
  store i32 4095, ptr %read_size, align 4, !dbg !2866
  br label %if.end17, !dbg !2867

if.end17:                                         ; preds = %if.then16, %if.end13
  %9 = load ptr, ptr %read_buf, align 8, !dbg !2868
  %10 = load i32, ptr %read_size, align 4, !dbg !2869
  %idxprom = sext i32 %10 to i64, !dbg !2868
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 %idxprom, !dbg !2868
  store i8 0, ptr %arrayidx, align 1, !dbg !2870
  store i32 0, ptr %prog, align 4, !dbg !2871
  %11 = load ptr, ptr %read_buf, align 8, !dbg !2872
  store ptr %11, ptr %p, align 8, !dbg !2873
  br label %while.cond, !dbg !2874

while.cond:                                       ; preds = %if.end116, %if.end17
  %12 = load i32, ptr %prog, align 4, !dbg !2875
  %13 = load ptr, ptr %p, align 8, !dbg !2876
  %idx.ext = zext i32 %12 to i64, !dbg !2876
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %idx.ext, !dbg !2876
  store ptr %add.ptr, ptr %p, align 8, !dbg !2876
  %arraydecay18 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2877
  %call19 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %add.ptr, ptr noundef @.str.11, ptr noundef %arraydecay18, ptr noundef %prop_val, ptr noundef %prog) #10, !dbg !2878
  %cmp20 = icmp eq i32 %call19, 2, !dbg !2879
  br i1 %cmp20, label %while.body, label %while.end, !dbg !2874

while.body:                                       ; preds = %while.cond
  %arraydecay22 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2880
  %call23 = call i32 @strcmp(ptr noundef %arraydecay22, ptr noundef @.str.64) #14, !dbg !2883
  %cmp24 = icmp eq i32 %call23, 0, !dbg !2884
  br i1 %cmp24, label %if.then26, label %if.else28, !dbg !2885

if.then26:                                        ; preds = %while.body
  %14 = load i64, ptr %prop_val, align 8, !dbg !2886
  %conv27 = trunc i64 %14 to i32, !dbg !2887
  %15 = load ptr, ptr %props.addr, align 8, !dbg !2888
  %IoLinkType = getelementptr inbounds %struct._HsaIoLinkProperties, ptr %15, i32 0, i32 0, !dbg !2889
  store i32 %conv27, ptr %IoLinkType, align 4, !dbg !2890
  br label %if.end116, !dbg !2888

if.else28:                                        ; preds = %while.body
  %arraydecay29 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2891
  %call30 = call i32 @strcmp(ptr noundef %arraydecay29, ptr noundef @.str.69) #14, !dbg !2893
  %cmp31 = icmp eq i32 %call30, 0, !dbg !2894
  br i1 %cmp31, label %if.then33, label %if.else35, !dbg !2895

if.then33:                                        ; preds = %if.else28
  %16 = load i64, ptr %prop_val, align 8, !dbg !2896
  %conv34 = trunc i64 %16 to i32, !dbg !2897
  %17 = load ptr, ptr %props.addr, align 8, !dbg !2898
  %VersionMajor = getelementptr inbounds %struct._HsaIoLinkProperties, ptr %17, i32 0, i32 1, !dbg !2899
  store i32 %conv34, ptr %VersionMajor, align 4, !dbg !2900
  br label %if.end115, !dbg !2898

if.else35:                                        ; preds = %if.else28
  %arraydecay36 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2901
  %call37 = call i32 @strcmp(ptr noundef %arraydecay36, ptr noundef @.str.70) #14, !dbg !2903
  %cmp38 = icmp eq i32 %call37, 0, !dbg !2904
  br i1 %cmp38, label %if.then40, label %if.else42, !dbg !2905

if.then40:                                        ; preds = %if.else35
  %18 = load i64, ptr %prop_val, align 8, !dbg !2906
  %conv41 = trunc i64 %18 to i32, !dbg !2907
  %19 = load ptr, ptr %props.addr, align 8, !dbg !2908
  %VersionMinor = getelementptr inbounds %struct._HsaIoLinkProperties, ptr %19, i32 0, i32 2, !dbg !2909
  store i32 %conv41, ptr %VersionMinor, align 4, !dbg !2910
  br label %if.end114, !dbg !2908

if.else42:                                        ; preds = %if.else35
  %arraydecay43 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2911
  %call44 = call i32 @strcmp(ptr noundef %arraydecay43, ptr noundef @.str.71) #14, !dbg !2913
  %cmp45 = icmp eq i32 %call44, 0, !dbg !2914
  br i1 %cmp45, label %if.then47, label %if.else49, !dbg !2915

if.then47:                                        ; preds = %if.else42
  %20 = load i64, ptr %prop_val, align 8, !dbg !2916
  %conv48 = trunc i64 %20 to i32, !dbg !2917
  %21 = load ptr, ptr %props.addr, align 8, !dbg !2918
  %NodeFrom = getelementptr inbounds %struct._HsaIoLinkProperties, ptr %21, i32 0, i32 3, !dbg !2919
  store i32 %conv48, ptr %NodeFrom, align 4, !dbg !2920
  br label %if.end113, !dbg !2918

if.else49:                                        ; preds = %if.else42
  %arraydecay50 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2921
  %call51 = call i32 @strcmp(ptr noundef %arraydecay50, ptr noundef @.str.72) #14, !dbg !2923
  %cmp52 = icmp eq i32 %call51, 0, !dbg !2924
  br i1 %cmp52, label %if.then54, label %if.else56, !dbg !2925

if.then54:                                        ; preds = %if.else49
  %22 = load i64, ptr %prop_val, align 8, !dbg !2926
  %conv55 = trunc i64 %22 to i32, !dbg !2927
  %23 = load ptr, ptr %props.addr, align 8, !dbg !2928
  %NodeTo = getelementptr inbounds %struct._HsaIoLinkProperties, ptr %23, i32 0, i32 4, !dbg !2929
  store i32 %conv55, ptr %NodeTo, align 4, !dbg !2930
  br label %if.end112, !dbg !2928

if.else56:                                        ; preds = %if.else49
  %arraydecay57 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2931
  %call58 = call i32 @strcmp(ptr noundef %arraydecay57, ptr noundef @.str.73) #14, !dbg !2933
  %cmp59 = icmp eq i32 %call58, 0, !dbg !2934
  br i1 %cmp59, label %if.then61, label %if.else63, !dbg !2935

if.then61:                                        ; preds = %if.else56
  %24 = load i64, ptr %prop_val, align 8, !dbg !2936
  %conv62 = trunc i64 %24 to i32, !dbg !2937
  %25 = load ptr, ptr %props.addr, align 8, !dbg !2938
  %Weight = getelementptr inbounds %struct._HsaIoLinkProperties, ptr %25, i32 0, i32 5, !dbg !2939
  store i32 %conv62, ptr %Weight, align 4, !dbg !2940
  br label %if.end111, !dbg !2938

if.else63:                                        ; preds = %if.else56
  %arraydecay64 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2941
  %call65 = call i32 @strcmp(ptr noundef %arraydecay64, ptr noundef @.str.74) #14, !dbg !2943
  %cmp66 = icmp eq i32 %call65, 0, !dbg !2944
  br i1 %cmp66, label %if.then68, label %if.else70, !dbg !2945

if.then68:                                        ; preds = %if.else63
  %26 = load i64, ptr %prop_val, align 8, !dbg !2946
  %conv69 = trunc i64 %26 to i32, !dbg !2947
  %27 = load ptr, ptr %props.addr, align 8, !dbg !2948
  %MinimumLatency = getelementptr inbounds %struct._HsaIoLinkProperties, ptr %27, i32 0, i32 6, !dbg !2949
  store i32 %conv69, ptr %MinimumLatency, align 4, !dbg !2950
  br label %if.end110, !dbg !2948

if.else70:                                        ; preds = %if.else63
  %arraydecay71 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2951
  %call72 = call i32 @strcmp(ptr noundef %arraydecay71, ptr noundef @.str.75) #14, !dbg !2953
  %cmp73 = icmp eq i32 %call72, 0, !dbg !2954
  br i1 %cmp73, label %if.then75, label %if.else77, !dbg !2955

if.then75:                                        ; preds = %if.else70
  %28 = load i64, ptr %prop_val, align 8, !dbg !2956
  %conv76 = trunc i64 %28 to i32, !dbg !2957
  %29 = load ptr, ptr %props.addr, align 8, !dbg !2958
  %MaximumLatency = getelementptr inbounds %struct._HsaIoLinkProperties, ptr %29, i32 0, i32 7, !dbg !2959
  store i32 %conv76, ptr %MaximumLatency, align 4, !dbg !2960
  br label %if.end109, !dbg !2958

if.else77:                                        ; preds = %if.else70
  %arraydecay78 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2961
  %call79 = call i32 @strcmp(ptr noundef %arraydecay78, ptr noundef @.str.76) #14, !dbg !2963
  %cmp80 = icmp eq i32 %call79, 0, !dbg !2964
  br i1 %cmp80, label %if.then82, label %if.else84, !dbg !2965

if.then82:                                        ; preds = %if.else77
  %30 = load i64, ptr %prop_val, align 8, !dbg !2966
  %conv83 = trunc i64 %30 to i32, !dbg !2967
  %31 = load ptr, ptr %props.addr, align 8, !dbg !2968
  %MinimumBandwidth = getelementptr inbounds %struct._HsaIoLinkProperties, ptr %31, i32 0, i32 8, !dbg !2969
  store i32 %conv83, ptr %MinimumBandwidth, align 4, !dbg !2970
  br label %if.end108, !dbg !2968

if.else84:                                        ; preds = %if.else77
  %arraydecay85 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2971
  %call86 = call i32 @strcmp(ptr noundef %arraydecay85, ptr noundef @.str.77) #14, !dbg !2973
  %cmp87 = icmp eq i32 %call86, 0, !dbg !2974
  br i1 %cmp87, label %if.then89, label %if.else91, !dbg !2975

if.then89:                                        ; preds = %if.else84
  %32 = load i64, ptr %prop_val, align 8, !dbg !2976
  %conv90 = trunc i64 %32 to i32, !dbg !2977
  %33 = load ptr, ptr %props.addr, align 8, !dbg !2978
  %MaximumBandwidth = getelementptr inbounds %struct._HsaIoLinkProperties, ptr %33, i32 0, i32 9, !dbg !2979
  store i32 %conv90, ptr %MaximumBandwidth, align 4, !dbg !2980
  br label %if.end107, !dbg !2978

if.else91:                                        ; preds = %if.else84
  %arraydecay92 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2981
  %call93 = call i32 @strcmp(ptr noundef %arraydecay92, ptr noundef @.str.78) #14, !dbg !2983
  %cmp94 = icmp eq i32 %call93, 0, !dbg !2984
  br i1 %cmp94, label %if.then96, label %if.else98, !dbg !2985

if.then96:                                        ; preds = %if.else91
  %34 = load i64, ptr %prop_val, align 8, !dbg !2986
  %conv97 = trunc i64 %34 to i32, !dbg !2987
  %35 = load ptr, ptr %props.addr, align 8, !dbg !2988
  %RecTransferSize = getelementptr inbounds %struct._HsaIoLinkProperties, ptr %35, i32 0, i32 10, !dbg !2989
  store i32 %conv97, ptr %RecTransferSize, align 4, !dbg !2990
  br label %if.end106, !dbg !2988

if.else98:                                        ; preds = %if.else91
  %arraydecay99 = getelementptr inbounds [256 x i8], ptr %prop_name, i64 0, i64 0, !dbg !2991
  %call100 = call i32 @strcmp(ptr noundef %arraydecay99, ptr noundef @.str.53) #14, !dbg !2993
  %cmp101 = icmp eq i32 %call100, 0, !dbg !2994
  br i1 %cmp101, label %if.then103, label %if.end105, !dbg !2995

if.then103:                                       ; preds = %if.else98
  %36 = load i64, ptr %prop_val, align 8, !dbg !2996
  %conv104 = trunc i64 %36 to i32, !dbg !2997
  %37 = load ptr, ptr %props.addr, align 8, !dbg !2998
  %Flags = getelementptr inbounds %struct._HsaIoLinkProperties, ptr %37, i32 0, i32 11, !dbg !2999
  store i32 %conv104, ptr %Flags, align 4, !dbg !3000
  br label %if.end105, !dbg !2998

if.end105:                                        ; preds = %if.then103, %if.else98
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.then96
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then89
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.then82
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.then75
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.then68
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.then61
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %if.then54
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.then47
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.then40
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.then33
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.then26
  br label %while.cond, !dbg !2874, !llvm.loop !3001

while.end:                                        ; preds = %while.cond
  br label %err2, !dbg !2874

err2:                                             ; preds = %while.end, %if.then12
  tail call void @llvm.dbg.label(metadata !2805), !dbg !3003
  %38 = load ptr, ptr %read_buf, align 8, !dbg !3004
  call void @free(ptr noundef %38) #10, !dbg !3005
  br label %err1, !dbg !3005

err1:                                             ; preds = %err2, %if.then8
  tail call void @llvm.dbg.label(metadata !2806), !dbg !3006
  %39 = load ptr, ptr %fd, align 8, !dbg !3007
  %call117 = call i32 @fclose(ptr noundef %39), !dbg !3008
  %40 = load i32, ptr %ret, align 4, !dbg !3009
  store i32 %40, ptr %retval, align 4, !dbg !3010
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3010

cleanup:                                          ; preds = %err1, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !3011
  call void @llvm.lifetime.end.p0(i64 4, ptr %read_size) #10, !dbg !3011
  call void @llvm.lifetime.end.p0(i64 4, ptr %prog) #10, !dbg !3011
  call void @llvm.lifetime.end.p0(i64 8, ptr %prop_val) #10, !dbg !3011
  call void @llvm.lifetime.end.p0(i64 256, ptr %path) #10, !dbg !3011
  call void @llvm.lifetime.end.p0(i64 256, ptr %prop_name) #10, !dbg !3011
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !3011
  call void @llvm.lifetime.end.p0(i64 8, ptr %read_buf) #10, !dbg !3011
  call void @llvm.lifetime.end.p0(i64 8, ptr %fd) #10, !dbg !3011
  %41 = load i32, ptr %retval, align 4, !dbg !3011
  ret i32 %41, !dbg !3011
}

; Function Attrs: nounwind allocsize(0)
declare !dbg !3012 noalias ptr @malloc(i64 noundef) #7

declare !dbg !3015 noalias ptr @fopen(ptr noundef, ptr noundef) #5

declare !dbg !3020 i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) #5

declare !dbg !3024 i32 @fclose(ptr noundef) #5

declare !dbg !3027 i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #5

; Function Attrs: nounwind
declare !dbg !3031 i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !3034 i32 @strcmp(ptr noundef, ptr noundef) #8

declare !dbg !3038 ptr @opendir(ptr noundef) #5

declare !dbg !3041 ptr @readdir(ptr noundef) #5

declare !dbg !3044 i32 @closedir(ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal i32 @topology_sysfs_get_gpu_id(i32 noundef %node_id, ptr noundef %gpu_id) #0 !dbg !3047 {
entry:
  %retval = alloca i32, align 4
  %node_id.addr = alloca i32, align 4
  %gpu_id.addr = alloca ptr, align 8
  %fd = alloca ptr, align 8
  %path = alloca [256 x i8], align 16
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %node_id, ptr %node_id.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %node_id.addr, metadata !3049, metadata !DIExpression()), !dbg !3054
  store ptr %gpu_id, ptr %gpu_id.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %gpu_id.addr, metadata !3050, metadata !DIExpression()), !dbg !3055
  call void @llvm.lifetime.start.p0(i64 8, ptr %fd) #10, !dbg !3056
  tail call void @llvm.dbg.declare(metadata ptr %fd, metadata !3051, metadata !DIExpression()), !dbg !3057
  call void @llvm.lifetime.start.p0(i64 256, ptr %path) #10, !dbg !3058
  tail call void @llvm.dbg.declare(metadata ptr %path, metadata !3052, metadata !DIExpression()), !dbg !3059
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !3060
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !3053, metadata !DIExpression()), !dbg !3061
  store i32 0, ptr %ret, align 4, !dbg !3061
  %0 = load ptr, ptr %gpu_id.addr, align 8, !dbg !3062
  %tobool = icmp ne ptr %0, null, !dbg !3062
  br i1 %tobool, label %if.then, label %if.else, !dbg !3065

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !3065

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.18, ptr noundef @.str.1, i32 noundef 175, ptr noundef @__PRETTY_FUNCTION__.topology_sysfs_get_gpu_id) #11, !dbg !3062
  unreachable, !dbg !3062

if.end:                                           ; preds = %if.then
  %arraydecay = getelementptr inbounds [256 x i8], ptr %path, i64 0, i64 0, !dbg !3066
  %1 = load i32, ptr %node_id.addr, align 4, !dbg !3067
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 256, ptr noundef @.str.45, ptr noundef @.str.15, i32 noundef %1) #10, !dbg !3068
  %arraydecay1 = getelementptr inbounds [256 x i8], ptr %path, i64 0, i64 0, !dbg !3069
  %call2 = call noalias ptr @fopen(ptr noundef %arraydecay1, ptr noundef @.str.7), !dbg !3070
  store ptr %call2, ptr %fd, align 8, !dbg !3071
  %2 = load ptr, ptr %fd, align 8, !dbg !3072
  %tobool3 = icmp ne ptr %2, null, !dbg !3072
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !3074

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3075
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3075

if.end5:                                          ; preds = %if.end
  %3 = load ptr, ptr %fd, align 8, !dbg !3076
  %4 = load ptr, ptr %gpu_id.addr, align 8, !dbg !3078
  %call6 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %3, ptr noundef @.str.8, ptr noundef %4), !dbg !3079
  %cmp = icmp ne i32 %call6, 1, !dbg !3080
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !3081

if.then7:                                         ; preds = %if.end5
  store i32 1, ptr %ret, align 4, !dbg !3082
  br label %if.end8, !dbg !3084

if.end8:                                          ; preds = %if.then7, %if.end5
  %5 = load ptr, ptr %fd, align 8, !dbg !3085
  %call9 = call i32 @fclose(ptr noundef %5), !dbg !3086
  %6 = load i32, ptr %ret, align 4, !dbg !3087
  store i32 %6, ptr %retval, align 4, !dbg !3088
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3088

cleanup:                                          ; preds = %if.end8, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !3089
  call void @llvm.lifetime.end.p0(i64 256, ptr %path) #10, !dbg !3089
  call void @llvm.lifetime.end.p0(i64 8, ptr %fd) #10, !dbg !3089
  %7 = load i32, ptr %retval, align 4, !dbg !3089
  ret i32 %7, !dbg !3089
}

; Function Attrs: nounwind
declare !dbg !3090 i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !3094 ptr @memchr(ptr noundef, i32 noundef, i64 noundef) #8

; Function Attrs: nounwind uwtable
define internal i32 @get_cpu_stepping(ptr noundef %stepping) #0 !dbg !3099 {
entry:
  %retval = alloca i32, align 4
  %stepping.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %p = alloca ptr, align 8
  %read_buf = alloca ptr, align 8
  %read_size = alloca i32, align 4
  %fd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %stepping, ptr %stepping.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %stepping.addr, metadata !3104, metadata !DIExpression()), !dbg !3112
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !3113
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !3105, metadata !DIExpression()), !dbg !3114
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !3115
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !3106, metadata !DIExpression()), !dbg !3116
  call void @llvm.lifetime.start.p0(i64 8, ptr %read_buf) #10, !dbg !3115
  tail call void @llvm.dbg.declare(metadata ptr %read_buf, metadata !3107, metadata !DIExpression()), !dbg !3117
  call void @llvm.lifetime.start.p0(i64 4, ptr %read_size) #10, !dbg !3118
  tail call void @llvm.dbg.declare(metadata ptr %read_size, metadata !3108, metadata !DIExpression()), !dbg !3119
  call void @llvm.lifetime.start.p0(i64 8, ptr %fd) #10, !dbg !3120
  tail call void @llvm.dbg.declare(metadata ptr %fd, metadata !3109, metadata !DIExpression()), !dbg !3121
  %call = call noalias ptr @fopen(ptr noundef @.str.46, ptr noundef @.str.7), !dbg !3122
  store ptr %call, ptr %fd, align 8, !dbg !3121
  %0 = load ptr, ptr %fd, align 8, !dbg !3123
  %tobool = icmp ne ptr %0, null, !dbg !3123
  br i1 %tobool, label %if.end, label %if.then, !dbg !3125

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !3126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3126

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @malloc(i64 noundef 4096) #13, !dbg !3127
  store ptr %call1, ptr %read_buf, align 8, !dbg !3128
  %1 = load ptr, ptr %read_buf, align 8, !dbg !3129
  %tobool2 = icmp ne ptr %1, null, !dbg !3129
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3131

if.then3:                                         ; preds = %if.end
  store i32 -1, ptr %ret, align 4, !dbg !3132
  br label %err1, !dbg !3134

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr %read_buf, align 8, !dbg !3135
  %3 = load ptr, ptr %fd, align 8, !dbg !3136
  %call5 = call i64 @fread(ptr noundef %2, i64 noundef 1, i64 noundef 4096, ptr noundef %3), !dbg !3137
  %conv = trunc i64 %call5 to i32, !dbg !3137
  store i32 %conv, ptr %read_size, align 4, !dbg !3138
  %4 = load i32, ptr %read_size, align 4, !dbg !3139
  %cmp = icmp sle i32 %4, 0, !dbg !3141
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !3142

if.then7:                                         ; preds = %if.end4
  store i32 -2, ptr %ret, align 4, !dbg !3143
  br label %err2, !dbg !3145

if.end8:                                          ; preds = %if.end4
  %5 = load i32, ptr %read_size, align 4, !dbg !3146
  %cmp9 = icmp sge i32 %5, 4096, !dbg !3148
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !3149

if.then11:                                        ; preds = %if.end8
  store i32 4095, ptr %read_size, align 4, !dbg !3150
  br label %if.end12, !dbg !3151

if.end12:                                         ; preds = %if.then11, %if.end8
  %6 = load ptr, ptr %read_buf, align 8, !dbg !3152
  %7 = load i32, ptr %read_size, align 4, !dbg !3153
  %idxprom = sext i32 %7 to i64, !dbg !3152
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom, !dbg !3152
  store i8 0, ptr %arrayidx, align 1, !dbg !3154
  %8 = load ptr, ptr %stepping.addr, align 8, !dbg !3155
  store i16 0, ptr %8, align 2, !dbg !3156
  %9 = load ptr, ptr %read_buf, align 8, !dbg !3157
  %call13 = call ptr @strstr(ptr noundef %9, ptr noundef @.str.47) #14, !dbg !3158
  store ptr %call13, ptr %p, align 8, !dbg !3159
  %10 = load ptr, ptr %p, align 8, !dbg !3160
  %tobool14 = icmp ne ptr %10, null, !dbg !3160
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !3162

if.then15:                                        ; preds = %if.end12
  %11 = load ptr, ptr %p, align 8, !dbg !3163
  %12 = load ptr, ptr %stepping.addr, align 8, !dbg !3164
  %call16 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %11, ptr noundef @.str.48, ptr noundef %12) #10, !dbg !3165
  br label %if.end17, !dbg !3165

if.end17:                                         ; preds = %if.then15, %if.end12
  br label %err2, !dbg !3160

err2:                                             ; preds = %if.end17, %if.then7
  tail call void @llvm.dbg.label(metadata !3110), !dbg !3166
  %13 = load ptr, ptr %read_buf, align 8, !dbg !3167
  call void @free(ptr noundef %13) #10, !dbg !3168
  br label %err1, !dbg !3168

err1:                                             ; preds = %err2, %if.then3
  tail call void @llvm.dbg.label(metadata !3111), !dbg !3169
  %14 = load ptr, ptr %fd, align 8, !dbg !3170
  %call18 = call i32 @fclose(ptr noundef %14), !dbg !3171
  %15 = load i32, ptr %ret, align 4, !dbg !3172
  store i32 %15, ptr %retval, align 4, !dbg !3173
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3173

cleanup:                                          ; preds = %err1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fd) #10, !dbg !3174
  call void @llvm.lifetime.end.p0(i64 4, ptr %read_size) #10, !dbg !3174
  call void @llvm.lifetime.end.p0(i64 8, ptr %read_buf) #10, !dbg !3174
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !3174
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !3174
  %16 = load i32, ptr %retval, align 4, !dbg !3174
  ret i32 %16, !dbg !3174
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !3175 ptr @strstr(ptr noundef, ptr noundef) #8

declare !dbg !3178 i32 @printf(ptr noundef, ...) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!531, !532, !533, !534, !535}
!llvm.ident = !{!536}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "node", scope: !2, file: !3, line: 51, type: !382, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !66, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "topology.c", directory: "/local-ssd/hsakmt-54ymb2n27hh75dc4jdkkx4yirkbdeivr-build/aidengro/spack-stage-hsakmt-1.0.0-54ymb2n27hh75dc4jdkkx4yirkbdeivr/spack-src/hsakmt", checksumkind: CSK_MD5, checksum: "30576dc486b0f964424cca0fa926785b")
!4 = !{!5, !29, !39, !47}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_HSAKMT_STATUS", file: !6, line: 82, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../hsakmt/include/hsakmttypes.h", directory: "/local-ssd/hsakmt-54ymb2n27hh75dc4jdkkx4yirkbdeivr-build/aidengro/spack-stage-hsakmt-1.0.0-54ymb2n27hh75dc4jdkkx4yirkbdeivr/spack-src/hsakmt", checksumkind: CSK_MD5, checksum: "6b707513afca8c6383bf0b0da0907357")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!9 = !DIEnumerator(name: "HSAKMT_STATUS_SUCCESS", value: 0)
!10 = !DIEnumerator(name: "HSAKMT_STATUS_ERROR", value: 1)
!11 = !DIEnumerator(name: "HSAKMT_STATUS_DRIVER_MISMATCH", value: 2)
!12 = !DIEnumerator(name: "HSAKMT_STATUS_INVALID_PARAMETER", value: 3)
!13 = !DIEnumerator(name: "HSAKMT_STATUS_INVALID_HANDLE", value: 4)
!14 = !DIEnumerator(name: "HSAKMT_STATUS_INVALID_NODE_UNIT", value: 5)
!15 = !DIEnumerator(name: "HSAKMT_STATUS_NO_MEMORY", value: 6)
!16 = !DIEnumerator(name: "HSAKMT_STATUS_BUFFER_TOO_SMALL", value: 7)
!17 = !DIEnumerator(name: "HSAKMT_STATUS_NOT_IMPLEMENTED", value: 10)
!18 = !DIEnumerator(name: "HSAKMT_STATUS_NOT_SUPPORTED", value: 11)
!19 = !DIEnumerator(name: "HSAKMT_STATUS_UNAVAILABLE", value: 12)
!20 = !DIEnumerator(name: "HSAKMT_STATUS_KERNEL_IO_CHANNEL_NOT_OPENED", value: 20)
!21 = !DIEnumerator(name: "HSAKMT_STATUS_KERNEL_COMMUNICATION_ERROR", value: 21)
!22 = !DIEnumerator(name: "HSAKMT_STATUS_KERNEL_ALREADY_OPENED", value: 22)
!23 = !DIEnumerator(name: "HSAKMT_STATUS_HSAMMU_UNAVAILABLE", value: 23)
!24 = !DIEnumerator(name: "HSAKMT_STATUS_WAIT_FAILURE", value: 30)
!25 = !DIEnumerator(name: "HSAKMT_STATUS_WAIT_TIMEOUT", value: 31)
!26 = !DIEnumerator(name: "HSAKMT_STATUS_MEMORY_ALREADY_REGISTERED", value: 35)
!27 = !DIEnumerator(name: "HSAKMT_STATUS_MEMORY_NOT_REGISTERED", value: 36)
!28 = !DIEnumerator(name: "HSAKMT_STATUS_MEMORY_ALIGNMENT", value: 37)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_HSA_HEAPTYPE", file: !6, line: 242, baseType: !7, size: 32, elements: !30)
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38}
!31 = !DIEnumerator(name: "HSA_HEAPTYPE_SYSTEM", value: 0)
!32 = !DIEnumerator(name: "HSA_HEAPTYPE_FRAME_BUFFER_PUBLIC", value: 1)
!33 = !DIEnumerator(name: "HSA_HEAPTYPE_FRAME_BUFFER_PRIVATE", value: 2)
!34 = !DIEnumerator(name: "HSA_HEAPTYPE_GPU_GDS", value: 3)
!35 = !DIEnumerator(name: "HSA_HEAPTYPE_GPU_LDS", value: 4)
!36 = !DIEnumerator(name: "HSA_HEAPTYPE_GPU_SCRATCH", value: 5)
!37 = !DIEnumerator(name: "HSA_HEAPTYPE_NUMHEAPTYPES", value: 6)
!38 = !DIEnumerator(name: "HSA_HEAPTYPE_SIZE", value: 4294967295, isUnsigned: true)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !40, line: 32, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./fmm.h", directory: "/local-ssd/hsakmt-54ymb2n27hh75dc4jdkkx4yirkbdeivr-build/aidengro/spack-stage-hsakmt-1.0.0-54ymb2n27hh75dc4jdkkx4yirkbdeivr/spack-src/hsakmt", checksumkind: CSK_MD5, checksum: "b7de0a184432e5d386c36901e33fe00f")
!41 = !{!42, !43, !44, !45, !46}
!42 = !DIEnumerator(name: "FMM_FIRST_APERTURE_TYPE", value: 0)
!43 = !DIEnumerator(name: "FMM_GPUVM", value: 0)
!44 = !DIEnumerator(name: "FMM_LDS", value: 1)
!45 = !DIEnumerator(name: "FMM_SCRATCH", value: 2)
!46 = !DIEnumerator(name: "FMM_LAST_APERTURE_TYPE", value: 3)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_HSA_IOLINKTYPE", file: !6, line: 350, baseType: !7, size: 32, elements: !48)
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56}
!49 = !DIEnumerator(name: "HSA_IOLINKTYPE_UNDEFINED", value: 0)
!50 = !DIEnumerator(name: "HSA_IOLINKTYPE_HYPERTRANSPORT", value: 1)
!51 = !DIEnumerator(name: "HSA_IOLINKTYPE_PCIEXPRESS", value: 2)
!52 = !DIEnumerator(name: "HSA_IOLINKTYPE_AMBA", value: 3)
!53 = !DIEnumerator(name: "HSA_IOLINKTYPE_MIPI", value: 4)
!54 = !DIEnumerator(name: "HSA_IOLINKTYPE_OTHER", value: 5)
!55 = !DIEnumerator(name: "HSA_IOLINKTYPE_NUMIOLINKTYPES", value: 6)
!56 = !DIEnumerator(name: "HSA_IOLINKTYPE_SIZE", value: 4294967295, isUnsigned: true)
!57 = !{!58, !59, !63}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !60, line: 26, baseType: !61)
!60 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !62, line: 42, baseType: !7)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !60, line: 25, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !62, line: 40, baseType: !65)
!65 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!66 = !{!67, !73, !78, !84, !89, !94, !99, !104, !109, !111, !0, !116, !127, !132, !137, !142, !147, !149, !154, !159, !162, !164, !169, !174, !176, !181, !183, !188, !193, !195, !197, !199, !204, !206, !208, !210, !215, !217, !219, !221, !223, !225, !227, !229, !231, !236, !238, !240, !245, !247, !252, !254, !256, !261, !263, !265, !270, !272, !277, !282, !284, !286, !291, !296, !301, !303, !305, !307, !309, !311, !313, !318, !320, !322, !327, !329, !334, !336, !341, !343, !345, !347, !349, !351, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !379}
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !3, line: 732, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 56, elements: !71)
!70 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!71 = !{!72}
!72 = !DISubrange(count: 7)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !3, line: 732, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 88, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 11)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !3, line: 732, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 536, elements: !82)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!82 = !{!83}
!83 = !DISubrange(count: 67)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !3, line: 778, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 560, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 70)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !3, line: 821, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 712, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 89)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !3, line: 836, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 136, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 17)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !3, line: 884, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 784, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 98)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !3, line: 894, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 152, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 19)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !3, line: 926, type: !91, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !3, line: 936, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 144, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 18)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "system", scope: !2, file: !3, line: 50, type: !118, isLocal: true, isDefinition: true)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "HsaSystemProperties", file: !6, line: 149, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_HsaSystemProperties", file: !6, line: 140, size: 128, elements: !121)
!121 = !{!122, !124, !125, !126}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "NumNodes", scope: !120, file: !6, line: 142, baseType: !123, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "HSAuint32", file: !6, line: 65, baseType: !59)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "PlatformOem", scope: !120, file: !6, line: 146, baseType: !123, size: 32, offset: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "PlatformId", scope: !120, file: !6, line: 147, baseType: !123, size: 32, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "PlatformRev", scope: !120, file: !6, line: 148, baseType: !123, size: 32, offset: 96)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !3, line: 78, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 32, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 4)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !3, line: 78, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 448, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 56)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 416, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 52)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 16, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 2)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !3, line: 82, type: !129, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !3, line: 105, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 48, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 6)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !3, line: 105, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 552, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 69)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !3, line: 106, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 448, elements: !135)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !3, line: 132, type: !75, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !3, line: 133, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 104, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 13)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 135, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 96, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 12)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !3, line: 137, type: !166, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !3, line: 145, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 352, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 44)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !3, line: 152, type: !144, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !3, line: 153, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 24, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 3)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !3, line: 201, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 696, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 87)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !3, line: 202, type: !69, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !3, line: 207, type: !75, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !3, line: 237, type: !96, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !3, line: 261, type: !201, isLocal: true, isDefinition: true)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 128, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 16)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !3, line: 263, type: !75, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !3, line: 265, type: !201, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !3, line: 267, type: !166, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !3, line: 269, type: !212, isLocal: true, isDefinition: true)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 120, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 15)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !3, line: 271, type: !96, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !3, line: 273, type: !166, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !3, line: 275, type: !75, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !3, line: 277, type: !106, isLocal: true, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !3, line: 279, type: !212, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !3, line: 281, type: !212, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !3, line: 283, type: !201, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !3, line: 285, type: !171, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !3, line: 287, type: !233, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 184, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 23)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !3, line: 289, type: !113, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !3, line: 291, type: !171, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !3, line: 293, type: !242, isLocal: true, isDefinition: true)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 168, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 21)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !3, line: 295, type: !75, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !3, line: 297, type: !249, isLocal: true, isDefinition: true)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 80, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 10)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !3, line: 299, type: !249, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !3, line: 301, type: !171, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !3, line: 303, type: !258, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 192, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 24)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !3, line: 305, type: !258, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !3, line: 307, type: !212, isLocal: true, isDefinition: true)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !3, line: 175, type: !267, isLocal: true, isDefinition: true)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 496, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 62)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !3, line: 176, type: !166, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !3, line: 960, type: !274, isLocal: true, isDefinition: true)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 112, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 14)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !3, line: 983, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 72, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 9)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !3, line: 985, type: !201, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !3, line: 60, type: !144, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !3, line: 60, type: !288, isLocal: true, isDefinition: true)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 200, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 25)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !3, line: 333, type: !293, isLocal: true, isDefinition: true)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 688, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 86)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !3, line: 334, type: !298, isLocal: true, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 240, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 30)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !3, line: 359, type: !249, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !3, line: 361, type: !274, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !3, line: 363, type: !151, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !3, line: 365, type: !151, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !3, line: 367, type: !171, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !3, line: 389, type: !190, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !3, line: 390, type: !315, isLocal: true, isDefinition: true)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 216, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 27)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !3, line: 415, type: !96, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !3, line: 417, type: !151, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !3, line: 419, type: !324, isLocal: true, isDefinition: true)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 40, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 5)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !3, line: 421, type: !201, isLocal: true, isDefinition: true)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !3, line: 423, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 160, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 20)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !3, line: 425, type: !171, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !3, line: 427, type: !338, isLocal: true, isDefinition: true)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 64, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 8)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !3, line: 429, type: !324, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !3, line: 431, type: !171, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !3, line: 436, type: !212, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !3, line: 439, type: !75, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !3, line: 461, type: !91, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !3, line: 462, type: !353, isLocal: true, isDefinition: true)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 224, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 28)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !3, line: 489, type: !274, isLocal: true, isDefinition: true)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !3, line: 491, type: !274, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !3, line: 493, type: !249, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !3, line: 495, type: !338, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !3, line: 497, type: !69, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !3, line: 499, type: !171, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !3, line: 501, type: !171, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !3, line: 503, type: !274, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !3, line: 505, type: !274, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !3, line: 507, type: !376, isLocal: true, isDefinition: true)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 208, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 26)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !3, line: 664, type: !381, isLocal: true, isDefinition: true)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 200, elements: !289)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_t", file: !3, line: 48, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 42, size: 3072, elements: !385)
!385 = !{!386, !387, !442, !472, !501}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "gpu_id", scope: !384, file: !3, line: 43, baseType: !59, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !384, file: !3, line: 44, baseType: !388, size: 2816, offset: 32)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "HsaNodeProperties", file: !6, line: 239, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_HsaNodeProperties", file: !6, line: 188, size: 2816, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !429, !430, !431, !436, !437, !438}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "NumCPUCores", scope: !389, file: !6, line: 190, baseType: !123, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "NumFComputeCores", scope: !389, file: !6, line: 193, baseType: !123, size: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "NumMemoryBanks", scope: !389, file: !6, line: 195, baseType: !123, size: 32, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "NumCaches", scope: !389, file: !6, line: 196, baseType: !123, size: 32, offset: 96)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "NumIOLinks", scope: !389, file: !6, line: 198, baseType: !123, size: 32, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "CComputeIdLo", scope: !389, file: !6, line: 201, baseType: !123, size: 32, offset: 160)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "FComputeIdLo", scope: !389, file: !6, line: 203, baseType: !123, size: 32, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "Capability", scope: !389, file: !6, line: 206, baseType: !399, size: 32, offset: 224)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "HSA_CAPABILITY", file: !6, line: 176, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !6, line: 152, size: 32, elements: !401)
!401 = !{!402, !403}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "Value", scope: !400, file: !6, line: 154, baseType: !123, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "ui32", scope: !400, file: !6, line: 175, baseType: !404, size: 32)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !400, file: !6, line: 155, size: 32, elements: !405)
!405 = !{!406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "HotPluggable", scope: !404, file: !6, line: 157, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "HSAMMUPresent", scope: !404, file: !6, line: 159, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "SharedWithGraphics", scope: !404, file: !6, line: 161, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "QueueSizePowerOfTwo", scope: !404, file: !6, line: 163, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "QueueSize32bit", scope: !404, file: !6, line: 164, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "QueueIdleEvent", scope: !404, file: !6, line: 165, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "VALimit", scope: !404, file: !6, line: 166, baseType: !7, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "WatchPointsSupported", scope: !404, file: !6, line: 168, baseType: !7, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "WatchPointsTotalBits", scope: !404, file: !6, line: 169, baseType: !7, size: 4, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "DoorbellType", scope: !404, file: !6, line: 171, baseType: !7, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !404, file: !6, line: 174, baseType: !7, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "MaxWavesPerSIMD", scope: !389, file: !6, line: 208, baseType: !123, size: 32, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "LDSSizeInKB", scope: !389, file: !6, line: 210, baseType: !123, size: 32, offset: 288)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "GDSSizeInKB", scope: !389, file: !6, line: 211, baseType: !123, size: 32, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "WaveFrontSize", scope: !389, file: !6, line: 213, baseType: !123, size: 32, offset: 352)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "NumShaderBanks", scope: !389, file: !6, line: 216, baseType: !123, size: 32, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "NumArrays", scope: !389, file: !6, line: 219, baseType: !123, size: 32, offset: 416)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "NumCUPerArray", scope: !389, file: !6, line: 220, baseType: !123, size: 32, offset: 448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "NumSIMDPerCU", scope: !389, file: !6, line: 221, baseType: !123, size: 32, offset: 480)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "MaxSlotsScratchCU", scope: !389, file: !6, line: 223, baseType: !123, size: 32, offset: 512)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "EngineId", scope: !389, file: !6, line: 226, baseType: !123, size: 32, offset: 544)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "VendorId", scope: !389, file: !6, line: 228, baseType: !428, size: 16, offset: 576)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "HSAuint16", file: !6, line: 63, baseType: !63)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "DeviceId", scope: !389, file: !6, line: 229, baseType: !428, size: 16, offset: 592)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "LocationId", scope: !389, file: !6, line: 231, baseType: !123, size: 32, offset: 608)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "LocalMemSize", scope: !389, file: !6, line: 233, baseType: !432, size: 64, offset: 640)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "HSAuint64", file: !6, line: 67, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !60, line: 27, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !62, line: 45, baseType: !435)
!435 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "MaxEngineClockMhzFCompute", scope: !389, file: !6, line: 234, baseType: !123, size: 32, offset: 704)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "MaxEngineClockMhzCCompute", scope: !389, file: !6, line: 235, baseType: !123, size: 32, offset: 736)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "MarketingName", scope: !389, file: !6, line: 237, baseType: !439, size: 2048, offset: 768)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 2048, elements: !440)
!440 = !{!441}
!441 = !DISubrange(count: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !384, file: !3, line: 45, baseType: !443, size: 64, offset: 2880)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "HsaMemoryProperties", file: !6, line: 294, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_HsaMemoryProperties", file: !6, line: 275, size: 256, elements: !446)
!446 = !{!447, !449, !458, !469, !470, !471}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "HeapType", scope: !445, file: !6, line: 277, baseType: !448, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "HSA_HEAPTYPE", file: !6, line: 255, baseType: !29)
!449 = !DIDerivedType(tag: DW_TAG_member, scope: !445, file: !6, line: 278, baseType: !450, size: 64, offset: 32)
!450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !6, line: 278, size: 64, elements: !451)
!451 = !{!452, !453}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "SizeInBytes", scope: !450, file: !6, line: 280, baseType: !432, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ui32", scope: !450, file: !6, line: 285, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !450, file: !6, line: 281, size: 64, elements: !455)
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "SizeInBytesLow", scope: !454, file: !6, line: 283, baseType: !123, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "SizeInBytesHigh", scope: !454, file: !6, line: 284, baseType: !123, size: 32, offset: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !445, file: !6, line: 287, baseType: !459, size: 32, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "HSA_MEMORYPROPERTY", file: !6, line: 267, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !6, line: 257, size: 32, elements: !461)
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "MemoryProperty", scope: !460, file: !6, line: 259, baseType: !123, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "ui32", scope: !460, file: !6, line: 266, baseType: !464, size: 32)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !460, file: !6, line: 260, size: 32, elements: !465)
!465 = !{!466, !467, !468}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "HotPluggable", scope: !464, file: !6, line: 262, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "NonVolatile", scope: !464, file: !6, line: 264, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !464, file: !6, line: 265, baseType: !7, size: 30, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "Width", scope: !445, file: !6, line: 289, baseType: !123, size: 32, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "MemoryClockMax", scope: !445, file: !6, line: 290, baseType: !123, size: 32, offset: 160)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "VirtualBaseAddress", scope: !445, file: !6, line: 292, baseType: !432, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !384, file: !3, line: 46, baseType: !473, size: 64, offset: 2944)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "HsaCacheProperties", file: !6, line: 330, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_HaCacheProperties", file: !6, line: 318, size: 8448, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482, !483, !484, !497}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ProcessorIdLow", scope: !475, file: !6, line: 320, baseType: !123, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "CacheLevel", scope: !475, file: !6, line: 322, baseType: !123, size: 32, offset: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "CacheSize", scope: !475, file: !6, line: 323, baseType: !123, size: 32, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "CacheLineSize", scope: !475, file: !6, line: 324, baseType: !123, size: 32, offset: 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "CacheLinesPerTag", scope: !475, file: !6, line: 325, baseType: !123, size: 32, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "CacheAssociativity", scope: !475, file: !6, line: 326, baseType: !123, size: 32, offset: 160)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "CacheLatency", scope: !475, file: !6, line: 327, baseType: !123, size: 32, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "CacheType", scope: !475, file: !6, line: 328, baseType: !485, size: 32, offset: 224)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "HsaCacheType", file: !6, line: 316, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !6, line: 305, size: 32, elements: !487)
!487 = !{!488, !489}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "Value", scope: !486, file: !6, line: 307, baseType: !123, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "ui32", scope: !486, file: !6, line: 315, baseType: !490, size: 32)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !486, file: !6, line: 308, size: 32, elements: !491)
!491 = !{!492, !493, !494, !495, !496}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !490, file: !6, line: 310, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "Instruction", scope: !490, file: !6, line: 311, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "CPU", scope: !490, file: !6, line: 312, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "HSACU", scope: !490, file: !6, line: 313, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !490, file: !6, line: 314, baseType: !7, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "SiblingMap", scope: !475, file: !6, line: 329, baseType: !498, size: 8192, offset: 256)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 8192, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !384, file: !3, line: 47, baseType: !502, size: 64, offset: 3008)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "HsaIoLinkProperties", file: !6, line: 395, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_HsaIoLinkProperties", file: !6, line: 378, size: 384, elements: !505)
!505 = !{!506, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "IoLinkType", scope: !504, file: !6, line: 380, baseType: !507, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "HSA_IOLINKTYPE", file: !6, line: 359, baseType: !47)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "VersionMajor", scope: !504, file: !6, line: 381, baseType: !123, size: 32, offset: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "VersionMinor", scope: !504, file: !6, line: 382, baseType: !123, size: 32, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "NodeFrom", scope: !504, file: !6, line: 384, baseType: !123, size: 32, offset: 96)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "NodeTo", scope: !504, file: !6, line: 385, baseType: !123, size: 32, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "Weight", scope: !504, file: !6, line: 387, baseType: !123, size: 32, offset: 160)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "MinimumLatency", scope: !504, file: !6, line: 389, baseType: !123, size: 32, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "MaximumLatency", scope: !504, file: !6, line: 390, baseType: !123, size: 32, offset: 224)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "MinimumBandwidth", scope: !504, file: !6, line: 391, baseType: !123, size: 32, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "MaximumBandwidth", scope: !504, file: !6, line: 392, baseType: !123, size: 32, offset: 288)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "RecTransferSize", scope: !504, file: !6, line: 393, baseType: !123, size: 32, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "Flags", scope: !504, file: !6, line: 394, baseType: !519, size: 32, offset: 352)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "HSA_LINKPROPERTY", file: !6, line: 375, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !6, line: 361, size: 32, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "LinkProperty", scope: !520, file: !6, line: 363, baseType: !123, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ui32", scope: !520, file: !6, line: 374, baseType: !524, size: 32)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !520, file: !6, line: 364, size: 32, elements: !525)
!525 = !{!526, !527, !528, !529, !530}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "Override", scope: !524, file: !6, line: 366, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "NonCoherent", scope: !524, file: !6, line: 369, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "NoAtomics32bit", scope: !524, file: !6, line: 371, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "NoAtomics64bit", scope: !524, file: !6, line: 372, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "Reserved", scope: !524, file: !6, line: 373, baseType: !7, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!531 = !{i32 7, !"Dwarf Version", i32 5}
!532 = !{i32 2, !"Debug Info Version", i32 3}
!533 = !{i32 1, !"wchar_size", i32 4}
!534 = !{i32 8, !"PIC Level", i32 2}
!535 = !{i32 7, !"uwtable", i32 2}
!536 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!537 = distinct !DISubprogram(name: "validate_nodeid", scope: !3, file: !3, line: 690, type: !538, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !542)
!538 = !DISubroutineType(types: !539)
!539 = !{!540, !59, !541}
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "HSAKMT_STATUS", file: !6, line: 113, baseType: !5)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!542 = !{!543, !544}
!543 = !DILocalVariable(name: "nodeid", arg: 1, scope: !537, file: !3, line: 690, type: !59)
!544 = !DILocalVariable(name: "gpu_id", arg: 2, scope: !537, file: !3, line: 690, type: !541)
!545 = !DILocation(line: 690, column: 26, scope: !537)
!546 = !DILocation(line: 690, column: 44, scope: !537)
!547 = !DILocation(line: 692, column: 9, scope: !548)
!548 = distinct !DILexicalBlock(scope: !537, file: !3, line: 692, column: 9)
!549 = !DILocation(line: 692, column: 16, scope: !548)
!550 = !DILocation(line: 692, column: 29, scope: !548)
!551 = !DILocation(line: 692, column: 33, scope: !548)
!552 = !DILocation(line: 692, column: 38, scope: !548)
!553 = !DILocation(line: 692, column: 42, scope: !548)
!554 = !DILocation(line: 692, column: 49, scope: !548)
!555 = !DILocation(line: 692, column: 52, scope: !548)
!556 = !DILocation(line: 692, column: 60, scope: !548)
!557 = !DILocation(line: 692, column: 72, scope: !548)
!558 = !DILocation(line: 692, column: 69, scope: !548)
!559 = !DILocation(line: 692, column: 9, scope: !537)
!560 = !DILocation(line: 693, column: 3, scope: !548)
!561 = !DILocation(line: 694, column: 6, scope: !562)
!562 = distinct !DILexicalBlock(scope: !537, file: !3, line: 694, column: 6)
!563 = !DILocation(line: 694, column: 6, scope: !537)
!564 = !DILocation(line: 695, column: 13, scope: !562)
!565 = !DILocation(line: 695, column: 18, scope: !562)
!566 = !DILocation(line: 695, column: 26, scope: !562)
!567 = !DILocation(line: 695, column: 4, scope: !562)
!568 = !DILocation(line: 695, column: 11, scope: !562)
!569 = !DILocation(line: 695, column: 3, scope: !562)
!570 = !DILocation(line: 697, column: 2, scope: !537)
!571 = !DILocation(line: 698, column: 1, scope: !537)
!572 = distinct !DISubprogram(name: "gpuid_to_nodeid", scope: !3, file: !3, line: 701, type: !538, scopeLine: 701, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !573)
!573 = !{!574, !575, !576}
!574 = !DILocalVariable(name: "gpu_id", arg: 1, scope: !572, file: !3, line: 701, type: !59)
!575 = !DILocalVariable(name: "node_id", arg: 2, scope: !572, file: !3, line: 701, type: !541)
!576 = !DILocalVariable(name: "node_idx", scope: !572, file: !3, line: 702, type: !433)
!577 = !DILocation(line: 701, column: 26, scope: !572)
!578 = !DILocation(line: 701, column: 44, scope: !572)
!579 = !DILocation(line: 702, column: 2, scope: !572)
!580 = !DILocation(line: 702, column: 11, scope: !572)
!581 = !DILocation(line: 703, column: 15, scope: !582)
!582 = distinct !DILexicalBlock(scope: !572, file: !3, line: 703, column: 2)
!583 = !DILocation(line: 703, column: 6, scope: !582)
!584 = !DILocation(line: 703, column: 20, scope: !585)
!585 = distinct !DILexicalBlock(scope: !582, file: !3, line: 703, column: 2)
!586 = !DILocation(line: 703, column: 31, scope: !585)
!587 = !DILocation(line: 703, column: 39, scope: !585)
!588 = !DILocation(line: 703, column: 29, scope: !585)
!589 = !DILocation(line: 703, column: 2, scope: !582)
!590 = !DILocation(line: 704, column: 7, scope: !591)
!591 = distinct !DILexicalBlock(scope: !592, file: !3, line: 704, column: 7)
!592 = distinct !DILexicalBlock(scope: !585, file: !3, line: 703, column: 60)
!593 = !DILocation(line: 704, column: 12, scope: !591)
!594 = !DILocation(line: 704, column: 22, scope: !591)
!595 = !DILocation(line: 704, column: 32, scope: !591)
!596 = !DILocation(line: 704, column: 29, scope: !591)
!597 = !DILocation(line: 704, column: 7, scope: !592)
!598 = !DILocation(line: 705, column: 15, scope: !599)
!599 = distinct !DILexicalBlock(scope: !591, file: !3, line: 704, column: 39)
!600 = !DILocation(line: 705, column: 5, scope: !599)
!601 = !DILocation(line: 705, column: 13, scope: !599)
!602 = !DILocation(line: 706, column: 4, scope: !599)
!603 = !DILocation(line: 708, column: 2, scope: !592)
!604 = !DILocation(line: 703, column: 57, scope: !585)
!605 = !DILocation(line: 703, column: 2, scope: !585)
!606 = distinct !{!606, !589, !607, !608}
!607 = !DILocation(line: 708, column: 2, scope: !582)
!608 = !{!"llvm.loop.mustprogress"}
!609 = !DILocation(line: 710, column: 2, scope: !572)
!610 = !DILocation(line: 712, column: 1, scope: !572)
!611 = distinct !DISubprogram(name: "hsaKmtAcquireSystemProperties", scope: !3, file: !3, line: 716, type: !612, scopeLine: 719, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !614)
!612 = !DISubroutineType(types: !613)
!613 = !{!540, !118}
!614 = !{!615, !616, !617}
!615 = !DILocalVariable(name: "SystemProperties", arg: 1, scope: !611, file: !3, line: 717, type: !118)
!616 = !DILocalVariable(name: "err", scope: !611, file: !3, line: 720, type: !540)
!617 = !DILabel(scope: !611, name: "out", file: !3, line: 737)
!618 = !DILocation(line: 717, column: 27, scope: !611)
!619 = !DILocation(line: 720, column: 2, scope: !611)
!620 = !DILocation(line: 720, column: 16, scope: !611)
!621 = !DILocation(line: 721, column: 2, scope: !611)
!622 = !DILocation(line: 721, column: 2, scope: !623)
!623 = distinct !DILexicalBlock(scope: !624, file: !3, line: 721, column: 2)
!624 = distinct !DILexicalBlock(scope: !611, file: !3, line: 721, column: 2)
!625 = !DILocation(line: 721, column: 2, scope: !624)
!626 = !DILocation(line: 723, column: 7, scope: !627)
!627 = distinct !DILexicalBlock(scope: !611, file: !3, line: 723, column: 6)
!628 = !DILocation(line: 723, column: 6, scope: !611)
!629 = !DILocation(line: 724, column: 4, scope: !627)
!630 = !DILocation(line: 726, column: 2, scope: !611)
!631 = !DILocation(line: 728, column: 8, scope: !611)
!632 = !DILocation(line: 728, column: 6, scope: !611)
!633 = !DILocation(line: 729, column: 6, scope: !634)
!634 = distinct !DILexicalBlock(scope: !611, file: !3, line: 729, column: 6)
!635 = !DILocation(line: 729, column: 10, scope: !634)
!636 = !DILocation(line: 729, column: 6, scope: !611)
!637 = !DILocation(line: 730, column: 3, scope: !634)
!638 = !DILocation(line: 732, column: 2, scope: !639)
!639 = distinct !DILexicalBlock(scope: !640, file: !3, line: 732, column: 2)
!640 = distinct !DILexicalBlock(scope: !611, file: !3, line: 732, column: 2)
!641 = !DILocation(line: 732, column: 2, scope: !640)
!642 = !DILocation(line: 734, column: 3, scope: !611)
!643 = !DILocation(line: 734, column: 23, scope: !611)
!644 = !DILocation(line: 734, column: 22, scope: !611)
!645 = !DILocation(line: 735, column: 6, scope: !611)
!646 = !DILocation(line: 735, column: 2, scope: !611)
!647 = !DILocation(line: 737, column: 1, scope: !611)
!648 = !DILocation(line: 738, column: 2, scope: !611)
!649 = !DILocation(line: 739, column: 9, scope: !611)
!650 = !DILocation(line: 739, column: 2, scope: !611)
!651 = !DILocation(line: 740, column: 1, scope: !611)
!652 = !DISubprogram(name: "pthread_mutex_lock", scope: !653, file: !653, line: 794, type: !654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!653 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "5205981c6f80cc3dc1e81231df63d8ef")
!654 = !DISubroutineType(types: !655)
!655 = !{!656, !657}
!656 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !659, line: 72, baseType: !660)
!659 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!660 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !659, line: 67, size: 320, elements: !661)
!661 = !{!662, !682, !686}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !660, file: !659, line: 69, baseType: !663, size: 320)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !664, line: 22, size: 320, elements: !665)
!664 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!665 = !{!666, !667, !668, !669, !670, !671, !673, !674}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !663, file: !664, line: 24, baseType: !656, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !663, file: !664, line: 25, baseType: !7, size: 32, offset: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !663, file: !664, line: 26, baseType: !656, size: 32, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !663, file: !664, line: 28, baseType: !7, size: 32, offset: 96)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !663, file: !664, line: 32, baseType: !656, size: 32, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !663, file: !664, line: 34, baseType: !672, size: 16, offset: 160)
!672 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !663, file: !664, line: 35, baseType: !672, size: 16, offset: 176)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !663, file: !664, line: 36, baseType: !675, size: 128, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !676, line: 55, baseType: !677)
!676 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !676, line: 51, size: 128, elements: !678)
!678 = !{!679, !681}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !677, file: !676, line: 53, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !677, file: !676, line: 54, baseType: !680, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !660, file: !659, line: 70, baseType: !683, size: 320)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 320, elements: !684)
!684 = !{!685}
!685 = !DISubrange(count: 40)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !660, file: !659, line: 71, baseType: !687, size: 64)
!687 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!688 = distinct !DISubprogram(name: "topology_take_snapshot", scope: !3, file: !3, line: 522, type: !689, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !691)
!689 = !DISubroutineType(types: !690)
!690 = !{!540}
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!692 = !DILocalVariable(name: "gen_start", scope: !688, file: !3, line: 524, type: !59)
!693 = !DILocalVariable(name: "gen_end", scope: !688, file: !3, line: 524, type: !59)
!694 = !DILocalVariable(name: "i", scope: !688, file: !3, line: 524, type: !59)
!695 = !DILocalVariable(name: "j", scope: !688, file: !3, line: 524, type: !59)
!696 = !DILocalVariable(name: "mem_id", scope: !688, file: !3, line: 524, type: !59)
!697 = !DILocalVariable(name: "cache_id", scope: !688, file: !3, line: 524, type: !59)
!698 = !DILocalVariable(name: "link_id", scope: !688, file: !3, line: 524, type: !59)
!699 = !DILocalVariable(name: "sys_props", scope: !688, file: !3, line: 525, type: !119)
!700 = !DILocalVariable(name: "temp_nodes", scope: !688, file: !3, line: 526, type: !382)
!701 = !DILocalVariable(name: "ret", scope: !688, file: !3, line: 527, type: !540)
!702 = !DILabel(scope: !688, name: "retry", file: !3, line: 529)
!703 = !DILabel(scope: !688, name: "err", file: !3, line: 649)
!704 = !DILocation(line: 524, column: 2, scope: !688)
!705 = !DILocation(line: 524, column: 11, scope: !688)
!706 = !DILocation(line: 524, column: 22, scope: !688)
!707 = !DILocation(line: 524, column: 31, scope: !688)
!708 = !DILocation(line: 524, column: 34, scope: !688)
!709 = !DILocation(line: 524, column: 37, scope: !688)
!710 = !DILocation(line: 524, column: 45, scope: !688)
!711 = !DILocation(line: 524, column: 55, scope: !688)
!712 = !DILocation(line: 525, column: 2, scope: !688)
!713 = !DILocation(line: 525, column: 22, scope: !688)
!714 = !DILocation(line: 526, column: 2, scope: !688)
!715 = !DILocation(line: 526, column: 10, scope: !688)
!716 = !DILocation(line: 527, column: 2, scope: !688)
!717 = !DILocation(line: 527, column: 16, scope: !688)
!718 = !DILocation(line: 529, column: 1, scope: !688)
!719 = !DILocation(line: 530, column: 8, scope: !688)
!720 = !DILocation(line: 530, column: 6, scope: !688)
!721 = !DILocation(line: 531, column: 6, scope: !722)
!722 = distinct !DILexicalBlock(scope: !688, file: !3, line: 531, column: 6)
!723 = !DILocation(line: 531, column: 10, scope: !722)
!724 = !DILocation(line: 531, column: 6, scope: !688)
!725 = !DILocation(line: 532, column: 10, scope: !722)
!726 = !DILocation(line: 532, column: 3, scope: !722)
!727 = !DILocation(line: 533, column: 8, scope: !688)
!728 = !DILocation(line: 533, column: 6, scope: !688)
!729 = !DILocation(line: 534, column: 6, scope: !730)
!730 = distinct !DILexicalBlock(scope: !688, file: !3, line: 534, column: 6)
!731 = !DILocation(line: 534, column: 10, scope: !730)
!732 = !DILocation(line: 534, column: 6, scope: !688)
!733 = !DILocation(line: 535, column: 10, scope: !730)
!734 = !DILocation(line: 535, column: 3, scope: !730)
!735 = !DILocation(line: 536, column: 15, scope: !736)
!736 = distinct !DILexicalBlock(scope: !688, file: !3, line: 536, column: 5)
!737 = !DILocation(line: 536, column: 24, scope: !736)
!738 = !DILocation(line: 536, column: 5, scope: !688)
!739 = !DILocation(line: 537, column: 33, scope: !740)
!740 = distinct !DILexicalBlock(scope: !736, file: !3, line: 536, column: 29)
!741 = !DILocation(line: 537, column: 23, scope: !740)
!742 = !DILocation(line: 537, column: 42, scope: !740)
!743 = !DILocation(line: 537, column: 16, scope: !740)
!744 = !DILocation(line: 537, column: 14, scope: !740)
!745 = !DILocation(line: 538, column: 8, scope: !746)
!746 = distinct !DILexicalBlock(scope: !740, file: !3, line: 538, column: 7)
!747 = !DILocation(line: 538, column: 7, scope: !740)
!748 = !DILocation(line: 539, column: 4, scope: !746)
!749 = !DILocation(line: 540, column: 10, scope: !750)
!750 = distinct !DILexicalBlock(scope: !740, file: !3, line: 540, column: 3)
!751 = !DILocation(line: 540, column: 8, scope: !750)
!752 = !DILocation(line: 540, column: 15, scope: !753)
!753 = distinct !DILexicalBlock(scope: !750, file: !3, line: 540, column: 3)
!754 = !DILocation(line: 540, column: 29, scope: !753)
!755 = !DILocation(line: 540, column: 17, scope: !753)
!756 = !DILocation(line: 540, column: 3, scope: !750)
!757 = !DILocation(line: 541, column: 40, scope: !758)
!758 = distinct !DILexicalBlock(scope: !753, file: !3, line: 540, column: 44)
!759 = !DILocation(line: 542, column: 7, scope: !758)
!760 = !DILocation(line: 542, column: 18, scope: !758)
!761 = !DILocation(line: 542, column: 21, scope: !758)
!762 = !DILocation(line: 543, column: 7, scope: !758)
!763 = !DILocation(line: 543, column: 18, scope: !758)
!764 = !DILocation(line: 543, column: 21, scope: !758)
!765 = !DILocation(line: 541, column: 10, scope: !758)
!766 = !DILocation(line: 541, column: 8, scope: !758)
!767 = !DILocation(line: 544, column: 8, scope: !768)
!768 = distinct !DILexicalBlock(scope: !758, file: !3, line: 544, column: 8)
!769 = !DILocation(line: 544, column: 12, scope: !768)
!770 = !DILocation(line: 544, column: 8, scope: !758)
!771 = !DILocation(line: 545, column: 11, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !3, line: 545, column: 5)
!773 = distinct !DILexicalBlock(scope: !768, file: !3, line: 544, column: 38)
!774 = !DILocation(line: 545, column: 10, scope: !772)
!775 = !DILocation(line: 545, column: 15, scope: !776)
!776 = distinct !DILexicalBlock(scope: !772, file: !3, line: 545, column: 5)
!777 = !DILocation(line: 545, column: 19, scope: !776)
!778 = !DILocation(line: 545, column: 17, scope: !776)
!779 = !DILocation(line: 545, column: 5, scope: !772)
!780 = !DILocation(line: 546, column: 17, scope: !776)
!781 = !DILocation(line: 546, column: 28, scope: !776)
!782 = !DILocation(line: 546, column: 6, scope: !776)
!783 = !DILocation(line: 545, column: 23, scope: !776)
!784 = !DILocation(line: 545, column: 5, scope: !776)
!785 = distinct !{!785, !779, !786, !608}
!786 = !DILocation(line: 546, column: 30, scope: !772)
!787 = !DILocation(line: 547, column: 10, scope: !773)
!788 = !DILocation(line: 547, column: 5, scope: !773)
!789 = !DILocation(line: 548, column: 5, scope: !773)
!790 = !DILocation(line: 550, column: 8, scope: !791)
!791 = distinct !DILexicalBlock(scope: !758, file: !3, line: 550, column: 8)
!792 = !DILocation(line: 550, column: 19, scope: !791)
!793 = !DILocation(line: 550, column: 22, scope: !791)
!794 = !DILocation(line: 550, column: 27, scope: !791)
!795 = !DILocation(line: 550, column: 8, scope: !758)
!796 = !DILocation(line: 551, column: 32, scope: !797)
!797 = distinct !DILexicalBlock(scope: !791, file: !3, line: 550, column: 43)
!798 = !DILocation(line: 551, column: 43, scope: !797)
!799 = !DILocation(line: 551, column: 46, scope: !797)
!800 = !DILocation(line: 551, column: 51, scope: !797)
!801 = !DILocation(line: 551, column: 66, scope: !797)
!802 = !DILocation(line: 551, column: 25, scope: !797)
!803 = !DILocation(line: 551, column: 5, scope: !797)
!804 = !DILocation(line: 551, column: 16, scope: !797)
!805 = !DILocation(line: 551, column: 19, scope: !797)
!806 = !DILocation(line: 551, column: 23, scope: !797)
!807 = !DILocation(line: 552, column: 10, scope: !808)
!808 = distinct !DILexicalBlock(scope: !797, file: !3, line: 552, column: 9)
!809 = !DILocation(line: 552, column: 21, scope: !808)
!810 = !DILocation(line: 552, column: 24, scope: !808)
!811 = !DILocation(line: 552, column: 9, scope: !797)
!812 = !DILocation(line: 553, column: 10, scope: !813)
!813 = distinct !DILexicalBlock(scope: !808, file: !3, line: 552, column: 29)
!814 = !DILocation(line: 554, column: 12, scope: !815)
!815 = distinct !DILexicalBlock(scope: !813, file: !3, line: 554, column: 6)
!816 = !DILocation(line: 554, column: 11, scope: !815)
!817 = !DILocation(line: 554, column: 16, scope: !818)
!818 = distinct !DILexicalBlock(scope: !815, file: !3, line: 554, column: 6)
!819 = !DILocation(line: 554, column: 21, scope: !818)
!820 = !DILocation(line: 554, column: 18, scope: !818)
!821 = !DILocation(line: 554, column: 6, scope: !815)
!822 = !DILocation(line: 555, column: 18, scope: !818)
!823 = !DILocation(line: 555, column: 29, scope: !818)
!824 = !DILocation(line: 555, column: 7, scope: !818)
!825 = !DILocation(line: 554, column: 25, scope: !818)
!826 = !DILocation(line: 554, column: 6, scope: !818)
!827 = distinct !{!827, !821, !828, !608}
!828 = !DILocation(line: 555, column: 31, scope: !815)
!829 = !DILocation(line: 556, column: 11, scope: !813)
!830 = !DILocation(line: 556, column: 6, scope: !813)
!831 = !DILocation(line: 557, column: 6, scope: !813)
!832 = !DILocation(line: 559, column: 17, scope: !833)
!833 = distinct !DILexicalBlock(scope: !797, file: !3, line: 559, column: 5)
!834 = !DILocation(line: 559, column: 10, scope: !833)
!835 = !DILocation(line: 559, column: 22, scope: !836)
!836 = distinct !DILexicalBlock(scope: !833, file: !3, line: 559, column: 5)
!837 = !DILocation(line: 559, column: 31, scope: !836)
!838 = !DILocation(line: 559, column: 42, scope: !836)
!839 = !DILocation(line: 559, column: 45, scope: !836)
!840 = !DILocation(line: 559, column: 50, scope: !836)
!841 = !DILocation(line: 559, column: 29, scope: !836)
!842 = !DILocation(line: 559, column: 5, scope: !833)
!843 = !DILocation(line: 560, column: 41, scope: !844)
!844 = distinct !DILexicalBlock(scope: !836, file: !3, line: 559, column: 76)
!845 = !DILocation(line: 560, column: 44, scope: !844)
!846 = !DILocation(line: 560, column: 53, scope: !844)
!847 = !DILocation(line: 560, column: 64, scope: !844)
!848 = !DILocation(line: 560, column: 67, scope: !844)
!849 = !DILocation(line: 560, column: 71, scope: !844)
!850 = !DILocation(line: 560, column: 12, scope: !844)
!851 = !DILocation(line: 560, column: 10, scope: !844)
!852 = !DILocation(line: 561, column: 10, scope: !853)
!853 = distinct !DILexicalBlock(scope: !844, file: !3, line: 561, column: 10)
!854 = !DILocation(line: 561, column: 14, scope: !853)
!855 = !DILocation(line: 561, column: 10, scope: !844)
!856 = !DILocation(line: 562, column: 13, scope: !857)
!857 = distinct !DILexicalBlock(scope: !858, file: !3, line: 562, column: 7)
!858 = distinct !DILexicalBlock(scope: !853, file: !3, line: 561, column: 40)
!859 = !DILocation(line: 562, column: 12, scope: !857)
!860 = !DILocation(line: 562, column: 17, scope: !861)
!861 = distinct !DILexicalBlock(scope: !857, file: !3, line: 562, column: 7)
!862 = !DILocation(line: 562, column: 22, scope: !861)
!863 = !DILocation(line: 562, column: 19, scope: !861)
!864 = !DILocation(line: 562, column: 7, scope: !857)
!865 = !DILocation(line: 563, column: 19, scope: !861)
!866 = !DILocation(line: 563, column: 30, scope: !861)
!867 = !DILocation(line: 563, column: 8, scope: !861)
!868 = !DILocation(line: 562, column: 26, scope: !861)
!869 = !DILocation(line: 562, column: 7, scope: !861)
!870 = distinct !{!870, !864, !871, !608}
!871 = !DILocation(line: 563, column: 32, scope: !857)
!872 = !DILocation(line: 564, column: 12, scope: !858)
!873 = !DILocation(line: 564, column: 7, scope: !858)
!874 = !DILocation(line: 565, column: 7, scope: !858)
!875 = !DILocation(line: 567, column: 5, scope: !844)
!876 = !DILocation(line: 559, column: 72, scope: !836)
!877 = !DILocation(line: 559, column: 5, scope: !836)
!878 = distinct !{!878, !842, !879, !608}
!879 = !DILocation(line: 567, column: 5, scope: !833)
!880 = !DILocation(line: 568, column: 4, scope: !797)
!881 = !DILocation(line: 570, column: 8, scope: !882)
!882 = distinct !DILexicalBlock(scope: !758, file: !3, line: 570, column: 8)
!883 = !DILocation(line: 570, column: 19, scope: !882)
!884 = !DILocation(line: 570, column: 22, scope: !882)
!885 = !DILocation(line: 570, column: 27, scope: !882)
!886 = !DILocation(line: 570, column: 8, scope: !758)
!887 = !DILocation(line: 571, column: 34, scope: !888)
!888 = distinct !DILexicalBlock(scope: !882, file: !3, line: 570, column: 38)
!889 = !DILocation(line: 571, column: 45, scope: !888)
!890 = !DILocation(line: 571, column: 48, scope: !888)
!891 = !DILocation(line: 571, column: 53, scope: !888)
!892 = !DILocation(line: 571, column: 63, scope: !888)
!893 = !DILocation(line: 571, column: 27, scope: !888)
!894 = !DILocation(line: 571, column: 5, scope: !888)
!895 = !DILocation(line: 571, column: 16, scope: !888)
!896 = !DILocation(line: 571, column: 19, scope: !888)
!897 = !DILocation(line: 571, column: 25, scope: !888)
!898 = !DILocation(line: 572, column: 10, scope: !899)
!899 = distinct !DILexicalBlock(scope: !888, file: !3, line: 572, column: 9)
!900 = !DILocation(line: 572, column: 21, scope: !899)
!901 = !DILocation(line: 572, column: 24, scope: !899)
!902 = !DILocation(line: 572, column: 9, scope: !888)
!903 = !DILocation(line: 573, column: 10, scope: !904)
!904 = distinct !DILexicalBlock(scope: !899, file: !3, line: 572, column: 31)
!905 = !DILocation(line: 574, column: 12, scope: !906)
!906 = distinct !DILexicalBlock(scope: !904, file: !3, line: 574, column: 6)
!907 = !DILocation(line: 574, column: 11, scope: !906)
!908 = !DILocation(line: 574, column: 16, scope: !909)
!909 = distinct !DILexicalBlock(scope: !906, file: !3, line: 574, column: 6)
!910 = !DILocation(line: 574, column: 21, scope: !909)
!911 = !DILocation(line: 574, column: 18, scope: !909)
!912 = !DILocation(line: 574, column: 6, scope: !906)
!913 = !DILocation(line: 575, column: 18, scope: !909)
!914 = !DILocation(line: 575, column: 29, scope: !909)
!915 = !DILocation(line: 575, column: 7, scope: !909)
!916 = !DILocation(line: 574, column: 25, scope: !909)
!917 = !DILocation(line: 574, column: 6, scope: !909)
!918 = distinct !{!918, !912, !919, !608}
!919 = !DILocation(line: 575, column: 31, scope: !906)
!920 = !DILocation(line: 576, column: 11, scope: !904)
!921 = !DILocation(line: 576, column: 6, scope: !904)
!922 = !DILocation(line: 577, column: 6, scope: !904)
!923 = !DILocation(line: 579, column: 19, scope: !924)
!924 = distinct !DILexicalBlock(scope: !888, file: !3, line: 579, column: 5)
!925 = !DILocation(line: 579, column: 10, scope: !924)
!926 = !DILocation(line: 579, column: 24, scope: !927)
!927 = distinct !DILexicalBlock(scope: !924, file: !3, line: 579, column: 5)
!928 = !DILocation(line: 579, column: 35, scope: !927)
!929 = !DILocation(line: 579, column: 46, scope: !927)
!930 = !DILocation(line: 579, column: 49, scope: !927)
!931 = !DILocation(line: 579, column: 54, scope: !927)
!932 = !DILocation(line: 579, column: 33, scope: !927)
!933 = !DILocation(line: 579, column: 5, scope: !924)
!934 = !DILocation(line: 580, column: 43, scope: !935)
!935 = distinct !DILexicalBlock(scope: !927, file: !3, line: 579, column: 77)
!936 = !DILocation(line: 580, column: 46, scope: !935)
!937 = !DILocation(line: 580, column: 57, scope: !935)
!938 = !DILocation(line: 580, column: 68, scope: !935)
!939 = !DILocation(line: 580, column: 71, scope: !935)
!940 = !DILocation(line: 580, column: 77, scope: !935)
!941 = !DILocation(line: 580, column: 12, scope: !935)
!942 = !DILocation(line: 580, column: 10, scope: !935)
!943 = !DILocation(line: 581, column: 10, scope: !944)
!944 = distinct !DILexicalBlock(scope: !935, file: !3, line: 581, column: 10)
!945 = !DILocation(line: 581, column: 14, scope: !944)
!946 = !DILocation(line: 581, column: 10, scope: !935)
!947 = !DILocation(line: 582, column: 13, scope: !948)
!948 = distinct !DILexicalBlock(scope: !949, file: !3, line: 582, column: 7)
!949 = distinct !DILexicalBlock(scope: !944, file: !3, line: 581, column: 40)
!950 = !DILocation(line: 582, column: 12, scope: !948)
!951 = !DILocation(line: 582, column: 17, scope: !952)
!952 = distinct !DILexicalBlock(scope: !948, file: !3, line: 582, column: 7)
!953 = !DILocation(line: 582, column: 22, scope: !952)
!954 = !DILocation(line: 582, column: 19, scope: !952)
!955 = !DILocation(line: 582, column: 7, scope: !948)
!956 = !DILocation(line: 583, column: 19, scope: !952)
!957 = !DILocation(line: 583, column: 30, scope: !952)
!958 = !DILocation(line: 583, column: 8, scope: !952)
!959 = !DILocation(line: 582, column: 26, scope: !952)
!960 = !DILocation(line: 582, column: 7, scope: !952)
!961 = distinct !{!961, !955, !962, !608}
!962 = !DILocation(line: 583, column: 32, scope: !948)
!963 = !DILocation(line: 584, column: 12, scope: !949)
!964 = !DILocation(line: 584, column: 7, scope: !949)
!965 = !DILocation(line: 585, column: 7, scope: !949)
!966 = !DILocation(line: 587, column: 5, scope: !935)
!967 = !DILocation(line: 579, column: 73, scope: !927)
!968 = !DILocation(line: 579, column: 5, scope: !927)
!969 = distinct !{!969, !933, !970, !608}
!970 = !DILocation(line: 587, column: 5, scope: !924)
!971 = !DILocation(line: 588, column: 4, scope: !888)
!972 = !DILocation(line: 590, column: 8, scope: !973)
!973 = distinct !DILexicalBlock(scope: !758, file: !3, line: 590, column: 8)
!974 = !DILocation(line: 590, column: 19, scope: !973)
!975 = !DILocation(line: 590, column: 22, scope: !973)
!976 = !DILocation(line: 590, column: 27, scope: !973)
!977 = !DILocation(line: 590, column: 8, scope: !758)
!978 = !DILocation(line: 591, column: 33, scope: !979)
!979 = distinct !DILexicalBlock(scope: !973, file: !3, line: 590, column: 39)
!980 = !DILocation(line: 591, column: 44, scope: !979)
!981 = !DILocation(line: 591, column: 47, scope: !979)
!982 = !DILocation(line: 591, column: 52, scope: !979)
!983 = !DILocation(line: 591, column: 63, scope: !979)
!984 = !DILocation(line: 591, column: 26, scope: !979)
!985 = !DILocation(line: 591, column: 5, scope: !979)
!986 = !DILocation(line: 591, column: 16, scope: !979)
!987 = !DILocation(line: 591, column: 19, scope: !979)
!988 = !DILocation(line: 591, column: 24, scope: !979)
!989 = !DILocation(line: 592, column: 10, scope: !990)
!990 = distinct !DILexicalBlock(scope: !979, file: !3, line: 592, column: 9)
!991 = !DILocation(line: 592, column: 21, scope: !990)
!992 = !DILocation(line: 592, column: 24, scope: !990)
!993 = !DILocation(line: 592, column: 9, scope: !979)
!994 = !DILocation(line: 593, column: 10, scope: !995)
!995 = distinct !DILexicalBlock(scope: !990, file: !3, line: 592, column: 30)
!996 = !DILocation(line: 594, column: 12, scope: !997)
!997 = distinct !DILexicalBlock(scope: !995, file: !3, line: 594, column: 6)
!998 = !DILocation(line: 594, column: 11, scope: !997)
!999 = !DILocation(line: 594, column: 16, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !997, file: !3, line: 594, column: 6)
!1001 = !DILocation(line: 594, column: 21, scope: !1000)
!1002 = !DILocation(line: 594, column: 18, scope: !1000)
!1003 = !DILocation(line: 594, column: 6, scope: !997)
!1004 = !DILocation(line: 595, column: 18, scope: !1000)
!1005 = !DILocation(line: 595, column: 29, scope: !1000)
!1006 = !DILocation(line: 595, column: 7, scope: !1000)
!1007 = !DILocation(line: 594, column: 25, scope: !1000)
!1008 = !DILocation(line: 594, column: 6, scope: !1000)
!1009 = distinct !{!1009, !1003, !1010, !608}
!1010 = !DILocation(line: 595, column: 31, scope: !997)
!1011 = !DILocation(line: 596, column: 11, scope: !995)
!1012 = !DILocation(line: 596, column: 6, scope: !995)
!1013 = !DILocation(line: 597, column: 6, scope: !995)
!1014 = !DILocation(line: 599, column: 18, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !979, file: !3, line: 599, column: 5)
!1016 = !DILocation(line: 599, column: 10, scope: !1015)
!1017 = !DILocation(line: 599, column: 23, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 599, column: 5)
!1019 = !DILocation(line: 599, column: 33, scope: !1018)
!1020 = !DILocation(line: 599, column: 44, scope: !1018)
!1021 = !DILocation(line: 599, column: 47, scope: !1018)
!1022 = !DILocation(line: 599, column: 52, scope: !1018)
!1023 = !DILocation(line: 599, column: 31, scope: !1018)
!1024 = !DILocation(line: 599, column: 5, scope: !1015)
!1025 = !DILocation(line: 600, column: 44, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 599, column: 75)
!1027 = !DILocation(line: 600, column: 47, scope: !1026)
!1028 = !DILocation(line: 600, column: 57, scope: !1026)
!1029 = !DILocation(line: 600, column: 68, scope: !1026)
!1030 = !DILocation(line: 600, column: 71, scope: !1026)
!1031 = !DILocation(line: 600, column: 76, scope: !1026)
!1032 = !DILocation(line: 600, column: 12, scope: !1026)
!1033 = !DILocation(line: 600, column: 10, scope: !1026)
!1034 = !DILocation(line: 601, column: 10, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 601, column: 10)
!1036 = !DILocation(line: 601, column: 14, scope: !1035)
!1037 = !DILocation(line: 601, column: 10, scope: !1026)
!1038 = !DILocation(line: 602, column: 13, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 602, column: 7)
!1040 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 601, column: 40)
!1041 = !DILocation(line: 602, column: 12, scope: !1039)
!1042 = !DILocation(line: 602, column: 17, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 602, column: 7)
!1044 = !DILocation(line: 602, column: 22, scope: !1043)
!1045 = !DILocation(line: 602, column: 19, scope: !1043)
!1046 = !DILocation(line: 602, column: 7, scope: !1039)
!1047 = !DILocation(line: 603, column: 19, scope: !1043)
!1048 = !DILocation(line: 603, column: 30, scope: !1043)
!1049 = !DILocation(line: 603, column: 8, scope: !1043)
!1050 = !DILocation(line: 602, column: 26, scope: !1043)
!1051 = !DILocation(line: 602, column: 7, scope: !1043)
!1052 = distinct !{!1052, !1046, !1053, !608}
!1053 = !DILocation(line: 603, column: 32, scope: !1039)
!1054 = !DILocation(line: 604, column: 12, scope: !1040)
!1055 = !DILocation(line: 604, column: 7, scope: !1040)
!1056 = !DILocation(line: 605, column: 7, scope: !1040)
!1057 = !DILocation(line: 607, column: 5, scope: !1026)
!1058 = !DILocation(line: 599, column: 71, scope: !1018)
!1059 = !DILocation(line: 599, column: 5, scope: !1018)
!1060 = distinct !{!1060, !1024, !1061, !608}
!1061 = !DILocation(line: 607, column: 5, scope: !1015)
!1062 = !DILocation(line: 608, column: 4, scope: !979)
!1063 = !DILocation(line: 610, column: 3, scope: !758)
!1064 = !DILocation(line: 540, column: 40, scope: !753)
!1065 = !DILocation(line: 540, column: 3, scope: !753)
!1066 = distinct !{!1066, !756, !1067, !608}
!1067 = !DILocation(line: 610, column: 3, scope: !750)
!1068 = !DILocation(line: 611, column: 2, scope: !740)
!1069 = !DILocation(line: 613, column: 8, scope: !688)
!1070 = !DILocation(line: 613, column: 6, scope: !688)
!1071 = !DILocation(line: 614, column: 6, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !688, file: !3, line: 614, column: 6)
!1073 = !DILocation(line: 614, column: 10, scope: !1072)
!1074 = !DILocation(line: 614, column: 6, scope: !688)
!1075 = !DILocation(line: 615, column: 7, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 615, column: 7)
!1077 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 614, column: 36)
!1078 = !DILocation(line: 615, column: 7, scope: !1077)
!1079 = !DILocation(line: 616, column: 10, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 616, column: 4)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 615, column: 19)
!1082 = !DILocation(line: 616, column: 9, scope: !1080)
!1083 = !DILocation(line: 616, column: 14, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 616, column: 4)
!1085 = !DILocation(line: 616, column: 28, scope: !1084)
!1086 = !DILocation(line: 616, column: 16, scope: !1084)
!1087 = !DILocation(line: 616, column: 4, scope: !1080)
!1088 = !DILocation(line: 617, column: 16, scope: !1084)
!1089 = !DILocation(line: 617, column: 27, scope: !1084)
!1090 = !DILocation(line: 617, column: 5, scope: !1084)
!1091 = !DILocation(line: 616, column: 39, scope: !1084)
!1092 = !DILocation(line: 616, column: 4, scope: !1084)
!1093 = distinct !{!1093, !1087, !1094, !608}
!1094 = !DILocation(line: 617, column: 29, scope: !1080)
!1095 = !DILocation(line: 618, column: 9, scope: !1081)
!1096 = !DILocation(line: 618, column: 4, scope: !1081)
!1097 = !DILocation(line: 619, column: 3, scope: !1081)
!1098 = !DILocation(line: 620, column: 3, scope: !1077)
!1099 = !DILocation(line: 623, column: 6, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !688, file: !3, line: 623, column: 6)
!1101 = !DILocation(line: 623, column: 19, scope: !1100)
!1102 = !DILocation(line: 623, column: 16, scope: !1100)
!1103 = !DILocation(line: 623, column: 6, scope: !688)
!1104 = !DILocation(line: 624, column: 7, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 624, column: 7)
!1106 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 623, column: 28)
!1107 = !DILocation(line: 624, column: 7, scope: !1106)
!1108 = !DILocation(line: 625, column: 10, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 625, column: 4)
!1110 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 624, column: 19)
!1111 = !DILocation(line: 625, column: 9, scope: !1109)
!1112 = !DILocation(line: 625, column: 14, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 625, column: 4)
!1114 = !DILocation(line: 625, column: 28, scope: !1113)
!1115 = !DILocation(line: 625, column: 16, scope: !1113)
!1116 = !DILocation(line: 625, column: 4, scope: !1109)
!1117 = !DILocation(line: 626, column: 16, scope: !1113)
!1118 = !DILocation(line: 626, column: 27, scope: !1113)
!1119 = !DILocation(line: 626, column: 5, scope: !1113)
!1120 = !DILocation(line: 625, column: 39, scope: !1113)
!1121 = !DILocation(line: 625, column: 4, scope: !1113)
!1122 = distinct !{!1122, !1116, !1123, !608}
!1123 = !DILocation(line: 626, column: 29, scope: !1109)
!1124 = !DILocation(line: 627, column: 9, scope: !1110)
!1125 = !DILocation(line: 627, column: 4, scope: !1110)
!1126 = !DILocation(line: 628, column: 15, scope: !1110)
!1127 = !DILocation(line: 629, column: 3, scope: !1110)
!1128 = !DILocation(line: 630, column: 3, scope: !1106)
!1129 = !DILocation(line: 633, column: 7, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !688, file: !3, line: 633, column: 6)
!1131 = !DILocation(line: 633, column: 6, scope: !688)
!1132 = !DILocation(line: 634, column: 12, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 633, column: 15)
!1134 = !DILocation(line: 634, column: 10, scope: !1133)
!1135 = !DILocation(line: 635, column: 8, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 635, column: 7)
!1137 = !DILocation(line: 635, column: 7, scope: !1133)
!1138 = !DILocation(line: 636, column: 8, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 636, column: 8)
!1140 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 635, column: 16)
!1141 = !DILocation(line: 636, column: 8, scope: !1140)
!1142 = !DILocation(line: 637, column: 11, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 637, column: 5)
!1144 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 636, column: 20)
!1145 = !DILocation(line: 637, column: 10, scope: !1143)
!1146 = !DILocation(line: 637, column: 15, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 637, column: 5)
!1148 = !DILocation(line: 637, column: 29, scope: !1147)
!1149 = !DILocation(line: 637, column: 17, scope: !1147)
!1150 = !DILocation(line: 637, column: 5, scope: !1143)
!1151 = !DILocation(line: 638, column: 17, scope: !1147)
!1152 = !DILocation(line: 638, column: 28, scope: !1147)
!1153 = !DILocation(line: 638, column: 6, scope: !1147)
!1154 = !DILocation(line: 637, column: 40, scope: !1147)
!1155 = !DILocation(line: 637, column: 5, scope: !1147)
!1156 = distinct !{!1156, !1150, !1157, !608}
!1157 = !DILocation(line: 638, column: 30, scope: !1143)
!1158 = !DILocation(line: 639, column: 10, scope: !1144)
!1159 = !DILocation(line: 639, column: 5, scope: !1144)
!1160 = !DILocation(line: 640, column: 4, scope: !1144)
!1161 = !DILocation(line: 641, column: 4, scope: !1140)
!1162 = !DILocation(line: 643, column: 2, scope: !1133)
!1163 = !DILocation(line: 645, column: 3, scope: !688)
!1164 = !DILocation(line: 645, column: 12, scope: !688)
!1165 = !DILocation(line: 646, column: 6, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !688, file: !3, line: 646, column: 6)
!1167 = !DILocation(line: 646, column: 6, scope: !688)
!1168 = !DILocation(line: 647, column: 8, scope: !1166)
!1169 = !DILocation(line: 647, column: 3, scope: !1166)
!1170 = !DILocation(line: 648, column: 9, scope: !688)
!1171 = !DILocation(line: 648, column: 7, scope: !688)
!1172 = !DILocation(line: 648, column: 2, scope: !688)
!1173 = !DILocation(line: 649, column: 1, scope: !688)
!1174 = !DILocation(line: 651, column: 9, scope: !688)
!1175 = !DILocation(line: 651, column: 2, scope: !688)
!1176 = !DILocation(line: 652, column: 1, scope: !688)
!1177 = !DISubprogram(name: "__assert_fail", scope: !1178, file: !1178, line: 69, type: !1179, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1178 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!1179 = !DISubroutineType(types: !1180)
!1180 = !{null, !1181, !1181, !7, !1181}
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!1182 = !DISubprogram(name: "pthread_mutex_unlock", scope: !653, file: !653, line: 835, type: !654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1183 = distinct !DISubprogram(name: "hsaKmtReleaseSystemProperties", scope: !3, file: !3, line: 744, type: !689, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1184)
!1184 = !{!1185}
!1185 = !DILocalVariable(name: "err", scope: !1183, file: !3, line: 746, type: !540)
!1186 = !DILocation(line: 746, column: 2, scope: !1183)
!1187 = !DILocation(line: 746, column: 16, scope: !1183)
!1188 = !DILocation(line: 748, column: 2, scope: !1183)
!1189 = !DILocation(line: 748, column: 2, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 748, column: 2)
!1191 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 748, column: 2)
!1192 = !DILocation(line: 748, column: 2, scope: !1191)
!1193 = !DILocation(line: 750, column: 2, scope: !1183)
!1194 = !DILocation(line: 752, column: 8, scope: !1183)
!1195 = !DILocation(line: 752, column: 6, scope: !1183)
!1196 = !DILocation(line: 754, column: 2, scope: !1183)
!1197 = !DILocation(line: 756, column: 9, scope: !1183)
!1198 = !DILocation(line: 756, column: 2, scope: !1183)
!1199 = !DILocation(line: 757, column: 1, scope: !1183)
!1200 = distinct !DISubprogram(name: "topology_drop_snapshot", scope: !3, file: !3, line: 659, type: !689, scopeLine: 660, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1201)
!1201 = !{!1202, !1203, !1206}
!1202 = !DILocalVariable(name: "err", scope: !1200, file: !3, line: 661, type: !540)
!1203 = !DILocalVariable(name: "nodeid", scope: !1204, file: !3, line: 670, type: !433)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 669, column: 12)
!1205 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 669, column: 6)
!1206 = !DILabel(scope: !1200, name: "out", file: !3, line: 685)
!1207 = !DILocation(line: 661, column: 2, scope: !1200)
!1208 = !DILocation(line: 661, column: 16, scope: !1200)
!1209 = !DILocation(line: 663, column: 8, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 663, column: 6)
!1211 = !DILocation(line: 663, column: 7, scope: !1210)
!1212 = !DILocation(line: 663, column: 6, scope: !1210)
!1213 = !DILocation(line: 663, column: 20, scope: !1210)
!1214 = !DILocation(line: 663, column: 19, scope: !1210)
!1215 = !DILocation(line: 663, column: 18, scope: !1210)
!1216 = !DILocation(line: 663, column: 15, scope: !1210)
!1217 = !DILocation(line: 663, column: 6, scope: !1200)
!1218 = !DILocation(line: 664, column: 3, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 663, column: 26)
!1220 = !DILocation(line: 665, column: 7, scope: !1219)
!1221 = !DILocation(line: 666, column: 3, scope: !1219)
!1222 = !DILocation(line: 669, column: 6, scope: !1205)
!1223 = !DILocation(line: 669, column: 6, scope: !1200)
!1224 = !DILocation(line: 670, column: 3, scope: !1204)
!1225 = !DILocation(line: 670, column: 12, scope: !1204)
!1226 = !DILocation(line: 673, column: 15, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 673, column: 3)
!1228 = !DILocation(line: 673, column: 8, scope: !1227)
!1229 = !DILocation(line: 673, column: 20, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 673, column: 3)
!1231 = !DILocation(line: 673, column: 29, scope: !1230)
!1232 = !DILocation(line: 673, column: 37, scope: !1230)
!1233 = !DILocation(line: 673, column: 27, scope: !1230)
!1234 = !DILocation(line: 673, column: 3, scope: !1227)
!1235 = !DILocation(line: 674, column: 15, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 673, column: 57)
!1237 = !DILocation(line: 674, column: 20, scope: !1236)
!1238 = !DILocation(line: 674, column: 4, scope: !1236)
!1239 = !DILocation(line: 675, column: 3, scope: !1236)
!1240 = !DILocation(line: 673, column: 53, scope: !1230)
!1241 = !DILocation(line: 673, column: 3, scope: !1230)
!1242 = distinct !{!1242, !1234, !1243, !608}
!1243 = !DILocation(line: 675, column: 3, scope: !1227)
!1244 = !DILocation(line: 677, column: 8, scope: !1204)
!1245 = !DILocation(line: 677, column: 3, scope: !1204)
!1246 = !DILocation(line: 678, column: 8, scope: !1204)
!1247 = !DILocation(line: 679, column: 2, scope: !1205)
!1248 = !DILocation(line: 679, column: 2, scope: !1204)
!1249 = !DILocation(line: 681, column: 7, scope: !1200)
!1250 = !DILocation(line: 681, column: 2, scope: !1200)
!1251 = !DILocation(line: 682, column: 9, scope: !1200)
!1252 = !DILocation(line: 683, column: 6, scope: !1200)
!1253 = !DILocation(line: 683, column: 2, scope: !1200)
!1254 = !DILocation(line: 685, column: 1, scope: !1200)
!1255 = !DILocation(line: 686, column: 9, scope: !1200)
!1256 = !DILocation(line: 687, column: 1, scope: !1200)
!1257 = !DILocation(line: 686, column: 2, scope: !1200)
!1258 = distinct !DISubprogram(name: "hsaKmtGetNodeProperties", scope: !3, file: !3, line: 761, type: !1259, scopeLine: 765, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1262)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!540, !123, !1261}
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!1262 = !{!1263, !1264, !1265, !1266, !1267}
!1263 = !DILocalVariable(name: "NodeId", arg: 1, scope: !1258, file: !3, line: 762, type: !123)
!1264 = !DILocalVariable(name: "NodeProperties", arg: 2, scope: !1258, file: !3, line: 763, type: !1261)
!1265 = !DILocalVariable(name: "err", scope: !1258, file: !3, line: 766, type: !540)
!1266 = !DILocalVariable(name: "gpu_id", scope: !1258, file: !3, line: 767, type: !59)
!1267 = !DILabel(scope: !1258, name: "out", file: !3, line: 796)
!1268 = !DILocation(line: 762, column: 29, scope: !1258)
!1269 = !DILocation(line: 763, column: 29, scope: !1258)
!1270 = !DILocation(line: 766, column: 2, scope: !1258)
!1271 = !DILocation(line: 766, column: 16, scope: !1258)
!1272 = !DILocation(line: 767, column: 2, scope: !1258)
!1273 = !DILocation(line: 767, column: 11, scope: !1258)
!1274 = !DILocation(line: 769, column: 7, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 769, column: 6)
!1276 = !DILocation(line: 769, column: 6, scope: !1258)
!1277 = !DILocation(line: 770, column: 3, scope: !1275)
!1278 = !DILocation(line: 772, column: 2, scope: !1258)
!1279 = !DILocation(line: 772, column: 2, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 772, column: 2)
!1281 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 772, column: 2)
!1282 = !DILocation(line: 772, column: 2, scope: !1281)
!1283 = !DILocation(line: 773, column: 2, scope: !1258)
!1284 = !DILocation(line: 776, column: 6, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 776, column: 6)
!1286 = !DILocation(line: 776, column: 13, scope: !1285)
!1287 = !DILocation(line: 776, column: 6, scope: !1258)
!1288 = !DILocation(line: 777, column: 7, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 776, column: 22)
!1290 = !DILocation(line: 778, column: 3, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 778, column: 3)
!1292 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 778, column: 3)
!1293 = !DILocation(line: 778, column: 3, scope: !1292)
!1294 = !DILocation(line: 779, column: 3, scope: !1289)
!1295 = !DILocation(line: 782, column: 6, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 782, column: 6)
!1297 = !DILocation(line: 782, column: 16, scope: !1296)
!1298 = !DILocation(line: 782, column: 24, scope: !1296)
!1299 = !DILocation(line: 782, column: 13, scope: !1296)
!1300 = !DILocation(line: 782, column: 6, scope: !1258)
!1301 = !DILocation(line: 783, column: 7, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 782, column: 34)
!1303 = !DILocation(line: 784, column: 3, scope: !1302)
!1304 = !DILocation(line: 787, column: 24, scope: !1258)
!1305 = !DILocation(line: 787, column: 8, scope: !1258)
!1306 = !DILocation(line: 787, column: 6, scope: !1258)
!1307 = !DILocation(line: 788, column: 6, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 788, column: 6)
!1309 = !DILocation(line: 788, column: 10, scope: !1308)
!1310 = !DILocation(line: 788, column: 6, scope: !1258)
!1311 = !DILocation(line: 789, column: 10, scope: !1308)
!1312 = !DILocation(line: 789, column: 3, scope: !1308)
!1313 = !DILocation(line: 791, column: 3, scope: !1258)
!1314 = !DILocation(line: 791, column: 20, scope: !1258)
!1315 = !DILocation(line: 791, column: 25, scope: !1258)
!1316 = !DILocation(line: 791, column: 33, scope: !1258)
!1317 = !DILocation(line: 792, column: 2, scope: !1258)
!1318 = !DILocation(line: 792, column: 18, scope: !1258)
!1319 = !DILocation(line: 792, column: 33, scope: !1258)
!1320 = !DILocation(line: 794, column: 6, scope: !1258)
!1321 = !DILocation(line: 794, column: 2, scope: !1258)
!1322 = !DILocation(line: 796, column: 1, scope: !1258)
!1323 = !DILocation(line: 797, column: 2, scope: !1258)
!1324 = !DILocation(line: 798, column: 9, scope: !1258)
!1325 = !DILocation(line: 798, column: 2, scope: !1258)
!1326 = !DILocation(line: 799, column: 1, scope: !1258)
!1327 = distinct !DISubprogram(name: "hsaKmtGetNodeMemoryProperties", scope: !3, file: !3, line: 803, type: !1328, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1330)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!540, !123, !123, !443}
!1330 = !{!1331, !1332, !1333, !1334, !1335, !1336, !1337}
!1331 = !DILocalVariable(name: "NodeId", arg: 1, scope: !1327, file: !3, line: 804, type: !123)
!1332 = !DILocalVariable(name: "NumBanks", arg: 2, scope: !1327, file: !3, line: 805, type: !123)
!1333 = !DILocalVariable(name: "MemoryProperties", arg: 3, scope: !1327, file: !3, line: 806, type: !443)
!1334 = !DILocalVariable(name: "err", scope: !1327, file: !3, line: 809, type: !540)
!1335 = !DILocalVariable(name: "i", scope: !1327, file: !3, line: 810, type: !59)
!1336 = !DILocalVariable(name: "gpu_id", scope: !1327, file: !3, line: 810, type: !59)
!1337 = !DILabel(scope: !1327, name: "out", file: !3, line: 858)
!1338 = !DILocation(line: 804, column: 27, scope: !1327)
!1339 = !DILocation(line: 805, column: 27, scope: !1327)
!1340 = !DILocation(line: 806, column: 27, scope: !1327)
!1341 = !DILocation(line: 809, column: 2, scope: !1327)
!1342 = !DILocation(line: 809, column: 16, scope: !1327)
!1343 = !DILocation(line: 810, column: 2, scope: !1327)
!1344 = !DILocation(line: 810, column: 11, scope: !1327)
!1345 = !DILocation(line: 810, column: 14, scope: !1327)
!1346 = !DILocation(line: 812, column: 7, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 812, column: 6)
!1348 = !DILocation(line: 812, column: 6, scope: !1327)
!1349 = !DILocation(line: 813, column: 3, scope: !1347)
!1350 = !DILocation(line: 815, column: 2, scope: !1327)
!1351 = !DILocation(line: 815, column: 2, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 815, column: 2)
!1353 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 815, column: 2)
!1354 = !DILocation(line: 815, column: 2, scope: !1353)
!1355 = !DILocation(line: 816, column: 2, scope: !1327)
!1356 = !DILocation(line: 819, column: 6, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 819, column: 6)
!1358 = !DILocation(line: 819, column: 13, scope: !1357)
!1359 = !DILocation(line: 819, column: 6, scope: !1327)
!1360 = !DILocation(line: 820, column: 7, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 819, column: 22)
!1362 = !DILocation(line: 821, column: 3, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 821, column: 3)
!1364 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 821, column: 3)
!1365 = !DILocation(line: 821, column: 3, scope: !1364)
!1366 = !DILocation(line: 822, column: 3, scope: !1361)
!1367 = !DILocation(line: 826, column: 6, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 826, column: 6)
!1369 = !DILocation(line: 826, column: 16, scope: !1368)
!1370 = !DILocation(line: 826, column: 24, scope: !1368)
!1371 = !DILocation(line: 826, column: 13, scope: !1368)
!1372 = !DILocation(line: 826, column: 6, scope: !1327)
!1373 = !DILocation(line: 827, column: 7, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 826, column: 35)
!1375 = !DILocation(line: 828, column: 3, scope: !1374)
!1376 = !DILocation(line: 831, column: 24, scope: !1327)
!1377 = !DILocation(line: 831, column: 8, scope: !1327)
!1378 = !DILocation(line: 831, column: 6, scope: !1327)
!1379 = !DILocation(line: 832, column: 6, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 832, column: 6)
!1381 = !DILocation(line: 832, column: 10, scope: !1380)
!1382 = !DILocation(line: 832, column: 6, scope: !1327)
!1383 = !DILocation(line: 833, column: 10, scope: !1380)
!1384 = !DILocation(line: 833, column: 3, scope: !1380)
!1385 = !DILocation(line: 835, column: 9, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 835, column: 2)
!1387 = !DILocation(line: 835, column: 7, scope: !1386)
!1388 = !DILocation(line: 835, column: 14, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 835, column: 2)
!1390 = !DILocation(line: 835, column: 18, scope: !1389)
!1391 = !DILocation(line: 835, column: 16, scope: !1389)
!1392 = !DILocation(line: 835, column: 2, scope: !1386)
!1393 = !DILocation(line: 836, column: 3, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 836, column: 3)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 836, column: 3)
!1396 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 835, column: 72)
!1397 = !DILocation(line: 836, column: 3, scope: !1395)
!1398 = !DILocation(line: 837, column: 3, scope: !1396)
!1399 = !DILocation(line: 837, column: 20, scope: !1396)
!1400 = !DILocation(line: 837, column: 25, scope: !1396)
!1401 = !DILocation(line: 837, column: 30, scope: !1396)
!1402 = !DILocation(line: 837, column: 38, scope: !1396)
!1403 = !DILocation(line: 837, column: 42, scope: !1396)
!1404 = !DILocation(line: 838, column: 2, scope: !1396)
!1405 = !DILocation(line: 835, column: 68, scope: !1389)
!1406 = !DILocation(line: 835, column: 2, scope: !1389)
!1407 = distinct !{!1407, !1392, !1408, !608}
!1408 = !DILocation(line: 838, column: 2, scope: !1386)
!1409 = !DILocation(line: 841, column: 6, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 841, column: 6)
!1411 = !DILocation(line: 841, column: 10, scope: !1410)
!1412 = !DILocation(line: 841, column: 8, scope: !1410)
!1413 = !DILocation(line: 841, column: 6, scope: !1327)
!1414 = !DILocation(line: 842, column: 3, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 841, column: 19)
!1416 = !DILocation(line: 842, column: 20, scope: !1415)
!1417 = !DILocation(line: 842, column: 23, scope: !1415)
!1418 = !DILocation(line: 842, column: 32, scope: !1415)
!1419 = !DILocation(line: 843, column: 37, scope: !1415)
!1420 = !DILocation(line: 843, column: 42, scope: !1415)
!1421 = !DILocation(line: 843, column: 50, scope: !1415)
!1422 = !DILocation(line: 843, column: 55, scope: !1415)
!1423 = !DILocation(line: 843, column: 67, scope: !1415)
!1424 = !DILocation(line: 843, column: 3, scope: !1415)
!1425 = !DILocation(line: 843, column: 20, scope: !1415)
!1426 = !DILocation(line: 843, column: 23, scope: !1415)
!1427 = !DILocation(line: 843, column: 35, scope: !1415)
!1428 = !DILocation(line: 844, column: 75, scope: !1415)
!1429 = !DILocation(line: 844, column: 44, scope: !1415)
!1430 = !DILocation(line: 844, column: 3, scope: !1415)
!1431 = !DILocation(line: 844, column: 20, scope: !1415)
!1432 = !DILocation(line: 844, column: 23, scope: !1415)
!1433 = !DILocation(line: 844, column: 42, scope: !1415)
!1434 = !DILocation(line: 845, column: 4, scope: !1415)
!1435 = !DILocation(line: 846, column: 2, scope: !1415)
!1436 = !DILocation(line: 849, column: 7, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 849, column: 6)
!1438 = !DILocation(line: 849, column: 11, scope: !1437)
!1439 = !DILocation(line: 849, column: 9, scope: !1437)
!1440 = !DILocation(line: 849, column: 21, scope: !1437)
!1441 = !DILocation(line: 849, column: 25, scope: !1437)
!1442 = !DILocation(line: 849, column: 30, scope: !1437)
!1443 = !DILocation(line: 849, column: 38, scope: !1437)
!1444 = !DILocation(line: 849, column: 43, scope: !1437)
!1445 = !DILocation(line: 849, column: 56, scope: !1437)
!1446 = !DILocation(line: 849, column: 6, scope: !1327)
!1447 = !DILocation(line: 850, column: 3, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 849, column: 62)
!1449 = !DILocation(line: 850, column: 20, scope: !1448)
!1450 = !DILocation(line: 850, column: 23, scope: !1448)
!1451 = !DILocation(line: 850, column: 32, scope: !1448)
!1452 = !DILocation(line: 851, column: 37, scope: !1448)
!1453 = !DILocation(line: 851, column: 42, scope: !1448)
!1454 = !DILocation(line: 851, column: 50, scope: !1448)
!1455 = !DILocation(line: 851, column: 55, scope: !1448)
!1456 = !DILocation(line: 851, column: 3, scope: !1448)
!1457 = !DILocation(line: 851, column: 20, scope: !1448)
!1458 = !DILocation(line: 851, column: 23, scope: !1448)
!1459 = !DILocation(line: 851, column: 35, scope: !1448)
!1460 = !DILocation(line: 852, column: 77, scope: !1448)
!1461 = !DILocation(line: 852, column: 44, scope: !1448)
!1462 = !DILocation(line: 852, column: 3, scope: !1448)
!1463 = !DILocation(line: 852, column: 20, scope: !1448)
!1464 = !DILocation(line: 852, column: 23, scope: !1448)
!1465 = !DILocation(line: 852, column: 42, scope: !1448)
!1466 = !DILocation(line: 853, column: 4, scope: !1448)
!1467 = !DILocation(line: 854, column: 2, scope: !1448)
!1468 = !DILocation(line: 856, column: 6, scope: !1327)
!1469 = !DILocation(line: 856, column: 2, scope: !1327)
!1470 = !DILocation(line: 858, column: 1, scope: !1327)
!1471 = !DILocation(line: 859, column: 2, scope: !1327)
!1472 = !DILocation(line: 860, column: 9, scope: !1327)
!1473 = !DILocation(line: 860, column: 2, scope: !1327)
!1474 = !DILocation(line: 861, column: 1, scope: !1327)
!1475 = !DISubprogram(name: "fmm_get_aperture_base", scope: !40, file: !40, line: 59, type: !1476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!432, !1478, !123}
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "aperture_type_e", file: !40, line: 38, baseType: !39)
!1479 = distinct !DISubprogram(name: "hsaKmtGetNodeCacheProperties", scope: !3, file: !3, line: 865, type: !1480, scopeLine: 871, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1482)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!540, !123, !123, !123, !473}
!1482 = !{!1483, !1484, !1485, !1486, !1487, !1488, !1489}
!1483 = !DILocalVariable(name: "NodeId", arg: 1, scope: !1479, file: !3, line: 866, type: !123)
!1484 = !DILocalVariable(name: "ProcessorId", arg: 2, scope: !1479, file: !3, line: 867, type: !123)
!1485 = !DILocalVariable(name: "NumCaches", arg: 3, scope: !1479, file: !3, line: 868, type: !123)
!1486 = !DILocalVariable(name: "CacheProperties", arg: 4, scope: !1479, file: !3, line: 869, type: !473)
!1487 = !DILocalVariable(name: "err", scope: !1479, file: !3, line: 872, type: !540)
!1488 = !DILocalVariable(name: "i", scope: !1479, file: !3, line: 873, type: !59)
!1489 = !DILabel(scope: !1479, name: "out", file: !3, line: 900)
!1490 = !DILocation(line: 866, column: 25, scope: !1479)
!1491 = !DILocation(line: 867, column: 25, scope: !1479)
!1492 = !DILocation(line: 868, column: 25, scope: !1479)
!1493 = !DILocation(line: 869, column: 25, scope: !1479)
!1494 = !DILocation(line: 872, column: 2, scope: !1479)
!1495 = !DILocation(line: 872, column: 16, scope: !1479)
!1496 = !DILocation(line: 873, column: 2, scope: !1479)
!1497 = !DILocation(line: 873, column: 11, scope: !1479)
!1498 = !DILocation(line: 875, column: 7, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 875, column: 6)
!1500 = !DILocation(line: 875, column: 6, scope: !1479)
!1501 = !DILocation(line: 876, column: 3, scope: !1499)
!1502 = !DILocation(line: 878, column: 2, scope: !1479)
!1503 = !DILocation(line: 878, column: 2, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 878, column: 2)
!1505 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 878, column: 2)
!1506 = !DILocation(line: 878, column: 2, scope: !1505)
!1507 = !DILocation(line: 879, column: 2, scope: !1479)
!1508 = !DILocation(line: 882, column: 6, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 882, column: 6)
!1510 = !DILocation(line: 882, column: 13, scope: !1509)
!1511 = !DILocation(line: 882, column: 6, scope: !1479)
!1512 = !DILocation(line: 883, column: 7, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 882, column: 22)
!1514 = !DILocation(line: 884, column: 3, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 884, column: 3)
!1516 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 884, column: 3)
!1517 = !DILocation(line: 884, column: 3, scope: !1516)
!1518 = !DILocation(line: 885, column: 3, scope: !1513)
!1519 = !DILocation(line: 888, column: 6, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 888, column: 6)
!1521 = !DILocation(line: 888, column: 16, scope: !1520)
!1522 = !DILocation(line: 888, column: 24, scope: !1520)
!1523 = !DILocation(line: 888, column: 13, scope: !1520)
!1524 = !DILocation(line: 888, column: 33, scope: !1520)
!1525 = !DILocation(line: 888, column: 36, scope: !1520)
!1526 = !DILocation(line: 888, column: 48, scope: !1520)
!1527 = !DILocation(line: 888, column: 53, scope: !1520)
!1528 = !DILocation(line: 888, column: 61, scope: !1520)
!1529 = !DILocation(line: 888, column: 66, scope: !1520)
!1530 = !DILocation(line: 888, column: 46, scope: !1520)
!1531 = !DILocation(line: 888, column: 6, scope: !1479)
!1532 = !DILocation(line: 889, column: 7, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 888, column: 77)
!1534 = !DILocation(line: 890, column: 3, scope: !1533)
!1535 = !DILocation(line: 893, column: 9, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 893, column: 2)
!1537 = !DILocation(line: 893, column: 7, scope: !1536)
!1538 = !DILocation(line: 893, column: 14, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 893, column: 2)
!1540 = !DILocation(line: 893, column: 18, scope: !1539)
!1541 = !DILocation(line: 893, column: 16, scope: !1539)
!1542 = !DILocation(line: 893, column: 2, scope: !1536)
!1543 = !DILocation(line: 894, column: 3, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 894, column: 3)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 894, column: 3)
!1546 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 893, column: 68)
!1547 = !DILocation(line: 894, column: 3, scope: !1545)
!1548 = !DILocation(line: 895, column: 3, scope: !1546)
!1549 = !DILocation(line: 895, column: 19, scope: !1546)
!1550 = !DILocation(line: 895, column: 24, scope: !1546)
!1551 = !DILocation(line: 895, column: 29, scope: !1546)
!1552 = !DILocation(line: 895, column: 37, scope: !1546)
!1553 = !DILocation(line: 895, column: 43, scope: !1546)
!1554 = !DILocation(line: 896, column: 2, scope: !1546)
!1555 = !DILocation(line: 893, column: 64, scope: !1539)
!1556 = !DILocation(line: 893, column: 2, scope: !1539)
!1557 = distinct !{!1557, !1542, !1558, !608}
!1558 = !DILocation(line: 896, column: 2, scope: !1536)
!1559 = !DILocation(line: 898, column: 6, scope: !1479)
!1560 = !DILocation(line: 898, column: 2, scope: !1479)
!1561 = !DILocation(line: 900, column: 1, scope: !1479)
!1562 = !DILocation(line: 901, column: 2, scope: !1479)
!1563 = !DILocation(line: 902, column: 9, scope: !1479)
!1564 = !DILocation(line: 902, column: 2, scope: !1479)
!1565 = !DILocation(line: 903, column: 1, scope: !1479)
!1566 = distinct !DISubprogram(name: "hsaKmtGetNodeIoLinkProperties", scope: !3, file: !3, line: 907, type: !1567, scopeLine: 912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1569)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!540, !123, !123, !502}
!1569 = !{!1570, !1571, !1572, !1573, !1574, !1575}
!1570 = !DILocalVariable(name: "NodeId", arg: 1, scope: !1566, file: !3, line: 908, type: !123)
!1571 = !DILocalVariable(name: "NumIoLinks", arg: 2, scope: !1566, file: !3, line: 909, type: !123)
!1572 = !DILocalVariable(name: "IoLinkProperties", arg: 3, scope: !1566, file: !3, line: 910, type: !502)
!1573 = !DILocalVariable(name: "err", scope: !1566, file: !3, line: 913, type: !540)
!1574 = !DILocalVariable(name: "i", scope: !1566, file: !3, line: 914, type: !59)
!1575 = !DILabel(scope: !1566, name: "out", file: !3, line: 942)
!1576 = !DILocation(line: 908, column: 26, scope: !1566)
!1577 = !DILocation(line: 909, column: 26, scope: !1566)
!1578 = !DILocation(line: 910, column: 26, scope: !1566)
!1579 = !DILocation(line: 913, column: 2, scope: !1566)
!1580 = !DILocation(line: 913, column: 16, scope: !1566)
!1581 = !DILocation(line: 914, column: 2, scope: !1566)
!1582 = !DILocation(line: 914, column: 11, scope: !1566)
!1583 = !DILocation(line: 916, column: 7, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 916, column: 6)
!1585 = !DILocation(line: 916, column: 6, scope: !1566)
!1586 = !DILocation(line: 917, column: 3, scope: !1584)
!1587 = !DILocation(line: 919, column: 2, scope: !1566)
!1588 = !DILocation(line: 919, column: 2, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 919, column: 2)
!1590 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 919, column: 2)
!1591 = !DILocation(line: 919, column: 2, scope: !1590)
!1592 = !DILocation(line: 921, column: 2, scope: !1566)
!1593 = !DILocation(line: 924, column: 6, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 924, column: 6)
!1595 = !DILocation(line: 924, column: 13, scope: !1594)
!1596 = !DILocation(line: 924, column: 6, scope: !1566)
!1597 = !DILocation(line: 925, column: 7, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 924, column: 22)
!1599 = !DILocation(line: 926, column: 3, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 926, column: 3)
!1601 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 926, column: 3)
!1602 = !DILocation(line: 926, column: 3, scope: !1601)
!1603 = !DILocation(line: 927, column: 3, scope: !1598)
!1604 = !DILocation(line: 930, column: 6, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 930, column: 6)
!1606 = !DILocation(line: 930, column: 16, scope: !1605)
!1607 = !DILocation(line: 930, column: 24, scope: !1605)
!1608 = !DILocation(line: 930, column: 13, scope: !1605)
!1609 = !DILocation(line: 930, column: 33, scope: !1605)
!1610 = !DILocation(line: 930, column: 36, scope: !1605)
!1611 = !DILocation(line: 930, column: 49, scope: !1605)
!1612 = !DILocation(line: 930, column: 54, scope: !1605)
!1613 = !DILocation(line: 930, column: 62, scope: !1605)
!1614 = !DILocation(line: 930, column: 67, scope: !1605)
!1615 = !DILocation(line: 930, column: 47, scope: !1605)
!1616 = !DILocation(line: 930, column: 6, scope: !1566)
!1617 = !DILocation(line: 931, column: 7, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 930, column: 79)
!1619 = !DILocation(line: 932, column: 3, scope: !1618)
!1620 = !DILocation(line: 935, column: 9, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 935, column: 2)
!1622 = !DILocation(line: 935, column: 7, scope: !1621)
!1623 = !DILocation(line: 935, column: 14, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 935, column: 2)
!1625 = !DILocation(line: 935, column: 18, scope: !1624)
!1626 = !DILocation(line: 935, column: 16, scope: !1624)
!1627 = !DILocation(line: 935, column: 2, scope: !1621)
!1628 = !DILocation(line: 936, column: 3, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 936, column: 3)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 936, column: 3)
!1631 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 935, column: 70)
!1632 = !DILocation(line: 936, column: 3, scope: !1630)
!1633 = !DILocation(line: 937, column: 3, scope: !1631)
!1634 = !DILocation(line: 937, column: 20, scope: !1631)
!1635 = !DILocation(line: 937, column: 25, scope: !1631)
!1636 = !DILocation(line: 937, column: 30, scope: !1631)
!1637 = !DILocation(line: 937, column: 38, scope: !1631)
!1638 = !DILocation(line: 937, column: 43, scope: !1631)
!1639 = !DILocation(line: 938, column: 2, scope: !1631)
!1640 = !DILocation(line: 935, column: 66, scope: !1624)
!1641 = !DILocation(line: 935, column: 2, scope: !1624)
!1642 = distinct !{!1642, !1627, !1643, !608}
!1643 = !DILocation(line: 938, column: 2, scope: !1621)
!1644 = !DILocation(line: 940, column: 6, scope: !1566)
!1645 = !DILocation(line: 940, column: 2, scope: !1566)
!1646 = !DILocation(line: 942, column: 1, scope: !1566)
!1647 = !DILocation(line: 943, column: 2, scope: !1566)
!1648 = !DILocation(line: 944, column: 9, scope: !1566)
!1649 = !DILocation(line: 944, column: 2, scope: !1566)
!1650 = !DILocation(line: 945, column: 1, scope: !1566)
!1651 = distinct !DISubprogram(name: "get_device_id_by_node", scope: !3, file: !3, line: 947, type: !1652, scopeLine: 948, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1654)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!63, !123}
!1654 = !{!1655}
!1655 = !DILocalVariable(name: "node_id", arg: 1, scope: !1651, file: !3, line: 947, type: !123)
!1656 = !DILocation(line: 947, column: 42, scope: !1651)
!1657 = !DILocation(line: 949, column: 10, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 949, column: 9)
!1659 = !DILocation(line: 949, column: 15, scope: !1658)
!1660 = !DILocation(line: 949, column: 19, scope: !1658)
!1661 = !DILocation(line: 949, column: 26, scope: !1658)
!1662 = !DILocation(line: 949, column: 29, scope: !1658)
!1663 = !DILocation(line: 949, column: 37, scope: !1658)
!1664 = !DILocation(line: 949, column: 49, scope: !1658)
!1665 = !DILocation(line: 949, column: 46, scope: !1658)
!1666 = !DILocation(line: 949, column: 9, scope: !1651)
!1667 = !DILocation(line: 950, column: 9, scope: !1658)
!1668 = !DILocation(line: 952, column: 12, scope: !1651)
!1669 = !DILocation(line: 952, column: 17, scope: !1651)
!1670 = !DILocation(line: 952, column: 26, scope: !1651)
!1671 = !DILocation(line: 952, column: 31, scope: !1651)
!1672 = !DILocation(line: 952, column: 5, scope: !1651)
!1673 = !DILocation(line: 953, column: 1, scope: !1651)
!1674 = distinct !DISubprogram(name: "topology_sysfs_get_generation", scope: !3, file: !3, line: 74, type: !1675, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1677)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!540, !541}
!1677 = !{!1678, !1679, !1733, !1734}
!1678 = !DILocalVariable(name: "gen", arg: 1, scope: !1674, file: !3, line: 74, type: !541)
!1679 = !DILocalVariable(name: "fd", scope: !1674, file: !3, line: 75, type: !1680)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1682, line: 7, baseType: !1683)
!1682 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1684, line: 49, size: 1728, elements: !1685)
!1684 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1685 = !{!1686, !1687, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1702, !1704, !1705, !1706, !1708, !1709, !1711, !1715, !1718, !1720, !1723, !1726, !1727, !1728, !1731, !1732}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1683, file: !1684, line: 51, baseType: !656, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1683, file: !1684, line: 54, baseType: !1688, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1683, file: !1684, line: 55, baseType: !1688, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1683, file: !1684, line: 56, baseType: !1688, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1683, file: !1684, line: 57, baseType: !1688, size: 64, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1683, file: !1684, line: 58, baseType: !1688, size: 64, offset: 320)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1683, file: !1684, line: 59, baseType: !1688, size: 64, offset: 384)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1683, file: !1684, line: 60, baseType: !1688, size: 64, offset: 448)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1683, file: !1684, line: 61, baseType: !1688, size: 64, offset: 512)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1683, file: !1684, line: 64, baseType: !1688, size: 64, offset: 576)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1683, file: !1684, line: 65, baseType: !1688, size: 64, offset: 640)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1683, file: !1684, line: 66, baseType: !1688, size: 64, offset: 704)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1683, file: !1684, line: 68, baseType: !1700, size: 64, offset: 768)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1684, line: 36, flags: DIFlagFwdDecl)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1683, file: !1684, line: 70, baseType: !1703, size: 64, offset: 832)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1683, file: !1684, line: 72, baseType: !656, size: 32, offset: 896)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1683, file: !1684, line: 73, baseType: !656, size: 32, offset: 928)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1683, file: !1684, line: 74, baseType: !1707, size: 64, offset: 960)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !62, line: 152, baseType: !687)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1683, file: !1684, line: 77, baseType: !65, size: 16, offset: 1024)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1683, file: !1684, line: 78, baseType: !1710, size: 8, offset: 1040)
!1710 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1683, file: !1684, line: 79, baseType: !1712, size: 8, offset: 1048)
!1712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 8, elements: !1713)
!1713 = !{!1714}
!1714 = !DISubrange(count: 1)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1683, file: !1684, line: 81, baseType: !1716, size: 64, offset: 1088)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1684, line: 43, baseType: null)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1683, file: !1684, line: 89, baseType: !1719, size: 64, offset: 1152)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !62, line: 153, baseType: !687)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1683, file: !1684, line: 91, baseType: !1721, size: 64, offset: 1216)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1684, line: 37, flags: DIFlagFwdDecl)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1683, file: !1684, line: 92, baseType: !1724, size: 64, offset: 1280)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1684, line: 38, flags: DIFlagFwdDecl)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1683, file: !1684, line: 93, baseType: !1703, size: 64, offset: 1344)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1683, file: !1684, line: 94, baseType: !58, size: 64, offset: 1408)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1683, file: !1684, line: 95, baseType: !1729, size: 64, offset: 1472)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1730, line: 70, baseType: !435)
!1730 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1683, file: !1684, line: 96, baseType: !656, size: 32, offset: 1536)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1683, file: !1684, line: 98, baseType: !331, size: 160, offset: 1568)
!1733 = !DILocalVariable(name: "ret", scope: !1674, file: !3, line: 76, type: !540)
!1734 = !DILabel(scope: !1674, name: "err", file: !3, line: 87)
!1735 = !DILocation(line: 74, column: 41, scope: !1674)
!1736 = !DILocation(line: 75, column: 2, scope: !1674)
!1737 = !DILocation(line: 75, column: 8, scope: !1674)
!1738 = !DILocation(line: 76, column: 2, scope: !1674)
!1739 = !DILocation(line: 76, column: 16, scope: !1674)
!1740 = !DILocation(line: 78, column: 2, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 78, column: 2)
!1742 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 78, column: 2)
!1743 = !DILocation(line: 78, column: 2, scope: !1742)
!1744 = !DILocation(line: 79, column: 7, scope: !1674)
!1745 = !DILocation(line: 79, column: 5, scope: !1674)
!1746 = !DILocation(line: 80, column: 7, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 80, column: 6)
!1748 = !DILocation(line: 80, column: 6, scope: !1674)
!1749 = !DILocation(line: 81, column: 3, scope: !1747)
!1750 = !DILocation(line: 82, column: 13, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 82, column: 6)
!1752 = !DILocation(line: 82, column: 24, scope: !1751)
!1753 = !DILocation(line: 82, column: 6, scope: !1751)
!1754 = !DILocation(line: 82, column: 29, scope: !1751)
!1755 = !DILocation(line: 82, column: 6, scope: !1674)
!1756 = !DILocation(line: 83, column: 7, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 82, column: 35)
!1758 = !DILocation(line: 84, column: 3, scope: !1757)
!1759 = !DILocation(line: 82, column: 32, scope: !1751)
!1760 = !DILocation(line: 87, column: 1, scope: !1674)
!1761 = !DILocation(line: 88, column: 9, scope: !1674)
!1762 = !DILocation(line: 88, column: 2, scope: !1674)
!1763 = !DILocation(line: 89, column: 9, scope: !1674)
!1764 = !DILocation(line: 89, column: 2, scope: !1674)
!1765 = !DILocation(line: 90, column: 1, scope: !1674)
!1766 = distinct !DISubprogram(name: "topology_sysfs_get_system_props", scope: !3, file: !3, line: 93, type: !612, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1767)
!1767 = !{!1768, !1769, !1770, !1775, !1776, !1777, !1779, !1781, !1782, !1783, !1795, !1796, !1797, !1798}
!1768 = !DILocalVariable(name: "props", arg: 1, scope: !1766, file: !3, line: 93, type: !118)
!1769 = !DILocalVariable(name: "fd", scope: !1766, file: !3, line: 94, type: !1680)
!1770 = !DILocalVariable(name: "dirp", scope: !1766, file: !3, line: 95, type: !1771)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !1773, line: 127, baseType: !1774)
!1773 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "6eb1a2faa0cf53b967234cc6c0fe978e")
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !1773, line: 127, flags: DIFlagFwdDecl)
!1775 = !DILocalVariable(name: "read_buf", scope: !1766, file: !3, line: 96, type: !1688)
!1776 = !DILocalVariable(name: "p", scope: !1766, file: !3, line: 96, type: !1688)
!1777 = !DILocalVariable(name: "prop_name", scope: !1766, file: !3, line: 97, type: !1778)
!1778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 2048, elements: !499)
!1779 = !DILocalVariable(name: "prop_val", scope: !1766, file: !3, line: 98, type: !1780)
!1780 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1781 = !DILocalVariable(name: "node_count", scope: !1766, file: !3, line: 99, type: !59)
!1782 = !DILocalVariable(name: "prog", scope: !1766, file: !3, line: 99, type: !59)
!1783 = !DILocalVariable(name: "dir", scope: !1766, file: !3, line: 100, type: !1784)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !1786, line: 22, size: 2240, elements: !1787)
!1786 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "bc8b10a1ddd2747862e3ae7b91dbf464")
!1787 = !{!1788, !1790, !1791, !1792, !1794}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !1785, file: !1786, line: 25, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !62, line: 148, baseType: !435)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !1785, file: !1786, line: 26, baseType: !1707, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !1785, file: !1786, line: 31, baseType: !65, size: 16, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !1785, file: !1786, line: 32, baseType: !1793, size: 8, offset: 144)
!1793 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1785, file: !1786, line: 33, baseType: !1778, size: 2048, offset: 152)
!1795 = !DILocalVariable(name: "read_size", scope: !1766, file: !3, line: 101, type: !656)
!1796 = !DILocalVariable(name: "ret", scope: !1766, file: !3, line: 102, type: !540)
!1797 = !DILabel(scope: !1766, name: "err2", file: !3, line: 162)
!1798 = !DILabel(scope: !1766, name: "err1", file: !3, line: 164)
!1799 = !DILocation(line: 93, column: 54, scope: !1766)
!1800 = !DILocation(line: 94, column: 2, scope: !1766)
!1801 = !DILocation(line: 94, column: 8, scope: !1766)
!1802 = !DILocation(line: 95, column: 2, scope: !1766)
!1803 = !DILocation(line: 95, column: 7, scope: !1766)
!1804 = !DILocation(line: 96, column: 2, scope: !1766)
!1805 = !DILocation(line: 96, column: 8, scope: !1766)
!1806 = !DILocation(line: 96, column: 19, scope: !1766)
!1807 = !DILocation(line: 97, column: 2, scope: !1766)
!1808 = !DILocation(line: 97, column: 7, scope: !1766)
!1809 = !DILocation(line: 98, column: 2, scope: !1766)
!1810 = !DILocation(line: 98, column: 25, scope: !1766)
!1811 = !DILocation(line: 99, column: 2, scope: !1766)
!1812 = !DILocation(line: 99, column: 11, scope: !1766)
!1813 = !DILocation(line: 99, column: 23, scope: !1766)
!1814 = !DILocation(line: 100, column: 2, scope: !1766)
!1815 = !DILocation(line: 100, column: 17, scope: !1766)
!1816 = !DILocation(line: 101, column: 5, scope: !1766)
!1817 = !DILocation(line: 101, column: 9, scope: !1766)
!1818 = !DILocation(line: 102, column: 2, scope: !1766)
!1819 = !DILocation(line: 102, column: 16, scope: !1766)
!1820 = !DILocation(line: 105, column: 2, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 105, column: 2)
!1822 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 105, column: 2)
!1823 = !DILocation(line: 105, column: 2, scope: !1822)
!1824 = !DILocation(line: 106, column: 7, scope: !1766)
!1825 = !DILocation(line: 106, column: 5, scope: !1766)
!1826 = !DILocation(line: 107, column: 7, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 107, column: 6)
!1828 = !DILocation(line: 107, column: 6, scope: !1766)
!1829 = !DILocation(line: 108, column: 3, scope: !1827)
!1830 = !DILocation(line: 110, column: 13, scope: !1766)
!1831 = !DILocation(line: 110, column: 11, scope: !1766)
!1832 = !DILocation(line: 111, column: 7, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 111, column: 6)
!1834 = !DILocation(line: 111, column: 6, scope: !1766)
!1835 = !DILocation(line: 112, column: 7, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1833, file: !3, line: 111, column: 17)
!1837 = !DILocation(line: 113, column: 3, scope: !1836)
!1838 = !DILocation(line: 116, column: 23, scope: !1766)
!1839 = !DILocation(line: 116, column: 47, scope: !1766)
!1840 = !DILocation(line: 116, column: 17, scope: !1766)
!1841 = !DILocation(line: 116, column: 15, scope: !1766)
!1842 = !DILocation(line: 117, column: 9, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 117, column: 9)
!1844 = !DILocation(line: 117, column: 19, scope: !1843)
!1845 = !DILocation(line: 117, column: 9, scope: !1766)
!1846 = !DILocation(line: 118, column: 7, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 117, column: 25)
!1848 = !DILocation(line: 119, column: 3, scope: !1847)
!1849 = !DILocation(line: 123, column: 8, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 123, column: 8)
!1851 = !DILocation(line: 123, column: 18, scope: !1850)
!1852 = !DILocation(line: 123, column: 8, scope: !1766)
!1853 = !DILocation(line: 124, column: 19, scope: !1850)
!1854 = !DILocation(line: 124, column: 9, scope: !1850)
!1855 = !DILocation(line: 125, column: 5, scope: !1766)
!1856 = !DILocation(line: 125, column: 14, scope: !1766)
!1857 = !DILocation(line: 125, column: 25, scope: !1766)
!1858 = !DILocation(line: 130, column: 7, scope: !1766)
!1859 = !DILocation(line: 131, column: 6, scope: !1766)
!1860 = !DILocation(line: 131, column: 4, scope: !1766)
!1861 = !DILocation(line: 132, column: 2, scope: !1766)
!1862 = !DILocation(line: 132, column: 18, scope: !1766)
!1863 = !DILocation(line: 132, column: 16, scope: !1766)
!1864 = !DILocation(line: 132, column: 39, scope: !1766)
!1865 = !DILocation(line: 132, column: 8, scope: !1766)
!1866 = !DILocation(line: 132, column: 68, scope: !1766)
!1867 = !DILocation(line: 133, column: 14, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 133, column: 7)
!1869 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 132, column: 74)
!1870 = !DILocation(line: 133, column: 7, scope: !1868)
!1871 = !DILocation(line: 133, column: 40, scope: !1868)
!1872 = !DILocation(line: 133, column: 7, scope: !1869)
!1873 = !DILocation(line: 134, column: 35, scope: !1868)
!1874 = !DILocation(line: 134, column: 25, scope: !1868)
!1875 = !DILocation(line: 134, column: 4, scope: !1868)
!1876 = !DILocation(line: 134, column: 11, scope: !1868)
!1877 = !DILocation(line: 134, column: 23, scope: !1868)
!1878 = !DILocation(line: 135, column: 19, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 135, column: 12)
!1880 = !DILocation(line: 135, column: 12, scope: !1879)
!1881 = !DILocation(line: 135, column: 44, scope: !1879)
!1882 = !DILocation(line: 135, column: 12, scope: !1868)
!1883 = !DILocation(line: 136, column: 34, scope: !1879)
!1884 = !DILocation(line: 136, column: 24, scope: !1879)
!1885 = !DILocation(line: 136, column: 4, scope: !1879)
!1886 = !DILocation(line: 136, column: 11, scope: !1879)
!1887 = !DILocation(line: 136, column: 22, scope: !1879)
!1888 = !DILocation(line: 137, column: 19, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 137, column: 12)
!1890 = !DILocation(line: 137, column: 12, scope: !1889)
!1891 = !DILocation(line: 137, column: 45, scope: !1889)
!1892 = !DILocation(line: 137, column: 12, scope: !1879)
!1893 = !DILocation(line: 138, column: 35, scope: !1889)
!1894 = !DILocation(line: 138, column: 25, scope: !1889)
!1895 = !DILocation(line: 138, column: 4, scope: !1889)
!1896 = !DILocation(line: 138, column: 11, scope: !1889)
!1897 = !DILocation(line: 138, column: 23, scope: !1889)
!1898 = distinct !{!1898, !1861, !1899, !608}
!1899 = !DILocation(line: 139, column: 2, scope: !1766)
!1900 = !DILocation(line: 144, column: 13, scope: !1766)
!1901 = !DILocation(line: 145, column: 9, scope: !1766)
!1902 = !DILocation(line: 145, column: 7, scope: !1766)
!1903 = !DILocation(line: 146, column: 5, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 146, column: 5)
!1905 = !DILocation(line: 146, column: 5, scope: !1766)
!1906 = !DILocation(line: 151, column: 3, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 146, column: 11)
!1908 = !DILocation(line: 151, column: 25, scope: !1907)
!1909 = !DILocation(line: 151, column: 17, scope: !1907)
!1910 = !DILocation(line: 151, column: 15, scope: !1907)
!1911 = !DILocation(line: 151, column: 32, scope: !1907)
!1912 = !DILocation(line: 152, column: 16, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 152, column: 8)
!1914 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 151, column: 38)
!1915 = !DILocation(line: 152, column: 21, scope: !1913)
!1916 = !DILocation(line: 152, column: 9, scope: !1913)
!1917 = !DILocation(line: 152, column: 34, scope: !1913)
!1918 = !DILocation(line: 152, column: 40, scope: !1913)
!1919 = !DILocation(line: 153, column: 14, scope: !1913)
!1920 = !DILocation(line: 153, column: 19, scope: !1913)
!1921 = !DILocation(line: 153, column: 7, scope: !1913)
!1922 = !DILocation(line: 153, column: 33, scope: !1913)
!1923 = !DILocation(line: 152, column: 8, scope: !1914)
!1924 = !DILocation(line: 154, column: 5, scope: !1913)
!1925 = distinct !{!1925, !1906, !1926, !608}
!1926 = !DILocation(line: 156, column: 3, scope: !1907)
!1927 = !DILocation(line: 155, column: 14, scope: !1914)
!1928 = !DILocation(line: 157, column: 12, scope: !1907)
!1929 = !DILocation(line: 157, column: 3, scope: !1907)
!1930 = !DILocation(line: 158, column: 2, scope: !1907)
!1931 = !DILocation(line: 159, column: 20, scope: !1766)
!1932 = !DILocation(line: 159, column: 2, scope: !1766)
!1933 = !DILocation(line: 159, column: 9, scope: !1766)
!1934 = !DILocation(line: 159, column: 18, scope: !1766)
!1935 = !DILocation(line: 162, column: 1, scope: !1766)
!1936 = !DILocation(line: 163, column: 7, scope: !1766)
!1937 = !DILocation(line: 163, column: 2, scope: !1766)
!1938 = !DILocation(line: 164, column: 1, scope: !1766)
!1939 = !DILocation(line: 165, column: 9, scope: !1766)
!1940 = !DILocation(line: 165, column: 2, scope: !1766)
!1941 = !DILocation(line: 166, column: 9, scope: !1766)
!1942 = !DILocation(line: 166, column: 2, scope: !1766)
!1943 = !DILocation(line: 167, column: 1, scope: !1766)
!1944 = !DISubprogram(name: "calloc", scope: !1945, file: !1945, line: 43, type: !1946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1945 = !DIFile(filename: "/usr/include/malloc.h", directory: "", checksumkind: CSK_MD5, checksum: "a76bbc754bc1912bbc478953970c700c")
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!58, !1729, !1729}
!1948 = distinct !DISubprogram(name: "topology_sysfs_get_node_props", scope: !3, file: !3, line: 189, type: !1949, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1951)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!540, !59, !1261, !541}
!1951 = !{!1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968}
!1952 = !DILocalVariable(name: "node_id", arg: 1, scope: !1948, file: !3, line: 189, type: !59)
!1953 = !DILocalVariable(name: "props", arg: 2, scope: !1948, file: !3, line: 189, type: !1261)
!1954 = !DILocalVariable(name: "gpu_id", arg: 3, scope: !1948, file: !3, line: 189, type: !541)
!1955 = !DILocalVariable(name: "fd", scope: !1948, file: !3, line: 190, type: !1680)
!1956 = !DILocalVariable(name: "read_buf", scope: !1948, file: !3, line: 191, type: !1688)
!1957 = !DILocalVariable(name: "p", scope: !1948, file: !3, line: 191, type: !1688)
!1958 = !DILocalVariable(name: "prop_name", scope: !1948, file: !3, line: 192, type: !1778)
!1959 = !DILocalVariable(name: "path", scope: !1948, file: !3, line: 193, type: !1778)
!1960 = !DILocalVariable(name: "prop_val", scope: !1948, file: !3, line: 194, type: !1780)
!1961 = !DILocalVariable(name: "i", scope: !1948, file: !3, line: 195, type: !59)
!1962 = !DILocalVariable(name: "prog", scope: !1948, file: !3, line: 195, type: !59)
!1963 = !DILocalVariable(name: "stepping", scope: !1948, file: !3, line: 196, type: !63)
!1964 = !DILocalVariable(name: "fw_version", scope: !1948, file: !3, line: 196, type: !63)
!1965 = !DILocalVariable(name: "read_size", scope: !1948, file: !3, line: 197, type: !656)
!1966 = !DILocalVariable(name: "ret", scope: !1948, file: !3, line: 199, type: !540)
!1967 = !DILabel(scope: !1948, name: "err2", file: !3, line: 315)
!1968 = !DILabel(scope: !1948, name: "err1", file: !3, line: 317)
!1969 = !DILocation(line: 189, column: 40, scope: !1948)
!1970 = !DILocation(line: 189, column: 68, scope: !1948)
!1971 = !DILocation(line: 189, column: 85, scope: !1948)
!1972 = !DILocation(line: 190, column: 2, scope: !1948)
!1973 = !DILocation(line: 190, column: 8, scope: !1948)
!1974 = !DILocation(line: 191, column: 2, scope: !1948)
!1975 = !DILocation(line: 191, column: 8, scope: !1948)
!1976 = !DILocation(line: 191, column: 19, scope: !1948)
!1977 = !DILocation(line: 192, column: 2, scope: !1948)
!1978 = !DILocation(line: 192, column: 7, scope: !1948)
!1979 = !DILocation(line: 193, column: 2, scope: !1948)
!1980 = !DILocation(line: 193, column: 7, scope: !1948)
!1981 = !DILocation(line: 194, column: 2, scope: !1948)
!1982 = !DILocation(line: 194, column: 26, scope: !1948)
!1983 = !DILocation(line: 195, column: 2, scope: !1948)
!1984 = !DILocation(line: 195, column: 11, scope: !1948)
!1985 = !DILocation(line: 195, column: 14, scope: !1948)
!1986 = !DILocation(line: 196, column: 2, scope: !1948)
!1987 = !DILocation(line: 196, column: 11, scope: !1948)
!1988 = !DILocation(line: 196, column: 25, scope: !1948)
!1989 = !DILocation(line: 197, column: 5, scope: !1948)
!1990 = !DILocation(line: 197, column: 9, scope: !1948)
!1991 = !DILocation(line: 199, column: 2, scope: !1948)
!1992 = !DILocation(line: 199, column: 16, scope: !1948)
!1993 = !DILocation(line: 201, column: 2, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 201, column: 2)
!1995 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 201, column: 2)
!1996 = !DILocation(line: 201, column: 2, scope: !1995)
!1997 = !DILocation(line: 202, column: 2, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 202, column: 2)
!1999 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 202, column: 2)
!2000 = !DILocation(line: 202, column: 2, scope: !1999)
!2001 = !DILocation(line: 204, column: 34, scope: !1948)
!2002 = !DILocation(line: 204, column: 43, scope: !1948)
!2003 = !DILocation(line: 204, column: 8, scope: !1948)
!2004 = !DILocation(line: 204, column: 6, scope: !1948)
!2005 = !DILocation(line: 207, column: 11, scope: !1948)
!2006 = !DILocation(line: 207, column: 58, scope: !1948)
!2007 = !DILocation(line: 207, column: 2, scope: !1948)
!2008 = !DILocation(line: 208, column: 13, scope: !1948)
!2009 = !DILocation(line: 208, column: 7, scope: !1948)
!2010 = !DILocation(line: 208, column: 5, scope: !1948)
!2011 = !DILocation(line: 209, column: 7, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 209, column: 6)
!2013 = !DILocation(line: 209, column: 6, scope: !1948)
!2014 = !DILocation(line: 210, column: 3, scope: !2012)
!2015 = !DILocation(line: 212, column: 13, scope: !1948)
!2016 = !DILocation(line: 212, column: 11, scope: !1948)
!2017 = !DILocation(line: 213, column: 7, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 213, column: 6)
!2019 = !DILocation(line: 213, column: 6, scope: !1948)
!2020 = !DILocation(line: 214, column: 7, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 213, column: 17)
!2022 = !DILocation(line: 215, column: 3, scope: !2021)
!2023 = !DILocation(line: 218, column: 23, scope: !1948)
!2024 = !DILocation(line: 218, column: 47, scope: !1948)
!2025 = !DILocation(line: 218, column: 17, scope: !1948)
!2026 = !DILocation(line: 218, column: 15, scope: !1948)
!2027 = !DILocation(line: 219, column: 9, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 219, column: 9)
!2029 = !DILocation(line: 219, column: 19, scope: !2028)
!2030 = !DILocation(line: 219, column: 9, scope: !1948)
!2031 = !DILocation(line: 220, column: 7, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2028, file: !3, line: 219, column: 25)
!2033 = !DILocation(line: 221, column: 3, scope: !2032)
!2034 = !DILocation(line: 223, column: 16, scope: !1948)
!2035 = !DILocation(line: 223, column: 32, scope: !1948)
!2036 = !DILocation(line: 223, column: 9, scope: !1948)
!2037 = !DILocation(line: 223, column: 7, scope: !1948)
!2038 = !DILocation(line: 224, column: 8, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 224, column: 6)
!2040 = !DILocation(line: 224, column: 11, scope: !2039)
!2041 = !DILocation(line: 224, column: 16, scope: !2039)
!2042 = !DILocation(line: 224, column: 18, scope: !2039)
!2043 = !DILocation(line: 224, column: 17, scope: !2039)
!2044 = !DILocation(line: 224, column: 28, scope: !2039)
!2045 = !DILocation(line: 224, column: 6, scope: !1948)
!2046 = !DILocation(line: 225, column: 7, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 224, column: 53)
!2048 = !DILocation(line: 226, column: 3, scope: !2047)
!2049 = !DILocation(line: 231, column: 9, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 231, column: 2)
!2051 = !DILocation(line: 231, column: 7, scope: !2050)
!2052 = !DILocation(line: 231, column: 15, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 231, column: 2)
!2054 = !DILocation(line: 231, column: 17, scope: !2053)
!2055 = !DILocation(line: 231, column: 41, scope: !2053)
!2056 = !DILocation(line: 231, column: 45, scope: !2053)
!2057 = !DILocation(line: 231, column: 54, scope: !2053)
!2058 = !DILocation(line: 231, column: 57, scope: !2053)
!2059 = !DILocation(line: 0, scope: !2053)
!2060 = !DILocation(line: 231, column: 2, scope: !2050)
!2061 = !DILocation(line: 232, column: 29, scope: !2053)
!2062 = !DILocation(line: 232, column: 38, scope: !2053)
!2063 = !DILocation(line: 232, column: 3, scope: !2053)
!2064 = !DILocation(line: 232, column: 10, scope: !2053)
!2065 = !DILocation(line: 232, column: 24, scope: !2053)
!2066 = !DILocation(line: 232, column: 27, scope: !2053)
!2067 = !DILocation(line: 231, column: 68, scope: !2053)
!2068 = !DILocation(line: 231, column: 2, scope: !2053)
!2069 = distinct !{!2069, !2060, !2070, !608}
!2070 = !DILocation(line: 232, column: 39, scope: !2050)
!2071 = !DILocation(line: 233, column: 2, scope: !1948)
!2072 = !DILocation(line: 233, column: 9, scope: !1948)
!2073 = !DILocation(line: 233, column: 23, scope: !1948)
!2074 = !DILocation(line: 233, column: 26, scope: !1948)
!2075 = !DILocation(line: 234, column: 9, scope: !1948)
!2076 = !DILocation(line: 234, column: 2, scope: !1948)
!2077 = !DILocation(line: 237, column: 11, scope: !1948)
!2078 = !DILocation(line: 237, column: 64, scope: !1948)
!2079 = !DILocation(line: 237, column: 2, scope: !1948)
!2080 = !DILocation(line: 238, column: 13, scope: !1948)
!2081 = !DILocation(line: 238, column: 7, scope: !1948)
!2082 = !DILocation(line: 238, column: 5, scope: !1948)
!2083 = !DILocation(line: 239, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 239, column: 6)
!2085 = !DILocation(line: 239, column: 6, scope: !1948)
!2086 = !DILocation(line: 240, column: 8, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 239, column: 11)
!2088 = !DILocation(line: 240, column: 3, scope: !2087)
!2089 = !DILocation(line: 241, column: 9, scope: !2087)
!2090 = !DILocation(line: 244, column: 23, scope: !1948)
!2091 = !DILocation(line: 244, column: 47, scope: !1948)
!2092 = !DILocation(line: 244, column: 17, scope: !1948)
!2093 = !DILocation(line: 244, column: 15, scope: !1948)
!2094 = !DILocation(line: 245, column: 9, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 245, column: 9)
!2096 = !DILocation(line: 245, column: 19, scope: !2095)
!2097 = !DILocation(line: 245, column: 9, scope: !1948)
!2098 = !DILocation(line: 246, column: 7, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 245, column: 25)
!2100 = !DILocation(line: 247, column: 3, scope: !2099)
!2101 = !DILocation(line: 251, column: 8, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 251, column: 8)
!2103 = !DILocation(line: 251, column: 18, scope: !2102)
!2104 = !DILocation(line: 251, column: 8, scope: !1948)
!2105 = !DILocation(line: 252, column: 19, scope: !2102)
!2106 = !DILocation(line: 252, column: 9, scope: !2102)
!2107 = !DILocation(line: 253, column: 5, scope: !1948)
!2108 = !DILocation(line: 253, column: 14, scope: !1948)
!2109 = !DILocation(line: 253, column: 25, scope: !1948)
!2110 = !DILocation(line: 258, column: 7, scope: !1948)
!2111 = !DILocation(line: 259, column: 6, scope: !1948)
!2112 = !DILocation(line: 259, column: 4, scope: !1948)
!2113 = !DILocation(line: 260, column: 2, scope: !1948)
!2114 = !DILocation(line: 260, column: 18, scope: !1948)
!2115 = !DILocation(line: 260, column: 16, scope: !1948)
!2116 = !DILocation(line: 260, column: 39, scope: !1948)
!2117 = !DILocation(line: 260, column: 8, scope: !1948)
!2118 = !DILocation(line: 260, column: 68, scope: !1948)
!2119 = !DILocation(line: 261, column: 14, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !3, line: 261, column: 7)
!2121 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 260, column: 74)
!2122 = !DILocation(line: 261, column: 7, scope: !2120)
!2123 = !DILocation(line: 261, column: 43, scope: !2120)
!2124 = !DILocation(line: 261, column: 7, scope: !2121)
!2125 = !DILocation(line: 262, column: 35, scope: !2120)
!2126 = !DILocation(line: 262, column: 25, scope: !2120)
!2127 = !DILocation(line: 262, column: 4, scope: !2120)
!2128 = !DILocation(line: 262, column: 11, scope: !2120)
!2129 = !DILocation(line: 262, column: 23, scope: !2120)
!2130 = !DILocation(line: 263, column: 19, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 263, column: 12)
!2132 = !DILocation(line: 263, column: 12, scope: !2131)
!2133 = !DILocation(line: 263, column: 43, scope: !2131)
!2134 = !DILocation(line: 263, column: 12, scope: !2120)
!2135 = !DILocation(line: 264, column: 40, scope: !2131)
!2136 = !DILocation(line: 264, column: 30, scope: !2131)
!2137 = !DILocation(line: 264, column: 4, scope: !2131)
!2138 = !DILocation(line: 264, column: 11, scope: !2131)
!2139 = !DILocation(line: 264, column: 28, scope: !2131)
!2140 = !DILocation(line: 265, column: 19, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 265, column: 12)
!2142 = !DILocation(line: 265, column: 12, scope: !2141)
!2143 = !DILocation(line: 265, column: 48, scope: !2141)
!2144 = !DILocation(line: 265, column: 12, scope: !2131)
!2145 = !DILocation(line: 266, column: 38, scope: !2141)
!2146 = !DILocation(line: 266, column: 28, scope: !2141)
!2147 = !DILocation(line: 266, column: 4, scope: !2141)
!2148 = !DILocation(line: 266, column: 11, scope: !2141)
!2149 = !DILocation(line: 266, column: 26, scope: !2141)
!2150 = !DILocation(line: 267, column: 19, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 267, column: 12)
!2152 = !DILocation(line: 267, column: 12, scope: !2151)
!2153 = !DILocation(line: 267, column: 45, scope: !2151)
!2154 = !DILocation(line: 267, column: 12, scope: !2141)
!2155 = !DILocation(line: 268, column: 33, scope: !2151)
!2156 = !DILocation(line: 268, column: 23, scope: !2151)
!2157 = !DILocation(line: 268, column: 4, scope: !2151)
!2158 = !DILocation(line: 268, column: 11, scope: !2151)
!2159 = !DILocation(line: 268, column: 21, scope: !2151)
!2160 = !DILocation(line: 269, column: 19, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 269, column: 12)
!2162 = !DILocation(line: 269, column: 12, scope: !2161)
!2163 = !DILocation(line: 269, column: 47, scope: !2161)
!2164 = !DILocation(line: 269, column: 12, scope: !2151)
!2165 = !DILocation(line: 270, column: 34, scope: !2161)
!2166 = !DILocation(line: 270, column: 24, scope: !2161)
!2167 = !DILocation(line: 270, column: 4, scope: !2161)
!2168 = !DILocation(line: 270, column: 11, scope: !2161)
!2169 = !DILocation(line: 270, column: 22, scope: !2161)
!2170 = !DILocation(line: 271, column: 19, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 271, column: 12)
!2172 = !DILocation(line: 271, column: 12, scope: !2171)
!2173 = !DILocation(line: 271, column: 49, scope: !2171)
!2174 = !DILocation(line: 271, column: 12, scope: !2161)
!2175 = !DILocation(line: 272, column: 36, scope: !2171)
!2176 = !DILocation(line: 272, column: 26, scope: !2171)
!2177 = !DILocation(line: 272, column: 4, scope: !2171)
!2178 = !DILocation(line: 272, column: 11, scope: !2171)
!2179 = !DILocation(line: 272, column: 24, scope: !2171)
!2180 = !DILocation(line: 273, column: 19, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 273, column: 12)
!2182 = !DILocation(line: 273, column: 12, scope: !2181)
!2183 = !DILocation(line: 273, column: 45, scope: !2181)
!2184 = !DILocation(line: 273, column: 12, scope: !2171)
!2185 = !DILocation(line: 274, column: 36, scope: !2181)
!2186 = !DILocation(line: 274, column: 26, scope: !2181)
!2187 = !DILocation(line: 274, column: 4, scope: !2181)
!2188 = !DILocation(line: 274, column: 11, scope: !2181)
!2189 = !DILocation(line: 274, column: 24, scope: !2181)
!2190 = !DILocation(line: 275, column: 19, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 275, column: 12)
!2192 = !DILocation(line: 275, column: 12, scope: !2191)
!2193 = !DILocation(line: 275, column: 43, scope: !2191)
!2194 = !DILocation(line: 275, column: 12, scope: !2181)
!2195 = !DILocation(line: 276, column: 40, scope: !2191)
!2196 = !DILocation(line: 276, column: 30, scope: !2191)
!2197 = !DILocation(line: 276, column: 4, scope: !2191)
!2198 = !DILocation(line: 276, column: 11, scope: !2191)
!2199 = !DILocation(line: 276, column: 28, scope: !2191)
!2200 = !DILocation(line: 277, column: 19, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 277, column: 12)
!2202 = !DILocation(line: 277, column: 12, scope: !2201)
!2203 = !DILocation(line: 277, column: 51, scope: !2201)
!2204 = !DILocation(line: 277, column: 12, scope: !2191)
!2205 = !DILocation(line: 278, column: 39, scope: !2201)
!2206 = !DILocation(line: 278, column: 29, scope: !2201)
!2207 = !DILocation(line: 278, column: 4, scope: !2201)
!2208 = !DILocation(line: 278, column: 11, scope: !2201)
!2209 = !DILocation(line: 278, column: 27, scope: !2201)
!2210 = !DILocation(line: 279, column: 19, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 279, column: 12)
!2212 = !DILocation(line: 279, column: 12, scope: !2211)
!2213 = !DILocation(line: 279, column: 47, scope: !2211)
!2214 = !DILocation(line: 279, column: 12, scope: !2201)
!2215 = !DILocation(line: 280, column: 35, scope: !2211)
!2216 = !DILocation(line: 280, column: 25, scope: !2211)
!2217 = !DILocation(line: 280, column: 4, scope: !2211)
!2218 = !DILocation(line: 280, column: 11, scope: !2211)
!2219 = !DILocation(line: 280, column: 23, scope: !2211)
!2220 = !DILocation(line: 281, column: 19, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 281, column: 12)
!2222 = !DILocation(line: 281, column: 12, scope: !2221)
!2223 = !DILocation(line: 281, column: 47, scope: !2221)
!2224 = !DILocation(line: 281, column: 12, scope: !2211)
!2225 = !DILocation(line: 282, column: 35, scope: !2221)
!2226 = !DILocation(line: 282, column: 25, scope: !2221)
!2227 = !DILocation(line: 282, column: 4, scope: !2221)
!2228 = !DILocation(line: 282, column: 11, scope: !2221)
!2229 = !DILocation(line: 282, column: 23, scope: !2221)
!2230 = !DILocation(line: 283, column: 19, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 283, column: 12)
!2232 = !DILocation(line: 283, column: 12, scope: !2231)
!2233 = !DILocation(line: 283, column: 48, scope: !2231)
!2234 = !DILocation(line: 283, column: 12, scope: !2221)
!2235 = !DILocation(line: 284, column: 37, scope: !2231)
!2236 = !DILocation(line: 284, column: 27, scope: !2231)
!2237 = !DILocation(line: 284, column: 4, scope: !2231)
!2238 = !DILocation(line: 284, column: 11, scope: !2231)
!2239 = !DILocation(line: 284, column: 25, scope: !2231)
!2240 = !DILocation(line: 285, column: 19, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 285, column: 12)
!2242 = !DILocation(line: 285, column: 12, scope: !2241)
!2243 = !DILocation(line: 285, column: 44, scope: !2241)
!2244 = !DILocation(line: 285, column: 12, scope: !2231)
!2245 = !DILocation(line: 286, column: 38, scope: !2241)
!2246 = !DILocation(line: 286, column: 28, scope: !2241)
!2247 = !DILocation(line: 286, column: 4, scope: !2241)
!2248 = !DILocation(line: 286, column: 11, scope: !2241)
!2249 = !DILocation(line: 286, column: 26, scope: !2241)
!2250 = !DILocation(line: 287, column: 19, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 287, column: 12)
!2252 = !DILocation(line: 287, column: 12, scope: !2251)
!2253 = !DILocation(line: 287, column: 55, scope: !2251)
!2254 = !DILocation(line: 287, column: 12, scope: !2241)
!2255 = !DILocation(line: 288, column: 33, scope: !2251)
!2256 = !DILocation(line: 288, column: 23, scope: !2251)
!2257 = !DILocation(line: 288, column: 4, scope: !2251)
!2258 = !DILocation(line: 288, column: 11, scope: !2251)
!2259 = !DILocation(line: 288, column: 21, scope: !2251)
!2260 = !DILocation(line: 289, column: 19, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 289, column: 12)
!2262 = !DILocation(line: 289, column: 12, scope: !2261)
!2263 = !DILocation(line: 289, column: 50, scope: !2261)
!2264 = !DILocation(line: 289, column: 12, scope: !2251)
!2265 = !DILocation(line: 290, column: 37, scope: !2261)
!2266 = !DILocation(line: 290, column: 27, scope: !2261)
!2267 = !DILocation(line: 290, column: 4, scope: !2261)
!2268 = !DILocation(line: 290, column: 11, scope: !2261)
!2269 = !DILocation(line: 290, column: 25, scope: !2261)
!2270 = !DILocation(line: 291, column: 19, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 291, column: 12)
!2272 = !DILocation(line: 291, column: 12, scope: !2271)
!2273 = !DILocation(line: 291, column: 44, scope: !2271)
!2274 = !DILocation(line: 291, column: 12, scope: !2261)
!2275 = !DILocation(line: 292, column: 36, scope: !2271)
!2276 = !DILocation(line: 292, column: 26, scope: !2271)
!2277 = !DILocation(line: 292, column: 4, scope: !2271)
!2278 = !DILocation(line: 292, column: 11, scope: !2271)
!2279 = !DILocation(line: 292, column: 24, scope: !2271)
!2280 = !DILocation(line: 293, column: 19, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 293, column: 12)
!2282 = !DILocation(line: 293, column: 12, scope: !2281)
!2283 = !DILocation(line: 293, column: 53, scope: !2281)
!2284 = !DILocation(line: 293, column: 12, scope: !2271)
!2285 = !DILocation(line: 294, column: 41, scope: !2281)
!2286 = !DILocation(line: 294, column: 31, scope: !2281)
!2287 = !DILocation(line: 294, column: 4, scope: !2281)
!2288 = !DILocation(line: 294, column: 11, scope: !2281)
!2289 = !DILocation(line: 294, column: 29, scope: !2281)
!2290 = !DILocation(line: 295, column: 19, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 295, column: 12)
!2292 = !DILocation(line: 295, column: 12, scope: !2291)
!2293 = !DILocation(line: 295, column: 43, scope: !2291)
!2294 = !DILocation(line: 295, column: 12, scope: !2281)
!2295 = !DILocation(line: 296, column: 27, scope: !2291)
!2296 = !DILocation(line: 296, column: 17, scope: !2291)
!2297 = !DILocation(line: 296, column: 15, scope: !2291)
!2298 = !DILocation(line: 296, column: 4, scope: !2291)
!2299 = !DILocation(line: 297, column: 19, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 297, column: 12)
!2301 = !DILocation(line: 297, column: 12, scope: !2300)
!2302 = !DILocation(line: 297, column: 42, scope: !2300)
!2303 = !DILocation(line: 297, column: 12, scope: !2291)
!2304 = !DILocation(line: 298, column: 32, scope: !2300)
!2305 = !DILocation(line: 298, column: 22, scope: !2300)
!2306 = !DILocation(line: 298, column: 4, scope: !2300)
!2307 = !DILocation(line: 298, column: 11, scope: !2300)
!2308 = !DILocation(line: 298, column: 20, scope: !2300)
!2309 = !DILocation(line: 299, column: 19, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 299, column: 12)
!2311 = !DILocation(line: 299, column: 12, scope: !2310)
!2312 = !DILocation(line: 299, column: 42, scope: !2310)
!2313 = !DILocation(line: 299, column: 12, scope: !2300)
!2314 = !DILocation(line: 300, column: 32, scope: !2310)
!2315 = !DILocation(line: 300, column: 22, scope: !2310)
!2316 = !DILocation(line: 300, column: 4, scope: !2310)
!2317 = !DILocation(line: 300, column: 11, scope: !2310)
!2318 = !DILocation(line: 300, column: 20, scope: !2310)
!2319 = !DILocation(line: 301, column: 19, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 301, column: 12)
!2321 = !DILocation(line: 301, column: 12, scope: !2320)
!2322 = !DILocation(line: 301, column: 44, scope: !2320)
!2323 = !DILocation(line: 301, column: 12, scope: !2310)
!2324 = !DILocation(line: 302, column: 34, scope: !2320)
!2325 = !DILocation(line: 302, column: 24, scope: !2320)
!2326 = !DILocation(line: 302, column: 4, scope: !2320)
!2327 = !DILocation(line: 302, column: 11, scope: !2320)
!2328 = !DILocation(line: 302, column: 22, scope: !2320)
!2329 = !DILocation(line: 303, column: 19, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 303, column: 12)
!2331 = !DILocation(line: 303, column: 12, scope: !2330)
!2332 = !DILocation(line: 303, column: 56, scope: !2330)
!2333 = !DILocation(line: 303, column: 12, scope: !2320)
!2334 = !DILocation(line: 304, column: 49, scope: !2330)
!2335 = !DILocation(line: 304, column: 39, scope: !2330)
!2336 = !DILocation(line: 304, column: 4, scope: !2330)
!2337 = !DILocation(line: 304, column: 11, scope: !2330)
!2338 = !DILocation(line: 304, column: 37, scope: !2330)
!2339 = !DILocation(line: 305, column: 19, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 305, column: 12)
!2341 = !DILocation(line: 305, column: 12, scope: !2340)
!2342 = !DILocation(line: 305, column: 56, scope: !2340)
!2343 = !DILocation(line: 305, column: 12, scope: !2330)
!2344 = !DILocation(line: 306, column: 49, scope: !2340)
!2345 = !DILocation(line: 306, column: 39, scope: !2340)
!2346 = !DILocation(line: 306, column: 4, scope: !2340)
!2347 = !DILocation(line: 306, column: 11, scope: !2340)
!2348 = !DILocation(line: 306, column: 37, scope: !2340)
!2349 = !DILocation(line: 307, column: 19, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 307, column: 12)
!2351 = !DILocation(line: 307, column: 12, scope: !2350)
!2352 = !DILocation(line: 307, column: 47, scope: !2350)
!2353 = !DILocation(line: 307, column: 12, scope: !2340)
!2354 = !DILocation(line: 308, column: 36, scope: !2350)
!2355 = !DILocation(line: 308, column: 26, scope: !2350)
!2356 = !DILocation(line: 308, column: 4, scope: !2350)
!2357 = !DILocation(line: 308, column: 11, scope: !2350)
!2358 = !DILocation(line: 308, column: 24, scope: !2350)
!2359 = distinct !{!2359, !2113, !2360, !608}
!2360 = !DILocation(line: 310, column: 2, scope: !1948)
!2361 = !DILocation(line: 312, column: 2, scope: !1948)
!2362 = !DILocation(line: 313, column: 22, scope: !1948)
!2363 = !DILocation(line: 313, column: 31, scope: !1948)
!2364 = !DILocation(line: 313, column: 40, scope: !1948)
!2365 = !DILocation(line: 313, column: 38, scope: !1948)
!2366 = !DILocation(line: 313, column: 2, scope: !1948)
!2367 = !DILocation(line: 313, column: 9, scope: !1948)
!2368 = !DILocation(line: 313, column: 18, scope: !1948)
!2369 = !DILocation(line: 315, column: 1, scope: !1948)
!2370 = !DILocation(line: 316, column: 7, scope: !1948)
!2371 = !DILocation(line: 316, column: 2, scope: !1948)
!2372 = !DILocation(line: 317, column: 1, scope: !1948)
!2373 = !DILocation(line: 318, column: 9, scope: !1948)
!2374 = !DILocation(line: 318, column: 2, scope: !1948)
!2375 = !DILocation(line: 319, column: 9, scope: !1948)
!2376 = !DILocation(line: 319, column: 2, scope: !1948)
!2377 = !DILocation(line: 320, column: 1, scope: !1948)
!2378 = distinct !DISubprogram(name: "free_node", scope: !3, file: !3, line: 58, type: !2379, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2381)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{null, !382}
!2381 = !{!2382}
!2382 = !DILocalVariable(name: "n", arg: 1, scope: !2378, file: !3, line: 58, type: !382)
!2383 = !DILocation(line: 58, column: 19, scope: !2378)
!2384 = !DILocation(line: 60, column: 2, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 60, column: 2)
!2386 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 60, column: 2)
!2387 = !DILocation(line: 60, column: 2, scope: !2386)
!2388 = !DILocation(line: 62, column: 6, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 62, column: 6)
!2390 = !DILocation(line: 62, column: 8, scope: !2389)
!2391 = !DILocation(line: 62, column: 6, scope: !2378)
!2392 = !DILocation(line: 63, column: 3, scope: !2389)
!2393 = !DILocation(line: 65, column: 7, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 65, column: 6)
!2395 = !DILocation(line: 65, column: 11, scope: !2394)
!2396 = !DILocation(line: 65, column: 6, scope: !2394)
!2397 = !DILocation(line: 65, column: 6, scope: !2378)
!2398 = !DILocation(line: 66, column: 9, scope: !2394)
!2399 = !DILocation(line: 66, column: 13, scope: !2394)
!2400 = !DILocation(line: 66, column: 3, scope: !2394)
!2401 = !DILocation(line: 67, column: 7, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 67, column: 6)
!2403 = !DILocation(line: 67, column: 11, scope: !2402)
!2404 = !DILocation(line: 67, column: 6, scope: !2402)
!2405 = !DILocation(line: 67, column: 6, scope: !2378)
!2406 = !DILocation(line: 68, column: 9, scope: !2402)
!2407 = !DILocation(line: 68, column: 13, scope: !2402)
!2408 = !DILocation(line: 68, column: 3, scope: !2402)
!2409 = !DILocation(line: 69, column: 7, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 69, column: 6)
!2411 = !DILocation(line: 69, column: 11, scope: !2410)
!2412 = !DILocation(line: 69, column: 6, scope: !2410)
!2413 = !DILocation(line: 69, column: 6, scope: !2378)
!2414 = !DILocation(line: 70, column: 9, scope: !2410)
!2415 = !DILocation(line: 70, column: 13, scope: !2410)
!2416 = !DILocation(line: 70, column: 3, scope: !2410)
!2417 = !DILocation(line: 71, column: 1, scope: !2378)
!2418 = !DISubprogram(name: "free", scope: !1945, file: !1945, line: 64, type: !2419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{null, !58}
!2421 = distinct !DISubprogram(name: "topology_sysfs_get_mem_props", scope: !3, file: !3, line: 323, type: !2422, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2424)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!540, !59, !59, !443}
!2424 = !{!2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438}
!2425 = !DILocalVariable(name: "node_id", arg: 1, scope: !2421, file: !3, line: 323, type: !59)
!2426 = !DILocalVariable(name: "mem_id", arg: 2, scope: !2421, file: !3, line: 323, type: !59)
!2427 = !DILocalVariable(name: "props", arg: 3, scope: !2421, file: !3, line: 323, type: !443)
!2428 = !DILocalVariable(name: "fd", scope: !2421, file: !3, line: 324, type: !1680)
!2429 = !DILocalVariable(name: "read_buf", scope: !2421, file: !3, line: 325, type: !1688)
!2430 = !DILocalVariable(name: "p", scope: !2421, file: !3, line: 325, type: !1688)
!2431 = !DILocalVariable(name: "prop_name", scope: !2421, file: !3, line: 326, type: !1778)
!2432 = !DILocalVariable(name: "path", scope: !2421, file: !3, line: 327, type: !1778)
!2433 = !DILocalVariable(name: "prop_val", scope: !2421, file: !3, line: 328, type: !1780)
!2434 = !DILocalVariable(name: "prog", scope: !2421, file: !3, line: 329, type: !59)
!2435 = !DILocalVariable(name: "read_size", scope: !2421, file: !3, line: 330, type: !656)
!2436 = !DILocalVariable(name: "ret", scope: !2421, file: !3, line: 331, type: !540)
!2437 = !DILabel(scope: !2421, name: "err2", file: !3, line: 371)
!2438 = !DILabel(scope: !2421, name: "err1", file: !3, line: 373)
!2439 = !DILocation(line: 323, column: 39, scope: !2421)
!2440 = !DILocation(line: 323, column: 57, scope: !2421)
!2441 = !DILocation(line: 323, column: 86, scope: !2421)
!2442 = !DILocation(line: 324, column: 2, scope: !2421)
!2443 = !DILocation(line: 324, column: 8, scope: !2421)
!2444 = !DILocation(line: 325, column: 2, scope: !2421)
!2445 = !DILocation(line: 325, column: 8, scope: !2421)
!2446 = !DILocation(line: 325, column: 19, scope: !2421)
!2447 = !DILocation(line: 326, column: 2, scope: !2421)
!2448 = !DILocation(line: 326, column: 7, scope: !2421)
!2449 = !DILocation(line: 327, column: 2, scope: !2421)
!2450 = !DILocation(line: 327, column: 7, scope: !2421)
!2451 = !DILocation(line: 328, column: 2, scope: !2421)
!2452 = !DILocation(line: 328, column: 26, scope: !2421)
!2453 = !DILocation(line: 329, column: 2, scope: !2421)
!2454 = !DILocation(line: 329, column: 11, scope: !2421)
!2455 = !DILocation(line: 330, column: 5, scope: !2421)
!2456 = !DILocation(line: 330, column: 9, scope: !2421)
!2457 = !DILocation(line: 331, column: 2, scope: !2421)
!2458 = !DILocation(line: 331, column: 16, scope: !2421)
!2459 = !DILocation(line: 333, column: 2, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 333, column: 2)
!2461 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 333, column: 2)
!2462 = !DILocation(line: 333, column: 2, scope: !2461)
!2463 = !DILocation(line: 334, column: 11, scope: !2421)
!2464 = !DILocation(line: 334, column: 77, scope: !2421)
!2465 = !DILocation(line: 334, column: 86, scope: !2421)
!2466 = !DILocation(line: 334, column: 2, scope: !2421)
!2467 = !DILocation(line: 335, column: 13, scope: !2421)
!2468 = !DILocation(line: 335, column: 7, scope: !2421)
!2469 = !DILocation(line: 335, column: 5, scope: !2421)
!2470 = !DILocation(line: 336, column: 7, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 336, column: 6)
!2472 = !DILocation(line: 336, column: 6, scope: !2421)
!2473 = !DILocation(line: 337, column: 3, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 336, column: 11)
!2475 = !DILocation(line: 339, column: 13, scope: !2421)
!2476 = !DILocation(line: 339, column: 11, scope: !2421)
!2477 = !DILocation(line: 340, column: 7, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 340, column: 6)
!2479 = !DILocation(line: 340, column: 6, scope: !2421)
!2480 = !DILocation(line: 341, column: 7, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 340, column: 17)
!2482 = !DILocation(line: 342, column: 3, scope: !2481)
!2483 = !DILocation(line: 345, column: 23, scope: !2421)
!2484 = !DILocation(line: 345, column: 47, scope: !2421)
!2485 = !DILocation(line: 345, column: 17, scope: !2421)
!2486 = !DILocation(line: 345, column: 15, scope: !2421)
!2487 = !DILocation(line: 346, column: 9, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 346, column: 9)
!2489 = !DILocation(line: 346, column: 19, scope: !2488)
!2490 = !DILocation(line: 346, column: 9, scope: !2421)
!2491 = !DILocation(line: 347, column: 7, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 346, column: 25)
!2493 = !DILocation(line: 348, column: 3, scope: !2492)
!2494 = !DILocation(line: 352, column: 8, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 352, column: 8)
!2496 = !DILocation(line: 352, column: 18, scope: !2495)
!2497 = !DILocation(line: 352, column: 8, scope: !2421)
!2498 = !DILocation(line: 353, column: 19, scope: !2495)
!2499 = !DILocation(line: 353, column: 9, scope: !2495)
!2500 = !DILocation(line: 354, column: 5, scope: !2421)
!2501 = !DILocation(line: 354, column: 14, scope: !2421)
!2502 = !DILocation(line: 354, column: 25, scope: !2421)
!2503 = !DILocation(line: 356, column: 7, scope: !2421)
!2504 = !DILocation(line: 357, column: 6, scope: !2421)
!2505 = !DILocation(line: 357, column: 4, scope: !2421)
!2506 = !DILocation(line: 358, column: 2, scope: !2421)
!2507 = !DILocation(line: 358, column: 18, scope: !2421)
!2508 = !DILocation(line: 358, column: 16, scope: !2421)
!2509 = !DILocation(line: 358, column: 39, scope: !2421)
!2510 = !DILocation(line: 358, column: 8, scope: !2421)
!2511 = !DILocation(line: 358, column: 68, scope: !2421)
!2512 = !DILocation(line: 359, column: 14, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 359, column: 7)
!2514 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 358, column: 74)
!2515 = !DILocation(line: 359, column: 7, scope: !2513)
!2516 = !DILocation(line: 359, column: 37, scope: !2513)
!2517 = !DILocation(line: 359, column: 7, scope: !2514)
!2518 = !DILocation(line: 360, column: 32, scope: !2513)
!2519 = !DILocation(line: 360, column: 22, scope: !2513)
!2520 = !DILocation(line: 360, column: 4, scope: !2513)
!2521 = !DILocation(line: 360, column: 11, scope: !2513)
!2522 = !DILocation(line: 360, column: 20, scope: !2513)
!2523 = !DILocation(line: 361, column: 19, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 361, column: 12)
!2525 = !DILocation(line: 361, column: 12, scope: !2524)
!2526 = !DILocation(line: 361, column: 46, scope: !2524)
!2527 = !DILocation(line: 361, column: 12, scope: !2513)
!2528 = !DILocation(line: 362, column: 25, scope: !2524)
!2529 = !DILocation(line: 362, column: 4, scope: !2524)
!2530 = !DILocation(line: 362, column: 11, scope: !2524)
!2531 = !DILocation(line: 362, column: 23, scope: !2524)
!2532 = !DILocation(line: 363, column: 19, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 363, column: 12)
!2534 = !DILocation(line: 363, column: 12, scope: !2533)
!2535 = !DILocation(line: 363, column: 38, scope: !2533)
!2536 = !DILocation(line: 363, column: 12, scope: !2524)
!2537 = !DILocation(line: 364, column: 44, scope: !2533)
!2538 = !DILocation(line: 364, column: 34, scope: !2533)
!2539 = !DILocation(line: 364, column: 4, scope: !2533)
!2540 = !DILocation(line: 364, column: 11, scope: !2533)
!2541 = !DILocation(line: 364, column: 32, scope: !2533)
!2542 = !DILocation(line: 365, column: 19, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 365, column: 12)
!2544 = !DILocation(line: 365, column: 12, scope: !2543)
!2545 = !DILocation(line: 365, column: 38, scope: !2543)
!2546 = !DILocation(line: 365, column: 12, scope: !2533)
!2547 = !DILocation(line: 366, column: 29, scope: !2543)
!2548 = !DILocation(line: 366, column: 19, scope: !2543)
!2549 = !DILocation(line: 366, column: 4, scope: !2543)
!2550 = !DILocation(line: 366, column: 11, scope: !2543)
!2551 = !DILocation(line: 366, column: 17, scope: !2543)
!2552 = !DILocation(line: 367, column: 19, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 367, column: 12)
!2554 = !DILocation(line: 367, column: 12, scope: !2553)
!2555 = !DILocation(line: 367, column: 44, scope: !2553)
!2556 = !DILocation(line: 367, column: 12, scope: !2543)
!2557 = !DILocation(line: 368, column: 38, scope: !2553)
!2558 = !DILocation(line: 368, column: 28, scope: !2553)
!2559 = !DILocation(line: 368, column: 4, scope: !2553)
!2560 = !DILocation(line: 368, column: 11, scope: !2553)
!2561 = !DILocation(line: 368, column: 26, scope: !2553)
!2562 = distinct !{!2562, !2506, !2563, !608}
!2563 = !DILocation(line: 369, column: 2, scope: !2421)
!2564 = !DILocation(line: 371, column: 1, scope: !2421)
!2565 = !DILocation(line: 372, column: 7, scope: !2421)
!2566 = !DILocation(line: 372, column: 2, scope: !2421)
!2567 = !DILocation(line: 373, column: 1, scope: !2421)
!2568 = !DILocation(line: 374, column: 9, scope: !2421)
!2569 = !DILocation(line: 374, column: 2, scope: !2421)
!2570 = !DILocation(line: 375, column: 9, scope: !2421)
!2571 = !DILocation(line: 375, column: 2, scope: !2421)
!2572 = !DILocation(line: 376, column: 1, scope: !2421)
!2573 = distinct !DISubprogram(name: "topology_sysfs_get_cache_props", scope: !3, file: !3, line: 379, type: !2574, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2576)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!540, !59, !59, !473}
!2576 = !{!2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591}
!2577 = !DILocalVariable(name: "node_id", arg: 1, scope: !2573, file: !3, line: 379, type: !59)
!2578 = !DILocalVariable(name: "cache_id", arg: 2, scope: !2573, file: !3, line: 379, type: !59)
!2579 = !DILocalVariable(name: "props", arg: 3, scope: !2573, file: !3, line: 379, type: !473)
!2580 = !DILocalVariable(name: "fd", scope: !2573, file: !3, line: 380, type: !1680)
!2581 = !DILocalVariable(name: "read_buf", scope: !2573, file: !3, line: 381, type: !1688)
!2582 = !DILocalVariable(name: "p", scope: !2573, file: !3, line: 381, type: !1688)
!2583 = !DILocalVariable(name: "prop_name", scope: !2573, file: !3, line: 382, type: !1778)
!2584 = !DILocalVariable(name: "path", scope: !2573, file: !3, line: 383, type: !1778)
!2585 = !DILocalVariable(name: "prop_val", scope: !2573, file: !3, line: 384, type: !1780)
!2586 = !DILocalVariable(name: "i", scope: !2573, file: !3, line: 385, type: !59)
!2587 = !DILocalVariable(name: "prog", scope: !2573, file: !3, line: 385, type: !59)
!2588 = !DILocalVariable(name: "read_size", scope: !2573, file: !3, line: 386, type: !656)
!2589 = !DILocalVariable(name: "ret", scope: !2573, file: !3, line: 387, type: !540)
!2590 = !DILabel(scope: !2573, name: "err2", file: !3, line: 443)
!2591 = !DILabel(scope: !2573, name: "err1", file: !3, line: 445)
!2592 = !DILocation(line: 379, column: 41, scope: !2573)
!2593 = !DILocation(line: 379, column: 59, scope: !2573)
!2594 = !DILocation(line: 379, column: 89, scope: !2573)
!2595 = !DILocation(line: 380, column: 2, scope: !2573)
!2596 = !DILocation(line: 380, column: 8, scope: !2573)
!2597 = !DILocation(line: 381, column: 2, scope: !2573)
!2598 = !DILocation(line: 381, column: 8, scope: !2573)
!2599 = !DILocation(line: 381, column: 19, scope: !2573)
!2600 = !DILocation(line: 382, column: 2, scope: !2573)
!2601 = !DILocation(line: 382, column: 7, scope: !2573)
!2602 = !DILocation(line: 383, column: 2, scope: !2573)
!2603 = !DILocation(line: 383, column: 7, scope: !2573)
!2604 = !DILocation(line: 384, column: 2, scope: !2573)
!2605 = !DILocation(line: 384, column: 26, scope: !2573)
!2606 = !DILocation(line: 385, column: 2, scope: !2573)
!2607 = !DILocation(line: 385, column: 11, scope: !2573)
!2608 = !DILocation(line: 385, column: 14, scope: !2573)
!2609 = !DILocation(line: 386, column: 5, scope: !2573)
!2610 = !DILocation(line: 386, column: 9, scope: !2573)
!2611 = !DILocation(line: 387, column: 2, scope: !2573)
!2612 = !DILocation(line: 387, column: 16, scope: !2573)
!2613 = !DILocation(line: 389, column: 2, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 389, column: 2)
!2615 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 389, column: 2)
!2616 = !DILocation(line: 389, column: 2, scope: !2615)
!2617 = !DILocation(line: 390, column: 11, scope: !2573)
!2618 = !DILocation(line: 390, column: 74, scope: !2573)
!2619 = !DILocation(line: 390, column: 83, scope: !2573)
!2620 = !DILocation(line: 390, column: 2, scope: !2573)
!2621 = !DILocation(line: 391, column: 13, scope: !2573)
!2622 = !DILocation(line: 391, column: 7, scope: !2573)
!2623 = !DILocation(line: 391, column: 5, scope: !2573)
!2624 = !DILocation(line: 392, column: 7, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 392, column: 6)
!2626 = !DILocation(line: 392, column: 6, scope: !2573)
!2627 = !DILocation(line: 393, column: 3, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 392, column: 11)
!2629 = !DILocation(line: 395, column: 13, scope: !2573)
!2630 = !DILocation(line: 395, column: 11, scope: !2573)
!2631 = !DILocation(line: 396, column: 7, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 396, column: 6)
!2633 = !DILocation(line: 396, column: 6, scope: !2573)
!2634 = !DILocation(line: 397, column: 7, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 396, column: 17)
!2636 = !DILocation(line: 398, column: 3, scope: !2635)
!2637 = !DILocation(line: 401, column: 23, scope: !2573)
!2638 = !DILocation(line: 401, column: 47, scope: !2573)
!2639 = !DILocation(line: 401, column: 17, scope: !2573)
!2640 = !DILocation(line: 401, column: 15, scope: !2573)
!2641 = !DILocation(line: 402, column: 9, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 402, column: 9)
!2643 = !DILocation(line: 402, column: 19, scope: !2642)
!2644 = !DILocation(line: 402, column: 9, scope: !2573)
!2645 = !DILocation(line: 403, column: 7, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 402, column: 25)
!2647 = !DILocation(line: 404, column: 3, scope: !2646)
!2648 = !DILocation(line: 408, column: 8, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 408, column: 8)
!2650 = !DILocation(line: 408, column: 18, scope: !2649)
!2651 = !DILocation(line: 408, column: 8, scope: !2573)
!2652 = !DILocation(line: 409, column: 19, scope: !2649)
!2653 = !DILocation(line: 409, column: 9, scope: !2649)
!2654 = !DILocation(line: 410, column: 5, scope: !2573)
!2655 = !DILocation(line: 410, column: 14, scope: !2573)
!2656 = !DILocation(line: 410, column: 25, scope: !2573)
!2657 = !DILocation(line: 412, column: 7, scope: !2573)
!2658 = !DILocation(line: 413, column: 6, scope: !2573)
!2659 = !DILocation(line: 413, column: 4, scope: !2573)
!2660 = !DILocation(line: 414, column: 2, scope: !2573)
!2661 = !DILocation(line: 414, column: 18, scope: !2573)
!2662 = !DILocation(line: 414, column: 16, scope: !2573)
!2663 = !DILocation(line: 414, column: 39, scope: !2573)
!2664 = !DILocation(line: 414, column: 8, scope: !2573)
!2665 = !DILocation(line: 414, column: 68, scope: !2573)
!2666 = !DILocation(line: 415, column: 14, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 415, column: 7)
!2668 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 414, column: 74)
!2669 = !DILocation(line: 415, column: 7, scope: !2667)
!2670 = !DILocation(line: 415, column: 44, scope: !2667)
!2671 = !DILocation(line: 415, column: 7, scope: !2668)
!2672 = !DILocation(line: 416, column: 38, scope: !2667)
!2673 = !DILocation(line: 416, column: 28, scope: !2667)
!2674 = !DILocation(line: 416, column: 4, scope: !2667)
!2675 = !DILocation(line: 416, column: 11, scope: !2667)
!2676 = !DILocation(line: 416, column: 26, scope: !2667)
!2677 = !DILocation(line: 417, column: 19, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 417, column: 12)
!2679 = !DILocation(line: 417, column: 12, scope: !2678)
!2680 = !DILocation(line: 417, column: 38, scope: !2678)
!2681 = !DILocation(line: 417, column: 12, scope: !2667)
!2682 = !DILocation(line: 418, column: 34, scope: !2678)
!2683 = !DILocation(line: 418, column: 24, scope: !2678)
!2684 = !DILocation(line: 418, column: 4, scope: !2678)
!2685 = !DILocation(line: 418, column: 11, scope: !2678)
!2686 = !DILocation(line: 418, column: 22, scope: !2678)
!2687 = !DILocation(line: 419, column: 19, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 419, column: 12)
!2689 = !DILocation(line: 419, column: 12, scope: !2688)
!2690 = !DILocation(line: 419, column: 37, scope: !2688)
!2691 = !DILocation(line: 419, column: 12, scope: !2678)
!2692 = !DILocation(line: 420, column: 33, scope: !2688)
!2693 = !DILocation(line: 420, column: 23, scope: !2688)
!2694 = !DILocation(line: 420, column: 4, scope: !2688)
!2695 = !DILocation(line: 420, column: 11, scope: !2688)
!2696 = !DILocation(line: 420, column: 21, scope: !2688)
!2697 = !DILocation(line: 421, column: 19, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 421, column: 12)
!2699 = !DILocation(line: 421, column: 12, scope: !2698)
!2700 = !DILocation(line: 421, column: 48, scope: !2698)
!2701 = !DILocation(line: 421, column: 12, scope: !2688)
!2702 = !DILocation(line: 422, column: 37, scope: !2698)
!2703 = !DILocation(line: 422, column: 27, scope: !2698)
!2704 = !DILocation(line: 422, column: 4, scope: !2698)
!2705 = !DILocation(line: 422, column: 11, scope: !2698)
!2706 = !DILocation(line: 422, column: 25, scope: !2698)
!2707 = !DILocation(line: 423, column: 19, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 423, column: 12)
!2709 = !DILocation(line: 423, column: 12, scope: !2708)
!2710 = !DILocation(line: 423, column: 52, scope: !2708)
!2711 = !DILocation(line: 423, column: 12, scope: !2698)
!2712 = !DILocation(line: 424, column: 40, scope: !2708)
!2713 = !DILocation(line: 424, column: 30, scope: !2708)
!2714 = !DILocation(line: 424, column: 4, scope: !2708)
!2715 = !DILocation(line: 424, column: 11, scope: !2708)
!2716 = !DILocation(line: 424, column: 28, scope: !2708)
!2717 = !DILocation(line: 425, column: 19, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 425, column: 12)
!2719 = !DILocation(line: 425, column: 12, scope: !2718)
!2720 = !DILocation(line: 425, column: 44, scope: !2718)
!2721 = !DILocation(line: 425, column: 12, scope: !2708)
!2722 = !DILocation(line: 426, column: 42, scope: !2718)
!2723 = !DILocation(line: 426, column: 32, scope: !2718)
!2724 = !DILocation(line: 426, column: 4, scope: !2718)
!2725 = !DILocation(line: 426, column: 11, scope: !2718)
!2726 = !DILocation(line: 426, column: 30, scope: !2718)
!2727 = !DILocation(line: 427, column: 19, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 427, column: 12)
!2729 = !DILocation(line: 427, column: 12, scope: !2728)
!2730 = !DILocation(line: 427, column: 40, scope: !2728)
!2731 = !DILocation(line: 427, column: 12, scope: !2718)
!2732 = !DILocation(line: 428, column: 36, scope: !2728)
!2733 = !DILocation(line: 428, column: 26, scope: !2728)
!2734 = !DILocation(line: 428, column: 4, scope: !2728)
!2735 = !DILocation(line: 428, column: 11, scope: !2728)
!2736 = !DILocation(line: 428, column: 24, scope: !2728)
!2737 = !DILocation(line: 429, column: 19, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 429, column: 12)
!2739 = !DILocation(line: 429, column: 12, scope: !2738)
!2740 = !DILocation(line: 429, column: 37, scope: !2738)
!2741 = !DILocation(line: 429, column: 12, scope: !2728)
!2742 = !DILocation(line: 430, column: 39, scope: !2738)
!2743 = !DILocation(line: 430, column: 29, scope: !2738)
!2744 = !DILocation(line: 430, column: 4, scope: !2738)
!2745 = !DILocation(line: 430, column: 11, scope: !2738)
!2746 = !DILocation(line: 430, column: 27, scope: !2738)
!2747 = !DILocation(line: 431, column: 19, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 431, column: 12)
!2749 = !DILocation(line: 431, column: 12, scope: !2748)
!2750 = !DILocation(line: 431, column: 45, scope: !2748)
!2751 = !DILocation(line: 431, column: 12, scope: !2738)
!2752 = !DILocation(line: 432, column: 4, scope: !2748)
!2753 = distinct !{!2753, !2660, !2754, !608}
!2754 = !DILocation(line: 433, column: 2, scope: !2573)
!2755 = !DILocation(line: 435, column: 7, scope: !2573)
!2756 = !DILocation(line: 436, column: 14, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 436, column: 6)
!2758 = !DILocation(line: 436, column: 7, scope: !2757)
!2759 = !DILocation(line: 436, column: 43, scope: !2757)
!2760 = !DILocation(line: 436, column: 48, scope: !2757)
!2761 = !DILocation(line: 436, column: 51, scope: !2757)
!2762 = !DILocation(line: 436, column: 6, scope: !2573)
!2763 = !DILocation(line: 437, column: 5, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 436, column: 57)
!2765 = !DILocation(line: 438, column: 3, scope: !2764)
!2766 = !DILocation(line: 438, column: 11, scope: !2764)
!2767 = !DILocation(line: 438, column: 13, scope: !2764)
!2768 = !DILocation(line: 438, column: 33, scope: !2764)
!2769 = !DILocation(line: 439, column: 15, scope: !2764)
!2770 = !DILocation(line: 439, column: 13, scope: !2764)
!2771 = !DILocation(line: 439, column: 37, scope: !2764)
!2772 = !DILocation(line: 439, column: 44, scope: !2764)
!2773 = !DILocation(line: 439, column: 56, scope: !2764)
!2774 = !DILocation(line: 439, column: 5, scope: !2764)
!2775 = !DILocation(line: 440, column: 13, scope: !2764)
!2776 = !DILocation(line: 0, scope: !2764)
!2777 = distinct !{!2777, !2765, !2778, !608}
!2778 = !DILocation(line: 440, column: 19, scope: !2764)
!2779 = !DILocation(line: 441, column: 2, scope: !2764)
!2780 = !DILocation(line: 443, column: 1, scope: !2573)
!2781 = !DILocation(line: 444, column: 7, scope: !2573)
!2782 = !DILocation(line: 444, column: 2, scope: !2573)
!2783 = !DILocation(line: 445, column: 1, scope: !2573)
!2784 = !DILocation(line: 446, column: 9, scope: !2573)
!2785 = !DILocation(line: 446, column: 2, scope: !2573)
!2786 = !DILocation(line: 447, column: 9, scope: !2573)
!2787 = !DILocation(line: 447, column: 2, scope: !2573)
!2788 = !DILocation(line: 448, column: 1, scope: !2573)
!2789 = distinct !DISubprogram(name: "topology_sysfs_get_iolink_props", scope: !3, file: !3, line: 451, type: !2790, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2792)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!540, !59, !59, !502}
!2792 = !{!2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806}
!2793 = !DILocalVariable(name: "node_id", arg: 1, scope: !2789, file: !3, line: 451, type: !59)
!2794 = !DILocalVariable(name: "iolink_id", arg: 2, scope: !2789, file: !3, line: 451, type: !59)
!2795 = !DILocalVariable(name: "props", arg: 3, scope: !2789, file: !3, line: 451, type: !502)
!2796 = !DILocalVariable(name: "fd", scope: !2789, file: !3, line: 452, type: !1680)
!2797 = !DILocalVariable(name: "read_buf", scope: !2789, file: !3, line: 453, type: !1688)
!2798 = !DILocalVariable(name: "p", scope: !2789, file: !3, line: 453, type: !1688)
!2799 = !DILocalVariable(name: "prop_name", scope: !2789, file: !3, line: 454, type: !1778)
!2800 = !DILocalVariable(name: "path", scope: !2789, file: !3, line: 455, type: !1778)
!2801 = !DILocalVariable(name: "prop_val", scope: !2789, file: !3, line: 456, type: !1780)
!2802 = !DILocalVariable(name: "prog", scope: !2789, file: !3, line: 457, type: !59)
!2803 = !DILocalVariable(name: "read_size", scope: !2789, file: !3, line: 458, type: !656)
!2804 = !DILocalVariable(name: "ret", scope: !2789, file: !3, line: 459, type: !540)
!2805 = !DILabel(scope: !2789, name: "err2", file: !3, line: 514)
!2806 = !DILabel(scope: !2789, name: "err1", file: !3, line: 516)
!2807 = !DILocation(line: 451, column: 42, scope: !2789)
!2808 = !DILocation(line: 451, column: 60, scope: !2789)
!2809 = !DILocation(line: 451, column: 92, scope: !2789)
!2810 = !DILocation(line: 452, column: 2, scope: !2789)
!2811 = !DILocation(line: 452, column: 8, scope: !2789)
!2812 = !DILocation(line: 453, column: 2, scope: !2789)
!2813 = !DILocation(line: 453, column: 8, scope: !2789)
!2814 = !DILocation(line: 453, column: 19, scope: !2789)
!2815 = !DILocation(line: 454, column: 2, scope: !2789)
!2816 = !DILocation(line: 454, column: 7, scope: !2789)
!2817 = !DILocation(line: 455, column: 2, scope: !2789)
!2818 = !DILocation(line: 455, column: 7, scope: !2789)
!2819 = !DILocation(line: 456, column: 2, scope: !2789)
!2820 = !DILocation(line: 456, column: 26, scope: !2789)
!2821 = !DILocation(line: 457, column: 2, scope: !2789)
!2822 = !DILocation(line: 457, column: 11, scope: !2789)
!2823 = !DILocation(line: 458, column: 5, scope: !2789)
!2824 = !DILocation(line: 458, column: 9, scope: !2789)
!2825 = !DILocation(line: 459, column: 2, scope: !2789)
!2826 = !DILocation(line: 459, column: 16, scope: !2789)
!2827 = !DILocation(line: 461, column: 2, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 461, column: 2)
!2829 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 461, column: 2)
!2830 = !DILocation(line: 461, column: 2, scope: !2829)
!2831 = !DILocation(line: 462, column: 11, scope: !2789)
!2832 = !DILocation(line: 462, column: 75, scope: !2789)
!2833 = !DILocation(line: 462, column: 84, scope: !2789)
!2834 = !DILocation(line: 462, column: 2, scope: !2789)
!2835 = !DILocation(line: 463, column: 13, scope: !2789)
!2836 = !DILocation(line: 463, column: 7, scope: !2789)
!2837 = !DILocation(line: 463, column: 5, scope: !2789)
!2838 = !DILocation(line: 464, column: 7, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 464, column: 6)
!2840 = !DILocation(line: 464, column: 6, scope: !2789)
!2841 = !DILocation(line: 465, column: 3, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 464, column: 11)
!2843 = !DILocation(line: 467, column: 13, scope: !2789)
!2844 = !DILocation(line: 467, column: 11, scope: !2789)
!2845 = !DILocation(line: 468, column: 7, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 468, column: 6)
!2847 = !DILocation(line: 468, column: 6, scope: !2789)
!2848 = !DILocation(line: 469, column: 7, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 468, column: 17)
!2850 = !DILocation(line: 470, column: 3, scope: !2849)
!2851 = !DILocation(line: 473, column: 23, scope: !2789)
!2852 = !DILocation(line: 473, column: 47, scope: !2789)
!2853 = !DILocation(line: 473, column: 17, scope: !2789)
!2854 = !DILocation(line: 473, column: 15, scope: !2789)
!2855 = !DILocation(line: 474, column: 9, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 474, column: 9)
!2857 = !DILocation(line: 474, column: 19, scope: !2856)
!2858 = !DILocation(line: 474, column: 9, scope: !2789)
!2859 = !DILocation(line: 475, column: 7, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 474, column: 25)
!2861 = !DILocation(line: 476, column: 3, scope: !2860)
!2862 = !DILocation(line: 480, column: 8, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 480, column: 8)
!2864 = !DILocation(line: 480, column: 18, scope: !2863)
!2865 = !DILocation(line: 480, column: 8, scope: !2789)
!2866 = !DILocation(line: 481, column: 19, scope: !2863)
!2867 = !DILocation(line: 481, column: 9, scope: !2863)
!2868 = !DILocation(line: 482, column: 5, scope: !2789)
!2869 = !DILocation(line: 482, column: 14, scope: !2789)
!2870 = !DILocation(line: 482, column: 25, scope: !2789)
!2871 = !DILocation(line: 484, column: 7, scope: !2789)
!2872 = !DILocation(line: 485, column: 6, scope: !2789)
!2873 = !DILocation(line: 485, column: 4, scope: !2789)
!2874 = !DILocation(line: 486, column: 2, scope: !2789)
!2875 = !DILocation(line: 486, column: 18, scope: !2789)
!2876 = !DILocation(line: 486, column: 16, scope: !2789)
!2877 = !DILocation(line: 486, column: 39, scope: !2789)
!2878 = !DILocation(line: 486, column: 8, scope: !2789)
!2879 = !DILocation(line: 486, column: 68, scope: !2789)
!2880 = !DILocation(line: 487, column: 14, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 487, column: 7)
!2882 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 486, column: 74)
!2883 = !DILocation(line: 487, column: 7, scope: !2881)
!2884 = !DILocation(line: 487, column: 32, scope: !2881)
!2885 = !DILocation(line: 487, column: 7, scope: !2882)
!2886 = !DILocation(line: 488, column: 34, scope: !2881)
!2887 = !DILocation(line: 488, column: 24, scope: !2881)
!2888 = !DILocation(line: 488, column: 4, scope: !2881)
!2889 = !DILocation(line: 488, column: 11, scope: !2881)
!2890 = !DILocation(line: 488, column: 22, scope: !2881)
!2891 = !DILocation(line: 489, column: 19, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 489, column: 12)
!2893 = !DILocation(line: 489, column: 12, scope: !2892)
!2894 = !DILocation(line: 489, column: 46, scope: !2892)
!2895 = !DILocation(line: 489, column: 12, scope: !2881)
!2896 = !DILocation(line: 490, column: 36, scope: !2892)
!2897 = !DILocation(line: 490, column: 26, scope: !2892)
!2898 = !DILocation(line: 490, column: 4, scope: !2892)
!2899 = !DILocation(line: 490, column: 11, scope: !2892)
!2900 = !DILocation(line: 490, column: 24, scope: !2892)
!2901 = !DILocation(line: 491, column: 19, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2892, file: !3, line: 491, column: 12)
!2903 = !DILocation(line: 491, column: 12, scope: !2902)
!2904 = !DILocation(line: 491, column: 46, scope: !2902)
!2905 = !DILocation(line: 491, column: 12, scope: !2892)
!2906 = !DILocation(line: 492, column: 36, scope: !2902)
!2907 = !DILocation(line: 492, column: 26, scope: !2902)
!2908 = !DILocation(line: 492, column: 4, scope: !2902)
!2909 = !DILocation(line: 492, column: 11, scope: !2902)
!2910 = !DILocation(line: 492, column: 24, scope: !2902)
!2911 = !DILocation(line: 493, column: 19, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 493, column: 12)
!2913 = !DILocation(line: 493, column: 12, scope: !2912)
!2914 = !DILocation(line: 493, column: 42, scope: !2912)
!2915 = !DILocation(line: 493, column: 12, scope: !2902)
!2916 = !DILocation(line: 494, column: 32, scope: !2912)
!2917 = !DILocation(line: 494, column: 22, scope: !2912)
!2918 = !DILocation(line: 494, column: 4, scope: !2912)
!2919 = !DILocation(line: 494, column: 11, scope: !2912)
!2920 = !DILocation(line: 494, column: 20, scope: !2912)
!2921 = !DILocation(line: 495, column: 19, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 495, column: 12)
!2923 = !DILocation(line: 495, column: 12, scope: !2922)
!2924 = !DILocation(line: 495, column: 40, scope: !2922)
!2925 = !DILocation(line: 495, column: 12, scope: !2912)
!2926 = !DILocation(line: 496, column: 30, scope: !2922)
!2927 = !DILocation(line: 496, column: 20, scope: !2922)
!2928 = !DILocation(line: 496, column: 4, scope: !2922)
!2929 = !DILocation(line: 496, column: 11, scope: !2922)
!2930 = !DILocation(line: 496, column: 18, scope: !2922)
!2931 = !DILocation(line: 497, column: 19, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 497, column: 12)
!2933 = !DILocation(line: 497, column: 12, scope: !2932)
!2934 = !DILocation(line: 497, column: 39, scope: !2932)
!2935 = !DILocation(line: 497, column: 12, scope: !2922)
!2936 = !DILocation(line: 498, column: 30, scope: !2932)
!2937 = !DILocation(line: 498, column: 20, scope: !2932)
!2938 = !DILocation(line: 498, column: 4, scope: !2932)
!2939 = !DILocation(line: 498, column: 11, scope: !2932)
!2940 = !DILocation(line: 498, column: 18, scope: !2932)
!2941 = !DILocation(line: 499, column: 19, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 499, column: 12)
!2943 = !DILocation(line: 499, column: 12, scope: !2942)
!2944 = !DILocation(line: 499, column: 44, scope: !2942)
!2945 = !DILocation(line: 499, column: 12, scope: !2932)
!2946 = !DILocation(line: 500, column: 38, scope: !2942)
!2947 = !DILocation(line: 500, column: 28, scope: !2942)
!2948 = !DILocation(line: 500, column: 4, scope: !2942)
!2949 = !DILocation(line: 500, column: 11, scope: !2942)
!2950 = !DILocation(line: 500, column: 26, scope: !2942)
!2951 = !DILocation(line: 501, column: 19, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 501, column: 12)
!2953 = !DILocation(line: 501, column: 12, scope: !2952)
!2954 = !DILocation(line: 501, column: 44, scope: !2952)
!2955 = !DILocation(line: 501, column: 12, scope: !2942)
!2956 = !DILocation(line: 502, column: 38, scope: !2952)
!2957 = !DILocation(line: 502, column: 28, scope: !2952)
!2958 = !DILocation(line: 502, column: 4, scope: !2952)
!2959 = !DILocation(line: 502, column: 11, scope: !2952)
!2960 = !DILocation(line: 502, column: 26, scope: !2952)
!2961 = !DILocation(line: 503, column: 19, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 503, column: 12)
!2963 = !DILocation(line: 503, column: 12, scope: !2962)
!2964 = !DILocation(line: 503, column: 46, scope: !2962)
!2965 = !DILocation(line: 503, column: 12, scope: !2952)
!2966 = !DILocation(line: 504, column: 40, scope: !2962)
!2967 = !DILocation(line: 504, column: 30, scope: !2962)
!2968 = !DILocation(line: 504, column: 4, scope: !2962)
!2969 = !DILocation(line: 504, column: 11, scope: !2962)
!2970 = !DILocation(line: 504, column: 28, scope: !2962)
!2971 = !DILocation(line: 505, column: 19, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 505, column: 12)
!2973 = !DILocation(line: 505, column: 12, scope: !2972)
!2974 = !DILocation(line: 505, column: 46, scope: !2972)
!2975 = !DILocation(line: 505, column: 12, scope: !2962)
!2976 = !DILocation(line: 506, column: 40, scope: !2972)
!2977 = !DILocation(line: 506, column: 30, scope: !2972)
!2978 = !DILocation(line: 506, column: 4, scope: !2972)
!2979 = !DILocation(line: 506, column: 11, scope: !2972)
!2980 = !DILocation(line: 506, column: 28, scope: !2972)
!2981 = !DILocation(line: 507, column: 19, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 507, column: 12)
!2983 = !DILocation(line: 507, column: 12, scope: !2982)
!2984 = !DILocation(line: 507, column: 58, scope: !2982)
!2985 = !DILocation(line: 507, column: 12, scope: !2972)
!2986 = !DILocation(line: 508, column: 39, scope: !2982)
!2987 = !DILocation(line: 508, column: 29, scope: !2982)
!2988 = !DILocation(line: 508, column: 4, scope: !2982)
!2989 = !DILocation(line: 508, column: 11, scope: !2982)
!2990 = !DILocation(line: 508, column: 27, scope: !2982)
!2991 = !DILocation(line: 509, column: 19, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 509, column: 12)
!2993 = !DILocation(line: 509, column: 12, scope: !2992)
!2994 = !DILocation(line: 509, column: 38, scope: !2992)
!2995 = !DILocation(line: 509, column: 12, scope: !2982)
!2996 = !DILocation(line: 510, column: 42, scope: !2992)
!2997 = !DILocation(line: 510, column: 32, scope: !2992)
!2998 = !DILocation(line: 510, column: 4, scope: !2992)
!2999 = !DILocation(line: 510, column: 11, scope: !2992)
!3000 = !DILocation(line: 510, column: 30, scope: !2992)
!3001 = distinct !{!3001, !2874, !3002, !608}
!3002 = !DILocation(line: 511, column: 2, scope: !2789)
!3003 = !DILocation(line: 514, column: 1, scope: !2789)
!3004 = !DILocation(line: 515, column: 7, scope: !2789)
!3005 = !DILocation(line: 515, column: 2, scope: !2789)
!3006 = !DILocation(line: 516, column: 1, scope: !2789)
!3007 = !DILocation(line: 517, column: 9, scope: !2789)
!3008 = !DILocation(line: 517, column: 2, scope: !2789)
!3009 = !DILocation(line: 518, column: 9, scope: !2789)
!3010 = !DILocation(line: 518, column: 2, scope: !2789)
!3011 = !DILocation(line: 519, column: 1, scope: !2789)
!3012 = !DISubprogram(name: "malloc", scope: !1945, file: !1945, line: 39, type: !3013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!58, !1729}
!3015 = !DISubprogram(name: "fopen", scope: !3016, file: !3016, line: 258, type: !3017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3016 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!1680, !3019, !3019}
!3019 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1181)
!3020 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !3016, file: !3016, line: 434, type: !3021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!656, !3023, !3019, null}
!3023 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1680)
!3024 = !DISubprogram(name: "fclose", scope: !3016, file: !3016, line: 178, type: !3025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!656, !1680}
!3027 = !DISubprogram(name: "fread", scope: !3016, file: !3016, line: 675, type: !3028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!435, !3030, !1729, !1729, !3023}
!3030 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !58)
!3031 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !3016, file: !3016, line: 439, type: !3032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!656, !3019, !3019, null}
!3034 = !DISubprogram(name: "strcmp", scope: !3035, file: !3035, line: 156, type: !3036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3035 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!656, !1181, !1181}
!3038 = !DISubprogram(name: "opendir", scope: !1773, file: !1773, line: 134, type: !3039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!1771, !1181}
!3041 = !DISubprogram(name: "readdir", scope: !1773, file: !1773, line: 162, type: !3042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!1784, !1771}
!3044 = !DISubprogram(name: "closedir", scope: !1773, file: !1773, line: 149, type: !3045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!656, !1771}
!3047 = distinct !DISubprogram(name: "topology_sysfs_get_gpu_id", scope: !3, file: !3, line: 170, type: !538, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3048)
!3048 = !{!3049, !3050, !3051, !3052, !3053}
!3049 = !DILocalVariable(name: "node_id", arg: 1, scope: !3047, file: !3, line: 170, type: !59)
!3050 = !DILocalVariable(name: "gpu_id", arg: 2, scope: !3047, file: !3, line: 170, type: !541)
!3051 = !DILocalVariable(name: "fd", scope: !3047, file: !3, line: 171, type: !1680)
!3052 = !DILocalVariable(name: "path", scope: !3047, file: !3, line: 172, type: !1778)
!3053 = !DILocalVariable(name: "ret", scope: !3047, file: !3, line: 173, type: !540)
!3054 = !DILocation(line: 170, column: 36, scope: !3047)
!3055 = !DILocation(line: 170, column: 55, scope: !3047)
!3056 = !DILocation(line: 171, column: 2, scope: !3047)
!3057 = !DILocation(line: 171, column: 8, scope: !3047)
!3058 = !DILocation(line: 172, column: 2, scope: !3047)
!3059 = !DILocation(line: 172, column: 7, scope: !3047)
!3060 = !DILocation(line: 173, column: 2, scope: !3047)
!3061 = !DILocation(line: 173, column: 16, scope: !3047)
!3062 = !DILocation(line: 175, column: 2, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 175, column: 2)
!3064 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 175, column: 2)
!3065 = !DILocation(line: 175, column: 2, scope: !3064)
!3066 = !DILocation(line: 176, column: 11, scope: !3047)
!3067 = !DILocation(line: 176, column: 60, scope: !3047)
!3068 = !DILocation(line: 176, column: 2, scope: !3047)
!3069 = !DILocation(line: 177, column: 13, scope: !3047)
!3070 = !DILocation(line: 177, column: 7, scope: !3047)
!3071 = !DILocation(line: 177, column: 5, scope: !3047)
!3072 = !DILocation(line: 178, column: 7, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 178, column: 6)
!3074 = !DILocation(line: 178, column: 6, scope: !3047)
!3075 = !DILocation(line: 179, column: 3, scope: !3073)
!3076 = !DILocation(line: 180, column: 13, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 180, column: 6)
!3078 = !DILocation(line: 180, column: 24, scope: !3077)
!3079 = !DILocation(line: 180, column: 6, scope: !3077)
!3080 = !DILocation(line: 180, column: 32, scope: !3077)
!3081 = !DILocation(line: 180, column: 6, scope: !3047)
!3082 = !DILocation(line: 181, column: 7, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 180, column: 38)
!3084 = !DILocation(line: 182, column: 2, scope: !3083)
!3085 = !DILocation(line: 183, column: 9, scope: !3047)
!3086 = !DILocation(line: 183, column: 2, scope: !3047)
!3087 = !DILocation(line: 185, column: 9, scope: !3047)
!3088 = !DILocation(line: 185, column: 2, scope: !3047)
!3089 = !DILocation(line: 186, column: 1, scope: !3047)
!3090 = !DISubprogram(name: "snprintf", scope: !3016, file: !3016, line: 378, type: !3091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!656, !3093, !1729, !3019, null}
!3093 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1688)
!3094 = !DISubprogram(name: "memchr", scope: !3035, file: !3035, line: 107, type: !3095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!58, !3097, !656, !1729}
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3099 = distinct !DISubprogram(name: "get_cpu_stepping", scope: !3, file: !3, line: 955, type: !3100, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3103)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!656, !3102}
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!3103 = !{!3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111}
!3104 = !DILocalVariable(name: "stepping", arg: 1, scope: !3099, file: !3, line: 955, type: !3102)
!3105 = !DILocalVariable(name: "ret", scope: !3099, file: !3, line: 957, type: !656)
!3106 = !DILocalVariable(name: "p", scope: !3099, file: !3, line: 958, type: !1688)
!3107 = !DILocalVariable(name: "read_buf", scope: !3099, file: !3, line: 958, type: !1688)
!3108 = !DILocalVariable(name: "read_size", scope: !3099, file: !3, line: 959, type: !656)
!3109 = !DILocalVariable(name: "fd", scope: !3099, file: !3, line: 960, type: !1680)
!3110 = !DILabel(scope: !3099, name: "err2", file: !3, line: 987)
!3111 = !DILabel(scope: !3099, name: "err1", file: !3, line: 989)
!3112 = !DILocation(line: 955, column: 39, scope: !3099)
!3113 = !DILocation(line: 957, column: 2, scope: !3099)
!3114 = !DILocation(line: 957, column: 6, scope: !3099)
!3115 = !DILocation(line: 958, column: 2, scope: !3099)
!3116 = !DILocation(line: 958, column: 8, scope: !3099)
!3117 = !DILocation(line: 958, column: 12, scope: !3099)
!3118 = !DILocation(line: 959, column: 2, scope: !3099)
!3119 = !DILocation(line: 959, column: 6, scope: !3099)
!3120 = !DILocation(line: 960, column: 2, scope: !3099)
!3121 = !DILocation(line: 960, column: 8, scope: !3099)
!3122 = !DILocation(line: 960, column: 13, scope: !3099)
!3123 = !DILocation(line: 961, column: 7, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 961, column: 6)
!3125 = !DILocation(line: 961, column: 6, scope: !3099)
!3126 = !DILocation(line: 962, column: 3, scope: !3124)
!3127 = !DILocation(line: 964, column: 13, scope: !3099)
!3128 = !DILocation(line: 964, column: 11, scope: !3099)
!3129 = !DILocation(line: 965, column: 7, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 965, column: 6)
!3131 = !DILocation(line: 965, column: 6, scope: !3099)
!3132 = !DILocation(line: 966, column: 7, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 965, column: 17)
!3134 = !DILocation(line: 967, column: 3, scope: !3133)
!3135 = !DILocation(line: 970, column: 20, scope: !3099)
!3136 = !DILocation(line: 970, column: 44, scope: !3099)
!3137 = !DILocation(line: 970, column: 14, scope: !3099)
!3138 = !DILocation(line: 970, column: 12, scope: !3099)
!3139 = !DILocation(line: 971, column: 6, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 971, column: 6)
!3141 = !DILocation(line: 971, column: 16, scope: !3140)
!3142 = !DILocation(line: 971, column: 6, scope: !3099)
!3143 = !DILocation(line: 972, column: 7, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 971, column: 22)
!3145 = !DILocation(line: 973, column: 3, scope: !3144)
!3146 = !DILocation(line: 977, column: 5, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 977, column: 5)
!3148 = !DILocation(line: 977, column: 15, scope: !3147)
!3149 = !DILocation(line: 977, column: 5, scope: !3099)
!3150 = !DILocation(line: 978, column: 13, scope: !3147)
!3151 = !DILocation(line: 978, column: 3, scope: !3147)
!3152 = !DILocation(line: 979, column: 2, scope: !3099)
!3153 = !DILocation(line: 979, column: 11, scope: !3099)
!3154 = !DILocation(line: 979, column: 22, scope: !3099)
!3155 = !DILocation(line: 981, column: 3, scope: !3099)
!3156 = !DILocation(line: 981, column: 12, scope: !3099)
!3157 = !DILocation(line: 983, column: 13, scope: !3099)
!3158 = !DILocation(line: 983, column: 6, scope: !3099)
!3159 = !DILocation(line: 983, column: 4, scope: !3099)
!3160 = !DILocation(line: 984, column: 6, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 984, column: 6)
!3162 = !DILocation(line: 984, column: 6, scope: !3099)
!3163 = !DILocation(line: 985, column: 10, scope: !3161)
!3164 = !DILocation(line: 985, column: 35, scope: !3161)
!3165 = !DILocation(line: 985, column: 3, scope: !3161)
!3166 = !DILocation(line: 987, column: 1, scope: !3099)
!3167 = !DILocation(line: 988, column: 7, scope: !3099)
!3168 = !DILocation(line: 988, column: 2, scope: !3099)
!3169 = !DILocation(line: 989, column: 1, scope: !3099)
!3170 = !DILocation(line: 990, column: 9, scope: !3099)
!3171 = !DILocation(line: 990, column: 2, scope: !3099)
!3172 = !DILocation(line: 992, column: 9, scope: !3099)
!3173 = !DILocation(line: 992, column: 2, scope: !3099)
!3174 = !DILocation(line: 993, column: 1, scope: !3099)
!3175 = !DISubprogram(name: "strstr", scope: !3035, file: !3035, line: 350, type: !3176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!1688, !1181, !1181}
!3178 = !DISubprogram(name: "printf", scope: !3016, file: !3016, line: 356, type: !3179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!656, !3019, null}

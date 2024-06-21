; ModuleID = 'samples/242.bc'
source_filename = "nvme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.anon.115 = type { ptr, ptr }
%struct.spdk_log_flag = type { %struct.anon.116, ptr, i8 }
%struct.anon.116 = type { ptr, ptr }
%struct.spdk_nvme_ctrlr = type { %struct.nvme_ns_tree, i32, i8, i8, i8, i8, i8, i8, i8, i16, i16, i64, i32, i16, %struct.spdk_nvme_transport_id, %union.spdk_nvme_cap_register, %union.spdk_nvme_vs_register, i32, i64, i64, i64, %struct.anon.93, [256 x i8], [256 x i8], i32, i32, i32, i32, [8 x %struct.nvme_async_event_request], %union.pthread_mutex_t, ptr, ptr, ptr, %struct.spdk_nvme_ctrlr_data, ptr, ptr, %struct.anon.97, %struct.spdk_nvme_ctrlr_opts, i64, i64, %struct.anon.98, %struct.anon.99, i32, ptr, ptr, ptr, %union.pthread_mutex_t, ptr, %struct.anon.100, ptr, ptr, i32, ptr, i32, i64, i32, i32, ptr, ptr, ptr, i32, i32, i32, %struct.anon.101, %union.spdk_nvme_cc_register }
%struct.nvme_ns_tree = type { ptr }
%struct.spdk_nvme_transport_id = type { [33 x i8], i32, i32, [257 x i8], [33 x i8], [224 x i8], i32 }
%union.spdk_nvme_cap_register = type { i64 }
%union.spdk_nvme_vs_register = type { i32 }
%struct.anon.93 = type { ptr, ptr }
%struct.nvme_async_event_request = type { ptr, ptr, %struct.spdk_nvme_cpl }
%struct.spdk_nvme_cpl = type { i32, i32, i16, i16, i16, %union.anon.61 }
%union.anon.61 = type { i16 }
%struct.spdk_nvme_ctrlr_data = type { i16, i16, [20 x i8], [40 x i8], [8 x i8], i8, [3 x i8], %struct.anon.72, i8, i16, %union.spdk_nvme_vs_register, i32, i32, %struct.spdk_nvme_cdata_oaes, %struct.spdk_nvme_cdata_ctratt, i16, [9 x i8], i8, [16 x i8], [3 x i16], [119 x i8], %struct.anon.73, %struct.anon.74, %struct.anon.75, %struct.spdk_nvme_cdata_oacs, i8, i8, %struct.anon.76, %struct.anon.77, i8, i8, %struct.anon.78, %struct.anon.79, i16, i16, i16, i32, i32, [2 x i64], [2 x i64], %struct.anon.80, i16, %union.anon.94, i8, i16, %union.anon.95, i16, i16, %union.anon.96, i32, i16, i16, i16, i8, %struct.anon.84, i32, i32, i32, i16, [10 x i8], [16 x i8], [128 x i8], %struct.anon.85, %struct.anon.86, i16, i32, %struct.spdk_nvme_cdata_oncs, %struct.spdk_nvme_cdata_fuses, %struct.anon.87, %struct.anon.88, i16, i16, i8, i8, i16, %struct.anon.89, %struct.spdk_nvme_cdata_sgls, i32, [16 x i8], i32, [204 x i8], [256 x i8], [768 x i8], %struct.spdk_nvme_cdata_nvmf_specific, [32 x %struct.spdk_nvme_power_state], [1024 x i8] }
%struct.anon.72 = type { i8 }
%struct.spdk_nvme_cdata_oaes = type { i32 }
%struct.spdk_nvme_cdata_ctratt = type { i32 }
%struct.anon.73 = type { i8 }
%struct.anon.74 = type { i8 }
%struct.anon.75 = type { i8 }
%struct.spdk_nvme_cdata_oacs = type { i16 }
%struct.anon.76 = type { i8 }
%struct.anon.77 = type { i8 }
%struct.anon.78 = type { i8 }
%struct.anon.79 = type { i8 }
%struct.anon.80 = type { i8, i8, i8, i8 }
%union.anon.94 = type { i8 }
%union.anon.95 = type { i16 }
%union.anon.96 = type { i32 }
%struct.anon.84 = type { i8 }
%struct.anon.85 = type { i8 }
%struct.anon.86 = type { i8 }
%struct.spdk_nvme_cdata_oncs = type { i16 }
%struct.spdk_nvme_cdata_fuses = type { i16 }
%struct.anon.87 = type { i8 }
%struct.anon.88 = type { i8 }
%struct.anon.89 = type { i16 }
%struct.spdk_nvme_cdata_sgls = type { i32 }
%struct.spdk_nvme_cdata_nvmf_specific = type { i32, i32, i16, %struct.anon.90, i8, %struct.anon.91, [242 x i8] }
%struct.anon.90 = type { i8 }
%struct.anon.91 = type { i16 }
%struct.spdk_nvme_power_state = type { i16, i8, i8, i32, i32, i32, i16, i8, i8, i16, i8, [9 x i8] }
%struct.anon.97 = type { ptr, ptr }
%struct.spdk_nvme_ctrlr_opts = type <{ i32, i8, i8, [2 x i8], i32, i8, i8, i8, i8, i32, i8, [3 x i8], i32, [224 x i8], i32, [257 x i8], [33 x i8], [8 x i8], [16 x i8], [2 x i8], i32, i32, i8, i8, i8, i8, i16, [6 x i8], i64, i64, i8, [7 x i8], i8, [200 x i8], i8 }>
%struct.anon.98 = type { ptr, ptr }
%struct.anon.99 = type { ptr, ptr }
%struct.anon.100 = type { ptr, ptr }
%struct.anon.101 = type { ptr, ptr }
%union.spdk_nvme_cc_register = type { i32 }
%struct.spdk_nvme_probe_ctx = type { %struct.spdk_nvme_transport_id, ptr, ptr, ptr, ptr, %struct.anon.102 }
%struct.anon.102 = type { ptr, ptr }
%struct.nvme_driver = type { %union.pthread_mutex_t, %struct.anon.113, i8, %struct.spdk_uuid, i32 }
%struct.anon.113 = type { ptr, ptr }
%struct.spdk_uuid = type { %union.anon.114 }
%union.anon.114 = type { [16 x i8] }
%struct.nvme_ctrlr_detach_ctx = type { ptr, ptr, i64, i32, i8, i32, %union.spdk_nvme_csts_register, %struct.anon.105 }
%union.spdk_nvme_csts_register = type { i32 }
%struct.anon.105 = type { ptr, ptr }
%struct.spdk_nvme_detach_ctx = type { %struct.anon.104 }
%struct.anon.104 = type { ptr, ptr }
%struct.nvme_completion_poll_status = type { %struct.spdk_nvme_cpl, i64, ptr, i8, i8 }
%struct.spdk_nvme_qpair = type <{ ptr, i16, i8, i16, [3 x i8], i32, i32, ptr, %struct.anon.64, %struct.anon.65, %struct.anon.66, %struct.anon.67, %struct.anon.68, ptr, ptr, ptr, ptr, ptr, %struct.anon.69, %struct.anon.70, %struct.anon.71, ptr }>
%struct.anon.64 = type { ptr, ptr }
%struct.anon.65 = type { ptr, ptr }
%struct.anon.66 = type { ptr }
%struct.anon.67 = type { ptr, ptr }
%struct.anon.68 = type { ptr, ptr }
%struct.anon.69 = type { ptr, ptr }
%struct.anon.70 = type { ptr, ptr }
%struct.anon.71 = type { ptr, ptr }
%struct.spdk_nvme_transport_poll_group = type { ptr, ptr, %struct.anon.106, %struct.anon.107, %struct.anon.108 }
%struct.anon.106 = type { ptr, ptr }
%struct.anon.107 = type { ptr, ptr }
%struct.anon.108 = type { ptr }
%struct.nvme_request = type { %struct.spdk_nvme_cmd, i8, i8, i16, i32, i32, i32, i64, %struct.nvme_payload, ptr, ptr, %struct.anon.60, ptr, i64, i32, %struct.spdk_nvme_cpl, i32, %struct.anon.62, %struct.anon.63, ptr, %struct.spdk_nvme_cpl, ptr, ptr, ptr }
%struct.spdk_nvme_cmd = type { i16, i16, i32, i32, i32, i64, %union.anon, %union.anon.19, %union.anon.34, %union.anon.58, i32, i32, i32 }
%union.anon = type { %struct.anon.14 }
%struct.anon.14 = type { i64, i64 }
%union.anon.19 = type { i32 }
%union.anon.34 = type { i32 }
%union.anon.58 = type { i32 }
%struct.nvme_payload = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.60 = type { ptr }
%struct.anon.62 = type { ptr, ptr }
%struct.anon.63 = type { ptr, ptr }
%struct.spdk_nvme_ctrlr_process = type { i8, i32, %struct.anon.109, %struct.anon.110, ptr, i32, %struct.anon.111, ptr, ptr, ptr, ptr, i64, i64, %struct.anon.112 }
%struct.anon.109 = type { ptr, ptr }
%struct.anon.110 = type { ptr, ptr }
%struct.anon.111 = type { ptr, ptr }
%struct.anon.112 = type { ptr, ptr }
%union.pthread_mutexattr_t = type { i32 }
%struct.spdk_pci_addr = type { i32, i8, i8, i8 }
%struct.spdk_nvme_host_id = type { [257 x i8], [33 x i8] }

@g_spdk_nvme_pid = global i32 0, align 4, !dbg !0
@nvme_driver_init.g_init_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !236
@g_spdk_nvme_driver = global ptr null, align 8, !dbg !524
@.str = private unnamed_addr constant [17 x i8] c"spdk_nvme_driver\00", align 1, !dbg !280
@.str.1 = private unnamed_addr constant [7 x i8] c"nvme.c\00", align 1, !dbg !285
@__func__.nvme_driver_init = private unnamed_addr constant [17 x i8] c"nvme_driver_init\00", align 1, !dbg !290
@.str.2 = private unnamed_addr constant [42 x i8] c"primary process failed to reserve memory\0A\00", align 1, !dbg !294
@g_nvme_driver_timeout_ms = internal global i32 180000, align 4, !dbg !2095
@.str.3 = private unnamed_addr constant [45 x i8] c"timeout waiting for primary process to init\0A\00", align 1, !dbg !299
@.str.4 = private unnamed_addr constant [36 x i8] c"primary process is not started yet\0A\00", align 1, !dbg !304
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to initialize mutex\0A\00", align 1, !dbg !309
@__func__.nvme_ctrlr_probe = private unnamed_addr constant [17 x i8] c"nvme_ctrlr_probe\00", align 1, !dbg !314
@.str.6 = private unnamed_addr constant [49 x i8] c"NVMe controller for SSD: %s is being destructed\0A\00", align 1, !dbg !316
@.str.7 = private unnamed_addr constant [49 x i8] c"Failed to construct NVMe controller for SSD: %s\0A\00", align 1, !dbg !321
@g_nvme_attached_ctrlrs = internal global %struct.anon.115 { ptr null, ptr @g_nvme_attached_ctrlrs }, align 8, !dbg !2097
@__func__.spdk_nvme_probe = private unnamed_addr constant [16 x i8] c"spdk_nvme_probe\00", align 1, !dbg !323
@.str.8 = private unnamed_addr constant [29 x i8] c"Create probe context failed\0A\00", align 1, !dbg !328
@__func__.spdk_nvme_connect = private unnamed_addr constant [18 x i8] c"spdk_nvme_connect\00", align 1, !dbg !333
@.str.9 = private unnamed_addr constant [27 x i8] c"No transport ID specified\0A\00", align 1, !dbg !338
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !343
@.str.11 = private unnamed_addr constant [3 x i8] c"FC\00", align 1, !dbg !348
@.str.12 = private unnamed_addr constant [5 x i8] c"PCIE\00", align 1, !dbg !353
@.str.13 = private unnamed_addr constant [5 x i8] c"RDMA\00", align 1, !dbg !358
@.str.14 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1, !dbg !360
@.str.15 = private unnamed_addr constant [9 x i8] c"VFIOUSER\00", align 1, !dbg !365
@.str.16 = private unnamed_addr constant [7 x i8] c"CUSTOM\00", align 1, !dbg !370
@__func__.spdk_nvme_trid_populate_transport = private unnamed_addr constant [34 x i8] c"spdk_nvme_trid_populate_transport\00", align 1, !dbg !372
@.str.17 = private unnamed_addr constant [25 x i8] c"no available transports\0A\00", align 1, !dbg !377
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !382
@.str.19 = private unnamed_addr constant [5 x i8] c"PCIe\00", align 1, !dbg !384
@.str.20 = private unnamed_addr constant [5 x i8] c"IPv4\00", align 1, !dbg !386
@.str.21 = private unnamed_addr constant [5 x i8] c"IPv6\00", align 1, !dbg !388
@.str.22 = private unnamed_addr constant [3 x i8] c"IB\00", align 1, !dbg !390
@__func__.spdk_nvme_transport_id_parse = private unnamed_addr constant [29 x i8] c"spdk_nvme_transport_id_parse\00", align 1, !dbg !392
@.str.23 = private unnamed_addr constant [30 x i8] c"Failed to parse transport ID\0A\00", align 1, !dbg !395
@.str.24 = private unnamed_addr constant [7 x i8] c"trtype\00", align 1, !dbg !400
@.str.25 = private unnamed_addr constant [24 x i8] c"invalid transport '%s'\0A\00", align 1, !dbg !402
@.str.26 = private unnamed_addr constant [21 x i8] c"Unknown trtype '%s'\0A\00", align 1, !dbg !407
@.str.27 = private unnamed_addr constant [7 x i8] c"adrfam\00", align 1, !dbg !412
@.str.28 = private unnamed_addr constant [21 x i8] c"Unknown adrfam '%s'\0A\00", align 1, !dbg !414
@.str.29 = private unnamed_addr constant [7 x i8] c"traddr\00", align 1, !dbg !416
@.str.30 = private unnamed_addr constant [51 x i8] c"traddr length %zu greater than maximum allowed %u\0A\00", align 1, !dbg !418
@.str.31 = private unnamed_addr constant [8 x i8] c"trsvcid\00", align 1, !dbg !423
@.str.32 = private unnamed_addr constant [52 x i8] c"trsvcid length %zu greater than maximum allowed %u\0A\00", align 1, !dbg !428
@.str.33 = private unnamed_addr constant [9 x i8] c"priority\00", align 1, !dbg !433
@.str.34 = private unnamed_addr constant [53 x i8] c"priority length %zu greater than maximum allowed %u\0A\00", align 1, !dbg !435
@.str.35 = private unnamed_addr constant [7 x i8] c"subnqn\00", align 1, !dbg !440
@.str.36 = private unnamed_addr constant [51 x i8] c"subnqn length %zu greater than maximum allowed %u\0A\00", align 1, !dbg !442
@.str.37 = private unnamed_addr constant [9 x i8] c"hostaddr\00", align 1, !dbg !444
@.str.38 = private unnamed_addr constant [10 x i8] c"hostsvcid\00", align 1, !dbg !446
@.str.39 = private unnamed_addr constant [8 x i8] c"hostnqn\00", align 1, !dbg !451
@.str.40 = private unnamed_addr constant [3 x i8] c"ns\00", align 1, !dbg !453
@.str.41 = private unnamed_addr constant [11 x i8] c"alt_traddr\00", align 1, !dbg !455
@.str.42 = private unnamed_addr constant [31 x i8] c"Unknown transport ID key '%s'\0A\00", align 1, !dbg !460
@__func__.spdk_nvme_host_id_parse = private unnamed_addr constant [24 x i8] c"spdk_nvme_host_id_parse\00", align 1, !dbg !465
@.str.43 = private unnamed_addr constant [25 x i8] c"Failed to parse host ID\0A\00", align 1, !dbg !468
@.str.44 = private unnamed_addr constant [53 x i8] c"hostaddr length %zu greater than maximum allowed %u\0A\00", align 1, !dbg !470
@__func__.spdk_nvme_prchk_flags_parse = private unnamed_addr constant [28 x i8] c"spdk_nvme_prchk_flags_parse\00", align 1, !dbg !472
@.str.45 = private unnamed_addr constant [23 x i8] c"Failed to parse prchk\0A\00", align 1, !dbg !475
@.str.46 = private unnamed_addr constant [6 x i8] c"prchk\00", align 1, !dbg !480
@.str.47 = private unnamed_addr constant [7 x i8] c"reftag\00", align 1, !dbg !485
@.str.48 = private unnamed_addr constant [6 x i8] c"guard\00", align 1, !dbg !487
@.str.49 = private unnamed_addr constant [18 x i8] c"Unknown key '%s'\0A\00", align 1, !dbg !489
@.str.50 = private unnamed_addr constant [19 x i8] c"prchk:reftag|guard\00", align 1, !dbg !492
@.str.51 = private unnamed_addr constant [13 x i8] c"prchk:reftag\00", align 1, !dbg !497
@.str.52 = private unnamed_addr constant [12 x i8] c"prchk:guard\00", align 1, !dbg !502
@.str.53 = private unnamed_addr constant [5 x i8] c"nvme\00", align 1, !dbg !507
@SPDK_LOG_nvme = global %struct.spdk_log_flag { %struct.anon.116 zeroinitializer, ptr @.str.53, i8 0 }, align 8, !dbg !509
@.str.54 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !2103
@__func__.parse_next_key = private unnamed_addr constant [15 x i8] c"parse_next_key\00", align 1, !dbg !2105
@.str.55 = private unnamed_addr constant [34 x i8] c"Key without ':' or '=' separator\0A\00", align 1, !dbg !2108
@.str.56 = private unnamed_addr constant [49 x i8] c"Key length %zu greater than maximum allowed %zu\0A\00", align 1, !dbg !2111
@.str.57 = private unnamed_addr constant [19 x i8] c"Key without value\0A\00", align 1, !dbg !2113
@.str.58 = private unnamed_addr constant [51 x i8] c"Value length %zu greater than maximum allowed %zu\0A\00", align 1, !dbg !2115
@__func__.nvme_probe_internal = private unnamed_addr constant [20 x i8] c"nvme_probe_internal\00", align 1, !dbg !2117
@.str.59 = private unnamed_addr constant [35 x i8] c"NVMe trtype %u (%s) not available\0A\00", align 1, !dbg !2120
@.str.60 = private unnamed_addr constant [24 x i8] c"NVMe ctrlr scan failed\0A\00", align 1, !dbg !2125
@__func__.nvme_ctrlr_poll_internal = private unnamed_addr constant [25 x i8] c"nvme_ctrlr_poll_internal\00", align 1, !dbg !2127
@.str.61 = private unnamed_addr constant [30 x i8] c"Failed to initialize SSD: %s\0A\00", align 1, !dbg !2130
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @register_flag_nvme, ptr null }]

; Function Attrs: nounwind ssp uwtable
define void @nvme_ctrlr_connected(ptr noundef %probe_ctx, ptr noundef %ctrlr) #0 !dbg !2138 {
entry:
  %probe_ctx.addr = alloca ptr, align 8
  %ctrlr.addr = alloca ptr, align 8
  store ptr %probe_ctx, ptr %probe_ctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %probe_ctx.addr, metadata !2168, metadata !DIExpression()), !dbg !2170
  store ptr %ctrlr, ptr %ctrlr.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ctrlr.addr, metadata !2169, metadata !DIExpression()), !dbg !2171
  br label %do.body, !dbg !2172

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %ctrlr.addr, align 8, !dbg !2173
  %tailq = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %0, i32 0, i32 21, !dbg !2173
  %tqe_next = getelementptr inbounds %struct.anon.93, ptr %tailq, i32 0, i32 0, !dbg !2173
  store ptr null, ptr %tqe_next, align 8, !dbg !2173
  %1 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !2173
  %init_ctrlrs = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %1, i32 0, i32 5, !dbg !2173
  %tqh_last = getelementptr inbounds %struct.anon.102, ptr %init_ctrlrs, i32 0, i32 1, !dbg !2173
  %2 = load ptr, ptr %tqh_last, align 8, !dbg !2173
  %3 = load ptr, ptr %ctrlr.addr, align 8, !dbg !2173
  %tailq1 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %3, i32 0, i32 21, !dbg !2173
  %tqe_prev = getelementptr inbounds %struct.anon.93, ptr %tailq1, i32 0, i32 1, !dbg !2173
  store ptr %2, ptr %tqe_prev, align 8, !dbg !2173
  %4 = load ptr, ptr %ctrlr.addr, align 8, !dbg !2173
  %5 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !2173
  %init_ctrlrs2 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %5, i32 0, i32 5, !dbg !2173
  %tqh_last3 = getelementptr inbounds %struct.anon.102, ptr %init_ctrlrs2, i32 0, i32 1, !dbg !2173
  %6 = load ptr, ptr %tqh_last3, align 8, !dbg !2173
  store ptr %4, ptr %6, align 8, !dbg !2173
  %7 = load ptr, ptr %ctrlr.addr, align 8, !dbg !2173
  %tailq4 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %7, i32 0, i32 21, !dbg !2173
  %tqe_next5 = getelementptr inbounds %struct.anon.93, ptr %tailq4, i32 0, i32 0, !dbg !2173
  %8 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !2173
  %init_ctrlrs6 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %8, i32 0, i32 5, !dbg !2173
  %tqh_last7 = getelementptr inbounds %struct.anon.102, ptr %init_ctrlrs6, i32 0, i32 1, !dbg !2173
  store ptr %tqe_next5, ptr %tqh_last7, align 8, !dbg !2173
  br label %do.end, !dbg !2173

do.end:                                           ; preds = %do.body
  ret void, !dbg !2175
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_nvme_detach(ptr noundef %ctrlr) #0 !dbg !2176 {
entry:
  %retval = alloca i32, align 4
  %ctrlr.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctrlr, ptr %ctrlr.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ctrlr.addr, metadata !2180, metadata !DIExpression()), !dbg !2212
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #14, !dbg !2213
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !2181, metadata !DIExpression()), !dbg !2214
  store ptr null, ptr %ctx, align 8, !dbg !2214
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #14, !dbg !2215
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !2211, metadata !DIExpression()), !dbg !2216
  %0 = load ptr, ptr %ctrlr.addr, align 8, !dbg !2217
  %call = call i32 @nvme_ctrlr_detach_async(ptr noundef %0, ptr noundef %ctx), !dbg !2218
  store i32 %call, ptr %rc, align 4, !dbg !2219
  %1 = load i32, ptr %rc, align 4, !dbg !2220
  %cmp = icmp ne i32 %1, 0, !dbg !2222
  br i1 %cmp, label %if.then, label %if.else, !dbg !2223

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %rc, align 4, !dbg !2224
  store i32 %2, ptr %retval, align 4, !dbg !2226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2226

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %ctx, align 8, !dbg !2227
  %cmp1 = icmp eq ptr %3, null, !dbg !2229
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !2230

if.then2:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4, !dbg !2231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2231

if.end:                                           ; preds = %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end
  br label %while.cond, !dbg !2233

while.cond:                                       ; preds = %if.end7, %if.end3
  br label %while.body, !dbg !2233

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %ctx, align 8, !dbg !2234
  %call4 = call i32 @nvme_ctrlr_detach_poll_async(ptr noundef %4), !dbg !2236
  store i32 %call4, ptr %rc, align 4, !dbg !2237
  %5 = load i32, ptr %rc, align 4, !dbg !2238
  %cmp5 = icmp ne i32 %5, -11, !dbg !2240
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !2241

if.then6:                                         ; preds = %while.body
  br label %while.end, !dbg !2242

if.end7:                                          ; preds = %while.body
  %call8 = call i32 @usleep(i32 noundef 1000), !dbg !2244
  br label %while.cond, !dbg !2233, !llvm.loop !2245

while.end:                                        ; preds = %if.then6
  store i32 0, ptr %retval, align 4, !dbg !2247
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2247

cleanup:                                          ; preds = %while.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #14, !dbg !2248
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #14, !dbg !2248
  %6 = load i32, ptr %retval, align 4, !dbg !2248
  ret i32 %6, !dbg !2248
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @nvme_ctrlr_detach_async(ptr noundef %ctrlr, ptr noundef %_ctx) #0 !dbg !2249 {
entry:
  %retval = alloca i32, align 4
  %ctrlr.addr = alloca ptr, align 8
  %_ctx.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %ref_count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctrlr, ptr %ctrlr.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ctrlr.addr, metadata !2253, metadata !DIExpression()), !dbg !2257
  store ptr %_ctx, ptr %_ctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %_ctx.addr, metadata !2254, metadata !DIExpression()), !dbg !2258
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #14, !dbg !2259
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !2255, metadata !DIExpression()), !dbg !2260
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_count) #14, !dbg !2261
  tail call void @llvm.dbg.declare(metadata ptr %ref_count, metadata !2256, metadata !DIExpression()), !dbg !2262
  %0 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !2263
  %lock = getelementptr inbounds %struct.nvme_driver, ptr %0, i32 0, i32 0, !dbg !2264
  %call = call i32 @nvme_robust_mutex_lock(ptr noundef %lock), !dbg !2265
  %1 = load ptr, ptr %ctrlr.addr, align 8, !dbg !2266
  %call1 = call i32 @nvme_ctrlr_get_ref_count(ptr noundef %1), !dbg !2267
  store i32 %call1, ptr %ref_count, align 4, !dbg !2268
  %2 = load i32, ptr %ref_count, align 4, !dbg !2269
  %cmp = icmp eq i32 %2, 1, !dbg !2271
  br i1 %cmp, label %if.then, label %if.else, !dbg !2272

if.then:                                          ; preds = %entry
  %call2 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 56) #15, !dbg !2273
  store ptr %call2, ptr %ctx, align 8, !dbg !2275
  %3 = load ptr, ptr %ctx, align 8, !dbg !2276
  %cmp3 = icmp eq ptr %3, null, !dbg !2278
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !2279

if.then4:                                         ; preds = %if.then
  %4 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !2280
  %lock5 = getelementptr inbounds %struct.nvme_driver, ptr %4, i32 0, i32 0, !dbg !2282
  %call6 = call i32 @nvme_robust_mutex_unlock(ptr noundef %lock5), !dbg !2283
  store i32 -12, ptr %retval, align 4, !dbg !2284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2284

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %ctrlr.addr, align 8, !dbg !2285
  %6 = load ptr, ptr %ctx, align 8, !dbg !2286
  %ctrlr7 = getelementptr inbounds %struct.nvme_ctrlr_detach_ctx, ptr %6, i32 0, i32 0, !dbg !2287
  store ptr %5, ptr %ctrlr7, align 8, !dbg !2288
  %7 = load ptr, ptr %ctx, align 8, !dbg !2289
  %cb_fn = getelementptr inbounds %struct.nvme_ctrlr_detach_ctx, ptr %7, i32 0, i32 1, !dbg !2290
  store ptr @nvme_ctrlr_detach_async_finish, ptr %cb_fn, align 8, !dbg !2291
  %8 = load ptr, ptr %ctrlr.addr, align 8, !dbg !2292
  call void @nvme_ctrlr_proc_put_ref(ptr noundef %8), !dbg !2293
  %9 = load ptr, ptr %ctrlr.addr, align 8, !dbg !2294
  call void @nvme_io_msg_ctrlr_detach(ptr noundef %9), !dbg !2295
  %10 = load ptr, ptr %ctrlr.addr, align 8, !dbg !2296
  %11 = load ptr, ptr %ctx, align 8, !dbg !2297
  call void @nvme_ctrlr_destruct_async(ptr noundef %10, ptr noundef %11), !dbg !2298
  %12 = load ptr, ptr %ctx, align 8, !dbg !2299
  %13 = load ptr, ptr %_ctx.addr, align 8, !dbg !2300
  store ptr %12, ptr %13, align 8, !dbg !2301
  br label %if.end8, !dbg !2302

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %ctrlr.addr, align 8, !dbg !2303
  call void @nvme_ctrlr_proc_put_ref(ptr noundef %14), !dbg !2305
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end
  %15 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !2306
  %lock9 = getelementptr inbounds %struct.nvme_driver, ptr %15, i32 0, i32 0, !dbg !2307
  %call10 = call i32 @nvme_robust_mutex_unlock(ptr noundef %lock9), !dbg !2308
  store i32 0, ptr %retval, align 4, !dbg !2309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2309

cleanup:                                          ; preds = %if.end8, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_count) #14, !dbg !2310
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #14, !dbg !2310
  %16 = load i32, ptr %retval, align 4, !dbg !2310
  ret i32 %16, !dbg !2310
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @nvme_ctrlr_detach_poll_async(ptr noundef %ctx) #0 !dbg !2311 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !2315, metadata !DIExpression()), !dbg !2317
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #14, !dbg !2318
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !2316, metadata !DIExpression()), !dbg !2319
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !2320
  %ctrlr = getelementptr inbounds %struct.nvme_ctrlr_detach_ctx, ptr %0, i32 0, i32 0, !dbg !2321
  %1 = load ptr, ptr %ctrlr, align 8, !dbg !2321
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !2322
  %call = call i32 @nvme_ctrlr_destruct_poll_async(ptr noundef %1, ptr noundef %2), !dbg !2323
  store i32 %call, ptr %rc, align 4, !dbg !2324
  %3 = load i32, ptr %rc, align 4, !dbg !2325
  %cmp = icmp eq i32 %3, -11, !dbg !2327
  br i1 %cmp, label %if.then, label %if.end, !dbg !2328

if.then:                                          ; preds = %entry
  store i32 -11, ptr %retval, align 4, !dbg !2329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2329

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !2331
  call void @free(ptr noundef %4) #14, !dbg !2332
  %5 = load i32, ptr %rc, align 4, !dbg !2333
  store i32 %5, ptr %retval, align 4, !dbg !2334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2334

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #14, !dbg !2335
  %6 = load i32, ptr %retval, align 4, !dbg !2335
  ret i32 %6, !dbg !2335
}

declare !dbg !2336 i32 @usleep(i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_nvme_detach_async(ptr noundef %ctrlr, ptr noundef %_detach_ctx) #0 !dbg !2341 {
entry:
  %retval = alloca i32, align 4
  %ctrlr.addr = alloca ptr, align 8
  %_detach_ctx.addr = alloca ptr, align 8
  %detach_ctx = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctrlr, ptr %ctrlr.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ctrlr.addr, metadata !2354, metadata !DIExpression()), !dbg !2359
  store ptr %_detach_ctx, ptr %_detach_ctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %_detach_ctx.addr, metadata !2355, metadata !DIExpression()), !dbg !2360
  call void @llvm.lifetime.start.p0(i64 8, ptr %detach_ctx) #14, !dbg !2361
  tail call void @llvm.dbg.declare(metadata ptr %detach_ctx, metadata !2356, metadata !DIExpression()), !dbg !2362
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #14, !dbg !2363
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !2357, metadata !DIExpression()), !dbg !2364
  store ptr null, ptr %ctx, align 8, !dbg !2364
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #14, !dbg !2365
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !2358, metadata !DIExpression()), !dbg !2366
  %0 = load ptr, ptr %ctrlr.addr, align 8, !dbg !2367
  %cmp = icmp eq ptr %0, null, !dbg !2369
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2370

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %_detach_ctx.addr, align 8, !dbg !2371
  %cmp1 = icmp eq ptr %1, null, !dbg !2372
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2373

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !2374
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2374

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %_detach_ctx.addr, align 8, !dbg !2376
  %3 = load ptr, ptr %2, align 8, !dbg !2377
  store ptr %3, ptr %detach_ctx, align 8, !dbg !2378
  %4 = load ptr, ptr %detach_ctx, align 8, !dbg !2379
  %cmp2 = icmp eq ptr %4, null, !dbg !2381
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !2382

if.then3:                                         ; preds = %if.end
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 16) #15, !dbg !2383
  store ptr %call, ptr %detach_ctx, align 8, !dbg !2385
  %5 = load ptr, ptr %detach_ctx, align 8, !dbg !2386
  %cmp4 = icmp eq ptr %5, null, !dbg !2388
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2389

if.then5:                                         ; preds = %if.then3
  store i32 -12, ptr %retval, align 4, !dbg !2390
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2390

if.end6:                                          ; preds = %if.then3
  br label %do.body, !dbg !2392

do.body:                                          ; preds = %if.end6
  %6 = load ptr, ptr %detach_ctx, align 8, !dbg !2393
  %head = getelementptr inbounds %struct.spdk_nvme_detach_ctx, ptr %6, i32 0, i32 0, !dbg !2393
  %tqh_first = getelementptr inbounds %struct.anon.104, ptr %head, i32 0, i32 0, !dbg !2393
  store ptr null, ptr %tqh_first, align 8, !dbg !2393
  %7 = load ptr, ptr %detach_ctx, align 8, !dbg !2393
  %head7 = getelementptr inbounds %struct.spdk_nvme_detach_ctx, ptr %7, i32 0, i32 0, !dbg !2393
  %tqh_first8 = getelementptr inbounds %struct.anon.104, ptr %head7, i32 0, i32 0, !dbg !2393
  %8 = load ptr, ptr %detach_ctx, align 8, !dbg !2393
  %head9 = getelementptr inbounds %struct.spdk_nvme_detach_ctx, ptr %8, i32 0, i32 0, !dbg !2393
  %tqh_last = getelementptr inbounds %struct.anon.104, ptr %head9, i32 0, i32 1, !dbg !2393
  store ptr %tqh_first8, ptr %tqh_last, align 8, !dbg !2393
  br label %do.cond, !dbg !2393

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2393

do.end:                                           ; preds = %do.cond
  br label %if.end10, !dbg !2395

if.end10:                                         ; preds = %do.end, %if.end
  %9 = load ptr, ptr %ctrlr.addr, align 8, !dbg !2396
  %call11 = call i32 @nvme_ctrlr_detach_async(ptr noundef %9, ptr noundef %ctx), !dbg !2397
  store i32 %call11, ptr %rc, align 4, !dbg !2398
  %10 = load i32, ptr %rc, align 4, !dbg !2399
  %cmp12 = icmp ne i32 %10, 0, !dbg !2401
  br i1 %cmp12, label %if.then15, label %lor.lhs.false13, !dbg !2402

lor.lhs.false13:                                  ; preds = %if.end10
  %11 = load ptr, ptr %ctx, align 8, !dbg !2403
  %cmp14 = icmp eq ptr %11, null, !dbg !2404
  br i1 %cmp14, label %if.then15, label %if.end21, !dbg !2405

if.then15:                                        ; preds = %lor.lhs.false13, %if.end10
  %12 = load ptr, ptr %detach_ctx, align 8, !dbg !2406
  %head16 = getelementptr inbounds %struct.spdk_nvme_detach_ctx, ptr %12, i32 0, i32 0, !dbg !2406
  %tqh_first17 = getelementptr inbounds %struct.anon.104, ptr %head16, i32 0, i32 0, !dbg !2406
  %13 = load ptr, ptr %tqh_first17, align 8, !dbg !2406
  %cmp18 = icmp eq ptr %13, null, !dbg !2406
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2409

if.then19:                                        ; preds = %if.then15
  %14 = load ptr, ptr %detach_ctx, align 8, !dbg !2410
  call void @free(ptr noundef %14) #14, !dbg !2412
  br label %if.end20, !dbg !2413

if.end20:                                         ; preds = %if.then19, %if.then15
  %15 = load i32, ptr %rc, align 4, !dbg !2414
  store i32 %15, ptr %retval, align 4, !dbg !2415
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2415

if.end21:                                         ; preds = %lor.lhs.false13
  br label %do.body22, !dbg !2416

do.body22:                                        ; preds = %if.end21
  %16 = load ptr, ptr %ctx, align 8, !dbg !2417
  %link = getelementptr inbounds %struct.nvme_ctrlr_detach_ctx, ptr %16, i32 0, i32 7, !dbg !2417
  %tqe_next = getelementptr inbounds %struct.anon.105, ptr %link, i32 0, i32 0, !dbg !2417
  store ptr null, ptr %tqe_next, align 8, !dbg !2417
  %17 = load ptr, ptr %detach_ctx, align 8, !dbg !2417
  %head23 = getelementptr inbounds %struct.spdk_nvme_detach_ctx, ptr %17, i32 0, i32 0, !dbg !2417
  %tqh_last24 = getelementptr inbounds %struct.anon.104, ptr %head23, i32 0, i32 1, !dbg !2417
  %18 = load ptr, ptr %tqh_last24, align 8, !dbg !2417
  %19 = load ptr, ptr %ctx, align 8, !dbg !2417
  %link25 = getelementptr inbounds %struct.nvme_ctrlr_detach_ctx, ptr %19, i32 0, i32 7, !dbg !2417
  %tqe_prev = getelementptr inbounds %struct.anon.105, ptr %link25, i32 0, i32 1, !dbg !2417
  store ptr %18, ptr %tqe_prev, align 8, !dbg !2417
  %20 = load ptr, ptr %ctx, align 8, !dbg !2417
  %21 = load ptr, ptr %detach_ctx, align 8, !dbg !2417
  %head26 = getelementptr inbounds %struct.spdk_nvme_detach_ctx, ptr %21, i32 0, i32 0, !dbg !2417
  %tqh_last27 = getelementptr inbounds %struct.anon.104, ptr %head26, i32 0, i32 1, !dbg !2417
  %22 = load ptr, ptr %tqh_last27, align 8, !dbg !2417
  store ptr %20, ptr %22, align 8, !dbg !2417
  %23 = load ptr, ptr %ctx, align 8, !dbg !2417
  %link28 = getelementptr inbounds %struct.nvme_ctrlr_detach_ctx, ptr %23, i32 0, i32 7, !dbg !2417
  %tqe_next29 = getelementptr inbounds %struct.anon.105, ptr %link28, i32 0, i32 0, !dbg !2417
  %24 = load ptr, ptr %detach_ctx, align 8, !dbg !2417
  %head30 = getelementptr inbounds %struct.spdk_nvme_detach_ctx, ptr %24, i32 0, i32 0, !dbg !2417
  %tqh_last31 = getelementptr inbounds %struct.anon.104, ptr %head30, i32 0, i32 1, !dbg !2417
  store ptr %tqe_next29, ptr %tqh_last31, align 8, !dbg !2417
  br label %do.cond32, !dbg !2417

do.cond32:                                        ; preds = %do.body22
  br label %do.end33, !dbg !2417

do.end33:                                         ; preds = %do.cond32
  %25 = load ptr, ptr %detach_ctx, align 8, !dbg !2419
  %26 = load ptr, ptr %_detach_ctx.addr, align 8, !dbg !2420
  store ptr %25, ptr %26, align 8, !dbg !2421
  store i32 0, ptr %retval, align 4, !dbg !2422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2422

cleanup:                                          ; preds = %do.end33, %if.end20, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #14, !dbg !2423
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #14, !dbg !2423
  call void @llvm.lifetime.end.p0(i64 8, ptr %detach_ctx) #14, !dbg !2423
  %27 = load i32, ptr %retval, align 4, !dbg !2423
  ret i32 %27, !dbg !2423
}

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !2424 noalias ptr @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: nounwind
declare !dbg !2428 void @free(ptr noundef) #4

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_nvme_detach_poll_async(ptr noundef %detach_ctx) #0 !dbg !2431 {
entry:
  %retval = alloca i32, align 4
  %detach_ctx.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %tmp_ctx = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %detach_ctx, ptr %detach_ctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %detach_ctx.addr, metadata !2435, metadata !DIExpression()), !dbg !2439
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #14, !dbg !2440
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !2436, metadata !DIExpression()), !dbg !2441
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp_ctx) #14, !dbg !2440
  tail call void @llvm.dbg.declare(metadata ptr %tmp_ctx, metadata !2437, metadata !DIExpression()), !dbg !2442
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #14, !dbg !2443
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !2438, metadata !DIExpression()), !dbg !2444
  %0 = load ptr, ptr %detach_ctx.addr, align 8, !dbg !2445
  %cmp = icmp eq ptr %0, null, !dbg !2447
  br i1 %cmp, label %if.then, label %if.end, !dbg !2448

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2449
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2449

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %detach_ctx.addr, align 8, !dbg !2451
  %head = getelementptr inbounds %struct.spdk_nvme_detach_ctx, ptr %1, i32 0, i32 0, !dbg !2451
  %tqh_first = getelementptr inbounds %struct.anon.104, ptr %head, i32 0, i32 0, !dbg !2451
  %2 = load ptr, ptr %tqh_first, align 8, !dbg !2451
  store ptr %2, ptr %ctx, align 8, !dbg !2451
  br label %for.cond, !dbg !2451

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load ptr, ptr %ctx, align 8, !dbg !2453
  %tobool = icmp ne ptr %3, null, !dbg !2453
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2453

land.rhs:                                         ; preds = %for.cond
  %4 = load ptr, ptr %ctx, align 8, !dbg !2453
  %link = getelementptr inbounds %struct.nvme_ctrlr_detach_ctx, ptr %4, i32 0, i32 7, !dbg !2453
  %tqe_next = getelementptr inbounds %struct.anon.105, ptr %link, i32 0, i32 0, !dbg !2453
  %5 = load ptr, ptr %tqe_next, align 8, !dbg !2453
  store ptr %5, ptr %tmp_ctx, align 8, !dbg !2453
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ true, %land.rhs ], !dbg !2455
  br i1 %6, label %for.body, label %for.end, !dbg !2451

for.body:                                         ; preds = %land.end
  br label %do.body, !dbg !2456

do.body:                                          ; preds = %for.body
  %7 = load ptr, ptr %ctx, align 8, !dbg !2458
  %link1 = getelementptr inbounds %struct.nvme_ctrlr_detach_ctx, ptr %7, i32 0, i32 7, !dbg !2458
  %tqe_next2 = getelementptr inbounds %struct.anon.105, ptr %link1, i32 0, i32 0, !dbg !2458
  %8 = load ptr, ptr %tqe_next2, align 8, !dbg !2458
  %cmp3 = icmp ne ptr %8, null, !dbg !2458
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !2461

if.then4:                                         ; preds = %do.body
  %9 = load ptr, ptr %ctx, align 8, !dbg !2458
  %link5 = getelementptr inbounds %struct.nvme_ctrlr_detach_ctx, ptr %9, i32 0, i32 7, !dbg !2458
  %tqe_prev = getelementptr inbounds %struct.anon.105, ptr %link5, i32 0, i32 1, !dbg !2458
  %10 = load ptr, ptr %tqe_prev, align 8, !dbg !2458
  %11 = load ptr, ptr %ctx, align 8, !dbg !2458
  %link6 = getelementptr inbounds %struct.nvme_ctrlr_detach_ctx, ptr %11, i32 0, i32 7, !dbg !2458
  %tqe_next7 = getelementptr inbounds %struct.anon.105, ptr %link6, i32 0, i32 0, !dbg !2458
  %12 = load ptr, ptr %tqe_next7, align 8, !dbg !2458
  %link8 = getelementptr inbounds %struct.nvme_ctrlr_detach_ctx, ptr %12, i32 0, i32 7, !dbg !2458
  %tqe_prev9 = getelementptr inbounds %struct.anon.105, ptr %link8, i32 0, i32 1, !dbg !2458
  store ptr %10, ptr %tqe_prev9, align 8, !dbg !2458
  br label %if.end13, !dbg !2458

if.else:                                          ; preds = %do.body
  %13 = load ptr, ptr %ctx, align 8, !dbg !2458
  %link10 = getelementptr inbounds %struct.nvme_ctrlr_detach_ctx, ptr %13, i32 0, i32 7, !dbg !2458
  %tqe_prev11 = getelementptr inbounds %struct.anon.105, ptr %link10, i32 0, i32 1, !dbg !2458
  %14 = load ptr, ptr %tqe_prev11, align 8, !dbg !2458
  %15 = load ptr, ptr %detach_ctx.addr, align 8, !dbg !2458
  %head12 = getelementptr inbounds %struct.spdk_nvme_detach_ctx, ptr %15, i32 0, i32 0, !dbg !2458
  %tqh_last = getelementptr inbounds %struct.anon.104, ptr %head12, i32 0, i32 1, !dbg !2458
  store ptr %14, ptr %tqh_last, align 8, !dbg !2458
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then4
  %16 = load ptr, ptr %ctx, align 8, !dbg !2461
  %link14 = getelementptr inbounds %struct.nvme_ctrlr_detach_ctx, ptr %16, i32 0, i32 7, !dbg !2461
  %tqe_next15 = getelementptr inbounds %struct.anon.105, ptr %link14, i32 0, i32 0, !dbg !2461
  %17 = load ptr, ptr %tqe_next15, align 8, !dbg !2461
  %18 = load ptr, ptr %ctx, align 8, !dbg !2461
  %link16 = getelementptr inbounds %struct.nvme_ctrlr_detach_ctx, ptr %18, i32 0, i32 7, !dbg !2461
  %tqe_prev17 = getelementptr inbounds %struct.anon.105, ptr %link16, i32 0, i32 1, !dbg !2461
  %19 = load ptr, ptr %tqe_prev17, align 8, !dbg !2461
  store ptr %17, ptr %19, align 8, !dbg !2461
  br label %do.cond, !dbg !2461

do.cond:                                          ; preds = %if.end13
  br label %do.end, !dbg !2461

do.end:                                           ; preds = %do.cond
  %20 = load ptr, ptr %ctx, align 8, !dbg !2462
  %call = call i32 @nvme_ctrlr_detach_poll_async(ptr noundef %20), !dbg !2463
  store i32 %call, ptr %rc, align 4, !dbg !2464
  %21 = load i32, ptr %rc, align 4, !dbg !2465
  %cmp18 = icmp eq i32 %21, -11, !dbg !2467
  br i1 %cmp18, label %if.then19, label %if.end47, !dbg !2468

if.then19:                                        ; preds = %do.end
  br label %do.body20, !dbg !2469

do.body20:                                        ; preds = %if.then19
  %22 = load ptr, ptr %detach_ctx.addr, align 8, !dbg !2471
  %head21 = getelementptr inbounds %struct.spdk_nvme_detach_ctx, ptr %22, i32 0, i32 0, !dbg !2471
  %tqh_first22 = getelementptr inbounds %struct.anon.104, ptr %head21, i32 0, i32 0, !dbg !2471
  %23 = load ptr, ptr %tqh_first22, align 8, !dbg !2471
  %24 = load ptr, ptr %ctx, align 8, !dbg !2471
  %link23 = getelementptr inbounds %struct.nvme_ctrlr_detach_ctx, ptr %24, i32 0, i32 7, !dbg !2471
  %tqe_next24 = getelementptr inbounds %struct.anon.105, ptr %link23, i32 0, i32 0, !dbg !2471
  store ptr %23, ptr %tqe_next24, align 8, !dbg !2471
  %cmp25 = icmp ne ptr %23, null, !dbg !2471
  br i1 %cmp25, label %if.then26, label %if.else33, !dbg !2474

if.then26:                                        ; preds = %do.body20
  %25 = load ptr, ptr %ctx, align 8, !dbg !2471
  %link27 = getelementptr inbounds %struct.nvme_ctrlr_detach_ctx, ptr %25, i32 0, i32 7, !dbg !2471
  %tqe_next28 = getelementptr inbounds %struct.anon.105, ptr %link27, i32 0, i32 0, !dbg !2471
  %26 = load ptr, ptr %detach_ctx.addr, align 8, !dbg !2471
  %head29 = getelementptr inbounds %struct.spdk_nvme_detach_ctx, ptr %26, i32 0, i32 0, !dbg !2471
  %tqh_first30 = getelementptr inbounds %struct.anon.104, ptr %head29, i32 0, i32 0, !dbg !2471
  %27 = load ptr, ptr %tqh_first30, align 8, !dbg !2471
  %link31 = getelementptr inbounds %struct.nvme_ctrlr_detach_ctx, ptr %27, i32 0, i32 7, !dbg !2471
  %tqe_prev32 = getelementptr inbounds %struct.anon.105, ptr %link31, i32 0, i32 1, !dbg !2471
  store ptr %tqe_next28, ptr %tqe_prev32, align 8, !dbg !2471
  br label %if.end38, !dbg !2471

if.else33:                                        ; preds = %do.body20
  %28 = load ptr, ptr %ctx, align 8, !dbg !2471
  %link34 = getelementptr inbounds %struct.nvme_ctrlr_detach_ctx, ptr %28, i32 0, i32 7, !dbg !2471
  %tqe_next35 = getelementptr inbounds %struct.anon.105, ptr %link34, i32 0, i32 0, !dbg !2471
  %29 = load ptr, ptr %detach_ctx.addr, align 8, !dbg !2471
  %head36 = getelementptr inbounds %struct.spdk_nvme_detach_ctx, ptr %29, i32 0, i32 0, !dbg !2471
  %tqh_last37 = getelementptr inbounds %struct.anon.104, ptr %head36, i32 0, i32 1, !dbg !2471
  store ptr %tqe_next35, ptr %tqh_last37, align 8, !dbg !2471
  br label %if.end38

if.end38:                                         ; preds = %if.else33, %if.then26
  %30 = load ptr, ptr %ctx, align 8, !dbg !2474
  %31 = load ptr, ptr %detach_ctx.addr, align 8, !dbg !2474
  %head39 = getelementptr inbounds %struct.spdk_nvme_detach_ctx, ptr %31, i32 0, i32 0, !dbg !2474
  %tqh_first40 = getelementptr inbounds %struct.anon.104, ptr %head39, i32 0, i32 0, !dbg !2474
  store ptr %30, ptr %tqh_first40, align 8, !dbg !2474
  %32 = load ptr, ptr %detach_ctx.addr, align 8, !dbg !2474
  %head41 = getelementptr inbounds %struct.spdk_nvme_detach_ctx, ptr %32, i32 0, i32 0, !dbg !2474
  %tqh_first42 = getelementptr inbounds %struct.anon.104, ptr %head41, i32 0, i32 0, !dbg !2474
  %33 = load ptr, ptr %ctx, align 8, !dbg !2474
  %link43 = getelementptr inbounds %struct.nvme_ctrlr_detach_ctx, ptr %33, i32 0, i32 7, !dbg !2474
  %tqe_prev44 = getelementptr inbounds %struct.anon.105, ptr %link43, i32 0, i32 1, !dbg !2474
  store ptr %tqh_first42, ptr %tqe_prev44, align 8, !dbg !2474
  br label %do.cond45, !dbg !2474

do.cond45:                                        ; preds = %if.end38
  br label %do.end46, !dbg !2474

do.end46:                                         ; preds = %do.cond45
  br label %if.end47, !dbg !2475

if.end47:                                         ; preds = %do.end46, %do.end
  br label %for.inc, !dbg !2476

for.inc:                                          ; preds = %if.end47
  %34 = load ptr, ptr %tmp_ctx, align 8, !dbg !2453
  store ptr %34, ptr %ctx, align 8, !dbg !2453
  br label %for.cond, !dbg !2453, !llvm.loop !2477

for.end:                                          ; preds = %land.end
  %35 = load ptr, ptr %detach_ctx.addr, align 8, !dbg !2479
  %head48 = getelementptr inbounds %struct.spdk_nvme_detach_ctx, ptr %35, i32 0, i32 0, !dbg !2479
  %tqh_first49 = getelementptr inbounds %struct.anon.104, ptr %head48, i32 0, i32 0, !dbg !2479
  %36 = load ptr, ptr %tqh_first49, align 8, !dbg !2479
  %cmp50 = icmp eq ptr %36, null, !dbg !2479
  br i1 %cmp50, label %if.end52, label %if.then51, !dbg !2481

if.then51:                                        ; preds = %for.end
  store i32 -11, ptr %retval, align 4, !dbg !2482
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2482

if.end52:                                         ; preds = %for.end
  %37 = load ptr, ptr %detach_ctx.addr, align 8, !dbg !2484
  call void @free(ptr noundef %37) #14, !dbg !2485
  store i32 0, ptr %retval, align 4, !dbg !2486
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2486

cleanup:                                          ; preds = %if.end52, %if.then51, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #14, !dbg !2487
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp_ctx) #14, !dbg !2487
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #14, !dbg !2487
  %38 = load i32, ptr %retval, align 4, !dbg !2487
  ret i32 %38, !dbg !2487
}

; Function Attrs: nounwind ssp uwtable
define void @spdk_nvme_detach_poll(ptr noundef %detach_ctx) #0 !dbg !2488 {
entry:
  %detach_ctx.addr = alloca ptr, align 8
  store ptr %detach_ctx, ptr %detach_ctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %detach_ctx.addr, metadata !2492, metadata !DIExpression()), !dbg !2493
  br label %while.cond, !dbg !2494

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %detach_ctx.addr, align 8, !dbg !2495
  %tobool = icmp ne ptr %0, null, !dbg !2495
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2496

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %detach_ctx.addr, align 8, !dbg !2497
  %call = call i32 @spdk_nvme_detach_poll_async(ptr noundef %1), !dbg !2498
  %cmp = icmp eq i32 %call, -11, !dbg !2499
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !2500
  br i1 %2, label %while.body, label %while.end, !dbg !2494

while.body:                                       ; preds = %land.end
  br label %while.cond, !dbg !2494, !llvm.loop !2501

while.end:                                        ; preds = %land.end
  ret void, !dbg !2503
}

; Function Attrs: nounwind ssp uwtable
define void @nvme_completion_poll_cb(ptr noundef %arg, ptr noundef %cpl) #0 !dbg !2504 {
entry:
  %arg.addr = alloca ptr, align 8
  %cpl.addr = alloca ptr, align 8
  %status = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !2506, metadata !DIExpression()), !dbg !2509
  store ptr %cpl, ptr %cpl.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cpl.addr, metadata !2507, metadata !DIExpression()), !dbg !2510
  call void @llvm.lifetime.start.p0(i64 8, ptr %status) #14, !dbg !2511
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !2508, metadata !DIExpression()), !dbg !2512
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !2513
  store ptr %0, ptr %status, align 8, !dbg !2512
  %1 = load ptr, ptr %status, align 8, !dbg !2514
  %timed_out = getelementptr inbounds %struct.nvme_completion_poll_status, ptr %1, i32 0, i32 4, !dbg !2516
  %2 = load i8, ptr %timed_out, align 1, !dbg !2516, !range !2517, !noundef !2518
  %tobool = trunc i8 %2 to i1, !dbg !2516
  br i1 %tobool, label %if.then, label %if.end, !dbg !2519

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %status, align 8, !dbg !2520
  %dma_data = getelementptr inbounds %struct.nvme_completion_poll_status, ptr %3, i32 0, i32 2, !dbg !2522
  %4 = load ptr, ptr %dma_data, align 8, !dbg !2522
  call void @spdk_free(ptr noundef %4), !dbg !2523
  %5 = load ptr, ptr %status, align 8, !dbg !2524
  call void @free(ptr noundef %5) #14, !dbg !2525
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2526

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %status, align 8, !dbg !2527
  %cpl1 = getelementptr inbounds %struct.nvme_completion_poll_status, ptr %6, i32 0, i32 0, !dbg !2528
  %7 = load ptr, ptr %cpl.addr, align 8, !dbg !2529
  %call = call ptr @memcpy.inline(ptr noundef %cpl1, ptr noundef %7, i64 noundef 16) #14, !dbg !2530
  %8 = load ptr, ptr %status, align 8, !dbg !2531
  %done = getelementptr inbounds %struct.nvme_completion_poll_status, ptr %8, i32 0, i32 3, !dbg !2532
  store i8 1, ptr %done, align 8, !dbg !2533
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2534
  br label %cleanup, !dbg !2534

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status) #14, !dbg !2534
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2534

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !2535 void @spdk_free(ptr noundef) #2

; Function Attrs: alwaysinline nobuiltin nounwind ssp uwtable
declare ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: alwaysinline nounwind
define internal ptr @memcpy.inline(ptr noalias nonnull %__dest, ptr noalias nonnull %__src, i64 %__len) #6 !dbg !2536 {
entry:
  %__dest.addr = alloca ptr, align 8
  %__src.addr = alloca ptr, align 8
  %__len.addr = alloca i64, align 8
  store ptr %__dest, ptr %__dest.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %__dest.addr, metadata !2545, metadata !DIExpression()), !dbg !2548
  store ptr %__src, ptr %__src.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %__src.addr, metadata !2546, metadata !DIExpression()), !dbg !2548
  store i64 %__len, ptr %__len.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %__len.addr, metadata !2547, metadata !DIExpression()), !dbg !2548
  %0 = load ptr, ptr %__dest.addr, align 8, !dbg !2549
  %1 = load ptr, ptr %__src.addr, align 8, !dbg !2550
  %2 = load i64, ptr %__len.addr, align 8, !dbg !2551
  %3 = load ptr, ptr %__dest.addr, align 8, !dbg !2552
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false), !dbg !2552
  %call = call ptr @__memcpy_chk(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %4) #14, !dbg !2553
  ret ptr %call, !dbg !2554
}

; Function Attrs: nounwind ssp uwtable
define i32 @nvme_wait_for_completion_robust_lock_timeout_poll(ptr noundef %qpair, ptr noundef %status, ptr noundef %robust_mutex) #0 !dbg !2555 {
entry:
  %retval = alloca i32, align 4
  %qpair.addr = alloca ptr, align 8
  %status.addr = alloca ptr, align 8
  %robust_mutex.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %csts = alloca %union.spdk_nvme_csts_register, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %qpair, ptr %qpair.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %qpair.addr, metadata !2560, metadata !DIExpression()), !dbg !2568
  store ptr %status, ptr %status.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !2561, metadata !DIExpression()), !dbg !2569
  store ptr %robust_mutex, ptr %robust_mutex.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %robust_mutex.addr, metadata !2562, metadata !DIExpression()), !dbg !2570
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #14, !dbg !2571
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !2563, metadata !DIExpression()), !dbg !2572
  %0 = load ptr, ptr %robust_mutex.addr, align 8, !dbg !2573
  %tobool = icmp ne ptr %0, null, !dbg !2573
  br i1 %tobool, label %if.then, label %if.end, !dbg !2575

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %robust_mutex.addr, align 8, !dbg !2576
  %call = call i32 @nvme_robust_mutex_lock(ptr noundef %1), !dbg !2578
  br label %if.end, !dbg !2579

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %qpair.addr, align 8, !dbg !2580
  %poll_group = getelementptr inbounds %struct.spdk_nvme_qpair, ptr %2, i32 0, i32 14, !dbg !2582
  %3 = load ptr, ptr %poll_group, align 8, !dbg !2582
  %tobool1 = icmp ne ptr %3, null, !dbg !2580
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !2583

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %qpair.addr, align 8, !dbg !2584
  %poll_group3 = getelementptr inbounds %struct.spdk_nvme_qpair, ptr %4, i32 0, i32 14, !dbg !2586
  %5 = load ptr, ptr %poll_group3, align 8, !dbg !2586
  %group = getelementptr inbounds %struct.spdk_nvme_transport_poll_group, ptr %5, i32 0, i32 0, !dbg !2587
  %6 = load ptr, ptr %group, align 8, !dbg !2587
  %call4 = call i64 @spdk_nvme_poll_group_process_completions(ptr noundef %6, i32 noundef 0, ptr noundef @dummy_disconnected_qpair_cb), !dbg !2588
  %conv = trunc i64 %call4 to i32, !dbg !2589
  store i32 %conv, ptr %rc, align 4, !dbg !2590
  br label %if.end6, !dbg !2591

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %qpair.addr, align 8, !dbg !2592
  %call5 = call i32 @spdk_nvme_qpair_process_completions(ptr noundef %7, i32 noundef 0), !dbg !2594
  store i32 %call5, ptr %rc, align 4, !dbg !2595
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  %8 = load ptr, ptr %robust_mutex.addr, align 8, !dbg !2596
  %tobool7 = icmp ne ptr %8, null, !dbg !2596
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !2598

if.then8:                                         ; preds = %if.end6
  %9 = load ptr, ptr %robust_mutex.addr, align 8, !dbg !2599
  %call9 = call i32 @nvme_robust_mutex_unlock(ptr noundef %9), !dbg !2601
  br label %if.end10, !dbg !2602

if.end10:                                         ; preds = %if.then8, %if.end6
  %10 = load i32, ptr %rc, align 4, !dbg !2603
  %cmp = icmp slt i32 %10, 0, !dbg !2605
  br i1 %cmp, label %if.then12, label %if.end17, !dbg !2606

if.then12:                                        ; preds = %if.end10
  %11 = load ptr, ptr %status.addr, align 8, !dbg !2607
  %cpl = getelementptr inbounds %struct.nvme_completion_poll_status, ptr %11, i32 0, i32 0, !dbg !2609
  %12 = getelementptr inbounds %struct.spdk_nvme_cpl, ptr %cpl, i32 0, i32 5, !dbg !2610
  %bf.load = load i16, ptr %12, align 2, !dbg !2611
  %bf.clear = and i16 %bf.load, -3585, !dbg !2611
  %bf.set = or i16 %bf.clear, 0, !dbg !2611
  store i16 %bf.set, ptr %12, align 2, !dbg !2611
  %13 = load ptr, ptr %status.addr, align 8, !dbg !2612
  %cpl13 = getelementptr inbounds %struct.nvme_completion_poll_status, ptr %13, i32 0, i32 0, !dbg !2613
  %14 = getelementptr inbounds %struct.spdk_nvme_cpl, ptr %cpl13, i32 0, i32 5, !dbg !2614
  %bf.load14 = load i16, ptr %14, align 2, !dbg !2615
  %bf.clear15 = and i16 %bf.load14, -511, !dbg !2615
  %bf.set16 = or i16 %bf.clear15, 16, !dbg !2615
  store i16 %bf.set16, ptr %14, align 2, !dbg !2615
  br label %error, !dbg !2616

if.end17:                                         ; preds = %if.end10
  %15 = load ptr, ptr %status.addr, align 8, !dbg !2617
  %done = getelementptr inbounds %struct.nvme_completion_poll_status, ptr %15, i32 0, i32 3, !dbg !2619
  %16 = load i8, ptr %done, align 8, !dbg !2619, !range !2517, !noundef !2518
  %tobool18 = trunc i8 %16 to i1, !dbg !2619
  br i1 %tobool18, label %if.end26, label %land.lhs.true, !dbg !2620

land.lhs.true:                                    ; preds = %if.end17
  %17 = load ptr, ptr %status.addr, align 8, !dbg !2621
  %timeout_tsc = getelementptr inbounds %struct.nvme_completion_poll_status, ptr %17, i32 0, i32 1, !dbg !2622
  %18 = load i64, ptr %timeout_tsc, align 8, !dbg !2622
  %tobool19 = icmp ne i64 %18, 0, !dbg !2621
  br i1 %tobool19, label %land.lhs.true20, label %if.end26, !dbg !2623

land.lhs.true20:                                  ; preds = %land.lhs.true
  %call21 = call i64 @spdk_get_ticks(), !dbg !2624
  %19 = load ptr, ptr %status.addr, align 8, !dbg !2625
  %timeout_tsc22 = getelementptr inbounds %struct.nvme_completion_poll_status, ptr %19, i32 0, i32 1, !dbg !2626
  %20 = load i64, ptr %timeout_tsc22, align 8, !dbg !2626
  %cmp23 = icmp ugt i64 %call21, %20, !dbg !2627
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !2628

if.then25:                                        ; preds = %land.lhs.true20
  br label %error, !dbg !2629

if.end26:                                         ; preds = %land.lhs.true20, %land.lhs.true, %if.end17
  %21 = load ptr, ptr %qpair.addr, align 8, !dbg !2631
  %ctrlr = getelementptr inbounds %struct.spdk_nvme_qpair, ptr %21, i32 0, i32 0, !dbg !2632
  %22 = load ptr, ptr %ctrlr, align 8, !dbg !2632
  %trid = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %22, i32 0, i32 14, !dbg !2633
  %trtype = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %trid, i32 0, i32 1, !dbg !2634
  %23 = load i32, ptr %trtype, align 4, !dbg !2634
  %cmp27 = icmp eq i32 %23, 256, !dbg !2635
  br i1 %cmp27, label %if.then29, label %if.end44, !dbg !2636

if.then29:                                        ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 4, ptr %csts) #14, !dbg !2637
  tail call void @llvm.dbg.declare(metadata ptr %csts, metadata !2564, metadata !DIExpression()), !dbg !2638
  %24 = load ptr, ptr %qpair.addr, align 8, !dbg !2639
  %ctrlr30 = getelementptr inbounds %struct.spdk_nvme_qpair, ptr %24, i32 0, i32 0, !dbg !2640
  %25 = load ptr, ptr %ctrlr30, align 8, !dbg !2640
  %call31 = call i32 @spdk_nvme_ctrlr_get_regs_csts(ptr noundef %25), !dbg !2641
  %coerce.dive = getelementptr inbounds %union.spdk_nvme_csts_register, ptr %csts, i32 0, i32 0, !dbg !2641
  store i32 %call31, ptr %coerce.dive, align 4, !dbg !2641
  %26 = load i32, ptr %csts, align 4, !dbg !2642
  %cmp32 = icmp eq i32 %26, -1, !dbg !2644
  br i1 %cmp32, label %if.then34, label %if.end43, !dbg !2645

if.then34:                                        ; preds = %if.then29
  %27 = load ptr, ptr %status.addr, align 8, !dbg !2646
  %cpl35 = getelementptr inbounds %struct.nvme_completion_poll_status, ptr %27, i32 0, i32 0, !dbg !2648
  %28 = getelementptr inbounds %struct.spdk_nvme_cpl, ptr %cpl35, i32 0, i32 5, !dbg !2649
  %bf.load36 = load i16, ptr %28, align 2, !dbg !2650
  %bf.clear37 = and i16 %bf.load36, -3585, !dbg !2650
  %bf.set38 = or i16 %bf.clear37, 0, !dbg !2650
  store i16 %bf.set38, ptr %28, align 2, !dbg !2650
  %29 = load ptr, ptr %status.addr, align 8, !dbg !2651
  %cpl39 = getelementptr inbounds %struct.nvme_completion_poll_status, ptr %29, i32 0, i32 0, !dbg !2652
  %30 = getelementptr inbounds %struct.spdk_nvme_cpl, ptr %cpl39, i32 0, i32 5, !dbg !2653
  %bf.load40 = load i16, ptr %30, align 2, !dbg !2654
  %bf.clear41 = and i16 %bf.load40, -511, !dbg !2654
  %bf.set42 = or i16 %bf.clear41, 12, !dbg !2654
  store i16 %bf.set42, ptr %30, align 2, !dbg !2654
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2655

if.end43:                                         ; preds = %if.then29
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2656
  br label %cleanup, !dbg !2656

cleanup:                                          ; preds = %if.then34, %if.end43
  call void @llvm.lifetime.end.p0(i64 4, ptr %csts) #14, !dbg !2656
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup68 [
    i32 0, label %cleanup.cont
    i32 2, label %error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end44, !dbg !2657

if.end44:                                         ; preds = %cleanup.cont, %if.end26
  %31 = load ptr, ptr %status.addr, align 8, !dbg !2658
  %done45 = getelementptr inbounds %struct.nvme_completion_poll_status, ptr %31, i32 0, i32 3, !dbg !2660
  %32 = load i8, ptr %done45, align 8, !dbg !2660, !range !2517, !noundef !2518
  %tobool46 = trunc i8 %32 to i1, !dbg !2660
  br i1 %tobool46, label %if.else48, label %if.then47, !dbg !2661

if.then47:                                        ; preds = %if.end44
  store i32 -11, ptr %retval, align 4, !dbg !2662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !2662

if.else48:                                        ; preds = %if.end44
  %33 = load ptr, ptr %status.addr, align 8, !dbg !2664
  %cpl49 = getelementptr inbounds %struct.nvme_completion_poll_status, ptr %33, i32 0, i32 0, !dbg !2664
  %34 = getelementptr inbounds %struct.spdk_nvme_cpl, ptr %cpl49, i32 0, i32 5, !dbg !2664
  %bf.load50 = load i16, ptr %34, align 2, !dbg !2664
  %bf.lshr = lshr i16 %bf.load50, 1, !dbg !2664
  %bf.clear51 = and i16 %bf.lshr, 255, !dbg !2664
  %conv52 = zext i16 %bf.clear51 to i32, !dbg !2664
  %cmp53 = icmp ne i32 %conv52, 0, !dbg !2664
  br i1 %cmp53, label %if.then62, label %lor.lhs.false, !dbg !2664

lor.lhs.false:                                    ; preds = %if.else48
  %35 = load ptr, ptr %status.addr, align 8, !dbg !2664
  %cpl55 = getelementptr inbounds %struct.nvme_completion_poll_status, ptr %35, i32 0, i32 0, !dbg !2664
  %36 = getelementptr inbounds %struct.spdk_nvme_cpl, ptr %cpl55, i32 0, i32 5, !dbg !2664
  %bf.load56 = load i16, ptr %36, align 2, !dbg !2664
  %bf.lshr57 = lshr i16 %bf.load56, 9, !dbg !2664
  %bf.clear58 = and i16 %bf.lshr57, 7, !dbg !2664
  %conv59 = zext i16 %bf.clear58 to i32, !dbg !2664
  %cmp60 = icmp ne i32 %conv59, 0, !dbg !2664
  br i1 %cmp60, label %if.then62, label %if.else63, !dbg !2666

if.then62:                                        ; preds = %lor.lhs.false, %if.else48
  store i32 -5, ptr %retval, align 4, !dbg !2667
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !2667

if.else63:                                        ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !2669
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !2669

error:                                            ; preds = %cleanup, %if.then25, %if.then12
  tail call void @llvm.dbg.label(metadata !2567), !dbg !2671
  %37 = load ptr, ptr %status.addr, align 8, !dbg !2672
  %done64 = getelementptr inbounds %struct.nvme_completion_poll_status, ptr %37, i32 0, i32 3, !dbg !2674
  %38 = load i8, ptr %done64, align 8, !dbg !2674, !range !2517, !noundef !2518
  %tobool65 = trunc i8 %38 to i1, !dbg !2674
  br i1 %tobool65, label %if.end67, label %if.then66, !dbg !2675

if.then66:                                        ; preds = %error
  %39 = load ptr, ptr %status.addr, align 8, !dbg !2676
  %timed_out = getelementptr inbounds %struct.nvme_completion_poll_status, ptr %39, i32 0, i32 4, !dbg !2678
  store i8 1, ptr %timed_out, align 1, !dbg !2679
  br label %if.end67, !dbg !2680

if.end67:                                         ; preds = %if.then66, %error
  store i32 -125, ptr %retval, align 4, !dbg !2681
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !2681

cleanup68:                                        ; preds = %if.end67, %if.else63, %if.then62, %if.then47, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #14, !dbg !2682
  %40 = load i32, ptr %retval, align 4, !dbg !2682
  ret i32 %40, !dbg !2682
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i32 @nvme_robust_mutex_lock(ptr noundef %mtx) #7 !dbg !2683 {
entry:
  %mtx.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %mtx, ptr %mtx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mtx.addr, metadata !2687, metadata !DIExpression()), !dbg !2689
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #14, !dbg !2690
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !2688, metadata !DIExpression()), !dbg !2691
  %0 = load ptr, ptr %mtx.addr, align 8, !dbg !2692
  %call = call i32 @pthread_mutex_lock(ptr noundef %0) #14, !dbg !2693
  store i32 %call, ptr %rc, align 4, !dbg !2691
  %1 = load i32, ptr %rc, align 4, !dbg !2694
  %cmp = icmp eq i32 %1, 130, !dbg !2696
  br i1 %cmp, label %if.then, label %if.end, !dbg !2697

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %mtx.addr, align 8, !dbg !2698
  %call1 = call i32 @pthread_mutex_consistent(ptr noundef %2) #14, !dbg !2700
  store i32 %call1, ptr %rc, align 4, !dbg !2701
  br label %if.end, !dbg !2702

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %rc, align 4, !dbg !2703
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #14, !dbg !2704
  ret i32 %3, !dbg !2705
}

declare !dbg !2706 i64 @spdk_nvme_poll_group_process_completions(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @dummy_disconnected_qpair_cb(ptr noundef %qpair, ptr noundef %poll_group_ctx) #0 !dbg !2715 {
entry:
  %qpair.addr = alloca ptr, align 8
  %poll_group_ctx.addr = alloca ptr, align 8
  store ptr %qpair, ptr %qpair.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %qpair.addr, metadata !2717, metadata !DIExpression()), !dbg !2719
  store ptr %poll_group_ctx, ptr %poll_group_ctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %poll_group_ctx.addr, metadata !2718, metadata !DIExpression()), !dbg !2720
  ret void, !dbg !2721
}

declare !dbg !2722 i32 @spdk_nvme_qpair_process_completions(ptr noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i32 @nvme_robust_mutex_unlock(ptr noundef %mtx) #7 !dbg !2727 {
entry:
  %mtx.addr = alloca ptr, align 8
  store ptr %mtx, ptr %mtx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mtx.addr, metadata !2729, metadata !DIExpression()), !dbg !2730
  %0 = load ptr, ptr %mtx.addr, align 8, !dbg !2731
  %call = call i32 @pthread_mutex_unlock(ptr noundef %0) #14, !dbg !2732
  ret i32 %call, !dbg !2733
}

declare !dbg !2734 i64 @spdk_get_ticks() #2

declare !dbg !2737 i32 @spdk_nvme_ctrlr_get_regs_csts(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @nvme_wait_for_completion_robust_lock_timeout(ptr noundef %qpair, ptr noundef %status, ptr noundef %robust_mutex, i64 noundef %timeout_in_usecs) #0 !dbg !2740 {
entry:
  %qpair.addr = alloca ptr, align 8
  %status.addr = alloca ptr, align 8
  %robust_mutex.addr = alloca ptr, align 8
  %timeout_in_usecs.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  store ptr %qpair, ptr %qpair.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %qpair.addr, metadata !2744, metadata !DIExpression()), !dbg !2749
  store ptr %status, ptr %status.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !2745, metadata !DIExpression()), !dbg !2750
  store ptr %robust_mutex, ptr %robust_mutex.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %robust_mutex.addr, metadata !2746, metadata !DIExpression()), !dbg !2751
  store i64 %timeout_in_usecs, ptr %timeout_in_usecs.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %timeout_in_usecs.addr, metadata !2747, metadata !DIExpression()), !dbg !2752
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #14, !dbg !2753
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !2748, metadata !DIExpression()), !dbg !2754
  %0 = load i64, ptr %timeout_in_usecs.addr, align 8, !dbg !2755
  %tobool = icmp ne i64 %0, 0, !dbg !2755
  br i1 %tobool, label %if.then, label %if.else, !dbg !2757

if.then:                                          ; preds = %entry
  %call = call i64 @spdk_get_ticks(), !dbg !2758
  %1 = load i64, ptr %timeout_in_usecs.addr, align 8, !dbg !2760
  %call1 = call i64 @spdk_get_ticks_hz(), !dbg !2761
  %mul = mul i64 %1, %call1, !dbg !2762
  %div = udiv i64 %mul, 1000000, !dbg !2763
  %add = add i64 %call, %div, !dbg !2764
  %2 = load ptr, ptr %status.addr, align 8, !dbg !2765
  %timeout_tsc = getelementptr inbounds %struct.nvme_completion_poll_status, ptr %2, i32 0, i32 1, !dbg !2766
  store i64 %add, ptr %timeout_tsc, align 8, !dbg !2767
  br label %if.end, !dbg !2768

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %status.addr, align 8, !dbg !2769
  %timeout_tsc2 = getelementptr inbounds %struct.nvme_completion_poll_status, ptr %3, i32 0, i32 1, !dbg !2771
  store i64 0, ptr %timeout_tsc2, align 8, !dbg !2772
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load ptr, ptr %status.addr, align 8, !dbg !2773
  %cpl = getelementptr inbounds %struct.nvme_completion_poll_status, ptr %4, i32 0, i32 0, !dbg !2774
  %5 = getelementptr inbounds %struct.spdk_nvme_cpl, ptr %cpl, i32 0, i32 5, !dbg !2775
  store i16 0, ptr %5, align 2, !dbg !2776
  br label %do.body, !dbg !2777

do.body:                                          ; preds = %do.cond, %if.end
  %6 = load ptr, ptr %qpair.addr, align 8, !dbg !2778
  %7 = load ptr, ptr %status.addr, align 8, !dbg !2780
  %8 = load ptr, ptr %robust_mutex.addr, align 8, !dbg !2781
  %call3 = call i32 @nvme_wait_for_completion_robust_lock_timeout_poll(ptr noundef %6, ptr noundef %7, ptr noundef %8), !dbg !2782
  store i32 %call3, ptr %rc, align 4, !dbg !2783
  br label %do.cond, !dbg !2784

do.cond:                                          ; preds = %do.body
  %9 = load i32, ptr %rc, align 4, !dbg !2785
  %cmp = icmp eq i32 %9, -11, !dbg !2786
  br i1 %cmp, label %do.body, label %do.end, !dbg !2784, !llvm.loop !2787

do.end:                                           ; preds = %do.cond
  %10 = load i32, ptr %rc, align 4, !dbg !2789
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #14, !dbg !2790
  ret i32 %10, !dbg !2791
}

declare !dbg !2792 i64 @spdk_get_ticks_hz() #2

; Function Attrs: nounwind ssp uwtable
define i32 @nvme_wait_for_completion_robust_lock(ptr noundef %qpair, ptr noundef %status, ptr noundef %robust_mutex) #0 !dbg !2793 {
entry:
  %qpair.addr = alloca ptr, align 8
  %status.addr = alloca ptr, align 8
  %robust_mutex.addr = alloca ptr, align 8
  store ptr %qpair, ptr %qpair.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %qpair.addr, metadata !2795, metadata !DIExpression()), !dbg !2798
  store ptr %status, ptr %status.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !2796, metadata !DIExpression()), !dbg !2799
  store ptr %robust_mutex, ptr %robust_mutex.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %robust_mutex.addr, metadata !2797, metadata !DIExpression()), !dbg !2800
  %0 = load ptr, ptr %qpair.addr, align 8, !dbg !2801
  %1 = load ptr, ptr %status.addr, align 8, !dbg !2802
  %2 = load ptr, ptr %robust_mutex.addr, align 8, !dbg !2803
  %call = call i32 @nvme_wait_for_completion_robust_lock_timeout(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef 0), !dbg !2804
  ret i32 %call, !dbg !2805
}

; Function Attrs: nounwind ssp uwtable
define i32 @nvme_wait_for_completion(ptr noundef %qpair, ptr noundef %status) #0 !dbg !2806 {
entry:
  %qpair.addr = alloca ptr, align 8
  %status.addr = alloca ptr, align 8
  store ptr %qpair, ptr %qpair.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %qpair.addr, metadata !2810, metadata !DIExpression()), !dbg !2812
  store ptr %status, ptr %status.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !2811, metadata !DIExpression()), !dbg !2813
  %0 = load ptr, ptr %qpair.addr, align 8, !dbg !2814
  %1 = load ptr, ptr %status.addr, align 8, !dbg !2815
  %call = call i32 @nvme_wait_for_completion_robust_lock_timeout(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef 0), !dbg !2816
  ret i32 %call, !dbg !2817
}

; Function Attrs: nounwind ssp uwtable
define i32 @nvme_wait_for_completion_timeout(ptr noundef %qpair, ptr noundef %status, i64 noundef %timeout_in_usecs) #0 !dbg !2818 {
entry:
  %qpair.addr = alloca ptr, align 8
  %status.addr = alloca ptr, align 8
  %timeout_in_usecs.addr = alloca i64, align 8
  store ptr %qpair, ptr %qpair.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %qpair.addr, metadata !2822, metadata !DIExpression()), !dbg !2825
  store ptr %status, ptr %status.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !2823, metadata !DIExpression()), !dbg !2826
  store i64 %timeout_in_usecs, ptr %timeout_in_usecs.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %timeout_in_usecs.addr, metadata !2824, metadata !DIExpression()), !dbg !2827
  %0 = load ptr, ptr %qpair.addr, align 8, !dbg !2828
  %1 = load ptr, ptr %status.addr, align 8, !dbg !2829
  %2 = load i64, ptr %timeout_in_usecs.addr, align 8, !dbg !2830
  %call = call i32 @nvme_wait_for_completion_robust_lock_timeout(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %2), !dbg !2831
  ret i32 %call, !dbg !2832
}

; Function Attrs: nounwind ssp uwtable
define ptr @nvme_allocate_request_user_copy(ptr noundef %qpair, ptr noundef %buffer, i32 noundef %payload_size, ptr noundef %cb_fn, ptr noundef %cb_arg, i1 noundef zeroext %host_to_controller) #0 !dbg !2833 {
entry:
  %retval = alloca ptr, align 8
  %qpair.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %payload_size.addr = alloca i32, align 4
  %cb_fn.addr = alloca ptr, align 8
  %cb_arg.addr = alloca ptr, align 8
  %host_to_controller.addr = alloca i8, align 1
  %req = alloca ptr, align 8
  %dma_buffer = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %qpair, ptr %qpair.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %qpair.addr, metadata !2837, metadata !DIExpression()), !dbg !2845
  store ptr %buffer, ptr %buffer.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !2838, metadata !DIExpression()), !dbg !2846
  store i32 %payload_size, ptr %payload_size.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %payload_size.addr, metadata !2839, metadata !DIExpression()), !dbg !2847
  store ptr %cb_fn, ptr %cb_fn.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cb_fn.addr, metadata !2840, metadata !DIExpression()), !dbg !2848
  store ptr %cb_arg, ptr %cb_arg.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cb_arg.addr, metadata !2841, metadata !DIExpression()), !dbg !2849
  %frombool = zext i1 %host_to_controller to i8
  store i8 %frombool, ptr %host_to_controller.addr, align 1
  tail call void @llvm.dbg.declare(metadata ptr %host_to_controller.addr, metadata !2842, metadata !DIExpression()), !dbg !2850
  call void @llvm.lifetime.start.p0(i64 8, ptr %req) #14, !dbg !2851
  tail call void @llvm.dbg.declare(metadata ptr %req, metadata !2843, metadata !DIExpression()), !dbg !2852
  call void @llvm.lifetime.start.p0(i64 8, ptr %dma_buffer) #14, !dbg !2853
  tail call void @llvm.dbg.declare(metadata ptr %dma_buffer, metadata !2844, metadata !DIExpression()), !dbg !2854
  store ptr null, ptr %dma_buffer, align 8, !dbg !2854
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !2855
  %tobool = icmp ne ptr %0, null, !dbg !2855
  br i1 %tobool, label %land.lhs.true, label %if.end9, !dbg !2857

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %payload_size.addr, align 4, !dbg !2858
  %tobool1 = icmp ne i32 %1, 0, !dbg !2858
  br i1 %tobool1, label %if.then, label %if.end9, !dbg !2859

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, ptr %payload_size.addr, align 4, !dbg !2860
  %conv = zext i32 %2 to i64, !dbg !2860
  %call = call ptr @spdk_zmalloc(i64 noundef %conv, i64 noundef 4096, ptr noundef null, i32 noundef -1, i32 noundef 1), !dbg !2862
  store ptr %call, ptr %dma_buffer, align 8, !dbg !2863
  %3 = load ptr, ptr %dma_buffer, align 8, !dbg !2864
  %tobool2 = icmp ne ptr %3, null, !dbg !2864
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !2866

if.then3:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8, !dbg !2867
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2867

if.end:                                           ; preds = %if.then
  %4 = load i8, ptr %host_to_controller.addr, align 1, !dbg !2869, !range !2517, !noundef !2518
  %tobool4 = trunc i8 %4 to i1, !dbg !2869
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !2871

if.then5:                                         ; preds = %if.end
  %5 = load ptr, ptr %dma_buffer, align 8, !dbg !2872
  %6 = load ptr, ptr %buffer.addr, align 8, !dbg !2874
  %7 = load i32, ptr %payload_size.addr, align 4, !dbg !2875
  %conv6 = zext i32 %7 to i64, !dbg !2875
  %call7 = call ptr @memcpy.inline(ptr noundef %5, ptr noundef %6, i64 noundef %conv6) #14, !dbg !2876
  br label %if.end8, !dbg !2877

if.end8:                                          ; preds = %if.then5, %if.end
  br label %if.end9, !dbg !2878

if.end9:                                          ; preds = %if.end8, %land.lhs.true, %entry
  %8 = load ptr, ptr %qpair.addr, align 8, !dbg !2879
  %9 = load ptr, ptr %dma_buffer, align 8, !dbg !2880
  %10 = load i32, ptr %payload_size.addr, align 4, !dbg !2881
  %call10 = call ptr @nvme_allocate_request_contig(ptr noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef @nvme_user_copy_cmd_complete, ptr noundef null), !dbg !2882
  store ptr %call10, ptr %req, align 8, !dbg !2883
  %11 = load ptr, ptr %req, align 8, !dbg !2884
  %tobool11 = icmp ne ptr %11, null, !dbg !2884
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !2886

if.then12:                                        ; preds = %if.end9
  %12 = load ptr, ptr %dma_buffer, align 8, !dbg !2887
  call void @spdk_free(ptr noundef %12), !dbg !2889
  store ptr null, ptr %retval, align 8, !dbg !2890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2890

if.end13:                                         ; preds = %if.end9
  %13 = load ptr, ptr %cb_fn.addr, align 8, !dbg !2891
  %14 = load ptr, ptr %req, align 8, !dbg !2892
  %user_cb_fn = getelementptr inbounds %struct.nvme_request, ptr %14, i32 0, i32 21, !dbg !2893
  store ptr %13, ptr %user_cb_fn, align 8, !dbg !2894
  %15 = load ptr, ptr %cb_arg.addr, align 8, !dbg !2895
  %16 = load ptr, ptr %req, align 8, !dbg !2896
  %user_cb_arg = getelementptr inbounds %struct.nvme_request, ptr %16, i32 0, i32 22, !dbg !2897
  store ptr %15, ptr %user_cb_arg, align 8, !dbg !2898
  %17 = load ptr, ptr %buffer.addr, align 8, !dbg !2899
  %18 = load ptr, ptr %req, align 8, !dbg !2900
  %user_buffer = getelementptr inbounds %struct.nvme_request, ptr %18, i32 0, i32 23, !dbg !2901
  store ptr %17, ptr %user_buffer, align 8, !dbg !2902
  %19 = load ptr, ptr %req, align 8, !dbg !2903
  %20 = load ptr, ptr %req, align 8, !dbg !2904
  %cb_arg14 = getelementptr inbounds %struct.nvme_request, ptr %20, i32 0, i32 10, !dbg !2905
  store ptr %19, ptr %cb_arg14, align 8, !dbg !2906
  %21 = load ptr, ptr %req, align 8, !dbg !2907
  store ptr %21, ptr %retval, align 8, !dbg !2908
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2908

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %dma_buffer) #14, !dbg !2909
  call void @llvm.lifetime.end.p0(i64 8, ptr %req) #14, !dbg !2909
  %22 = load ptr, ptr %retval, align 8, !dbg !2909
  ret ptr %22, !dbg !2909
}

declare !dbg !2910 ptr @spdk_zmalloc(i64 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal ptr @nvme_allocate_request_contig(ptr noundef %qpair, ptr noundef %buffer, i32 noundef %payload_size, ptr noundef %cb_fn, ptr noundef %cb_arg) #7 !dbg !2913 {
entry:
  %qpair.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %payload_size.addr = alloca i32, align 4
  %cb_fn.addr = alloca ptr, align 8
  %cb_arg.addr = alloca ptr, align 8
  %payload = alloca %struct.nvme_payload, align 8
  %.compoundliteral = alloca %struct.nvme_payload, align 8
  store ptr %qpair, ptr %qpair.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %qpair.addr, metadata !2917, metadata !DIExpression()), !dbg !2923
  store ptr %buffer, ptr %buffer.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !2918, metadata !DIExpression()), !dbg !2924
  store i32 %payload_size, ptr %payload_size.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %payload_size.addr, metadata !2919, metadata !DIExpression()), !dbg !2925
  store ptr %cb_fn, ptr %cb_fn.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cb_fn.addr, metadata !2920, metadata !DIExpression()), !dbg !2926
  store ptr %cb_arg, ptr %cb_arg.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cb_arg.addr, metadata !2921, metadata !DIExpression()), !dbg !2927
  call void @llvm.lifetime.start.p0(i64 40, ptr %payload) #14, !dbg !2928
  tail call void @llvm.dbg.declare(metadata ptr %payload, metadata !2922, metadata !DIExpression()), !dbg !2929
  call void @llvm.memset.p0.i64(ptr align 8 %.compoundliteral, i8 0, i64 40, i1 false), !dbg !2930
  %contig_or_cb_arg = getelementptr inbounds %struct.nvme_payload, ptr %.compoundliteral, i32 0, i32 3, !dbg !2930
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !2930
  store ptr %0, ptr %contig_or_cb_arg, align 8, !dbg !2930
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %payload, ptr align 8 %.compoundliteral, i64 40, i1 false), !dbg !2930
  %1 = load ptr, ptr %qpair.addr, align 8, !dbg !2931
  %2 = load i32, ptr %payload_size.addr, align 4, !dbg !2932
  %3 = load ptr, ptr %cb_fn.addr, align 8, !dbg !2933
  %4 = load ptr, ptr %cb_arg.addr, align 8, !dbg !2934
  %call = call ptr @nvme_allocate_request(ptr noundef %1, ptr noundef %payload, i32 noundef %2, i32 noundef 0, ptr noundef %3, ptr noundef %4), !dbg !2935
  call void @llvm.lifetime.end.p0(i64 40, ptr %payload) #14, !dbg !2936
  ret ptr %call, !dbg !2937
}

; Function Attrs: nounwind ssp uwtable
define internal void @nvme_user_copy_cmd_complete(ptr noundef %arg, ptr noundef %cpl) #0 !dbg !2938 {
entry:
  %arg.addr = alloca ptr, align 8
  %cpl.addr = alloca ptr, align 8
  %req = alloca ptr, align 8
  %xfer = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !2940, metadata !DIExpression()), !dbg !2944
  store ptr %cpl, ptr %cpl.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cpl.addr, metadata !2941, metadata !DIExpression()), !dbg !2945
  call void @llvm.lifetime.start.p0(i64 8, ptr %req) #14, !dbg !2946
  tail call void @llvm.dbg.declare(metadata ptr %req, metadata !2942, metadata !DIExpression()), !dbg !2947
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !2948
  store ptr %0, ptr %req, align 8, !dbg !2947
  call void @llvm.lifetime.start.p0(i64 4, ptr %xfer) #14, !dbg !2949
  tail call void @llvm.dbg.declare(metadata ptr %xfer, metadata !2943, metadata !DIExpression()), !dbg !2950
  %1 = load ptr, ptr %req, align 8, !dbg !2951
  %user_buffer = getelementptr inbounds %struct.nvme_request, ptr %1, i32 0, i32 23, !dbg !2953
  %2 = load ptr, ptr %user_buffer, align 8, !dbg !2953
  %tobool = icmp ne ptr %2, null, !dbg !2951
  br i1 %tobool, label %land.lhs.true, label %if.end12, !dbg !2954

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %req, align 8, !dbg !2955
  %payload_size = getelementptr inbounds %struct.nvme_request, ptr %3, i32 0, i32 6, !dbg !2956
  %4 = load i32, ptr %payload_size, align 4, !dbg !2956
  %tobool1 = icmp ne i32 %4, 0, !dbg !2955
  br i1 %tobool1, label %if.then, label %if.end12, !dbg !2957

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %req, align 8, !dbg !2958
  %cmd = getelementptr inbounds %struct.nvme_request, ptr %5, i32 0, i32 0, !dbg !2960
  %bf.load = load i16, ptr %cmd, align 8, !dbg !2961
  %bf.clear = and i16 %bf.load, 255, !dbg !2961
  %conv = trunc i16 %bf.clear to i8, !dbg !2958
  %call = call i32 @spdk_nvme_opc_get_data_transfer(i8 noundef zeroext %conv), !dbg !2962
  store i32 %call, ptr %xfer, align 4, !dbg !2963
  %6 = load i32, ptr %xfer, align 4, !dbg !2964
  %cmp = icmp eq i32 %6, 2, !dbg !2966
  br i1 %cmp, label %if.then5, label %lor.lhs.false, !dbg !2967

lor.lhs.false:                                    ; preds = %if.then
  %7 = load i32, ptr %xfer, align 4, !dbg !2968
  %cmp3 = icmp eq i32 %7, 3, !dbg !2969
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !2970

if.then5:                                         ; preds = %lor.lhs.false, %if.then
  %8 = load ptr, ptr %req, align 8, !dbg !2971
  %user_buffer6 = getelementptr inbounds %struct.nvme_request, ptr %8, i32 0, i32 23, !dbg !2973
  %9 = load ptr, ptr %user_buffer6, align 8, !dbg !2973
  %10 = load ptr, ptr %req, align 8, !dbg !2974
  %payload = getelementptr inbounds %struct.nvme_request, ptr %10, i32 0, i32 8, !dbg !2975
  %contig_or_cb_arg = getelementptr inbounds %struct.nvme_payload, ptr %payload, i32 0, i32 3, !dbg !2976
  %11 = load ptr, ptr %contig_or_cb_arg, align 8, !dbg !2976
  %12 = load ptr, ptr %req, align 8, !dbg !2977
  %payload_size7 = getelementptr inbounds %struct.nvme_request, ptr %12, i32 0, i32 6, !dbg !2978
  %13 = load i32, ptr %payload_size7, align 4, !dbg !2978
  %conv8 = zext i32 %13 to i64, !dbg !2977
  %call9 = call ptr @memcpy.inline(ptr noundef %9, ptr noundef %11, i64 noundef %conv8) #14, !dbg !2979
  br label %if.end, !dbg !2980

if.end:                                           ; preds = %if.then5, %lor.lhs.false
  %14 = load ptr, ptr %req, align 8, !dbg !2981
  %payload10 = getelementptr inbounds %struct.nvme_request, ptr %14, i32 0, i32 8, !dbg !2982
  %contig_or_cb_arg11 = getelementptr inbounds %struct.nvme_payload, ptr %payload10, i32 0, i32 3, !dbg !2983
  %15 = load ptr, ptr %contig_or_cb_arg11, align 8, !dbg !2983
  call void @spdk_free(ptr noundef %15), !dbg !2984
  br label %if.end12, !dbg !2985

if.end12:                                         ; preds = %if.end, %land.lhs.true, %entry
  %16 = load ptr, ptr %req, align 8, !dbg !2986
  %user_cb_fn = getelementptr inbounds %struct.nvme_request, ptr %16, i32 0, i32 21, !dbg !2987
  %17 = load ptr, ptr %user_cb_fn, align 8, !dbg !2987
  %18 = load ptr, ptr %req, align 8, !dbg !2988
  %user_cb_arg = getelementptr inbounds %struct.nvme_request, ptr %18, i32 0, i32 22, !dbg !2989
  %19 = load ptr, ptr %user_cb_arg, align 8, !dbg !2989
  %20 = load ptr, ptr %cpl.addr, align 8, !dbg !2990
  call void %17(ptr noundef %19, ptr noundef %20), !dbg !2986
  call void @llvm.lifetime.end.p0(i64 4, ptr %xfer) #14, !dbg !2991
  call void @llvm.lifetime.end.p0(i64 8, ptr %req) #14, !dbg !2991
  ret void, !dbg !2991
}

; Function Attrs: nounwind ssp uwtable
define i32 @nvme_request_check_timeout(ptr noundef %req, i16 noundef zeroext %cid, ptr noundef %active_proc, i64 noundef %now_tick) #0 !dbg !2992 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %cid.addr = alloca i16, align 2
  %active_proc.addr = alloca ptr, align 8
  %now_tick.addr = alloca i64, align 8
  %qpair = alloca ptr, align 8
  %ctrlr = alloca ptr, align 8
  %timeout_ticks = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !2996, metadata !DIExpression()), !dbg !3003
  store i16 %cid, ptr %cid.addr, align 2
  tail call void @llvm.dbg.declare(metadata ptr %cid.addr, metadata !2997, metadata !DIExpression()), !dbg !3004
  store ptr %active_proc, ptr %active_proc.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %active_proc.addr, metadata !2998, metadata !DIExpression()), !dbg !3005
  store i64 %now_tick, ptr %now_tick.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %now_tick.addr, metadata !2999, metadata !DIExpression()), !dbg !3006
  call void @llvm.lifetime.start.p0(i64 8, ptr %qpair) #14, !dbg !3007
  tail call void @llvm.dbg.declare(metadata ptr %qpair, metadata !3000, metadata !DIExpression()), !dbg !3008
  %0 = load ptr, ptr %req.addr, align 8, !dbg !3009
  %qpair1 = getelementptr inbounds %struct.nvme_request, ptr %0, i32 0, i32 12, !dbg !3010
  %1 = load ptr, ptr %qpair1, align 8, !dbg !3010
  store ptr %1, ptr %qpair, align 8, !dbg !3008
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctrlr) #14, !dbg !3011
  tail call void @llvm.dbg.declare(metadata ptr %ctrlr, metadata !3001, metadata !DIExpression()), !dbg !3012
  %2 = load ptr, ptr %qpair, align 8, !dbg !3013
  %ctrlr2 = getelementptr inbounds %struct.spdk_nvme_qpair, ptr %2, i32 0, i32 0, !dbg !3014
  %3 = load ptr, ptr %ctrlr2, align 8, !dbg !3014
  store ptr %3, ptr %ctrlr, align 8, !dbg !3012
  call void @llvm.lifetime.start.p0(i64 8, ptr %timeout_ticks) #14, !dbg !3015
  tail call void @llvm.dbg.declare(metadata ptr %timeout_ticks, metadata !3002, metadata !DIExpression()), !dbg !3016
  %4 = load ptr, ptr %qpair, align 8, !dbg !3017
  %call = call zeroext i1 @nvme_qpair_is_admin_queue(ptr noundef %4), !dbg !3018
  br i1 %call, label %cond.true, label %cond.false, !dbg !3018

cond.true:                                        ; preds = %entry
  %5 = load ptr, ptr %active_proc.addr, align 8, !dbg !3019
  %timeout_admin_ticks = getelementptr inbounds %struct.spdk_nvme_ctrlr_process, ptr %5, i32 0, i32 12, !dbg !3020
  %6 = load i64, ptr %timeout_admin_ticks, align 8, !dbg !3020
  br label %cond.end, !dbg !3018

cond.false:                                       ; preds = %entry
  %7 = load ptr, ptr %active_proc.addr, align 8, !dbg !3021
  %timeout_io_ticks = getelementptr inbounds %struct.spdk_nvme_ctrlr_process, ptr %7, i32 0, i32 11, !dbg !3022
  %8 = load i64, ptr %timeout_io_ticks, align 8, !dbg !3022
  br label %cond.end, !dbg !3018

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %8, %cond.false ], !dbg !3018
  store i64 %cond, ptr %timeout_ticks, align 8, !dbg !3016
  %9 = load ptr, ptr %req.addr, align 8, !dbg !3023
  %timed_out = getelementptr inbounds %struct.nvme_request, ptr %9, i32 0, i32 2, !dbg !3025
  %bf.load = load i8, ptr %timed_out, align 1, !dbg !3025
  %bf.clear = and i8 %bf.load, 1, !dbg !3025
  %conv = zext i8 %bf.clear to i32, !dbg !3023
  %tobool = icmp ne i32 %conv, 0, !dbg !3023
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3026

lor.lhs.false:                                    ; preds = %cond.end
  %10 = load ptr, ptr %req.addr, align 8, !dbg !3027
  %submit_tick = getelementptr inbounds %struct.nvme_request, ptr %10, i32 0, i32 13, !dbg !3028
  %11 = load i64, ptr %submit_tick, align 8, !dbg !3028
  %cmp = icmp eq i64 %11, 0, !dbg !3029
  br i1 %cmp, label %if.then, label %if.end, !dbg !3030

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store i32 0, ptr %retval, align 4, !dbg !3031
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3031

if.end:                                           ; preds = %lor.lhs.false
  %12 = load ptr, ptr %req.addr, align 8, !dbg !3033
  %pid = getelementptr inbounds %struct.nvme_request, ptr %12, i32 0, i32 14, !dbg !3035
  %13 = load i32, ptr %pid, align 8, !dbg !3035
  %14 = load i32, ptr @g_spdk_nvme_pid, align 4, !dbg !3036
  %cmp4 = icmp ne i32 %13, %14, !dbg !3037
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !3038

if.then6:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !3039
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3039

if.end7:                                          ; preds = %if.end
  %15 = load ptr, ptr %qpair, align 8, !dbg !3041
  %call8 = call zeroext i1 @nvme_qpair_is_admin_queue(ptr noundef %15), !dbg !3043
  br i1 %call8, label %land.lhs.true, label %if.end16, !dbg !3044

land.lhs.true:                                    ; preds = %if.end7
  %16 = load ptr, ptr %req.addr, align 8, !dbg !3045
  %cmd = getelementptr inbounds %struct.nvme_request, ptr %16, i32 0, i32 0, !dbg !3046
  %bf.load10 = load i16, ptr %cmd, align 8, !dbg !3047
  %bf.clear11 = and i16 %bf.load10, 255, !dbg !3047
  %conv12 = zext i16 %bf.clear11 to i32, !dbg !3045
  %cmp13 = icmp eq i32 %conv12, 12, !dbg !3048
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !3049

if.then15:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !3050
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3050

if.end16:                                         ; preds = %land.lhs.true, %if.end7
  %17 = load ptr, ptr %req.addr, align 8, !dbg !3052
  %submit_tick17 = getelementptr inbounds %struct.nvme_request, ptr %17, i32 0, i32 13, !dbg !3054
  %18 = load i64, ptr %submit_tick17, align 8, !dbg !3054
  %19 = load i64, ptr %timeout_ticks, align 8, !dbg !3055
  %add = add i64 %18, %19, !dbg !3056
  %20 = load i64, ptr %now_tick.addr, align 8, !dbg !3057
  %cmp18 = icmp ugt i64 %add, %20, !dbg !3058
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !3059

if.then20:                                        ; preds = %if.end16
  store i32 1, ptr %retval, align 4, !dbg !3060
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3060

if.end21:                                         ; preds = %if.end16
  %21 = load ptr, ptr %req.addr, align 8, !dbg !3062
  %timed_out22 = getelementptr inbounds %struct.nvme_request, ptr %21, i32 0, i32 2, !dbg !3063
  %bf.load23 = load i8, ptr %timed_out22, align 1, !dbg !3064
  %bf.clear24 = and i8 %bf.load23, -2, !dbg !3064
  %bf.set = or i8 %bf.clear24, 1, !dbg !3064
  store i8 %bf.set, ptr %timed_out22, align 1, !dbg !3064
  %22 = load ptr, ptr %active_proc.addr, align 8, !dbg !3065
  %timeout_cb_fn = getelementptr inbounds %struct.spdk_nvme_ctrlr_process, ptr %22, i32 0, i32 9, !dbg !3066
  %23 = load ptr, ptr %timeout_cb_fn, align 8, !dbg !3066
  %24 = load ptr, ptr %active_proc.addr, align 8, !dbg !3067
  %timeout_cb_arg = getelementptr inbounds %struct.spdk_nvme_ctrlr_process, ptr %24, i32 0, i32 10, !dbg !3068
  %25 = load ptr, ptr %timeout_cb_arg, align 8, !dbg !3068
  %26 = load ptr, ptr %ctrlr, align 8, !dbg !3069
  %27 = load ptr, ptr %qpair, align 8, !dbg !3070
  %call25 = call zeroext i1 @nvme_qpair_is_admin_queue(ptr noundef %27), !dbg !3071
  br i1 %call25, label %cond.true27, label %cond.false28, !dbg !3071

cond.true27:                                      ; preds = %if.end21
  br label %cond.end29, !dbg !3071

cond.false28:                                     ; preds = %if.end21
  %28 = load ptr, ptr %qpair, align 8, !dbg !3072
  br label %cond.end29, !dbg !3071

cond.end29:                                       ; preds = %cond.false28, %cond.true27
  %cond30 = phi ptr [ null, %cond.true27 ], [ %28, %cond.false28 ], !dbg !3071
  %29 = load i16, ptr %cid.addr, align 2, !dbg !3073
  call void %23(ptr noundef %25, ptr noundef %26, ptr noundef %cond30, i16 noundef zeroext %29), !dbg !3065
  store i32 0, ptr %retval, align 4, !dbg !3074
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3074

cleanup:                                          ; preds = %cond.end29, %if.then20, %if.then15, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %timeout_ticks) #14, !dbg !3075
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctrlr) #14, !dbg !3075
  call void @llvm.lifetime.end.p0(i64 8, ptr %qpair) #14, !dbg !3075
  %30 = load i32, ptr %retval, align 4, !dbg !3075
  ret i32 %30, !dbg !3075
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal zeroext i1 @nvme_qpair_is_admin_queue(ptr noundef %qpair) #7 !dbg !3076 {
entry:
  %qpair.addr = alloca ptr, align 8
  store ptr %qpair, ptr %qpair.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %qpair.addr, metadata !3080, metadata !DIExpression()), !dbg !3081
  %0 = load ptr, ptr %qpair.addr, align 8, !dbg !3082
  %id = getelementptr inbounds %struct.spdk_nvme_qpair, ptr %0, i32 0, i32 1, !dbg !3083
  %1 = load i16, ptr %id, align 8, !dbg !3083
  %conv = zext i16 %1 to i32, !dbg !3082
  %cmp = icmp eq i32 %conv, 0, !dbg !3084
  ret i1 %cmp, !dbg !3085
}

; Function Attrs: nounwind ssp uwtable
define i32 @nvme_robust_mutex_init_shared(ptr noundef %mtx) #0 !dbg !3086 {
entry:
  %retval = alloca i32, align 4
  %mtx.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %attr = alloca %union.pthread_mutexattr_t, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mtx, ptr %mtx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mtx.addr, metadata !3088, metadata !DIExpression()), !dbg !3096
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #14, !dbg !3097
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !3089, metadata !DIExpression()), !dbg !3098
  store i32 0, ptr %rc, align 4, !dbg !3098
  call void @llvm.lifetime.start.p0(i64 4, ptr %attr) #14, !dbg !3099
  tail call void @llvm.dbg.declare(metadata ptr %attr, metadata !3090, metadata !DIExpression()), !dbg !3100
  %call = call i32 @pthread_mutexattr_init(ptr noundef %attr) #14, !dbg !3101
  %tobool = icmp ne i32 %call, 0, !dbg !3101
  br i1 %tobool, label %if.then, label %if.end, !dbg !3103

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !3104
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3104

if.end:                                           ; preds = %entry
  %call1 = call i32 @pthread_mutexattr_setpshared(ptr noundef %attr, i32 noundef 1) #14, !dbg !3106
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3106
  br i1 %tobool2, label %if.then8, label %lor.lhs.false, !dbg !3108

lor.lhs.false:                                    ; preds = %if.end
  %call3 = call i32 @pthread_mutexattr_setrobust(ptr noundef %attr, i32 noundef 1) #14, !dbg !3109
  %tobool4 = icmp ne i32 %call3, 0, !dbg !3109
  br i1 %tobool4, label %if.then8, label %lor.lhs.false5, !dbg !3110

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %0 = load ptr, ptr %mtx.addr, align 8, !dbg !3111
  %call6 = call i32 @pthread_mutex_init(ptr noundef %0, ptr noundef %attr) #14, !dbg !3112
  %tobool7 = icmp ne i32 %call6, 0, !dbg !3112
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !3113

if.then8:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.end
  store i32 -1, ptr %rc, align 4, !dbg !3114
  br label %if.end9, !dbg !3116

if.end9:                                          ; preds = %if.then8, %lor.lhs.false5
  %call10 = call i32 @pthread_mutexattr_destroy(ptr noundef %attr) #14, !dbg !3117
  %1 = load i32, ptr %rc, align 4, !dbg !3118
  store i32 %1, ptr %retval, align 4, !dbg !3119
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3119

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %attr) #14, !dbg !3120
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #14, !dbg !3120
  %2 = load i32, ptr %retval, align 4, !dbg !3120
  ret i32 %2, !dbg !3120
}

; Function Attrs: nounwind
declare !dbg !3121 i32 @pthread_mutexattr_init(ptr noundef) #4

; Function Attrs: nounwind
declare !dbg !3125 i32 @pthread_mutexattr_setpshared(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind
declare !dbg !3128 i32 @pthread_mutexattr_setrobust(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind
declare !dbg !3129 i32 @pthread_mutex_init(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare !dbg !3134 i32 @pthread_mutexattr_destroy(ptr noundef) #4

; Function Attrs: nounwind ssp uwtable
define i32 @nvme_driver_init() #0 !dbg !238 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %socket_id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %ms_waited = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !3135
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !242, metadata !DIExpression()), !dbg !3136
  store i32 0, ptr %ret, align 4, !dbg !3136
  call void @llvm.lifetime.start.p0(i64 4, ptr %socket_id) #14, !dbg !3137
  tail call void @llvm.dbg.declare(metadata ptr %socket_id, metadata !243, metadata !DIExpression()), !dbg !3138
  store i32 -1, ptr %socket_id, align 4, !dbg !3138
  %call = call i32 @pthread_mutex_lock(ptr noundef @nvme_driver_init.g_init_mutex) #14, !dbg !3139
  %call1 = call i32 @getpid() #14, !dbg !3140
  store i32 %call1, ptr @g_spdk_nvme_pid, align 4, !dbg !3141
  %call2 = call zeroext i1 @spdk_process_is_primary(), !dbg !3142
  br i1 %call2, label %if.then, label %if.else10, !dbg !3143

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !3144
  %cmp = icmp ne ptr %0, null, !dbg !3147
  br i1 %cmp, label %if.then3, label %if.else, !dbg !3148

if.then3:                                         ; preds = %if.then
  %call4 = call i32 @pthread_mutex_unlock(ptr noundef @nvme_driver_init.g_init_mutex) #14, !dbg !3149
  store i32 0, ptr %retval, align 4, !dbg !3151
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup57, !dbg !3151

if.else:                                          ; preds = %if.then
  %1 = load i32, ptr %socket_id, align 4, !dbg !3152
  %call5 = call ptr @spdk_memzone_reserve(ptr noundef @.str, i64 noundef 80, i32 noundef %1, i32 noundef 1048576), !dbg !3154
  store ptr %call5, ptr @g_spdk_nvme_driver, align 8, !dbg !3155
  br label %if.end

if.end:                                           ; preds = %if.else
  %2 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !3156
  %cmp6 = icmp eq ptr %2, null, !dbg !3158
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !3159

if.then7:                                         ; preds = %if.end
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 572, ptr noundef @__func__.nvme_driver_init, ptr noundef @.str.2), !dbg !3160
  %call8 = call i32 @pthread_mutex_unlock(ptr noundef @nvme_driver_init.g_init_mutex) #14, !dbg !3162
  store i32 -1, ptr %retval, align 4, !dbg !3163
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup57, !dbg !3163

if.end9:                                          ; preds = %if.end
  br label %if.end31, !dbg !3164

if.else10:                                        ; preds = %entry
  %call11 = call ptr @spdk_memzone_lookup(ptr noundef @.str), !dbg !3165
  store ptr %call11, ptr @g_spdk_nvme_driver, align 8, !dbg !3166
  %3 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !3167
  %cmp12 = icmp ne ptr %3, null, !dbg !3168
  br i1 %cmp12, label %if.then13, label %if.else27, !dbg !3169

if.then13:                                        ; preds = %if.else10
  call void @llvm.lifetime.start.p0(i64 4, ptr %ms_waited) #14, !dbg !3170
  tail call void @llvm.dbg.declare(metadata ptr %ms_waited, metadata !244, metadata !DIExpression()), !dbg !3171
  store i32 0, ptr %ms_waited, align 4, !dbg !3171
  br label %while.cond, !dbg !3172

while.cond:                                       ; preds = %while.body, %if.then13
  %4 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !3173
  %initialized = getelementptr inbounds %struct.nvme_driver, ptr %4, i32 0, i32 2, !dbg !3174
  %5 = load i8, ptr %initialized, align 8, !dbg !3174, !range !2517, !noundef !2518
  %tobool = trunc i8 %5 to i1, !dbg !3174
  %conv = zext i1 %tobool to i32, !dbg !3173
  %cmp14 = icmp eq i32 %conv, 0, !dbg !3175
  br i1 %cmp14, label %land.rhs, label %land.end, !dbg !3176

land.rhs:                                         ; preds = %while.cond
  %6 = load i32, ptr %ms_waited, align 4, !dbg !3177
  %7 = load i32, ptr @g_nvme_driver_timeout_ms, align 4, !dbg !3178
  %cmp16 = icmp slt i32 %6, %7, !dbg !3179
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp16, %land.rhs ], !dbg !3180
  br i1 %8, label %while.body, label %while.end, !dbg !3172

while.body:                                       ; preds = %land.end
  %9 = load i32, ptr %ms_waited, align 4, !dbg !3181
  %inc = add nsw i32 %9, 1, !dbg !3181
  store i32 %inc, ptr %ms_waited, align 4, !dbg !3181
  %call18 = call i32 @usleep(i32 noundef 1000), !dbg !3183
  br label %while.cond, !dbg !3172, !llvm.loop !3184

while.end:                                        ; preds = %land.end
  %10 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !3186
  %initialized19 = getelementptr inbounds %struct.nvme_driver, ptr %10, i32 0, i32 2, !dbg !3188
  %11 = load i8, ptr %initialized19, align 8, !dbg !3188, !range !2517, !noundef !2518
  %tobool20 = trunc i8 %11 to i1, !dbg !3188
  %conv21 = zext i1 %tobool20 to i32, !dbg !3186
  %cmp22 = icmp eq i32 %conv21, 0, !dbg !3189
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !3190

if.then24:                                        ; preds = %while.end
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 590, ptr noundef @__func__.nvme_driver_init, ptr noundef @.str.3), !dbg !3191
  %call25 = call i32 @pthread_mutex_unlock(ptr noundef @nvme_driver_init.g_init_mutex) #14, !dbg !3193
  store i32 -1, ptr %retval, align 4, !dbg !3194
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3194

if.end26:                                         ; preds = %while.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3195
  br label %cleanup, !dbg !3195

cleanup:                                          ; preds = %if.end26, %if.then24
  call void @llvm.lifetime.end.p0(i64 4, ptr %ms_waited) #14, !dbg !3195
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup57 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end29, !dbg !3196

if.else27:                                        ; preds = %if.else10
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 595, ptr noundef @__func__.nvme_driver_init, ptr noundef @.str.4), !dbg !3197
  %call28 = call i32 @pthread_mutex_unlock(ptr noundef @nvme_driver_init.g_init_mutex) #14, !dbg !3199
  store i32 -1, ptr %retval, align 4, !dbg !3200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup57, !dbg !3200

if.end29:                                         ; preds = %cleanup.cont
  %call30 = call i32 @pthread_mutex_unlock(ptr noundef @nvme_driver_init.g_init_mutex) #14, !dbg !3201
  store i32 0, ptr %retval, align 4, !dbg !3202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup57, !dbg !3202

if.end31:                                         ; preds = %if.end9
  %12 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !3203
  %lock = getelementptr inbounds %struct.nvme_driver, ptr %12, i32 0, i32 0, !dbg !3204
  %call32 = call i32 @nvme_robust_mutex_init_shared(ptr noundef %lock), !dbg !3205
  store i32 %call32, ptr %ret, align 4, !dbg !3206
  %13 = load i32, ptr %ret, align 4, !dbg !3207
  %cmp33 = icmp ne i32 %13, 0, !dbg !3209
  br i1 %cmp33, label %if.then35, label %if.end38, !dbg !3210

if.then35:                                        ; preds = %if.end31
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 612, ptr noundef @__func__.nvme_driver_init, ptr noundef @.str.5), !dbg !3211
  %call36 = call i32 @spdk_memzone_free(ptr noundef @.str), !dbg !3213
  %call37 = call i32 @pthread_mutex_unlock(ptr noundef @nvme_driver_init.g_init_mutex) #14, !dbg !3214
  %14 = load i32, ptr %ret, align 4, !dbg !3215
  store i32 %14, ptr %retval, align 4, !dbg !3216
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup57, !dbg !3216

if.end38:                                         ; preds = %if.end31
  %call39 = call i32 @pthread_mutex_unlock(ptr noundef @nvme_driver_init.g_init_mutex) #14, !dbg !3217
  %15 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !3218
  %lock40 = getelementptr inbounds %struct.nvme_driver, ptr %15, i32 0, i32 0, !dbg !3219
  %call41 = call i32 @nvme_robust_mutex_lock(ptr noundef %lock40), !dbg !3220
  %16 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !3221
  %initialized42 = getelementptr inbounds %struct.nvme_driver, ptr %16, i32 0, i32 2, !dbg !3222
  store i8 0, ptr %initialized42, align 8, !dbg !3223
  %call43 = call i32 @spdk_pci_event_listen(), !dbg !3224
  %17 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !3225
  %hotplug_fd = getelementptr inbounds %struct.nvme_driver, ptr %17, i32 0, i32 4, !dbg !3226
  store i32 %call43, ptr %hotplug_fd, align 4, !dbg !3227
  %18 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !3228
  %hotplug_fd44 = getelementptr inbounds %struct.nvme_driver, ptr %18, i32 0, i32 4, !dbg !3230
  %19 = load i32, ptr %hotplug_fd44, align 4, !dbg !3230
  %cmp45 = icmp slt i32 %19, 0, !dbg !3231
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !3232

if.then47:                                        ; preds = %if.end38
  br label %do.body, !dbg !3233

do.body:                                          ; preds = %if.then47
  br label %do.cond, !dbg !3235

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3235

do.end:                                           ; preds = %do.cond
  br label %if.end48, !dbg !3237

if.end48:                                         ; preds = %do.end, %if.end38
  br label %do.body49, !dbg !3238

do.body49:                                        ; preds = %if.end48
  %20 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !3239
  %shared_attached_ctrlrs = getelementptr inbounds %struct.nvme_driver, ptr %20, i32 0, i32 1, !dbg !3239
  %tqh_first = getelementptr inbounds %struct.anon.113, ptr %shared_attached_ctrlrs, i32 0, i32 0, !dbg !3239
  store ptr null, ptr %tqh_first, align 8, !dbg !3239
  %21 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !3239
  %shared_attached_ctrlrs50 = getelementptr inbounds %struct.nvme_driver, ptr %21, i32 0, i32 1, !dbg !3239
  %tqh_first51 = getelementptr inbounds %struct.anon.113, ptr %shared_attached_ctrlrs50, i32 0, i32 0, !dbg !3239
  %22 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !3239
  %shared_attached_ctrlrs52 = getelementptr inbounds %struct.nvme_driver, ptr %22, i32 0, i32 1, !dbg !3239
  %tqh_last = getelementptr inbounds %struct.anon.113, ptr %shared_attached_ctrlrs52, i32 0, i32 1, !dbg !3239
  store ptr %tqh_first51, ptr %tqh_last, align 8, !dbg !3239
  br label %do.cond53, !dbg !3239

do.cond53:                                        ; preds = %do.body49
  br label %do.end54, !dbg !3239

do.end54:                                         ; preds = %do.cond53
  %23 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !3241
  %default_extended_host_id = getelementptr inbounds %struct.nvme_driver, ptr %23, i32 0, i32 3, !dbg !3242
  call void @spdk_uuid_generate(ptr noundef %default_extended_host_id), !dbg !3243
  %24 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !3244
  %lock55 = getelementptr inbounds %struct.nvme_driver, ptr %24, i32 0, i32 0, !dbg !3245
  %call56 = call i32 @nvme_robust_mutex_unlock(ptr noundef %lock55), !dbg !3246
  %25 = load i32, ptr %ret, align 4, !dbg !3247
  store i32 %25, ptr %retval, align 4, !dbg !3248
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup57, !dbg !3248

cleanup57:                                        ; preds = %do.end54, %if.then35, %if.end29, %if.else27, %cleanup, %if.then7, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %socket_id) #14, !dbg !3249
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !3249
  %26 = load i32, ptr %retval, align 4, !dbg !3249
  ret i32 %26, !dbg !3249
}

; Function Attrs: nounwind
declare !dbg !3250 i32 @pthread_mutex_lock(ptr noundef) #4

; Function Attrs: nounwind
declare !dbg !3251 i32 @getpid() #4

declare !dbg !3254 zeroext i1 @spdk_process_is_primary() #2

; Function Attrs: nounwind
declare !dbg !3257 i32 @pthread_mutex_unlock(ptr noundef) #4

declare !dbg !3258 ptr @spdk_memzone_reserve(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #2

declare !dbg !3261 void @spdk_log(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

declare !dbg !3265 ptr @spdk_memzone_lookup(ptr noundef) #2

declare !dbg !3268 i32 @spdk_memzone_free(ptr noundef) #2

declare !dbg !3271 i32 @spdk_pci_event_listen() #2

declare !dbg !3272 void @spdk_uuid_generate(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @nvme_ctrlr_probe(ptr noundef %trid, ptr noundef %probe_ctx, ptr noundef %devhandle) #0 !dbg !3276 {
entry:
  %retval = alloca i32, align 4
  %trid.addr = alloca ptr, align 8
  %probe_ctx.addr = alloca ptr, align 8
  %devhandle.addr = alloca ptr, align 8
  %ctrlr = alloca ptr, align 8
  %opts = alloca %struct.spdk_nvme_ctrlr_opts, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %trid, ptr %trid.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %trid.addr, metadata !3280, metadata !DIExpression()), !dbg !3285
  store ptr %probe_ctx, ptr %probe_ctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %probe_ctx.addr, metadata !3281, metadata !DIExpression()), !dbg !3286
  store ptr %devhandle, ptr %devhandle.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %devhandle.addr, metadata !3282, metadata !DIExpression()), !dbg !3287
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctrlr) #14, !dbg !3288
  tail call void @llvm.dbg.declare(metadata ptr %ctrlr, metadata !3283, metadata !DIExpression()), !dbg !3289
  call void @llvm.lifetime.start.p0(i64 818, ptr %opts) #14, !dbg !3290
  tail call void @llvm.dbg.declare(metadata ptr %opts, metadata !3284, metadata !DIExpression()), !dbg !3291
  call void @spdk_nvme_ctrlr_get_default_ctrlr_opts(ptr noundef %opts, i64 noundef 818), !dbg !3292
  %0 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !3293
  %probe_cb = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %0, i32 0, i32 2, !dbg !3295
  %1 = load ptr, ptr %probe_cb, align 8, !dbg !3295
  %tobool = icmp ne ptr %1, null, !dbg !3293
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3296

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !3297
  %probe_cb1 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %2, i32 0, i32 2, !dbg !3298
  %3 = load ptr, ptr %probe_cb1, align 8, !dbg !3298
  %4 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !3299
  %cb_ctx = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %4, i32 0, i32 1, !dbg !3300
  %5 = load ptr, ptr %cb_ctx, align 8, !dbg !3300
  %6 = load ptr, ptr %trid.addr, align 8, !dbg !3301
  %call = call zeroext i1 %3(ptr noundef %5, ptr noundef %6, ptr noundef %opts), !dbg !3297
  br i1 %call, label %if.then, label %if.end33, !dbg !3302

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load ptr, ptr %trid.addr, align 8, !dbg !3303
  %call2 = call ptr @nvme_get_ctrlr_by_trid_unsafe(ptr noundef %7), !dbg !3305
  store ptr %call2, ptr %ctrlr, align 8, !dbg !3306
  %8 = load ptr, ptr %ctrlr, align 8, !dbg !3307
  %tobool3 = icmp ne ptr %8, null, !dbg !3307
  br i1 %tobool3, label %if.then4, label %if.end17, !dbg !3309

if.then4:                                         ; preds = %if.then
  %9 = load ptr, ptr %ctrlr, align 8, !dbg !3310
  %is_destructed = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %9, i32 0, i32 5, !dbg !3313
  %10 = load i8, ptr %is_destructed, align 1, !dbg !3313, !range !2517, !noundef !2518
  %tobool5 = trunc i8 %10 to i1, !dbg !3313
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !3314

if.then6:                                         ; preds = %if.then4
  %11 = load ptr, ptr %trid.addr, align 8, !dbg !3315
  %traddr = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %11, i32 0, i32 3, !dbg !3315
  %arraydecay = getelementptr inbounds [257 x i8], ptr %traddr, i64 0, i64 0, !dbg !3315
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 659, ptr noundef @__func__.nvme_ctrlr_probe, ptr noundef @.str.6, ptr noundef %arraydecay), !dbg !3315
  store i32 -16, ptr %retval, align 4, !dbg !3317
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3317

if.end:                                           ; preds = %if.then4
  %12 = load ptr, ptr %ctrlr, align 8, !dbg !3318
  call void @nvme_ctrlr_proc_get_ref(ptr noundef %12), !dbg !3319
  %13 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !3320
  %attach_cb = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %13, i32 0, i32 3, !dbg !3322
  %14 = load ptr, ptr %attach_cb, align 8, !dbg !3322
  %tobool7 = icmp ne ptr %14, null, !dbg !3320
  br i1 %tobool7, label %if.then8, label %if.end16, !dbg !3323

if.then8:                                         ; preds = %if.end
  %15 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !3324
  %lock = getelementptr inbounds %struct.nvme_driver, ptr %15, i32 0, i32 0, !dbg !3326
  %call9 = call i32 @nvme_robust_mutex_unlock(ptr noundef %lock), !dbg !3327
  %16 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !3328
  %attach_cb10 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %16, i32 0, i32 3, !dbg !3329
  %17 = load ptr, ptr %attach_cb10, align 8, !dbg !3329
  %18 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !3330
  %cb_ctx11 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %18, i32 0, i32 1, !dbg !3331
  %19 = load ptr, ptr %cb_ctx11, align 8, !dbg !3331
  %20 = load ptr, ptr %ctrlr, align 8, !dbg !3332
  %trid12 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %20, i32 0, i32 14, !dbg !3333
  %21 = load ptr, ptr %ctrlr, align 8, !dbg !3334
  %22 = load ptr, ptr %ctrlr, align 8, !dbg !3335
  %opts13 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %22, i32 0, i32 37, !dbg !3336
  call void %17(ptr noundef %19, ptr noundef %trid12, ptr noundef %21, ptr noundef %opts13), !dbg !3328
  %23 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !3337
  %lock14 = getelementptr inbounds %struct.nvme_driver, ptr %23, i32 0, i32 0, !dbg !3338
  %call15 = call i32 @nvme_robust_mutex_lock(ptr noundef %lock14), !dbg !3339
  br label %if.end16, !dbg !3340

if.end16:                                         ; preds = %if.then8, %if.end
  store i32 0, ptr %retval, align 4, !dbg !3341
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3341

if.end17:                                         ; preds = %if.then
  %24 = load ptr, ptr %trid.addr, align 8, !dbg !3342
  %25 = load ptr, ptr %devhandle.addr, align 8, !dbg !3343
  %call18 = call ptr @nvme_transport_ctrlr_construct(ptr noundef %24, ptr noundef %opts, ptr noundef %25), !dbg !3344
  store ptr %call18, ptr %ctrlr, align 8, !dbg !3345
  %26 = load ptr, ptr %ctrlr, align 8, !dbg !3346
  %cmp = icmp eq ptr %26, null, !dbg !3348
  br i1 %cmp, label %if.then19, label %if.end22, !dbg !3349

if.then19:                                        ; preds = %if.end17
  %27 = load ptr, ptr %trid.addr, align 8, !dbg !3350
  %traddr20 = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %27, i32 0, i32 3, !dbg !3350
  %arraydecay21 = getelementptr inbounds [257 x i8], ptr %traddr20, i64 0, i64 0, !dbg !3350
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 677, ptr noundef @__func__.nvme_ctrlr_probe, ptr noundef @.str.7, ptr noundef %arraydecay21), !dbg !3350
  store i32 -1, ptr %retval, align 4, !dbg !3352
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3352

if.end22:                                         ; preds = %if.end17
  %28 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !3353
  %remove_cb = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %28, i32 0, i32 4, !dbg !3354
  %29 = load ptr, ptr %remove_cb, align 8, !dbg !3354
  %30 = load ptr, ptr %ctrlr, align 8, !dbg !3355
  %remove_cb23 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %30, i32 0, i32 43, !dbg !3356
  store ptr %29, ptr %remove_cb23, align 8, !dbg !3357
  %31 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !3358
  %cb_ctx24 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %31, i32 0, i32 1, !dbg !3359
  %32 = load ptr, ptr %cb_ctx24, align 8, !dbg !3359
  %33 = load ptr, ptr %ctrlr, align 8, !dbg !3360
  %cb_ctx25 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %33, i32 0, i32 44, !dbg !3361
  store ptr %32, ptr %cb_ctx25, align 8, !dbg !3362
  %34 = load ptr, ptr %ctrlr, align 8, !dbg !3363
  %adminq = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %34, i32 0, i32 30, !dbg !3364
  %35 = load ptr, ptr %adminq, align 8, !dbg !3364
  call void @nvme_qpair_set_state(ptr noundef %35, i32 noundef 5), !dbg !3365
  br label %do.body, !dbg !3366

do.body:                                          ; preds = %if.end22
  %36 = load ptr, ptr %ctrlr, align 8, !dbg !3367
  %tailq = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %36, i32 0, i32 21, !dbg !3367
  %tqe_next = getelementptr inbounds %struct.anon.93, ptr %tailq, i32 0, i32 0, !dbg !3367
  store ptr null, ptr %tqe_next, align 8, !dbg !3367
  %37 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !3367
  %init_ctrlrs = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %37, i32 0, i32 5, !dbg !3367
  %tqh_last = getelementptr inbounds %struct.anon.102, ptr %init_ctrlrs, i32 0, i32 1, !dbg !3367
  %38 = load ptr, ptr %tqh_last, align 8, !dbg !3367
  %39 = load ptr, ptr %ctrlr, align 8, !dbg !3367
  %tailq26 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %39, i32 0, i32 21, !dbg !3367
  %tqe_prev = getelementptr inbounds %struct.anon.93, ptr %tailq26, i32 0, i32 1, !dbg !3367
  store ptr %38, ptr %tqe_prev, align 8, !dbg !3367
  %40 = load ptr, ptr %ctrlr, align 8, !dbg !3367
  %41 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !3367
  %init_ctrlrs27 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %41, i32 0, i32 5, !dbg !3367
  %tqh_last28 = getelementptr inbounds %struct.anon.102, ptr %init_ctrlrs27, i32 0, i32 1, !dbg !3367
  %42 = load ptr, ptr %tqh_last28, align 8, !dbg !3367
  store ptr %40, ptr %42, align 8, !dbg !3367
  %43 = load ptr, ptr %ctrlr, align 8, !dbg !3367
  %tailq29 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %43, i32 0, i32 21, !dbg !3367
  %tqe_next30 = getelementptr inbounds %struct.anon.93, ptr %tailq29, i32 0, i32 0, !dbg !3367
  %44 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !3367
  %init_ctrlrs31 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %44, i32 0, i32 5, !dbg !3367
  %tqh_last32 = getelementptr inbounds %struct.anon.102, ptr %init_ctrlrs31, i32 0, i32 1, !dbg !3367
  store ptr %tqe_next30, ptr %tqh_last32, align 8, !dbg !3367
  br label %do.cond, !dbg !3367

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3367

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %retval, align 4, !dbg !3369
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3369

if.end33:                                         ; preds = %lor.lhs.false
  store i32 1, ptr %retval, align 4, !dbg !3370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3370

cleanup:                                          ; preds = %if.end33, %do.end, %if.then19, %if.end16, %if.then6
  call void @llvm.lifetime.end.p0(i64 818, ptr %opts) #14, !dbg !3371
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctrlr) #14, !dbg !3371
  %45 = load i32, ptr %retval, align 4, !dbg !3371
  ret i32 %45, !dbg !3371
}

declare !dbg !3372 void @spdk_nvme_ctrlr_get_default_ctrlr_opts(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define ptr @nvme_get_ctrlr_by_trid_unsafe(ptr noundef %trid) #0 !dbg !3375 {
entry:
  %retval = alloca ptr, align 8
  %trid.addr = alloca ptr, align 8
  %ctrlr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %trid, ptr %trid.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %trid.addr, metadata !3379, metadata !DIExpression()), !dbg !3381
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctrlr) #14, !dbg !3382
  tail call void @llvm.dbg.declare(metadata ptr %ctrlr, metadata !3380, metadata !DIExpression()), !dbg !3383
  %0 = load ptr, ptr @g_nvme_attached_ctrlrs, align 8, !dbg !3384
  store ptr %0, ptr %ctrlr, align 8, !dbg !3384
  br label %for.cond, !dbg !3384

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %ctrlr, align 8, !dbg !3386
  %tobool = icmp ne ptr %1, null, !dbg !3384
  br i1 %tobool, label %for.body, label %for.end, !dbg !3384

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %ctrlr, align 8, !dbg !3388
  %trid1 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %2, i32 0, i32 14, !dbg !3391
  %3 = load ptr, ptr %trid.addr, align 8, !dbg !3392
  %call = call i32 @spdk_nvme_transport_id_compare(ptr noundef %trid1, ptr noundef %3), !dbg !3393
  %cmp = icmp eq i32 %call, 0, !dbg !3394
  br i1 %cmp, label %if.then, label %if.end, !dbg !3395

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %ctrlr, align 8, !dbg !3396
  store ptr %4, ptr %retval, align 8, !dbg !3398
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3398

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3399

for.inc:                                          ; preds = %if.end
  %5 = load ptr, ptr %ctrlr, align 8, !dbg !3386
  %tailq = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %5, i32 0, i32 21, !dbg !3386
  %tqe_next = getelementptr inbounds %struct.anon.93, ptr %tailq, i32 0, i32 0, !dbg !3386
  %6 = load ptr, ptr %tqe_next, align 8, !dbg !3386
  store ptr %6, ptr %ctrlr, align 8, !dbg !3386
  br label %for.cond, !dbg !3386, !llvm.loop !3400

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !3402
  %shared_attached_ctrlrs = getelementptr inbounds %struct.nvme_driver, ptr %7, i32 0, i32 1, !dbg !3402
  %tqh_first = getelementptr inbounds %struct.anon.113, ptr %shared_attached_ctrlrs, i32 0, i32 0, !dbg !3402
  %8 = load ptr, ptr %tqh_first, align 8, !dbg !3402
  store ptr %8, ptr %ctrlr, align 8, !dbg !3402
  br label %for.cond2, !dbg !3402

for.cond2:                                        ; preds = %for.inc10, %for.end
  %9 = load ptr, ptr %ctrlr, align 8, !dbg !3404
  %tobool3 = icmp ne ptr %9, null, !dbg !3402
  br i1 %tobool3, label %for.body4, label %for.end13, !dbg !3402

for.body4:                                        ; preds = %for.cond2
  %10 = load ptr, ptr %ctrlr, align 8, !dbg !3406
  %trid5 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %10, i32 0, i32 14, !dbg !3409
  %11 = load ptr, ptr %trid.addr, align 8, !dbg !3410
  %call6 = call i32 @spdk_nvme_transport_id_compare(ptr noundef %trid5, ptr noundef %11), !dbg !3411
  %cmp7 = icmp eq i32 %call6, 0, !dbg !3412
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !3413

if.then8:                                         ; preds = %for.body4
  %12 = load ptr, ptr %ctrlr, align 8, !dbg !3414
  store ptr %12, ptr %retval, align 8, !dbg !3416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3416

if.end9:                                          ; preds = %for.body4
  br label %for.inc10, !dbg !3417

for.inc10:                                        ; preds = %if.end9
  %13 = load ptr, ptr %ctrlr, align 8, !dbg !3404
  %tailq11 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %13, i32 0, i32 21, !dbg !3404
  %tqe_next12 = getelementptr inbounds %struct.anon.93, ptr %tailq11, i32 0, i32 0, !dbg !3404
  %14 = load ptr, ptr %tqe_next12, align 8, !dbg !3404
  store ptr %14, ptr %ctrlr, align 8, !dbg !3404
  br label %for.cond2, !dbg !3404, !llvm.loop !3418

for.end13:                                        ; preds = %for.cond2
  store ptr null, ptr %retval, align 8, !dbg !3420
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3420

cleanup:                                          ; preds = %for.end13, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctrlr) #14, !dbg !3421
  %15 = load ptr, ptr %retval, align 8, !dbg !3421
  ret ptr %15, !dbg !3421
}

declare !dbg !3422 void @nvme_ctrlr_proc_get_ref(ptr noundef) #2

declare !dbg !3423 ptr @nvme_transport_ctrlr_construct(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define internal void @nvme_qpair_set_state(ptr noundef %qpair, i32 noundef %state) #7 !dbg !3426 {
entry:
  %qpair.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  store ptr %qpair, ptr %qpair.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %qpair.addr, metadata !3430, metadata !DIExpression()), !dbg !3432
  store i32 %state, ptr %state.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3431, metadata !DIExpression()), !dbg !3433
  %0 = load i32, ptr %state.addr, align 4, !dbg !3434
  %conv = trunc i32 %0 to i8, !dbg !3434
  %1 = load ptr, ptr %qpair.addr, align 8, !dbg !3435
  %state1 = getelementptr inbounds %struct.spdk_nvme_qpair, ptr %1, i32 0, i32 3, !dbg !3436
  %2 = zext i8 %conv to i16, !dbg !3437
  %bf.load = load i16, ptr %state1, align 1, !dbg !3437
  %bf.value = and i16 %2, 7, !dbg !3437
  %bf.clear = and i16 %bf.load, -8, !dbg !3437
  %bf.set = or i16 %bf.clear, %bf.value, !dbg !3437
  store i16 %bf.set, ptr %state1, align 1, !dbg !3437
  %bf.result.cast = trunc i16 %bf.value to i8, !dbg !3437
  %3 = load i32, ptr %state.addr, align 4, !dbg !3438
  %cmp = icmp eq i32 %3, 5, !dbg !3440
  br i1 %cmp, label %if.then, label %if.end, !dbg !3441

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %qpair.addr, align 8, !dbg !3442
  %is_new_qpair = getelementptr inbounds %struct.spdk_nvme_qpair, ptr %4, i32 0, i32 3, !dbg !3444
  %bf.load3 = load i16, ptr %is_new_qpair, align 1, !dbg !3445
  %bf.clear4 = and i16 %bf.load3, -17, !dbg !3445
  %bf.set5 = or i16 %bf.clear4, 0, !dbg !3445
  store i16 %bf.set5, ptr %is_new_qpair, align 1, !dbg !3445
  br label %if.end, !dbg !3446

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3447
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_nvme_transport_id_compare(ptr noundef %trid1, ptr noundef %trid2) #0 !dbg !3448 {
entry:
  %retval = alloca i32, align 4
  %trid1.addr = alloca ptr, align 8
  %trid2.addr = alloca ptr, align 8
  %cmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %pci_addr1 = alloca %struct.spdk_pci_addr, align 4
  %pci_addr2 = alloca %struct.spdk_pci_addr, align 4
  store ptr %trid1, ptr %trid1.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %trid1.addr, metadata !3452, metadata !DIExpression()), !dbg !3459
  store ptr %trid2, ptr %trid2.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %trid2.addr, metadata !3453, metadata !DIExpression()), !dbg !3460
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmp) #14, !dbg !3461
  tail call void @llvm.dbg.declare(metadata ptr %cmp, metadata !3454, metadata !DIExpression()), !dbg !3462
  %0 = load ptr, ptr %trid1.addr, align 8, !dbg !3463
  %trtype = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %0, i32 0, i32 1, !dbg !3465
  %1 = load i32, ptr %trtype, align 4, !dbg !3465
  %cmp1 = icmp eq i32 %1, 4096, !dbg !3466
  br i1 %cmp1, label %if.then, label %if.else, !dbg !3467

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %trid1.addr, align 8, !dbg !3468
  %trstring = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %2, i32 0, i32 0, !dbg !3470
  %arraydecay = getelementptr inbounds [33 x i8], ptr %trstring, i64 0, i64 0, !dbg !3468
  %3 = load ptr, ptr %trid2.addr, align 8, !dbg !3471
  %trstring2 = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %3, i32 0, i32 0, !dbg !3472
  %arraydecay3 = getelementptr inbounds [33 x i8], ptr %trstring2, i64 0, i64 0, !dbg !3471
  %call = call i32 @strcasecmp(ptr noundef %arraydecay, ptr noundef %arraydecay3) #16, !dbg !3473
  store i32 %call, ptr %cmp, align 4, !dbg !3474
  br label %if.end, !dbg !3475

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %trid1.addr, align 8, !dbg !3476
  %trtype4 = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %4, i32 0, i32 1, !dbg !3478
  %5 = load i32, ptr %trtype4, align 4, !dbg !3478
  %6 = load ptr, ptr %trid2.addr, align 8, !dbg !3479
  %trtype5 = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %6, i32 0, i32 1, !dbg !3480
  %7 = load i32, ptr %trtype5, align 4, !dbg !3480
  %call6 = call i32 @cmp_int(i32 noundef %5, i32 noundef %7), !dbg !3481
  store i32 %call6, ptr %cmp, align 4, !dbg !3482
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, ptr %cmp, align 4, !dbg !3483
  %tobool = icmp ne i32 %8, 0, !dbg !3483
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !3485

if.then7:                                         ; preds = %if.end
  %9 = load i32, ptr %cmp, align 4, !dbg !3486
  store i32 %9, ptr %retval, align 4, !dbg !3488
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !3488

if.end8:                                          ; preds = %if.end
  %10 = load ptr, ptr %trid1.addr, align 8, !dbg !3489
  %trtype9 = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %10, i32 0, i32 1, !dbg !3490
  %11 = load i32, ptr %trtype9, align 4, !dbg !3490
  %cmp10 = icmp eq i32 %11, 256, !dbg !3491
  br i1 %cmp10, label %if.then11, label %if.end23, !dbg !3492

if.then11:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_addr1) #14, !dbg !3493
  tail call void @llvm.dbg.declare(metadata ptr %pci_addr1, metadata !3455, metadata !DIExpression()), !dbg !3494
  call void @llvm.memset.p0.i64(ptr align 4 %pci_addr1, i8 0, i64 8, i1 false), !dbg !3494
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_addr2) #14, !dbg !3495
  tail call void @llvm.dbg.declare(metadata ptr %pci_addr2, metadata !3458, metadata !DIExpression()), !dbg !3496
  call void @llvm.memset.p0.i64(ptr align 4 %pci_addr2, i8 0, i64 8, i1 false), !dbg !3496
  %12 = load ptr, ptr %trid1.addr, align 8, !dbg !3497
  %traddr = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %12, i32 0, i32 3, !dbg !3499
  %arraydecay12 = getelementptr inbounds [257 x i8], ptr %traddr, i64 0, i64 0, !dbg !3497
  %call13 = call i32 @spdk_pci_addr_parse(ptr noundef %pci_addr1, ptr noundef %arraydecay12), !dbg !3500
  %cmp14 = icmp slt i32 %call13, 0, !dbg !3501
  br i1 %cmp14, label %if.then19, label %lor.lhs.false, !dbg !3502

lor.lhs.false:                                    ; preds = %if.then11
  %13 = load ptr, ptr %trid2.addr, align 8, !dbg !3503
  %traddr15 = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %13, i32 0, i32 3, !dbg !3504
  %arraydecay16 = getelementptr inbounds [257 x i8], ptr %traddr15, i64 0, i64 0, !dbg !3503
  %call17 = call i32 @spdk_pci_addr_parse(ptr noundef %pci_addr2, ptr noundef %arraydecay16), !dbg !3505
  %cmp18 = icmp slt i32 %call17, 0, !dbg !3506
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3507

if.then19:                                        ; preds = %lor.lhs.false, %if.then11
  store i32 -1, ptr %retval, align 4, !dbg !3508
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3508

if.end20:                                         ; preds = %lor.lhs.false
  %call21 = call i32 @spdk_pci_addr_compare(ptr noundef %pci_addr1, ptr noundef %pci_addr2), !dbg !3510
  store i32 %call21, ptr %retval, align 4, !dbg !3511
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3511

cleanup:                                          ; preds = %if.end20, %if.then19
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_addr2) #14, !dbg !3512
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_addr1) #14, !dbg !3512
  br label %cleanup51

if.end23:                                         ; preds = %if.end8
  %14 = load ptr, ptr %trid1.addr, align 8, !dbg !3513
  %traddr24 = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %14, i32 0, i32 3, !dbg !3514
  %arraydecay25 = getelementptr inbounds [257 x i8], ptr %traddr24, i64 0, i64 0, !dbg !3513
  %15 = load ptr, ptr %trid2.addr, align 8, !dbg !3515
  %traddr26 = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %15, i32 0, i32 3, !dbg !3516
  %arraydecay27 = getelementptr inbounds [257 x i8], ptr %traddr26, i64 0, i64 0, !dbg !3515
  %call28 = call i32 @strcasecmp(ptr noundef %arraydecay25, ptr noundef %arraydecay27) #16, !dbg !3517
  store i32 %call28, ptr %cmp, align 4, !dbg !3518
  %16 = load i32, ptr %cmp, align 4, !dbg !3519
  %tobool29 = icmp ne i32 %16, 0, !dbg !3519
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !3521

if.then30:                                        ; preds = %if.end23
  %17 = load i32, ptr %cmp, align 4, !dbg !3522
  store i32 %17, ptr %retval, align 4, !dbg !3524
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !3524

if.end31:                                         ; preds = %if.end23
  %18 = load ptr, ptr %trid1.addr, align 8, !dbg !3525
  %adrfam = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %18, i32 0, i32 2, !dbg !3526
  %19 = load i32, ptr %adrfam, align 4, !dbg !3526
  %20 = load ptr, ptr %trid2.addr, align 8, !dbg !3527
  %adrfam32 = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %20, i32 0, i32 2, !dbg !3528
  %21 = load i32, ptr %adrfam32, align 4, !dbg !3528
  %call33 = call i32 @cmp_int(i32 noundef %19, i32 noundef %21), !dbg !3529
  store i32 %call33, ptr %cmp, align 4, !dbg !3530
  %22 = load i32, ptr %cmp, align 4, !dbg !3531
  %tobool34 = icmp ne i32 %22, 0, !dbg !3531
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !3533

if.then35:                                        ; preds = %if.end31
  %23 = load i32, ptr %cmp, align 4, !dbg !3534
  store i32 %23, ptr %retval, align 4, !dbg !3536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !3536

if.end36:                                         ; preds = %if.end31
  %24 = load ptr, ptr %trid1.addr, align 8, !dbg !3537
  %trsvcid = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %24, i32 0, i32 4, !dbg !3538
  %arraydecay37 = getelementptr inbounds [33 x i8], ptr %trsvcid, i64 0, i64 0, !dbg !3537
  %25 = load ptr, ptr %trid2.addr, align 8, !dbg !3539
  %trsvcid38 = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %25, i32 0, i32 4, !dbg !3540
  %arraydecay39 = getelementptr inbounds [33 x i8], ptr %trsvcid38, i64 0, i64 0, !dbg !3539
  %call40 = call i32 @strcasecmp(ptr noundef %arraydecay37, ptr noundef %arraydecay39) #16, !dbg !3541
  store i32 %call40, ptr %cmp, align 4, !dbg !3542
  %26 = load i32, ptr %cmp, align 4, !dbg !3543
  %tobool41 = icmp ne i32 %26, 0, !dbg !3543
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !3545

if.then42:                                        ; preds = %if.end36
  %27 = load i32, ptr %cmp, align 4, !dbg !3546
  store i32 %27, ptr %retval, align 4, !dbg !3548
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !3548

if.end43:                                         ; preds = %if.end36
  %28 = load ptr, ptr %trid1.addr, align 8, !dbg !3549
  %subnqn = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %28, i32 0, i32 5, !dbg !3550
  %arraydecay44 = getelementptr inbounds [224 x i8], ptr %subnqn, i64 0, i64 0, !dbg !3549
  %29 = load ptr, ptr %trid2.addr, align 8, !dbg !3551
  %subnqn45 = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %29, i32 0, i32 5, !dbg !3552
  %arraydecay46 = getelementptr inbounds [224 x i8], ptr %subnqn45, i64 0, i64 0, !dbg !3551
  %call47 = call i32 @strcmp(ptr noundef %arraydecay44, ptr noundef %arraydecay46) #16, !dbg !3553
  store i32 %call47, ptr %cmp, align 4, !dbg !3554
  %30 = load i32, ptr %cmp, align 4, !dbg !3555
  %tobool48 = icmp ne i32 %30, 0, !dbg !3555
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !3557

if.then49:                                        ; preds = %if.end43
  %31 = load i32, ptr %cmp, align 4, !dbg !3558
  store i32 %31, ptr %retval, align 4, !dbg !3560
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !3560

if.end50:                                         ; preds = %if.end43
  store i32 0, ptr %retval, align 4, !dbg !3561
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !3561

cleanup51:                                        ; preds = %if.end50, %if.then49, %if.then42, %if.then35, %if.then30, %cleanup, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmp) #14, !dbg !3562
  %32 = load i32, ptr %retval, align 4, !dbg !3562
  ret i32 %32, !dbg !3562
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_nvme_probe(ptr noundef %trid, ptr noundef %cb_ctx, ptr noundef %probe_cb, ptr noundef %attach_cb, ptr noundef %remove_cb) #0 !dbg !3563 {
entry:
  %retval = alloca i32, align 4
  %trid.addr = alloca ptr, align 8
  %cb_ctx.addr = alloca ptr, align 8
  %probe_cb.addr = alloca ptr, align 8
  %attach_cb.addr = alloca ptr, align 8
  %remove_cb.addr = alloca ptr, align 8
  %trid_pcie = alloca %struct.spdk_nvme_transport_id, align 4
  %probe_ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %trid, ptr %trid.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %trid.addr, metadata !3567, metadata !DIExpression()), !dbg !3574
  store ptr %cb_ctx, ptr %cb_ctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cb_ctx.addr, metadata !3568, metadata !DIExpression()), !dbg !3575
  store ptr %probe_cb, ptr %probe_cb.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %probe_cb.addr, metadata !3569, metadata !DIExpression()), !dbg !3576
  store ptr %attach_cb, ptr %attach_cb.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %attach_cb.addr, metadata !3570, metadata !DIExpression()), !dbg !3577
  store ptr %remove_cb, ptr %remove_cb.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %remove_cb.addr, metadata !3571, metadata !DIExpression()), !dbg !3578
  call void @llvm.lifetime.start.p0(i64 564, ptr %trid_pcie) #14, !dbg !3579
  tail call void @llvm.dbg.declare(metadata ptr %trid_pcie, metadata !3572, metadata !DIExpression()), !dbg !3580
  call void @llvm.lifetime.start.p0(i64 8, ptr %probe_ctx) #14, !dbg !3581
  tail call void @llvm.dbg.declare(metadata ptr %probe_ctx, metadata !3573, metadata !DIExpression()), !dbg !3582
  %0 = load ptr, ptr %trid.addr, align 8, !dbg !3583
  %cmp = icmp eq ptr %0, null, !dbg !3585
  br i1 %cmp, label %if.then, label %if.end, !dbg !3586

if.then:                                          ; preds = %entry
  %call = call ptr @memset.inline(ptr noundef %trid_pcie, i32 noundef 0, i64 noundef 564) #14, !dbg !3587
  call void @spdk_nvme_trid_populate_transport(ptr noundef %trid_pcie, i32 noundef 256), !dbg !3589
  store ptr %trid_pcie, ptr %trid.addr, align 8, !dbg !3590
  br label %if.end, !dbg !3591

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %trid.addr, align 8, !dbg !3592
  %2 = load ptr, ptr %cb_ctx.addr, align 8, !dbg !3593
  %3 = load ptr, ptr %probe_cb.addr, align 8, !dbg !3594
  %4 = load ptr, ptr %attach_cb.addr, align 8, !dbg !3595
  %5 = load ptr, ptr %remove_cb.addr, align 8, !dbg !3596
  %call1 = call ptr @spdk_nvme_probe_async(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5), !dbg !3597
  store ptr %call1, ptr %probe_ctx, align 8, !dbg !3598
  %6 = load ptr, ptr %probe_ctx, align 8, !dbg !3599
  %tobool = icmp ne ptr %6, null, !dbg !3599
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !3601

if.then2:                                         ; preds = %if.end
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 892, ptr noundef @__func__.spdk_nvme_probe, ptr noundef @.str.8), !dbg !3602
  store i32 -1, ptr %retval, align 4, !dbg !3604
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3604

if.end3:                                          ; preds = %if.end
  %7 = load ptr, ptr %probe_ctx, align 8, !dbg !3605
  %call4 = call i32 @nvme_init_controllers(ptr noundef %7), !dbg !3606
  store i32 %call4, ptr %retval, align 4, !dbg !3607
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3607

cleanup:                                          ; preds = %if.end3, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %probe_ctx) #14, !dbg !3608
  call void @llvm.lifetime.end.p0(i64 564, ptr %trid_pcie) #14, !dbg !3608
  %8 = load i32, ptr %retval, align 4, !dbg !3608
  ret i32 %8, !dbg !3608
}

; Function Attrs: alwaysinline nobuiltin nounwind ssp uwtable
declare ptr @memset(ptr noundef, i32 noundef, i64 noundef) #5

; Function Attrs: alwaysinline nounwind
define internal ptr @memset.inline(ptr nonnull %__dest, i32 %__ch, i64 %__len) #6 !dbg !3609 {
entry:
  %__dest.addr = alloca ptr, align 8
  %__ch.addr = alloca i32, align 4
  %__len.addr = alloca i64, align 8
  store ptr %__dest, ptr %__dest.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %__dest.addr, metadata !3613, metadata !DIExpression()), !dbg !3616
  store i32 %__ch, ptr %__ch.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %__ch.addr, metadata !3614, metadata !DIExpression()), !dbg !3616
  store i64 %__len, ptr %__len.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %__len.addr, metadata !3615, metadata !DIExpression()), !dbg !3616
  %0 = load ptr, ptr %__dest.addr, align 8, !dbg !3617
  %1 = load i32, ptr %__ch.addr, align 4, !dbg !3618
  %2 = load i64, ptr %__len.addr, align 8, !dbg !3619
  %3 = load ptr, ptr %__dest.addr, align 8, !dbg !3620
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false), !dbg !3620
  %call = call ptr @__memset_chk(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %4) #14, !dbg !3621
  ret ptr %call, !dbg !3622
}

; Function Attrs: nounwind ssp uwtable
define void @spdk_nvme_trid_populate_transport(ptr noundef %trid, i32 noundef %trtype) #0 !dbg !3623 {
entry:
  %trid.addr = alloca ptr, align 8
  %trtype.addr = alloca i32, align 4
  %trstring = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %trid, ptr %trid.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %trid.addr, metadata !3628, metadata !DIExpression()), !dbg !3631
  store i32 %trtype, ptr %trtype.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %trtype.addr, metadata !3629, metadata !DIExpression()), !dbg !3632
  call void @llvm.lifetime.start.p0(i64 8, ptr %trstring) #14, !dbg !3633
  tail call void @llvm.dbg.declare(metadata ptr %trstring, metadata !3630, metadata !DIExpression()), !dbg !3634
  store ptr @.str.10, ptr %trstring, align 8, !dbg !3634
  %0 = load i32, ptr %trtype.addr, align 4, !dbg !3635
  %1 = load ptr, ptr %trid.addr, align 8, !dbg !3636
  %trtype1 = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %1, i32 0, i32 1, !dbg !3637
  store i32 %0, ptr %trtype1, align 4, !dbg !3638
  %2 = load i32, ptr %trtype.addr, align 4, !dbg !3639
  switch i32 %2, label %sw.default [
    i32 2, label %sw.bb
    i32 256, label %sw.bb2
    i32 1, label %sw.bb3
    i32 3, label %sw.bb4
    i32 1024, label %sw.bb5
    i32 4096, label %sw.bb6
  ], !dbg !3640

sw.bb:                                            ; preds = %entry
  store ptr @.str.11, ptr %trstring, align 8, !dbg !3641
  br label %sw.epilog, !dbg !3643

sw.bb2:                                           ; preds = %entry
  store ptr @.str.12, ptr %trstring, align 8, !dbg !3644
  br label %sw.epilog, !dbg !3645

sw.bb3:                                           ; preds = %entry
  store ptr @.str.13, ptr %trstring, align 8, !dbg !3646
  br label %sw.epilog, !dbg !3647

sw.bb4:                                           ; preds = %entry
  store ptr @.str.14, ptr %trstring, align 8, !dbg !3648
  br label %sw.epilog, !dbg !3649

sw.bb5:                                           ; preds = %entry
  store ptr @.str.15, ptr %trstring, align 8, !dbg !3650
  br label %sw.epilog, !dbg !3651

sw.bb6:                                           ; preds = %entry
  store ptr @.str.16, ptr %trstring, align 8, !dbg !3652
  br label %sw.epilog, !dbg !3653

sw.default:                                       ; preds = %entry
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 1035, ptr noundef @__func__.spdk_nvme_trid_populate_transport, ptr noundef @.str.17), !dbg !3654
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3655

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %3 = load ptr, ptr %trid.addr, align 8, !dbg !3656
  %trstring7 = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %3, i32 0, i32 0, !dbg !3656
  %arraydecay = getelementptr inbounds [33 x i8], ptr %trstring7, i64 0, i64 0, !dbg !3656
  %4 = load ptr, ptr %trstring, align 8, !dbg !3656
  %call = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %arraydecay, i64 noundef 32, i32 noundef 1, i64 noundef 33, ptr noundef @.str.18, ptr noundef %4), !dbg !3656
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3657
  br label %cleanup, !dbg !3657

cleanup:                                          ; preds = %sw.epilog, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %trstring) #14, !dbg !3657
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3657

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define ptr @spdk_nvme_probe_async(ptr noundef %trid, ptr noundef %cb_ctx, ptr noundef %probe_cb, ptr noundef %attach_cb, ptr noundef %remove_cb) #0 !dbg !3658 {
entry:
  %retval = alloca ptr, align 8
  %trid.addr = alloca ptr, align 8
  %cb_ctx.addr = alloca ptr, align 8
  %probe_cb.addr = alloca ptr, align 8
  %attach_cb.addr = alloca ptr, align 8
  %remove_cb.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %probe_ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %trid, ptr %trid.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %trid.addr, metadata !3662, metadata !DIExpression()), !dbg !3669
  store ptr %cb_ctx, ptr %cb_ctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cb_ctx.addr, metadata !3663, metadata !DIExpression()), !dbg !3670
  store ptr %probe_cb, ptr %probe_cb.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %probe_cb.addr, metadata !3664, metadata !DIExpression()), !dbg !3671
  store ptr %attach_cb, ptr %attach_cb.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %attach_cb.addr, metadata !3665, metadata !DIExpression()), !dbg !3672
  store ptr %remove_cb, ptr %remove_cb.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %remove_cb.addr, metadata !3666, metadata !DIExpression()), !dbg !3673
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #14, !dbg !3674
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !3667, metadata !DIExpression()), !dbg !3675
  call void @llvm.lifetime.start.p0(i64 8, ptr %probe_ctx) #14, !dbg !3676
  tail call void @llvm.dbg.declare(metadata ptr %probe_ctx, metadata !3668, metadata !DIExpression()), !dbg !3677
  %call = call i32 @nvme_driver_init(), !dbg !3678
  store i32 %call, ptr %rc, align 4, !dbg !3679
  %0 = load i32, ptr %rc, align 4, !dbg !3680
  %cmp = icmp ne i32 %0, 0, !dbg !3682
  br i1 %cmp, label %if.then, label %if.end, !dbg !3683

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3684
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3684

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 616) #15, !dbg !3686
  store ptr %call1, ptr %probe_ctx, align 8, !dbg !3687
  %1 = load ptr, ptr %probe_ctx, align 8, !dbg !3688
  %tobool = icmp ne ptr %1, null, !dbg !3688
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !3690

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !3691
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3691

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %probe_ctx, align 8, !dbg !3693
  %3 = load ptr, ptr %trid.addr, align 8, !dbg !3694
  %4 = load ptr, ptr %cb_ctx.addr, align 8, !dbg !3695
  %5 = load ptr, ptr %probe_cb.addr, align 8, !dbg !3696
  %6 = load ptr, ptr %attach_cb.addr, align 8, !dbg !3697
  %7 = load ptr, ptr %remove_cb.addr, align 8, !dbg !3698
  call void @nvme_probe_ctx_init(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7), !dbg !3699
  %8 = load ptr, ptr %probe_ctx, align 8, !dbg !3700
  %call4 = call i32 @nvme_probe_internal(ptr noundef %8, i1 noundef zeroext false), !dbg !3701
  store i32 %call4, ptr %rc, align 4, !dbg !3702
  %9 = load i32, ptr %rc, align 4, !dbg !3703
  %cmp5 = icmp ne i32 %9, 0, !dbg !3705
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !3706

if.then6:                                         ; preds = %if.end3
  %10 = load ptr, ptr %probe_ctx, align 8, !dbg !3707
  call void @free(ptr noundef %10) #14, !dbg !3709
  store ptr null, ptr %retval, align 8, !dbg !3710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3710

if.end7:                                          ; preds = %if.end3
  %11 = load ptr, ptr %probe_ctx, align 8, !dbg !3711
  store ptr %11, ptr %retval, align 8, !dbg !3712
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3712

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %probe_ctx) #14, !dbg !3713
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #14, !dbg !3713
  %12 = load ptr, ptr %retval, align 8, !dbg !3713
  ret ptr %12, !dbg !3713
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @nvme_init_controllers(ptr noundef %probe_ctx) #0 !dbg !3714 {
entry:
  %probe_ctx.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %probe_ctx, ptr %probe_ctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %probe_ctx.addr, metadata !3718, metadata !DIExpression()), !dbg !3720
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #14, !dbg !3721
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !3719, metadata !DIExpression()), !dbg !3722
  store i32 0, ptr %rc, align 4, !dbg !3722
  br label %while.cond, !dbg !3723

while.cond:                                       ; preds = %if.end, %entry
  br label %while.body, !dbg !3723

while.body:                                       ; preds = %while.cond
  %0 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !3724
  %call = call i32 @spdk_nvme_probe_poll_async(ptr noundef %0), !dbg !3726
  store i32 %call, ptr %rc, align 4, !dbg !3727
  %1 = load i32, ptr %rc, align 4, !dbg !3728
  %cmp = icmp ne i32 %1, -11, !dbg !3730
  br i1 %cmp, label %if.then, label %if.end, !dbg !3731

if.then:                                          ; preds = %while.body
  %2 = load i32, ptr %rc, align 4, !dbg !3732
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #14, !dbg !3734
  ret i32 %2, !dbg !3735

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !3723, !llvm.loop !3736
}

; Function Attrs: nounwind ssp uwtable
define ptr @spdk_nvme_connect(ptr noundef %trid, ptr noundef %opts, i64 noundef %opts_size) #0 !dbg !3738 {
entry:
  %retval = alloca ptr, align 8
  %trid.addr = alloca ptr, align 8
  %opts.addr = alloca ptr, align 8
  %opts_size.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  %ctrlr = alloca ptr, align 8
  %probe_ctx = alloca ptr, align 8
  %opts_local_p = alloca ptr, align 8
  %opts_local = alloca %struct.spdk_nvme_ctrlr_opts, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %trid, ptr %trid.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %trid.addr, metadata !3742, metadata !DIExpression()), !dbg !3750
  store ptr %opts, ptr %opts.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %opts.addr, metadata !3743, metadata !DIExpression()), !dbg !3751
  store i64 %opts_size, ptr %opts_size.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %opts_size.addr, metadata !3744, metadata !DIExpression()), !dbg !3752
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #14, !dbg !3753
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !3745, metadata !DIExpression()), !dbg !3754
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctrlr) #14, !dbg !3755
  tail call void @llvm.dbg.declare(metadata ptr %ctrlr, metadata !3746, metadata !DIExpression()), !dbg !3756
  store ptr null, ptr %ctrlr, align 8, !dbg !3756
  call void @llvm.lifetime.start.p0(i64 8, ptr %probe_ctx) #14, !dbg !3757
  tail call void @llvm.dbg.declare(metadata ptr %probe_ctx, metadata !3747, metadata !DIExpression()), !dbg !3758
  call void @llvm.lifetime.start.p0(i64 8, ptr %opts_local_p) #14, !dbg !3759
  tail call void @llvm.dbg.declare(metadata ptr %opts_local_p, metadata !3748, metadata !DIExpression()), !dbg !3760
  store ptr null, ptr %opts_local_p, align 8, !dbg !3760
  call void @llvm.lifetime.start.p0(i64 818, ptr %opts_local) #14, !dbg !3761
  tail call void @llvm.dbg.declare(metadata ptr %opts_local, metadata !3749, metadata !DIExpression()), !dbg !3762
  %0 = load ptr, ptr %trid.addr, align 8, !dbg !3763
  %cmp = icmp eq ptr %0, null, !dbg !3765
  br i1 %cmp, label %if.then, label %if.end, !dbg !3766

if.then:                                          ; preds = %entry
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 983, ptr noundef @__func__.spdk_nvme_connect, ptr noundef @.str.9), !dbg !3767
  store ptr null, ptr %retval, align 8, !dbg !3769
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3769

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %opts.addr, align 8, !dbg !3770
  %tobool = icmp ne ptr %1, null, !dbg !3770
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !3772

if.then1:                                         ; preds = %if.end
  store ptr %opts_local, ptr %opts_local_p, align 8, !dbg !3773
  %2 = load ptr, ptr %opts_local_p, align 8, !dbg !3775
  %3 = load ptr, ptr %opts.addr, align 8, !dbg !3776
  %4 = load i64, ptr %opts_size.addr, align 8, !dbg !3777
  call void @nvme_ctrlr_opts_init(ptr noundef %2, ptr noundef %3, i64 noundef %4), !dbg !3778
  br label %if.end2, !dbg !3779

if.end2:                                          ; preds = %if.then1, %if.end
  %5 = load ptr, ptr %trid.addr, align 8, !dbg !3780
  %6 = load ptr, ptr %opts_local_p, align 8, !dbg !3781
  %call = call ptr @spdk_nvme_connect_async(ptr noundef %5, ptr noundef %6, ptr noundef null), !dbg !3782
  store ptr %call, ptr %probe_ctx, align 8, !dbg !3783
  %7 = load ptr, ptr %probe_ctx, align 8, !dbg !3784
  %tobool3 = icmp ne ptr %7, null, !dbg !3784
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !3786

if.then4:                                         ; preds = %if.end2
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 994, ptr noundef @__func__.spdk_nvme_connect, ptr noundef @.str.8), !dbg !3787
  store ptr null, ptr %retval, align 8, !dbg !3789
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3789

if.end5:                                          ; preds = %if.end2
  %8 = load ptr, ptr %probe_ctx, align 8, !dbg !3790
  %call6 = call i32 @nvme_init_controllers(ptr noundef %8), !dbg !3791
  store i32 %call6, ptr %rc, align 4, !dbg !3792
  %9 = load i32, ptr %rc, align 4, !dbg !3793
  %cmp7 = icmp ne i32 %9, 0, !dbg !3795
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !3796

if.then8:                                         ; preds = %if.end5
  store ptr null, ptr %retval, align 8, !dbg !3797
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3797

if.end9:                                          ; preds = %if.end5
  %10 = load ptr, ptr %trid.addr, align 8, !dbg !3799
  %call10 = call ptr @nvme_get_ctrlr_by_trid(ptr noundef %10), !dbg !3800
  store ptr %call10, ptr %ctrlr, align 8, !dbg !3801
  %11 = load ptr, ptr %ctrlr, align 8, !dbg !3802
  store ptr %11, ptr %retval, align 8, !dbg !3803
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3803

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 818, ptr %opts_local) #14, !dbg !3804
  call void @llvm.lifetime.end.p0(i64 8, ptr %opts_local_p) #14, !dbg !3804
  call void @llvm.lifetime.end.p0(i64 8, ptr %probe_ctx) #14, !dbg !3804
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctrlr) #14, !dbg !3804
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #14, !dbg !3804
  %12 = load ptr, ptr %retval, align 8, !dbg !3804
  ret ptr %12, !dbg !3804
}

; Function Attrs: nounwind ssp uwtable
define internal void @nvme_ctrlr_opts_init(ptr noundef %opts, ptr noundef %opts_user, i64 noundef %opts_size_user) #0 !dbg !3805 {
entry:
  %opts.addr = alloca ptr, align 8
  %opts_user.addr = alloca ptr, align 8
  %opts_size_user.addr = alloca i64, align 8
  store ptr %opts, ptr %opts.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %opts.addr, metadata !3809, metadata !DIExpression()), !dbg !3812
  store ptr %opts_user, ptr %opts_user.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %opts_user.addr, metadata !3810, metadata !DIExpression()), !dbg !3813
  store i64 %opts_size_user, ptr %opts_size_user.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %opts_size_user.addr, metadata !3811, metadata !DIExpression()), !dbg !3814
  %0 = load ptr, ptr %opts.addr, align 8, !dbg !3815
  %1 = load i64, ptr %opts_size_user.addr, align 8, !dbg !3816
  call void @spdk_nvme_ctrlr_get_default_ctrlr_opts(ptr noundef %0, i64 noundef %1), !dbg !3817
  %2 = load ptr, ptr %opts.addr, align 8, !dbg !3818
  %opts_size = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %2, i32 0, i32 28, !dbg !3818
  %3 = load i64, ptr %opts_size, align 1, !dbg !3818
  %cmp = icmp ule i64 4, %3, !dbg !3818
  br i1 %cmp, label %if.then, label %if.end, !dbg !3820

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %opts_user.addr, align 8, !dbg !3821
  %num_io_queues = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %4, i32 0, i32 0, !dbg !3821
  %5 = load i32, ptr %num_io_queues, align 1, !dbg !3821
  %6 = load ptr, ptr %opts.addr, align 8, !dbg !3821
  %num_io_queues1 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %6, i32 0, i32 0, !dbg !3821
  store i32 %5, ptr %num_io_queues1, align 1, !dbg !3821
  br label %if.end, !dbg !3821

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %opts.addr, align 8, !dbg !3823
  %opts_size2 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %7, i32 0, i32 28, !dbg !3823
  %8 = load i64, ptr %opts_size2, align 1, !dbg !3823
  %cmp3 = icmp ule i64 5, %8, !dbg !3823
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !3825

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %opts_user.addr, align 8, !dbg !3826
  %use_cmb_sqs = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %9, i32 0, i32 1, !dbg !3826
  %10 = load i8, ptr %use_cmb_sqs, align 1, !dbg !3826, !range !2517, !noundef !2518
  %tobool = trunc i8 %10 to i1, !dbg !3826
  %11 = load ptr, ptr %opts.addr, align 8, !dbg !3826
  %use_cmb_sqs5 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %11, i32 0, i32 1, !dbg !3826
  %frombool = zext i1 %tobool to i8, !dbg !3826
  store i8 %frombool, ptr %use_cmb_sqs5, align 1, !dbg !3826
  br label %if.end6, !dbg !3826

if.end6:                                          ; preds = %if.then4, %if.end
  %12 = load ptr, ptr %opts.addr, align 8, !dbg !3828
  %opts_size7 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %12, i32 0, i32 28, !dbg !3828
  %13 = load i64, ptr %opts_size7, align 1, !dbg !3828
  %cmp8 = icmp ule i64 6, %13, !dbg !3828
  br i1 %cmp8, label %if.then9, label %if.end13, !dbg !3830

if.then9:                                         ; preds = %if.end6
  %14 = load ptr, ptr %opts_user.addr, align 8, !dbg !3831
  %no_shn_notification = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %14, i32 0, i32 2, !dbg !3831
  %15 = load i8, ptr %no_shn_notification, align 1, !dbg !3831, !range !2517, !noundef !2518
  %tobool10 = trunc i8 %15 to i1, !dbg !3831
  %16 = load ptr, ptr %opts.addr, align 8, !dbg !3831
  %no_shn_notification11 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %16, i32 0, i32 2, !dbg !3831
  %frombool12 = zext i1 %tobool10 to i8, !dbg !3831
  store i8 %frombool12, ptr %no_shn_notification11, align 1, !dbg !3831
  br label %if.end13, !dbg !3831

if.end13:                                         ; preds = %if.then9, %if.end6
  %17 = load ptr, ptr %opts.addr, align 8, !dbg !3833
  %opts_size14 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %17, i32 0, i32 28, !dbg !3833
  %18 = load i64, ptr %opts_size14, align 1, !dbg !3833
  %cmp15 = icmp ule i64 12, %18, !dbg !3833
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !3835

if.then16:                                        ; preds = %if.end13
  %19 = load ptr, ptr %opts_user.addr, align 8, !dbg !3836
  %arb_mechanism = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %19, i32 0, i32 4, !dbg !3836
  %20 = load i32, ptr %arb_mechanism, align 1, !dbg !3836
  %21 = load ptr, ptr %opts.addr, align 8, !dbg !3836
  %arb_mechanism17 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %21, i32 0, i32 4, !dbg !3836
  store i32 %20, ptr %arb_mechanism17, align 1, !dbg !3836
  br label %if.end18, !dbg !3836

if.end18:                                         ; preds = %if.then16, %if.end13
  %22 = load ptr, ptr %opts.addr, align 8, !dbg !3838
  %opts_size19 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %22, i32 0, i32 28, !dbg !3838
  %23 = load i64, ptr %opts_size19, align 1, !dbg !3838
  %cmp20 = icmp ule i64 13, %23, !dbg !3838
  br i1 %cmp20, label %if.then21, label %if.end23, !dbg !3840

if.then21:                                        ; preds = %if.end18
  %24 = load ptr, ptr %opts_user.addr, align 8, !dbg !3841
  %arbitration_burst = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %24, i32 0, i32 5, !dbg !3841
  %25 = load i8, ptr %arbitration_burst, align 1, !dbg !3841
  %26 = load ptr, ptr %opts.addr, align 8, !dbg !3841
  %arbitration_burst22 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %26, i32 0, i32 5, !dbg !3841
  store i8 %25, ptr %arbitration_burst22, align 1, !dbg !3841
  br label %if.end23, !dbg !3841

if.end23:                                         ; preds = %if.then21, %if.end18
  %27 = load ptr, ptr %opts.addr, align 8, !dbg !3843
  %opts_size24 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %27, i32 0, i32 28, !dbg !3843
  %28 = load i64, ptr %opts_size24, align 1, !dbg !3843
  %cmp25 = icmp ule i64 14, %28, !dbg !3843
  br i1 %cmp25, label %if.then26, label %if.end28, !dbg !3845

if.then26:                                        ; preds = %if.end23
  %29 = load ptr, ptr %opts_user.addr, align 8, !dbg !3846
  %low_priority_weight = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %29, i32 0, i32 6, !dbg !3846
  %30 = load i8, ptr %low_priority_weight, align 1, !dbg !3846
  %31 = load ptr, ptr %opts.addr, align 8, !dbg !3846
  %low_priority_weight27 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %31, i32 0, i32 6, !dbg !3846
  store i8 %30, ptr %low_priority_weight27, align 1, !dbg !3846
  br label %if.end28, !dbg !3846

if.end28:                                         ; preds = %if.then26, %if.end23
  %32 = load ptr, ptr %opts.addr, align 8, !dbg !3848
  %opts_size29 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %32, i32 0, i32 28, !dbg !3848
  %33 = load i64, ptr %opts_size29, align 1, !dbg !3848
  %cmp30 = icmp ule i64 15, %33, !dbg !3848
  br i1 %cmp30, label %if.then31, label %if.end33, !dbg !3850

if.then31:                                        ; preds = %if.end28
  %34 = load ptr, ptr %opts_user.addr, align 8, !dbg !3851
  %medium_priority_weight = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %34, i32 0, i32 7, !dbg !3851
  %35 = load i8, ptr %medium_priority_weight, align 1, !dbg !3851
  %36 = load ptr, ptr %opts.addr, align 8, !dbg !3851
  %medium_priority_weight32 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %36, i32 0, i32 7, !dbg !3851
  store i8 %35, ptr %medium_priority_weight32, align 1, !dbg !3851
  br label %if.end33, !dbg !3851

if.end33:                                         ; preds = %if.then31, %if.end28
  %37 = load ptr, ptr %opts.addr, align 8, !dbg !3853
  %opts_size34 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %37, i32 0, i32 28, !dbg !3853
  %38 = load i64, ptr %opts_size34, align 1, !dbg !3853
  %cmp35 = icmp ule i64 16, %38, !dbg !3853
  br i1 %cmp35, label %if.then36, label %if.end38, !dbg !3855

if.then36:                                        ; preds = %if.end33
  %39 = load ptr, ptr %opts_user.addr, align 8, !dbg !3856
  %high_priority_weight = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %39, i32 0, i32 8, !dbg !3856
  %40 = load i8, ptr %high_priority_weight, align 1, !dbg !3856
  %41 = load ptr, ptr %opts.addr, align 8, !dbg !3856
  %high_priority_weight37 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %41, i32 0, i32 8, !dbg !3856
  store i8 %40, ptr %high_priority_weight37, align 1, !dbg !3856
  br label %if.end38, !dbg !3856

if.end38:                                         ; preds = %if.then36, %if.end33
  %42 = load ptr, ptr %opts.addr, align 8, !dbg !3858
  %opts_size39 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %42, i32 0, i32 28, !dbg !3858
  %43 = load i64, ptr %opts_size39, align 1, !dbg !3858
  %cmp40 = icmp ule i64 20, %43, !dbg !3858
  br i1 %cmp40, label %if.then41, label %if.end43, !dbg !3860

if.then41:                                        ; preds = %if.end38
  %44 = load ptr, ptr %opts_user.addr, align 8, !dbg !3861
  %keep_alive_timeout_ms = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %44, i32 0, i32 9, !dbg !3861
  %45 = load i32, ptr %keep_alive_timeout_ms, align 1, !dbg !3861
  %46 = load ptr, ptr %opts.addr, align 8, !dbg !3861
  %keep_alive_timeout_ms42 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %46, i32 0, i32 9, !dbg !3861
  store i32 %45, ptr %keep_alive_timeout_ms42, align 1, !dbg !3861
  br label %if.end43, !dbg !3861

if.end43:                                         ; preds = %if.then41, %if.end38
  %47 = load ptr, ptr %opts.addr, align 8, !dbg !3863
  %opts_size44 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %47, i32 0, i32 28, !dbg !3863
  %48 = load i64, ptr %opts_size44, align 1, !dbg !3863
  %cmp45 = icmp ule i64 21, %48, !dbg !3863
  br i1 %cmp45, label %if.then46, label %if.end48, !dbg !3865

if.then46:                                        ; preds = %if.end43
  %49 = load ptr, ptr %opts_user.addr, align 8, !dbg !3866
  %transport_retry_count = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %49, i32 0, i32 10, !dbg !3866
  %50 = load i8, ptr %transport_retry_count, align 1, !dbg !3866
  %51 = load ptr, ptr %opts.addr, align 8, !dbg !3866
  %transport_retry_count47 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %51, i32 0, i32 10, !dbg !3866
  store i8 %50, ptr %transport_retry_count47, align 1, !dbg !3866
  br label %if.end48, !dbg !3866

if.end48:                                         ; preds = %if.then46, %if.end43
  %52 = load ptr, ptr %opts.addr, align 8, !dbg !3868
  %opts_size49 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %52, i32 0, i32 28, !dbg !3868
  %53 = load i64, ptr %opts_size49, align 1, !dbg !3868
  %cmp50 = icmp ule i64 28, %53, !dbg !3868
  br i1 %cmp50, label %if.then51, label %if.end53, !dbg !3870

if.then51:                                        ; preds = %if.end48
  %54 = load ptr, ptr %opts_user.addr, align 8, !dbg !3871
  %io_queue_size = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %54, i32 0, i32 12, !dbg !3871
  %55 = load i32, ptr %io_queue_size, align 1, !dbg !3871
  %56 = load ptr, ptr %opts.addr, align 8, !dbg !3871
  %io_queue_size52 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %56, i32 0, i32 12, !dbg !3871
  store i32 %55, ptr %io_queue_size52, align 1, !dbg !3871
  br label %if.end53, !dbg !3871

if.end53:                                         ; preds = %if.then51, %if.end48
  %57 = load ptr, ptr %opts.addr, align 8, !dbg !3873
  %opts_size54 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %57, i32 0, i32 28, !dbg !3873
  %58 = load i64, ptr %opts_size54, align 1, !dbg !3873
  %cmp55 = icmp ule i64 252, %58, !dbg !3873
  br i1 %cmp55, label %if.then56, label %if.end59, !dbg !3875

if.then56:                                        ; preds = %if.end53
  %59 = load ptr, ptr %opts.addr, align 8, !dbg !3876
  %hostnqn = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %59, i32 0, i32 13, !dbg !3876
  %arraydecay = getelementptr inbounds [224 x i8], ptr %hostnqn, i64 0, i64 0, !dbg !3876
  %60 = load ptr, ptr %opts_user.addr, align 8, !dbg !3876
  %hostnqn57 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %60, i32 0, i32 13, !dbg !3876
  %arraydecay58 = getelementptr inbounds [224 x i8], ptr %hostnqn57, i64 0, i64 0, !dbg !3876
  %call = call ptr @memcpy.inline(ptr noundef %arraydecay, ptr noundef %arraydecay58, i64 noundef 224) #14, !dbg !3876
  br label %if.end59, !dbg !3876

if.end59:                                         ; preds = %if.then56, %if.end53
  %61 = load ptr, ptr %opts.addr, align 8, !dbg !3878
  %opts_size60 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %61, i32 0, i32 28, !dbg !3878
  %62 = load i64, ptr %opts_size60, align 1, !dbg !3878
  %cmp61 = icmp ule i64 256, %62, !dbg !3878
  br i1 %cmp61, label %if.then62, label %if.end64, !dbg !3880

if.then62:                                        ; preds = %if.end59
  %63 = load ptr, ptr %opts_user.addr, align 8, !dbg !3881
  %io_queue_requests = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %63, i32 0, i32 14, !dbg !3881
  %64 = load i32, ptr %io_queue_requests, align 1, !dbg !3881
  %65 = load ptr, ptr %opts.addr, align 8, !dbg !3881
  %io_queue_requests63 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %65, i32 0, i32 14, !dbg !3881
  store i32 %64, ptr %io_queue_requests63, align 1, !dbg !3881
  br label %if.end64, !dbg !3881

if.end64:                                         ; preds = %if.then62, %if.end59
  %66 = load ptr, ptr %opts.addr, align 8, !dbg !3883
  %opts_size65 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %66, i32 0, i32 28, !dbg !3883
  %67 = load i64, ptr %opts_size65, align 1, !dbg !3883
  %cmp66 = icmp ule i64 513, %67, !dbg !3883
  br i1 %cmp66, label %if.then67, label %if.end72, !dbg !3885

if.then67:                                        ; preds = %if.end64
  %68 = load ptr, ptr %opts.addr, align 8, !dbg !3886
  %src_addr = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %68, i32 0, i32 15, !dbg !3886
  %arraydecay68 = getelementptr inbounds [257 x i8], ptr %src_addr, i64 0, i64 0, !dbg !3886
  %69 = load ptr, ptr %opts_user.addr, align 8, !dbg !3886
  %src_addr69 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %69, i32 0, i32 15, !dbg !3886
  %arraydecay70 = getelementptr inbounds [257 x i8], ptr %src_addr69, i64 0, i64 0, !dbg !3886
  %call71 = call ptr @memcpy.inline(ptr noundef %arraydecay68, ptr noundef %arraydecay70, i64 noundef 257) #14, !dbg !3886
  br label %if.end72, !dbg !3886

if.end72:                                         ; preds = %if.then67, %if.end64
  %70 = load ptr, ptr %opts.addr, align 8, !dbg !3888
  %opts_size73 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %70, i32 0, i32 28, !dbg !3888
  %71 = load i64, ptr %opts_size73, align 1, !dbg !3888
  %cmp74 = icmp ule i64 546, %71, !dbg !3888
  br i1 %cmp74, label %if.then75, label %if.end80, !dbg !3890

if.then75:                                        ; preds = %if.end72
  %72 = load ptr, ptr %opts.addr, align 8, !dbg !3891
  %src_svcid = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %72, i32 0, i32 16, !dbg !3891
  %arraydecay76 = getelementptr inbounds [33 x i8], ptr %src_svcid, i64 0, i64 0, !dbg !3891
  %73 = load ptr, ptr %opts_user.addr, align 8, !dbg !3891
  %src_svcid77 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %73, i32 0, i32 16, !dbg !3891
  %arraydecay78 = getelementptr inbounds [33 x i8], ptr %src_svcid77, i64 0, i64 0, !dbg !3891
  %call79 = call ptr @memcpy.inline(ptr noundef %arraydecay76, ptr noundef %arraydecay78, i64 noundef 33) #14, !dbg !3891
  br label %if.end80, !dbg !3891

if.end80:                                         ; preds = %if.then75, %if.end72
  %74 = load ptr, ptr %opts.addr, align 8, !dbg !3893
  %opts_size81 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %74, i32 0, i32 28, !dbg !3893
  %75 = load i64, ptr %opts_size81, align 1, !dbg !3893
  %cmp82 = icmp ule i64 554, %75, !dbg !3893
  br i1 %cmp82, label %if.then83, label %if.end88, !dbg !3895

if.then83:                                        ; preds = %if.end80
  %76 = load ptr, ptr %opts.addr, align 8, !dbg !3896
  %host_id = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %76, i32 0, i32 17, !dbg !3896
  %arraydecay84 = getelementptr inbounds [8 x i8], ptr %host_id, i64 0, i64 0, !dbg !3896
  %77 = load ptr, ptr %opts_user.addr, align 8, !dbg !3896
  %host_id85 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %77, i32 0, i32 17, !dbg !3896
  %arraydecay86 = getelementptr inbounds [8 x i8], ptr %host_id85, i64 0, i64 0, !dbg !3896
  %call87 = call ptr @memcpy.inline(ptr noundef %arraydecay84, ptr noundef %arraydecay86, i64 noundef 8) #14, !dbg !3896
  br label %if.end88, !dbg !3896

if.end88:                                         ; preds = %if.then83, %if.end80
  %78 = load ptr, ptr %opts.addr, align 8, !dbg !3898
  %opts_size89 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %78, i32 0, i32 28, !dbg !3898
  %79 = load i64, ptr %opts_size89, align 1, !dbg !3898
  %cmp90 = icmp ule i64 570, %79, !dbg !3898
  br i1 %cmp90, label %if.then91, label %if.end96, !dbg !3900

if.then91:                                        ; preds = %if.end88
  %80 = load ptr, ptr %opts.addr, align 8, !dbg !3901
  %extended_host_id = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %80, i32 0, i32 18, !dbg !3901
  %arraydecay92 = getelementptr inbounds [16 x i8], ptr %extended_host_id, i64 0, i64 0, !dbg !3901
  %81 = load ptr, ptr %opts_user.addr, align 8, !dbg !3901
  %extended_host_id93 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %81, i32 0, i32 18, !dbg !3901
  %arraydecay94 = getelementptr inbounds [16 x i8], ptr %extended_host_id93, i64 0, i64 0, !dbg !3901
  %call95 = call ptr @memcpy.inline(ptr noundef %arraydecay92, ptr noundef %arraydecay94, i64 noundef 16) #14, !dbg !3901
  br label %if.end96, !dbg !3901

if.end96:                                         ; preds = %if.then91, %if.end88
  %82 = load ptr, ptr %opts.addr, align 8, !dbg !3903
  %opts_size97 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %82, i32 0, i32 28, !dbg !3903
  %83 = load i64, ptr %opts_size97, align 1, !dbg !3903
  %cmp98 = icmp ule i64 576, %83, !dbg !3903
  br i1 %cmp98, label %if.then99, label %if.end101, !dbg !3905

if.then99:                                        ; preds = %if.end96
  %84 = load ptr, ptr %opts_user.addr, align 8, !dbg !3906
  %command_set = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %84, i32 0, i32 20, !dbg !3906
  %85 = load i32, ptr %command_set, align 1, !dbg !3906
  %86 = load ptr, ptr %opts.addr, align 8, !dbg !3906
  %command_set100 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %86, i32 0, i32 20, !dbg !3906
  store i32 %85, ptr %command_set100, align 1, !dbg !3906
  br label %if.end101, !dbg !3906

if.end101:                                        ; preds = %if.then99, %if.end96
  %87 = load ptr, ptr %opts.addr, align 8, !dbg !3908
  %opts_size102 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %87, i32 0, i32 28, !dbg !3908
  %88 = load i64, ptr %opts_size102, align 1, !dbg !3908
  %cmp103 = icmp ule i64 580, %88, !dbg !3908
  br i1 %cmp103, label %if.then104, label %if.end106, !dbg !3910

if.then104:                                       ; preds = %if.end101
  %89 = load ptr, ptr %opts_user.addr, align 8, !dbg !3911
  %admin_timeout_ms = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %89, i32 0, i32 21, !dbg !3911
  %90 = load i32, ptr %admin_timeout_ms, align 1, !dbg !3911
  %91 = load ptr, ptr %opts.addr, align 8, !dbg !3911
  %admin_timeout_ms105 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %91, i32 0, i32 21, !dbg !3911
  store i32 %90, ptr %admin_timeout_ms105, align 1, !dbg !3911
  br label %if.end106, !dbg !3911

if.end106:                                        ; preds = %if.then104, %if.end101
  %92 = load ptr, ptr %opts.addr, align 8, !dbg !3913
  %opts_size107 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %92, i32 0, i32 28, !dbg !3913
  %93 = load i64, ptr %opts_size107, align 1, !dbg !3913
  %cmp108 = icmp ule i64 581, %93, !dbg !3913
  br i1 %cmp108, label %if.then109, label %if.end113, !dbg !3915

if.then109:                                       ; preds = %if.end106
  %94 = load ptr, ptr %opts_user.addr, align 8, !dbg !3916
  %header_digest = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %94, i32 0, i32 22, !dbg !3916
  %95 = load i8, ptr %header_digest, align 1, !dbg !3916, !range !2517, !noundef !2518
  %tobool110 = trunc i8 %95 to i1, !dbg !3916
  %96 = load ptr, ptr %opts.addr, align 8, !dbg !3916
  %header_digest111 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %96, i32 0, i32 22, !dbg !3916
  %frombool112 = zext i1 %tobool110 to i8, !dbg !3916
  store i8 %frombool112, ptr %header_digest111, align 1, !dbg !3916
  br label %if.end113, !dbg !3916

if.end113:                                        ; preds = %if.then109, %if.end106
  %97 = load ptr, ptr %opts.addr, align 8, !dbg !3918
  %opts_size114 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %97, i32 0, i32 28, !dbg !3918
  %98 = load i64, ptr %opts_size114, align 1, !dbg !3918
  %cmp115 = icmp ule i64 582, %98, !dbg !3918
  br i1 %cmp115, label %if.then116, label %if.end120, !dbg !3920

if.then116:                                       ; preds = %if.end113
  %99 = load ptr, ptr %opts_user.addr, align 8, !dbg !3921
  %data_digest = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %99, i32 0, i32 23, !dbg !3921
  %100 = load i8, ptr %data_digest, align 1, !dbg !3921, !range !2517, !noundef !2518
  %tobool117 = trunc i8 %100 to i1, !dbg !3921
  %101 = load ptr, ptr %opts.addr, align 8, !dbg !3921
  %data_digest118 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %101, i32 0, i32 23, !dbg !3921
  %frombool119 = zext i1 %tobool117 to i8, !dbg !3921
  store i8 %frombool119, ptr %data_digest118, align 1, !dbg !3921
  br label %if.end120, !dbg !3921

if.end120:                                        ; preds = %if.then116, %if.end113
  %102 = load ptr, ptr %opts.addr, align 8, !dbg !3923
  %opts_size121 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %102, i32 0, i32 28, !dbg !3923
  %103 = load i64, ptr %opts_size121, align 1, !dbg !3923
  %cmp122 = icmp ule i64 583, %103, !dbg !3923
  br i1 %cmp122, label %if.then123, label %if.end127, !dbg !3925

if.then123:                                       ; preds = %if.end120
  %104 = load ptr, ptr %opts_user.addr, align 8, !dbg !3926
  %disable_error_logging = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %104, i32 0, i32 24, !dbg !3926
  %105 = load i8, ptr %disable_error_logging, align 1, !dbg !3926, !range !2517, !noundef !2518
  %tobool124 = trunc i8 %105 to i1, !dbg !3926
  %106 = load ptr, ptr %opts.addr, align 8, !dbg !3926
  %disable_error_logging125 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %106, i32 0, i32 24, !dbg !3926
  %frombool126 = zext i1 %tobool124 to i8, !dbg !3926
  store i8 %frombool126, ptr %disable_error_logging125, align 1, !dbg !3926
  br label %if.end127, !dbg !3926

if.end127:                                        ; preds = %if.then123, %if.end120
  %107 = load ptr, ptr %opts.addr, align 8, !dbg !3928
  %opts_size128 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %107, i32 0, i32 28, !dbg !3928
  %108 = load i64, ptr %opts_size128, align 1, !dbg !3928
  %cmp129 = icmp ule i64 584, %108, !dbg !3928
  br i1 %cmp129, label %if.then130, label %if.end132, !dbg !3930

if.then130:                                       ; preds = %if.end127
  %109 = load ptr, ptr %opts_user.addr, align 8, !dbg !3931
  %transport_ack_timeout = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %109, i32 0, i32 25, !dbg !3931
  %110 = load i8, ptr %transport_ack_timeout, align 1, !dbg !3931
  %111 = load ptr, ptr %opts.addr, align 8, !dbg !3931
  %transport_ack_timeout131 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %111, i32 0, i32 25, !dbg !3931
  store i8 %110, ptr %transport_ack_timeout131, align 1, !dbg !3931
  br label %if.end132, !dbg !3931

if.end132:                                        ; preds = %if.then130, %if.end127
  %112 = load ptr, ptr %opts.addr, align 8, !dbg !3933
  %opts_size133 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %112, i32 0, i32 28, !dbg !3933
  %113 = load i64, ptr %opts_size133, align 1, !dbg !3933
  %cmp134 = icmp ule i64 586, %113, !dbg !3933
  br i1 %cmp134, label %if.then135, label %if.end137, !dbg !3935

if.then135:                                       ; preds = %if.end132
  %114 = load ptr, ptr %opts_user.addr, align 8, !dbg !3936
  %admin_queue_size = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %114, i32 0, i32 26, !dbg !3936
  %115 = load i16, ptr %admin_queue_size, align 1, !dbg !3936
  %116 = load ptr, ptr %opts.addr, align 8, !dbg !3936
  %admin_queue_size136 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %116, i32 0, i32 26, !dbg !3936
  store i16 %115, ptr %admin_queue_size136, align 1, !dbg !3936
  br label %if.end137, !dbg !3936

if.end137:                                        ; preds = %if.then135, %if.end132
  %117 = load ptr, ptr %opts.addr, align 8, !dbg !3938
  %opts_size138 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %117, i32 0, i32 28, !dbg !3938
  %118 = load i64, ptr %opts_size138, align 1, !dbg !3938
  %cmp139 = icmp ule i64 608, %118, !dbg !3938
  br i1 %cmp139, label %if.then140, label %if.end142, !dbg !3940

if.then140:                                       ; preds = %if.end137
  %119 = load ptr, ptr %opts_user.addr, align 8, !dbg !3941
  %fabrics_connect_timeout_us = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %119, i32 0, i32 29, !dbg !3941
  %120 = load i64, ptr %fabrics_connect_timeout_us, align 1, !dbg !3941
  %121 = load ptr, ptr %opts.addr, align 8, !dbg !3941
  %fabrics_connect_timeout_us141 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %121, i32 0, i32 29, !dbg !3941
  store i64 %120, ptr %fabrics_connect_timeout_us141, align 1, !dbg !3941
  br label %if.end142, !dbg !3941

if.end142:                                        ; preds = %if.then140, %if.end137
  %122 = load ptr, ptr %opts.addr, align 8, !dbg !3943
  %opts_size143 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %122, i32 0, i32 28, !dbg !3943
  %123 = load i64, ptr %opts_size143, align 1, !dbg !3943
  %cmp144 = icmp ule i64 609, %123, !dbg !3943
  br i1 %cmp144, label %if.then145, label %if.end149, !dbg !3945

if.then145:                                       ; preds = %if.end142
  %124 = load ptr, ptr %opts_user.addr, align 8, !dbg !3946
  %disable_read_ana_log_page = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %124, i32 0, i32 30, !dbg !3946
  %125 = load i8, ptr %disable_read_ana_log_page, align 1, !dbg !3946, !range !2517, !noundef !2518
  %tobool146 = trunc i8 %125 to i1, !dbg !3946
  %126 = load ptr, ptr %opts.addr, align 8, !dbg !3946
  %disable_read_ana_log_page147 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %126, i32 0, i32 30, !dbg !3946
  %frombool148 = zext i1 %tobool146 to i8, !dbg !3946
  store i8 %frombool148, ptr %disable_read_ana_log_page147, align 1, !dbg !3946
  br label %if.end149, !dbg !3946

if.end149:                                        ; preds = %if.then145, %if.end142
  %127 = load ptr, ptr %opts.addr, align 8, !dbg !3948
  %opts_size150 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %127, i32 0, i32 28, !dbg !3948
  %128 = load i64, ptr %opts_size150, align 1, !dbg !3948
  %cmp151 = icmp ule i64 617, %128, !dbg !3948
  br i1 %cmp151, label %if.then152, label %if.end154, !dbg !3950

if.then152:                                       ; preds = %if.end149
  %129 = load ptr, ptr %opts_user.addr, align 8, !dbg !3951
  %disable_read_changed_ns_list_log_page = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %129, i32 0, i32 32, !dbg !3951
  %130 = load i8, ptr %disable_read_changed_ns_list_log_page, align 1, !dbg !3951
  %131 = load ptr, ptr %opts.addr, align 8, !dbg !3951
  %disable_read_changed_ns_list_log_page153 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %131, i32 0, i32 32, !dbg !3951
  store i8 %130, ptr %disable_read_changed_ns_list_log_page153, align 1, !dbg !3951
  br label %if.end154, !dbg !3951

if.end154:                                        ; preds = %if.then152, %if.end149
  %132 = load ptr, ptr %opts.addr, align 8, !dbg !3953
  %opts_size155 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %132, i32 0, i32 28, !dbg !3953
  %133 = load i64, ptr %opts_size155, align 1, !dbg !3953
  %cmp156 = icmp ule i64 817, %133, !dbg !3953
  br i1 %cmp156, label %if.then157, label %if.end162, !dbg !3955

if.then157:                                       ; preds = %if.end154
  %134 = load ptr, ptr %opts.addr, align 8, !dbg !3956
  %psk = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %134, i32 0, i32 33, !dbg !3956
  %arraydecay158 = getelementptr inbounds [200 x i8], ptr %psk, i64 0, i64 0, !dbg !3956
  %135 = load ptr, ptr %opts_user.addr, align 8, !dbg !3956
  %psk159 = getelementptr inbounds %struct.spdk_nvme_ctrlr_opts, ptr %135, i32 0, i32 33, !dbg !3956
  %arraydecay160 = getelementptr inbounds [200 x i8], ptr %psk159, i64 0, i64 0, !dbg !3956
  %call161 = call ptr @memcpy.inline(ptr noundef %arraydecay158, ptr noundef %arraydecay160, i64 noundef 200) #14, !dbg !3956
  br label %if.end162, !dbg !3956

if.end162:                                        ; preds = %if.then157, %if.end154
  ret void, !dbg !3958
}

; Function Attrs: nounwind ssp uwtable
define ptr @spdk_nvme_connect_async(ptr noundef %trid, ptr noundef %opts, ptr noundef %attach_cb) #0 !dbg !3959 {
entry:
  %retval = alloca ptr, align 8
  %trid.addr = alloca ptr, align 8
  %opts.addr = alloca ptr, align 8
  %attach_cb.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %probe_cb = alloca ptr, align 8
  %probe_ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %trid, ptr %trid.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %trid.addr, metadata !3963, metadata !DIExpression()), !dbg !3969
  store ptr %opts, ptr %opts.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %opts.addr, metadata !3964, metadata !DIExpression()), !dbg !3970
  store ptr %attach_cb, ptr %attach_cb.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %attach_cb.addr, metadata !3965, metadata !DIExpression()), !dbg !3971
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #14, !dbg !3972
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !3966, metadata !DIExpression()), !dbg !3973
  call void @llvm.lifetime.start.p0(i64 8, ptr %probe_cb) #14, !dbg !3974
  tail call void @llvm.dbg.declare(metadata ptr %probe_cb, metadata !3967, metadata !DIExpression()), !dbg !3975
  store ptr null, ptr %probe_cb, align 8, !dbg !3975
  call void @llvm.lifetime.start.p0(i64 8, ptr %probe_ctx) #14, !dbg !3976
  tail call void @llvm.dbg.declare(metadata ptr %probe_ctx, metadata !3968, metadata !DIExpression()), !dbg !3977
  %call = call i32 @nvme_driver_init(), !dbg !3978
  store i32 %call, ptr %rc, align 4, !dbg !3979
  %0 = load i32, ptr %rc, align 4, !dbg !3980
  %cmp = icmp ne i32 %0, 0, !dbg !3982
  br i1 %cmp, label %if.then, label %if.end, !dbg !3983

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3984
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3984

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 616) #15, !dbg !3986
  store ptr %call1, ptr %probe_ctx, align 8, !dbg !3987
  %1 = load ptr, ptr %probe_ctx, align 8, !dbg !3988
  %tobool = icmp ne ptr %1, null, !dbg !3988
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !3990

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !3991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3991

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %opts.addr, align 8, !dbg !3993
  %tobool4 = icmp ne ptr %2, null, !dbg !3993
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !3995

if.then5:                                         ; preds = %if.end3
  store ptr @nvme_connect_probe_cb, ptr %probe_cb, align 8, !dbg !3996
  br label %if.end6, !dbg !3998

if.end6:                                          ; preds = %if.then5, %if.end3
  %3 = load ptr, ptr %probe_ctx, align 8, !dbg !3999
  %4 = load ptr, ptr %trid.addr, align 8, !dbg !4000
  %5 = load ptr, ptr %opts.addr, align 8, !dbg !4001
  %6 = load ptr, ptr %probe_cb, align 8, !dbg !4002
  %7 = load ptr, ptr %attach_cb.addr, align 8, !dbg !4003
  call void @nvme_probe_ctx_init(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef null), !dbg !4004
  %8 = load ptr, ptr %probe_ctx, align 8, !dbg !4005
  %call7 = call i32 @nvme_probe_internal(ptr noundef %8, i1 noundef zeroext true), !dbg !4006
  store i32 %call7, ptr %rc, align 4, !dbg !4007
  %9 = load i32, ptr %rc, align 4, !dbg !4008
  %cmp8 = icmp ne i32 %9, 0, !dbg !4010
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !4011

if.then9:                                         ; preds = %if.end6
  %10 = load ptr, ptr %probe_ctx, align 8, !dbg !4012
  call void @free(ptr noundef %10) #14, !dbg !4014
  store ptr null, ptr %retval, align 8, !dbg !4015
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4015

if.end10:                                         ; preds = %if.end6
  %11 = load ptr, ptr %probe_ctx, align 8, !dbg !4016
  store ptr %11, ptr %retval, align 8, !dbg !4017
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4017

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %probe_ctx) #14, !dbg !4018
  call void @llvm.lifetime.end.p0(i64 8, ptr %probe_cb) #14, !dbg !4018
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #14, !dbg !4018
  %12 = load ptr, ptr %retval, align 8, !dbg !4018
  ret ptr %12, !dbg !4018
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @nvme_get_ctrlr_by_trid(ptr noundef %trid) #0 !dbg !4019 {
entry:
  %trid.addr = alloca ptr, align 8
  %ctrlr = alloca ptr, align 8
  store ptr %trid, ptr %trid.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %trid.addr, metadata !4021, metadata !DIExpression()), !dbg !4023
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctrlr) #14, !dbg !4024
  tail call void @llvm.dbg.declare(metadata ptr %ctrlr, metadata !4022, metadata !DIExpression()), !dbg !4025
  %0 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !4026
  %lock = getelementptr inbounds %struct.nvme_driver, ptr %0, i32 0, i32 0, !dbg !4027
  %call = call i32 @nvme_robust_mutex_lock(ptr noundef %lock), !dbg !4028
  %1 = load ptr, ptr %trid.addr, align 8, !dbg !4029
  %call1 = call ptr @nvme_get_ctrlr_by_trid_unsafe(ptr noundef %1), !dbg !4030
  store ptr %call1, ptr %ctrlr, align 8, !dbg !4031
  %2 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !4032
  %lock2 = getelementptr inbounds %struct.nvme_driver, ptr %2, i32 0, i32 0, !dbg !4033
  %call3 = call i32 @nvme_robust_mutex_unlock(ptr noundef %lock2), !dbg !4034
  %3 = load ptr, ptr %ctrlr, align 8, !dbg !4035
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctrlr) #14, !dbg !4036
  ret ptr %3, !dbg !4037
}

declare !dbg !4038 i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_nvme_transport_id_populate_trstring(ptr noundef %trid, ptr noundef %trstring) #0 !dbg !4044 {
entry:
  %retval = alloca i32, align 4
  %trid.addr = alloca ptr, align 8
  %trstring.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %trid, ptr %trid.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %trid.addr, metadata !4048, metadata !DIExpression()), !dbg !4054
  store ptr %trstring, ptr %trstring.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %trstring.addr, metadata !4049, metadata !DIExpression()), !dbg !4055
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !4056
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !4050, metadata !DIExpression()), !dbg !4057
  store i32 0, ptr %i, align 4, !dbg !4057
  br label %while.cond, !dbg !4058

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4059
  %cmp = icmp slt i32 %0, 32, !dbg !4060
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4061

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %trstring.addr, align 8, !dbg !4062
  %2 = load i32, ptr %i, align 4, !dbg !4063
  %idxprom = sext i32 %2 to i64, !dbg !4062
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom, !dbg !4062
  %3 = load i8, ptr %arrayidx, align 1, !dbg !4062
  %conv = sext i8 %3 to i32, !dbg !4062
  %cmp1 = icmp ne i32 %conv, 0, !dbg !4064
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ], !dbg !4065
  br i1 %4, label %while.body, label %while.end, !dbg !4058

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #14, !dbg !4066
  tail call void @llvm.dbg.declare(metadata ptr %__res, metadata !4051, metadata !DIExpression()), !dbg !4066
  %call = call ptr @__ctype_toupper_loc() #17, !dbg !4067
  %5 = load ptr, ptr %call, align 8, !dbg !4067
  %6 = load ptr, ptr %trstring.addr, align 8, !dbg !4067
  %7 = load i32, ptr %i, align 4, !dbg !4067
  %idxprom3 = sext i32 %7 to i64, !dbg !4067
  %arrayidx4 = getelementptr inbounds i8, ptr %6, i64 %idxprom3, !dbg !4067
  %8 = load i8, ptr %arrayidx4, align 1, !dbg !4067
  %conv5 = sext i8 %8 to i32, !dbg !4067
  %idxprom6 = sext i32 %conv5 to i64, !dbg !4067
  %arrayidx7 = getelementptr inbounds i32, ptr %5, i64 %idxprom6, !dbg !4067
  %9 = load i32, ptr %arrayidx7, align 4, !dbg !4067
  store i32 %9, ptr %__res, align 4, !dbg !4067
  %10 = load i32, ptr %__res, align 4, !dbg !4066
  store i32 %10, ptr %tmp, align 4, !dbg !4067
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #14, !dbg !4069
  %11 = load i32, ptr %tmp, align 4, !dbg !4066
  %conv8 = trunc i32 %11 to i8, !dbg !4069
  %12 = load ptr, ptr %trid.addr, align 8, !dbg !4070
  %trstring9 = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %12, i32 0, i32 0, !dbg !4071
  %13 = load i32, ptr %i, align 4, !dbg !4072
  %idxprom10 = sext i32 %13 to i64, !dbg !4070
  %arrayidx11 = getelementptr inbounds [33 x i8], ptr %trstring9, i64 0, i64 %idxprom10, !dbg !4070
  store i8 %conv8, ptr %arrayidx11, align 1, !dbg !4073
  %14 = load i32, ptr %i, align 4, !dbg !4074
  %inc = add nsw i32 %14, 1, !dbg !4074
  store i32 %inc, ptr %i, align 4, !dbg !4074
  br label %while.cond, !dbg !4058, !llvm.loop !4075

while.end:                                        ; preds = %land.end
  %15 = load ptr, ptr %trstring.addr, align 8, !dbg !4077
  %16 = load i32, ptr %i, align 4, !dbg !4079
  %idxprom12 = sext i32 %16 to i64, !dbg !4077
  %arrayidx13 = getelementptr inbounds i8, ptr %15, i64 %idxprom12, !dbg !4077
  %17 = load i8, ptr %arrayidx13, align 1, !dbg !4077
  %conv14 = sext i8 %17 to i32, !dbg !4077
  %cmp15 = icmp ne i32 %conv14, 0, !dbg !4080
  br i1 %cmp15, label %if.then, label %if.else, !dbg !4081

if.then:                                          ; preds = %while.end
  store i32 -22, ptr %retval, align 4, !dbg !4082
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4082

if.else:                                          ; preds = %while.end
  %18 = load ptr, ptr %trid.addr, align 8, !dbg !4084
  %trstring17 = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %18, i32 0, i32 0, !dbg !4086
  %19 = load i32, ptr %i, align 4, !dbg !4087
  %idxprom18 = sext i32 %19 to i64, !dbg !4084
  %arrayidx19 = getelementptr inbounds [33 x i8], ptr %trstring17, i64 0, i64 %idxprom18, !dbg !4084
  store i8 0, ptr %arrayidx19, align 1, !dbg !4088
  store i32 0, ptr %retval, align 4, !dbg !4089
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4089

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !4090
  %20 = load i32, ptr %retval, align 4, !dbg !4090
  ret i32 %20, !dbg !4090
}

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !4091 ptr @__ctype_toupper_loc() #8

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_nvme_transport_id_parse_trtype(ptr noundef %trtype, ptr noundef %str) #0 !dbg !4098 {
entry:
  %retval = alloca i32, align 4
  %trtype.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  store ptr %trtype, ptr %trtype.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %trtype.addr, metadata !4103, metadata !DIExpression()), !dbg !4105
  store ptr %str, ptr %str.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !4104, metadata !DIExpression()), !dbg !4106
  %0 = load ptr, ptr %trtype.addr, align 8, !dbg !4107
  %cmp = icmp eq ptr %0, null, !dbg !4109
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4110

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8, !dbg !4111
  %cmp1 = icmp eq ptr %1, null, !dbg !4112
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4113

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !4114
  br label %return, !dbg !4114

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %str.addr, align 8, !dbg !4116
  %call = call i32 @strcasecmp(ptr noundef %2, ptr noundef @.str.19) #16, !dbg !4118
  %cmp2 = icmp eq i32 %call, 0, !dbg !4119
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !4120

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %trtype.addr, align 8, !dbg !4121
  store i32 256, ptr %3, align 4, !dbg !4123
  br label %if.end24, !dbg !4124

if.else:                                          ; preds = %if.end
  %4 = load ptr, ptr %str.addr, align 8, !dbg !4125
  %call4 = call i32 @strcasecmp(ptr noundef %4, ptr noundef @.str.13) #16, !dbg !4127
  %cmp5 = icmp eq i32 %call4, 0, !dbg !4128
  br i1 %cmp5, label %if.then6, label %if.else7, !dbg !4129

if.then6:                                         ; preds = %if.else
  %5 = load ptr, ptr %trtype.addr, align 8, !dbg !4130
  store i32 1, ptr %5, align 4, !dbg !4132
  br label %if.end23, !dbg !4133

if.else7:                                         ; preds = %if.else
  %6 = load ptr, ptr %str.addr, align 8, !dbg !4134
  %call8 = call i32 @strcasecmp(ptr noundef %6, ptr noundef @.str.11) #16, !dbg !4136
  %cmp9 = icmp eq i32 %call8, 0, !dbg !4137
  br i1 %cmp9, label %if.then10, label %if.else11, !dbg !4138

if.then10:                                        ; preds = %if.else7
  %7 = load ptr, ptr %trtype.addr, align 8, !dbg !4139
  store i32 2, ptr %7, align 4, !dbg !4141
  br label %if.end22, !dbg !4142

if.else11:                                        ; preds = %if.else7
  %8 = load ptr, ptr %str.addr, align 8, !dbg !4143
  %call12 = call i32 @strcasecmp(ptr noundef %8, ptr noundef @.str.14) #16, !dbg !4145
  %cmp13 = icmp eq i32 %call12, 0, !dbg !4146
  br i1 %cmp13, label %if.then14, label %if.else15, !dbg !4147

if.then14:                                        ; preds = %if.else11
  %9 = load ptr, ptr %trtype.addr, align 8, !dbg !4148
  store i32 3, ptr %9, align 4, !dbg !4150
  br label %if.end21, !dbg !4151

if.else15:                                        ; preds = %if.else11
  %10 = load ptr, ptr %str.addr, align 8, !dbg !4152
  %call16 = call i32 @strcasecmp(ptr noundef %10, ptr noundef @.str.15) #16, !dbg !4154
  %cmp17 = icmp eq i32 %call16, 0, !dbg !4155
  br i1 %cmp17, label %if.then18, label %if.else19, !dbg !4156

if.then18:                                        ; preds = %if.else15
  %11 = load ptr, ptr %trtype.addr, align 8, !dbg !4157
  store i32 1024, ptr %11, align 4, !dbg !4159
  br label %if.end20, !dbg !4160

if.else19:                                        ; preds = %if.else15
  %12 = load ptr, ptr %trtype.addr, align 8, !dbg !4161
  store i32 4096, ptr %12, align 4, !dbg !4163
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then18
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then14
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then10
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then6
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then3
  store i32 0, ptr %retval, align 4, !dbg !4164
  br label %return, !dbg !4164

return:                                           ; preds = %if.end24, %if.then
  %13 = load i32, ptr %retval, align 4, !dbg !4165
  ret i32 %13, !dbg !4165
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !4166 i32 @strcasecmp(ptr noundef, ptr noundef) #9

; Function Attrs: nounwind ssp uwtable
define ptr @spdk_nvme_transport_id_trtype_str(i32 noundef %trtype) #0 !dbg !4170 {
entry:
  %retval = alloca ptr, align 8
  %trtype.addr = alloca i32, align 4
  store i32 %trtype, ptr %trtype.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %trtype.addr, metadata !4174, metadata !DIExpression()), !dbg !4175
  %0 = load i32, ptr %trtype.addr, align 4, !dbg !4176
  switch i32 %0, label %sw.default [
    i32 256, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 1024, label %sw.bb4
    i32 4096, label %sw.bb5
  ], !dbg !4177

sw.bb:                                            ; preds = %entry
  store ptr @.str.19, ptr %retval, align 8, !dbg !4178
  br label %return, !dbg !4178

sw.bb1:                                           ; preds = %entry
  store ptr @.str.13, ptr %retval, align 8, !dbg !4180
  br label %return, !dbg !4180

sw.bb2:                                           ; preds = %entry
  store ptr @.str.11, ptr %retval, align 8, !dbg !4181
  br label %return, !dbg !4181

sw.bb3:                                           ; preds = %entry
  store ptr @.str.14, ptr %retval, align 8, !dbg !4182
  br label %return, !dbg !4182

sw.bb4:                                           ; preds = %entry
  store ptr @.str.15, ptr %retval, align 8, !dbg !4183
  br label %return, !dbg !4183

sw.bb5:                                           ; preds = %entry
  store ptr @.str.16, ptr %retval, align 8, !dbg !4184
  br label %return, !dbg !4184

sw.default:                                       ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4185
  br label %return, !dbg !4185

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %retval, align 8, !dbg !4186
  ret ptr %1, !dbg !4186
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_nvme_transport_id_parse_adrfam(ptr noundef %adrfam, ptr noundef %str) #0 !dbg !4187 {
entry:
  %retval = alloca i32, align 4
  %adrfam.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  store ptr %adrfam, ptr %adrfam.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %adrfam.addr, metadata !4192, metadata !DIExpression()), !dbg !4194
  store ptr %str, ptr %str.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !4193, metadata !DIExpression()), !dbg !4195
  %0 = load ptr, ptr %adrfam.addr, align 8, !dbg !4196
  %cmp = icmp eq ptr %0, null, !dbg !4198
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4199

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8, !dbg !4200
  %cmp1 = icmp eq ptr %1, null, !dbg !4201
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4202

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !4203
  br label %return, !dbg !4203

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %str.addr, align 8, !dbg !4205
  %call = call i32 @strcasecmp(ptr noundef %2, ptr noundef @.str.20) #16, !dbg !4207
  %cmp2 = icmp eq i32 %call, 0, !dbg !4208
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !4209

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %adrfam.addr, align 8, !dbg !4210
  store i32 1, ptr %3, align 4, !dbg !4212
  br label %if.end19, !dbg !4213

if.else:                                          ; preds = %if.end
  %4 = load ptr, ptr %str.addr, align 8, !dbg !4214
  %call4 = call i32 @strcasecmp(ptr noundef %4, ptr noundef @.str.21) #16, !dbg !4216
  %cmp5 = icmp eq i32 %call4, 0, !dbg !4217
  br i1 %cmp5, label %if.then6, label %if.else7, !dbg !4218

if.then6:                                         ; preds = %if.else
  %5 = load ptr, ptr %adrfam.addr, align 8, !dbg !4219
  store i32 2, ptr %5, align 4, !dbg !4221
  br label %if.end18, !dbg !4222

if.else7:                                         ; preds = %if.else
  %6 = load ptr, ptr %str.addr, align 8, !dbg !4223
  %call8 = call i32 @strcasecmp(ptr noundef %6, ptr noundef @.str.22) #16, !dbg !4225
  %cmp9 = icmp eq i32 %call8, 0, !dbg !4226
  br i1 %cmp9, label %if.then10, label %if.else11, !dbg !4227

if.then10:                                        ; preds = %if.else7
  %7 = load ptr, ptr %adrfam.addr, align 8, !dbg !4228
  store i32 3, ptr %7, align 4, !dbg !4230
  br label %if.end17, !dbg !4231

if.else11:                                        ; preds = %if.else7
  %8 = load ptr, ptr %str.addr, align 8, !dbg !4232
  %call12 = call i32 @strcasecmp(ptr noundef %8, ptr noundef @.str.11) #16, !dbg !4234
  %cmp13 = icmp eq i32 %call12, 0, !dbg !4235
  br i1 %cmp13, label %if.then14, label %if.else15, !dbg !4236

if.then14:                                        ; preds = %if.else11
  %9 = load ptr, ptr %adrfam.addr, align 8, !dbg !4237
  store i32 4, ptr %9, align 4, !dbg !4239
  br label %if.end16, !dbg !4240

if.else15:                                        ; preds = %if.else11
  store i32 -2, ptr %retval, align 4, !dbg !4241
  br label %return, !dbg !4241

if.end16:                                         ; preds = %if.then14
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then10
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then6
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then3
  store i32 0, ptr %retval, align 4, !dbg !4243
  br label %return, !dbg !4243

return:                                           ; preds = %if.end19, %if.else15, %if.then
  %10 = load i32, ptr %retval, align 4, !dbg !4244
  ret i32 %10, !dbg !4244
}

; Function Attrs: nounwind ssp uwtable
define ptr @spdk_nvme_transport_id_adrfam_str(i32 noundef %adrfam) #0 !dbg !4245 {
entry:
  %retval = alloca ptr, align 8
  %adrfam.addr = alloca i32, align 4
  store i32 %adrfam, ptr %adrfam.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %adrfam.addr, metadata !4249, metadata !DIExpression()), !dbg !4250
  %0 = load i32, ptr %adrfam.addr, align 4, !dbg !4251
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
  ], !dbg !4252

sw.bb:                                            ; preds = %entry
  store ptr @.str.20, ptr %retval, align 8, !dbg !4253
  br label %return, !dbg !4253

sw.bb1:                                           ; preds = %entry
  store ptr @.str.21, ptr %retval, align 8, !dbg !4255
  br label %return, !dbg !4255

sw.bb2:                                           ; preds = %entry
  store ptr @.str.22, ptr %retval, align 8, !dbg !4256
  br label %return, !dbg !4256

sw.bb3:                                           ; preds = %entry
  store ptr @.str.11, ptr %retval, align 8, !dbg !4257
  br label %return, !dbg !4257

sw.default:                                       ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4258
  br label %return, !dbg !4258

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %retval, align 8, !dbg !4259
  ret ptr %1, !dbg !4259
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_nvme_transport_id_parse(ptr noundef %trid, ptr noundef %str) #0 !dbg !4260 {
entry:
  %retval = alloca i32, align 4
  %trid.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %val_len = alloca i64, align 8
  %key = alloca [32 x i8], align 16
  %val = alloca [1024 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %trid, ptr %trid.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %trid.addr, metadata !4262, metadata !DIExpression()), !dbg !4269
  store ptr %str, ptr %str.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !4263, metadata !DIExpression()), !dbg !4270
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_len) #14, !dbg !4271
  tail call void @llvm.dbg.declare(metadata ptr %val_len, metadata !4264, metadata !DIExpression()), !dbg !4272
  call void @llvm.lifetime.start.p0(i64 32, ptr %key) #14, !dbg !4273
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !4265, metadata !DIExpression()), !dbg !4274
  call void @llvm.lifetime.start.p0(i64 1024, ptr %val) #14, !dbg !4275
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !4267, metadata !DIExpression()), !dbg !4276
  %0 = load ptr, ptr %trid.addr, align 8, !dbg !4277
  %cmp = icmp eq ptr %0, null, !dbg !4279
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4280

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8, !dbg !4281
  %cmp1 = icmp eq ptr %1, null, !dbg !4282
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4283

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !4284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4284

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond, !dbg !4286

while.cond:                                       ; preds = %if.end136, %if.then123, %if.then117, %if.then111, %if.then105, %if.then99, %if.end
  %2 = load ptr, ptr %str.addr, align 8, !dbg !4287
  %3 = load i8, ptr %2, align 1, !dbg !4288
  %conv = sext i8 %3 to i32, !dbg !4288
  %cmp2 = icmp ne i32 %conv, 0, !dbg !4289
  br i1 %cmp2, label %while.body, label %while.end, !dbg !4286

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 0, !dbg !4290
  %arraydecay4 = getelementptr inbounds [1024 x i8], ptr %val, i64 0, i64 0, !dbg !4292
  %call = call i64 @parse_next_key(ptr noundef %str.addr, ptr noundef %arraydecay, ptr noundef %arraydecay4, i64 noundef 32, i64 noundef 1024), !dbg !4293
  store i64 %call, ptr %val_len, align 8, !dbg !4294
  %4 = load i64, ptr %val_len, align 8, !dbg !4295
  %cmp5 = icmp eq i64 %4, 0, !dbg !4297
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !4298

if.then7:                                         ; preds = %while.body
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 1218, ptr noundef @__func__.spdk_nvme_transport_id_parse, ptr noundef @.str.23), !dbg !4299
  store i32 -22, ptr %retval, align 4, !dbg !4301
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4301

if.end8:                                          ; preds = %while.body
  %arraydecay9 = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 0, !dbg !4302
  %call10 = call i32 @strcasecmp(ptr noundef %arraydecay9, ptr noundef @.str.24) #16, !dbg !4304
  %cmp11 = icmp eq i32 %call10, 0, !dbg !4305
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !4306

if.then13:                                        ; preds = %if.end8
  %5 = load ptr, ptr %trid.addr, align 8, !dbg !4307
  %arraydecay14 = getelementptr inbounds [1024 x i8], ptr %val, i64 0, i64 0, !dbg !4310
  %call15 = call i32 @spdk_nvme_transport_id_populate_trstring(ptr noundef %5, ptr noundef %arraydecay14), !dbg !4311
  %cmp16 = icmp ne i32 %call15, 0, !dbg !4312
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !4313

if.then18:                                        ; preds = %if.then13
  %arraydecay19 = getelementptr inbounds [1024 x i8], ptr %val, i64 0, i64 0, !dbg !4314
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 1224, ptr noundef @__func__.spdk_nvme_transport_id_parse, ptr noundef @.str.25, ptr noundef %arraydecay19), !dbg !4314
  store i32 -22, ptr %retval, align 4, !dbg !4316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4316

if.end20:                                         ; preds = %if.then13
  %6 = load ptr, ptr %trid.addr, align 8, !dbg !4317
  %trtype = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %6, i32 0, i32 1, !dbg !4319
  %arraydecay21 = getelementptr inbounds [1024 x i8], ptr %val, i64 0, i64 0, !dbg !4320
  %call22 = call i32 @spdk_nvme_transport_id_parse_trtype(ptr noundef %trtype, ptr noundef %arraydecay21), !dbg !4321
  %cmp23 = icmp ne i32 %call22, 0, !dbg !4322
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !4323

if.then25:                                        ; preds = %if.end20
  %arraydecay26 = getelementptr inbounds [1024 x i8], ptr %val, i64 0, i64 0, !dbg !4324
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 1228, ptr noundef @__func__.spdk_nvme_transport_id_parse, ptr noundef @.str.26, ptr noundef %arraydecay26), !dbg !4324
  store i32 -22, ptr %retval, align 4, !dbg !4326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4326

if.end27:                                         ; preds = %if.end20
  br label %if.end136, !dbg !4327

if.else:                                          ; preds = %if.end8
  %arraydecay28 = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 0, !dbg !4328
  %call29 = call i32 @strcasecmp(ptr noundef %arraydecay28, ptr noundef @.str.27) #16, !dbg !4330
  %cmp30 = icmp eq i32 %call29, 0, !dbg !4331
  br i1 %cmp30, label %if.then32, label %if.else40, !dbg !4332

if.then32:                                        ; preds = %if.else
  %7 = load ptr, ptr %trid.addr, align 8, !dbg !4333
  %adrfam = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %7, i32 0, i32 2, !dbg !4336
  %arraydecay33 = getelementptr inbounds [1024 x i8], ptr %val, i64 0, i64 0, !dbg !4337
  %call34 = call i32 @spdk_nvme_transport_id_parse_adrfam(ptr noundef %adrfam, ptr noundef %arraydecay33), !dbg !4338
  %cmp35 = icmp ne i32 %call34, 0, !dbg !4339
  br i1 %cmp35, label %if.then37, label %if.end39, !dbg !4340

if.then37:                                        ; preds = %if.then32
  %arraydecay38 = getelementptr inbounds [1024 x i8], ptr %val, i64 0, i64 0, !dbg !4341
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 1233, ptr noundef @__func__.spdk_nvme_transport_id_parse, ptr noundef @.str.28, ptr noundef %arraydecay38), !dbg !4341
  store i32 -22, ptr %retval, align 4, !dbg !4343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4343

if.end39:                                         ; preds = %if.then32
  br label %if.end135, !dbg !4344

if.else40:                                        ; preds = %if.else
  %arraydecay41 = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 0, !dbg !4345
  %call42 = call i32 @strcasecmp(ptr noundef %arraydecay41, ptr noundef @.str.29) #16, !dbg !4347
  %cmp43 = icmp eq i32 %call42, 0, !dbg !4348
  br i1 %cmp43, label %if.then45, label %if.else53, !dbg !4349

if.then45:                                        ; preds = %if.else40
  %8 = load i64, ptr %val_len, align 8, !dbg !4350
  %cmp46 = icmp ugt i64 %8, 256, !dbg !4353
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !4354

if.then48:                                        ; preds = %if.then45
  %9 = load i64, ptr %val_len, align 8, !dbg !4355
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 1239, ptr noundef @__func__.spdk_nvme_transport_id_parse, ptr noundef @.str.30, i64 noundef %9, i32 noundef 256), !dbg !4355
  store i32 -22, ptr %retval, align 4, !dbg !4357
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4357

if.end49:                                         ; preds = %if.then45
  %10 = load ptr, ptr %trid.addr, align 8, !dbg !4358
  %traddr = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %10, i32 0, i32 3, !dbg !4359
  %arraydecay50 = getelementptr inbounds [257 x i8], ptr %traddr, i64 0, i64 0, !dbg !4358
  %arraydecay51 = getelementptr inbounds [1024 x i8], ptr %val, i64 0, i64 0, !dbg !4360
  %11 = load i64, ptr %val_len, align 8, !dbg !4361
  %add = add i64 %11, 1, !dbg !4362
  %call52 = call ptr @memcpy.inline(ptr noundef %arraydecay50, ptr noundef %arraydecay51, i64 noundef %add) #14, !dbg !4363
  br label %if.end134, !dbg !4364

if.else53:                                        ; preds = %if.else40
  %arraydecay54 = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 0, !dbg !4365
  %call55 = call i32 @strcasecmp(ptr noundef %arraydecay54, ptr noundef @.str.31) #16, !dbg !4367
  %cmp56 = icmp eq i32 %call55, 0, !dbg !4368
  br i1 %cmp56, label %if.then58, label %if.else67, !dbg !4369

if.then58:                                        ; preds = %if.else53
  %12 = load i64, ptr %val_len, align 8, !dbg !4370
  %cmp59 = icmp ugt i64 %12, 32, !dbg !4373
  br i1 %cmp59, label %if.then61, label %if.end62, !dbg !4374

if.then61:                                        ; preds = %if.then58
  %13 = load i64, ptr %val_len, align 8, !dbg !4375
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 1246, ptr noundef @__func__.spdk_nvme_transport_id_parse, ptr noundef @.str.32, i64 noundef %13, i32 noundef 32), !dbg !4375
  store i32 -22, ptr %retval, align 4, !dbg !4377
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4377

if.end62:                                         ; preds = %if.then58
  %14 = load ptr, ptr %trid.addr, align 8, !dbg !4378
  %trsvcid = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %14, i32 0, i32 4, !dbg !4379
  %arraydecay63 = getelementptr inbounds [33 x i8], ptr %trsvcid, i64 0, i64 0, !dbg !4378
  %arraydecay64 = getelementptr inbounds [1024 x i8], ptr %val, i64 0, i64 0, !dbg !4380
  %15 = load i64, ptr %val_len, align 8, !dbg !4381
  %add65 = add i64 %15, 1, !dbg !4382
  %call66 = call ptr @memcpy.inline(ptr noundef %arraydecay63, ptr noundef %arraydecay64, i64 noundef %add65) #14, !dbg !4383
  br label %if.end133, !dbg !4384

if.else67:                                        ; preds = %if.else53
  %arraydecay68 = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 0, !dbg !4385
  %call69 = call i32 @strcasecmp(ptr noundef %arraydecay68, ptr noundef @.str.33) #16, !dbg !4387
  %cmp70 = icmp eq i32 %call69, 0, !dbg !4388
  br i1 %cmp70, label %if.then72, label %if.else80, !dbg !4389

if.then72:                                        ; preds = %if.else67
  %16 = load i64, ptr %val_len, align 8, !dbg !4390
  %cmp73 = icmp ugt i64 %16, 4, !dbg !4393
  br i1 %cmp73, label %if.then75, label %if.end76, !dbg !4394

if.then75:                                        ; preds = %if.then72
  %17 = load i64, ptr %val_len, align 8, !dbg !4395
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 1253, ptr noundef @__func__.spdk_nvme_transport_id_parse, ptr noundef @.str.34, i64 noundef %17, i32 noundef 4), !dbg !4395
  store i32 -22, ptr %retval, align 4, !dbg !4397
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4397

if.end76:                                         ; preds = %if.then72
  %arraydecay77 = getelementptr inbounds [1024 x i8], ptr %val, i64 0, i64 0, !dbg !4398
  %call78 = call i64 @spdk_strtol(ptr noundef %arraydecay77, i32 noundef 10), !dbg !4399
  %conv79 = trunc i64 %call78 to i32, !dbg !4399
  %18 = load ptr, ptr %trid.addr, align 8, !dbg !4400
  %priority = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %18, i32 0, i32 6, !dbg !4401
  store i32 %conv79, ptr %priority, align 4, !dbg !4402
  br label %if.end132, !dbg !4403

if.else80:                                        ; preds = %if.else67
  %arraydecay81 = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 0, !dbg !4404
  %call82 = call i32 @strcasecmp(ptr noundef %arraydecay81, ptr noundef @.str.35) #16, !dbg !4406
  %cmp83 = icmp eq i32 %call82, 0, !dbg !4407
  br i1 %cmp83, label %if.then85, label %if.else94, !dbg !4408

if.then85:                                        ; preds = %if.else80
  %19 = load i64, ptr %val_len, align 8, !dbg !4409
  %cmp86 = icmp ugt i64 %19, 223, !dbg !4412
  br i1 %cmp86, label %if.then88, label %if.end89, !dbg !4413

if.then88:                                        ; preds = %if.then85
  %20 = load i64, ptr %val_len, align 8, !dbg !4414
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 1260, ptr noundef @__func__.spdk_nvme_transport_id_parse, ptr noundef @.str.36, i64 noundef %20, i32 noundef 223), !dbg !4414
  store i32 -22, ptr %retval, align 4, !dbg !4416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4416

if.end89:                                         ; preds = %if.then85
  %21 = load ptr, ptr %trid.addr, align 8, !dbg !4417
  %subnqn = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %21, i32 0, i32 5, !dbg !4418
  %arraydecay90 = getelementptr inbounds [224 x i8], ptr %subnqn, i64 0, i64 0, !dbg !4417
  %arraydecay91 = getelementptr inbounds [1024 x i8], ptr %val, i64 0, i64 0, !dbg !4419
  %22 = load i64, ptr %val_len, align 8, !dbg !4420
  %add92 = add i64 %22, 1, !dbg !4421
  %call93 = call ptr @memcpy.inline(ptr noundef %arraydecay90, ptr noundef %arraydecay91, i64 noundef %add92) #14, !dbg !4422
  br label %if.end131, !dbg !4423

if.else94:                                        ; preds = %if.else80
  %arraydecay95 = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 0, !dbg !4424
  %call96 = call i32 @strcasecmp(ptr noundef %arraydecay95, ptr noundef @.str.37) #16, !dbg !4426
  %cmp97 = icmp eq i32 %call96, 0, !dbg !4427
  br i1 %cmp97, label %if.then99, label %if.else100, !dbg !4428

if.then99:                                        ; preds = %if.else94
  br label %while.cond, !dbg !4429, !llvm.loop !4431

if.else100:                                       ; preds = %if.else94
  %arraydecay101 = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 0, !dbg !4433
  %call102 = call i32 @strcasecmp(ptr noundef %arraydecay101, ptr noundef @.str.38) #16, !dbg !4435
  %cmp103 = icmp eq i32 %call102, 0, !dbg !4436
  br i1 %cmp103, label %if.then105, label %if.else106, !dbg !4437

if.then105:                                       ; preds = %if.else100
  br label %while.cond, !dbg !4438, !llvm.loop !4431

if.else106:                                       ; preds = %if.else100
  %arraydecay107 = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 0, !dbg !4440
  %call108 = call i32 @strcasecmp(ptr noundef %arraydecay107, ptr noundef @.str.39) #16, !dbg !4442
  %cmp109 = icmp eq i32 %call108, 0, !dbg !4443
  br i1 %cmp109, label %if.then111, label %if.else112, !dbg !4444

if.then111:                                       ; preds = %if.else106
  br label %while.cond, !dbg !4445, !llvm.loop !4431

if.else112:                                       ; preds = %if.else106
  %arraydecay113 = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 0, !dbg !4447
  %call114 = call i32 @strcasecmp(ptr noundef %arraydecay113, ptr noundef @.str.40) #16, !dbg !4449
  %cmp115 = icmp eq i32 %call114, 0, !dbg !4450
  br i1 %cmp115, label %if.then117, label %if.else118, !dbg !4451

if.then117:                                       ; preds = %if.else112
  br label %while.cond, !dbg !4452, !llvm.loop !4431

if.else118:                                       ; preds = %if.else112
  %arraydecay119 = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 0, !dbg !4454
  %call120 = call i32 @strcasecmp(ptr noundef %arraydecay119, ptr noundef @.str.41) #16, !dbg !4456
  %cmp121 = icmp eq i32 %call120, 0, !dbg !4457
  br i1 %cmp121, label %if.then123, label %if.else124, !dbg !4458

if.then123:                                       ; preds = %if.else118
  br label %while.cond, !dbg !4459, !llvm.loop !4431

if.else124:                                       ; preds = %if.else118
  %arraydecay125 = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 0, !dbg !4461
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 1289, ptr noundef @__func__.spdk_nvme_transport_id_parse, ptr noundef @.str.42, ptr noundef %arraydecay125), !dbg !4461
  br label %if.end126

if.end126:                                        ; preds = %if.else124
  br label %if.end127

if.end127:                                        ; preds = %if.end126
  br label %if.end128

if.end128:                                        ; preds = %if.end127
  br label %if.end129

if.end129:                                        ; preds = %if.end128
  br label %if.end130

if.end130:                                        ; preds = %if.end129
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %if.end89
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %if.end76
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %if.end62
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.end49
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.end39
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.end27
  br label %while.cond, !dbg !4286, !llvm.loop !4431

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !4463
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4463

cleanup:                                          ; preds = %while.end, %if.then88, %if.then75, %if.then61, %if.then48, %if.then37, %if.then25, %if.then18, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 1024, ptr %val) #14, !dbg !4464
  call void @llvm.lifetime.end.p0(i64 32, ptr %key) #14, !dbg !4464
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_len) #14, !dbg !4464
  %23 = load i32, ptr %retval, align 4, !dbg !4464
  ret i32 %23, !dbg !4464
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @parse_next_key(ptr noundef %str, ptr noundef %key, ptr noundef %val, i64 noundef %key_buf_size, i64 noundef %val_buf_size) #0 !dbg !4465 {
entry:
  %retval = alloca i64, align 8
  %str.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %key_buf_size.addr = alloca i64, align 8
  %val_buf_size.addr = alloca i64, align 8
  %sep = alloca ptr, align 8
  %sep1 = alloca ptr, align 8
  %whitespace = alloca ptr, align 8
  %key_len = alloca i64, align 8
  %val_len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !4470, metadata !DIExpression()), !dbg !4480
  store ptr %key, ptr %key.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4471, metadata !DIExpression()), !dbg !4481
  store ptr %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4472, metadata !DIExpression()), !dbg !4482
  store i64 %key_buf_size, ptr %key_buf_size.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %key_buf_size.addr, metadata !4473, metadata !DIExpression()), !dbg !4483
  store i64 %val_buf_size, ptr %val_buf_size.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val_buf_size.addr, metadata !4474, metadata !DIExpression()), !dbg !4484
  call void @llvm.lifetime.start.p0(i64 8, ptr %sep) #14, !dbg !4485
  tail call void @llvm.dbg.declare(metadata ptr %sep, metadata !4475, metadata !DIExpression()), !dbg !4486
  call void @llvm.lifetime.start.p0(i64 8, ptr %sep1) #14, !dbg !4485
  tail call void @llvm.dbg.declare(metadata ptr %sep1, metadata !4476, metadata !DIExpression()), !dbg !4487
  call void @llvm.lifetime.start.p0(i64 8, ptr %whitespace) #14, !dbg !4488
  tail call void @llvm.dbg.declare(metadata ptr %whitespace, metadata !4477, metadata !DIExpression()), !dbg !4489
  store ptr @.str.54, ptr %whitespace, align 8, !dbg !4489
  call void @llvm.lifetime.start.p0(i64 8, ptr %key_len) #14, !dbg !4490
  tail call void @llvm.dbg.declare(metadata ptr %key_len, metadata !4478, metadata !DIExpression()), !dbg !4491
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_len) #14, !dbg !4490
  tail call void @llvm.dbg.declare(metadata ptr %val_len, metadata !4479, metadata !DIExpression()), !dbg !4492
  %0 = load ptr, ptr %str.addr, align 8, !dbg !4493
  %1 = load ptr, ptr %0, align 8, !dbg !4494
  %2 = load ptr, ptr %whitespace, align 8, !dbg !4495
  %call = call i64 @strspn(ptr noundef %1, ptr noundef %2) #16, !dbg !4496
  %3 = load ptr, ptr %str.addr, align 8, !dbg !4497
  %4 = load ptr, ptr %3, align 8, !dbg !4498
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %call, !dbg !4498
  store ptr %add.ptr, ptr %3, align 8, !dbg !4498
  %5 = load ptr, ptr %str.addr, align 8, !dbg !4499
  %6 = load ptr, ptr %5, align 8, !dbg !4500
  %call1 = call ptr @strchr(ptr noundef %6, i32 noundef 58) #16, !dbg !4501
  store ptr %call1, ptr %sep, align 8, !dbg !4502
  %7 = load ptr, ptr %sep, align 8, !dbg !4503
  %tobool = icmp ne ptr %7, null, !dbg !4503
  br i1 %tobool, label %if.else, label %if.then, !dbg !4505

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %str.addr, align 8, !dbg !4506
  %9 = load ptr, ptr %8, align 8, !dbg !4508
  %call2 = call ptr @strchr(ptr noundef %9, i32 noundef 61) #16, !dbg !4509
  store ptr %call2, ptr %sep, align 8, !dbg !4510
  %10 = load ptr, ptr %sep, align 8, !dbg !4511
  %tobool3 = icmp ne ptr %10, null, !dbg !4511
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !4513

if.then4:                                         ; preds = %if.then
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 1161, ptr noundef @__func__.parse_next_key, ptr noundef @.str.55), !dbg !4514
  store i64 0, ptr %retval, align 8, !dbg !4516
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4516

if.end:                                           ; preds = %if.then
  br label %if.end9, !dbg !4517

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %str.addr, align 8, !dbg !4518
  %12 = load ptr, ptr %11, align 8, !dbg !4520
  %call5 = call ptr @strchr(ptr noundef %12, i32 noundef 61) #16, !dbg !4521
  store ptr %call5, ptr %sep1, align 8, !dbg !4522
  %13 = load ptr, ptr %sep1, align 8, !dbg !4523
  %cmp = icmp ne ptr %13, null, !dbg !4525
  br i1 %cmp, label %land.lhs.true, label %if.end8, !dbg !4526

land.lhs.true:                                    ; preds = %if.else
  %14 = load ptr, ptr %sep1, align 8, !dbg !4527
  %15 = load ptr, ptr %sep, align 8, !dbg !4528
  %cmp6 = icmp ult ptr %14, %15, !dbg !4529
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !4530

if.then7:                                         ; preds = %land.lhs.true
  %16 = load ptr, ptr %sep1, align 8, !dbg !4531
  store ptr %16, ptr %sep, align 8, !dbg !4533
  br label %if.end8, !dbg !4534

if.end8:                                          ; preds = %if.then7, %land.lhs.true, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end
  %17 = load ptr, ptr %sep, align 8, !dbg !4535
  %18 = load ptr, ptr %str.addr, align 8, !dbg !4536
  %19 = load ptr, ptr %18, align 8, !dbg !4537
  %sub.ptr.lhs.cast = ptrtoint ptr %17 to i64, !dbg !4538
  %sub.ptr.rhs.cast = ptrtoint ptr %19 to i64, !dbg !4538
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4538
  store i64 %sub.ptr.sub, ptr %key_len, align 8, !dbg !4539
  %20 = load i64, ptr %key_len, align 8, !dbg !4540
  %21 = load i64, ptr %key_buf_size.addr, align 8, !dbg !4542
  %cmp10 = icmp uge i64 %20, %21, !dbg !4543
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !4544

if.then11:                                        ; preds = %if.end9
  %22 = load i64, ptr %key_len, align 8, !dbg !4545
  %23 = load i64, ptr %key_buf_size.addr, align 8, !dbg !4545
  %sub = sub i64 %23, 1, !dbg !4545
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 1174, ptr noundef @__func__.parse_next_key, ptr noundef @.str.56, i64 noundef %22, i64 noundef %sub), !dbg !4545
  store i64 0, ptr %retval, align 8, !dbg !4547
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4547

if.end12:                                         ; preds = %if.end9
  %24 = load ptr, ptr %key.addr, align 8, !dbg !4548
  %25 = load ptr, ptr %str.addr, align 8, !dbg !4549
  %26 = load ptr, ptr %25, align 8, !dbg !4550
  %27 = load i64, ptr %key_len, align 8, !dbg !4551
  %call13 = call ptr @memcpy.inline(ptr noundef %24, ptr noundef %26, i64 noundef %27) #14, !dbg !4552
  %28 = load ptr, ptr %key.addr, align 8, !dbg !4553
  %29 = load i64, ptr %key_len, align 8, !dbg !4554
  %arrayidx = getelementptr inbounds i8, ptr %28, i64 %29, !dbg !4553
  store i8 0, ptr %arrayidx, align 1, !dbg !4555
  %30 = load i64, ptr %key_len, align 8, !dbg !4556
  %add = add i64 %30, 1, !dbg !4557
  %31 = load ptr, ptr %str.addr, align 8, !dbg !4558
  %32 = load ptr, ptr %31, align 8, !dbg !4559
  %add.ptr14 = getelementptr inbounds i8, ptr %32, i64 %add, !dbg !4559
  store ptr %add.ptr14, ptr %31, align 8, !dbg !4559
  %33 = load ptr, ptr %str.addr, align 8, !dbg !4560
  %34 = load ptr, ptr %33, align 8, !dbg !4561
  %35 = load ptr, ptr %whitespace, align 8, !dbg !4562
  %call15 = call i64 @strcspn(ptr noundef %34, ptr noundef %35) #16, !dbg !4563
  store i64 %call15, ptr %val_len, align 8, !dbg !4564
  %36 = load i64, ptr %val_len, align 8, !dbg !4565
  %cmp16 = icmp eq i64 %36, 0, !dbg !4567
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !4568

if.then17:                                        ; preds = %if.end12
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 1184, ptr noundef @__func__.parse_next_key, ptr noundef @.str.57), !dbg !4569
  store i64 0, ptr %retval, align 8, !dbg !4571
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4571

if.end18:                                         ; preds = %if.end12
  %37 = load i64, ptr %val_len, align 8, !dbg !4572
  %38 = load i64, ptr %val_buf_size.addr, align 8, !dbg !4574
  %cmp19 = icmp uge i64 %37, %38, !dbg !4575
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !4576

if.then20:                                        ; preds = %if.end18
  %39 = load i64, ptr %val_len, align 8, !dbg !4577
  %40 = load i64, ptr %val_buf_size.addr, align 8, !dbg !4577
  %sub21 = sub i64 %40, 1, !dbg !4577
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 1190, ptr noundef @__func__.parse_next_key, ptr noundef @.str.58, i64 noundef %39, i64 noundef %sub21), !dbg !4577
  store i64 0, ptr %retval, align 8, !dbg !4579
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4579

if.end22:                                         ; preds = %if.end18
  %41 = load ptr, ptr %val.addr, align 8, !dbg !4580
  %42 = load ptr, ptr %str.addr, align 8, !dbg !4581
  %43 = load ptr, ptr %42, align 8, !dbg !4582
  %44 = load i64, ptr %val_len, align 8, !dbg !4583
  %call23 = call ptr @memcpy.inline(ptr noundef %41, ptr noundef %43, i64 noundef %44) #14, !dbg !4584
  %45 = load ptr, ptr %val.addr, align 8, !dbg !4585
  %46 = load i64, ptr %val_len, align 8, !dbg !4586
  %arrayidx24 = getelementptr inbounds i8, ptr %45, i64 %46, !dbg !4585
  store i8 0, ptr %arrayidx24, align 1, !dbg !4587
  %47 = load i64, ptr %val_len, align 8, !dbg !4588
  %48 = load ptr, ptr %str.addr, align 8, !dbg !4589
  %49 = load ptr, ptr %48, align 8, !dbg !4590
  %add.ptr25 = getelementptr inbounds i8, ptr %49, i64 %47, !dbg !4590
  store ptr %add.ptr25, ptr %48, align 8, !dbg !4590
  %50 = load i64, ptr %val_len, align 8, !dbg !4591
  store i64 %50, ptr %retval, align 8, !dbg !4592
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4592

cleanup:                                          ; preds = %if.end22, %if.then20, %if.then17, %if.then11, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_len) #14, !dbg !4593
  call void @llvm.lifetime.end.p0(i64 8, ptr %key_len) #14, !dbg !4593
  call void @llvm.lifetime.end.p0(i64 8, ptr %whitespace) #14, !dbg !4593
  call void @llvm.lifetime.end.p0(i64 8, ptr %sep1) #14, !dbg !4593
  call void @llvm.lifetime.end.p0(i64 8, ptr %sep) #14, !dbg !4593
  %51 = load i64, ptr %retval, align 8, !dbg !4593
  ret i64 %51, !dbg !4593
}

declare !dbg !4594 i64 @spdk_strtol(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_nvme_host_id_parse(ptr noundef %hostid, ptr noundef %str) #0 !dbg !4598 {
entry:
  %retval = alloca i32, align 4
  %hostid.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %key_size = alloca i64, align 8
  %val_size = alloca i64, align 8
  %val_len = alloca i64, align 8
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hostid, ptr %hostid.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %hostid.addr, metadata !4607, metadata !DIExpression()), !dbg !4622
  store ptr %str, ptr %str.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !4608, metadata !DIExpression()), !dbg !4623
  call void @llvm.lifetime.start.p0(i64 8, ptr %key_size) #14, !dbg !4624
  tail call void @llvm.dbg.declare(metadata ptr %key_size, metadata !4609, metadata !DIExpression()), !dbg !4625
  store i64 32, ptr %key_size, align 8, !dbg !4625
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_size) #14, !dbg !4626
  tail call void @llvm.dbg.declare(metadata ptr %val_size, metadata !4610, metadata !DIExpression()), !dbg !4627
  store i64 1024, ptr %val_size, align 8, !dbg !4627
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_len) #14, !dbg !4628
  tail call void @llvm.dbg.declare(metadata ptr %val_len, metadata !4611, metadata !DIExpression()), !dbg !4629
  %0 = load i64, ptr %key_size, align 8, !dbg !4630
  %1 = call ptr @llvm.stacksave.p0(), !dbg !4631
  store ptr %1, ptr %saved_stack, align 8, !dbg !4631
  %vla = alloca i8, i64 %0, align 16, !dbg !4631
  store i64 %0, ptr %__vla_expr0, align 8, !dbg !4631
  tail call void @llvm.dbg.declare(metadata ptr %__vla_expr0, metadata !4612, metadata !DIExpression()), !dbg !4632
  tail call void @llvm.dbg.declare(metadata ptr %vla, metadata !4613, metadata !DIExpression()), !dbg !4633
  %2 = load i64, ptr %val_size, align 8, !dbg !4634
  %vla1 = alloca i8, i64 %2, align 16, !dbg !4635
  store i64 %2, ptr %__vla_expr1, align 8, !dbg !4635
  tail call void @llvm.dbg.declare(metadata ptr %__vla_expr1, metadata !4617, metadata !DIExpression()), !dbg !4632
  tail call void @llvm.dbg.declare(metadata ptr %vla1, metadata !4618, metadata !DIExpression()), !dbg !4636
  %3 = load ptr, ptr %hostid.addr, align 8, !dbg !4637
  %cmp = icmp eq ptr %3, null, !dbg !4639
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4640

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %str.addr, align 8, !dbg !4641
  %cmp2 = icmp eq ptr %4, null, !dbg !4642
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4643

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !4644
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4644

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond, !dbg !4646

while.cond:                                       ; preds = %if.end74, %if.then42, %if.then37, %if.then32, %if.then27, %if.then22, %if.then17, %if.then13, %if.end
  %5 = load ptr, ptr %str.addr, align 8, !dbg !4647
  %6 = load i8, ptr %5, align 1, !dbg !4648
  %conv = sext i8 %6 to i32, !dbg !4648
  %cmp3 = icmp ne i32 %conv, 0, !dbg !4649
  br i1 %cmp3, label %while.body, label %while.end, !dbg !4646

while.body:                                       ; preds = %while.cond
  %7 = load i64, ptr %key_size, align 8, !dbg !4650
  %8 = load i64, ptr %val_size, align 8, !dbg !4652
  %call = call i64 @parse_next_key(ptr noundef %str.addr, ptr noundef %vla, ptr noundef %vla1, i64 noundef %7, i64 noundef %8), !dbg !4653
  store i64 %call, ptr %val_len, align 8, !dbg !4654
  %9 = load i64, ptr %val_len, align 8, !dbg !4655
  %cmp5 = icmp eq i64 %9, 0, !dbg !4657
  br i1 %cmp5, label %if.then7, label %if.end9, !dbg !4658

if.then7:                                         ; preds = %while.body
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 1315, ptr noundef @__func__.spdk_nvme_host_id_parse, ptr noundef @.str.43), !dbg !4659
  %10 = load i64, ptr %val_len, align 8, !dbg !4661
  %conv8 = trunc i64 %10 to i32, !dbg !4661
  store i32 %conv8, ptr %retval, align 4, !dbg !4662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4662

if.end9:                                          ; preds = %while.body
  %call10 = call i32 @strcasecmp(ptr noundef %vla, ptr noundef @.str.24) #16, !dbg !4663
  %cmp11 = icmp eq i32 %call10, 0, !dbg !4665
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !4666

if.then13:                                        ; preds = %if.end9
  br label %while.cond, !dbg !4667, !llvm.loop !4669

if.else:                                          ; preds = %if.end9
  %call14 = call i32 @strcasecmp(ptr noundef %vla, ptr noundef @.str.27) #16, !dbg !4671
  %cmp15 = icmp eq i32 %call14, 0, !dbg !4673
  br i1 %cmp15, label %if.then17, label %if.else18, !dbg !4674

if.then17:                                        ; preds = %if.else
  br label %while.cond, !dbg !4675, !llvm.loop !4669

if.else18:                                        ; preds = %if.else
  %call19 = call i32 @strcasecmp(ptr noundef %vla, ptr noundef @.str.29) #16, !dbg !4677
  %cmp20 = icmp eq i32 %call19, 0, !dbg !4679
  br i1 %cmp20, label %if.then22, label %if.else23, !dbg !4680

if.then22:                                        ; preds = %if.else18
  br label %while.cond, !dbg !4681, !llvm.loop !4669

if.else23:                                        ; preds = %if.else18
  %call24 = call i32 @strcasecmp(ptr noundef %vla, ptr noundef @.str.31) #16, !dbg !4683
  %cmp25 = icmp eq i32 %call24, 0, !dbg !4685
  br i1 %cmp25, label %if.then27, label %if.else28, !dbg !4686

if.then27:                                        ; preds = %if.else23
  br label %while.cond, !dbg !4687, !llvm.loop !4669

if.else28:                                        ; preds = %if.else23
  %call29 = call i32 @strcasecmp(ptr noundef %vla, ptr noundef @.str.35) #16, !dbg !4689
  %cmp30 = icmp eq i32 %call29, 0, !dbg !4691
  br i1 %cmp30, label %if.then32, label %if.else33, !dbg !4692

if.then32:                                        ; preds = %if.else28
  br label %while.cond, !dbg !4693, !llvm.loop !4669

if.else33:                                        ; preds = %if.else28
  %call34 = call i32 @strcasecmp(ptr noundef %vla, ptr noundef @.str.33) #16, !dbg !4695
  %cmp35 = icmp eq i32 %call34, 0, !dbg !4697
  br i1 %cmp35, label %if.then37, label %if.else38, !dbg !4698

if.then37:                                        ; preds = %if.else33
  br label %while.cond, !dbg !4699, !llvm.loop !4669

if.else38:                                        ; preds = %if.else33
  %call39 = call i32 @strcasecmp(ptr noundef %vla, ptr noundef @.str.40) #16, !dbg !4701
  %cmp40 = icmp eq i32 %call39, 0, !dbg !4703
  br i1 %cmp40, label %if.then42, label %if.else43, !dbg !4704

if.then42:                                        ; preds = %if.else38
  br label %while.cond, !dbg !4705, !llvm.loop !4669

if.else43:                                        ; preds = %if.else38
  %call44 = call i32 @strcasecmp(ptr noundef %vla, ptr noundef @.str.37) #16, !dbg !4707
  %cmp45 = icmp eq i32 %call44, 0, !dbg !4709
  br i1 %cmp45, label %if.then47, label %if.else53, !dbg !4710

if.then47:                                        ; preds = %if.else43
  %11 = load i64, ptr %val_len, align 8, !dbg !4711
  %cmp48 = icmp ugt i64 %11, 256, !dbg !4714
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !4715

if.then50:                                        ; preds = %if.then47
  %12 = load i64, ptr %val_len, align 8, !dbg !4716
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 1337, ptr noundef @__func__.spdk_nvme_host_id_parse, ptr noundef @.str.44, i64 noundef %12, i32 noundef 256), !dbg !4716
  store i32 -22, ptr %retval, align 4, !dbg !4718
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4718

if.end51:                                         ; preds = %if.then47
  %13 = load ptr, ptr %hostid.addr, align 8, !dbg !4719
  %hostaddr = getelementptr inbounds %struct.spdk_nvme_host_id, ptr %13, i32 0, i32 0, !dbg !4720
  %arraydecay = getelementptr inbounds [257 x i8], ptr %hostaddr, i64 0, i64 0, !dbg !4719
  %14 = load i64, ptr %val_len, align 8, !dbg !4721
  %add = add i64 %14, 1, !dbg !4722
  %call52 = call ptr @memcpy.inline(ptr noundef %arraydecay, ptr noundef %vla1, i64 noundef %add) #14, !dbg !4723
  br label %if.end67, !dbg !4724

if.else53:                                        ; preds = %if.else43
  %call54 = call i32 @strcasecmp(ptr noundef %vla, ptr noundef @.str.38) #16, !dbg !4725
  %cmp55 = icmp eq i32 %call54, 0, !dbg !4727
  br i1 %cmp55, label %if.then57, label %if.else65, !dbg !4728

if.then57:                                        ; preds = %if.else53
  %15 = load i64, ptr %val_len, align 8, !dbg !4729
  %cmp58 = icmp ugt i64 %15, 32, !dbg !4732
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !4733

if.then60:                                        ; preds = %if.then57
  %16 = load i64, ptr %val_len, align 8, !dbg !4734
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 1345, ptr noundef @__func__.spdk_nvme_host_id_parse, ptr noundef @.str.32, i64 noundef %16, i32 noundef 32), !dbg !4734
  store i32 -22, ptr %retval, align 4, !dbg !4736
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4736

if.end61:                                         ; preds = %if.then57
  %17 = load ptr, ptr %hostid.addr, align 8, !dbg !4737
  %hostsvcid = getelementptr inbounds %struct.spdk_nvme_host_id, ptr %17, i32 0, i32 1, !dbg !4738
  %arraydecay62 = getelementptr inbounds [33 x i8], ptr %hostsvcid, i64 0, i64 0, !dbg !4737
  %18 = load i64, ptr %val_len, align 8, !dbg !4739
  %add63 = add i64 %18, 1, !dbg !4740
  %call64 = call ptr @memcpy.inline(ptr noundef %arraydecay62, ptr noundef %vla1, i64 noundef %add63) #14, !dbg !4741
  br label %if.end66, !dbg !4742

if.else65:                                        ; preds = %if.else53
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 1350, ptr noundef @__func__.spdk_nvme_host_id_parse, ptr noundef @.str.42, ptr noundef %vla), !dbg !4743
  br label %if.end66

if.end66:                                         ; preds = %if.else65, %if.end61
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end51
  br label %if.end68

if.end68:                                         ; preds = %if.end67
  br label %if.end69

if.end69:                                         ; preds = %if.end68
  br label %if.end70

if.end70:                                         ; preds = %if.end69
  br label %if.end71

if.end71:                                         ; preds = %if.end70
  br label %if.end72

if.end72:                                         ; preds = %if.end71
  br label %if.end73

if.end73:                                         ; preds = %if.end72
  br label %if.end74

if.end74:                                         ; preds = %if.end73
  br label %while.cond, !dbg !4646, !llvm.loop !4669

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !4745
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4745

cleanup:                                          ; preds = %while.end, %if.then60, %if.then50, %if.then7, %if.then
  %19 = load ptr, ptr %saved_stack, align 8, !dbg !4746
  call void @llvm.stackrestore.p0(ptr %19), !dbg !4746
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_len) #14, !dbg !4746
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_size) #14, !dbg !4746
  call void @llvm.lifetime.end.p0(i64 8, ptr %key_size) #14, !dbg !4746
  %20 = load i32, ptr %retval, align 4, !dbg !4746
  ret i32 %20, !dbg !4746
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #10

; Function Attrs: nounwind ssp uwtable
define internal i32 @cmp_int(i32 noundef %a, i32 noundef %b) #0 !dbg !4747 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !4751, metadata !DIExpression()), !dbg !4753
  store i32 %b, ptr %b.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !4752, metadata !DIExpression()), !dbg !4754
  %0 = load i32, ptr %a.addr, align 4, !dbg !4755
  %1 = load i32, ptr %b.addr, align 4, !dbg !4756
  %sub = sub nsw i32 %0, %1, !dbg !4757
  ret i32 %sub, !dbg !4758
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

declare !dbg !4759 i32 @spdk_pci_addr_parse(ptr noundef, ptr noundef) #2

declare !dbg !4763 i32 @spdk_pci_addr_compare(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !4768 i32 @strcmp(ptr noundef, ptr noundef) #9

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_nvme_prchk_flags_parse(ptr noundef %prchk_flags, ptr noundef %str) #0 !dbg !4770 {
entry:
  %retval = alloca i32, align 4
  %prchk_flags.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %val_len = alloca i64, align 8
  %key = alloca [32 x i8], align 16
  %val = alloca [1024 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %prchk_flags, ptr %prchk_flags.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %prchk_flags.addr, metadata !4774, metadata !DIExpression()), !dbg !4779
  store ptr %str, ptr %str.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !4775, metadata !DIExpression()), !dbg !4780
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_len) #14, !dbg !4781
  tail call void @llvm.dbg.declare(metadata ptr %val_len, metadata !4776, metadata !DIExpression()), !dbg !4782
  call void @llvm.lifetime.start.p0(i64 32, ptr %key) #14, !dbg !4783
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !4777, metadata !DIExpression()), !dbg !4784
  call void @llvm.lifetime.start.p0(i64 1024, ptr %val) #14, !dbg !4785
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !4778, metadata !DIExpression()), !dbg !4786
  %0 = load ptr, ptr %prchk_flags.addr, align 8, !dbg !4787
  %cmp = icmp eq ptr %0, null, !dbg !4789
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4790

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8, !dbg !4791
  %cmp1 = icmp eq ptr %1, null, !dbg !4792
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4793

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !4794
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4794

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond, !dbg !4796

while.cond:                                       ; preds = %if.end28, %if.end
  %2 = load ptr, ptr %str.addr, align 8, !dbg !4797
  %3 = load i8, ptr %2, align 1, !dbg !4798
  %conv = sext i8 %3 to i32, !dbg !4798
  %cmp2 = icmp ne i32 %conv, 0, !dbg !4799
  br i1 %cmp2, label %while.body, label %while.end, !dbg !4796

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 0, !dbg !4800
  %arraydecay4 = getelementptr inbounds [1024 x i8], ptr %val, i64 0, i64 0, !dbg !4802
  %call = call i64 @parse_next_key(ptr noundef %str.addr, ptr noundef %arraydecay, ptr noundef %arraydecay4, i64 noundef 32, i64 noundef 1024), !dbg !4803
  store i64 %call, ptr %val_len, align 8, !dbg !4804
  %4 = load i64, ptr %val_len, align 8, !dbg !4805
  %cmp5 = icmp eq i64 %4, 0, !dbg !4807
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !4808

if.then7:                                         ; preds = %while.body
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 1431, ptr noundef @__func__.spdk_nvme_prchk_flags_parse, ptr noundef @.str.45), !dbg !4809
  store i32 -22, ptr %retval, align 4, !dbg !4811
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4811

if.end8:                                          ; preds = %while.body
  %arraydecay9 = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 0, !dbg !4812
  %call10 = call i32 @strcasecmp(ptr noundef %arraydecay9, ptr noundef @.str.46) #16, !dbg !4814
  %cmp11 = icmp eq i32 %call10, 0, !dbg !4815
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !4816

if.then13:                                        ; preds = %if.end8
  %arraydecay14 = getelementptr inbounds [1024 x i8], ptr %val, i64 0, i64 0, !dbg !4817
  %call15 = call ptr @strcasestr(ptr noundef %arraydecay14, ptr noundef @.str.47) #16, !dbg !4820
  %cmp16 = icmp ne ptr %call15, null, !dbg !4821
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !4822

if.then18:                                        ; preds = %if.then13
  %5 = load ptr, ptr %prchk_flags.addr, align 8, !dbg !4823
  %6 = load i32, ptr %5, align 4, !dbg !4825
  %or = or i32 %6, 67108864, !dbg !4825
  store i32 %or, ptr %5, align 4, !dbg !4825
  br label %if.end19, !dbg !4826

if.end19:                                         ; preds = %if.then18, %if.then13
  %arraydecay20 = getelementptr inbounds [1024 x i8], ptr %val, i64 0, i64 0, !dbg !4827
  %call21 = call ptr @strcasestr(ptr noundef %arraydecay20, ptr noundef @.str.48) #16, !dbg !4829
  %cmp22 = icmp ne ptr %call21, null, !dbg !4830
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !4831

if.then24:                                        ; preds = %if.end19
  %7 = load ptr, ptr %prchk_flags.addr, align 8, !dbg !4832
  %8 = load i32, ptr %7, align 4, !dbg !4834
  %or25 = or i32 %8, 268435456, !dbg !4834
  store i32 %or25, ptr %7, align 4, !dbg !4834
  br label %if.end26, !dbg !4835

if.end26:                                         ; preds = %if.then24, %if.end19
  br label %if.end28, !dbg !4836

if.else:                                          ; preds = %if.end8
  %arraydecay27 = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 0, !dbg !4837
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 1443, ptr noundef @__func__.spdk_nvme_prchk_flags_parse, ptr noundef @.str.49, ptr noundef %arraydecay27), !dbg !4837
  store i32 -22, ptr %retval, align 4, !dbg !4839
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4839

if.end28:                                         ; preds = %if.end26
  br label %while.cond, !dbg !4796, !llvm.loop !4840

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !4842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4842

cleanup:                                          ; preds = %while.end, %if.else, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 1024, ptr %val) #14, !dbg !4843
  call void @llvm.lifetime.end.p0(i64 32, ptr %key) #14, !dbg !4843
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_len) #14, !dbg !4843
  %9 = load i32, ptr %retval, align 4, !dbg !4843
  ret i32 %9, !dbg !4843
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !4844 ptr @strcasestr(ptr noundef, ptr noundef) #9

; Function Attrs: nounwind ssp uwtable
define ptr @spdk_nvme_prchk_flags_str(i32 noundef %prchk_flags) #0 !dbg !4847 {
entry:
  %retval = alloca ptr, align 8
  %prchk_flags.addr = alloca i32, align 4
  store i32 %prchk_flags, ptr %prchk_flags.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %prchk_flags.addr, metadata !4851, metadata !DIExpression()), !dbg !4852
  %0 = load i32, ptr %prchk_flags.addr, align 4, !dbg !4853
  %and = and i32 %0, 67108864, !dbg !4855
  %tobool = icmp ne i32 %and, 0, !dbg !4855
  br i1 %tobool, label %if.then, label %if.else4, !dbg !4856

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %prchk_flags.addr, align 4, !dbg !4857
  %and1 = and i32 %1, 268435456, !dbg !4860
  %tobool2 = icmp ne i32 %and1, 0, !dbg !4860
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !4861

if.then3:                                         ; preds = %if.then
  store ptr @.str.50, ptr %retval, align 8, !dbg !4862
  br label %return, !dbg !4862

if.else:                                          ; preds = %if.then
  store ptr @.str.51, ptr %retval, align 8, !dbg !4864
  br label %return, !dbg !4864

if.else4:                                         ; preds = %entry
  %2 = load i32, ptr %prchk_flags.addr, align 4, !dbg !4866
  %and5 = and i32 %2, 268435456, !dbg !4869
  %tobool6 = icmp ne i32 %and5, 0, !dbg !4869
  br i1 %tobool6, label %if.then7, label %if.else8, !dbg !4870

if.then7:                                         ; preds = %if.else4
  store ptr @.str.52, ptr %retval, align 8, !dbg !4871
  br label %return, !dbg !4871

if.else8:                                         ; preds = %if.else4
  store ptr null, ptr %retval, align 8, !dbg !4873
  br label %return, !dbg !4873

return:                                           ; preds = %if.else8, %if.then7, %if.else, %if.then3
  %3 = load ptr, ptr %retval, align 8, !dbg !4875
  ret ptr %3, !dbg !4875
}

; Function Attrs: nounwind ssp uwtable
define internal void @nvme_probe_ctx_init(ptr noundef %probe_ctx, ptr noundef %trid, ptr noundef %cb_ctx, ptr noundef %probe_cb, ptr noundef %attach_cb, ptr noundef %remove_cb) #0 !dbg !4876 {
entry:
  %probe_ctx.addr = alloca ptr, align 8
  %trid.addr = alloca ptr, align 8
  %cb_ctx.addr = alloca ptr, align 8
  %probe_cb.addr = alloca ptr, align 8
  %attach_cb.addr = alloca ptr, align 8
  %remove_cb.addr = alloca ptr, align 8
  store ptr %probe_ctx, ptr %probe_ctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %probe_ctx.addr, metadata !4880, metadata !DIExpression()), !dbg !4886
  store ptr %trid, ptr %trid.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %trid.addr, metadata !4881, metadata !DIExpression()), !dbg !4887
  store ptr %cb_ctx, ptr %cb_ctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cb_ctx.addr, metadata !4882, metadata !DIExpression()), !dbg !4888
  store ptr %probe_cb, ptr %probe_cb.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %probe_cb.addr, metadata !4883, metadata !DIExpression()), !dbg !4889
  store ptr %attach_cb, ptr %attach_cb.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %attach_cb.addr, metadata !4884, metadata !DIExpression()), !dbg !4890
  store ptr %remove_cb, ptr %remove_cb.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %remove_cb.addr, metadata !4885, metadata !DIExpression()), !dbg !4891
  %0 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !4892
  %trid1 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %0, i32 0, i32 0, !dbg !4893
  %1 = load ptr, ptr %trid.addr, align 8, !dbg !4894
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %trid1, ptr align 4 %1, i64 564, i1 false), !dbg !4895
  %2 = load ptr, ptr %cb_ctx.addr, align 8, !dbg !4896
  %3 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !4897
  %cb_ctx2 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %3, i32 0, i32 1, !dbg !4898
  store ptr %2, ptr %cb_ctx2, align 8, !dbg !4899
  %4 = load ptr, ptr %probe_cb.addr, align 8, !dbg !4900
  %5 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !4901
  %probe_cb3 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %5, i32 0, i32 2, !dbg !4902
  store ptr %4, ptr %probe_cb3, align 8, !dbg !4903
  %6 = load ptr, ptr %attach_cb.addr, align 8, !dbg !4904
  %7 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !4905
  %attach_cb4 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %7, i32 0, i32 3, !dbg !4906
  store ptr %6, ptr %attach_cb4, align 8, !dbg !4907
  %8 = load ptr, ptr %remove_cb.addr, align 8, !dbg !4908
  %9 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !4909
  %remove_cb5 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %9, i32 0, i32 4, !dbg !4910
  store ptr %8, ptr %remove_cb5, align 8, !dbg !4911
  br label %do.body, !dbg !4912

do.body:                                          ; preds = %entry
  %10 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !4913
  %init_ctrlrs = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %10, i32 0, i32 5, !dbg !4913
  %tqh_first = getelementptr inbounds %struct.anon.102, ptr %init_ctrlrs, i32 0, i32 0, !dbg !4913
  store ptr null, ptr %tqh_first, align 8, !dbg !4913
  %11 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !4913
  %init_ctrlrs6 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %11, i32 0, i32 5, !dbg !4913
  %tqh_first7 = getelementptr inbounds %struct.anon.102, ptr %init_ctrlrs6, i32 0, i32 0, !dbg !4913
  %12 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !4913
  %init_ctrlrs8 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %12, i32 0, i32 5, !dbg !4913
  %tqh_last = getelementptr inbounds %struct.anon.102, ptr %init_ctrlrs8, i32 0, i32 1, !dbg !4913
  store ptr %tqh_first7, ptr %tqh_last, align 8, !dbg !4913
  br label %do.end, !dbg !4913

do.end:                                           ; preds = %do.body
  ret void, !dbg !4915
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @nvme_probe_internal(ptr noundef %probe_ctx, i1 noundef zeroext %direct_connect) #0 !dbg !4916 {
entry:
  %retval = alloca i32, align 4
  %probe_ctx.addr = alloca ptr, align 8
  %direct_connect.addr = alloca i8, align 1
  %rc = alloca i32, align 4
  %ctrlr = alloca ptr, align 8
  %ctrlr_tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %probe_ctx, ptr %probe_ctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %probe_ctx.addr, metadata !4920, metadata !DIExpression()), !dbg !4925
  %frombool = zext i1 %direct_connect to i8
  store i8 %frombool, ptr %direct_connect.addr, align 1
  tail call void @llvm.dbg.declare(metadata ptr %direct_connect.addr, metadata !4921, metadata !DIExpression()), !dbg !4926
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #14, !dbg !4927
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !4922, metadata !DIExpression()), !dbg !4928
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctrlr) #14, !dbg !4929
  tail call void @llvm.dbg.declare(metadata ptr %ctrlr, metadata !4923, metadata !DIExpression()), !dbg !4930
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctrlr_tmp) #14, !dbg !4929
  tail call void @llvm.dbg.declare(metadata ptr %ctrlr_tmp, metadata !4924, metadata !DIExpression()), !dbg !4931
  %0 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !4932
  %trid = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %0, i32 0, i32 0, !dbg !4934
  %trstring = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %trid, i32 0, i32 0, !dbg !4935
  %arraydecay = getelementptr inbounds [33 x i8], ptr %trstring, i64 0, i64 0, !dbg !4932
  %call = call i64 @strlen(ptr noundef %arraydecay) #16, !dbg !4936
  %cmp = icmp eq i64 %call, 0, !dbg !4937
  br i1 %cmp, label %if.then, label %if.end, !dbg !4938

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !4939
  %trid1 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %1, i32 0, i32 0, !dbg !4941
  %2 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !4942
  %trid2 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %2, i32 0, i32 0, !dbg !4943
  %trtype = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %trid2, i32 0, i32 1, !dbg !4944
  %3 = load i32, ptr %trtype, align 4, !dbg !4944
  call void @spdk_nvme_trid_populate_transport(ptr noundef %trid1, i32 noundef %3), !dbg !4945
  br label %if.end, !dbg !4946

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !4947
  %trid3 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %4, i32 0, i32 0, !dbg !4949
  %trstring4 = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %trid3, i32 0, i32 0, !dbg !4950
  %arraydecay5 = getelementptr inbounds [33 x i8], ptr %trstring4, i64 0, i64 0, !dbg !4947
  %call6 = call zeroext i1 @spdk_nvme_transport_available_by_name(ptr noundef %arraydecay5), !dbg !4951
  br i1 %call6, label %if.end13, label %if.then7, !dbg !4952

if.then7:                                         ; preds = %if.end
  %5 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !4953
  %trid8 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %5, i32 0, i32 0, !dbg !4953
  %trtype9 = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %trid8, i32 0, i32 1, !dbg !4953
  %6 = load i32, ptr %trtype9, align 4, !dbg !4953
  %7 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !4953
  %trid10 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %7, i32 0, i32 0, !dbg !4953
  %trstring11 = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %trid10, i32 0, i32 0, !dbg !4953
  %arraydecay12 = getelementptr inbounds [33 x i8], ptr %trstring11, i64 0, i64 0, !dbg !4953
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 807, ptr noundef @__func__.nvme_probe_internal, ptr noundef @.str.59, i32 noundef %6, ptr noundef %arraydecay12), !dbg !4953
  store i32 -1, ptr %retval, align 4, !dbg !4955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4955

if.end13:                                         ; preds = %if.end
  %8 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !4956
  %lock = getelementptr inbounds %struct.nvme_driver, ptr %8, i32 0, i32 0, !dbg !4957
  %call14 = call i32 @nvme_robust_mutex_lock(ptr noundef %lock), !dbg !4958
  %9 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !4959
  %10 = load i8, ptr %direct_connect.addr, align 1, !dbg !4960, !range !2517, !noundef !2518
  %tobool = trunc i8 %10 to i1, !dbg !4960
  %call15 = call i32 @nvme_transport_ctrlr_scan(ptr noundef %9, i1 noundef zeroext %tobool), !dbg !4961
  store i32 %call15, ptr %rc, align 4, !dbg !4962
  %11 = load i32, ptr %rc, align 4, !dbg !4963
  %cmp16 = icmp ne i32 %11, 0, !dbg !4965
  br i1 %cmp16, label %if.then17, label %if.end39, !dbg !4966

if.then17:                                        ; preds = %if.end13
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 815, ptr noundef @__func__.nvme_probe_internal, ptr noundef @.str.60), !dbg !4967
  %12 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !4969
  %init_ctrlrs = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %12, i32 0, i32 5, !dbg !4969
  %tqh_first = getelementptr inbounds %struct.anon.102, ptr %init_ctrlrs, i32 0, i32 0, !dbg !4969
  %13 = load ptr, ptr %tqh_first, align 8, !dbg !4969
  store ptr %13, ptr %ctrlr, align 8, !dbg !4969
  br label %for.cond, !dbg !4969

for.cond:                                         ; preds = %for.inc, %if.then17
  %14 = load ptr, ptr %ctrlr, align 8, !dbg !4971
  %tobool18 = icmp ne ptr %14, null, !dbg !4971
  br i1 %tobool18, label %land.rhs, label %land.end, !dbg !4971

land.rhs:                                         ; preds = %for.cond
  %15 = load ptr, ptr %ctrlr, align 8, !dbg !4971
  %tailq = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %15, i32 0, i32 21, !dbg !4971
  %tqe_next = getelementptr inbounds %struct.anon.93, ptr %tailq, i32 0, i32 0, !dbg !4971
  %16 = load ptr, ptr %tqe_next, align 8, !dbg !4971
  store ptr %16, ptr %ctrlr_tmp, align 8, !dbg !4971
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ true, %land.rhs ], !dbg !4973
  br i1 %17, label %for.body, label %for.end, !dbg !4969

for.body:                                         ; preds = %land.end
  br label %do.body, !dbg !4974

do.body:                                          ; preds = %for.body
  %18 = load ptr, ptr %ctrlr, align 8, !dbg !4976
  %tailq19 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %18, i32 0, i32 21, !dbg !4976
  %tqe_next20 = getelementptr inbounds %struct.anon.93, ptr %tailq19, i32 0, i32 0, !dbg !4976
  %19 = load ptr, ptr %tqe_next20, align 8, !dbg !4976
  %cmp21 = icmp ne ptr %19, null, !dbg !4976
  br i1 %cmp21, label %if.then22, label %if.else, !dbg !4979

if.then22:                                        ; preds = %do.body
  %20 = load ptr, ptr %ctrlr, align 8, !dbg !4976
  %tailq23 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %20, i32 0, i32 21, !dbg !4976
  %tqe_prev = getelementptr inbounds %struct.anon.93, ptr %tailq23, i32 0, i32 1, !dbg !4976
  %21 = load ptr, ptr %tqe_prev, align 8, !dbg !4976
  %22 = load ptr, ptr %ctrlr, align 8, !dbg !4976
  %tailq24 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %22, i32 0, i32 21, !dbg !4976
  %tqe_next25 = getelementptr inbounds %struct.anon.93, ptr %tailq24, i32 0, i32 0, !dbg !4976
  %23 = load ptr, ptr %tqe_next25, align 8, !dbg !4976
  %tailq26 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %23, i32 0, i32 21, !dbg !4976
  %tqe_prev27 = getelementptr inbounds %struct.anon.93, ptr %tailq26, i32 0, i32 1, !dbg !4976
  store ptr %21, ptr %tqe_prev27, align 8, !dbg !4976
  br label %if.end31, !dbg !4976

if.else:                                          ; preds = %do.body
  %24 = load ptr, ptr %ctrlr, align 8, !dbg !4976
  %tailq28 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %24, i32 0, i32 21, !dbg !4976
  %tqe_prev29 = getelementptr inbounds %struct.anon.93, ptr %tailq28, i32 0, i32 1, !dbg !4976
  %25 = load ptr, ptr %tqe_prev29, align 8, !dbg !4976
  %26 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !4976
  %init_ctrlrs30 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %26, i32 0, i32 5, !dbg !4976
  %tqh_last = getelementptr inbounds %struct.anon.102, ptr %init_ctrlrs30, i32 0, i32 1, !dbg !4976
  store ptr %25, ptr %tqh_last, align 8, !dbg !4976
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then22
  %27 = load ptr, ptr %ctrlr, align 8, !dbg !4979
  %tailq32 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %27, i32 0, i32 21, !dbg !4979
  %tqe_next33 = getelementptr inbounds %struct.anon.93, ptr %tailq32, i32 0, i32 0, !dbg !4979
  %28 = load ptr, ptr %tqe_next33, align 8, !dbg !4979
  %29 = load ptr, ptr %ctrlr, align 8, !dbg !4979
  %tailq34 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %29, i32 0, i32 21, !dbg !4979
  %tqe_prev35 = getelementptr inbounds %struct.anon.93, ptr %tailq34, i32 0, i32 1, !dbg !4979
  %30 = load ptr, ptr %tqe_prev35, align 8, !dbg !4979
  store ptr %28, ptr %30, align 8, !dbg !4979
  br label %do.cond, !dbg !4979

do.cond:                                          ; preds = %if.end31
  br label %do.end, !dbg !4979

do.end:                                           ; preds = %do.cond
  %31 = load ptr, ptr %ctrlr, align 8, !dbg !4980
  %call36 = call i32 @nvme_transport_ctrlr_destruct(ptr noundef %31), !dbg !4981
  br label %for.inc, !dbg !4982

for.inc:                                          ; preds = %do.end
  %32 = load ptr, ptr %ctrlr_tmp, align 8, !dbg !4971
  store ptr %32, ptr %ctrlr, align 8, !dbg !4971
  br label %for.cond, !dbg !4971, !llvm.loop !4983

for.end:                                          ; preds = %land.end
  %33 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !4985
  %lock37 = getelementptr inbounds %struct.nvme_driver, ptr %33, i32 0, i32 0, !dbg !4986
  %call38 = call i32 @nvme_robust_mutex_unlock(ptr noundef %lock37), !dbg !4987
  store i32 -1, ptr %retval, align 4, !dbg !4988
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4988

if.end39:                                         ; preds = %if.end13
  %call40 = call zeroext i1 @spdk_process_is_primary(), !dbg !4989
  br i1 %call40, label %if.end77, label %land.lhs.true, !dbg !4991

land.lhs.true:                                    ; preds = %if.end39
  %34 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !4992
  %trid41 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %34, i32 0, i32 0, !dbg !4993
  %trtype42 = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %trid41, i32 0, i32 1, !dbg !4994
  %35 = load i32, ptr %trtype42, align 4, !dbg !4994
  %cmp43 = icmp eq i32 %35, 256, !dbg !4995
  br i1 %cmp43, label %if.then44, label %if.end77, !dbg !4996

if.then44:                                        ; preds = %land.lhs.true
  %36 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !4997
  %shared_attached_ctrlrs = getelementptr inbounds %struct.nvme_driver, ptr %36, i32 0, i32 1, !dbg !4997
  %tqh_first45 = getelementptr inbounds %struct.anon.113, ptr %shared_attached_ctrlrs, i32 0, i32 0, !dbg !4997
  %37 = load ptr, ptr %tqh_first45, align 8, !dbg !4997
  store ptr %37, ptr %ctrlr, align 8, !dbg !4997
  br label %for.cond46, !dbg !4997

for.cond46:                                       ; preds = %for.inc73, %if.then44
  %38 = load ptr, ptr %ctrlr, align 8, !dbg !5000
  %tobool47 = icmp ne ptr %38, null, !dbg !4997
  br i1 %tobool47, label %for.body48, label %for.end76, !dbg !4997

for.body48:                                       ; preds = %for.cond46
  %39 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !5002
  %trid49 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %39, i32 0, i32 0, !dbg !5005
  %traddr = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %trid49, i32 0, i32 3, !dbg !5006
  %arraydecay50 = getelementptr inbounds [257 x i8], ptr %traddr, i64 0, i64 0, !dbg !5002
  %call51 = call i64 @strlen(ptr noundef %arraydecay50) #16, !dbg !5007
  %cmp52 = icmp ne i64 %call51, 0, !dbg !5008
  br i1 %cmp52, label %land.lhs.true53, label %if.end59, !dbg !5009

land.lhs.true53:                                  ; preds = %for.body48
  %40 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !5010
  %trid54 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %40, i32 0, i32 0, !dbg !5011
  %41 = load ptr, ptr %ctrlr, align 8, !dbg !5012
  %trid55 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %41, i32 0, i32 14, !dbg !5013
  %call56 = call i32 @spdk_nvme_transport_id_compare(ptr noundef %trid54, ptr noundef %trid55), !dbg !5014
  %tobool57 = icmp ne i32 %call56, 0, !dbg !5014
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !5015

if.then58:                                        ; preds = %land.lhs.true53
  br label %for.inc73, !dbg !5016

if.end59:                                         ; preds = %land.lhs.true53, %for.body48
  %42 = load ptr, ptr %ctrlr, align 8, !dbg !5018
  %call60 = call ptr @nvme_ctrlr_get_current_process(ptr noundef %42), !dbg !5020
  %cmp61 = icmp eq ptr %call60, null, !dbg !5021
  br i1 %cmp61, label %if.then62, label %if.end63, !dbg !5022

if.then62:                                        ; preds = %if.end59
  br label %for.inc73, !dbg !5023

if.end63:                                         ; preds = %if.end59
  %43 = load ptr, ptr %ctrlr, align 8, !dbg !5025
  call void @nvme_ctrlr_proc_get_ref(ptr noundef %43), !dbg !5026
  %44 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !5027
  %attach_cb = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %44, i32 0, i32 3, !dbg !5029
  %45 = load ptr, ptr %attach_cb, align 8, !dbg !5029
  %tobool64 = icmp ne ptr %45, null, !dbg !5027
  br i1 %tobool64, label %if.then65, label %if.end72, !dbg !5030

if.then65:                                        ; preds = %if.end63
  %46 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !5031
  %lock66 = getelementptr inbounds %struct.nvme_driver, ptr %46, i32 0, i32 0, !dbg !5033
  %call67 = call i32 @nvme_robust_mutex_unlock(ptr noundef %lock66), !dbg !5034
  %47 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !5035
  %attach_cb68 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %47, i32 0, i32 3, !dbg !5036
  %48 = load ptr, ptr %attach_cb68, align 8, !dbg !5036
  %49 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !5037
  %cb_ctx = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %49, i32 0, i32 1, !dbg !5038
  %50 = load ptr, ptr %cb_ctx, align 8, !dbg !5038
  %51 = load ptr, ptr %ctrlr, align 8, !dbg !5039
  %trid69 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %51, i32 0, i32 14, !dbg !5040
  %52 = load ptr, ptr %ctrlr, align 8, !dbg !5041
  %53 = load ptr, ptr %ctrlr, align 8, !dbg !5042
  %opts = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %53, i32 0, i32 37, !dbg !5043
  call void %48(ptr noundef %50, ptr noundef %trid69, ptr noundef %52, ptr noundef %opts), !dbg !5035
  %54 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !5044
  %lock70 = getelementptr inbounds %struct.nvme_driver, ptr %54, i32 0, i32 0, !dbg !5045
  %call71 = call i32 @nvme_robust_mutex_lock(ptr noundef %lock70), !dbg !5046
  br label %if.end72, !dbg !5047

if.end72:                                         ; preds = %if.then65, %if.end63
  br label %for.inc73, !dbg !5048

for.inc73:                                        ; preds = %if.end72, %if.then62, %if.then58
  %55 = load ptr, ptr %ctrlr, align 8, !dbg !5000
  %tailq74 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %55, i32 0, i32 21, !dbg !5000
  %tqe_next75 = getelementptr inbounds %struct.anon.93, ptr %tailq74, i32 0, i32 0, !dbg !5000
  %56 = load ptr, ptr %tqe_next75, align 8, !dbg !5000
  store ptr %56, ptr %ctrlr, align 8, !dbg !5000
  br label %for.cond46, !dbg !5000, !llvm.loop !5049

for.end76:                                        ; preds = %for.cond46
  br label %if.end77, !dbg !5051

if.end77:                                         ; preds = %for.end76, %land.lhs.true, %if.end39
  %57 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !5052
  %lock78 = getelementptr inbounds %struct.nvme_driver, ptr %57, i32 0, i32 0, !dbg !5053
  %call79 = call i32 @nvme_robust_mutex_unlock(ptr noundef %lock78), !dbg !5054
  store i32 0, ptr %retval, align 4, !dbg !5055
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5055

cleanup:                                          ; preds = %if.end77, %for.end, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctrlr_tmp) #14, !dbg !5056
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctrlr) #14, !dbg !5056
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #14, !dbg !5056
  %58 = load i32, ptr %retval, align 4, !dbg !5056
  ret i32 %58, !dbg !5056
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_nvme_probe_poll_async(ptr noundef %probe_ctx) #0 !dbg !5057 {
entry:
  %retval = alloca i32, align 4
  %probe_ctx.addr = alloca ptr, align 8
  %ctrlr = alloca ptr, align 8
  %ctrlr_tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %probe_ctx, ptr %probe_ctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %probe_ctx.addr, metadata !5059, metadata !DIExpression()), !dbg !5062
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctrlr) #14, !dbg !5063
  tail call void @llvm.dbg.declare(metadata ptr %ctrlr, metadata !5060, metadata !DIExpression()), !dbg !5064
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctrlr_tmp) #14, !dbg !5063
  tail call void @llvm.dbg.declare(metadata ptr %ctrlr_tmp, metadata !5061, metadata !DIExpression()), !dbg !5065
  %call = call zeroext i1 @spdk_process_is_primary(), !dbg !5066
  br i1 %call, label %if.end, label %land.lhs.true, !dbg !5068

land.lhs.true:                                    ; preds = %entry
  %0 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !5069
  %trid = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %0, i32 0, i32 0, !dbg !5070
  %trtype = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %trid, i32 0, i32 1, !dbg !5071
  %1 = load i32, ptr %trtype, align 4, !dbg !5071
  %cmp = icmp eq i32 %1, 256, !dbg !5072
  br i1 %cmp, label %if.then, label %if.end, !dbg !5073

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !5074
  call void @free(ptr noundef %2) #14, !dbg !5076
  store i32 0, ptr %retval, align 4, !dbg !5077
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5077

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !5078
  %init_ctrlrs = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %3, i32 0, i32 5, !dbg !5078
  %tqh_first = getelementptr inbounds %struct.anon.102, ptr %init_ctrlrs, i32 0, i32 0, !dbg !5078
  %4 = load ptr, ptr %tqh_first, align 8, !dbg !5078
  store ptr %4, ptr %ctrlr, align 8, !dbg !5078
  br label %for.cond, !dbg !5078

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %ctrlr, align 8, !dbg !5080
  %tobool = icmp ne ptr %5, null, !dbg !5080
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5080

land.rhs:                                         ; preds = %for.cond
  %6 = load ptr, ptr %ctrlr, align 8, !dbg !5080
  %tailq = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %6, i32 0, i32 21, !dbg !5080
  %tqe_next = getelementptr inbounds %struct.anon.93, ptr %tailq, i32 0, i32 0, !dbg !5080
  %7 = load ptr, ptr %tqe_next, align 8, !dbg !5080
  store ptr %7, ptr %ctrlr_tmp, align 8, !dbg !5080
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ true, %land.rhs ], !dbg !5082
  br i1 %8, label %for.body, label %for.end, !dbg !5078

for.body:                                         ; preds = %land.end
  %9 = load ptr, ptr %ctrlr, align 8, !dbg !5083
  %10 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !5085
  call void @nvme_ctrlr_poll_internal(ptr noundef %9, ptr noundef %10), !dbg !5086
  br label %for.inc, !dbg !5087

for.inc:                                          ; preds = %for.body
  %11 = load ptr, ptr %ctrlr_tmp, align 8, !dbg !5080
  store ptr %11, ptr %ctrlr, align 8, !dbg !5080
  br label %for.cond, !dbg !5080, !llvm.loop !5088

for.end:                                          ; preds = %land.end
  %12 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !5090
  %init_ctrlrs1 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %12, i32 0, i32 5, !dbg !5090
  %tqh_first2 = getelementptr inbounds %struct.anon.102, ptr %init_ctrlrs1, i32 0, i32 0, !dbg !5090
  %13 = load ptr, ptr %tqh_first2, align 8, !dbg !5090
  %cmp3 = icmp eq ptr %13, null, !dbg !5090
  br i1 %cmp3, label %if.then4, label %if.end8, !dbg !5092

if.then4:                                         ; preds = %for.end
  %14 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !5093
  %lock = getelementptr inbounds %struct.nvme_driver, ptr %14, i32 0, i32 0, !dbg !5095
  %call5 = call i32 @nvme_robust_mutex_lock(ptr noundef %lock), !dbg !5096
  %15 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !5097
  %initialized = getelementptr inbounds %struct.nvme_driver, ptr %15, i32 0, i32 2, !dbg !5098
  store i8 1, ptr %initialized, align 8, !dbg !5099
  %16 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !5100
  %lock6 = getelementptr inbounds %struct.nvme_driver, ptr %16, i32 0, i32 0, !dbg !5101
  %call7 = call i32 @nvme_robust_mutex_unlock(ptr noundef %lock6), !dbg !5102
  %17 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !5103
  call void @free(ptr noundef %17) #14, !dbg !5104
  store i32 0, ptr %retval, align 4, !dbg !5105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5105

if.end8:                                          ; preds = %for.end
  store i32 -11, ptr %retval, align 4, !dbg !5106
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5106

cleanup:                                          ; preds = %if.end8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctrlr_tmp) #14, !dbg !5107
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctrlr) #14, !dbg !5107
  %18 = load i32, ptr %retval, align 4, !dbg !5107
  ret i32 %18, !dbg !5107
}

; Function Attrs: nounwind ssp uwtable
define internal void @nvme_ctrlr_poll_internal(ptr noundef %ctrlr, ptr noundef %probe_ctx) #0 !dbg !5108 {
entry:
  %ctrlr.addr = alloca ptr, align 8
  %probe_ctx.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctrlr, ptr %ctrlr.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ctrlr.addr, metadata !5112, metadata !DIExpression()), !dbg !5115
  store ptr %probe_ctx, ptr %probe_ctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %probe_ctx.addr, metadata !5113, metadata !DIExpression()), !dbg !5116
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #14, !dbg !5117
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !5114, metadata !DIExpression()), !dbg !5118
  store i32 0, ptr %rc, align 4, !dbg !5118
  %0 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5119
  %call = call i32 @nvme_ctrlr_process_init(ptr noundef %0), !dbg !5120
  store i32 %call, ptr %rc, align 4, !dbg !5121
  %1 = load i32, ptr %rc, align 4, !dbg !5122
  %tobool = icmp ne i32 %1, 0, !dbg !5122
  br i1 %tobool, label %if.then, label %if.end16, !dbg !5124

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5125

do.body:                                          ; preds = %if.then
  %2 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5127
  %tailq = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %2, i32 0, i32 21, !dbg !5127
  %tqe_next = getelementptr inbounds %struct.anon.93, ptr %tailq, i32 0, i32 0, !dbg !5127
  %3 = load ptr, ptr %tqe_next, align 8, !dbg !5127
  %cmp = icmp ne ptr %3, null, !dbg !5127
  br i1 %cmp, label %if.then1, label %if.else, !dbg !5130

if.then1:                                         ; preds = %do.body
  %4 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5127
  %tailq2 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %4, i32 0, i32 21, !dbg !5127
  %tqe_prev = getelementptr inbounds %struct.anon.93, ptr %tailq2, i32 0, i32 1, !dbg !5127
  %5 = load ptr, ptr %tqe_prev, align 8, !dbg !5127
  %6 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5127
  %tailq3 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %6, i32 0, i32 21, !dbg !5127
  %tqe_next4 = getelementptr inbounds %struct.anon.93, ptr %tailq3, i32 0, i32 0, !dbg !5127
  %7 = load ptr, ptr %tqe_next4, align 8, !dbg !5127
  %tailq5 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %7, i32 0, i32 21, !dbg !5127
  %tqe_prev6 = getelementptr inbounds %struct.anon.93, ptr %tailq5, i32 0, i32 1, !dbg !5127
  store ptr %5, ptr %tqe_prev6, align 8, !dbg !5127
  br label %if.end, !dbg !5127

if.else:                                          ; preds = %do.body
  %8 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5127
  %tailq7 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %8, i32 0, i32 21, !dbg !5127
  %tqe_prev8 = getelementptr inbounds %struct.anon.93, ptr %tailq7, i32 0, i32 1, !dbg !5127
  %9 = load ptr, ptr %tqe_prev8, align 8, !dbg !5127
  %10 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !5127
  %init_ctrlrs = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %10, i32 0, i32 5, !dbg !5127
  %tqh_last = getelementptr inbounds %struct.anon.102, ptr %init_ctrlrs, i32 0, i32 1, !dbg !5127
  store ptr %9, ptr %tqh_last, align 8, !dbg !5127
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %11 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5130
  %tailq9 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %11, i32 0, i32 21, !dbg !5130
  %tqe_next10 = getelementptr inbounds %struct.anon.93, ptr %tailq9, i32 0, i32 0, !dbg !5130
  %12 = load ptr, ptr %tqe_next10, align 8, !dbg !5130
  %13 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5130
  %tailq11 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %13, i32 0, i32 21, !dbg !5130
  %tqe_prev12 = getelementptr inbounds %struct.anon.93, ptr %tailq11, i32 0, i32 1, !dbg !5130
  %14 = load ptr, ptr %tqe_prev12, align 8, !dbg !5130
  store ptr %12, ptr %14, align 8, !dbg !5130
  br label %do.cond, !dbg !5130

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !5130

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5131
  %trid = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %15, i32 0, i32 14, !dbg !5131
  %traddr = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %trid, i32 0, i32 3, !dbg !5131
  %arraydecay = getelementptr inbounds [257 x i8], ptr %traddr, i64 0, i64 0, !dbg !5131
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.1, i32 noundef 702, ptr noundef @__func__.nvme_ctrlr_poll_internal, ptr noundef @.str.61, ptr noundef %arraydecay), !dbg !5131
  %16 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5132
  %ctrlr_lock = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %16, i32 0, i32 29, !dbg !5133
  %call13 = call i32 @nvme_robust_mutex_lock(ptr noundef %ctrlr_lock), !dbg !5134
  %17 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5135
  call void @nvme_ctrlr_fail(ptr noundef %17, i1 noundef zeroext false), !dbg !5136
  %18 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5137
  %ctrlr_lock14 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %18, i32 0, i32 29, !dbg !5138
  %call15 = call i32 @nvme_robust_mutex_unlock(ptr noundef %ctrlr_lock14), !dbg !5139
  %19 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5140
  call void @nvme_ctrlr_destruct(ptr noundef %19), !dbg !5141
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5142

if.end16:                                         ; preds = %entry
  %20 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5143
  %state = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %20, i32 0, i32 17, !dbg !5145
  %21 = load i32, ptr %state, align 4, !dbg !5145
  %cmp17 = icmp ne i32 %21, 50, !dbg !5146
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !5147

if.then18:                                        ; preds = %if.end16
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5148

if.end19:                                         ; preds = %if.end16
  br label %do.body20, !dbg !5150

do.body20:                                        ; preds = %if.end19
  %22 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5151
  %io_producers = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %22, i32 0, i32 48, !dbg !5151
  %stqh_first = getelementptr inbounds %struct.anon.100, ptr %io_producers, i32 0, i32 0, !dbg !5151
  store ptr null, ptr %stqh_first, align 8, !dbg !5151
  %23 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5151
  %io_producers21 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %23, i32 0, i32 48, !dbg !5151
  %stqh_first22 = getelementptr inbounds %struct.anon.100, ptr %io_producers21, i32 0, i32 0, !dbg !5151
  %24 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5151
  %io_producers23 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %24, i32 0, i32 48, !dbg !5151
  %stqh_last = getelementptr inbounds %struct.anon.100, ptr %io_producers23, i32 0, i32 1, !dbg !5151
  store ptr %stqh_first22, ptr %stqh_last, align 8, !dbg !5151
  br label %do.cond24, !dbg !5151

do.cond24:                                        ; preds = %do.body20
  br label %do.end25, !dbg !5151

do.end25:                                         ; preds = %do.cond24
  br label %do.body26, !dbg !5153

do.body26:                                        ; preds = %do.end25
  %25 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5154
  %tailq27 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %25, i32 0, i32 21, !dbg !5154
  %tqe_next28 = getelementptr inbounds %struct.anon.93, ptr %tailq27, i32 0, i32 0, !dbg !5154
  %26 = load ptr, ptr %tqe_next28, align 8, !dbg !5154
  %cmp29 = icmp ne ptr %26, null, !dbg !5154
  br i1 %cmp29, label %if.then30, label %if.else37, !dbg !5157

if.then30:                                        ; preds = %do.body26
  %27 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5154
  %tailq31 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %27, i32 0, i32 21, !dbg !5154
  %tqe_prev32 = getelementptr inbounds %struct.anon.93, ptr %tailq31, i32 0, i32 1, !dbg !5154
  %28 = load ptr, ptr %tqe_prev32, align 8, !dbg !5154
  %29 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5154
  %tailq33 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %29, i32 0, i32 21, !dbg !5154
  %tqe_next34 = getelementptr inbounds %struct.anon.93, ptr %tailq33, i32 0, i32 0, !dbg !5154
  %30 = load ptr, ptr %tqe_next34, align 8, !dbg !5154
  %tailq35 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %30, i32 0, i32 21, !dbg !5154
  %tqe_prev36 = getelementptr inbounds %struct.anon.93, ptr %tailq35, i32 0, i32 1, !dbg !5154
  store ptr %28, ptr %tqe_prev36, align 8, !dbg !5154
  br label %if.end42, !dbg !5154

if.else37:                                        ; preds = %do.body26
  %31 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5154
  %tailq38 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %31, i32 0, i32 21, !dbg !5154
  %tqe_prev39 = getelementptr inbounds %struct.anon.93, ptr %tailq38, i32 0, i32 1, !dbg !5154
  %32 = load ptr, ptr %tqe_prev39, align 8, !dbg !5154
  %33 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !5154
  %init_ctrlrs40 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %33, i32 0, i32 5, !dbg !5154
  %tqh_last41 = getelementptr inbounds %struct.anon.102, ptr %init_ctrlrs40, i32 0, i32 1, !dbg !5154
  store ptr %32, ptr %tqh_last41, align 8, !dbg !5154
  br label %if.end42

if.end42:                                         ; preds = %if.else37, %if.then30
  %34 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5157
  %tailq43 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %34, i32 0, i32 21, !dbg !5157
  %tqe_next44 = getelementptr inbounds %struct.anon.93, ptr %tailq43, i32 0, i32 0, !dbg !5157
  %35 = load ptr, ptr %tqe_next44, align 8, !dbg !5157
  %36 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5157
  %tailq45 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %36, i32 0, i32 21, !dbg !5157
  %tqe_prev46 = getelementptr inbounds %struct.anon.93, ptr %tailq45, i32 0, i32 1, !dbg !5157
  %37 = load ptr, ptr %tqe_prev46, align 8, !dbg !5157
  store ptr %35, ptr %37, align 8, !dbg !5157
  br label %do.cond47, !dbg !5157

do.cond47:                                        ; preds = %if.end42
  br label %do.end48, !dbg !5157

do.end48:                                         ; preds = %do.cond47
  %38 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !5158
  %lock = getelementptr inbounds %struct.nvme_driver, ptr %38, i32 0, i32 0, !dbg !5159
  %call49 = call i32 @nvme_robust_mutex_lock(ptr noundef %lock), !dbg !5160
  %39 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5161
  %call50 = call zeroext i1 @nvme_ctrlr_shared(ptr noundef %39), !dbg !5163
  br i1 %call50, label %if.then51, label %if.else66, !dbg !5164

if.then51:                                        ; preds = %do.end48
  br label %do.body52, !dbg !5165

do.body52:                                        ; preds = %if.then51
  %40 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5167
  %tailq53 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %40, i32 0, i32 21, !dbg !5167
  %tqe_next54 = getelementptr inbounds %struct.anon.93, ptr %tailq53, i32 0, i32 0, !dbg !5167
  store ptr null, ptr %tqe_next54, align 8, !dbg !5167
  %41 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !5167
  %shared_attached_ctrlrs = getelementptr inbounds %struct.nvme_driver, ptr %41, i32 0, i32 1, !dbg !5167
  %tqh_last55 = getelementptr inbounds %struct.anon.113, ptr %shared_attached_ctrlrs, i32 0, i32 1, !dbg !5167
  %42 = load ptr, ptr %tqh_last55, align 8, !dbg !5167
  %43 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5167
  %tailq56 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %43, i32 0, i32 21, !dbg !5167
  %tqe_prev57 = getelementptr inbounds %struct.anon.93, ptr %tailq56, i32 0, i32 1, !dbg !5167
  store ptr %42, ptr %tqe_prev57, align 8, !dbg !5167
  %44 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5167
  %45 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !5167
  %shared_attached_ctrlrs58 = getelementptr inbounds %struct.nvme_driver, ptr %45, i32 0, i32 1, !dbg !5167
  %tqh_last59 = getelementptr inbounds %struct.anon.113, ptr %shared_attached_ctrlrs58, i32 0, i32 1, !dbg !5167
  %46 = load ptr, ptr %tqh_last59, align 8, !dbg !5167
  store ptr %44, ptr %46, align 8, !dbg !5167
  %47 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5167
  %tailq60 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %47, i32 0, i32 21, !dbg !5167
  %tqe_next61 = getelementptr inbounds %struct.anon.93, ptr %tailq60, i32 0, i32 0, !dbg !5167
  %48 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !5167
  %shared_attached_ctrlrs62 = getelementptr inbounds %struct.nvme_driver, ptr %48, i32 0, i32 1, !dbg !5167
  %tqh_last63 = getelementptr inbounds %struct.anon.113, ptr %shared_attached_ctrlrs62, i32 0, i32 1, !dbg !5167
  store ptr %tqe_next61, ptr %tqh_last63, align 8, !dbg !5167
  br label %do.cond64, !dbg !5167

do.cond64:                                        ; preds = %do.body52
  br label %do.end65, !dbg !5167

do.end65:                                         ; preds = %do.cond64
  br label %if.end76, !dbg !5169

if.else66:                                        ; preds = %do.end48
  br label %do.body67, !dbg !5170

do.body67:                                        ; preds = %if.else66
  %49 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5172
  %tailq68 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %49, i32 0, i32 21, !dbg !5172
  %tqe_next69 = getelementptr inbounds %struct.anon.93, ptr %tailq68, i32 0, i32 0, !dbg !5172
  store ptr null, ptr %tqe_next69, align 8, !dbg !5172
  %50 = load ptr, ptr getelementptr inbounds (%struct.anon.115, ptr @g_nvme_attached_ctrlrs, i32 0, i32 1), align 8, !dbg !5172
  %51 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5172
  %tailq70 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %51, i32 0, i32 21, !dbg !5172
  %tqe_prev71 = getelementptr inbounds %struct.anon.93, ptr %tailq70, i32 0, i32 1, !dbg !5172
  store ptr %50, ptr %tqe_prev71, align 8, !dbg !5172
  %52 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5172
  %53 = load ptr, ptr getelementptr inbounds (%struct.anon.115, ptr @g_nvme_attached_ctrlrs, i32 0, i32 1), align 8, !dbg !5172
  store ptr %52, ptr %53, align 8, !dbg !5172
  %54 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5172
  %tailq72 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %54, i32 0, i32 21, !dbg !5172
  %tqe_next73 = getelementptr inbounds %struct.anon.93, ptr %tailq72, i32 0, i32 0, !dbg !5172
  store ptr %tqe_next73, ptr getelementptr inbounds (%struct.anon.115, ptr @g_nvme_attached_ctrlrs, i32 0, i32 1), align 8, !dbg !5172
  br label %do.cond74, !dbg !5172

do.cond74:                                        ; preds = %do.body67
  br label %do.end75, !dbg !5172

do.end75:                                         ; preds = %do.cond74
  br label %if.end76

if.end76:                                         ; preds = %do.end75, %do.end65
  %55 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5174
  call void @nvme_ctrlr_proc_get_ref(ptr noundef %55), !dbg !5175
  %56 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !5176
  %lock77 = getelementptr inbounds %struct.nvme_driver, ptr %56, i32 0, i32 0, !dbg !5177
  %call78 = call i32 @nvme_robust_mutex_unlock(ptr noundef %lock77), !dbg !5178
  %57 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !5179
  %attach_cb = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %57, i32 0, i32 3, !dbg !5181
  %58 = load ptr, ptr %attach_cb, align 8, !dbg !5181
  %tobool79 = icmp ne ptr %58, null, !dbg !5179
  br i1 %tobool79, label %if.then80, label %if.end83, !dbg !5182

if.then80:                                        ; preds = %if.end76
  %59 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !5183
  %attach_cb81 = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %59, i32 0, i32 3, !dbg !5185
  %60 = load ptr, ptr %attach_cb81, align 8, !dbg !5185
  %61 = load ptr, ptr %probe_ctx.addr, align 8, !dbg !5186
  %cb_ctx = getelementptr inbounds %struct.spdk_nvme_probe_ctx, ptr %61, i32 0, i32 1, !dbg !5187
  %62 = load ptr, ptr %cb_ctx, align 8, !dbg !5187
  %63 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5188
  %trid82 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %63, i32 0, i32 14, !dbg !5189
  %64 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5190
  %65 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5191
  %opts = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %65, i32 0, i32 37, !dbg !5192
  call void %60(ptr noundef %62, ptr noundef %trid82, ptr noundef %64, ptr noundef %opts), !dbg !5183
  br label %if.end83, !dbg !5193

if.end83:                                         ; preds = %if.then80, %if.end76
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5194
  br label %cleanup, !dbg !5194

cleanup:                                          ; preds = %if.end83, %if.then18, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #14, !dbg !5194
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5194

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @nvme_connect_probe_cb(ptr noundef %cb_ctx, ptr noundef %trid, ptr noundef %opts) #0 !dbg !5195 {
entry:
  %cb_ctx.addr = alloca ptr, align 8
  %trid.addr = alloca ptr, align 8
  %opts.addr = alloca ptr, align 8
  %requested_opts = alloca ptr, align 8
  store ptr %cb_ctx, ptr %cb_ctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cb_ctx.addr, metadata !5197, metadata !DIExpression()), !dbg !5201
  store ptr %trid, ptr %trid.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %trid.addr, metadata !5198, metadata !DIExpression()), !dbg !5202
  store ptr %opts, ptr %opts.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %opts.addr, metadata !5199, metadata !DIExpression()), !dbg !5203
  call void @llvm.lifetime.start.p0(i64 8, ptr %requested_opts) #14, !dbg !5204
  tail call void @llvm.dbg.declare(metadata ptr %requested_opts, metadata !5200, metadata !DIExpression()), !dbg !5205
  %0 = load ptr, ptr %cb_ctx.addr, align 8, !dbg !5206
  store ptr %0, ptr %requested_opts, align 8, !dbg !5205
  %1 = load ptr, ptr %opts.addr, align 8, !dbg !5207
  %2 = load ptr, ptr %requested_opts, align 8, !dbg !5208
  %call = call ptr @memcpy.inline(ptr noundef %1, ptr noundef %2, i64 noundef 818) #14, !dbg !5209
  call void @llvm.lifetime.end.p0(i64 8, ptr %requested_opts) #14, !dbg !5210
  ret i1 true, !dbg !5211
}

; Function Attrs: nounwind ssp uwtable
define internal void @register_flag_nvme() #0 !dbg !5212 {
entry:
  call void @spdk_log_register_flag(ptr noundef @.str.53, ptr noundef @SPDK_LOG_nvme), !dbg !5215
  ret void, !dbg !5215
}

declare !dbg !5216 void @spdk_log_register_flag(ptr noundef, ptr noundef) #2

declare !dbg !5219 i32 @nvme_ctrlr_get_ref_count(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @nvme_ctrlr_detach_async_finish(ptr noundef %ctrlr) #0 !dbg !5220 {
entry:
  %ctrlr.addr = alloca ptr, align 8
  store ptr %ctrlr, ptr %ctrlr.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ctrlr.addr, metadata !5222, metadata !DIExpression()), !dbg !5223
  %0 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !5224
  %lock = getelementptr inbounds %struct.nvme_driver, ptr %0, i32 0, i32 0, !dbg !5225
  %call = call i32 @nvme_robust_mutex_lock(ptr noundef %lock), !dbg !5226
  %1 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5227
  %call1 = call zeroext i1 @nvme_ctrlr_shared(ptr noundef %1), !dbg !5229
  br i1 %call1, label %if.then, label %if.else14, !dbg !5230

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5231

do.body:                                          ; preds = %if.then
  %2 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5233
  %tailq = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %2, i32 0, i32 21, !dbg !5233
  %tqe_next = getelementptr inbounds %struct.anon.93, ptr %tailq, i32 0, i32 0, !dbg !5233
  %3 = load ptr, ptr %tqe_next, align 8, !dbg !5233
  %cmp = icmp ne ptr %3, null, !dbg !5233
  br i1 %cmp, label %if.then2, label %if.else, !dbg !5236

if.then2:                                         ; preds = %do.body
  %4 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5233
  %tailq3 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %4, i32 0, i32 21, !dbg !5233
  %tqe_prev = getelementptr inbounds %struct.anon.93, ptr %tailq3, i32 0, i32 1, !dbg !5233
  %5 = load ptr, ptr %tqe_prev, align 8, !dbg !5233
  %6 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5233
  %tailq4 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %6, i32 0, i32 21, !dbg !5233
  %tqe_next5 = getelementptr inbounds %struct.anon.93, ptr %tailq4, i32 0, i32 0, !dbg !5233
  %7 = load ptr, ptr %tqe_next5, align 8, !dbg !5233
  %tailq6 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %7, i32 0, i32 21, !dbg !5233
  %tqe_prev7 = getelementptr inbounds %struct.anon.93, ptr %tailq6, i32 0, i32 1, !dbg !5233
  store ptr %5, ptr %tqe_prev7, align 8, !dbg !5233
  br label %if.end, !dbg !5233

if.else:                                          ; preds = %do.body
  %8 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5233
  %tailq8 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %8, i32 0, i32 21, !dbg !5233
  %tqe_prev9 = getelementptr inbounds %struct.anon.93, ptr %tailq8, i32 0, i32 1, !dbg !5233
  %9 = load ptr, ptr %tqe_prev9, align 8, !dbg !5233
  %10 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !5233
  %shared_attached_ctrlrs = getelementptr inbounds %struct.nvme_driver, ptr %10, i32 0, i32 1, !dbg !5233
  %tqh_last = getelementptr inbounds %struct.anon.113, ptr %shared_attached_ctrlrs, i32 0, i32 1, !dbg !5233
  store ptr %9, ptr %tqh_last, align 8, !dbg !5233
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %11 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5236
  %tailq10 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %11, i32 0, i32 21, !dbg !5236
  %tqe_next11 = getelementptr inbounds %struct.anon.93, ptr %tailq10, i32 0, i32 0, !dbg !5236
  %12 = load ptr, ptr %tqe_next11, align 8, !dbg !5236
  %13 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5236
  %tailq12 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %13, i32 0, i32 21, !dbg !5236
  %tqe_prev13 = getelementptr inbounds %struct.anon.93, ptr %tailq12, i32 0, i32 1, !dbg !5236
  %14 = load ptr, ptr %tqe_prev13, align 8, !dbg !5236
  store ptr %12, ptr %14, align 8, !dbg !5236
  br label %do.end, !dbg !5236

do.end:                                           ; preds = %if.end
  br label %if.end35, !dbg !5237

if.else14:                                        ; preds = %entry
  br label %do.body15, !dbg !5238

do.body15:                                        ; preds = %if.else14
  %15 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5240
  %tailq16 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %15, i32 0, i32 21, !dbg !5240
  %tqe_next17 = getelementptr inbounds %struct.anon.93, ptr %tailq16, i32 0, i32 0, !dbg !5240
  %16 = load ptr, ptr %tqe_next17, align 8, !dbg !5240
  %cmp18 = icmp ne ptr %16, null, !dbg !5240
  br i1 %cmp18, label %if.then19, label %if.else26, !dbg !5243

if.then19:                                        ; preds = %do.body15
  %17 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5240
  %tailq20 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %17, i32 0, i32 21, !dbg !5240
  %tqe_prev21 = getelementptr inbounds %struct.anon.93, ptr %tailq20, i32 0, i32 1, !dbg !5240
  %18 = load ptr, ptr %tqe_prev21, align 8, !dbg !5240
  %19 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5240
  %tailq22 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %19, i32 0, i32 21, !dbg !5240
  %tqe_next23 = getelementptr inbounds %struct.anon.93, ptr %tailq22, i32 0, i32 0, !dbg !5240
  %20 = load ptr, ptr %tqe_next23, align 8, !dbg !5240
  %tailq24 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %20, i32 0, i32 21, !dbg !5240
  %tqe_prev25 = getelementptr inbounds %struct.anon.93, ptr %tailq24, i32 0, i32 1, !dbg !5240
  store ptr %18, ptr %tqe_prev25, align 8, !dbg !5240
  br label %if.end29, !dbg !5240

if.else26:                                        ; preds = %do.body15
  %21 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5240
  %tailq27 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %21, i32 0, i32 21, !dbg !5240
  %tqe_prev28 = getelementptr inbounds %struct.anon.93, ptr %tailq27, i32 0, i32 1, !dbg !5240
  %22 = load ptr, ptr %tqe_prev28, align 8, !dbg !5240
  store ptr %22, ptr getelementptr inbounds (%struct.anon.115, ptr @g_nvme_attached_ctrlrs, i32 0, i32 1), align 8, !dbg !5240
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %if.then19
  %23 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5243
  %tailq30 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %23, i32 0, i32 21, !dbg !5243
  %tqe_next31 = getelementptr inbounds %struct.anon.93, ptr %tailq30, i32 0, i32 0, !dbg !5243
  %24 = load ptr, ptr %tqe_next31, align 8, !dbg !5243
  %25 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5243
  %tailq32 = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %25, i32 0, i32 21, !dbg !5243
  %tqe_prev33 = getelementptr inbounds %struct.anon.93, ptr %tailq32, i32 0, i32 1, !dbg !5243
  %26 = load ptr, ptr %tqe_prev33, align 8, !dbg !5243
  store ptr %24, ptr %26, align 8, !dbg !5243
  br label %do.end34, !dbg !5243

do.end34:                                         ; preds = %if.end29
  br label %if.end35

if.end35:                                         ; preds = %do.end34, %do.end
  %27 = load ptr, ptr @g_spdk_nvme_driver, align 8, !dbg !5244
  %lock36 = getelementptr inbounds %struct.nvme_driver, ptr %27, i32 0, i32 0, !dbg !5245
  %call37 = call i32 @nvme_robust_mutex_unlock(ptr noundef %lock36), !dbg !5246
  ret void, !dbg !5247
}

declare !dbg !5248 void @nvme_ctrlr_proc_put_ref(ptr noundef) #2

declare !dbg !5249 void @nvme_io_msg_ctrlr_detach(ptr noundef) #2

declare !dbg !5250 void @nvme_ctrlr_destruct_async(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i1 @nvme_ctrlr_shared(ptr noundef %ctrlr) #0 !dbg !5253 {
entry:
  %ctrlr.addr = alloca ptr, align 8
  store ptr %ctrlr, ptr %ctrlr.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ctrlr.addr, metadata !5259, metadata !DIExpression()), !dbg !5260
  %0 = load ptr, ptr %ctrlr.addr, align 8, !dbg !5261
  %trid = getelementptr inbounds %struct.spdk_nvme_ctrlr, ptr %0, i32 0, i32 14, !dbg !5262
  %trtype = getelementptr inbounds %struct.spdk_nvme_transport_id, ptr %trid, i32 0, i32 1, !dbg !5263
  %1 = load i32, ptr %trtype, align 4, !dbg !5263
  %cmp = icmp eq i32 %1, 256, !dbg !5264
  ret i1 %cmp, !dbg !5265
}

declare !dbg !5266 i32 @nvme_ctrlr_destruct_poll_async(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare !dbg !5269 ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #12

; Function Attrs: nounwind
declare !dbg !5272 i32 @pthread_mutex_consistent(ptr noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: inlinehint nounwind ssp uwtable
define internal ptr @nvme_allocate_request(ptr noundef %qpair, ptr noundef %payload, i32 noundef %payload_size, i32 noundef %md_size, ptr noundef %cb_fn, ptr noundef %cb_arg) #7 !dbg !5273 {
entry:
  %retval = alloca ptr, align 8
  %qpair.addr = alloca ptr, align 8
  %payload.addr = alloca ptr, align 8
  %payload_size.addr = alloca i32, align 4
  %md_size.addr = alloca i32, align 4
  %cb_fn.addr = alloca ptr, align 8
  %cb_arg.addr = alloca ptr, align 8
  %req = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %qpair, ptr %qpair.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %qpair.addr, metadata !5279, metadata !DIExpression()), !dbg !5286
  store ptr %payload, ptr %payload.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %payload.addr, metadata !5280, metadata !DIExpression()), !dbg !5287
  store i32 %payload_size, ptr %payload_size.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %payload_size.addr, metadata !5281, metadata !DIExpression()), !dbg !5288
  store i32 %md_size, ptr %md_size.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %md_size.addr, metadata !5282, metadata !DIExpression()), !dbg !5289
  store ptr %cb_fn, ptr %cb_fn.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cb_fn.addr, metadata !5283, metadata !DIExpression()), !dbg !5290
  store ptr %cb_arg, ptr %cb_arg.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cb_arg.addr, metadata !5284, metadata !DIExpression()), !dbg !5291
  call void @llvm.lifetime.start.p0(i64 8, ptr %req) #14, !dbg !5292
  tail call void @llvm.dbg.declare(metadata ptr %req, metadata !5285, metadata !DIExpression()), !dbg !5293
  %0 = load ptr, ptr %qpair.addr, align 8, !dbg !5294
  %free_req = getelementptr inbounds %struct.spdk_nvme_qpair, ptr %0, i32 0, i32 8, !dbg !5294
  %stqh_first = getelementptr inbounds %struct.anon.64, ptr %free_req, i32 0, i32 0, !dbg !5294
  %1 = load ptr, ptr %stqh_first, align 8, !dbg !5294
  store ptr %1, ptr %req, align 8, !dbg !5295
  %2 = load ptr, ptr %req, align 8, !dbg !5296
  %cmp = icmp eq ptr %2, null, !dbg !5298
  br i1 %cmp, label %if.then, label %if.end, !dbg !5299

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %req, align 8, !dbg !5300
  store ptr %3, ptr %retval, align 8, !dbg !5302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5302

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5303

do.body:                                          ; preds = %if.end
  %4 = load ptr, ptr %qpair.addr, align 8, !dbg !5304
  %free_req1 = getelementptr inbounds %struct.spdk_nvme_qpair, ptr %4, i32 0, i32 8, !dbg !5304
  %stqh_first2 = getelementptr inbounds %struct.anon.64, ptr %free_req1, i32 0, i32 0, !dbg !5304
  %5 = load ptr, ptr %stqh_first2, align 8, !dbg !5304
  %stailq = getelementptr inbounds %struct.nvme_request, ptr %5, i32 0, i32 11, !dbg !5304
  %stqe_next = getelementptr inbounds %struct.anon.60, ptr %stailq, i32 0, i32 0, !dbg !5304
  %6 = load ptr, ptr %stqe_next, align 8, !dbg !5304
  %7 = load ptr, ptr %qpair.addr, align 8, !dbg !5304
  %free_req3 = getelementptr inbounds %struct.spdk_nvme_qpair, ptr %7, i32 0, i32 8, !dbg !5304
  %stqh_first4 = getelementptr inbounds %struct.anon.64, ptr %free_req3, i32 0, i32 0, !dbg !5304
  store ptr %6, ptr %stqh_first4, align 8, !dbg !5304
  %cmp5 = icmp eq ptr %6, null, !dbg !5304
  br i1 %cmp5, label %if.then6, label %if.end10, !dbg !5307

if.then6:                                         ; preds = %do.body
  %8 = load ptr, ptr %qpair.addr, align 8, !dbg !5304
  %free_req7 = getelementptr inbounds %struct.spdk_nvme_qpair, ptr %8, i32 0, i32 8, !dbg !5304
  %stqh_first8 = getelementptr inbounds %struct.anon.64, ptr %free_req7, i32 0, i32 0, !dbg !5304
  %9 = load ptr, ptr %qpair.addr, align 8, !dbg !5304
  %free_req9 = getelementptr inbounds %struct.spdk_nvme_qpair, ptr %9, i32 0, i32 8, !dbg !5304
  %stqh_last = getelementptr inbounds %struct.anon.64, ptr %free_req9, i32 0, i32 1, !dbg !5304
  store ptr %stqh_first8, ptr %stqh_last, align 8, !dbg !5304
  br label %if.end10, !dbg !5304

if.end10:                                         ; preds = %if.then6, %do.body
  br label %do.cond, !dbg !5307

do.cond:                                          ; preds = %if.end10
  br label %do.end, !dbg !5307

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %qpair.addr, align 8, !dbg !5308
  %num_outstanding_reqs = getelementptr inbounds %struct.spdk_nvme_qpair, ptr %10, i32 0, i32 6, !dbg !5309
  %11 = load i32, ptr %num_outstanding_reqs, align 4, !dbg !5310
  %inc = add i32 %11, 1, !dbg !5310
  store i32 %inc, ptr %num_outstanding_reqs, align 4, !dbg !5310
  %12 = load ptr, ptr %req, align 8, !dbg !5311
  %call = call ptr @memset.inline(ptr noundef %12, i32 noundef 0, i64 noundef 76) #14, !dbg !5312
  br label %do.body11, !dbg !5313

do.body11:                                        ; preds = %do.end
  %13 = load ptr, ptr %cb_fn.addr, align 8, !dbg !5314
  %14 = load ptr, ptr %req, align 8, !dbg !5314
  %cb_fn12 = getelementptr inbounds %struct.nvme_request, ptr %14, i32 0, i32 9, !dbg !5314
  store ptr %13, ptr %cb_fn12, align 8, !dbg !5314
  %15 = load ptr, ptr %cb_arg.addr, align 8, !dbg !5314
  %16 = load ptr, ptr %req, align 8, !dbg !5314
  %cb_arg13 = getelementptr inbounds %struct.nvme_request, ptr %16, i32 0, i32 10, !dbg !5314
  store ptr %15, ptr %cb_arg13, align 8, !dbg !5314
  %17 = load ptr, ptr %req, align 8, !dbg !5314
  %payload14 = getelementptr inbounds %struct.nvme_request, ptr %17, i32 0, i32 8, !dbg !5314
  %18 = load ptr, ptr %payload.addr, align 8, !dbg !5314
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %payload14, ptr align 8 %18, i64 40, i1 false), !dbg !5314
  %19 = load i32, ptr %payload_size.addr, align 4, !dbg !5314
  %20 = load ptr, ptr %req, align 8, !dbg !5314
  %payload_size15 = getelementptr inbounds %struct.nvme_request, ptr %20, i32 0, i32 6, !dbg !5314
  store i32 %19, ptr %payload_size15, align 4, !dbg !5314
  %21 = load i32, ptr %md_size.addr, align 4, !dbg !5314
  %22 = load ptr, ptr %req, align 8, !dbg !5314
  %md_size16 = getelementptr inbounds %struct.nvme_request, ptr %22, i32 0, i32 16, !dbg !5314
  store i32 %21, ptr %md_size16, align 4, !dbg !5314
  %23 = load i32, ptr @g_spdk_nvme_pid, align 4, !dbg !5314
  %24 = load ptr, ptr %req, align 8, !dbg !5314
  %pid = getelementptr inbounds %struct.nvme_request, ptr %24, i32 0, i32 14, !dbg !5314
  store i32 %23, ptr %pid, align 8, !dbg !5314
  %25 = load ptr, ptr %req, align 8, !dbg !5314
  %submit_tick = getelementptr inbounds %struct.nvme_request, ptr %25, i32 0, i32 13, !dbg !5314
  store i64 0, ptr %submit_tick, align 8, !dbg !5314
  br label %do.cond17, !dbg !5314

do.cond17:                                        ; preds = %do.body11
  br label %do.end18, !dbg !5314

do.end18:                                         ; preds = %do.cond17
  %26 = load ptr, ptr %req, align 8, !dbg !5316
  store ptr %26, ptr %retval, align 8, !dbg !5317
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5317

cleanup:                                          ; preds = %do.end18, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %req) #14, !dbg !5318
  %27 = load ptr, ptr %retval, align 8, !dbg !5318
  ret ptr %27, !dbg !5318
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i32 @spdk_nvme_opc_get_data_transfer(i8 noundef zeroext %opc) #7 !dbg !5319 {
entry:
  %opc.addr = alloca i8, align 1
  store i8 %opc, ptr %opc.addr, align 1
  tail call void @llvm.dbg.declare(metadata ptr %opc.addr, metadata !5323, metadata !DIExpression()), !dbg !5324
  %0 = load i8, ptr %opc.addr, align 1, !dbg !5325
  %conv = zext i8 %0 to i32, !dbg !5325
  %and = and i32 %conv, 3, !dbg !5326
  ret i32 %and, !dbg !5327
}

; Function Attrs: nounwind
declare !dbg !5328 ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !5332 i64 @strspn(ptr noundef, ptr noundef) #9

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !5335 ptr @strchr(ptr noundef, i32 noundef) #9

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !5338 i64 @strcspn(ptr noundef, ptr noundef) #9

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !5339 i64 @strlen(ptr noundef) #9

declare !dbg !5342 zeroext i1 @spdk_nvme_transport_available_by_name(ptr noundef) #2

declare !dbg !5345 i32 @nvme_transport_ctrlr_scan(ptr noundef, i1 noundef zeroext) #2

declare !dbg !5346 i32 @nvme_transport_ctrlr_destruct(ptr noundef) #2

declare !dbg !5347 ptr @nvme_ctrlr_get_current_process(ptr noundef) #2

declare !dbg !5350 i32 @nvme_ctrlr_process_init(ptr noundef) #2

declare !dbg !5351 void @nvme_ctrlr_fail(ptr noundef, i1 noundef zeroext) #2

declare !dbg !5354 void @nvme_ctrlr_destruct(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #12

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #3 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #5 = { alwaysinline nobuiltin nounwind ssp uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #6 = { alwaysinline nounwind "min-legal-vector-width"="0" }
attributes #7 = { inlinehint nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #8 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #9 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2132, !2133, !2134, !2135, !2136}
!llvm.ident = !{!2137}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g_spdk_nvme_pid", scope: !2, file: !3, line: 15, type: !1351, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !233, globals: !235, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "nvme.c", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/nvme", checksumkind: CSK_MD5, checksum: "53158ce1263b4cb8ce23ca3780986b89")
!4 = !{!5, !16, !24, !30, !35, !40, !47, !54, !60, !67, !113, !142, !147, !153, !163, !172, !178}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spdk_nvme_transport_type", file: !6, line: 376, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "include/spdk/nvme.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "13371ed1340962b00ba33b9ce7244175")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15}
!9 = !DIEnumerator(name: "SPDK_NVME_TRANSPORT_PCIE", value: 256)
!10 = !DIEnumerator(name: "SPDK_NVME_TRANSPORT_RDMA", value: 1)
!11 = !DIEnumerator(name: "SPDK_NVME_TRANSPORT_FC", value: 2)
!12 = !DIEnumerator(name: "SPDK_NVME_TRANSPORT_TCP", value: 3)
!13 = !DIEnumerator(name: "SPDK_NVME_TRANSPORT_VFIOUSER", value: 1024)
!14 = !DIEnumerator(name: "SPDK_NVME_TRANSPORT_CUSTOM", value: 4096)
!15 = !DIEnumerator(name: "SPDK_NVME_TRANSPORT_CUSTOM_FABRICS", value: 4097)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spdk_nvmf_adrfam", file: !17, line: 112, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "include/spdk/nvmf_spec.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "c96ebe148b78077838fc7578757a2872")
!18 = !{!19, !20, !21, !22, !23}
!19 = !DIEnumerator(name: "SPDK_NVMF_ADRFAM_IPV4", value: 1)
!20 = !DIEnumerator(name: "SPDK_NVMF_ADRFAM_IPV6", value: 2)
!21 = !DIEnumerator(name: "SPDK_NVMF_ADRFAM_IB", value: 3)
!22 = !DIEnumerator(name: "SPDK_NVMF_ADRFAM_FC", value: 4)
!23 = !DIEnumerator(name: "SPDK_NVMF_ADRFAM_INTRA_HOST", value: 254)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spdk_nvme_cc_ams", file: !25, line: 673, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "include/spdk/nvme_spec.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "3730a8a70b66ab92d6c3f7fce32e0764")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "SPDK_NVME_CC_AMS_RR", value: 0)
!28 = !DIEnumerator(name: "SPDK_NVME_CC_AMS_WRR", value: 1)
!29 = !DIEnumerator(name: "SPDK_NVME_CC_AMS_VS", value: 7)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spdk_nvme_cc_css", file: !25, line: 114, baseType: !7, size: 32, elements: !31)
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "SPDK_NVME_CC_CSS_NVM", value: 0)
!33 = !DIEnumerator(name: "SPDK_NVME_CC_CSS_IOCS", value: 6)
!34 = !DIEnumerator(name: "SPDK_NVME_CC_CSS_NOIO", value: 7)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spdk_nvme_csi", file: !25, line: 3443, baseType: !7, size: 32, elements: !36)
!36 = !{!37, !38, !39}
!37 = !DIEnumerator(name: "SPDK_NVME_CSI_NVM", value: 0)
!38 = !DIEnumerator(name: "SPDK_NVME_CSI_KV", value: 1)
!39 = !DIEnumerator(name: "SPDK_NVME_CSI_ZNS", value: 2)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spdk_nvme_ana_state", file: !25, line: 3349, baseType: !7, size: 32, elements: !41)
!41 = !{!42, !43, !44, !45, !46}
!42 = !DIEnumerator(name: "SPDK_NVME_ANA_OPTIMIZED_STATE", value: 1)
!43 = !DIEnumerator(name: "SPDK_NVME_ANA_NON_OPTIMIZED_STATE", value: 2)
!44 = !DIEnumerator(name: "SPDK_NVME_ANA_INACCESSIBLE_STATE", value: 3)
!45 = !DIEnumerator(name: "SPDK_NVME_ANA_PERSISTENT_LOSS_STATE", value: 4)
!46 = !DIEnumerator(name: "SPDK_NVME_ANA_CHANGE_STATE", value: 15)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nvme_bp_write_state", file: !48, line: 209, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "./nvme_internal.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/nvme", checksumkind: CSK_MD5, checksum: "04676bbf1b99dd9c62226b3af903d233")
!49 = !{!50, !51, !52, !53}
!50 = !DIEnumerator(name: "SPDK_NVME_BP_WS_DOWNLOADING", value: 0)
!51 = !DIEnumerator(name: "SPDK_NVME_BP_WS_DOWNLOADED", value: 1)
!52 = !DIEnumerator(name: "SPDK_NVME_BP_WS_REPLACE", value: 2)
!53 = !DIEnumerator(name: "SPDK_NVME_BP_WS_ACTIVATE", value: 3)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nvme_ctrlr_detach_state", file: !48, line: 1025, baseType: !7, size: 32, elements: !55)
!55 = !{!56, !57, !58, !59}
!56 = !DIEnumerator(name: "NVME_CTRLR_DETACH_SET_CC", value: 0)
!57 = !DIEnumerator(name: "NVME_CTRLR_DETACH_CHECK_CSTS", value: 1)
!58 = !DIEnumerator(name: "NVME_CTRLR_DETACH_GET_CSTS", value: 2)
!59 = !DIEnumerator(name: "NVME_CTRLR_DETACH_GET_CSTS_DONE", value: 3)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spdk_nvme_status_code_type", file: !25, line: 1383, baseType: !7, size: 32, elements: !61)
!61 = !{!62, !63, !64, !65, !66}
!62 = !DIEnumerator(name: "SPDK_NVME_SCT_GENERIC", value: 0)
!63 = !DIEnumerator(name: "SPDK_NVME_SCT_COMMAND_SPECIFIC", value: 1)
!64 = !DIEnumerator(name: "SPDK_NVME_SCT_MEDIA_ERROR", value: 2)
!65 = !DIEnumerator(name: "SPDK_NVME_SCT_PATH", value: 3)
!66 = !DIEnumerator(name: "SPDK_NVME_SCT_VENDOR_SPECIFIC", value: 7)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spdk_nvme_generic_command_status_code", file: !25, line: 1395, baseType: !7, size: 32, elements: !68)
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112}
!69 = !DIEnumerator(name: "SPDK_NVME_SC_SUCCESS", value: 0)
!70 = !DIEnumerator(name: "SPDK_NVME_SC_INVALID_OPCODE", value: 1)
!71 = !DIEnumerator(name: "SPDK_NVME_SC_INVALID_FIELD", value: 2)
!72 = !DIEnumerator(name: "SPDK_NVME_SC_COMMAND_ID_CONFLICT", value: 3)
!73 = !DIEnumerator(name: "SPDK_NVME_SC_DATA_TRANSFER_ERROR", value: 4)
!74 = !DIEnumerator(name: "SPDK_NVME_SC_ABORTED_POWER_LOSS", value: 5)
!75 = !DIEnumerator(name: "SPDK_NVME_SC_INTERNAL_DEVICE_ERROR", value: 6)
!76 = !DIEnumerator(name: "SPDK_NVME_SC_ABORTED_BY_REQUEST", value: 7)
!77 = !DIEnumerator(name: "SPDK_NVME_SC_ABORTED_SQ_DELETION", value: 8)
!78 = !DIEnumerator(name: "SPDK_NVME_SC_ABORTED_FAILED_FUSED", value: 9)
!79 = !DIEnumerator(name: "SPDK_NVME_SC_ABORTED_MISSING_FUSED", value: 10)
!80 = !DIEnumerator(name: "SPDK_NVME_SC_INVALID_NAMESPACE_OR_FORMAT", value: 11)
!81 = !DIEnumerator(name: "SPDK_NVME_SC_COMMAND_SEQUENCE_ERROR", value: 12)
!82 = !DIEnumerator(name: "SPDK_NVME_SC_INVALID_SGL_SEG_DESCRIPTOR", value: 13)
!83 = !DIEnumerator(name: "SPDK_NVME_SC_INVALID_NUM_SGL_DESCIRPTORS", value: 14)
!84 = !DIEnumerator(name: "SPDK_NVME_SC_DATA_SGL_LENGTH_INVALID", value: 15)
!85 = !DIEnumerator(name: "SPDK_NVME_SC_METADATA_SGL_LENGTH_INVALID", value: 16)
!86 = !DIEnumerator(name: "SPDK_NVME_SC_SGL_DESCRIPTOR_TYPE_INVALID", value: 17)
!87 = !DIEnumerator(name: "SPDK_NVME_SC_INVALID_CONTROLLER_MEM_BUF", value: 18)
!88 = !DIEnumerator(name: "SPDK_NVME_SC_INVALID_PRP_OFFSET", value: 19)
!89 = !DIEnumerator(name: "SPDK_NVME_SC_ATOMIC_WRITE_UNIT_EXCEEDED", value: 20)
!90 = !DIEnumerator(name: "SPDK_NVME_SC_OPERATION_DENIED", value: 21)
!91 = !DIEnumerator(name: "SPDK_NVME_SC_INVALID_SGL_OFFSET", value: 22)
!92 = !DIEnumerator(name: "SPDK_NVME_SC_HOSTID_INCONSISTENT_FORMAT", value: 24)
!93 = !DIEnumerator(name: "SPDK_NVME_SC_KEEP_ALIVE_EXPIRED", value: 25)
!94 = !DIEnumerator(name: "SPDK_NVME_SC_KEEP_ALIVE_INVALID", value: 26)
!95 = !DIEnumerator(name: "SPDK_NVME_SC_ABORTED_PREEMPT", value: 27)
!96 = !DIEnumerator(name: "SPDK_NVME_SC_SANITIZE_FAILED", value: 28)
!97 = !DIEnumerator(name: "SPDK_NVME_SC_SANITIZE_IN_PROGRESS", value: 29)
!98 = !DIEnumerator(name: "SPDK_NVME_SC_SGL_DATA_BLOCK_GRANULARITY_INVALID", value: 30)
!99 = !DIEnumerator(name: "SPDK_NVME_SC_COMMAND_INVALID_IN_CMB", value: 31)
!100 = !DIEnumerator(name: "SPDK_NVME_SC_COMMAND_NAMESPACE_IS_PROTECTED", value: 32)
!101 = !DIEnumerator(name: "SPDK_NVME_SC_COMMAND_INTERRUPTED", value: 33)
!102 = !DIEnumerator(name: "SPDK_NVME_SC_COMMAND_TRANSIENT_TRANSPORT_ERROR", value: 34)
!103 = !DIEnumerator(name: "SPDK_NVME_SC_LBA_OUT_OF_RANGE", value: 128)
!104 = !DIEnumerator(name: "SPDK_NVME_SC_CAPACITY_EXCEEDED", value: 129)
!105 = !DIEnumerator(name: "SPDK_NVME_SC_NAMESPACE_NOT_READY", value: 130)
!106 = !DIEnumerator(name: "SPDK_NVME_SC_RESERVATION_CONFLICT", value: 131)
!107 = !DIEnumerator(name: "SPDK_NVME_SC_FORMAT_IN_PROGRESS", value: 132)
!108 = !DIEnumerator(name: "SPDK_NVME_SC_INVALID_VALUE_SIZE", value: 133)
!109 = !DIEnumerator(name: "SPDK_NVME_SC_INVALID_KEY_SIZE", value: 134)
!110 = !DIEnumerator(name: "SPDK_NVME_SC_KV_KEY_DOES_NOT_EXIST", value: 135)
!111 = !DIEnumerator(name: "SPDK_NVME_SC_UNRECOVERED_ERROR", value: 136)
!112 = !DIEnumerator(name: "SPDK_NVME_SC_KEY_EXISTS", value: 137)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spdk_nvme_admin_opcode", file: !25, line: 1546, baseType: !7, size: 32, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!115 = !DIEnumerator(name: "SPDK_NVME_OPC_DELETE_IO_SQ", value: 0)
!116 = !DIEnumerator(name: "SPDK_NVME_OPC_CREATE_IO_SQ", value: 1)
!117 = !DIEnumerator(name: "SPDK_NVME_OPC_GET_LOG_PAGE", value: 2)
!118 = !DIEnumerator(name: "SPDK_NVME_OPC_DELETE_IO_CQ", value: 4)
!119 = !DIEnumerator(name: "SPDK_NVME_OPC_CREATE_IO_CQ", value: 5)
!120 = !DIEnumerator(name: "SPDK_NVME_OPC_IDENTIFY", value: 6)
!121 = !DIEnumerator(name: "SPDK_NVME_OPC_ABORT", value: 8)
!122 = !DIEnumerator(name: "SPDK_NVME_OPC_SET_FEATURES", value: 9)
!123 = !DIEnumerator(name: "SPDK_NVME_OPC_GET_FEATURES", value: 10)
!124 = !DIEnumerator(name: "SPDK_NVME_OPC_ASYNC_EVENT_REQUEST", value: 12)
!125 = !DIEnumerator(name: "SPDK_NVME_OPC_NS_MANAGEMENT", value: 13)
!126 = !DIEnumerator(name: "SPDK_NVME_OPC_FIRMWARE_COMMIT", value: 16)
!127 = !DIEnumerator(name: "SPDK_NVME_OPC_FIRMWARE_IMAGE_DOWNLOAD", value: 17)
!128 = !DIEnumerator(name: "SPDK_NVME_OPC_DEVICE_SELF_TEST", value: 20)
!129 = !DIEnumerator(name: "SPDK_NVME_OPC_NS_ATTACHMENT", value: 21)
!130 = !DIEnumerator(name: "SPDK_NVME_OPC_KEEP_ALIVE", value: 24)
!131 = !DIEnumerator(name: "SPDK_NVME_OPC_DIRECTIVE_SEND", value: 25)
!132 = !DIEnumerator(name: "SPDK_NVME_OPC_DIRECTIVE_RECEIVE", value: 26)
!133 = !DIEnumerator(name: "SPDK_NVME_OPC_VIRTUALIZATION_MANAGEMENT", value: 28)
!134 = !DIEnumerator(name: "SPDK_NVME_OPC_NVME_MI_SEND", value: 29)
!135 = !DIEnumerator(name: "SPDK_NVME_OPC_NVME_MI_RECEIVE", value: 30)
!136 = !DIEnumerator(name: "SPDK_NVME_OPC_DOORBELL_BUFFER_CONFIG", value: 124)
!137 = !DIEnumerator(name: "SPDK_NVME_OPC_FORMAT_NVM", value: 128)
!138 = !DIEnumerator(name: "SPDK_NVME_OPC_SECURITY_SEND", value: 129)
!139 = !DIEnumerator(name: "SPDK_NVME_OPC_SECURITY_RECEIVE", value: 130)
!140 = !DIEnumerator(name: "SPDK_NVME_OPC_SANITIZE", value: 132)
!141 = !DIEnumerator(name: "SPDK_NVME_OPC_GET_LBA_STATUS", value: 134)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !143, line: 144, baseType: !7, size: 32, elements: !144)
!143 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "5205981c6f80cc3dc1e81231df63d8ef")
!144 = !{!145, !146}
!145 = !DIEnumerator(name: "PTHREAD_PROCESS_PRIVATE", value: 0)
!146 = !DIEnumerator(name: "PTHREAD_PROCESS_SHARED", value: 1)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !143, line: 69, baseType: !7, size: 32, elements: !148)
!148 = !{!149, !150, !151, !152}
!149 = !DIEnumerator(name: "PTHREAD_MUTEX_STALLED", value: 0)
!150 = !DIEnumerator(name: "PTHREAD_MUTEX_STALLED_NP", value: 0)
!151 = !DIEnumerator(name: "PTHREAD_MUTEX_ROBUST", value: 1)
!152 = !DIEnumerator(name: "PTHREAD_MUTEX_ROBUST_NP", value: 1)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spdk_log_level", file: !154, line: 52, baseType: !155, size: 32, elements: !156)
!154 = !DIFile(filename: "include/spdk/log.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "dc79cb206a5da324f77777fd137cb5d7")
!155 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!156 = !{!157, !158, !159, !160, !161, !162}
!157 = !DIEnumerator(name: "SPDK_LOG_DISABLED", value: -1)
!158 = !DIEnumerator(name: "SPDK_LOG_ERROR", value: 0)
!159 = !DIEnumerator(name: "SPDK_LOG_WARN", value: 1)
!160 = !DIEnumerator(name: "SPDK_LOG_NOTICE", value: 2)
!161 = !DIEnumerator(name: "SPDK_LOG_INFO", value: 3)
!162 = !DIEnumerator(name: "SPDK_LOG_DEBUG", value: 4)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nvme_qpair_state", file: !48, line: 400, baseType: !7, size: 32, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171}
!165 = !DIEnumerator(name: "NVME_QPAIR_DISCONNECTED", value: 0)
!166 = !DIEnumerator(name: "NVME_QPAIR_DISCONNECTING", value: 1)
!167 = !DIEnumerator(name: "NVME_QPAIR_CONNECTING", value: 2)
!168 = !DIEnumerator(name: "NVME_QPAIR_CONNECTED", value: 3)
!169 = !DIEnumerator(name: "NVME_QPAIR_ENABLING", value: 4)
!170 = !DIEnumerator(name: "NVME_QPAIR_ENABLED", value: 5)
!171 = !DIEnumerator(name: "NVME_QPAIR_DESTROYING", value: 6)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spdk_nvme_data_transfer", file: !25, line: 1628, baseType: !7, size: 32, elements: !173)
!173 = !{!174, !175, !176, !177}
!174 = !DIEnumerator(name: "SPDK_NVME_DATA_NONE", value: 0)
!175 = !DIEnumerator(name: "SPDK_NVME_DATA_HOST_TO_CONTROLLER", value: 1)
!176 = !DIEnumerator(name: "SPDK_NVME_DATA_CONTROLLER_TO_HOST", value: 2)
!177 = !DIEnumerator(name: "SPDK_NVME_DATA_BIDIRECTIONAL", value: 3)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nvme_ctrlr_state", file: !48, line: 538, baseType: !7, size: 32, elements: !179)
!179 = !{!180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232}
!180 = !DIEnumerator(name: "NVME_CTRLR_STATE_INIT_DELAY", value: 0)
!181 = !DIEnumerator(name: "NVME_CTRLR_STATE_CONNECT_ADMINQ", value: 1)
!182 = !DIEnumerator(name: "NVME_CTRLR_STATE_INIT", value: 1)
!183 = !DIEnumerator(name: "NVME_CTRLR_STATE_WAIT_FOR_CONNECT_ADMINQ", value: 2)
!184 = !DIEnumerator(name: "NVME_CTRLR_STATE_READ_VS", value: 3)
!185 = !DIEnumerator(name: "NVME_CTRLR_STATE_READ_VS_WAIT_FOR_VS", value: 4)
!186 = !DIEnumerator(name: "NVME_CTRLR_STATE_READ_CAP", value: 5)
!187 = !DIEnumerator(name: "NVME_CTRLR_STATE_READ_CAP_WAIT_FOR_CAP", value: 6)
!188 = !DIEnumerator(name: "NVME_CTRLR_STATE_CHECK_EN", value: 7)
!189 = !DIEnumerator(name: "NVME_CTRLR_STATE_CHECK_EN_WAIT_FOR_CC", value: 8)
!190 = !DIEnumerator(name: "NVME_CTRLR_STATE_DISABLE_WAIT_FOR_READY_1", value: 9)
!191 = !DIEnumerator(name: "NVME_CTRLR_STATE_DISABLE_WAIT_FOR_READY_1_WAIT_FOR_CSTS", value: 10)
!192 = !DIEnumerator(name: "NVME_CTRLR_STATE_SET_EN_0", value: 11)
!193 = !DIEnumerator(name: "NVME_CTRLR_STATE_SET_EN_0_WAIT_FOR_CC", value: 12)
!194 = !DIEnumerator(name: "NVME_CTRLR_STATE_DISABLE_WAIT_FOR_READY_0", value: 13)
!195 = !DIEnumerator(name: "NVME_CTRLR_STATE_DISABLE_WAIT_FOR_READY_0_WAIT_FOR_CSTS", value: 14)
!196 = !DIEnumerator(name: "NVME_CTRLR_STATE_DISABLED", value: 15)
!197 = !DIEnumerator(name: "NVME_CTRLR_STATE_ENABLE", value: 16)
!198 = !DIEnumerator(name: "NVME_CTRLR_STATE_ENABLE_WAIT_FOR_CC", value: 17)
!199 = !DIEnumerator(name: "NVME_CTRLR_STATE_ENABLE_WAIT_FOR_READY_1", value: 18)
!200 = !DIEnumerator(name: "NVME_CTRLR_STATE_ENABLE_WAIT_FOR_READY_1_WAIT_FOR_CSTS", value: 19)
!201 = !DIEnumerator(name: "NVME_CTRLR_STATE_RESET_ADMIN_QUEUE", value: 20)
!202 = !DIEnumerator(name: "NVME_CTRLR_STATE_IDENTIFY", value: 21)
!203 = !DIEnumerator(name: "NVME_CTRLR_STATE_WAIT_FOR_IDENTIFY", value: 22)
!204 = !DIEnumerator(name: "NVME_CTRLR_STATE_CONFIGURE_AER", value: 23)
!205 = !DIEnumerator(name: "NVME_CTRLR_STATE_WAIT_FOR_CONFIGURE_AER", value: 24)
!206 = !DIEnumerator(name: "NVME_CTRLR_STATE_SET_KEEP_ALIVE_TIMEOUT", value: 25)
!207 = !DIEnumerator(name: "NVME_CTRLR_STATE_WAIT_FOR_KEEP_ALIVE_TIMEOUT", value: 26)
!208 = !DIEnumerator(name: "NVME_CTRLR_STATE_IDENTIFY_IOCS_SPECIFIC", value: 27)
!209 = !DIEnumerator(name: "NVME_CTRLR_STATE_WAIT_FOR_IDENTIFY_IOCS_SPECIFIC", value: 28)
!210 = !DIEnumerator(name: "NVME_CTRLR_STATE_GET_ZNS_CMD_EFFECTS_LOG", value: 29)
!211 = !DIEnumerator(name: "NVME_CTRLR_STATE_WAIT_FOR_GET_ZNS_CMD_EFFECTS_LOG", value: 30)
!212 = !DIEnumerator(name: "NVME_CTRLR_STATE_SET_NUM_QUEUES", value: 31)
!213 = !DIEnumerator(name: "NVME_CTRLR_STATE_WAIT_FOR_SET_NUM_QUEUES", value: 32)
!214 = !DIEnumerator(name: "NVME_CTRLR_STATE_IDENTIFY_ACTIVE_NS", value: 33)
!215 = !DIEnumerator(name: "NVME_CTRLR_STATE_WAIT_FOR_IDENTIFY_ACTIVE_NS", value: 34)
!216 = !DIEnumerator(name: "NVME_CTRLR_STATE_IDENTIFY_NS", value: 35)
!217 = !DIEnumerator(name: "NVME_CTRLR_STATE_WAIT_FOR_IDENTIFY_NS", value: 36)
!218 = !DIEnumerator(name: "NVME_CTRLR_STATE_IDENTIFY_ID_DESCS", value: 37)
!219 = !DIEnumerator(name: "NVME_CTRLR_STATE_IDENTIFY_NS_IOCS_SPECIFIC", value: 38)
!220 = !DIEnumerator(name: "NVME_CTRLR_STATE_WAIT_FOR_IDENTIFY_NS_IOCS_SPECIFIC", value: 39)
!221 = !DIEnumerator(name: "NVME_CTRLR_STATE_WAIT_FOR_IDENTIFY_ID_DESCS", value: 40)
!222 = !DIEnumerator(name: "NVME_CTRLR_STATE_SET_SUPPORTED_LOG_PAGES", value: 41)
!223 = !DIEnumerator(name: "NVME_CTRLR_STATE_SET_SUPPORTED_INTEL_LOG_PAGES", value: 42)
!224 = !DIEnumerator(name: "NVME_CTRLR_STATE_WAIT_FOR_SUPPORTED_INTEL_LOG_PAGES", value: 43)
!225 = !DIEnumerator(name: "NVME_CTRLR_STATE_SET_SUPPORTED_FEATURES", value: 44)
!226 = !DIEnumerator(name: "NVME_CTRLR_STATE_SET_DB_BUF_CFG", value: 45)
!227 = !DIEnumerator(name: "NVME_CTRLR_STATE_WAIT_FOR_DB_BUF_CFG", value: 46)
!228 = !DIEnumerator(name: "NVME_CTRLR_STATE_SET_HOST_ID", value: 47)
!229 = !DIEnumerator(name: "NVME_CTRLR_STATE_WAIT_FOR_HOST_ID", value: 48)
!230 = !DIEnumerator(name: "NVME_CTRLR_STATE_TRANSPORT_READY", value: 49)
!231 = !DIEnumerator(name: "NVME_CTRLR_STATE_READY", value: 50)
!232 = !DIEnumerator(name: "NVME_CTRLR_STATE_ERROR", value: 51)
!233 = !{!234, !155, !172}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!235 = !{!236, !280, !285, !290, !294, !299, !304, !309, !314, !316, !321, !323, !328, !333, !338, !343, !348, !353, !358, !360, !365, !370, !372, !377, !382, !384, !386, !388, !390, !392, !395, !400, !402, !407, !412, !414, !416, !418, !423, !428, !433, !435, !440, !442, !444, !446, !451, !453, !455, !460, !465, !468, !470, !472, !475, !480, !485, !487, !489, !492, !497, !502, !507, !509, !524, !0, !2095, !2097, !2103, !2105, !2108, !2111, !2113, !2115, !2117, !2120, !2125, !2127, !2130}
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "g_init_mutex", scope: !238, file: !3, line: 538, type: !249, isLocal: true, isDefinition: true)
!238 = distinct !DISubprogram(name: "nvme_driver_init", scope: !3, file: !3, line: 536, type: !239, scopeLine: 537, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !241)
!239 = !DISubroutineType(types: !240)
!240 = !{!155}
!241 = !{!242, !243, !244}
!242 = !DILocalVariable(name: "ret", scope: !238, file: !3, line: 539, type: !155)
!243 = !DILocalVariable(name: "socket_id", scope: !238, file: !3, line: 541, type: !155)
!244 = !DILocalVariable(name: "ms_waited", scope: !245, file: !3, line: 581, type: !155)
!245 = distinct !DILexicalBlock(scope: !246, file: !3, line: 580, column: 35)
!246 = distinct !DILexicalBlock(scope: !247, file: !3, line: 580, column: 7)
!247 = distinct !DILexicalBlock(scope: !248, file: !3, line: 576, column: 9)
!248 = distinct !DILexicalBlock(scope: !238, file: !3, line: 560, column: 6)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !250, line: 72, baseType: !251)
!250 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!251 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !250, line: 67, size: 320, elements: !252)
!252 = !{!253, !273, !278}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !251, file: !250, line: 69, baseType: !254, size: 320)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !255, line: 22, size: 320, elements: !256)
!255 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!256 = !{!257, !258, !259, !260, !261, !262, !264, !265}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !254, file: !255, line: 24, baseType: !155, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !254, file: !255, line: 25, baseType: !7, size: 32, offset: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !254, file: !255, line: 26, baseType: !155, size: 32, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !254, file: !255, line: 28, baseType: !7, size: 32, offset: 96)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !254, file: !255, line: 32, baseType: !155, size: 32, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !254, file: !255, line: 34, baseType: !263, size: 16, offset: 160)
!263 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !254, file: !255, line: 35, baseType: !263, size: 16, offset: 176)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !254, file: !255, line: 36, baseType: !266, size: 128, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !267, line: 55, baseType: !268)
!267 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !267, line: 51, size: 128, elements: !269)
!269 = !{!270, !272}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !268, file: !267, line: 53, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !268, file: !267, line: 54, baseType: !271, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !251, file: !250, line: 70, baseType: !274, size: 320)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 320, elements: !276)
!275 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!276 = !{!277}
!277 = !DISubrange(count: 40)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !251, file: !250, line: 71, baseType: !279, size: 64)
!279 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !3, line: 566, type: !282, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 136, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 17)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !3, line: 572, type: !287, isLocal: true, isDefinition: true)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 56, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 7)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !3, line: 572, type: !292, isLocal: true, isDefinition: true)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 136, elements: !283)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !3, line: 572, type: !296, isLocal: true, isDefinition: true)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 336, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 42)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !3, line: 590, type: !301, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 360, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 45)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !3, line: 595, type: !306, isLocal: true, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 288, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 36)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !3, line: 612, type: !311, isLocal: true, isDefinition: true)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 224, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 28)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !3, line: 658, type: !292, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !3, line: 658, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 392, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 49)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !3, line: 677, type: !318, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !3, line: 892, type: !325, isLocal: true, isDefinition: true)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 128, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 16)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !3, line: 892, type: !330, isLocal: true, isDefinition: true)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 232, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 29)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !3, line: 983, type: !335, isLocal: true, isDefinition: true)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 144, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 18)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !3, line: 983, type: !340, isLocal: true, isDefinition: true)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 216, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 27)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1012, type: !345, isLocal: true, isDefinition: true)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 8, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 1)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1017, type: !350, isLocal: true, isDefinition: true)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 24, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 3)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1020, type: !355, isLocal: true, isDefinition: true)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 40, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 5)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1023, type: !355, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1026, type: !362, isLocal: true, isDefinition: true)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 32, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 4)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1029, type: !367, isLocal: true, isDefinition: true)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 72, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 9)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1032, type: !287, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1035, type: !374, isLocal: true, isDefinition: true)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 272, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 34)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1035, type: !379, isLocal: true, isDefinition: true)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 200, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 25)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1039, type: !350, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1072, type: !355, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1116, type: !355, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1118, type: !355, isLocal: true, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1120, type: !350, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1218, type: !394, isLocal: true, isDefinition: true)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 232, elements: !331)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1218, type: !397, isLocal: true, isDefinition: true)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 240, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 30)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1222, type: !287, isLocal: true, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1224, type: !404, isLocal: true, isDefinition: true)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 192, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 24)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1228, type: !409, isLocal: true, isDefinition: true)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 168, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 21)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1231, type: !287, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1233, type: !409, isLocal: true, isDefinition: true)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1236, type: !287, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1238, type: !420, isLocal: true, isDefinition: true)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 408, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 51)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1243, type: !425, isLocal: true, isDefinition: true)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 64, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 8)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1245, type: !430, isLocal: true, isDefinition: true)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 416, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 52)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1250, type: !367, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1252, type: !437, isLocal: true, isDefinition: true)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 424, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 53)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1257, type: !287, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1259, type: !420, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1264, type: !367, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1266, type: !448, isLocal: true, isDefinition: true)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 80, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 10)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1268, type: !425, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1270, type: !350, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1282, type: !457, isLocal: true, isDefinition: true)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 88, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 11)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1289, type: !462, isLocal: true, isDefinition: true)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 248, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 31)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1315, type: !467, isLocal: true, isDefinition: true)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 192, elements: !405)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1315, type: !379, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1336, type: !437, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1431, type: !474, isLocal: true, isDefinition: true)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 224, elements: !312)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1431, type: !477, isLocal: true, isDefinition: true)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 184, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 23)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1435, type: !482, isLocal: true, isDefinition: true)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 48, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 6)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1436, type: !287, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1439, type: !482, isLocal: true, isDefinition: true)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1443, type: !491, isLocal: true, isDefinition: true)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 144, elements: !336)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1456, type: !494, isLocal: true, isDefinition: true)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 152, elements: !495)
!495 = !{!496}
!496 = !DISubrange(count: 19)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1458, type: !499, isLocal: true, isDefinition: true)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 104, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 13)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1462, type: !504, isLocal: true, isDefinition: true)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 96, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 12)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1557, type: !355, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(name: "SPDK_LOG_nvme", scope: !2, file: !3, line: 1557, type: !511, isLocal: false, isDefinition: true)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_log_flag", file: !154, line: 183, size: 256, elements: !512)
!512 = !{!513, !520, !522}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "tailq", scope: !511, file: !154, line: 184, baseType: !514, size: 128)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !511, file: !154, line: 184, size: 128, elements: !515)
!515 = !{!516, !518}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !514, file: !154, line: 184, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !514, file: !154, line: 184, baseType: !519, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !511, file: !154, line: 185, baseType: !521, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !511, file: !154, line: 186, baseType: !523, size: 8, offset: 192)
!523 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(name: "g_spdk_nvme_driver", scope: !2, file: !3, line: 14, type: !526, isLocal: false, isDefinition: true)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nvme_driver", file: !48, line: 1047, size: 640, elements: !528)
!528 = !{!529, !530, !2085, !2086, !2094}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !527, file: !48, line: 1048, baseType: !249, size: 320)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "shared_attached_ctrlrs", scope: !527, file: !48, line: 1051, baseType: !531, size: 128, offset: 320)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !527, file: !48, line: 1051, size: 128, elements: !532)
!532 = !{!533, !2084}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !531, file: !48, line: 1051, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_ctrlr", file: !48, line: 863, size: 53824, elements: !536)
!536 = !{!537, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !772, !793, !803, !804, !805, !806, !807, !813, !815, !816, !817, !818, !819, !820, !1551, !1552, !1553, !1554, !1555, !1905, !1914, !1918, !1923, !1966, !1967, !1968, !1973, !1978, !1979, !1984, !1985, !1986, !1987, !1990, !2010, !2017, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2068}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !535, file: !48, line: 867, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nvme_ns_tree", file: !48, line: 867, size: 64, elements: !539)
!539 = !{!540}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "rbh_root", scope: !538, file: !48, line: 867, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_ns", file: !48, line: 497, size: 66240, elements: !543)
!543 = !{!544, !545, !550, !551, !552, !553, !554, !555, !556, !557, !561, !562, !563, !570, !571, !572, !696, !734}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ctrlr", scope: !542, file: !48, line: 498, baseType: !534, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "sector_size", scope: !542, file: !48, line: 499, baseType: !546, size: 32, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !547, line: 26, baseType: !548)
!547 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !549, line: 42, baseType: !7)
!549 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!550 = !DIDerivedType(tag: DW_TAG_member, name: "extended_lba_size", scope: !542, file: !48, line: 506, baseType: !546, size: 32, offset: 96)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "md_size", scope: !542, file: !48, line: 508, baseType: !546, size: 32, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "pi_type", scope: !542, file: !48, line: 509, baseType: !546, size: 32, offset: 160)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "sectors_per_max_io", scope: !542, file: !48, line: 510, baseType: !546, size: 32, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "sectors_per_max_io_no_md", scope: !542, file: !48, line: 511, baseType: !546, size: 32, offset: 224)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "sectors_per_stripe", scope: !542, file: !48, line: 512, baseType: !546, size: 32, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !542, file: !48, line: 513, baseType: !546, size: 32, offset: 288)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !542, file: !48, line: 514, baseType: !558, size: 16, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !547, line: 25, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !549, line: 40, baseType: !560)
!560 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !542, file: !48, line: 515, baseType: !523, size: 8, offset: 336)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "csi", scope: !542, file: !48, line: 518, baseType: !35, size: 32, offset: 352)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "id_desc_list", scope: !542, file: !48, line: 521, baseType: !564, size: 32768, offset: 384)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 32768, elements: !568)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !547, line: 24, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !549, line: 38, baseType: !567)
!567 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!568 = !{!569}
!569 = !DISubrange(count: 4096)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ana_group_id", scope: !542, file: !48, line: 523, baseType: !546, size: 32, offset: 33152)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "ana_state", scope: !542, file: !48, line: 524, baseType: !40, size: 32, offset: 33184)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "nsdata", scope: !542, file: !48, line: 527, baseType: !573, size: 32768, offset: 33216)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_ns_data", file: !25, line: 2532, size: 32768, elements: !574)
!574 = !{!575, !579, !580, !581, !590, !591, !597, !603, !611, !617, !622, !637, !642, !653, !654, !655, !656, !657, !658, !659, !660, !664, !665, !666, !667, !668, !669, !670, !671, !672, !674, !675, !677, !679, !680, !688, !692}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "nsze", scope: !573, file: !25, line: 2534, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !547, line: 27, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !549, line: 45, baseType: !578)
!578 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ncap", scope: !573, file: !25, line: 2537, baseType: !576, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "nuse", scope: !573, file: !25, line: 2540, baseType: !576, size: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "nsfeat", scope: !573, file: !25, line: 2560, baseType: !582, size: 8, offset: 192)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !573, file: !25, line: 2543, size: 8, elements: !583)
!583 = !{!584, !585, !586, !587, !588, !589}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "thin_prov", scope: !582, file: !25, line: 2545, baseType: !565, size: 1, flags: DIFlagBitField, extraData: i64 0)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ns_atomic_write_unit", scope: !582, file: !25, line: 2548, baseType: !565, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "dealloc_or_unwritten_error", scope: !582, file: !25, line: 2551, baseType: !565, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "guid_never_reused", scope: !582, file: !25, line: 2554, baseType: !565, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "optperf", scope: !582, file: !25, line: 2557, baseType: !565, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !582, file: !25, line: 2559, baseType: !565, size: 3, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "nlbaf", scope: !573, file: !25, line: 2563, baseType: !565, size: 8, offset: 200)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "flbas", scope: !573, file: !25, line: 2570, baseType: !592, size: 8, offset: 208)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !573, file: !25, line: 2566, size: 8, elements: !593)
!593 = !{!594, !595, !596}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !592, file: !25, line: 2567, baseType: !565, size: 4, flags: DIFlagBitField, extraData: i64 0)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "extended", scope: !592, file: !25, line: 2568, baseType: !565, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !592, file: !25, line: 2569, baseType: !565, size: 3, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !573, file: !25, line: 2582, baseType: !598, size: 8, offset: 216)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !573, file: !25, line: 2573, size: 8, elements: !599)
!599 = !{!600, !601, !602}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "extended", scope: !598, file: !25, line: 2575, baseType: !565, size: 1, flags: DIFlagBitField, extraData: i64 0)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !598, file: !25, line: 2578, baseType: !565, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !598, file: !25, line: 2581, baseType: !565, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "dpc", scope: !573, file: !25, line: 2600, baseType: !604, size: 8, offset: 224)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !573, file: !25, line: 2585, size: 8, elements: !605)
!605 = !{!606, !607, !608, !609, !610}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "pit1", scope: !604, file: !25, line: 2587, baseType: !565, size: 1, flags: DIFlagBitField, extraData: i64 0)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "pit2", scope: !604, file: !25, line: 2590, baseType: !565, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "pit3", scope: !604, file: !25, line: 2593, baseType: !565, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "md_start", scope: !604, file: !25, line: 2596, baseType: !565, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "md_end", scope: !604, file: !25, line: 2599, baseType: !565, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "dps", scope: !573, file: !25, line: 2612, baseType: !612, size: 8, offset: 232)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !573, file: !25, line: 2603, size: 8, elements: !613)
!613 = !{!614, !615, !616}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "pit", scope: !612, file: !25, line: 2605, baseType: !565, size: 3, flags: DIFlagBitField, extraData: i64 0)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "md_start", scope: !612, file: !25, line: 2609, baseType: !565, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !612, file: !25, line: 2611, baseType: !565, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "nmic", scope: !573, file: !25, line: 2618, baseType: !618, size: 8, offset: 240)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !573, file: !25, line: 2615, size: 8, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "can_share", scope: !618, file: !25, line: 2616, baseType: !565, size: 1, flags: DIFlagBitField, extraData: i64 0)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !618, file: !25, line: 2617, baseType: !565, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "nsrescap", scope: !573, file: !25, line: 2648, baseType: !623, size: 8, offset: 248)
!623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !573, file: !25, line: 2621, size: 8, elements: !624)
!624 = !{!625, !636}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "rescap", scope: !623, file: !25, line: 2646, baseType: !626, size: 8)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !623, file: !25, line: 2622, size: 8, elements: !627)
!627 = !{!628, !629, !630, !631, !632, !633, !634, !635}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "persist", scope: !626, file: !25, line: 2624, baseType: !565, size: 1, flags: DIFlagBitField, extraData: i64 0)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "write_exclusive", scope: !626, file: !25, line: 2627, baseType: !565, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_access", scope: !626, file: !25, line: 2630, baseType: !565, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "write_exclusive_reg_only", scope: !626, file: !25, line: 2633, baseType: !565, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_access_reg_only", scope: !626, file: !25, line: 2636, baseType: !565, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "write_exclusive_all_reg", scope: !626, file: !25, line: 2639, baseType: !565, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_access_all_reg", scope: !626, file: !25, line: 2642, baseType: !565, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_existing_key", scope: !626, file: !25, line: 2645, baseType: !565, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !623, file: !25, line: 2647, baseType: !565, size: 8)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "fpi", scope: !573, file: !25, line: 2653, baseType: !638, size: 8, offset: 256)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !573, file: !25, line: 2650, size: 8, elements: !639)
!639 = !{!640, !641}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "percentage_remaining", scope: !638, file: !25, line: 2651, baseType: !565, size: 7, flags: DIFlagBitField, extraData: i64 0)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "fpi_supported", scope: !638, file: !25, line: 2652, baseType: !565, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "dlfeat", scope: !573, file: !25, line: 2682, baseType: !643, size: 8, offset: 264)
!643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !573, file: !25, line: 2656, size: 8, elements: !644)
!644 = !{!645, !646}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !643, file: !25, line: 2657, baseType: !565, size: 8)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !643, file: !25, line: 2681, baseType: !647, size: 8)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !643, file: !25, line: 2658, size: 8, elements: !648)
!648 = !{!649, !650, !651, !652}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "read_value", scope: !647, file: !25, line: 2668, baseType: !565, size: 3, flags: DIFlagBitField, extraData: i64 0)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "write_zero_deallocate", scope: !647, file: !25, line: 2671, baseType: !565, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "guard_value", scope: !647, file: !25, line: 2678, baseType: !565, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !647, file: !25, line: 2680, baseType: !565, size: 3, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "nawun", scope: !573, file: !25, line: 2685, baseType: !558, size: 16, offset: 272)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "nawupf", scope: !573, file: !25, line: 2688, baseType: !558, size: 16, offset: 288)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "nacwu", scope: !573, file: !25, line: 2691, baseType: !558, size: 16, offset: 304)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "nabsn", scope: !573, file: !25, line: 2694, baseType: !558, size: 16, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "nabo", scope: !573, file: !25, line: 2697, baseType: !558, size: 16, offset: 336)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "nabspf", scope: !573, file: !25, line: 2700, baseType: !558, size: 16, offset: 352)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "noiob", scope: !573, file: !25, line: 2703, baseType: !558, size: 16, offset: 368)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "nvmcap", scope: !573, file: !25, line: 2706, baseType: !661, size: 128, offset: 384)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 128, elements: !662)
!662 = !{!663}
!663 = !DISubrange(count: 2)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "npwg", scope: !573, file: !25, line: 2709, baseType: !558, size: 16, offset: 512)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "npwa", scope: !573, file: !25, line: 2712, baseType: !558, size: 16, offset: 528)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "npdg", scope: !573, file: !25, line: 2715, baseType: !558, size: 16, offset: 544)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "npda", scope: !573, file: !25, line: 2718, baseType: !558, size: 16, offset: 560)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "nows", scope: !573, file: !25, line: 2721, baseType: !558, size: 16, offset: 576)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "mssrl", scope: !573, file: !25, line: 2724, baseType: !558, size: 16, offset: 592)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "mcl", scope: !573, file: !25, line: 2727, baseType: !546, size: 32, offset: 608)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "msrc", scope: !573, file: !25, line: 2730, baseType: !565, size: 8, offset: 640)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "reserved64", scope: !573, file: !25, line: 2732, baseType: !673, size: 88, offset: 648)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 88, elements: !458)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "anagrpid", scope: !573, file: !25, line: 2735, baseType: !546, size: 32, offset: 736)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "reserved96", scope: !573, file: !25, line: 2737, baseType: !676, size: 64, offset: 768)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 64, elements: !426)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "nguid", scope: !573, file: !25, line: 2740, baseType: !678, size: 128, offset: 832)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 128, elements: !326)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "eui64", scope: !573, file: !25, line: 2743, baseType: !576, size: 64, offset: 960)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "lbaf", scope: !573, file: !25, line: 2757, baseType: !681, size: 512, offset: 1024)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 512, elements: !326)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !573, file: !25, line: 2746, size: 32, elements: !683)
!683 = !{!684, !685, !686, !687}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ms", scope: !682, file: !25, line: 2748, baseType: !546, size: 16, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "lbads", scope: !682, file: !25, line: 2751, baseType: !546, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "rp", scope: !682, file: !25, line: 2754, baseType: !546, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "reserved6", scope: !682, file: !25, line: 2756, baseType: !546, size: 6, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "reserved6", scope: !573, file: !25, line: 2759, baseType: !689, size: 1536, offset: 1536)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 1536, elements: !690)
!690 = !{!691}
!691 = !DISubrange(count: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_specific", scope: !573, file: !25, line: 2761, baseType: !693, size: 29696, offset: 3072)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 29696, elements: !694)
!694 = !{!695}
!695 = !DISubrange(count: 3712)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "nsdata_zns", scope: !542, file: !48, line: 530, baseType: !697, size: 64, offset: 65984)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_zns_ns_data", file: !25, line: 2765, size: 32768, elements: !699)
!699 = !{!700, !706, !711, !712, !713, !714, !715, !719, !726, !730}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "zoc", scope: !698, file: !25, line: 2771, baseType: !701, size: 16)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !698, file: !25, line: 2767, size: 16, elements: !702)
!702 = !{!703, !704, !705}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "variable_zone_capacity", scope: !701, file: !25, line: 2768, baseType: !558, size: 1, flags: DIFlagBitField, extraData: i64 0)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "zone_active_excursions", scope: !701, file: !25, line: 2769, baseType: !558, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "reserved0", scope: !701, file: !25, line: 2770, baseType: !558, size: 14, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ozcs", scope: !698, file: !25, line: 2777, baseType: !707, size: 16, offset: 16)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !698, file: !25, line: 2774, size: 16, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "read_across_zone_boundaries", scope: !707, file: !25, line: 2775, baseType: !558, size: 1, flags: DIFlagBitField, extraData: i64 0)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "reserved0", scope: !707, file: !25, line: 2776, baseType: !558, size: 15, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "mar", scope: !698, file: !25, line: 2780, baseType: !546, size: 32, offset: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "mor", scope: !698, file: !25, line: 2783, baseType: !546, size: 32, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "rrl", scope: !698, file: !25, line: 2786, baseType: !546, size: 32, offset: 96)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "frl", scope: !698, file: !25, line: 2789, baseType: !546, size: 32, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "reserved20", scope: !698, file: !25, line: 2791, baseType: !716, size: 22368, offset: 160)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 22368, elements: !717)
!717 = !{!718}
!718 = !DISubrange(count: 2796)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "lbafe", scope: !698, file: !25, line: 2802, baseType: !720, size: 2048, offset: 22528)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 2048, elements: !326)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !698, file: !25, line: 2794, size: 128, elements: !722)
!722 = !{!723, !724, !725}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "zsze", scope: !721, file: !25, line: 2796, baseType: !576, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "zdes", scope: !721, file: !25, line: 2799, baseType: !576, size: 8, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "reserved15", scope: !721, file: !25, line: 2801, baseType: !576, size: 56, offset: 72, flags: DIFlagBitField, extraData: i64 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3072", scope: !698, file: !25, line: 2804, baseType: !727, size: 6144, offset: 24576)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 6144, elements: !728)
!728 = !{!729}
!729 = !DISubrange(count: 768)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_specific", scope: !698, file: !25, line: 2806, baseType: !731, size: 2048, offset: 30720)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 2048, elements: !732)
!732 = !{!733}
!733 = !DISubrange(count: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !542, file: !48, line: 532, baseType: !735, size: 192, offset: 66048)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !542, file: !48, line: 532, size: 192, elements: !736)
!736 = !{!737, !738, !739}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "rbe_left", scope: !735, file: !48, line: 532, baseType: !541, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "rbe_right", scope: !735, file: !48, line: 532, baseType: !541, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "rbe_parent", scope: !735, file: !48, line: 532, baseType: !541, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "active_ns_count", scope: !535, file: !48, line: 870, baseType: !546, size: 32, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "is_removed", scope: !535, file: !48, line: 872, baseType: !523, size: 8, offset: 96)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "is_resetting", scope: !535, file: !48, line: 874, baseType: !523, size: 8, offset: 104)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "is_failed", scope: !535, file: !48, line: 876, baseType: !523, size: 8, offset: 112)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "is_destructed", scope: !535, file: !48, line: 878, baseType: !523, size: 8, offset: 120)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_enabled", scope: !535, file: !48, line: 880, baseType: !523, size: 8, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_reset", scope: !535, file: !48, line: 886, baseType: !523, size: 8, offset: 136)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "is_disconnecting", scope: !535, file: !48, line: 888, baseType: !523, size: 8, offset: 144)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "max_sges", scope: !535, file: !48, line: 890, baseType: !558, size: 16, offset: 160)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "cntlid", scope: !535, file: !48, line: 892, baseType: !558, size: 16, offset: 176)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !535, file: !48, line: 895, baseType: !576, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "ioccsz_bytes", scope: !535, file: !48, line: 898, baseType: !546, size: 32, offset: 256)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "icdoff", scope: !535, file: !48, line: 901, baseType: !558, size: 16, offset: 288)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "trid", scope: !535, file: !48, line: 905, baseType: !754, size: 4512, offset: 320)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_transport_id", file: !6, line: 432, size: 4512, elements: !755)
!755 = !{!756, !760, !761, !762, !766, !767, !771}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "trstring", scope: !754, file: !6, line: 436, baseType: !757, size: 264)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 264, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 33)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "trtype", scope: !754, file: !6, line: 441, baseType: !5, size: 32, offset: 288)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "adrfam", scope: !754, file: !6, line: 448, baseType: !16, size: 32, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "traddr", scope: !754, file: !6, line: 458, baseType: !763, size: 2056, offset: 352)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 2056, elements: !764)
!764 = !{!765}
!765 = !DISubrange(count: 257)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "trsvcid", scope: !754, file: !6, line: 465, baseType: !757, size: 264, offset: 2408)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "subnqn", scope: !754, file: !6, line: 470, baseType: !768, size: 1792, offset: 2672)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 1792, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 224)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !754, file: !6, line: 477, baseType: !155, size: 32, offset: 4480)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !535, file: !48, line: 907, baseType: !773, size: 64, offset: 4864)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_cap_register", file: !25, line: 61, size: 64, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !773, file: !25, line: 62, baseType: !576, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !773, file: !25, line: 102, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !773, file: !25, line: 63, size: 64, elements: !778)
!778 = !{!779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "mqes", scope: !777, file: !25, line: 65, baseType: !546, size: 16, flags: DIFlagBitField, extraData: i64 0)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "cqr", scope: !777, file: !25, line: 68, baseType: !546, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "ams", scope: !777, file: !25, line: 71, baseType: !546, size: 2, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !777, file: !25, line: 73, baseType: !546, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !777, file: !25, line: 76, baseType: !546, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "dstrd", scope: !777, file: !25, line: 79, baseType: !546, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "nssrs", scope: !777, file: !25, line: 82, baseType: !546, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !777, file: !25, line: 85, baseType: !546, size: 8, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "bps", scope: !777, file: !25, line: 88, baseType: !546, size: 1, offset: 45, flags: DIFlagBitField, extraData: i64 0)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !777, file: !25, line: 90, baseType: !546, size: 2, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "mpsmin", scope: !777, file: !25, line: 93, baseType: !546, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "mpsmax", scope: !777, file: !25, line: 96, baseType: !546, size: 4, offset: 52, flags: DIFlagBitField, extraData: i64 0)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "pmrs", scope: !777, file: !25, line: 99, baseType: !546, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !777, file: !25, line: 101, baseType: !546, size: 7, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "vs", scope: !535, file: !48, line: 908, baseType: !794, size: 32, offset: 4928)
!794 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_vs_register", file: !25, line: 205, size: 32, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !794, file: !25, line: 206, baseType: !546, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !794, file: !25, line: 214, baseType: !798, size: 32)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !794, file: !25, line: 207, size: 32, elements: !799)
!799 = !{!800, !801, !802}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ter", scope: !798, file: !25, line: 209, baseType: !546, size: 8, flags: DIFlagBitField, extraData: i64 0)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "mnr", scope: !798, file: !25, line: 211, baseType: !546, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "mjr", scope: !798, file: !25, line: 213, baseType: !546, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !535, file: !48, line: 910, baseType: !155, size: 32, offset: 4960)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "state_timeout_tsc", scope: !535, file: !48, line: 911, baseType: !576, size: 64, offset: 4992)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "next_keep_alive_tick", scope: !535, file: !48, line: 913, baseType: !576, size: 64, offset: 5056)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_interval_ticks", scope: !535, file: !48, line: 914, baseType: !576, size: 64, offset: 5120)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "tailq", scope: !535, file: !48, line: 916, baseType: !808, size: 128, offset: 5184)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !535, file: !48, line: 916, size: 128, elements: !809)
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !808, file: !48, line: 916, baseType: !534, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !808, file: !48, line: 916, baseType: !812, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "log_page_supported", scope: !535, file: !48, line: 919, baseType: !814, size: 2048, offset: 5312)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 2048, elements: !732)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "feature_supported", scope: !535, file: !48, line: 922, baseType: !814, size: 2048, offset: 7360)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "max_xfer_size", scope: !535, file: !48, line: 925, baseType: !546, size: 32, offset: 9408)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "min_page_size", scope: !535, file: !48, line: 928, baseType: !546, size: 32, offset: 9440)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "page_size", scope: !535, file: !48, line: 931, baseType: !546, size: 32, offset: 9472)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "num_aers", scope: !535, file: !48, line: 933, baseType: !546, size: 32, offset: 9504)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "aer", scope: !535, file: !48, line: 934, baseType: !821, size: 2048, offset: 9536)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !822, size: 2048, elements: !426)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nvme_async_event_request", file: !48, line: 394, size: 256, elements: !823)
!823 = !{!824, !825, !1550}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ctrlr", scope: !822, file: !48, line: 395, baseType: !534, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "req", scope: !822, file: !48, line: 396, baseType: !826, size: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nvme_request", file: !48, line: 273, size: 2176, elements: !828)
!828 = !{!829, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1255, !1282, !1283, !1287, !1531, !1532, !1533, !1534, !1535, !1540, !1545, !1546, !1547, !1548, !1549}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !827, file: !48, line: 274, baseType: !830, size: 512)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_cmd", file: !25, line: 1256, size: 512, elements: !831)
!831 = !{!832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !878, !972, !1187, !1208, !1209, !1210}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "opc", scope: !830, file: !25, line: 1258, baseType: !558, size: 8, flags: DIFlagBitField, extraData: i64 0)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "fuse", scope: !830, file: !25, line: 1259, baseType: !558, size: 2, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd1", scope: !830, file: !25, line: 1260, baseType: !558, size: 4, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "psdt", scope: !830, file: !25, line: 1261, baseType: !558, size: 2, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !830, file: !25, line: 1262, baseType: !558, size: 16, offset: 16)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "nsid", scope: !830, file: !25, line: 1265, baseType: !546, size: 32, offset: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd2", scope: !830, file: !25, line: 1268, baseType: !546, size: 32, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd3", scope: !830, file: !25, line: 1269, baseType: !546, size: 32, offset: 96)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "mptr", scope: !830, file: !25, line: 1272, baseType: !576, size: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "dptr", scope: !830, file: !25, line: 1282, baseType: !842, size: 128, offset: 192)
!842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !25, line: 1275, size: 128, elements: !843)
!843 = !{!844, !849}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "prp", scope: !842, file: !25, line: 1279, baseType: !845, size: 128)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !842, file: !25, line: 1276, size: 128, elements: !846)
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "prp1", scope: !845, file: !25, line: 1277, baseType: !576, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "prp2", scope: !845, file: !25, line: 1278, baseType: !576, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "sgl1", scope: !842, file: !25, line: 1281, baseType: !850, size: 128)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_sgl_descriptor", file: !25, line: 610, size: 128, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !850, file: !25, line: 611, baseType: !576, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, scope: !850, file: !25, line: 612, baseType: !854, size: 64, offset: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !850, file: !25, line: 612, size: 64, elements: !855)
!855 = !{!856, !863, !871}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !854, file: !25, line: 617, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !854, file: !25, line: 613, size: 64, elements: !858)
!858 = !{!859, !861, !862}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !857, file: !25, line: 614, baseType: !860, size: 56)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 56, elements: !288)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !857, file: !25, line: 615, baseType: !565, size: 4, offset: 56, flags: DIFlagBitField, extraData: i64 56)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !857, file: !25, line: 616, baseType: !565, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 56)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "unkeyed", scope: !854, file: !25, line: 624, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !854, file: !25, line: 619, size: 64, elements: !865)
!865 = !{!866, !867, !869, !870}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !864, file: !25, line: 620, baseType: !546, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !864, file: !25, line: 621, baseType: !868, size: 24, offset: 32)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 24, elements: !351)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !864, file: !25, line: 622, baseType: !565, size: 4, offset: 56, flags: DIFlagBitField, extraData: i64 56)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !864, file: !25, line: 623, baseType: !565, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 56)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "keyed", scope: !854, file: !25, line: 631, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !854, file: !25, line: 626, size: 64, elements: !873)
!873 = !{!874, !875, !876, !877}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !872, file: !25, line: 627, baseType: !576, size: 24, flags: DIFlagBitField, extraData: i64 0)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !872, file: !25, line: 628, baseType: !576, size: 32, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !872, file: !25, line: 629, baseType: !576, size: 4, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !872, file: !25, line: 630, baseType: !576, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!878 = !DIDerivedType(tag: DW_TAG_member, scope: !830, file: !25, line: 1285, baseType: !879, size: 32, offset: 320)
!879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !25, line: 1285, size: 32, elements: !880)
!880 = !{!881, !882}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "cdw10", scope: !879, file: !25, line: 1286, baseType: !546, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "cdw10_bits", scope: !879, file: !25, line: 1287, baseType: !883, size: 32)
!883 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_cmd_cdw10", file: !25, line: 1028, size: 32, elements: !884)
!884 = !{!885, !886, !892, !900, !905, !912, !917, !922, !928, !934, !939, !944, !949, !956, !964}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !883, file: !25, line: 1029, baseType: !546, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "identify", scope: !883, file: !25, line: 1036, baseType: !887, size: 32)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !25, line: 1030, size: 32, elements: !888)
!888 = !{!889, !890, !891}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "cns", scope: !887, file: !25, line: 1032, baseType: !546, size: 8, flags: DIFlagBitField, extraData: i64 0)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !887, file: !25, line: 1033, baseType: !546, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "cntid", scope: !887, file: !25, line: 1035, baseType: !546, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "get_log_page", scope: !883, file: !25, line: 1048, baseType: !893, size: 32)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !25, line: 1038, size: 32, elements: !894)
!894 = !{!895, !896, !897, !898, !899}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !893, file: !25, line: 1040, baseType: !546, size: 8, flags: DIFlagBitField, extraData: i64 0)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "lsp", scope: !893, file: !25, line: 1042, baseType: !546, size: 4, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !893, file: !25, line: 1043, baseType: !546, size: 3, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "rae", scope: !893, file: !25, line: 1045, baseType: !546, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "numdl", scope: !893, file: !25, line: 1047, baseType: !546, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !883, file: !25, line: 1055, baseType: !901, size: 32)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !25, line: 1050, size: 32, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "sqid", scope: !901, file: !25, line: 1052, baseType: !546, size: 16, flags: DIFlagBitField, extraData: i64 0)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !901, file: !25, line: 1054, baseType: !546, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "sec_send_recv", scope: !883, file: !25, line: 1066, baseType: !906, size: 32)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !25, line: 1057, size: 32, elements: !907)
!907 = !{!908, !909, !910, !911}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "nssf", scope: !906, file: !25, line: 1059, baseType: !546, size: 8, flags: DIFlagBitField, extraData: i64 0)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "spsp0", scope: !906, file: !25, line: 1061, baseType: !546, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "spsp1", scope: !906, file: !25, line: 1063, baseType: !546, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "secp", scope: !906, file: !25, line: 1065, baseType: !546, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "create_io_q", scope: !883, file: !25, line: 1073, baseType: !913, size: 32)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !25, line: 1068, size: 32, elements: !914)
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "qid", scope: !913, file: !25, line: 1070, baseType: !546, size: 16, flags: DIFlagBitField, extraData: i64 0)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "qsize", scope: !913, file: !25, line: 1072, baseType: !546, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "delete_io_q", scope: !883, file: !25, line: 1079, baseType: !918, size: 32)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !25, line: 1075, size: 32, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "qid", scope: !918, file: !25, line: 1077, baseType: !546, size: 16, flags: DIFlagBitField, extraData: i64 0)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !918, file: !25, line: 1078, baseType: !546, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "get_features", scope: !883, file: !25, line: 1087, baseType: !923, size: 32)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !25, line: 1081, size: 32, elements: !924)
!924 = !{!925, !926, !927}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "fid", scope: !923, file: !25, line: 1083, baseType: !546, size: 8, flags: DIFlagBitField, extraData: i64 0)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !923, file: !25, line: 1085, baseType: !546, size: 3, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !923, file: !25, line: 1086, baseType: !546, size: 21, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "set_features", scope: !883, file: !25, line: 1095, baseType: !929, size: 32)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !25, line: 1089, size: 32, elements: !930)
!930 = !{!931, !932, !933}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "fid", scope: !929, file: !25, line: 1091, baseType: !546, size: 8, flags: DIFlagBitField, extraData: i64 0)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !929, file: !25, line: 1092, baseType: !546, size: 23, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "sv", scope: !929, file: !25, line: 1094, baseType: !546, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ns_attach", scope: !883, file: !25, line: 1101, baseType: !935, size: 32)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !25, line: 1097, size: 32, elements: !936)
!936 = !{!937, !938}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !935, file: !25, line: 1099, baseType: !546, size: 4, flags: DIFlagBitField, extraData: i64 0)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !935, file: !25, line: 1100, baseType: !546, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "ns_manage", scope: !883, file: !25, line: 1107, baseType: !940, size: 32)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !25, line: 1103, size: 32, elements: !941)
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !940, file: !25, line: 1105, baseType: !546, size: 4, flags: DIFlagBitField, extraData: i64 0)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !940, file: !25, line: 1106, baseType: !546, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "dsm", scope: !883, file: !25, line: 1113, baseType: !945, size: 32)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !25, line: 1109, size: 32, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !945, file: !25, line: 1111, baseType: !546, size: 8, flags: DIFlagBitField, extraData: i64 0)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !945, file: !25, line: 1112, baseType: !546, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "resv_register", scope: !883, file: !25, line: 1123, baseType: !950, size: 32)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !25, line: 1115, size: 32, elements: !951)
!951 = !{!952, !953, !954, !955}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "rrega", scope: !950, file: !25, line: 1117, baseType: !546, size: 3, flags: DIFlagBitField, extraData: i64 0)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "iekey", scope: !950, file: !25, line: 1119, baseType: !546, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !950, file: !25, line: 1120, baseType: !546, size: 26, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "cptpl", scope: !950, file: !25, line: 1122, baseType: !546, size: 2, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "resv_release", scope: !883, file: !25, line: 1134, baseType: !957, size: 32)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !25, line: 1125, size: 32, elements: !958)
!958 = !{!959, !960, !961, !962, !963}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "rrela", scope: !957, file: !25, line: 1127, baseType: !546, size: 3, flags: DIFlagBitField, extraData: i64 0)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "iekey", scope: !957, file: !25, line: 1129, baseType: !546, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !957, file: !25, line: 1130, baseType: !546, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "rtype", scope: !957, file: !25, line: 1132, baseType: !546, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !957, file: !25, line: 1133, baseType: !546, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "resv_acquire", scope: !883, file: !25, line: 1145, baseType: !965, size: 32)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !25, line: 1136, size: 32, elements: !966)
!966 = !{!967, !968, !969, !970, !971}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "racqa", scope: !965, file: !25, line: 1138, baseType: !546, size: 3, flags: DIFlagBitField, extraData: i64 0)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "iekey", scope: !965, file: !25, line: 1140, baseType: !546, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !965, file: !25, line: 1141, baseType: !546, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "rtype", scope: !965, file: !25, line: 1143, baseType: !546, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !965, file: !25, line: 1144, baseType: !546, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !830, file: !25, line: 1290, baseType: !973, size: 32, offset: 352)
!973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !25, line: 1290, size: 32, elements: !974)
!974 = !{!975, !976}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "cdw11", scope: !973, file: !25, line: 1291, baseType: !546, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "cdw11_bits", scope: !973, file: !25, line: 1292, baseType: !977, size: 32)
!977 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_cmd_cdw11", file: !25, line: 1149, size: 32, elements: !978)
!978 = !{!979, !980, !986, !993, !1000, !1006, !1011, !1016, !1028, !1038, !1047, !1058, !1068, !1077, !1086, !1096, !1106, !1115, !1142, !1150, !1159, !1171, !1180}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !977, file: !25, line: 1150, baseType: !546, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "identify", scope: !977, file: !25, line: 1158, baseType: !981, size: 32)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !25, line: 1152, size: 32, elements: !982)
!982 = !{!983, !984, !985}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "nvmsetid", scope: !981, file: !25, line: 1154, baseType: !546, size: 16, flags: DIFlagBitField, extraData: i64 0)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !981, file: !25, line: 1155, baseType: !546, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "csi", scope: !981, file: !25, line: 1157, baseType: !546, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "create_io_sq", scope: !977, file: !25, line: 1168, baseType: !987, size: 32)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !25, line: 1160, size: 32, elements: !988)
!988 = !{!989, !990, !991, !992}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !987, file: !25, line: 1162, baseType: !546, size: 1, flags: DIFlagBitField, extraData: i64 0)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "qprio", scope: !987, file: !25, line: 1164, baseType: !546, size: 2, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !987, file: !25, line: 1165, baseType: !546, size: 13, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "cqid", scope: !987, file: !25, line: 1167, baseType: !546, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "create_io_cq", scope: !977, file: !25, line: 1178, baseType: !994, size: 32)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !25, line: 1170, size: 32, elements: !995)
!995 = !{!996, !997, !998, !999}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !994, file: !25, line: 1172, baseType: !546, size: 1, flags: DIFlagBitField, extraData: i64 0)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ien", scope: !994, file: !25, line: 1174, baseType: !546, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !994, file: !25, line: 1175, baseType: !546, size: 14, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !994, file: !25, line: 1177, baseType: !546, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "directive", scope: !977, file: !25, line: 1187, baseType: !1001, size: 32)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !25, line: 1180, size: 32, elements: !1002)
!1002 = !{!1003, !1004, !1005}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "doper", scope: !1001, file: !25, line: 1182, baseType: !546, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "dtype", scope: !1001, file: !25, line: 1184, baseType: !546, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "dspec", scope: !1001, file: !25, line: 1186, baseType: !546, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "get_log_page", scope: !977, file: !25, line: 1194, baseType: !1007, size: 32)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !25, line: 1189, size: 32, elements: !1008)
!1008 = !{!1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "numdu", scope: !1007, file: !25, line: 1191, baseType: !546, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "lsid", scope: !1007, file: !25, line: 1193, baseType: !546, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "resv_report", scope: !977, file: !25, line: 1200, baseType: !1012, size: 32)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !25, line: 1196, size: 32, elements: !1013)
!1013 = !{!1014, !1015}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "eds", scope: !1012, file: !25, line: 1198, baseType: !546, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1012, file: !25, line: 1199, baseType: !546, size: 31, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "feat_arbitration", scope: !977, file: !25, line: 1202, baseType: !1017, size: 32)
!1017 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_arbitration", file: !25, line: 692, size: 32, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1017, file: !25, line: 693, baseType: !546, size: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1017, file: !25, line: 708, baseType: !1021, size: 32)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1017, file: !25, line: 694, size: 32, elements: !1022)
!1022 = !{!1023, !1024, !1025, !1026, !1027}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ab", scope: !1021, file: !25, line: 696, baseType: !546, size: 3, flags: DIFlagBitField, extraData: i64 0)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1021, file: !25, line: 698, baseType: !546, size: 5, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "lpw", scope: !1021, file: !25, line: 701, baseType: !546, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "mpw", scope: !1021, file: !25, line: 704, baseType: !546, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "hpw", scope: !1021, file: !25, line: 707, baseType: !546, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "feat_power_management", scope: !977, file: !25, line: 1203, baseType: !1029, size: 32)
!1029 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_power_management", file: !25, line: 717, size: 32, elements: !1030)
!1030 = !{!1031, !1032}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1029, file: !25, line: 718, baseType: !546, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1029, file: !25, line: 727, baseType: !1033, size: 32)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1029, file: !25, line: 719, size: 32, elements: !1034)
!1034 = !{!1035, !1036, !1037}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ps", scope: !1033, file: !25, line: 721, baseType: !546, size: 5, flags: DIFlagBitField, extraData: i64 0)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "wh", scope: !1033, file: !25, line: 724, baseType: !546, size: 3, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1033, file: !25, line: 726, baseType: !546, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "feat_lba_range_type", scope: !977, file: !25, line: 1204, baseType: !1039, size: 32)
!1039 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_lba_range_type", file: !25, line: 734, size: 32, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1039, file: !25, line: 735, baseType: !546, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1039, file: !25, line: 741, baseType: !1043, size: 32)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1039, file: !25, line: 736, size: 32, elements: !1044)
!1044 = !{!1045, !1046}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1043, file: !25, line: 738, baseType: !546, size: 6, flags: DIFlagBitField, extraData: i64 0)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1043, file: !25, line: 740, baseType: !546, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "feat_temp_threshold", scope: !977, file: !25, line: 1205, baseType: !1048, size: 32)
!1048 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_temperature_threshold", file: !25, line: 748, size: 32, elements: !1049)
!1049 = !{!1050, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1048, file: !25, line: 749, baseType: !546, size: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1048, file: !25, line: 761, baseType: !1052, size: 32)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1048, file: !25, line: 750, size: 32, elements: !1053)
!1053 = !{!1054, !1055, !1056, !1057}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "tmpth", scope: !1052, file: !25, line: 752, baseType: !546, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "tmpsel", scope: !1052, file: !25, line: 755, baseType: !546, size: 4, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "thsel", scope: !1052, file: !25, line: 758, baseType: !546, size: 2, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1052, file: !25, line: 760, baseType: !546, size: 10, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "feat_error_recovery", scope: !977, file: !25, line: 1206, baseType: !1059, size: 32)
!1059 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_error_recovery", file: !25, line: 768, size: 32, elements: !1060)
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1059, file: !25, line: 769, baseType: !546, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1059, file: !25, line: 778, baseType: !1063, size: 32)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1059, file: !25, line: 770, size: 32, elements: !1064)
!1064 = !{!1065, !1066, !1067}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "tler", scope: !1063, file: !25, line: 772, baseType: !546, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "dulbe", scope: !1063, file: !25, line: 775, baseType: !546, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1063, file: !25, line: 777, baseType: !546, size: 15, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "feat_volatile_write_cache", scope: !977, file: !25, line: 1207, baseType: !1069, size: 32)
!1069 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_volatile_write_cache", file: !25, line: 785, size: 32, elements: !1070)
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1069, file: !25, line: 786, baseType: !546, size: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1069, file: !25, line: 792, baseType: !1073, size: 32)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !25, line: 787, size: 32, elements: !1074)
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "wce", scope: !1073, file: !25, line: 789, baseType: !546, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1073, file: !25, line: 791, baseType: !546, size: 31, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "feat_num_of_queues", scope: !977, file: !25, line: 1208, baseType: !1078, size: 32)
!1078 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_number_of_queues", file: !25, line: 799, size: 32, elements: !1079)
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1078, file: !25, line: 800, baseType: !546, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1078, file: !25, line: 807, baseType: !1082, size: 32)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1078, file: !25, line: 801, size: 32, elements: !1083)
!1083 = !{!1084, !1085}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "nsqr", scope: !1082, file: !25, line: 803, baseType: !546, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "ncqr", scope: !1082, file: !25, line: 806, baseType: !546, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "feat_interrupt_coalescing", scope: !977, file: !25, line: 1209, baseType: !1087, size: 32)
!1087 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_interrupt_coalescing", file: !25, line: 814, size: 32, elements: !1088)
!1088 = !{!1089, !1090}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1087, file: !25, line: 815, baseType: !546, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1087, file: !25, line: 824, baseType: !1091, size: 32)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1087, file: !25, line: 816, size: 32, elements: !1092)
!1092 = !{!1093, !1094, !1095}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "thr", scope: !1091, file: !25, line: 818, baseType: !546, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1091, file: !25, line: 821, baseType: !546, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1091, file: !25, line: 823, baseType: !546, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "feat_interrupt_vector_configuration", scope: !977, file: !25, line: 1210, baseType: !1097, size: 32)
!1097 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_interrupt_vector_configuration", file: !25, line: 831, size: 32, elements: !1098)
!1098 = !{!1099, !1100}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1097, file: !25, line: 832, baseType: !546, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1097, file: !25, line: 841, baseType: !1101, size: 32)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1097, file: !25, line: 833, size: 32, elements: !1102)
!1102 = !{!1103, !1104, !1105}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !1101, file: !25, line: 835, baseType: !546, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "cd", scope: !1101, file: !25, line: 838, baseType: !546, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1101, file: !25, line: 840, baseType: !546, size: 15, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "feat_write_atomicity", scope: !977, file: !25, line: 1211, baseType: !1107, size: 32)
!1107 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_write_atomicity", file: !25, line: 849, size: 32, elements: !1108)
!1108 = !{!1109, !1110}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1107, file: !25, line: 850, baseType: !546, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1107, file: !25, line: 856, baseType: !1111, size: 32)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1107, file: !25, line: 851, size: 32, elements: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "dn", scope: !1111, file: !25, line: 853, baseType: !546, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1111, file: !25, line: 855, baseType: !546, size: 31, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "feat_async_event_cfg", scope: !977, file: !25, line: 1212, baseType: !1116, size: 32)
!1116 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_async_event_configuration", file: !25, line: 877, size: 32, elements: !1117)
!1117 = !{!1118, !1119}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1116, file: !25, line: 878, baseType: !546, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1116, file: !25, line: 889, baseType: !1120, size: 32)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1116, file: !25, line: 879, size: 32, elements: !1121)
!1121 = !{!1122, !1135, !1136, !1137, !1138, !1139, !1140, !1141}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "crit_warn", scope: !1120, file: !25, line: 880, baseType: !1123, size: 8)
!1123 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_critical_warning_state", file: !25, line: 860, size: 8, elements: !1124)
!1124 = !{!1125, !1126}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1123, file: !25, line: 861, baseType: !565, size: 8)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1123, file: !25, line: 870, baseType: !1127, size: 8)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1123, file: !25, line: 863, size: 8, elements: !1128)
!1128 = !{!1129, !1130, !1131, !1132, !1133, !1134}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "available_spare", scope: !1127, file: !25, line: 864, baseType: !565, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !1127, file: !25, line: 865, baseType: !565, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "device_reliability", scope: !1127, file: !25, line: 866, baseType: !565, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "read_only", scope: !1127, file: !25, line: 867, baseType: !565, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_memory_backup", scope: !1127, file: !25, line: 868, baseType: !565, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1127, file: !25, line: 869, baseType: !565, size: 3, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "ns_attr_notice", scope: !1120, file: !25, line: 881, baseType: !565, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "fw_activation_notice", scope: !1120, file: !25, line: 882, baseType: !565, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "telemetry_log_notice", scope: !1120, file: !25, line: 883, baseType: !565, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "ana_change_notice", scope: !1120, file: !25, line: 884, baseType: !565, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !1120, file: !25, line: 885, baseType: !565, size: 4, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !1120, file: !25, line: 886, baseType: !558, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "discovery_log_change_notice", scope: !1120, file: !25, line: 888, baseType: !558, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 8)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "feat_keep_alive_timer", scope: !977, file: !25, line: 1213, baseType: !1143, size: 32)
!1143 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_keep_alive_timer", file: !25, line: 928, size: 32, elements: !1144)
!1144 = !{!1145, !1146}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1143, file: !25, line: 929, baseType: !546, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1143, file: !25, line: 933, baseType: !1147, size: 32)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1143, file: !25, line: 930, size: 32, elements: !1148)
!1148 = !{!1149}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "kato", scope: !1147, file: !25, line: 932, baseType: !546, size: 32, flags: DIFlagBitField, extraData: i64 0)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "feat_host_identifier", scope: !977, file: !25, line: 1214, baseType: !1151, size: 32)
!1151 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_host_identifier", file: !25, line: 985, size: 32, elements: !1152)
!1152 = !{!1153, !1154}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1151, file: !25, line: 986, baseType: !546, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1151, file: !25, line: 992, baseType: !1155, size: 32)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1151, file: !25, line: 987, size: 32, elements: !1156)
!1156 = !{!1157, !1158}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "exhid", scope: !1155, file: !25, line: 989, baseType: !546, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1155, file: !25, line: 991, baseType: !546, size: 31, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "feat_rsv_notification_mask", scope: !977, file: !25, line: 1215, baseType: !1160, size: 32)
!1160 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_reservation_notification_mask", file: !25, line: 999, size: 32, elements: !1161)
!1161 = !{!1162, !1163}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1160, file: !25, line: 1000, baseType: !546, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1160, file: !25, line: 1010, baseType: !1164, size: 32)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1160, file: !25, line: 1001, size: 32, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1169, !1170}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !1164, file: !25, line: 1002, baseType: !546, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "regpre", scope: !1164, file: !25, line: 1004, baseType: !546, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "resrel", scope: !1164, file: !25, line: 1006, baseType: !546, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "respre", scope: !1164, file: !25, line: 1008, baseType: !546, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !1164, file: !25, line: 1009, baseType: !546, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "feat_rsv_persistence", scope: !977, file: !25, line: 1216, baseType: !1172, size: 32)
!1172 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_feat_reservation_persistence", file: !25, line: 1018, size: 32, elements: !1173)
!1173 = !{!1174, !1175}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1172, file: !25, line: 1019, baseType: !546, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1172, file: !25, line: 1024, baseType: !1176, size: 32)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1172, file: !25, line: 1020, size: 32, elements: !1177)
!1177 = !{!1178, !1179}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "ptpl", scope: !1176, file: !25, line: 1022, baseType: !546, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1176, file: !25, line: 1023, baseType: !546, size: 31, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "dsm", scope: !977, file: !25, line: 1226, baseType: !1181, size: 32)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !25, line: 1218, size: 32, elements: !1182)
!1182 = !{!1183, !1184, !1185, !1186}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1181, file: !25, line: 1220, baseType: !546, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "idw", scope: !1181, file: !25, line: 1222, baseType: !546, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ad", scope: !1181, file: !25, line: 1224, baseType: !546, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1181, file: !25, line: 1225, baseType: !546, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !830, file: !25, line: 1295, baseType: !1188, size: 32, offset: 384)
!1188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !830, file: !25, line: 1295, size: 32, elements: !1189)
!1189 = !{!1190, !1191}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "cdw12", scope: !1188, file: !25, line: 1296, baseType: !546, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "cdw12_bits", scope: !1188, file: !25, line: 1297, baseType: !1192, size: 32)
!1192 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_cmd_cdw12", file: !25, line: 1230, size: 32, elements: !1193)
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1192, file: !25, line: 1231, baseType: !546, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1192, file: !25, line: 1252, baseType: !1196, size: 32)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1192, file: !25, line: 1233, size: 32, elements: !1197)
!1197 = !{!1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1196, file: !25, line: 1235, baseType: !546, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "df", scope: !1196, file: !25, line: 1237, baseType: !546, size: 4, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "prinfor", scope: !1196, file: !25, line: 1239, baseType: !546, size: 4, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1196, file: !25, line: 1240, baseType: !546, size: 4, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "dtype", scope: !1196, file: !25, line: 1242, baseType: !546, size: 4, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "stcw", scope: !1196, file: !25, line: 1244, baseType: !546, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !1196, file: !25, line: 1245, baseType: !546, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "prinfow", scope: !1196, file: !25, line: 1247, baseType: !546, size: 4, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "fua", scope: !1196, file: !25, line: 1249, baseType: !546, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "lr", scope: !1196, file: !25, line: 1251, baseType: !546, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "cdw13", scope: !830, file: !25, line: 1300, baseType: !546, size: 32, offset: 416)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "cdw14", scope: !830, file: !25, line: 1301, baseType: !546, size: 32, offset: 448)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "cdw15", scope: !830, file: !25, line: 1302, baseType: !546, size: 32, offset: 480)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !827, file: !48, line: 276, baseType: !565, size: 8, offset: 512)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "timed_out", scope: !827, file: !48, line: 278, baseType: !565, size: 1, offset: 520, flags: DIFlagBitField, extraData: i64 520)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "queued", scope: !827, file: !48, line: 283, baseType: !565, size: 1, offset: 521, flags: DIFlagBitField, extraData: i64 520)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !827, file: !48, line: 284, baseType: !565, size: 6, offset: 522, flags: DIFlagBitField, extraData: i64 520)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "num_children", scope: !827, file: !48, line: 290, baseType: !558, size: 16, offset: 528)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "payload_offset", scope: !827, file: !48, line: 296, baseType: !546, size: 32, offset: 544)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "md_offset", scope: !827, file: !48, line: 297, baseType: !546, size: 32, offset: 576)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "payload_size", scope: !827, file: !48, line: 299, baseType: !546, size: 32, offset: 608)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_tsc", scope: !827, file: !48, line: 305, baseType: !576, size: 64, offset: 640)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !827, file: !48, line: 310, baseType: !1221, size: 320, offset: 704)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nvme_payload", file: !48, line: 219, size: 320, elements: !1222)
!1222 = !{!1223, !1228, !1235, !1253, !1254}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "reset_sgl_fn", scope: !1221, file: !48, line: 223, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_nvme_req_reset_sgl_cb", file: !6, line: 2999, baseType: !1225)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !234, !546}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "next_sge_fn", scope: !1221, file: !48, line: 224, baseType: !1229, size: 64, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_nvme_req_next_sge_cb", file: !6, line: 3012, baseType: !1230)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!155, !234, !1233, !1234}
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1221, file: !48, line: 229, baseType: !1236, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_ns_cmd_ext_io_opts", file: !6, line: 577, size: 384, elements: !1238)
!1238 = !{!1239, !1242, !1245, !1246, !1247, !1249, !1250, !1251, !1252}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1237, file: !6, line: 579, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1241, line: 29, baseType: !578)
!1241 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "fe493b50b1dc220fe9bcfb4d648abdef")
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "memory_domain", scope: !1237, file: !6, line: 582, baseType: !1243, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_memory_domain", file: !6, line: 582, flags: DIFlagFwdDecl)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "memory_domain_ctx", scope: !1237, file: !6, line: 584, baseType: !234, size: 64, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "io_flags", scope: !1237, file: !6, line: 586, baseType: !546, size: 32, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "reserved28", scope: !1237, file: !6, line: 588, baseType: !1248, size: 32, offset: 224)
!1248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 32, elements: !363)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "metadata", scope: !1237, file: !6, line: 590, baseType: !234, size: 64, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "apptag_mask", scope: !1237, file: !6, line: 592, baseType: !558, size: 16, offset: 320)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "apptag", scope: !1237, file: !6, line: 594, baseType: !558, size: 16, offset: 336)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "reserved44", scope: !1237, file: !6, line: 596, baseType: !1248, size: 32, offset: 352)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "contig_or_cb_arg", scope: !1221, file: !48, line: 237, baseType: !234, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !1221, file: !48, line: 240, baseType: !234, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "cb_fn", scope: !827, file: !48, line: 312, baseType: !1256, size: 64, offset: 1024)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_nvme_cmd_cb", file: !6, line: 1390, baseType: !1257)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{null, !234, !1260}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1262)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_cpl", file: !25, line: 1319, size: 128, elements: !1263)
!1263 = !{!1264, !1265, !1266, !1267, !1268, !1269}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "cdw0", scope: !1262, file: !25, line: 1321, baseType: !546, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "cdw1", scope: !1262, file: !25, line: 1324, baseType: !546, size: 32, offset: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "sqhd", scope: !1262, file: !25, line: 1327, baseType: !558, size: 16, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "sqid", scope: !1262, file: !25, line: 1328, baseType: !558, size: 16, offset: 80)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1262, file: !25, line: 1331, baseType: !558, size: 16, offset: 96)
!1269 = !DIDerivedType(tag: DW_TAG_member, scope: !1262, file: !25, line: 1332, baseType: !1270, size: 16, offset: 112)
!1270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1262, file: !25, line: 1332, size: 16, elements: !1271)
!1271 = !{!1272, !1273}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "status_raw", scope: !1270, file: !25, line: 1333, baseType: !558, size: 16)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1270, file: !25, line: 1334, baseType: !1274, size: 16)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_status", file: !25, line: 1306, size: 16, elements: !1275)
!1275 = !{!1276, !1277, !1278, !1279, !1280, !1281}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1274, file: !25, line: 1307, baseType: !558, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "sc", scope: !1274, file: !25, line: 1308, baseType: !558, size: 8, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "sct", scope: !1274, file: !25, line: 1309, baseType: !558, size: 3, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "crd", scope: !1274, file: !25, line: 1310, baseType: !558, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !1274, file: !25, line: 1311, baseType: !558, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dnr", scope: !1274, file: !25, line: 1312, baseType: !558, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "cb_arg", scope: !827, file: !48, line: 313, baseType: !234, size: 64, offset: 1088)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "stailq", scope: !827, file: !48, line: 314, baseType: !1284, size: 64, offset: 1152)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !827, file: !48, line: 314, size: 64, elements: !1285)
!1285 = !{!1286}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !1284, file: !48, line: 314, baseType: !826, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "qpair", scope: !827, file: !48, line: 316, baseType: !1288, size: 64, offset: 1216)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_qpair", file: !48, line: 410, size: 1600, elements: !1290)
!1290 = !{!1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1312, !1317, !1321, !1340, !1345, !1451, !1504, !1505, !1506, !1515, !1520, !1525, !1530}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ctrlr", scope: !1289, file: !48, line: 411, baseType: !534, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1289, file: !48, line: 413, baseType: !558, size: 16, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "qprio", scope: !1289, file: !48, line: 415, baseType: !565, size: 8, offset: 80)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1289, file: !48, line: 417, baseType: !565, size: 3, offset: 88, flags: DIFlagBitField, extraData: i64 88)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !1289, file: !48, line: 419, baseType: !565, size: 1, offset: 91, flags: DIFlagBitField, extraData: i64 88)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "is_new_qpair", scope: !1289, file: !48, line: 421, baseType: !565, size: 1, offset: 92, flags: DIFlagBitField, extraData: i64 88)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "in_completion_context", scope: !1289, file: !48, line: 428, baseType: !565, size: 1, offset: 93, flags: DIFlagBitField, extraData: i64 88)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "delete_after_completion_context", scope: !1289, file: !48, line: 429, baseType: !565, size: 1, offset: 94, flags: DIFlagBitField, extraData: i64 88)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "no_deletion_notification_needed", scope: !1289, file: !48, line: 435, baseType: !565, size: 1, offset: 95, flags: DIFlagBitField, extraData: i64 88)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "last_fuse", scope: !1289, file: !48, line: 437, baseType: !565, size: 2, offset: 96, flags: DIFlagBitField, extraData: i64 88)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "transport_failure_reason", scope: !1289, file: !48, line: 439, baseType: !565, size: 2, offset: 98, flags: DIFlagBitField, extraData: i64 88)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "last_transport_failure_reason", scope: !1289, file: !48, line: 440, baseType: !565, size: 2, offset: 100, flags: DIFlagBitField, extraData: i64 88)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "trtype", scope: !1289, file: !48, line: 442, baseType: !5, size: 32, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "num_outstanding_reqs", scope: !1289, file: !48, line: 444, baseType: !546, size: 32, offset: 160)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_req", scope: !1289, file: !48, line: 447, baseType: !826, size: 64, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "free_req", scope: !1289, file: !48, line: 449, baseType: !1307, size: 128, offset: 256)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !48, line: 449, size: 128, elements: !1308)
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !1307, file: !48, line: 449, baseType: !826, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !1307, file: !48, line: 449, baseType: !1311, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "queued_req", scope: !1289, file: !48, line: 450, baseType: !1313, size: 128, offset: 384)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !48, line: 450, size: 128, elements: !1314)
!1314 = !{!1315, !1316}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !1313, file: !48, line: 450, baseType: !826, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !1313, file: !48, line: 450, baseType: !1311, size: 64, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "poll_group_stailq", scope: !1289, file: !48, line: 453, baseType: !1318, size: 64, offset: 512)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !48, line: 453, size: 64, elements: !1319)
!1319 = !{!1320}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !1318, file: !48, line: 453, baseType: !1288, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "err_cmd_head", scope: !1289, file: !48, line: 456, baseType: !1322, size: 128, offset: 576)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !48, line: 456, size: 128, elements: !1323)
!1323 = !{!1324, !1339}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1322, file: !48, line: 456, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nvme_error_cmd", file: !48, line: 264, size: 320, elements: !1327)
!1327 = !{!1328, !1329, !1330, !1331, !1332, !1333}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "do_not_submit", scope: !1326, file: !48, line: 265, baseType: !523, size: 8)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_tsc", scope: !1326, file: !48, line: 266, baseType: !576, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "err_count", scope: !1326, file: !48, line: 267, baseType: !546, size: 32, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "opc", scope: !1326, file: !48, line: 268, baseType: !565, size: 8, offset: 160)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1326, file: !48, line: 269, baseType: !1274, size: 16, offset: 176)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1326, file: !48, line: 270, baseType: !1334, size: 128, offset: 192)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1326, file: !48, line: 270, size: 128, elements: !1335)
!1335 = !{!1336, !1337}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !1334, file: !48, line: 270, baseType: !1325, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !1334, file: !48, line: 270, baseType: !1338, size: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1322, file: !48, line: 456, baseType: !1338, size: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "err_req_head", scope: !1289, file: !48, line: 458, baseType: !1341, size: 128, offset: 704)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !48, line: 458, size: 128, elements: !1342)
!1342 = !{!1343, !1344}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !1341, file: !48, line: 458, baseType: !826, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !1341, file: !48, line: 458, baseType: !1311, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "active_proc", scope: !1289, file: !48, line: 460, baseType: !1346, size: 64, offset: 832)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_ctrlr_process", file: !48, line: 817, size: 1088, elements: !1348)
!1348 = !{!1349, !1350, !1354, !1359, !1365, !1419, !1420, !1426, !1428, !1429, !1434, !1435, !1436, !1437}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "is_primary", scope: !1347, file: !48, line: 819, baseType: !523, size: 8)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1347, file: !48, line: 822, baseType: !1351, size: 32, offset: 32)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !1352, line: 97, baseType: !1353)
!1352 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !549, line: 154, baseType: !155)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "active_reqs", scope: !1347, file: !48, line: 825, baseType: !1355, size: 128, offset: 64)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1347, file: !48, line: 825, size: 128, elements: !1356)
!1356 = !{!1357, !1358}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !1355, file: !48, line: 825, baseType: !826, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !1355, file: !48, line: 825, baseType: !1311, size: 64, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "tailq", scope: !1347, file: !48, line: 827, baseType: !1360, size: 128, offset: 192)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1347, file: !48, line: 827, size: 128, elements: !1361)
!1361 = !{!1362, !1363}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !1360, file: !48, line: 827, baseType: !1346, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !1360, file: !48, line: 827, baseType: !1364, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "devhandle", scope: !1347, file: !48, line: 830, baseType: !1366, size: 64, offset: 320)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_pci_device", file: !1368, line: 661, size: 960, elements: !1369)
!1368 = !DIFile(filename: "include/spdk/env.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "c5bb62a61dfb30b3c4fe3f80f0d985bb")
!1369 = !{!1370, !1371, !1372, !1379, !1387, !1388, !1389, !1394, !1398, !1402, !1403}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1367, file: !1368, line: 662, baseType: !1366, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "dev_handle", scope: !1367, file: !1368, line: 663, baseType: !234, size: 64, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1367, file: !1368, line: 664, baseType: !1373, size: 64, offset: 128)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_pci_addr", file: !1368, line: 639, size: 64, elements: !1374)
!1374 = !{!1375, !1376, !1377, !1378}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1373, file: !1368, line: 640, baseType: !546, size: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1373, file: !1368, line: 641, baseType: !565, size: 8, offset: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1373, file: !1368, line: 642, baseType: !565, size: 8, offset: 40)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1373, file: !1368, line: 643, baseType: !565, size: 8, offset: 48)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1367, file: !1368, line: 665, baseType: !1380, size: 96, offset: 192)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_pci_id", file: !1368, line: 646, size: 96, elements: !1381)
!1381 = !{!1382, !1383, !1384, !1385, !1386}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "class_id", scope: !1380, file: !1368, line: 647, baseType: !546, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !1380, file: !1368, line: 648, baseType: !558, size: 16, offset: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "device_id", scope: !1380, file: !1368, line: 649, baseType: !558, size: 16, offset: 48)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor_id", scope: !1380, file: !1368, line: 650, baseType: !558, size: 16, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice_id", scope: !1380, file: !1368, line: 651, baseType: !558, size: 16, offset: 80)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "socket_id", scope: !1367, file: !1368, line: 666, baseType: !155, size: 32, offset: 288)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1367, file: !1368, line: 667, baseType: !521, size: 64, offset: 320)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "map_bar", scope: !1367, file: !1368, line: 669, baseType: !1390, size: 64, offset: 384)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!155, !1366, !546, !1233, !1393, !1393}
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_bar", scope: !1367, file: !1368, line: 671, baseType: !1395, size: 64, offset: 448)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!155, !1366, !546, !234}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_read", scope: !1367, file: !1368, line: 673, baseType: !1399, size: 64, offset: 512)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!155, !1366, !234, !546, !546}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_write", scope: !1367, file: !1368, line: 675, baseType: !1399, size: 64, offset: 576)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !1367, file: !1368, line: 691, baseType: !1404, size: 320, offset: 640)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_spdk_pci_device_internal", file: !1368, line: 678, size: 320, elements: !1405)
!1405 = !{!1406, !1409, !1410, !1411, !1412, !1413}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1404, file: !1368, line: 679, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_pci_driver", file: !1368, line: 679, flags: DIFlagFwdDecl)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !1404, file: !1368, line: 680, baseType: !523, size: 8, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "claim_fd", scope: !1404, file: !1368, line: 682, baseType: !155, size: 32, offset: 96)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "pending_removal", scope: !1404, file: !1368, line: 683, baseType: !523, size: 8, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1404, file: !1368, line: 689, baseType: !523, size: 8, offset: 136)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "tailq", scope: !1404, file: !1368, line: 690, baseType: !1414, size: 128, offset: 192)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1404, file: !1368, line: 690, size: 128, elements: !1415)
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !1414, file: !1368, line: 690, baseType: !1366, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !1414, file: !1368, line: 690, baseType: !1418, size: 64, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1347, file: !48, line: 833, baseType: !155, size: 32, offset: 384)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_io_qpairs", scope: !1347, file: !48, line: 836, baseType: !1421, size: 128, offset: 448)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1347, file: !48, line: 836, size: 128, elements: !1422)
!1422 = !{!1423, !1424}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1421, file: !48, line: 836, baseType: !1288, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1421, file: !48, line: 836, baseType: !1425, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "aer_cb_fn", scope: !1347, file: !48, line: 838, baseType: !1427, size: 64, offset: 576)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_nvme_aer_cb", file: !6, line: 1400, baseType: !1257)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "aer_cb_arg", scope: !1347, file: !48, line: 839, baseType: !234, size: 64, offset: 640)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_cb_fn", scope: !1347, file: !48, line: 844, baseType: !1430, size: 64, offset: 704)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_nvme_timeout_cb", file: !6, line: 1454, baseType: !1431)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{null, !234, !534, !1288, !558}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_cb_arg", scope: !1347, file: !48, line: 845, baseType: !234, size: 64, offset: 768)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_io_ticks", scope: !1347, file: !48, line: 847, baseType: !576, size: 64, offset: 832)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_admin_ticks", scope: !1347, file: !48, line: 848, baseType: !576, size: 64, offset: 896)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "async_events", scope: !1347, file: !48, line: 851, baseType: !1438, size: 128, offset: 960)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1347, file: !48, line: 851, size: 128, elements: !1439)
!1439 = !{!1440, !1449}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !1438, file: !48, line: 851, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_ctrlr_aer_completion_list", file: !48, line: 809, size: 192, elements: !1443)
!1443 = !{!1444, !1445}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "cpl", scope: !1442, file: !48, line: 810, baseType: !1262, size: 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1442, file: !48, line: 811, baseType: !1446, size: 64, offset: 128)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1442, file: !48, line: 811, size: 64, elements: !1447)
!1447 = !{!1448}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !1446, file: !48, line: 811, baseType: !1441, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !1438, file: !48, line: 851, baseType: !1450, size: 64, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "poll_group", scope: !1289, file: !48, line: 462, baseType: !1452, size: 64, offset: 896)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_transport_poll_group", file: !48, line: 489, size: 448, elements: !1454)
!1454 = !{!1455, !1486, !1490, !1495, !1500}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1453, file: !48, line: 490, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_poll_group", file: !48, line: 483, size: 320, elements: !1458)
!1458 = !{!1459, !1460, !1480}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1457, file: !48, line: 484, baseType: !234, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "accel_fn_table", scope: !1457, file: !48, line: 485, baseType: !1461, size: 128, offset: 64)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_accel_fn_table", file: !6, line: 303, size: 128, elements: !1462)
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "table_size", scope: !1461, file: !6, line: 311, baseType: !1240, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "submit_accel_crc32c", scope: !1461, file: !6, line: 314, baseType: !1465, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{null, !234, !1234, !1468, !546, !546, !1476, !234}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1470, line: 26, size: 128, elements: !1471)
!1470 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1469, file: !1470, line: 28, baseType: !234, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1469, file: !1470, line: 29, baseType: !1474, size: 64, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1475, line: 70, baseType: !578)
!1475 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_nvme_accel_completion_cb", file: !6, line: 295, baseType: !1477)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{null, !234, !155}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "tgroups", scope: !1457, file: !48, line: 486, baseType: !1481, size: 128, offset: 192)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1457, file: !48, line: 486, size: 128, elements: !1482)
!1482 = !{!1483, !1484}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !1481, file: !48, line: 486, baseType: !1452, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !1481, file: !48, line: 486, baseType: !1485, size: 64, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "transport", scope: !1453, file: !48, line: 491, baseType: !1487, size: 64, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1489)
!1489 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_transport", file: !6, line: 3973, flags: DIFlagFwdDecl)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "connected_qpairs", scope: !1453, file: !48, line: 492, baseType: !1491, size: 128, offset: 128)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1453, file: !48, line: 492, size: 128, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !1491, file: !48, line: 492, baseType: !1288, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !1491, file: !48, line: 492, baseType: !1425, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected_qpairs", scope: !1453, file: !48, line: 493, baseType: !1496, size: 128, offset: 256)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1453, file: !48, line: 493, size: 128, elements: !1497)
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !1496, file: !48, line: 493, baseType: !1288, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !1496, file: !48, line: 493, baseType: !1425, size: 64, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1453, file: !48, line: 494, baseType: !1501, size: 64, offset: 384)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1453, file: !48, line: 494, size: 64, elements: !1502)
!1502 = !{!1503}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !1501, file: !48, line: 494, baseType: !1452, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "poll_group_tailq_head", scope: !1289, file: !48, line: 464, baseType: !234, size: 64, offset: 960)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "transport", scope: !1289, file: !48, line: 466, baseType: !1487, size: 64, offset: 1024)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "poll_status", scope: !1289, file: !48, line: 470, baseType: !1507, size: 64, offset: 1088)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nvme_completion_poll_status", file: !48, line: 380, size: 320, elements: !1509)
!1509 = !{!1510, !1511, !1512, !1513, !1514}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "cpl", scope: !1508, file: !48, line: 381, baseType: !1262, size: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_tsc", scope: !1508, file: !48, line: 382, baseType: !576, size: 64, offset: 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "dma_data", scope: !1508, file: !48, line: 387, baseType: !234, size: 64, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1508, file: !48, line: 388, baseType: !523, size: 8, offset: 256)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "timed_out", scope: !1508, file: !48, line: 391, baseType: !523, size: 8, offset: 264)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "tailq", scope: !1289, file: !48, line: 473, baseType: !1516, size: 128, offset: 1152)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !48, line: 473, size: 128, elements: !1517)
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !1516, file: !48, line: 473, baseType: !1288, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !1516, file: !48, line: 473, baseType: !1425, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "per_process_tailq", scope: !1289, file: !48, line: 476, baseType: !1521, size: 128, offset: 1280)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !48, line: 476, size: 128, elements: !1522)
!1522 = !{!1523, !1524}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !1521, file: !48, line: 476, baseType: !1288, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !1521, file: !48, line: 476, baseType: !1425, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "aborting_queued_req", scope: !1289, file: !48, line: 478, baseType: !1526, size: 128, offset: 1408)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !48, line: 478, size: 128, elements: !1527)
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !1526, file: !48, line: 478, baseType: !826, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !1526, file: !48, line: 478, baseType: !1311, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "req_buf", scope: !1289, file: !48, line: 480, baseType: !234, size: 64, offset: 1536)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "submit_tick", scope: !827, file: !48, line: 322, baseType: !576, size: 64, offset: 1280)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !827, file: !48, line: 331, baseType: !1351, size: 32, offset: 1344)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "cpl", scope: !827, file: !48, line: 332, baseType: !1262, size: 128, offset: 1376)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "md_size", scope: !827, file: !48, line: 334, baseType: !546, size: 32, offset: 1504)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !827, file: !48, line: 349, baseType: !1536, size: 128, offset: 1536)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !827, file: !48, line: 349, size: 128, elements: !1537)
!1537 = !{!1538, !1539}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1536, file: !48, line: 349, baseType: !826, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1536, file: !48, line: 349, baseType: !1311, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "child_tailq", scope: !827, file: !48, line: 354, baseType: !1541, size: 128, offset: 1664)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !827, file: !48, line: 354, size: 128, elements: !1542)
!1542 = !{!1543, !1544}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !1541, file: !48, line: 354, baseType: !826, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !1541, file: !48, line: 354, baseType: !1311, size: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !827, file: !48, line: 360, baseType: !826, size: 64, offset: 1792)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "parent_status", scope: !827, file: !48, line: 369, baseType: !1262, size: 128, offset: 1856)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "user_cb_fn", scope: !827, file: !48, line: 375, baseType: !1256, size: 64, offset: 1984)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "user_cb_arg", scope: !827, file: !48, line: 376, baseType: !234, size: 64, offset: 2048)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "user_buffer", scope: !827, file: !48, line: 377, baseType: !234, size: 64, offset: 2112)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "cpl", scope: !822, file: !48, line: 397, baseType: !1262, size: 128, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "ctrlr_lock", scope: !535, file: !48, line: 937, baseType: !249, size: 320, offset: 11584)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "adminq", scope: !535, file: !48, line: 939, baseType: !1288, size: 64, offset: 11904)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "shadow_doorbell", scope: !535, file: !48, line: 942, baseType: !1234, size: 64, offset: 11968)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "eventidx", scope: !535, file: !48, line: 944, baseType: !1234, size: 64, offset: 12032)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "cdata", scope: !535, file: !48, line: 949, baseType: !1556, size: 32768, offset: 12096)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_ctrlr_data", file: !25, line: 2059, size: 32768, elements: !1557)
!1557 = !{!1558, !1559, !1560, !1568, !1570, !1571, !1572, !1573, !1581, !1582, !1583, !1584, !1585, !1586, !1602, !1622, !1623, !1625, !1626, !1627, !1629, !1633, !1639, !1644, !1650, !1665, !1666, !1667, !1675, !1686, !1687, !1688, !1693, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1714, !1715, !1724, !1725, !1726, !1735, !1736, !1737, !1748, !1749, !1750, !1751, !1752, !1753, !1764, !1765, !1766, !1767, !1768, !1770, !1771, !1775, !1780, !1785, !1786, !1787, !1800, !1805, !1812, !1818, !1819, !1820, !1821, !1822, !1823, !1828, !1841, !1842, !1843, !1844, !1848, !1849, !1850, !1871, !1901}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "vid", scope: !1556, file: !25, line: 2063, baseType: !558, size: 16)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "ssvid", scope: !1556, file: !25, line: 2066, baseType: !558, size: 16, offset: 16)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "sn", scope: !1556, file: !25, line: 2069, baseType: !1561, size: 160, offset: 32)
!1561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1562, size: 160, elements: !1566)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !1563, line: 24, baseType: !1564)
!1563 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !549, line: 37, baseType: !1565)
!1565 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1566 = !{!1567}
!1567 = !DISubrange(count: 20)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "mn", scope: !1556, file: !25, line: 2072, baseType: !1569, size: 320, offset: 192)
!1569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1562, size: 320, elements: !276)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "fr", scope: !1556, file: !25, line: 2075, baseType: !676, size: 64, offset: 512)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "rab", scope: !1556, file: !25, line: 2078, baseType: !565, size: 8, offset: 576)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ieee", scope: !1556, file: !25, line: 2081, baseType: !868, size: 24, offset: 584)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "cmic", scope: !1556, file: !25, line: 2090, baseType: !1574, size: 8, offset: 608)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1556, file: !25, line: 2084, size: 8, elements: !1575)
!1575 = !{!1576, !1577, !1578, !1579, !1580}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "multi_port", scope: !1574, file: !25, line: 2085, baseType: !565, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "multi_ctrlr", scope: !1574, file: !25, line: 2086, baseType: !565, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "sr_iov", scope: !1574, file: !25, line: 2087, baseType: !565, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "ana_reporting", scope: !1574, file: !25, line: 2088, baseType: !565, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1574, file: !25, line: 2089, baseType: !565, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "mdts", scope: !1556, file: !25, line: 2093, baseType: !565, size: 8, offset: 616)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "cntlid", scope: !1556, file: !25, line: 2096, baseType: !558, size: 16, offset: 624)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !1556, file: !25, line: 2099, baseType: !794, size: 32, offset: 640)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "rtd3r", scope: !1556, file: !25, line: 2102, baseType: !546, size: 32, offset: 672)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "rtd3e", scope: !1556, file: !25, line: 2105, baseType: !546, size: 32, offset: 704)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "oaes", scope: !1556, file: !25, line: 2108, baseType: !1587, size: 32, offset: 736)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_cdata_oaes", file: !25, line: 1970, size: 32, elements: !1588)
!1588 = !{!1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !1587, file: !25, line: 1971, baseType: !546, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "ns_attribute_notices", scope: !1587, file: !25, line: 1974, baseType: !546, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "fw_activation_notices", scope: !1587, file: !25, line: 1977, baseType: !546, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !1587, file: !25, line: 1979, baseType: !546, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ana_change_notices", scope: !1587, file: !25, line: 1982, baseType: !546, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "pleal_change_notices", scope: !1587, file: !25, line: 1985, baseType: !546, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "lba_sia_notices", scope: !1587, file: !25, line: 1988, baseType: !546, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "egealp_change_notices", scope: !1587, file: !25, line: 1991, baseType: !546, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "nnvm_sse", scope: !1587, file: !25, line: 1994, baseType: !546, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !1587, file: !25, line: 1996, baseType: !546, size: 11, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "zdes_change_notices", scope: !1587, file: !25, line: 1999, baseType: !546, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !1587, file: !25, line: 2001, baseType: !546, size: 3, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "discovery_log_change_notices", scope: !1587, file: !25, line: 2004, baseType: !546, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "ctratt", scope: !1556, file: !25, line: 2111, baseType: !1603, size: 32, offset: 768)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_cdata_ctratt", file: !25, line: 2007, size: 32, elements: !1604)
!1604 = !{!1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "host_id_exhid_supported", scope: !1603, file: !25, line: 2009, baseType: !546, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "non_operational_power_state_permissive_mode", scope: !1603, file: !25, line: 2012, baseType: !546, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "nvm_sets", scope: !1603, file: !25, line: 2015, baseType: !546, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "read_recovery_levels", scope: !1603, file: !25, line: 2018, baseType: !546, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "endurance_groups", scope: !1603, file: !25, line: 2021, baseType: !546, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "predictable_latency_mode", scope: !1603, file: !25, line: 2024, baseType: !546, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "tbkas", scope: !1603, file: !25, line: 2027, baseType: !546, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_granularity", scope: !1603, file: !25, line: 2030, baseType: !546, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "sq_associations", scope: !1603, file: !25, line: 2033, baseType: !546, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_list", scope: !1603, file: !25, line: 2036, baseType: !546, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "mds", scope: !1603, file: !25, line: 2039, baseType: !546, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_capacity_management", scope: !1603, file: !25, line: 2042, baseType: !546, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "variable_capacity_management", scope: !1603, file: !25, line: 2045, baseType: !546, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "delete_endurance_group", scope: !1603, file: !25, line: 2048, baseType: !546, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "delete_nvm_set", scope: !1603, file: !25, line: 2051, baseType: !546, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "elbas", scope: !1603, file: !25, line: 2054, baseType: !546, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1603, file: !25, line: 2056, baseType: !546, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "rrls", scope: !1556, file: !25, line: 2114, baseType: !558, size: 16, offset: 800)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_102", scope: !1556, file: !25, line: 2116, baseType: !1624, size: 72, offset: 816)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 72, elements: !368)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "cntrltype", scope: !1556, file: !25, line: 2119, baseType: !565, size: 8, offset: 888)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "fguid", scope: !1556, file: !25, line: 2122, baseType: !678, size: 128, offset: 896)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "crdt", scope: !1556, file: !25, line: 2125, baseType: !1628, size: 48, offset: 1024)
!1628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 48, elements: !351)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_134", scope: !1556, file: !25, line: 2127, baseType: !1630, size: 952, offset: 1072)
!1630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 952, elements: !1631)
!1631 = !{!1632}
!1632 = !DISubrange(count: 119)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "nvmsr", scope: !1556, file: !25, line: 2138, baseType: !1634, size: 8, offset: 2024)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1556, file: !25, line: 2130, size: 8, elements: !1635)
!1635 = !{!1636, !1637, !1638}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nvmesd", scope: !1634, file: !25, line: 2132, baseType: !565, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "nvmee", scope: !1634, file: !25, line: 2135, baseType: !565, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "nvmsr_rsvd", scope: !1634, file: !25, line: 2137, baseType: !565, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "vwci", scope: !1556, file: !25, line: 2147, baseType: !1640, size: 8, offset: 2032)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1556, file: !25, line: 2141, size: 8, elements: !1641)
!1641 = !{!1642, !1643}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "vwcr", scope: !1640, file: !25, line: 2143, baseType: !565, size: 7, flags: DIFlagBitField, extraData: i64 0)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "vwcrv", scope: !1640, file: !25, line: 2146, baseType: !565, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "mec", scope: !1556, file: !25, line: 2158, baseType: !1645, size: 8, offset: 2040)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1556, file: !25, line: 2150, size: 8, elements: !1646)
!1646 = !{!1647, !1648, !1649}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "smbusme", scope: !1645, file: !25, line: 2152, baseType: !565, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "pcieme", scope: !1645, file: !25, line: 2155, baseType: !565, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "mec_rsvd", scope: !1645, file: !25, line: 2157, baseType: !565, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "oacs", scope: !1556, file: !25, line: 2163, baseType: !1651, size: 16, offset: 2048)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_cdata_oacs", file: !25, line: 1928, size: 16, elements: !1652)
!1652 = !{!1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1651, file: !25, line: 1930, baseType: !558, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !1651, file: !25, line: 1933, baseType: !558, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "firmware", scope: !1651, file: !25, line: 1936, baseType: !558, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "ns_manage", scope: !1651, file: !25, line: 1939, baseType: !558, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "device_self_test", scope: !1651, file: !25, line: 1942, baseType: !558, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "directives", scope: !1651, file: !25, line: 1945, baseType: !558, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "nvme_mi", scope: !1651, file: !25, line: 1948, baseType: !558, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "virtualization_management", scope: !1651, file: !25, line: 1951, baseType: !558, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "doorbell_buffer_config", scope: !1651, file: !25, line: 1954, baseType: !558, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "get_lba_status", scope: !1651, file: !25, line: 1957, baseType: !558, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "command_feature_lockdown", scope: !1651, file: !25, line: 1960, baseType: !558, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "oacs_rsvd", scope: !1651, file: !25, line: 1962, baseType: !558, size: 5, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "acl", scope: !1556, file: !25, line: 2166, baseType: !565, size: 8, offset: 2064)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "aerl", scope: !1556, file: !25, line: 2169, baseType: !565, size: 8, offset: 2072)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "frmw", scope: !1556, file: !25, line: 2186, baseType: !1668, size: 8, offset: 2080)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1556, file: !25, line: 2172, size: 8, elements: !1669)
!1669 = !{!1670, !1671, !1672, !1673, !1674}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "slot1_ro", scope: !1668, file: !25, line: 2174, baseType: !565, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "num_slots", scope: !1668, file: !25, line: 2177, baseType: !565, size: 3, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "activation_without_reset", scope: !1668, file: !25, line: 2180, baseType: !565, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_update_detection", scope: !1668, file: !25, line: 2183, baseType: !565, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "frmw_rsvd", scope: !1668, file: !25, line: 2185, baseType: !565, size: 2, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "lpa", scope: !1556, file: !25, line: 2205, baseType: !1676, size: 8, offset: 2088)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1556, file: !25, line: 2189, size: 8, elements: !1677)
!1677 = !{!1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "ns_smart", scope: !1676, file: !25, line: 2191, baseType: !565, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "celp", scope: !1676, file: !25, line: 2193, baseType: !565, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "edlp", scope: !1676, file: !25, line: 2195, baseType: !565, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "telemetry", scope: !1676, file: !25, line: 2197, baseType: !565, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "pelp", scope: !1676, file: !25, line: 2199, baseType: !565, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "lplp", scope: !1676, file: !25, line: 2201, baseType: !565, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "da4_telemetry", scope: !1676, file: !25, line: 2203, baseType: !565, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "lpa_rsvd", scope: !1676, file: !25, line: 2204, baseType: !565, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "elpe", scope: !1556, file: !25, line: 2208, baseType: !565, size: 8, offset: 2096)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "npss", scope: !1556, file: !25, line: 2211, baseType: !565, size: 8, offset: 2104)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "avscc", scope: !1556, file: !25, line: 2219, baseType: !1689, size: 8, offset: 2112)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1556, file: !25, line: 2214, size: 8, elements: !1690)
!1690 = !{!1691, !1692}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "spec_format", scope: !1689, file: !25, line: 2216, baseType: !565, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "avscc_rsvd", scope: !1689, file: !25, line: 2218, baseType: !565, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "apsta", scope: !1556, file: !25, line: 2227, baseType: !1694, size: 8, offset: 2120)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1556, file: !25, line: 2222, size: 8, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !1694, file: !25, line: 2224, baseType: !565, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "apsta_rsvd", scope: !1694, file: !25, line: 2226, baseType: !565, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "wctemp", scope: !1556, file: !25, line: 2230, baseType: !558, size: 16, offset: 2128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "cctemp", scope: !1556, file: !25, line: 2233, baseType: !558, size: 16, offset: 2144)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "mtfa", scope: !1556, file: !25, line: 2236, baseType: !558, size: 16, offset: 2160)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "hmpre", scope: !1556, file: !25, line: 2239, baseType: !546, size: 32, offset: 2176)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "hmmin", scope: !1556, file: !25, line: 2242, baseType: !546, size: 32, offset: 2208)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "tnvmcap", scope: !1556, file: !25, line: 2245, baseType: !661, size: 128, offset: 2240)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "unvmcap", scope: !1556, file: !25, line: 2248, baseType: !661, size: 128, offset: 2368)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "rpmbs", scope: !1556, file: !25, line: 2260, baseType: !1706, size: 32, offset: 2496)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1556, file: !25, line: 2251, size: 32, elements: !1707)
!1707 = !{!1708, !1709, !1710, !1711, !1712, !1713}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "num_rpmb_units", scope: !1706, file: !25, line: 2252, baseType: !565, size: 3, flags: DIFlagBitField, extraData: i64 0)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "auth_method", scope: !1706, file: !25, line: 2253, baseType: !565, size: 3, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !1706, file: !25, line: 2254, baseType: !565, size: 2, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !1706, file: !25, line: 2256, baseType: !565, size: 8, offset: 8)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !1706, file: !25, line: 2258, baseType: !565, size: 8, offset: 16)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !1706, file: !25, line: 2259, baseType: !565, size: 8, offset: 24)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "edstt", scope: !1556, file: !25, line: 2263, baseType: !558, size: 16, offset: 2528)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "dsto", scope: !1556, file: !25, line: 2274, baseType: !1716, size: 8, offset: 2544)
!1716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1556, file: !25, line: 2266, size: 8, elements: !1717)
!1717 = !{!1718, !1719}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1716, file: !25, line: 2267, baseType: !565, size: 8)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1716, file: !25, line: 2273, baseType: !1720, size: 8)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1716, file: !25, line: 2268, size: 8, elements: !1721)
!1721 = !{!1722, !1723}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "one_only", scope: !1720, file: !25, line: 2270, baseType: !565, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1720, file: !25, line: 2272, baseType: !565, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "fwug", scope: !1556, file: !25, line: 2283, baseType: !565, size: 8, offset: 2552)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "kas", scope: !1556, file: !25, line: 2291, baseType: !558, size: 16, offset: 2560)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "hctma", scope: !1556, file: !25, line: 2300, baseType: !1727, size: 16, offset: 2576)
!1727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1556, file: !25, line: 2294, size: 16, elements: !1728)
!1728 = !{!1729, !1730}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1727, file: !25, line: 2295, baseType: !558, size: 16)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1727, file: !25, line: 2299, baseType: !1731, size: 16)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1727, file: !25, line: 2296, size: 16, elements: !1732)
!1732 = !{!1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !1731, file: !25, line: 2297, baseType: !558, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1731, file: !25, line: 2298, baseType: !558, size: 15, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "mntmt", scope: !1556, file: !25, line: 2303, baseType: !558, size: 16, offset: 2592)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "mxtmt", scope: !1556, file: !25, line: 2306, baseType: !558, size: 16, offset: 2608)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "sanicap", scope: !1556, file: !25, line: 2317, baseType: !1738, size: 32, offset: 2624)
!1738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1556, file: !25, line: 2309, size: 32, elements: !1739)
!1739 = !{!1740, !1741}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !1738, file: !25, line: 2310, baseType: !546, size: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1738, file: !25, line: 2316, baseType: !1742, size: 32)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1738, file: !25, line: 2311, size: 32, elements: !1743)
!1743 = !{!1744, !1745, !1746, !1747}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "crypto_erase", scope: !1742, file: !25, line: 2312, baseType: !546, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "block_erase", scope: !1742, file: !25, line: 2313, baseType: !546, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "overwrite", scope: !1742, file: !25, line: 2314, baseType: !546, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1742, file: !25, line: 2315, baseType: !546, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "hmminds", scope: !1556, file: !25, line: 2320, baseType: !546, size: 32, offset: 2656)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "hmmaxd", scope: !1556, file: !25, line: 2323, baseType: !558, size: 16, offset: 2688)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "nsetidmax", scope: !1556, file: !25, line: 2326, baseType: !558, size: 16, offset: 2704)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "endgidmax", scope: !1556, file: !25, line: 2329, baseType: !558, size: 16, offset: 2720)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "anatt", scope: !1556, file: !25, line: 2332, baseType: !565, size: 8, offset: 2736)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "anacap", scope: !1556, file: !25, line: 2344, baseType: !1754, size: 8, offset: 2744)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1556, file: !25, line: 2335, size: 8, elements: !1755)
!1755 = !{!1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "ana_optimized_state", scope: !1754, file: !25, line: 2336, baseType: !565, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "ana_non_optimized_state", scope: !1754, file: !25, line: 2337, baseType: !565, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "ana_inaccessible_state", scope: !1754, file: !25, line: 2338, baseType: !565, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ana_persistent_loss_state", scope: !1754, file: !25, line: 2339, baseType: !565, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ana_change_state", scope: !1754, file: !25, line: 2340, baseType: !565, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1754, file: !25, line: 2341, baseType: !565, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "no_change_anagrpid", scope: !1754, file: !25, line: 2342, baseType: !565, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_anagrpid", scope: !1754, file: !25, line: 2343, baseType: !565, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "anagrpmax", scope: !1556, file: !25, line: 2347, baseType: !546, size: 32, offset: 2752)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "nanagrpid", scope: !1556, file: !25, line: 2349, baseType: !546, size: 32, offset: 2784)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "pels", scope: !1556, file: !25, line: 2352, baseType: !546, size: 32, offset: 2816)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "domain_identifier", scope: !1556, file: !25, line: 2355, baseType: !558, size: 16, offset: 2848)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !1556, file: !25, line: 2357, baseType: !1769, size: 80, offset: 2864)
!1769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 80, elements: !449)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "megcap", scope: !1556, file: !25, line: 2360, baseType: !678, size: 128, offset: 2944)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "reserved384", scope: !1556, file: !25, line: 2363, baseType: !1772, size: 1024, offset: 3072)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 1024, elements: !1773)
!1773 = !{!1774}
!1774 = !DISubrange(count: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "sqes", scope: !1556, file: !25, line: 2371, baseType: !1776, size: 8, offset: 4096)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1556, file: !25, line: 2368, size: 8, elements: !1777)
!1777 = !{!1778, !1779}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !1776, file: !25, line: 2369, baseType: !565, size: 4, flags: DIFlagBitField, extraData: i64 0)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1776, file: !25, line: 2370, baseType: !565, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "cqes", scope: !1556, file: !25, line: 2377, baseType: !1781, size: 8, offset: 4104)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1556, file: !25, line: 2374, size: 8, elements: !1782)
!1782 = !{!1783, !1784}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !1781, file: !25, line: 2375, baseType: !565, size: 4, flags: DIFlagBitField, extraData: i64 0)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1781, file: !25, line: 2376, baseType: !565, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "maxcmd", scope: !1556, file: !25, line: 2379, baseType: !558, size: 16, offset: 4112)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "nn", scope: !1556, file: !25, line: 2382, baseType: !546, size: 32, offset: 4128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "oncs", scope: !1556, file: !25, line: 2385, baseType: !1788, size: 16, offset: 4160)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_cdata_oncs", file: !25, line: 1915, size: 16, elements: !1789)
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "compare", scope: !1788, file: !25, line: 1916, baseType: !558, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "write_unc", scope: !1788, file: !25, line: 1917, baseType: !558, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "dsm", scope: !1788, file: !25, line: 1918, baseType: !558, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "write_zeroes", scope: !1788, file: !25, line: 1919, baseType: !558, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "set_features_save", scope: !1788, file: !25, line: 1920, baseType: !558, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "reservations", scope: !1788, file: !25, line: 1921, baseType: !558, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !1788, file: !25, line: 1922, baseType: !558, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !1788, file: !25, line: 1923, baseType: !558, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1788, file: !25, line: 1924, baseType: !558, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "reserved9", scope: !1788, file: !25, line: 1925, baseType: !558, size: 7, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "fuses", scope: !1556, file: !25, line: 2388, baseType: !1801, size: 16, offset: 4176)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_cdata_fuses", file: !25, line: 1965, size: 16, elements: !1802)
!1802 = !{!1803, !1804}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "compare_and_write", scope: !1801, file: !25, line: 1966, baseType: !558, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1801, file: !25, line: 1967, baseType: !558, size: 15, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "fna", scope: !1556, file: !25, line: 2396, baseType: !1806, size: 8, offset: 4192)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1556, file: !25, line: 2391, size: 8, elements: !1807)
!1807 = !{!1808, !1809, !1810, !1811}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "format_all_ns", scope: !1806, file: !25, line: 2392, baseType: !565, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "erase_all_ns", scope: !1806, file: !25, line: 2393, baseType: !565, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "crypto_erase_supported", scope: !1806, file: !25, line: 2394, baseType: !565, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1806, file: !25, line: 2395, baseType: !565, size: 5, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "vwc", scope: !1556, file: !25, line: 2403, baseType: !1813, size: 8, offset: 4200)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1556, file: !25, line: 2399, size: 8, elements: !1814)
!1814 = !{!1815, !1816, !1817}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !1813, file: !25, line: 2400, baseType: !565, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flush_broadcast", scope: !1813, file: !25, line: 2401, baseType: !565, size: 2, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1813, file: !25, line: 2402, baseType: !565, size: 5, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "awun", scope: !1556, file: !25, line: 2406, baseType: !558, size: 16, offset: 4208)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "awupf", scope: !1556, file: !25, line: 2409, baseType: !558, size: 16, offset: 4224)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "nvscc", scope: !1556, file: !25, line: 2412, baseType: !565, size: 8, offset: 4240)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "nwpc", scope: !1556, file: !25, line: 2415, baseType: !565, size: 8, offset: 4248)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "acwu", scope: !1556, file: !25, line: 2418, baseType: !558, size: 16, offset: 4256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "ocfs", scope: !1556, file: !25, line: 2424, baseType: !1824, size: 16, offset: 4272)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1556, file: !25, line: 2421, size: 16, elements: !1825)
!1825 = !{!1826, !1827}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "copy_format0", scope: !1824, file: !25, line: 2422, baseType: !558, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !1824, file: !25, line: 2423, baseType: !558, size: 15, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "sgls", scope: !1556, file: !25, line: 2427, baseType: !1829, size: 32, offset: 4288)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_cdata_sgls", file: !25, line: 1901, size: 32, elements: !1830)
!1830 = !{!1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !1829, file: !25, line: 1902, baseType: !546, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "keyed_sgl", scope: !1829, file: !25, line: 1903, baseType: !546, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !1829, file: !25, line: 1904, baseType: !546, size: 13, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "bit_bucket_descriptor", scope: !1829, file: !25, line: 1905, baseType: !546, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_pointer", scope: !1829, file: !25, line: 1906, baseType: !546, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "oversized_sgl", scope: !1829, file: !25, line: 1907, baseType: !546, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_address", scope: !1829, file: !25, line: 1908, baseType: !546, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "sgl_offset", scope: !1829, file: !25, line: 1909, baseType: !546, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "transport_sgl", scope: !1829, file: !25, line: 1910, baseType: !546, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !1829, file: !25, line: 1911, baseType: !546, size: 10, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "mnan", scope: !1556, file: !25, line: 2430, baseType: !546, size: 32, offset: 4320)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "maxdna", scope: !1556, file: !25, line: 2433, baseType: !678, size: 128, offset: 4352)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "maxcna", scope: !1556, file: !25, line: 2436, baseType: !546, size: 32, offset: 4480)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !1556, file: !25, line: 2438, baseType: !1845, size: 1632, offset: 4512)
!1845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 1632, elements: !1846)
!1846 = !{!1847}
!1847 = !DISubrange(count: 204)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "subnqn", scope: !1556, file: !25, line: 2440, baseType: !731, size: 2048, offset: 6144)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "reserved5", scope: !1556, file: !25, line: 2442, baseType: !727, size: 6144, offset: 8192)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "nvmf_specific", scope: !1556, file: !25, line: 2444, baseType: !1851, size: 2048, offset: 14336)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_cdata_nvmf_specific", file: !25, line: 1870, size: 2048, elements: !1852)
!1852 = !{!1853, !1854, !1855, !1856, !1861, !1862, !1867}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "ioccsz", scope: !1851, file: !25, line: 1872, baseType: !546, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "iorcsz", scope: !1851, file: !25, line: 1875, baseType: !546, size: 32, offset: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "icdoff", scope: !1851, file: !25, line: 1878, baseType: !558, size: 16, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "ctrattr", scope: !1851, file: !25, line: 1885, baseType: !1857, size: 8, offset: 80)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1851, file: !25, line: 1881, size: 8, elements: !1858)
!1858 = !{!1859, !1860}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "ctrlr_model", scope: !1857, file: !25, line: 1883, baseType: !565, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1857, file: !25, line: 1884, baseType: !565, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "msdbd", scope: !1851, file: !25, line: 1888, baseType: !565, size: 8, offset: 88)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ofcs", scope: !1851, file: !25, line: 1895, baseType: !1863, size: 16, offset: 96)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1851, file: !25, line: 1891, size: 16, elements: !1864)
!1864 = !{!1865, !1866}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !1863, file: !25, line: 1893, baseType: !558, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1863, file: !25, line: 1894, baseType: !558, size: 15, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1851, file: !25, line: 1897, baseType: !1868, size: 1936, offset: 112)
!1868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 1936, elements: !1869)
!1869 = !{!1870}
!1870 = !DISubrange(count: 242)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "psd", scope: !1556, file: !25, line: 2447, baseType: !1872, size: 8192, offset: 16384)
!1872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1873, size: 8192, elements: !1899)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_power_state", file: !25, line: 1734, size: 256, elements: !1874)
!1874 = !{!1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1873, file: !25, line: 1735, baseType: !558, size: 16)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !1873, file: !25, line: 1737, baseType: !565, size: 8, offset: 16)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "mps", scope: !1873, file: !25, line: 1739, baseType: !565, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 24)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "nops", scope: !1873, file: !25, line: 1740, baseType: !565, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 24)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !1873, file: !25, line: 1741, baseType: !565, size: 6, offset: 26, flags: DIFlagBitField, extraData: i64 24)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "enlat", scope: !1873, file: !25, line: 1743, baseType: !546, size: 32, offset: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "exlat", scope: !1873, file: !25, line: 1744, baseType: !546, size: 32, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "rrt", scope: !1873, file: !25, line: 1746, baseType: !565, size: 5, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !1873, file: !25, line: 1747, baseType: !565, size: 3, offset: 101, flags: DIFlagBitField, extraData: i64 96)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "rrl", scope: !1873, file: !25, line: 1749, baseType: !565, size: 5, offset: 104, flags: DIFlagBitField, extraData: i64 96)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !1873, file: !25, line: 1750, baseType: !565, size: 3, offset: 109, flags: DIFlagBitField, extraData: i64 96)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "rwt", scope: !1873, file: !25, line: 1752, baseType: !565, size: 5, offset: 112, flags: DIFlagBitField, extraData: i64 96)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "reserved5", scope: !1873, file: !25, line: 1753, baseType: !565, size: 3, offset: 117, flags: DIFlagBitField, extraData: i64 96)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "rwl", scope: !1873, file: !25, line: 1755, baseType: !565, size: 5, offset: 120, flags: DIFlagBitField, extraData: i64 96)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "reserved6", scope: !1873, file: !25, line: 1756, baseType: !565, size: 3, offset: 125, flags: DIFlagBitField, extraData: i64 96)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "idlp", scope: !1873, file: !25, line: 1758, baseType: !558, size: 16, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "reserved7", scope: !1873, file: !25, line: 1760, baseType: !565, size: 6, offset: 144, flags: DIFlagBitField, extraData: i64 144)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "ips", scope: !1873, file: !25, line: 1761, baseType: !565, size: 2, offset: 150, flags: DIFlagBitField, extraData: i64 144)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "reserved8", scope: !1873, file: !25, line: 1763, baseType: !565, size: 8, offset: 152)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "actp", scope: !1873, file: !25, line: 1765, baseType: !558, size: 16, offset: 160)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "apw", scope: !1873, file: !25, line: 1767, baseType: !565, size: 3, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "reserved9", scope: !1873, file: !25, line: 1768, baseType: !565, size: 3, offset: 179, flags: DIFlagBitField, extraData: i64 176)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "aps", scope: !1873, file: !25, line: 1769, baseType: !565, size: 2, offset: 182, flags: DIFlagBitField, extraData: i64 176)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "reserved10", scope: !1873, file: !25, line: 1771, baseType: !1624, size: 72, offset: 184)
!1899 = !{!1900}
!1900 = !DISubrange(count: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "vs", scope: !1556, file: !25, line: 2450, baseType: !1902, size: 8192, offset: 24576)
!1902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 8192, elements: !1903)
!1903 = !{!1904}
!1904 = !DISubrange(count: 1024)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cdata_zns", scope: !535, file: !48, line: 954, baseType: !1906, size: 64, offset: 44864)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_zns_ctrlr_data", file: !25, line: 2454, size: 32768, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "zasl", scope: !1907, file: !25, line: 2456, baseType: !565, size: 8)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !1907, file: !25, line: 2458, baseType: !1911, size: 32760, offset: 8)
!1911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 32760, elements: !1912)
!1912 = !{!1913}
!1913 = !DISubrange(count: 4095)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "free_io_qids", scope: !535, file: !48, line: 956, baseType: !1915, size: 64, offset: 44928)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_bit_array", file: !1917, line: 22, flags: DIFlagFwdDecl)
!1917 = !DIFile(filename: "include/spdk/bit_array.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "c43eb70a1cf7c9a51594b9760a76b5ae")
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "active_io_qpairs", scope: !535, file: !48, line: 957, baseType: !1919, size: 128, offset: 44992)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !535, file: !48, line: 957, size: 128, elements: !1920)
!1920 = !{!1921, !1922}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1919, file: !48, line: 957, baseType: !1288, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1919, file: !48, line: 957, baseType: !1425, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !535, file: !48, line: 959, baseType: !1924, size: 6544, offset: 45120)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_ctrlr_opts", file: !6, line: 45, size: 6544, elements: !1925)
!1925 = !{!1926, !1927, !1928, !1929, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1956, !1957, !1958, !1959, !1960, !1961, !1965}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "num_io_queues", scope: !1924, file: !6, line: 49, baseType: !546, size: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "use_cmb_sqs", scope: !1924, file: !6, line: 54, baseType: !523, size: 8, offset: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "no_shn_notification", scope: !1924, file: !6, line: 59, baseType: !523, size: 8, offset: 40)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "reserved6", scope: !1924, file: !6, line: 62, baseType: !1930, size: 16, offset: 48)
!1930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 16, elements: !662)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "arb_mechanism", scope: !1924, file: !6, line: 67, baseType: !24, size: 32, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "arbitration_burst", scope: !1924, file: !6, line: 74, baseType: !565, size: 8, offset: 96)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "low_priority_weight", scope: !1924, file: !6, line: 81, baseType: !565, size: 8, offset: 104)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "medium_priority_weight", scope: !1924, file: !6, line: 88, baseType: !565, size: 8, offset: 112)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "high_priority_weight", scope: !1924, file: !6, line: 95, baseType: !565, size: 8, offset: 120)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout_ms", scope: !1924, file: !6, line: 105, baseType: !546, size: 32, offset: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "transport_retry_count", scope: !1924, file: !6, line: 110, baseType: !565, size: 8, offset: 160)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "reserved21", scope: !1924, file: !6, line: 113, baseType: !868, size: 24, offset: 168)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "io_queue_size", scope: !1924, file: !6, line: 118, baseType: !546, size: 32, offset: 192)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "hostnqn", scope: !1924, file: !6, line: 125, baseType: !768, size: 1792, offset: 224)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "io_queue_requests", scope: !1924, file: !6, line: 136, baseType: !546, size: 32, offset: 2016)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr", scope: !1924, file: !6, line: 143, baseType: !763, size: 2056, offset: 2048)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "src_svcid", scope: !1924, file: !6, line: 150, baseType: !757, size: 264, offset: 4104)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "host_id", scope: !1924, file: !6, line: 157, baseType: !676, size: 64, offset: 4368)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "extended_host_id", scope: !1924, file: !6, line: 164, baseType: !678, size: 128, offset: 4432)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "reserved570", scope: !1924, file: !6, line: 167, baseType: !1930, size: 16, offset: 4560)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "command_set", scope: !1924, file: !6, line: 176, baseType: !30, size: 32, offset: 4576)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "admin_timeout_ms", scope: !1924, file: !6, line: 187, baseType: !546, size: 32, offset: 4608)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "header_digest", scope: !1924, file: !6, line: 194, baseType: !523, size: 8, offset: 4640)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "data_digest", scope: !1924, file: !6, line: 201, baseType: !523, size: 8, offset: 4648)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "disable_error_logging", scope: !1924, file: !6, line: 208, baseType: !523, size: 8, offset: 4656)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "transport_ack_timeout", scope: !1924, file: !6, line: 228, baseType: !565, size: 8, offset: 4664)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "admin_queue_size", scope: !1924, file: !6, line: 233, baseType: !558, size: 16, offset: 4672)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "reserved586", scope: !1924, file: !6, line: 236, baseType: !1955, size: 48, offset: 4688)
!1955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 48, elements: !483)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "opts_size", scope: !1924, file: !6, line: 243, baseType: !1240, size: 64, offset: 4736)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "fabrics_connect_timeout_us", scope: !1924, file: !6, line: 249, baseType: !576, size: 64, offset: 4800)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "disable_read_ana_log_page", scope: !1924, file: !6, line: 257, baseType: !523, size: 8, offset: 4864)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "reserved610", scope: !1924, file: !6, line: 260, baseType: !860, size: 56, offset: 4872)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "disable_read_changed_ns_list_log_page", scope: !1924, file: !6, line: 268, baseType: !565, size: 8, offset: 4928)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "psk", scope: !1924, file: !6, line: 277, baseType: !1962, size: 1600, offset: 4936)
!1962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 1600, elements: !1963)
!1963 = !{!1964}
!1964 = !DISubrange(count: 200)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "transport_tos", scope: !1924, file: !6, line: 284, baseType: !565, size: 8, offset: 6536)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !535, file: !48, line: 961, baseType: !576, size: 64, offset: 51712)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_timeout_tsc", scope: !535, file: !48, line: 964, baseType: !576, size: 64, offset: 51776)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "active_procs", scope: !535, file: !48, line: 967, baseType: !1969, size: 128, offset: 51840)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !535, file: !48, line: 967, size: 128, elements: !1970)
!1970 = !{!1971, !1972}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !1969, file: !48, line: 967, baseType: !1346, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !1969, file: !48, line: 967, baseType: !1364, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "queued_aborts", scope: !535, file: !48, line: 970, baseType: !1974, size: 128, offset: 51968)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !535, file: !48, line: 970, size: 128, elements: !1975)
!1975 = !{!1976, !1977}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !1974, file: !48, line: 970, baseType: !826, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !1974, file: !48, line: 970, baseType: !1311, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "outstanding_aborts", scope: !535, file: !48, line: 971, baseType: !546, size: 32, offset: 52096)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "remove_cb", scope: !535, file: !48, line: 974, baseType: !1980, size: 64, offset: 52160)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_nvme_remove_cb", file: !6, line: 820, baseType: !1981)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !234, !534}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "cb_ctx", scope: !535, file: !48, line: 975, baseType: !234, size: 64, offset: 52224)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "external_io_msgs_qpair", scope: !535, file: !48, line: 977, baseType: !1288, size: 64, offset: 52288)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "external_io_msgs_lock", scope: !535, file: !48, line: 978, baseType: !249, size: 320, offset: 52352)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "external_io_msgs", scope: !535, file: !48, line: 979, baseType: !1988, size: 64, offset: 52672)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_ring", file: !1368, line: 557, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "io_producers", scope: !535, file: !48, line: 981, baseType: !1991, size: 128, offset: 52736)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !535, file: !48, line: 981, size: 128, elements: !1992)
!1992 = !{!1993, !2008}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !1991, file: !48, line: 981, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nvme_io_msg_producer", file: !1996, line: 25, size: 256, elements: !1997)
!1996 = !DIFile(filename: "./nvme_io_msg.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/nvme", checksumkind: CSK_MD5, checksum: "974aa27db9e8b8bf871f8572a7e0a956")
!1997 = !{!1998, !1999, !2003, !2004}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1995, file: !1996, line: 26, baseType: !521, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !1995, file: !1996, line: 27, baseType: !2000, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{null, !534}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1995, file: !1996, line: 28, baseType: !2000, size: 64, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1995, file: !1996, line: 29, baseType: !2005, size: 64, offset: 192)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1996, line: 29, size: 64, elements: !2006)
!2006 = !{!2007}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !2005, file: !1996, line: 29, baseType: !1994, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !1991, file: !48, line: 981, baseType: !2009, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "ana_log_page", scope: !535, file: !48, line: 983, baseType: !2011, size: 64, offset: 52864)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_ana_page", file: !25, line: 3341, size: 128, elements: !2013)
!2013 = !{!2014, !2015, !2016}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "change_count", scope: !2012, file: !25, line: 3342, baseType: !576, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "num_ana_group_desc", scope: !2012, file: !25, line: 3343, baseType: !558, size: 16, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2012, file: !25, line: 3344, baseType: !1955, size: 48, offset: 80)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "copied_ana_desc", scope: !535, file: !48, line: 984, baseType: !2018, size: 64, offset: 52928)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_ana_group_descriptor", file: !25, line: 3358, size: 256, elements: !2020)
!2020 = !{!2021, !2022, !2023, !2024, !2025, !2026, !2030}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "ana_group_id", scope: !2019, file: !25, line: 3359, baseType: !546, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "num_of_nsid", scope: !2019, file: !25, line: 3360, baseType: !546, size: 32, offset: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "change_count", scope: !2019, file: !25, line: 3361, baseType: !576, size: 64, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "ana_state", scope: !2019, file: !25, line: 3363, baseType: !565, size: 4, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "reserved0", scope: !2019, file: !25, line: 3364, baseType: !565, size: 4, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !2019, file: !25, line: 3366, baseType: !2027, size: 120, offset: 136)
!2027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 120, elements: !2028)
!2028 = !{!2029}
!2029 = !DISubrange(count: 15)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "nsid", scope: !2019, file: !25, line: 3368, baseType: !2031, offset: 256)
!2031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, elements: !2032)
!2032 = !{!2033}
!2033 = !DISubrange(count: -1)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "ana_log_page_size", scope: !535, file: !48, line: 985, baseType: !546, size: 32, offset: 52992)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_ptr", scope: !535, file: !48, line: 988, baseType: !234, size: 64, offset: 53056)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_size", scope: !535, file: !48, line: 991, baseType: !546, size: 32, offset: 53120)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "pmr_size", scope: !535, file: !48, line: 994, baseType: !576, size: 64, offset: 53184)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "bp_ws", scope: !535, file: !48, line: 997, baseType: !47, size: 32, offset: 53248)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "bpid", scope: !535, file: !48, line: 998, baseType: !546, size: 32, offset: 53280)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "bp_write_cb_fn", scope: !535, file: !48, line: 999, baseType: !1256, size: 64, offset: 53312)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "bp_write_cb_arg", scope: !535, file: !48, line: 1000, baseType: !234, size: 64, offset: 53376)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "fw_payload", scope: !535, file: !48, line: 1003, baseType: !234, size: 64, offset: 53440)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "fw_size_remaining", scope: !535, file: !48, line: 1004, baseType: !7, size: 32, offset: 53504)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "fw_offset", scope: !535, file: !48, line: 1005, baseType: !7, size: 32, offset: 53536)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "fw_transfer_size", scope: !535, file: !48, line: 1006, baseType: !7, size: 32, offset: 53568)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "register_operations", scope: !535, file: !48, line: 1009, baseType: !2047, size: 128, offset: 53632)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !535, file: !48, line: 1009, size: 128, elements: !2048)
!2048 = !{!2049, !2066}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !2047, file: !48, line: 1009, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nvme_register_completion", file: !48, line: 854, size: 448, elements: !2052)
!2052 = !{!2053, !2054, !2055, !2060, !2061, !2065}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "cpl", scope: !2051, file: !48, line: 855, baseType: !1262, size: 128)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2051, file: !48, line: 856, baseType: !576, size: 64, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "cb_fn", scope: !2051, file: !48, line: 857, baseType: !2056, size: 64, offset: 192)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_nvme_reg_cb", file: !6, line: 3969, baseType: !2057)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !234, !576, !1260}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "cb_ctx", scope: !2051, file: !48, line: 858, baseType: !234, size: 64, offset: 256)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "stailq", scope: !2051, file: !48, line: 859, baseType: !2062, size: 64, offset: 320)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2051, file: !48, line: 859, size: 64, elements: !2063)
!2063 = !{!2064}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !2062, file: !48, line: 859, baseType: !2050, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2051, file: !48, line: 860, baseType: !1351, size: 32, offset: 384)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !2047, file: !48, line: 1009, baseType: !2067, size: 64, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "process_init_cc", scope: !535, file: !48, line: 1011, baseType: !2069, size: 32, offset: 53760)
!2069 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_cc_register", file: !25, line: 124, size: 32, elements: !2070)
!2070 = !{!2071, !2072}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2069, file: !25, line: 125, baseType: !546, size: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2069, file: !25, line: 151, baseType: !2073, size: 32)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2069, file: !25, line: 126, size: 32, elements: !2074)
!2074 = !{!2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "en", scope: !2073, file: !25, line: 128, baseType: !546, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !2073, file: !25, line: 130, baseType: !546, size: 3, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !2073, file: !25, line: 133, baseType: !546, size: 3, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "mps", scope: !2073, file: !25, line: 136, baseType: !546, size: 4, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "ams", scope: !2073, file: !25, line: 139, baseType: !546, size: 3, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "shn", scope: !2073, file: !25, line: 142, baseType: !546, size: 2, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "iosqes", scope: !2073, file: !25, line: 145, baseType: !546, size: 4, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "iocqes", scope: !2073, file: !25, line: 148, baseType: !546, size: 4, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !2073, file: !25, line: 150, baseType: !546, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !531, file: !48, line: 1051, baseType: !812, size: 64, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !527, file: !48, line: 1053, baseType: !523, size: 8, offset: 448)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "default_extended_host_id", scope: !527, file: !48, line: 1054, baseType: !2087, size: 128, offset: 456)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_uuid", file: !2088, line: 21, size: 128, elements: !2089)
!2088 = !DIFile(filename: "include/spdk/uuid.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "184998928e884963453b933bb411eaa6")
!2089 = !{!2090}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !2087, file: !2088, line: 24, baseType: !2091, size: 128)
!2091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2087, file: !2088, line: 22, size: 128, elements: !2092)
!2092 = !{!2093}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2091, file: !2088, line: 23, baseType: !678, size: 128)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_fd", scope: !527, file: !48, line: 1057, baseType: !155, size: 32, offset: 608)
!2095 = !DIGlobalVariableExpression(var: !2096, expr: !DIExpression())
!2096 = distinct !DIGlobalVariable(name: "g_nvme_driver_timeout_ms", scope: !2, file: !3, line: 18, type: !155, isLocal: true, isDefinition: true)
!2097 = !DIGlobalVariableExpression(var: !2098, expr: !DIExpression())
!2098 = distinct !DIGlobalVariable(name: "g_nvme_attached_ctrlrs", scope: !2, file: !3, line: 21, type: !2099, isLocal: true, isDefinition: true)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 21, size: 128, elements: !2100)
!2100 = !{!2101, !2102}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !2099, file: !3, line: 21, baseType: !534, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !2099, file: !3, line: 21, baseType: !812, size: 64, offset: 64)
!2103 = !DIGlobalVariableExpression(var: !2104, expr: !DIExpression())
!2104 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1152, type: !362, isLocal: true, isDefinition: true)
!2105 = !DIGlobalVariableExpression(var: !2106, expr: !DIExpression())
!2106 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1161, type: !2107, isLocal: true, isDefinition: true)
!2107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 120, elements: !2028)
!2108 = !DIGlobalVariableExpression(var: !2109, expr: !DIExpression())
!2109 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1161, type: !2110, isLocal: true, isDefinition: true)
!2110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 272, elements: !375)
!2111 = !DIGlobalVariableExpression(var: !2112, expr: !DIExpression())
!2112 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1173, type: !318, isLocal: true, isDefinition: true)
!2113 = !DIGlobalVariableExpression(var: !2114, expr: !DIExpression())
!2114 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1184, type: !494, isLocal: true, isDefinition: true)
!2115 = !DIGlobalVariableExpression(var: !2116, expr: !DIExpression())
!2116 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1189, type: !420, isLocal: true, isDefinition: true)
!2117 = !DIGlobalVariableExpression(var: !2118, expr: !DIExpression())
!2118 = distinct !DIGlobalVariable(scope: null, file: !3, line: 806, type: !2119, isLocal: true, isDefinition: true)
!2119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 160, elements: !1566)
!2120 = !DIGlobalVariableExpression(var: !2121, expr: !DIExpression())
!2121 = distinct !DIGlobalVariable(scope: null, file: !3, line: 806, type: !2122, isLocal: true, isDefinition: true)
!2122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 280, elements: !2123)
!2123 = !{!2124}
!2124 = !DISubrange(count: 35)
!2125 = !DIGlobalVariableExpression(var: !2126, expr: !DIExpression())
!2126 = distinct !DIGlobalVariable(scope: null, file: !3, line: 815, type: !404, isLocal: true, isDefinition: true)
!2127 = !DIGlobalVariableExpression(var: !2128, expr: !DIExpression())
!2128 = distinct !DIGlobalVariable(scope: null, file: !3, line: 702, type: !2129, isLocal: true, isDefinition: true)
!2129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 200, elements: !380)
!2130 = !DIGlobalVariableExpression(var: !2131, expr: !DIExpression())
!2131 = distinct !DIGlobalVariable(scope: null, file: !3, line: 702, type: !397, isLocal: true, isDefinition: true)
!2132 = !{i32 7, !"Dwarf Version", i32 5}
!2133 = !{i32 2, !"Debug Info Version", i32 3}
!2134 = !{i32 1, !"wchar_size", i32 4}
!2135 = !{i32 8, !"PIC Level", i32 2}
!2136 = !{i32 7, !"uwtable", i32 2}
!2137 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!2138 = distinct !DISubprogram(name: "nvme_ctrlr_connected", scope: !3, file: !3, line: 32, type: !2139, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2167)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{null, !2141, !534}
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_probe_ctx", file: !48, line: 1014, size: 4928, elements: !2143)
!2143 = !{!2144, !2145, !2146, !2154, !2161, !2162}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "trid", scope: !2142, file: !48, line: 1015, baseType: !754, size: 4512)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "cb_ctx", scope: !2142, file: !48, line: 1016, baseType: !234, size: 64, offset: 4544)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "probe_cb", scope: !2142, file: !48, line: 1017, baseType: !2147, size: 64, offset: 4608)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_nvme_probe_cb", file: !6, line: 789, baseType: !2148)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!523, !234, !2151, !2153}
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "attach_cb", scope: !2142, file: !48, line: 1018, baseType: !2155, size: 64, offset: 4672)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_nvme_attach_cb", file: !6, line: 803, baseType: !2156)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{null, !234, !2151, !534, !2159}
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1924)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "remove_cb", scope: !2142, file: !48, line: 1019, baseType: !1980, size: 64, offset: 4736)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "init_ctrlrs", scope: !2142, file: !48, line: 1020, baseType: !2163, size: 128, offset: 4800)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2142, file: !48, line: 1020, size: 128, elements: !2164)
!2164 = !{!2165, !2166}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !2163, file: !48, line: 1020, baseType: !534, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !2163, file: !48, line: 1020, baseType: !812, size: 64, offset: 64)
!2167 = !{!2168, !2169}
!2168 = !DILocalVariable(name: "probe_ctx", arg: 1, scope: !2138, file: !3, line: 32, type: !2141)
!2169 = !DILocalVariable(name: "ctrlr", arg: 2, scope: !2138, file: !3, line: 33, type: !534)
!2170 = !DILocation(line: 32, column: 50, scope: !2138)
!2171 = !DILocation(line: 33, column: 32, scope: !2138)
!2172 = !DILocation(line: 35, column: 2, scope: !2138)
!2173 = !DILocation(line: 35, column: 2, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 35, column: 2)
!2175 = !DILocation(line: 36, column: 1, scope: !2138)
!2176 = distinct !DISubprogram(name: "spdk_nvme_detach", scope: !3, file: !3, line: 107, type: !2177, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2179)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!155, !534}
!2179 = !{!2180, !2181, !2211}
!2180 = !DILocalVariable(name: "ctrlr", arg: 1, scope: !2176, file: !3, line: 107, type: !534)
!2181 = !DILocalVariable(name: "ctx", scope: !2176, file: !3, line: 109, type: !2182)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nvme_ctrlr_detach_ctx", file: !48, line: 1032, size: 448, elements: !2184)
!2184 = !{!2185, !2186, !2188, !2189, !2190, !2191, !2192, !2205}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "ctrlr", scope: !2183, file: !48, line: 1033, baseType: !534, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "cb_fn", scope: !2183, file: !48, line: 1034, baseType: !2187, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "nvme_ctrlr_detach_cb", file: !48, line: 1023, baseType: !2000)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_start_tsc", scope: !2183, file: !48, line: 1035, baseType: !576, size: 64, offset: 128)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timeout_ms", scope: !2183, file: !48, line: 1036, baseType: !546, size: 32, offset: 192)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_complete", scope: !2183, file: !48, line: 1037, baseType: !523, size: 8, offset: 224)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2183, file: !48, line: 1038, baseType: !54, size: 32, offset: 256)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "csts", scope: !2183, file: !48, line: 1039, baseType: !2193, size: 32, offset: 288)
!2193 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "spdk_nvme_csts_register", file: !25, line: 160, size: 32, elements: !2194)
!2194 = !{!2195, !2196}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !2193, file: !25, line: 161, baseType: !546, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2193, file: !25, line: 179, baseType: !2197, size: 32)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2193, file: !25, line: 162, size: 32, elements: !2198)
!2198 = !{!2199, !2200, !2201, !2202, !2203, !2204}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "rdy", scope: !2197, file: !25, line: 164, baseType: !546, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "cfs", scope: !2197, file: !25, line: 167, baseType: !546, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "shst", scope: !2197, file: !25, line: 170, baseType: !546, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "nssro", scope: !2197, file: !25, line: 173, baseType: !546, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2197, file: !25, line: 176, baseType: !546, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !2197, file: !25, line: 178, baseType: !546, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2183, file: !48, line: 1040, baseType: !2206, size: 128, offset: 320)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2183, file: !48, line: 1040, size: 128, elements: !2207)
!2207 = !{!2208, !2209}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !2206, file: !48, line: 1040, baseType: !2182, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !2206, file: !48, line: 1040, baseType: !2210, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2211 = !DILocalVariable(name: "rc", scope: !2176, file: !3, line: 110, type: !155)
!2212 = !DILocation(line: 107, column: 42, scope: !2176)
!2213 = !DILocation(line: 109, column: 2, scope: !2176)
!2214 = !DILocation(line: 109, column: 32, scope: !2176)
!2215 = !DILocation(line: 110, column: 2, scope: !2176)
!2216 = !DILocation(line: 110, column: 6, scope: !2176)
!2217 = !DILocation(line: 112, column: 31, scope: !2176)
!2218 = !DILocation(line: 112, column: 7, scope: !2176)
!2219 = !DILocation(line: 112, column: 5, scope: !2176)
!2220 = !DILocation(line: 113, column: 6, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 113, column: 6)
!2222 = !DILocation(line: 113, column: 9, scope: !2221)
!2223 = !DILocation(line: 113, column: 6, scope: !2176)
!2224 = !DILocation(line: 114, column: 10, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 113, column: 15)
!2226 = !DILocation(line: 114, column: 3, scope: !2225)
!2227 = !DILocation(line: 115, column: 13, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 115, column: 13)
!2229 = !DILocation(line: 115, column: 17, scope: !2228)
!2230 = !DILocation(line: 115, column: 13, scope: !2221)
!2231 = !DILocation(line: 119, column: 3, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2228, file: !3, line: 115, column: 26)
!2233 = !DILocation(line: 122, column: 2, scope: !2176)
!2234 = !DILocation(line: 123, column: 37, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 122, column: 12)
!2236 = !DILocation(line: 123, column: 8, scope: !2235)
!2237 = !DILocation(line: 123, column: 6, scope: !2235)
!2238 = !DILocation(line: 124, column: 7, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 124, column: 7)
!2240 = !DILocation(line: 124, column: 10, scope: !2239)
!2241 = !DILocation(line: 124, column: 7, scope: !2235)
!2242 = !DILocation(line: 125, column: 4, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 124, column: 22)
!2244 = !DILocation(line: 127, column: 3, scope: !2235)
!2245 = distinct !{!2245, !2233, !2246}
!2246 = !DILocation(line: 128, column: 2, scope: !2176)
!2247 = !DILocation(line: 130, column: 2, scope: !2176)
!2248 = !DILocation(line: 131, column: 1, scope: !2176)
!2249 = distinct !DISubprogram(name: "nvme_ctrlr_detach_async", scope: !3, file: !3, line: 51, type: !2250, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2252)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!155, !534, !2210}
!2252 = !{!2253, !2254, !2255, !2256}
!2253 = !DILocalVariable(name: "ctrlr", arg: 1, scope: !2249, file: !3, line: 51, type: !534)
!2254 = !DILocalVariable(name: "_ctx", arg: 2, scope: !2249, file: !3, line: 52, type: !2210)
!2255 = !DILocalVariable(name: "ctx", scope: !2249, file: !3, line: 54, type: !2182)
!2256 = !DILocalVariable(name: "ref_count", scope: !2249, file: !3, line: 55, type: !155)
!2257 = !DILocation(line: 51, column: 49, scope: !2249)
!2258 = !DILocation(line: 52, column: 35, scope: !2249)
!2259 = !DILocation(line: 54, column: 2, scope: !2249)
!2260 = !DILocation(line: 54, column: 32, scope: !2249)
!2261 = !DILocation(line: 55, column: 2, scope: !2249)
!2262 = !DILocation(line: 55, column: 6, scope: !2249)
!2263 = !DILocation(line: 57, column: 26, scope: !2249)
!2264 = !DILocation(line: 57, column: 46, scope: !2249)
!2265 = !DILocation(line: 57, column: 2, scope: !2249)
!2266 = !DILocation(line: 59, column: 39, scope: !2249)
!2267 = !DILocation(line: 59, column: 14, scope: !2249)
!2268 = !DILocation(line: 59, column: 12, scope: !2249)
!2269 = !DILocation(line: 62, column: 6, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 62, column: 6)
!2271 = !DILocation(line: 62, column: 16, scope: !2270)
!2272 = !DILocation(line: 62, column: 6, scope: !2249)
!2273 = !DILocation(line: 66, column: 9, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 62, column: 22)
!2275 = !DILocation(line: 66, column: 7, scope: !2274)
!2276 = !DILocation(line: 67, column: 7, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 67, column: 7)
!2278 = !DILocation(line: 67, column: 11, scope: !2277)
!2279 = !DILocation(line: 67, column: 7, scope: !2274)
!2280 = !DILocation(line: 68, column: 30, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 67, column: 20)
!2282 = !DILocation(line: 68, column: 50, scope: !2281)
!2283 = !DILocation(line: 68, column: 4, scope: !2281)
!2284 = !DILocation(line: 70, column: 4, scope: !2281)
!2285 = !DILocation(line: 72, column: 16, scope: !2274)
!2286 = !DILocation(line: 72, column: 3, scope: !2274)
!2287 = !DILocation(line: 72, column: 8, scope: !2274)
!2288 = !DILocation(line: 72, column: 14, scope: !2274)
!2289 = !DILocation(line: 73, column: 3, scope: !2274)
!2290 = !DILocation(line: 73, column: 8, scope: !2274)
!2291 = !DILocation(line: 73, column: 14, scope: !2274)
!2292 = !DILocation(line: 75, column: 27, scope: !2274)
!2293 = !DILocation(line: 75, column: 3, scope: !2274)
!2294 = !DILocation(line: 77, column: 28, scope: !2274)
!2295 = !DILocation(line: 77, column: 3, scope: !2274)
!2296 = !DILocation(line: 79, column: 29, scope: !2274)
!2297 = !DILocation(line: 79, column: 36, scope: !2274)
!2298 = !DILocation(line: 79, column: 3, scope: !2274)
!2299 = !DILocation(line: 81, column: 11, scope: !2274)
!2300 = !DILocation(line: 81, column: 4, scope: !2274)
!2301 = !DILocation(line: 81, column: 9, scope: !2274)
!2302 = !DILocation(line: 82, column: 2, scope: !2274)
!2303 = !DILocation(line: 83, column: 27, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 82, column: 9)
!2305 = !DILocation(line: 83, column: 3, scope: !2304)
!2306 = !DILocation(line: 86, column: 28, scope: !2249)
!2307 = !DILocation(line: 86, column: 48, scope: !2249)
!2308 = !DILocation(line: 86, column: 2, scope: !2249)
!2309 = !DILocation(line: 88, column: 2, scope: !2249)
!2310 = !DILocation(line: 89, column: 1, scope: !2249)
!2311 = distinct !DISubprogram(name: "nvme_ctrlr_detach_poll_async", scope: !3, file: !3, line: 92, type: !2312, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2314)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!155, !2182}
!2314 = !{!2315, !2316}
!2315 = !DILocalVariable(name: "ctx", arg: 1, scope: !2311, file: !3, line: 92, type: !2182)
!2316 = !DILocalVariable(name: "rc", scope: !2311, file: !3, line: 94, type: !155)
!2317 = !DILocation(line: 92, column: 60, scope: !2311)
!2318 = !DILocation(line: 94, column: 2, scope: !2311)
!2319 = !DILocation(line: 94, column: 6, scope: !2311)
!2320 = !DILocation(line: 96, column: 38, scope: !2311)
!2321 = !DILocation(line: 96, column: 43, scope: !2311)
!2322 = !DILocation(line: 96, column: 50, scope: !2311)
!2323 = !DILocation(line: 96, column: 7, scope: !2311)
!2324 = !DILocation(line: 96, column: 5, scope: !2311)
!2325 = !DILocation(line: 97, column: 6, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 97, column: 6)
!2327 = !DILocation(line: 97, column: 9, scope: !2326)
!2328 = !DILocation(line: 97, column: 6, scope: !2311)
!2329 = !DILocation(line: 98, column: 3, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 97, column: 21)
!2331 = !DILocation(line: 101, column: 7, scope: !2311)
!2332 = !DILocation(line: 101, column: 2, scope: !2311)
!2333 = !DILocation(line: 103, column: 9, scope: !2311)
!2334 = !DILocation(line: 103, column: 2, scope: !2311)
!2335 = !DILocation(line: 104, column: 1, scope: !2311)
!2336 = !DISubprogram(name: "usleep", scope: !2337, file: !2337, line: 480, type: !2338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2337 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!155, !2340}
!2340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__useconds_t", file: !549, line: 161, baseType: !7)
!2341 = distinct !DISubprogram(name: "spdk_nvme_detach_async", scope: !3, file: !3, line: 134, type: !2342, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2353)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!155, !534, !2344}
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_detach_ctx", file: !48, line: 1043, size: 128, elements: !2347)
!2347 = !{!2348}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2346, file: !48, line: 1044, baseType: !2349, size: 128)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2346, file: !48, line: 1044, size: 128, elements: !2350)
!2350 = !{!2351, !2352}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !2349, file: !48, line: 1044, baseType: !2182, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !2349, file: !48, line: 1044, baseType: !2210, size: 64, offset: 64)
!2353 = !{!2354, !2355, !2356, !2357, !2358}
!2354 = !DILocalVariable(name: "ctrlr", arg: 1, scope: !2341, file: !3, line: 134, type: !534)
!2355 = !DILocalVariable(name: "_detach_ctx", arg: 2, scope: !2341, file: !3, line: 135, type: !2344)
!2356 = !DILocalVariable(name: "detach_ctx", scope: !2341, file: !3, line: 137, type: !2345)
!2357 = !DILocalVariable(name: "ctx", scope: !2341, file: !3, line: 138, type: !2182)
!2358 = !DILocalVariable(name: "rc", scope: !2341, file: !3, line: 139, type: !155)
!2359 = !DILocation(line: 134, column: 48, scope: !2341)
!2360 = !DILocation(line: 135, column: 40, scope: !2341)
!2361 = !DILocation(line: 137, column: 2, scope: !2341)
!2362 = !DILocation(line: 137, column: 31, scope: !2341)
!2363 = !DILocation(line: 138, column: 2, scope: !2341)
!2364 = !DILocation(line: 138, column: 32, scope: !2341)
!2365 = !DILocation(line: 139, column: 2, scope: !2341)
!2366 = !DILocation(line: 139, column: 6, scope: !2341)
!2367 = !DILocation(line: 141, column: 6, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 141, column: 6)
!2369 = !DILocation(line: 141, column: 12, scope: !2368)
!2370 = !DILocation(line: 141, column: 20, scope: !2368)
!2371 = !DILocation(line: 141, column: 23, scope: !2368)
!2372 = !DILocation(line: 141, column: 35, scope: !2368)
!2373 = !DILocation(line: 141, column: 6, scope: !2341)
!2374 = !DILocation(line: 142, column: 3, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 141, column: 44)
!2376 = !DILocation(line: 148, column: 16, scope: !2341)
!2377 = !DILocation(line: 148, column: 15, scope: !2341)
!2378 = !DILocation(line: 148, column: 13, scope: !2341)
!2379 = !DILocation(line: 149, column: 6, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 149, column: 6)
!2381 = !DILocation(line: 149, column: 17, scope: !2380)
!2382 = !DILocation(line: 149, column: 6, scope: !2341)
!2383 = !DILocation(line: 150, column: 16, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 149, column: 26)
!2385 = !DILocation(line: 150, column: 14, scope: !2384)
!2386 = !DILocation(line: 151, column: 7, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 151, column: 7)
!2388 = !DILocation(line: 151, column: 18, scope: !2387)
!2389 = !DILocation(line: 151, column: 7, scope: !2384)
!2390 = !DILocation(line: 152, column: 4, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 151, column: 27)
!2392 = !DILocation(line: 154, column: 3, scope: !2384)
!2393 = !DILocation(line: 154, column: 3, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 154, column: 3)
!2395 = !DILocation(line: 155, column: 2, scope: !2384)
!2396 = !DILocation(line: 157, column: 31, scope: !2341)
!2397 = !DILocation(line: 157, column: 7, scope: !2341)
!2398 = !DILocation(line: 157, column: 5, scope: !2341)
!2399 = !DILocation(line: 158, column: 6, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 158, column: 6)
!2401 = !DILocation(line: 158, column: 9, scope: !2400)
!2402 = !DILocation(line: 158, column: 14, scope: !2400)
!2403 = !DILocation(line: 158, column: 17, scope: !2400)
!2404 = !DILocation(line: 158, column: 21, scope: !2400)
!2405 = !DILocation(line: 158, column: 6, scope: !2341)
!2406 = !DILocation(line: 162, column: 7, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 162, column: 7)
!2408 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 158, column: 30)
!2409 = !DILocation(line: 162, column: 7, scope: !2408)
!2410 = !DILocation(line: 163, column: 9, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 162, column: 39)
!2412 = !DILocation(line: 163, column: 4, scope: !2411)
!2413 = !DILocation(line: 164, column: 3, scope: !2411)
!2414 = !DILocation(line: 165, column: 10, scope: !2408)
!2415 = !DILocation(line: 165, column: 3, scope: !2408)
!2416 = !DILocation(line: 169, column: 2, scope: !2341)
!2417 = !DILocation(line: 169, column: 2, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 169, column: 2)
!2419 = !DILocation(line: 171, column: 17, scope: !2341)
!2420 = !DILocation(line: 171, column: 3, scope: !2341)
!2421 = !DILocation(line: 171, column: 15, scope: !2341)
!2422 = !DILocation(line: 173, column: 2, scope: !2341)
!2423 = !DILocation(line: 174, column: 1, scope: !2341)
!2424 = !DISubprogram(name: "calloc", scope: !2425, file: !2425, line: 543, type: !2426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2425 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!234, !1474, !1474}
!2428 = !DISubprogram(name: "free", scope: !2425, file: !2425, line: 555, type: !2429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{null, !234}
!2431 = distinct !DISubprogram(name: "spdk_nvme_detach_poll_async", scope: !3, file: !3, line: 177, type: !2432, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2434)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!155, !2345}
!2434 = !{!2435, !2436, !2437, !2438}
!2435 = !DILocalVariable(name: "detach_ctx", arg: 1, scope: !2431, file: !3, line: 177, type: !2345)
!2436 = !DILocalVariable(name: "ctx", scope: !2431, file: !3, line: 179, type: !2182)
!2437 = !DILocalVariable(name: "tmp_ctx", scope: !2431, file: !3, line: 179, type: !2182)
!2438 = !DILocalVariable(name: "rc", scope: !2431, file: !3, line: 180, type: !155)
!2439 = !DILocation(line: 177, column: 58, scope: !2431)
!2440 = !DILocation(line: 179, column: 2, scope: !2431)
!2441 = !DILocation(line: 179, column: 32, scope: !2431)
!2442 = !DILocation(line: 179, column: 38, scope: !2431)
!2443 = !DILocation(line: 180, column: 2, scope: !2431)
!2444 = !DILocation(line: 180, column: 6, scope: !2431)
!2445 = !DILocation(line: 182, column: 6, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 182, column: 6)
!2447 = !DILocation(line: 182, column: 17, scope: !2446)
!2448 = !DILocation(line: 182, column: 6, scope: !2431)
!2449 = !DILocation(line: 183, column: 3, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 182, column: 26)
!2451 = !DILocation(line: 186, column: 2, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 186, column: 2)
!2453 = !DILocation(line: 186, column: 2, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 186, column: 2)
!2455 = !DILocation(line: 0, scope: !2454)
!2456 = !DILocation(line: 187, column: 3, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 186, column: 60)
!2458 = !DILocation(line: 187, column: 3, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 187, column: 3)
!2460 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 187, column: 3)
!2461 = !DILocation(line: 187, column: 3, scope: !2460)
!2462 = !DILocation(line: 189, column: 37, scope: !2457)
!2463 = !DILocation(line: 189, column: 8, scope: !2457)
!2464 = !DILocation(line: 189, column: 6, scope: !2457)
!2465 = !DILocation(line: 190, column: 7, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 190, column: 7)
!2467 = !DILocation(line: 190, column: 10, scope: !2466)
!2468 = !DILocation(line: 190, column: 7, scope: !2457)
!2469 = !DILocation(line: 192, column: 4, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 190, column: 22)
!2471 = !DILocation(line: 192, column: 4, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 192, column: 4)
!2473 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 192, column: 4)
!2474 = !DILocation(line: 192, column: 4, scope: !2473)
!2475 = !DILocation(line: 193, column: 3, scope: !2470)
!2476 = !DILocation(line: 194, column: 2, scope: !2457)
!2477 = distinct !{!2477, !2451, !2478}
!2478 = !DILocation(line: 194, column: 2, scope: !2452)
!2479 = !DILocation(line: 196, column: 7, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 196, column: 6)
!2481 = !DILocation(line: 196, column: 6, scope: !2431)
!2482 = !DILocation(line: 197, column: 3, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 196, column: 39)
!2484 = !DILocation(line: 200, column: 7, scope: !2431)
!2485 = !DILocation(line: 200, column: 2, scope: !2431)
!2486 = !DILocation(line: 201, column: 2, scope: !2431)
!2487 = !DILocation(line: 202, column: 1, scope: !2431)
!2488 = distinct !DISubprogram(name: "spdk_nvme_detach_poll", scope: !3, file: !3, line: 205, type: !2489, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2491)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{null, !2345}
!2491 = !{!2492}
!2492 = !DILocalVariable(name: "detach_ctx", arg: 1, scope: !2488, file: !3, line: 205, type: !2345)
!2493 = !DILocation(line: 205, column: 52, scope: !2488)
!2494 = !DILocation(line: 207, column: 2, scope: !2488)
!2495 = !DILocation(line: 207, column: 9, scope: !2488)
!2496 = !DILocation(line: 207, column: 20, scope: !2488)
!2497 = !DILocation(line: 207, column: 51, scope: !2488)
!2498 = !DILocation(line: 207, column: 23, scope: !2488)
!2499 = !DILocation(line: 207, column: 63, scope: !2488)
!2500 = !DILocation(line: 0, scope: !2488)
!2501 = distinct !{!2501, !2494, !2502}
!2502 = !DILocation(line: 209, column: 2, scope: !2488)
!2503 = !DILocation(line: 210, column: 1, scope: !2488)
!2504 = distinct !DISubprogram(name: "nvme_completion_poll_cb", scope: !3, file: !3, line: 213, type: !1258, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2505)
!2505 = !{!2506, !2507, !2508}
!2506 = !DILocalVariable(name: "arg", arg: 1, scope: !2504, file: !3, line: 213, type: !234)
!2507 = !DILocalVariable(name: "cpl", arg: 2, scope: !2504, file: !3, line: 213, type: !1260)
!2508 = !DILocalVariable(name: "status", scope: !2504, file: !3, line: 215, type: !1507)
!2509 = !DILocation(line: 213, column: 31, scope: !2504)
!2510 = !DILocation(line: 213, column: 64, scope: !2504)
!2511 = !DILocation(line: 215, column: 2, scope: !2504)
!2512 = !DILocation(line: 215, column: 38, scope: !2504)
!2513 = !DILocation(line: 215, column: 47, scope: !2504)
!2514 = !DILocation(line: 217, column: 6, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 217, column: 6)
!2516 = !DILocation(line: 217, column: 14, scope: !2515)
!2517 = !{i8 0, i8 2}
!2518 = !{}
!2519 = !DILocation(line: 217, column: 6, scope: !2504)
!2520 = !DILocation(line: 219, column: 13, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 217, column: 25)
!2522 = !DILocation(line: 219, column: 21, scope: !2521)
!2523 = !DILocation(line: 219, column: 3, scope: !2521)
!2524 = !DILocation(line: 220, column: 8, scope: !2521)
!2525 = !DILocation(line: 220, column: 3, scope: !2521)
!2526 = !DILocation(line: 221, column: 3, scope: !2521)
!2527 = !DILocation(line: 229, column: 10, scope: !2504)
!2528 = !DILocation(line: 229, column: 18, scope: !2504)
!2529 = !DILocation(line: 229, column: 23, scope: !2504)
!2530 = !DILocation(line: 229, column: 2, scope: !2504)
!2531 = !DILocation(line: 230, column: 2, scope: !2504)
!2532 = !DILocation(line: 230, column: 10, scope: !2504)
!2533 = !DILocation(line: 230, column: 15, scope: !2504)
!2534 = !DILocation(line: 231, column: 1, scope: !2504)
!2535 = !DISubprogram(name: "spdk_free", scope: !1368, file: !1368, line: 127, type: !2429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2536 = distinct !DISubprogram(name: "memcpy", scope: !2537, file: !2537, line: 26, type: !2538, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2544)
!2537 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!234, !2540, !2541, !1474}
!2540 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !234)
!2541 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2542)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2544 = !{!2545, !2546, !2547}
!2545 = !DILocalVariable(name: "__dest", arg: 1, scope: !2536, file: !2537, line: 26, type: !2540)
!2546 = !DILocalVariable(name: "__src", arg: 2, scope: !2536, file: !2537, line: 26, type: !2541)
!2547 = !DILocalVariable(name: "__len", arg: 3, scope: !2536, file: !2537, line: 26, type: !1474)
!2548 = !DILocation(line: 26, column: 1, scope: !2536)
!2549 = !DILocation(line: 29, column: 34, scope: !2536)
!2550 = !DILocation(line: 29, column: 42, scope: !2536)
!2551 = !DILocation(line: 29, column: 49, scope: !2536)
!2552 = !DILocation(line: 30, column: 6, scope: !2536)
!2553 = !DILocation(line: 29, column: 10, scope: !2536)
!2554 = !DILocation(line: 29, column: 3, scope: !2536)
!2555 = distinct !DISubprogram(name: "nvme_wait_for_completion_robust_lock_timeout_poll", scope: !3, file: !3, line: 239, type: !2556, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2559)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!155, !1288, !1507, !2558}
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!2559 = !{!2560, !2561, !2562, !2563, !2564, !2567}
!2560 = !DILocalVariable(name: "qpair", arg: 1, scope: !2555, file: !3, line: 239, type: !1288)
!2561 = !DILocalVariable(name: "status", arg: 2, scope: !2555, file: !3, line: 240, type: !1507)
!2562 = !DILocalVariable(name: "robust_mutex", arg: 3, scope: !2555, file: !3, line: 241, type: !2558)
!2563 = !DILocalVariable(name: "rc", scope: !2555, file: !3, line: 243, type: !155)
!2564 = !DILocalVariable(name: "csts", scope: !2565, file: !3, line: 271, type: !2193)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 270, column: 61)
!2566 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 270, column: 6)
!2567 = !DILabel(scope: !2555, name: "error", file: !3, line: 286)
!2568 = !DILocation(line: 239, column: 75, scope: !2555)
!2569 = !DILocation(line: 240, column: 39, scope: !2555)
!2570 = !DILocation(line: 241, column: 20, scope: !2555)
!2571 = !DILocation(line: 243, column: 2, scope: !2555)
!2572 = !DILocation(line: 243, column: 6, scope: !2555)
!2573 = !DILocation(line: 245, column: 6, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 245, column: 6)
!2575 = !DILocation(line: 245, column: 6, scope: !2555)
!2576 = !DILocation(line: 246, column: 26, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 245, column: 20)
!2578 = !DILocation(line: 246, column: 3, scope: !2577)
!2579 = !DILocation(line: 247, column: 2, scope: !2577)
!2580 = !DILocation(line: 249, column: 6, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 249, column: 6)
!2582 = !DILocation(line: 249, column: 13, scope: !2581)
!2583 = !DILocation(line: 249, column: 6, scope: !2555)
!2584 = !DILocation(line: 250, column: 54, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 249, column: 25)
!2586 = !DILocation(line: 250, column: 61, scope: !2585)
!2587 = !DILocation(line: 250, column: 73, scope: !2585)
!2588 = !DILocation(line: 250, column: 13, scope: !2585)
!2589 = !DILocation(line: 250, column: 8, scope: !2585)
!2590 = !DILocation(line: 250, column: 6, scope: !2585)
!2591 = !DILocation(line: 252, column: 2, scope: !2585)
!2592 = !DILocation(line: 253, column: 44, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 252, column: 9)
!2594 = !DILocation(line: 253, column: 8, scope: !2593)
!2595 = !DILocation(line: 253, column: 6, scope: !2593)
!2596 = !DILocation(line: 256, column: 6, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 256, column: 6)
!2598 = !DILocation(line: 256, column: 6, scope: !2555)
!2599 = !DILocation(line: 257, column: 28, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 256, column: 20)
!2601 = !DILocation(line: 257, column: 3, scope: !2600)
!2602 = !DILocation(line: 258, column: 2, scope: !2600)
!2603 = !DILocation(line: 260, column: 6, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 260, column: 6)
!2605 = !DILocation(line: 260, column: 9, scope: !2604)
!2606 = !DILocation(line: 260, column: 6, scope: !2555)
!2607 = !DILocation(line: 261, column: 3, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 260, column: 14)
!2609 = !DILocation(line: 261, column: 11, scope: !2608)
!2610 = !DILocation(line: 261, column: 15, scope: !2608)
!2611 = !DILocation(line: 261, column: 26, scope: !2608)
!2612 = !DILocation(line: 262, column: 3, scope: !2608)
!2613 = !DILocation(line: 262, column: 11, scope: !2608)
!2614 = !DILocation(line: 262, column: 15, scope: !2608)
!2615 = !DILocation(line: 262, column: 25, scope: !2608)
!2616 = !DILocation(line: 263, column: 3, scope: !2608)
!2617 = !DILocation(line: 266, column: 7, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 266, column: 6)
!2619 = !DILocation(line: 266, column: 15, scope: !2618)
!2620 = !DILocation(line: 266, column: 20, scope: !2618)
!2621 = !DILocation(line: 266, column: 23, scope: !2618)
!2622 = !DILocation(line: 266, column: 31, scope: !2618)
!2623 = !DILocation(line: 266, column: 43, scope: !2618)
!2624 = !DILocation(line: 266, column: 46, scope: !2618)
!2625 = !DILocation(line: 266, column: 65, scope: !2618)
!2626 = !DILocation(line: 266, column: 73, scope: !2618)
!2627 = !DILocation(line: 266, column: 63, scope: !2618)
!2628 = !DILocation(line: 266, column: 6, scope: !2555)
!2629 = !DILocation(line: 267, column: 3, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 266, column: 86)
!2631 = !DILocation(line: 270, column: 6, scope: !2566)
!2632 = !DILocation(line: 270, column: 13, scope: !2566)
!2633 = !DILocation(line: 270, column: 20, scope: !2566)
!2634 = !DILocation(line: 270, column: 25, scope: !2566)
!2635 = !DILocation(line: 270, column: 32, scope: !2566)
!2636 = !DILocation(line: 270, column: 6, scope: !2555)
!2637 = !DILocation(line: 271, column: 3, scope: !2565)
!2638 = !DILocation(line: 271, column: 33, scope: !2565)
!2639 = !DILocation(line: 271, column: 70, scope: !2565)
!2640 = !DILocation(line: 271, column: 77, scope: !2565)
!2641 = !DILocation(line: 271, column: 40, scope: !2565)
!2642 = !DILocation(line: 272, column: 12, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 272, column: 7)
!2644 = !DILocation(line: 272, column: 16, scope: !2643)
!2645 = !DILocation(line: 272, column: 7, scope: !2565)
!2646 = !DILocation(line: 273, column: 4, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 272, column: 53)
!2648 = !DILocation(line: 273, column: 12, scope: !2647)
!2649 = !DILocation(line: 273, column: 16, scope: !2647)
!2650 = !DILocation(line: 273, column: 27, scope: !2647)
!2651 = !DILocation(line: 274, column: 4, scope: !2647)
!2652 = !DILocation(line: 274, column: 12, scope: !2647)
!2653 = !DILocation(line: 274, column: 16, scope: !2647)
!2654 = !DILocation(line: 274, column: 26, scope: !2647)
!2655 = !DILocation(line: 275, column: 4, scope: !2647)
!2656 = !DILocation(line: 277, column: 2, scope: !2566)
!2657 = !DILocation(line: 277, column: 2, scope: !2565)
!2658 = !DILocation(line: 279, column: 7, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 279, column: 6)
!2660 = !DILocation(line: 279, column: 15, scope: !2659)
!2661 = !DILocation(line: 279, column: 6, scope: !2555)
!2662 = !DILocation(line: 280, column: 3, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 279, column: 21)
!2664 = !DILocation(line: 281, column: 13, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 281, column: 13)
!2666 = !DILocation(line: 281, column: 13, scope: !2659)
!2667 = !DILocation(line: 282, column: 3, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 281, column: 51)
!2669 = !DILocation(line: 284, column: 3, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 283, column: 9)
!2671 = !DILocation(line: 286, column: 1, scope: !2555)
!2672 = !DILocation(line: 291, column: 7, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 291, column: 6)
!2674 = !DILocation(line: 291, column: 15, scope: !2673)
!2675 = !DILocation(line: 291, column: 6, scope: !2555)
!2676 = !DILocation(line: 292, column: 3, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 291, column: 21)
!2678 = !DILocation(line: 292, column: 11, scope: !2677)
!2679 = !DILocation(line: 292, column: 21, scope: !2677)
!2680 = !DILocation(line: 293, column: 2, scope: !2677)
!2681 = !DILocation(line: 295, column: 2, scope: !2555)
!2682 = !DILocation(line: 296, column: 1, scope: !2555)
!2683 = distinct !DISubprogram(name: "nvme_robust_mutex_lock", scope: !48, file: !48, line: 1079, type: !2684, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2686)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!155, !2558}
!2686 = !{!2687, !2688}
!2687 = !DILocalVariable(name: "mtx", arg: 1, scope: !2683, file: !48, line: 1079, type: !2558)
!2688 = !DILocalVariable(name: "rc", scope: !2683, file: !48, line: 1081, type: !155)
!2689 = !DILocation(line: 1079, column: 41, scope: !2683)
!2690 = !DILocation(line: 1081, column: 2, scope: !2683)
!2691 = !DILocation(line: 1081, column: 6, scope: !2683)
!2692 = !DILocation(line: 1081, column: 30, scope: !2683)
!2693 = !DILocation(line: 1081, column: 11, scope: !2683)
!2694 = !DILocation(line: 1084, column: 6, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2683, file: !48, line: 1084, column: 6)
!2696 = !DILocation(line: 1084, column: 9, scope: !2695)
!2697 = !DILocation(line: 1084, column: 6, scope: !2683)
!2698 = !DILocation(line: 1085, column: 33, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2695, file: !48, line: 1084, column: 24)
!2700 = !DILocation(line: 1085, column: 8, scope: !2699)
!2701 = !DILocation(line: 1085, column: 6, scope: !2699)
!2702 = !DILocation(line: 1086, column: 2, scope: !2699)
!2703 = !DILocation(line: 1089, column: 9, scope: !2683)
!2704 = !DILocation(line: 1090, column: 1, scope: !2683)
!2705 = !DILocation(line: 1089, column: 2, scope: !2683)
!2706 = !DISubprogram(name: "spdk_nvme_poll_group_process_completions", scope: !6, file: !6, line: 2684, type: !2707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!2709, !1456, !546, !2711}
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !1563, line: 27, baseType: !2710)
!2710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !549, line: 44, baseType: !279)
!2711 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_nvme_disconnected_qpair_cb", file: !6, line: 2612, baseType: !2712)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{null, !1288, !234}
!2715 = distinct !DISubprogram(name: "dummy_disconnected_qpair_cb", scope: !3, file: !3, line: 234, type: !2713, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2716)
!2716 = !{!2717, !2718}
!2717 = !DILocalVariable(name: "qpair", arg: 1, scope: !2715, file: !3, line: 234, type: !1288)
!2718 = !DILocalVariable(name: "poll_group_ctx", arg: 2, scope: !2715, file: !3, line: 234, type: !234)
!2719 = !DILocation(line: 234, column: 53, scope: !2715)
!2720 = !DILocation(line: 234, column: 66, scope: !2715)
!2721 = !DILocation(line: 236, column: 1, scope: !2715)
!2722 = !DISubprogram(name: "spdk_nvme_qpair_process_completions", scope: !6, file: !6, line: 1864, type: !2723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!2725, !1288, !546}
!2725 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !1563, line: 26, baseType: !2726)
!2726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !549, line: 41, baseType: !155)
!2727 = distinct !DISubprogram(name: "nvme_robust_mutex_unlock", scope: !48, file: !48, line: 1093, type: !2684, scopeLine: 1094, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2728)
!2728 = !{!2729}
!2729 = !DILocalVariable(name: "mtx", arg: 1, scope: !2727, file: !48, line: 1093, type: !2558)
!2730 = !DILocation(line: 1093, column: 43, scope: !2727)
!2731 = !DILocation(line: 1095, column: 30, scope: !2727)
!2732 = !DILocation(line: 1095, column: 9, scope: !2727)
!2733 = !DILocation(line: 1095, column: 2, scope: !2727)
!2734 = !DISubprogram(name: "spdk_get_ticks", scope: !1368, file: !1368, line: 536, type: !2735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!576}
!2737 = !DISubprogram(name: "spdk_nvme_ctrlr_get_regs_csts", scope: !6, file: !6, line: 1203, type: !2738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!2193, !534}
!2740 = distinct !DISubprogram(name: "nvme_wait_for_completion_robust_lock_timeout", scope: !3, file: !3, line: 315, type: !2741, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2743)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!155, !1288, !1507, !2558, !576}
!2743 = !{!2744, !2745, !2746, !2747, !2748}
!2744 = !DILocalVariable(name: "qpair", arg: 1, scope: !2740, file: !3, line: 316, type: !1288)
!2745 = !DILocalVariable(name: "status", arg: 2, scope: !2740, file: !3, line: 317, type: !1507)
!2746 = !DILocalVariable(name: "robust_mutex", arg: 3, scope: !2740, file: !3, line: 318, type: !2558)
!2747 = !DILocalVariable(name: "timeout_in_usecs", arg: 4, scope: !2740, file: !3, line: 319, type: !576)
!2748 = !DILocalVariable(name: "rc", scope: !2740, file: !3, line: 321, type: !155)
!2749 = !DILocation(line: 316, column: 26, scope: !2740)
!2750 = !DILocation(line: 317, column: 38, scope: !2740)
!2751 = !DILocation(line: 318, column: 19, scope: !2740)
!2752 = !DILocation(line: 319, column: 11, scope: !2740)
!2753 = !DILocation(line: 321, column: 2, scope: !2740)
!2754 = !DILocation(line: 321, column: 6, scope: !2740)
!2755 = !DILocation(line: 323, column: 6, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 323, column: 6)
!2757 = !DILocation(line: 323, column: 6, scope: !2740)
!2758 = !DILocation(line: 324, column: 25, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2756, file: !3, line: 323, column: 24)
!2760 = !DILocation(line: 324, column: 44, scope: !2759)
!2761 = !DILocation(line: 325, column: 11, scope: !2759)
!2762 = !DILocation(line: 324, column: 61, scope: !2759)
!2763 = !DILocation(line: 325, column: 31, scope: !2759)
!2764 = !DILocation(line: 324, column: 42, scope: !2759)
!2765 = !DILocation(line: 324, column: 3, scope: !2759)
!2766 = !DILocation(line: 324, column: 11, scope: !2759)
!2767 = !DILocation(line: 324, column: 23, scope: !2759)
!2768 = !DILocation(line: 326, column: 2, scope: !2759)
!2769 = !DILocation(line: 327, column: 3, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2756, file: !3, line: 326, column: 9)
!2771 = !DILocation(line: 327, column: 11, scope: !2770)
!2772 = !DILocation(line: 327, column: 23, scope: !2770)
!2773 = !DILocation(line: 330, column: 2, scope: !2740)
!2774 = !DILocation(line: 330, column: 10, scope: !2740)
!2775 = !DILocation(line: 330, column: 14, scope: !2740)
!2776 = !DILocation(line: 330, column: 25, scope: !2740)
!2777 = !DILocation(line: 331, column: 2, scope: !2740)
!2778 = !DILocation(line: 332, column: 58, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 331, column: 5)
!2780 = !DILocation(line: 332, column: 65, scope: !2779)
!2781 = !DILocation(line: 332, column: 73, scope: !2779)
!2782 = !DILocation(line: 332, column: 8, scope: !2779)
!2783 = !DILocation(line: 332, column: 6, scope: !2779)
!2784 = !DILocation(line: 333, column: 2, scope: !2779)
!2785 = !DILocation(line: 333, column: 11, scope: !2740)
!2786 = !DILocation(line: 333, column: 14, scope: !2740)
!2787 = distinct !{!2787, !2777, !2788}
!2788 = !DILocation(line: 333, column: 24, scope: !2740)
!2789 = !DILocation(line: 335, column: 9, scope: !2740)
!2790 = !DILocation(line: 336, column: 1, scope: !2740)
!2791 = !DILocation(line: 335, column: 2, scope: !2740)
!2792 = !DISubprogram(name: "spdk_get_ticks_hz", scope: !1368, file: !1368, line: 543, type: !2735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2793 = distinct !DISubprogram(name: "nvme_wait_for_completion_robust_lock", scope: !3, file: !3, line: 354, type: !2556, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2794)
!2794 = !{!2795, !2796, !2797}
!2795 = !DILocalVariable(name: "qpair", arg: 1, scope: !2793, file: !3, line: 355, type: !1288)
!2796 = !DILocalVariable(name: "status", arg: 2, scope: !2793, file: !3, line: 356, type: !1507)
!2797 = !DILocalVariable(name: "robust_mutex", arg: 3, scope: !2793, file: !3, line: 357, type: !2558)
!2798 = !DILocation(line: 355, column: 26, scope: !2793)
!2799 = !DILocation(line: 356, column: 38, scope: !2793)
!2800 = !DILocation(line: 357, column: 19, scope: !2793)
!2801 = !DILocation(line: 359, column: 54, scope: !2793)
!2802 = !DILocation(line: 359, column: 61, scope: !2793)
!2803 = !DILocation(line: 359, column: 69, scope: !2793)
!2804 = !DILocation(line: 359, column: 9, scope: !2793)
!2805 = !DILocation(line: 359, column: 2, scope: !2793)
!2806 = distinct !DISubprogram(name: "nvme_wait_for_completion", scope: !3, file: !3, line: 363, type: !2807, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2809)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!155, !1288, !1507}
!2809 = !{!2810, !2811}
!2810 = !DILocalVariable(name: "qpair", arg: 1, scope: !2806, file: !3, line: 363, type: !1288)
!2811 = !DILocalVariable(name: "status", arg: 2, scope: !2806, file: !3, line: 364, type: !1507)
!2812 = !DILocation(line: 363, column: 50, scope: !2806)
!2813 = !DILocation(line: 364, column: 41, scope: !2806)
!2814 = !DILocation(line: 366, column: 54, scope: !2806)
!2815 = !DILocation(line: 366, column: 61, scope: !2806)
!2816 = !DILocation(line: 366, column: 9, scope: !2806)
!2817 = !DILocation(line: 366, column: 2, scope: !2806)
!2818 = distinct !DISubprogram(name: "nvme_wait_for_completion_timeout", scope: !3, file: !3, line: 385, type: !2819, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2821)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!155, !1288, !1507, !576}
!2821 = !{!2822, !2823, !2824}
!2822 = !DILocalVariable(name: "qpair", arg: 1, scope: !2818, file: !3, line: 385, type: !1288)
!2823 = !DILocalVariable(name: "status", arg: 2, scope: !2818, file: !3, line: 386, type: !1507)
!2824 = !DILocalVariable(name: "timeout_in_usecs", arg: 3, scope: !2818, file: !3, line: 387, type: !576)
!2825 = !DILocation(line: 385, column: 58, scope: !2818)
!2826 = !DILocation(line: 386, column: 42, scope: !2818)
!2827 = !DILocation(line: 387, column: 15, scope: !2818)
!2828 = !DILocation(line: 389, column: 54, scope: !2818)
!2829 = !DILocation(line: 389, column: 61, scope: !2818)
!2830 = !DILocation(line: 389, column: 75, scope: !2818)
!2831 = !DILocation(line: 389, column: 9, scope: !2818)
!2832 = !DILocation(line: 389, column: 2, scope: !2818)
!2833 = distinct !DISubprogram(name: "nvme_allocate_request_user_copy", scope: !3, file: !3, line: 422, type: !2834, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!826, !1288, !234, !546, !1256, !234, !523}
!2836 = !{!2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844}
!2837 = !DILocalVariable(name: "qpair", arg: 1, scope: !2833, file: !3, line: 422, type: !1288)
!2838 = !DILocalVariable(name: "buffer", arg: 2, scope: !2833, file: !3, line: 423, type: !234)
!2839 = !DILocalVariable(name: "payload_size", arg: 3, scope: !2833, file: !3, line: 423, type: !546)
!2840 = !DILocalVariable(name: "cb_fn", arg: 4, scope: !2833, file: !3, line: 423, type: !1256)
!2841 = !DILocalVariable(name: "cb_arg", arg: 5, scope: !2833, file: !3, line: 424, type: !234)
!2842 = !DILocalVariable(name: "host_to_controller", arg: 6, scope: !2833, file: !3, line: 424, type: !523)
!2843 = !DILocalVariable(name: "req", scope: !2833, file: !3, line: 426, type: !826)
!2844 = !DILocalVariable(name: "dma_buffer", scope: !2833, file: !3, line: 427, type: !234)
!2845 = !DILocation(line: 422, column: 57, scope: !2833)
!2846 = !DILocation(line: 423, column: 11, scope: !2833)
!2847 = !DILocation(line: 423, column: 28, scope: !2833)
!2848 = !DILocation(line: 423, column: 59, scope: !2833)
!2849 = !DILocation(line: 424, column: 11, scope: !2833)
!2850 = !DILocation(line: 424, column: 24, scope: !2833)
!2851 = !DILocation(line: 426, column: 2, scope: !2833)
!2852 = !DILocation(line: 426, column: 23, scope: !2833)
!2853 = !DILocation(line: 427, column: 2, scope: !2833)
!2854 = !DILocation(line: 427, column: 8, scope: !2833)
!2855 = !DILocation(line: 429, column: 6, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 429, column: 6)
!2857 = !DILocation(line: 429, column: 13, scope: !2856)
!2858 = !DILocation(line: 429, column: 16, scope: !2856)
!2859 = !DILocation(line: 429, column: 6, scope: !2833)
!2860 = !DILocation(line: 430, column: 29, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 429, column: 30)
!2862 = !DILocation(line: 430, column: 16, scope: !2861)
!2863 = !DILocation(line: 430, column: 14, scope: !2861)
!2864 = !DILocation(line: 432, column: 8, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 432, column: 7)
!2866 = !DILocation(line: 432, column: 7, scope: !2861)
!2867 = !DILocation(line: 433, column: 4, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 432, column: 20)
!2869 = !DILocation(line: 436, column: 7, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 436, column: 7)
!2871 = !DILocation(line: 436, column: 7, scope: !2861)
!2872 = !DILocation(line: 437, column: 11, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 436, column: 27)
!2874 = !DILocation(line: 437, column: 23, scope: !2873)
!2875 = !DILocation(line: 437, column: 31, scope: !2873)
!2876 = !DILocation(line: 437, column: 4, scope: !2873)
!2877 = !DILocation(line: 438, column: 3, scope: !2873)
!2878 = !DILocation(line: 439, column: 2, scope: !2861)
!2879 = !DILocation(line: 441, column: 37, scope: !2833)
!2880 = !DILocation(line: 441, column: 44, scope: !2833)
!2881 = !DILocation(line: 441, column: 56, scope: !2833)
!2882 = !DILocation(line: 441, column: 8, scope: !2833)
!2883 = !DILocation(line: 441, column: 6, scope: !2833)
!2884 = !DILocation(line: 443, column: 7, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 443, column: 6)
!2886 = !DILocation(line: 443, column: 6, scope: !2833)
!2887 = !DILocation(line: 444, column: 13, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 443, column: 12)
!2889 = !DILocation(line: 444, column: 3, scope: !2888)
!2890 = !DILocation(line: 445, column: 3, scope: !2888)
!2891 = !DILocation(line: 448, column: 20, scope: !2833)
!2892 = !DILocation(line: 448, column: 2, scope: !2833)
!2893 = !DILocation(line: 448, column: 7, scope: !2833)
!2894 = !DILocation(line: 448, column: 18, scope: !2833)
!2895 = !DILocation(line: 449, column: 21, scope: !2833)
!2896 = !DILocation(line: 449, column: 2, scope: !2833)
!2897 = !DILocation(line: 449, column: 7, scope: !2833)
!2898 = !DILocation(line: 449, column: 19, scope: !2833)
!2899 = !DILocation(line: 450, column: 21, scope: !2833)
!2900 = !DILocation(line: 450, column: 2, scope: !2833)
!2901 = !DILocation(line: 450, column: 7, scope: !2833)
!2902 = !DILocation(line: 450, column: 19, scope: !2833)
!2903 = !DILocation(line: 451, column: 16, scope: !2833)
!2904 = !DILocation(line: 451, column: 2, scope: !2833)
!2905 = !DILocation(line: 451, column: 7, scope: !2833)
!2906 = !DILocation(line: 451, column: 14, scope: !2833)
!2907 = !DILocation(line: 453, column: 9, scope: !2833)
!2908 = !DILocation(line: 453, column: 2, scope: !2833)
!2909 = !DILocation(line: 454, column: 1, scope: !2833)
!2910 = !DISubprogram(name: "spdk_zmalloc", scope: !1368, file: !1368, line: 106, type: !2911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!234, !1240, !1240, !1393, !155, !546}
!2913 = distinct !DISubprogram(name: "nvme_allocate_request_contig", scope: !48, file: !48, line: 1296, type: !2914, scopeLine: 1299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2916)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!826, !1288, !234, !546, !1256, !234}
!2916 = !{!2917, !2918, !2919, !2920, !2921, !2922}
!2917 = !DILocalVariable(name: "qpair", arg: 1, scope: !2913, file: !48, line: 1296, type: !1288)
!2918 = !DILocalVariable(name: "buffer", arg: 2, scope: !2913, file: !48, line: 1297, type: !234)
!2919 = !DILocalVariable(name: "payload_size", arg: 3, scope: !2913, file: !48, line: 1297, type: !546)
!2920 = !DILocalVariable(name: "cb_fn", arg: 4, scope: !2913, file: !48, line: 1298, type: !1256)
!2921 = !DILocalVariable(name: "cb_arg", arg: 5, scope: !2913, file: !48, line: 1298, type: !234)
!2922 = !DILocalVariable(name: "payload", scope: !2913, file: !48, line: 1300, type: !1221)
!2923 = !DILocation(line: 1296, column: 54, scope: !2913)
!2924 = !DILocation(line: 1297, column: 15, scope: !2913)
!2925 = !DILocation(line: 1297, column: 32, scope: !2913)
!2926 = !DILocation(line: 1298, column: 26, scope: !2913)
!2927 = !DILocation(line: 1298, column: 39, scope: !2913)
!2928 = !DILocation(line: 1300, column: 2, scope: !2913)
!2929 = !DILocation(line: 1300, column: 22, scope: !2913)
!2930 = !DILocation(line: 1302, column: 12, scope: !2913)
!2931 = !DILocation(line: 1304, column: 31, scope: !2913)
!2932 = !DILocation(line: 1304, column: 48, scope: !2913)
!2933 = !DILocation(line: 1304, column: 65, scope: !2913)
!2934 = !DILocation(line: 1304, column: 72, scope: !2913)
!2935 = !DILocation(line: 1304, column: 9, scope: !2913)
!2936 = !DILocation(line: 1305, column: 1, scope: !2913)
!2937 = !DILocation(line: 1304, column: 2, scope: !2913)
!2938 = distinct !DISubprogram(name: "nvme_user_copy_cmd_complete", scope: !3, file: !3, line: 393, type: !1258, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2939)
!2939 = !{!2940, !2941, !2942, !2943}
!2940 = !DILocalVariable(name: "arg", arg: 1, scope: !2938, file: !3, line: 393, type: !234)
!2941 = !DILocalVariable(name: "cpl", arg: 2, scope: !2938, file: !3, line: 393, type: !1260)
!2942 = !DILocalVariable(name: "req", scope: !2938, file: !3, line: 395, type: !826)
!2943 = !DILocalVariable(name: "xfer", scope: !2938, file: !3, line: 396, type: !172)
!2944 = !DILocation(line: 393, column: 35, scope: !2938)
!2945 = !DILocation(line: 393, column: 68, scope: !2938)
!2946 = !DILocation(line: 395, column: 2, scope: !2938)
!2947 = !DILocation(line: 395, column: 23, scope: !2938)
!2948 = !DILocation(line: 395, column: 29, scope: !2938)
!2949 = !DILocation(line: 396, column: 2, scope: !2938)
!2950 = !DILocation(line: 396, column: 31, scope: !2938)
!2951 = !DILocation(line: 398, column: 6, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 398, column: 6)
!2953 = !DILocation(line: 398, column: 11, scope: !2952)
!2954 = !DILocation(line: 398, column: 23, scope: !2952)
!2955 = !DILocation(line: 398, column: 26, scope: !2952)
!2956 = !DILocation(line: 398, column: 31, scope: !2952)
!2957 = !DILocation(line: 398, column: 6, scope: !2938)
!2958 = !DILocation(line: 401, column: 42, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 398, column: 45)
!2960 = !DILocation(line: 401, column: 47, scope: !2959)
!2961 = !DILocation(line: 401, column: 51, scope: !2959)
!2962 = !DILocation(line: 401, column: 10, scope: !2959)
!2963 = !DILocation(line: 401, column: 8, scope: !2959)
!2964 = !DILocation(line: 402, column: 7, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 402, column: 7)
!2966 = !DILocation(line: 402, column: 12, scope: !2965)
!2967 = !DILocation(line: 402, column: 49, scope: !2965)
!2968 = !DILocation(line: 403, column: 7, scope: !2965)
!2969 = !DILocation(line: 403, column: 12, scope: !2965)
!2970 = !DILocation(line: 402, column: 7, scope: !2959)
!2971 = !DILocation(line: 405, column: 11, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 403, column: 45)
!2973 = !DILocation(line: 405, column: 16, scope: !2972)
!2974 = !DILocation(line: 405, column: 29, scope: !2972)
!2975 = !DILocation(line: 405, column: 34, scope: !2972)
!2976 = !DILocation(line: 405, column: 42, scope: !2972)
!2977 = !DILocation(line: 405, column: 60, scope: !2972)
!2978 = !DILocation(line: 405, column: 65, scope: !2972)
!2979 = !DILocation(line: 405, column: 4, scope: !2972)
!2980 = !DILocation(line: 406, column: 3, scope: !2972)
!2981 = !DILocation(line: 408, column: 13, scope: !2959)
!2982 = !DILocation(line: 408, column: 18, scope: !2959)
!2983 = !DILocation(line: 408, column: 26, scope: !2959)
!2984 = !DILocation(line: 408, column: 3, scope: !2959)
!2985 = !DILocation(line: 409, column: 2, scope: !2959)
!2986 = !DILocation(line: 412, column: 2, scope: !2938)
!2987 = !DILocation(line: 412, column: 7, scope: !2938)
!2988 = !DILocation(line: 412, column: 18, scope: !2938)
!2989 = !DILocation(line: 412, column: 23, scope: !2938)
!2990 = !DILocation(line: 412, column: 36, scope: !2938)
!2991 = !DILocation(line: 413, column: 1, scope: !2938)
!2992 = distinct !DISubprogram(name: "nvme_request_check_timeout", scope: !3, file: !3, line: 470, type: !2993, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2995)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!155, !826, !558, !1346, !576}
!2995 = !{!2996, !2997, !2998, !2999, !3000, !3001, !3002}
!2996 = !DILocalVariable(name: "req", arg: 1, scope: !2992, file: !3, line: 470, type: !826)
!2997 = !DILocalVariable(name: "cid", arg: 2, scope: !2992, file: !3, line: 470, type: !558)
!2998 = !DILocalVariable(name: "active_proc", arg: 3, scope: !2992, file: !3, line: 471, type: !1346)
!2999 = !DILocalVariable(name: "now_tick", arg: 4, scope: !2992, file: !3, line: 472, type: !576)
!3000 = !DILocalVariable(name: "qpair", scope: !2992, file: !3, line: 474, type: !1288)
!3001 = !DILocalVariable(name: "ctrlr", scope: !2992, file: !3, line: 475, type: !534)
!3002 = !DILocalVariable(name: "timeout_ticks", scope: !2992, file: !3, line: 476, type: !576)
!3003 = !DILocation(line: 470, column: 49, scope: !2992)
!3004 = !DILocation(line: 470, column: 63, scope: !2992)
!3005 = !DILocation(line: 471, column: 39, scope: !2992)
!3006 = !DILocation(line: 472, column: 16, scope: !2992)
!3007 = !DILocation(line: 474, column: 2, scope: !2992)
!3008 = !DILocation(line: 474, column: 26, scope: !2992)
!3009 = !DILocation(line: 474, column: 34, scope: !2992)
!3010 = !DILocation(line: 474, column: 39, scope: !2992)
!3011 = !DILocation(line: 475, column: 2, scope: !2992)
!3012 = !DILocation(line: 475, column: 26, scope: !2992)
!3013 = !DILocation(line: 475, column: 34, scope: !2992)
!3014 = !DILocation(line: 475, column: 41, scope: !2992)
!3015 = !DILocation(line: 476, column: 2, scope: !2992)
!3016 = !DILocation(line: 476, column: 11, scope: !2992)
!3017 = !DILocation(line: 476, column: 53, scope: !2992)
!3018 = !DILocation(line: 476, column: 27, scope: !2992)
!3019 = !DILocation(line: 477, column: 6, scope: !2992)
!3020 = !DILocation(line: 477, column: 19, scope: !2992)
!3021 = !DILocation(line: 477, column: 41, scope: !2992)
!3022 = !DILocation(line: 477, column: 54, scope: !2992)
!3023 = !DILocation(line: 481, column: 6, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 481, column: 6)
!3025 = !DILocation(line: 481, column: 11, scope: !3024)
!3026 = !DILocation(line: 481, column: 21, scope: !3024)
!3027 = !DILocation(line: 481, column: 24, scope: !3024)
!3028 = !DILocation(line: 481, column: 29, scope: !3024)
!3029 = !DILocation(line: 481, column: 41, scope: !3024)
!3030 = !DILocation(line: 481, column: 6, scope: !2992)
!3031 = !DILocation(line: 482, column: 3, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 481, column: 47)
!3033 = !DILocation(line: 485, column: 6, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 485, column: 6)
!3035 = !DILocation(line: 485, column: 11, scope: !3034)
!3036 = !DILocation(line: 485, column: 18, scope: !3034)
!3037 = !DILocation(line: 485, column: 15, scope: !3034)
!3038 = !DILocation(line: 485, column: 6, scope: !2992)
!3039 = !DILocation(line: 486, column: 3, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 485, column: 35)
!3041 = !DILocation(line: 489, column: 32, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 489, column: 6)
!3043 = !DILocation(line: 489, column: 6, scope: !3042)
!3044 = !DILocation(line: 489, column: 39, scope: !3042)
!3045 = !DILocation(line: 490, column: 6, scope: !3042)
!3046 = !DILocation(line: 490, column: 11, scope: !3042)
!3047 = !DILocation(line: 490, column: 15, scope: !3042)
!3048 = !DILocation(line: 490, column: 19, scope: !3042)
!3049 = !DILocation(line: 489, column: 6, scope: !2992)
!3050 = !DILocation(line: 491, column: 3, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 490, column: 57)
!3052 = !DILocation(line: 494, column: 6, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 494, column: 6)
!3054 = !DILocation(line: 494, column: 11, scope: !3053)
!3055 = !DILocation(line: 494, column: 25, scope: !3053)
!3056 = !DILocation(line: 494, column: 23, scope: !3053)
!3057 = !DILocation(line: 494, column: 41, scope: !3053)
!3058 = !DILocation(line: 494, column: 39, scope: !3053)
!3059 = !DILocation(line: 494, column: 6, scope: !2992)
!3060 = !DILocation(line: 495, column: 3, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 494, column: 51)
!3062 = !DILocation(line: 498, column: 2, scope: !2992)
!3063 = !DILocation(line: 498, column: 7, scope: !2992)
!3064 = !DILocation(line: 498, column: 17, scope: !2992)
!3065 = !DILocation(line: 505, column: 2, scope: !2992)
!3066 = !DILocation(line: 505, column: 15, scope: !2992)
!3067 = !DILocation(line: 505, column: 29, scope: !2992)
!3068 = !DILocation(line: 505, column: 42, scope: !2992)
!3069 = !DILocation(line: 505, column: 58, scope: !2992)
!3070 = !DILocation(line: 506, column: 34, scope: !2992)
!3071 = !DILocation(line: 506, column: 8, scope: !2992)
!3072 = !DILocation(line: 506, column: 50, scope: !2992)
!3073 = !DILocation(line: 507, column: 8, scope: !2992)
!3074 = !DILocation(line: 508, column: 2, scope: !2992)
!3075 = !DILocation(line: 509, column: 1, scope: !2992)
!3076 = distinct !DISubprogram(name: "nvme_qpair_is_admin_queue", scope: !48, file: !48, line: 1067, type: !3077, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3079)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!523, !1288}
!3079 = !{!3080}
!3080 = !DILocalVariable(name: "qpair", arg: 1, scope: !3076, file: !48, line: 1067, type: !1288)
!3081 = !DILocation(line: 1067, column: 51, scope: !3076)
!3082 = !DILocation(line: 1069, column: 9, scope: !3076)
!3083 = !DILocation(line: 1069, column: 16, scope: !3076)
!3084 = !DILocation(line: 1069, column: 19, scope: !3076)
!3085 = !DILocation(line: 1069, column: 2, scope: !3076)
!3086 = distinct !DISubprogram(name: "nvme_robust_mutex_init_shared", scope: !3, file: !3, line: 512, type: !2684, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3087)
!3087 = !{!3088, !3089, !3090}
!3088 = !DILocalVariable(name: "mtx", arg: 1, scope: !3086, file: !3, line: 512, type: !2558)
!3089 = !DILocalVariable(name: "rc", scope: !3086, file: !3, line: 514, type: !155)
!3090 = !DILocalVariable(name: "attr", scope: !3086, file: !3, line: 519, type: !3091)
!3091 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutexattr_t", file: !250, line: 36, baseType: !3092)
!3092 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !250, line: 32, size: 32, elements: !3093)
!3093 = !{!3094, !3095}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !3092, file: !250, line: 34, baseType: !362, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !3092, file: !250, line: 35, baseType: !155, size: 32)
!3096 = !DILocation(line: 512, column: 48, scope: !3086)
!3097 = !DILocation(line: 514, column: 2, scope: !3086)
!3098 = !DILocation(line: 514, column: 6, scope: !3086)
!3099 = !DILocation(line: 519, column: 2, scope: !3086)
!3100 = !DILocation(line: 519, column: 22, scope: !3086)
!3101 = !DILocation(line: 521, column: 6, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 521, column: 6)
!3103 = !DILocation(line: 521, column: 6, scope: !3086)
!3104 = !DILocation(line: 522, column: 3, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3102, file: !3, line: 521, column: 37)
!3106 = !DILocation(line: 524, column: 6, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 524, column: 6)
!3108 = !DILocation(line: 524, column: 66, scope: !3107)
!3109 = !DILocation(line: 525, column: 6, scope: !3107)
!3110 = !DILocation(line: 525, column: 63, scope: !3107)
!3111 = !DILocation(line: 526, column: 25, scope: !3107)
!3112 = !DILocation(line: 526, column: 6, scope: !3107)
!3113 = !DILocation(line: 524, column: 6, scope: !3086)
!3114 = !DILocation(line: 527, column: 6, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 526, column: 38)
!3116 = !DILocation(line: 528, column: 2, scope: !3115)
!3117 = !DILocation(line: 529, column: 2, scope: !3086)
!3118 = !DILocation(line: 532, column: 9, scope: !3086)
!3119 = !DILocation(line: 532, column: 2, scope: !3086)
!3120 = !DILocation(line: 533, column: 1, scope: !3086)
!3121 = !DISubprogram(name: "pthread_mutexattr_init", scope: !143, file: !143, line: 874, type: !3122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!155, !3124}
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3125 = !DISubprogram(name: "pthread_mutexattr_setpshared", scope: !143, file: !143, line: 888, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!155, !3124, !155}
!3128 = !DISubprogram(name: "pthread_mutexattr_setrobust", scope: !143, file: !143, line: 946, type: !3126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3129 = !DISubprogram(name: "pthread_mutex_init", scope: !143, file: !143, line: 781, type: !3130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!155, !2558, !3132}
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3091)
!3134 = !DISubprogram(name: "pthread_mutexattr_destroy", scope: !143, file: !143, line: 878, type: !3122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3135 = !DILocation(line: 539, column: 2, scope: !238)
!3136 = !DILocation(line: 539, column: 6, scope: !238)
!3137 = !DILocation(line: 541, column: 2, scope: !238)
!3138 = !DILocation(line: 541, column: 6, scope: !238)
!3139 = !DILocation(line: 549, column: 2, scope: !238)
!3140 = !DILocation(line: 552, column: 20, scope: !238)
!3141 = !DILocation(line: 552, column: 18, scope: !238)
!3142 = !DILocation(line: 560, column: 6, scope: !248)
!3143 = !DILocation(line: 560, column: 6, scope: !238)
!3144 = !DILocation(line: 562, column: 7, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !3, line: 562, column: 7)
!3146 = distinct !DILexicalBlock(scope: !248, file: !3, line: 560, column: 33)
!3147 = !DILocation(line: 562, column: 26, scope: !3145)
!3148 = !DILocation(line: 562, column: 7, scope: !3146)
!3149 = !DILocation(line: 563, column: 4, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 562, column: 35)
!3151 = !DILocation(line: 564, column: 4, scope: !3150)
!3152 = !DILocation(line: 567, column: 39, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 565, column: 10)
!3154 = !DILocation(line: 566, column: 25, scope: !3153)
!3155 = !DILocation(line: 566, column: 23, scope: !3153)
!3156 = !DILocation(line: 571, column: 7, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3146, file: !3, line: 571, column: 7)
!3158 = !DILocation(line: 571, column: 26, scope: !3157)
!3159 = !DILocation(line: 571, column: 7, scope: !3146)
!3160 = !DILocation(line: 572, column: 4, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 571, column: 35)
!3162 = !DILocation(line: 573, column: 4, scope: !3161)
!3163 = !DILocation(line: 574, column: 4, scope: !3161)
!3164 = !DILocation(line: 576, column: 2, scope: !3146)
!3165 = !DILocation(line: 577, column: 24, scope: !247)
!3166 = !DILocation(line: 577, column: 22, scope: !247)
!3167 = !DILocation(line: 580, column: 7, scope: !246)
!3168 = !DILocation(line: 580, column: 26, scope: !246)
!3169 = !DILocation(line: 580, column: 7, scope: !247)
!3170 = !DILocation(line: 581, column: 4, scope: !245)
!3171 = !DILocation(line: 581, column: 8, scope: !245)
!3172 = !DILocation(line: 584, column: 4, scope: !245)
!3173 = !DILocation(line: 584, column: 12, scope: !245)
!3174 = !DILocation(line: 584, column: 32, scope: !245)
!3175 = !DILocation(line: 584, column: 44, scope: !245)
!3176 = !DILocation(line: 584, column: 54, scope: !245)
!3177 = !DILocation(line: 585, column: 12, scope: !245)
!3178 = !DILocation(line: 585, column: 24, scope: !245)
!3179 = !DILocation(line: 585, column: 22, scope: !245)
!3180 = !DILocation(line: 0, scope: !245)
!3181 = !DILocation(line: 586, column: 14, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !245, file: !3, line: 585, column: 51)
!3183 = !DILocation(line: 587, column: 5, scope: !3182)
!3184 = distinct !{!3184, !3172, !3185}
!3185 = !DILocation(line: 588, column: 4, scope: !245)
!3186 = !DILocation(line: 589, column: 8, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !245, file: !3, line: 589, column: 8)
!3188 = !DILocation(line: 589, column: 28, scope: !3187)
!3189 = !DILocation(line: 589, column: 40, scope: !3187)
!3190 = !DILocation(line: 589, column: 8, scope: !245)
!3191 = !DILocation(line: 590, column: 5, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 589, column: 50)
!3193 = !DILocation(line: 591, column: 5, scope: !3192)
!3194 = !DILocation(line: 592, column: 5, scope: !3192)
!3195 = !DILocation(line: 594, column: 3, scope: !246)
!3196 = !DILocation(line: 594, column: 3, scope: !245)
!3197 = !DILocation(line: 595, column: 4, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !246, file: !3, line: 594, column: 10)
!3199 = !DILocation(line: 596, column: 4, scope: !3198)
!3200 = !DILocation(line: 597, column: 4, scope: !3198)
!3201 = !DILocation(line: 600, column: 3, scope: !247)
!3202 = !DILocation(line: 601, column: 3, scope: !247)
!3203 = !DILocation(line: 610, column: 39, scope: !238)
!3204 = !DILocation(line: 610, column: 59, scope: !238)
!3205 = !DILocation(line: 610, column: 8, scope: !238)
!3206 = !DILocation(line: 610, column: 6, scope: !238)
!3207 = !DILocation(line: 611, column: 6, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !238, file: !3, line: 611, column: 6)
!3209 = !DILocation(line: 611, column: 10, scope: !3208)
!3210 = !DILocation(line: 611, column: 6, scope: !238)
!3211 = !DILocation(line: 612, column: 3, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3208, file: !3, line: 611, column: 16)
!3213 = !DILocation(line: 613, column: 3, scope: !3212)
!3214 = !DILocation(line: 614, column: 3, scope: !3212)
!3215 = !DILocation(line: 615, column: 10, scope: !3212)
!3216 = !DILocation(line: 615, column: 3, scope: !3212)
!3217 = !DILocation(line: 621, column: 2, scope: !238)
!3218 = !DILocation(line: 622, column: 26, scope: !238)
!3219 = !DILocation(line: 622, column: 46, scope: !238)
!3220 = !DILocation(line: 622, column: 2, scope: !238)
!3221 = !DILocation(line: 624, column: 2, scope: !238)
!3222 = !DILocation(line: 624, column: 22, scope: !238)
!3223 = !DILocation(line: 624, column: 34, scope: !238)
!3224 = !DILocation(line: 625, column: 35, scope: !238)
!3225 = !DILocation(line: 625, column: 2, scope: !238)
!3226 = !DILocation(line: 625, column: 22, scope: !238)
!3227 = !DILocation(line: 625, column: 33, scope: !238)
!3228 = !DILocation(line: 626, column: 6, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !238, file: !3, line: 626, column: 6)
!3230 = !DILocation(line: 626, column: 26, scope: !3229)
!3231 = !DILocation(line: 626, column: 37, scope: !3229)
!3232 = !DILocation(line: 626, column: 6, scope: !238)
!3233 = !DILocation(line: 627, column: 3, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 626, column: 42)
!3235 = !DILocation(line: 627, column: 3, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 627, column: 3)
!3237 = !DILocation(line: 628, column: 2, scope: !3234)
!3238 = !DILocation(line: 630, column: 2, scope: !238)
!3239 = !DILocation(line: 630, column: 2, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !238, file: !3, line: 630, column: 2)
!3241 = !DILocation(line: 632, column: 22, scope: !238)
!3242 = !DILocation(line: 632, column: 42, scope: !238)
!3243 = !DILocation(line: 632, column: 2, scope: !238)
!3244 = !DILocation(line: 634, column: 28, scope: !238)
!3245 = !DILocation(line: 634, column: 48, scope: !238)
!3246 = !DILocation(line: 634, column: 2, scope: !238)
!3247 = !DILocation(line: 636, column: 9, scope: !238)
!3248 = !DILocation(line: 636, column: 2, scope: !238)
!3249 = !DILocation(line: 637, column: 1, scope: !238)
!3250 = !DISubprogram(name: "pthread_mutex_lock", scope: !143, file: !143, line: 794, type: !2684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3251 = !DISubprogram(name: "getpid", scope: !2337, file: !2337, line: 650, type: !3252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!1353}
!3254 = !DISubprogram(name: "spdk_process_is_primary", scope: !1368, file: !1368, line: 529, type: !3255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!523}
!3257 = !DISubprogram(name: "pthread_mutex_unlock", scope: !143, file: !143, line: 835, type: !2684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3258 = !DISubprogram(name: "spdk_memzone_reserve", scope: !1368, file: !1368, line: 256, type: !3259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!234, !521, !1240, !155, !7}
!3261 = !DISubprogram(name: "spdk_log", scope: !154, file: !154, line: 156, type: !3262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{null, !153, !521, !3264, !521, !521, null}
!3264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!3265 = !DISubprogram(name: "spdk_memzone_lookup", scope: !1368, file: !1368, line: 282, type: !3266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!234, !521}
!3268 = !DISubprogram(name: "spdk_memzone_free", scope: !1368, file: !1368, line: 289, type: !3269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!155, !521}
!3271 = !DISubprogram(name: "spdk_pci_event_listen", scope: !1368, file: !1368, line: 1406, type: !239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3272 = !DISubprogram(name: "spdk_uuid_generate", scope: !2088, file: !2088, line: 66, type: !3273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{null, !3275}
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!3276 = distinct !DISubprogram(name: "nvme_ctrlr_probe", scope: !3, file: !3, line: 641, type: !3277, scopeLine: 643, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3279)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!155, !2151, !2141, !234}
!3279 = !{!3280, !3281, !3282, !3283, !3284}
!3280 = !DILocalVariable(name: "trid", arg: 1, scope: !3276, file: !3, line: 641, type: !2151)
!3281 = !DILocalVariable(name: "probe_ctx", arg: 2, scope: !3276, file: !3, line: 642, type: !2141)
!3282 = !DILocalVariable(name: "devhandle", arg: 3, scope: !3276, file: !3, line: 642, type: !234)
!3283 = !DILocalVariable(name: "ctrlr", scope: !3276, file: !3, line: 644, type: !534)
!3284 = !DILocalVariable(name: "opts", scope: !3276, file: !3, line: 645, type: !1924)
!3285 = !DILocation(line: 641, column: 55, scope: !3276)
!3286 = !DILocation(line: 642, column: 32, scope: !3276)
!3287 = !DILocation(line: 642, column: 49, scope: !3276)
!3288 = !DILocation(line: 644, column: 2, scope: !3276)
!3289 = !DILocation(line: 644, column: 26, scope: !3276)
!3290 = !DILocation(line: 645, column: 2, scope: !3276)
!3291 = !DILocation(line: 645, column: 30, scope: !3276)
!3292 = !DILocation(line: 649, column: 2, scope: !3276)
!3293 = !DILocation(line: 651, column: 7, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3276, file: !3, line: 651, column: 6)
!3295 = !DILocation(line: 651, column: 18, scope: !3294)
!3296 = !DILocation(line: 651, column: 27, scope: !3294)
!3297 = !DILocation(line: 651, column: 30, scope: !3294)
!3298 = !DILocation(line: 651, column: 41, scope: !3294)
!3299 = !DILocation(line: 651, column: 50, scope: !3294)
!3300 = !DILocation(line: 651, column: 61, scope: !3294)
!3301 = !DILocation(line: 651, column: 69, scope: !3294)
!3302 = !DILocation(line: 651, column: 6, scope: !3276)
!3303 = !DILocation(line: 652, column: 41, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 651, column: 83)
!3305 = !DILocation(line: 652, column: 11, scope: !3304)
!3306 = !DILocation(line: 652, column: 9, scope: !3304)
!3307 = !DILocation(line: 653, column: 7, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3304, file: !3, line: 653, column: 7)
!3309 = !DILocation(line: 653, column: 7, scope: !3304)
!3310 = !DILocation(line: 656, column: 8, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3312, file: !3, line: 656, column: 8)
!3312 = distinct !DILexicalBlock(scope: !3308, file: !3, line: 653, column: 14)
!3313 = !DILocation(line: 656, column: 15, scope: !3311)
!3314 = !DILocation(line: 656, column: 8, scope: !3312)
!3315 = !DILocation(line: 658, column: 5, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 656, column: 30)
!3317 = !DILocation(line: 660, column: 5, scope: !3316)
!3318 = !DILocation(line: 665, column: 28, scope: !3312)
!3319 = !DILocation(line: 665, column: 4, scope: !3312)
!3320 = !DILocation(line: 667, column: 8, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3312, file: !3, line: 667, column: 8)
!3322 = !DILocation(line: 667, column: 19, scope: !3321)
!3323 = !DILocation(line: 667, column: 8, scope: !3312)
!3324 = !DILocation(line: 668, column: 31, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3321, file: !3, line: 667, column: 30)
!3326 = !DILocation(line: 668, column: 51, scope: !3325)
!3327 = !DILocation(line: 668, column: 5, scope: !3325)
!3328 = !DILocation(line: 669, column: 5, scope: !3325)
!3329 = !DILocation(line: 669, column: 16, scope: !3325)
!3330 = !DILocation(line: 669, column: 26, scope: !3325)
!3331 = !DILocation(line: 669, column: 37, scope: !3325)
!3332 = !DILocation(line: 669, column: 46, scope: !3325)
!3333 = !DILocation(line: 669, column: 53, scope: !3325)
!3334 = !DILocation(line: 669, column: 59, scope: !3325)
!3335 = !DILocation(line: 669, column: 67, scope: !3325)
!3336 = !DILocation(line: 669, column: 74, scope: !3325)
!3337 = !DILocation(line: 670, column: 29, scope: !3325)
!3338 = !DILocation(line: 670, column: 49, scope: !3325)
!3339 = !DILocation(line: 670, column: 5, scope: !3325)
!3340 = !DILocation(line: 671, column: 4, scope: !3325)
!3341 = !DILocation(line: 672, column: 4, scope: !3312)
!3342 = !DILocation(line: 675, column: 42, scope: !3304)
!3343 = !DILocation(line: 675, column: 55, scope: !3304)
!3344 = !DILocation(line: 675, column: 11, scope: !3304)
!3345 = !DILocation(line: 675, column: 9, scope: !3304)
!3346 = !DILocation(line: 676, column: 7, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3304, file: !3, line: 676, column: 7)
!3348 = !DILocation(line: 676, column: 13, scope: !3347)
!3349 = !DILocation(line: 676, column: 7, scope: !3304)
!3350 = !DILocation(line: 677, column: 4, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 676, column: 22)
!3352 = !DILocation(line: 678, column: 4, scope: !3351)
!3353 = !DILocation(line: 680, column: 22, scope: !3304)
!3354 = !DILocation(line: 680, column: 33, scope: !3304)
!3355 = !DILocation(line: 680, column: 3, scope: !3304)
!3356 = !DILocation(line: 680, column: 10, scope: !3304)
!3357 = !DILocation(line: 680, column: 20, scope: !3304)
!3358 = !DILocation(line: 681, column: 19, scope: !3304)
!3359 = !DILocation(line: 681, column: 30, scope: !3304)
!3360 = !DILocation(line: 681, column: 3, scope: !3304)
!3361 = !DILocation(line: 681, column: 10, scope: !3304)
!3362 = !DILocation(line: 681, column: 17, scope: !3304)
!3363 = !DILocation(line: 683, column: 24, scope: !3304)
!3364 = !DILocation(line: 683, column: 31, scope: !3304)
!3365 = !DILocation(line: 683, column: 3, scope: !3304)
!3366 = !DILocation(line: 684, column: 3, scope: !3304)
!3367 = !DILocation(line: 684, column: 3, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3304, file: !3, line: 684, column: 3)
!3369 = !DILocation(line: 685, column: 3, scope: !3304)
!3370 = !DILocation(line: 688, column: 2, scope: !3276)
!3371 = !DILocation(line: 689, column: 1, scope: !3276)
!3372 = !DISubprogram(name: "spdk_nvme_ctrlr_get_default_ctrlr_opts", scope: !6, file: !6, line: 342, type: !3373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{null, !2153, !1240}
!3375 = distinct !DISubprogram(name: "nvme_get_ctrlr_by_trid_unsafe", scope: !3, file: !3, line: 771, type: !3376, scopeLine: 772, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3378)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!534, !2151}
!3378 = !{!3379, !3380}
!3379 = !DILocalVariable(name: "trid", arg: 1, scope: !3375, file: !3, line: 771, type: !2151)
!3380 = !DILocalVariable(name: "ctrlr", scope: !3375, file: !3, line: 773, type: !534)
!3381 = !DILocation(line: 771, column: 68, scope: !3375)
!3382 = !DILocation(line: 773, column: 2, scope: !3375)
!3383 = !DILocation(line: 773, column: 26, scope: !3375)
!3384 = !DILocation(line: 776, column: 2, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 776, column: 2)
!3386 = !DILocation(line: 776, column: 2, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 776, column: 2)
!3388 = !DILocation(line: 777, column: 39, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 777, column: 7)
!3390 = distinct !DILexicalBlock(scope: !3387, file: !3, line: 776, column: 55)
!3391 = !DILocation(line: 777, column: 46, scope: !3389)
!3392 = !DILocation(line: 777, column: 52, scope: !3389)
!3393 = !DILocation(line: 777, column: 7, scope: !3389)
!3394 = !DILocation(line: 777, column: 58, scope: !3389)
!3395 = !DILocation(line: 777, column: 7, scope: !3390)
!3396 = !DILocation(line: 778, column: 11, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 777, column: 64)
!3398 = !DILocation(line: 778, column: 4, scope: !3397)
!3399 = !DILocation(line: 780, column: 2, scope: !3390)
!3400 = distinct !{!3400, !3384, !3401}
!3401 = !DILocation(line: 780, column: 2, scope: !3385)
!3402 = !DILocation(line: 783, column: 2, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 783, column: 2)
!3404 = !DILocation(line: 783, column: 2, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3403, file: !3, line: 783, column: 2)
!3406 = !DILocation(line: 784, column: 39, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3408, file: !3, line: 784, column: 7)
!3408 = distinct !DILexicalBlock(scope: !3405, file: !3, line: 783, column: 75)
!3409 = !DILocation(line: 784, column: 46, scope: !3407)
!3410 = !DILocation(line: 784, column: 52, scope: !3407)
!3411 = !DILocation(line: 784, column: 7, scope: !3407)
!3412 = !DILocation(line: 784, column: 58, scope: !3407)
!3413 = !DILocation(line: 784, column: 7, scope: !3408)
!3414 = !DILocation(line: 785, column: 11, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3407, file: !3, line: 784, column: 64)
!3416 = !DILocation(line: 785, column: 4, scope: !3415)
!3417 = !DILocation(line: 787, column: 2, scope: !3408)
!3418 = distinct !{!3418, !3402, !3419}
!3419 = !DILocation(line: 787, column: 2, scope: !3403)
!3420 = !DILocation(line: 789, column: 2, scope: !3375)
!3421 = !DILocation(line: 790, column: 1, scope: !3375)
!3422 = !DISubprogram(name: "nvme_ctrlr_proc_get_ref", scope: !48, file: !48, line: 1564, type: !2001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3423 = !DISubprogram(name: "nvme_transport_ctrlr_construct", scope: !48, file: !48, line: 1489, type: !3424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!534, !2151, !2159, !234}
!3426 = distinct !DISubprogram(name: "nvme_qpair_set_state", scope: !48, file: !48, line: 1372, type: !3427, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{null, !1288, !163}
!3429 = !{!3430, !3431}
!3430 = !DILocalVariable(name: "qpair", arg: 1, scope: !3426, file: !48, line: 1372, type: !1288)
!3431 = !DILocalVariable(name: "state", arg: 2, scope: !3426, file: !48, line: 1372, type: !163)
!3432 = !DILocation(line: 1372, column: 46, scope: !3426)
!3433 = !DILocation(line: 1372, column: 75, scope: !3426)
!3434 = !DILocation(line: 1374, column: 17, scope: !3426)
!3435 = !DILocation(line: 1374, column: 2, scope: !3426)
!3436 = !DILocation(line: 1374, column: 9, scope: !3426)
!3437 = !DILocation(line: 1374, column: 15, scope: !3426)
!3438 = !DILocation(line: 1375, column: 6, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3426, file: !48, line: 1375, column: 6)
!3440 = !DILocation(line: 1375, column: 12, scope: !3439)
!3441 = !DILocation(line: 1375, column: 6, scope: !3426)
!3442 = !DILocation(line: 1376, column: 3, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3439, file: !48, line: 1375, column: 35)
!3444 = !DILocation(line: 1376, column: 10, scope: !3443)
!3445 = !DILocation(line: 1376, column: 23, scope: !3443)
!3446 = !DILocation(line: 1377, column: 2, scope: !3443)
!3447 = !DILocation(line: 1378, column: 1, scope: !3426)
!3448 = distinct !DISubprogram(name: "spdk_nvme_transport_id_compare", scope: !3, file: !3, line: 1364, type: !3449, scopeLine: 1366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3451)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!155, !2151, !2151}
!3451 = !{!3452, !3453, !3454, !3455, !3458}
!3452 = !DILocalVariable(name: "trid1", arg: 1, scope: !3448, file: !3, line: 1364, type: !2151)
!3453 = !DILocalVariable(name: "trid2", arg: 2, scope: !3448, file: !3, line: 1365, type: !2151)
!3454 = !DILocalVariable(name: "cmp", scope: !3448, file: !3, line: 1367, type: !155)
!3455 = !DILocalVariable(name: "pci_addr1", scope: !3456, file: !3, line: 1380, type: !1373)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 1379, column: 49)
!3457 = distinct !DILexicalBlock(scope: !3448, file: !3, line: 1379, column: 6)
!3458 = !DILocalVariable(name: "pci_addr2", scope: !3456, file: !3, line: 1381, type: !1373)
!3459 = !DILocation(line: 1364, column: 69, scope: !3448)
!3460 = !DILocation(line: 1365, column: 48, scope: !3448)
!3461 = !DILocation(line: 1367, column: 2, scope: !3448)
!3462 = !DILocation(line: 1367, column: 6, scope: !3448)
!3463 = !DILocation(line: 1369, column: 6, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3448, file: !3, line: 1369, column: 6)
!3465 = !DILocation(line: 1369, column: 13, scope: !3464)
!3466 = !DILocation(line: 1369, column: 20, scope: !3464)
!3467 = !DILocation(line: 1369, column: 6, scope: !3448)
!3468 = !DILocation(line: 1370, column: 20, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3464, file: !3, line: 1369, column: 51)
!3470 = !DILocation(line: 1370, column: 27, scope: !3469)
!3471 = !DILocation(line: 1370, column: 37, scope: !3469)
!3472 = !DILocation(line: 1370, column: 44, scope: !3469)
!3473 = !DILocation(line: 1370, column: 9, scope: !3469)
!3474 = !DILocation(line: 1370, column: 7, scope: !3469)
!3475 = !DILocation(line: 1371, column: 2, scope: !3469)
!3476 = !DILocation(line: 1372, column: 17, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3464, file: !3, line: 1371, column: 9)
!3478 = !DILocation(line: 1372, column: 24, scope: !3477)
!3479 = !DILocation(line: 1372, column: 32, scope: !3477)
!3480 = !DILocation(line: 1372, column: 39, scope: !3477)
!3481 = !DILocation(line: 1372, column: 9, scope: !3477)
!3482 = !DILocation(line: 1372, column: 7, scope: !3477)
!3483 = !DILocation(line: 1375, column: 6, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3448, file: !3, line: 1375, column: 6)
!3485 = !DILocation(line: 1375, column: 6, scope: !3448)
!3486 = !DILocation(line: 1376, column: 10, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 1375, column: 11)
!3488 = !DILocation(line: 1376, column: 3, scope: !3487)
!3489 = !DILocation(line: 1379, column: 6, scope: !3457)
!3490 = !DILocation(line: 1379, column: 13, scope: !3457)
!3491 = !DILocation(line: 1379, column: 20, scope: !3457)
!3492 = !DILocation(line: 1379, column: 6, scope: !3448)
!3493 = !DILocation(line: 1380, column: 3, scope: !3456)
!3494 = !DILocation(line: 1380, column: 24, scope: !3456)
!3495 = !DILocation(line: 1381, column: 3, scope: !3456)
!3496 = !DILocation(line: 1381, column: 24, scope: !3456)
!3497 = !DILocation(line: 1384, column: 39, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3456, file: !3, line: 1384, column: 7)
!3499 = !DILocation(line: 1384, column: 46, scope: !3498)
!3500 = !DILocation(line: 1384, column: 7, scope: !3498)
!3501 = !DILocation(line: 1384, column: 54, scope: !3498)
!3502 = !DILocation(line: 1384, column: 58, scope: !3498)
!3503 = !DILocation(line: 1385, column: 39, scope: !3498)
!3504 = !DILocation(line: 1385, column: 46, scope: !3498)
!3505 = !DILocation(line: 1385, column: 7, scope: !3498)
!3506 = !DILocation(line: 1385, column: 54, scope: !3498)
!3507 = !DILocation(line: 1384, column: 7, scope: !3456)
!3508 = !DILocation(line: 1386, column: 4, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 1385, column: 59)
!3510 = !DILocation(line: 1390, column: 10, scope: !3456)
!3511 = !DILocation(line: 1390, column: 3, scope: !3456)
!3512 = !DILocation(line: 1391, column: 2, scope: !3457)
!3513 = !DILocation(line: 1393, column: 19, scope: !3448)
!3514 = !DILocation(line: 1393, column: 26, scope: !3448)
!3515 = !DILocation(line: 1393, column: 34, scope: !3448)
!3516 = !DILocation(line: 1393, column: 41, scope: !3448)
!3517 = !DILocation(line: 1393, column: 8, scope: !3448)
!3518 = !DILocation(line: 1393, column: 6, scope: !3448)
!3519 = !DILocation(line: 1394, column: 6, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3448, file: !3, line: 1394, column: 6)
!3521 = !DILocation(line: 1394, column: 6, scope: !3448)
!3522 = !DILocation(line: 1395, column: 10, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3520, file: !3, line: 1394, column: 11)
!3524 = !DILocation(line: 1395, column: 3, scope: !3523)
!3525 = !DILocation(line: 1398, column: 16, scope: !3448)
!3526 = !DILocation(line: 1398, column: 23, scope: !3448)
!3527 = !DILocation(line: 1398, column: 31, scope: !3448)
!3528 = !DILocation(line: 1398, column: 38, scope: !3448)
!3529 = !DILocation(line: 1398, column: 8, scope: !3448)
!3530 = !DILocation(line: 1398, column: 6, scope: !3448)
!3531 = !DILocation(line: 1399, column: 6, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3448, file: !3, line: 1399, column: 6)
!3533 = !DILocation(line: 1399, column: 6, scope: !3448)
!3534 = !DILocation(line: 1400, column: 10, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 1399, column: 11)
!3536 = !DILocation(line: 1400, column: 3, scope: !3535)
!3537 = !DILocation(line: 1403, column: 19, scope: !3448)
!3538 = !DILocation(line: 1403, column: 26, scope: !3448)
!3539 = !DILocation(line: 1403, column: 35, scope: !3448)
!3540 = !DILocation(line: 1403, column: 42, scope: !3448)
!3541 = !DILocation(line: 1403, column: 8, scope: !3448)
!3542 = !DILocation(line: 1403, column: 6, scope: !3448)
!3543 = !DILocation(line: 1404, column: 6, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3448, file: !3, line: 1404, column: 6)
!3545 = !DILocation(line: 1404, column: 6, scope: !3448)
!3546 = !DILocation(line: 1405, column: 10, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 1404, column: 11)
!3548 = !DILocation(line: 1405, column: 3, scope: !3547)
!3549 = !DILocation(line: 1408, column: 15, scope: !3448)
!3550 = !DILocation(line: 1408, column: 22, scope: !3448)
!3551 = !DILocation(line: 1408, column: 30, scope: !3448)
!3552 = !DILocation(line: 1408, column: 37, scope: !3448)
!3553 = !DILocation(line: 1408, column: 8, scope: !3448)
!3554 = !DILocation(line: 1408, column: 6, scope: !3448)
!3555 = !DILocation(line: 1409, column: 6, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3448, file: !3, line: 1409, column: 6)
!3557 = !DILocation(line: 1409, column: 6, scope: !3448)
!3558 = !DILocation(line: 1410, column: 10, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 1409, column: 11)
!3560 = !DILocation(line: 1410, column: 3, scope: !3559)
!3561 = !DILocation(line: 1413, column: 2, scope: !3448)
!3562 = !DILocation(line: 1414, column: 1, scope: !3448)
!3563 = distinct !DISubprogram(name: "spdk_nvme_probe", scope: !3, file: !3, line: 876, type: !3564, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3566)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!155, !2151, !234, !2147, !2155, !1980}
!3566 = !{!3567, !3568, !3569, !3570, !3571, !3572, !3573}
!3567 = !DILocalVariable(name: "trid", arg: 1, scope: !3563, file: !3, line: 876, type: !2151)
!3568 = !DILocalVariable(name: "cb_ctx", arg: 2, scope: !3563, file: !3, line: 876, type: !234)
!3569 = !DILocalVariable(name: "probe_cb", arg: 3, scope: !3563, file: !3, line: 877, type: !2147)
!3570 = !DILocalVariable(name: "attach_cb", arg: 4, scope: !3563, file: !3, line: 877, type: !2155)
!3571 = !DILocalVariable(name: "remove_cb", arg: 5, scope: !3563, file: !3, line: 878, type: !1980)
!3572 = !DILocalVariable(name: "trid_pcie", scope: !3563, file: !3, line: 880, type: !754)
!3573 = !DILocalVariable(name: "probe_ctx", scope: !3563, file: !3, line: 881, type: !2141)
!3574 = !DILocation(line: 876, column: 54, scope: !3563)
!3575 = !DILocation(line: 876, column: 66, scope: !3563)
!3576 = !DILocation(line: 877, column: 22, scope: !3563)
!3577 = !DILocation(line: 877, column: 52, scope: !3563)
!3578 = !DILocation(line: 878, column: 23, scope: !3563)
!3579 = !DILocation(line: 880, column: 2, scope: !3563)
!3580 = !DILocation(line: 880, column: 32, scope: !3563)
!3581 = !DILocation(line: 881, column: 2, scope: !3563)
!3582 = !DILocation(line: 881, column: 30, scope: !3563)
!3583 = !DILocation(line: 883, column: 6, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 883, column: 6)
!3585 = !DILocation(line: 883, column: 11, scope: !3584)
!3586 = !DILocation(line: 883, column: 6, scope: !3563)
!3587 = !DILocation(line: 884, column: 3, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3584, file: !3, line: 883, column: 20)
!3589 = !DILocation(line: 885, column: 3, scope: !3588)
!3590 = !DILocation(line: 886, column: 8, scope: !3588)
!3591 = !DILocation(line: 887, column: 2, scope: !3588)
!3592 = !DILocation(line: 889, column: 36, scope: !3563)
!3593 = !DILocation(line: 889, column: 42, scope: !3563)
!3594 = !DILocation(line: 889, column: 50, scope: !3563)
!3595 = !DILocation(line: 890, column: 8, scope: !3563)
!3596 = !DILocation(line: 890, column: 19, scope: !3563)
!3597 = !DILocation(line: 889, column: 14, scope: !3563)
!3598 = !DILocation(line: 889, column: 12, scope: !3563)
!3599 = !DILocation(line: 891, column: 7, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 891, column: 6)
!3601 = !DILocation(line: 891, column: 6, scope: !3563)
!3602 = !DILocation(line: 892, column: 3, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3600, file: !3, line: 891, column: 18)
!3604 = !DILocation(line: 893, column: 3, scope: !3603)
!3605 = !DILocation(line: 900, column: 31, scope: !3563)
!3606 = !DILocation(line: 900, column: 9, scope: !3563)
!3607 = !DILocation(line: 900, column: 2, scope: !3563)
!3608 = !DILocation(line: 901, column: 1, scope: !3563)
!3609 = distinct !DISubprogram(name: "memset", scope: !2537, file: !2537, line: 57, type: !3610, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3612)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!234, !234, !155, !1474}
!3612 = !{!3613, !3614, !3615}
!3613 = !DILocalVariable(name: "__dest", arg: 1, scope: !3609, file: !2537, line: 57, type: !234)
!3614 = !DILocalVariable(name: "__ch", arg: 2, scope: !3609, file: !2537, line: 57, type: !155)
!3615 = !DILocalVariable(name: "__len", arg: 3, scope: !3609, file: !2537, line: 57, type: !1474)
!3616 = !DILocation(line: 57, column: 1, scope: !3609)
!3617 = !DILocation(line: 59, column: 34, scope: !3609)
!3618 = !DILocation(line: 59, column: 42, scope: !3609)
!3619 = !DILocation(line: 59, column: 48, scope: !3609)
!3620 = !DILocation(line: 60, column: 6, scope: !3609)
!3621 = !DILocation(line: 59, column: 10, scope: !3609)
!3622 = !DILocation(line: 59, column: 3, scope: !3609)
!3623 = distinct !DISubprogram(name: "spdk_nvme_trid_populate_transport", scope: !3, file: !3, line: 1009, type: !3624, scopeLine: 1011, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3627)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{null, !3626, !5}
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!3627 = !{!3628, !3629, !3630}
!3628 = !DILocalVariable(name: "trid", arg: 1, scope: !3623, file: !3, line: 1009, type: !3626)
!3629 = !DILocalVariable(name: "trtype", arg: 2, scope: !3623, file: !3, line: 1010, type: !5)
!3630 = !DILocalVariable(name: "trstring", scope: !3623, file: !3, line: 1012, type: !521)
!3631 = !DILocation(line: 1009, column: 66, scope: !3623)
!3632 = !DILocation(line: 1010, column: 37, scope: !3623)
!3633 = !DILocation(line: 1012, column: 2, scope: !3623)
!3634 = !DILocation(line: 1012, column: 14, scope: !3623)
!3635 = !DILocation(line: 1014, column: 17, scope: !3623)
!3636 = !DILocation(line: 1014, column: 2, scope: !3623)
!3637 = !DILocation(line: 1014, column: 8, scope: !3623)
!3638 = !DILocation(line: 1014, column: 15, scope: !3623)
!3639 = !DILocation(line: 1015, column: 10, scope: !3623)
!3640 = !DILocation(line: 1015, column: 2, scope: !3623)
!3641 = !DILocation(line: 1017, column: 12, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 1015, column: 18)
!3643 = !DILocation(line: 1018, column: 3, scope: !3642)
!3644 = !DILocation(line: 1020, column: 12, scope: !3642)
!3645 = !DILocation(line: 1021, column: 3, scope: !3642)
!3646 = !DILocation(line: 1023, column: 12, scope: !3642)
!3647 = !DILocation(line: 1024, column: 3, scope: !3642)
!3648 = !DILocation(line: 1026, column: 12, scope: !3642)
!3649 = !DILocation(line: 1027, column: 3, scope: !3642)
!3650 = !DILocation(line: 1029, column: 12, scope: !3642)
!3651 = !DILocation(line: 1030, column: 3, scope: !3642)
!3652 = !DILocation(line: 1032, column: 12, scope: !3642)
!3653 = !DILocation(line: 1033, column: 3, scope: !3642)
!3654 = !DILocation(line: 1035, column: 3, scope: !3642)
!3655 = !DILocation(line: 1037, column: 3, scope: !3642)
!3656 = !DILocation(line: 1039, column: 2, scope: !3623)
!3657 = !DILocation(line: 1040, column: 1, scope: !3623)
!3658 = distinct !DISubprogram(name: "spdk_nvme_probe_async", scope: !3, file: !3, line: 1470, type: !3659, scopeLine: 1475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3661)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!2141, !2151, !234, !2147, !2155, !1980}
!3661 = !{!3662, !3663, !3664, !3665, !3666, !3667, !3668}
!3662 = !DILocalVariable(name: "trid", arg: 1, scope: !3658, file: !3, line: 1470, type: !2151)
!3663 = !DILocalVariable(name: "cb_ctx", arg: 2, scope: !3658, file: !3, line: 1471, type: !234)
!3664 = !DILocalVariable(name: "probe_cb", arg: 3, scope: !3658, file: !3, line: 1472, type: !2147)
!3665 = !DILocalVariable(name: "attach_cb", arg: 4, scope: !3658, file: !3, line: 1473, type: !2155)
!3666 = !DILocalVariable(name: "remove_cb", arg: 5, scope: !3658, file: !3, line: 1474, type: !1980)
!3667 = !DILocalVariable(name: "rc", scope: !3658, file: !3, line: 1476, type: !155)
!3668 = !DILocalVariable(name: "probe_ctx", scope: !3658, file: !3, line: 1477, type: !2141)
!3669 = !DILocation(line: 1470, column: 60, scope: !3658)
!3670 = !DILocation(line: 1471, column: 15, scope: !3658)
!3671 = !DILocation(line: 1472, column: 28, scope: !3658)
!3672 = !DILocation(line: 1473, column: 29, scope: !3658)
!3673 = !DILocation(line: 1474, column: 29, scope: !3658)
!3674 = !DILocation(line: 1476, column: 2, scope: !3658)
!3675 = !DILocation(line: 1476, column: 6, scope: !3658)
!3676 = !DILocation(line: 1477, column: 2, scope: !3658)
!3677 = !DILocation(line: 1477, column: 30, scope: !3658)
!3678 = !DILocation(line: 1479, column: 7, scope: !3658)
!3679 = !DILocation(line: 1479, column: 5, scope: !3658)
!3680 = !DILocation(line: 1480, column: 6, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 1480, column: 6)
!3682 = !DILocation(line: 1480, column: 9, scope: !3681)
!3683 = !DILocation(line: 1480, column: 6, scope: !3658)
!3684 = !DILocation(line: 1481, column: 3, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 1480, column: 15)
!3686 = !DILocation(line: 1484, column: 14, scope: !3658)
!3687 = !DILocation(line: 1484, column: 12, scope: !3658)
!3688 = !DILocation(line: 1485, column: 7, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 1485, column: 6)
!3690 = !DILocation(line: 1485, column: 6, scope: !3658)
!3691 = !DILocation(line: 1486, column: 3, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3689, file: !3, line: 1485, column: 18)
!3693 = !DILocation(line: 1489, column: 22, scope: !3658)
!3694 = !DILocation(line: 1489, column: 33, scope: !3658)
!3695 = !DILocation(line: 1489, column: 39, scope: !3658)
!3696 = !DILocation(line: 1489, column: 47, scope: !3658)
!3697 = !DILocation(line: 1489, column: 57, scope: !3658)
!3698 = !DILocation(line: 1489, column: 68, scope: !3658)
!3699 = !DILocation(line: 1489, column: 2, scope: !3658)
!3700 = !DILocation(line: 1490, column: 27, scope: !3658)
!3701 = !DILocation(line: 1490, column: 7, scope: !3658)
!3702 = !DILocation(line: 1490, column: 5, scope: !3658)
!3703 = !DILocation(line: 1491, column: 6, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 1491, column: 6)
!3705 = !DILocation(line: 1491, column: 9, scope: !3704)
!3706 = !DILocation(line: 1491, column: 6, scope: !3658)
!3707 = !DILocation(line: 1492, column: 8, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3704, file: !3, line: 1491, column: 15)
!3709 = !DILocation(line: 1492, column: 3, scope: !3708)
!3710 = !DILocation(line: 1493, column: 3, scope: !3708)
!3711 = !DILocation(line: 1496, column: 9, scope: !3658)
!3712 = !DILocation(line: 1496, column: 2, scope: !3658)
!3713 = !DILocation(line: 1497, column: 1, scope: !3658)
!3714 = distinct !DISubprogram(name: "nvme_init_controllers", scope: !3, file: !3, line: 742, type: !3715, scopeLine: 743, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3717)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!155, !2141}
!3717 = !{!3718, !3719}
!3718 = !DILocalVariable(name: "probe_ctx", arg: 1, scope: !3714, file: !3, line: 742, type: !2141)
!3719 = !DILocalVariable(name: "rc", scope: !3714, file: !3, line: 744, type: !155)
!3720 = !DILocation(line: 742, column: 51, scope: !3714)
!3721 = !DILocation(line: 744, column: 2, scope: !3714)
!3722 = !DILocation(line: 744, column: 6, scope: !3714)
!3723 = !DILocation(line: 746, column: 2, scope: !3714)
!3724 = !DILocation(line: 747, column: 35, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 746, column: 15)
!3726 = !DILocation(line: 747, column: 8, scope: !3725)
!3727 = !DILocation(line: 747, column: 6, scope: !3725)
!3728 = !DILocation(line: 748, column: 7, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3725, file: !3, line: 748, column: 7)
!3730 = !DILocation(line: 748, column: 10, scope: !3729)
!3731 = !DILocation(line: 748, column: 7, scope: !3725)
!3732 = !DILocation(line: 749, column: 11, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3729, file: !3, line: 748, column: 22)
!3734 = !DILocation(line: 754, column: 1, scope: !3714)
!3735 = !DILocation(line: 749, column: 4, scope: !3733)
!3736 = distinct !{!3736, !3723, !3737}
!3737 = !DILocation(line: 751, column: 2, scope: !3714)
!3738 = distinct !DISubprogram(name: "spdk_nvme_connect", scope: !3, file: !3, line: 973, type: !3739, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3741)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!534, !2151, !2159, !1240}
!3741 = !{!3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749}
!3742 = !DILocalVariable(name: "trid", arg: 1, scope: !3738, file: !3, line: 973, type: !2151)
!3743 = !DILocalVariable(name: "opts", arg: 2, scope: !3738, file: !3, line: 974, type: !2159)
!3744 = !DILocalVariable(name: "opts_size", arg: 3, scope: !3738, file: !3, line: 974, type: !1240)
!3745 = !DILocalVariable(name: "rc", scope: !3738, file: !3, line: 976, type: !155)
!3746 = !DILocalVariable(name: "ctrlr", scope: !3738, file: !3, line: 977, type: !534)
!3747 = !DILocalVariable(name: "probe_ctx", scope: !3738, file: !3, line: 978, type: !2141)
!3748 = !DILocalVariable(name: "opts_local_p", scope: !3738, file: !3, line: 979, type: !2153)
!3749 = !DILocalVariable(name: "opts_local", scope: !3738, file: !3, line: 980, type: !1924)
!3750 = !DILocation(line: 973, column: 56, scope: !3738)
!3751 = !DILocation(line: 974, column: 40, scope: !3738)
!3752 = !DILocation(line: 974, column: 53, scope: !3738)
!3753 = !DILocation(line: 976, column: 2, scope: !3738)
!3754 = !DILocation(line: 976, column: 6, scope: !3738)
!3755 = !DILocation(line: 977, column: 2, scope: !3738)
!3756 = !DILocation(line: 977, column: 26, scope: !3738)
!3757 = !DILocation(line: 978, column: 2, scope: !3738)
!3758 = !DILocation(line: 978, column: 30, scope: !3738)
!3759 = !DILocation(line: 979, column: 2, scope: !3738)
!3760 = !DILocation(line: 979, column: 31, scope: !3738)
!3761 = !DILocation(line: 980, column: 2, scope: !3738)
!3762 = !DILocation(line: 980, column: 30, scope: !3738)
!3763 = !DILocation(line: 982, column: 6, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3738, file: !3, line: 982, column: 6)
!3765 = !DILocation(line: 982, column: 11, scope: !3764)
!3766 = !DILocation(line: 982, column: 6, scope: !3738)
!3767 = !DILocation(line: 983, column: 3, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 982, column: 20)
!3769 = !DILocation(line: 984, column: 3, scope: !3768)
!3770 = !DILocation(line: 987, column: 6, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3738, file: !3, line: 987, column: 6)
!3772 = !DILocation(line: 987, column: 6, scope: !3738)
!3773 = !DILocation(line: 988, column: 16, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3771, file: !3, line: 987, column: 12)
!3775 = !DILocation(line: 989, column: 24, scope: !3774)
!3776 = !DILocation(line: 989, column: 38, scope: !3774)
!3777 = !DILocation(line: 989, column: 44, scope: !3774)
!3778 = !DILocation(line: 989, column: 3, scope: !3774)
!3779 = !DILocation(line: 990, column: 2, scope: !3774)
!3780 = !DILocation(line: 992, column: 38, scope: !3738)
!3781 = !DILocation(line: 992, column: 44, scope: !3738)
!3782 = !DILocation(line: 992, column: 14, scope: !3738)
!3783 = !DILocation(line: 992, column: 12, scope: !3738)
!3784 = !DILocation(line: 993, column: 7, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3738, file: !3, line: 993, column: 6)
!3786 = !DILocation(line: 993, column: 6, scope: !3738)
!3787 = !DILocation(line: 994, column: 3, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3785, file: !3, line: 993, column: 18)
!3789 = !DILocation(line: 995, column: 3, scope: !3788)
!3790 = !DILocation(line: 998, column: 29, scope: !3738)
!3791 = !DILocation(line: 998, column: 7, scope: !3738)
!3792 = !DILocation(line: 998, column: 5, scope: !3738)
!3793 = !DILocation(line: 999, column: 6, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3738, file: !3, line: 999, column: 6)
!3795 = !DILocation(line: 999, column: 9, scope: !3794)
!3796 = !DILocation(line: 999, column: 6, scope: !3738)
!3797 = !DILocation(line: 1000, column: 3, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3794, file: !3, line: 999, column: 15)
!3799 = !DILocation(line: 1003, column: 33, scope: !3738)
!3800 = !DILocation(line: 1003, column: 10, scope: !3738)
!3801 = !DILocation(line: 1003, column: 8, scope: !3738)
!3802 = !DILocation(line: 1005, column: 9, scope: !3738)
!3803 = !DILocation(line: 1005, column: 2, scope: !3738)
!3804 = !DILocation(line: 1006, column: 1, scope: !3738)
!3805 = distinct !DISubprogram(name: "nvme_ctrlr_opts_init", scope: !3, file: !3, line: 916, type: !3806, scopeLine: 919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3808)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{null, !2153, !2159, !1240}
!3808 = !{!3809, !3810, !3811}
!3809 = !DILocalVariable(name: "opts", arg: 1, scope: !3805, file: !3, line: 916, type: !2153)
!3810 = !DILocalVariable(name: "opts_user", arg: 2, scope: !3805, file: !3, line: 917, type: !2159)
!3811 = !DILocalVariable(name: "opts_size_user", arg: 3, scope: !3805, file: !3, line: 918, type: !1240)
!3812 = !DILocation(line: 916, column: 51, scope: !3805)
!3813 = !DILocation(line: 917, column: 43, scope: !3805)
!3814 = !DILocation(line: 918, column: 15, scope: !3805)
!3815 = !DILocation(line: 923, column: 41, scope: !3805)
!3816 = !DILocation(line: 923, column: 47, scope: !3805)
!3817 = !DILocation(line: 923, column: 2, scope: !3805)
!3818 = !DILocation(line: 938, column: 2, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 938, column: 2)
!3820 = !DILocation(line: 938, column: 2, scope: !3805)
!3821 = !DILocation(line: 938, column: 2, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 938, column: 2)
!3823 = !DILocation(line: 939, column: 2, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 939, column: 2)
!3825 = !DILocation(line: 939, column: 2, scope: !3805)
!3826 = !DILocation(line: 939, column: 2, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3824, file: !3, line: 939, column: 2)
!3828 = !DILocation(line: 940, column: 2, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 940, column: 2)
!3830 = !DILocation(line: 940, column: 2, scope: !3805)
!3831 = !DILocation(line: 940, column: 2, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 940, column: 2)
!3833 = !DILocation(line: 941, column: 2, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 941, column: 2)
!3835 = !DILocation(line: 941, column: 2, scope: !3805)
!3836 = !DILocation(line: 941, column: 2, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3834, file: !3, line: 941, column: 2)
!3838 = !DILocation(line: 942, column: 2, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 942, column: 2)
!3840 = !DILocation(line: 942, column: 2, scope: !3805)
!3841 = !DILocation(line: 942, column: 2, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3839, file: !3, line: 942, column: 2)
!3843 = !DILocation(line: 943, column: 2, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 943, column: 2)
!3845 = !DILocation(line: 943, column: 2, scope: !3805)
!3846 = !DILocation(line: 943, column: 2, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3844, file: !3, line: 943, column: 2)
!3848 = !DILocation(line: 944, column: 2, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 944, column: 2)
!3850 = !DILocation(line: 944, column: 2, scope: !3805)
!3851 = !DILocation(line: 944, column: 2, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 944, column: 2)
!3853 = !DILocation(line: 945, column: 2, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 945, column: 2)
!3855 = !DILocation(line: 945, column: 2, scope: !3805)
!3856 = !DILocation(line: 945, column: 2, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3854, file: !3, line: 945, column: 2)
!3858 = !DILocation(line: 946, column: 2, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 946, column: 2)
!3860 = !DILocation(line: 946, column: 2, scope: !3805)
!3861 = !DILocation(line: 946, column: 2, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3859, file: !3, line: 946, column: 2)
!3863 = !DILocation(line: 947, column: 2, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 947, column: 2)
!3865 = !DILocation(line: 947, column: 2, scope: !3805)
!3866 = !DILocation(line: 947, column: 2, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3864, file: !3, line: 947, column: 2)
!3868 = !DILocation(line: 948, column: 2, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 948, column: 2)
!3870 = !DILocation(line: 948, column: 2, scope: !3805)
!3871 = !DILocation(line: 948, column: 2, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3869, file: !3, line: 948, column: 2)
!3873 = !DILocation(line: 949, column: 2, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 949, column: 2)
!3875 = !DILocation(line: 949, column: 2, scope: !3805)
!3876 = !DILocation(line: 949, column: 2, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3874, file: !3, line: 949, column: 2)
!3878 = !DILocation(line: 950, column: 2, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 950, column: 2)
!3880 = !DILocation(line: 950, column: 2, scope: !3805)
!3881 = !DILocation(line: 950, column: 2, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3879, file: !3, line: 950, column: 2)
!3883 = !DILocation(line: 951, column: 2, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 951, column: 2)
!3885 = !DILocation(line: 951, column: 2, scope: !3805)
!3886 = !DILocation(line: 951, column: 2, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3884, file: !3, line: 951, column: 2)
!3888 = !DILocation(line: 952, column: 2, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 952, column: 2)
!3890 = !DILocation(line: 952, column: 2, scope: !3805)
!3891 = !DILocation(line: 952, column: 2, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3889, file: !3, line: 952, column: 2)
!3893 = !DILocation(line: 953, column: 2, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 953, column: 2)
!3895 = !DILocation(line: 953, column: 2, scope: !3805)
!3896 = !DILocation(line: 953, column: 2, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 953, column: 2)
!3898 = !DILocation(line: 954, column: 2, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 954, column: 2)
!3900 = !DILocation(line: 954, column: 2, scope: !3805)
!3901 = !DILocation(line: 954, column: 2, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3899, file: !3, line: 954, column: 2)
!3903 = !DILocation(line: 955, column: 2, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 955, column: 2)
!3905 = !DILocation(line: 955, column: 2, scope: !3805)
!3906 = !DILocation(line: 955, column: 2, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 955, column: 2)
!3908 = !DILocation(line: 956, column: 2, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 956, column: 2)
!3910 = !DILocation(line: 956, column: 2, scope: !3805)
!3911 = !DILocation(line: 956, column: 2, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3909, file: !3, line: 956, column: 2)
!3913 = !DILocation(line: 957, column: 2, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 957, column: 2)
!3915 = !DILocation(line: 957, column: 2, scope: !3805)
!3916 = !DILocation(line: 957, column: 2, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3914, file: !3, line: 957, column: 2)
!3918 = !DILocation(line: 958, column: 2, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 958, column: 2)
!3920 = !DILocation(line: 958, column: 2, scope: !3805)
!3921 = !DILocation(line: 958, column: 2, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3919, file: !3, line: 958, column: 2)
!3923 = !DILocation(line: 959, column: 2, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 959, column: 2)
!3925 = !DILocation(line: 959, column: 2, scope: !3805)
!3926 = !DILocation(line: 959, column: 2, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3924, file: !3, line: 959, column: 2)
!3928 = !DILocation(line: 960, column: 2, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 960, column: 2)
!3930 = !DILocation(line: 960, column: 2, scope: !3805)
!3931 = !DILocation(line: 960, column: 2, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3929, file: !3, line: 960, column: 2)
!3933 = !DILocation(line: 961, column: 2, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 961, column: 2)
!3935 = !DILocation(line: 961, column: 2, scope: !3805)
!3936 = !DILocation(line: 961, column: 2, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3934, file: !3, line: 961, column: 2)
!3938 = !DILocation(line: 962, column: 2, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 962, column: 2)
!3940 = !DILocation(line: 962, column: 2, scope: !3805)
!3941 = !DILocation(line: 962, column: 2, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3939, file: !3, line: 962, column: 2)
!3943 = !DILocation(line: 963, column: 2, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 963, column: 2)
!3945 = !DILocation(line: 963, column: 2, scope: !3805)
!3946 = !DILocation(line: 963, column: 2, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3944, file: !3, line: 963, column: 2)
!3948 = !DILocation(line: 964, column: 2, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 964, column: 2)
!3950 = !DILocation(line: 964, column: 2, scope: !3805)
!3951 = !DILocation(line: 964, column: 2, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3949, file: !3, line: 964, column: 2)
!3953 = !DILocation(line: 965, column: 2, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 965, column: 2)
!3955 = !DILocation(line: 965, column: 2, scope: !3805)
!3956 = !DILocation(line: 965, column: 2, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 965, column: 2)
!3958 = !DILocation(line: 970, column: 1, scope: !3805)
!3959 = distinct !DISubprogram(name: "spdk_nvme_connect_async", scope: !3, file: !3, line: 1525, type: !3960, scopeLine: 1528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3962)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!2141, !2151, !2159, !2155}
!3962 = !{!3963, !3964, !3965, !3966, !3967, !3968}
!3963 = !DILocalVariable(name: "trid", arg: 1, scope: !3959, file: !3, line: 1525, type: !2151)
!3964 = !DILocalVariable(name: "opts", arg: 2, scope: !3959, file: !3, line: 1526, type: !2159)
!3965 = !DILocalVariable(name: "attach_cb", arg: 3, scope: !3959, file: !3, line: 1527, type: !2155)
!3966 = !DILocalVariable(name: "rc", scope: !3959, file: !3, line: 1529, type: !155)
!3967 = !DILocalVariable(name: "probe_cb", scope: !3959, file: !3, line: 1530, type: !2147)
!3968 = !DILocalVariable(name: "probe_ctx", scope: !3959, file: !3, line: 1531, type: !2141)
!3969 = !DILocation(line: 1525, column: 62, scope: !3959)
!3970 = !DILocation(line: 1526, column: 39, scope: !3959)
!3971 = !DILocation(line: 1527, column: 24, scope: !3959)
!3972 = !DILocation(line: 1529, column: 2, scope: !3959)
!3973 = !DILocation(line: 1529, column: 6, scope: !3959)
!3974 = !DILocation(line: 1530, column: 2, scope: !3959)
!3975 = !DILocation(line: 1530, column: 21, scope: !3959)
!3976 = !DILocation(line: 1531, column: 2, scope: !3959)
!3977 = !DILocation(line: 1531, column: 30, scope: !3959)
!3978 = !DILocation(line: 1533, column: 7, scope: !3959)
!3979 = !DILocation(line: 1533, column: 5, scope: !3959)
!3980 = !DILocation(line: 1534, column: 6, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3959, file: !3, line: 1534, column: 6)
!3982 = !DILocation(line: 1534, column: 9, scope: !3981)
!3983 = !DILocation(line: 1534, column: 6, scope: !3959)
!3984 = !DILocation(line: 1535, column: 3, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 1534, column: 15)
!3986 = !DILocation(line: 1538, column: 14, scope: !3959)
!3987 = !DILocation(line: 1538, column: 12, scope: !3959)
!3988 = !DILocation(line: 1539, column: 7, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3959, file: !3, line: 1539, column: 6)
!3990 = !DILocation(line: 1539, column: 6, scope: !3959)
!3991 = !DILocation(line: 1540, column: 3, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 1539, column: 18)
!3993 = !DILocation(line: 1543, column: 6, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3959, file: !3, line: 1543, column: 6)
!3995 = !DILocation(line: 1543, column: 6, scope: !3959)
!3996 = !DILocation(line: 1544, column: 12, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3994, file: !3, line: 1543, column: 12)
!3998 = !DILocation(line: 1545, column: 2, scope: !3997)
!3999 = !DILocation(line: 1547, column: 22, scope: !3959)
!4000 = !DILocation(line: 1547, column: 33, scope: !3959)
!4001 = !DILocation(line: 1547, column: 47, scope: !3959)
!4002 = !DILocation(line: 1547, column: 53, scope: !3959)
!4003 = !DILocation(line: 1547, column: 63, scope: !3959)
!4004 = !DILocation(line: 1547, column: 2, scope: !3959)
!4005 = !DILocation(line: 1548, column: 27, scope: !3959)
!4006 = !DILocation(line: 1548, column: 7, scope: !3959)
!4007 = !DILocation(line: 1548, column: 5, scope: !3959)
!4008 = !DILocation(line: 1549, column: 6, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3959, file: !3, line: 1549, column: 6)
!4010 = !DILocation(line: 1549, column: 9, scope: !4009)
!4011 = !DILocation(line: 1549, column: 6, scope: !3959)
!4012 = !DILocation(line: 1550, column: 8, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !4009, file: !3, line: 1549, column: 15)
!4014 = !DILocation(line: 1550, column: 3, scope: !4013)
!4015 = !DILocation(line: 1551, column: 3, scope: !4013)
!4016 = !DILocation(line: 1554, column: 9, scope: !3959)
!4017 = !DILocation(line: 1554, column: 2, scope: !3959)
!4018 = !DILocation(line: 1555, column: 1, scope: !3959)
!4019 = distinct !DISubprogram(name: "nvme_get_ctrlr_by_trid", scope: !3, file: !3, line: 758, type: !3376, scopeLine: 759, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4020)
!4020 = !{!4021, !4022}
!4021 = !DILocalVariable(name: "trid", arg: 1, scope: !4019, file: !3, line: 758, type: !2151)
!4022 = !DILocalVariable(name: "ctrlr", scope: !4019, file: !3, line: 760, type: !534)
!4023 = !DILocation(line: 758, column: 61, scope: !4019)
!4024 = !DILocation(line: 760, column: 2, scope: !4019)
!4025 = !DILocation(line: 760, column: 26, scope: !4019)
!4026 = !DILocation(line: 762, column: 26, scope: !4019)
!4027 = !DILocation(line: 762, column: 46, scope: !4019)
!4028 = !DILocation(line: 762, column: 2, scope: !4019)
!4029 = !DILocation(line: 763, column: 40, scope: !4019)
!4030 = !DILocation(line: 763, column: 10, scope: !4019)
!4031 = !DILocation(line: 763, column: 8, scope: !4019)
!4032 = !DILocation(line: 764, column: 28, scope: !4019)
!4033 = !DILocation(line: 764, column: 48, scope: !4019)
!4034 = !DILocation(line: 764, column: 2, scope: !4019)
!4035 = !DILocation(line: 766, column: 9, scope: !4019)
!4036 = !DILocation(line: 767, column: 1, scope: !4019)
!4037 = !DILocation(line: 766, column: 2, scope: !4019)
!4038 = !DISubprogram(name: "__builtin___snprintf_chk", scope: !3, file: !3, line: 1039, type: !4039, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!155, !4041, !578, !155, !578, !4043, null}
!4041 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !4042)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !521)
!4044 = distinct !DISubprogram(name: "spdk_nvme_transport_id_populate_trstring", scope: !3, file: !3, line: 1043, type: !4045, scopeLine: 1044, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4047)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!155, !3626, !521}
!4047 = !{!4048, !4049, !4050, !4051}
!4048 = !DILocalVariable(name: "trid", arg: 1, scope: !4044, file: !3, line: 1043, type: !3626)
!4049 = !DILocalVariable(name: "trstring", arg: 2, scope: !4044, file: !3, line: 1043, type: !521)
!4050 = !DILocalVariable(name: "i", scope: !4044, file: !3, line: 1045, type: !155)
!4051 = !DILocalVariable(name: "__res", scope: !4052, file: !3, line: 1053, type: !155)
!4052 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 1053, column: 23)
!4053 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 1052, column: 61)
!4054 = !DILocation(line: 1043, column: 73, scope: !4044)
!4055 = !DILocation(line: 1043, column: 91, scope: !4044)
!4056 = !DILocation(line: 1045, column: 2, scope: !4044)
!4057 = !DILocation(line: 1045, column: 6, scope: !4044)
!4058 = !DILocation(line: 1052, column: 2, scope: !4044)
!4059 = !DILocation(line: 1052, column: 9, scope: !4044)
!4060 = !DILocation(line: 1052, column: 11, scope: !4044)
!4061 = !DILocation(line: 1052, column: 40, scope: !4044)
!4062 = !DILocation(line: 1052, column: 43, scope: !4044)
!4063 = !DILocation(line: 1052, column: 52, scope: !4044)
!4064 = !DILocation(line: 1052, column: 55, scope: !4044)
!4065 = !DILocation(line: 0, scope: !4044)
!4066 = !DILocation(line: 1053, column: 23, scope: !4052)
!4067 = !DILocation(line: 1053, column: 23, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 1053, column: 23)
!4069 = !DILocation(line: 1053, column: 23, scope: !4053)
!4070 = !DILocation(line: 1053, column: 3, scope: !4053)
!4071 = !DILocation(line: 1053, column: 9, scope: !4053)
!4072 = !DILocation(line: 1053, column: 18, scope: !4053)
!4073 = !DILocation(line: 1053, column: 21, scope: !4053)
!4074 = !DILocation(line: 1054, column: 4, scope: !4053)
!4075 = distinct !{!4075, !4058, !4076}
!4076 = !DILocation(line: 1055, column: 2, scope: !4044)
!4077 = !DILocation(line: 1057, column: 6, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 1057, column: 6)
!4079 = !DILocation(line: 1057, column: 15, scope: !4078)
!4080 = !DILocation(line: 1057, column: 18, scope: !4078)
!4081 = !DILocation(line: 1057, column: 6, scope: !4044)
!4082 = !DILocation(line: 1058, column: 3, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4078, file: !3, line: 1057, column: 24)
!4084 = !DILocation(line: 1060, column: 3, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4078, file: !3, line: 1059, column: 9)
!4086 = !DILocation(line: 1060, column: 9, scope: !4085)
!4087 = !DILocation(line: 1060, column: 18, scope: !4085)
!4088 = !DILocation(line: 1060, column: 21, scope: !4085)
!4089 = !DILocation(line: 1061, column: 3, scope: !4085)
!4090 = !DILocation(line: 1063, column: 1, scope: !4044)
!4091 = !DISubprogram(name: "__ctype_toupper_loc", scope: !4092, file: !4092, line: 83, type: !4093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4092 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!4095}
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2726)
!4098 = distinct !DISubprogram(name: "spdk_nvme_transport_id_parse_trtype", scope: !3, file: !3, line: 1066, type: !4099, scopeLine: 1067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4102)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!155, !4101, !521}
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!4102 = !{!4103, !4104}
!4103 = !DILocalVariable(name: "trtype", arg: 1, scope: !4098, file: !3, line: 1066, type: !4101)
!4104 = !DILocalVariable(name: "str", arg: 2, scope: !4098, file: !3, line: 1066, type: !521)
!4105 = !DILocation(line: 1066, column: 68, scope: !4098)
!4106 = !DILocation(line: 1066, column: 88, scope: !4098)
!4107 = !DILocation(line: 1068, column: 6, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4098, file: !3, line: 1068, column: 6)
!4109 = !DILocation(line: 1068, column: 13, scope: !4108)
!4110 = !DILocation(line: 1068, column: 21, scope: !4108)
!4111 = !DILocation(line: 1068, column: 24, scope: !4108)
!4112 = !DILocation(line: 1068, column: 28, scope: !4108)
!4113 = !DILocation(line: 1068, column: 6, scope: !4098)
!4114 = !DILocation(line: 1069, column: 3, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4108, file: !3, line: 1068, column: 37)
!4116 = !DILocation(line: 1072, column: 17, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4098, file: !3, line: 1072, column: 6)
!4118 = !DILocation(line: 1072, column: 6, scope: !4117)
!4119 = !DILocation(line: 1072, column: 30, scope: !4117)
!4120 = !DILocation(line: 1072, column: 6, scope: !4098)
!4121 = !DILocation(line: 1073, column: 4, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4117, file: !3, line: 1072, column: 36)
!4123 = !DILocation(line: 1073, column: 11, scope: !4122)
!4124 = !DILocation(line: 1074, column: 2, scope: !4122)
!4125 = !DILocation(line: 1074, column: 24, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4117, file: !3, line: 1074, column: 13)
!4127 = !DILocation(line: 1074, column: 13, scope: !4126)
!4128 = !DILocation(line: 1074, column: 37, scope: !4126)
!4129 = !DILocation(line: 1074, column: 13, scope: !4117)
!4130 = !DILocation(line: 1075, column: 4, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4126, file: !3, line: 1074, column: 43)
!4132 = !DILocation(line: 1075, column: 11, scope: !4131)
!4133 = !DILocation(line: 1076, column: 2, scope: !4131)
!4134 = !DILocation(line: 1076, column: 24, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4126, file: !3, line: 1076, column: 13)
!4136 = !DILocation(line: 1076, column: 13, scope: !4135)
!4137 = !DILocation(line: 1076, column: 35, scope: !4135)
!4138 = !DILocation(line: 1076, column: 13, scope: !4126)
!4139 = !DILocation(line: 1077, column: 4, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4135, file: !3, line: 1076, column: 41)
!4141 = !DILocation(line: 1077, column: 11, scope: !4140)
!4142 = !DILocation(line: 1078, column: 2, scope: !4140)
!4143 = !DILocation(line: 1078, column: 24, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4135, file: !3, line: 1078, column: 13)
!4145 = !DILocation(line: 1078, column: 13, scope: !4144)
!4146 = !DILocation(line: 1078, column: 36, scope: !4144)
!4147 = !DILocation(line: 1078, column: 13, scope: !4135)
!4148 = !DILocation(line: 1079, column: 4, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4144, file: !3, line: 1078, column: 42)
!4150 = !DILocation(line: 1079, column: 11, scope: !4149)
!4151 = !DILocation(line: 1080, column: 2, scope: !4149)
!4152 = !DILocation(line: 1080, column: 24, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4144, file: !3, line: 1080, column: 13)
!4154 = !DILocation(line: 1080, column: 13, scope: !4153)
!4155 = !DILocation(line: 1080, column: 41, scope: !4153)
!4156 = !DILocation(line: 1080, column: 13, scope: !4144)
!4157 = !DILocation(line: 1081, column: 4, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 1080, column: 47)
!4159 = !DILocation(line: 1081, column: 11, scope: !4158)
!4160 = !DILocation(line: 1082, column: 2, scope: !4158)
!4161 = !DILocation(line: 1083, column: 4, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 1082, column: 9)
!4163 = !DILocation(line: 1083, column: 11, scope: !4162)
!4164 = !DILocation(line: 1085, column: 2, scope: !4098)
!4165 = !DILocation(line: 1086, column: 1, scope: !4098)
!4166 = !DISubprogram(name: "strcasecmp", scope: !4167, file: !4167, line: 116, type: !4168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4167 = !DIFile(filename: "/usr/include/strings.h", directory: "", checksumkind: CSK_MD5, checksum: "7444da68ad94ab9f25ff447750787173")
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!155, !521, !521}
!4170 = distinct !DISubprogram(name: "spdk_nvme_transport_id_trtype_str", scope: !3, file: !3, line: 1089, type: !4171, scopeLine: 1090, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4173)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!521, !5}
!4173 = !{!4174}
!4174 = !DILocalVariable(name: "trtype", arg: 1, scope: !4170, file: !3, line: 1089, type: !5)
!4175 = !DILocation(line: 1089, column: 65, scope: !4170)
!4176 = !DILocation(line: 1091, column: 10, scope: !4170)
!4177 = !DILocation(line: 1091, column: 2, scope: !4170)
!4178 = !DILocation(line: 1093, column: 3, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4170, file: !3, line: 1091, column: 18)
!4180 = !DILocation(line: 1095, column: 3, scope: !4179)
!4181 = !DILocation(line: 1097, column: 3, scope: !4179)
!4182 = !DILocation(line: 1099, column: 3, scope: !4179)
!4183 = !DILocation(line: 1101, column: 3, scope: !4179)
!4184 = !DILocation(line: 1103, column: 3, scope: !4179)
!4185 = !DILocation(line: 1105, column: 3, scope: !4179)
!4186 = !DILocation(line: 1107, column: 1, scope: !4170)
!4187 = distinct !DISubprogram(name: "spdk_nvme_transport_id_parse_adrfam", scope: !3, file: !3, line: 1110, type: !4188, scopeLine: 1111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4191)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!155, !4190, !521}
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!4191 = !{!4192, !4193}
!4192 = !DILocalVariable(name: "adrfam", arg: 1, scope: !4187, file: !3, line: 1110, type: !4190)
!4193 = !DILocalVariable(name: "str", arg: 2, scope: !4187, file: !3, line: 1110, type: !521)
!4194 = !DILocation(line: 1110, column: 60, scope: !4187)
!4195 = !DILocation(line: 1110, column: 80, scope: !4187)
!4196 = !DILocation(line: 1112, column: 6, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4187, file: !3, line: 1112, column: 6)
!4198 = !DILocation(line: 1112, column: 13, scope: !4197)
!4199 = !DILocation(line: 1112, column: 21, scope: !4197)
!4200 = !DILocation(line: 1112, column: 24, scope: !4197)
!4201 = !DILocation(line: 1112, column: 28, scope: !4197)
!4202 = !DILocation(line: 1112, column: 6, scope: !4187)
!4203 = !DILocation(line: 1113, column: 3, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4197, file: !3, line: 1112, column: 37)
!4205 = !DILocation(line: 1116, column: 17, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4187, file: !3, line: 1116, column: 6)
!4207 = !DILocation(line: 1116, column: 6, scope: !4206)
!4208 = !DILocation(line: 1116, column: 30, scope: !4206)
!4209 = !DILocation(line: 1116, column: 6, scope: !4187)
!4210 = !DILocation(line: 1117, column: 4, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4206, file: !3, line: 1116, column: 36)
!4212 = !DILocation(line: 1117, column: 11, scope: !4211)
!4213 = !DILocation(line: 1118, column: 2, scope: !4211)
!4214 = !DILocation(line: 1118, column: 24, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4206, file: !3, line: 1118, column: 13)
!4216 = !DILocation(line: 1118, column: 13, scope: !4215)
!4217 = !DILocation(line: 1118, column: 37, scope: !4215)
!4218 = !DILocation(line: 1118, column: 13, scope: !4206)
!4219 = !DILocation(line: 1119, column: 4, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4215, file: !3, line: 1118, column: 43)
!4221 = !DILocation(line: 1119, column: 11, scope: !4220)
!4222 = !DILocation(line: 1120, column: 2, scope: !4220)
!4223 = !DILocation(line: 1120, column: 24, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4215, file: !3, line: 1120, column: 13)
!4225 = !DILocation(line: 1120, column: 13, scope: !4224)
!4226 = !DILocation(line: 1120, column: 35, scope: !4224)
!4227 = !DILocation(line: 1120, column: 13, scope: !4215)
!4228 = !DILocation(line: 1121, column: 4, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4224, file: !3, line: 1120, column: 41)
!4230 = !DILocation(line: 1121, column: 11, scope: !4229)
!4231 = !DILocation(line: 1122, column: 2, scope: !4229)
!4232 = !DILocation(line: 1122, column: 24, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4224, file: !3, line: 1122, column: 13)
!4234 = !DILocation(line: 1122, column: 13, scope: !4233)
!4235 = !DILocation(line: 1122, column: 35, scope: !4233)
!4236 = !DILocation(line: 1122, column: 13, scope: !4224)
!4237 = !DILocation(line: 1123, column: 4, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 1122, column: 41)
!4239 = !DILocation(line: 1123, column: 11, scope: !4238)
!4240 = !DILocation(line: 1124, column: 2, scope: !4238)
!4241 = !DILocation(line: 1125, column: 3, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 1124, column: 9)
!4243 = !DILocation(line: 1127, column: 2, scope: !4187)
!4244 = !DILocation(line: 1128, column: 1, scope: !4187)
!4245 = distinct !DISubprogram(name: "spdk_nvme_transport_id_adrfam_str", scope: !3, file: !3, line: 1131, type: !4246, scopeLine: 1132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4248)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!521, !16}
!4248 = !{!4249}
!4249 = !DILocalVariable(name: "adrfam", arg: 1, scope: !4245, file: !3, line: 1131, type: !16)
!4250 = !DILocation(line: 1131, column: 57, scope: !4245)
!4251 = !DILocation(line: 1133, column: 10, scope: !4245)
!4252 = !DILocation(line: 1133, column: 2, scope: !4245)
!4253 = !DILocation(line: 1135, column: 3, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4245, file: !3, line: 1133, column: 18)
!4255 = !DILocation(line: 1137, column: 3, scope: !4254)
!4256 = !DILocation(line: 1139, column: 3, scope: !4254)
!4257 = !DILocation(line: 1141, column: 3, scope: !4254)
!4258 = !DILocation(line: 1143, column: 3, scope: !4254)
!4259 = !DILocation(line: 1145, column: 1, scope: !4245)
!4260 = distinct !DISubprogram(name: "spdk_nvme_transport_id_parse", scope: !3, file: !3, line: 1203, type: !4045, scopeLine: 1204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4261)
!4261 = !{!4262, !4263, !4264, !4265, !4267}
!4262 = !DILocalVariable(name: "trid", arg: 1, scope: !4260, file: !3, line: 1203, type: !3626)
!4263 = !DILocalVariable(name: "str", arg: 2, scope: !4260, file: !3, line: 1203, type: !521)
!4264 = !DILocalVariable(name: "val_len", scope: !4260, file: !3, line: 1205, type: !1240)
!4265 = !DILocalVariable(name: "key", scope: !4260, file: !3, line: 1206, type: !4266)
!4266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 256, elements: !1899)
!4267 = !DILocalVariable(name: "val", scope: !4260, file: !3, line: 1207, type: !4268)
!4268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 8192, elements: !1903)
!4269 = !DILocation(line: 1203, column: 61, scope: !4260)
!4270 = !DILocation(line: 1203, column: 79, scope: !4260)
!4271 = !DILocation(line: 1205, column: 2, scope: !4260)
!4272 = !DILocation(line: 1205, column: 9, scope: !4260)
!4273 = !DILocation(line: 1206, column: 2, scope: !4260)
!4274 = !DILocation(line: 1206, column: 7, scope: !4260)
!4275 = !DILocation(line: 1207, column: 2, scope: !4260)
!4276 = !DILocation(line: 1207, column: 7, scope: !4260)
!4277 = !DILocation(line: 1209, column: 6, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 1209, column: 6)
!4279 = !DILocation(line: 1209, column: 11, scope: !4278)
!4280 = !DILocation(line: 1209, column: 19, scope: !4278)
!4281 = !DILocation(line: 1209, column: 22, scope: !4278)
!4282 = !DILocation(line: 1209, column: 26, scope: !4278)
!4283 = !DILocation(line: 1209, column: 6, scope: !4260)
!4284 = !DILocation(line: 1210, column: 3, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 1209, column: 35)
!4286 = !DILocation(line: 1213, column: 2, scope: !4260)
!4287 = !DILocation(line: 1213, column: 10, scope: !4260)
!4288 = !DILocation(line: 1213, column: 9, scope: !4260)
!4289 = !DILocation(line: 1213, column: 14, scope: !4260)
!4290 = !DILocation(line: 1215, column: 34, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 1213, column: 23)
!4292 = !DILocation(line: 1215, column: 39, scope: !4291)
!4293 = !DILocation(line: 1215, column: 13, scope: !4291)
!4294 = !DILocation(line: 1215, column: 11, scope: !4291)
!4295 = !DILocation(line: 1217, column: 7, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 1217, column: 7)
!4297 = !DILocation(line: 1217, column: 15, scope: !4296)
!4298 = !DILocation(line: 1217, column: 7, scope: !4291)
!4299 = !DILocation(line: 1218, column: 4, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 1217, column: 21)
!4301 = !DILocation(line: 1219, column: 4, scope: !4300)
!4302 = !DILocation(line: 1222, column: 18, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 1222, column: 7)
!4304 = !DILocation(line: 1222, column: 7, scope: !4303)
!4305 = !DILocation(line: 1222, column: 33, scope: !4303)
!4306 = !DILocation(line: 1222, column: 7, scope: !4291)
!4307 = !DILocation(line: 1223, column: 49, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4309, file: !3, line: 1223, column: 8)
!4309 = distinct !DILexicalBlock(scope: !4303, file: !3, line: 1222, column: 39)
!4310 = !DILocation(line: 1223, column: 55, scope: !4308)
!4311 = !DILocation(line: 1223, column: 8, scope: !4308)
!4312 = !DILocation(line: 1223, column: 60, scope: !4308)
!4313 = !DILocation(line: 1223, column: 8, scope: !4309)
!4314 = !DILocation(line: 1224, column: 5, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 1223, column: 66)
!4316 = !DILocation(line: 1225, column: 5, scope: !4315)
!4317 = !DILocation(line: 1227, column: 45, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4309, file: !3, line: 1227, column: 8)
!4319 = !DILocation(line: 1227, column: 51, scope: !4318)
!4320 = !DILocation(line: 1227, column: 59, scope: !4318)
!4321 = !DILocation(line: 1227, column: 8, scope: !4318)
!4322 = !DILocation(line: 1227, column: 64, scope: !4318)
!4323 = !DILocation(line: 1227, column: 8, scope: !4309)
!4324 = !DILocation(line: 1228, column: 5, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4318, file: !3, line: 1227, column: 70)
!4326 = !DILocation(line: 1229, column: 5, scope: !4325)
!4327 = !DILocation(line: 1231, column: 3, scope: !4309)
!4328 = !DILocation(line: 1231, column: 25, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4303, file: !3, line: 1231, column: 14)
!4330 = !DILocation(line: 1231, column: 14, scope: !4329)
!4331 = !DILocation(line: 1231, column: 40, scope: !4329)
!4332 = !DILocation(line: 1231, column: 14, scope: !4303)
!4333 = !DILocation(line: 1232, column: 45, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 1232, column: 8)
!4335 = distinct !DILexicalBlock(scope: !4329, file: !3, line: 1231, column: 46)
!4336 = !DILocation(line: 1232, column: 51, scope: !4334)
!4337 = !DILocation(line: 1232, column: 59, scope: !4334)
!4338 = !DILocation(line: 1232, column: 8, scope: !4334)
!4339 = !DILocation(line: 1232, column: 64, scope: !4334)
!4340 = !DILocation(line: 1232, column: 8, scope: !4335)
!4341 = !DILocation(line: 1233, column: 5, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 1232, column: 70)
!4343 = !DILocation(line: 1234, column: 5, scope: !4342)
!4344 = !DILocation(line: 1236, column: 3, scope: !4335)
!4345 = !DILocation(line: 1236, column: 25, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4329, file: !3, line: 1236, column: 14)
!4347 = !DILocation(line: 1236, column: 14, scope: !4346)
!4348 = !DILocation(line: 1236, column: 40, scope: !4346)
!4349 = !DILocation(line: 1236, column: 14, scope: !4329)
!4350 = !DILocation(line: 1237, column: 8, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4352, file: !3, line: 1237, column: 8)
!4352 = distinct !DILexicalBlock(scope: !4346, file: !3, line: 1236, column: 46)
!4353 = !DILocation(line: 1237, column: 16, scope: !4351)
!4354 = !DILocation(line: 1237, column: 8, scope: !4352)
!4355 = !DILocation(line: 1238, column: 5, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 1237, column: 44)
!4357 = !DILocation(line: 1240, column: 5, scope: !4356)
!4358 = !DILocation(line: 1242, column: 11, scope: !4352)
!4359 = !DILocation(line: 1242, column: 17, scope: !4352)
!4360 = !DILocation(line: 1242, column: 25, scope: !4352)
!4361 = !DILocation(line: 1242, column: 30, scope: !4352)
!4362 = !DILocation(line: 1242, column: 38, scope: !4352)
!4363 = !DILocation(line: 1242, column: 4, scope: !4352)
!4364 = !DILocation(line: 1243, column: 3, scope: !4352)
!4365 = !DILocation(line: 1243, column: 25, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4346, file: !3, line: 1243, column: 14)
!4367 = !DILocation(line: 1243, column: 14, scope: !4366)
!4368 = !DILocation(line: 1243, column: 41, scope: !4366)
!4369 = !DILocation(line: 1243, column: 14, scope: !4346)
!4370 = !DILocation(line: 1244, column: 8, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 1244, column: 8)
!4372 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 1243, column: 47)
!4373 = !DILocation(line: 1244, column: 16, scope: !4371)
!4374 = !DILocation(line: 1244, column: 8, scope: !4372)
!4375 = !DILocation(line: 1245, column: 5, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4371, file: !3, line: 1244, column: 45)
!4377 = !DILocation(line: 1247, column: 5, scope: !4376)
!4378 = !DILocation(line: 1249, column: 11, scope: !4372)
!4379 = !DILocation(line: 1249, column: 17, scope: !4372)
!4380 = !DILocation(line: 1249, column: 26, scope: !4372)
!4381 = !DILocation(line: 1249, column: 31, scope: !4372)
!4382 = !DILocation(line: 1249, column: 39, scope: !4372)
!4383 = !DILocation(line: 1249, column: 4, scope: !4372)
!4384 = !DILocation(line: 1250, column: 3, scope: !4372)
!4385 = !DILocation(line: 1250, column: 25, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 1250, column: 14)
!4387 = !DILocation(line: 1250, column: 14, scope: !4386)
!4388 = !DILocation(line: 1250, column: 42, scope: !4386)
!4389 = !DILocation(line: 1250, column: 14, scope: !4366)
!4390 = !DILocation(line: 1251, column: 8, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4392, file: !3, line: 1251, column: 8)
!4392 = distinct !DILexicalBlock(scope: !4386, file: !3, line: 1250, column: 48)
!4393 = !DILocation(line: 1251, column: 16, scope: !4391)
!4394 = !DILocation(line: 1251, column: 8, scope: !4392)
!4395 = !DILocation(line: 1252, column: 5, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 1251, column: 46)
!4397 = !DILocation(line: 1254, column: 5, scope: !4396)
!4398 = !DILocation(line: 1256, column: 33, scope: !4392)
!4399 = !DILocation(line: 1256, column: 21, scope: !4392)
!4400 = !DILocation(line: 1256, column: 4, scope: !4392)
!4401 = !DILocation(line: 1256, column: 10, scope: !4392)
!4402 = !DILocation(line: 1256, column: 19, scope: !4392)
!4403 = !DILocation(line: 1257, column: 3, scope: !4392)
!4404 = !DILocation(line: 1257, column: 25, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4386, file: !3, line: 1257, column: 14)
!4406 = !DILocation(line: 1257, column: 14, scope: !4405)
!4407 = !DILocation(line: 1257, column: 40, scope: !4405)
!4408 = !DILocation(line: 1257, column: 14, scope: !4386)
!4409 = !DILocation(line: 1258, column: 8, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 1258, column: 8)
!4411 = distinct !DILexicalBlock(scope: !4405, file: !3, line: 1257, column: 46)
!4412 = !DILocation(line: 1258, column: 16, scope: !4410)
!4413 = !DILocation(line: 1258, column: 8, scope: !4411)
!4414 = !DILocation(line: 1259, column: 5, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4410, file: !3, line: 1258, column: 41)
!4416 = !DILocation(line: 1261, column: 5, scope: !4415)
!4417 = !DILocation(line: 1263, column: 11, scope: !4411)
!4418 = !DILocation(line: 1263, column: 17, scope: !4411)
!4419 = !DILocation(line: 1263, column: 25, scope: !4411)
!4420 = !DILocation(line: 1263, column: 30, scope: !4411)
!4421 = !DILocation(line: 1263, column: 38, scope: !4411)
!4422 = !DILocation(line: 1263, column: 4, scope: !4411)
!4423 = !DILocation(line: 1264, column: 3, scope: !4411)
!4424 = !DILocation(line: 1264, column: 25, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4405, file: !3, line: 1264, column: 14)
!4426 = !DILocation(line: 1264, column: 14, scope: !4425)
!4427 = !DILocation(line: 1264, column: 42, scope: !4425)
!4428 = !DILocation(line: 1264, column: 14, scope: !4405)
!4429 = !DILocation(line: 1265, column: 4, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 1264, column: 48)
!4431 = distinct !{!4431, !4286, !4432}
!4432 = !DILocation(line: 1291, column: 2, scope: !4260)
!4433 = !DILocation(line: 1266, column: 25, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 1266, column: 14)
!4435 = !DILocation(line: 1266, column: 14, scope: !4434)
!4436 = !DILocation(line: 1266, column: 43, scope: !4434)
!4437 = !DILocation(line: 1266, column: 14, scope: !4425)
!4438 = !DILocation(line: 1267, column: 4, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4434, file: !3, line: 1266, column: 49)
!4440 = !DILocation(line: 1268, column: 25, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4434, file: !3, line: 1268, column: 14)
!4442 = !DILocation(line: 1268, column: 14, scope: !4441)
!4443 = !DILocation(line: 1268, column: 41, scope: !4441)
!4444 = !DILocation(line: 1268, column: 14, scope: !4434)
!4445 = !DILocation(line: 1269, column: 4, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 1268, column: 47)
!4447 = !DILocation(line: 1270, column: 25, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 1270, column: 14)
!4449 = !DILocation(line: 1270, column: 14, scope: !4448)
!4450 = !DILocation(line: 1270, column: 36, scope: !4448)
!4451 = !DILocation(line: 1270, column: 14, scope: !4441)
!4452 = !DILocation(line: 1281, column: 4, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4448, file: !3, line: 1270, column: 42)
!4454 = !DILocation(line: 1282, column: 25, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4448, file: !3, line: 1282, column: 14)
!4456 = !DILocation(line: 1282, column: 14, scope: !4455)
!4457 = !DILocation(line: 1282, column: 44, scope: !4455)
!4458 = !DILocation(line: 1282, column: 14, scope: !4448)
!4459 = !DILocation(line: 1287, column: 4, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 1282, column: 50)
!4461 = !DILocation(line: 1289, column: 4, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 1288, column: 10)
!4463 = !DILocation(line: 1293, column: 2, scope: !4260)
!4464 = !DILocation(line: 1294, column: 1, scope: !4260)
!4465 = distinct !DISubprogram(name: "parse_next_key", scope: !3, file: !3, line: 1148, type: !4466, scopeLine: 1149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4469)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!1240, !4468, !4042, !4042, !1240, !1240}
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!4469 = !{!4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479}
!4470 = !DILocalVariable(name: "str", arg: 1, scope: !4465, file: !3, line: 1148, type: !4468)
!4471 = !DILocalVariable(name: "key", arg: 2, scope: !4465, file: !3, line: 1148, type: !4042)
!4472 = !DILocalVariable(name: "val", arg: 3, scope: !4465, file: !3, line: 1148, type: !4042)
!4473 = !DILocalVariable(name: "key_buf_size", arg: 4, scope: !4465, file: !3, line: 1148, type: !1240)
!4474 = !DILocalVariable(name: "val_buf_size", arg: 5, scope: !4465, file: !3, line: 1148, type: !1240)
!4475 = !DILocalVariable(name: "sep", scope: !4465, file: !3, line: 1151, type: !521)
!4476 = !DILocalVariable(name: "sep1", scope: !4465, file: !3, line: 1151, type: !521)
!4477 = !DILocalVariable(name: "whitespace", scope: !4465, file: !3, line: 1152, type: !521)
!4478 = !DILocalVariable(name: "key_len", scope: !4465, file: !3, line: 1153, type: !1240)
!4479 = !DILocalVariable(name: "val_len", scope: !4465, file: !3, line: 1153, type: !1240)
!4480 = !DILocation(line: 1148, column: 29, scope: !4465)
!4481 = !DILocation(line: 1148, column: 40, scope: !4465)
!4482 = !DILocation(line: 1148, column: 51, scope: !4465)
!4483 = !DILocation(line: 1148, column: 63, scope: !4465)
!4484 = !DILocation(line: 1148, column: 84, scope: !4465)
!4485 = !DILocation(line: 1151, column: 2, scope: !4465)
!4486 = !DILocation(line: 1151, column: 14, scope: !4465)
!4487 = !DILocation(line: 1151, column: 20, scope: !4465)
!4488 = !DILocation(line: 1152, column: 2, scope: !4465)
!4489 = !DILocation(line: 1152, column: 14, scope: !4465)
!4490 = !DILocation(line: 1153, column: 2, scope: !4465)
!4491 = !DILocation(line: 1153, column: 9, scope: !4465)
!4492 = !DILocation(line: 1153, column: 18, scope: !4465)
!4493 = !DILocation(line: 1155, column: 18, scope: !4465)
!4494 = !DILocation(line: 1155, column: 17, scope: !4465)
!4495 = !DILocation(line: 1155, column: 23, scope: !4465)
!4496 = !DILocation(line: 1155, column: 10, scope: !4465)
!4497 = !DILocation(line: 1155, column: 3, scope: !4465)
!4498 = !DILocation(line: 1155, column: 7, scope: !4465)
!4499 = !DILocation(line: 1157, column: 16, scope: !4465)
!4500 = !DILocation(line: 1157, column: 15, scope: !4465)
!4501 = !DILocation(line: 1157, column: 8, scope: !4465)
!4502 = !DILocation(line: 1157, column: 6, scope: !4465)
!4503 = !DILocation(line: 1158, column: 7, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4465, file: !3, line: 1158, column: 6)
!4505 = !DILocation(line: 1158, column: 6, scope: !4465)
!4506 = !DILocation(line: 1159, column: 17, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 1158, column: 12)
!4508 = !DILocation(line: 1159, column: 16, scope: !4507)
!4509 = !DILocation(line: 1159, column: 9, scope: !4507)
!4510 = !DILocation(line: 1159, column: 7, scope: !4507)
!4511 = !DILocation(line: 1160, column: 8, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4507, file: !3, line: 1160, column: 7)
!4513 = !DILocation(line: 1160, column: 7, scope: !4507)
!4514 = !DILocation(line: 1161, column: 4, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4512, file: !3, line: 1160, column: 13)
!4516 = !DILocation(line: 1162, column: 4, scope: !4515)
!4517 = !DILocation(line: 1164, column: 2, scope: !4507)
!4518 = !DILocation(line: 1165, column: 18, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 1164, column: 9)
!4520 = !DILocation(line: 1165, column: 17, scope: !4519)
!4521 = !DILocation(line: 1165, column: 10, scope: !4519)
!4522 = !DILocation(line: 1165, column: 8, scope: !4519)
!4523 = !DILocation(line: 1166, column: 8, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 1166, column: 7)
!4525 = !DILocation(line: 1166, column: 13, scope: !4524)
!4526 = !DILocation(line: 1166, column: 22, scope: !4524)
!4527 = !DILocation(line: 1166, column: 26, scope: !4524)
!4528 = !DILocation(line: 1166, column: 33, scope: !4524)
!4529 = !DILocation(line: 1166, column: 31, scope: !4524)
!4530 = !DILocation(line: 1166, column: 7, scope: !4519)
!4531 = !DILocation(line: 1167, column: 10, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 1166, column: 39)
!4533 = !DILocation(line: 1167, column: 8, scope: !4532)
!4534 = !DILocation(line: 1168, column: 3, scope: !4532)
!4535 = !DILocation(line: 1171, column: 12, scope: !4465)
!4536 = !DILocation(line: 1171, column: 19, scope: !4465)
!4537 = !DILocation(line: 1171, column: 18, scope: !4465)
!4538 = !DILocation(line: 1171, column: 16, scope: !4465)
!4539 = !DILocation(line: 1171, column: 10, scope: !4465)
!4540 = !DILocation(line: 1172, column: 6, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4465, file: !3, line: 1172, column: 6)
!4542 = !DILocation(line: 1172, column: 17, scope: !4541)
!4543 = !DILocation(line: 1172, column: 14, scope: !4541)
!4544 = !DILocation(line: 1172, column: 6, scope: !4465)
!4545 = !DILocation(line: 1173, column: 3, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4541, file: !3, line: 1172, column: 31)
!4547 = !DILocation(line: 1175, column: 3, scope: !4546)
!4548 = !DILocation(line: 1178, column: 9, scope: !4465)
!4549 = !DILocation(line: 1178, column: 15, scope: !4465)
!4550 = !DILocation(line: 1178, column: 14, scope: !4465)
!4551 = !DILocation(line: 1178, column: 20, scope: !4465)
!4552 = !DILocation(line: 1178, column: 2, scope: !4465)
!4553 = !DILocation(line: 1179, column: 2, scope: !4465)
!4554 = !DILocation(line: 1179, column: 6, scope: !4465)
!4555 = !DILocation(line: 1179, column: 15, scope: !4465)
!4556 = !DILocation(line: 1181, column: 10, scope: !4465)
!4557 = !DILocation(line: 1181, column: 18, scope: !4465)
!4558 = !DILocation(line: 1181, column: 3, scope: !4465)
!4559 = !DILocation(line: 1181, column: 7, scope: !4465)
!4560 = !DILocation(line: 1182, column: 21, scope: !4465)
!4561 = !DILocation(line: 1182, column: 20, scope: !4465)
!4562 = !DILocation(line: 1182, column: 26, scope: !4465)
!4563 = !DILocation(line: 1182, column: 12, scope: !4465)
!4564 = !DILocation(line: 1182, column: 10, scope: !4465)
!4565 = !DILocation(line: 1183, column: 6, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4465, file: !3, line: 1183, column: 6)
!4567 = !DILocation(line: 1183, column: 14, scope: !4566)
!4568 = !DILocation(line: 1183, column: 6, scope: !4465)
!4569 = !DILocation(line: 1184, column: 3, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4566, file: !3, line: 1183, column: 20)
!4571 = !DILocation(line: 1185, column: 3, scope: !4570)
!4572 = !DILocation(line: 1188, column: 6, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4465, file: !3, line: 1188, column: 6)
!4574 = !DILocation(line: 1188, column: 17, scope: !4573)
!4575 = !DILocation(line: 1188, column: 14, scope: !4573)
!4576 = !DILocation(line: 1188, column: 6, scope: !4465)
!4577 = !DILocation(line: 1189, column: 3, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 1188, column: 31)
!4579 = !DILocation(line: 1191, column: 3, scope: !4578)
!4580 = !DILocation(line: 1194, column: 9, scope: !4465)
!4581 = !DILocation(line: 1194, column: 15, scope: !4465)
!4582 = !DILocation(line: 1194, column: 14, scope: !4465)
!4583 = !DILocation(line: 1194, column: 20, scope: !4465)
!4584 = !DILocation(line: 1194, column: 2, scope: !4465)
!4585 = !DILocation(line: 1195, column: 2, scope: !4465)
!4586 = !DILocation(line: 1195, column: 6, scope: !4465)
!4587 = !DILocation(line: 1195, column: 15, scope: !4465)
!4588 = !DILocation(line: 1197, column: 10, scope: !4465)
!4589 = !DILocation(line: 1197, column: 3, scope: !4465)
!4590 = !DILocation(line: 1197, column: 7, scope: !4465)
!4591 = !DILocation(line: 1199, column: 9, scope: !4465)
!4592 = !DILocation(line: 1199, column: 2, scope: !4465)
!4593 = !DILocation(line: 1200, column: 1, scope: !4465)
!4594 = !DISubprogram(name: "spdk_strtol", scope: !4595, file: !4595, line: 224, type: !4596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4595 = !DIFile(filename: "include/spdk/string.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "e1a3492a11ba1b14663c319ffba0eb5d")
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!279, !521, !155}
!4598 = distinct !DISubprogram(name: "spdk_nvme_host_id_parse", scope: !3, file: !3, line: 1297, type: !4599, scopeLine: 1298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4606)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!155, !4601, !521}
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_nvme_host_id", file: !6, line: 491, size: 2320, elements: !4603)
!4603 = !{!4604, !4605}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "hostaddr", scope: !4602, file: !6, line: 498, baseType: !763, size: 2056)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "hostsvcid", scope: !4602, file: !6, line: 506, baseType: !757, size: 264, offset: 2056)
!4606 = !{!4607, !4608, !4609, !4610, !4611, !4612, !4613, !4617, !4618}
!4607 = !DILocalVariable(name: "hostid", arg: 1, scope: !4598, file: !3, line: 1297, type: !4601)
!4608 = !DILocalVariable(name: "str", arg: 2, scope: !4598, file: !3, line: 1297, type: !521)
!4609 = !DILocalVariable(name: "key_size", scope: !4598, file: !3, line: 1300, type: !1240)
!4610 = !DILocalVariable(name: "val_size", scope: !4598, file: !3, line: 1301, type: !1240)
!4611 = !DILocalVariable(name: "val_len", scope: !4598, file: !3, line: 1302, type: !1240)
!4612 = !DILocalVariable(name: "__vla_expr0", scope: !4598, type: !578, flags: DIFlagArtificial)
!4613 = !DILocalVariable(name: "key", scope: !4598, file: !3, line: 1303, type: !4614)
!4614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, elements: !4615)
!4615 = !{!4616}
!4616 = !DISubrange(count: !4612)
!4617 = !DILocalVariable(name: "__vla_expr1", scope: !4598, type: !578, flags: DIFlagArtificial)
!4618 = !DILocalVariable(name: "val", scope: !4598, file: !3, line: 1304, type: !4619)
!4619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, elements: !4620)
!4620 = !{!4621}
!4621 = !DISubrange(count: !4617)
!4622 = !DILocation(line: 1297, column: 51, scope: !4598)
!4623 = !DILocation(line: 1297, column: 71, scope: !4598)
!4624 = !DILocation(line: 1300, column: 2, scope: !4598)
!4625 = !DILocation(line: 1300, column: 9, scope: !4598)
!4626 = !DILocation(line: 1301, column: 2, scope: !4598)
!4627 = !DILocation(line: 1301, column: 9, scope: !4598)
!4628 = !DILocation(line: 1302, column: 2, scope: !4598)
!4629 = !DILocation(line: 1302, column: 9, scope: !4598)
!4630 = !DILocation(line: 1303, column: 11, scope: !4598)
!4631 = !DILocation(line: 1303, column: 2, scope: !4598)
!4632 = !DILocation(line: 0, scope: !4598)
!4633 = !DILocation(line: 1303, column: 7, scope: !4598)
!4634 = !DILocation(line: 1304, column: 11, scope: !4598)
!4635 = !DILocation(line: 1304, column: 2, scope: !4598)
!4636 = !DILocation(line: 1304, column: 7, scope: !4598)
!4637 = !DILocation(line: 1306, column: 6, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 1306, column: 6)
!4639 = !DILocation(line: 1306, column: 13, scope: !4638)
!4640 = !DILocation(line: 1306, column: 21, scope: !4638)
!4641 = !DILocation(line: 1306, column: 24, scope: !4638)
!4642 = !DILocation(line: 1306, column: 28, scope: !4638)
!4643 = !DILocation(line: 1306, column: 6, scope: !4598)
!4644 = !DILocation(line: 1307, column: 3, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4638, file: !3, line: 1306, column: 37)
!4646 = !DILocation(line: 1310, column: 2, scope: !4598)
!4647 = !DILocation(line: 1310, column: 10, scope: !4598)
!4648 = !DILocation(line: 1310, column: 9, scope: !4598)
!4649 = !DILocation(line: 1310, column: 14, scope: !4598)
!4650 = !DILocation(line: 1312, column: 44, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 1310, column: 23)
!4652 = !DILocation(line: 1312, column: 54, scope: !4651)
!4653 = !DILocation(line: 1312, column: 13, scope: !4651)
!4654 = !DILocation(line: 1312, column: 11, scope: !4651)
!4655 = !DILocation(line: 1314, column: 7, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 1314, column: 7)
!4657 = !DILocation(line: 1314, column: 15, scope: !4656)
!4658 = !DILocation(line: 1314, column: 7, scope: !4651)
!4659 = !DILocation(line: 1315, column: 4, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4656, file: !3, line: 1314, column: 21)
!4661 = !DILocation(line: 1316, column: 11, scope: !4660)
!4662 = !DILocation(line: 1316, column: 4, scope: !4660)
!4663 = !DILocation(line: 1320, column: 7, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 1320, column: 7)
!4665 = !DILocation(line: 1320, column: 33, scope: !4664)
!4666 = !DILocation(line: 1320, column: 7, scope: !4651)
!4667 = !DILocation(line: 1321, column: 4, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 1320, column: 39)
!4669 = distinct !{!4669, !4646, !4670}
!4670 = !DILocation(line: 1352, column: 2, scope: !4598)
!4671 = !DILocation(line: 1322, column: 14, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 1322, column: 14)
!4673 = !DILocation(line: 1322, column: 40, scope: !4672)
!4674 = !DILocation(line: 1322, column: 14, scope: !4664)
!4675 = !DILocation(line: 1323, column: 4, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 1322, column: 46)
!4677 = !DILocation(line: 1324, column: 14, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 1324, column: 14)
!4679 = !DILocation(line: 1324, column: 40, scope: !4678)
!4680 = !DILocation(line: 1324, column: 14, scope: !4672)
!4681 = !DILocation(line: 1325, column: 4, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4678, file: !3, line: 1324, column: 46)
!4683 = !DILocation(line: 1326, column: 14, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4678, file: !3, line: 1326, column: 14)
!4685 = !DILocation(line: 1326, column: 41, scope: !4684)
!4686 = !DILocation(line: 1326, column: 14, scope: !4678)
!4687 = !DILocation(line: 1327, column: 4, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 1326, column: 47)
!4689 = !DILocation(line: 1328, column: 14, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 1328, column: 14)
!4691 = !DILocation(line: 1328, column: 40, scope: !4690)
!4692 = !DILocation(line: 1328, column: 14, scope: !4684)
!4693 = !DILocation(line: 1329, column: 4, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4690, file: !3, line: 1328, column: 46)
!4695 = !DILocation(line: 1330, column: 14, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4690, file: !3, line: 1330, column: 14)
!4697 = !DILocation(line: 1330, column: 42, scope: !4696)
!4698 = !DILocation(line: 1330, column: 14, scope: !4690)
!4699 = !DILocation(line: 1331, column: 4, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 1330, column: 48)
!4701 = !DILocation(line: 1332, column: 14, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 1332, column: 14)
!4703 = !DILocation(line: 1332, column: 36, scope: !4702)
!4704 = !DILocation(line: 1332, column: 14, scope: !4696)
!4705 = !DILocation(line: 1333, column: 4, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 1332, column: 42)
!4707 = !DILocation(line: 1334, column: 14, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 1334, column: 14)
!4709 = !DILocation(line: 1334, column: 42, scope: !4708)
!4710 = !DILocation(line: 1334, column: 14, scope: !4702)
!4711 = !DILocation(line: 1335, column: 8, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4713, file: !3, line: 1335, column: 8)
!4713 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 1334, column: 48)
!4714 = !DILocation(line: 1335, column: 16, scope: !4712)
!4715 = !DILocation(line: 1335, column: 8, scope: !4713)
!4716 = !DILocation(line: 1336, column: 5, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4712, file: !3, line: 1335, column: 44)
!4718 = !DILocation(line: 1338, column: 5, scope: !4717)
!4719 = !DILocation(line: 1340, column: 11, scope: !4713)
!4720 = !DILocation(line: 1340, column: 19, scope: !4713)
!4721 = !DILocation(line: 1340, column: 34, scope: !4713)
!4722 = !DILocation(line: 1340, column: 42, scope: !4713)
!4723 = !DILocation(line: 1340, column: 4, scope: !4713)
!4724 = !DILocation(line: 1342, column: 3, scope: !4713)
!4725 = !DILocation(line: 1342, column: 14, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 1342, column: 14)
!4727 = !DILocation(line: 1342, column: 43, scope: !4726)
!4728 = !DILocation(line: 1342, column: 14, scope: !4708)
!4729 = !DILocation(line: 1343, column: 8, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 1343, column: 8)
!4731 = distinct !DILexicalBlock(scope: !4726, file: !3, line: 1342, column: 49)
!4732 = !DILocation(line: 1343, column: 16, scope: !4730)
!4733 = !DILocation(line: 1343, column: 8, scope: !4731)
!4734 = !DILocation(line: 1344, column: 5, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4730, file: !3, line: 1343, column: 45)
!4736 = !DILocation(line: 1346, column: 5, scope: !4735)
!4737 = !DILocation(line: 1348, column: 11, scope: !4731)
!4738 = !DILocation(line: 1348, column: 19, scope: !4731)
!4739 = !DILocation(line: 1348, column: 35, scope: !4731)
!4740 = !DILocation(line: 1348, column: 43, scope: !4731)
!4741 = !DILocation(line: 1348, column: 4, scope: !4731)
!4742 = !DILocation(line: 1349, column: 3, scope: !4731)
!4743 = !DILocation(line: 1350, column: 4, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4726, file: !3, line: 1349, column: 10)
!4745 = !DILocation(line: 1354, column: 2, scope: !4598)
!4746 = !DILocation(line: 1355, column: 1, scope: !4598)
!4747 = distinct !DISubprogram(name: "cmp_int", scope: !3, file: !3, line: 1358, type: !4748, scopeLine: 1359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4750)
!4748 = !DISubroutineType(types: !4749)
!4749 = !{!155, !155, !155}
!4750 = !{!4751, !4752}
!4751 = !DILocalVariable(name: "a", arg: 1, scope: !4747, file: !3, line: 1358, type: !155)
!4752 = !DILocalVariable(name: "b", arg: 2, scope: !4747, file: !3, line: 1358, type: !155)
!4753 = !DILocation(line: 1358, column: 13, scope: !4747)
!4754 = !DILocation(line: 1358, column: 20, scope: !4747)
!4755 = !DILocation(line: 1360, column: 9, scope: !4747)
!4756 = !DILocation(line: 1360, column: 13, scope: !4747)
!4757 = !DILocation(line: 1360, column: 11, scope: !4747)
!4758 = !DILocation(line: 1360, column: 2, scope: !4747)
!4759 = !DISubprogram(name: "spdk_pci_addr_parse", scope: !1368, file: !1368, line: 1153, type: !4760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{!155, !4762, !521}
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!4763 = !DISubprogram(name: "spdk_pci_addr_compare", scope: !1368, file: !1368, line: 1142, type: !4764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4764 = !DISubroutineType(types: !4765)
!4765 = !{!155, !4766, !4766}
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1373)
!4768 = !DISubprogram(name: "strcmp", scope: !4769, file: !4769, line: 156, type: !4168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4769 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!4770 = distinct !DISubprogram(name: "spdk_nvme_prchk_flags_parse", scope: !3, file: !3, line: 1417, type: !4771, scopeLine: 1418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4773)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{!155, !1234, !521}
!4773 = !{!4774, !4775, !4776, !4777, !4778}
!4774 = !DILocalVariable(name: "prchk_flags", arg: 1, scope: !4770, file: !3, line: 1417, type: !1234)
!4775 = !DILocalVariable(name: "str", arg: 2, scope: !4770, file: !3, line: 1417, type: !521)
!4776 = !DILocalVariable(name: "val_len", scope: !4770, file: !3, line: 1419, type: !1240)
!4777 = !DILocalVariable(name: "key", scope: !4770, file: !3, line: 1420, type: !4266)
!4778 = !DILocalVariable(name: "val", scope: !4770, file: !3, line: 1421, type: !4268)
!4779 = !DILocation(line: 1417, column: 39, scope: !4770)
!4780 = !DILocation(line: 1417, column: 64, scope: !4770)
!4781 = !DILocation(line: 1419, column: 2, scope: !4770)
!4782 = !DILocation(line: 1419, column: 9, scope: !4770)
!4783 = !DILocation(line: 1420, column: 2, scope: !4770)
!4784 = !DILocation(line: 1420, column: 7, scope: !4770)
!4785 = !DILocation(line: 1421, column: 2, scope: !4770)
!4786 = !DILocation(line: 1421, column: 7, scope: !4770)
!4787 = !DILocation(line: 1423, column: 6, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4770, file: !3, line: 1423, column: 6)
!4789 = !DILocation(line: 1423, column: 18, scope: !4788)
!4790 = !DILocation(line: 1423, column: 26, scope: !4788)
!4791 = !DILocation(line: 1423, column: 29, scope: !4788)
!4792 = !DILocation(line: 1423, column: 33, scope: !4788)
!4793 = !DILocation(line: 1423, column: 6, scope: !4770)
!4794 = !DILocation(line: 1424, column: 3, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4788, file: !3, line: 1423, column: 42)
!4796 = !DILocation(line: 1427, column: 2, scope: !4770)
!4797 = !DILocation(line: 1427, column: 10, scope: !4770)
!4798 = !DILocation(line: 1427, column: 9, scope: !4770)
!4799 = !DILocation(line: 1427, column: 14, scope: !4770)
!4800 = !DILocation(line: 1428, column: 34, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4770, file: !3, line: 1427, column: 23)
!4802 = !DILocation(line: 1428, column: 39, scope: !4801)
!4803 = !DILocation(line: 1428, column: 13, scope: !4801)
!4804 = !DILocation(line: 1428, column: 11, scope: !4801)
!4805 = !DILocation(line: 1430, column: 7, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 1430, column: 7)
!4807 = !DILocation(line: 1430, column: 15, scope: !4806)
!4808 = !DILocation(line: 1430, column: 7, scope: !4801)
!4809 = !DILocation(line: 1431, column: 4, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 1430, column: 21)
!4811 = !DILocation(line: 1432, column: 4, scope: !4810)
!4812 = !DILocation(line: 1435, column: 18, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 1435, column: 7)
!4814 = !DILocation(line: 1435, column: 7, scope: !4813)
!4815 = !DILocation(line: 1435, column: 32, scope: !4813)
!4816 = !DILocation(line: 1435, column: 7, scope: !4801)
!4817 = !DILocation(line: 1436, column: 19, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 1436, column: 8)
!4819 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 1435, column: 38)
!4820 = !DILocation(line: 1436, column: 8, scope: !4818)
!4821 = !DILocation(line: 1436, column: 34, scope: !4818)
!4822 = !DILocation(line: 1436, column: 8, scope: !4819)
!4823 = !DILocation(line: 1437, column: 6, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 1436, column: 43)
!4825 = !DILocation(line: 1437, column: 18, scope: !4824)
!4826 = !DILocation(line: 1438, column: 4, scope: !4824)
!4827 = !DILocation(line: 1439, column: 19, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 1439, column: 8)
!4829 = !DILocation(line: 1439, column: 8, scope: !4828)
!4830 = !DILocation(line: 1439, column: 33, scope: !4828)
!4831 = !DILocation(line: 1439, column: 8, scope: !4819)
!4832 = !DILocation(line: 1440, column: 6, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 1439, column: 42)
!4834 = !DILocation(line: 1440, column: 18, scope: !4833)
!4835 = !DILocation(line: 1441, column: 4, scope: !4833)
!4836 = !DILocation(line: 1442, column: 3, scope: !4819)
!4837 = !DILocation(line: 1443, column: 4, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 1442, column: 10)
!4839 = !DILocation(line: 1444, column: 4, scope: !4838)
!4840 = distinct !{!4840, !4796, !4841}
!4841 = !DILocation(line: 1446, column: 2, scope: !4770)
!4842 = !DILocation(line: 1448, column: 2, scope: !4770)
!4843 = !DILocation(line: 1449, column: 1, scope: !4770)
!4844 = !DISubprogram(name: "strcasestr", scope: !4769, file: !4769, line: 380, type: !4845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{!4042, !521, !521}
!4847 = distinct !DISubprogram(name: "spdk_nvme_prchk_flags_str", scope: !3, file: !3, line: 1452, type: !4848, scopeLine: 1453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4850)
!4848 = !DISubroutineType(types: !4849)
!4849 = !{!521, !546}
!4850 = !{!4851}
!4851 = !DILocalVariable(name: "prchk_flags", arg: 1, scope: !4847, file: !3, line: 1452, type: !546)
!4852 = !DILocation(line: 1452, column: 36, scope: !4847)
!4853 = !DILocation(line: 1454, column: 6, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 1454, column: 6)
!4855 = !DILocation(line: 1454, column: 18, scope: !4854)
!4856 = !DILocation(line: 1454, column: 6, scope: !4847)
!4857 = !DILocation(line: 1455, column: 7, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 1455, column: 7)
!4859 = distinct !DILexicalBlock(scope: !4854, file: !3, line: 1454, column: 53)
!4860 = !DILocation(line: 1455, column: 19, scope: !4858)
!4861 = !DILocation(line: 1455, column: 7, scope: !4859)
!4862 = !DILocation(line: 1456, column: 4, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 1455, column: 53)
!4864 = !DILocation(line: 1458, column: 4, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 1457, column: 10)
!4866 = !DILocation(line: 1461, column: 7, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4868, file: !3, line: 1461, column: 7)
!4868 = distinct !DILexicalBlock(scope: !4854, file: !3, line: 1460, column: 9)
!4869 = !DILocation(line: 1461, column: 19, scope: !4867)
!4870 = !DILocation(line: 1461, column: 7, scope: !4868)
!4871 = !DILocation(line: 1462, column: 4, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4867, file: !3, line: 1461, column: 53)
!4873 = !DILocation(line: 1464, column: 4, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4867, file: !3, line: 1463, column: 10)
!4875 = !DILocation(line: 1467, column: 1, scope: !4847)
!4876 = distinct !DISubprogram(name: "nvme_probe_ctx_init", scope: !3, file: !3, line: 860, type: !4877, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4879)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{null, !2141, !2151, !234, !2147, !2155, !1980}
!4879 = !{!4880, !4881, !4882, !4883, !4884, !4885}
!4880 = !DILocalVariable(name: "probe_ctx", arg: 1, scope: !4876, file: !3, line: 860, type: !2141)
!4881 = !DILocalVariable(name: "trid", arg: 2, scope: !4876, file: !3, line: 861, type: !2151)
!4882 = !DILocalVariable(name: "cb_ctx", arg: 3, scope: !4876, file: !3, line: 862, type: !234)
!4883 = !DILocalVariable(name: "probe_cb", arg: 4, scope: !4876, file: !3, line: 863, type: !2147)
!4884 = !DILocalVariable(name: "attach_cb", arg: 5, scope: !4876, file: !3, line: 864, type: !2155)
!4885 = !DILocalVariable(name: "remove_cb", arg: 6, scope: !4876, file: !3, line: 865, type: !1980)
!4886 = !DILocation(line: 860, column: 49, scope: !4876)
!4887 = !DILocation(line: 861, column: 44, scope: !4876)
!4888 = !DILocation(line: 862, column: 13, scope: !4876)
!4889 = !DILocation(line: 863, column: 26, scope: !4876)
!4890 = !DILocation(line: 864, column: 27, scope: !4876)
!4891 = !DILocation(line: 865, column: 27, scope: !4876)
!4892 = !DILocation(line: 867, column: 2, scope: !4876)
!4893 = !DILocation(line: 867, column: 13, scope: !4876)
!4894 = !DILocation(line: 867, column: 21, scope: !4876)
!4895 = !DILocation(line: 867, column: 20, scope: !4876)
!4896 = !DILocation(line: 868, column: 22, scope: !4876)
!4897 = !DILocation(line: 868, column: 2, scope: !4876)
!4898 = !DILocation(line: 868, column: 13, scope: !4876)
!4899 = !DILocation(line: 868, column: 20, scope: !4876)
!4900 = !DILocation(line: 869, column: 24, scope: !4876)
!4901 = !DILocation(line: 869, column: 2, scope: !4876)
!4902 = !DILocation(line: 869, column: 13, scope: !4876)
!4903 = !DILocation(line: 869, column: 22, scope: !4876)
!4904 = !DILocation(line: 870, column: 25, scope: !4876)
!4905 = !DILocation(line: 870, column: 2, scope: !4876)
!4906 = !DILocation(line: 870, column: 13, scope: !4876)
!4907 = !DILocation(line: 870, column: 23, scope: !4876)
!4908 = !DILocation(line: 871, column: 25, scope: !4876)
!4909 = !DILocation(line: 871, column: 2, scope: !4876)
!4910 = !DILocation(line: 871, column: 13, scope: !4876)
!4911 = !DILocation(line: 871, column: 23, scope: !4876)
!4912 = !DILocation(line: 872, column: 2, scope: !4876)
!4913 = !DILocation(line: 872, column: 2, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4876, file: !3, line: 872, column: 2)
!4915 = !DILocation(line: 873, column: 1, scope: !4876)
!4916 = distinct !DISubprogram(name: "nvme_probe_internal", scope: !3, file: !3, line: 794, type: !4917, scopeLine: 796, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4919)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{!155, !2141, !523}
!4919 = !{!4920, !4921, !4922, !4923, !4924}
!4920 = !DILocalVariable(name: "probe_ctx", arg: 1, scope: !4916, file: !3, line: 794, type: !2141)
!4921 = !DILocalVariable(name: "direct_connect", arg: 2, scope: !4916, file: !3, line: 795, type: !523)
!4922 = !DILocalVariable(name: "rc", scope: !4916, file: !3, line: 797, type: !155)
!4923 = !DILocalVariable(name: "ctrlr", scope: !4916, file: !3, line: 798, type: !534)
!4924 = !DILocalVariable(name: "ctrlr_tmp", scope: !4916, file: !3, line: 798, type: !534)
!4925 = !DILocation(line: 794, column: 49, scope: !4916)
!4926 = !DILocation(line: 795, column: 12, scope: !4916)
!4927 = !DILocation(line: 797, column: 2, scope: !4916)
!4928 = !DILocation(line: 797, column: 6, scope: !4916)
!4929 = !DILocation(line: 798, column: 2, scope: !4916)
!4930 = !DILocation(line: 798, column: 26, scope: !4916)
!4931 = !DILocation(line: 798, column: 34, scope: !4916)
!4932 = !DILocation(line: 800, column: 13, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 800, column: 6)
!4934 = !DILocation(line: 800, column: 24, scope: !4933)
!4935 = !DILocation(line: 800, column: 29, scope: !4933)
!4936 = !DILocation(line: 800, column: 6, scope: !4933)
!4937 = !DILocation(line: 800, column: 39, scope: !4933)
!4938 = !DILocation(line: 800, column: 6, scope: !4916)
!4939 = !DILocation(line: 802, column: 38, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4933, file: !3, line: 800, column: 45)
!4941 = !DILocation(line: 802, column: 49, scope: !4940)
!4942 = !DILocation(line: 802, column: 55, scope: !4940)
!4943 = !DILocation(line: 802, column: 66, scope: !4940)
!4944 = !DILocation(line: 802, column: 71, scope: !4940)
!4945 = !DILocation(line: 802, column: 3, scope: !4940)
!4946 = !DILocation(line: 803, column: 2, scope: !4940)
!4947 = !DILocation(line: 805, column: 45, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 805, column: 6)
!4949 = !DILocation(line: 805, column: 56, scope: !4948)
!4950 = !DILocation(line: 805, column: 61, scope: !4948)
!4951 = !DILocation(line: 805, column: 7, scope: !4948)
!4952 = !DILocation(line: 805, column: 6, scope: !4916)
!4953 = !DILocation(line: 806, column: 3, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4948, file: !3, line: 805, column: 72)
!4955 = !DILocation(line: 808, column: 3, scope: !4954)
!4956 = !DILocation(line: 811, column: 26, scope: !4916)
!4957 = !DILocation(line: 811, column: 46, scope: !4916)
!4958 = !DILocation(line: 811, column: 2, scope: !4916)
!4959 = !DILocation(line: 813, column: 33, scope: !4916)
!4960 = !DILocation(line: 813, column: 44, scope: !4916)
!4961 = !DILocation(line: 813, column: 7, scope: !4916)
!4962 = !DILocation(line: 813, column: 5, scope: !4916)
!4963 = !DILocation(line: 814, column: 6, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 814, column: 6)
!4965 = !DILocation(line: 814, column: 9, scope: !4964)
!4966 = !DILocation(line: 814, column: 6, scope: !4916)
!4967 = !DILocation(line: 815, column: 3, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 814, column: 15)
!4969 = !DILocation(line: 816, column: 3, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4968, file: !3, line: 816, column: 3)
!4971 = !DILocation(line: 816, column: 3, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4970, file: !3, line: 816, column: 3)
!4973 = !DILocation(line: 0, scope: !4972)
!4974 = !DILocation(line: 817, column: 4, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 816, column: 72)
!4976 = !DILocation(line: 817, column: 4, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4978, file: !3, line: 817, column: 4)
!4978 = distinct !DILexicalBlock(scope: !4975, file: !3, line: 817, column: 4)
!4979 = !DILocation(line: 817, column: 4, scope: !4978)
!4980 = !DILocation(line: 818, column: 34, scope: !4975)
!4981 = !DILocation(line: 818, column: 4, scope: !4975)
!4982 = !DILocation(line: 819, column: 3, scope: !4975)
!4983 = distinct !{!4983, !4969, !4984}
!4984 = !DILocation(line: 819, column: 3, scope: !4970)
!4985 = !DILocation(line: 820, column: 29, scope: !4968)
!4986 = !DILocation(line: 820, column: 49, scope: !4968)
!4987 = !DILocation(line: 820, column: 3, scope: !4968)
!4988 = !DILocation(line: 821, column: 3, scope: !4968)
!4989 = !DILocation(line: 827, column: 7, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 827, column: 6)
!4991 = !DILocation(line: 827, column: 33, scope: !4990)
!4992 = !DILocation(line: 827, column: 37, scope: !4990)
!4993 = !DILocation(line: 827, column: 48, scope: !4990)
!4994 = !DILocation(line: 827, column: 53, scope: !4990)
!4995 = !DILocation(line: 827, column: 60, scope: !4990)
!4996 = !DILocation(line: 827, column: 6, scope: !4916)
!4997 = !DILocation(line: 828, column: 3, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4999, file: !3, line: 828, column: 3)
!4999 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 827, column: 90)
!5000 = !DILocation(line: 828, column: 3, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4998, file: !3, line: 828, column: 3)
!5002 = !DILocation(line: 830, column: 16, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 830, column: 8)
!5004 = distinct !DILexicalBlock(scope: !5001, file: !3, line: 828, column: 76)
!5005 = !DILocation(line: 830, column: 27, scope: !5003)
!5006 = !DILocation(line: 830, column: 32, scope: !5003)
!5007 = !DILocation(line: 830, column: 9, scope: !5003)
!5008 = !DILocation(line: 830, column: 40, scope: !5003)
!5009 = !DILocation(line: 830, column: 46, scope: !5003)
!5010 = !DILocation(line: 831, column: 41, scope: !5003)
!5011 = !DILocation(line: 831, column: 52, scope: !5003)
!5012 = !DILocation(line: 831, column: 59, scope: !5003)
!5013 = !DILocation(line: 831, column: 66, scope: !5003)
!5014 = !DILocation(line: 831, column: 9, scope: !5003)
!5015 = !DILocation(line: 830, column: 8, scope: !5004)
!5016 = !DILocation(line: 832, column: 5, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5003, file: !3, line: 831, column: 74)
!5018 = !DILocation(line: 836, column: 39, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 836, column: 8)
!5020 = !DILocation(line: 836, column: 8, scope: !5019)
!5021 = !DILocation(line: 836, column: 46, scope: !5019)
!5022 = !DILocation(line: 836, column: 8, scope: !5004)
!5023 = !DILocation(line: 837, column: 5, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 836, column: 55)
!5025 = !DILocation(line: 840, column: 28, scope: !5004)
!5026 = !DILocation(line: 840, column: 4, scope: !5004)
!5027 = !DILocation(line: 846, column: 8, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 846, column: 8)
!5029 = !DILocation(line: 846, column: 19, scope: !5028)
!5030 = !DILocation(line: 846, column: 8, scope: !5004)
!5031 = !DILocation(line: 847, column: 31, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 846, column: 30)
!5033 = !DILocation(line: 847, column: 51, scope: !5032)
!5034 = !DILocation(line: 847, column: 5, scope: !5032)
!5035 = !DILocation(line: 848, column: 5, scope: !5032)
!5036 = !DILocation(line: 848, column: 16, scope: !5032)
!5037 = !DILocation(line: 848, column: 26, scope: !5032)
!5038 = !DILocation(line: 848, column: 37, scope: !5032)
!5039 = !DILocation(line: 848, column: 46, scope: !5032)
!5040 = !DILocation(line: 848, column: 53, scope: !5032)
!5041 = !DILocation(line: 848, column: 59, scope: !5032)
!5042 = !DILocation(line: 848, column: 67, scope: !5032)
!5043 = !DILocation(line: 848, column: 74, scope: !5032)
!5044 = !DILocation(line: 849, column: 29, scope: !5032)
!5045 = !DILocation(line: 849, column: 49, scope: !5032)
!5046 = !DILocation(line: 849, column: 5, scope: !5032)
!5047 = !DILocation(line: 850, column: 4, scope: !5032)
!5048 = !DILocation(line: 851, column: 3, scope: !5004)
!5049 = distinct !{!5049, !4997, !5050}
!5050 = !DILocation(line: 851, column: 3, scope: !4998)
!5051 = !DILocation(line: 852, column: 2, scope: !4999)
!5052 = !DILocation(line: 854, column: 28, scope: !4916)
!5053 = !DILocation(line: 854, column: 48, scope: !4916)
!5054 = !DILocation(line: 854, column: 2, scope: !4916)
!5055 = !DILocation(line: 856, column: 2, scope: !4916)
!5056 = !DILocation(line: 857, column: 1, scope: !4916)
!5057 = distinct !DISubprogram(name: "spdk_nvme_probe_poll_async", scope: !3, file: !3, line: 1500, type: !3715, scopeLine: 1501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5058)
!5058 = !{!5059, !5060, !5061}
!5059 = !DILocalVariable(name: "probe_ctx", arg: 1, scope: !5057, file: !3, line: 1500, type: !2141)
!5060 = !DILocalVariable(name: "ctrlr", scope: !5057, file: !3, line: 1502, type: !534)
!5061 = !DILocalVariable(name: "ctrlr_tmp", scope: !5057, file: !3, line: 1502, type: !534)
!5062 = !DILocation(line: 1500, column: 56, scope: !5057)
!5063 = !DILocation(line: 1502, column: 2, scope: !5057)
!5064 = !DILocation(line: 1502, column: 26, scope: !5057)
!5065 = !DILocation(line: 1502, column: 34, scope: !5057)
!5066 = !DILocation(line: 1504, column: 7, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5057, file: !3, line: 1504, column: 6)
!5068 = !DILocation(line: 1504, column: 33, scope: !5067)
!5069 = !DILocation(line: 1504, column: 36, scope: !5067)
!5070 = !DILocation(line: 1504, column: 47, scope: !5067)
!5071 = !DILocation(line: 1504, column: 52, scope: !5067)
!5072 = !DILocation(line: 1504, column: 59, scope: !5067)
!5073 = !DILocation(line: 1504, column: 6, scope: !5057)
!5074 = !DILocation(line: 1505, column: 8, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 1504, column: 88)
!5076 = !DILocation(line: 1505, column: 3, scope: !5075)
!5077 = !DILocation(line: 1506, column: 3, scope: !5075)
!5078 = !DILocation(line: 1509, column: 2, scope: !5079)
!5079 = distinct !DILexicalBlock(scope: !5057, file: !3, line: 1509, column: 2)
!5080 = !DILocation(line: 1509, column: 2, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5079, file: !3, line: 1509, column: 2)
!5082 = !DILocation(line: 0, scope: !5081)
!5083 = !DILocation(line: 1510, column: 28, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5081, file: !3, line: 1509, column: 71)
!5085 = !DILocation(line: 1510, column: 35, scope: !5084)
!5086 = !DILocation(line: 1510, column: 3, scope: !5084)
!5087 = !DILocation(line: 1511, column: 2, scope: !5084)
!5088 = distinct !{!5088, !5078, !5089}
!5089 = !DILocation(line: 1511, column: 2, scope: !5079)
!5090 = !DILocation(line: 1513, column: 6, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5057, file: !3, line: 1513, column: 6)
!5092 = !DILocation(line: 1513, column: 6, scope: !5057)
!5093 = !DILocation(line: 1514, column: 27, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5091, file: !3, line: 1513, column: 44)
!5095 = !DILocation(line: 1514, column: 47, scope: !5094)
!5096 = !DILocation(line: 1514, column: 3, scope: !5094)
!5097 = !DILocation(line: 1515, column: 3, scope: !5094)
!5098 = !DILocation(line: 1515, column: 23, scope: !5094)
!5099 = !DILocation(line: 1515, column: 35, scope: !5094)
!5100 = !DILocation(line: 1516, column: 29, scope: !5094)
!5101 = !DILocation(line: 1516, column: 49, scope: !5094)
!5102 = !DILocation(line: 1516, column: 3, scope: !5094)
!5103 = !DILocation(line: 1517, column: 8, scope: !5094)
!5104 = !DILocation(line: 1517, column: 3, scope: !5094)
!5105 = !DILocation(line: 1518, column: 3, scope: !5094)
!5106 = !DILocation(line: 1521, column: 2, scope: !5057)
!5107 = !DILocation(line: 1522, column: 1, scope: !5057)
!5108 = distinct !DISubprogram(name: "nvme_ctrlr_poll_internal", scope: !3, file: !3, line: 692, type: !5109, scopeLine: 694, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5111)
!5109 = !DISubroutineType(types: !5110)
!5110 = !{null, !534, !2141}
!5111 = !{!5112, !5113, !5114}
!5112 = !DILocalVariable(name: "ctrlr", arg: 1, scope: !5108, file: !3, line: 692, type: !534)
!5113 = !DILocalVariable(name: "probe_ctx", arg: 2, scope: !5108, file: !3, line: 693, type: !2141)
!5114 = !DILocalVariable(name: "rc", scope: !5108, file: !3, line: 695, type: !155)
!5115 = !DILocation(line: 692, column: 50, scope: !5108)
!5116 = !DILocation(line: 693, column: 33, scope: !5108)
!5117 = !DILocation(line: 695, column: 2, scope: !5108)
!5118 = !DILocation(line: 695, column: 6, scope: !5108)
!5119 = !DILocation(line: 697, column: 31, scope: !5108)
!5120 = !DILocation(line: 697, column: 7, scope: !5108)
!5121 = !DILocation(line: 697, column: 5, scope: !5108)
!5122 = !DILocation(line: 699, column: 6, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 699, column: 6)
!5124 = !DILocation(line: 699, column: 6, scope: !5108)
!5125 = !DILocation(line: 701, column: 3, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 699, column: 10)
!5127 = !DILocation(line: 701, column: 3, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5129, file: !3, line: 701, column: 3)
!5129 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 701, column: 3)
!5130 = !DILocation(line: 701, column: 3, scope: !5129)
!5131 = !DILocation(line: 702, column: 3, scope: !5126)
!5132 = !DILocation(line: 703, column: 27, scope: !5126)
!5133 = !DILocation(line: 703, column: 34, scope: !5126)
!5134 = !DILocation(line: 703, column: 3, scope: !5126)
!5135 = !DILocation(line: 704, column: 19, scope: !5126)
!5136 = !DILocation(line: 704, column: 3, scope: !5126)
!5137 = !DILocation(line: 705, column: 29, scope: !5126)
!5138 = !DILocation(line: 705, column: 36, scope: !5126)
!5139 = !DILocation(line: 705, column: 3, scope: !5126)
!5140 = !DILocation(line: 706, column: 23, scope: !5126)
!5141 = !DILocation(line: 706, column: 3, scope: !5126)
!5142 = !DILocation(line: 707, column: 3, scope: !5126)
!5143 = !DILocation(line: 710, column: 6, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 710, column: 6)
!5145 = !DILocation(line: 710, column: 13, scope: !5144)
!5146 = !DILocation(line: 710, column: 19, scope: !5144)
!5147 = !DILocation(line: 710, column: 6, scope: !5108)
!5148 = !DILocation(line: 711, column: 3, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 710, column: 46)
!5150 = !DILocation(line: 714, column: 2, scope: !5108)
!5151 = !DILocation(line: 714, column: 2, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 714, column: 2)
!5153 = !DILocation(line: 720, column: 2, scope: !5108)
!5154 = !DILocation(line: 720, column: 2, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 720, column: 2)
!5156 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 720, column: 2)
!5157 = !DILocation(line: 720, column: 2, scope: !5156)
!5158 = !DILocation(line: 722, column: 26, scope: !5108)
!5159 = !DILocation(line: 722, column: 46, scope: !5108)
!5160 = !DILocation(line: 722, column: 2, scope: !5108)
!5161 = !DILocation(line: 723, column: 24, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 723, column: 6)
!5163 = !DILocation(line: 723, column: 6, scope: !5162)
!5164 = !DILocation(line: 723, column: 6, scope: !5108)
!5165 = !DILocation(line: 724, column: 3, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 723, column: 32)
!5167 = !DILocation(line: 724, column: 3, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 724, column: 3)
!5169 = !DILocation(line: 725, column: 2, scope: !5166)
!5170 = !DILocation(line: 726, column: 3, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 725, column: 9)
!5172 = !DILocation(line: 726, column: 3, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 726, column: 3)
!5174 = !DILocation(line: 733, column: 26, scope: !5108)
!5175 = !DILocation(line: 733, column: 2, scope: !5108)
!5176 = !DILocation(line: 734, column: 28, scope: !5108)
!5177 = !DILocation(line: 734, column: 48, scope: !5108)
!5178 = !DILocation(line: 734, column: 2, scope: !5108)
!5179 = !DILocation(line: 736, column: 6, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5108, file: !3, line: 736, column: 6)
!5181 = !DILocation(line: 736, column: 17, scope: !5180)
!5182 = !DILocation(line: 736, column: 6, scope: !5108)
!5183 = !DILocation(line: 737, column: 3, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 736, column: 28)
!5185 = !DILocation(line: 737, column: 14, scope: !5184)
!5186 = !DILocation(line: 737, column: 24, scope: !5184)
!5187 = !DILocation(line: 737, column: 35, scope: !5184)
!5188 = !DILocation(line: 737, column: 44, scope: !5184)
!5189 = !DILocation(line: 737, column: 51, scope: !5184)
!5190 = !DILocation(line: 737, column: 57, scope: !5184)
!5191 = !DILocation(line: 737, column: 65, scope: !5184)
!5192 = !DILocation(line: 737, column: 72, scope: !5184)
!5193 = !DILocation(line: 738, column: 2, scope: !5184)
!5194 = !DILocation(line: 739, column: 1, scope: !5108)
!5195 = distinct !DISubprogram(name: "nvme_connect_probe_cb", scope: !3, file: !3, line: 904, type: !2149, scopeLine: 906, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5196)
!5196 = !{!5197, !5198, !5199, !5200}
!5197 = !DILocalVariable(name: "cb_ctx", arg: 1, scope: !5195, file: !3, line: 904, type: !234)
!5198 = !DILocalVariable(name: "trid", arg: 2, scope: !5195, file: !3, line: 904, type: !2151)
!5199 = !DILocalVariable(name: "opts", arg: 3, scope: !5195, file: !3, line: 905, type: !2153)
!5200 = !DILocalVariable(name: "requested_opts", scope: !5195, file: !3, line: 907, type: !2153)
!5201 = !DILocation(line: 904, column: 29, scope: !5195)
!5202 = !DILocation(line: 904, column: 74, scope: !5195)
!5203 = !DILocation(line: 905, column: 38, scope: !5195)
!5204 = !DILocation(line: 907, column: 2, scope: !5195)
!5205 = !DILocation(line: 907, column: 31, scope: !5195)
!5206 = !DILocation(line: 907, column: 48, scope: !5195)
!5207 = !DILocation(line: 910, column: 9, scope: !5195)
!5208 = !DILocation(line: 910, column: 15, scope: !5195)
!5209 = !DILocation(line: 910, column: 2, scope: !5195)
!5210 = !DILocation(line: 913, column: 1, scope: !5195)
!5211 = !DILocation(line: 912, column: 2, scope: !5195)
!5212 = distinct !DISubprogram(name: "register_flag_nvme", scope: !3, file: !3, line: 1557, type: !5213, scopeLine: 1557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5213 = !DISubroutineType(types: !5214)
!5214 = !{null}
!5215 = !DILocation(line: 1557, column: 1, scope: !5212)
!5216 = !DISubprogram(name: "spdk_log_register_flag", scope: !154, file: !154, line: 195, type: !5217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5217 = !DISubroutineType(types: !5218)
!5218 = !{null, !521, !517}
!5219 = !DISubprogram(name: "nvme_ctrlr_get_ref_count", scope: !48, file: !48, line: 1566, type: !2177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5220 = distinct !DISubprogram(name: "nvme_ctrlr_detach_async_finish", scope: !3, file: !3, line: 39, type: !2001, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5221)
!5221 = !{!5222}
!5222 = !DILocalVariable(name: "ctrlr", arg: 1, scope: !5220, file: !3, line: 39, type: !534)
!5223 = !DILocation(line: 39, column: 56, scope: !5220)
!5224 = !DILocation(line: 41, column: 26, scope: !5220)
!5225 = !DILocation(line: 41, column: 46, scope: !5220)
!5226 = !DILocation(line: 41, column: 2, scope: !5220)
!5227 = !DILocation(line: 42, column: 24, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5220, file: !3, line: 42, column: 6)
!5229 = !DILocation(line: 42, column: 6, scope: !5228)
!5230 = !DILocation(line: 42, column: 6, scope: !5220)
!5231 = !DILocation(line: 43, column: 3, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 42, column: 32)
!5233 = !DILocation(line: 43, column: 3, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 43, column: 3)
!5235 = distinct !DILexicalBlock(scope: !5232, file: !3, line: 43, column: 3)
!5236 = !DILocation(line: 43, column: 3, scope: !5235)
!5237 = !DILocation(line: 44, column: 2, scope: !5232)
!5238 = !DILocation(line: 45, column: 3, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 44, column: 9)
!5240 = !DILocation(line: 45, column: 3, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5242, file: !3, line: 45, column: 3)
!5242 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 45, column: 3)
!5243 = !DILocation(line: 45, column: 3, scope: !5242)
!5244 = !DILocation(line: 47, column: 28, scope: !5220)
!5245 = !DILocation(line: 47, column: 48, scope: !5220)
!5246 = !DILocation(line: 47, column: 2, scope: !5220)
!5247 = !DILocation(line: 48, column: 1, scope: !5220)
!5248 = !DISubprogram(name: "nvme_ctrlr_proc_put_ref", scope: !48, file: !48, line: 1565, type: !2001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5249 = !DISubprogram(name: "nvme_io_msg_ctrlr_detach", scope: !1996, file: !1996, line: 59, type: !2001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5250 = !DISubprogram(name: "nvme_ctrlr_destruct_async", scope: !48, file: !48, line: 1169, type: !5251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5251 = !DISubroutineType(types: !5252)
!5252 = !{null, !534, !2182}
!5253 = distinct !DISubprogram(name: "nvme_ctrlr_shared", scope: !3, file: !3, line: 26, type: !5254, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5258)
!5254 = !DISubroutineType(types: !5255)
!5255 = !{!523, !5256}
!5256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5257, size: 64)
!5257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!5258 = !{!5259}
!5259 = !DILocalVariable(name: "ctrlr", arg: 1, scope: !5253, file: !3, line: 26, type: !5256)
!5260 = !DILocation(line: 26, column: 49, scope: !5253)
!5261 = !DILocation(line: 28, column: 9, scope: !5253)
!5262 = !DILocation(line: 28, column: 16, scope: !5253)
!5263 = !DILocation(line: 28, column: 21, scope: !5253)
!5264 = !DILocation(line: 28, column: 28, scope: !5253)
!5265 = !DILocation(line: 28, column: 2, scope: !5253)
!5266 = !DISubprogram(name: "nvme_ctrlr_destruct_poll_async", scope: !48, file: !48, line: 1171, type: !5267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5267 = !DISubroutineType(types: !5268)
!5268 = !{!155, !534, !2182}
!5269 = !DISubprogram(name: "__builtin___memcpy_chk", scope: !2537, file: !2537, line: 29, type: !5270, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5270 = !DISubroutineType(types: !5271)
!5271 = !{!234, !234, !2542, !578, !578}
!5272 = !DISubprogram(name: "pthread_mutex_consistent", scope: !143, file: !143, line: 855, type: !2684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5273 = distinct !DISubprogram(name: "nvme_allocate_request", scope: !48, file: !48, line: 1263, type: !5274, scopeLine: 1266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5278)
!5274 = !DISubroutineType(types: !5275)
!5275 = !{!826, !1288, !5276, !546, !546, !1256, !234}
!5276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5277, size: 64)
!5277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1221)
!5278 = !{!5279, !5280, !5281, !5282, !5283, !5284, !5285}
!5279 = !DILocalVariable(name: "qpair", arg: 1, scope: !5273, file: !48, line: 1263, type: !1288)
!5280 = !DILocalVariable(name: "payload", arg: 2, scope: !5273, file: !48, line: 1264, type: !5276)
!5281 = !DILocalVariable(name: "payload_size", arg: 3, scope: !5273, file: !48, line: 1264, type: !546)
!5282 = !DILocalVariable(name: "md_size", arg: 4, scope: !5273, file: !48, line: 1264, type: !546)
!5283 = !DILocalVariable(name: "cb_fn", arg: 5, scope: !5273, file: !48, line: 1265, type: !1256)
!5284 = !DILocalVariable(name: "cb_arg", arg: 6, scope: !5273, file: !48, line: 1265, type: !234)
!5285 = !DILocalVariable(name: "req", scope: !5273, file: !48, line: 1267, type: !826)
!5286 = !DILocation(line: 1263, column: 47, scope: !5273)
!5287 = !DILocation(line: 1264, column: 36, scope: !5273)
!5288 = !DILocation(line: 1264, column: 54, scope: !5273)
!5289 = !DILocation(line: 1264, column: 77, scope: !5273)
!5290 = !DILocation(line: 1265, column: 26, scope: !5273)
!5291 = !DILocation(line: 1265, column: 39, scope: !5273)
!5292 = !DILocation(line: 1267, column: 2, scope: !5273)
!5293 = !DILocation(line: 1267, column: 23, scope: !5273)
!5294 = !DILocation(line: 1269, column: 8, scope: !5273)
!5295 = !DILocation(line: 1269, column: 6, scope: !5273)
!5296 = !DILocation(line: 1270, column: 6, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5273, file: !48, line: 1270, column: 6)
!5298 = !DILocation(line: 1270, column: 10, scope: !5297)
!5299 = !DILocation(line: 1270, column: 6, scope: !5273)
!5300 = !DILocation(line: 1271, column: 10, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5297, file: !48, line: 1270, column: 19)
!5302 = !DILocation(line: 1271, column: 3, scope: !5301)
!5303 = !DILocation(line: 1274, column: 2, scope: !5273)
!5304 = !DILocation(line: 1274, column: 2, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5306, file: !48, line: 1274, column: 2)
!5306 = distinct !DILexicalBlock(scope: !5273, file: !48, line: 1274, column: 2)
!5307 = !DILocation(line: 1274, column: 2, scope: !5306)
!5308 = !DILocation(line: 1275, column: 2, scope: !5273)
!5309 = !DILocation(line: 1275, column: 9, scope: !5273)
!5310 = !DILocation(line: 1275, column: 29, scope: !5273)
!5311 = !DILocation(line: 1288, column: 9, scope: !5273)
!5312 = !DILocation(line: 1288, column: 2, scope: !5273)
!5313 = !DILocation(line: 1290, column: 2, scope: !5273)
!5314 = !DILocation(line: 1290, column: 2, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5273, file: !48, line: 1290, column: 2)
!5316 = !DILocation(line: 1292, column: 9, scope: !5273)
!5317 = !DILocation(line: 1292, column: 2, scope: !5273)
!5318 = !DILocation(line: 1293, column: 1, scope: !5273)
!5319 = distinct !DISubprogram(name: "spdk_nvme_opc_get_data_transfer", scope: !25, file: !25, line: 1646, type: !5320, scopeLine: 1647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5322)
!5320 = !DISubroutineType(types: !5321)
!5321 = !{!172, !565}
!5322 = !{!5323}
!5323 = !DILocalVariable(name: "opc", arg: 1, scope: !5319, file: !25, line: 1646, type: !565)
!5324 = !DILocation(line: 1646, column: 84, scope: !5319)
!5325 = !DILocation(line: 1648, column: 40, scope: !5319)
!5326 = !DILocation(line: 1648, column: 44, scope: !5319)
!5327 = !DILocation(line: 1648, column: 2, scope: !5319)
!5328 = !DISubprogram(name: "__builtin___memset_chk", scope: !5329, file: !5329, line: 32, type: !5330, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5329 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/strings_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "2c53309439f074d781ca95a346401d78")
!5330 = !DISubroutineType(types: !5331)
!5331 = !{!234, !234, !155, !578, !578}
!5332 = !DISubprogram(name: "strspn", scope: !4769, file: !4769, line: 297, type: !5333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5333 = !DISubroutineType(types: !5334)
!5334 = !{!578, !521, !521}
!5335 = !DISubprogram(name: "strchr", scope: !4769, file: !4769, line: 246, type: !5336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5336 = !DISubroutineType(types: !5337)
!5337 = !{!4042, !521, !155}
!5338 = !DISubprogram(name: "strcspn", scope: !4769, file: !4769, line: 293, type: !5333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5339 = !DISubprogram(name: "strlen", scope: !4769, file: !4769, line: 407, type: !5340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5340 = !DISubroutineType(types: !5341)
!5341 = !{!578, !521}
!5342 = !DISubprogram(name: "spdk_nvme_transport_available_by_name", scope: !6, file: !6, line: 774, type: !5343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5343 = !DISubroutineType(types: !5344)
!5344 = !{!523, !521}
!5345 = !DISubprogram(name: "nvme_transport_ctrlr_scan", scope: !48, file: !48, line: 1493, type: !4917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5346 = !DISubprogram(name: "nvme_transport_ctrlr_destruct", scope: !48, file: !48, line: 1492, type: !2177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5347 = !DISubprogram(name: "nvme_ctrlr_get_current_process", scope: !48, file: !48, line: 1158, type: !5348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5348 = !DISubroutineType(types: !5349)
!5349 = !{!1346, !534}
!5350 = !DISubprogram(name: "nvme_ctrlr_process_init", scope: !48, file: !48, line: 1174, type: !2177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5351 = !DISubprogram(name: "nvme_ctrlr_fail", scope: !48, file: !48, line: 1173, type: !5352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5352 = !DISubroutineType(types: !5353)
!5353 = !{null, !534, !523}
!5354 = !DISubprogram(name: "nvme_ctrlr_destruct", scope: !48, file: !48, line: 1168, type: !2001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)

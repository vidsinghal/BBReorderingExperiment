; ModuleID = 'samples/797.bc'
source_filename = "init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spdk_env_opts = type { ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr }
%struct.spdk_pci_addr = type { i32, i8, i8, i8 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.glob_t = type { i64, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"spdk\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c"0x1\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [7 x i8] c"init.c\00", align 1, !dbg !12
@__func__.spdk_env_dpdk_post_init = private unnamed_addr constant [24 x i8] c"spdk_env_dpdk_post_init\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [23 x i8] c"pci_env_init() failed\0A\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to allocate mem_map\0A\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to initialize vtophys\0A\00", align 1, !dbg !33
@g_eal_cmdline = internal global ptr null, align 8, !dbg !38
@g_eal_cmdline_argcount = internal global i32 0, align 4, !dbg !117
@g_external_init = internal global i8 1, align 1, !dbg !119
@stderr = external global ptr, align 8
@.str.6 = private unnamed_addr constant [44 x i8] c"Invalid arguments to reinitialize SPDK env\0A\00", align 1, !dbg !58
@.str.7 = private unnamed_addr constant [38 x i8] c"Starting %s / %s reinitialization...\0A\00", align 1, !dbg !63
@.str.8 = private unnamed_addr constant [31 x i8] c"SPDK v23.01 git sha1 10edc60aa\00", align 1, !dbg !68
@.str.9 = private unnamed_addr constant [35 x i8] c"NULL arguments to initialize DPDK\0A\00", align 1, !dbg !73
@__func__.spdk_env_init = private unnamed_addr constant [14 x i8] c"spdk_env_init\00", align 1, !dbg !78
@.str.10 = private unnamed_addr constant [38 x i8] c"Invalid arguments to initialize DPDK\0A\00", align 1, !dbg !83
@.str.11 = private unnamed_addr constant [36 x i8] c"Starting %s / %s initialization...\0A\00", align 1, !dbg !85
@.str.12 = private unnamed_addr constant [24 x i8] c"[ DPDK EAL parameters: \00", align 1, !dbg !90
@.str.13 = private unnamed_addr constant [6 x i8] c"%s%s \00", align 1, !dbg !93
@.str.14 = private unnamed_addr constant [5 x i8] c"%s]\0A\00", align 1, !dbg !98
@.str.15 = private unnamed_addr constant [30 x i8] c"Failed to allocate dpdk_args\0A\00", align 1, !dbg !100
@stdout = external global ptr, align 8
@optind = external global i32, align 4
@per_lcore__rte_errno = external thread_local global i32, align 4
@.str.16 = private unnamed_addr constant [26 x i8] c"DPDK already initialized\0A\00", align 1, !dbg !102
@.str.17 = private unnamed_addr constant [27 x i8] c"Failed to initialize DPDK\0A\00", align 1, !dbg !107
@.str.18 = private unnamed_addr constant [13 x i8] c"--legacy-mem\00", align 1, !dbg !112
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !122
@.str.20 = private unnamed_addr constant [12 x i8] c"--no-shconf\00", align 1, !dbg !127
@.str.21 = private unnamed_addr constant [6 x i8] c"-l %s\00", align 1, !dbg !132
@.str.22 = private unnamed_addr constant [6 x i8] c"-c %s\00", align 1, !dbg !134
@.str.23 = private unnamed_addr constant [6 x i8] c"-n %d\00", align 1, !dbg !136
@.str.24 = private unnamed_addr constant [6 x i8] c"-m %d\00", align 1, !dbg !138
@.str.25 = private unnamed_addr constant [6 x i8] c"%s=%d\00", align 1, !dbg !140
@.str.26 = private unnamed_addr constant [13 x i8] c"--main-lcore\00", align 1, !dbg !142
@.str.27 = private unnamed_addr constant [9 x i8] c"--no-pci\00", align 1, !dbg !144
@.str.28 = private unnamed_addr constant [23 x i8] c"--single-file-segments\00", align 1, !dbg !149
@.str.29 = private unnamed_addr constant [14 x i8] c"--huge-unlink\00", align 1, !dbg !151
@.str.30 = private unnamed_addr constant [14 x i8] c"--huge-dir=%s\00", align 1, !dbg !154
@.str.31 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1, !dbg !156
@.str.32 = private unnamed_addr constant [8 x i8] c"--block\00", align 1, !dbg !158
@.str.33 = private unnamed_addr constant [8 x i8] c"--allow\00", align 1, !dbg !163
@.str.34 = private unnamed_addr constant [22 x i8] c"--log-level=lib.eal:6\00", align 1, !dbg !165
@.str.35 = private unnamed_addr constant [28 x i8] c"--log-level=lib.cryptodev:5\00", align 1, !dbg !170
@.str.36 = private unnamed_addr constant [20 x i8] c"--log-level=user1:6\00", align 1, !dbg !172
@.str.37 = private unnamed_addr constant [3 x i8] c" \09\00", align 1, !dbg !177
@.str.38 = private unnamed_addr constant [15 x i8] c"--iova-mode=%s\00", align 1, !dbg !179
@.str.39 = private unnamed_addr constant [15 x i8] c"--iova-mode=pa\00", align 1, !dbg !184
@.str.40 = private unnamed_addr constant [22 x i8] c"--base-virtaddr=0x%lx\00", align 1, !dbg !186
@.str.41 = private unnamed_addr constant [20 x i8] c"--match-allocations\00", align 1, !dbg !188
@.str.42 = private unnamed_addr constant [25 x i8] c"--file-prefix=spdk_pid%d\00", align 1, !dbg !190
@.str.43 = private unnamed_addr constant [21 x i8] c"--file-prefix=spdk%d\00", align 1, !dbg !195
@.str.44 = private unnamed_addr constant [17 x i8] c"--proc-type=auto\00", align 1, !dbg !200
@.str.45 = private unnamed_addr constant [19 x i8] c"--vfio-vf-token=%s\00", align 1, !dbg !205
@__func__.push_arg = private unnamed_addr constant [9 x i8] c"push_arg\00", align 1, !dbg !210
@.str.46 = private unnamed_addr constant [23 x i8] c"%s: NULL arg supplied\0A\00", align 1, !dbg !213
@.str.47 = private unnamed_addr constant [49 x i8] c"/sys/devices/virtual/iommu/dmar*/intel-iommu/cap\00", align 1, !dbg !215
@.str.48 = private unnamed_addr constant [37 x i8] c"/sys/class/iommu/ivhd*/amd-iommu/cap\00", align 1, !dbg !220
@.str.49 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !225
@.str.50 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1, !dbg !230
@.str.51 = private unnamed_addr constant [12 x i8] c"intel-iommu\00", align 1, !dbg !232
@.str.52 = private unnamed_addr constant [10 x i8] c"amd-iommu\00", align 1, !dbg !234
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 101, ptr @dpdk_cleanup, ptr null }]

; Function Attrs: nounwind ssp uwtable
define void @spdk_env_opts_init(ptr noundef %opts) #0 !dbg !247 {
entry:
  %opts.addr = alloca ptr, align 8
  store ptr %opts, ptr %opts.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %opts.addr, metadata !290, metadata !DIExpression()), !dbg !291
  %0 = load ptr, ptr %opts.addr, align 8, !dbg !292
  %tobool = icmp ne ptr %0, null, !dbg !292
  br i1 %tobool, label %if.end, label %if.then, !dbg !294

if.then:                                          ; preds = %entry
  br label %return, !dbg !295

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %opts.addr, align 8, !dbg !297
  %call = call ptr @memset.inline(ptr noundef %1, i32 noundef 0, i64 noundef 104) #14, !dbg !298
  %2 = load ptr, ptr %opts.addr, align 8, !dbg !299
  %name = getelementptr inbounds %struct.spdk_env_opts, ptr %2, i32 0, i32 0, !dbg !300
  store ptr @.str, ptr %name, align 8, !dbg !301
  %3 = load ptr, ptr %opts.addr, align 8, !dbg !302
  %core_mask = getelementptr inbounds %struct.spdk_env_opts, ptr %3, i32 0, i32 1, !dbg !303
  store ptr @.str.1, ptr %core_mask, align 8, !dbg !304
  %4 = load ptr, ptr %opts.addr, align 8, !dbg !305
  %shm_id = getelementptr inbounds %struct.spdk_env_opts, ptr %4, i32 0, i32 2, !dbg !306
  store i32 -1, ptr %shm_id, align 8, !dbg !307
  %5 = load ptr, ptr %opts.addr, align 8, !dbg !308
  %mem_size = getelementptr inbounds %struct.spdk_env_opts, ptr %5, i32 0, i32 5, !dbg !309
  store i32 -1, ptr %mem_size, align 4, !dbg !310
  %6 = load ptr, ptr %opts.addr, align 8, !dbg !311
  %main_core = getelementptr inbounds %struct.spdk_env_opts, ptr %6, i32 0, i32 4, !dbg !312
  store i32 -1, ptr %main_core, align 8, !dbg !313
  %7 = load ptr, ptr %opts.addr, align 8, !dbg !314
  %mem_channel = getelementptr inbounds %struct.spdk_env_opts, ptr %7, i32 0, i32 3, !dbg !315
  store i32 -1, ptr %mem_channel, align 4, !dbg !316
  %8 = load ptr, ptr %opts.addr, align 8, !dbg !317
  %base_virtaddr = getelementptr inbounds %struct.spdk_env_opts, ptr %8, i32 0, i32 14, !dbg !318
  store i64 35184372088832, ptr %base_virtaddr, align 8, !dbg !319
  br label %return, !dbg !320

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !320
}

; Function Attrs: alwaysinline nobuiltin nounwind ssp uwtable
declare ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: alwaysinline nounwind
define internal ptr @memset.inline(ptr nonnull %__dest, i32 %__ch, i64 %__len) #2 !dbg !321 {
entry:
  %__dest.addr = alloca ptr, align 8
  %__ch.addr = alloca i32, align 4
  %__len.addr = alloca i64, align 8
  store ptr %__dest, ptr %__dest.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %__dest.addr, metadata !328, metadata !DIExpression()), !dbg !331
  store i32 %__ch, ptr %__ch.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %__ch.addr, metadata !329, metadata !DIExpression()), !dbg !331
  store i64 %__len, ptr %__len.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %__len.addr, metadata !330, metadata !DIExpression()), !dbg !331
  %0 = load ptr, ptr %__dest.addr, align 8, !dbg !332
  %1 = load i32, ptr %__ch.addr, align 4, !dbg !333
  %2 = load i64, ptr %__len.addr, align 8, !dbg !334
  %3 = load ptr, ptr %__dest.addr, align 8, !dbg !335
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false), !dbg !335
  %call = call ptr @__memset_chk(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %4) #14, !dbg !336
  ret ptr %call, !dbg !337
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_env_dpdk_post_init(i1 noundef zeroext %legacy_mem) #0 !dbg !338 {
entry:
  %retval = alloca i32, align 4
  %legacy_mem.addr = alloca i8, align 1
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %frombool = zext i1 %legacy_mem to i8
  store i8 %frombool, ptr %legacy_mem.addr, align 1
  tail call void @llvm.dbg.declare(metadata ptr %legacy_mem.addr, metadata !342, metadata !DIExpression()), !dbg !344
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #14, !dbg !345
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !343, metadata !DIExpression()), !dbg !346
  %call = call i32 @pci_env_init(), !dbg !347
  store i32 %call, ptr %rc, align 4, !dbg !348
  %0 = load i32, ptr %rc, align 4, !dbg !349
  %cmp = icmp slt i32 %0, 0, !dbg !351
  br i1 %cmp, label %if.then, label %if.end, !dbg !352

if.then:                                          ; preds = %entry
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.2, i32 noundef 489, ptr noundef @__func__.spdk_env_dpdk_post_init, ptr noundef @.str.3), !dbg !353
  %1 = load i32, ptr %rc, align 4, !dbg !355
  store i32 %1, ptr %retval, align 4, !dbg !356
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !356

if.end:                                           ; preds = %entry
  %2 = load i8, ptr %legacy_mem.addr, align 1, !dbg !357, !range !358, !noundef !359
  %tobool = trunc i8 %2 to i1, !dbg !357
  %call1 = call i32 @mem_map_init(i1 noundef zeroext %tobool), !dbg !360
  store i32 %call1, ptr %rc, align 4, !dbg !361
  %3 = load i32, ptr %rc, align 4, !dbg !362
  %cmp2 = icmp slt i32 %3, 0, !dbg !364
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !365

if.then3:                                         ; preds = %if.end
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.2, i32 noundef 495, ptr noundef @__func__.spdk_env_dpdk_post_init, ptr noundef @.str.4), !dbg !366
  %4 = load i32, ptr %rc, align 4, !dbg !368
  store i32 %4, ptr %retval, align 4, !dbg !369
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !369

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @vtophys_init(), !dbg !370
  store i32 %call5, ptr %rc, align 4, !dbg !371
  %5 = load i32, ptr %rc, align 4, !dbg !372
  %cmp6 = icmp slt i32 %5, 0, !dbg !374
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !375

if.then7:                                         ; preds = %if.end4
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.2, i32 noundef 501, ptr noundef @__func__.spdk_env_dpdk_post_init, ptr noundef @.str.5), !dbg !376
  %6 = load i32, ptr %rc, align 4, !dbg !378
  store i32 %6, ptr %retval, align 4, !dbg !379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !379

if.end8:                                          ; preds = %if.end4
  store i32 0, ptr %retval, align 4, !dbg !380
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !380

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #14, !dbg !381
  %7 = load i32, ptr %retval, align 4, !dbg !381
  ret i32 %7, !dbg !381
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !382 i32 @pci_env_init() #4

declare !dbg !386 void @spdk_log(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #4

declare !dbg !390 i32 @mem_map_init(i1 noundef zeroext) #4

declare !dbg !391 i32 @vtophys_init() #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind ssp uwtable
define void @spdk_env_dpdk_post_fini() #0 !dbg !392 {
entry:
  call void @pci_env_fini(), !dbg !395
  %0 = load ptr, ptr @g_eal_cmdline, align 8, !dbg !396
  %1 = load i32, ptr @g_eal_cmdline_argcount, align 4, !dbg !397
  call void @free_args(ptr noundef %0, i32 noundef %1), !dbg !398
  store ptr null, ptr @g_eal_cmdline, align 8, !dbg !399
  store i32 0, ptr @g_eal_cmdline_argcount, align 4, !dbg !400
  ret void, !dbg !401
}

declare !dbg !402 void @pci_env_fini() #4

; Function Attrs: nounwind ssp uwtable
define internal void @free_args(ptr noundef %args, i32 noundef %argcount) #0 !dbg !403 {
entry:
  %args.addr = alloca ptr, align 8
  %argcount.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %args, ptr %args.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !407, metadata !DIExpression()), !dbg !410
  store i32 %argcount, ptr %argcount.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %argcount.addr, metadata !408, metadata !DIExpression()), !dbg !411
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !412
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !409, metadata !DIExpression()), !dbg !413
  %0 = load ptr, ptr %args.addr, align 8, !dbg !414
  %cmp = icmp eq ptr %0, null, !dbg !416
  br i1 %cmp, label %if.then, label %if.end, !dbg !417

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !418

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !420
  br label %for.cond, !dbg !422

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4, !dbg !423
  %2 = load i32, ptr %argcount.addr, align 4, !dbg !425
  %cmp1 = icmp slt i32 %1, %2, !dbg !426
  br i1 %cmp1, label %for.body, label %for.end, !dbg !427

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %args.addr, align 8, !dbg !428
  %4 = load i32, ptr %i, align 4, !dbg !430
  %idxprom = sext i32 %4 to i64, !dbg !428
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom, !dbg !428
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !428
  call void @free(ptr noundef %5) #14, !dbg !431
  br label %for.inc, !dbg !432

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !dbg !433
  %inc = add nsw i32 %6, 1, !dbg !433
  store i32 %inc, ptr %i, align 4, !dbg !433
  br label %for.cond, !dbg !434, !llvm.loop !435

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %argcount.addr, align 4, !dbg !437
  %tobool = icmp ne i32 %7, 0, !dbg !437
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !439

if.then2:                                         ; preds = %for.end
  %8 = load ptr, ptr %args.addr, align 8, !dbg !440
  call void @free(ptr noundef %8) #14, !dbg !442
  br label %if.end3, !dbg !443

if.end3:                                          ; preds = %if.then2, %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !444
  br label %cleanup, !dbg !444

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !444
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !444

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define i32 @spdk_env_init(ptr noundef %opts) #0 !dbg !445 {
entry:
  %retval = alloca i32, align 4
  %opts.addr = alloca ptr, align 8
  %dpdk_args = alloca ptr, align 8
  %args_print = alloca ptr, align 8
  %args_tmp = alloca ptr, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %orig_optind = alloca i32, align 4
  %legacy_mem = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %opts, ptr %opts.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %opts.addr, metadata !451, metadata !DIExpression()), !dbg !459
  call void @llvm.lifetime.start.p0(i64 8, ptr %dpdk_args) #14, !dbg !460
  tail call void @llvm.dbg.declare(metadata ptr %dpdk_args, metadata !452, metadata !DIExpression()), !dbg !461
  store ptr null, ptr %dpdk_args, align 8, !dbg !461
  call void @llvm.lifetime.start.p0(i64 8, ptr %args_print) #14, !dbg !462
  tail call void @llvm.dbg.declare(metadata ptr %args_print, metadata !453, metadata !DIExpression()), !dbg !463
  store ptr null, ptr %args_print, align 8, !dbg !463
  call void @llvm.lifetime.start.p0(i64 8, ptr %args_tmp) #14, !dbg !462
  tail call void @llvm.dbg.declare(metadata ptr %args_tmp, metadata !454, metadata !DIExpression()), !dbg !464
  store ptr null, ptr %args_tmp, align 8, !dbg !464
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !465
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !455, metadata !DIExpression()), !dbg !466
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #14, !dbg !465
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !456, metadata !DIExpression()), !dbg !467
  call void @llvm.lifetime.start.p0(i64 4, ptr %orig_optind) #14, !dbg !468
  tail call void @llvm.dbg.declare(metadata ptr %orig_optind, metadata !457, metadata !DIExpression()), !dbg !469
  call void @llvm.lifetime.start.p0(i64 1, ptr %legacy_mem) #14, !dbg !470
  tail call void @llvm.dbg.declare(metadata ptr %legacy_mem, metadata !458, metadata !DIExpression()), !dbg !471
  %0 = load i8, ptr @g_external_init, align 1, !dbg !472, !range !358, !noundef !359
  %tobool = trunc i8 %0 to i1, !dbg !472
  %conv = zext i1 %tobool to i32, !dbg !472
  %cmp = icmp eq i32 %conv, 0, !dbg !474
  br i1 %cmp, label %if.then, label %if.end7, !dbg !475

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %opts.addr, align 8, !dbg !476
  %cmp2 = icmp ne ptr %1, null, !dbg !479
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !480

if.then4:                                         ; preds = %if.then
  %2 = load ptr, ptr @stderr, align 8, !dbg !481
  %call = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 1, ptr noundef @.str.6), !dbg !481
  store i32 -22, ptr %retval, align 4, !dbg !483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !483

if.end:                                           ; preds = %if.then
  %call5 = call ptr @rte_version(), !dbg !484
  %call6 = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef %call5), !dbg !484
  call void @pci_env_reinit(), !dbg !485
  store i32 0, ptr %retval, align 4, !dbg !486
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !486

if.end7:                                          ; preds = %entry
  %3 = load ptr, ptr %opts.addr, align 8, !dbg !487
  %cmp8 = icmp eq ptr %3, null, !dbg !489
  br i1 %cmp8, label %if.then10, label %if.end12, !dbg !490

if.then10:                                        ; preds = %if.end7
  %4 = load ptr, ptr @stderr, align 8, !dbg !491
  %call11 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef @.str.9), !dbg !491
  store i32 -22, ptr %retval, align 4, !dbg !493
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !493

if.end12:                                         ; preds = %if.end7
  %5 = load ptr, ptr %opts.addr, align 8, !dbg !494
  %call13 = call i32 @build_eal_cmdline(ptr noundef %5), !dbg !495
  store i32 %call13, ptr %rc, align 4, !dbg !496
  %6 = load i32, ptr %rc, align 4, !dbg !497
  %cmp14 = icmp slt i32 %6, 0, !dbg !499
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !500

if.then16:                                        ; preds = %if.end12
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.2, i32 noundef 549, ptr noundef @__func__.spdk_env_init, ptr noundef @.str.10), !dbg !501
  store i32 -22, ptr %retval, align 4, !dbg !503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !503

if.end17:                                         ; preds = %if.end12
  %call18 = call ptr @rte_version(), !dbg !504
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 2, ptr noundef null, i32 noundef -1, ptr noundef null, ptr noundef @.str.11, ptr noundef @.str.8, ptr noundef %call18), !dbg !504
  %call19 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.12), !dbg !505
  store ptr %call19, ptr %args_print, align 8, !dbg !506
  %7 = load ptr, ptr %args_print, align 8, !dbg !507
  %cmp20 = icmp eq ptr %7, null, !dbg !509
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !510

if.then22:                                        ; preds = %if.end17
  store i32 -12, ptr %retval, align 4, !dbg !511
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !511

if.end23:                                         ; preds = %if.end17
  store i32 0, ptr %i, align 4, !dbg !513
  br label %for.cond, !dbg !515

for.cond:                                         ; preds = %for.inc, %if.end23
  %8 = load i32, ptr %i, align 4, !dbg !516
  %9 = load i32, ptr @g_eal_cmdline_argcount, align 4, !dbg !518
  %cmp24 = icmp slt i32 %8, %9, !dbg !519
  br i1 %cmp24, label %for.body, label %for.end, !dbg !520

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %args_print, align 8, !dbg !521
  store ptr %10, ptr %args_tmp, align 8, !dbg !523
  %11 = load ptr, ptr %args_tmp, align 8, !dbg !524
  %12 = load ptr, ptr @g_eal_cmdline, align 8, !dbg !525
  %13 = load i32, ptr %i, align 4, !dbg !526
  %idxprom = sext i32 %13 to i64, !dbg !525
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 %idxprom, !dbg !525
  %14 = load ptr, ptr %arrayidx, align 8, !dbg !525
  %call26 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.13, ptr noundef %11, ptr noundef %14), !dbg !527
  store ptr %call26, ptr %args_print, align 8, !dbg !528
  %15 = load ptr, ptr %args_print, align 8, !dbg !529
  %cmp27 = icmp eq ptr %15, null, !dbg !531
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !532

if.then29:                                        ; preds = %for.body
  %16 = load ptr, ptr %args_tmp, align 8, !dbg !533
  call void @free(ptr noundef %16) #14, !dbg !535
  store i32 -12, ptr %retval, align 4, !dbg !536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !536

if.end30:                                         ; preds = %for.body
  %17 = load ptr, ptr %args_tmp, align 8, !dbg !537
  call void @free(ptr noundef %17) #14, !dbg !538
  br label %for.inc, !dbg !539

for.inc:                                          ; preds = %if.end30
  %18 = load i32, ptr %i, align 4, !dbg !540
  %inc = add nsw i32 %18, 1, !dbg !540
  store i32 %inc, ptr %i, align 4, !dbg !540
  br label %for.cond, !dbg !541, !llvm.loop !542

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %args_print, align 8, !dbg !544
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 2, ptr noundef null, i32 noundef -1, ptr noundef null, ptr noundef @.str.14, ptr noundef %19), !dbg !544
  %20 = load ptr, ptr %args_print, align 8, !dbg !545
  call void @free(ptr noundef %20) #14, !dbg !546
  %21 = load i32, ptr @g_eal_cmdline_argcount, align 4, !dbg !547
  %conv31 = sext i32 %21 to i64, !dbg !547
  %call32 = call noalias ptr @calloc(i64 noundef %conv31, i64 noundef 8) #15, !dbg !548
  store ptr %call32, ptr %dpdk_args, align 8, !dbg !549
  %22 = load ptr, ptr %dpdk_args, align 8, !dbg !550
  %cmp33 = icmp eq ptr %22, null, !dbg !552
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !553

if.then35:                                        ; preds = %for.end
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.2, i32 noundef 577, ptr noundef @__func__.spdk_env_init, ptr noundef @.str.15), !dbg !554
  store i32 -12, ptr %retval, align 4, !dbg !556
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !556

if.end36:                                         ; preds = %for.end
  %23 = load ptr, ptr %dpdk_args, align 8, !dbg !557
  %24 = load ptr, ptr @g_eal_cmdline, align 8, !dbg !558
  %25 = load i32, ptr @g_eal_cmdline_argcount, align 4, !dbg !559
  %conv37 = sext i32 %25 to i64, !dbg !559
  %mul = mul i64 8, %conv37, !dbg !560
  %call38 = call ptr @memcpy.inline(ptr noundef %23, ptr noundef %24, i64 noundef %mul) #14, !dbg !561
  %26 = load ptr, ptr @stdout, align 8, !dbg !562
  %call39 = call i32 @fflush(ptr noundef %26), !dbg !563
  %27 = load i32, ptr @optind, align 4, !dbg !564
  store i32 %27, ptr %orig_optind, align 4, !dbg !565
  store i32 1, ptr @optind, align 4, !dbg !566
  %28 = load i32, ptr @g_eal_cmdline_argcount, align 4, !dbg !567
  %29 = load ptr, ptr %dpdk_args, align 8, !dbg !568
  %call40 = call i32 @rte_eal_init(i32 noundef %28, ptr noundef %29), !dbg !569
  store i32 %call40, ptr %rc, align 4, !dbg !570
  %30 = load i32, ptr %orig_optind, align 4, !dbg !571
  store i32 %30, ptr @optind, align 4, !dbg !572
  %31 = load ptr, ptr %dpdk_args, align 8, !dbg !573
  call void @free(ptr noundef %31) #14, !dbg !574
  %32 = load i32, ptr %rc, align 4, !dbg !575
  %cmp41 = icmp slt i32 %32, 0, !dbg !577
  br i1 %cmp41, label %if.then43, label %if.end48, !dbg !578

if.then43:                                        ; preds = %if.end36
  %33 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @per_lcore__rte_errno), !dbg !579
  %34 = load i32, ptr %33, align 4, !dbg !579
  %cmp44 = icmp eq i32 %34, 114, !dbg !582
  br i1 %cmp44, label %if.then46, label %if.else, !dbg !583

if.then46:                                        ; preds = %if.then43
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.2, i32 noundef 592, ptr noundef @__func__.spdk_env_init, ptr noundef @.str.16), !dbg !584
  br label %if.end47, !dbg !586

if.else:                                          ; preds = %if.then43
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.2, i32 noundef 594, ptr noundef @__func__.spdk_env_init, ptr noundef @.str.17), !dbg !587
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then46
  %35 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @per_lcore__rte_errno), !dbg !589
  %36 = load i32, ptr %35, align 4, !dbg !589
  %sub = sub nsw i32 0, %36, !dbg !590
  store i32 %sub, ptr %retval, align 4, !dbg !591
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !591

if.end48:                                         ; preds = %if.end36
  store i8 0, ptr %legacy_mem, align 1, !dbg !592
  %37 = load ptr, ptr %opts.addr, align 8, !dbg !593
  %env_context = getelementptr inbounds %struct.spdk_env_opts, ptr %37, i32 0, i32 15, !dbg !595
  %38 = load ptr, ptr %env_context, align 8, !dbg !595
  %tobool49 = icmp ne ptr %38, null, !dbg !593
  br i1 %tobool49, label %land.lhs.true, label %if.end55, !dbg !596

land.lhs.true:                                    ; preds = %if.end48
  %39 = load ptr, ptr %opts.addr, align 8, !dbg !597
  %env_context50 = getelementptr inbounds %struct.spdk_env_opts, ptr %39, i32 0, i32 15, !dbg !598
  %40 = load ptr, ptr %env_context50, align 8, !dbg !598
  %call51 = call ptr @strstr(ptr noundef %40, ptr noundef @.str.18) #16, !dbg !599
  %cmp52 = icmp ne ptr %call51, null, !dbg !600
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !601

if.then54:                                        ; preds = %land.lhs.true
  store i8 1, ptr %legacy_mem, align 1, !dbg !602
  br label %if.end55, !dbg !604

if.end55:                                         ; preds = %if.then54, %land.lhs.true, %if.end48
  %41 = load i8, ptr %legacy_mem, align 1, !dbg !605, !range !358, !noundef !359
  %tobool56 = trunc i8 %41 to i1, !dbg !605
  %call57 = call i32 @spdk_env_dpdk_post_init(i1 noundef zeroext %tobool56), !dbg !606
  store i32 %call57, ptr %rc, align 4, !dbg !607
  %42 = load i32, ptr %rc, align 4, !dbg !608
  %cmp58 = icmp eq i32 %42, 0, !dbg !610
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !611

if.then60:                                        ; preds = %if.end55
  store i8 0, ptr @g_external_init, align 1, !dbg !612
  br label %if.end61, !dbg !614

if.end61:                                         ; preds = %if.then60, %if.end55
  %43 = load i32, ptr %rc, align 4, !dbg !615
  store i32 %43, ptr %retval, align 4, !dbg !616
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !616

cleanup:                                          ; preds = %if.end61, %if.end47, %if.then35, %if.then29, %if.then22, %if.then16, %if.then10, %if.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 1, ptr %legacy_mem) #14, !dbg !617
  call void @llvm.lifetime.end.p0(i64 4, ptr %orig_optind) #14, !dbg !617
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #14, !dbg !617
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !617
  call void @llvm.lifetime.end.p0(i64 8, ptr %args_tmp) #14, !dbg !617
  call void @llvm.lifetime.end.p0(i64 8, ptr %args_print) #14, !dbg !617
  call void @llvm.lifetime.end.p0(i64 8, ptr %dpdk_args) #14, !dbg !617
  %44 = load i32, ptr %retval, align 4, !dbg !617
  ret i32 %44, !dbg !617
}

declare !dbg !618 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) #4

declare !dbg !676 i32 @__printf_chk(i32 noundef, ptr noundef, ...) #4

declare !dbg !679 ptr @rte_version() #4

declare !dbg !683 void @pci_env_reinit() #4

; Function Attrs: nounwind ssp uwtable
define internal i32 @build_eal_cmdline(ptr noundef %opts) #0 !dbg !684 {
entry:
  %retval = alloca i32, align 4
  %opts.addr = alloca ptr, align 8
  %argcount = alloca i32, align 4
  %args = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %l_arg = alloca ptr, align 8
  %len = alloca i32, align 4
  %i = alloca i64, align 8
  %bdf = alloca [32 x i8], align 16
  %pci_addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %tok = alloca ptr, align 8
  store ptr %opts, ptr %opts.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %opts.addr, metadata !686, metadata !DIExpression()), !dbg !708
  call void @llvm.lifetime.start.p0(i64 4, ptr %argcount) #14, !dbg !709
  tail call void @llvm.dbg.declare(metadata ptr %argcount, metadata !687, metadata !DIExpression()), !dbg !710
  store i32 0, ptr %argcount, align 4, !dbg !710
  call void @llvm.lifetime.start.p0(i64 8, ptr %args) #14, !dbg !711
  tail call void @llvm.dbg.declare(metadata ptr %args, metadata !688, metadata !DIExpression()), !dbg !712
  store ptr null, ptr %args, align 8, !dbg !713
  %0 = load ptr, ptr %args, align 8, !dbg !714
  %1 = load ptr, ptr %opts.addr, align 8, !dbg !715
  %name = getelementptr inbounds %struct.spdk_env_opts, ptr %1, i32 0, i32 0, !dbg !716
  %2 = load ptr, ptr %name, align 8, !dbg !716
  %call = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.19, ptr noundef %2), !dbg !717
  %call1 = call ptr @push_arg(ptr noundef %0, ptr noundef %argcount, ptr noundef %call), !dbg !718
  store ptr %call1, ptr %args, align 8, !dbg !719
  %3 = load ptr, ptr %args, align 8, !dbg !720
  %cmp = icmp eq ptr %3, null, !dbg !722
  br i1 %cmp, label %if.then, label %if.end, !dbg !723

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !724
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !724

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %opts.addr, align 8, !dbg !726
  %shm_id = getelementptr inbounds %struct.spdk_env_opts, ptr %4, i32 0, i32 2, !dbg !728
  %5 = load i32, ptr %shm_id, align 8, !dbg !728
  %cmp2 = icmp slt i32 %5, 0, !dbg !729
  br i1 %cmp2, label %if.then3, label %if.end9, !dbg !730

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %args, align 8, !dbg !731
  %call4 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.19, ptr noundef @.str.20), !dbg !733
  %call5 = call ptr @push_arg(ptr noundef %6, ptr noundef %argcount, ptr noundef %call4), !dbg !734
  store ptr %call5, ptr %args, align 8, !dbg !735
  %7 = load ptr, ptr %args, align 8, !dbg !736
  %cmp6 = icmp eq ptr %7, null, !dbg !738
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !739

if.then7:                                         ; preds = %if.then3
  store i32 -1, ptr %retval, align 4, !dbg !740
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !740

if.end8:                                          ; preds = %if.then3
  br label %if.end9, !dbg !742

if.end9:                                          ; preds = %if.end8, %if.end
  %8 = load ptr, ptr %opts.addr, align 8, !dbg !743
  %core_mask = getelementptr inbounds %struct.spdk_env_opts, ptr %8, i32 0, i32 1, !dbg !744
  %9 = load ptr, ptr %core_mask, align 8, !dbg !744
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 0, !dbg !743
  %10 = load i8, ptr %arrayidx, align 1, !dbg !743
  %conv = sext i8 %10 to i32, !dbg !743
  %cmp10 = icmp eq i32 %conv, 45, !dbg !745
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !746

if.then12:                                        ; preds = %if.end9
  %11 = load ptr, ptr %args, align 8, !dbg !747
  %12 = load ptr, ptr %opts.addr, align 8, !dbg !749
  %core_mask13 = getelementptr inbounds %struct.spdk_env_opts, ptr %12, i32 0, i32 1, !dbg !750
  %13 = load ptr, ptr %core_mask13, align 8, !dbg !750
  %call14 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.19, ptr noundef %13), !dbg !751
  %call15 = call ptr @push_arg(ptr noundef %11, ptr noundef %argcount, ptr noundef %call14), !dbg !752
  store ptr %call15, ptr %args, align 8, !dbg !753
  br label %if.end45, !dbg !754

if.else:                                          ; preds = %if.end9
  %14 = load ptr, ptr %opts.addr, align 8, !dbg !755
  %core_mask16 = getelementptr inbounds %struct.spdk_env_opts, ptr %14, i32 0, i32 1, !dbg !756
  %15 = load ptr, ptr %core_mask16, align 8, !dbg !756
  %arrayidx17 = getelementptr inbounds i8, ptr %15, i64 0, !dbg !755
  %16 = load i8, ptr %arrayidx17, align 1, !dbg !755
  %conv18 = sext i8 %16 to i32, !dbg !755
  %cmp19 = icmp eq i32 %conv18, 91, !dbg !757
  br i1 %cmp19, label %if.then21, label %if.else40, !dbg !758

if.then21:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_arg) #14, !dbg !759
  tail call void @llvm.dbg.declare(metadata ptr %l_arg, metadata !689, metadata !DIExpression()), !dbg !760
  %17 = load ptr, ptr %opts.addr, align 8, !dbg !761
  %core_mask22 = getelementptr inbounds %struct.spdk_env_opts, ptr %17, i32 0, i32 1, !dbg !762
  %18 = load ptr, ptr %core_mask22, align 8, !dbg !762
  %add.ptr = getelementptr inbounds i8, ptr %18, i64 1, !dbg !763
  %call23 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.21, ptr noundef %add.ptr), !dbg !764
  store ptr %call23, ptr %l_arg, align 8, !dbg !760
  %19 = load ptr, ptr %l_arg, align 8, !dbg !765
  %cmp24 = icmp ne ptr %19, null, !dbg !766
  br i1 %cmp24, label %if.then26, label %if.end38, !dbg !767

if.then26:                                        ; preds = %if.then21
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #14, !dbg !768
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !693, metadata !DIExpression()), !dbg !769
  %20 = load ptr, ptr %l_arg, align 8, !dbg !770
  %call27 = call i64 @strlen(ptr noundef %20) #16, !dbg !771
  %conv28 = trunc i64 %call27 to i32, !dbg !771
  store i32 %conv28, ptr %len, align 4, !dbg !769
  %21 = load ptr, ptr %l_arg, align 8, !dbg !772
  %22 = load i32, ptr %len, align 4, !dbg !774
  %sub = sub nsw i32 %22, 1, !dbg !775
  %idxprom = sext i32 %sub to i64, !dbg !772
  %arrayidx29 = getelementptr inbounds i8, ptr %21, i64 %idxprom, !dbg !772
  %23 = load i8, ptr %arrayidx29, align 1, !dbg !772
  %conv30 = sext i8 %23 to i32, !dbg !772
  %cmp31 = icmp eq i32 %conv30, 93, !dbg !776
  br i1 %cmp31, label %if.then33, label %if.end37, !dbg !777

if.then33:                                        ; preds = %if.then26
  %24 = load ptr, ptr %l_arg, align 8, !dbg !778
  %25 = load i32, ptr %len, align 4, !dbg !780
  %sub34 = sub nsw i32 %25, 1, !dbg !781
  %idxprom35 = sext i32 %sub34 to i64, !dbg !778
  %arrayidx36 = getelementptr inbounds i8, ptr %24, i64 %idxprom35, !dbg !778
  store i8 0, ptr %arrayidx36, align 1, !dbg !782
  br label %if.end37, !dbg !783

if.end37:                                         ; preds = %if.then33, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #14, !dbg !784
  br label %if.end38, !dbg !785

if.end38:                                         ; preds = %if.end37, %if.then21
  %26 = load ptr, ptr %args, align 8, !dbg !786
  %27 = load ptr, ptr %l_arg, align 8, !dbg !787
  %call39 = call ptr @push_arg(ptr noundef %26, ptr noundef %argcount, ptr noundef %27), !dbg !788
  store ptr %call39, ptr %args, align 8, !dbg !789
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_arg) #14, !dbg !790
  br label %if.end44, !dbg !791

if.else40:                                        ; preds = %if.else
  %28 = load ptr, ptr %args, align 8, !dbg !792
  %29 = load ptr, ptr %opts.addr, align 8, !dbg !794
  %core_mask41 = getelementptr inbounds %struct.spdk_env_opts, ptr %29, i32 0, i32 1, !dbg !795
  %30 = load ptr, ptr %core_mask41, align 8, !dbg !795
  %call42 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.22, ptr noundef %30), !dbg !796
  %call43 = call ptr @push_arg(ptr noundef %28, ptr noundef %argcount, ptr noundef %call42), !dbg !797
  store ptr %call43, ptr %args, align 8, !dbg !798
  br label %if.end44

if.end44:                                         ; preds = %if.else40, %if.end38
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then12
  %31 = load ptr, ptr %args, align 8, !dbg !799
  %cmp46 = icmp eq ptr %31, null, !dbg !801
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !802

if.then48:                                        ; preds = %if.end45
  store i32 -1, ptr %retval, align 4, !dbg !803
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !803

if.end49:                                         ; preds = %if.end45
  %32 = load ptr, ptr %opts.addr, align 8, !dbg !805
  %mem_channel = getelementptr inbounds %struct.spdk_env_opts, ptr %32, i32 0, i32 3, !dbg !807
  %33 = load i32, ptr %mem_channel, align 4, !dbg !807
  %cmp50 = icmp sgt i32 %33, 0, !dbg !808
  br i1 %cmp50, label %if.then52, label %if.end60, !dbg !809

if.then52:                                        ; preds = %if.end49
  %34 = load ptr, ptr %args, align 8, !dbg !810
  %35 = load ptr, ptr %opts.addr, align 8, !dbg !812
  %mem_channel53 = getelementptr inbounds %struct.spdk_env_opts, ptr %35, i32 0, i32 3, !dbg !813
  %36 = load i32, ptr %mem_channel53, align 4, !dbg !813
  %call54 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.23, i32 noundef %36), !dbg !814
  %call55 = call ptr @push_arg(ptr noundef %34, ptr noundef %argcount, ptr noundef %call54), !dbg !815
  store ptr %call55, ptr %args, align 8, !dbg !816
  %37 = load ptr, ptr %args, align 8, !dbg !817
  %cmp56 = icmp eq ptr %37, null, !dbg !819
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !820

if.then58:                                        ; preds = %if.then52
  store i32 -1, ptr %retval, align 4, !dbg !821
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !821

if.end59:                                         ; preds = %if.then52
  br label %if.end60, !dbg !823

if.end60:                                         ; preds = %if.end59, %if.end49
  %38 = load ptr, ptr %opts.addr, align 8, !dbg !824
  %mem_size = getelementptr inbounds %struct.spdk_env_opts, ptr %38, i32 0, i32 5, !dbg !826
  %39 = load i32, ptr %mem_size, align 4, !dbg !826
  %cmp61 = icmp sge i32 %39, 0, !dbg !827
  br i1 %cmp61, label %if.then63, label %if.end71, !dbg !828

if.then63:                                        ; preds = %if.end60
  %40 = load ptr, ptr %args, align 8, !dbg !829
  %41 = load ptr, ptr %opts.addr, align 8, !dbg !831
  %mem_size64 = getelementptr inbounds %struct.spdk_env_opts, ptr %41, i32 0, i32 5, !dbg !832
  %42 = load i32, ptr %mem_size64, align 4, !dbg !832
  %call65 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.24, i32 noundef %42), !dbg !833
  %call66 = call ptr @push_arg(ptr noundef %40, ptr noundef %argcount, ptr noundef %call65), !dbg !834
  store ptr %call66, ptr %args, align 8, !dbg !835
  %43 = load ptr, ptr %args, align 8, !dbg !836
  %cmp67 = icmp eq ptr %43, null, !dbg !838
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !839

if.then69:                                        ; preds = %if.then63
  store i32 -1, ptr %retval, align 4, !dbg !840
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !840

if.end70:                                         ; preds = %if.then63
  br label %if.end71, !dbg !842

if.end71:                                         ; preds = %if.end70, %if.end60
  %44 = load ptr, ptr %opts.addr, align 8, !dbg !843
  %main_core = getelementptr inbounds %struct.spdk_env_opts, ptr %44, i32 0, i32 4, !dbg !845
  %45 = load i32, ptr %main_core, align 8, !dbg !845
  %cmp72 = icmp sgt i32 %45, 0, !dbg !846
  br i1 %cmp72, label %if.then74, label %if.end82, !dbg !847

if.then74:                                        ; preds = %if.end71
  %46 = load ptr, ptr %args, align 8, !dbg !848
  %47 = load ptr, ptr %opts.addr, align 8, !dbg !850
  %main_core75 = getelementptr inbounds %struct.spdk_env_opts, ptr %47, i32 0, i32 4, !dbg !851
  %48 = load i32, ptr %main_core75, align 8, !dbg !851
  %call76 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.25, ptr noundef @.str.26, i32 noundef %48), !dbg !852
  %call77 = call ptr @push_arg(ptr noundef %46, ptr noundef %argcount, ptr noundef %call76), !dbg !853
  store ptr %call77, ptr %args, align 8, !dbg !854
  %49 = load ptr, ptr %args, align 8, !dbg !855
  %cmp78 = icmp eq ptr %49, null, !dbg !857
  br i1 %cmp78, label %if.then80, label %if.end81, !dbg !858

if.then80:                                        ; preds = %if.then74
  store i32 -1, ptr %retval, align 4, !dbg !859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !859

if.end81:                                         ; preds = %if.then74
  br label %if.end82, !dbg !861

if.end82:                                         ; preds = %if.end81, %if.end71
  %50 = load ptr, ptr %opts.addr, align 8, !dbg !862
  %no_pci = getelementptr inbounds %struct.spdk_env_opts, ptr %50, i32 0, i32 6, !dbg !864
  %51 = load i8, ptr %no_pci, align 8, !dbg !864, !range !358, !noundef !359
  %tobool = trunc i8 %51 to i1, !dbg !864
  br i1 %tobool, label %if.then83, label %if.end90, !dbg !865

if.then83:                                        ; preds = %if.end82
  %52 = load ptr, ptr %args, align 8, !dbg !866
  %call84 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.27), !dbg !868
  %call85 = call ptr @push_arg(ptr noundef %52, ptr noundef %argcount, ptr noundef %call84), !dbg !869
  store ptr %call85, ptr %args, align 8, !dbg !870
  %53 = load ptr, ptr %args, align 8, !dbg !871
  %cmp86 = icmp eq ptr %53, null, !dbg !873
  br i1 %cmp86, label %if.then88, label %if.end89, !dbg !874

if.then88:                                        ; preds = %if.then83
  store i32 -1, ptr %retval, align 4, !dbg !875
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !875

if.end89:                                         ; preds = %if.then83
  br label %if.end90, !dbg !877

if.end90:                                         ; preds = %if.end89, %if.end82
  %54 = load ptr, ptr %opts.addr, align 8, !dbg !878
  %hugepage_single_segments = getelementptr inbounds %struct.spdk_env_opts, ptr %54, i32 0, i32 7, !dbg !880
  %55 = load i8, ptr %hugepage_single_segments, align 1, !dbg !880, !range !358, !noundef !359
  %tobool91 = trunc i8 %55 to i1, !dbg !880
  br i1 %tobool91, label %if.then92, label %if.end99, !dbg !881

if.then92:                                        ; preds = %if.end90
  %56 = load ptr, ptr %args, align 8, !dbg !882
  %call93 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.28), !dbg !884
  %call94 = call ptr @push_arg(ptr noundef %56, ptr noundef %argcount, ptr noundef %call93), !dbg !885
  store ptr %call94, ptr %args, align 8, !dbg !886
  %57 = load ptr, ptr %args, align 8, !dbg !887
  %cmp95 = icmp eq ptr %57, null, !dbg !889
  br i1 %cmp95, label %if.then97, label %if.end98, !dbg !890

if.then97:                                        ; preds = %if.then92
  store i32 -1, ptr %retval, align 4, !dbg !891
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !891

if.end98:                                         ; preds = %if.then92
  br label %if.end99, !dbg !893

if.end99:                                         ; preds = %if.end98, %if.end90
  %58 = load ptr, ptr %opts.addr, align 8, !dbg !894
  %unlink_hugepage = getelementptr inbounds %struct.spdk_env_opts, ptr %58, i32 0, i32 8, !dbg !896
  %59 = load i8, ptr %unlink_hugepage, align 2, !dbg !896, !range !358, !noundef !359
  %tobool100 = trunc i8 %59 to i1, !dbg !896
  br i1 %tobool100, label %if.then107, label %lor.lhs.false, !dbg !897

lor.lhs.false:                                    ; preds = %if.end99
  %60 = load ptr, ptr %opts.addr, align 8, !dbg !898
  %shm_id102 = getelementptr inbounds %struct.spdk_env_opts, ptr %60, i32 0, i32 2, !dbg !899
  %61 = load i32, ptr %shm_id102, align 8, !dbg !899
  %cmp103 = icmp slt i32 %61, 0, !dbg !900
  br i1 %cmp103, label %land.lhs.true, label %if.end114, !dbg !901

land.lhs.true:                                    ; preds = %lor.lhs.false
  %62 = load ptr, ptr %opts.addr, align 8, !dbg !902
  %hugepage_single_segments105 = getelementptr inbounds %struct.spdk_env_opts, ptr %62, i32 0, i32 7, !dbg !903
  %63 = load i8, ptr %hugepage_single_segments105, align 1, !dbg !903, !range !358, !noundef !359
  %tobool106 = trunc i8 %63 to i1, !dbg !903
  br i1 %tobool106, label %if.end114, label %if.then107, !dbg !904

if.then107:                                       ; preds = %land.lhs.true, %if.end99
  %64 = load ptr, ptr %args, align 8, !dbg !905
  %call108 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.29), !dbg !907
  %call109 = call ptr @push_arg(ptr noundef %64, ptr noundef %argcount, ptr noundef %call108), !dbg !908
  store ptr %call109, ptr %args, align 8, !dbg !909
  %65 = load ptr, ptr %args, align 8, !dbg !910
  %cmp110 = icmp eq ptr %65, null, !dbg !912
  br i1 %cmp110, label %if.then112, label %if.end113, !dbg !913

if.then112:                                       ; preds = %if.then107
  store i32 -1, ptr %retval, align 4, !dbg !914
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !914

if.end113:                                        ; preds = %if.then107
  br label %if.end114, !dbg !916

if.end114:                                        ; preds = %if.end113, %land.lhs.true, %lor.lhs.false
  %66 = load ptr, ptr %opts.addr, align 8, !dbg !917
  %hugedir = getelementptr inbounds %struct.spdk_env_opts, ptr %66, i32 0, i32 10, !dbg !919
  %67 = load ptr, ptr %hugedir, align 8, !dbg !919
  %tobool115 = icmp ne ptr %67, null, !dbg !917
  br i1 %tobool115, label %if.then116, label %if.end124, !dbg !920

if.then116:                                       ; preds = %if.end114
  %68 = load ptr, ptr %args, align 8, !dbg !921
  %69 = load ptr, ptr %opts.addr, align 8, !dbg !923
  %hugedir117 = getelementptr inbounds %struct.spdk_env_opts, ptr %69, i32 0, i32 10, !dbg !924
  %70 = load ptr, ptr %hugedir117, align 8, !dbg !924
  %call118 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.30, ptr noundef %70), !dbg !925
  %call119 = call ptr @push_arg(ptr noundef %68, ptr noundef %argcount, ptr noundef %call118), !dbg !926
  store ptr %call119, ptr %args, align 8, !dbg !927
  %71 = load ptr, ptr %args, align 8, !dbg !928
  %cmp120 = icmp eq ptr %71, null, !dbg !930
  br i1 %cmp120, label %if.then122, label %if.end123, !dbg !931

if.then122:                                       ; preds = %if.then116
  store i32 -1, ptr %retval, align 4, !dbg !932
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !932

if.end123:                                        ; preds = %if.then116
  br label %if.end124, !dbg !934

if.end124:                                        ; preds = %if.end123, %if.end114
  %72 = load ptr, ptr %opts.addr, align 8, !dbg !935
  %num_pci_addr = getelementptr inbounds %struct.spdk_env_opts, ptr %72, i32 0, i32 9, !dbg !936
  %73 = load i64, ptr %num_pci_addr, align 8, !dbg !936
  %tobool125 = icmp ne i64 %73, 0, !dbg !935
  br i1 %tobool125, label %if.then126, label %if.end146, !dbg !937

if.then126:                                       ; preds = %if.end124
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #14, !dbg !938
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !696, metadata !DIExpression()), !dbg !939
  call void @llvm.lifetime.start.p0(i64 32, ptr %bdf) #14, !dbg !940
  tail call void @llvm.dbg.declare(metadata ptr %bdf, metadata !699, metadata !DIExpression()), !dbg !941
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_addr) #14, !dbg !942
  tail call void @llvm.dbg.declare(metadata ptr %pci_addr, metadata !703, metadata !DIExpression()), !dbg !943
  %74 = load ptr, ptr %opts.addr, align 8, !dbg !944
  %pci_blocked = getelementptr inbounds %struct.spdk_env_opts, ptr %74, i32 0, i32 11, !dbg !945
  %75 = load ptr, ptr %pci_blocked, align 8, !dbg !945
  %tobool127 = icmp ne ptr %75, null, !dbg !944
  br i1 %tobool127, label %cond.true, label %cond.false, !dbg !944

cond.true:                                        ; preds = %if.then126
  %76 = load ptr, ptr %opts.addr, align 8, !dbg !946
  %pci_blocked128 = getelementptr inbounds %struct.spdk_env_opts, ptr %76, i32 0, i32 11, !dbg !947
  %77 = load ptr, ptr %pci_blocked128, align 8, !dbg !947
  br label %cond.end, !dbg !944

cond.false:                                       ; preds = %if.then126
  %78 = load ptr, ptr %opts.addr, align 8, !dbg !948
  %pci_allowed = getelementptr inbounds %struct.spdk_env_opts, ptr %78, i32 0, i32 12, !dbg !949
  %79 = load ptr, ptr %pci_allowed, align 8, !dbg !949
  br label %cond.end, !dbg !944

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %77, %cond.true ], [ %79, %cond.false ], !dbg !944
  store ptr %cond, ptr %pci_addr, align 8, !dbg !943
  store i64 0, ptr %i, align 8, !dbg !950
  br label %for.cond, !dbg !952

for.cond:                                         ; preds = %for.inc, %cond.end
  %80 = load i64, ptr %i, align 8, !dbg !953
  %81 = load ptr, ptr %opts.addr, align 8, !dbg !955
  %num_pci_addr129 = getelementptr inbounds %struct.spdk_env_opts, ptr %81, i32 0, i32 9, !dbg !956
  %82 = load i64, ptr %num_pci_addr129, align 8, !dbg !956
  %cmp130 = icmp ult i64 %80, %82, !dbg !957
  br i1 %cmp130, label %for.body, label %for.end, !dbg !958

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [32 x i8], ptr %bdf, i64 0, i64 0, !dbg !959
  %83 = load ptr, ptr %pci_addr, align 8, !dbg !961
  %84 = load i64, ptr %i, align 8, !dbg !962
  %arrayidx132 = getelementptr inbounds %struct.spdk_pci_addr, ptr %83, i64 %84, !dbg !961
  %call133 = call i32 @spdk_pci_addr_fmt(ptr noundef %arraydecay, i64 noundef 32, ptr noundef %arrayidx132), !dbg !963
  %85 = load ptr, ptr %args, align 8, !dbg !964
  %86 = load ptr, ptr %opts.addr, align 8, !dbg !965
  %pci_blocked134 = getelementptr inbounds %struct.spdk_env_opts, ptr %86, i32 0, i32 11, !dbg !966
  %87 = load ptr, ptr %pci_blocked134, align 8, !dbg !966
  %tobool135 = icmp ne ptr %87, null, !dbg !965
  %88 = zext i1 %tobool135 to i64, !dbg !965
  %cond136 = select i1 %tobool135, ptr @.str.32, ptr @.str.33, !dbg !965
  %arraydecay137 = getelementptr inbounds [32 x i8], ptr %bdf, i64 0, i64 0, !dbg !967
  %call138 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.31, ptr noundef %cond136, ptr noundef %arraydecay137), !dbg !968
  %call139 = call ptr @push_arg(ptr noundef %85, ptr noundef %argcount, ptr noundef %call138), !dbg !969
  store ptr %call139, ptr %args, align 8, !dbg !970
  %89 = load ptr, ptr %args, align 8, !dbg !971
  %cmp140 = icmp eq ptr %89, null, !dbg !973
  br i1 %cmp140, label %if.then142, label %if.end143, !dbg !974

if.then142:                                       ; preds = %for.body
  store i32 -1, ptr %retval, align 4, !dbg !975
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !975

if.end143:                                        ; preds = %for.body
  br label %for.inc, !dbg !977

for.inc:                                          ; preds = %if.end143
  %90 = load i64, ptr %i, align 8, !dbg !978
  %inc = add i64 %90, 1, !dbg !978
  store i64 %inc, ptr %i, align 8, !dbg !978
  br label %for.cond, !dbg !979, !llvm.loop !980

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !982
  br label %cleanup, !dbg !982

cleanup:                                          ; preds = %for.end, %if.then142
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_addr) #14, !dbg !982
  call void @llvm.lifetime.end.p0(i64 32, ptr %bdf) #14, !dbg !982
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #14, !dbg !982
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup265 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end146, !dbg !983

if.end146:                                        ; preds = %cleanup.cont, %if.end124
  %91 = load ptr, ptr %args, align 8, !dbg !984
  %call147 = call noalias ptr @strdup(ptr noundef @.str.34) #14, !dbg !985
  %call148 = call ptr @push_arg(ptr noundef %91, ptr noundef %argcount, ptr noundef %call147), !dbg !986
  store ptr %call148, ptr %args, align 8, !dbg !987
  %92 = load ptr, ptr %args, align 8, !dbg !988
  %cmp149 = icmp eq ptr %92, null, !dbg !990
  br i1 %cmp149, label %if.then151, label %if.end152, !dbg !991

if.then151:                                       ; preds = %if.end146
  store i32 -1, ptr %retval, align 4, !dbg !992
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !992

if.end152:                                        ; preds = %if.end146
  %93 = load ptr, ptr %args, align 8, !dbg !994
  %call153 = call noalias ptr @strdup(ptr noundef @.str.35) #14, !dbg !995
  %call154 = call ptr @push_arg(ptr noundef %93, ptr noundef %argcount, ptr noundef %call153), !dbg !996
  store ptr %call154, ptr %args, align 8, !dbg !997
  %94 = load ptr, ptr %args, align 8, !dbg !998
  %cmp155 = icmp eq ptr %94, null, !dbg !1000
  br i1 %cmp155, label %if.then157, label %if.end158, !dbg !1001

if.then157:                                       ; preds = %if.end152
  store i32 -1, ptr %retval, align 4, !dbg !1002
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !1002

if.end158:                                        ; preds = %if.end152
  %95 = load ptr, ptr %args, align 8, !dbg !1004
  %call159 = call noalias ptr @strdup(ptr noundef @.str.36) #14, !dbg !1005
  %call160 = call ptr @push_arg(ptr noundef %95, ptr noundef %argcount, ptr noundef %call159), !dbg !1006
  store ptr %call160, ptr %args, align 8, !dbg !1007
  %96 = load ptr, ptr %args, align 8, !dbg !1008
  %cmp161 = icmp eq ptr %96, null, !dbg !1010
  br i1 %cmp161, label %if.then163, label %if.end164, !dbg !1011

if.then163:                                       ; preds = %if.end158
  store i32 -1, ptr %retval, align 4, !dbg !1012
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !1012

if.end164:                                        ; preds = %if.end158
  %97 = load ptr, ptr %opts.addr, align 8, !dbg !1014
  %env_context = getelementptr inbounds %struct.spdk_env_opts, ptr %97, i32 0, i32 15, !dbg !1015
  %98 = load ptr, ptr %env_context, align 8, !dbg !1015
  %tobool165 = icmp ne ptr %98, null, !dbg !1014
  br i1 %tobool165, label %if.then166, label %if.end175, !dbg !1016

if.then166:                                       ; preds = %if.end164
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #14, !dbg !1017
  tail call void @llvm.dbg.declare(metadata ptr %ptr, metadata !704, metadata !DIExpression()), !dbg !1018
  %99 = load ptr, ptr %opts.addr, align 8, !dbg !1019
  %env_context167 = getelementptr inbounds %struct.spdk_env_opts, ptr %99, i32 0, i32 15, !dbg !1020
  %100 = load ptr, ptr %env_context167, align 8, !dbg !1020
  %call168 = call noalias ptr @strdup(ptr noundef %100) #14, !dbg !1021
  store ptr %call168, ptr %ptr, align 8, !dbg !1018
  call void @llvm.lifetime.start.p0(i64 8, ptr %tok) #14, !dbg !1022
  tail call void @llvm.dbg.declare(metadata ptr %tok, metadata !707, metadata !DIExpression()), !dbg !1023
  %101 = load ptr, ptr %ptr, align 8, !dbg !1024
  %call169 = call ptr @strtok(ptr noundef %101, ptr noundef @.str.37) #14, !dbg !1025
  store ptr %call169, ptr %tok, align 8, !dbg !1023
  br label %while.cond, !dbg !1026

while.cond:                                       ; preds = %while.body, %if.then166
  %102 = load ptr, ptr %tok, align 8, !dbg !1027
  %cmp170 = icmp ne ptr %102, null, !dbg !1028
  br i1 %cmp170, label %while.body, label %while.end, !dbg !1026

while.body:                                       ; preds = %while.cond
  %103 = load ptr, ptr %args, align 8, !dbg !1029
  %104 = load ptr, ptr %tok, align 8, !dbg !1031
  %call172 = call noalias ptr @strdup(ptr noundef %104) #14, !dbg !1032
  %call173 = call ptr @push_arg(ptr noundef %103, ptr noundef %argcount, ptr noundef %call172), !dbg !1033
  store ptr %call173, ptr %args, align 8, !dbg !1034
  %call174 = call ptr @strtok(ptr noundef null, ptr noundef @.str.37) #14, !dbg !1035
  store ptr %call174, ptr %tok, align 8, !dbg !1036
  br label %while.cond, !dbg !1026, !llvm.loop !1037

while.end:                                        ; preds = %while.cond
  %105 = load ptr, ptr %ptr, align 8, !dbg !1039
  call void @free(ptr noundef %105) #14, !dbg !1040
  call void @llvm.lifetime.end.p0(i64 8, ptr %tok) #14, !dbg !1041
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #14, !dbg !1041
  br label %if.end175, !dbg !1042

if.end175:                                        ; preds = %while.end, %if.end164
  %106 = load ptr, ptr %opts.addr, align 8, !dbg !1043
  %iova_mode = getelementptr inbounds %struct.spdk_env_opts, ptr %106, i32 0, i32 13, !dbg !1045
  %107 = load ptr, ptr %iova_mode, align 8, !dbg !1045
  %tobool176 = icmp ne ptr %107, null, !dbg !1043
  br i1 %tobool176, label %if.then177, label %if.else185, !dbg !1046

if.then177:                                       ; preds = %if.end175
  %108 = load ptr, ptr %args, align 8, !dbg !1047
  %109 = load ptr, ptr %opts.addr, align 8, !dbg !1049
  %iova_mode178 = getelementptr inbounds %struct.spdk_env_opts, ptr %109, i32 0, i32 13, !dbg !1050
  %110 = load ptr, ptr %iova_mode178, align 8, !dbg !1050
  %call179 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.38, ptr noundef %110), !dbg !1051
  %call180 = call ptr @push_arg(ptr noundef %108, ptr noundef %argcount, ptr noundef %call179), !dbg !1052
  store ptr %call180, ptr %args, align 8, !dbg !1053
  %111 = load ptr, ptr %args, align 8, !dbg !1054
  %cmp181 = icmp eq ptr %111, null, !dbg !1056
  br i1 %cmp181, label %if.then183, label %if.end184, !dbg !1057

if.then183:                                       ; preds = %if.then177
  store i32 -1, ptr %retval, align 4, !dbg !1058
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !1058

if.end184:                                        ; preds = %if.then177
  br label %if.end207, !dbg !1060

if.else185:                                       ; preds = %if.end175
  %call186 = call i32 @rte_vfio_noiommu_is_enabled(), !dbg !1061
  %tobool187 = icmp ne i32 %call186, 0, !dbg !1061
  br i1 %tobool187, label %if.then188, label %if.end195, !dbg !1064

if.then188:                                       ; preds = %if.else185
  %112 = load ptr, ptr %args, align 8, !dbg !1065
  %call189 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.39), !dbg !1067
  %call190 = call ptr @push_arg(ptr noundef %112, ptr noundef %argcount, ptr noundef %call189), !dbg !1068
  store ptr %call190, ptr %args, align 8, !dbg !1069
  %113 = load ptr, ptr %args, align 8, !dbg !1070
  %cmp191 = icmp eq ptr %113, null, !dbg !1072
  br i1 %cmp191, label %if.then193, label %if.end194, !dbg !1073

if.then193:                                       ; preds = %if.then188
  store i32 -1, ptr %retval, align 4, !dbg !1074
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !1074

if.end194:                                        ; preds = %if.then188
  br label %if.end195, !dbg !1076

if.end195:                                        ; preds = %if.end194, %if.else185
  %call196 = call i32 @get_iommu_width(), !dbg !1077
  %cmp197 = icmp slt i32 %call196, 48, !dbg !1079
  br i1 %cmp197, label %if.then199, label %if.end206, !dbg !1080

if.then199:                                       ; preds = %if.end195
  %114 = load ptr, ptr %args, align 8, !dbg !1081
  %call200 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.39), !dbg !1083
  %call201 = call ptr @push_arg(ptr noundef %114, ptr noundef %argcount, ptr noundef %call200), !dbg !1084
  store ptr %call201, ptr %args, align 8, !dbg !1085
  %115 = load ptr, ptr %args, align 8, !dbg !1086
  %cmp202 = icmp eq ptr %115, null, !dbg !1088
  br i1 %cmp202, label %if.then204, label %if.end205, !dbg !1089

if.then204:                                       ; preds = %if.then199
  store i32 -1, ptr %retval, align 4, !dbg !1090
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !1090

if.end205:                                        ; preds = %if.then199
  br label %if.end206, !dbg !1092

if.end206:                                        ; preds = %if.end205, %if.end195
  br label %if.end207

if.end207:                                        ; preds = %if.end206, %if.end184
  %116 = load ptr, ptr %args, align 8, !dbg !1093
  %117 = load ptr, ptr %opts.addr, align 8, !dbg !1094
  %base_virtaddr = getelementptr inbounds %struct.spdk_env_opts, ptr %117, i32 0, i32 14, !dbg !1095
  %118 = load i64, ptr %base_virtaddr, align 8, !dbg !1095
  %call208 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.40, i64 noundef %118), !dbg !1096
  %call209 = call ptr @push_arg(ptr noundef %116, ptr noundef %argcount, ptr noundef %call208), !dbg !1097
  store ptr %call209, ptr %args, align 8, !dbg !1098
  %119 = load ptr, ptr %args, align 8, !dbg !1099
  %cmp210 = icmp eq ptr %119, null, !dbg !1101
  br i1 %cmp210, label %if.then212, label %if.end213, !dbg !1102

if.then212:                                       ; preds = %if.end207
  store i32 -1, ptr %retval, align 4, !dbg !1103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !1103

if.end213:                                        ; preds = %if.end207
  %120 = load ptr, ptr %opts.addr, align 8, !dbg !1105
  %env_context214 = getelementptr inbounds %struct.spdk_env_opts, ptr %120, i32 0, i32 15, !dbg !1107
  %121 = load ptr, ptr %env_context214, align 8, !dbg !1107
  %tobool215 = icmp ne ptr %121, null, !dbg !1105
  br i1 %tobool215, label %lor.lhs.false216, label %if.then221, !dbg !1108

lor.lhs.false216:                                 ; preds = %if.end213
  %122 = load ptr, ptr %opts.addr, align 8, !dbg !1109
  %env_context217 = getelementptr inbounds %struct.spdk_env_opts, ptr %122, i32 0, i32 15, !dbg !1110
  %123 = load ptr, ptr %env_context217, align 8, !dbg !1110
  %call218 = call ptr @strstr(ptr noundef %123, ptr noundef @.str.18) #16, !dbg !1111
  %cmp219 = icmp eq ptr %call218, null, !dbg !1112
  br i1 %cmp219, label %if.then221, label %if.end228, !dbg !1113

if.then221:                                       ; preds = %lor.lhs.false216, %if.end213
  %124 = load ptr, ptr %args, align 8, !dbg !1114
  %call222 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.19, ptr noundef @.str.41), !dbg !1116
  %call223 = call ptr @push_arg(ptr noundef %124, ptr noundef %argcount, ptr noundef %call222), !dbg !1117
  store ptr %call223, ptr %args, align 8, !dbg !1118
  %125 = load ptr, ptr %args, align 8, !dbg !1119
  %cmp224 = icmp eq ptr %125, null, !dbg !1121
  br i1 %cmp224, label %if.then226, label %if.end227, !dbg !1122

if.then226:                                       ; preds = %if.then221
  store i32 -1, ptr %retval, align 4, !dbg !1123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !1123

if.end227:                                        ; preds = %if.then221
  br label %if.end228, !dbg !1125

if.end228:                                        ; preds = %if.end227, %lor.lhs.false216
  %126 = load ptr, ptr %opts.addr, align 8, !dbg !1126
  %shm_id229 = getelementptr inbounds %struct.spdk_env_opts, ptr %126, i32 0, i32 2, !dbg !1128
  %127 = load i32, ptr %shm_id229, align 8, !dbg !1128
  %cmp230 = icmp slt i32 %127, 0, !dbg !1129
  br i1 %cmp230, label %if.then232, label %if.else240, !dbg !1130

if.then232:                                       ; preds = %if.end228
  %128 = load ptr, ptr %args, align 8, !dbg !1131
  %call233 = call i32 @getpid() #14, !dbg !1133
  %call234 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.42, i32 noundef %call233), !dbg !1134
  %call235 = call ptr @push_arg(ptr noundef %128, ptr noundef %argcount, ptr noundef %call234), !dbg !1135
  store ptr %call235, ptr %args, align 8, !dbg !1136
  %129 = load ptr, ptr %args, align 8, !dbg !1137
  %cmp236 = icmp eq ptr %129, null, !dbg !1139
  br i1 %cmp236, label %if.then238, label %if.end239, !dbg !1140

if.then238:                                       ; preds = %if.then232
  store i32 -1, ptr %retval, align 4, !dbg !1141
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !1141

if.end239:                                        ; preds = %if.then232
  br label %if.end254, !dbg !1143

if.else240:                                       ; preds = %if.end228
  %130 = load ptr, ptr %args, align 8, !dbg !1144
  %131 = load ptr, ptr %opts.addr, align 8, !dbg !1146
  %shm_id241 = getelementptr inbounds %struct.spdk_env_opts, ptr %131, i32 0, i32 2, !dbg !1147
  %132 = load i32, ptr %shm_id241, align 8, !dbg !1147
  %call242 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.43, i32 noundef %132), !dbg !1148
  %call243 = call ptr @push_arg(ptr noundef %130, ptr noundef %argcount, ptr noundef %call242), !dbg !1149
  store ptr %call243, ptr %args, align 8, !dbg !1150
  %133 = load ptr, ptr %args, align 8, !dbg !1151
  %cmp244 = icmp eq ptr %133, null, !dbg !1153
  br i1 %cmp244, label %if.then246, label %if.end247, !dbg !1154

if.then246:                                       ; preds = %if.else240
  store i32 -1, ptr %retval, align 4, !dbg !1155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !1155

if.end247:                                        ; preds = %if.else240
  %134 = load ptr, ptr %args, align 8, !dbg !1157
  %call248 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.44), !dbg !1158
  %call249 = call ptr @push_arg(ptr noundef %134, ptr noundef %argcount, ptr noundef %call248), !dbg !1159
  store ptr %call249, ptr %args, align 8, !dbg !1160
  %135 = load ptr, ptr %args, align 8, !dbg !1161
  %cmp250 = icmp eq ptr %135, null, !dbg !1163
  br i1 %cmp250, label %if.then252, label %if.end253, !dbg !1164

if.then252:                                       ; preds = %if.end247
  store i32 -1, ptr %retval, align 4, !dbg !1165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !1165

if.end253:                                        ; preds = %if.end247
  br label %if.end254

if.end254:                                        ; preds = %if.end253, %if.end239
  %136 = load ptr, ptr %opts.addr, align 8, !dbg !1167
  %vf_token = getelementptr inbounds %struct.spdk_env_opts, ptr %136, i32 0, i32 16, !dbg !1169
  %137 = load ptr, ptr %vf_token, align 8, !dbg !1169
  %tobool255 = icmp ne ptr %137, null, !dbg !1167
  br i1 %tobool255, label %if.then256, label %if.end264, !dbg !1170

if.then256:                                       ; preds = %if.end254
  %138 = load ptr, ptr %args, align 8, !dbg !1171
  %139 = load ptr, ptr %opts.addr, align 8, !dbg !1173
  %vf_token257 = getelementptr inbounds %struct.spdk_env_opts, ptr %139, i32 0, i32 16, !dbg !1174
  %140 = load ptr, ptr %vf_token257, align 8, !dbg !1174
  %call258 = call ptr (ptr, ...) @_sprintf_alloc(ptr noundef @.str.45, ptr noundef %140), !dbg !1175
  %call259 = call ptr @push_arg(ptr noundef %138, ptr noundef %argcount, ptr noundef %call258), !dbg !1176
  store ptr %call259, ptr %args, align 8, !dbg !1177
  %141 = load ptr, ptr %args, align 8, !dbg !1178
  %cmp260 = icmp eq ptr %141, null, !dbg !1180
  br i1 %cmp260, label %if.then262, label %if.end263, !dbg !1181

if.then262:                                       ; preds = %if.then256
  store i32 -1, ptr %retval, align 4, !dbg !1182
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !1182

if.end263:                                        ; preds = %if.then256
  br label %if.end264, !dbg !1184

if.end264:                                        ; preds = %if.end263, %if.end254
  %142 = load ptr, ptr %args, align 8, !dbg !1185
  store ptr %142, ptr @g_eal_cmdline, align 8, !dbg !1186
  %143 = load i32, ptr %argcount, align 4, !dbg !1187
  store i32 %143, ptr @g_eal_cmdline_argcount, align 4, !dbg !1188
  %144 = load i32, ptr %argcount, align 4, !dbg !1189
  store i32 %144, ptr %retval, align 4, !dbg !1190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup265, !dbg !1190

cleanup265:                                       ; preds = %if.end264, %if.then262, %if.then252, %if.then246, %if.then238, %if.then226, %if.then212, %if.then204, %if.then193, %if.then183, %if.then163, %if.then157, %if.then151, %cleanup, %if.then122, %if.then112, %if.then97, %if.then88, %if.then80, %if.then69, %if.then58, %if.then48, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %args) #14, !dbg !1191
  call void @llvm.lifetime.end.p0(i64 4, ptr %argcount) #14, !dbg !1191
  %145 = load i32, ptr %retval, align 4, !dbg !1191
  ret i32 %145, !dbg !1191
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @_sprintf_alloc(ptr noundef %format, ...) #0 !dbg !1192 {
entry:
  %retval = alloca ptr, align 8
  %format.addr = alloca ptr, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %args_copy = alloca [1 x %struct.__va_list_tag], align 16
  %buf = alloca ptr, align 8
  %bufsize = alloca i64, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %format, ptr %format.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !1196, metadata !DIExpression()), !dbg !1214
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #14, !dbg !1215
  tail call void @llvm.dbg.declare(metadata ptr %args, metadata !1197, metadata !DIExpression()), !dbg !1216
  call void @llvm.lifetime.start.p0(i64 24, ptr %args_copy) #14, !dbg !1217
  tail call void @llvm.dbg.declare(metadata ptr %args_copy, metadata !1210, metadata !DIExpression()), !dbg !1218
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #14, !dbg !1219
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !1211, metadata !DIExpression()), !dbg !1220
  call void @llvm.lifetime.start.p0(i64 8, ptr %bufsize) #14, !dbg !1221
  tail call void @llvm.dbg.declare(metadata ptr %bufsize, metadata !1212, metadata !DIExpression()), !dbg !1222
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #14, !dbg !1223
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !1213, metadata !DIExpression()), !dbg !1224
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !1225
  call void @llvm.va_start.p0(ptr %arraydecay), !dbg !1225
  store i64 32, ptr %bufsize, align 8, !dbg !1226
  br label %while.cond, !dbg !1227

while.cond:                                       ; preds = %if.end13, %entry
  %0 = load i64, ptr %bufsize, align 8, !dbg !1228
  %cmp = icmp ule i64 %0, 1048576, !dbg !1229
  br i1 %cmp, label %while.body, label %while.end, !dbg !1227

while.body:                                       ; preds = %while.cond
  %1 = load i64, ptr %bufsize, align 8, !dbg !1230
  %call = call noalias ptr @malloc(i64 noundef %1) #17, !dbg !1232
  store ptr %call, ptr %buf, align 8, !dbg !1233
  %2 = load ptr, ptr %buf, align 8, !dbg !1234
  %cmp1 = icmp eq ptr %2, null, !dbg !1236
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1237

if.then:                                          ; preds = %while.body
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !1238
  call void @llvm.va_end.p0(ptr %arraydecay2), !dbg !1238
  store ptr null, ptr %retval, align 8, !dbg !1240
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1240

if.end:                                           ; preds = %while.body
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args_copy, i64 0, i64 0, !dbg !1241
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !1241
  call void @llvm.va_copy.p0(ptr %arraydecay3, ptr %arraydecay4), !dbg !1241
  %3 = load ptr, ptr %buf, align 8, !dbg !1242
  %4 = load i64, ptr %bufsize, align 8, !dbg !1243
  %5 = load ptr, ptr %format.addr, align 8, !dbg !1244
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args_copy, i64 0, i64 0, !dbg !1245
  %call6 = call i32 @vsnprintf.inline(ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %arraydecay5) #14, !dbg !1246
  store i32 %call6, ptr %rc, align 4, !dbg !1247
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args_copy, i64 0, i64 0, !dbg !1248
  call void @llvm.va_end.p0(ptr %arraydecay7), !dbg !1248
  %6 = load i32, ptr %rc, align 4, !dbg !1249
  %cmp8 = icmp sge i32 %6, 0, !dbg !1251
  br i1 %cmp8, label %land.lhs.true, label %if.end13, !dbg !1252

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, ptr %rc, align 4, !dbg !1253
  %conv = sext i32 %7 to i64, !dbg !1254
  %8 = load i64, ptr %bufsize, align 8, !dbg !1255
  %cmp9 = icmp ult i64 %conv, %8, !dbg !1256
  br i1 %cmp9, label %if.then11, label %if.end13, !dbg !1257

if.then11:                                        ; preds = %land.lhs.true
  %arraydecay12 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !1258
  call void @llvm.va_end.p0(ptr %arraydecay12), !dbg !1258
  %9 = load ptr, ptr %buf, align 8, !dbg !1260
  store ptr %9, ptr %retval, align 8, !dbg !1261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1261

if.end13:                                         ; preds = %land.lhs.true, %if.end
  %10 = load ptr, ptr %buf, align 8, !dbg !1262
  call void @free(ptr noundef %10) #14, !dbg !1263
  %11 = load i64, ptr %bufsize, align 8, !dbg !1264
  %mul = mul i64 %11, 2, !dbg !1264
  store i64 %mul, ptr %bufsize, align 8, !dbg !1264
  br label %while.cond, !dbg !1227, !llvm.loop !1265

while.end:                                        ; preds = %while.cond
  %arraydecay14 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !1267
  call void @llvm.va_end.p0(ptr %arraydecay14), !dbg !1267
  store ptr null, ptr %retval, align 8, !dbg !1268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1268

cleanup:                                          ; preds = %while.end, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #14, !dbg !1269
  call void @llvm.lifetime.end.p0(i64 8, ptr %bufsize) #14, !dbg !1269
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #14, !dbg !1269
  call void @llvm.lifetime.end.p0(i64 24, ptr %args_copy) #14, !dbg !1269
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #14, !dbg !1269
  %12 = load ptr, ptr %retval, align 8, !dbg !1269
  ret ptr %12, !dbg !1269
}

; Function Attrs: nounwind
declare !dbg !1270 void @free(ptr noundef) #5

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !1274 noalias ptr @calloc(i64 noundef, i64 noundef) #6

; Function Attrs: alwaysinline nobuiltin nounwind ssp uwtable
declare ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: alwaysinline nounwind
define internal ptr @memcpy.inline(ptr noalias nonnull %__dest, ptr noalias nonnull %__src, i64 %__len) #2 !dbg !1277 {
entry:
  %__dest.addr = alloca ptr, align 8
  %__src.addr = alloca ptr, align 8
  %__len.addr = alloca i64, align 8
  store ptr %__dest, ptr %__dest.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %__dest.addr, metadata !1285, metadata !DIExpression()), !dbg !1288
  store ptr %__src, ptr %__src.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %__src.addr, metadata !1286, metadata !DIExpression()), !dbg !1288
  store i64 %__len, ptr %__len.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %__len.addr, metadata !1287, metadata !DIExpression()), !dbg !1288
  %0 = load ptr, ptr %__dest.addr, align 8, !dbg !1289
  %1 = load ptr, ptr %__src.addr, align 8, !dbg !1290
  %2 = load i64, ptr %__len.addr, align 8, !dbg !1291
  %3 = load ptr, ptr %__dest.addr, align 8, !dbg !1292
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false), !dbg !1292
  %call = call ptr @__memcpy_chk(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %4) #14, !dbg !1293
  ret ptr %call, !dbg !1294
}

declare !dbg !1295 i32 @fflush(ptr noundef) #4

declare !dbg !1298 i32 @rte_eal_init(i32 noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #7

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1302 ptr @strstr(ptr noundef, ptr noundef) #8

; Function Attrs: nounwind ssp uwtable
define internal void @dpdk_cleanup() #0 !dbg !1306 {
entry:
  %0 = load i8, ptr @g_external_init, align 1, !dbg !1307, !range !358, !noundef !359
  %tobool = trunc i8 %0 to i1, !dbg !1307
  br i1 %tobool, label %if.end, label %if.then, !dbg !1309

if.then:                                          ; preds = %entry
  %call = call i32 @rte_eal_cleanup(), !dbg !1310
  br label %if.end, !dbg !1312

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1313
}

declare !dbg !1314 i32 @rte_eal_cleanup() #4

; Function Attrs: nounwind ssp uwtable
define void @spdk_env_fini() #0 !dbg !1315 {
entry:
  call void @spdk_env_dpdk_post_fini(), !dbg !1316
  ret void, !dbg !1317
}

; Function Attrs: nounwind ssp uwtable
define zeroext i1 @spdk_env_dpdk_external_init() #0 !dbg !1318 {
entry:
  %0 = load i8, ptr @g_external_init, align 1, !dbg !1321, !range !358, !noundef !359
  %tobool = trunc i8 %0 to i1, !dbg !1321
  ret i1 %tobool, !dbg !1322
}

; Function Attrs: nounwind
declare !dbg !1323 ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #7

; Function Attrs: nounwind ssp uwtable
define internal ptr @push_arg(ptr noundef %args, ptr noundef %argcount, ptr noundef %arg) #0 !dbg !1327 {
entry:
  %retval = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %argcount.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %args, ptr %args.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !1332, metadata !DIExpression()), !dbg !1336
  store ptr %argcount, ptr %argcount.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %argcount.addr, metadata !1333, metadata !DIExpression()), !dbg !1337
  store ptr %arg, ptr %arg.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !1334, metadata !DIExpression()), !dbg !1338
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !1339
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1335, metadata !DIExpression()), !dbg !1340
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !1341
  %cmp = icmp eq ptr %0, null, !dbg !1343
  br i1 %cmp, label %if.then, label %if.end, !dbg !1344

if.then:                                          ; preds = %entry
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.2, i32 noundef 133, ptr noundef @__func__.push_arg, ptr noundef @.str.46, ptr noundef @__func__.push_arg), !dbg !1345
  %1 = load ptr, ptr %args.addr, align 8, !dbg !1347
  %2 = load ptr, ptr %argcount.addr, align 8, !dbg !1348
  %3 = load i32, ptr %2, align 4, !dbg !1349
  call void @free_args(ptr noundef %1, i32 noundef %3), !dbg !1350
  store ptr null, ptr %retval, align 8, !dbg !1351
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1351

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %args.addr, align 8, !dbg !1352
  %5 = load ptr, ptr %argcount.addr, align 8, !dbg !1353
  %6 = load i32, ptr %5, align 4, !dbg !1354
  %add = add nsw i32 %6, 1, !dbg !1355
  %conv = sext i32 %add to i64, !dbg !1356
  %mul = mul i64 8, %conv, !dbg !1357
  %call = call ptr @realloc(ptr noundef %4, i64 noundef %mul) #18, !dbg !1358
  store ptr %call, ptr %tmp, align 8, !dbg !1359
  %7 = load ptr, ptr %tmp, align 8, !dbg !1360
  %cmp1 = icmp eq ptr %7, null, !dbg !1362
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !1363

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %arg.addr, align 8, !dbg !1364
  call void @free(ptr noundef %8) #14, !dbg !1366
  %9 = load ptr, ptr %args.addr, align 8, !dbg !1367
  %10 = load ptr, ptr %argcount.addr, align 8, !dbg !1368
  %11 = load i32, ptr %10, align 4, !dbg !1369
  call void @free_args(ptr noundef %9, i32 noundef %11), !dbg !1370
  store ptr null, ptr %retval, align 8, !dbg !1371
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1371

if.end4:                                          ; preds = %if.end
  %12 = load ptr, ptr %arg.addr, align 8, !dbg !1372
  %13 = load ptr, ptr %tmp, align 8, !dbg !1373
  %14 = load ptr, ptr %argcount.addr, align 8, !dbg !1374
  %15 = load i32, ptr %14, align 4, !dbg !1375
  %idxprom = sext i32 %15 to i64, !dbg !1373
  %arrayidx = getelementptr inbounds ptr, ptr %13, i64 %idxprom, !dbg !1373
  store ptr %12, ptr %arrayidx, align 8, !dbg !1376
  %16 = load ptr, ptr %argcount.addr, align 8, !dbg !1377
  %17 = load i32, ptr %16, align 4, !dbg !1378
  %inc = add nsw i32 %17, 1, !dbg !1378
  store i32 %inc, ptr %16, align 4, !dbg !1378
  %18 = load ptr, ptr %tmp, align 8, !dbg !1379
  store ptr %18, ptr %retval, align 8, !dbg !1380
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1380

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !1381
  %19 = load ptr, ptr %retval, align 8, !dbg !1381
  ret ptr %19, !dbg !1381
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1382 i64 @strlen(ptr noundef) #8

declare !dbg !1385 i32 @spdk_pci_addr_fmt(ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: nounwind
declare !dbg !1390 noalias ptr @strdup(ptr noundef) #5

; Function Attrs: nounwind
declare !dbg !1393 ptr @strtok(ptr noundef, ptr noundef) #5

declare !dbg !1397 i32 @rte_vfio_noiommu_is_enabled() #4

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_iommu_width() #0 !dbg !1399 {
entry:
  %width = alloca i32, align 4
  %glob_results = alloca %struct.glob_t, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %filename = alloca ptr, align 8
  %file = alloca ptr, align 8
  %cap_reg = alloca i64, align 8
  %mgaw = alloca i32, align 4
  %mgaw22 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %width) #14, !dbg !1489
  tail call void @llvm.dbg.declare(metadata ptr %width, metadata !1401, metadata !DIExpression()), !dbg !1490
  store i32 0, ptr %width, align 4, !dbg !1490
  call void @llvm.lifetime.start.p0(i64 72, ptr %glob_results) #14, !dbg !1491
  tail call void @llvm.dbg.declare(metadata ptr %glob_results, metadata !1402, metadata !DIExpression()), !dbg !1492
  call void @llvm.memset.p0.i64(ptr align 8 %glob_results, i8 0, i64 72, i1 false), !dbg !1492
  %call = call i32 @glob(ptr noundef @.str.47, i32 noundef 0, ptr noundef null, ptr noundef %glob_results) #14, !dbg !1493
  %call1 = call i32 @glob(ptr noundef @.str.48, i32 noundef 32, ptr noundef null, ptr noundef %glob_results) #14, !dbg !1494
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #14, !dbg !1495
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1474, metadata !DIExpression()), !dbg !1496
  store i64 0, ptr %i, align 8, !dbg !1496
  br label %for.cond, !dbg !1495

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !1497
  %gl_pathc = getelementptr inbounds %struct.glob_t, ptr %glob_results, i32 0, i32 0, !dbg !1498
  %1 = load i64, ptr %gl_pathc, align 8, !dbg !1498
  %cmp = icmp ult i64 %0, %1, !dbg !1499
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1500

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #14, !dbg !1501
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %filename) #14, !dbg !1502
  tail call void @llvm.dbg.declare(metadata ptr %filename, metadata !1476, metadata !DIExpression()), !dbg !1503
  %gl_pathv = getelementptr inbounds %struct.glob_t, ptr %glob_results, i32 0, i32 1, !dbg !1504
  %2 = load ptr, ptr %gl_pathv, align 8, !dbg !1504
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0, !dbg !1505
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1505
  store ptr %3, ptr %filename, align 8, !dbg !1503
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #14, !dbg !1506
  tail call void @llvm.dbg.declare(metadata ptr %file, metadata !1479, metadata !DIExpression()), !dbg !1507
  %4 = load ptr, ptr %filename, align 8, !dbg !1508
  %call2 = call noalias ptr @fopen(ptr noundef %4, ptr noundef @.str.49), !dbg !1509
  store ptr %call2, ptr %file, align 8, !dbg !1507
  call void @llvm.lifetime.start.p0(i64 8, ptr %cap_reg) #14, !dbg !1510
  tail call void @llvm.dbg.declare(metadata ptr %cap_reg, metadata !1480, metadata !DIExpression()), !dbg !1511
  store i64 0, ptr %cap_reg, align 8, !dbg !1511
  %5 = load ptr, ptr %file, align 8, !dbg !1512
  %cmp3 = icmp eq ptr %5, null, !dbg !1514
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1515

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1516

if.end:                                           ; preds = %for.body
  %6 = load ptr, ptr %file, align 8, !dbg !1518
  %call4 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %6, ptr noundef @.str.50, ptr noundef %cap_reg), !dbg !1519
  %cmp5 = icmp eq i32 %call4, 1, !dbg !1520
  br i1 %cmp5, label %if.then6, label %if.end39, !dbg !1521

if.then6:                                         ; preds = %if.end
  %7 = load ptr, ptr %filename, align 8, !dbg !1522
  %call7 = call ptr @strstr(ptr noundef %7, ptr noundef @.str.51) #16, !dbg !1523
  %cmp8 = icmp ne ptr %call7, null, !dbg !1524
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !1525

if.then9:                                         ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 4, ptr %mgaw) #14, !dbg !1526
  tail call void @llvm.dbg.declare(metadata ptr %mgaw, metadata !1481, metadata !DIExpression()), !dbg !1527
  %8 = load i64, ptr %cap_reg, align 8, !dbg !1528
  %and = and i64 %8, 4128768, !dbg !1529
  %shr = lshr i64 %and, 16, !dbg !1530
  %add = add i64 %shr, 1, !dbg !1531
  %conv = trunc i64 %add to i32, !dbg !1532
  store i32 %conv, ptr %mgaw, align 4, !dbg !1527
  %9 = load i32, ptr %width, align 4, !dbg !1533
  %cmp10 = icmp eq i32 %9, 0, !dbg !1535
  br i1 %cmp10, label %if.then16, label %lor.lhs.false, !dbg !1536

lor.lhs.false:                                    ; preds = %if.then9
  %10 = load i32, ptr %mgaw, align 4, !dbg !1537
  %cmp12 = icmp sgt i32 %10, 0, !dbg !1538
  br i1 %cmp12, label %land.lhs.true, label %if.end17, !dbg !1539

land.lhs.true:                                    ; preds = %lor.lhs.false
  %11 = load i32, ptr %mgaw, align 4, !dbg !1540
  %12 = load i32, ptr %width, align 4, !dbg !1541
  %cmp14 = icmp slt i32 %11, %12, !dbg !1542
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !1543

if.then16:                                        ; preds = %land.lhs.true, %if.then9
  %13 = load i32, ptr %mgaw, align 4, !dbg !1544
  store i32 %13, ptr %width, align 4, !dbg !1546
  br label %if.end17, !dbg !1547

if.end17:                                         ; preds = %if.then16, %land.lhs.true, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 4, ptr %mgaw) #14, !dbg !1548
  br label %if.end38, !dbg !1549

if.else:                                          ; preds = %if.then6
  %14 = load ptr, ptr %filename, align 8, !dbg !1550
  %call18 = call ptr @strstr(ptr noundef %14, ptr noundef @.str.52) #16, !dbg !1551
  %cmp19 = icmp ne ptr %call18, null, !dbg !1552
  br i1 %cmp19, label %if.then21, label %if.end37, !dbg !1553

if.then21:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %mgaw22) #14, !dbg !1554
  tail call void @llvm.dbg.declare(metadata ptr %mgaw22, metadata !1486, metadata !DIExpression()), !dbg !1555
  %15 = load i64, ptr %cap_reg, align 8, !dbg !1556
  %and23 = and i64 %15, 4161536, !dbg !1557
  %shr24 = lshr i64 %and23, 15, !dbg !1558
  %add25 = add i64 %shr24, 1, !dbg !1559
  %conv26 = trunc i64 %add25 to i32, !dbg !1560
  store i32 %conv26, ptr %mgaw22, align 4, !dbg !1555
  %16 = load i32, ptr %width, align 4, !dbg !1561
  %cmp27 = icmp eq i32 %16, 0, !dbg !1563
  br i1 %cmp27, label %if.then35, label %lor.lhs.false29, !dbg !1564

lor.lhs.false29:                                  ; preds = %if.then21
  %17 = load i32, ptr %mgaw22, align 4, !dbg !1565
  %cmp30 = icmp sgt i32 %17, 0, !dbg !1566
  br i1 %cmp30, label %land.lhs.true32, label %if.end36, !dbg !1567

land.lhs.true32:                                  ; preds = %lor.lhs.false29
  %18 = load i32, ptr %mgaw22, align 4, !dbg !1568
  %19 = load i32, ptr %width, align 4, !dbg !1569
  %cmp33 = icmp slt i32 %18, %19, !dbg !1570
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !1571

if.then35:                                        ; preds = %land.lhs.true32, %if.then21
  %20 = load i32, ptr %mgaw22, align 4, !dbg !1572
  store i32 %20, ptr %width, align 4, !dbg !1574
  br label %if.end36, !dbg !1575

if.end36:                                         ; preds = %if.then35, %land.lhs.true32, %lor.lhs.false29
  call void @llvm.lifetime.end.p0(i64 4, ptr %mgaw22) #14, !dbg !1576
  br label %if.end37, !dbg !1577

if.end37:                                         ; preds = %if.end36, %if.else
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end17
  br label %if.end39, !dbg !1578

if.end39:                                         ; preds = %if.end38, %if.end
  %21 = load ptr, ptr %file, align 8, !dbg !1579
  %call40 = call i32 @fclose(ptr noundef %21), !dbg !1580
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1581
  br label %cleanup, !dbg !1581

cleanup:                                          ; preds = %if.end39, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cap_reg) #14, !dbg !1581
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #14, !dbg !1581
  call void @llvm.lifetime.end.p0(i64 8, ptr %filename) #14, !dbg !1581
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1582

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %22 = load i64, ptr %i, align 8, !dbg !1583
  %inc = add i64 %22, 1, !dbg !1583
  store i64 %inc, ptr %i, align 8, !dbg !1583
  br label %for.cond, !dbg !1501, !llvm.loop !1584

for.end:                                          ; preds = %for.cond.cleanup
  call void @globfree(ptr noundef %glob_results) #14, !dbg !1586
  %23 = load i32, ptr %width, align 4, !dbg !1587
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr %glob_results) #14, !dbg !1588
  call void @llvm.lifetime.end.p0(i64 4, ptr %width) #14, !dbg !1588
  ret i32 %23, !dbg !1589

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare !dbg !1590 i32 @getpid() #5

; Function Attrs: nounwind allocsize(1)
declare !dbg !1595 ptr @realloc(ptr noundef, i64 noundef) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nounwind
declare !dbg !1598 i32 @glob(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #5

declare !dbg !1606 noalias ptr @fopen(ptr noundef, ptr noundef) #4

declare !dbg !1609 i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) #4

declare !dbg !1612 i32 @fclose(ptr noundef) #4

; Function Attrs: nounwind
declare !dbg !1613 void @globfree(ptr noundef) #5

; Function Attrs: nounwind allocsize(0)
declare !dbg !1616 noalias ptr @malloc(i64 noundef) #11

; Function Attrs: alwaysinline nobuiltin nounwind ssp uwtable
declare i32 @vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: alwaysinline
define internal i32 @vsnprintf.inline(ptr noalias %__s, i64 %__n, ptr noalias %__fmt, ptr %__ap) #12 !dbg !1619 {
entry:
  %__s.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__fmt.addr = alloca ptr, align 8
  %__ap.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %__s.addr, metadata !1624, metadata !DIExpression()), !dbg !1628
  store i64 %__n, ptr %__n.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %__n.addr, metadata !1625, metadata !DIExpression()), !dbg !1628
  store ptr %__fmt, ptr %__fmt.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %__fmt.addr, metadata !1626, metadata !DIExpression()), !dbg !1628
  store ptr %__ap, ptr %__ap.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %__ap.addr, metadata !1627, metadata !DIExpression()), !dbg !1628
  %0 = load ptr, ptr %__s.addr, align 8, !dbg !1629
  %1 = load i64, ptr %__n.addr, align 8, !dbg !1630
  %2 = load ptr, ptr %__s.addr, align 8, !dbg !1631
  %3 = call i64 @llvm.objectsize.i64.p0(ptr %2, i1 false, i1 true, i1 false), !dbg !1631
  %4 = load ptr, ptr %__fmt.addr, align 8, !dbg !1632
  %5 = load ptr, ptr %__ap.addr, align 8, !dbg !1633
  %call = call i32 @__vsnprintf_chk(ptr noundef %0, i64 noundef %1, i32 noundef 1, i64 noundef %3, ptr noundef %4, ptr noundef %5), !dbg !1634
  ret i32 %call, !dbg !1635
}

declare !dbg !1636 i32 @__vsnprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare !dbg !1639 ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #1 = { alwaysinline nobuiltin nounwind ssp uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #2 = { alwaysinline nounwind "min-legal-vector-width"="0" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #6 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #9 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #12 = { alwaysinline "min-legal-vector-width"="0" }
attributes #13 = { nocallback nofree nosync nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!40}
!llvm.module.flags = !{!241, !242, !243, !244, !245}
!llvm.ident = !{!246}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "init.c", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/env_dpdk", checksumkind: CSK_MD5, checksum: "99543219b7d9e87430c358de9aa5db58")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 4)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 489, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 7)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 489, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 192, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !{!22}
!22 = !DISubrange(count: 24)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 489, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 23)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 495, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 28)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 501, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 30)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "g_eal_cmdline", scope: !40, file: !2, line: 37, type: !239, isLocal: true, isDefinition: true)
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !41, retainedTypes: !52, globals: !57, splitDebugInlining: false, nameTableKind: None)
!41 = !{!42}
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spdk_log_level", file: !43, line: 52, baseType: !44, size: 32, elements: !45)
!43 = !DIFile(filename: "include/spdk/log.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "dc79cb206a5da324f77777fd137cb5d7")
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !{!46, !47, !48, !49, !50, !51}
!46 = !DIEnumerator(name: "SPDK_LOG_DISABLED", value: -1)
!47 = !DIEnumerator(name: "SPDK_LOG_ERROR", value: 0)
!48 = !DIEnumerator(name: "SPDK_LOG_WARN", value: 1)
!49 = !DIEnumerator(name: "SPDK_LOG_NOTICE", value: 2)
!50 = !DIEnumerator(name: "SPDK_LOG_INFO", value: 3)
!51 = !DIEnumerator(name: "SPDK_LOG_DEBUG", value: 4)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 29, baseType: !56)
!55 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "fe493b50b1dc220fe9bcfb4d648abdef")
!56 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!57 = !{!0, !7, !12, !17, !23, !28, !33, !58, !63, !68, !73, !78, !83, !85, !90, !93, !98, !100, !102, !107, !112, !38, !117, !119, !122, !127, !132, !134, !136, !138, !140, !142, !144, !149, !151, !154, !156, !158, !163, !165, !170, !172, !177, !179, !184, !186, !188, !190, !195, !200, !205, !210, !213, !215, !220, !225, !230, !232, !234}
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 532, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 44)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 536, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 38)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 536, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 31)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 543, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 35)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 549, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 112, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 14)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 549, type: !65, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 553, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 36)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !2, line: 555, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !21)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 561, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 6)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 568, type: !3, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !2, line: 577, type: !35, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 592, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 26)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 594, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 27)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !2, line: 600, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 13)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "g_eal_cmdline_argcount", scope: !40, file: !2, line: 38, type: !44, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "g_external_init", scope: !40, file: !2, line: 39, type: !121, isLocal: true, isDefinition: true)
!121 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !2, line: 215, type: !124, isLocal: true, isDefinition: true)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 3)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !2, line: 222, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 12)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !2, line: 243, type: !95, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !2, line: 254, type: !95, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !2, line: 263, type: !95, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !2, line: 271, type: !95, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !2, line: 279, type: !95, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 280, type: !114, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 288, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 9)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !2, line: 296, type: !25, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !2, line: 310, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !81)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 318, type: !153, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !2, line: 332, type: !95, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 333, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 8)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !2, line: 333, type: !160, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 344, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 22)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !2, line: 352, type: !30, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !2, line: 362, type: !174, isLocal: true, isDefinition: true)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 20)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !2, line: 369, type: !124, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !2, line: 386, type: !181, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 15)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !2, line: 395, type: !181, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !2, line: 430, type: !167, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !2, line: 441, type: !174, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !2, line: 448, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 25)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !2, line: 454, type: !197, isLocal: true, isDefinition: true)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 21)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !2, line: 461, type: !202, isLocal: true, isDefinition: true)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 17)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(scope: null, file: !2, line: 469, type: !207, isLocal: true, isDefinition: true)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 19)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !212, isLocal: true, isDefinition: true)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 72, elements: !147)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !25, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !2, line: 167, type: !217, isLocal: true, isDefinition: true)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 49)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !222, isLocal: true, isDefinition: true)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 37)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !227, isLocal: true, isDefinition: true)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 2)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !9, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !129, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !2, line: 187, type: !236, isLocal: true, isDefinition: true)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 10)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!241 = !{i32 7, !"Dwarf Version", i32 5}
!242 = !{i32 2, !"Debug Info Version", i32 3}
!243 = !{i32 1, !"wchar_size", i32 4}
!244 = !{i32 8, !"PIC Level", i32 2}
!245 = !{i32 7, !"uwtable", i32 2}
!246 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!247 = distinct !DISubprogram(name: "spdk_env_opts_init", scope: !2, file: !2, line: 92, type: !248, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !289)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !250}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_env_opts", file: !252, line: 47, size: 832, elements: !253)
!252 = !DIFile(filename: "include/spdk/env.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "c5bb62a61dfb30b3c4fe3f80f0d985bb")
!253 = !{!254, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !282, !283, !284, !287, !288}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !251, file: !252, line: 48, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "core_mask", scope: !251, file: !252, line: 49, baseType: !255, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "shm_id", scope: !251, file: !252, line: 50, baseType: !44, size: 32, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "mem_channel", scope: !251, file: !252, line: 51, baseType: !44, size: 32, offset: 160)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "main_core", scope: !251, file: !252, line: 52, baseType: !44, size: 32, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "mem_size", scope: !251, file: !252, line: 53, baseType: !44, size: 32, offset: 224)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "no_pci", scope: !251, file: !252, line: 54, baseType: !121, size: 8, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "hugepage_single_segments", scope: !251, file: !252, line: 55, baseType: !121, size: 8, offset: 264)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "unlink_hugepage", scope: !251, file: !252, line: 56, baseType: !121, size: 8, offset: 272)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "num_pci_addr", scope: !251, file: !252, line: 57, baseType: !54, size: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "hugedir", scope: !251, file: !252, line: 58, baseType: !255, size: 64, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "pci_blocked", scope: !251, file: !252, line: 59, baseType: !267, size: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_pci_addr", file: !252, line: 639, size: 64, elements: !269)
!269 = !{!270, !276, !280, !281}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !268, file: !252, line: 640, baseType: !271, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !272, line: 26, baseType: !273)
!272 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !274, line: 42, baseType: !275)
!274 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!275 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !268, file: !252, line: 641, baseType: !277, size: 8, offset: 32)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !272, line: 24, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !274, line: 38, baseType: !279)
!279 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !268, file: !252, line: 642, baseType: !277, size: 8, offset: 40)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !268, file: !252, line: 643, baseType: !277, size: 8, offset: 48)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "pci_allowed", scope: !251, file: !252, line: 60, baseType: !267, size: 64, offset: 512)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "iova_mode", scope: !251, file: !252, line: 61, baseType: !255, size: 64, offset: 576)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "base_virtaddr", scope: !251, file: !252, line: 62, baseType: !285, size: 64, offset: 640)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !272, line: 27, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !274, line: 45, baseType: !56)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "env_context", scope: !251, file: !252, line: 65, baseType: !53, size: 64, offset: 704)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "vf_token", scope: !251, file: !252, line: 66, baseType: !255, size: 64, offset: 768)
!289 = !{!290}
!290 = !DILocalVariable(name: "opts", arg: 1, scope: !247, file: !2, line: 92, type: !250)
!291 = !DILocation(line: 92, column: 42, scope: !247)
!292 = !DILocation(line: 94, column: 7, scope: !293)
!293 = distinct !DILexicalBlock(scope: !247, file: !2, line: 94, column: 6)
!294 = !DILocation(line: 94, column: 6, scope: !247)
!295 = !DILocation(line: 95, column: 3, scope: !296)
!296 = distinct !DILexicalBlock(scope: !293, file: !2, line: 94, column: 13)
!297 = !DILocation(line: 98, column: 9, scope: !247)
!298 = !DILocation(line: 98, column: 2, scope: !247)
!299 = !DILocation(line: 100, column: 2, scope: !247)
!300 = !DILocation(line: 100, column: 8, scope: !247)
!301 = !DILocation(line: 100, column: 13, scope: !247)
!302 = !DILocation(line: 101, column: 2, scope: !247)
!303 = !DILocation(line: 101, column: 8, scope: !247)
!304 = !DILocation(line: 101, column: 18, scope: !247)
!305 = !DILocation(line: 102, column: 2, scope: !247)
!306 = !DILocation(line: 102, column: 8, scope: !247)
!307 = !DILocation(line: 102, column: 15, scope: !247)
!308 = !DILocation(line: 103, column: 2, scope: !247)
!309 = !DILocation(line: 103, column: 8, scope: !247)
!310 = !DILocation(line: 103, column: 17, scope: !247)
!311 = !DILocation(line: 104, column: 2, scope: !247)
!312 = !DILocation(line: 104, column: 8, scope: !247)
!313 = !DILocation(line: 104, column: 18, scope: !247)
!314 = !DILocation(line: 105, column: 2, scope: !247)
!315 = !DILocation(line: 105, column: 8, scope: !247)
!316 = !DILocation(line: 105, column: 20, scope: !247)
!317 = !DILocation(line: 106, column: 2, scope: !247)
!318 = !DILocation(line: 106, column: 8, scope: !247)
!319 = !DILocation(line: 106, column: 22, scope: !247)
!320 = !DILocation(line: 107, column: 1, scope: !247)
!321 = distinct !DISubprogram(name: "memset", scope: !322, file: !322, line: 57, type: !323, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !327)
!322 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!323 = !DISubroutineType(types: !324)
!324 = !{!53, !53, !44, !325}
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !326, line: 70, baseType: !56)
!326 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!327 = !{!328, !329, !330}
!328 = !DILocalVariable(name: "__dest", arg: 1, scope: !321, file: !322, line: 57, type: !53)
!329 = !DILocalVariable(name: "__ch", arg: 2, scope: !321, file: !322, line: 57, type: !44)
!330 = !DILocalVariable(name: "__len", arg: 3, scope: !321, file: !322, line: 57, type: !325)
!331 = !DILocation(line: 57, column: 1, scope: !321)
!332 = !DILocation(line: 59, column: 34, scope: !321)
!333 = !DILocation(line: 59, column: 42, scope: !321)
!334 = !DILocation(line: 59, column: 48, scope: !321)
!335 = !DILocation(line: 60, column: 6, scope: !321)
!336 = !DILocation(line: 59, column: 10, scope: !321)
!337 = !DILocation(line: 59, column: 3, scope: !321)
!338 = distinct !DISubprogram(name: "spdk_env_dpdk_post_init", scope: !2, file: !2, line: 483, type: !339, scopeLine: 484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !341)
!339 = !DISubroutineType(types: !340)
!340 = !{!44, !121}
!341 = !{!342, !343}
!342 = !DILocalVariable(name: "legacy_mem", arg: 1, scope: !338, file: !2, line: 483, type: !121)
!343 = !DILocalVariable(name: "rc", scope: !338, file: !2, line: 485, type: !44)
!344 = !DILocation(line: 483, column: 30, scope: !338)
!345 = !DILocation(line: 485, column: 2, scope: !338)
!346 = !DILocation(line: 485, column: 6, scope: !338)
!347 = !DILocation(line: 487, column: 7, scope: !338)
!348 = !DILocation(line: 487, column: 5, scope: !338)
!349 = !DILocation(line: 488, column: 6, scope: !350)
!350 = distinct !DILexicalBlock(scope: !338, file: !2, line: 488, column: 6)
!351 = !DILocation(line: 488, column: 9, scope: !350)
!352 = !DILocation(line: 488, column: 6, scope: !338)
!353 = !DILocation(line: 489, column: 3, scope: !354)
!354 = distinct !DILexicalBlock(scope: !350, file: !2, line: 488, column: 14)
!355 = !DILocation(line: 490, column: 10, scope: !354)
!356 = !DILocation(line: 490, column: 3, scope: !354)
!357 = !DILocation(line: 493, column: 20, scope: !338)
!358 = !{i8 0, i8 2}
!359 = !{}
!360 = !DILocation(line: 493, column: 7, scope: !338)
!361 = !DILocation(line: 493, column: 5, scope: !338)
!362 = !DILocation(line: 494, column: 6, scope: !363)
!363 = distinct !DILexicalBlock(scope: !338, file: !2, line: 494, column: 6)
!364 = !DILocation(line: 494, column: 9, scope: !363)
!365 = !DILocation(line: 494, column: 6, scope: !338)
!366 = !DILocation(line: 495, column: 3, scope: !367)
!367 = distinct !DILexicalBlock(scope: !363, file: !2, line: 494, column: 14)
!368 = !DILocation(line: 496, column: 10, scope: !367)
!369 = !DILocation(line: 496, column: 3, scope: !367)
!370 = !DILocation(line: 499, column: 7, scope: !338)
!371 = !DILocation(line: 499, column: 5, scope: !338)
!372 = !DILocation(line: 500, column: 6, scope: !373)
!373 = distinct !DILexicalBlock(scope: !338, file: !2, line: 500, column: 6)
!374 = !DILocation(line: 500, column: 9, scope: !373)
!375 = !DILocation(line: 500, column: 6, scope: !338)
!376 = !DILocation(line: 501, column: 3, scope: !377)
!377 = distinct !DILexicalBlock(scope: !373, file: !2, line: 500, column: 14)
!378 = !DILocation(line: 502, column: 10, scope: !377)
!379 = !DILocation(line: 502, column: 3, scope: !377)
!380 = !DILocation(line: 505, column: 2, scope: !338)
!381 = !DILocation(line: 506, column: 1, scope: !338)
!382 = !DISubprogram(name: "pci_env_init", scope: !383, file: !383, line: 30, type: !384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!383 = !DIFile(filename: "./env_internal.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/lib/env_dpdk", checksumkind: CSK_MD5, checksum: "63de6607fdba160cc841571104936d30")
!384 = !DISubroutineType(types: !385)
!385 = !{!44}
!386 = !DISubprogram(name: "spdk_log", scope: !43, file: !43, line: 156, type: !387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !42, !255, !389, !255, !255, null}
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!390 = !DISubprogram(name: "mem_map_init", scope: !383, file: !383, line: 33, type: !339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!391 = !DISubprogram(name: "vtophys_init", scope: !383, file: !383, line: 34, type: !384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!392 = distinct !DISubprogram(name: "spdk_env_dpdk_post_fini", scope: !2, file: !2, line: 509, type: !393, scopeLine: 510, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !40)
!393 = !DISubroutineType(types: !394)
!394 = !{null}
!395 = !DILocation(line: 511, column: 2, scope: !392)
!396 = !DILocation(line: 513, column: 12, scope: !392)
!397 = !DILocation(line: 513, column: 27, scope: !392)
!398 = !DILocation(line: 513, column: 2, scope: !392)
!399 = !DILocation(line: 514, column: 16, scope: !392)
!400 = !DILocation(line: 515, column: 25, scope: !392)
!401 = !DILocation(line: 516, column: 1, scope: !392)
!402 = !DISubprogram(name: "pci_env_fini", scope: !383, file: !383, line: 32, type: !393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!403 = distinct !DISubprogram(name: "free_args", scope: !2, file: !2, line: 110, type: !404, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !406)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !239, !44}
!406 = !{!407, !408, !409}
!407 = !DILocalVariable(name: "args", arg: 1, scope: !403, file: !2, line: 110, type: !239)
!408 = !DILocalVariable(name: "argcount", arg: 2, scope: !403, file: !2, line: 110, type: !44)
!409 = !DILocalVariable(name: "i", scope: !403, file: !2, line: 112, type: !44)
!410 = !DILocation(line: 110, column: 18, scope: !403)
!411 = !DILocation(line: 110, column: 28, scope: !403)
!412 = !DILocation(line: 112, column: 2, scope: !403)
!413 = !DILocation(line: 112, column: 6, scope: !403)
!414 = !DILocation(line: 114, column: 6, scope: !415)
!415 = distinct !DILexicalBlock(scope: !403, file: !2, line: 114, column: 6)
!416 = !DILocation(line: 114, column: 11, scope: !415)
!417 = !DILocation(line: 114, column: 6, scope: !403)
!418 = !DILocation(line: 115, column: 3, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !2, line: 114, column: 20)
!420 = !DILocation(line: 118, column: 9, scope: !421)
!421 = distinct !DILexicalBlock(scope: !403, file: !2, line: 118, column: 2)
!422 = !DILocation(line: 118, column: 7, scope: !421)
!423 = !DILocation(line: 118, column: 14, scope: !424)
!424 = distinct !DILexicalBlock(scope: !421, file: !2, line: 118, column: 2)
!425 = !DILocation(line: 118, column: 18, scope: !424)
!426 = !DILocation(line: 118, column: 16, scope: !424)
!427 = !DILocation(line: 118, column: 2, scope: !421)
!428 = !DILocation(line: 119, column: 8, scope: !429)
!429 = distinct !DILexicalBlock(scope: !424, file: !2, line: 118, column: 33)
!430 = !DILocation(line: 119, column: 13, scope: !429)
!431 = !DILocation(line: 119, column: 3, scope: !429)
!432 = !DILocation(line: 120, column: 2, scope: !429)
!433 = !DILocation(line: 118, column: 29, scope: !424)
!434 = !DILocation(line: 118, column: 2, scope: !424)
!435 = distinct !{!435, !427, !436}
!436 = !DILocation(line: 120, column: 2, scope: !421)
!437 = !DILocation(line: 122, column: 6, scope: !438)
!438 = distinct !DILexicalBlock(scope: !403, file: !2, line: 122, column: 6)
!439 = !DILocation(line: 122, column: 6, scope: !403)
!440 = !DILocation(line: 123, column: 8, scope: !441)
!441 = distinct !DILexicalBlock(scope: !438, file: !2, line: 122, column: 16)
!442 = !DILocation(line: 123, column: 3, scope: !441)
!443 = !DILocation(line: 124, column: 2, scope: !441)
!444 = !DILocation(line: 125, column: 1, scope: !403)
!445 = distinct !DISubprogram(name: "spdk_env_init", scope: !2, file: !2, line: 519, type: !446, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !450)
!446 = !DISubroutineType(types: !447)
!447 = !{!44, !448}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!450 = !{!451, !452, !453, !454, !455, !456, !457, !458}
!451 = !DILocalVariable(name: "opts", arg: 1, scope: !445, file: !2, line: 519, type: !448)
!452 = !DILocalVariable(name: "dpdk_args", scope: !445, file: !2, line: 521, type: !239)
!453 = !DILocalVariable(name: "args_print", scope: !445, file: !2, line: 522, type: !240)
!454 = !DILocalVariable(name: "args_tmp", scope: !445, file: !2, line: 522, type: !240)
!455 = !DILocalVariable(name: "i", scope: !445, file: !2, line: 523, type: !44)
!456 = !DILocalVariable(name: "rc", scope: !445, file: !2, line: 523, type: !44)
!457 = !DILocalVariable(name: "orig_optind", scope: !445, file: !2, line: 524, type: !44)
!458 = !DILocalVariable(name: "legacy_mem", scope: !445, file: !2, line: 525, type: !121)
!459 = !DILocation(line: 519, column: 43, scope: !445)
!460 = !DILocation(line: 521, column: 2, scope: !445)
!461 = !DILocation(line: 521, column: 9, scope: !445)
!462 = !DILocation(line: 522, column: 2, scope: !445)
!463 = !DILocation(line: 522, column: 8, scope: !445)
!464 = !DILocation(line: 522, column: 28, scope: !445)
!465 = !DILocation(line: 523, column: 2, scope: !445)
!466 = !DILocation(line: 523, column: 6, scope: !445)
!467 = !DILocation(line: 523, column: 9, scope: !445)
!468 = !DILocation(line: 524, column: 2, scope: !445)
!469 = !DILocation(line: 524, column: 6, scope: !445)
!470 = !DILocation(line: 525, column: 2, scope: !445)
!471 = !DILocation(line: 525, column: 7, scope: !445)
!472 = !DILocation(line: 530, column: 6, scope: !473)
!473 = distinct !DILexicalBlock(scope: !445, file: !2, line: 530, column: 6)
!474 = !DILocation(line: 530, column: 22, scope: !473)
!475 = !DILocation(line: 530, column: 6, scope: !445)
!476 = !DILocation(line: 531, column: 7, scope: !477)
!477 = distinct !DILexicalBlock(scope: !478, file: !2, line: 531, column: 7)
!478 = distinct !DILexicalBlock(scope: !473, file: !2, line: 530, column: 32)
!479 = !DILocation(line: 531, column: 12, scope: !477)
!480 = !DILocation(line: 531, column: 7, scope: !478)
!481 = !DILocation(line: 532, column: 4, scope: !482)
!482 = distinct !DILexicalBlock(scope: !477, file: !2, line: 531, column: 21)
!483 = !DILocation(line: 533, column: 4, scope: !482)
!484 = !DILocation(line: 536, column: 3, scope: !478)
!485 = !DILocation(line: 537, column: 3, scope: !478)
!486 = !DILocation(line: 539, column: 3, scope: !478)
!487 = !DILocation(line: 542, column: 6, scope: !488)
!488 = distinct !DILexicalBlock(scope: !445, file: !2, line: 542, column: 6)
!489 = !DILocation(line: 542, column: 11, scope: !488)
!490 = !DILocation(line: 542, column: 6, scope: !445)
!491 = !DILocation(line: 543, column: 3, scope: !492)
!492 = distinct !DILexicalBlock(scope: !488, file: !2, line: 542, column: 20)
!493 = !DILocation(line: 544, column: 3, scope: !492)
!494 = !DILocation(line: 547, column: 25, scope: !445)
!495 = !DILocation(line: 547, column: 7, scope: !445)
!496 = !DILocation(line: 547, column: 5, scope: !445)
!497 = !DILocation(line: 548, column: 6, scope: !498)
!498 = distinct !DILexicalBlock(scope: !445, file: !2, line: 548, column: 6)
!499 = !DILocation(line: 548, column: 9, scope: !498)
!500 = !DILocation(line: 548, column: 6, scope: !445)
!501 = !DILocation(line: 549, column: 3, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !2, line: 548, column: 14)
!503 = !DILocation(line: 550, column: 3, scope: !502)
!504 = !DILocation(line: 553, column: 2, scope: !445)
!505 = !DILocation(line: 555, column: 15, scope: !445)
!506 = !DILocation(line: 555, column: 13, scope: !445)
!507 = !DILocation(line: 556, column: 6, scope: !508)
!508 = distinct !DILexicalBlock(scope: !445, file: !2, line: 556, column: 6)
!509 = !DILocation(line: 556, column: 17, scope: !508)
!510 = !DILocation(line: 556, column: 6, scope: !445)
!511 = !DILocation(line: 557, column: 3, scope: !512)
!512 = distinct !DILexicalBlock(scope: !508, file: !2, line: 556, column: 26)
!513 = !DILocation(line: 559, column: 9, scope: !514)
!514 = distinct !DILexicalBlock(scope: !445, file: !2, line: 559, column: 2)
!515 = !DILocation(line: 559, column: 7, scope: !514)
!516 = !DILocation(line: 559, column: 14, scope: !517)
!517 = distinct !DILexicalBlock(scope: !514, file: !2, line: 559, column: 2)
!518 = !DILocation(line: 559, column: 18, scope: !517)
!519 = !DILocation(line: 559, column: 16, scope: !517)
!520 = !DILocation(line: 559, column: 2, scope: !514)
!521 = !DILocation(line: 560, column: 14, scope: !522)
!522 = distinct !DILexicalBlock(scope: !517, file: !2, line: 559, column: 47)
!523 = !DILocation(line: 560, column: 12, scope: !522)
!524 = !DILocation(line: 561, column: 40, scope: !522)
!525 = !DILocation(line: 561, column: 50, scope: !522)
!526 = !DILocation(line: 561, column: 64, scope: !522)
!527 = !DILocation(line: 561, column: 16, scope: !522)
!528 = !DILocation(line: 561, column: 14, scope: !522)
!529 = !DILocation(line: 562, column: 7, scope: !530)
!530 = distinct !DILexicalBlock(scope: !522, file: !2, line: 562, column: 7)
!531 = !DILocation(line: 562, column: 18, scope: !530)
!532 = !DILocation(line: 562, column: 7, scope: !522)
!533 = !DILocation(line: 563, column: 9, scope: !534)
!534 = distinct !DILexicalBlock(scope: !530, file: !2, line: 562, column: 27)
!535 = !DILocation(line: 563, column: 4, scope: !534)
!536 = !DILocation(line: 564, column: 4, scope: !534)
!537 = !DILocation(line: 566, column: 8, scope: !522)
!538 = !DILocation(line: 566, column: 3, scope: !522)
!539 = !DILocation(line: 567, column: 2, scope: !522)
!540 = !DILocation(line: 559, column: 43, scope: !517)
!541 = !DILocation(line: 559, column: 2, scope: !517)
!542 = distinct !{!542, !520, !543}
!543 = !DILocation(line: 567, column: 2, scope: !514)
!544 = !DILocation(line: 568, column: 2, scope: !445)
!545 = !DILocation(line: 569, column: 7, scope: !445)
!546 = !DILocation(line: 569, column: 2, scope: !445)
!547 = !DILocation(line: 575, column: 21, scope: !445)
!548 = !DILocation(line: 575, column: 14, scope: !445)
!549 = !DILocation(line: 575, column: 12, scope: !445)
!550 = !DILocation(line: 576, column: 6, scope: !551)
!551 = distinct !DILexicalBlock(scope: !445, file: !2, line: 576, column: 6)
!552 = !DILocation(line: 576, column: 16, scope: !551)
!553 = !DILocation(line: 576, column: 6, scope: !445)
!554 = !DILocation(line: 577, column: 3, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !2, line: 576, column: 25)
!556 = !DILocation(line: 578, column: 3, scope: !555)
!557 = !DILocation(line: 580, column: 9, scope: !445)
!558 = !DILocation(line: 580, column: 20, scope: !445)
!559 = !DILocation(line: 580, column: 52, scope: !445)
!560 = !DILocation(line: 580, column: 50, scope: !445)
!561 = !DILocation(line: 580, column: 2, scope: !445)
!562 = !DILocation(line: 582, column: 9, scope: !445)
!563 = !DILocation(line: 582, column: 2, scope: !445)
!564 = !DILocation(line: 583, column: 16, scope: !445)
!565 = !DILocation(line: 583, column: 14, scope: !445)
!566 = !DILocation(line: 584, column: 9, scope: !445)
!567 = !DILocation(line: 585, column: 20, scope: !445)
!568 = !DILocation(line: 585, column: 44, scope: !445)
!569 = !DILocation(line: 585, column: 7, scope: !445)
!570 = !DILocation(line: 585, column: 5, scope: !445)
!571 = !DILocation(line: 586, column: 11, scope: !445)
!572 = !DILocation(line: 586, column: 9, scope: !445)
!573 = !DILocation(line: 588, column: 7, scope: !445)
!574 = !DILocation(line: 588, column: 2, scope: !445)
!575 = !DILocation(line: 590, column: 6, scope: !576)
!576 = distinct !DILexicalBlock(scope: !445, file: !2, line: 590, column: 6)
!577 = !DILocation(line: 590, column: 9, scope: !576)
!578 = !DILocation(line: 590, column: 6, scope: !445)
!579 = !DILocation(line: 591, column: 7, scope: !580)
!580 = distinct !DILexicalBlock(scope: !581, file: !2, line: 591, column: 7)
!581 = distinct !DILexicalBlock(scope: !576, file: !2, line: 590, column: 14)
!582 = !DILocation(line: 591, column: 17, scope: !580)
!583 = !DILocation(line: 591, column: 7, scope: !581)
!584 = !DILocation(line: 592, column: 4, scope: !585)
!585 = distinct !DILexicalBlock(scope: !580, file: !2, line: 591, column: 30)
!586 = !DILocation(line: 593, column: 3, scope: !585)
!587 = !DILocation(line: 594, column: 4, scope: !588)
!588 = distinct !DILexicalBlock(scope: !580, file: !2, line: 593, column: 10)
!589 = !DILocation(line: 596, column: 11, scope: !581)
!590 = !DILocation(line: 596, column: 10, scope: !581)
!591 = !DILocation(line: 596, column: 3, scope: !581)
!592 = !DILocation(line: 599, column: 13, scope: !445)
!593 = !DILocation(line: 600, column: 6, scope: !594)
!594 = distinct !DILexicalBlock(scope: !445, file: !2, line: 600, column: 6)
!595 = !DILocation(line: 600, column: 12, scope: !594)
!596 = !DILocation(line: 600, column: 24, scope: !594)
!597 = !DILocation(line: 600, column: 34, scope: !594)
!598 = !DILocation(line: 600, column: 40, scope: !594)
!599 = !DILocation(line: 600, column: 27, scope: !594)
!600 = !DILocation(line: 600, column: 69, scope: !594)
!601 = !DILocation(line: 600, column: 6, scope: !445)
!602 = !DILocation(line: 601, column: 14, scope: !603)
!603 = distinct !DILexicalBlock(scope: !594, file: !2, line: 600, column: 78)
!604 = !DILocation(line: 602, column: 2, scope: !603)
!605 = !DILocation(line: 604, column: 31, scope: !445)
!606 = !DILocation(line: 604, column: 7, scope: !445)
!607 = !DILocation(line: 604, column: 5, scope: !445)
!608 = !DILocation(line: 605, column: 6, scope: !609)
!609 = distinct !DILexicalBlock(scope: !445, file: !2, line: 605, column: 6)
!610 = !DILocation(line: 605, column: 9, scope: !609)
!611 = !DILocation(line: 605, column: 6, scope: !445)
!612 = !DILocation(line: 606, column: 19, scope: !613)
!613 = distinct !DILexicalBlock(scope: !609, file: !2, line: 605, column: 15)
!614 = !DILocation(line: 607, column: 2, scope: !613)
!615 = !DILocation(line: 609, column: 9, scope: !445)
!616 = !DILocation(line: 609, column: 2, scope: !445)
!617 = !DILocation(line: 610, column: 1, scope: !445)
!618 = !DISubprogram(name: "__fprintf_chk", scope: !619, file: !619, line: 93, type: !620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!619 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!620 = !DISubroutineType(types: !621)
!621 = !{!44, !622, !44, !675, null}
!622 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !625, line: 7, baseType: !626)
!625 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !627, line: 49, size: 1728, elements: !628)
!627 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!628 = !{!629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !644, !646, !647, !648, !651, !653, !655, !659, !662, !664, !667, !670, !671, !672, !673, !674}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !626, file: !627, line: 51, baseType: !44, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !626, file: !627, line: 54, baseType: !240, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !626, file: !627, line: 55, baseType: !240, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !626, file: !627, line: 56, baseType: !240, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !626, file: !627, line: 57, baseType: !240, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !626, file: !627, line: 58, baseType: !240, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !626, file: !627, line: 59, baseType: !240, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !626, file: !627, line: 60, baseType: !240, size: 64, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !626, file: !627, line: 61, baseType: !240, size: 64, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !626, file: !627, line: 64, baseType: !240, size: 64, offset: 576)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !626, file: !627, line: 65, baseType: !240, size: 64, offset: 640)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !626, file: !627, line: 66, baseType: !240, size: 64, offset: 704)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !626, file: !627, line: 68, baseType: !642, size: 64, offset: 768)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !627, line: 36, flags: DIFlagFwdDecl)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !626, file: !627, line: 70, baseType: !645, size: 64, offset: 832)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !626, file: !627, line: 72, baseType: !44, size: 32, offset: 896)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !626, file: !627, line: 73, baseType: !44, size: 32, offset: 928)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !626, file: !627, line: 74, baseType: !649, size: 64, offset: 960)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !274, line: 152, baseType: !650)
!650 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !626, file: !627, line: 77, baseType: !652, size: 16, offset: 1024)
!652 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !626, file: !627, line: 78, baseType: !654, size: 8, offset: 1040)
!654 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !626, file: !627, line: 79, baseType: !656, size: 8, offset: 1048)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 1)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !626, file: !627, line: 81, baseType: !660, size: 64, offset: 1088)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !627, line: 43, baseType: null)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !626, file: !627, line: 89, baseType: !663, size: 64, offset: 1152)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !274, line: 153, baseType: !650)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !626, file: !627, line: 91, baseType: !665, size: 64, offset: 1216)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !627, line: 37, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !626, file: !627, line: 92, baseType: !668, size: 64, offset: 1280)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !627, line: 38, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !626, file: !627, line: 93, baseType: !645, size: 64, offset: 1344)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !626, file: !627, line: 94, baseType: !53, size: 64, offset: 1408)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !626, file: !627, line: 95, baseType: !325, size: 64, offset: 1472)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !626, file: !627, line: 96, baseType: !44, size: 32, offset: 1536)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !626, file: !627, line: 98, baseType: !174, size: 160, offset: 1568)
!675 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !255)
!676 = !DISubprogram(name: "__printf_chk", scope: !619, file: !619, line: 95, type: !677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!677 = !DISubroutineType(types: !678)
!678 = !{!44, !44, !675, null}
!679 = !DISubprogram(name: "rte_version", scope: !680, file: !680, line: 76, type: !681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!680 = !DIFile(filename: "dpdk/build/include/rte_version.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "e03efe2e88903648594e34bac4348e7d")
!681 = !DISubroutineType(types: !682)
!682 = !{!255}
!683 = !DISubprogram(name: "pci_env_reinit", scope: !383, file: !383, line: 31, type: !393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!684 = distinct !DISubprogram(name: "build_eal_cmdline", scope: !2, file: !2, line: 207, type: !446, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !685)
!685 = !{!686, !687, !688, !689, !693, !696, !699, !703, !704, !707}
!686 = !DILocalVariable(name: "opts", arg: 1, scope: !684, file: !2, line: 207, type: !448)
!687 = !DILocalVariable(name: "argcount", scope: !684, file: !2, line: 209, type: !44)
!688 = !DILocalVariable(name: "args", scope: !684, file: !2, line: 210, type: !239)
!689 = !DILocalVariable(name: "l_arg", scope: !690, file: !2, line: 243, type: !240)
!690 = distinct !DILexicalBlock(scope: !691, file: !2, line: 242, column: 40)
!691 = distinct !DILexicalBlock(scope: !692, file: !2, line: 242, column: 13)
!692 = distinct !DILexicalBlock(scope: !684, file: !2, line: 240, column: 6)
!693 = !DILocalVariable(name: "len", scope: !694, file: !2, line: 246, type: !44)
!694 = distinct !DILexicalBlock(scope: !695, file: !2, line: 245, column: 22)
!695 = distinct !DILexicalBlock(scope: !690, file: !2, line: 245, column: 7)
!696 = !DILocalVariable(name: "i", scope: !697, file: !2, line: 325, type: !54)
!697 = distinct !DILexicalBlock(scope: !698, file: !2, line: 324, column: 26)
!698 = distinct !DILexicalBlock(scope: !684, file: !2, line: 324, column: 6)
!699 = !DILocalVariable(name: "bdf", scope: !697, file: !2, line: 326, type: !700)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !701)
!701 = !{!702}
!702 = !DISubrange(count: 32)
!703 = !DILocalVariable(name: "pci_addr", scope: !697, file: !2, line: 327, type: !267)
!704 = !DILocalVariable(name: "ptr", scope: !705, file: !2, line: 368, type: !240)
!705 = distinct !DILexicalBlock(scope: !706, file: !2, line: 367, column: 25)
!706 = distinct !DILexicalBlock(scope: !684, file: !2, line: 367, column: 6)
!707 = !DILocalVariable(name: "tok", scope: !705, file: !2, line: 369, type: !240)
!708 = !DILocation(line: 207, column: 47, scope: !684)
!709 = !DILocation(line: 209, column: 2, scope: !684)
!710 = !DILocation(line: 209, column: 6, scope: !684)
!711 = !DILocation(line: 210, column: 2, scope: !684)
!712 = !DILocation(line: 210, column: 9, scope: !684)
!713 = !DILocation(line: 212, column: 7, scope: !684)
!714 = !DILocation(line: 215, column: 18, scope: !684)
!715 = !DILocation(line: 215, column: 56, scope: !684)
!716 = !DILocation(line: 215, column: 62, scope: !684)
!717 = !DILocation(line: 215, column: 35, scope: !684)
!718 = !DILocation(line: 215, column: 9, scope: !684)
!719 = !DILocation(line: 215, column: 7, scope: !684)
!720 = !DILocation(line: 216, column: 6, scope: !721)
!721 = distinct !DILexicalBlock(scope: !684, file: !2, line: 216, column: 6)
!722 = !DILocation(line: 216, column: 11, scope: !721)
!723 = !DILocation(line: 216, column: 6, scope: !684)
!724 = !DILocation(line: 217, column: 3, scope: !725)
!725 = distinct !DILexicalBlock(scope: !721, file: !2, line: 216, column: 20)
!726 = !DILocation(line: 221, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !684, file: !2, line: 221, column: 6)
!728 = !DILocation(line: 221, column: 12, scope: !727)
!729 = !DILocation(line: 221, column: 19, scope: !727)
!730 = !DILocation(line: 221, column: 6, scope: !684)
!731 = !DILocation(line: 222, column: 19, scope: !732)
!732 = distinct !DILexicalBlock(scope: !727, file: !2, line: 221, column: 24)
!733 = !DILocation(line: 222, column: 36, scope: !732)
!734 = !DILocation(line: 222, column: 10, scope: !732)
!735 = !DILocation(line: 222, column: 8, scope: !732)
!736 = !DILocation(line: 223, column: 7, scope: !737)
!737 = distinct !DILexicalBlock(scope: !732, file: !2, line: 223, column: 7)
!738 = !DILocation(line: 223, column: 12, scope: !737)
!739 = !DILocation(line: 223, column: 7, scope: !732)
!740 = !DILocation(line: 224, column: 4, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !2, line: 223, column: 21)
!742 = !DILocation(line: 226, column: 2, scope: !732)
!743 = !DILocation(line: 240, column: 6, scope: !692)
!744 = !DILocation(line: 240, column: 12, scope: !692)
!745 = !DILocation(line: 240, column: 25, scope: !692)
!746 = !DILocation(line: 240, column: 6, scope: !684)
!747 = !DILocation(line: 241, column: 19, scope: !748)
!748 = distinct !DILexicalBlock(scope: !692, file: !2, line: 240, column: 33)
!749 = !DILocation(line: 241, column: 57, scope: !748)
!750 = !DILocation(line: 241, column: 63, scope: !748)
!751 = !DILocation(line: 241, column: 36, scope: !748)
!752 = !DILocation(line: 241, column: 10, scope: !748)
!753 = !DILocation(line: 241, column: 8, scope: !748)
!754 = !DILocation(line: 242, column: 2, scope: !748)
!755 = !DILocation(line: 242, column: 13, scope: !691)
!756 = !DILocation(line: 242, column: 19, scope: !691)
!757 = !DILocation(line: 242, column: 32, scope: !691)
!758 = !DILocation(line: 242, column: 13, scope: !692)
!759 = !DILocation(line: 243, column: 3, scope: !690)
!760 = !DILocation(line: 243, column: 9, scope: !690)
!761 = !DILocation(line: 243, column: 41, scope: !690)
!762 = !DILocation(line: 243, column: 47, scope: !690)
!763 = !DILocation(line: 243, column: 57, scope: !690)
!764 = !DILocation(line: 243, column: 17, scope: !690)
!765 = !DILocation(line: 245, column: 7, scope: !695)
!766 = !DILocation(line: 245, column: 13, scope: !695)
!767 = !DILocation(line: 245, column: 7, scope: !690)
!768 = !DILocation(line: 246, column: 4, scope: !694)
!769 = !DILocation(line: 246, column: 8, scope: !694)
!770 = !DILocation(line: 246, column: 21, scope: !694)
!771 = !DILocation(line: 246, column: 14, scope: !694)
!772 = !DILocation(line: 248, column: 8, scope: !773)
!773 = distinct !DILexicalBlock(scope: !694, file: !2, line: 248, column: 8)
!774 = !DILocation(line: 248, column: 14, scope: !773)
!775 = !DILocation(line: 248, column: 18, scope: !773)
!776 = !DILocation(line: 248, column: 23, scope: !773)
!777 = !DILocation(line: 248, column: 8, scope: !694)
!778 = !DILocation(line: 249, column: 5, scope: !779)
!779 = distinct !DILexicalBlock(scope: !773, file: !2, line: 248, column: 31)
!780 = !DILocation(line: 249, column: 11, scope: !779)
!781 = !DILocation(line: 249, column: 15, scope: !779)
!782 = !DILocation(line: 249, column: 20, scope: !779)
!783 = !DILocation(line: 250, column: 4, scope: !779)
!784 = !DILocation(line: 251, column: 3, scope: !695)
!785 = !DILocation(line: 251, column: 3, scope: !694)
!786 = !DILocation(line: 252, column: 19, scope: !690)
!787 = !DILocation(line: 252, column: 36, scope: !690)
!788 = !DILocation(line: 252, column: 10, scope: !690)
!789 = !DILocation(line: 252, column: 8, scope: !690)
!790 = !DILocation(line: 253, column: 2, scope: !691)
!791 = !DILocation(line: 253, column: 2, scope: !690)
!792 = !DILocation(line: 254, column: 19, scope: !793)
!793 = distinct !DILexicalBlock(scope: !691, file: !2, line: 253, column: 9)
!794 = !DILocation(line: 254, column: 60, scope: !793)
!795 = !DILocation(line: 254, column: 66, scope: !793)
!796 = !DILocation(line: 254, column: 36, scope: !793)
!797 = !DILocation(line: 254, column: 10, scope: !793)
!798 = !DILocation(line: 254, column: 8, scope: !793)
!799 = !DILocation(line: 257, column: 6, scope: !800)
!800 = distinct !DILexicalBlock(scope: !684, file: !2, line: 257, column: 6)
!801 = !DILocation(line: 257, column: 11, scope: !800)
!802 = !DILocation(line: 257, column: 6, scope: !684)
!803 = !DILocation(line: 258, column: 3, scope: !804)
!804 = distinct !DILexicalBlock(scope: !800, file: !2, line: 257, column: 20)
!805 = !DILocation(line: 262, column: 6, scope: !806)
!806 = distinct !DILexicalBlock(scope: !684, file: !2, line: 262, column: 6)
!807 = !DILocation(line: 262, column: 12, scope: !806)
!808 = !DILocation(line: 262, column: 24, scope: !806)
!809 = !DILocation(line: 262, column: 6, scope: !684)
!810 = !DILocation(line: 263, column: 19, scope: !811)
!811 = distinct !DILexicalBlock(scope: !806, file: !2, line: 262, column: 29)
!812 = !DILocation(line: 263, column: 60, scope: !811)
!813 = !DILocation(line: 263, column: 66, scope: !811)
!814 = !DILocation(line: 263, column: 36, scope: !811)
!815 = !DILocation(line: 263, column: 10, scope: !811)
!816 = !DILocation(line: 263, column: 8, scope: !811)
!817 = !DILocation(line: 264, column: 7, scope: !818)
!818 = distinct !DILexicalBlock(scope: !811, file: !2, line: 264, column: 7)
!819 = !DILocation(line: 264, column: 12, scope: !818)
!820 = !DILocation(line: 264, column: 7, scope: !811)
!821 = !DILocation(line: 265, column: 4, scope: !822)
!822 = distinct !DILexicalBlock(scope: !818, file: !2, line: 264, column: 21)
!823 = !DILocation(line: 267, column: 2, scope: !811)
!824 = !DILocation(line: 270, column: 6, scope: !825)
!825 = distinct !DILexicalBlock(scope: !684, file: !2, line: 270, column: 6)
!826 = !DILocation(line: 270, column: 12, scope: !825)
!827 = !DILocation(line: 270, column: 21, scope: !825)
!828 = !DILocation(line: 270, column: 6, scope: !684)
!829 = !DILocation(line: 271, column: 19, scope: !830)
!830 = distinct !DILexicalBlock(scope: !825, file: !2, line: 270, column: 27)
!831 = !DILocation(line: 271, column: 60, scope: !830)
!832 = !DILocation(line: 271, column: 66, scope: !830)
!833 = !DILocation(line: 271, column: 36, scope: !830)
!834 = !DILocation(line: 271, column: 10, scope: !830)
!835 = !DILocation(line: 271, column: 8, scope: !830)
!836 = !DILocation(line: 272, column: 7, scope: !837)
!837 = distinct !DILexicalBlock(scope: !830, file: !2, line: 272, column: 7)
!838 = !DILocation(line: 272, column: 12, scope: !837)
!839 = !DILocation(line: 272, column: 7, scope: !830)
!840 = !DILocation(line: 273, column: 4, scope: !841)
!841 = distinct !DILexicalBlock(scope: !837, file: !2, line: 272, column: 21)
!842 = !DILocation(line: 275, column: 2, scope: !830)
!843 = !DILocation(line: 278, column: 6, scope: !844)
!844 = distinct !DILexicalBlock(scope: !684, file: !2, line: 278, column: 6)
!845 = !DILocation(line: 278, column: 12, scope: !844)
!846 = !DILocation(line: 278, column: 22, scope: !844)
!847 = !DILocation(line: 278, column: 6, scope: !684)
!848 = !DILocation(line: 279, column: 19, scope: !849)
!849 = distinct !DILexicalBlock(scope: !844, file: !2, line: 278, column: 27)
!850 = !DILocation(line: 280, column: 27, scope: !849)
!851 = !DILocation(line: 280, column: 33, scope: !849)
!852 = !DILocation(line: 279, column: 36, scope: !849)
!853 = !DILocation(line: 279, column: 10, scope: !849)
!854 = !DILocation(line: 279, column: 8, scope: !849)
!855 = !DILocation(line: 281, column: 7, scope: !856)
!856 = distinct !DILexicalBlock(scope: !849, file: !2, line: 281, column: 7)
!857 = !DILocation(line: 281, column: 12, scope: !856)
!858 = !DILocation(line: 281, column: 7, scope: !849)
!859 = !DILocation(line: 282, column: 4, scope: !860)
!860 = distinct !DILexicalBlock(scope: !856, file: !2, line: 281, column: 21)
!861 = !DILocation(line: 284, column: 2, scope: !849)
!862 = !DILocation(line: 287, column: 6, scope: !863)
!863 = distinct !DILexicalBlock(scope: !684, file: !2, line: 287, column: 6)
!864 = !DILocation(line: 287, column: 12, scope: !863)
!865 = !DILocation(line: 287, column: 6, scope: !684)
!866 = !DILocation(line: 288, column: 19, scope: !867)
!867 = distinct !DILexicalBlock(scope: !863, file: !2, line: 287, column: 20)
!868 = !DILocation(line: 288, column: 36, scope: !867)
!869 = !DILocation(line: 288, column: 10, scope: !867)
!870 = !DILocation(line: 288, column: 8, scope: !867)
!871 = !DILocation(line: 289, column: 7, scope: !872)
!872 = distinct !DILexicalBlock(scope: !867, file: !2, line: 289, column: 7)
!873 = !DILocation(line: 289, column: 12, scope: !872)
!874 = !DILocation(line: 289, column: 7, scope: !867)
!875 = !DILocation(line: 290, column: 4, scope: !876)
!876 = distinct !DILexicalBlock(scope: !872, file: !2, line: 289, column: 21)
!877 = !DILocation(line: 292, column: 2, scope: !867)
!878 = !DILocation(line: 295, column: 6, scope: !879)
!879 = distinct !DILexicalBlock(scope: !684, file: !2, line: 295, column: 6)
!880 = !DILocation(line: 295, column: 12, scope: !879)
!881 = !DILocation(line: 295, column: 6, scope: !684)
!882 = !DILocation(line: 296, column: 19, scope: !883)
!883 = distinct !DILexicalBlock(scope: !879, file: !2, line: 295, column: 38)
!884 = !DILocation(line: 296, column: 36, scope: !883)
!885 = !DILocation(line: 296, column: 10, scope: !883)
!886 = !DILocation(line: 296, column: 8, scope: !883)
!887 = !DILocation(line: 297, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !883, file: !2, line: 297, column: 7)
!889 = !DILocation(line: 297, column: 12, scope: !888)
!890 = !DILocation(line: 297, column: 7, scope: !883)
!891 = !DILocation(line: 298, column: 4, scope: !892)
!892 = distinct !DILexicalBlock(scope: !888, file: !2, line: 297, column: 21)
!893 = !DILocation(line: 300, column: 2, scope: !883)
!894 = !DILocation(line: 308, column: 6, scope: !895)
!895 = distinct !DILexicalBlock(scope: !684, file: !2, line: 308, column: 6)
!896 = !DILocation(line: 308, column: 12, scope: !895)
!897 = !DILocation(line: 308, column: 28, scope: !895)
!898 = !DILocation(line: 309, column: 7, scope: !895)
!899 = !DILocation(line: 309, column: 13, scope: !895)
!900 = !DILocation(line: 309, column: 20, scope: !895)
!901 = !DILocation(line: 309, column: 24, scope: !895)
!902 = !DILocation(line: 309, column: 28, scope: !895)
!903 = !DILocation(line: 309, column: 34, scope: !895)
!904 = !DILocation(line: 308, column: 6, scope: !684)
!905 = !DILocation(line: 310, column: 19, scope: !906)
!906 = distinct !DILexicalBlock(scope: !895, file: !2, line: 309, column: 61)
!907 = !DILocation(line: 310, column: 36, scope: !906)
!908 = !DILocation(line: 310, column: 10, scope: !906)
!909 = !DILocation(line: 310, column: 8, scope: !906)
!910 = !DILocation(line: 311, column: 7, scope: !911)
!911 = distinct !DILexicalBlock(scope: !906, file: !2, line: 311, column: 7)
!912 = !DILocation(line: 311, column: 12, scope: !911)
!913 = !DILocation(line: 311, column: 7, scope: !906)
!914 = !DILocation(line: 312, column: 4, scope: !915)
!915 = distinct !DILexicalBlock(scope: !911, file: !2, line: 311, column: 21)
!916 = !DILocation(line: 314, column: 2, scope: !906)
!917 = !DILocation(line: 317, column: 6, scope: !918)
!918 = distinct !DILexicalBlock(scope: !684, file: !2, line: 317, column: 6)
!919 = !DILocation(line: 317, column: 12, scope: !918)
!920 = !DILocation(line: 317, column: 6, scope: !684)
!921 = !DILocation(line: 318, column: 19, scope: !922)
!922 = distinct !DILexicalBlock(scope: !918, file: !2, line: 317, column: 21)
!923 = !DILocation(line: 318, column: 68, scope: !922)
!924 = !DILocation(line: 318, column: 74, scope: !922)
!925 = !DILocation(line: 318, column: 36, scope: !922)
!926 = !DILocation(line: 318, column: 10, scope: !922)
!927 = !DILocation(line: 318, column: 8, scope: !922)
!928 = !DILocation(line: 319, column: 7, scope: !929)
!929 = distinct !DILexicalBlock(scope: !922, file: !2, line: 319, column: 7)
!930 = !DILocation(line: 319, column: 12, scope: !929)
!931 = !DILocation(line: 319, column: 7, scope: !922)
!932 = !DILocation(line: 320, column: 4, scope: !933)
!933 = distinct !DILexicalBlock(scope: !929, file: !2, line: 319, column: 21)
!934 = !DILocation(line: 322, column: 2, scope: !922)
!935 = !DILocation(line: 324, column: 6, scope: !698)
!936 = !DILocation(line: 324, column: 12, scope: !698)
!937 = !DILocation(line: 324, column: 6, scope: !684)
!938 = !DILocation(line: 325, column: 3, scope: !697)
!939 = !DILocation(line: 325, column: 10, scope: !697)
!940 = !DILocation(line: 326, column: 3, scope: !697)
!941 = !DILocation(line: 326, column: 8, scope: !697)
!942 = !DILocation(line: 327, column: 3, scope: !697)
!943 = !DILocation(line: 327, column: 25, scope: !697)
!944 = !DILocation(line: 328, column: 5, scope: !697)
!945 = !DILocation(line: 328, column: 11, scope: !697)
!946 = !DILocation(line: 328, column: 25, scope: !697)
!947 = !DILocation(line: 328, column: 31, scope: !697)
!948 = !DILocation(line: 328, column: 45, scope: !697)
!949 = !DILocation(line: 328, column: 51, scope: !697)
!950 = !DILocation(line: 330, column: 10, scope: !951)
!951 = distinct !DILexicalBlock(scope: !697, file: !2, line: 330, column: 3)
!952 = !DILocation(line: 330, column: 8, scope: !951)
!953 = !DILocation(line: 330, column: 15, scope: !954)
!954 = distinct !DILexicalBlock(scope: !951, file: !2, line: 330, column: 3)
!955 = !DILocation(line: 330, column: 19, scope: !954)
!956 = !DILocation(line: 330, column: 25, scope: !954)
!957 = !DILocation(line: 330, column: 17, scope: !954)
!958 = !DILocation(line: 330, column: 3, scope: !951)
!959 = !DILocation(line: 331, column: 22, scope: !960)
!960 = distinct !DILexicalBlock(scope: !954, file: !2, line: 330, column: 44)
!961 = !DILocation(line: 331, column: 32, scope: !960)
!962 = !DILocation(line: 331, column: 41, scope: !960)
!963 = !DILocation(line: 331, column: 4, scope: !960)
!964 = !DILocation(line: 332, column: 20, scope: !960)
!965 = !DILocation(line: 333, column: 7, scope: !960)
!966 = !DILocation(line: 333, column: 13, scope: !960)
!967 = !DILocation(line: 334, column: 6, scope: !960)
!968 = !DILocation(line: 332, column: 37, scope: !960)
!969 = !DILocation(line: 332, column: 11, scope: !960)
!970 = !DILocation(line: 332, column: 9, scope: !960)
!971 = !DILocation(line: 335, column: 8, scope: !972)
!972 = distinct !DILexicalBlock(scope: !960, file: !2, line: 335, column: 8)
!973 = !DILocation(line: 335, column: 13, scope: !972)
!974 = !DILocation(line: 335, column: 8, scope: !960)
!975 = !DILocation(line: 336, column: 5, scope: !976)
!976 = distinct !DILexicalBlock(scope: !972, file: !2, line: 335, column: 22)
!977 = !DILocation(line: 338, column: 3, scope: !960)
!978 = !DILocation(line: 330, column: 40, scope: !954)
!979 = !DILocation(line: 330, column: 3, scope: !954)
!980 = distinct !{!980, !958, !981}
!981 = !DILocation(line: 338, column: 3, scope: !951)
!982 = !DILocation(line: 339, column: 2, scope: !698)
!983 = !DILocation(line: 339, column: 2, scope: !697)
!984 = !DILocation(line: 344, column: 18, scope: !684)
!985 = !DILocation(line: 344, column: 35, scope: !684)
!986 = !DILocation(line: 344, column: 9, scope: !684)
!987 = !DILocation(line: 344, column: 7, scope: !684)
!988 = !DILocation(line: 345, column: 6, scope: !989)
!989 = distinct !DILexicalBlock(scope: !684, file: !2, line: 345, column: 6)
!990 = !DILocation(line: 345, column: 11, scope: !989)
!991 = !DILocation(line: 345, column: 6, scope: !684)
!992 = !DILocation(line: 346, column: 3, scope: !993)
!993 = distinct !DILexicalBlock(scope: !989, file: !2, line: 345, column: 20)
!994 = !DILocation(line: 352, column: 18, scope: !684)
!995 = !DILocation(line: 352, column: 35, scope: !684)
!996 = !DILocation(line: 352, column: 9, scope: !684)
!997 = !DILocation(line: 352, column: 7, scope: !684)
!998 = !DILocation(line: 353, column: 6, scope: !999)
!999 = distinct !DILexicalBlock(scope: !684, file: !2, line: 353, column: 6)
!1000 = !DILocation(line: 353, column: 11, scope: !999)
!1001 = !DILocation(line: 353, column: 6, scope: !684)
!1002 = !DILocation(line: 354, column: 3, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !999, file: !2, line: 353, column: 20)
!1004 = !DILocation(line: 362, column: 18, scope: !684)
!1005 = !DILocation(line: 362, column: 35, scope: !684)
!1006 = !DILocation(line: 362, column: 9, scope: !684)
!1007 = !DILocation(line: 362, column: 7, scope: !684)
!1008 = !DILocation(line: 363, column: 6, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !684, file: !2, line: 363, column: 6)
!1010 = !DILocation(line: 363, column: 11, scope: !1009)
!1011 = !DILocation(line: 363, column: 6, scope: !684)
!1012 = !DILocation(line: 364, column: 3, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 363, column: 20)
!1014 = !DILocation(line: 367, column: 6, scope: !706)
!1015 = !DILocation(line: 367, column: 12, scope: !706)
!1016 = !DILocation(line: 367, column: 6, scope: !684)
!1017 = !DILocation(line: 368, column: 3, scope: !705)
!1018 = !DILocation(line: 368, column: 9, scope: !705)
!1019 = !DILocation(line: 368, column: 22, scope: !705)
!1020 = !DILocation(line: 368, column: 28, scope: !705)
!1021 = !DILocation(line: 368, column: 15, scope: !705)
!1022 = !DILocation(line: 369, column: 3, scope: !705)
!1023 = !DILocation(line: 369, column: 9, scope: !705)
!1024 = !DILocation(line: 369, column: 22, scope: !705)
!1025 = !DILocation(line: 369, column: 15, scope: !705)
!1026 = !DILocation(line: 375, column: 3, scope: !705)
!1027 = !DILocation(line: 375, column: 10, scope: !705)
!1028 = !DILocation(line: 375, column: 14, scope: !705)
!1029 = !DILocation(line: 376, column: 20, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !705, file: !2, line: 375, column: 23)
!1031 = !DILocation(line: 376, column: 44, scope: !1030)
!1032 = !DILocation(line: 376, column: 37, scope: !1030)
!1033 = !DILocation(line: 376, column: 11, scope: !1030)
!1034 = !DILocation(line: 376, column: 9, scope: !1030)
!1035 = !DILocation(line: 377, column: 10, scope: !1030)
!1036 = !DILocation(line: 377, column: 8, scope: !1030)
!1037 = distinct !{!1037, !1026, !1038}
!1038 = !DILocation(line: 378, column: 3, scope: !705)
!1039 = !DILocation(line: 380, column: 8, scope: !705)
!1040 = !DILocation(line: 380, column: 3, scope: !705)
!1041 = !DILocation(line: 381, column: 2, scope: !706)
!1042 = !DILocation(line: 381, column: 2, scope: !705)
!1043 = !DILocation(line: 385, column: 6, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !684, file: !2, line: 385, column: 6)
!1045 = !DILocation(line: 385, column: 12, scope: !1044)
!1046 = !DILocation(line: 385, column: 6, scope: !684)
!1047 = !DILocation(line: 386, column: 19, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 385, column: 23)
!1049 = !DILocation(line: 386, column: 69, scope: !1048)
!1050 = !DILocation(line: 386, column: 75, scope: !1048)
!1051 = !DILocation(line: 386, column: 36, scope: !1048)
!1052 = !DILocation(line: 386, column: 10, scope: !1048)
!1053 = !DILocation(line: 386, column: 8, scope: !1048)
!1054 = !DILocation(line: 387, column: 7, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 387, column: 7)
!1056 = !DILocation(line: 387, column: 12, scope: !1055)
!1057 = !DILocation(line: 387, column: 7, scope: !1048)
!1058 = !DILocation(line: 388, column: 4, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 387, column: 21)
!1060 = !DILocation(line: 390, column: 2, scope: !1048)
!1061 = !DILocation(line: 394, column: 7, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 394, column: 7)
!1063 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 390, column: 9)
!1064 = !DILocation(line: 394, column: 7, scope: !1063)
!1065 = !DILocation(line: 395, column: 20, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 394, column: 38)
!1067 = !DILocation(line: 395, column: 37, scope: !1066)
!1068 = !DILocation(line: 395, column: 11, scope: !1066)
!1069 = !DILocation(line: 395, column: 9, scope: !1066)
!1070 = !DILocation(line: 396, column: 8, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 396, column: 8)
!1072 = !DILocation(line: 396, column: 13, scope: !1071)
!1073 = !DILocation(line: 396, column: 8, scope: !1066)
!1074 = !DILocation(line: 397, column: 5, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 396, column: 22)
!1076 = !DILocation(line: 399, column: 3, scope: !1066)
!1077 = !DILocation(line: 407, column: 7, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 407, column: 7)
!1079 = !DILocation(line: 407, column: 25, scope: !1078)
!1080 = !DILocation(line: 407, column: 7, scope: !1063)
!1081 = !DILocation(line: 408, column: 20, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 407, column: 57)
!1083 = !DILocation(line: 408, column: 37, scope: !1082)
!1084 = !DILocation(line: 408, column: 11, scope: !1082)
!1085 = !DILocation(line: 408, column: 9, scope: !1082)
!1086 = !DILocation(line: 409, column: 8, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 409, column: 8)
!1088 = !DILocation(line: 409, column: 13, scope: !1087)
!1089 = !DILocation(line: 409, column: 8, scope: !1082)
!1090 = !DILocation(line: 410, column: 5, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 409, column: 22)
!1092 = !DILocation(line: 412, column: 3, scope: !1082)
!1093 = !DILocation(line: 430, column: 18, scope: !684)
!1094 = !DILocation(line: 430, column: 80, scope: !684)
!1095 = !DILocation(line: 430, column: 86, scope: !684)
!1096 = !DILocation(line: 430, column: 35, scope: !684)
!1097 = !DILocation(line: 430, column: 9, scope: !684)
!1098 = !DILocation(line: 430, column: 7, scope: !684)
!1099 = !DILocation(line: 431, column: 6, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !684, file: !2, line: 431, column: 6)
!1101 = !DILocation(line: 431, column: 11, scope: !1100)
!1102 = !DILocation(line: 431, column: 6, scope: !684)
!1103 = !DILocation(line: 432, column: 3, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 431, column: 20)
!1105 = !DILocation(line: 440, column: 7, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !684, file: !2, line: 440, column: 6)
!1107 = !DILocation(line: 440, column: 13, scope: !1106)
!1108 = !DILocation(line: 440, column: 25, scope: !1106)
!1109 = !DILocation(line: 440, column: 35, scope: !1106)
!1110 = !DILocation(line: 440, column: 41, scope: !1106)
!1111 = !DILocation(line: 440, column: 28, scope: !1106)
!1112 = !DILocation(line: 440, column: 70, scope: !1106)
!1113 = !DILocation(line: 440, column: 6, scope: !684)
!1114 = !DILocation(line: 441, column: 19, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 440, column: 79)
!1116 = !DILocation(line: 441, column: 36, scope: !1115)
!1117 = !DILocation(line: 441, column: 10, scope: !1115)
!1118 = !DILocation(line: 441, column: 8, scope: !1115)
!1119 = !DILocation(line: 442, column: 7, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 442, column: 7)
!1121 = !DILocation(line: 442, column: 12, scope: !1120)
!1122 = !DILocation(line: 442, column: 7, scope: !1115)
!1123 = !DILocation(line: 443, column: 4, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 442, column: 21)
!1125 = !DILocation(line: 445, column: 2, scope: !1115)
!1126 = !DILocation(line: 447, column: 6, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !684, file: !2, line: 447, column: 6)
!1128 = !DILocation(line: 447, column: 12, scope: !1127)
!1129 = !DILocation(line: 447, column: 19, scope: !1127)
!1130 = !DILocation(line: 447, column: 6, scope: !684)
!1131 = !DILocation(line: 448, column: 19, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 447, column: 24)
!1133 = !DILocation(line: 449, column: 5, scope: !1132)
!1134 = !DILocation(line: 448, column: 36, scope: !1132)
!1135 = !DILocation(line: 448, column: 10, scope: !1132)
!1136 = !DILocation(line: 448, column: 8, scope: !1132)
!1137 = !DILocation(line: 450, column: 7, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 450, column: 7)
!1139 = !DILocation(line: 450, column: 12, scope: !1138)
!1140 = !DILocation(line: 450, column: 7, scope: !1132)
!1141 = !DILocation(line: 451, column: 4, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 450, column: 21)
!1143 = !DILocation(line: 453, column: 2, scope: !1132)
!1144 = !DILocation(line: 454, column: 19, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 453, column: 9)
!1146 = !DILocation(line: 455, column: 5, scope: !1145)
!1147 = !DILocation(line: 455, column: 11, scope: !1145)
!1148 = !DILocation(line: 454, column: 36, scope: !1145)
!1149 = !DILocation(line: 454, column: 10, scope: !1145)
!1150 = !DILocation(line: 454, column: 8, scope: !1145)
!1151 = !DILocation(line: 456, column: 7, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1145, file: !2, line: 456, column: 7)
!1153 = !DILocation(line: 456, column: 12, scope: !1152)
!1154 = !DILocation(line: 456, column: 7, scope: !1145)
!1155 = !DILocation(line: 457, column: 4, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1152, file: !2, line: 456, column: 21)
!1157 = !DILocation(line: 461, column: 19, scope: !1145)
!1158 = !DILocation(line: 461, column: 36, scope: !1145)
!1159 = !DILocation(line: 461, column: 10, scope: !1145)
!1160 = !DILocation(line: 461, column: 8, scope: !1145)
!1161 = !DILocation(line: 462, column: 7, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1145, file: !2, line: 462, column: 7)
!1163 = !DILocation(line: 462, column: 12, scope: !1162)
!1164 = !DILocation(line: 462, column: 7, scope: !1145)
!1165 = !DILocation(line: 463, column: 4, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 462, column: 21)
!1167 = !DILocation(line: 468, column: 6, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !684, file: !2, line: 468, column: 6)
!1169 = !DILocation(line: 468, column: 12, scope: !1168)
!1170 = !DILocation(line: 468, column: 6, scope: !684)
!1171 = !DILocation(line: 469, column: 19, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 468, column: 22)
!1173 = !DILocation(line: 470, column: 5, scope: !1172)
!1174 = !DILocation(line: 470, column: 11, scope: !1172)
!1175 = !DILocation(line: 469, column: 36, scope: !1172)
!1176 = !DILocation(line: 469, column: 10, scope: !1172)
!1177 = !DILocation(line: 469, column: 8, scope: !1172)
!1178 = !DILocation(line: 471, column: 7, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 471, column: 7)
!1180 = !DILocation(line: 471, column: 12, scope: !1179)
!1181 = !DILocation(line: 471, column: 7, scope: !1172)
!1182 = !DILocation(line: 472, column: 4, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 471, column: 21)
!1184 = !DILocation(line: 474, column: 2, scope: !1172)
!1185 = !DILocation(line: 477, column: 18, scope: !684)
!1186 = !DILocation(line: 477, column: 16, scope: !684)
!1187 = !DILocation(line: 478, column: 27, scope: !684)
!1188 = !DILocation(line: 478, column: 25, scope: !684)
!1189 = !DILocation(line: 479, column: 9, scope: !684)
!1190 = !DILocation(line: 479, column: 2, scope: !684)
!1191 = !DILocation(line: 480, column: 1, scope: !684)
!1192 = distinct !DISubprogram(name: "_sprintf_alloc", scope: !2, file: !2, line: 42, type: !1193, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1195)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!240, !255, null}
!1195 = !{!1196, !1197, !1210, !1211, !1212, !1213}
!1196 = !DILocalVariable(name: "format", arg: 1, scope: !1192, file: !2, line: 42, type: !255)
!1197 = !DILocalVariable(name: "args", scope: !1192, file: !2, line: 44, type: !1198)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1199, line: 52, baseType: !1200)
!1199 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1201, line: 35, baseType: !1202)
!1201 = !DIFile(filename: "/usr/lib/clang/18/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "95ff2da58c2c75d7c246cff7935ff18b")
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !1203)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1204, size: 192, elements: !657)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1205)
!1205 = !{!1206, !1207, !1208, !1209}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1204, file: !2, line: 44, baseType: !275, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1204, file: !2, line: 44, baseType: !275, size: 32, offset: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1204, file: !2, line: 44, baseType: !53, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1204, file: !2, line: 44, baseType: !53, size: 64, offset: 128)
!1210 = !DILocalVariable(name: "args_copy", scope: !1192, file: !2, line: 45, type: !1198)
!1211 = !DILocalVariable(name: "buf", scope: !1192, file: !2, line: 46, type: !240)
!1212 = !DILocalVariable(name: "bufsize", scope: !1192, file: !2, line: 47, type: !54)
!1213 = !DILocalVariable(name: "rc", scope: !1192, file: !2, line: 48, type: !44)
!1214 = !DILocation(line: 42, column: 28, scope: !1192)
!1215 = !DILocation(line: 44, column: 2, scope: !1192)
!1216 = !DILocation(line: 44, column: 10, scope: !1192)
!1217 = !DILocation(line: 45, column: 2, scope: !1192)
!1218 = !DILocation(line: 45, column: 10, scope: !1192)
!1219 = !DILocation(line: 46, column: 2, scope: !1192)
!1220 = !DILocation(line: 46, column: 8, scope: !1192)
!1221 = !DILocation(line: 47, column: 2, scope: !1192)
!1222 = !DILocation(line: 47, column: 9, scope: !1192)
!1223 = !DILocation(line: 48, column: 2, scope: !1192)
!1224 = !DILocation(line: 48, column: 6, scope: !1192)
!1225 = !DILocation(line: 50, column: 2, scope: !1192)
!1226 = !DILocation(line: 53, column: 10, scope: !1192)
!1227 = !DILocation(line: 56, column: 2, scope: !1192)
!1228 = !DILocation(line: 56, column: 9, scope: !1192)
!1229 = !DILocation(line: 56, column: 17, scope: !1192)
!1230 = !DILocation(line: 57, column: 16, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 56, column: 33)
!1232 = !DILocation(line: 57, column: 9, scope: !1231)
!1233 = !DILocation(line: 57, column: 7, scope: !1231)
!1234 = !DILocation(line: 58, column: 7, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1231, file: !2, line: 58, column: 7)
!1236 = !DILocation(line: 58, column: 11, scope: !1235)
!1237 = !DILocation(line: 58, column: 7, scope: !1231)
!1238 = !DILocation(line: 59, column: 4, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1235, file: !2, line: 58, column: 20)
!1240 = !DILocation(line: 60, column: 4, scope: !1239)
!1241 = !DILocation(line: 63, column: 3, scope: !1231)
!1242 = !DILocation(line: 64, column: 18, scope: !1231)
!1243 = !DILocation(line: 64, column: 23, scope: !1231)
!1244 = !DILocation(line: 64, column: 32, scope: !1231)
!1245 = !DILocation(line: 64, column: 40, scope: !1231)
!1246 = !DILocation(line: 64, column: 8, scope: !1231)
!1247 = !DILocation(line: 64, column: 6, scope: !1231)
!1248 = !DILocation(line: 65, column: 3, scope: !1231)
!1249 = !DILocation(line: 71, column: 7, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1231, file: !2, line: 71, column: 7)
!1251 = !DILocation(line: 71, column: 10, scope: !1250)
!1252 = !DILocation(line: 71, column: 15, scope: !1250)
!1253 = !DILocation(line: 71, column: 26, scope: !1250)
!1254 = !DILocation(line: 71, column: 18, scope: !1250)
!1255 = !DILocation(line: 71, column: 31, scope: !1250)
!1256 = !DILocation(line: 71, column: 29, scope: !1250)
!1257 = !DILocation(line: 71, column: 7, scope: !1231)
!1258 = !DILocation(line: 72, column: 4, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1250, file: !2, line: 71, column: 40)
!1260 = !DILocation(line: 73, column: 11, scope: !1259)
!1261 = !DILocation(line: 73, column: 4, scope: !1259)
!1262 = !DILocation(line: 83, column: 8, scope: !1231)
!1263 = !DILocation(line: 83, column: 3, scope: !1231)
!1264 = !DILocation(line: 84, column: 11, scope: !1231)
!1265 = distinct !{!1265, !1227, !1266}
!1266 = !DILocation(line: 85, column: 2, scope: !1192)
!1267 = !DILocation(line: 87, column: 2, scope: !1192)
!1268 = !DILocation(line: 88, column: 2, scope: !1192)
!1269 = !DILocation(line: 89, column: 1, scope: !1192)
!1270 = !DISubprogram(name: "free", scope: !1271, file: !1271, line: 555, type: !1272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1271 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !53}
!1274 = !DISubprogram(name: "calloc", scope: !1271, file: !1271, line: 543, type: !1275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!53, !325, !325}
!1277 = distinct !DISubprogram(name: "memcpy", scope: !322, file: !322, line: 26, type: !1278, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1284)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!53, !1280, !1281, !325}
!1280 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!1281 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1282)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1284 = !{!1285, !1286, !1287}
!1285 = !DILocalVariable(name: "__dest", arg: 1, scope: !1277, file: !322, line: 26, type: !1280)
!1286 = !DILocalVariable(name: "__src", arg: 2, scope: !1277, file: !322, line: 26, type: !1281)
!1287 = !DILocalVariable(name: "__len", arg: 3, scope: !1277, file: !322, line: 26, type: !325)
!1288 = !DILocation(line: 26, column: 1, scope: !1277)
!1289 = !DILocation(line: 29, column: 34, scope: !1277)
!1290 = !DILocation(line: 29, column: 42, scope: !1277)
!1291 = !DILocation(line: 29, column: 49, scope: !1277)
!1292 = !DILocation(line: 30, column: 6, scope: !1277)
!1293 = !DILocation(line: 29, column: 10, scope: !1277)
!1294 = !DILocation(line: 29, column: 3, scope: !1277)
!1295 = !DISubprogram(name: "fflush", scope: !1199, file: !1199, line: 230, type: !1296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!44, !623}
!1298 = !DISubprogram(name: "rte_eal_init", scope: !1299, file: !1299, line: 113, type: !1300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1299 = !DIFile(filename: "dpdk/build/include/rte_eal.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "4f1433b8a7b4f02c3ad7040436370c86")
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!44, !44, !239}
!1302 = !DISubprogram(name: "strstr", scope: !1303, file: !1303, line: 350, type: !1304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1303 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!240, !255, !255}
!1306 = distinct !DISubprogram(name: "dpdk_cleanup", scope: !2, file: !2, line: 618, type: !393, scopeLine: 619, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40)
!1307 = !DILocation(line: 621, column: 7, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1306, file: !2, line: 621, column: 6)
!1309 = !DILocation(line: 621, column: 6, scope: !1306)
!1310 = !DILocation(line: 622, column: 3, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 621, column: 24)
!1312 = !DILocation(line: 623, column: 2, scope: !1311)
!1313 = !DILocation(line: 624, column: 1, scope: !1306)
!1314 = !DISubprogram(name: "rte_eal_cleanup", scope: !1299, file: !1299, line: 127, type: !384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1315 = distinct !DISubprogram(name: "spdk_env_fini", scope: !2, file: !2, line: 627, type: !393, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !40)
!1316 = !DILocation(line: 629, column: 2, scope: !1315)
!1317 = !DILocation(line: 630, column: 1, scope: !1315)
!1318 = distinct !DISubprogram(name: "spdk_env_dpdk_external_init", scope: !2, file: !2, line: 633, type: !1319, scopeLine: 634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !40)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!121}
!1321 = !DILocation(line: 635, column: 9, scope: !1318)
!1322 = !DILocation(line: 635, column: 2, scope: !1318)
!1323 = !DISubprogram(name: "__builtin___memset_chk", scope: !1324, file: !1324, line: 32, type: !1325, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1324 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/strings_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "2c53309439f074d781ca95a346401d78")
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!53, !53, !44, !56, !56}
!1327 = distinct !DISubprogram(name: "push_arg", scope: !2, file: !2, line: 128, type: !1328, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1331)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!239, !239, !1330, !240}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!1331 = !{!1332, !1333, !1334, !1335}
!1332 = !DILocalVariable(name: "args", arg: 1, scope: !1327, file: !2, line: 128, type: !239)
!1333 = !DILocalVariable(name: "argcount", arg: 2, scope: !1327, file: !2, line: 128, type: !1330)
!1334 = !DILocalVariable(name: "arg", arg: 3, scope: !1327, file: !2, line: 128, type: !240)
!1335 = !DILocalVariable(name: "tmp", scope: !1327, file: !2, line: 130, type: !239)
!1336 = !DILocation(line: 128, column: 16, scope: !1327)
!1337 = !DILocation(line: 128, column: 29, scope: !1327)
!1338 = !DILocation(line: 128, column: 45, scope: !1327)
!1339 = !DILocation(line: 130, column: 2, scope: !1327)
!1340 = !DILocation(line: 130, column: 9, scope: !1327)
!1341 = !DILocation(line: 132, column: 6, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 132, column: 6)
!1343 = !DILocation(line: 132, column: 10, scope: !1342)
!1344 = !DILocation(line: 132, column: 6, scope: !1327)
!1345 = !DILocation(line: 133, column: 3, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !2, line: 132, column: 19)
!1347 = !DILocation(line: 134, column: 13, scope: !1346)
!1348 = !DILocation(line: 134, column: 20, scope: !1346)
!1349 = !DILocation(line: 134, column: 19, scope: !1346)
!1350 = !DILocation(line: 134, column: 3, scope: !1346)
!1351 = !DILocation(line: 135, column: 3, scope: !1346)
!1352 = !DILocation(line: 138, column: 16, scope: !1327)
!1353 = !DILocation(line: 138, column: 41, scope: !1327)
!1354 = !DILocation(line: 138, column: 40, scope: !1327)
!1355 = !DILocation(line: 138, column: 50, scope: !1327)
!1356 = !DILocation(line: 138, column: 39, scope: !1327)
!1357 = !DILocation(line: 138, column: 37, scope: !1327)
!1358 = !DILocation(line: 138, column: 8, scope: !1327)
!1359 = !DILocation(line: 138, column: 6, scope: !1327)
!1360 = !DILocation(line: 139, column: 6, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 139, column: 6)
!1362 = !DILocation(line: 139, column: 10, scope: !1361)
!1363 = !DILocation(line: 139, column: 6, scope: !1327)
!1364 = !DILocation(line: 140, column: 8, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 139, column: 19)
!1366 = !DILocation(line: 140, column: 3, scope: !1365)
!1367 = !DILocation(line: 141, column: 13, scope: !1365)
!1368 = !DILocation(line: 141, column: 20, scope: !1365)
!1369 = !DILocation(line: 141, column: 19, scope: !1365)
!1370 = !DILocation(line: 141, column: 3, scope: !1365)
!1371 = !DILocation(line: 142, column: 3, scope: !1365)
!1372 = !DILocation(line: 145, column: 19, scope: !1327)
!1373 = !DILocation(line: 145, column: 2, scope: !1327)
!1374 = !DILocation(line: 145, column: 7, scope: !1327)
!1375 = !DILocation(line: 145, column: 6, scope: !1327)
!1376 = !DILocation(line: 145, column: 17, scope: !1327)
!1377 = !DILocation(line: 146, column: 4, scope: !1327)
!1378 = !DILocation(line: 146, column: 13, scope: !1327)
!1379 = !DILocation(line: 148, column: 9, scope: !1327)
!1380 = !DILocation(line: 148, column: 2, scope: !1327)
!1381 = !DILocation(line: 149, column: 1, scope: !1327)
!1382 = !DISubprogram(name: "strlen", scope: !1303, file: !1303, line: 407, type: !1383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!56, !255}
!1385 = !DISubprogram(name: "spdk_pci_addr_fmt", scope: !252, file: !252, line: 1165, type: !1386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!44, !240, !54, !1388}
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!1390 = !DISubprogram(name: "strdup", scope: !1303, file: !1303, line: 187, type: !1391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!240, !255}
!1393 = !DISubprogram(name: "strtok", scope: !1303, file: !1303, line: 356, type: !1394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!240, !1396, !675}
!1396 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !240)
!1397 = !DISubprogram(name: "rte_vfio_noiommu_is_enabled", scope: !1398, file: !1398, line: 174, type: !384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1398 = !DIFile(filename: "dpdk/build/include/rte_vfio.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "eb457f83c880aa2032bbcda35e1676f8")
!1399 = distinct !DISubprogram(name: "get_iommu_width", scope: !2, file: !2, line: 161, type: !384, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1400)
!1400 = !{!1401, !1402, !1474, !1476, !1479, !1480, !1481, !1486}
!1401 = !DILocalVariable(name: "width", scope: !1399, file: !2, line: 163, type: !44)
!1402 = !DILocalVariable(name: "glob_results", scope: !1399, file: !2, line: 164, type: !1403)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "glob_t", file: !55, line: 105, baseType: !1404)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 82, size: 576, elements: !1405)
!1405 = !{!1406, !1408, !1409, !1410, !1411, !1413, !1430, !1434, !1473}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "gl_pathc", scope: !1404, file: !55, line: 84, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !55, line: 27, baseType: !56)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "gl_pathv", scope: !1404, file: !55, line: 85, baseType: !239, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "gl_offs", scope: !1404, file: !55, line: 86, baseType: !1407, size: 64, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "gl_flags", scope: !1404, file: !55, line: 87, baseType: !44, size: 32, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "gl_closedir", scope: !1404, file: !55, line: 91, baseType: !1412, size: 64, offset: 256)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "gl_readdir", scope: !1404, file: !55, line: 93, baseType: !1414, size: 64, offset: 320)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!1417, !53}
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !1419, line: 22, size: 2240, elements: !1420)
!1419 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "bc8b10a1ddd2747862e3ae7b91dbf464")
!1420 = !{!1421, !1423, !1424, !1425, !1426}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !1418, file: !1419, line: 25, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !274, line: 148, baseType: !56)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !1418, file: !1419, line: 26, baseType: !649, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !1418, file: !1419, line: 31, baseType: !652, size: 16, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !1418, file: !1419, line: 32, baseType: !279, size: 8, offset: 144)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1418, file: !1419, line: 33, baseType: !1427, size: 2048, offset: 152)
!1427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !1428)
!1428 = !{!1429}
!1429 = !DISubrange(count: 256)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "gl_opendir", scope: !1404, file: !55, line: 97, baseType: !1431, size: 64, offset: 384)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!53, !255}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "gl_lstat", scope: !1404, file: !55, line: 99, baseType: !1435, size: 64, offset: 448)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!44, !675, !1438}
!1438 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1439)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1441, line: 26, size: 1152, elements: !1442)
!1441 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1442 = !{!1443, !1445, !1446, !1448, !1450, !1452, !1454, !1455, !1456, !1457, !1459, !1461, !1469, !1470, !1471}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1440, file: !1441, line: 31, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !274, line: 145, baseType: !56)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1440, file: !1441, line: 36, baseType: !1422, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1440, file: !1441, line: 44, baseType: !1447, size: 64, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !274, line: 151, baseType: !56)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1440, file: !1441, line: 45, baseType: !1449, size: 32, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !274, line: 150, baseType: !275)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1440, file: !1441, line: 47, baseType: !1451, size: 32, offset: 224)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !274, line: 146, baseType: !275)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1440, file: !1441, line: 48, baseType: !1453, size: 32, offset: 256)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !274, line: 147, baseType: !275)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1440, file: !1441, line: 50, baseType: !44, size: 32, offset: 288)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1440, file: !1441, line: 52, baseType: !1444, size: 64, offset: 320)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1440, file: !1441, line: 57, baseType: !649, size: 64, offset: 384)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1440, file: !1441, line: 61, baseType: !1458, size: 64, offset: 448)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !274, line: 175, baseType: !650)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1440, file: !1441, line: 63, baseType: !1460, size: 64, offset: 512)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !274, line: 180, baseType: !650)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1440, file: !1441, line: 74, baseType: !1462, size: 128, offset: 576)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1463, line: 11, size: 128, elements: !1464)
!1463 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1464 = !{!1465, !1467}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1462, file: !1463, line: 16, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !274, line: 160, baseType: !650)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1462, file: !1463, line: 21, baseType: !1468, size: 64, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !274, line: 197, baseType: !650)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1440, file: !1441, line: 75, baseType: !1462, size: 128, offset: 704)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1440, file: !1441, line: 76, baseType: !1462, size: 128, offset: 832)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1440, file: !1441, line: 89, baseType: !1472, size: 192, offset: 960)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1468, size: 192, elements: !125)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "gl_stat", scope: !1404, file: !55, line: 100, baseType: !1435, size: 64, offset: 512)
!1474 = !DILocalVariable(name: "i", scope: !1475, file: !2, line: 170, type: !54)
!1475 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 170, column: 2)
!1476 = !DILocalVariable(name: "filename", scope: !1477, file: !2, line: 171, type: !255)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 170, column: 53)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !2, line: 170, column: 2)
!1479 = !DILocalVariable(name: "file", scope: !1477, file: !2, line: 172, type: !623)
!1480 = !DILocalVariable(name: "cap_reg", scope: !1477, file: !2, line: 173, type: !285)
!1481 = !DILocalVariable(name: "mgaw", scope: !1482, file: !2, line: 182, type: !44)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 180, column: 49)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 180, column: 8)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !2, line: 179, column: 48)
!1485 = distinct !DILexicalBlock(scope: !1477, file: !2, line: 179, column: 7)
!1486 = !DILocalVariable(name: "mgaw", scope: !1487, file: !2, line: 189, type: !44)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 187, column: 54)
!1488 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 187, column: 15)
!1489 = !DILocation(line: 163, column: 2, scope: !1399)
!1490 = !DILocation(line: 163, column: 6, scope: !1399)
!1491 = !DILocation(line: 164, column: 2, scope: !1399)
!1492 = !DILocation(line: 164, column: 9, scope: !1399)
!1493 = !DILocation(line: 167, column: 2, scope: !1399)
!1494 = !DILocation(line: 168, column: 2, scope: !1399)
!1495 = !DILocation(line: 170, column: 7, scope: !1475)
!1496 = !DILocation(line: 170, column: 14, scope: !1475)
!1497 = !DILocation(line: 170, column: 21, scope: !1478)
!1498 = !DILocation(line: 170, column: 38, scope: !1478)
!1499 = !DILocation(line: 170, column: 23, scope: !1478)
!1500 = !DILocation(line: 170, column: 2, scope: !1475)
!1501 = !DILocation(line: 170, column: 2, scope: !1478)
!1502 = !DILocation(line: 171, column: 3, scope: !1477)
!1503 = !DILocation(line: 171, column: 15, scope: !1477)
!1504 = !DILocation(line: 171, column: 39, scope: !1477)
!1505 = !DILocation(line: 171, column: 26, scope: !1477)
!1506 = !DILocation(line: 172, column: 3, scope: !1477)
!1507 = !DILocation(line: 172, column: 9, scope: !1477)
!1508 = !DILocation(line: 172, column: 22, scope: !1477)
!1509 = !DILocation(line: 172, column: 16, scope: !1477)
!1510 = !DILocation(line: 173, column: 3, scope: !1477)
!1511 = !DILocation(line: 173, column: 12, scope: !1477)
!1512 = !DILocation(line: 175, column: 7, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1477, file: !2, line: 175, column: 7)
!1514 = !DILocation(line: 175, column: 12, scope: !1513)
!1515 = !DILocation(line: 175, column: 7, scope: !1477)
!1516 = !DILocation(line: 176, column: 4, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1513, file: !2, line: 175, column: 21)
!1518 = !DILocation(line: 179, column: 14, scope: !1485)
!1519 = !DILocation(line: 179, column: 7, scope: !1485)
!1520 = !DILocation(line: 179, column: 42, scope: !1485)
!1521 = !DILocation(line: 179, column: 7, scope: !1477)
!1522 = !DILocation(line: 180, column: 15, scope: !1483)
!1523 = !DILocation(line: 180, column: 8, scope: !1483)
!1524 = !DILocation(line: 180, column: 40, scope: !1483)
!1525 = !DILocation(line: 180, column: 8, scope: !1484)
!1526 = !DILocation(line: 182, column: 5, scope: !1482)
!1527 = !DILocation(line: 182, column: 9, scope: !1482)
!1528 = !DILocation(line: 182, column: 18, scope: !1482)
!1529 = !DILocation(line: 182, column: 26, scope: !1482)
!1530 = !DILocation(line: 182, column: 47, scope: !1482)
!1531 = !DILocation(line: 182, column: 70, scope: !1482)
!1532 = !DILocation(line: 182, column: 16, scope: !1482)
!1533 = !DILocation(line: 184, column: 9, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1482, file: !2, line: 184, column: 9)
!1535 = !DILocation(line: 184, column: 15, scope: !1534)
!1536 = !DILocation(line: 184, column: 20, scope: !1534)
!1537 = !DILocation(line: 184, column: 24, scope: !1534)
!1538 = !DILocation(line: 184, column: 29, scope: !1534)
!1539 = !DILocation(line: 184, column: 33, scope: !1534)
!1540 = !DILocation(line: 184, column: 36, scope: !1534)
!1541 = !DILocation(line: 184, column: 43, scope: !1534)
!1542 = !DILocation(line: 184, column: 41, scope: !1534)
!1543 = !DILocation(line: 184, column: 9, scope: !1482)
!1544 = !DILocation(line: 185, column: 14, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1534, file: !2, line: 184, column: 51)
!1546 = !DILocation(line: 185, column: 12, scope: !1545)
!1547 = !DILocation(line: 186, column: 5, scope: !1545)
!1548 = !DILocation(line: 187, column: 4, scope: !1483)
!1549 = !DILocation(line: 187, column: 4, scope: !1482)
!1550 = !DILocation(line: 187, column: 22, scope: !1488)
!1551 = !DILocation(line: 187, column: 15, scope: !1488)
!1552 = !DILocation(line: 187, column: 45, scope: !1488)
!1553 = !DILocation(line: 187, column: 15, scope: !1483)
!1554 = !DILocation(line: 189, column: 5, scope: !1487)
!1555 = !DILocation(line: 189, column: 9, scope: !1487)
!1556 = !DILocation(line: 189, column: 18, scope: !1487)
!1557 = !DILocation(line: 189, column: 26, scope: !1487)
!1558 = !DILocation(line: 189, column: 52, scope: !1487)
!1559 = !DILocation(line: 189, column: 80, scope: !1487)
!1560 = !DILocation(line: 189, column: 16, scope: !1487)
!1561 = !DILocation(line: 191, column: 9, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 191, column: 9)
!1563 = !DILocation(line: 191, column: 15, scope: !1562)
!1564 = !DILocation(line: 191, column: 20, scope: !1562)
!1565 = !DILocation(line: 191, column: 24, scope: !1562)
!1566 = !DILocation(line: 191, column: 29, scope: !1562)
!1567 = !DILocation(line: 191, column: 33, scope: !1562)
!1568 = !DILocation(line: 191, column: 36, scope: !1562)
!1569 = !DILocation(line: 191, column: 43, scope: !1562)
!1570 = !DILocation(line: 191, column: 41, scope: !1562)
!1571 = !DILocation(line: 191, column: 9, scope: !1487)
!1572 = !DILocation(line: 192, column: 14, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1562, file: !2, line: 191, column: 51)
!1574 = !DILocation(line: 192, column: 12, scope: !1573)
!1575 = !DILocation(line: 193, column: 5, scope: !1573)
!1576 = !DILocation(line: 194, column: 4, scope: !1488)
!1577 = !DILocation(line: 194, column: 4, scope: !1487)
!1578 = !DILocation(line: 195, column: 3, scope: !1484)
!1579 = !DILocation(line: 197, column: 10, scope: !1477)
!1580 = !DILocation(line: 197, column: 3, scope: !1477)
!1581 = !DILocation(line: 198, column: 2, scope: !1478)
!1582 = !DILocation(line: 198, column: 2, scope: !1477)
!1583 = !DILocation(line: 170, column: 49, scope: !1478)
!1584 = distinct !{!1584, !1500, !1585}
!1585 = !DILocation(line: 198, column: 2, scope: !1475)
!1586 = !DILocation(line: 200, column: 2, scope: !1399)
!1587 = !DILocation(line: 201, column: 9, scope: !1399)
!1588 = !DILocation(line: 202, column: 1, scope: !1399)
!1589 = !DILocation(line: 201, column: 2, scope: !1399)
!1590 = !DISubprogram(name: "getpid", scope: !1591, file: !1591, line: 650, type: !1592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1591 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!1594}
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !274, line: 154, baseType: !44)
!1595 = !DISubprogram(name: "realloc", scope: !1271, file: !1271, line: 551, type: !1596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!53, !53, !325}
!1598 = !DISubprogram(name: "glob", scope: !55, file: !55, line: 146, type: !1599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!44, !675, !44, !1601, !1604}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!44, !255, !44}
!1604 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1605)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1606 = !DISubprogram(name: "fopen", scope: !1199, file: !1199, line: 258, type: !1607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!623, !675, !675}
!1609 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !1199, file: !1199, line: 434, type: !1610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!44, !622, !675, null}
!1612 = !DISubprogram(name: "fclose", scope: !1199, file: !1199, line: 178, type: !1296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1613 = !DISubprogram(name: "globfree", scope: !55, file: !55, line: 151, type: !1614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{null, !1605}
!1616 = !DISubprogram(name: "malloc", scope: !1271, file: !1271, line: 540, type: !1617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!53, !325}
!1619 = distinct !DISubprogram(name: "vsnprintf", scope: !619, file: !619, line: 82, type: !1620, scopeLine: 84, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1623)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!44, !1396, !325, !675, !1622}
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1623 = !{!1624, !1625, !1626, !1627}
!1624 = !DILocalVariable(name: "__s", arg: 1, scope: !1619, file: !619, line: 82, type: !1396)
!1625 = !DILocalVariable(name: "__n", arg: 2, scope: !1619, file: !619, line: 82, type: !325)
!1626 = !DILocalVariable(name: "__fmt", arg: 3, scope: !1619, file: !619, line: 82, type: !675)
!1627 = !DILocalVariable(name: "__ap", arg: 4, scope: !1619, file: !619, line: 82, type: !1622)
!1628 = !DILocation(line: 82, column: 1, scope: !1619)
!1629 = !DILocation(line: 85, column: 37, scope: !1619)
!1630 = !DILocation(line: 85, column: 42, scope: !1619)
!1631 = !DILocation(line: 86, column: 9, scope: !1619)
!1632 = !DILocation(line: 86, column: 32, scope: !1619)
!1633 = !DILocation(line: 86, column: 39, scope: !1619)
!1634 = !DILocation(line: 85, column: 10, scope: !1619)
!1635 = !DILocation(line: 85, column: 3, scope: !1619)
!1636 = !DISubprogram(name: "__builtin___vsnprintf_chk", scope: !619, file: !619, line: 85, type: !1637, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!44, !1396, !56, !44, !56, !675, !1622}
!1639 = !DISubprogram(name: "__builtin___memcpy_chk", scope: !322, file: !322, line: 29, type: !1640, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!53, !53, !1282, !56, !56}

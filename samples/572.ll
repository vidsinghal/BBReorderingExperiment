; ModuleID = 'samples/572.bc'
source_filename = "../lib/eal/linux/eal_vfio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_group_status = type { i32, i32 }
%struct.rte_spinlock_recursive_t = type { %struct.rte_spinlock_t, i32, i32 }
%struct.rte_spinlock_t = type { i32 }
%struct.vfio_config = type { i32, i32, i32, ptr, [64 x %struct.vfio_group], %struct.user_mem_maps }
%struct.vfio_group = type { i32, i32, i32 }
%struct.user_mem_maps = type { %struct.rte_spinlock_recursive_t, i32, [256 x %struct.user_mem_map] }
%struct.user_mem_map = type { i64, i64, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.vfio_iommu_type = type { i32, ptr, i8, ptr, ptr }
%struct.vfio_iommu_spapr_tce_remove = type { i32, i32, i64 }
%struct.vfio_iommu_spapr_tce_info = type { i32, i32, i32, i32, %struct.vfio_iommu_spapr_tce_ddw_info }
%struct.vfio_iommu_spapr_tce_ddw_info = type { i64, i32, i32 }
%struct.internal_config = type { i64, i32, i32, i32, %struct.hugepage_file_discipline, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i64], i32, [32 x i64], i64, i32, i32, i32, i32, i32, [16 x i8], ptr, ptr, ptr, i32, [3 x %struct.hugepage_info], i32, %struct.cpu_set_t, i32, i32, %struct.simd_bitwidth, i64 }
%struct.hugepage_file_discipline = type { i8, i8 }
%struct.hugepage_info = type { i64, [4096 x i8], [32 x i32], i32 }
%struct.cpu_set_t = type { [16 x i64] }
%struct.simd_bitwidth = type { i8, i16 }
%struct.rte_memseg_list = type { %union.anon.0, i64, i32, i32, i64, i32, i32, %struct.rte_fbarray }
%union.anon.0 = type { ptr }
%struct.rte_fbarray = type { [64 x i8], i32, i32, i32, ptr, %struct.rte_rwlock_t }
%struct.rte_rwlock_t = type { i32 }
%struct.rte_memseg = type { i64, %union.anon.1, i64, i64, i32, i32, i32, i32 }
%union.anon.1 = type { ptr }
%struct.rte_mp_msg = type { [64 x i8], i32, i32, [256 x i8], [8 x i32] }
%struct.rte_mp_reply = type { i32, i32, ptr }
%struct.vfio_mp_param = type { i32, i32, %union.anon }
%union.anon = type { i32 }
%struct.vfio_iommu_type1_dma_map = type { i32, i32, i64, i64, i64 }
%struct.vfio_iommu_type1_dma_unmap = type { i32, i32, i64, i64, [0 x i8] }
%struct.vfio_iommu_spapr_register_memory = type { i32, i32, i64, i64 }
%struct.vfio_iommu_spapr_tce_create = type { i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.spapr_size_walk_param = type { i64, i64, i8 }

@default_vfio_cfg = internal global ptr @vfio_cfgs, align 8
@.str = private unnamed_addr constant [29 x i8] c"EAL: Invalid VFIO group fd!\0A\00", align 1
@__const.rte_vfio_setup_device.group_status = private unnamed_addr constant %struct.vfio_group_status { i32 8, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"EAL: %s not managed by VFIO driver, skipping\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"EAL: %s cannot get VFIO group status, error %i (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [91 x i8] c"EAL: %s VFIO group is not viable! Not all devices in IOMMU group bound to VFIO or unbound\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"EAL: %s cannot add VFIO group to container, error %i (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"EAL: %s failed to select IOMMU type\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"EAL: %s DMA remapping failed, error %i (%s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"EAL: Couldn't map user memory for DMA: va: 0x%lx iova: 0x%lx len: 0x%lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"vfio_mem_event_clb\00", align 1
@per_lcore__rte_errno = external thread_local global i32, align 4
@.str.9 = private unnamed_addr constant [55 x i8] c"EAL: Could not install memory event callback for VFIO\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"EAL: Memory event callbacks not supported\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"EAL: Installed memory event callback for VFIO\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"EAL: Could not sync default VFIO container\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"EAL: Using IOMMU type %d (%s)\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"%s vf_token=%s\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"EAL: Getting a vfio_dev_fd for %s failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"EAL: %s cannot get device info, error %i (%s)\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"EAL: %s not managed by VFIO driver\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"EAL: rte_vfio_get_group_fd failed for %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"EAL: Error when closing vfio_dev_fd for %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"EAL: Error when closing vfio_group_fd for %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"EAL: Error when clearing group for %s\0A\00", align 1
@__const.rte_vfio_enable.lock = private unnamed_addr constant %struct.rte_spinlock_recursive_t { %struct.rte_spinlock_t zeroinitializer, i32 -1, i32 0 }, align 4
@vfio_cfgs = internal global [64 x %struct.vfio_config] zeroinitializer, align 16
@.str.22 = private unnamed_addr constant [30 x i8] c"EAL: Probing VFIO support...\0A\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"EAL: Could not get loaded module details!\0A\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"EAL: VFIO modules not loaded, skipping VFIO support...\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"EAL: VFIO support initialized\0A\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"EAL: VFIO support could not be initialized\0A\00", align 1
@__const.vfio_get_default_container_fd.ts = private unnamed_addr constant %struct.timespec { i64 5, i64 0 }, align 8
@.str.27 = private unnamed_addr constant [17 x i8] c"eal_vfio_mp_sync\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"EAL: Cannot request default VFIO container fd\0A\00", align 1
@iommu_types = internal constant [3 x %struct.vfio_iommu_type] [%struct.vfio_iommu_type { i32 1, ptr @.str.66, i8 0, ptr @vfio_type1_dma_mem_map, ptr @vfio_type1_dma_map }, %struct.vfio_iommu_type { i32 7, ptr @.str.67, i8 1, ptr @vfio_spapr_dma_mem_map, ptr @vfio_spapr_dma_map }, %struct.vfio_iommu_type { i32 8, ptr @.str.68, i8 1, ptr @vfio_noiommu_dma_mem_map, ptr @vfio_noiommu_dma_map }], align 16
@.str.29 = private unnamed_addr constant [51 x i8] c"EAL: Set IOMMU type %d (%s) failed, error %i (%s)\0A\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"EAL: Could not get IOMMU type, error %i (%s)\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"EAL: IOMMU type %d (%s) is %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"supported\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"not supported\00", align 1
@__const.rte_vfio_get_container_fd.ts = private unnamed_addr constant %struct.timespec { i64 5, i64 0 }, align 8
@.str.34 = private unnamed_addr constant [15 x i8] c"/dev/vfio/vfio\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"EAL: Cannot open VFIO container %s, error %i (%s)\0A\00", align 1
@.str.36 = private unnamed_addr constant [52 x i8] c"EAL: Could not get VFIO API version, error %i (%s)\0A\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"EAL: Unsupported VFIO API version!\0A\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"EAL: No supported IOMMU extensions found!\0A\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"EAL: Cannot request VFIO container fd\0A\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"%s/%s/iommu_group\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"EAL: %s cannot get IOMMU group\0A\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"EAL: %s error parsing IOMMU number!\0A\00", align 1
@.str.43 = private unnamed_addr constant [55 x i8] c"/sys/module/vfio/parameters/enable_unsafe_noiommu_mode\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"EAL: Cannot open VFIO noiommu file %i (%s)\0A\00", align 1
@.str.45 = private unnamed_addr constant [52 x i8] c"EAL: Unable to read from VFIO noiommu file %i (%s)\0A\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"EAL: Exceed max VFIO container limit\0A\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"EAL: Fail to create a new VFIO container\0A\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"EAL: Invalid VFIO container fd\0A\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"EAL: Specified VFIO group number not found\0A\00", align 1
@.str.50 = private unnamed_addr constant [62 x i8] c"EAL: Error when closing vfio_group_fd for iommu_group_num %d\0A\00", align 1
@spapr_dma_win_len = global i64 0, align 8
@spapr_dma_win_page_sz = global i64 0, align 8
@.str.51 = private unnamed_addr constant [45 x i8] c"EAL: Maximum number of VFIO groups reached!\0A\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"EAL: No VFIO group free slot found\0A\00", align 1
@.str.53 = private unnamed_addr constant [35 x i8] c"EAL: Failed to open VFIO group %d\0A\00", align 1
@__const.vfio_open_group_fd.ts = private unnamed_addr constant %struct.timespec { i64 5, i64 0 }, align 8
@.str.54 = private unnamed_addr constant [13 x i8] c"/dev/vfio/%u\00", align 1
@.str.55 = private unnamed_addr constant [25 x i8] c"EAL: Cannot open %s: %s\0A\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"/dev/vfio/noiommu-%u\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"EAL: Bad VFIO group fd\0A\00", align 1
@.str.58 = private unnamed_addr constant [35 x i8] c"EAL: Cannot request VFIO group fd\0A\00", align 1
@.str.59 = private unnamed_addr constant [34 x i8] c"EAL: Wrong VFIO group index (%d)\0A\00", align 1
@per_lcore__thread_id = external thread_local global i32, align 4
@.str.60 = private unnamed_addr constant [50 x i8] c"EAL: Memory segment at %p has bad IOVA, skipping\0A\00", align 1
@.str.61 = private unnamed_addr constant [35 x i8] c"EAL: VFIO support not initialized\0A\00", align 1
@.str.62 = private unnamed_addr constant [63 x i8] c"EAL: VFIO custom DMA region mapping not supported by IOMMU %s\0A\00", align 1
@__const.vfio_sync_default_container.ts = private unnamed_addr constant %struct.timespec { i64 5, i64 0 }, align 8
@.str.63 = private unnamed_addr constant [38 x i8] c"EAL: VFIO support is not initialized\0A\00", align 1
@.str.64 = private unnamed_addr constant [53 x i8] c"EAL: Could not get IOMMU type for default container\0A\00", align 1
@.str.65 = private unnamed_addr constant [40 x i8] c"EAL: Could not find IOMMU type id (%i)\0A\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"Type 1\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"sPAPR\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"No-IOMMU\00", align 1
@.str.69 = private unnamed_addr constant [48 x i8] c"EAL: Memory segment is already mapped, skipping\00", align 1
@.str.70 = private unnamed_addr constant [49 x i8] c"EAL: Cannot set up DMA remapping, error %i (%s)\0A\00", align 1
@.str.71 = private unnamed_addr constant [48 x i8] c"EAL: Cannot clear DMA remapping, error %i (%s)\0A\00", align 1
@.str.72 = private unnamed_addr constant [66 x i8] c"EAL: Unexpected size %lu of DMA remapping cleared instead of %lu\0A\00", align 1
@.str.73 = private unnamed_addr constant [24 x i8] c"EAL: Failed to map DMA\0A\00", align 1
@.str.74 = private unnamed_addr constant [26 x i8] c"EAL: Failed to unmap DMA\0A\00", align 1
@.str.75 = private unnamed_addr constant [41 x i8] c"EAL: DMA map attempt outside DMA window\0A\00", align 1
@.str.76 = private unnamed_addr constant [53 x i8] c"EAL: Cannot register vaddr for IOMMU, error %i (%s)\0A\00", align 1
@.str.77 = private unnamed_addr constant [48 x i8] c"EAL: Cannot map vaddr for IOMMU, error %i (%s)\0A\00", align 1
@.str.78 = private unnamed_addr constant [50 x i8] c"EAL: Cannot unmap vaddr for IOMMU, error %i (%s)\0A\00", align 1
@.str.79 = private unnamed_addr constant [55 x i8] c"EAL: Cannot unregister vaddr for IOMMU, error %i (%s)\0A\00", align 1
@.str.80 = private unnamed_addr constant [39 x i8] c"EAL: Could not create new DMA window!\0A\00", align 1
@__const.vfio_spapr_create_dma_window.remove = private unnamed_addr constant %struct.vfio_iommu_spapr_tce_remove { i32 16, i32 0, i64 0 }, align 8
@__const.vfio_spapr_create_dma_window.info = private unnamed_addr constant %struct.vfio_iommu_spapr_tce_info { i32 32, i32 0, i32 0, i32 0, %struct.vfio_iommu_spapr_tce_ddw_info zeroinitializer }, align 8
@.str.81 = private unnamed_addr constant [43 x i8] c"EAL: Cannot get IOMMU info, error %i (%s)\0A\00", align 1
@.str.82 = private unnamed_addr constant [50 x i8] c"EAL: Cannot create new DMA window, error %i (%s)\0A\00", align 1
@.str.83 = private unnamed_addr constant [71 x i8] c"EAL: Consider using a larger hugepage size if supported by the system\0A\00", align 1
@.str.84 = private unnamed_addr constant [47 x i8] c"EAL: Received unsupported start address 0x%lx\0A\00", align 1
@.str.85 = private unnamed_addr constant [53 x i8] c"EAL: Failed to walk memseg list for DMA window size\0A\00", align 1
@.str.86 = private unnamed_addr constant [82 x i8] c"EAL: Detected user managed external memory which may not be managed by the IOMMU\0A\00", align 1
@.str.87 = private unnamed_addr constant [39 x i8] c"EAL: Setting DMA window size to 0x%lx\0A\00", align 1
@find_highest_mem_addr.proc_iomem = internal constant [12 x i8] c"/proc/iomem\00", align 1
@find_highest_mem_addr.str_sysram = internal constant [11 x i8] c"System RAM\00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.89 = private unnamed_addr constant [21 x i8] c"EAL: Cannot open %s\0A\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.92 = private unnamed_addr constant [39 x i8] c"EAL: Can't parse line \22%s\22 in file %s\0A\00", align 1
@.str.93 = private unnamed_addr constant [43 x i8] c"EAL: Found system RAM from 0x%lx to 0x%lx\0A\00", align 1
@.str.94 = private unnamed_addr constant [57 x i8] c"EAL: Failed to find valid \22System RAM\22 entry in file %s\0A\00", align 1
@.str.95 = private unnamed_addr constant [49 x i8] c"EAL: Highest VA address in memseg list is 0x%lx\0A\00", align 1
@.str.96 = private unnamed_addr constant [28 x i8] c"EAL: Unsupported IOVA mode\0A\00", align 1
@.str.97 = private unnamed_addr constant [38 x i8] c"EAL: No more space for user mem maps\0A\00", align 1
@.str.98 = private unnamed_addr constant [38 x i8] c"EAL: Couldn't map new region for DMA\0A\00", align 1
@.str.99 = private unnamed_addr constant [45 x i8] c"EAL: Couldn't find previously mapped region\0A\00", align 1
@.str.100 = private unnamed_addr constant [36 x i8] c"EAL: DMA partial unmap unsupported\0A\00", align 1
@.str.101 = private unnamed_addr constant [48 x i8] c"EAL: Not enough space to store partial mapping\0A\00", align 1
@.str.102 = private unnamed_addr constant [36 x i8] c"EAL: Couldn't unmap region for DMA\0A\00", align 1
@.str.103 = private unnamed_addr constant [57 x i8] c"EAL: DMA unmapping failed, but removing mappings anyway\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @rte_vfio_get_group_fd(i32 noundef %iommu_group_num) #0 {
entry:
  %iommu_group_num.addr = alloca i32, align 4
  %vfio_cfg = alloca ptr, align 8
  store i32 %iommu_group_num, ptr %iommu_group_num.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vfio_cfg) #10
  %0 = load i32, ptr %iommu_group_num.addr, align 4, !tbaa !4
  %call = call ptr @get_vfio_cfg_by_group_num(i32 noundef %0)
  store ptr %call, ptr %vfio_cfg, align 8, !tbaa !8
  %1 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %2, %cond.true ], [ %3, %cond.false ]
  store ptr %cond, ptr %vfio_cfg, align 8, !tbaa !8
  %4 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %5 = load i32, ptr %iommu_group_num.addr, align 4, !tbaa !4
  %call1 = call i32 @vfio_get_group_fd(ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr %vfio_cfg) #10
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal ptr @get_vfio_cfg_by_group_num(i32 noundef %iommu_group_num) #0 {
entry:
  %retval = alloca ptr, align 8
  %iommu_group_num.addr = alloca i32, align 4
  %vfio_cfg = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %iommu_group_num, ptr %iommu_group_num.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vfio_cfg) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !4
  %cmp = icmp slt i32 %0, 64
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [64 x %struct.vfio_config], ptr @vfio_cfgs, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %vfio_cfg, align 8, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !4
  %cmp2 = icmp slt i32 %2, 64
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_groups = getelementptr inbounds %struct.vfio_config, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %j, align 4, !tbaa !4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [64 x %struct.vfio_group], ptr %vfio_groups, i64 0, i64 %idxprom4
  %group_num = getelementptr inbounds %struct.vfio_group, ptr %arrayidx5, i32 0, i32 0
  %5 = load i32, ptr %group_num, align 4, !tbaa !10
  %6 = load i32, ptr %iommu_group_num.addr, align 4, !tbaa !4
  %cmp6 = icmp eq i32 %5, %6
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %7 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  store ptr %7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %j, align 4, !tbaa !4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4, !tbaa !4
  br label %for.cond1, !llvm.loop !12

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %9 = load i32, ptr %i, align 4, !tbaa !4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !14

for.end9:                                         ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %vfio_cfg) #10
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal i32 @vfio_get_group_fd(ptr noundef %vfio_cfg, i32 noundef %iommu_group_num) #0 {
entry:
  %retval = alloca i32, align 4
  %vfio_cfg.addr = alloca ptr, align 8
  %iommu_group_num.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %vfio_group_fd = alloca i32, align 4
  %cur_grp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vfio_cfg, ptr %vfio_cfg.addr, align 8, !tbaa !8
  store i32 %iommu_group_num, ptr %iommu_group_num.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfio_group_fd) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_grp) #10
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !4
  %cmp = icmp slt i32 %0, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %vfio_cfg.addr, align 8, !tbaa !8
  %vfio_groups = getelementptr inbounds %struct.vfio_config, ptr %1, i32 0, i32 4
  %2 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [64 x %struct.vfio_group], ptr %vfio_groups, i64 0, i64 %idxprom
  %group_num = getelementptr inbounds %struct.vfio_group, ptr %arrayidx, i32 0, i32 0
  %3 = load i32, ptr %group_num, align 4, !tbaa !10
  %4 = load i32, ptr %iommu_group_num.addr, align 4, !tbaa !4
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %vfio_cfg.addr, align 8, !tbaa !8
  %vfio_groups2 = getelementptr inbounds %struct.vfio_config, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [64 x %struct.vfio_group], ptr %vfio_groups2, i64 0, i64 %idxprom3
  %fd = getelementptr inbounds %struct.vfio_group, ptr %arrayidx4, i32 0, i32 1
  %7 = load i32, ptr %fd, align 4, !tbaa !15
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %vfio_cfg.addr, align 8, !tbaa !8
  %vfio_active_groups = getelementptr inbounds %struct.vfio_config, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %vfio_active_groups, align 8, !tbaa !17
  %cmp5 = icmp eq i32 %10, 64
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.end
  %call = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.51)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %for.end
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc21, %if.end7
  %11 = load i32, ptr %i, align 4, !tbaa !4
  %cmp9 = icmp slt i32 %11, 64
  br i1 %cmp9, label %for.body10, label %for.end23

for.body10:                                       ; preds = %for.cond8
  %12 = load ptr, ptr %vfio_cfg.addr, align 8, !tbaa !8
  %vfio_groups11 = getelementptr inbounds %struct.vfio_config, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [64 x %struct.vfio_group], ptr %vfio_groups11, i64 0, i64 %idxprom12
  %group_num14 = getelementptr inbounds %struct.vfio_group, ptr %arrayidx13, i32 0, i32 0
  %14 = load i32, ptr %group_num14, align 4, !tbaa !10
  %cmp15 = icmp eq i32 %14, -1
  br i1 %cmp15, label %if.then16, label %if.end20

if.then16:                                        ; preds = %for.body10
  %15 = load ptr, ptr %vfio_cfg.addr, align 8, !tbaa !8
  %vfio_groups17 = getelementptr inbounds %struct.vfio_config, ptr %15, i32 0, i32 4
  %16 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [64 x %struct.vfio_group], ptr %vfio_groups17, i64 0, i64 %idxprom18
  store ptr %arrayidx19, ptr %cur_grp, align 8, !tbaa !8
  br label %for.end23

if.end20:                                         ; preds = %for.body10
  br label %for.inc21

for.inc21:                                        ; preds = %if.end20
  %17 = load i32, ptr %i, align 4, !tbaa !4
  %inc22 = add nsw i32 %17, 1
  store i32 %inc22, ptr %i, align 4, !tbaa !4
  br label %for.cond8, !llvm.loop !22

for.end23:                                        ; preds = %if.then16, %for.cond8
  %18 = load i32, ptr %i, align 4, !tbaa !4
  %cmp24 = icmp eq i32 %18, 64
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %for.end23
  %call26 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.52)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end27:                                         ; preds = %for.end23
  %19 = load i32, ptr %iommu_group_num.addr, align 4, !tbaa !4
  %call28 = call i32 @vfio_open_group_fd(i32 noundef %19)
  store i32 %call28, ptr %vfio_group_fd, align 4, !tbaa !4
  %20 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %cmp29 = icmp slt i32 %20, 0
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end27
  %21 = load i32, ptr %iommu_group_num.addr, align 4, !tbaa !4
  %call31 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.53, i32 noundef %21)
  %22 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  store i32 %22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %23 = load i32, ptr %iommu_group_num.addr, align 4, !tbaa !4
  %24 = load ptr, ptr %cur_grp, align 8, !tbaa !8
  %group_num33 = getelementptr inbounds %struct.vfio_group, ptr %24, i32 0, i32 0
  store i32 %23, ptr %group_num33, align 4, !tbaa !10
  %25 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %26 = load ptr, ptr %cur_grp, align 8, !tbaa !8
  %fd34 = getelementptr inbounds %struct.vfio_group, ptr %26, i32 0, i32 1
  store i32 %25, ptr %fd34, align 4, !tbaa !15
  %27 = load ptr, ptr %vfio_cfg.addr, align 8, !tbaa !8
  %vfio_active_groups35 = getelementptr inbounds %struct.vfio_config, ptr %27, i32 0, i32 2
  %28 = load i32, ptr %vfio_active_groups35, align 8, !tbaa !17
  %inc36 = add nsw i32 %28, 1
  store i32 %inc36, ptr %vfio_active_groups35, align 8, !tbaa !17
  %29 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  store i32 %29, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then30, %if.then25, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_grp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfio_group_fd) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @rte_vfio_clear_group(i32 noundef %vfio_group_fd) #0 {
entry:
  %retval = alloca i32, align 4
  %vfio_group_fd.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %vfio_cfg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %vfio_group_fd, ptr %vfio_group_fd.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %vfio_cfg) #10
  %0 = load i32, ptr %vfio_group_fd.addr, align 4, !tbaa !4
  %call = call ptr @get_vfio_cfg_by_group_fd(i32 noundef %0)
  store ptr %call, ptr %vfio_cfg, align 8, !tbaa !8
  %1 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %vfio_group_fd.addr, align 4, !tbaa !4
  %call2 = call i32 @get_vfio_group_idx(i32 noundef %2)
  store i32 %call2, ptr %i, align 4, !tbaa !4
  %3 = load i32, ptr %i, align 4, !tbaa !4
  %cmp3 = icmp slt i32 %3, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_groups = getelementptr inbounds %struct.vfio_config, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [64 x %struct.vfio_group], ptr %vfio_groups, i64 0, i64 %idxprom
  %group_num = getelementptr inbounds %struct.vfio_group, ptr %arrayidx, i32 0, i32 0
  store i32 -1, ptr %group_num, align 4, !tbaa !10
  %6 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_groups6 = getelementptr inbounds %struct.vfio_config, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [64 x %struct.vfio_group], ptr %vfio_groups6, i64 0, i64 %idxprom7
  %fd = getelementptr inbounds %struct.vfio_group, ptr %arrayidx8, i32 0, i32 1
  store i32 -1, ptr %fd, align 4, !tbaa !15
  %8 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_groups9 = getelementptr inbounds %struct.vfio_config, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [64 x %struct.vfio_group], ptr %vfio_groups9, i64 0, i64 %idxprom10
  %devices = getelementptr inbounds %struct.vfio_group, ptr %arrayidx11, i32 0, i32 2
  store i32 0, ptr %devices, align 4, !tbaa !23
  %10 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_active_groups = getelementptr inbounds %struct.vfio_config, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %vfio_active_groups, align 8, !tbaa !17
  %dec = add nsw i32 %11, -1
  store i32 %dec, ptr %vfio_active_groups, align 8, !tbaa !17
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vfio_cfg) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal ptr @get_vfio_cfg_by_group_fd(i32 noundef %vfio_group_fd) #0 {
entry:
  %retval = alloca ptr, align 8
  %vfio_group_fd.addr = alloca i32, align 4
  %vfio_cfg = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %vfio_group_fd, ptr %vfio_group_fd.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vfio_cfg) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !4
  %cmp = icmp slt i32 %0, 64
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [64 x %struct.vfio_config], ptr @vfio_cfgs, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %vfio_cfg, align 8, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !4
  %cmp2 = icmp slt i32 %2, 64
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_groups = getelementptr inbounds %struct.vfio_config, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %j, align 4, !tbaa !4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [64 x %struct.vfio_group], ptr %vfio_groups, i64 0, i64 %idxprom4
  %fd = getelementptr inbounds %struct.vfio_group, ptr %arrayidx5, i32 0, i32 1
  %5 = load i32, ptr %fd, align 4, !tbaa !15
  %6 = load i32, ptr %vfio_group_fd.addr, align 4, !tbaa !4
  %cmp6 = icmp eq i32 %5, %6
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %7 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  store ptr %7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %j, align 4, !tbaa !4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4, !tbaa !4
  br label %for.cond1, !llvm.loop !24

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %9 = load i32, ptr %i, align 4, !tbaa !4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !25

for.end9:                                         ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %vfio_cfg) #10
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

declare i32 @rte_log(i32 noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @get_vfio_group_idx(i32 noundef %vfio_group_fd) #0 {
entry:
  %retval = alloca i32, align 4
  %vfio_group_fd.addr = alloca i32, align 4
  %vfio_cfg = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %vfio_group_fd, ptr %vfio_group_fd.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vfio_cfg) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !4
  %cmp = icmp slt i32 %0, 64
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [64 x %struct.vfio_config], ptr @vfio_cfgs, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %vfio_cfg, align 8, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !4
  %cmp2 = icmp slt i32 %2, 64
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_groups = getelementptr inbounds %struct.vfio_config, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %j, align 4, !tbaa !4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [64 x %struct.vfio_group], ptr %vfio_groups, i64 0, i64 %idxprom4
  %fd = getelementptr inbounds %struct.vfio_group, ptr %arrayidx5, i32 0, i32 1
  %5 = load i32, ptr %fd, align 4, !tbaa !15
  %6 = load i32, ptr %vfio_group_fd.addr, align 4, !tbaa !4
  %cmp6 = icmp eq i32 %5, %6
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %7 = load i32, ptr %j, align 4, !tbaa !4
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %j, align 4, !tbaa !4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4, !tbaa !4
  br label %for.cond1, !llvm.loop !26

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %9 = load i32, ptr %i, align 4, !tbaa !4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !27

for.end9:                                         ; preds = %for.cond
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %vfio_cfg) #10
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @rte_vfio_setup_device(ptr noundef %sysfs_base, ptr noundef %dev_addr, ptr noundef %vfio_dev_fd, ptr noundef %device_info) #0 {
entry:
  %retval = alloca i32, align 4
  %sysfs_base.addr = alloca ptr, align 8
  %dev_addr.addr = alloca ptr, align 8
  %vfio_dev_fd.addr = alloca ptr, align 8
  %device_info.addr = alloca ptr, align 8
  %group_status = alloca %struct.vfio_group_status, align 4
  %vfio_cfg = alloca ptr, align 8
  %user_mem_maps = alloca ptr, align 8
  %vfio_container_fd = alloca i32, align 4
  %vfio_group_fd = alloca i32, align 4
  %iommu_group_num = alloca i32, align 4
  %vf_token = alloca [16 x i8], align 16
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %internal_conf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %t = alloca ptr, align 8
  %map = alloca ptr, align 8
  %t123 = alloca ptr, align 8
  %vf_token_str = alloca [37 x i8], align 16
  %dev = alloca [4096 x i8], align 16
  store ptr %sysfs_base, ptr %sysfs_base.addr, align 8, !tbaa !8
  store ptr %dev_addr, ptr %dev_addr.addr, align 8, !tbaa !8
  store ptr %vfio_dev_fd, ptr %vfio_dev_fd.addr, align 8, !tbaa !8
  store ptr %device_info, ptr %device_info.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %group_status) #10
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %group_status, ptr align 4 @__const.rte_vfio_setup_device.group_status, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %vfio_cfg) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_mem_maps) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfio_container_fd) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfio_group_fd) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %iommu_group_num) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vf_token) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %internal_conf) #10
  %call = call ptr @eal_get_internal_configuration()
  store ptr %call, ptr %internal_conf, align 8, !tbaa !8
  %0 = load ptr, ptr %sysfs_base.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %dev_addr.addr, align 8, !tbaa !8
  %call1 = call i32 @rte_vfio_get_group_num(ptr noundef %0, ptr noundef %1, ptr noundef %iommu_group_num)
  store i32 %call1, ptr %ret, align 4, !tbaa !4
  %2 = load i32, ptr %ret, align 4, !tbaa !4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev_addr.addr, align 8, !tbaa !8
  %call2 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 6, i32 noundef 0, ptr noundef @.str.1, ptr noundef %3)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup164

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %ret, align 4, !tbaa !4
  %cmp3 = icmp slt i32 %4, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup164

if.end5:                                          ; preds = %if.end
  %5 = load i32, ptr %iommu_group_num, align 4, !tbaa !4
  %call6 = call i32 @rte_vfio_get_group_fd(i32 noundef %5)
  store i32 %call6, ptr %vfio_group_fd, align 4, !tbaa !4
  %6 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %cmp7 = icmp slt i32 %6, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end5
  %7 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %cmp8 = icmp ne i32 %7, -2
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup164

if.end10:                                         ; preds = %land.lhs.true, %if.end5
  %8 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %cmp11 = icmp eq i32 %8, -2
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %9 = load ptr, ptr %dev_addr.addr, align 8, !tbaa !8
  %call13 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 6, i32 noundef 0, ptr noundef @.str.1, ptr noundef %9)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup164

if.end14:                                         ; preds = %if.end10
  %10 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %call15 = call i32 (i32, i64, ...) @ioctl(i32 noundef %10, i64 noundef 15207, ptr noundef %group_status) #10
  store i32 %call15, ptr %ret, align 4, !tbaa !4
  %11 = load i32, ptr %ret, align 4, !tbaa !4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end14
  %12 = load ptr, ptr %dev_addr.addr, align 8, !tbaa !8
  %call17 = call ptr @__errno_location() #11
  %13 = load i32, ptr %call17, align 4, !tbaa !4
  %call18 = call ptr @__errno_location() #11
  %14 = load i32, ptr %call18, align 4, !tbaa !4
  %call19 = call ptr @strerror(i32 noundef %14) #10
  %call20 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.2, ptr noundef %12, i32 noundef %13, ptr noundef %call19)
  %15 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %call21 = call i32 @close(i32 noundef %15)
  %16 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %call22 = call i32 @rte_vfio_clear_group(i32 noundef %16)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup164

if.else:                                          ; preds = %if.end14
  %flags = getelementptr inbounds %struct.vfio_group_status, ptr %group_status, i32 0, i32 1
  %17 = load i32, ptr %flags, align 4, !tbaa !28
  %and = and i32 %17, 1
  %tobool23 = icmp ne i32 %and, 0
  br i1 %tobool23, label %if.end28, label %if.then24

if.then24:                                        ; preds = %if.else
  %18 = load ptr, ptr %dev_addr.addr, align 8, !tbaa !8
  %call25 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.3, ptr noundef %18)
  %19 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %call26 = call i32 @close(i32 noundef %19)
  %20 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %call27 = call i32 @rte_vfio_clear_group(i32 noundef %20)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup164

if.end28:                                         ; preds = %if.else
  br label %if.end29

if.end29:                                         ; preds = %if.end28
  %21 = load i32, ptr %iommu_group_num, align 4, !tbaa !4
  %call30 = call ptr @get_vfio_cfg_by_group_num(i32 noundef %21)
  store ptr %call30, ptr %vfio_cfg, align 8, !tbaa !8
  %22 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %tobool31 = icmp ne ptr %22, null
  br i1 %tobool31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end29
  %23 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.end29
  %24 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %23, %cond.true ], [ %24, %cond.false ]
  store ptr %cond, ptr %vfio_cfg, align 8, !tbaa !8
  %25 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_container_fd32 = getelementptr inbounds %struct.vfio_config, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %vfio_container_fd32, align 4, !tbaa !30
  store i32 %26, ptr %vfio_container_fd, align 4, !tbaa !4
  %27 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %mem_maps = getelementptr inbounds %struct.vfio_config, ptr %27, i32 0, i32 5
  store ptr %mem_maps, ptr %user_mem_maps, align 8, !tbaa !8
  %flags33 = getelementptr inbounds %struct.vfio_group_status, ptr %group_status, i32 0, i32 1
  %28 = load i32, ptr %flags33, align 4, !tbaa !28
  %and34 = and i32 %28, 2
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.else107, label %if.then36

if.then36:                                        ; preds = %cond.end
  %29 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %call37 = call i32 (i32, i64, ...) @ioctl(i32 noundef %29, i64 noundef 15208, ptr noundef %vfio_container_fd) #10
  store i32 %call37, ptr %ret, align 4, !tbaa !4
  %30 = load i32, ptr %ret, align 4, !tbaa !4
  %tobool38 = icmp ne i32 %30, 0
  br i1 %tobool38, label %if.then39, label %if.end46

if.then39:                                        ; preds = %if.then36
  %31 = load ptr, ptr %dev_addr.addr, align 8, !tbaa !8
  %call40 = call ptr @__errno_location() #11
  %32 = load i32, ptr %call40, align 4, !tbaa !4
  %call41 = call ptr @__errno_location() #11
  %33 = load i32, ptr %call41, align 4, !tbaa !4
  %call42 = call ptr @strerror(i32 noundef %33) #10
  %call43 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.4, ptr noundef %31, i32 noundef %32, ptr noundef %call42)
  %34 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %call44 = call i32 @close(i32 noundef %34)
  %35 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %call45 = call i32 @rte_vfio_clear_group(i32 noundef %35)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup164

if.end46:                                         ; preds = %if.then36
  %36 = load ptr, ptr %internal_conf, align 8, !tbaa !8
  %process_type = getelementptr inbounds %struct.internal_config, ptr %36, i32 0, i32 11
  %37 = load volatile i32, ptr %process_type, align 8, !tbaa !31
  %cmp47 = icmp eq i32 %37, 0
  br i1 %cmp47, label %land.lhs.true48, label %if.end106

land.lhs.true48:                                  ; preds = %if.end46
  %38 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_active_groups = getelementptr inbounds %struct.vfio_config, ptr %38, i32 0, i32 2
  %39 = load i32, ptr %vfio_active_groups, align 8, !tbaa !17
  %cmp49 = icmp eq i32 %39, 1
  br i1 %cmp49, label %land.lhs.true50, label %if.end106

land.lhs.true50:                                  ; preds = %land.lhs.true48
  %40 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %call51 = call i32 @vfio_group_device_count(i32 noundef %40)
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.then53, label %if.end106

if.then53:                                        ; preds = %land.lhs.true50
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #10
  %41 = load i32, ptr %vfio_container_fd, align 4, !tbaa !4
  %call54 = call ptr @vfio_set_iommu_type(i32 noundef %41)
  store ptr %call54, ptr %t, align 8, !tbaa !8
  %42 = load ptr, ptr %t, align 8, !tbaa !8
  %tobool55 = icmp ne ptr %42, null
  br i1 %tobool55, label %if.end60, label %if.then56

if.then56:                                        ; preds = %if.then53
  %43 = load ptr, ptr %dev_addr.addr, align 8, !tbaa !8
  %call57 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.5, ptr noundef %43)
  %44 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %call58 = call i32 @close(i32 noundef %44)
  %45 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %call59 = call i32 @rte_vfio_clear_group(i32 noundef %45)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup103

if.end60:                                         ; preds = %if.then53
  call void @rte_mcfg_mem_read_lock()
  %46 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %47 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  %cmp61 = icmp eq ptr %46, %47
  br i1 %cmp61, label %if.then62, label %if.else64

if.then62:                                        ; preds = %if.end60
  %48 = load ptr, ptr %t, align 8, !tbaa !8
  %dma_map_func = getelementptr inbounds %struct.vfio_iommu_type, ptr %48, i32 0, i32 4
  %49 = load ptr, ptr %dma_map_func, align 8, !tbaa !39
  %50 = load i32, ptr %vfio_container_fd, align 4, !tbaa !4
  %call63 = call i32 %49(i32 noundef %50)
  store i32 %call63, ptr %ret, align 4, !tbaa !4
  br label %if.end65

if.else64:                                        ; preds = %if.end60
  store i32 0, ptr %ret, align 4, !tbaa !4
  br label %if.end65

if.end65:                                         ; preds = %if.else64, %if.then62
  %51 = load i32, ptr %ret, align 4, !tbaa !4
  %tobool66 = icmp ne i32 %51, 0
  br i1 %tobool66, label %if.then67, label %if.end74

if.then67:                                        ; preds = %if.end65
  %52 = load ptr, ptr %dev_addr.addr, align 8, !tbaa !8
  %call68 = call ptr @__errno_location() #11
  %53 = load i32, ptr %call68, align 4, !tbaa !4
  %call69 = call ptr @__errno_location() #11
  %54 = load i32, ptr %call69, align 4, !tbaa !4
  %call70 = call ptr @strerror(i32 noundef %54) #10
  %call71 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.6, ptr noundef %52, i32 noundef %53, ptr noundef %call70)
  %55 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %call72 = call i32 @close(i32 noundef %55)
  %56 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %call73 = call i32 @rte_vfio_clear_group(i32 noundef %56)
  call void @rte_mcfg_mem_read_unlock()
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup103

if.end74:                                         ; preds = %if.end65
  %57 = load ptr, ptr %t, align 8, !tbaa !8
  %58 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_iommu_type = getelementptr inbounds %struct.vfio_config, ptr %58, i32 0, i32 3
  store ptr %57, ptr %vfio_iommu_type, align 8, !tbaa !41
  %59 = load ptr, ptr %user_mem_maps, align 8, !tbaa !8
  %lock = getelementptr inbounds %struct.user_mem_maps, ptr %59, i32 0, i32 0
  call void @rte_spinlock_recursive_lock(ptr noundef %lock)
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end74
  %60 = load i32, ptr %i, align 4, !tbaa !4
  %61 = load ptr, ptr %user_mem_maps, align 8, !tbaa !8
  %n_maps = getelementptr inbounds %struct.user_mem_maps, ptr %61, i32 0, i32 1
  %62 = load i32, ptr %n_maps, align 4, !tbaa !42
  %cmp75 = icmp slt i32 %60, %62
  br i1 %cmp75, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #10
  %63 = load ptr, ptr %user_mem_maps, align 8, !tbaa !8
  %maps = getelementptr inbounds %struct.user_mem_maps, ptr %63, i32 0, i32 2
  %64 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %64 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.user_mem_map], ptr %maps, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %map, align 8, !tbaa !8
  %65 = load ptr, ptr %t, align 8, !tbaa !8
  %dma_user_map_func = getelementptr inbounds %struct.vfio_iommu_type, ptr %65, i32 0, i32 3
  %66 = load ptr, ptr %dma_user_map_func, align 8, !tbaa !43
  %67 = load i32, ptr %vfio_container_fd, align 4, !tbaa !4
  %68 = load ptr, ptr %map, align 8, !tbaa !8
  %addr = getelementptr inbounds %struct.user_mem_map, ptr %68, i32 0, i32 0
  %69 = load i64, ptr %addr, align 8, !tbaa !44
  %70 = load ptr, ptr %map, align 8, !tbaa !8
  %iova = getelementptr inbounds %struct.user_mem_map, ptr %70, i32 0, i32 1
  %71 = load i64, ptr %iova, align 8, !tbaa !46
  %72 = load ptr, ptr %map, align 8, !tbaa !8
  %len = getelementptr inbounds %struct.user_mem_map, ptr %72, i32 0, i32 2
  %73 = load i64, ptr %len, align 8, !tbaa !47
  %call76 = call i32 %66(i32 noundef %67, i64 noundef %69, i64 noundef %71, i64 noundef %73, i32 noundef 1)
  store i32 %call76, ptr %ret, align 4, !tbaa !4
  %74 = load i32, ptr %ret, align 4, !tbaa !4
  %tobool77 = icmp ne i32 %74, 0
  br i1 %tobool77, label %if.then78, label %if.end84

if.then78:                                        ; preds = %for.body
  %75 = load ptr, ptr %map, align 8, !tbaa !8
  %addr79 = getelementptr inbounds %struct.user_mem_map, ptr %75, i32 0, i32 0
  %76 = load i64, ptr %addr79, align 8, !tbaa !44
  %77 = load ptr, ptr %map, align 8, !tbaa !8
  %iova80 = getelementptr inbounds %struct.user_mem_map, ptr %77, i32 0, i32 1
  %78 = load i64, ptr %iova80, align 8, !tbaa !46
  %79 = load ptr, ptr %map, align 8, !tbaa !8
  %len81 = getelementptr inbounds %struct.user_mem_map, ptr %79, i32 0, i32 2
  %80 = load i64, ptr %len81, align 8, !tbaa !47
  %call82 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.7, i64 noundef %76, i64 noundef %78, i64 noundef %80)
  %81 = load ptr, ptr %user_mem_maps, align 8, !tbaa !8
  %lock83 = getelementptr inbounds %struct.user_mem_maps, ptr %81, i32 0, i32 0
  call void @rte_spinlock_recursive_unlock(ptr noundef %lock83)
  call void @rte_mcfg_mem_read_unlock()
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end84:                                         ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.then78
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup103 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %82 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %82, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  %83 = load ptr, ptr %user_mem_maps, align 8, !tbaa !8
  %lock85 = getelementptr inbounds %struct.user_mem_maps, ptr %83, i32 0, i32 0
  call void @rte_spinlock_recursive_unlock(ptr noundef %lock85)
  %84 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %85 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  %cmp86 = icmp eq ptr %84, %85
  br i1 %cmp86, label %if.then87, label %if.else89

if.then87:                                        ; preds = %for.end
  %call88 = call i32 @rte_mem_event_callback_register(ptr noundef @.str.8, ptr noundef @vfio_mem_event_callback, ptr noundef null)
  store i32 %call88, ptr %ret, align 4, !tbaa !4
  br label %if.end90

if.else89:                                        ; preds = %for.end
  store i32 0, ptr %ret, align 4, !tbaa !4
  br label %if.end90

if.end90:                                         ; preds = %if.else89, %if.then87
  call void @rte_mcfg_mem_read_unlock()
  %86 = load i32, ptr %ret, align 4, !tbaa !4
  %tobool91 = icmp ne i32 %86, 0
  br i1 %tobool91, label %land.lhs.true92, label %if.end96

land.lhs.true92:                                  ; preds = %if.end90
  %87 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @per_lcore__rte_errno)
  %88 = load i32, ptr %87, align 4, !tbaa !4
  %cmp93 = icmp ne i32 %88, 95
  br i1 %cmp93, label %if.then94, label %if.end96

if.then94:                                        ; preds = %land.lhs.true92
  %call95 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.9)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup103

if.end96:                                         ; preds = %land.lhs.true92, %if.end90
  %89 = load i32, ptr %ret, align 4, !tbaa !4
  %tobool97 = icmp ne i32 %89, 0
  br i1 %tobool97, label %if.then98, label %if.else100

if.then98:                                        ; preds = %if.end96
  %call99 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.10)
  br label %if.end102

if.else100:                                       ; preds = %if.end96
  %call101 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.11)
  br label %if.end102

if.end102:                                        ; preds = %if.else100, %if.then98
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup103

cleanup103:                                       ; preds = %if.end102, %if.then94, %cleanup, %if.then67, %if.then56
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #10
  %cleanup.dest104 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest104, label %cleanup164 [
    i32 0, label %cleanup.cont105
  ]

cleanup.cont105:                                  ; preds = %cleanup103
  br label %if.end106

if.end106:                                        ; preds = %cleanup.cont105, %land.lhs.true50, %land.lhs.true48, %if.end46
  br label %if.end127

if.else107:                                       ; preds = %cond.end
  %call108 = call i32 @rte_eal_process_type()
  %cmp109 = icmp ne i32 %call108, 0
  br i1 %cmp109, label %land.lhs.true110, label %if.end126

land.lhs.true110:                                 ; preds = %if.else107
  %90 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %91 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  %cmp111 = icmp eq ptr %90, %91
  br i1 %cmp111, label %land.lhs.true112, label %if.end126

land.lhs.true112:                                 ; preds = %land.lhs.true110
  %92 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_iommu_type113 = getelementptr inbounds %struct.vfio_config, ptr %92, i32 0, i32 3
  %93 = load ptr, ptr %vfio_iommu_type113, align 8, !tbaa !41
  %cmp114 = icmp eq ptr %93, null
  br i1 %cmp114, label %if.then115, label %if.end126

if.then115:                                       ; preds = %land.lhs.true112
  %call116 = call i32 @vfio_sync_default_container()
  store i32 %call116, ptr %ret, align 4, !tbaa !4
  %94 = load i32, ptr %ret, align 4, !tbaa !4
  %cmp117 = icmp slt i32 %94, 0
  br i1 %cmp117, label %if.then118, label %if.end122

if.then118:                                       ; preds = %if.then115
  %call119 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.12)
  %95 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %call120 = call i32 @close(i32 noundef %95)
  %96 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %call121 = call i32 @rte_vfio_clear_group(i32 noundef %96)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup164

if.end122:                                        ; preds = %if.then115
  call void @llvm.lifetime.start.p0(i64 8, ptr %t123) #10
  %97 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  %vfio_iommu_type124 = getelementptr inbounds %struct.vfio_config, ptr %97, i32 0, i32 3
  %98 = load ptr, ptr %vfio_iommu_type124, align 8, !tbaa !41
  store ptr %98, ptr %t123, align 8, !tbaa !8
  %99 = load ptr, ptr %t123, align 8, !tbaa !8
  %type_id = getelementptr inbounds %struct.vfio_iommu_type, ptr %99, i32 0, i32 0
  %100 = load i32, ptr %type_id, align 8, !tbaa !49
  %101 = load ptr, ptr %t123, align 8, !tbaa !8
  %name = getelementptr inbounds %struct.vfio_iommu_type, ptr %101, i32 0, i32 1
  %102 = load ptr, ptr %name, align 8, !tbaa !50
  %call125 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 7, i32 noundef 0, ptr noundef @.str.13, i32 noundef %100, ptr noundef %102)
  call void @llvm.lifetime.end.p0(i64 8, ptr %t123) #10
  br label %if.end126

if.end126:                                        ; preds = %if.end122, %land.lhs.true112, %land.lhs.true110, %if.else107
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %if.end106
  %arraydecay = getelementptr inbounds [16 x i8], ptr %vf_token, i64 0, i64 0
  call void @rte_eal_vfio_get_vf_token(ptr noundef %arraydecay)
  %arraydecay128 = getelementptr inbounds [16 x i8], ptr %vf_token, i64 0, i64 0
  %call129 = call zeroext i1 @rte_uuid_is_null(ptr noundef %arraydecay128)
  br i1 %call129, label %if.end145, label %if.then130

if.then130:                                       ; preds = %if.end127
  call void @llvm.lifetime.start.p0(i64 37, ptr %vf_token_str) #10
  call void @llvm.lifetime.start.p0(i64 4096, ptr %dev) #10
  %arraydecay131 = getelementptr inbounds [16 x i8], ptr %vf_token, i64 0, i64 0
  %arraydecay132 = getelementptr inbounds [37 x i8], ptr %vf_token_str, i64 0, i64 0
  call void @rte_uuid_unparse(ptr noundef %arraydecay131, ptr noundef %arraydecay132, i64 noundef 37)
  %arraydecay133 = getelementptr inbounds [4096 x i8], ptr %dev, i64 0, i64 0
  %103 = load ptr, ptr %dev_addr.addr, align 8, !tbaa !8
  %arraydecay134 = getelementptr inbounds [37 x i8], ptr %vf_token_str, i64 0, i64 0
  %call135 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay133, i64 noundef 4096, ptr noundef @.str.14, ptr noundef %103, ptr noundef %arraydecay134) #10
  %104 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %arraydecay136 = getelementptr inbounds [4096 x i8], ptr %dev, i64 0, i64 0
  %call137 = call i32 (i32, i64, ...) @ioctl(i32 noundef %104, i64 noundef 15210, ptr noundef %arraydecay136) #10
  %105 = load ptr, ptr %vfio_dev_fd.addr, align 8, !tbaa !8
  store i32 %call137, ptr %105, align 4, !tbaa !4
  %106 = load ptr, ptr %vfio_dev_fd.addr, align 8, !tbaa !8
  %107 = load i32, ptr %106, align 4, !tbaa !4
  %cmp138 = icmp sge i32 %107, 0
  br i1 %cmp138, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.then130
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup141

if.end140:                                        ; preds = %if.then130
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup141

cleanup141:                                       ; preds = %if.then139, %if.end140
  call void @llvm.lifetime.end.p0(i64 4096, ptr %dev) #10
  call void @llvm.lifetime.end.p0(i64 37, ptr %vf_token_str) #10
  %cleanup.dest143 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest143, label %cleanup164 [
    i32 0, label %cleanup.cont144
    i32 5, label %dev_get_info
  ]

cleanup.cont144:                                  ; preds = %cleanup141
  br label %if.end145

if.end145:                                        ; preds = %cleanup.cont144, %if.end127
  %108 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %109 = load ptr, ptr %dev_addr.addr, align 8, !tbaa !8
  %call146 = call i32 (i32, i64, ...) @ioctl(i32 noundef %108, i64 noundef 15210, ptr noundef %109) #10
  %110 = load ptr, ptr %vfio_dev_fd.addr, align 8, !tbaa !8
  store i32 %call146, ptr %110, align 4, !tbaa !4
  %111 = load ptr, ptr %vfio_dev_fd.addr, align 8, !tbaa !8
  %112 = load i32, ptr %111, align 4, !tbaa !4
  %cmp147 = icmp slt i32 %112, 0
  br i1 %cmp147, label %if.then148, label %if.end152

if.then148:                                       ; preds = %if.end145
  %113 = load ptr, ptr %dev_addr.addr, align 8, !tbaa !8
  %call149 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 5, i32 noundef 0, ptr noundef @.str.15, ptr noundef %113)
  %114 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %call150 = call i32 @close(i32 noundef %114)
  %115 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %call151 = call i32 @rte_vfio_clear_group(i32 noundef %115)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup164

if.end152:                                        ; preds = %if.end145
  br label %dev_get_info

dev_get_info:                                     ; preds = %if.end152, %cleanup141
  %116 = load ptr, ptr %vfio_dev_fd.addr, align 8, !tbaa !8
  %117 = load i32, ptr %116, align 4, !tbaa !4
  %118 = load ptr, ptr %device_info.addr, align 8, !tbaa !8
  %call153 = call i32 (i32, i64, ...) @ioctl(i32 noundef %117, i64 noundef 15211, ptr noundef %118) #10
  store i32 %call153, ptr %ret, align 4, !tbaa !4
  %119 = load i32, ptr %ret, align 4, !tbaa !4
  %tobool154 = icmp ne i32 %119, 0
  br i1 %tobool154, label %if.then155, label %if.end163

if.then155:                                       ; preds = %dev_get_info
  %120 = load ptr, ptr %dev_addr.addr, align 8, !tbaa !8
  %call156 = call ptr @__errno_location() #11
  %121 = load i32, ptr %call156, align 4, !tbaa !4
  %call157 = call ptr @__errno_location() #11
  %122 = load i32, ptr %call157, align 4, !tbaa !4
  %call158 = call ptr @strerror(i32 noundef %122) #10
  %call159 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.16, ptr noundef %120, i32 noundef %121, ptr noundef %call158)
  %123 = load ptr, ptr %vfio_dev_fd.addr, align 8, !tbaa !8
  %124 = load i32, ptr %123, align 4, !tbaa !4
  %call160 = call i32 @close(i32 noundef %124)
  %125 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %call161 = call i32 @close(i32 noundef %125)
  %126 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %call162 = call i32 @rte_vfio_clear_group(i32 noundef %126)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup164

if.end163:                                        ; preds = %dev_get_info
  %127 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  call void @vfio_group_device_get(i32 noundef %127)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup164

cleanup164:                                       ; preds = %if.end163, %if.then155, %if.then148, %cleanup141, %if.then118, %cleanup103, %if.then39, %if.then24, %if.then16, %if.then12, %if.then9, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %internal_conf) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr %vf_token) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %iommu_group_num) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfio_group_fd) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfio_container_fd) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_mem_maps) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %vfio_cfg) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %group_status) #10
  %128 = load i32, ptr %retval, align 4
  ret i32 %128
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare ptr @eal_get_internal_configuration() #2

; Function Attrs: nounwind uwtable
define i32 @rte_vfio_get_group_num(ptr noundef %sysfs_base, ptr noundef %dev_addr, ptr noundef %iommu_group_num) #0 {
entry:
  %retval = alloca i32, align 4
  %sysfs_base.addr = alloca ptr, align 8
  %dev_addr.addr = alloca ptr, align 8
  %iommu_group_num.addr = alloca ptr, align 8
  %linkname = alloca [4096 x i8], align 16
  %filename = alloca [4096 x i8], align 16
  %tok = alloca [16 x ptr], align 16
  %group_tok = alloca ptr, align 8
  %end = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sysfs_base, ptr %sysfs_base.addr, align 8, !tbaa !8
  store ptr %dev_addr, ptr %dev_addr.addr, align 8, !tbaa !8
  store ptr %iommu_group_num, ptr %iommu_group_num.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4096, ptr %linkname) #10
  call void @llvm.lifetime.start.p0(i64 4096, ptr %filename) #10
  call void @llvm.lifetime.start.p0(i64 128, ptr %tok) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %group_tok) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  %arraydecay = getelementptr inbounds [4096 x i8], ptr %linkname, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 4096, i1 false)
  %arraydecay1 = getelementptr inbounds [4096 x i8], ptr %filename, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay1, i8 0, i64 4096, i1 false)
  %arraydecay2 = getelementptr inbounds [4096 x i8], ptr %linkname, i64 0, i64 0
  %0 = load ptr, ptr %sysfs_base.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %dev_addr.addr, align 8, !tbaa !8
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay2, i64 noundef 4096, ptr noundef @.str.40, ptr noundef %0, ptr noundef %1) #10
  %arraydecay3 = getelementptr inbounds [4096 x i8], ptr %linkname, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [4096 x i8], ptr %filename, i64 0, i64 0
  %call5 = call i64 @readlink(ptr noundef %arraydecay3, ptr noundef %arraydecay4, i64 noundef 4096) #10
  %conv = trunc i64 %call5 to i32
  store i32 %conv, ptr %ret, align 4, !tbaa !4
  %2 = load i32, ptr %ret, align 4, !tbaa !4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay7 = getelementptr inbounds [4096 x i8], ptr %filename, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [16 x ptr], ptr %tok, i64 0, i64 0
  %call9 = call i32 @rte_strsplit(ptr noundef %arraydecay7, i32 noundef 4096, ptr noundef %arraydecay8, i32 noundef 16, i8 noundef signext 47)
  store i32 %call9, ptr %ret, align 4, !tbaa !4
  %3 = load i32, ptr %ret, align 4, !tbaa !4
  %cmp10 = icmp sle i32 %3, 0
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  %4 = load ptr, ptr %dev_addr.addr, align 8, !tbaa !8
  %call13 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.41, ptr noundef %4)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call15 = call ptr @__errno_location() #11
  store i32 0, ptr %call15, align 4, !tbaa !4
  %5 = load i32, ptr %ret, align 4, !tbaa !4
  %sub = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [16 x ptr], ptr %tok, i64 0, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8, !tbaa !8
  store ptr %6, ptr %group_tok, align 8, !tbaa !8
  %7 = load ptr, ptr %group_tok, align 8, !tbaa !8
  store ptr %7, ptr %end, align 8, !tbaa !8
  %8 = load ptr, ptr %group_tok, align 8, !tbaa !8
  %call16 = call i64 @strtol(ptr noundef %8, ptr noundef %end, i32 noundef 10) #10
  %conv17 = trunc i64 %call16 to i32
  %9 = load ptr, ptr %iommu_group_num.addr, align 8, !tbaa !8
  store i32 %conv17, ptr %9, align 4, !tbaa !4
  %10 = load ptr, ptr %end, align 8, !tbaa !8
  %11 = load ptr, ptr %group_tok, align 8, !tbaa !8
  %cmp18 = icmp ne ptr %10, %11
  br i1 %cmp18, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end14
  %12 = load ptr, ptr %end, align 8, !tbaa !8
  %13 = load i8, ptr %12, align 1, !tbaa !51
  %conv20 = sext i8 %13 to i32
  %cmp21 = icmp ne i32 %conv20, 0
  br i1 %cmp21, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end14
  %call23 = call ptr @__errno_location() #11
  %14 = load i32, ptr %call23, align 4, !tbaa !4
  %cmp24 = icmp ne i32 %14, 0
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %15 = load ptr, ptr %dev_addr.addr, align 8, !tbaa !8
  %call27 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.42, ptr noundef %15)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then26, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %group_tok) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr %tok) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr %filename) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr %linkname) #10
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) #4

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #4

declare i32 @close(i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @vfio_group_device_count(i32 noundef %vfio_group_fd) #0 {
entry:
  %retval = alloca i32, align 4
  %vfio_group_fd.addr = alloca i32, align 4
  %vfio_cfg = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %vfio_group_fd, ptr %vfio_group_fd.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vfio_cfg) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  %0 = load i32, ptr %vfio_group_fd.addr, align 4, !tbaa !4
  %call = call ptr @get_vfio_cfg_by_group_fd(i32 noundef %0)
  store ptr %call, ptr %vfio_cfg, align 8, !tbaa !8
  %1 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %vfio_group_fd.addr, align 4, !tbaa !4
  %call2 = call i32 @get_vfio_group_idx(i32 noundef %2)
  store i32 %call2, ptr %i, align 4, !tbaa !4
  %3 = load i32, ptr %i, align 4, !tbaa !4
  %cmp3 = icmp slt i32 %3, 0
  br i1 %cmp3, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, ptr %i, align 4, !tbaa !4
  %cmp4 = icmp sgt i32 %4, 63
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load i32, ptr %i, align 4, !tbaa !4
  %call6 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.59, i32 noundef %5)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_groups = getelementptr inbounds %struct.vfio_config, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [64 x %struct.vfio_group], ptr %vfio_groups, i64 0, i64 %idxprom
  %devices = getelementptr inbounds %struct.vfio_group, ptr %arrayidx, i32 0, i32 2
  %8 = load i32, ptr %devices, align 4, !tbaa !23
  store i32 %8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %vfio_cfg) #10
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define ptr @vfio_set_iommu_type(i32 noundef %vfio_container_fd) #0 {
entry:
  %retval = alloca ptr, align 8
  %vfio_container_fd.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  %t = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %vfio_container_fd, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #10
  store i32 0, ptr %idx, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %idx, align 4, !tbaa !4
  %conv = zext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #10
  %1 = load i32, ptr %idx, align 4, !tbaa !4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.vfio_iommu_type], ptr @iommu_types, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %t, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  %2 = load i32, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  %3 = load ptr, ptr %t, align 8, !tbaa !8
  %type_id = getelementptr inbounds %struct.vfio_iommu_type, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %type_id, align 8, !tbaa !49
  %call = call i32 (i32, i64, ...) @ioctl(i32 noundef %2, i64 noundef 15206, i32 noundef %4) #10
  store i32 %call, ptr %ret, align 4, !tbaa !4
  %5 = load i32, ptr %ret, align 4, !tbaa !4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %t, align 8, !tbaa !8
  %type_id2 = getelementptr inbounds %struct.vfio_iommu_type, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %type_id2, align 8, !tbaa !49
  %8 = load ptr, ptr %t, align 8, !tbaa !8
  %name = getelementptr inbounds %struct.vfio_iommu_type, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %name, align 8, !tbaa !50
  %call3 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 7, i32 noundef 0, ptr noundef @.str.13, i32 noundef %7, ptr noundef %9)
  %10 = load ptr, ptr %t, align 8, !tbaa !8
  store ptr %10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  %11 = load ptr, ptr %t, align 8, !tbaa !8
  %type_id4 = getelementptr inbounds %struct.vfio_iommu_type, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %type_id4, align 8, !tbaa !49
  %13 = load ptr, ptr %t, align 8, !tbaa !8
  %name5 = getelementptr inbounds %struct.vfio_iommu_type, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %name5, align 8, !tbaa !50
  %call6 = call ptr @__errno_location() #11
  %15 = load i32, ptr %call6, align 4, !tbaa !4
  %call7 = call ptr @__errno_location() #11
  %16 = load i32, ptr %call7, align 4, !tbaa !4
  %call8 = call ptr @strerror(i32 noundef %16) #10
  %call9 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.29, i32 noundef %12, ptr noundef %14, i32 noundef %15, ptr noundef %call8)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup11 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %17 = load i32, ptr %idx, align 4, !tbaa !4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %idx, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup11

cleanup11:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #10
  %18 = load ptr, ptr %retval, align 8
  ret ptr %18
}

declare void @rte_mcfg_mem_read_lock() #2

declare void @rte_mcfg_mem_read_unlock() #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @rte_spinlock_recursive_lock(ptr noundef %slr) #6 {
entry:
  %slr.addr = alloca ptr, align 8
  %id = alloca i32, align 4
  store ptr %slr, ptr %slr.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #10
  %call = call i32 @rte_gettid()
  store i32 %call, ptr %id, align 4, !tbaa !4
  %0 = load ptr, ptr %slr.addr, align 8, !tbaa !8
  %user = getelementptr inbounds %struct.rte_spinlock_recursive_t, ptr %0, i32 0, i32 1
  %1 = load volatile i32, ptr %user, align 4, !tbaa !53
  %2 = load i32, ptr %id, align 4, !tbaa !4
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %slr.addr, align 8, !tbaa !8
  %sl = getelementptr inbounds %struct.rte_spinlock_recursive_t, ptr %3, i32 0, i32 0
  call void @rte_spinlock_lock(ptr noundef %sl)
  %4 = load i32, ptr %id, align 4, !tbaa !4
  %5 = load ptr, ptr %slr.addr, align 8, !tbaa !8
  %user1 = getelementptr inbounds %struct.rte_spinlock_recursive_t, ptr %5, i32 0, i32 1
  store volatile i32 %4, ptr %user1, align 4, !tbaa !53
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %slr.addr, align 8, !tbaa !8
  %count = getelementptr inbounds %struct.rte_spinlock_recursive_t, ptr %6, i32 0, i32 2
  %7 = load volatile i32, ptr %count, align 4, !tbaa !54
  %inc = add nsw i32 %7, 1
  store volatile i32 %inc, ptr %count, align 4, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #10
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @rte_spinlock_recursive_unlock(ptr noundef %slr) #6 {
entry:
  %slr.addr = alloca ptr, align 8
  store ptr %slr, ptr %slr.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %slr.addr, align 8, !tbaa !8
  %count = getelementptr inbounds %struct.rte_spinlock_recursive_t, ptr %0, i32 0, i32 2
  %1 = load volatile i32, ptr %count, align 4, !tbaa !54
  %dec = add nsw i32 %1, -1
  store volatile i32 %dec, ptr %count, align 4, !tbaa !54
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %slr.addr, align 8, !tbaa !8
  %user = getelementptr inbounds %struct.rte_spinlock_recursive_t, ptr %2, i32 0, i32 1
  store volatile i32 -1, ptr %user, align 4, !tbaa !53
  %3 = load ptr, ptr %slr.addr, align 8, !tbaa !8
  %sl = getelementptr inbounds %struct.rte_spinlock_recursive_t, ptr %3, i32 0, i32 0
  call void @rte_spinlock_unlock(ptr noundef %sl)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @rte_mem_event_callback_register(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @vfio_mem_event_callback(i32 noundef %type, ptr noundef %addr, i64 noundef %len, ptr noundef %arg) #0 {
entry:
  %type.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %arg.addr = alloca ptr, align 8
  %msl = alloca ptr, align 8
  %ms = alloca ptr, align 8
  %cur_len = alloca i64, align 8
  %vfio_va = alloca i64, align 8
  %page_sz = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4, !tbaa !51
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !8
  store i64 %len, ptr %len.addr, align 8, !tbaa !55
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %msl) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %ms) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_len) #10
  store i64 0, ptr %cur_len, align 8, !tbaa !55
  %0 = load ptr, ptr %addr.addr, align 8, !tbaa !8
  %call = call ptr @rte_mem_virt2memseg_list(ptr noundef %0)
  store ptr %call, ptr %msl, align 8, !tbaa !8
  %call1 = call i32 @rte_eal_iova_mode()
  %cmp = icmp eq i32 %call1, 2
  br i1 %cmp, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %msl, align 8, !tbaa !8
  %external = getelementptr inbounds %struct.rte_memseg_list, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %external, align 8, !tbaa !56
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %if.then, label %if.end10

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %vfio_va) #10
  %3 = load ptr, ptr %addr.addr, align 8, !tbaa !8
  %4 = ptrtoint ptr %3 to i64
  store i64 %4, ptr %vfio_va, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr %page_sz) #10
  %5 = load ptr, ptr %msl, align 8, !tbaa !8
  %page_sz3 = getelementptr inbounds %struct.rte_memseg_list, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %page_sz3, align 8, !tbaa !59
  store i64 %6, ptr %page_sz, align 8, !tbaa !55
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i64, ptr %cur_len, align 8, !tbaa !55
  %8 = load i64, ptr %len.addr, align 8, !tbaa !55
  %cmp4 = icmp ult i64 %7, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %type.addr, align 4, !tbaa !51
  %cmp5 = icmp eq i32 %9, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %for.body
  %10 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  %11 = load i64, ptr %vfio_va, align 8, !tbaa !55
  %12 = load i64, ptr %vfio_va, align 8, !tbaa !55
  %13 = load i64, ptr %page_sz, align 8, !tbaa !55
  %call7 = call i32 @vfio_dma_mem_map(ptr noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %13, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %for.body
  %14 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  %15 = load i64, ptr %vfio_va, align 8, !tbaa !55
  %16 = load i64, ptr %vfio_va, align 8, !tbaa !55
  %17 = load i64, ptr %page_sz, align 8, !tbaa !55
  %call8 = call i32 @vfio_dma_mem_map(ptr noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  %18 = load i64, ptr %page_sz, align 8, !tbaa !55
  %19 = load i64, ptr %vfio_va, align 8, !tbaa !55
  %add = add i64 %19, %18
  store i64 %add, ptr %vfio_va, align 8, !tbaa !55
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i64, ptr %page_sz, align 8, !tbaa !55
  %21 = load i64, ptr %cur_len, align 8, !tbaa !55
  %add9 = add i64 %21, %20
  store i64 %add9, ptr %cur_len, align 8, !tbaa !55
  br label %for.cond, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %page_sz) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %vfio_va) #10
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true, %entry
  %22 = load ptr, ptr %addr.addr, align 8, !tbaa !8
  %23 = load ptr, ptr %msl, align 8, !tbaa !8
  %call11 = call ptr @rte_mem_virt2memseg(ptr noundef %22, ptr noundef %23)
  store ptr %call11, ptr %ms, align 8, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %next, %if.end10
  %24 = load i64, ptr %cur_len, align 8, !tbaa !55
  %25 = load i64, ptr %len.addr, align 8, !tbaa !55
  %cmp12 = icmp ult i64 %24, %25
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load ptr, ptr %ms, align 8, !tbaa !8
  %iova = getelementptr inbounds %struct.rte_memseg, ptr %26, i32 0, i32 0
  %27 = load i64, ptr %iova, align 1, !tbaa !61
  %cmp13 = icmp eq i64 %27, -1
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %while.body
  %28 = load ptr, ptr %ms, align 8, !tbaa !8
  %29 = getelementptr inbounds %struct.rte_memseg, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 1, !tbaa !51
  %call15 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.60, ptr noundef %30)
  br label %next

if.end16:                                         ; preds = %while.body
  %31 = load i32, ptr %type.addr, align 4, !tbaa !51
  %cmp17 = icmp eq i32 %31, 0
  br i1 %cmp17, label %if.then18, label %if.else22

if.then18:                                        ; preds = %if.end16
  %32 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  %33 = load ptr, ptr %ms, align 8, !tbaa !8
  %34 = getelementptr inbounds %struct.rte_memseg, ptr %33, i32 0, i32 1
  %35 = load i64, ptr %34, align 1, !tbaa !51
  %36 = load ptr, ptr %ms, align 8, !tbaa !8
  %iova19 = getelementptr inbounds %struct.rte_memseg, ptr %36, i32 0, i32 0
  %37 = load i64, ptr %iova19, align 1, !tbaa !61
  %38 = load ptr, ptr %ms, align 8, !tbaa !8
  %len20 = getelementptr inbounds %struct.rte_memseg, ptr %38, i32 0, i32 2
  %39 = load i64, ptr %len20, align 1, !tbaa !63
  %call21 = call i32 @vfio_dma_mem_map(ptr noundef %32, i64 noundef %35, i64 noundef %37, i64 noundef %39, i32 noundef 1)
  br label %if.end26

if.else22:                                        ; preds = %if.end16
  %40 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  %41 = load ptr, ptr %ms, align 8, !tbaa !8
  %42 = getelementptr inbounds %struct.rte_memseg, ptr %41, i32 0, i32 1
  %43 = load i64, ptr %42, align 1, !tbaa !51
  %44 = load ptr, ptr %ms, align 8, !tbaa !8
  %iova23 = getelementptr inbounds %struct.rte_memseg, ptr %44, i32 0, i32 0
  %45 = load i64, ptr %iova23, align 1, !tbaa !61
  %46 = load ptr, ptr %ms, align 8, !tbaa !8
  %len24 = getelementptr inbounds %struct.rte_memseg, ptr %46, i32 0, i32 2
  %47 = load i64, ptr %len24, align 1, !tbaa !63
  %call25 = call i32 @vfio_dma_mem_map(ptr noundef %40, i64 noundef %43, i64 noundef %45, i64 noundef %47, i32 noundef 0)
  br label %if.end26

if.end26:                                         ; preds = %if.else22, %if.then18
  br label %next

next:                                             ; preds = %if.end26, %if.then14
  %48 = load ptr, ptr %ms, align 8, !tbaa !8
  %len27 = getelementptr inbounds %struct.rte_memseg, ptr %48, i32 0, i32 2
  %49 = load i64, ptr %len27, align 1, !tbaa !63
  %50 = load i64, ptr %cur_len, align 8, !tbaa !55
  %add28 = add i64 %50, %49
  store i64 %add28, ptr %cur_len, align 8, !tbaa !55
  %51 = load ptr, ptr %ms, align 8, !tbaa !8
  %incdec.ptr = getelementptr inbounds %struct.rte_memseg, ptr %51, i32 1
  store ptr %incdec.ptr, ptr %ms, align 8, !tbaa !8
  br label %while.cond, !llvm.loop !64

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_len) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %ms) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %msl) #10
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #7

declare i32 @rte_eal_process_type() #2

; Function Attrs: nounwind uwtable
define internal i32 @vfio_sync_default_container() #0 {
entry:
  %retval = alloca i32, align 4
  %mp_req = alloca %struct.rte_mp_msg, align 4
  %mp_rep = alloca ptr, align 8
  %mp_reply = alloca %struct.rte_mp_reply, align 8
  %ts = alloca %struct.timespec, align 8
  %p = alloca ptr, align 8
  %iommu_type_id = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %t = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 360, ptr %mp_req) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %mp_rep) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr %mp_reply) #10
  call void @llvm.memset.p0.i64(ptr align 8 %mp_reply, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ts, ptr align 8 @__const.vfio_sync_default_container.ts, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  %param = getelementptr inbounds %struct.rte_mp_msg, ptr %mp_req, i32 0, i32 3
  %arraydecay = getelementptr inbounds [256 x i8], ptr %param, i64 0, i64 0
  store ptr %arraydecay, ptr %p, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %iommu_type_id) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  %call = call i32 @rte_eal_process_type()
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  %vfio_enabled = getelementptr inbounds %struct.vfio_config, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %vfio_enabled, align 8, !tbaa !65
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then2

lor.lhs.false:                                    ; preds = %if.end
  %2 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  %vfio_container_fd = getelementptr inbounds %struct.vfio_config, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %vfio_container_fd, align 4, !tbaa !30
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  %call3 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.63)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30

if.end4:                                          ; preds = %lor.lhs.false
  %4 = load ptr, ptr %p, align 8, !tbaa !8
  %req = getelementptr inbounds %struct.vfio_mp_param, ptr %4, i32 0, i32 0
  store i32 2048, ptr %req, align 4, !tbaa !66
  %name = getelementptr inbounds %struct.rte_mp_msg, ptr %mp_req, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [64 x i8], ptr %name, i64 0, i64 0
  %call6 = call ptr @strcpy(ptr noundef %arraydecay5, ptr noundef @.str.27) #10
  %len_param = getelementptr inbounds %struct.rte_mp_msg, ptr %mp_req, i32 0, i32 1
  store i32 12, ptr %len_param, align 4, !tbaa !68
  %num_fds = getelementptr inbounds %struct.rte_mp_msg, ptr %mp_req, i32 0, i32 2
  store i32 0, ptr %num_fds, align 4, !tbaa !70
  store i32 -1, ptr %iommu_type_id, align 4, !tbaa !4
  %call7 = call i32 @rte_mp_request_sync(ptr noundef %mp_req, ptr noundef %mp_reply, ptr noundef %ts)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.end4
  %nb_received = getelementptr inbounds %struct.rte_mp_reply, ptr %mp_reply, i32 0, i32 1
  %5 = load i32, ptr %nb_received, align 4, !tbaa !71
  %cmp9 = icmp eq i32 %5, 1
  br i1 %cmp9, label %if.then10, label %if.end16

if.then10:                                        ; preds = %land.lhs.true
  %msgs = getelementptr inbounds %struct.rte_mp_reply, ptr %mp_reply, i32 0, i32 2
  %6 = load ptr, ptr %msgs, align 8, !tbaa !73
  %arrayidx = getelementptr inbounds %struct.rte_mp_msg, ptr %6, i64 0
  store ptr %arrayidx, ptr %mp_rep, align 8, !tbaa !8
  %7 = load ptr, ptr %mp_rep, align 8, !tbaa !8
  %param11 = getelementptr inbounds %struct.rte_mp_msg, ptr %7, i32 0, i32 3
  %arraydecay12 = getelementptr inbounds [256 x i8], ptr %param11, i64 0, i64 0
  store ptr %arraydecay12, ptr %p, align 8, !tbaa !8
  %8 = load ptr, ptr %p, align 8, !tbaa !8
  %result = getelementptr inbounds %struct.vfio_mp_param, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %result, align 4, !tbaa !74
  %cmp13 = icmp eq i32 %9, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then10
  %10 = load ptr, ptr %p, align 8, !tbaa !8
  %11 = getelementptr inbounds %struct.vfio_mp_param, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !51
  store i32 %12, ptr %iommu_type_id, align 4, !tbaa !4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then10
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %land.lhs.true, %if.end4
  %msgs17 = getelementptr inbounds %struct.rte_mp_reply, ptr %mp_reply, i32 0, i32 2
  %13 = load ptr, ptr %msgs17, align 8, !tbaa !73
  call void @free(ptr noundef %13) #10
  %14 = load i32, ptr %iommu_type_id, align 4, !tbaa !4
  %cmp18 = icmp slt i32 %14, 0
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  %call20 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.64)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30

if.end21:                                         ; preds = %if.end16
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end21
  %15 = load i32, ptr %i, align 4, !tbaa !4
  %conv = zext i32 %15 to i64
  %cmp22 = icmp ult i64 %conv, 3
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #10
  %16 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = zext i32 %16 to i64
  %arrayidx24 = getelementptr inbounds [3 x %struct.vfio_iommu_type], ptr @iommu_types, i64 0, i64 %idxprom
  store ptr %arrayidx24, ptr %t, align 8, !tbaa !8
  %17 = load ptr, ptr %t, align 8, !tbaa !8
  %type_id = getelementptr inbounds %struct.vfio_iommu_type, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %type_id, align 8, !tbaa !49
  %19 = load i32, ptr %iommu_type_id, align 4, !tbaa !4
  %cmp25 = icmp ne i32 %18, %19
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %for.body
  %20 = load ptr, ptr %t, align 8, !tbaa !8
  %21 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  %vfio_iommu_type = getelementptr inbounds %struct.vfio_config, ptr %21, i32 0, i32 3
  store ptr %20, ptr %vfio_iommu_type, align 8, !tbaa !41
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then27
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup30 [
    i32 4, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup
  %22 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !75

for.end:                                          ; preds = %for.cond
  %23 = load i32, ptr %iommu_type_id, align 4, !tbaa !4
  %call29 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.65, i32 noundef %23)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30

cleanup30:                                        ; preds = %for.end, %cleanup, %if.then19, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %iommu_type_id) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr %mp_reply) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %mp_rep) #10
  call void @llvm.lifetime.end.p0(i64 360, ptr %mp_req) #10
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

declare void @rte_eal_vfio_get_vf_token(ptr noundef) #2 section ".text.experimental"

declare zeroext i1 @rte_uuid_is_null(ptr noundef) #2

declare void @rte_uuid_unparse(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: nounwind uwtable
define internal void @vfio_group_device_get(i32 noundef %vfio_group_fd) #0 {
entry:
  %vfio_group_fd.addr = alloca i32, align 4
  %vfio_cfg = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %vfio_group_fd, ptr %vfio_group_fd.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vfio_cfg) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  %0 = load i32, ptr %vfio_group_fd.addr, align 4, !tbaa !4
  %call = call ptr @get_vfio_cfg_by_group_fd(i32 noundef %0)
  store ptr %call, ptr %vfio_cfg, align 8, !tbaa !8
  %1 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %vfio_group_fd.addr, align 4, !tbaa !4
  %call2 = call i32 @get_vfio_group_idx(i32 noundef %2)
  store i32 %call2, ptr %i, align 4, !tbaa !4
  %3 = load i32, ptr %i, align 4, !tbaa !4
  %cmp3 = icmp slt i32 %3, 0
  br i1 %cmp3, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, ptr %i, align 4, !tbaa !4
  %cmp4 = icmp sgt i32 %4, 63
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load i32, ptr %i, align 4, !tbaa !4
  %call6 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.59, i32 noundef %5)
  br label %if.end7

if.else:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_groups = getelementptr inbounds %struct.vfio_config, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [64 x %struct.vfio_group], ptr %vfio_groups, i64 0, i64 %idxprom
  %devices = getelementptr inbounds %struct.vfio_group, ptr %arrayidx, i32 0, i32 2
  %8 = load i32, ptr %devices, align 4, !tbaa !23
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %devices, align 4, !tbaa !23
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %vfio_cfg) #10
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

; Function Attrs: nounwind uwtable
define i32 @rte_vfio_release_device(ptr noundef %sysfs_base, ptr noundef %dev_addr, i32 noundef %vfio_dev_fd) #0 {
entry:
  %sysfs_base.addr = alloca ptr, align 8
  %dev_addr.addr = alloca ptr, align 8
  %vfio_dev_fd.addr = alloca i32, align 4
  %vfio_cfg = alloca ptr, align 8
  %vfio_group_fd = alloca i32, align 4
  %iommu_group_num = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %sysfs_base, ptr %sysfs_base.addr, align 8, !tbaa !8
  store ptr %dev_addr, ptr %dev_addr.addr, align 8, !tbaa !8
  store i32 %vfio_dev_fd, ptr %vfio_dev_fd.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vfio_cfg) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfio_group_fd) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %iommu_group_num) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  call void @rte_mcfg_mem_read_lock()
  %0 = load ptr, ptr %sysfs_base.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %dev_addr.addr, align 8, !tbaa !8
  %call = call i32 @rte_vfio_get_group_num(ptr noundef %0, ptr noundef %1, ptr noundef %iommu_group_num)
  store i32 %call, ptr %ret, align 4, !tbaa !4
  %2 = load i32, ptr %ret, align 4, !tbaa !4
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev_addr.addr, align 8, !tbaa !8
  %call1 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 5, i32 noundef 0, ptr noundef @.str.17, ptr noundef %3)
  store i32 -1, ptr %ret, align 4, !tbaa !4
  br label %out

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %iommu_group_num, align 4, !tbaa !4
  %call2 = call i32 @rte_vfio_get_group_fd(i32 noundef %4)
  store i32 %call2, ptr %vfio_group_fd, align 4, !tbaa !4
  %5 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %cmp3 = icmp slt i32 %5, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %dev_addr.addr, align 8, !tbaa !8
  %call5 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 7, i32 noundef 0, ptr noundef @.str.18, ptr noundef %6)
  %7 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  store i32 %7, ptr %ret, align 4, !tbaa !4
  br label %out

if.end6:                                          ; preds = %if.end
  %8 = load i32, ptr %iommu_group_num, align 4, !tbaa !4
  %call7 = call ptr @get_vfio_cfg_by_group_num(i32 noundef %8)
  store ptr %call7, ptr %vfio_cfg, align 8, !tbaa !8
  %9 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %tobool = icmp ne ptr %9, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end6
  %10 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.end6
  %11 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %10, %cond.true ], [ %11, %cond.false ]
  store ptr %cond, ptr %vfio_cfg, align 8, !tbaa !8
  %12 = load i32, ptr %vfio_dev_fd.addr, align 4, !tbaa !4
  %call8 = call i32 @close(i32 noundef %12)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %cond.end
  %13 = load ptr, ptr %dev_addr.addr, align 8, !tbaa !8
  %call11 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 7, i32 noundef 0, ptr noundef @.str.19, ptr noundef %13)
  store i32 -1, ptr %ret, align 4, !tbaa !4
  br label %out

if.end12:                                         ; preds = %cond.end
  %14 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  call void @vfio_group_device_put(i32 noundef %14)
  %15 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %call13 = call i32 @vfio_group_device_count(i32 noundef %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end26, label %if.then15

if.then15:                                        ; preds = %if.end12
  %16 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %call16 = call i32 @close(i32 noundef %16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.then15
  %17 = load ptr, ptr %dev_addr.addr, align 8, !tbaa !8
  %call19 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 7, i32 noundef 0, ptr noundef @.str.20, ptr noundef %17)
  store i32 -1, ptr %ret, align 4, !tbaa !4
  br label %out

if.end20:                                         ; preds = %if.then15
  %18 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %call21 = call i32 @rte_vfio_clear_group(i32 noundef %18)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  %19 = load ptr, ptr %dev_addr.addr, align 8, !tbaa !8
  %call24 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 7, i32 noundef 0, ptr noundef @.str.21, ptr noundef %19)
  store i32 -1, ptr %ret, align 4, !tbaa !4
  br label %out

if.end25:                                         ; preds = %if.end20
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end12
  %20 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %21 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  %cmp27 = icmp eq ptr %20, %21
  br i1 %cmp27, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %if.end26
  %22 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_active_groups = getelementptr inbounds %struct.vfio_config, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %vfio_active_groups, align 8, !tbaa !17
  %cmp28 = icmp eq i32 %23, 0
  br i1 %cmp28, label %land.lhs.true29, label %if.end34

land.lhs.true29:                                  ; preds = %land.lhs.true
  %call30 = call i32 @rte_eal_process_type()
  %cmp31 = icmp ne i32 %call30, 1
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %land.lhs.true29
  %call33 = call i32 @rte_mem_event_callback_unregister(ptr noundef @.str.8, ptr noundef null)
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %land.lhs.true29, %land.lhs.true, %if.end26
  store i32 0, ptr %ret, align 4, !tbaa !4
  br label %out

out:                                              ; preds = %if.end34, %if.then23, %if.then18, %if.then10, %if.then4, %if.then
  call void @rte_mcfg_mem_read_unlock()
  %24 = load i32, ptr %ret, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %iommu_group_num) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfio_group_fd) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %vfio_cfg) #10
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal void @vfio_group_device_put(i32 noundef %vfio_group_fd) #0 {
entry:
  %vfio_group_fd.addr = alloca i32, align 4
  %vfio_cfg = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %vfio_group_fd, ptr %vfio_group_fd.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vfio_cfg) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  %0 = load i32, ptr %vfio_group_fd.addr, align 4, !tbaa !4
  %call = call ptr @get_vfio_cfg_by_group_fd(i32 noundef %0)
  store ptr %call, ptr %vfio_cfg, align 8, !tbaa !8
  %1 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %vfio_group_fd.addr, align 4, !tbaa !4
  %call2 = call i32 @get_vfio_group_idx(i32 noundef %2)
  store i32 %call2, ptr %i, align 4, !tbaa !4
  %3 = load i32, ptr %i, align 4, !tbaa !4
  %cmp3 = icmp slt i32 %3, 0
  br i1 %cmp3, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, ptr %i, align 4, !tbaa !4
  %cmp4 = icmp sgt i32 %4, 63
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load i32, ptr %i, align 4, !tbaa !4
  %call6 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.59, i32 noundef %5)
  br label %if.end7

if.else:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_groups = getelementptr inbounds %struct.vfio_config, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [64 x %struct.vfio_group], ptr %vfio_groups, i64 0, i64 %idxprom
  %devices = getelementptr inbounds %struct.vfio_group, ptr %arrayidx, i32 0, i32 2
  %8 = load i32, ptr %devices, align 4, !tbaa !23
  %dec = add nsw i32 %8, -1
  store i32 %dec, ptr %devices, align 4, !tbaa !23
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %vfio_cfg) #10
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

declare i32 @rte_mem_event_callback_unregister(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @rte_vfio_enable(ptr noundef %modname) #0 {
entry:
  %retval = alloca i32, align 4
  %modname.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %vfio_available = alloca i32, align 4
  %internal_conf = alloca ptr, align 8
  %lock = alloca %struct.rte_spinlock_recursive_t, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %modname, ptr %modname.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfio_available) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %internal_conf) #10
  %call = call ptr @eal_get_internal_configuration()
  store ptr %call, ptr %internal_conf, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 12, ptr %lock) #10
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %lock, ptr align 4 @__const.rte_vfio_enable.lock, i64 12, i1 false)
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !4
  %cmp = icmp slt i32 %0, 64
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [64 x %struct.vfio_config], ptr @vfio_cfgs, i64 0, i64 %idxprom
  %vfio_container_fd = getelementptr inbounds %struct.vfio_config, ptr %arrayidx, i32 0, i32 1
  store i32 -1, ptr %vfio_container_fd, align 4, !tbaa !30
  %2 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [64 x %struct.vfio_config], ptr @vfio_cfgs, i64 0, i64 %idxprom1
  %vfio_active_groups = getelementptr inbounds %struct.vfio_config, ptr %arrayidx2, i32 0, i32 2
  store i32 0, ptr %vfio_active_groups, align 8, !tbaa !17
  %3 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [64 x %struct.vfio_config], ptr @vfio_cfgs, i64 0, i64 %idxprom3
  %vfio_iommu_type = getelementptr inbounds %struct.vfio_config, ptr %arrayidx4, i32 0, i32 3
  store ptr null, ptr %vfio_iommu_type, align 8, !tbaa !41
  %4 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [64 x %struct.vfio_config], ptr @vfio_cfgs, i64 0, i64 %idxprom5
  %mem_maps = getelementptr inbounds %struct.vfio_config, ptr %arrayidx6, i32 0, i32 5
  %lock7 = getelementptr inbounds %struct.user_mem_maps, ptr %mem_maps, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock7, ptr align 4 %lock, i64 12, i1 true), !tbaa.struct !76
  store i32 0, ptr %j, align 4, !tbaa !4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4, !tbaa !4
  %cmp9 = icmp slt i32 %5, 64
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %6 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom11 = sext i32 %6 to i64
  %arrayidx12 = getelementptr inbounds [64 x %struct.vfio_config], ptr @vfio_cfgs, i64 0, i64 %idxprom11
  %vfio_groups = getelementptr inbounds %struct.vfio_config, ptr %arrayidx12, i32 0, i32 4
  %7 = load i32, ptr %j, align 4, !tbaa !4
  %idxprom13 = sext i32 %7 to i64
  %arrayidx14 = getelementptr inbounds [64 x %struct.vfio_group], ptr %vfio_groups, i64 0, i64 %idxprom13
  %fd = getelementptr inbounds %struct.vfio_group, ptr %arrayidx14, i32 0, i32 1
  store i32 -1, ptr %fd, align 4, !tbaa !15
  %8 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom15 = sext i32 %8 to i64
  %arrayidx16 = getelementptr inbounds [64 x %struct.vfio_config], ptr @vfio_cfgs, i64 0, i64 %idxprom15
  %vfio_groups17 = getelementptr inbounds %struct.vfio_config, ptr %arrayidx16, i32 0, i32 4
  %9 = load i32, ptr %j, align 4, !tbaa !4
  %idxprom18 = sext i32 %9 to i64
  %arrayidx19 = getelementptr inbounds [64 x %struct.vfio_group], ptr %vfio_groups17, i64 0, i64 %idxprom18
  %group_num = getelementptr inbounds %struct.vfio_group, ptr %arrayidx19, i32 0, i32 0
  store i32 -1, ptr %group_num, align 4, !tbaa !10
  %10 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom20 = sext i32 %10 to i64
  %arrayidx21 = getelementptr inbounds [64 x %struct.vfio_config], ptr @vfio_cfgs, i64 0, i64 %idxprom20
  %vfio_groups22 = getelementptr inbounds %struct.vfio_config, ptr %arrayidx21, i32 0, i32 4
  %11 = load i32, ptr %j, align 4, !tbaa !4
  %idxprom23 = sext i32 %11 to i64
  %arrayidx24 = getelementptr inbounds [64 x %struct.vfio_group], ptr %vfio_groups22, i64 0, i64 %idxprom23
  %devices = getelementptr inbounds %struct.vfio_group, ptr %arrayidx24, i32 0, i32 2
  store i32 0, ptr %devices, align 4, !tbaa !23
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %12 = load i32, ptr %j, align 4, !tbaa !4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %j, align 4, !tbaa !4
  br label %for.cond8, !llvm.loop !77

for.end:                                          ; preds = %for.cond8
  br label %for.inc25

for.inc25:                                        ; preds = %for.end
  %13 = load i32, ptr %i, align 4, !tbaa !4
  %inc26 = add nsw i32 %13, 1
  store i32 %inc26, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !78

for.end27:                                        ; preds = %for.cond
  %call28 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.22)
  %14 = load ptr, ptr %modname.addr, align 8, !tbaa !8
  %call29 = call i32 @rte_eal_check_module(ptr noundef %14)
  store i32 %call29, ptr %vfio_available, align 4, !tbaa !4
  %15 = load i32, ptr %vfio_available, align 4, !tbaa !4
  %cmp30 = icmp eq i32 %15, -1
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %for.end27
  %call31 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 7, i32 noundef 0, ptr noundef @.str.23)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.end27
  %16 = load i32, ptr %vfio_available, align 4, !tbaa !4
  %cmp32 = icmp eq i32 %16, 0
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end
  %call34 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.24)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end
  %17 = load ptr, ptr %internal_conf, align 8, !tbaa !8
  %process_type = getelementptr inbounds %struct.internal_config, ptr %17, i32 0, i32 11
  %18 = load volatile i32, ptr %process_type, align 8, !tbaa !31
  %cmp36 = icmp eq i32 %18, 0
  br i1 %cmp36, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end35
  %call38 = call i32 @rte_vfio_get_container_fd()
  %19 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  %vfio_container_fd39 = getelementptr inbounds %struct.vfio_config, ptr %19, i32 0, i32 1
  store i32 %call38, ptr %vfio_container_fd39, align 4, !tbaa !30
  br label %if.end42

if.else:                                          ; preds = %if.end35
  %call40 = call i32 @vfio_get_default_container_fd()
  %20 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  %vfio_container_fd41 = getelementptr inbounds %struct.vfio_config, ptr %20, i32 0, i32 1
  store i32 %call40, ptr %vfio_container_fd41, align 4, !tbaa !30
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then37
  %21 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  %vfio_container_fd43 = getelementptr inbounds %struct.vfio_config, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %vfio_container_fd43, align 4, !tbaa !30
  %cmp44 = icmp ne i32 %22, -1
  br i1 %cmp44, label %if.then45, label %if.else47

if.then45:                                        ; preds = %if.end42
  %call46 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 7, i32 noundef 0, ptr noundef @.str.25)
  %23 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  %vfio_enabled = getelementptr inbounds %struct.vfio_config, ptr %23, i32 0, i32 0
  store i32 1, ptr %vfio_enabled, align 8, !tbaa !65
  br label %if.end49

if.else47:                                        ; preds = %if.end42
  %call48 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 6, i32 noundef 0, ptr noundef @.str.26)
  br label %if.end49

if.end49:                                         ; preds = %if.else47, %if.then45
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then33, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr %lock) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %internal_conf) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfio_available) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

declare i32 @rte_eal_check_module(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @rte_vfio_get_container_fd() #0 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %vfio_container_fd = alloca i32, align 4
  %mp_req = alloca %struct.rte_mp_msg, align 4
  %mp_rep = alloca ptr, align 8
  %mp_reply = alloca %struct.rte_mp_reply, align 8
  %ts = alloca %struct.timespec, align 8
  %p = alloca ptr, align 8
  %internal_conf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfio_container_fd) #10
  call void @llvm.lifetime.start.p0(i64 360, ptr %mp_req) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %mp_rep) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr %mp_reply) #10
  call void @llvm.memset.p0.i64(ptr align 8 %mp_reply, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ts, ptr align 8 @__const.rte_vfio_get_container_fd.ts, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  %param = getelementptr inbounds %struct.rte_mp_msg, ptr %mp_req, i32 0, i32 3
  %arraydecay = getelementptr inbounds [256 x i8], ptr %param, i64 0, i64 0
  store ptr %arraydecay, ptr %p, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %internal_conf) #10
  %call = call ptr @eal_get_internal_configuration()
  store ptr %call, ptr %internal_conf, align 8, !tbaa !8
  %0 = load ptr, ptr %internal_conf, align 8, !tbaa !8
  %process_type = getelementptr inbounds %struct.internal_config, ptr %0, i32 0, i32 11
  %1 = load volatile i32, ptr %process_type, align 8, !tbaa !31
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end25

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, i32, ...) @open64(ptr noundef @.str.34, i32 noundef 2)
  store i32 %call1, ptr %vfio_container_fd, align 4, !tbaa !4
  %2 = load i32, ptr %vfio_container_fd, align 4, !tbaa !4
  %cmp2 = icmp slt i32 %2, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %call4 = call ptr @__errno_location() #11
  %3 = load i32, ptr %call4, align 4, !tbaa !4
  %call5 = call ptr @__errno_location() #11
  %4 = load i32, ptr %call5, align 4, !tbaa !4
  %call6 = call ptr @strerror(i32 noundef %4) #10
  %call7 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.35, ptr noundef @.str.34, i32 noundef %3, ptr noundef %call6)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %5 = load i32, ptr %vfio_container_fd, align 4, !tbaa !4
  %call8 = call i32 (i32, i64, ...) @ioctl(i32 noundef %5, i64 noundef 15204) #10
  store i32 %call8, ptr %ret, align 4, !tbaa !4
  %6 = load i32, ptr %ret, align 4, !tbaa !4
  %cmp9 = icmp ne i32 %6, 0
  br i1 %cmp9, label %if.then10, label %if.end20

if.then10:                                        ; preds = %if.end
  %7 = load i32, ptr %ret, align 4, !tbaa !4
  %cmp11 = icmp slt i32 %7, 0
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then10
  %call13 = call ptr @__errno_location() #11
  %8 = load i32, ptr %call13, align 4, !tbaa !4
  %call14 = call ptr @__errno_location() #11
  %9 = load i32, ptr %call14, align 4, !tbaa !4
  %call15 = call ptr @strerror(i32 noundef %9) #10
  %call16 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.36, i32 noundef %8, ptr noundef %call15)
  br label %if.end18

if.else:                                          ; preds = %if.then10
  %call17 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.37)
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then12
  %10 = load i32, ptr %vfio_container_fd, align 4, !tbaa !4
  %call19 = call i32 @close(i32 noundef %10)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %11 = load i32, ptr %vfio_container_fd, align 4, !tbaa !4
  %call21 = call i32 @vfio_has_supported_extensions(i32 noundef %11)
  store i32 %call21, ptr %ret, align 4, !tbaa !4
  %12 = load i32, ptr %ret, align 4, !tbaa !4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  %call23 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.38)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %13 = load i32, ptr %vfio_container_fd, align 4, !tbaa !4
  store i32 %13, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %entry
  %14 = load ptr, ptr %p, align 8, !tbaa !8
  %req = getelementptr inbounds %struct.vfio_mp_param, ptr %14, i32 0, i32 0
  store i32 256, ptr %req, align 4, !tbaa !66
  %name = getelementptr inbounds %struct.rte_mp_msg, ptr %mp_req, i32 0, i32 0
  %arraydecay26 = getelementptr inbounds [64 x i8], ptr %name, i64 0, i64 0
  %call27 = call ptr @strcpy(ptr noundef %arraydecay26, ptr noundef @.str.27) #10
  %len_param = getelementptr inbounds %struct.rte_mp_msg, ptr %mp_req, i32 0, i32 1
  store i32 12, ptr %len_param, align 4, !tbaa !68
  %num_fds = getelementptr inbounds %struct.rte_mp_msg, ptr %mp_req, i32 0, i32 2
  store i32 0, ptr %num_fds, align 4, !tbaa !70
  store i32 -1, ptr %vfio_container_fd, align 4, !tbaa !4
  %call28 = call i32 @rte_mp_request_sync(ptr noundef %mp_req, ptr noundef %mp_reply, ptr noundef %ts)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %land.lhs.true, label %if.end42

land.lhs.true:                                    ; preds = %if.end25
  %nb_received = getelementptr inbounds %struct.rte_mp_reply, ptr %mp_reply, i32 0, i32 1
  %15 = load i32, ptr %nb_received, align 4, !tbaa !71
  %cmp30 = icmp eq i32 %15, 1
  br i1 %cmp30, label %if.then31, label %if.end42

if.then31:                                        ; preds = %land.lhs.true
  %msgs = getelementptr inbounds %struct.rte_mp_reply, ptr %mp_reply, i32 0, i32 2
  %16 = load ptr, ptr %msgs, align 8, !tbaa !73
  %arrayidx = getelementptr inbounds %struct.rte_mp_msg, ptr %16, i64 0
  store ptr %arrayidx, ptr %mp_rep, align 8, !tbaa !8
  %17 = load ptr, ptr %mp_rep, align 8, !tbaa !8
  %param32 = getelementptr inbounds %struct.rte_mp_msg, ptr %17, i32 0, i32 3
  %arraydecay33 = getelementptr inbounds [256 x i8], ptr %param32, i64 0, i64 0
  store ptr %arraydecay33, ptr %p, align 8, !tbaa !8
  %18 = load ptr, ptr %p, align 8, !tbaa !8
  %result = getelementptr inbounds %struct.vfio_mp_param, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %result, align 4, !tbaa !74
  %cmp34 = icmp eq i32 %19, 0
  br i1 %cmp34, label %land.lhs.true35, label %if.end41

land.lhs.true35:                                  ; preds = %if.then31
  %20 = load ptr, ptr %mp_rep, align 8, !tbaa !8
  %num_fds36 = getelementptr inbounds %struct.rte_mp_msg, ptr %20, i32 0, i32 2
  %21 = load i32, ptr %num_fds36, align 4, !tbaa !70
  %cmp37 = icmp eq i32 %21, 1
  br i1 %cmp37, label %if.then38, label %if.end41

if.then38:                                        ; preds = %land.lhs.true35
  %22 = load ptr, ptr %mp_rep, align 8, !tbaa !8
  %fds = getelementptr inbounds %struct.rte_mp_msg, ptr %22, i32 0, i32 4
  %arrayidx39 = getelementptr inbounds [8 x i32], ptr %fds, i64 0, i64 0
  %23 = load i32, ptr %arrayidx39, align 4, !tbaa !4
  store i32 %23, ptr %vfio_container_fd, align 4, !tbaa !4
  %msgs40 = getelementptr inbounds %struct.rte_mp_reply, ptr %mp_reply, i32 0, i32 2
  %24 = load ptr, ptr %msgs40, align 8, !tbaa !73
  call void @free(ptr noundef %24) #10
  %25 = load i32, ptr %vfio_container_fd, align 4, !tbaa !4
  store i32 %25, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end41:                                         ; preds = %land.lhs.true35, %if.then31
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %land.lhs.true, %if.end25
  %msgs43 = getelementptr inbounds %struct.rte_mp_reply, ptr %mp_reply, i32 0, i32 2
  %26 = load ptr, ptr %msgs43, align 8, !tbaa !73
  call void @free(ptr noundef %26) #10
  %call44 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.39)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then38, %if.end24, %if.then22, %if.end18, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %internal_conf) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr %mp_reply) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %mp_rep) #10
  call void @llvm.lifetime.end.p0(i64 360, ptr %mp_req) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfio_container_fd) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define i32 @vfio_get_default_container_fd() #0 {
entry:
  %retval = alloca i32, align 4
  %mp_req = alloca %struct.rte_mp_msg, align 4
  %mp_rep = alloca ptr, align 8
  %mp_reply = alloca %struct.rte_mp_reply, align 8
  %ts = alloca %struct.timespec, align 8
  %p = alloca ptr, align 8
  %container_fd = alloca i32, align 4
  %internal_conf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 360, ptr %mp_req) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %mp_rep) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr %mp_reply) #10
  call void @llvm.memset.p0.i64(ptr align 8 %mp_reply, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ts, ptr align 8 @__const.vfio_get_default_container_fd.ts, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  %param = getelementptr inbounds %struct.rte_mp_msg, ptr %mp_req, i32 0, i32 3
  %arraydecay = getelementptr inbounds [256 x i8], ptr %param, i64 0, i64 0
  store ptr %arraydecay, ptr %p, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %container_fd) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %internal_conf) #10
  %call = call ptr @eal_get_internal_configuration()
  store ptr %call, ptr %internal_conf, align 8, !tbaa !8
  %0 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  %vfio_enabled = getelementptr inbounds %struct.vfio_config, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %vfio_enabled, align 8, !tbaa !65
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  %vfio_container_fd = getelementptr inbounds %struct.vfio_config, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %vfio_container_fd, align 4, !tbaa !30
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %internal_conf, align 8, !tbaa !8
  %process_type = getelementptr inbounds %struct.internal_config, ptr %4, i32 0, i32 11
  %5 = load volatile i32, ptr %process_type, align 8, !tbaa !31
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %6 = load ptr, ptr %p, align 8, !tbaa !8
  %req = getelementptr inbounds %struct.vfio_mp_param, ptr %6, i32 0, i32 0
  store i32 1024, ptr %req, align 4, !tbaa !66
  %name = getelementptr inbounds %struct.rte_mp_msg, ptr %mp_req, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [64 x i8], ptr %name, i64 0, i64 0
  %call4 = call ptr @strcpy(ptr noundef %arraydecay3, ptr noundef @.str.27) #10
  %len_param = getelementptr inbounds %struct.rte_mp_msg, ptr %mp_req, i32 0, i32 1
  store i32 12, ptr %len_param, align 4, !tbaa !68
  %num_fds = getelementptr inbounds %struct.rte_mp_msg, ptr %mp_req, i32 0, i32 2
  store i32 0, ptr %num_fds, align 4, !tbaa !70
  %call5 = call i32 @rte_mp_request_sync(ptr noundef %mp_req, ptr noundef %mp_reply, ptr noundef %ts)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end2
  %nb_received = getelementptr inbounds %struct.rte_mp_reply, ptr %mp_reply, i32 0, i32 1
  %7 = load i32, ptr %nb_received, align 4, !tbaa !71
  %cmp7 = icmp eq i32 %7, 1
  br i1 %cmp7, label %if.then8, label %if.end19

if.then8:                                         ; preds = %land.lhs.true
  %msgs = getelementptr inbounds %struct.rte_mp_reply, ptr %mp_reply, i32 0, i32 2
  %8 = load ptr, ptr %msgs, align 8, !tbaa !73
  %arrayidx = getelementptr inbounds %struct.rte_mp_msg, ptr %8, i64 0
  store ptr %arrayidx, ptr %mp_rep, align 8, !tbaa !8
  %9 = load ptr, ptr %mp_rep, align 8, !tbaa !8
  %param9 = getelementptr inbounds %struct.rte_mp_msg, ptr %9, i32 0, i32 3
  %arraydecay10 = getelementptr inbounds [256 x i8], ptr %param9, i64 0, i64 0
  store ptr %arraydecay10, ptr %p, align 8, !tbaa !8
  %10 = load ptr, ptr %p, align 8, !tbaa !8
  %result = getelementptr inbounds %struct.vfio_mp_param, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %result, align 4, !tbaa !74
  %cmp11 = icmp eq i32 %11, 0
  br i1 %cmp11, label %land.lhs.true12, label %if.end18

land.lhs.true12:                                  ; preds = %if.then8
  %12 = load ptr, ptr %mp_rep, align 8, !tbaa !8
  %num_fds13 = getelementptr inbounds %struct.rte_mp_msg, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %num_fds13, align 4, !tbaa !70
  %cmp14 = icmp eq i32 %13, 1
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %land.lhs.true12
  %14 = load ptr, ptr %mp_rep, align 8, !tbaa !8
  %fds = getelementptr inbounds %struct.rte_mp_msg, ptr %14, i32 0, i32 4
  %arrayidx16 = getelementptr inbounds [8 x i32], ptr %fds, i64 0, i64 0
  %15 = load i32, ptr %arrayidx16, align 4, !tbaa !4
  store i32 %15, ptr %container_fd, align 4, !tbaa !4
  %msgs17 = getelementptr inbounds %struct.rte_mp_reply, ptr %mp_reply, i32 0, i32 2
  %16 = load ptr, ptr %msgs17, align 8, !tbaa !73
  call void @free(ptr noundef %16) #10
  %17 = load i32, ptr %container_fd, align 4, !tbaa !4
  store i32 %17, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true12, %if.then8
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %land.lhs.true, %if.end2
  %msgs20 = getelementptr inbounds %struct.rte_mp_reply, ptr %mp_reply, i32 0, i32 2
  %18 = load ptr, ptr %msgs20, align 8, !tbaa !73
  call void @free(ptr noundef %18) #10
  %call21 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.28)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then15, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %internal_conf) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %container_fd) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr %mp_reply) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %mp_rep) #10
  call void @llvm.lifetime.end.p0(i64 360, ptr %mp_req) #10
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @rte_vfio_is_enabled(ptr noundef %modname) #0 {
entry:
  %modname.addr = alloca ptr, align 8
  %mod_available = alloca i32, align 4
  store ptr %modname, ptr %modname.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %mod_available) #10
  %0 = load ptr, ptr %modname.addr, align 8, !tbaa !8
  %call = call i32 @rte_eal_check_module(ptr noundef %0)
  %cmp = icmp sgt i32 %call, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %mod_available, align 4, !tbaa !4
  %1 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  %vfio_enabled = getelementptr inbounds %struct.vfio_config, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %vfio_enabled, align 8, !tbaa !65
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %mod_available, align 4, !tbaa !4
  %tobool1 = icmp ne i32 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr %mod_available) #10
  ret i32 %land.ext
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #4

declare i32 @rte_mp_request_sync(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: nounwind uwtable
define i32 @vfio_get_iommu_type() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  %vfio_iommu_type = getelementptr inbounds %struct.vfio_config, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %vfio_iommu_type, align 8, !tbaa !41
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  %vfio_iommu_type1 = getelementptr inbounds %struct.vfio_config, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %vfio_iommu_type1, align 8, !tbaa !41
  %type_id = getelementptr inbounds %struct.vfio_iommu_type, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %type_id, align 8, !tbaa !49
  store i32 %4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @vfio_has_supported_extensions(i32 noundef %vfio_container_fd) #0 {
entry:
  %retval = alloca i32, align 4
  %vfio_container_fd.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %idx = alloca i32, align 4
  %n_extensions = alloca i32, align 4
  %t = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %vfio_container_fd, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_extensions) #10
  store i32 0, ptr %n_extensions, align 4, !tbaa !4
  store i32 0, ptr %idx, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %idx, align 4, !tbaa !4
  %conv = zext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #10
  %1 = load i32, ptr %idx, align 4, !tbaa !4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.vfio_iommu_type], ptr @iommu_types, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %t, align 8, !tbaa !8
  %2 = load i32, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  %3 = load ptr, ptr %t, align 8, !tbaa !8
  %type_id = getelementptr inbounds %struct.vfio_iommu_type, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %type_id, align 8, !tbaa !49
  %call = call i32 (i32, i64, ...) @ioctl(i32 noundef %2, i64 noundef 15205, i32 noundef %4) #10
  store i32 %call, ptr %ret, align 4, !tbaa !4
  %5 = load i32, ptr %ret, align 4, !tbaa !4
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %call4 = call ptr @__errno_location() #11
  %6 = load i32, ptr %call4, align 4, !tbaa !4
  %call5 = call ptr @__errno_location() #11
  %7 = load i32, ptr %call5, align 4, !tbaa !4
  %call6 = call ptr @strerror(i32 noundef %7) #10
  %call7 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.30, i32 noundef %6, ptr noundef %call6)
  %8 = load i32, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  %call8 = call i32 @close(i32 noundef %8)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %for.body
  %9 = load i32, ptr %ret, align 4, !tbaa !4
  %cmp9 = icmp eq i32 %9, 1
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.else
  %10 = load i32, ptr %n_extensions, align 4, !tbaa !4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %n_extensions, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end
  %11 = load ptr, ptr %t, align 8, !tbaa !8
  %type_id13 = getelementptr inbounds %struct.vfio_iommu_type, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %type_id13, align 8, !tbaa !49
  %13 = load ptr, ptr %t, align 8, !tbaa !8
  %name = getelementptr inbounds %struct.vfio_iommu_type, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %name, align 8, !tbaa !50
  %15 = load i32, ptr %ret, align 4, !tbaa !4
  %tobool = icmp ne i32 %15, 0
  %16 = zext i1 %tobool to i64
  %cond = select i1 %tobool, ptr @.str.32, ptr @.str.33
  %call14 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.31, i32 noundef %12, ptr noundef %14, ptr noundef %cond)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup20 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %17 = load i32, ptr %idx, align 4, !tbaa !4
  %inc15 = add i32 %17, 1
  store i32 %inc15, ptr %idx, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  %18 = load i32, ptr %n_extensions, align 4, !tbaa !4
  %tobool16 = icmp ne i32 %18, 0
  br i1 %tobool16, label %if.end19, label %if.then17

if.then17:                                        ; preds = %for.end
  %19 = load i32, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  %call18 = call i32 @close(i32 noundef %19)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20

if.end19:                                         ; preds = %for.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20

cleanup20:                                        ; preds = %if.end19, %if.then17, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_extensions) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

declare i32 @open64(ptr noundef, i32 noundef, ...) #2

; Function Attrs: nounwind
declare i64 @readlink(ptr noundef, ptr noundef, i64 noundef) #4

declare i32 @rte_strsplit(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef signext) #2

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind uwtable
define i32 @rte_vfio_noiommu_is_enabled() #0 {
entry:
  %retval = alloca i32, align 4
  %fd = alloca i32, align 4
  %cnt = alloca i64, align 8
  %c = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %cnt) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #10
  %call = call i32 (ptr, i32, ...) @open64(ptr noundef @.str.43, i32 noundef 0)
  store i32 %call, ptr %fd, align 4, !tbaa !4
  %0 = load i32, ptr %fd, align 4, !tbaa !4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %call1 = call ptr @__errno_location() #11
  %1 = load i32, ptr %call1, align 4, !tbaa !4
  %cmp2 = icmp ne i32 %1, 2
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %call4 = call ptr @__errno_location() #11
  %2 = load i32, ptr %call4, align 4, !tbaa !4
  %call5 = call ptr @__errno_location() #11
  %3 = load i32, ptr %call5, align 4, !tbaa !4
  %call6 = call ptr @strerror(i32 noundef %3) #10
  %call7 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.44, i32 noundef %2, ptr noundef %call6)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %entry
  %4 = load i32, ptr %fd, align 4, !tbaa !4
  %call9 = call i64 @read(i32 noundef %4, ptr noundef %c, i64 noundef 1)
  store i64 %call9, ptr %cnt, align 8, !tbaa !55
  %5 = load i32, ptr %fd, align 4, !tbaa !4
  %call10 = call i32 @close(i32 noundef %5)
  %6 = load i64, ptr %cnt, align 8, !tbaa !55
  %cmp11 = icmp ne i64 %6, 1
  br i1 %cmp11, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end8
  %call13 = call ptr @__errno_location() #11
  %7 = load i32, ptr %call13, align 4, !tbaa !4
  %call14 = call ptr @__errno_location() #11
  %8 = load i32, ptr %call14, align 4, !tbaa !4
  %call15 = call ptr @strerror(i32 noundef %8) #10
  %call16 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.45, i32 noundef %7, ptr noundef %call15)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %9 = load i8, ptr %c, align 1, !tbaa !51
  %conv = sext i8 %9 to i32
  %cmp18 = icmp eq i32 %conv, 89
  %conv19 = zext i1 %cmp18 to i32
  store i32 %conv19, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then12, %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %cnt) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #10
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define i32 @rte_vfio_container_create() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  store i32 1, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !4
  %cmp = icmp slt i32 %0, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [64 x %struct.vfio_config], ptr @vfio_cfgs, i64 0, i64 %idxprom
  %vfio_container_fd = getelementptr inbounds %struct.vfio_config, ptr %arrayidx, i32 0, i32 1
  %2 = load i32, ptr %vfio_container_fd, align 4, !tbaa !30
  %cmp1 = icmp eq i32 %2, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %3 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !80

for.end:                                          ; preds = %if.then, %for.cond
  %4 = load i32, ptr %i, align 4, !tbaa !4
  %cmp2 = icmp eq i32 %4, 64
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.end
  %call = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.46)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %for.end
  %call5 = call i32 @rte_vfio_get_container_fd()
  %5 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [64 x %struct.vfio_config], ptr @vfio_cfgs, i64 0, i64 %idxprom6
  %vfio_container_fd8 = getelementptr inbounds %struct.vfio_config, ptr %arrayidx7, i32 0, i32 1
  store i32 %call5, ptr %vfio_container_fd8, align 4, !tbaa !30
  %6 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [64 x %struct.vfio_config], ptr @vfio_cfgs, i64 0, i64 %idxprom9
  %vfio_container_fd11 = getelementptr inbounds %struct.vfio_config, ptr %arrayidx10, i32 0, i32 1
  %7 = load i32, ptr %vfio_container_fd11, align 4, !tbaa !30
  %cmp12 = icmp slt i32 %7, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end4
  %call14 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 6, i32 noundef 0, ptr noundef @.str.47)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end4
  %8 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom16 = sext i32 %8 to i64
  %arrayidx17 = getelementptr inbounds [64 x %struct.vfio_config], ptr @vfio_cfgs, i64 0, i64 %idxprom16
  %vfio_container_fd18 = getelementptr inbounds %struct.vfio_config, ptr %arrayidx17, i32 0, i32 1
  %9 = load i32, ptr %vfio_container_fd18, align 4, !tbaa !30
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @rte_vfio_container_destroy(i32 noundef %container_fd) #0 {
entry:
  %retval = alloca i32, align 4
  %container_fd.addr = alloca i32, align 4
  %vfio_cfg = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %container_fd, ptr %container_fd.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vfio_cfg) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  %0 = load i32, ptr %container_fd.addr, align 4, !tbaa !4
  %call = call ptr @get_vfio_cfg_by_container_fd(i32 noundef %0)
  store ptr %call, ptr %vfio_cfg, align 8, !tbaa !8
  %1 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.48)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !tbaa !4
  %cmp2 = icmp slt i32 %2, 64
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_groups = getelementptr inbounds %struct.vfio_config, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [64 x %struct.vfio_group], ptr %vfio_groups, i64 0, i64 %idxprom
  %group_num = getelementptr inbounds %struct.vfio_group, ptr %arrayidx, i32 0, i32 0
  %5 = load i32, ptr %group_num, align 4, !tbaa !10
  %cmp3 = icmp ne i32 %5, -1
  br i1 %cmp3, label %if.then4, label %if.end10

if.then4:                                         ; preds = %for.body
  %6 = load i32, ptr %container_fd.addr, align 4, !tbaa !4
  %7 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_groups5 = getelementptr inbounds %struct.vfio_config, ptr %7, i32 0, i32 4
  %8 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [64 x %struct.vfio_group], ptr %vfio_groups5, i64 0, i64 %idxprom6
  %group_num8 = getelementptr inbounds %struct.vfio_group, ptr %arrayidx7, i32 0, i32 0
  %9 = load i32, ptr %group_num8, align 4, !tbaa !10
  %call9 = call i32 @rte_vfio_container_group_unbind(i32 noundef %6, i32 noundef %9)
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %10 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  %11 = load i32, ptr %container_fd.addr, align 4, !tbaa !4
  %call11 = call i32 @close(i32 noundef %11)
  %12 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_container_fd = getelementptr inbounds %struct.vfio_config, ptr %12, i32 0, i32 1
  store i32 -1, ptr %vfio_container_fd, align 4, !tbaa !30
  %13 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_active_groups = getelementptr inbounds %struct.vfio_config, ptr %13, i32 0, i32 2
  store i32 0, ptr %vfio_active_groups, align 8, !tbaa !17
  %14 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_iommu_type = getelementptr inbounds %struct.vfio_config, ptr %14, i32 0, i32 3
  store ptr null, ptr %vfio_iommu_type, align 8, !tbaa !41
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %vfio_cfg) #10
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal ptr @get_vfio_cfg_by_container_fd(i32 noundef %container_fd) #0 {
entry:
  %retval = alloca ptr, align 8
  %container_fd.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %container_fd, ptr %container_fd.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  %0 = load i32, ptr %container_fd.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @default_vfio_cfg, align 8, !tbaa !8
  store ptr %1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !tbaa !4
  %cmp1 = icmp slt i32 %2, 64
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [64 x %struct.vfio_config], ptr @vfio_cfgs, i64 0, i64 %idxprom
  %vfio_container_fd = getelementptr inbounds %struct.vfio_config, ptr %arrayidx, i32 0, i32 1
  %4 = load i32, ptr %vfio_container_fd, align 4, !tbaa !30
  %5 = load i32, ptr %container_fd.addr, align 4, !tbaa !4
  %cmp2 = icmp eq i32 %4, %5
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [64 x %struct.vfio_config], ptr @vfio_cfgs, i64 0, i64 %idxprom4
  store ptr %arrayidx5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %7 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !82

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define i32 @rte_vfio_container_group_unbind(i32 noundef %container_fd, i32 noundef %iommu_group_num) #0 {
entry:
  %retval = alloca i32, align 4
  %container_fd.addr = alloca i32, align 4
  %iommu_group_num.addr = alloca i32, align 4
  %vfio_cfg = alloca ptr, align 8
  %cur_grp = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %container_fd, ptr %container_fd.addr, align 4, !tbaa !4
  store i32 %iommu_group_num, ptr %iommu_group_num.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vfio_cfg) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_grp) #10
  store ptr null, ptr %cur_grp, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  %0 = load i32, ptr %container_fd.addr, align 4, !tbaa !4
  %call = call ptr @get_vfio_cfg_by_container_fd(i32 noundef %0)
  store ptr %call, ptr %vfio_cfg, align 8, !tbaa !8
  %1 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.48)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !tbaa !4
  %cmp2 = icmp slt i32 %2, 64
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_groups = getelementptr inbounds %struct.vfio_config, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [64 x %struct.vfio_group], ptr %vfio_groups, i64 0, i64 %idxprom
  %group_num = getelementptr inbounds %struct.vfio_group, ptr %arrayidx, i32 0, i32 0
  %5 = load i32, ptr %group_num, align 4, !tbaa !10
  %6 = load i32, ptr %iommu_group_num.addr, align 4, !tbaa !4
  %cmp3 = icmp eq i32 %5, %6
  br i1 %cmp3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %for.body
  %7 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_groups5 = getelementptr inbounds %struct.vfio_config, ptr %7, i32 0, i32 4
  %8 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [64 x %struct.vfio_group], ptr %vfio_groups5, i64 0, i64 %idxprom6
  store ptr %arrayidx7, ptr %cur_grp, align 8, !tbaa !8
  br label %for.end

if.end8:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %9 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !83

for.end:                                          ; preds = %if.then4, %for.cond
  %10 = load i32, ptr %i, align 4, !tbaa !4
  %cmp9 = icmp eq i32 %10, 64
  br i1 %cmp9, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %11 = load ptr, ptr %cur_grp, align 8, !tbaa !8
  %cmp10 = icmp eq ptr %11, null
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %lor.lhs.false, %for.end
  %call12 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.49)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %12 = load ptr, ptr %cur_grp, align 8, !tbaa !8
  %fd = getelementptr inbounds %struct.vfio_group, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %fd, align 4, !tbaa !15
  %cmp14 = icmp sge i32 %13, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.end13
  %14 = load ptr, ptr %cur_grp, align 8, !tbaa !8
  %fd15 = getelementptr inbounds %struct.vfio_group, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %fd15, align 4, !tbaa !15
  %call16 = call i32 @close(i32 noundef %15)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %land.lhs.true
  %16 = load i32, ptr %iommu_group_num.addr, align 4, !tbaa !4
  %call19 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.50, i32 noundef %16)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true, %if.end13
  %17 = load ptr, ptr %cur_grp, align 8, !tbaa !8
  %group_num21 = getelementptr inbounds %struct.vfio_group, ptr %17, i32 0, i32 0
  store i32 -1, ptr %group_num21, align 4, !tbaa !10
  %18 = load ptr, ptr %cur_grp, align 8, !tbaa !8
  %fd22 = getelementptr inbounds %struct.vfio_group, ptr %18, i32 0, i32 1
  store i32 -1, ptr %fd22, align 4, !tbaa !15
  %19 = load ptr, ptr %cur_grp, align 8, !tbaa !8
  %devices = getelementptr inbounds %struct.vfio_group, ptr %19, i32 0, i32 2
  store i32 0, ptr %devices, align 4, !tbaa !23
  %20 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %vfio_active_groups = getelementptr inbounds %struct.vfio_config, ptr %20, i32 0, i32 2
  %21 = load i32, ptr %vfio_active_groups, align 8, !tbaa !17
  %dec = add nsw i32 %21, -1
  store i32 %dec, ptr %vfio_active_groups, align 8, !tbaa !17
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then18, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_grp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %vfio_cfg) #10
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @rte_vfio_container_group_bind(i32 noundef %container_fd, i32 noundef %iommu_group_num) #0 {
entry:
  %retval = alloca i32, align 4
  %container_fd.addr = alloca i32, align 4
  %iommu_group_num.addr = alloca i32, align 4
  %vfio_cfg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %container_fd, ptr %container_fd.addr, align 4, !tbaa !4
  store i32 %iommu_group_num, ptr %iommu_group_num.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vfio_cfg) #10
  %0 = load i32, ptr %container_fd.addr, align 4, !tbaa !4
  %call = call ptr @get_vfio_cfg_by_container_fd(i32 noundef %0)
  store ptr %call, ptr %vfio_cfg, align 8, !tbaa !8
  %1 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.48)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %3 = load i32, ptr %iommu_group_num.addr, align 4, !tbaa !4
  %call2 = call i32 @vfio_get_group_fd(ptr noundef %2, i32 noundef %3)
  store i32 %call2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vfio_cfg) #10
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @rte_vfio_container_dma_map(i32 noundef %container_fd, i64 noundef %vaddr, i64 noundef %iova, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %container_fd.addr = alloca i32, align 4
  %vaddr.addr = alloca i64, align 8
  %iova.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %vfio_cfg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %container_fd, ptr %container_fd.addr, align 4, !tbaa !4
  store i64 %vaddr, ptr %vaddr.addr, align 8, !tbaa !55
  store i64 %iova, ptr %iova.addr, align 8, !tbaa !55
  store i64 %len, ptr %len.addr, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr %vfio_cfg) #10
  %0 = load i64, ptr %len.addr, align 8, !tbaa !55
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @per_lcore__rte_errno)
  store i32 22, ptr %1, align 4, !tbaa !4
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %container_fd.addr, align 4, !tbaa !4
  %call = call ptr @get_vfio_cfg_by_container_fd(i32 noundef %2)
  store ptr %call, ptr %vfio_cfg, align 8, !tbaa !8
  %3 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.48)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %5 = load i64, ptr %vaddr.addr, align 8, !tbaa !55
  %6 = load i64, ptr %iova.addr, align 8, !tbaa !55
  %7 = load i64, ptr %len.addr, align 8, !tbaa !55
  %call5 = call i32 @container_dma_map(ptr noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7)
  store i32 %call5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vfio_cfg) #10
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @container_dma_map(ptr noundef %vfio_cfg, i64 noundef %vaddr, i64 noundef %iova, i64 noundef %len) #0 {
entry:
  %vfio_cfg.addr = alloca ptr, align 8
  %vaddr.addr = alloca i64, align 8
  %iova.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %new_map = alloca ptr, align 8
  %user_mem_maps = alloca ptr, align 8
  %has_partial_unmap = alloca i8, align 1
  %ret = alloca i32, align 4
  store ptr %vfio_cfg, ptr %vfio_cfg.addr, align 8, !tbaa !8
  store i64 %vaddr, ptr %vaddr.addr, align 8, !tbaa !55
  store i64 %iova, ptr %iova.addr, align 8, !tbaa !55
  store i64 %len, ptr %len.addr, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_map) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_mem_maps) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr %has_partial_unmap) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 0, ptr %ret, align 4, !tbaa !4
  %0 = load ptr, ptr %vfio_cfg.addr, align 8, !tbaa !8
  %mem_maps = getelementptr inbounds %struct.vfio_config, ptr %0, i32 0, i32 5
  store ptr %mem_maps, ptr %user_mem_maps, align 8, !tbaa !8
  %1 = load ptr, ptr %user_mem_maps, align 8, !tbaa !8
  %lock = getelementptr inbounds %struct.user_mem_maps, ptr %1, i32 0, i32 0
  call void @rte_spinlock_recursive_lock(ptr noundef %lock)
  %2 = load ptr, ptr %user_mem_maps, align 8, !tbaa !8
  %n_maps = getelementptr inbounds %struct.user_mem_maps, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %n_maps, align 4, !tbaa !42
  %cmp = icmp eq i32 %3, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.97)
  %4 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @per_lcore__rte_errno)
  store i32 12, ptr %4, align 4, !tbaa !4
  store i32 -1, ptr %ret, align 4, !tbaa !4
  br label %out

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %vfio_cfg.addr, align 8, !tbaa !8
  %6 = load i64, ptr %vaddr.addr, align 8, !tbaa !55
  %7 = load i64, ptr %iova.addr, align 8, !tbaa !55
  %8 = load i64, ptr %len.addr, align 8, !tbaa !55
  %call1 = call i32 @vfio_dma_mem_map(ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i32 noundef 1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.98)
  store i32 -1, ptr %ret, align 4, !tbaa !4
  br label %out

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr %vfio_cfg.addr, align 8, !tbaa !8
  %vfio_iommu_type = getelementptr inbounds %struct.vfio_config, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %vfio_iommu_type, align 8, !tbaa !41
  %partial_unmap = getelementptr inbounds %struct.vfio_iommu_type, ptr %10, i32 0, i32 2
  %11 = load i8, ptr %partial_unmap, align 8, !tbaa !84, !range !85, !noundef !86
  %tobool5 = trunc i8 %11 to i1
  %frombool = zext i1 %tobool5 to i8
  store i8 %frombool, ptr %has_partial_unmap, align 1, !tbaa !87
  %12 = load ptr, ptr %user_mem_maps, align 8, !tbaa !8
  %maps = getelementptr inbounds %struct.user_mem_maps, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %user_mem_maps, align 8, !tbaa !8
  %n_maps6 = getelementptr inbounds %struct.user_mem_maps, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %n_maps6, align 4, !tbaa !42
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %n_maps6, align 4, !tbaa !42
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.user_mem_map], ptr %maps, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %new_map, align 8, !tbaa !8
  %15 = load i64, ptr %vaddr.addr, align 8, !tbaa !55
  %16 = load ptr, ptr %new_map, align 8, !tbaa !8
  %addr = getelementptr inbounds %struct.user_mem_map, ptr %16, i32 0, i32 0
  store i64 %15, ptr %addr, align 8, !tbaa !44
  %17 = load i64, ptr %iova.addr, align 8, !tbaa !55
  %18 = load ptr, ptr %new_map, align 8, !tbaa !8
  %iova7 = getelementptr inbounds %struct.user_mem_map, ptr %18, i32 0, i32 1
  store i64 %17, ptr %iova7, align 8, !tbaa !46
  %19 = load i64, ptr %len.addr, align 8, !tbaa !55
  %20 = load ptr, ptr %new_map, align 8, !tbaa !8
  %len8 = getelementptr inbounds %struct.user_mem_map, ptr %20, i32 0, i32 2
  store i64 %19, ptr %len8, align 8, !tbaa !47
  %21 = load i8, ptr %has_partial_unmap, align 1, !tbaa !87, !range !85, !noundef !86
  %tobool9 = trunc i8 %21 to i1
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end4
  br label %cond.end

cond.false:                                       ; preds = %if.end4
  %22 = load i64, ptr %len.addr, align 8, !tbaa !55
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %22, %cond.false ]
  %23 = load ptr, ptr %new_map, align 8, !tbaa !8
  %chunk = getelementptr inbounds %struct.user_mem_map, ptr %23, i32 0, i32 3
  store i64 %cond, ptr %chunk, align 8, !tbaa !88
  %24 = load ptr, ptr %user_mem_maps, align 8, !tbaa !8
  call void @compact_user_maps(ptr noundef %24)
  br label %out

out:                                              ; preds = %cond.end, %if.then2, %if.then
  %25 = load ptr, ptr %user_mem_maps, align 8, !tbaa !8
  %lock10 = getelementptr inbounds %struct.user_mem_maps, ptr %25, i32 0, i32 0
  call void @rte_spinlock_recursive_unlock(ptr noundef %lock10)
  %26 = load i32, ptr %ret, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr %has_partial_unmap) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_mem_maps) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_map) #10
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @rte_vfio_container_dma_unmap(i32 noundef %container_fd, i64 noundef %vaddr, i64 noundef %iova, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %container_fd.addr = alloca i32, align 4
  %vaddr.addr = alloca i64, align 8
  %iova.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %vfio_cfg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %container_fd, ptr %container_fd.addr, align 4, !tbaa !4
  store i64 %vaddr, ptr %vaddr.addr, align 8, !tbaa !55
  store i64 %iova, ptr %iova.addr, align 8, !tbaa !55
  store i64 %len, ptr %len.addr, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr %vfio_cfg) #10
  %0 = load i64, ptr %len.addr, align 8, !tbaa !55
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @per_lcore__rte_errno)
  store i32 22, ptr %1, align 4, !tbaa !4
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %container_fd.addr, align 4, !tbaa !4
  %call = call ptr @get_vfio_cfg_by_container_fd(i32 noundef %2)
  store ptr %call, ptr %vfio_cfg, align 8, !tbaa !8
  %3 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.48)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %vfio_cfg, align 8, !tbaa !8
  %5 = load i64, ptr %vaddr.addr, align 8, !tbaa !55
  %6 = load i64, ptr %iova.addr, align 8, !tbaa !55
  %7 = load i64, ptr %len.addr, align 8, !tbaa !55
  %call5 = call i32 @container_dma_unmap(ptr noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7)
  store i32 %call5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vfio_cfg) #10
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @container_dma_unmap(ptr noundef %vfio_cfg, i64 noundef %vaddr, i64 noundef %iova, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %vfio_cfg.addr = alloca ptr, align 8
  %vaddr.addr = alloca i64, align 8
  %iova.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %orig_maps = alloca [256 x %struct.user_mem_map], align 16
  %new_maps = alloca [2 x %struct.user_mem_map], align 16
  %user_mem_maps = alloca ptr, align 8
  %n_orig = alloca i32, align 4
  %n_new = alloca i32, align 4
  %newlen = alloca i32, align 4
  %ret = alloca i32, align 4
  %has_partial_unmap = alloca i8, align 1
  %start_aligned = alloca i8, align 1
  %end_aligned = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vfio_cfg, ptr %vfio_cfg.addr, align 8, !tbaa !8
  store i64 %vaddr, ptr %vaddr.addr, align 8, !tbaa !55
  store i64 %iova, ptr %iova.addr, align 8, !tbaa !55
  store i64 %len, ptr %len.addr, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8192, ptr %orig_maps) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr %new_maps) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_mem_maps) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_orig) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_new) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %newlen) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 0, ptr %ret, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %has_partial_unmap) #10
  %0 = load ptr, ptr %vfio_cfg.addr, align 8, !tbaa !8
  %mem_maps = getelementptr inbounds %struct.vfio_config, ptr %0, i32 0, i32 5
  store ptr %mem_maps, ptr %user_mem_maps, align 8, !tbaa !8
  %1 = load ptr, ptr %user_mem_maps, align 8, !tbaa !8
  %lock = getelementptr inbounds %struct.user_mem_maps, ptr %1, i32 0, i32 0
  call void @rte_spinlock_recursive_lock(ptr noundef %lock)
  %2 = load ptr, ptr %user_mem_maps, align 8, !tbaa !8
  %3 = load i64, ptr %vaddr.addr, align 8, !tbaa !55
  %4 = load i64, ptr %iova.addr, align 8, !tbaa !55
  %5 = load i64, ptr %len.addr, align 8, !tbaa !55
  %arraydecay = getelementptr inbounds [256 x %struct.user_mem_map], ptr %orig_maps, i64 0, i64 0
  %call = call i32 @find_user_mem_maps(ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %arraydecay, i64 noundef 256)
  store i32 %call, ptr %n_orig, align 4, !tbaa !4
  %6 = load i32, ptr %n_orig, align 4, !tbaa !4
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.99)
  %7 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @per_lcore__rte_errno)
  store i32 22, ptr %7, align 4, !tbaa !4
  store i32 -1, ptr %ret, align 4, !tbaa !4
  br label %out

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %vfio_cfg.addr, align 8, !tbaa !8
  %vfio_iommu_type = getelementptr inbounds %struct.vfio_config, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %vfio_iommu_type, align 8, !tbaa !41
  %partial_unmap = getelementptr inbounds %struct.vfio_iommu_type, ptr %9, i32 0, i32 2
  %10 = load i8, ptr %partial_unmap, align 8, !tbaa !84, !range !85, !noundef !86
  %tobool = trunc i8 %10 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, ptr %has_partial_unmap, align 1, !tbaa !87
  %11 = load i8, ptr %has_partial_unmap, align 1, !tbaa !87, !range !85, !noundef !86
  %tobool2 = trunc i8 %11 to i1
  br i1 %tobool2, label %if.end18, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %start_aligned) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr %end_aligned) #10
  %arraydecay4 = getelementptr inbounds [256 x %struct.user_mem_map], ptr %orig_maps, i64 0, i64 0
  %12 = load i32, ptr %n_orig, align 4, !tbaa !4
  %conv = sext i32 %12 to i64
  %13 = load i64, ptr %vaddr.addr, align 8, !tbaa !55
  %14 = load i64, ptr %iova.addr, align 8, !tbaa !55
  %call5 = call zeroext i1 @addr_is_chunk_aligned(ptr noundef %arraydecay4, i64 noundef %conv, i64 noundef %13, i64 noundef %14)
  %frombool6 = zext i1 %call5 to i8
  store i8 %frombool6, ptr %start_aligned, align 1, !tbaa !87
  %arraydecay7 = getelementptr inbounds [256 x %struct.user_mem_map], ptr %orig_maps, i64 0, i64 0
  %15 = load i32, ptr %n_orig, align 4, !tbaa !4
  %conv8 = sext i32 %15 to i64
  %16 = load i64, ptr %vaddr.addr, align 8, !tbaa !55
  %17 = load i64, ptr %len.addr, align 8, !tbaa !55
  %add = add i64 %16, %17
  %18 = load i64, ptr %iova.addr, align 8, !tbaa !55
  %19 = load i64, ptr %len.addr, align 8, !tbaa !55
  %add9 = add i64 %18, %19
  %call10 = call zeroext i1 @addr_is_chunk_aligned(ptr noundef %arraydecay7, i64 noundef %conv8, i64 noundef %add, i64 noundef %add9)
  %frombool11 = zext i1 %call10 to i8
  store i8 %frombool11, ptr %end_aligned, align 1, !tbaa !87
  %20 = load i8, ptr %start_aligned, align 1, !tbaa !87, !range !85, !noundef !86
  %tobool12 = trunc i8 %20 to i1
  br i1 %tobool12, label %lor.lhs.false, label %if.then14

lor.lhs.false:                                    ; preds = %if.then3
  %21 = load i8, ptr %end_aligned, align 1, !tbaa !87, !range !85, !noundef !86
  %tobool13 = trunc i8 %21 to i1
  br i1 %tobool13, label %if.end16, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false, %if.then3
  %call15 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.100)
  %22 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @per_lcore__rte_errno)
  store i32 95, ptr %22, align 4, !tbaa !4
  store i32 -1, ptr %ret, align 4, !tbaa !4
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end16
  call void @llvm.lifetime.end.p0(i64 1, ptr %end_aligned) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr %start_aligned) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup46 [
    i32 0, label %cleanup.cont
    i32 2, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end18

if.end18:                                         ; preds = %cleanup.cont, %if.end
  %arraydecay19 = getelementptr inbounds [256 x %struct.user_mem_map], ptr %orig_maps, i64 0, i64 0
  %23 = load i32, ptr %n_orig, align 4, !tbaa !4
  %conv20 = sext i32 %23 to i64
  %arraydecay21 = getelementptr inbounds [2 x %struct.user_mem_map], ptr %new_maps, i64 0, i64 0
  %24 = load i64, ptr %vaddr.addr, align 8, !tbaa !55
  %25 = load i64, ptr %len.addr, align 8, !tbaa !55
  %call22 = call i32 @process_maps(ptr noundef %arraydecay19, i64 noundef %conv20, ptr noundef %arraydecay21, i64 noundef %24, i64 noundef %25)
  store i32 %call22, ptr %n_new, align 4, !tbaa !4
  %26 = load ptr, ptr %user_mem_maps, align 8, !tbaa !8
  %n_maps = getelementptr inbounds %struct.user_mem_maps, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %n_maps, align 4, !tbaa !42
  %28 = load i32, ptr %n_orig, align 4, !tbaa !4
  %sub = sub nsw i32 %27, %28
  %29 = load i32, ptr %n_new, align 4, !tbaa !4
  %add23 = add nsw i32 %sub, %29
  store i32 %add23, ptr %newlen, align 4, !tbaa !4
  %30 = load i32, ptr %newlen, align 4, !tbaa !4
  %cmp24 = icmp sge i32 %30, 256
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end18
  %call27 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.101)
  %31 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @per_lcore__rte_errno)
  store i32 12, ptr %31, align 4, !tbaa !4
  store i32 -1, ptr %ret, align 4, !tbaa !4
  br label %out

if.end28:                                         ; preds = %if.end18
  %32 = load ptr, ptr %vfio_cfg.addr, align 8, !tbaa !8
  %33 = load i64, ptr %vaddr.addr, align 8, !tbaa !55
  %34 = load i64, ptr %iova.addr, align 8, !tbaa !55
  %35 = load i64, ptr %len.addr, align 8, !tbaa !55
  %call29 = call i32 @vfio_dma_mem_map(ptr noundef %32, i64 noundef %33, i64 noundef %34, i64 noundef %35, i32 noundef 0)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.end40

if.then31:                                        ; preds = %if.end28
  %36 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @per_lcore__rte_errno)
  %37 = load i32, ptr %36, align 4, !tbaa !4
  %cmp32 = icmp ne i32 %37, 19
  br i1 %cmp32, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then31
  %38 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @per_lcore__rte_errno)
  %39 = load i32, ptr %38, align 4, !tbaa !4
  %cmp34 = icmp ne i32 %39, 95
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %land.lhs.true
  %call37 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.102)
  store i32 -1, ptr %ret, align 4, !tbaa !4
  br label %out

if.else:                                          ; preds = %land.lhs.true, %if.then31
  %call38 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.103)
  br label %if.end39

if.end39:                                         ; preds = %if.else
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end28
  %40 = load ptr, ptr %user_mem_maps, align 8, !tbaa !8
  %arraydecay41 = getelementptr inbounds [256 x %struct.user_mem_map], ptr %orig_maps, i64 0, i64 0
  %41 = load i32, ptr %n_orig, align 4, !tbaa !4
  %conv42 = sext i32 %41 to i64
  call void @delete_maps(ptr noundef %40, ptr noundef %arraydecay41, i64 noundef %conv42)
  %42 = load ptr, ptr %user_mem_maps, align 8, !tbaa !8
  %arraydecay43 = getelementptr inbounds [2 x %struct.user_mem_map], ptr %new_maps, i64 0, i64 0
  %43 = load i32, ptr %n_new, align 4, !tbaa !4
  %conv44 = sext i32 %43 to i64
  call void @copy_maps(ptr noundef %42, ptr noundef %arraydecay43, i64 noundef %conv44)
  %44 = load ptr, ptr %user_mem_maps, align 8, !tbaa !8
  call void @compact_user_maps(ptr noundef %44)
  br label %out

out:                                              ; preds = %if.end40, %cleanup, %if.then36, %if.then26, %if.then
  %45 = load ptr, ptr %user_mem_maps, align 8, !tbaa !8
  %lock45 = getelementptr inbounds %struct.user_mem_maps, ptr %45, i32 0, i32 0
  call void @rte_spinlock_recursive_unlock(ptr noundef %lock45)
  %46 = load i32, ptr %ret, align 4, !tbaa !4
  store i32 %46, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup46

cleanup46:                                        ; preds = %out, %cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr %has_partial_unmap) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %newlen) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_new) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_orig) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_mem_maps) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr %new_maps) #10
  call void @llvm.lifetime.end.p0(i64 8192, ptr %orig_maps) #10
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @vfio_open_group_fd(i32 noundef %iommu_group_num) #0 {
entry:
  %retval = alloca i32, align 4
  %iommu_group_num.addr = alloca i32, align 4
  %vfio_group_fd = alloca i32, align 4
  %filename = alloca [4096 x i8], align 16
  %mp_req = alloca %struct.rte_mp_msg, align 4
  %mp_rep = alloca ptr, align 8
  %mp_reply = alloca %struct.rte_mp_reply, align 8
  %ts = alloca %struct.timespec, align 8
  %p = alloca ptr, align 8
  %internal_conf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %iommu_group_num, ptr %iommu_group_num.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %vfio_group_fd) #10
  call void @llvm.lifetime.start.p0(i64 4096, ptr %filename) #10
  call void @llvm.lifetime.start.p0(i64 360, ptr %mp_req) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %mp_rep) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr %mp_reply) #10
  call void @llvm.memset.p0.i64(ptr align 8 %mp_reply, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ts, ptr align 8 @__const.vfio_open_group_fd.ts, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  %param = getelementptr inbounds %struct.rte_mp_msg, ptr %mp_req, i32 0, i32 3
  %arraydecay = getelementptr inbounds [256 x i8], ptr %param, i64 0, i64 0
  store ptr %arraydecay, ptr %p, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %internal_conf) #10
  %call = call ptr @eal_get_internal_configuration()
  store ptr %call, ptr %internal_conf, align 8, !tbaa !8
  %0 = load ptr, ptr %internal_conf, align 8, !tbaa !8
  %process_type = getelementptr inbounds %struct.internal_config, ptr %0, i32 0, i32 11
  %1 = load volatile i32, ptr %process_type, align 8, !tbaa !31
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end30

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [4096 x i8], ptr %filename, i64 0, i64 0
  %2 = load i32, ptr %iommu_group_num.addr, align 4, !tbaa !4
  %call2 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay1, i64 noundef 4096, ptr noundef @.str.54, i32 noundef %2) #10
  %arraydecay3 = getelementptr inbounds [4096 x i8], ptr %filename, i64 0, i64 0
  %call4 = call i32 (ptr, i32, ...) @open64(ptr noundef %arraydecay3, i32 noundef 2)
  store i32 %call4, ptr %vfio_group_fd, align 4, !tbaa !4
  %3 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %cmp5 = icmp slt i32 %3, 0
  br i1 %cmp5, label %if.then6, label %if.end29

if.then6:                                         ; preds = %if.then
  %call7 = call ptr @__errno_location() #11
  %4 = load i32, ptr %call7, align 4, !tbaa !4
  %cmp8 = icmp ne i32 %4, 2
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then6
  %arraydecay10 = getelementptr inbounds [4096 x i8], ptr %filename, i64 0, i64 0
  %call11 = call ptr @__errno_location() #11
  %5 = load i32, ptr %call11, align 4, !tbaa !4
  %call12 = call ptr @strerror(i32 noundef %5) #10
  %call13 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.55, ptr noundef %arraydecay10, ptr noundef %call12)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then6
  %arraydecay14 = getelementptr inbounds [4096 x i8], ptr %filename, i64 0, i64 0
  %6 = load i32, ptr %iommu_group_num.addr, align 4, !tbaa !4
  %call15 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay14, i64 noundef 4096, ptr noundef @.str.56, i32 noundef %6) #10
  %arraydecay16 = getelementptr inbounds [4096 x i8], ptr %filename, i64 0, i64 0
  %call17 = call i32 (ptr, i32, ...) @open64(ptr noundef %arraydecay16, i32 noundef 2)
  store i32 %call17, ptr %vfio_group_fd, align 4, !tbaa !4
  %7 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %cmp18 = icmp slt i32 %7, 0
  br i1 %cmp18, label %if.then19, label %if.end28

if.then19:                                        ; preds = %if.end
  %call20 = call ptr @__errno_location() #11
  %8 = load i32, ptr %call20, align 4, !tbaa !4
  %cmp21 = icmp ne i32 %8, 2
  br i1 %cmp21, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.then19
  %arraydecay23 = getelementptr inbounds [4096 x i8], ptr %filename, i64 0, i64 0
  %call24 = call ptr @__errno_location() #11
  %9 = load i32, ptr %call24, align 4, !tbaa !4
  %call25 = call ptr @strerror(i32 noundef %9) #10
  %call26 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.55, ptr noundef %arraydecay23, ptr noundef %call25)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.then19
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.end
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then
  %10 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  store i32 %10, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %entry
  %11 = load ptr, ptr %p, align 8, !tbaa !8
  %req = getelementptr inbounds %struct.vfio_mp_param, ptr %11, i32 0, i32 0
  store i32 512, ptr %req, align 4, !tbaa !66
  %12 = load i32, ptr %iommu_group_num.addr, align 4, !tbaa !4
  %13 = load ptr, ptr %p, align 8, !tbaa !8
  %14 = getelementptr inbounds %struct.vfio_mp_param, ptr %13, i32 0, i32 2
  store i32 %12, ptr %14, align 4, !tbaa !51
  %name = getelementptr inbounds %struct.rte_mp_msg, ptr %mp_req, i32 0, i32 0
  %arraydecay31 = getelementptr inbounds [64 x i8], ptr %name, i64 0, i64 0
  %call32 = call ptr @strcpy(ptr noundef %arraydecay31, ptr noundef @.str.27) #10
  %len_param = getelementptr inbounds %struct.rte_mp_msg, ptr %mp_req, i32 0, i32 1
  store i32 12, ptr %len_param, align 4, !tbaa !68
  %num_fds = getelementptr inbounds %struct.rte_mp_msg, ptr %mp_req, i32 0, i32 2
  store i32 0, ptr %num_fds, align 4, !tbaa !70
  store i32 -1, ptr %vfio_group_fd, align 4, !tbaa !4
  %call33 = call i32 @rte_mp_request_sync(ptr noundef %mp_req, ptr noundef %mp_reply, ptr noundef %ts)
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %land.lhs.true, label %if.end51

land.lhs.true:                                    ; preds = %if.end30
  %nb_received = getelementptr inbounds %struct.rte_mp_reply, ptr %mp_reply, i32 0, i32 1
  %15 = load i32, ptr %nb_received, align 4, !tbaa !71
  %cmp35 = icmp eq i32 %15, 1
  br i1 %cmp35, label %if.then36, label %if.end51

if.then36:                                        ; preds = %land.lhs.true
  %msgs = getelementptr inbounds %struct.rte_mp_reply, ptr %mp_reply, i32 0, i32 2
  %16 = load ptr, ptr %msgs, align 8, !tbaa !73
  %arrayidx = getelementptr inbounds %struct.rte_mp_msg, ptr %16, i64 0
  store ptr %arrayidx, ptr %mp_rep, align 8, !tbaa !8
  %17 = load ptr, ptr %mp_rep, align 8, !tbaa !8
  %param37 = getelementptr inbounds %struct.rte_mp_msg, ptr %17, i32 0, i32 3
  %arraydecay38 = getelementptr inbounds [256 x i8], ptr %param37, i64 0, i64 0
  store ptr %arraydecay38, ptr %p, align 8, !tbaa !8
  %18 = load ptr, ptr %p, align 8, !tbaa !8
  %result = getelementptr inbounds %struct.vfio_mp_param, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %result, align 4, !tbaa !74
  %cmp39 = icmp eq i32 %19, 0
  br i1 %cmp39, label %land.lhs.true40, label %if.else

land.lhs.true40:                                  ; preds = %if.then36
  %20 = load ptr, ptr %mp_rep, align 8, !tbaa !8
  %num_fds41 = getelementptr inbounds %struct.rte_mp_msg, ptr %20, i32 0, i32 2
  %21 = load i32, ptr %num_fds41, align 4, !tbaa !70
  %cmp42 = icmp eq i32 %21, 1
  br i1 %cmp42, label %if.then43, label %if.else

if.then43:                                        ; preds = %land.lhs.true40
  %22 = load ptr, ptr %mp_rep, align 8, !tbaa !8
  %fds = getelementptr inbounds %struct.rte_mp_msg, ptr %22, i32 0, i32 4
  %arrayidx44 = getelementptr inbounds [8 x i32], ptr %fds, i64 0, i64 0
  %23 = load i32, ptr %arrayidx44, align 4, !tbaa !4
  store i32 %23, ptr %vfio_group_fd, align 4, !tbaa !4
  br label %if.end50

if.else:                                          ; preds = %land.lhs.true40, %if.then36
  %24 = load ptr, ptr %p, align 8, !tbaa !8
  %result45 = getelementptr inbounds %struct.vfio_mp_param, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %result45, align 4, !tbaa !74
  %cmp46 = icmp eq i32 %25, 1
  br i1 %cmp46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.else
  %call48 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.57)
  store i32 -2, ptr %vfio_group_fd, align 4, !tbaa !4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.else
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then43
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %land.lhs.true, %if.end30
  %msgs52 = getelementptr inbounds %struct.rte_mp_reply, ptr %mp_reply, i32 0, i32 2
  %26 = load ptr, ptr %msgs52, align 8, !tbaa !73
  call void @free(ptr noundef %26) #10
  %27 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %cmp53 = icmp slt i32 %27, 0
  br i1 %cmp53, label %land.lhs.true54, label %if.end58

land.lhs.true54:                                  ; preds = %if.end51
  %28 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  %cmp55 = icmp ne i32 %28, -2
  br i1 %cmp55, label %if.then56, label %if.end58

if.then56:                                        ; preds = %land.lhs.true54
  %call57 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.58)
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %land.lhs.true54, %if.end51
  %29 = load i32, ptr %vfio_group_fd, align 4, !tbaa !4
  store i32 %29, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.end29, %if.end27, %if.then22, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %internal_conf) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr %mp_reply) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %mp_rep) #10
  call void @llvm.lifetime.end.p0(i64 360, ptr %mp_req) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr %filename) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %vfio_group_fd) #10
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @rte_gettid() #6 {
entry:
  %0 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @per_lcore__thread_id)
  %1 = load i32, ptr %0, align 4, !tbaa !4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @rte_sys_gettid()
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @per_lcore__thread_id)
  store i32 %call, ptr %2, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @per_lcore__thread_id)
  %4 = load i32, ptr %3, align 4, !tbaa !4
  ret i32 %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @rte_spinlock_lock(ptr noundef %sl) #6 {
entry:
  %sl.addr = alloca ptr, align 8
  %lock_val = alloca i32, align 4
  store ptr %sl, ptr %sl.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %lock_val) #10
  store i32 1, ptr %lock_val, align 4, !tbaa !4
  %0 = load ptr, ptr %sl.addr, align 8, !tbaa !8
  %locked = getelementptr inbounds %struct.rte_spinlock_t, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %lock_val, align 4, !tbaa !4
  %2 = call i32 asm sideeffect "1:\0Axchg $0, $1\0Atest $1, $1\0Ajz 3f\0A2:\0Apause\0Acmpl $$0, $0\0Ajnz 2b\0Ajmp 1b\0A3:\0A", "=*m,=q,1,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %locked, i32 %1) #10, !srcloc !89
  store i32 %2, ptr %lock_val, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %lock_val) #10
  ret void
}

declare i32 @rte_sys_gettid() #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @rte_spinlock_unlock(ptr noundef %sl) #6 {
entry:
  %sl.addr = alloca ptr, align 8
  %unlock_val = alloca i32, align 4
  store ptr %sl, ptr %sl.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %unlock_val) #10
  store i32 0, ptr %unlock_val, align 4, !tbaa !4
  %0 = load ptr, ptr %sl.addr, align 8, !tbaa !8
  %locked = getelementptr inbounds %struct.rte_spinlock_t, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %unlock_val, align 4, !tbaa !4
  %2 = call i32 asm sideeffect "xchg $0, $1\0A", "=*m,=q,1,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %locked, i32 %1) #10, !srcloc !90
  store i32 %2, ptr %unlock_val, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %unlock_val) #10
  ret void
}

declare ptr @rte_mem_virt2memseg_list(ptr noundef) #2

declare i32 @rte_eal_iova_mode() #2

; Function Attrs: nounwind uwtable
define internal i32 @vfio_dma_mem_map(ptr noundef %vfio_cfg, i64 noundef %vaddr, i64 noundef %iova, i64 noundef %len, i32 noundef %do_map) #0 {
entry:
  %retval = alloca i32, align 4
  %vfio_cfg.addr = alloca ptr, align 8
  %vaddr.addr = alloca i64, align 8
  %iova.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %do_map.addr = alloca i32, align 4
  %t = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vfio_cfg, ptr %vfio_cfg.addr, align 8, !tbaa !8
  store i64 %vaddr, ptr %vaddr.addr, align 8, !tbaa !55
  store i64 %iova, ptr %iova.addr, align 8, !tbaa !55
  store i64 %len, ptr %len.addr, align 8, !tbaa !55
  store i32 %do_map, ptr %do_map.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #10
  %0 = load ptr, ptr %vfio_cfg.addr, align 8, !tbaa !8
  %vfio_iommu_type = getelementptr inbounds %struct.vfio_config, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %vfio_iommu_type, align 8, !tbaa !41
  store ptr %1, ptr %t, align 8, !tbaa !8
  %2 = load ptr, ptr %t, align 8, !tbaa !8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.61)
  %3 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @per_lcore__rte_errno)
  store i32 19, ptr %3, align 4, !tbaa !4
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %t, align 8, !tbaa !8
  %dma_user_map_func = getelementptr inbounds %struct.vfio_iommu_type, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %dma_user_map_func, align 8, !tbaa !43
  %tobool1 = icmp ne ptr %5, null
  br i1 %tobool1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %t, align 8, !tbaa !8
  %name = getelementptr inbounds %struct.vfio_iommu_type, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %name, align 8, !tbaa !50
  %call3 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.62, ptr noundef %7)
  %8 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @per_lcore__rte_errno)
  store i32 95, ptr %8, align 4, !tbaa !4
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr %t, align 8, !tbaa !8
  %dma_user_map_func5 = getelementptr inbounds %struct.vfio_iommu_type, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %dma_user_map_func5, align 8, !tbaa !43
  %11 = load ptr, ptr %vfio_cfg.addr, align 8, !tbaa !8
  %vfio_container_fd = getelementptr inbounds %struct.vfio_config, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %vfio_container_fd, align 4, !tbaa !30
  %13 = load i64, ptr %vaddr.addr, align 8, !tbaa !55
  %14 = load i64, ptr %iova.addr, align 8, !tbaa !55
  %15 = load i64, ptr %len.addr, align 8, !tbaa !55
  %16 = load i32, ptr %do_map.addr, align 4, !tbaa !4
  %call6 = call i32 %10(i32 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i32 noundef %16)
  store i32 %call6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #10
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

declare ptr @rte_mem_virt2memseg(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @vfio_type1_dma_mem_map(i32 noundef %vfio_container_fd, i64 noundef %vaddr, i64 noundef %iova, i64 noundef %len, i32 noundef %do_map) #0 {
entry:
  %retval = alloca i32, align 4
  %vfio_container_fd.addr = alloca i32, align 4
  %vaddr.addr = alloca i64, align 8
  %iova.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %do_map.addr = alloca i32, align 4
  %dma_map = alloca %struct.vfio_iommu_type1_dma_map, align 8
  %dma_unmap = alloca %struct.vfio_iommu_type1_dma_unmap, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %vfio_container_fd, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  store i64 %vaddr, ptr %vaddr.addr, align 8, !tbaa !55
  store i64 %iova, ptr %iova.addr, align 8, !tbaa !55
  store i64 %len, ptr %len.addr, align 8, !tbaa !55
  store i32 %do_map, ptr %do_map.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 32, ptr %dma_map) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr %dma_unmap) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  %0 = load i32, ptr %do_map.addr, align 4, !tbaa !4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else13

if.then:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %dma_map, i8 0, i64 32, i1 false)
  %argsz = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, ptr %dma_map, i32 0, i32 0
  store i32 32, ptr %argsz, align 8, !tbaa !91
  %1 = load i64, ptr %vaddr.addr, align 8, !tbaa !55
  %vaddr1 = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, ptr %dma_map, i32 0, i32 2
  store i64 %1, ptr %vaddr1, align 8, !tbaa !94
  %2 = load i64, ptr %len.addr, align 8, !tbaa !55
  %size = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, ptr %dma_map, i32 0, i32 4
  store i64 %2, ptr %size, align 8, !tbaa !95
  %3 = load i64, ptr %iova.addr, align 8, !tbaa !55
  %iova2 = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, ptr %dma_map, i32 0, i32 3
  store i64 %3, ptr %iova2, align 8, !tbaa !96
  %flags = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, ptr %dma_map, i32 0, i32 1
  store i32 3, ptr %flags, align 4, !tbaa !97
  %4 = load i32, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  %call = call i32 (i32, i64, ...) @ioctl(i32 noundef %4, i64 noundef 15217, ptr noundef %dma_map) #10
  store i32 %call, ptr %ret, align 4, !tbaa !4
  %5 = load i32, ptr %ret, align 4, !tbaa !4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then3, label %if.end12

if.then3:                                         ; preds = %if.then
  %call4 = call ptr @__errno_location() #11
  %6 = load i32, ptr %call4, align 4, !tbaa !4
  %cmp5 = icmp eq i32 %6, 17
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  %call7 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.69)
  br label %if.end

if.else:                                          ; preds = %if.then3
  %call8 = call ptr @__errno_location() #11
  %7 = load i32, ptr %call8, align 4, !tbaa !4
  %call9 = call ptr @__errno_location() #11
  %8 = load i32, ptr %call9, align 4, !tbaa !4
  %call10 = call ptr @strerror(i32 noundef %8) #10
  %call11 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.70, i32 noundef %7, ptr noundef %call10)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then6
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  br label %if.end32

if.else13:                                        ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %dma_unmap, i8 0, i64 24, i1 false)
  %argsz14 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, ptr %dma_unmap, i32 0, i32 0
  store i32 24, ptr %argsz14, align 8, !tbaa !4
  %9 = load i64, ptr %len.addr, align 8, !tbaa !55
  %size15 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, ptr %dma_unmap, i32 0, i32 3
  store i64 %9, ptr %size15, align 8, !tbaa !98
  %10 = load i64, ptr %iova.addr, align 8, !tbaa !55
  %iova16 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, ptr %dma_unmap, i32 0, i32 2
  store i64 %10, ptr %iova16, align 8, !tbaa !98
  %11 = load i32, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  %call17 = call i32 (i32, i64, ...) @ioctl(i32 noundef %11, i64 noundef 15218, ptr noundef %dma_unmap) #10
  store i32 %call17, ptr %ret, align 4, !tbaa !4
  %12 = load i32, ptr %ret, align 4, !tbaa !4
  %tobool18 = icmp ne i32 %12, 0
  br i1 %tobool18, label %if.then19, label %if.else24

if.then19:                                        ; preds = %if.else13
  %call20 = call ptr @__errno_location() #11
  %13 = load i32, ptr %call20, align 4, !tbaa !4
  %call21 = call ptr @__errno_location() #11
  %14 = load i32, ptr %call21, align 4, !tbaa !4
  %call22 = call ptr @strerror(i32 noundef %14) #10
  %call23 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.71, i32 noundef %13, ptr noundef %call22)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else24:                                        ; preds = %if.else13
  %size25 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, ptr %dma_unmap, i32 0, i32 3
  %15 = load i64, ptr %size25, align 8, !tbaa !98
  %16 = load i64, ptr %len.addr, align 8, !tbaa !55
  %cmp26 = icmp ne i64 %15, %16
  br i1 %cmp26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.else24
  %size28 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, ptr %dma_unmap, i32 0, i32 3
  %17 = load i64, ptr %size28, align 8, !tbaa !98
  %18 = load i64, ptr %len.addr, align 8, !tbaa !55
  %call29 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.72, i64 noundef %17, i64 noundef %18)
  %19 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @per_lcore__rte_errno)
  store i32 5, ptr %19, align 4, !tbaa !4
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.else24
  br label %if.end31

if.end31:                                         ; preds = %if.end30
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end12
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then27, %if.then19, %if.else
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %dma_unmap) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr %dma_map) #10
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @vfio_type1_dma_map(i32 noundef %vfio_container_fd) #0 {
entry:
  %retval = alloca i32, align 4
  %vfio_container_fd.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %vfio_container_fd, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  %call = call i32 @rte_eal_iova_mode()
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  %call1 = call i32 @rte_memseg_contig_walk(ptr noundef @type1_map_contig, ptr noundef %vfio_container_fd.addr)
  store i32 %call1, ptr %ret, align 4, !tbaa !4
  %0 = load i32, ptr %ret, align 4, !tbaa !4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %1 = load i32, ptr %ret, align 4, !tbaa !4
  store i32 %1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end3

if.end3:                                          ; preds = %cleanup.cont, %entry
  %call4 = call i32 @rte_memseg_walk(ptr noundef @type1_map, ptr noundef %vfio_container_fd.addr)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %cleanup
  %2 = load i32, ptr %retval, align 4
  ret i32 %2

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @vfio_spapr_dma_mem_map(i32 noundef %vfio_container_fd, i64 noundef %vaddr, i64 noundef %iova, i64 noundef %len, i32 noundef %do_map) #0 {
entry:
  %vfio_container_fd.addr = alloca i32, align 4
  %vaddr.addr = alloca i64, align 8
  %iova.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %do_map.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %vfio_container_fd, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  store i64 %vaddr, ptr %vaddr.addr, align 8, !tbaa !55
  store i64 %iova, ptr %iova.addr, align 8, !tbaa !55
  store i64 %len, ptr %len.addr, align 8, !tbaa !55
  store i32 %do_map, ptr %do_map.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 0, ptr %ret, align 4, !tbaa !4
  %0 = load i32, ptr %do_map.addr, align 4, !tbaa !4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  %2 = load i64, ptr %vaddr.addr, align 8, !tbaa !55
  %3 = load i64, ptr %iova.addr, align 8, !tbaa !55
  %4 = load i64, ptr %len.addr, align 8, !tbaa !55
  %call = call i32 @vfio_spapr_dma_do_map(i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef 1)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %call3 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.73)
  store i32 -1, ptr %ret, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end9

if.else:                                          ; preds = %entry
  %5 = load i32, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  %6 = load i64, ptr %vaddr.addr, align 8, !tbaa !55
  %7 = load i64, ptr %iova.addr, align 8, !tbaa !55
  %8 = load i64, ptr %len.addr, align 8, !tbaa !55
  %call4 = call i32 @vfio_spapr_dma_do_map(i32 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i32 noundef 0)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.else
  %call7 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.74)
  store i32 -1, ptr %ret, align 4, !tbaa !4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end
  %9 = load i32, ptr %ret, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @vfio_spapr_dma_map(i32 noundef %vfio_container_fd) #0 {
entry:
  %retval = alloca i32, align 4
  %vfio_container_fd.addr = alloca i32, align 4
  store i32 %vfio_container_fd, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  %0 = load i32, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  %call = call i32 @vfio_spapr_create_dma_window(i32 noundef %0)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.80)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 @rte_memseg_walk(ptr noundef @vfio_spapr_map_walk, ptr noundef %vfio_container_fd.addr)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @vfio_noiommu_dma_mem_map(i32 noundef %vfio_container_fd, i64 noundef %vaddr, i64 noundef %iova, i64 noundef %len, i32 noundef %do_map) #0 {
entry:
  %vfio_container_fd.addr = alloca i32, align 4
  %vaddr.addr = alloca i64, align 8
  %iova.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %do_map.addr = alloca i32, align 4
  store i32 %vfio_container_fd, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  store i64 %vaddr, ptr %vaddr.addr, align 8, !tbaa !55
  store i64 %iova, ptr %iova.addr, align 8, !tbaa !55
  store i64 %len, ptr %len.addr, align 8, !tbaa !55
  store i32 %do_map, ptr %do_map.addr, align 4, !tbaa !4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @vfio_noiommu_dma_map(i32 noundef %vfio_container_fd) #0 {
entry:
  %vfio_container_fd.addr = alloca i32, align 4
  store i32 %vfio_container_fd, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  ret i32 0
}

declare i32 @rte_memseg_contig_walk(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @type1_map_contig(ptr noundef %msl, ptr noundef %ms, i64 noundef %len, ptr noundef %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %msl.addr = alloca ptr, align 8
  %ms.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %arg.addr = alloca ptr, align 8
  %vfio_container_fd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %msl, ptr %msl.addr, align 8, !tbaa !8
  store ptr %ms, ptr %ms.addr, align 8, !tbaa !8
  store i64 %len, ptr %len.addr, align 8, !tbaa !55
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %vfio_container_fd) #10
  %0 = load ptr, ptr %arg.addr, align 8, !tbaa !8
  store ptr %0, ptr %vfio_container_fd, align 8, !tbaa !8
  %1 = load ptr, ptr %msl.addr, align 8, !tbaa !8
  %external = getelementptr inbounds %struct.rte_memseg_list, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %external, align 8, !tbaa !56
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %vfio_container_fd, align 8, !tbaa !8
  %4 = load i32, ptr %3, align 4, !tbaa !4
  %5 = load ptr, ptr %ms.addr, align 8, !tbaa !8
  %6 = getelementptr inbounds %struct.rte_memseg, ptr %5, i32 0, i32 1
  %7 = load i64, ptr %6, align 1, !tbaa !51
  %8 = load ptr, ptr %ms.addr, align 8, !tbaa !8
  %iova = getelementptr inbounds %struct.rte_memseg, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %iova, align 1, !tbaa !61
  %10 = load i64, ptr %len.addr, align 8, !tbaa !55
  %call = call i32 @vfio_type1_dma_mem_map(i32 noundef %4, i64 noundef %7, i64 noundef %9, i64 noundef %10, i32 noundef 1)
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vfio_container_fd) #10
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

declare i32 @rte_memseg_walk(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @type1_map(ptr noundef %msl, ptr noundef %ms, ptr noundef %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %msl.addr = alloca ptr, align 8
  %ms.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %vfio_container_fd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %msl, ptr %msl.addr, align 8, !tbaa !8
  store ptr %ms, ptr %ms.addr, align 8, !tbaa !8
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %vfio_container_fd) #10
  %0 = load ptr, ptr %arg.addr, align 8, !tbaa !8
  store ptr %0, ptr %vfio_container_fd, align 8, !tbaa !8
  %1 = load ptr, ptr %msl.addr, align 8, !tbaa !8
  %external = getelementptr inbounds %struct.rte_memseg_list, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %external, align 8, !tbaa !56
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %msl.addr, align 8, !tbaa !8
  %heap = getelementptr inbounds %struct.rte_memseg_list, ptr %3, i32 0, i32 6
  %4 = load i32, ptr %heap, align 4, !tbaa !99
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %ms.addr, align 8, !tbaa !8
  %iova = getelementptr inbounds %struct.rte_memseg, ptr %5, i32 0, i32 0
  %6 = load i64, ptr %iova, align 1, !tbaa !61
  %cmp = icmp eq i64 %6, -1
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = load ptr, ptr %msl.addr, align 8, !tbaa !8
  %external4 = getelementptr inbounds %struct.rte_memseg_list, ptr %7, i32 0, i32 5
  %8 = load i32, ptr %external4, align 8, !tbaa !56
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.end9, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.end3
  %call = call i32 @rte_eal_iova_mode()
  %cmp7 = icmp eq i32 %call, 2
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true6
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true6, %if.end3
  %9 = load ptr, ptr %vfio_container_fd, align 8, !tbaa !8
  %10 = load i32, ptr %9, align 4, !tbaa !4
  %11 = load ptr, ptr %ms.addr, align 8, !tbaa !8
  %12 = getelementptr inbounds %struct.rte_memseg, ptr %11, i32 0, i32 1
  %13 = load i64, ptr %12, align 1, !tbaa !51
  %14 = load ptr, ptr %ms.addr, align 8, !tbaa !8
  %iova10 = getelementptr inbounds %struct.rte_memseg, ptr %14, i32 0, i32 0
  %15 = load i64, ptr %iova10, align 1, !tbaa !61
  %16 = load ptr, ptr %ms.addr, align 8, !tbaa !8
  %len = getelementptr inbounds %struct.rte_memseg, ptr %16, i32 0, i32 2
  %17 = load i64, ptr %len, align 1, !tbaa !63
  %call11 = call i32 @vfio_type1_dma_mem_map(i32 noundef %10, i64 noundef %13, i64 noundef %15, i64 noundef %17, i32 noundef 1)
  store i32 %call11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vfio_container_fd) #10
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @vfio_spapr_dma_do_map(i32 noundef %vfio_container_fd, i64 noundef %vaddr, i64 noundef %iova, i64 noundef %len, i32 noundef %do_map) #0 {
entry:
  %retval = alloca i32, align 4
  %vfio_container_fd.addr = alloca i32, align 4
  %vaddr.addr = alloca i64, align 8
  %iova.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %do_map.addr = alloca i32, align 4
  %reg = alloca %struct.vfio_iommu_spapr_register_memory, align 8
  %ret = alloca i32, align 4
  %dma_map = alloca %struct.vfio_iommu_type1_dma_map, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %dma_unmap = alloca %struct.vfio_iommu_type1_dma_map, align 8
  store i32 %vfio_container_fd, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  store i64 %vaddr, ptr %vaddr.addr, align 8, !tbaa !55
  store i64 %iova, ptr %iova.addr, align 8, !tbaa !55
  store i64 %len, ptr %len.addr, align 8, !tbaa !55
  store i32 %do_map, ptr %do_map.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 24, ptr %reg) #10
  %argsz = getelementptr inbounds %struct.vfio_iommu_spapr_register_memory, ptr %reg, i32 0, i32 0
  store i32 24, ptr %argsz, align 8, !tbaa !100
  %flags = getelementptr inbounds %struct.vfio_iommu_spapr_register_memory, ptr %reg, i32 0, i32 1
  store i32 0, ptr %flags, align 4, !tbaa !102
  %vaddr1 = getelementptr inbounds %struct.vfio_iommu_spapr_register_memory, ptr %reg, i32 0, i32 2
  %0 = load i64, ptr %vaddr.addr, align 8, !tbaa !55
  store i64 %0, ptr %vaddr1, align 8, !tbaa !103
  %size = getelementptr inbounds %struct.vfio_iommu_spapr_register_memory, ptr %reg, i32 0, i32 3
  %1 = load i64, ptr %len.addr, align 8, !tbaa !55
  store i64 %1, ptr %size, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  %2 = load i32, ptr %do_map.addr, align 4, !tbaa !4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr %dma_map) #10
  %3 = load i64, ptr %iova.addr, align 8, !tbaa !55
  %4 = load i64, ptr %len.addr, align 8, !tbaa !55
  %add = add i64 %3, %4
  %5 = load i64, ptr @spapr_dma_win_len, align 8, !tbaa !55
  %cmp2 = icmp ugt i64 %add, %5
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %call = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.75)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %6 = load i32, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  %call4 = call i32 (i32, i64, ...) @ioctl(i32 noundef %6, i64 noundef 15221, ptr noundef %reg) #10
  store i32 %call4, ptr %ret, align 4, !tbaa !4
  %7 = load i32, ptr %ret, align 4, !tbaa !4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  %call6 = call ptr @__errno_location() #11
  %8 = load i32, ptr %call6, align 4, !tbaa !4
  %call7 = call ptr @__errno_location() #11
  %9 = load i32, ptr %call7, align 4, !tbaa !4
  %call8 = call ptr @strerror(i32 noundef %9) #10
  %call9 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.76, i32 noundef %8, ptr noundef %call8)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @llvm.memset.p0.i64(ptr align 8 %dma_map, i8 0, i64 32, i1 false)
  %argsz11 = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, ptr %dma_map, i32 0, i32 0
  store i32 32, ptr %argsz11, align 8, !tbaa !91
  %10 = load i64, ptr %vaddr.addr, align 8, !tbaa !55
  %vaddr12 = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, ptr %dma_map, i32 0, i32 2
  store i64 %10, ptr %vaddr12, align 8, !tbaa !94
  %11 = load i64, ptr %len.addr, align 8, !tbaa !55
  %size13 = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, ptr %dma_map, i32 0, i32 4
  store i64 %11, ptr %size13, align 8, !tbaa !95
  %12 = load i64, ptr %iova.addr, align 8, !tbaa !55
  %iova14 = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, ptr %dma_map, i32 0, i32 3
  store i64 %12, ptr %iova14, align 8, !tbaa !96
  %flags15 = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, ptr %dma_map, i32 0, i32 1
  store i32 3, ptr %flags15, align 4, !tbaa !97
  %13 = load i32, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  %call16 = call i32 (i32, i64, ...) @ioctl(i32 noundef %13, i64 noundef 15217, ptr noundef %dma_map) #10
  store i32 %call16, ptr %ret, align 4, !tbaa !4
  %14 = load i32, ptr %ret, align 4, !tbaa !4
  %tobool17 = icmp ne i32 %14, 0
  br i1 %tobool17, label %if.then18, label %if.end23

if.then18:                                        ; preds = %if.end10
  %call19 = call ptr @__errno_location() #11
  %15 = load i32, ptr %call19, align 4, !tbaa !4
  %call20 = call ptr @__errno_location() #11
  %16 = load i32, ptr %call20, align 4, !tbaa !4
  %call21 = call ptr @strerror(i32 noundef %16) #10
  %call22 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.77, i32 noundef %15, ptr noundef %call21)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end10
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then18, %if.then5, %if.then3
  call void @llvm.lifetime.end.p0(i64 32, ptr %dma_map) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup47 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end46

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr %dma_unmap) #10
  call void @llvm.memset.p0.i64(ptr align 8 %dma_unmap, i8 0, i64 32, i1 false)
  %argsz24 = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, ptr %dma_unmap, i32 0, i32 0
  store i32 24, ptr %argsz24, align 8, !tbaa !91
  %17 = load i64, ptr %len.addr, align 8, !tbaa !55
  %size25 = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, ptr %dma_unmap, i32 0, i32 4
  store i64 %17, ptr %size25, align 8, !tbaa !95
  %18 = load i64, ptr %iova.addr, align 8, !tbaa !55
  %iova26 = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, ptr %dma_unmap, i32 0, i32 3
  store i64 %18, ptr %iova26, align 8, !tbaa !96
  %19 = load i32, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  %call27 = call i32 (i32, i64, ...) @ioctl(i32 noundef %19, i64 noundef 15218, ptr noundef %dma_unmap) #10
  store i32 %call27, ptr %ret, align 4, !tbaa !4
  %20 = load i32, ptr %ret, align 4, !tbaa !4
  %tobool28 = icmp ne i32 %20, 0
  br i1 %tobool28, label %if.then29, label %if.end34

if.then29:                                        ; preds = %if.else
  %call30 = call ptr @__errno_location() #11
  %21 = load i32, ptr %call30, align 4, !tbaa !4
  %call31 = call ptr @__errno_location() #11
  %22 = load i32, ptr %call31, align 4, !tbaa !4
  %call32 = call ptr @strerror(i32 noundef %22) #10
  %call33 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.78, i32 noundef %21, ptr noundef %call32)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43

if.end34:                                         ; preds = %if.else
  %23 = load i32, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  %call35 = call i32 (i32, i64, ...) @ioctl(i32 noundef %23, i64 noundef 15222, ptr noundef %reg) #10
  store i32 %call35, ptr %ret, align 4, !tbaa !4
  %24 = load i32, ptr %ret, align 4, !tbaa !4
  %tobool36 = icmp ne i32 %24, 0
  br i1 %tobool36, label %if.then37, label %if.end42

if.then37:                                        ; preds = %if.end34
  %call38 = call ptr @__errno_location() #11
  %25 = load i32, ptr %call38, align 4, !tbaa !4
  %call39 = call ptr @__errno_location() #11
  %26 = load i32, ptr %call39, align 4, !tbaa !4
  %call40 = call ptr @strerror(i32 noundef %26) #10
  %call41 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.79, i32 noundef %25, ptr noundef %call40)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43

if.end42:                                         ; preds = %if.end34
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup43

cleanup43:                                        ; preds = %if.end42, %if.then37, %if.then29
  call void @llvm.lifetime.end.p0(i64 32, ptr %dma_unmap) #10
  %cleanup.dest44 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest44, label %cleanup47 [
    i32 0, label %cleanup.cont45
  ]

cleanup.cont45:                                   ; preds = %cleanup43
  br label %if.end46

if.end46:                                         ; preds = %cleanup.cont45, %cleanup.cont
  %27 = load i32, ptr %ret, align 4, !tbaa !4
  store i32 %27, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup47

cleanup47:                                        ; preds = %if.end46, %cleanup43, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr %reg) #10
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @vfio_spapr_create_dma_window(i32 noundef %vfio_container_fd) #0 {
entry:
  %retval = alloca i32, align 4
  %vfio_container_fd.addr = alloca i32, align 4
  %create = alloca %struct.vfio_iommu_spapr_tce_create, align 8
  %remove = alloca %struct.vfio_iommu_spapr_tce_remove, align 8
  %info = alloca %struct.vfio_iommu_spapr_tce_info, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %levels15 = alloca i32, align 4
  store i32 %vfio_container_fd, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 40, ptr %create) #10
  call void @llvm.memset.p0.i64(ptr align 8 %create, i8 0, i64 40, i1 false)
  %0 = getelementptr inbounds %struct.vfio_iommu_spapr_tce_create, ptr %create, i32 0, i32 0
  store i32 40, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %remove) #10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %remove, ptr align 8 @__const.vfio_spapr_create_dma_window.remove, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr %info) #10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %info, ptr align 8 @__const.vfio_spapr_create_dma_window.info, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  %call = call i32 @spapr_dma_win_size()
  store i32 %call, ptr %ret, align 4, !tbaa !4
  %1 = load i32, ptr %ret, align 4, !tbaa !4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !tbaa !4
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  %call1 = call i32 (i32, i64, ...) @ioctl(i32 noundef %3, i64 noundef 15216, ptr noundef %info) #10
  store i32 %call1, ptr %ret, align 4, !tbaa !4
  %4 = load i32, ptr %ret, align 4, !tbaa !4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = call ptr @__errno_location() #11
  %5 = load i32, ptr %call3, align 4, !tbaa !4
  %call4 = call ptr @__errno_location() #11
  %6 = load i32, ptr %call4, align 4, !tbaa !4
  %call5 = call ptr @strerror(i32 noundef %6) #10
  %call6 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.81, i32 noundef %5, ptr noundef %call5)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dma32_window_start = getelementptr inbounds %struct.vfio_iommu_spapr_tce_info, ptr %info, i32 0, i32 2
  %7 = load i32, ptr %dma32_window_start, align 8, !tbaa !105
  %conv = zext i32 %7 to i64
  %start_addr = getelementptr inbounds %struct.vfio_iommu_spapr_tce_remove, ptr %remove, i32 0, i32 2
  store i64 %conv, ptr %start_addr, align 8, !tbaa !108
  %8 = load i32, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  %call8 = call i32 (i32, i64, ...) @ioctl(i32 noundef %8, i64 noundef 15224, ptr noundef %remove) #10
  store i32 %call8, ptr %ret, align 4, !tbaa !4
  %9 = load i32, ptr %ret, align 4, !tbaa !4
  %tobool9 = icmp ne i32 %9, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %10 = load i64, ptr @spapr_dma_win_len, align 8, !tbaa !55
  %window_size = getelementptr inbounds %struct.vfio_iommu_spapr_tce_create, ptr %create, i32 0, i32 4
  store i64 %10, ptr %window_size, align 8, !tbaa !110
  %11 = load i64, ptr @spapr_dma_win_page_sz, align 8, !tbaa !55
  %12 = call i64 @llvm.cttz.i64(i64 %11, i1 true)
  %cast = trunc i64 %12 to i32
  %page_shift = getelementptr inbounds %struct.vfio_iommu_spapr_tce_create, ptr %create, i32 0, i32 2
  store i32 %cast, ptr %page_shift, align 8, !tbaa !112
  %levels = getelementptr inbounds %struct.vfio_iommu_spapr_tce_create, ptr %create, i32 0, i32 5
  store i32 1, ptr %levels, align 8, !tbaa !113
  %13 = load i32, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  %call12 = call i32 (i32, i64, ...) @ioctl(i32 noundef %13, i64 noundef 15223, ptr noundef %create) #10
  store i32 %call12, ptr %ret, align 4, !tbaa !4
  %14 = load i32, ptr %ret, align 4, !tbaa !4
  %tobool13 = icmp ne i32 %14, 0
  br i1 %tobool13, label %if.then14, label %if.end23

if.then14:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr %levels15) #10
  %levels16 = getelementptr inbounds %struct.vfio_iommu_spapr_tce_create, ptr %create, i32 0, i32 5
  %15 = load i32, ptr %levels16, align 8, !tbaa !113
  %add = add i32 %15, 1
  store i32 %add, ptr %levels15, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then14
  %16 = load i32, ptr %ret, align 4, !tbaa !4
  %tobool17 = icmp ne i32 %16, 0
  br i1 %tobool17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %17 = load i32, ptr %levels15, align 4, !tbaa !4
  %ddw = getelementptr inbounds %struct.vfio_iommu_spapr_tce_info, ptr %info, i32 0, i32 4
  %levels18 = getelementptr inbounds %struct.vfio_iommu_spapr_tce_ddw_info, ptr %ddw, i32 0, i32 2
  %18 = load i32, ptr %levels18, align 4, !tbaa !114
  %cmp19 = icmp ule i32 %17, %18
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %19 = phi i1 [ false, %for.cond ], [ %cmp19, %land.rhs ]
  br i1 %19, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %20 = load i32, ptr %levels15, align 4, !tbaa !4
  %levels21 = getelementptr inbounds %struct.vfio_iommu_spapr_tce_create, ptr %create, i32 0, i32 5
  store i32 %20, ptr %levels21, align 8, !tbaa !113
  %21 = load i32, ptr %vfio_container_fd.addr, align 4, !tbaa !4
  %call22 = call i32 (i32, i64, ...) @ioctl(i32 noundef %21, i64 noundef 15223, ptr noundef %create) #10
  store i32 %call22, ptr %ret, align 4, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, ptr %levels15, align 4, !tbaa !4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %levels15, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !115

for.end:                                          ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %levels15) #10
  br label %if.end23

if.end23:                                         ; preds = %for.end, %if.end11
  %23 = load i32, ptr %ret, align 4, !tbaa !4
  %tobool24 = icmp ne i32 %23, 0
  br i1 %tobool24, label %if.then25, label %if.end31

if.then25:                                        ; preds = %if.end23
  %call26 = call ptr @__errno_location() #11
  %24 = load i32, ptr %call26, align 4, !tbaa !4
  %call27 = call ptr @__errno_location() #11
  %25 = load i32, ptr %call27, align 4, !tbaa !4
  %call28 = call ptr @strerror(i32 noundef %25) #10
  %call29 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.82, i32 noundef %24, ptr noundef %call28)
  %call30 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.83)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %start_addr32 = getelementptr inbounds %struct.vfio_iommu_spapr_tce_create, ptr %create, i32 0, i32 7
  %26 = load i64, ptr %start_addr32, align 8, !tbaa !116
  %cmp33 = icmp ne i64 %26, 0
  br i1 %cmp33, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end31
  %start_addr36 = getelementptr inbounds %struct.vfio_iommu_spapr_tce_create, ptr %create, i32 0, i32 7
  %27 = load i64, ptr %start_addr36, align 8, !tbaa !116
  %call37 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.84, i64 noundef %27)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  %28 = load i32, ptr %ret, align 4, !tbaa !4
  store i32 %28, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then35, %if.then25, %if.then10, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr %info) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr %remove) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr %create) #10
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @vfio_spapr_map_walk(ptr noundef %msl, ptr noundef %ms, ptr noundef %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %msl.addr = alloca ptr, align 8
  %ms.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %vfio_container_fd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %msl, ptr %msl.addr, align 8, !tbaa !8
  store ptr %ms, ptr %ms.addr, align 8, !tbaa !8
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %vfio_container_fd) #10
  %0 = load ptr, ptr %arg.addr, align 8, !tbaa !8
  store ptr %0, ptr %vfio_container_fd, align 8, !tbaa !8
  %1 = load ptr, ptr %msl.addr, align 8, !tbaa !8
  %external = getelementptr inbounds %struct.rte_memseg_list, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %external, align 8, !tbaa !56
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %msl.addr, align 8, !tbaa !8
  %heap = getelementptr inbounds %struct.rte_memseg_list, ptr %3, i32 0, i32 6
  %4 = load i32, ptr %heap, align 4, !tbaa !99
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %ms.addr, align 8, !tbaa !8
  %iova = getelementptr inbounds %struct.rte_memseg, ptr %5, i32 0, i32 0
  %6 = load i64, ptr %iova, align 1, !tbaa !61
  %cmp = icmp eq i64 %6, -1
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = load ptr, ptr %vfio_container_fd, align 8, !tbaa !8
  %8 = load i32, ptr %7, align 4, !tbaa !4
  %9 = load ptr, ptr %ms.addr, align 8, !tbaa !8
  %10 = getelementptr inbounds %struct.rte_memseg, ptr %9, i32 0, i32 1
  %11 = load i64, ptr %10, align 1, !tbaa !51
  %12 = load ptr, ptr %ms.addr, align 8, !tbaa !8
  %iova4 = getelementptr inbounds %struct.rte_memseg, ptr %12, i32 0, i32 0
  %13 = load i64, ptr %iova4, align 1, !tbaa !61
  %14 = load ptr, ptr %ms.addr, align 8, !tbaa !8
  %len = getelementptr inbounds %struct.rte_memseg, ptr %14, i32 0, i32 2
  %15 = load i64, ptr %len, align 1, !tbaa !63
  %call = call i32 @vfio_spapr_dma_do_map(i32 noundef %8, i64 noundef %11, i64 noundef %13, i64 noundef %15, i32 noundef 1)
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %vfio_container_fd) #10
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @spapr_dma_win_size() #0 {
entry:
  %retval = alloca i32, align 4
  %param = alloca %struct.spapr_size_walk_param, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr %param) #10
  %0 = load i64, ptr @spapr_dma_win_len, align 8, !tbaa !55
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %param, i8 0, i64 24, i1 false)
  %call = call i32 @rte_memseg_list_walk(ptr noundef @vfio_spapr_size_walk, ptr noundef %param)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.85)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %is_user_managed = getelementptr inbounds %struct.spapr_size_walk_param, ptr %param, i32 0, i32 2
  %1 = load i8, ptr %is_user_managed, align 8, !tbaa !117, !range !85, !noundef !86
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end4
  %call6 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 5, i32 noundef 0, ptr noundef @.str.86)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end4
  %call8 = call i32 @find_highest_mem_addr(ptr noundef %param)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %2 = load i64, ptr @spapr_dma_win_len, align 8, !tbaa !55
  %call12 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.87, i64 noundef %2)
  %page_sz = getelementptr inbounds %struct.spapr_size_walk_param, ptr %param, i32 0, i32 1
  %3 = load i64, ptr %page_sz, align 8, !tbaa !119
  store i64 %3, ptr @spapr_dma_win_page_sz, align 8, !tbaa !55
  %4 = load i64, ptr @spapr_dma_win_len, align 8, !tbaa !55
  %5 = call i64 @llvm.cttz.i64(i64 %4, i1 true)
  %cast = trunc i64 %5 to i32
  %conv = trunc i32 %cast to i8
  call void @rte_mem_set_dma_mask(i8 noundef zeroext %conv)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %param) #10
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #7

declare i32 @rte_memseg_list_walk(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @vfio_spapr_size_walk(ptr noundef %msl, ptr noundef %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %msl.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %param = alloca ptr, align 8
  %max = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %msl, ptr %msl.addr, align 8, !tbaa !8
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %param) #10
  %0 = load ptr, ptr %arg.addr, align 8, !tbaa !8
  store ptr %0, ptr %param, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #10
  %1 = load ptr, ptr %msl.addr, align 8, !tbaa !8
  %2 = getelementptr inbounds %struct.rte_memseg_list, ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = ptrtoint ptr %3 to i64
  %5 = load ptr, ptr %msl.addr, align 8, !tbaa !8
  %len = getelementptr inbounds %struct.rte_memseg_list, ptr %5, i32 0, i32 4
  %6 = load i64, ptr %len, align 8, !tbaa !120
  %add = add i64 %4, %6
  store i64 %add, ptr %max, align 8, !tbaa !55
  %7 = load ptr, ptr %msl.addr, align 8, !tbaa !8
  %external = getelementptr inbounds %struct.rte_memseg_list, ptr %7, i32 0, i32 5
  %8 = load i32, ptr %external, align 8, !tbaa !56
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load ptr, ptr %msl.addr, align 8, !tbaa !8
  %heap = getelementptr inbounds %struct.rte_memseg_list, ptr %9, i32 0, i32 6
  %10 = load i32, ptr %heap, align 4, !tbaa !99
  %tobool1 = icmp ne i32 %10, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %11 = load ptr, ptr %param, align 8, !tbaa !8
  %is_user_managed = getelementptr inbounds %struct.spapr_size_walk_param, ptr %11, i32 0, i32 2
  store i8 1, ptr %is_user_managed, align 8, !tbaa !117
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load i64, ptr %max, align 8, !tbaa !55
  %13 = load ptr, ptr %param, align 8, !tbaa !8
  %max_va = getelementptr inbounds %struct.spapr_size_walk_param, ptr %13, i32 0, i32 0
  %14 = load i64, ptr %max_va, align 8, !tbaa !121
  %cmp = icmp ugt i64 %12, %14
  br i1 %cmp, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %15 = load ptr, ptr %msl.addr, align 8, !tbaa !8
  %page_sz = getelementptr inbounds %struct.rte_memseg_list, ptr %15, i32 0, i32 1
  %16 = load i64, ptr %page_sz, align 8, !tbaa !59
  %17 = load ptr, ptr %param, align 8, !tbaa !8
  %page_sz3 = getelementptr inbounds %struct.spapr_size_walk_param, ptr %17, i32 0, i32 1
  store i64 %16, ptr %page_sz3, align 8, !tbaa !119
  %18 = load i64, ptr %max, align 8, !tbaa !55
  %19 = load ptr, ptr %param, align 8, !tbaa !8
  %max_va4 = getelementptr inbounds %struct.spapr_size_walk_param, ptr %19, i32 0, i32 0
  store i64 %18, ptr %max_va4, align 8, !tbaa !121
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %param) #10
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @find_highest_mem_addr(ptr noundef %param) #0 {
entry:
  %retval = alloca i32, align 4
  %param.addr = alloca ptr, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %max = alloca i64, align 8
  %line = alloca ptr, align 8
  %dash = alloca ptr, align 8
  %space = alloca ptr, align 8
  %line_len = alloca i64, align 8
  %fd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %param, ptr %param.addr, align 8, !tbaa !8
  %call = call i32 @rte_eal_iova_mode()
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #10
  store i64 0, ptr %max, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr %line) #10
  store ptr null, ptr %line, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %dash) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %space) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %line_len) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %fd) #10
  %call1 = call noalias ptr @fopen64(ptr noundef @find_highest_mem_addr.proc_iomem, ptr noundef @.str.88)
  store ptr %call1, ptr %fd, align 8, !tbaa !8
  %0 = load ptr, ptr %fd, align 8, !tbaa !8
  %cmp2 = icmp eq ptr %0, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %call4 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.89, ptr noundef @find_highest_mem_addr.proc_iomem)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end25, %if.then17, %if.then9, %if.end
  %1 = load ptr, ptr %fd, align 8, !tbaa !8
  %call5 = call i64 @getline(ptr noundef %line, ptr noundef %line_len, ptr noundef %1)
  %cmp6 = icmp ne i64 %call5, -1
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %line, align 8, !tbaa !8
  %call7 = call ptr @strstr(ptr noundef %2, ptr noundef @find_highest_mem_addr.str_sysram) #12
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.body
  br label %while.cond, !llvm.loop !122

if.end10:                                         ; preds = %while.body
  %3 = load ptr, ptr %line, align 8, !tbaa !8
  %call11 = call ptr @strstr(ptr noundef %3, ptr noundef @.str.90) #12
  store ptr %call11, ptr %space, align 8, !tbaa !8
  %4 = load ptr, ptr %line, align 8, !tbaa !8
  %call12 = call ptr @strstr(ptr noundef %4, ptr noundef @.str.91) #12
  store ptr %call12, ptr %dash, align 8, !tbaa !8
  %5 = load ptr, ptr %space, align 8, !tbaa !8
  %cmp13 = icmp eq ptr %5, null
  br i1 %cmp13, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %6 = load ptr, ptr %dash, align 8, !tbaa !8
  %cmp14 = icmp eq ptr %6, null
  br i1 %cmp14, label %if.then17, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %7 = load ptr, ptr %space, align 8, !tbaa !8
  %8 = load ptr, ptr %dash, align 8, !tbaa !8
  %cmp16 = icmp ult ptr %7, %8
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %lor.lhs.false15, %lor.lhs.false, %if.end10
  %9 = load ptr, ptr %line, align 8, !tbaa !8
  %call18 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.92, ptr noundef %9, ptr noundef @find_highest_mem_addr.proc_iomem)
  br label %while.cond, !llvm.loop !122

if.end19:                                         ; preds = %lor.lhs.false15
  %10 = load ptr, ptr %line, align 8, !tbaa !8
  %call20 = call i64 @strtoull(ptr noundef %10, ptr noundef null, i32 noundef 16) #10
  store i64 %call20, ptr %start, align 8, !tbaa !55
  %11 = load ptr, ptr %dash, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 1
  %call21 = call i64 @strtoull(ptr noundef %add.ptr, ptr noundef null, i32 noundef 16) #10
  store i64 %call21, ptr %end, align 8, !tbaa !55
  %12 = load i64, ptr %start, align 8, !tbaa !55
  %13 = load i64, ptr %end, align 8, !tbaa !55
  %call22 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.93, i64 noundef %12, i64 noundef %13)
  %14 = load i64, ptr %end, align 8, !tbaa !55
  %15 = load i64, ptr %max, align 8, !tbaa !55
  %cmp23 = icmp ugt i64 %14, %15
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end19
  %16 = load i64, ptr %end, align 8, !tbaa !55
  store i64 %16, ptr %max, align 8, !tbaa !55
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end19
  br label %while.cond, !llvm.loop !122

while.end:                                        ; preds = %while.cond
  %17 = load ptr, ptr %line, align 8, !tbaa !8
  call void @free(ptr noundef %17) #10
  %18 = load ptr, ptr %fd, align 8, !tbaa !8
  %call26 = call i32 @fclose(ptr noundef %18)
  %19 = load i64, ptr %max, align 8, !tbaa !55
  %cmp27 = icmp eq i64 %19, 0
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %while.end
  %call29 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.94, ptr noundef @find_highest_mem_addr.proc_iomem)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %while.end
  %20 = load i64, ptr %max, align 8, !tbaa !55
  %add = add i64 %20, 1
  %call31 = call i64 @rte_align64pow2(i64 noundef %add)
  store i64 %call31, ptr @spapr_dma_win_len, align 8, !tbaa !55
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then28, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %fd) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %line_len) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %space) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %dash) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %line) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #10
  br label %return

if.else:                                          ; preds = %entry
  %call39 = call i32 @rte_eal_iova_mode()
  %cmp40 = icmp eq i32 %call39, 2
  br i1 %cmp40, label %if.then41, label %if.end45

if.then41:                                        ; preds = %if.else
  %21 = load ptr, ptr %param.addr, align 8, !tbaa !8
  %max_va = getelementptr inbounds %struct.spapr_size_walk_param, ptr %21, i32 0, i32 0
  %22 = load i64, ptr %max_va, align 8, !tbaa !121
  %call42 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.95, i64 noundef %22)
  %23 = load ptr, ptr %param.addr, align 8, !tbaa !8
  %max_va43 = getelementptr inbounds %struct.spapr_size_walk_param, ptr %23, i32 0, i32 0
  %24 = load i64, ptr %max_va43, align 8, !tbaa !121
  %call44 = call i64 @rte_align64pow2(i64 noundef %24)
  store i64 %call44, ptr @spapr_dma_win_len, align 8, !tbaa !55
  store i32 0, ptr %retval, align 4
  br label %return

if.end45:                                         ; preds = %if.else
  br label %if.end46

if.end46:                                         ; preds = %if.end45
  store i64 0, ptr @spapr_dma_win_len, align 8, !tbaa !55
  %call47 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.96)
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end46, %if.then41, %cleanup
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

declare void @rte_mem_set_dma_mask(i8 noundef zeroext) #2

declare noalias ptr @fopen64(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define available_externally i64 @getline(ptr noundef %__lineptr, ptr noundef %__n, ptr noundef %__stream) #6 {
entry:
  %__lineptr.addr = alloca ptr, align 8
  %__n.addr = alloca ptr, align 8
  %__stream.addr = alloca ptr, align 8
  store ptr %__lineptr, ptr %__lineptr.addr, align 8, !tbaa !8
  store ptr %__n, ptr %__n.addr, align 8, !tbaa !8
  store ptr %__stream, ptr %__stream.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__lineptr.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %__n.addr, align 8, !tbaa !8
  %2 = load ptr, ptr %__stream.addr, align 8, !tbaa !8
  %call = call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2)
  ret i64 %call
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #9

; Function Attrs: nounwind
declare i64 @strtoull(ptr noundef, ptr noundef, i32 noundef) #4

declare i32 @fclose(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @rte_align64pow2(i64 noundef %v) #6 {
entry:
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 8, !tbaa !55
  %0 = load i64, ptr %v.addr, align 8, !tbaa !55
  %dec = add i64 %0, -1
  store i64 %dec, ptr %v.addr, align 8, !tbaa !55
  %1 = load i64, ptr %v.addr, align 8, !tbaa !55
  %call = call i64 @rte_combine64ms1b(i64 noundef %1)
  store i64 %call, ptr %v.addr, align 8, !tbaa !55
  %2 = load i64, ptr %v.addr, align 8, !tbaa !55
  %add = add i64 %2, 1
  ret i64 %add
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @rte_combine64ms1b(i64 noundef %v) #6 {
entry:
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 8, !tbaa !55
  %0 = load i64, ptr %v.addr, align 8, !tbaa !55
  %shr = lshr i64 %0, 1
  %1 = load i64, ptr %v.addr, align 8, !tbaa !55
  %or = or i64 %1, %shr
  store i64 %or, ptr %v.addr, align 8, !tbaa !55
  %2 = load i64, ptr %v.addr, align 8, !tbaa !55
  %shr1 = lshr i64 %2, 2
  %3 = load i64, ptr %v.addr, align 8, !tbaa !55
  %or2 = or i64 %3, %shr1
  store i64 %or2, ptr %v.addr, align 8, !tbaa !55
  %4 = load i64, ptr %v.addr, align 8, !tbaa !55
  %shr3 = lshr i64 %4, 4
  %5 = load i64, ptr %v.addr, align 8, !tbaa !55
  %or4 = or i64 %5, %shr3
  store i64 %or4, ptr %v.addr, align 8, !tbaa !55
  %6 = load i64, ptr %v.addr, align 8, !tbaa !55
  %shr5 = lshr i64 %6, 8
  %7 = load i64, ptr %v.addr, align 8, !tbaa !55
  %or6 = or i64 %7, %shr5
  store i64 %or6, ptr %v.addr, align 8, !tbaa !55
  %8 = load i64, ptr %v.addr, align 8, !tbaa !55
  %shr7 = lshr i64 %8, 16
  %9 = load i64, ptr %v.addr, align 8, !tbaa !55
  %or8 = or i64 %9, %shr7
  store i64 %or8, ptr %v.addr, align 8, !tbaa !55
  %10 = load i64, ptr %v.addr, align 8, !tbaa !55
  %shr9 = lshr i64 %10, 32
  %11 = load i64, ptr %v.addr, align 8, !tbaa !55
  %or10 = or i64 %11, %shr9
  store i64 %or10, ptr %v.addr, align 8, !tbaa !55
  %12 = load i64, ptr %v.addr, align 8, !tbaa !55
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define internal void @compact_user_maps(ptr noundef %user_mem_maps) #0 {
entry:
  %user_mem_maps.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %l = alloca ptr, align 8
  %r = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %user_mem_maps, ptr %user_mem_maps.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  %0 = load ptr, ptr %user_mem_maps.addr, align 8, !tbaa !8
  %maps = getelementptr inbounds %struct.user_mem_maps, ptr %0, i32 0, i32 2
  %arraydecay = getelementptr inbounds [256 x %struct.user_mem_map], ptr %maps, i64 0, i64 0
  call void @qsort(ptr noundef %arraydecay, i64 noundef 256, i64 noundef 32, ptr noundef @user_mem_map_cmp)
  store i32 254, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #10
  %2 = load ptr, ptr %user_mem_maps.addr, align 8, !tbaa !8
  %maps1 = getelementptr inbounds %struct.user_mem_maps, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.user_mem_map], ptr %maps1, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %l, align 8, !tbaa !8
  %4 = load ptr, ptr %user_mem_maps.addr, align 8, !tbaa !8
  %maps2 = getelementptr inbounds %struct.user_mem_maps, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %5, 1
  %idxprom3 = sext i32 %add to i64
  %arrayidx4 = getelementptr inbounds [256 x %struct.user_mem_map], ptr %maps2, i64 0, i64 %idxprom3
  store ptr %arrayidx4, ptr %r, align 8, !tbaa !8
  %6 = load ptr, ptr %l, align 8, !tbaa !8
  %call = call i32 @is_null_map(ptr noundef %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load ptr, ptr %r, align 8, !tbaa !8
  %call5 = call i32 @is_null_map(ptr noundef %7)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %l, align 8, !tbaa !8
  %9 = load ptr, ptr %r, align 8, !tbaa !8
  %call7 = call i32 @merge_map(ptr noundef %8, ptr noundef %9)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %10 = load ptr, ptr %user_mem_maps.addr, align 8, !tbaa !8
  %n_maps = getelementptr inbounds %struct.user_mem_maps, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %n_maps, align 4, !tbaa !42
  %dec = add nsw i32 %11, -1
  store i32 %dec, ptr %n_maps, align 4, !tbaa !42
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %12 = load i32, ptr %i, align 4, !tbaa !4
  %dec12 = add nsw i32 %12, -1
  store i32 %dec12, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !123

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %user_mem_maps.addr, align 8, !tbaa !8
  %maps13 = getelementptr inbounds %struct.user_mem_maps, ptr %13, i32 0, i32 2
  %arraydecay14 = getelementptr inbounds [256 x %struct.user_mem_map], ptr %maps13, i64 0, i64 0
  call void @qsort(ptr noundef %arraydecay14, i64 noundef 256, i64 noundef 32, ptr noundef @user_mem_map_cmp)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @user_mem_map_cmp(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %umm_a = alloca ptr, align 8
  %umm_b = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !8
  store ptr %b, ptr %b.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %umm_a) #10
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !8
  store ptr %0, ptr %umm_a, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %umm_b) #10
  %1 = load ptr, ptr %b.addr, align 8, !tbaa !8
  store ptr %1, ptr %umm_b, align 8, !tbaa !8
  %2 = load ptr, ptr %umm_a, align 8, !tbaa !8
  %call = call i32 @is_null_map(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %umm_b, align 8, !tbaa !8
  %call1 = call i32 @is_null_map(ptr noundef %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %umm_a, align 8, !tbaa !8
  %iova = getelementptr inbounds %struct.user_mem_map, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %iova, align 8, !tbaa !46
  %6 = load ptr, ptr %umm_b, align 8, !tbaa !8
  %iova5 = getelementptr inbounds %struct.user_mem_map, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %iova5, align 8, !tbaa !46
  %cmp = icmp ult i64 %5, %7
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %8 = load ptr, ptr %umm_a, align 8, !tbaa !8
  %iova8 = getelementptr inbounds %struct.user_mem_map, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %iova8, align 8, !tbaa !46
  %10 = load ptr, ptr %umm_b, align 8, !tbaa !8
  %iova9 = getelementptr inbounds %struct.user_mem_map, ptr %10, i32 0, i32 1
  %11 = load i64, ptr %iova9, align 8, !tbaa !46
  %cmp10 = icmp ugt i64 %9, %11
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %12 = load ptr, ptr %umm_a, align 8, !tbaa !8
  %addr = getelementptr inbounds %struct.user_mem_map, ptr %12, i32 0, i32 0
  %13 = load i64, ptr %addr, align 8, !tbaa !44
  %14 = load ptr, ptr %umm_b, align 8, !tbaa !8
  %addr13 = getelementptr inbounds %struct.user_mem_map, ptr %14, i32 0, i32 0
  %15 = load i64, ptr %addr13, align 8, !tbaa !44
  %cmp14 = icmp ult i64 %13, %15
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %16 = load ptr, ptr %umm_a, align 8, !tbaa !8
  %addr17 = getelementptr inbounds %struct.user_mem_map, ptr %16, i32 0, i32 0
  %17 = load i64, ptr %addr17, align 8, !tbaa !44
  %18 = load ptr, ptr %umm_b, align 8, !tbaa !8
  %addr18 = getelementptr inbounds %struct.user_mem_map, ptr %18, i32 0, i32 0
  %19 = load i64, ptr %addr18, align 8, !tbaa !44
  %cmp19 = icmp ugt i64 %17, %19
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %20 = load ptr, ptr %umm_a, align 8, !tbaa !8
  %len = getelementptr inbounds %struct.user_mem_map, ptr %20, i32 0, i32 2
  %21 = load i64, ptr %len, align 8, !tbaa !47
  %22 = load ptr, ptr %umm_b, align 8, !tbaa !8
  %len22 = getelementptr inbounds %struct.user_mem_map, ptr %22, i32 0, i32 2
  %23 = load i64, ptr %len22, align 8, !tbaa !47
  %cmp23 = icmp ult i64 %21, %23
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %24 = load ptr, ptr %umm_a, align 8, !tbaa !8
  %len26 = getelementptr inbounds %struct.user_mem_map, ptr %24, i32 0, i32 2
  %25 = load i64, ptr %len26, align 8, !tbaa !47
  %26 = load ptr, ptr %umm_b, align 8, !tbaa !8
  %len27 = getelementptr inbounds %struct.user_mem_map, ptr %26, i32 0, i32 2
  %27 = load i64, ptr %len27, align 8, !tbaa !47
  %cmp28 = icmp ugt i64 %25, %27
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end25
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %28 = load ptr, ptr %umm_a, align 8, !tbaa !8
  %chunk = getelementptr inbounds %struct.user_mem_map, ptr %28, i32 0, i32 3
  %29 = load i64, ptr %chunk, align 8, !tbaa !88
  %30 = load ptr, ptr %umm_b, align 8, !tbaa !8
  %chunk31 = getelementptr inbounds %struct.user_mem_map, ptr %30, i32 0, i32 3
  %31 = load i64, ptr %chunk31, align 8, !tbaa !88
  %cmp32 = icmp ult i64 %29, %31
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %32 = load ptr, ptr %umm_a, align 8, !tbaa !8
  %chunk35 = getelementptr inbounds %struct.user_mem_map, ptr %32, i32 0, i32 3
  %33 = load i64, ptr %chunk35, align 8, !tbaa !88
  %34 = load ptr, ptr %umm_b, align 8, !tbaa !8
  %chunk36 = getelementptr inbounds %struct.user_mem_map, ptr %34, i32 0, i32 3
  %35 = load i64, ptr %chunk36, align 8, !tbaa !88
  %cmp37 = icmp ugt i64 %33, %35
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end34
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then38, %if.then33, %if.then29, %if.then24, %if.then20, %if.then15, %if.then11, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %umm_b) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %umm_a) #10
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @is_null_map(ptr noundef %map) #0 {
entry:
  %map.addr = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %map.addr, align 8, !tbaa !8
  %addr = getelementptr inbounds %struct.user_mem_map, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %addr, align 8, !tbaa !44
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %map.addr, align 8, !tbaa !8
  %iova = getelementptr inbounds %struct.user_mem_map, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %iova, align 8, !tbaa !46
  %cmp1 = icmp eq i64 %3, 0
  br i1 %cmp1, label %land.lhs.true2, label %land.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %map.addr, align 8, !tbaa !8
  %len = getelementptr inbounds %struct.user_mem_map, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %len, align 8, !tbaa !47
  %cmp3 = icmp eq i64 %5, 0
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true2
  %6 = load ptr, ptr %map.addr, align 8, !tbaa !8
  %chunk = getelementptr inbounds %struct.user_mem_map, ptr %6, i32 0, i32 3
  %7 = load i64, ptr %chunk, align 8, !tbaa !88
  %cmp4 = icmp eq i64 %7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true2, %land.lhs.true, %entry
  %8 = phi i1 [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @merge_map(ptr noundef %left, ptr noundef %right) #0 {
entry:
  %retval = alloca i32, align 4
  %left.addr = alloca ptr, align 8
  %right.addr = alloca ptr, align 8
  store ptr %left, ptr %left.addr, align 8, !tbaa !8
  store ptr %right, ptr %right.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %left.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %right.addr, align 8, !tbaa !8
  %call = call i32 @memcmp(ptr noundef %0, ptr noundef %1, i64 noundef 32) #12
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %left.addr, align 8, !tbaa !8
  %addr = getelementptr inbounds %struct.user_mem_map, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %addr, align 8, !tbaa !44
  %4 = load ptr, ptr %left.addr, align 8, !tbaa !8
  %len = getelementptr inbounds %struct.user_mem_map, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %len, align 8, !tbaa !47
  %add = add i64 %3, %5
  %6 = load ptr, ptr %right.addr, align 8, !tbaa !8
  %addr1 = getelementptr inbounds %struct.user_mem_map, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %addr1, align 8, !tbaa !44
  %cmp2 = icmp ne i64 %add, %7
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %left.addr, align 8, !tbaa !8
  %iova = getelementptr inbounds %struct.user_mem_map, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %iova, align 8, !tbaa !46
  %10 = load ptr, ptr %left.addr, align 8, !tbaa !8
  %len5 = getelementptr inbounds %struct.user_mem_map, ptr %10, i32 0, i32 2
  %11 = load i64, ptr %len5, align 8, !tbaa !47
  %add6 = add i64 %9, %11
  %12 = load ptr, ptr %right.addr, align 8, !tbaa !8
  %iova7 = getelementptr inbounds %struct.user_mem_map, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %iova7, align 8, !tbaa !46
  %cmp8 = icmp ne i64 %add6, %13
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end4
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end4
  %14 = load ptr, ptr %left.addr, align 8, !tbaa !8
  %chunk = getelementptr inbounds %struct.user_mem_map, ptr %14, i32 0, i32 3
  %15 = load i64, ptr %chunk, align 8, !tbaa !88
  %16 = load ptr, ptr %right.addr, align 8, !tbaa !8
  %chunk11 = getelementptr inbounds %struct.user_mem_map, ptr %16, i32 0, i32 3
  %17 = load i64, ptr %chunk11, align 8, !tbaa !88
  %cmp12 = icmp ne i64 %15, %17
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end10
  %18 = load ptr, ptr %right.addr, align 8, !tbaa !8
  %len15 = getelementptr inbounds %struct.user_mem_map, ptr %18, i32 0, i32 2
  %19 = load i64, ptr %len15, align 8, !tbaa !47
  %20 = load ptr, ptr %left.addr, align 8, !tbaa !8
  %len16 = getelementptr inbounds %struct.user_mem_map, ptr %20, i32 0, i32 2
  %21 = load i64, ptr %len16, align 8, !tbaa !47
  %add17 = add i64 %21, %19
  store i64 %add17, ptr %len16, align 8, !tbaa !47
  br label %out

out:                                              ; preds = %if.end14, %if.then
  %22 = load ptr, ptr %right.addr, align 8, !tbaa !8
  call void @llvm.memset.p0.i64(ptr align 8 %22, i8 0, i64 32, i1 false)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %out, %if.then13, %if.then9, %if.then3
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #9

; Function Attrs: nounwind uwtable
define internal i32 @find_user_mem_maps(ptr noundef %user_mem_maps, i64 noundef %addr, i64 noundef %iova, i64 noundef %len, ptr noundef %dst, i64 noundef %dst_len) #0 {
entry:
  %retval = alloca i32, align 4
  %user_mem_maps.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %iova.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %dst_len.addr = alloca i64, align 8
  %va_end = alloca i64, align 8
  %iova_end = alloca i64, align 8
  %found = alloca i8, align 1
  %j = alloca i64, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %map = alloca ptr, align 8
  %map_va_end = alloca i64, align 8
  %map_iova_end = alloca i64, align 8
  %start_addr_in_map = alloca i8, align 1
  %end_addr_in_map = alloca i8, align 1
  %start_iova_in_map = alloca i8, align 1
  %end_iova_in_map = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %user_mem_maps, ptr %user_mem_maps.addr, align 8, !tbaa !8
  store i64 %addr, ptr %addr.addr, align 8, !tbaa !55
  store i64 %iova, ptr %iova.addr, align 8, !tbaa !55
  store i64 %len, ptr %len.addr, align 8, !tbaa !55
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !8
  store i64 %dst_len, ptr %dst_len.addr, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr %va_end) #10
  %0 = load i64, ptr %addr.addr, align 8, !tbaa !55
  %1 = load i64, ptr %len.addr, align 8, !tbaa !55
  %add = add i64 %0, %1
  store i64 %add, ptr %va_end, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr %iova_end) #10
  %2 = load i64, ptr %iova.addr, align 8, !tbaa !55
  %3 = load i64, ptr %len.addr, align 8, !tbaa !55
  %add1 = add i64 %2, %3
  store i64 %add1, ptr %iova_end, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 1, ptr %found) #10
  store i8 0, ptr %found, align 1, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10
  store i32 0, ptr %i, align 4, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !55
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !tbaa !4
  %5 = load ptr, ptr %user_mem_maps.addr, align 8, !tbaa !8
  %n_maps = getelementptr inbounds %struct.user_mem_maps, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %n_maps, align 4, !tbaa !42
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #10
  %7 = load ptr, ptr %user_mem_maps.addr, align 8, !tbaa !8
  %maps = getelementptr inbounds %struct.user_mem_maps, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.user_mem_map], ptr %maps, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %map, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %map_va_end) #10
  %9 = load ptr, ptr %map, align 8, !tbaa !8
  %addr2 = getelementptr inbounds %struct.user_mem_map, ptr %9, i32 0, i32 0
  %10 = load i64, ptr %addr2, align 8, !tbaa !44
  %11 = load ptr, ptr %map, align 8, !tbaa !8
  %len3 = getelementptr inbounds %struct.user_mem_map, ptr %11, i32 0, i32 2
  %12 = load i64, ptr %len3, align 8, !tbaa !47
  %add4 = add i64 %10, %12
  store i64 %add4, ptr %map_va_end, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr %map_iova_end) #10
  %13 = load ptr, ptr %map, align 8, !tbaa !8
  %iova5 = getelementptr inbounds %struct.user_mem_map, ptr %13, i32 0, i32 1
  %14 = load i64, ptr %iova5, align 8, !tbaa !46
  %15 = load ptr, ptr %map, align 8, !tbaa !8
  %len6 = getelementptr inbounds %struct.user_mem_map, ptr %15, i32 0, i32 2
  %16 = load i64, ptr %len6, align 8, !tbaa !47
  %add7 = add i64 %14, %16
  store i64 %add7, ptr %map_iova_end, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 1, ptr %start_addr_in_map) #10
  %17 = load i64, ptr %addr.addr, align 8, !tbaa !55
  %18 = load ptr, ptr %map, align 8, !tbaa !8
  %addr8 = getelementptr inbounds %struct.user_mem_map, ptr %18, i32 0, i32 0
  %19 = load i64, ptr %addr8, align 8, !tbaa !44
  %cmp9 = icmp uge i64 %17, %19
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %20 = load i64, ptr %addr.addr, align 8, !tbaa !55
  %21 = load i64, ptr %map_va_end, align 8, !tbaa !55
  %cmp10 = icmp ult i64 %20, %21
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %22 = phi i1 [ false, %for.body ], [ %cmp10, %land.rhs ]
  %frombool = zext i1 %22 to i8
  store i8 %frombool, ptr %start_addr_in_map, align 1, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 1, ptr %end_addr_in_map) #10
  %23 = load i64, ptr %va_end, align 8, !tbaa !55
  %24 = load ptr, ptr %map, align 8, !tbaa !8
  %addr11 = getelementptr inbounds %struct.user_mem_map, ptr %24, i32 0, i32 0
  %25 = load i64, ptr %addr11, align 8, !tbaa !44
  %cmp12 = icmp ugt i64 %23, %25
  br i1 %cmp12, label %land.rhs13, label %land.end15

land.rhs13:                                       ; preds = %land.end
  %26 = load i64, ptr %va_end, align 8, !tbaa !55
  %27 = load i64, ptr %map_va_end, align 8, !tbaa !55
  %cmp14 = icmp ule i64 %26, %27
  br label %land.end15

land.end15:                                       ; preds = %land.rhs13, %land.end
  %28 = phi i1 [ false, %land.end ], [ %cmp14, %land.rhs13 ]
  %frombool16 = zext i1 %28 to i8
  store i8 %frombool16, ptr %end_addr_in_map, align 1, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 1, ptr %start_iova_in_map) #10
  %29 = load i64, ptr %iova.addr, align 8, !tbaa !55
  %30 = load ptr, ptr %map, align 8, !tbaa !8
  %iova17 = getelementptr inbounds %struct.user_mem_map, ptr %30, i32 0, i32 1
  %31 = load i64, ptr %iova17, align 8, !tbaa !46
  %cmp18 = icmp uge i64 %29, %31
  br i1 %cmp18, label %land.rhs19, label %land.end21

land.rhs19:                                       ; preds = %land.end15
  %32 = load i64, ptr %iova.addr, align 8, !tbaa !55
  %33 = load i64, ptr %map_iova_end, align 8, !tbaa !55
  %cmp20 = icmp ult i64 %32, %33
  br label %land.end21

land.end21:                                       ; preds = %land.rhs19, %land.end15
  %34 = phi i1 [ false, %land.end15 ], [ %cmp20, %land.rhs19 ]
  %frombool22 = zext i1 %34 to i8
  store i8 %frombool22, ptr %start_iova_in_map, align 1, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 1, ptr %end_iova_in_map) #10
  %35 = load i64, ptr %iova_end, align 8, !tbaa !55
  %36 = load ptr, ptr %map, align 8, !tbaa !8
  %iova23 = getelementptr inbounds %struct.user_mem_map, ptr %36, i32 0, i32 1
  %37 = load i64, ptr %iova23, align 8, !tbaa !46
  %cmp24 = icmp ugt i64 %35, %37
  br i1 %cmp24, label %land.rhs25, label %land.end27

land.rhs25:                                       ; preds = %land.end21
  %38 = load i64, ptr %iova_end, align 8, !tbaa !55
  %39 = load i64, ptr %map_iova_end, align 8, !tbaa !55
  %cmp26 = icmp ule i64 %38, %39
  br label %land.end27

land.end27:                                       ; preds = %land.rhs25, %land.end21
  %40 = phi i1 [ false, %land.end21 ], [ %cmp26, %land.rhs25 ]
  %frombool28 = zext i1 %40 to i8
  store i8 %frombool28, ptr %end_iova_in_map, align 1, !tbaa !87
  %41 = load i64, ptr %j, align 8, !tbaa !55
  %42 = load i64, ptr %dst_len.addr, align 8, !tbaa !55
  %cmp29 = icmp eq i64 %41, %42
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %land.end27
  store i32 -28, ptr %ret, align 4, !tbaa !4
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.end27
  %43 = load i8, ptr %found, align 1, !tbaa !87, !range !85, !noundef !86
  %tobool = trunc i8 %43 to i1
  br i1 %tobool, label %if.end34, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %44 = load i8, ptr %start_addr_in_map, align 1, !tbaa !87, !range !85, !noundef !86
  %tobool30 = trunc i8 %44 to i1
  br i1 %tobool30, label %land.lhs.true31, label %if.end34

land.lhs.true31:                                  ; preds = %land.lhs.true
  %45 = load i8, ptr %start_iova_in_map, align 1, !tbaa !87, !range !85, !noundef !86
  %tobool32 = trunc i8 %45 to i1
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %land.lhs.true31
  store i8 1, ptr %found, align 1, !tbaa !87
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %land.lhs.true31, %land.lhs.true, %if.end
  %46 = load i8, ptr %found, align 1, !tbaa !87, !range !85, !noundef !86
  %tobool35 = trunc i8 %46 to i1
  br i1 %tobool35, label %if.then36, label %if.end43

if.then36:                                        ; preds = %if.end34
  %47 = load ptr, ptr %dst.addr, align 8, !tbaa !8
  %48 = load i64, ptr %j, align 8, !tbaa !55
  %inc = add i64 %48, 1
  store i64 %inc, ptr %j, align 8, !tbaa !55
  %arrayidx37 = getelementptr inbounds %struct.user_mem_map, ptr %47, i64 %48
  %49 = load ptr, ptr %map, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx37, ptr align 8 %49, i64 32, i1 false)
  %50 = load i8, ptr %end_addr_in_map, align 1, !tbaa !87, !range !85, !noundef !86
  %tobool38 = trunc i8 %50 to i1
  br i1 %tobool38, label %land.lhs.true39, label %if.end42

land.lhs.true39:                                  ; preds = %if.then36
  %51 = load i8, ptr %end_iova_in_map, align 1, !tbaa !87, !range !85, !noundef !86
  %tobool40 = trunc i8 %51 to i1
  br i1 %tobool40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %land.lhs.true39
  %52 = load i64, ptr %j, align 8, !tbaa !55
  %conv = trunc i64 %52 to i32
  store i32 %conv, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end42:                                         ; preds = %land.lhs.true39, %if.then36
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end34
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end43, %if.then41
  call void @llvm.lifetime.end.p0(i64 1, ptr %end_iova_in_map) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr %start_iova_in_map) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr %end_addr_in_map) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr %start_addr_in_map) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %map_iova_end) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %map_va_end) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup51 [
    i32 0, label %cleanup.cont
    i32 5, label %err
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %53 = load i32, ptr %i, align 4, !tbaa !4
  %inc50 = add nsw i32 %53, 1
  store i32 %inc50, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !124

for.end:                                          ; preds = %for.cond
  store i32 -2, ptr %ret, align 4, !tbaa !4
  br label %err

err:                                              ; preds = %for.end, %cleanup
  %54 = load ptr, ptr %dst.addr, align 8, !tbaa !8
  %55 = load i64, ptr %dst_len.addr, align 8, !tbaa !55
  %mul = mul i64 32, %55
  call void @llvm.memset.p0.i64(ptr align 8 %54, i8 0, i64 %mul, i1 false)
  %56 = load i32, ptr %ret, align 4, !tbaa !4
  store i32 %56, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51

cleanup51:                                        ; preds = %err, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr %found) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %iova_end) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %va_end) #10
  %57 = load i32, ptr %retval, align 4
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @addr_is_chunk_aligned(ptr noundef %maps, i64 noundef %n_maps, i64 noundef %vaddr, i64 noundef %iova) #0 {
entry:
  %retval = alloca i1, align 1
  %maps.addr = alloca ptr, align 8
  %n_maps.addr = alloca i64, align 8
  %vaddr.addr = alloca i64, align 8
  %iova.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %map = alloca ptr, align 8
  %map_va_end = alloca i64, align 8
  %map_iova_end = alloca i64, align 8
  %map_va_off = alloca i64, align 8
  %map_iova_off = alloca i64, align 8
  %addr_in_map = alloca i8, align 1
  %iova_in_map = alloca i8, align 1
  %addr_is_aligned = alloca i8, align 1
  %iova_is_aligned = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %maps, ptr %maps.addr, align 8, !tbaa !8
  store i64 %n_maps, ptr %n_maps.addr, align 8, !tbaa !55
  store i64 %vaddr, ptr %vaddr.addr, align 8, !tbaa !55
  store i64 %iova, ptr %iova.addr, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !4
  %conv = zext i32 %0 to i64
  %1 = load i64, ptr %n_maps.addr, align 8, !tbaa !55
  %cmp = icmp ult i64 %conv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #10
  %2 = load ptr, ptr %maps.addr, align 8, !tbaa !8
  %3 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.user_mem_map, ptr %2, i64 %idxprom
  store ptr %arrayidx, ptr %map, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %map_va_end) #10
  %4 = load ptr, ptr %map, align 8, !tbaa !8
  %addr = getelementptr inbounds %struct.user_mem_map, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %addr, align 8, !tbaa !44
  %6 = load ptr, ptr %map, align 8, !tbaa !8
  %len = getelementptr inbounds %struct.user_mem_map, ptr %6, i32 0, i32 2
  %7 = load i64, ptr %len, align 8, !tbaa !47
  %add = add i64 %5, %7
  store i64 %add, ptr %map_va_end, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr %map_iova_end) #10
  %8 = load ptr, ptr %map, align 8, !tbaa !8
  %iova2 = getelementptr inbounds %struct.user_mem_map, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %iova2, align 8, !tbaa !46
  %10 = load ptr, ptr %map, align 8, !tbaa !8
  %len3 = getelementptr inbounds %struct.user_mem_map, ptr %10, i32 0, i32 2
  %11 = load i64, ptr %len3, align 8, !tbaa !47
  %add4 = add i64 %9, %11
  store i64 %add4, ptr %map_iova_end, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr %map_va_off) #10
  %12 = load i64, ptr %vaddr.addr, align 8, !tbaa !55
  %13 = load ptr, ptr %map, align 8, !tbaa !8
  %addr5 = getelementptr inbounds %struct.user_mem_map, ptr %13, i32 0, i32 0
  %14 = load i64, ptr %addr5, align 8, !tbaa !44
  %sub = sub i64 %12, %14
  store i64 %sub, ptr %map_va_off, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr %map_iova_off) #10
  %15 = load i64, ptr %iova.addr, align 8, !tbaa !55
  %16 = load ptr, ptr %map, align 8, !tbaa !8
  %iova6 = getelementptr inbounds %struct.user_mem_map, ptr %16, i32 0, i32 1
  %17 = load i64, ptr %iova6, align 8, !tbaa !46
  %sub7 = sub i64 %15, %17
  store i64 %sub7, ptr %map_iova_off, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 1, ptr %addr_in_map) #10
  %18 = load i64, ptr %vaddr.addr, align 8, !tbaa !55
  %19 = load ptr, ptr %map, align 8, !tbaa !8
  %addr8 = getelementptr inbounds %struct.user_mem_map, ptr %19, i32 0, i32 0
  %20 = load i64, ptr %addr8, align 8, !tbaa !44
  %cmp9 = icmp uge i64 %18, %20
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %21 = load i64, ptr %vaddr.addr, align 8, !tbaa !55
  %22 = load i64, ptr %map_va_end, align 8, !tbaa !55
  %cmp11 = icmp ule i64 %21, %22
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %23 = phi i1 [ false, %for.body ], [ %cmp11, %land.rhs ]
  %frombool = zext i1 %23 to i8
  store i8 %frombool, ptr %addr_in_map, align 1, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 1, ptr %iova_in_map) #10
  %24 = load i64, ptr %iova.addr, align 8, !tbaa !55
  %25 = load ptr, ptr %map, align 8, !tbaa !8
  %iova13 = getelementptr inbounds %struct.user_mem_map, ptr %25, i32 0, i32 1
  %26 = load i64, ptr %iova13, align 8, !tbaa !46
  %cmp14 = icmp uge i64 %24, %26
  br i1 %cmp14, label %land.rhs16, label %land.end19

land.rhs16:                                       ; preds = %land.end
  %27 = load i64, ptr %iova.addr, align 8, !tbaa !55
  %28 = load i64, ptr %map_iova_end, align 8, !tbaa !55
  %cmp17 = icmp ule i64 %27, %28
  br label %land.end19

land.end19:                                       ; preds = %land.rhs16, %land.end
  %29 = phi i1 [ false, %land.end ], [ %cmp17, %land.rhs16 ]
  %frombool20 = zext i1 %29 to i8
  store i8 %frombool20, ptr %iova_in_map, align 1, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 1, ptr %addr_is_aligned) #10
  %30 = load i64, ptr %map_va_off, align 8, !tbaa !55
  %31 = load ptr, ptr %map, align 8, !tbaa !8
  %chunk = getelementptr inbounds %struct.user_mem_map, ptr %31, i32 0, i32 3
  %32 = load i64, ptr %chunk, align 8, !tbaa !88
  %rem = urem i64 %30, %32
  %cmp21 = icmp eq i64 %rem, 0
  %frombool23 = zext i1 %cmp21 to i8
  store i8 %frombool23, ptr %addr_is_aligned, align 1, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 1, ptr %iova_is_aligned) #10
  %33 = load i64, ptr %map_iova_off, align 8, !tbaa !55
  %34 = load ptr, ptr %map, align 8, !tbaa !8
  %chunk24 = getelementptr inbounds %struct.user_mem_map, ptr %34, i32 0, i32 3
  %35 = load i64, ptr %chunk24, align 8, !tbaa !88
  %rem25 = urem i64 %33, %35
  %cmp26 = icmp eq i64 %rem25, 0
  %frombool28 = zext i1 %cmp26 to i8
  store i8 %frombool28, ptr %iova_is_aligned, align 1, !tbaa !87
  %36 = load i8, ptr %addr_in_map, align 1, !tbaa !87, !range !85, !noundef !86
  %tobool = trunc i8 %36 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %land.end19
  %37 = load i8, ptr %iova_in_map, align 1, !tbaa !87, !range !85, !noundef !86
  %tobool30 = trunc i8 %37 to i1
  br i1 %tobool30, label %land.lhs.true32, label %if.end

land.lhs.true32:                                  ; preds = %land.lhs.true
  %38 = load i8, ptr %addr_is_aligned, align 1, !tbaa !87, !range !85, !noundef !86
  %tobool33 = trunc i8 %38 to i1
  br i1 %tobool33, label %land.lhs.true35, label %if.end

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %39 = load i8, ptr %iova_is_aligned, align 1, !tbaa !87, !range !85, !noundef !86
  %tobool36 = trunc i8 %39 to i1
  br i1 %tobool36, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true35
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true35, %land.lhs.true32, %land.lhs.true, %land.end19
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %iova_is_aligned) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr %addr_is_aligned) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr %iova_in_map) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr %addr_in_map) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %map_iova_off) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %map_va_off) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %map_iova_end) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %map_va_end) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup46 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %40 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !125

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup46

cleanup46:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  %41 = load i1, ptr %retval, align 1
  ret i1 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @process_maps(ptr noundef %src, i64 noundef %src_len, ptr noundef %newmap, i64 noundef %vaddr, i64 noundef %len) #0 {
entry:
  %src.addr = alloca ptr, align 8
  %src_len.addr = alloca i64, align 8
  %newmap.addr = alloca ptr, align 8
  %vaddr.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %src_first = alloca ptr, align 8
  %src_last = alloca ptr, align 8
  %dst_first = alloca ptr, align 8
  %dst_last = alloca ptr, align 8
  %first_off = alloca i64, align 8
  %last_off = alloca i64, align 8
  %newmap_len = alloca i32, align 4
  %last = alloca ptr, align 8
  store ptr %src, ptr %src.addr, align 8, !tbaa !8
  store i64 %src_len, ptr %src_len.addr, align 8, !tbaa !55
  store ptr %newmap, ptr %newmap.addr, align 8, !tbaa !8
  store i64 %vaddr, ptr %vaddr.addr, align 8, !tbaa !55
  store i64 %len, ptr %len.addr, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr %src_first) #10
  %0 = load ptr, ptr %src.addr, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds %struct.user_mem_map, ptr %0, i64 0
  store ptr %arrayidx, ptr %src_first, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %src_last) #10
  %1 = load ptr, ptr %src.addr, align 8, !tbaa !8
  %2 = load i64, ptr %src_len.addr, align 8, !tbaa !55
  %sub = sub i64 %2, 1
  %arrayidx1 = getelementptr inbounds %struct.user_mem_map, ptr %1, i64 %sub
  store ptr %arrayidx1, ptr %src_last, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst_first) #10
  %3 = load ptr, ptr %newmap.addr, align 8, !tbaa !8
  %arrayidx2 = getelementptr inbounds %struct.user_mem_map, ptr %3, i64 0
  store ptr %arrayidx2, ptr %dst_first, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst_last) #10
  %4 = load ptr, ptr %newmap.addr, align 8, !tbaa !8
  %arrayidx3 = getelementptr inbounds %struct.user_mem_map, ptr %4, i64 1
  store ptr %arrayidx3, ptr %dst_last, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %first_off) #10
  %5 = load i64, ptr %vaddr.addr, align 8, !tbaa !55
  %6 = load ptr, ptr %src_first, align 8, !tbaa !8
  %addr = getelementptr inbounds %struct.user_mem_map, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %addr, align 8, !tbaa !44
  %sub4 = sub i64 %5, %7
  store i64 %sub4, ptr %first_off, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_off) #10
  %8 = load ptr, ptr %src_last, align 8, !tbaa !8
  %addr5 = getelementptr inbounds %struct.user_mem_map, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %addr5, align 8, !tbaa !44
  %10 = load ptr, ptr %src_last, align 8, !tbaa !8
  %len6 = getelementptr inbounds %struct.user_mem_map, ptr %10, i32 0, i32 2
  %11 = load i64, ptr %len6, align 8, !tbaa !47
  %add = add i64 %9, %11
  %12 = load i64, ptr %vaddr.addr, align 8, !tbaa !55
  %13 = load i64, ptr %len.addr, align 8, !tbaa !55
  %add7 = add i64 %12, %13
  %sub8 = sub i64 %add, %add7
  store i64 %sub8, ptr %last_off, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4, ptr %newmap_len) #10
  store i32 0, ptr %newmap_len, align 4, !tbaa !4
  %14 = load i64, ptr %first_off, align 8, !tbaa !55
  %cmp = icmp ne i64 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load ptr, ptr %src_first, align 8, !tbaa !8
  %addr9 = getelementptr inbounds %struct.user_mem_map, ptr %15, i32 0, i32 0
  %16 = load i64, ptr %addr9, align 8, !tbaa !44
  %17 = load ptr, ptr %dst_first, align 8, !tbaa !8
  %addr10 = getelementptr inbounds %struct.user_mem_map, ptr %17, i32 0, i32 0
  store i64 %16, ptr %addr10, align 8, !tbaa !44
  %18 = load ptr, ptr %src_first, align 8, !tbaa !8
  %iova = getelementptr inbounds %struct.user_mem_map, ptr %18, i32 0, i32 1
  %19 = load i64, ptr %iova, align 8, !tbaa !46
  %20 = load ptr, ptr %dst_first, align 8, !tbaa !8
  %iova11 = getelementptr inbounds %struct.user_mem_map, ptr %20, i32 0, i32 1
  store i64 %19, ptr %iova11, align 8, !tbaa !46
  %21 = load i64, ptr %first_off, align 8, !tbaa !55
  %22 = load ptr, ptr %dst_first, align 8, !tbaa !8
  %len12 = getelementptr inbounds %struct.user_mem_map, ptr %22, i32 0, i32 2
  store i64 %21, ptr %len12, align 8, !tbaa !47
  %23 = load ptr, ptr %src_first, align 8, !tbaa !8
  %chunk = getelementptr inbounds %struct.user_mem_map, ptr %23, i32 0, i32 3
  %24 = load i64, ptr %chunk, align 8, !tbaa !88
  %25 = load ptr, ptr %dst_first, align 8, !tbaa !8
  %chunk13 = getelementptr inbounds %struct.user_mem_map, ptr %25, i32 0, i32 3
  store i64 %24, ptr %chunk13, align 8, !tbaa !88
  %26 = load i32, ptr %newmap_len, align 4, !tbaa !4
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %newmap_len, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %27 = load i64, ptr %last_off, align 8, !tbaa !55
  %cmp14 = icmp ne i64 %27, 0
  br i1 %cmp14, label %if.then15, label %if.end31

if.then15:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #10
  %28 = load i64, ptr %first_off, align 8, !tbaa !55
  %cmp16 = icmp eq i64 %28, 0
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then15
  %29 = load ptr, ptr %dst_first, align 8, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.then15
  %30 = load ptr, ptr %dst_last, align 8, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %29, %cond.true ], [ %30, %cond.false ]
  store ptr %cond, ptr %last, align 8, !tbaa !8
  %31 = load ptr, ptr %src_last, align 8, !tbaa !8
  %addr17 = getelementptr inbounds %struct.user_mem_map, ptr %31, i32 0, i32 0
  %32 = load i64, ptr %addr17, align 8, !tbaa !44
  %33 = load ptr, ptr %src_last, align 8, !tbaa !8
  %len18 = getelementptr inbounds %struct.user_mem_map, ptr %33, i32 0, i32 2
  %34 = load i64, ptr %len18, align 8, !tbaa !47
  %add19 = add i64 %32, %34
  %35 = load i64, ptr %last_off, align 8, !tbaa !55
  %sub20 = sub i64 %add19, %35
  %36 = load ptr, ptr %last, align 8, !tbaa !8
  %addr21 = getelementptr inbounds %struct.user_mem_map, ptr %36, i32 0, i32 0
  store i64 %sub20, ptr %addr21, align 8, !tbaa !44
  %37 = load ptr, ptr %src_last, align 8, !tbaa !8
  %iova22 = getelementptr inbounds %struct.user_mem_map, ptr %37, i32 0, i32 1
  %38 = load i64, ptr %iova22, align 8, !tbaa !46
  %39 = load ptr, ptr %src_last, align 8, !tbaa !8
  %len23 = getelementptr inbounds %struct.user_mem_map, ptr %39, i32 0, i32 2
  %40 = load i64, ptr %len23, align 8, !tbaa !47
  %add24 = add i64 %38, %40
  %41 = load i64, ptr %last_off, align 8, !tbaa !55
  %sub25 = sub i64 %add24, %41
  %42 = load ptr, ptr %last, align 8, !tbaa !8
  %iova26 = getelementptr inbounds %struct.user_mem_map, ptr %42, i32 0, i32 1
  store i64 %sub25, ptr %iova26, align 8, !tbaa !46
  %43 = load i64, ptr %last_off, align 8, !tbaa !55
  %44 = load ptr, ptr %last, align 8, !tbaa !8
  %len27 = getelementptr inbounds %struct.user_mem_map, ptr %44, i32 0, i32 2
  store i64 %43, ptr %len27, align 8, !tbaa !47
  %45 = load ptr, ptr %src_last, align 8, !tbaa !8
  %chunk28 = getelementptr inbounds %struct.user_mem_map, ptr %45, i32 0, i32 3
  %46 = load i64, ptr %chunk28, align 8, !tbaa !88
  %47 = load ptr, ptr %last, align 8, !tbaa !8
  %chunk29 = getelementptr inbounds %struct.user_mem_map, ptr %47, i32 0, i32 3
  store i64 %46, ptr %chunk29, align 8, !tbaa !88
  %48 = load i32, ptr %newmap_len, align 4, !tbaa !4
  %inc30 = add nsw i32 %48, 1
  store i32 %inc30, ptr %newmap_len, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #10
  br label %if.end31

if.end31:                                         ; preds = %cond.end, %if.end
  %49 = load i32, ptr %newmap_len, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %newmap_len) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_off) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %first_off) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst_last) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst_first) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %src_last) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %src_first) #10
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal void @delete_maps(ptr noundef %user_mem_maps, ptr noundef %del_maps, i64 noundef %n_del) #0 {
entry:
  %user_mem_maps.addr = alloca ptr, align 8
  %del_maps.addr = alloca ptr, align 8
  %n_del.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i64, align 8
  %left = alloca ptr, align 8
  %right = alloca ptr, align 8
  store ptr %user_mem_maps, ptr %user_mem_maps.addr, align 8, !tbaa !8
  store ptr %del_maps, ptr %del_maps.addr, align 8, !tbaa !8
  store i64 %n_del, ptr %n_del.addr, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #10
  store i32 0, ptr %i, align 4, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !55
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i64, ptr %j, align 8, !tbaa !55
  %2 = load i64, ptr %n_del.addr, align 8, !tbaa !55
  %cmp1 = icmp ult i64 %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #10
  %4 = load ptr, ptr %user_mem_maps.addr, align 8, !tbaa !8
  %maps = getelementptr inbounds %struct.user_mem_maps, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.user_mem_map], ptr %maps, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %left, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %right) #10
  %6 = load ptr, ptr %del_maps.addr, align 8, !tbaa !8
  %7 = load i64, ptr %j, align 8, !tbaa !55
  %arrayidx2 = getelementptr inbounds %struct.user_mem_map, ptr %6, i64 %7
  store ptr %arrayidx2, ptr %right, align 8, !tbaa !8
  %8 = load ptr, ptr %left, align 8, !tbaa !8
  %9 = load ptr, ptr %right, align 8, !tbaa !8
  %call = call i32 @user_mem_map_cmp(ptr noundef %8, ptr noundef %9)
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %left, align 8, !tbaa !8
  call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 32, i1 false)
  %11 = load i64, ptr %j, align 8, !tbaa !55
  %inc = add i64 %11, 1
  store i64 %inc, ptr %j, align 8, !tbaa !55
  %12 = load ptr, ptr %user_mem_maps.addr, align 8, !tbaa !8
  %n_maps = getelementptr inbounds %struct.user_mem_maps, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %n_maps, align 4, !tbaa !42
  %dec = add nsw i32 %13, -1
  store i32 %dec, ptr %n_maps, align 4, !tbaa !42
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %right) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %i, align 4, !tbaa !4
  %inc4 = add nsw i32 %14, 1
  store i32 %inc4, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !126

for.end:                                          ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @copy_maps(ptr noundef %user_mem_maps, ptr noundef %add_maps, i64 noundef %n_add) #0 {
entry:
  %user_mem_maps.addr = alloca ptr, align 8
  %add_maps.addr = alloca ptr, align 8
  %n_add.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i64, align 8
  %left = alloca ptr, align 8
  %right = alloca ptr, align 8
  store ptr %user_mem_maps, ptr %user_mem_maps.addr, align 8, !tbaa !8
  store ptr %add_maps, ptr %add_maps.addr, align 8, !tbaa !8
  store i64 %n_add, ptr %n_add.addr, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #10
  store i32 0, ptr %i, align 4, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !55
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i64, ptr %j, align 8, !tbaa !55
  %2 = load i64, ptr %n_add.addr, align 8, !tbaa !55
  %cmp1 = icmp ult i64 %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #10
  %4 = load ptr, ptr %user_mem_maps.addr, align 8, !tbaa !8
  %maps = getelementptr inbounds %struct.user_mem_maps, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.user_mem_map], ptr %maps, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %left, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %right) #10
  %6 = load ptr, ptr %add_maps.addr, align 8, !tbaa !8
  %7 = load i64, ptr %j, align 8, !tbaa !55
  %arrayidx2 = getelementptr inbounds %struct.user_mem_map, ptr %6, i64 %7
  store ptr %arrayidx2, ptr %right, align 8, !tbaa !8
  %8 = load ptr, ptr %left, align 8, !tbaa !8
  %call = call i32 @is_null_map(ptr noundef %8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %left, align 8, !tbaa !8
  %10 = load ptr, ptr %right, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %10, i64 32, i1 false)
  %11 = load i64, ptr %j, align 8, !tbaa !55
  %inc = add i64 %11, 1
  store i64 %inc, ptr %j, align 8, !tbaa !55
  %12 = load ptr, ptr %user_mem_maps.addr, align 8, !tbaa !8
  %n_maps = getelementptr inbounds %struct.user_mem_maps, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %n_maps, align 4, !tbaa !42
  %inc3 = add nsw i32 %13, 1
  store i32 %inc3, ptr %n_maps, align 4, !tbaa !42
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %right) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %i, align 4, !tbaa !4
  %inc4 = add nsw i32 %14, 1
  store i32 %inc4, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !127

for.end:                                          ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #5 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !5, i64 0}
!11 = !{!"vfio_group", !5, i64 0, !5, i64 4, !5, i64 8}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{!11, !5, i64 4}
!16 = distinct !{!16, !13}
!17 = !{!18, !5, i64 8}
!18 = !{!"vfio_config", !5, i64 0, !5, i64 4, !5, i64 8, !9, i64 16, !6, i64 24, !19, i64 792}
!19 = !{!"user_mem_maps", !20, i64 0, !5, i64 12, !6, i64 16}
!20 = !{!"", !21, i64 0, !5, i64 4, !5, i64 8}
!21 = !{!"", !5, i64 0}
!22 = distinct !{!22, !13}
!23 = !{!11, !5, i64 8}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = !{!29, !5, i64 4}
!29 = !{!"vfio_group_status", !5, i64 0, !5, i64 4}
!30 = !{!18, !5, i64 4}
!31 = !{!32, !6, i64 48}
!32 = !{!"internal_config", !33, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !34, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !6, i64 48, !5, i64 52, !6, i64 56, !5, i64 312, !6, i64 320, !33, i64 576, !5, i64 584, !5, i64 588, !5, i64 592, !5, i64 596, !6, i64 600, !6, i64 604, !9, i64 624, !9, i64 632, !9, i64 640, !5, i64 648, !6, i64 656, !6, i64 13376, !36, i64 13384, !5, i64 13512, !5, i64 13516, !37, i64 13520, !33, i64 13528}
!33 = !{!"long", !6, i64 0}
!34 = !{!"hugepage_file_discipline", !35, i64 0, !35, i64 1}
!35 = !{!"_Bool", !6, i64 0}
!36 = !{!"", !6, i64 0}
!37 = !{!"simd_bitwidth", !35, i64 0, !38, i64 2}
!38 = !{!"short", !6, i64 0}
!39 = !{!40, !9, i64 32}
!40 = !{!"vfio_iommu_type", !5, i64 0, !9, i64 8, !35, i64 16, !9, i64 24, !9, i64 32}
!41 = !{!18, !9, i64 16}
!42 = !{!19, !5, i64 12}
!43 = !{!40, !9, i64 24}
!44 = !{!45, !33, i64 0}
!45 = !{!"user_mem_map", !33, i64 0, !33, i64 8, !33, i64 16, !33, i64 24}
!46 = !{!45, !33, i64 8}
!47 = !{!45, !33, i64 16}
!48 = distinct !{!48, !13}
!49 = !{!40, !5, i64 0}
!50 = !{!40, !9, i64 8}
!51 = !{!6, !6, i64 0}
!52 = distinct !{!52, !13}
!53 = !{!20, !5, i64 4}
!54 = !{!20, !5, i64 8}
!55 = !{!33, !33, i64 0}
!56 = !{!57, !5, i64 32}
!57 = !{!"rte_memseg_list", !6, i64 0, !33, i64 8, !5, i64 16, !5, i64 20, !33, i64 24, !5, i64 32, !5, i64 36, !58, i64 40}
!58 = !{!"rte_fbarray", !6, i64 0, !5, i64 64, !5, i64 68, !5, i64 72, !9, i64 80, !21, i64 88}
!59 = !{!57, !33, i64 8}
!60 = distinct !{!60, !13}
!61 = !{!62, !33, i64 0}
!62 = !{!"rte_memseg", !33, i64 0, !6, i64 8, !33, i64 16, !33, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44}
!63 = !{!62, !33, i64 16}
!64 = distinct !{!64, !13}
!65 = !{!18, !5, i64 0}
!66 = !{!67, !5, i64 0}
!67 = !{!"vfio_mp_param", !5, i64 0, !5, i64 4, !6, i64 8}
!68 = !{!69, !5, i64 64}
!69 = !{!"rte_mp_msg", !6, i64 0, !5, i64 64, !5, i64 68, !6, i64 72, !6, i64 328}
!70 = !{!69, !5, i64 68}
!71 = !{!72, !5, i64 4}
!72 = !{!"rte_mp_reply", !5, i64 0, !5, i64 4, !9, i64 8}
!73 = !{!72, !9, i64 8}
!74 = !{!67, !5, i64 4}
!75 = distinct !{!75, !13}
!76 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
!84 = !{!40, !35, i64 16}
!85 = !{i8 0, i8 2}
!86 = !{}
!87 = !{!35, !35, i64 0}
!88 = !{!45, !33, i64 24}
!89 = !{i64 1577351, i64 1577362, i64 1577391, i64 1577416, i64 1577429, i64 1577439, i64 1577452, i64 1577478, i64 1577492, i64 1577506}
!90 = !{i64 1577710}
!91 = !{!92, !5, i64 0}
!92 = !{!"vfio_iommu_type1_dma_map", !5, i64 0, !5, i64 4, !93, i64 8, !93, i64 16, !93, i64 24}
!93 = !{!"long long", !6, i64 0}
!94 = !{!92, !93, i64 8}
!95 = !{!92, !93, i64 24}
!96 = !{!92, !93, i64 16}
!97 = !{!92, !5, i64 4}
!98 = !{!93, !93, i64 0}
!99 = !{!57, !5, i64 36}
!100 = !{!101, !5, i64 0}
!101 = !{!"vfio_iommu_spapr_register_memory", !5, i64 0, !5, i64 4, !93, i64 8, !93, i64 16}
!102 = !{!101, !5, i64 4}
!103 = !{!101, !93, i64 8}
!104 = !{!101, !93, i64 16}
!105 = !{!106, !5, i64 8}
!106 = !{!"vfio_iommu_spapr_tce_info", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !107, i64 16}
!107 = !{!"vfio_iommu_spapr_tce_ddw_info", !93, i64 0, !5, i64 8, !5, i64 12}
!108 = !{!109, !93, i64 8}
!109 = !{!"vfio_iommu_spapr_tce_remove", !5, i64 0, !5, i64 4, !93, i64 8}
!110 = !{!111, !93, i64 16}
!111 = !{!"vfio_iommu_spapr_tce_create", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !93, i64 16, !5, i64 24, !5, i64 28, !93, i64 32}
!112 = !{!111, !5, i64 8}
!113 = !{!111, !5, i64 24}
!114 = !{!106, !5, i64 28}
!115 = distinct !{!115, !13}
!116 = !{!111, !93, i64 32}
!117 = !{!118, !35, i64 16}
!118 = !{!"spapr_size_walk_param", !33, i64 0, !33, i64 8, !35, i64 16}
!119 = !{!118, !33, i64 8}
!120 = !{!57, !33, i64 24}
!121 = !{!118, !33, i64 0}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !13}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !13}

; ModuleID = 'samples/443.bc'
source_filename = "../lib/eal/linux/eal_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { %union.anon.0, %struct.__sigset_t, i32, ptr }
%union.anon.0 = type { ptr }
%struct.__sigset_t = type { [16 x i64] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.internal_config = type { i64, i32, i32, i32, %struct.hugepage_file_discipline, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i64], i32, [32 x i64], i64, i32, i32, i32, i32, i32, [16 x i8], ptr, ptr, ptr, i32, [3 x %struct.hugepage_info], i32, %struct.cpu_set_t, i32, i32, %struct.simd_bitwidth, i64 }
%struct.hugepage_file_discipline = type { i8, i8 }
%struct.hugepage_info = type { i64, [4096 x i8], [32 x i32], i32 }
%struct.cpu_set_t = type { [16 x i64] }
%struct.simd_bitwidth = type { i8, i16 }
%struct.rte_config = type { i32, i32, i32, [32 x i32], i32, [128 x i32], i32, i32, ptr }
%struct.rte_mem_config = type { i32, i32, i32, i32, %struct.rte_rwlock_t, %struct.rte_rwlock_t, %struct.rte_rwlock_t, %struct.rte_spinlock_t, %struct.rte_rwlock_t, i8, %struct.rte_fbarray, [128 x %struct.rte_memseg_list], [32 x %struct.rte_tailq_head], [56 x i8], [32 x %struct.malloc_heap], i32, i64, i32, i32, i64, i8, [31 x i8] }
%struct.rte_spinlock_t = type { i32 }
%struct.rte_rwlock_t = type { i32 }
%struct.rte_fbarray = type { [64 x i8], i32, i32, i32, ptr, %struct.rte_rwlock_t }
%struct.rte_memseg_list = type { %union.anon, i64, i32, i32, i64, i32, i32, %struct.rte_fbarray }
%union.anon = type { ptr }
%struct.rte_tailq_head = type { %struct.rte_tailq_entry_head, [32 x i8] }
%struct.rte_tailq_entry_head = type { ptr, ptr }
%struct.malloc_heap = type { %struct.rte_spinlock_t, [13 x %struct.anon], ptr, ptr, i32, i32, i64, [32 x i8], [16 x i8] }
%struct.anon = type { ptr }
%struct.hugepage_file = type { ptr, ptr, i64, i64, i32, i32, [4096 x i8] }
%struct.rlimit = type { i64, i64 }
%struct.bitmask = type { i64, ptr }
%struct.rte_memseg = type { i64, %union.anon.1, i64, i64, i32, i32, i32, i32 }
%union.anon.1 = type { ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@phys_addrs_available = internal global i32 -1, align 4
@.str = private unnamed_addr constant [19 x i8] c"/proc/self/pagemap\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"EAL: %s(): cannot open /proc/self/pagemap: %s\0A\00", align 1
@__func__.rte_mem_virt2phy = private unnamed_addr constant [17 x i8] c"rte_mem_virt2phy\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"EAL: %s(): seek error in /proc/self/pagemap: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"EAL: %s(): cannot read /proc/self/pagemap: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"EAL: %s(): read %d bytes from /proc/self/pagemap but expected %d:\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"EAL: %s failed: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"EAL: Setting maximum number of open files failed: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"EAL: Setting maximum number of open files to %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"EAL: Cannot get current resource limits\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"nohugemem\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"nohuge\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"EAL: Cannot create memfd: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"EAL: Falling back to anonymous map\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"EAL: Cannot resize memfd: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"EAL: Using memfd for anonymous memory\0A\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"EAL: Cannot preallocate VA space for hugepage memory\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"EAL: %s: mmap() failed: %s\0A\00", align 1
@__func__.eal_legacy_hugepage_init = private unnamed_addr constant [25 x i8] c"eal_legacy_hugepage_init\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"EAL: Cannot set up segment list fd\0A\00", align 1
@.str.18 = private unnamed_addr constant [87 x i8] c"EAL: %s(): couldn't allocate memory due to IOVA exceeding limits of current DMA mask.\0A\00", align 1
@.str.19 = private unnamed_addr constant [71 x i8] c"EAL: %s(): Please try initializing EAL with --iova-mode=pa parameter.\0A\00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"EAL: %d not %d hugepages of size %u MB allocated\0A\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"EAL: Failed to find phys addr for %u MB pages\0A\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"EAL: Failed to set phys addr for %u MB pages\0A\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"EAL: Failed to find NUMA socket for %u MB pages\0A\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"EAL: Requesting %u pages of size %uMB from socket %i\0A\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"EAL: Failed to create shared memory!\0A\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"EAL: Unmapping and locking hugepages failed!\0A\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"EAL: Copying tables to shared memory failed!\0A\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"EAL: Couldn't remap hugepage files into memseg lists\0A\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"EAL: Unlinking hugepage files failed!\0A\00", align 1
@huge_action_old = internal global %struct.sigaction zeroinitializer, align 8
@huge_need_recover = internal global i32 0, align 4
@huge_jmpenv = internal global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 16
@.str.30 = private unnamed_addr constant [29 x i8] c"EAL: NUMA is not supported.\0A\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"EAL: Trying to obtain current memory policy.\0A\00", align 1
@.str.32 = private unnamed_addr constant [66 x i8] c"EAL: Failed to get current mempolicy: %s. Assuming MPOL_DEFAULT.\0A\00", align 1
@.str.33 = private unnamed_addr constant [50 x i8] c"EAL: Setting policy MPOL_PREFERRED for socket %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"EAL: %s(): open failed: %s\0A\00", align 1
@__func__.map_all_hugepages = private unnamed_addr constant [18 x i8] c"map_all_hugepages\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"EAL: %s(): mmap failed: %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [55 x i8] c"EAL: SIGBUS: Cannot mmap more hugepages of size %u MB\0A\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"EAL: %s(): Locking file failed:%s \0A\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"EAL: Restoring previous memory policy: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"EAL: Failed to restore mempolicy: %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"%s/%smap_%d\00", align 1
@set_physaddrs.addr = internal global i64 0, align 8
@.str.41 = private unnamed_addr constant [21 x i8] c"/proc/self/numa_maps\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.43 = private unnamed_addr constant [76 x i8] c"EAL: NUMA support not available consider that all memory is in socket_id 0\0A\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c" huge \00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"EAL: %s(): error in numa_maps parsing\0A\00", align 1
@__func__.find_numasocket = private unnamed_addr constant [16 x i8] c"find_numasocket\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c" N\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"EAL: Hugepage %s is on socket %d\0A\00", align 1
@eal_hugepage_data_path.buffer = internal global [4096 x i8] zeroinitializer, align 16
@.str.50 = private unnamed_addr constant [14 x i8] c"hugepage_data\00", align 1
@.str.51 = private unnamed_addr constant [35 x i8] c"EAL: %s(): Removing %s failed: %s\0A\00", align 1
@__func__.unmap_unneeded_hugepages = private unnamed_addr constant [25 x i8] c"unmap_unneeded_hugepages\00", align 1
@.str.52 = private unnamed_addr constant [42 x i8] c"EAL: Attempting to map %luM on socket %i\0A\00", align 1
@.str.53 = private unnamed_addr constant [86 x i8] c"EAL: Could not find space for memseg. Please increase %s and/or %s in configuration.\0A\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"32768\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"65536\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"EAL: Could not open '%s': %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [30 x i8] c"EAL: Could not lock '%s': %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"EAL: Couldn't remap '%s': %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [37 x i8] c"EAL: Could not store segment fd: %s\0A\00", align 1
@per_lcore__rte_errno = external thread_local global i32, align 4
@.str.60 = private unnamed_addr constant [34 x i8] c"EAL: Allocated %luM on socket %i\0A\00", align 1
@__func__.unlink_hugepage_files = private unnamed_addr constant [22 x i8] c"unlink_hugepage_files\00", align 1
@.str.61 = private unnamed_addr constant [83 x i8] c"EAL: WARNING: Address Space Layout Randomization (ASLR) is enabled in the kernel.\0A\00", align 1
@.str.62 = private unnamed_addr constant [76 x i8] c"EAL:    This may cause issues with mapping memory into secondary processes\0A\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"EAL: Could not open %s\0A\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"EAL: Could not mmap %s\0A\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"EAL: Analysing %u files\0A\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"EAL: Could not open %s: %s\0A\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"EAL: Could not map %s: %s\0A\00", align 1
@.str.68 = private unnamed_addr constant [36 x i8] c"EAL: %s(): Locking file failed: %s\0A\00", align 1
@__func__.eal_legacy_hugepage_attach = private unnamed_addr constant [27 x i8] c"eal_legacy_hugepage_attach\00", align 1
@.str.69 = private unnamed_addr constant [36 x i8] c"EAL: %s(): Cannot find memseg list\0A\00", align 1
@.str.70 = private unnamed_addr constant [31 x i8] c"EAL: %s(): Cannot find memseg\0A\00", align 1
@.str.71 = private unnamed_addr constant [35 x i8] c"EAL: %s(): Cannot find memseg idx\0A\00", align 1
@.str.72 = private unnamed_addr constant [36 x i8] c"/proc/sys/kernel/randomize_va_space\00", align 1
@.str.73 = private unnamed_addr constant [48 x i8] c"EAL: Could not map memory from primary process\0A\00", align 1
@.str.74 = private unnamed_addr constant [109 x i8] c"EAL: It is recommended to disable ASLR in the kernel and retry running both primary and secondary processes\0A\00", align 1
@.str.75 = private unnamed_addr constant [52 x i8] c"EAL: Cannot attach to primary process memseg lists\0A\00", align 1

; Function Attrs: nounwind uwtable
define i64 @eal_get_baseaddr() #0 {
entry:
  ret i64 4294967296
}

; Function Attrs: nounwind uwtable
define i64 @rte_mem_virt2phy(ptr noundef %virtaddr) #0 {
entry:
  %retval = alloca i64, align 8
  %virtaddr.addr = alloca ptr, align 8
  %fd = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %page = alloca i64, align 8
  %physaddr = alloca i64, align 8
  %virt_pfn = alloca i64, align 8
  %page_size = alloca i32, align 4
  %offset = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %virtaddr, ptr %virtaddr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %physaddr) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %virt_pfn) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %page_size) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #13
  %0 = load i32, ptr @phys_addrs_available, align 4, !tbaa !8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @getpagesize() #14
  store i32 %call, ptr %page_size, align 4, !tbaa !8
  %call2 = call i32 (ptr, i32, ...) @open64(ptr noundef @.str, i32 noundef 0)
  store i32 %call2, ptr %fd, align 4, !tbaa !8
  %1 = load i32, ptr %fd, align 4, !tbaa !8
  %cmp3 = icmp slt i32 %1, 0
  br i1 %cmp3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  %call5 = call ptr @__errno_location() #14
  %2 = load i32, ptr %call5, align 4, !tbaa !8
  %call6 = call ptr @strerror(i32 noundef %2) #13
  %call7 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 7, i32 noundef 0, ptr noundef @.str.1, ptr noundef @__func__.rte_mem_virt2phy, ptr noundef %call6)
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %3 = load ptr, ptr %virtaddr.addr, align 8, !tbaa !4
  %4 = ptrtoint ptr %3 to i64
  %5 = load i32, ptr %page_size, align 4, !tbaa !8
  %conv = sext i32 %5 to i64
  %div = udiv i64 %4, %conv
  store i64 %div, ptr %virt_pfn, align 8, !tbaa !10
  %6 = load i64, ptr %virt_pfn, align 8, !tbaa !10
  %mul = mul i64 8, %6
  store i64 %mul, ptr %offset, align 8, !tbaa !10
  %7 = load i32, ptr %fd, align 4, !tbaa !8
  %8 = load i64, ptr %offset, align 8, !tbaa !10
  %call9 = call i64 @lseek64(i32 noundef %7, i64 noundef %8, i32 noundef 0) #13
  %cmp10 = icmp eq i64 %call9, -1
  br i1 %cmp10, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end8
  %call13 = call ptr @__errno_location() #14
  %9 = load i32, ptr %call13, align 4, !tbaa !8
  %call14 = call ptr @strerror(i32 noundef %9) #13
  %call15 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 7, i32 noundef 0, ptr noundef @.str.2, ptr noundef @__func__.rte_mem_virt2phy, ptr noundef %call14)
  %10 = load i32, ptr %fd, align 4, !tbaa !8
  %call16 = call i32 @close(i32 noundef %10)
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %11 = load i32, ptr %fd, align 4, !tbaa !8
  %call18 = call i64 @read(i32 noundef %11, ptr noundef %page, i64 noundef 8)
  %conv19 = trunc i64 %call18 to i32
  store i32 %conv19, ptr %retval1, align 4, !tbaa !8
  %12 = load i32, ptr %fd, align 4, !tbaa !8
  %call20 = call i32 @close(i32 noundef %12)
  %13 = load i32, ptr %retval1, align 4, !tbaa !8
  %cmp21 = icmp slt i32 %13, 0
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end17
  %call24 = call ptr @__errno_location() #14
  %14 = load i32, ptr %call24, align 4, !tbaa !8
  %call25 = call ptr @strerror(i32 noundef %14) #13
  %call26 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 7, i32 noundef 0, ptr noundef @.str.3, ptr noundef @__func__.rte_mem_virt2phy, ptr noundef %call25)
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end17
  %15 = load i32, ptr %retval1, align 4, !tbaa !8
  %cmp27 = icmp ne i32 %15, 8
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.else
  %16 = load i32, ptr %retval1, align 4, !tbaa !8
  %call30 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 7, i32 noundef 0, ptr noundef @.str.4, ptr noundef @__func__.rte_mem_virt2phy, i32 noundef %16, i32 noundef 8)
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end31:                                         ; preds = %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31
  %17 = load i64, ptr %page, align 8, !tbaa !10
  %and = and i64 %17, 36028797018963967
  %cmp33 = icmp eq i64 %and, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %18 = load i64, ptr %page, align 8, !tbaa !10
  %and37 = and i64 %18, 36028797018963967
  %19 = load i32, ptr %page_size, align 4, !tbaa !8
  %conv38 = sext i32 %19 to i64
  %mul39 = mul i64 %and37, %conv38
  %20 = load ptr, ptr %virtaddr.addr, align 8, !tbaa !4
  %21 = ptrtoint ptr %20 to i64
  %22 = load i32, ptr %page_size, align 4, !tbaa !8
  %conv40 = sext i32 %22 to i64
  %rem = urem i64 %21, %conv40
  %add = add i64 %mul39, %rem
  store i64 %add, ptr %physaddr, align 8, !tbaa !10
  %23 = load i64, ptr %physaddr, align 8, !tbaa !10
  store i64 %23, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then35, %if.then29, %if.then23, %if.then12, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %page_size) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %virt_pfn) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %physaddr) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #13
  %24 = load i64, ptr %retval, align 8
  ret i64 %24
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind willreturn memory(none)
declare i32 @getpagesize() #2

declare i32 @open64(ptr noundef, i32 noundef, ...) #3

declare i32 @rte_log(i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #4

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) #4

declare i32 @close(i32 noundef) #3

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i64 @rte_mem_virt2iova(ptr noundef %virtaddr) #0 {
entry:
  %retval = alloca i64, align 8
  %virtaddr.addr = alloca ptr, align 8
  store ptr %virtaddr, ptr %virtaddr.addr, align 8, !tbaa !4
  %call = call i32 @rte_eal_iova_mode()
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %virtaddr.addr, align 8, !tbaa !4
  %1 = ptrtoint ptr %0 to i64
  store i64 %1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %virtaddr.addr, align 8, !tbaa !4
  %call1 = call i64 @rte_mem_virt2phy(ptr noundef %2)
  store i64 %call1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, ptr %retval, align 8
  ret i64 %3
}

declare i32 @rte_eal_iova_mode() #3

; Function Attrs: nounwind uwtable
define void @numa_error(ptr noundef %where) #0 {
entry:
  %where.addr = alloca ptr, align 8
  store ptr %where, ptr %where.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %where.addr, align 8, !tbaa !4
  %call = call ptr @__errno_location() #14
  %1 = load i32, ptr %call, align 4, !tbaa !8
  %call1 = call ptr @strerror(i32 noundef %1) #13
  %call2 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.5, ptr noundef %0, ptr noundef %call1)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @rte_eal_hugepage_init() #0 {
entry:
  %internal_conf = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %internal_conf) #13
  %call = call ptr @eal_get_internal_configuration()
  store ptr %call, ptr %internal_conf, align 8, !tbaa !4
  %0 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %legacy_mem = getelementptr inbounds %struct.internal_config, ptr %0, i32 0, i32 17
  %1 = load volatile i32, ptr %legacy_mem, align 8, !tbaa !12
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call1 = call i32 @eal_legacy_hugepage_init()
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call i32 @eal_dynmem_hugepage_init()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ %call2, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %internal_conf) #13
  ret i32 %cond
}

declare ptr @eal_get_internal_configuration() #3

; Function Attrs: nounwind uwtable
define internal i32 @eal_legacy_hugepage_init() #0 {
entry:
  %retval = alloca i32, align 4
  %mcfg = alloca ptr, align 8
  %hugepage = alloca ptr, align 8
  %tmp_hp = alloca ptr, align 8
  %used_hp = alloca [3 x %struct.hugepage_info], align 16
  %internal_conf = alloca ptr, align 8
  %memory = alloca [32 x i64], align 16
  %hp_offset = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nr_hugefiles = alloca i32, align 4
  %nr_hugepages = alloca i32, align 4
  %addr = alloca ptr, align 8
  %prealloc_addr = alloca ptr, align 8
  %mem_sz = alloca i64, align 8
  %msl = alloca ptr, align 8
  %n_segs = alloca i32, align 4
  %fd = alloca i32, align 4
  %flags = alloca i32, align 4
  %memfd = alloca i32, align 4
  %page_sz = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %pages_old = alloca i32, align 4
  %pages_new = alloca i32, align 4
  %hpi = alloca ptr, align 8
  %pages = alloca i32, align 4
  %socket = alloca i32, align 4
  %nb_hpsizes = alloca i32, align 4
  %_a = alloca i32, align 4
  %_b = alloca i32, align 4
  %tmp = alloca i32, align 4
  %msl372 = alloca ptr, align 8
  %mem_sz376 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcfg) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %hugepage) #13
  store ptr null, ptr %hugepage, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp_hp) #13
  store ptr null, ptr %tmp_hp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 12720, ptr %used_hp) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %internal_conf) #13
  %call = call ptr @eal_get_internal_configuration()
  store ptr %call, ptr %internal_conf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 256, ptr %memory) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %hp_offset) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_hugefiles) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_hugepages) #13
  store i32 0, ptr %nr_hugepages, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #13
  %arraydecay = getelementptr inbounds [3 x %struct.hugepage_info], ptr %used_hp, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 12720, i1 false)
  %call1 = call ptr @rte_eal_get_configuration()
  %mem_config = getelementptr inbounds %struct.rte_config, ptr %call1, i32 0, i32 8
  %0 = load ptr, ptr %mem_config, align 1, !tbaa !19
  store ptr %0, ptr %mcfg, align 8, !tbaa !4
  %1 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %no_hugetlbfs = getelementptr inbounds %struct.internal_config, ptr %1, i32 0, i32 3
  %2 = load volatile i32, ptr %no_hugetlbfs, align 8, !tbaa !21
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end77

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %prealloc_addr) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem_sz) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %msl) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_segs) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %memfd) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %page_sz) #13
  %3 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %legacy_mem = getelementptr inbounds %struct.internal_config, ptr %3, i32 0, i32 17
  store volatile i32 1, ptr %legacy_mem, align 8, !tbaa !12
  %4 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %single_file_segments = getelementptr inbounds %struct.internal_config, ptr %4, i32 0, i32 19
  store volatile i32 1, ptr %single_file_segments, align 8, !tbaa !22
  %5 = load ptr, ptr %mcfg, align 8, !tbaa !4
  %memsegs = getelementptr inbounds %struct.rte_mem_config, ptr %5, i32 0, i32 11
  %arrayidx = getelementptr inbounds [128 x %struct.rte_memseg_list], ptr %memsegs, i64 0, i64 0
  store ptr %arrayidx, ptr %msl, align 8, !tbaa !4
  %6 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %memory2 = getelementptr inbounds %struct.internal_config, ptr %6, i32 0, i32 0
  %7 = load volatile i64, ptr %memory2, align 8, !tbaa !23
  store i64 %7, ptr %mem_sz, align 8, !tbaa !10
  store i64 4096, ptr %page_sz, align 8, !tbaa !10
  %8 = load i64, ptr %mem_sz, align 8, !tbaa !10
  %9 = load i64, ptr %page_sz, align 8, !tbaa !10
  %div = udiv i64 %8, %9
  %conv = trunc i64 %div to i32
  store i32 %conv, ptr %n_segs, align 4, !tbaa !8
  %10 = load ptr, ptr %msl, align 8, !tbaa !4
  %11 = load i64, ptr %page_sz, align 8, !tbaa !10
  %12 = load i32, ptr %n_segs, align 4, !tbaa !8
  %call3 = call i32 @eal_memseg_list_init_named(ptr noundef %10, ptr noundef @.str.9, i64 noundef %11, i32 noundef %12, i32 noundef 0, i1 noundef zeroext true)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 -1, ptr %fd, align 4, !tbaa !8
  store i32 34, ptr %flags, align 4, !tbaa !8
  %call6 = call i32 @memfd_create(ptr noundef @.str.10, i32 noundef 0) #13
  store i32 %call6, ptr %memfd, align 4, !tbaa !8
  %13 = load i32, ptr %memfd, align 4, !tbaa !8
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %call9 = call ptr @__errno_location() #14
  %14 = load i32, ptr %call9, align 4, !tbaa !8
  %call10 = call ptr @strerror(i32 noundef %14) #13
  %call11 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.11, ptr noundef %call10)
  %call12 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.12)
  br label %if.end26

if.else:                                          ; preds = %if.end
  %15 = load i32, ptr %memfd, align 4, !tbaa !8
  %16 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %memory13 = getelementptr inbounds %struct.internal_config, ptr %16, i32 0, i32 0
  %17 = load volatile i64, ptr %memory13, align 8, !tbaa !23
  %call14 = call i32 @ftruncate64(i32 noundef %15, i64 noundef %17) #13
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.else23

if.then17:                                        ; preds = %if.else
  %call18 = call ptr @__errno_location() #14
  %18 = load i32, ptr %call18, align 4, !tbaa !8
  %call19 = call ptr @strerror(i32 noundef %18) #13
  %call20 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.13, ptr noundef %call19)
  %call21 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.12)
  %19 = load i32, ptr %memfd, align 4, !tbaa !8
  %call22 = call i32 @close(i32 noundef %19)
  br label %if.end25

if.else23:                                        ; preds = %if.else
  %call24 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.14)
  %20 = load i32, ptr %memfd, align 4, !tbaa !8
  store i32 %20, ptr %fd, align 4, !tbaa !8
  store i32 1, ptr %flags, align 4, !tbaa !8
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.then17
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then8
  %21 = load ptr, ptr %msl, align 8, !tbaa !4
  %call27 = call i32 @eal_memseg_list_alloc(ptr noundef %21, i32 noundef 0)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end26
  %call30 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.15)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %22 = load ptr, ptr %msl, align 8, !tbaa !4
  %23 = getelementptr inbounds %struct.rte_memseg_list, ptr %22, i32 0, i32 0
  %24 = load ptr, ptr %23, align 8, !tbaa !24
  store ptr %24, ptr %prealloc_addr, align 8, !tbaa !4
  %25 = load ptr, ptr %prealloc_addr, align 8, !tbaa !4
  %26 = load i64, ptr %mem_sz, align 8, !tbaa !10
  %27 = load i32, ptr %flags, align 4, !tbaa !8
  %or = or i32 %27, 16
  %28 = load i32, ptr %fd, align 4, !tbaa !8
  %call32 = call ptr @mmap64(ptr noundef %25, i64 noundef %26, i32 noundef 3, i32 noundef %or, i32 noundef %28, i64 noundef 0) #13
  store ptr %call32, ptr %addr, align 8, !tbaa !4
  %29 = load ptr, ptr %addr, align 8, !tbaa !4
  %cmp33 = icmp eq ptr %29, inttoptr (i64 -1 to ptr)
  br i1 %cmp33, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end31
  %30 = load ptr, ptr %addr, align 8, !tbaa !4
  %31 = load ptr, ptr %prealloc_addr, align 8, !tbaa !4
  %cmp35 = icmp ne ptr %30, %31
  br i1 %cmp35, label %if.then37, label %if.end42

if.then37:                                        ; preds = %lor.lhs.false, %if.end31
  %call38 = call ptr @__errno_location() #14
  %32 = load i32, ptr %call38, align 4, !tbaa !8
  %call39 = call ptr @strerror(i32 noundef %32) #13
  %call40 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.16, ptr noundef @__func__.eal_legacy_hugepage_init, ptr noundef %call39)
  %33 = load ptr, ptr %prealloc_addr, align 8, !tbaa !4
  %34 = load i64, ptr %mem_sz, align 8, !tbaa !10
  %call41 = call i32 @munmap(ptr noundef %33, i64 noundef %34) #13
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end42:                                         ; preds = %lor.lhs.false
  %35 = load i32, ptr %fd, align 4, !tbaa !8
  %cmp43 = icmp ne i32 %35, -1
  br i1 %cmp43, label %if.then45, label %if.end52

if.then45:                                        ; preds = %if.end42
  %36 = load i32, ptr %fd, align 4, !tbaa !8
  %call46 = call i32 @eal_memalloc_set_seg_list_fd(i32 noundef 0, i32 noundef %36)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.then45
  %call50 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.17)
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.then45
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end42
  %37 = load ptr, ptr %msl, align 8, !tbaa !4
  %38 = load ptr, ptr %addr, align 8, !tbaa !4
  %39 = load i32, ptr %n_segs, align 4, !tbaa !8
  call void @eal_memseg_list_populate(ptr noundef %37, ptr noundef %38, i32 noundef %39)
  %40 = load ptr, ptr %mcfg, align 8, !tbaa !4
  %dma_maskbits = getelementptr inbounds %struct.rte_mem_config, ptr %40, i32 0, i32 20
  %41 = load i8, ptr %dma_maskbits, align 32, !tbaa !25
  %conv53 = zext i8 %41 to i32
  %tobool54 = icmp ne i32 %conv53, 0
  br i1 %tobool54, label %land.lhs.true, label %if.end69

land.lhs.true:                                    ; preds = %if.end52
  %42 = load ptr, ptr %mcfg, align 8, !tbaa !4
  %dma_maskbits55 = getelementptr inbounds %struct.rte_mem_config, ptr %42, i32 0, i32 20
  %43 = load i8, ptr %dma_maskbits55, align 32, !tbaa !25
  %call56 = call i32 @rte_mem_check_dma_mask_thread_unsafe(i8 noundef zeroext %43)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then58, label %if.end69

if.then58:                                        ; preds = %land.lhs.true
  %call59 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.18, ptr noundef @__func__.eal_legacy_hugepage_init)
  %call60 = call i32 @rte_eal_iova_mode()
  %cmp61 = icmp eq i32 %call60, 2
  br i1 %cmp61, label %land.lhs.true63, label %if.end68

land.lhs.true63:                                  ; preds = %if.then58
  %call64 = call i32 @rte_eal_using_phys_addrs()
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %land.lhs.true63
  %call67 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.19, ptr noundef @__func__.eal_legacy_hugepage_init)
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %land.lhs.true63, %if.then58
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end69:                                         ; preds = %land.lhs.true, %if.end52
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.end69, %if.then37, %if.then29, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %page_sz) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %memfd) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_segs) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %msl) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem_sz) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %prealloc_addr) #13
  %cleanup.dest405 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest405, label %cleanup413 [
    i32 2, label %fail
  ]

if.end77:                                         ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end77
  %44 = load i32, ptr %i, align 4, !tbaa !8
  %45 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %num_hugepage_sizes = getelementptr inbounds %struct.internal_config, ptr %45, i32 0, i32 26
  %46 = load i32, ptr %num_hugepage_sizes, align 8, !tbaa !29
  %cmp78 = icmp slt i32 %44, %46
  br i1 %cmp78, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %hugepage_info = getelementptr inbounds %struct.internal_config, ptr %47, i32 0, i32 27
  %48 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %48 to i64
  %arrayidx80 = getelementptr inbounds [3 x %struct.hugepage_info], ptr %hugepage_info, i64 0, i64 %idxprom
  %hugepage_sz = getelementptr inbounds %struct.hugepage_info, ptr %arrayidx80, i32 0, i32 0
  %49 = load i64, ptr %hugepage_sz, align 8, !tbaa !30
  %50 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom81 = sext i32 %50 to i64
  %arrayidx82 = getelementptr inbounds [3 x %struct.hugepage_info], ptr %used_hp, i64 0, i64 %idxprom81
  %hugepage_sz83 = getelementptr inbounds %struct.hugepage_info, ptr %arrayidx82, i32 0, i32 0
  store i64 %49, ptr %hugepage_sz83, align 16, !tbaa !30
  %51 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %hugepage_info84 = getelementptr inbounds %struct.internal_config, ptr %51, i32 0, i32 27
  %52 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom85 = sext i32 %52 to i64
  %arrayidx86 = getelementptr inbounds [3 x %struct.hugepage_info], ptr %hugepage_info84, i64 0, i64 %idxprom85
  %num_pages = getelementptr inbounds %struct.hugepage_info, ptr %arrayidx86, i32 0, i32 2
  %arrayidx87 = getelementptr inbounds [32 x i32], ptr %num_pages, i64 0, i64 0
  %53 = load i32, ptr %arrayidx87, align 8, !tbaa !8
  %54 = load i32, ptr %nr_hugepages, align 4, !tbaa !8
  %add = add i32 %54, %53
  store i32 %add, ptr %nr_hugepages, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %55, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  %56 = load i32, ptr %nr_hugepages, align 4, !tbaa !8
  %conv88 = sext i32 %56 to i64
  %mul = mul i64 %conv88, 4136
  %call89 = call noalias ptr @malloc(i64 noundef %mul) #15
  store ptr %call89, ptr %tmp_hp, align 8, !tbaa !4
  %57 = load ptr, ptr %tmp_hp, align 8, !tbaa !4
  %cmp90 = icmp eq ptr %57, null
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %for.end
  br label %fail

if.end93:                                         ; preds = %for.end
  %58 = load ptr, ptr %tmp_hp, align 8, !tbaa !4
  %59 = load i32, ptr %nr_hugepages, align 4, !tbaa !8
  %conv94 = sext i32 %59 to i64
  %mul95 = mul i64 %conv94, 4136
  call void @llvm.memset.p0.i64(ptr align 8 %58, i8 0, i64 %mul95, i1 false)
  store i32 0, ptr %hp_offset, align 4, !tbaa !8
  call void @huge_register_sigbus()
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc104, %if.end93
  %60 = load i32, ptr %i, align 4, !tbaa !8
  %cmp97 = icmp slt i32 %60, 32
  br i1 %cmp97, label %for.body99, label %for.end106

for.body99:                                       ; preds = %for.cond96
  %61 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %socket_mem = getelementptr inbounds %struct.internal_config, ptr %61, i32 0, i32 13
  %62 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom100 = sext i32 %62 to i64
  %arrayidx101 = getelementptr inbounds [32 x i64], ptr %socket_mem, i64 0, i64 %idxprom100
  %63 = load volatile i64, ptr %arrayidx101, align 8, !tbaa !10
  %64 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom102 = sext i32 %64 to i64
  %arrayidx103 = getelementptr inbounds [32 x i64], ptr %memory, i64 0, i64 %idxprom102
  store i64 %63, ptr %arrayidx103, align 8, !tbaa !10
  br label %for.inc104

for.inc104:                                       ; preds = %for.body99
  %65 = load i32, ptr %i, align 4, !tbaa !8
  %inc105 = add nsw i32 %65, 1
  store i32 %inc105, ptr %i, align 4, !tbaa !8
  br label %for.cond96, !llvm.loop !34

for.end106:                                       ; preds = %for.cond96
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond107

for.cond107:                                      ; preds = %for.inc198, %for.end106
  %66 = load i32, ptr %i, align 4, !tbaa !8
  %67 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %num_hugepage_sizes108 = getelementptr inbounds %struct.internal_config, ptr %67, i32 0, i32 26
  %68 = load i32, ptr %num_hugepage_sizes108, align 8, !tbaa !29
  %cmp109 = icmp slt i32 %66, %68
  br i1 %cmp109, label %for.body111, label %for.end200

for.body111:                                      ; preds = %for.cond107
  call void @llvm.lifetime.start.p0(i64 4, ptr %pages_old) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %pages_new) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %hpi) #13
  %69 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %hugepage_info112 = getelementptr inbounds %struct.internal_config, ptr %69, i32 0, i32 27
  %70 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom113 = sext i32 %70 to i64
  %arrayidx114 = getelementptr inbounds [3 x %struct.hugepage_info], ptr %hugepage_info112, i64 0, i64 %idxprom113
  store ptr %arrayidx114, ptr %hpi, align 8, !tbaa !4
  %71 = load ptr, ptr %hpi, align 8, !tbaa !4
  %num_pages115 = getelementptr inbounds %struct.hugepage_info, ptr %71, i32 0, i32 2
  %arrayidx116 = getelementptr inbounds [32 x i32], ptr %num_pages115, i64 0, i64 0
  %72 = load i32, ptr %arrayidx116, align 8, !tbaa !8
  %cmp117 = icmp eq i32 %72, 0
  br i1 %cmp117, label %if.then119, label %if.end120

if.then119:                                       ; preds = %for.body111
  store i32 11, ptr %cleanup.dest.slot, align 4
  br label %cleanup193

if.end120:                                        ; preds = %for.body111
  %73 = load ptr, ptr %hpi, align 8, !tbaa !4
  %num_pages121 = getelementptr inbounds %struct.hugepage_info, ptr %73, i32 0, i32 2
  %arrayidx122 = getelementptr inbounds [32 x i32], ptr %num_pages121, i64 0, i64 0
  %74 = load i32, ptr %arrayidx122, align 8, !tbaa !8
  store i32 %74, ptr %pages_old, align 4, !tbaa !8
  %75 = load ptr, ptr %tmp_hp, align 8, !tbaa !4
  %76 = load i32, ptr %hp_offset, align 4, !tbaa !8
  %idxprom123 = zext i32 %76 to i64
  %arrayidx124 = getelementptr inbounds %struct.hugepage_file, ptr %75, i64 %idxprom123
  %77 = load ptr, ptr %hpi, align 8, !tbaa !4
  %arraydecay125 = getelementptr inbounds [32 x i64], ptr %memory, i64 0, i64 0
  %call126 = call i32 @map_all_hugepages(ptr noundef %arrayidx124, ptr noundef %77, ptr noundef %arraydecay125)
  store i32 %call126, ptr %pages_new, align 4, !tbaa !8
  %78 = load i32, ptr %pages_new, align 4, !tbaa !8
  %79 = load i32, ptr %pages_old, align 4, !tbaa !8
  %cmp127 = icmp ult i32 %78, %79
  br i1 %cmp127, label %if.then129, label %if.end142

if.then129:                                       ; preds = %if.end120
  %80 = load i32, ptr %pages_new, align 4, !tbaa !8
  %81 = load i32, ptr %pages_old, align 4, !tbaa !8
  %82 = load ptr, ptr %hpi, align 8, !tbaa !4
  %hugepage_sz130 = getelementptr inbounds %struct.hugepage_info, ptr %82, i32 0, i32 0
  %83 = load i64, ptr %hugepage_sz130, align 8, !tbaa !30
  %div131 = udiv i64 %83, 1048576
  %conv132 = trunc i64 %div131 to i32
  %call133 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.20, i32 noundef %80, i32 noundef %81, i32 noundef %conv132)
  call void @llvm.lifetime.start.p0(i64 4, ptr %pages) #13
  %84 = load i32, ptr %pages_old, align 4, !tbaa !8
  %85 = load i32, ptr %pages_new, align 4, !tbaa !8
  %sub = sub i32 %84, %85
  store i32 %sub, ptr %pages, align 4, !tbaa !8
  %86 = load i32, ptr %pages, align 4, !tbaa !8
  %87 = load i32, ptr %nr_hugepages, align 4, !tbaa !8
  %sub134 = sub nsw i32 %87, %86
  store i32 %sub134, ptr %nr_hugepages, align 4, !tbaa !8
  %88 = load i32, ptr %pages_new, align 4, !tbaa !8
  %89 = load ptr, ptr %hpi, align 8, !tbaa !4
  %num_pages135 = getelementptr inbounds %struct.hugepage_info, ptr %89, i32 0, i32 2
  %arrayidx136 = getelementptr inbounds [32 x i32], ptr %num_pages135, i64 0, i64 0
  store i32 %88, ptr %arrayidx136, align 8, !tbaa !8
  %90 = load i32, ptr %pages_new, align 4, !tbaa !8
  %cmp137 = icmp eq i32 %90, 0
  br i1 %cmp137, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.then129
  store i32 11, ptr %cleanup.dest.slot, align 4
  br label %cleanup141

if.end140:                                        ; preds = %if.then129
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup141

cleanup141:                                       ; preds = %if.end140, %if.then139
  call void @llvm.lifetime.end.p0(i64 4, ptr %pages) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup193 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup141
  br label %if.end142

if.end142:                                        ; preds = %cleanup.cont, %if.end120
  %call143 = call i32 @rte_eal_using_phys_addrs()
  %tobool144 = icmp ne i32 %call143, 0
  br i1 %tobool144, label %land.lhs.true145, label %if.else161

land.lhs.true145:                                 ; preds = %if.end142
  %call146 = call i32 @rte_eal_iova_mode()
  %cmp147 = icmp ne i32 %call146, 2
  br i1 %cmp147, label %if.then149, label %if.else161

if.then149:                                       ; preds = %land.lhs.true145
  %91 = load ptr, ptr %tmp_hp, align 8, !tbaa !4
  %92 = load i32, ptr %hp_offset, align 4, !tbaa !8
  %idxprom150 = zext i32 %92 to i64
  %arrayidx151 = getelementptr inbounds %struct.hugepage_file, ptr %91, i64 %idxprom150
  %93 = load ptr, ptr %hpi, align 8, !tbaa !4
  %call152 = call i32 @find_physaddrs(ptr noundef %arrayidx151, ptr noundef %93)
  %cmp153 = icmp slt i32 %call152, 0
  br i1 %cmp153, label %if.then155, label %if.end160

if.then155:                                       ; preds = %if.then149
  %94 = load ptr, ptr %hpi, align 8, !tbaa !4
  %hugepage_sz156 = getelementptr inbounds %struct.hugepage_info, ptr %94, i32 0, i32 0
  %95 = load i64, ptr %hugepage_sz156, align 8, !tbaa !30
  %div157 = udiv i64 %95, 1048576
  %conv158 = trunc i64 %div157 to i32
  %call159 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.21, i32 noundef %conv158)
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup193

if.end160:                                        ; preds = %if.then149
  br label %if.end173

if.else161:                                       ; preds = %land.lhs.true145, %if.end142
  %96 = load ptr, ptr %tmp_hp, align 8, !tbaa !4
  %97 = load i32, ptr %hp_offset, align 4, !tbaa !8
  %idxprom162 = zext i32 %97 to i64
  %arrayidx163 = getelementptr inbounds %struct.hugepage_file, ptr %96, i64 %idxprom162
  %98 = load ptr, ptr %hpi, align 8, !tbaa !4
  %call164 = call i32 @set_physaddrs(ptr noundef %arrayidx163, ptr noundef %98)
  %cmp165 = icmp slt i32 %call164, 0
  br i1 %cmp165, label %if.then167, label %if.end172

if.then167:                                       ; preds = %if.else161
  %99 = load ptr, ptr %hpi, align 8, !tbaa !4
  %hugepage_sz168 = getelementptr inbounds %struct.hugepage_info, ptr %99, i32 0, i32 0
  %100 = load i64, ptr %hugepage_sz168, align 8, !tbaa !30
  %div169 = udiv i64 %100, 1048576
  %conv170 = trunc i64 %div169 to i32
  %call171 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.22, i32 noundef %conv170)
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup193

if.end172:                                        ; preds = %if.else161
  br label %if.end173

if.end173:                                        ; preds = %if.end172, %if.end160
  %101 = load ptr, ptr %tmp_hp, align 8, !tbaa !4
  %102 = load i32, ptr %hp_offset, align 4, !tbaa !8
  %idxprom174 = zext i32 %102 to i64
  %arrayidx175 = getelementptr inbounds %struct.hugepage_file, ptr %101, i64 %idxprom174
  %103 = load ptr, ptr %hpi, align 8, !tbaa !4
  %call176 = call i32 @find_numasocket(ptr noundef %arrayidx175, ptr noundef %103)
  %cmp177 = icmp slt i32 %call176, 0
  br i1 %cmp177, label %if.then179, label %if.end184

if.then179:                                       ; preds = %if.end173
  %104 = load ptr, ptr %hpi, align 8, !tbaa !4
  %hugepage_sz180 = getelementptr inbounds %struct.hugepage_info, ptr %104, i32 0, i32 0
  %105 = load i64, ptr %hugepage_sz180, align 8, !tbaa !30
  %div181 = udiv i64 %105, 1048576
  %conv182 = trunc i64 %div181 to i32
  %call183 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.23, i32 noundef %conv182)
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup193

if.end184:                                        ; preds = %if.end173
  %106 = load ptr, ptr %tmp_hp, align 8, !tbaa !4
  %107 = load i32, ptr %hp_offset, align 4, !tbaa !8
  %idxprom185 = zext i32 %107 to i64
  %arrayidx186 = getelementptr inbounds %struct.hugepage_file, ptr %106, i64 %idxprom185
  %108 = load ptr, ptr %hpi, align 8, !tbaa !4
  %num_pages187 = getelementptr inbounds %struct.hugepage_info, ptr %108, i32 0, i32 2
  %arrayidx188 = getelementptr inbounds [32 x i32], ptr %num_pages187, i64 0, i64 0
  %109 = load i32, ptr %arrayidx188, align 8, !tbaa !8
  %conv189 = zext i32 %109 to i64
  call void @qsort(ptr noundef %arrayidx186, i64 noundef %conv189, i64 noundef 4136, ptr noundef @cmp_physaddr)
  %110 = load ptr, ptr %hpi, align 8, !tbaa !4
  %num_pages190 = getelementptr inbounds %struct.hugepage_info, ptr %110, i32 0, i32 2
  %arrayidx191 = getelementptr inbounds [32 x i32], ptr %num_pages190, i64 0, i64 0
  %111 = load i32, ptr %arrayidx191, align 8, !tbaa !8
  %112 = load i32, ptr %hp_offset, align 4, !tbaa !8
  %add192 = add i32 %112, %111
  store i32 %add192, ptr %hp_offset, align 4, !tbaa !8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup193

cleanup193:                                       ; preds = %if.then179, %if.then167, %if.then155, %if.end184, %cleanup141, %if.then119
  call void @llvm.lifetime.end.p0(i64 8, ptr %hpi) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %pages_new) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %pages_old) #13
  %cleanup.dest196 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest196, label %cleanup413 [
    i32 0, label %cleanup.cont197
    i32 11, label %for.inc198
    i32 2, label %fail
  ]

cleanup.cont197:                                  ; preds = %cleanup193
  br label %for.inc198

for.inc198:                                       ; preds = %cleanup.cont197, %cleanup193
  %113 = load i32, ptr %i, align 4, !tbaa !8
  %inc199 = add nsw i32 %113, 1
  store i32 %inc199, ptr %i, align 4, !tbaa !8
  br label %for.cond107, !llvm.loop !35

for.end200:                                       ; preds = %for.cond107
  call void @huge_recover_sigbus()
  %114 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %memory201 = getelementptr inbounds %struct.internal_config, ptr %114, i32 0, i32 0
  %115 = load volatile i64, ptr %memory201, align 8, !tbaa !23
  %cmp202 = icmp eq i64 %115, 0
  br i1 %cmp202, label %land.lhs.true204, label %if.end210

land.lhs.true204:                                 ; preds = %for.end200
  %116 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %force_sockets = getelementptr inbounds %struct.internal_config, ptr %116, i32 0, i32 12
  %117 = load volatile i32, ptr %force_sockets, align 4, !tbaa !36
  %cmp205 = icmp eq i32 %117, 0
  br i1 %cmp205, label %if.then207, label %if.end210

if.then207:                                       ; preds = %land.lhs.true204
  %call208 = call i64 @eal_get_hugepage_mem_size()
  %118 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %memory209 = getelementptr inbounds %struct.internal_config, ptr %118, i32 0, i32 0
  store volatile i64 %call208, ptr %memory209, align 8, !tbaa !23
  br label %if.end210

if.end210:                                        ; preds = %if.then207, %land.lhs.true204, %for.end200
  %119 = load i32, ptr %nr_hugepages, align 4, !tbaa !8
  store i32 %119, ptr %nr_hugefiles, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond211

for.cond211:                                      ; preds = %for.inc229, %if.end210
  %120 = load i32, ptr %i, align 4, !tbaa !8
  %121 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %num_hugepage_sizes212 = getelementptr inbounds %struct.internal_config, ptr %121, i32 0, i32 26
  %122 = load i32, ptr %num_hugepage_sizes212, align 8, !tbaa !29
  %cmp213 = icmp slt i32 %120, %122
  br i1 %cmp213, label %for.body215, label %for.end231

for.body215:                                      ; preds = %for.cond211
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond216

for.cond216:                                      ; preds = %for.inc226, %for.body215
  %123 = load i32, ptr %j, align 4, !tbaa !8
  %cmp217 = icmp slt i32 %123, 32
  br i1 %cmp217, label %for.body219, label %for.end228

for.body219:                                      ; preds = %for.cond216
  %124 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %hugepage_info220 = getelementptr inbounds %struct.internal_config, ptr %124, i32 0, i32 27
  %125 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom221 = sext i32 %125 to i64
  %arrayidx222 = getelementptr inbounds [3 x %struct.hugepage_info], ptr %hugepage_info220, i64 0, i64 %idxprom221
  %num_pages223 = getelementptr inbounds %struct.hugepage_info, ptr %arrayidx222, i32 0, i32 2
  %126 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom224 = sext i32 %126 to i64
  %arrayidx225 = getelementptr inbounds [32 x i32], ptr %num_pages223, i64 0, i64 %idxprom224
  store i32 0, ptr %arrayidx225, align 4, !tbaa !8
  br label %for.inc226

for.inc226:                                       ; preds = %for.body219
  %127 = load i32, ptr %j, align 4, !tbaa !8
  %inc227 = add nsw i32 %127, 1
  store i32 %inc227, ptr %j, align 4, !tbaa !8
  br label %for.cond216, !llvm.loop !37

for.end228:                                       ; preds = %for.cond216
  br label %for.inc229

for.inc229:                                       ; preds = %for.end228
  %128 = load i32, ptr %i, align 4, !tbaa !8
  %inc230 = add nsw i32 %128, 1
  store i32 %inc230, ptr %i, align 4, !tbaa !8
  br label %for.cond211, !llvm.loop !38

for.end231:                                       ; preds = %for.cond211
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond232

for.cond232:                                      ; preds = %for.inc265, %for.end231
  %129 = load i32, ptr %i, align 4, !tbaa !8
  %130 = load i32, ptr %nr_hugefiles, align 4, !tbaa !8
  %cmp233 = icmp slt i32 %129, %130
  br i1 %cmp233, label %for.body235, label %for.end267

for.body235:                                      ; preds = %for.cond232
  call void @llvm.lifetime.start.p0(i64 4, ptr %socket) #13
  %131 = load ptr, ptr %tmp_hp, align 8, !tbaa !4
  %132 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom236 = sext i32 %132 to i64
  %arrayidx237 = getelementptr inbounds %struct.hugepage_file, ptr %131, i64 %idxprom236
  %socket_id = getelementptr inbounds %struct.hugepage_file, ptr %arrayidx237, i32 0, i32 4
  %133 = load i32, ptr %socket_id, align 8, !tbaa !39
  store i32 %133, ptr %socket, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb_hpsizes) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %_a) #13
  store i32 3, ptr %_a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_b) #13
  %134 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %num_hugepage_sizes238 = getelementptr inbounds %struct.internal_config, ptr %134, i32 0, i32 26
  %135 = load i32, ptr %num_hugepage_sizes238, align 8, !tbaa !29
  store i32 %135, ptr %_b, align 4, !tbaa !8
  %136 = load i32, ptr %_a, align 4, !tbaa !8
  %137 = load i32, ptr %_b, align 4, !tbaa !8
  %cmp239 = icmp slt i32 %136, %137
  br i1 %cmp239, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body235
  %138 = load i32, ptr %_a, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %for.body235
  %139 = load i32, ptr %_b, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %138, %cond.true ], [ %139, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_b) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %_a) #13
  %140 = load i32, ptr %tmp, align 4, !tbaa !8
  store i32 %140, ptr %nb_hpsizes, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond241

for.cond241:                                      ; preds = %for.inc262, %cond.end
  %141 = load i32, ptr %j, align 4, !tbaa !8
  %142 = load i32, ptr %nb_hpsizes, align 4, !tbaa !8
  %cmp242 = icmp slt i32 %141, %142
  br i1 %cmp242, label %for.body244, label %for.end264

for.body244:                                      ; preds = %for.cond241
  %143 = load ptr, ptr %tmp_hp, align 8, !tbaa !4
  %144 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom245 = sext i32 %144 to i64
  %arrayidx246 = getelementptr inbounds %struct.hugepage_file, ptr %143, i64 %idxprom245
  %size = getelementptr inbounds %struct.hugepage_file, ptr %arrayidx246, i32 0, i32 3
  %145 = load i64, ptr %size, align 8, !tbaa !41
  %146 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %hugepage_info247 = getelementptr inbounds %struct.internal_config, ptr %146, i32 0, i32 27
  %147 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom248 = sext i32 %147 to i64
  %arrayidx249 = getelementptr inbounds [3 x %struct.hugepage_info], ptr %hugepage_info247, i64 0, i64 %idxprom248
  %hugepage_sz250 = getelementptr inbounds %struct.hugepage_info, ptr %arrayidx249, i32 0, i32 0
  %148 = load i64, ptr %hugepage_sz250, align 8, !tbaa !30
  %cmp251 = icmp eq i64 %145, %148
  br i1 %cmp251, label %if.then253, label %if.end261

if.then253:                                       ; preds = %for.body244
  %149 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %hugepage_info254 = getelementptr inbounds %struct.internal_config, ptr %149, i32 0, i32 27
  %150 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom255 = sext i32 %150 to i64
  %arrayidx256 = getelementptr inbounds [3 x %struct.hugepage_info], ptr %hugepage_info254, i64 0, i64 %idxprom255
  %num_pages257 = getelementptr inbounds %struct.hugepage_info, ptr %arrayidx256, i32 0, i32 2
  %151 = load i32, ptr %socket, align 4, !tbaa !8
  %idxprom258 = sext i32 %151 to i64
  %arrayidx259 = getelementptr inbounds [32 x i32], ptr %num_pages257, i64 0, i64 %idxprom258
  %152 = load i32, ptr %arrayidx259, align 4, !tbaa !8
  %inc260 = add i32 %152, 1
  store i32 %inc260, ptr %arrayidx259, align 4, !tbaa !8
  br label %if.end261

if.end261:                                        ; preds = %if.then253, %for.body244
  br label %for.inc262

for.inc262:                                       ; preds = %if.end261
  %153 = load i32, ptr %j, align 4, !tbaa !8
  %inc263 = add nsw i32 %153, 1
  store i32 %inc263, ptr %j, align 4, !tbaa !8
  br label %for.cond241, !llvm.loop !42

for.end264:                                       ; preds = %for.cond241
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb_hpsizes) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %socket) #13
  br label %for.inc265

for.inc265:                                       ; preds = %for.end264
  %154 = load i32, ptr %i, align 4, !tbaa !8
  %inc266 = add nsw i32 %154, 1
  store i32 %inc266, ptr %i, align 4, !tbaa !8
  br label %for.cond232, !llvm.loop !43

for.end267:                                       ; preds = %for.cond232
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond268

for.cond268:                                      ; preds = %for.inc277, %for.end267
  %155 = load i32, ptr %i, align 4, !tbaa !8
  %cmp269 = icmp slt i32 %155, 32
  br i1 %cmp269, label %for.body271, label %for.end279

for.body271:                                      ; preds = %for.cond268
  %156 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %socket_mem272 = getelementptr inbounds %struct.internal_config, ptr %156, i32 0, i32 13
  %157 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom273 = sext i32 %157 to i64
  %arrayidx274 = getelementptr inbounds [32 x i64], ptr %socket_mem272, i64 0, i64 %idxprom273
  %158 = load volatile i64, ptr %arrayidx274, align 8, !tbaa !10
  %159 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom275 = sext i32 %159 to i64
  %arrayidx276 = getelementptr inbounds [32 x i64], ptr %memory, i64 0, i64 %idxprom275
  store i64 %158, ptr %arrayidx276, align 8, !tbaa !10
  br label %for.inc277

for.inc277:                                       ; preds = %for.body271
  %160 = load i32, ptr %i, align 4, !tbaa !8
  %inc278 = add nsw i32 %160, 1
  store i32 %inc278, ptr %i, align 4, !tbaa !8
  br label %for.cond268, !llvm.loop !44

for.end279:                                       ; preds = %for.cond268
  %arraydecay280 = getelementptr inbounds [32 x i64], ptr %memory, i64 0, i64 0
  %161 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %hugepage_info281 = getelementptr inbounds %struct.internal_config, ptr %161, i32 0, i32 27
  %arraydecay282 = getelementptr inbounds [3 x %struct.hugepage_info], ptr %hugepage_info281, i64 0, i64 0
  %arraydecay283 = getelementptr inbounds [3 x %struct.hugepage_info], ptr %used_hp, i64 0, i64 0
  %162 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %num_hugepage_sizes284 = getelementptr inbounds %struct.internal_config, ptr %162, i32 0, i32 26
  %163 = load i32, ptr %num_hugepage_sizes284, align 8, !tbaa !29
  %call285 = call i32 @eal_dynmem_calc_num_pages_per_socket(ptr noundef %arraydecay280, ptr noundef %arraydecay282, ptr noundef %arraydecay283, i32 noundef %163)
  store i32 %call285, ptr %nr_hugepages, align 4, !tbaa !8
  %164 = load i32, ptr %nr_hugepages, align 4, !tbaa !8
  %cmp286 = icmp slt i32 %164, 0
  br i1 %cmp286, label %if.then288, label %if.end289

if.then288:                                       ; preds = %for.end279
  br label %fail

if.end289:                                        ; preds = %for.end279
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond290

for.cond290:                                      ; preds = %for.inc322, %if.end289
  %165 = load i32, ptr %i, align 4, !tbaa !8
  %166 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %num_hugepage_sizes291 = getelementptr inbounds %struct.internal_config, ptr %166, i32 0, i32 26
  %167 = load i32, ptr %num_hugepage_sizes291, align 8, !tbaa !29
  %cmp292 = icmp slt i32 %165, %167
  br i1 %cmp292, label %for.body294, label %for.end324

for.body294:                                      ; preds = %for.cond290
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond295

for.cond295:                                      ; preds = %for.inc319, %for.body294
  %168 = load i32, ptr %j, align 4, !tbaa !8
  %cmp296 = icmp slt i32 %168, 32
  br i1 %cmp296, label %for.body298, label %for.end321

for.body298:                                      ; preds = %for.cond295
  %169 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom299 = sext i32 %169 to i64
  %arrayidx300 = getelementptr inbounds [3 x %struct.hugepage_info], ptr %used_hp, i64 0, i64 %idxprom299
  %num_pages301 = getelementptr inbounds %struct.hugepage_info, ptr %arrayidx300, i32 0, i32 2
  %170 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom302 = sext i32 %170 to i64
  %arrayidx303 = getelementptr inbounds [32 x i32], ptr %num_pages301, i64 0, i64 %idxprom302
  %171 = load i32, ptr %arrayidx303, align 4, !tbaa !8
  %cmp304 = icmp ugt i32 %171, 0
  br i1 %cmp304, label %if.then306, label %if.end318

if.then306:                                       ; preds = %for.body298
  %172 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom307 = sext i32 %172 to i64
  %arrayidx308 = getelementptr inbounds [3 x %struct.hugepage_info], ptr %used_hp, i64 0, i64 %idxprom307
  %num_pages309 = getelementptr inbounds %struct.hugepage_info, ptr %arrayidx308, i32 0, i32 2
  %173 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom310 = sext i32 %173 to i64
  %arrayidx311 = getelementptr inbounds [32 x i32], ptr %num_pages309, i64 0, i64 %idxprom310
  %174 = load i32, ptr %arrayidx311, align 4, !tbaa !8
  %175 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom312 = sext i32 %175 to i64
  %arrayidx313 = getelementptr inbounds [3 x %struct.hugepage_info], ptr %used_hp, i64 0, i64 %idxprom312
  %hugepage_sz314 = getelementptr inbounds %struct.hugepage_info, ptr %arrayidx313, i32 0, i32 0
  %176 = load i64, ptr %hugepage_sz314, align 16, !tbaa !30
  %div315 = udiv i64 %176, 1048576
  %conv316 = trunc i64 %div315 to i32
  %177 = load i32, ptr %j, align 4, !tbaa !8
  %call317 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.24, i32 noundef %174, i32 noundef %conv316, i32 noundef %177)
  br label %if.end318

if.end318:                                        ; preds = %if.then306, %for.body298
  br label %for.inc319

for.inc319:                                       ; preds = %if.end318
  %178 = load i32, ptr %j, align 4, !tbaa !8
  %inc320 = add nsw i32 %178, 1
  store i32 %inc320, ptr %j, align 4, !tbaa !8
  br label %for.cond295, !llvm.loop !45

for.end321:                                       ; preds = %for.cond295
  br label %for.inc322

for.inc322:                                       ; preds = %for.end321
  %179 = load i32, ptr %i, align 4, !tbaa !8
  %inc323 = add nsw i32 %179, 1
  store i32 %inc323, ptr %i, align 4, !tbaa !8
  br label %for.cond290, !llvm.loop !46

for.end324:                                       ; preds = %for.cond290
  %call325 = call ptr @eal_hugepage_data_path()
  %180 = load i32, ptr %nr_hugefiles, align 4, !tbaa !8
  %conv326 = sext i32 %180 to i64
  %mul327 = mul i64 %conv326, 4136
  %call328 = call ptr @create_shared_memory(ptr noundef %call325, i64 noundef %mul327)
  store ptr %call328, ptr %hugepage, align 8, !tbaa !4
  %181 = load ptr, ptr %hugepage, align 8, !tbaa !4
  %cmp329 = icmp eq ptr %181, null
  br i1 %cmp329, label %if.then331, label %if.end333

if.then331:                                       ; preds = %for.end324
  %call332 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.25)
  br label %fail

if.end333:                                        ; preds = %for.end324
  %182 = load ptr, ptr %hugepage, align 8, !tbaa !4
  %183 = load i32, ptr %nr_hugefiles, align 4, !tbaa !8
  %conv334 = sext i32 %183 to i64
  %mul335 = mul i64 %conv334, 4136
  call void @llvm.memset.p0.i64(ptr align 8 %182, i8 0, i64 %mul335, i1 false)
  %184 = load ptr, ptr %tmp_hp, align 8, !tbaa !4
  %arraydecay336 = getelementptr inbounds [3 x %struct.hugepage_info], ptr %used_hp, i64 0, i64 0
  %185 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %num_hugepage_sizes337 = getelementptr inbounds %struct.internal_config, ptr %185, i32 0, i32 26
  %186 = load i32, ptr %num_hugepage_sizes337, align 8, !tbaa !29
  %call338 = call i32 @unmap_unneeded_hugepages(ptr noundef %184, ptr noundef %arraydecay336, i32 noundef %186)
  %cmp339 = icmp slt i32 %call338, 0
  br i1 %cmp339, label %if.then341, label %if.end343

if.then341:                                       ; preds = %if.end333
  %call342 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.26)
  br label %fail

if.end343:                                        ; preds = %if.end333
  %187 = load ptr, ptr %hugepage, align 8, !tbaa !4
  %188 = load i32, ptr %nr_hugefiles, align 4, !tbaa !8
  %189 = load ptr, ptr %tmp_hp, align 8, !tbaa !4
  %190 = load i32, ptr %nr_hugefiles, align 4, !tbaa !8
  %call344 = call i32 @copy_hugepages_to_shared_mem(ptr noundef %187, i32 noundef %188, ptr noundef %189, i32 noundef %190)
  %cmp345 = icmp slt i32 %call344, 0
  br i1 %cmp345, label %if.then347, label %if.end349

if.then347:                                       ; preds = %if.end343
  %call348 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.27)
  br label %fail

if.end349:                                        ; preds = %if.end343
  %191 = load ptr, ptr %hugepage, align 8, !tbaa !4
  %192 = load i32, ptr %nr_hugefiles, align 4, !tbaa !8
  %call350 = call i32 @remap_needed_hugepages(ptr noundef %191, i32 noundef %192)
  %tobool351 = icmp ne i32 %call350, 0
  br i1 %tobool351, label %if.then352, label %if.end354

if.then352:                                       ; preds = %if.end349
  %call353 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.28)
  br label %fail

if.end354:                                        ; preds = %if.end349
  %193 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %hugepage_file = getelementptr inbounds %struct.internal_config, ptr %193, i32 0, i32 4
  %unlink_before_mapping = getelementptr inbounds %struct.hugepage_file_discipline, ptr %hugepage_file, i32 0, i32 0
  %194 = load i8, ptr %unlink_before_mapping, align 4, !tbaa !47, !range !48, !noundef !49
  %tobool355 = trunc i8 %194 to i1
  br i1 %tobool355, label %land.lhs.true357, label %if.end364

land.lhs.true357:                                 ; preds = %if.end354
  %195 = load ptr, ptr %tmp_hp, align 8, !tbaa !4
  %196 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %num_hugepage_sizes358 = getelementptr inbounds %struct.internal_config, ptr %196, i32 0, i32 26
  %197 = load i32, ptr %num_hugepage_sizes358, align 8, !tbaa !29
  %call359 = call i32 @unlink_hugepage_files(ptr noundef %195, i32 noundef %197)
  %cmp360 = icmp slt i32 %call359, 0
  br i1 %cmp360, label %if.then362, label %if.end364

if.then362:                                       ; preds = %land.lhs.true357
  %call363 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.29)
  br label %fail

if.end364:                                        ; preds = %land.lhs.true357, %if.end354
  %198 = load ptr, ptr %tmp_hp, align 8, !tbaa !4
  call void @free(ptr noundef %198) #13
  store ptr null, ptr %tmp_hp, align 8, !tbaa !4
  %199 = load ptr, ptr %hugepage, align 8, !tbaa !4
  %200 = load i32, ptr %nr_hugefiles, align 4, !tbaa !8
  %conv365 = sext i32 %200 to i64
  %mul366 = mul i64 %conv365, 4136
  %call367 = call i32 @munmap(ptr noundef %199, i64 noundef %mul366) #13
  store ptr null, ptr %hugepage, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond368

for.cond368:                                      ; preds = %for.inc392, %if.end364
  %201 = load i32, ptr %i, align 4, !tbaa !8
  %cmp369 = icmp slt i32 %201, 128
  br i1 %cmp369, label %for.body371, label %for.end394

for.body371:                                      ; preds = %for.cond368
  call void @llvm.lifetime.start.p0(i64 8, ptr %msl372) #13
  %202 = load ptr, ptr %mcfg, align 8, !tbaa !4
  %memsegs373 = getelementptr inbounds %struct.rte_mem_config, ptr %202, i32 0, i32 11
  %203 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom374 = sext i32 %203 to i64
  %arrayidx375 = getelementptr inbounds [128 x %struct.rte_memseg_list], ptr %memsegs373, i64 0, i64 %idxprom374
  store ptr %arrayidx375, ptr %msl372, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem_sz376) #13
  %204 = load ptr, ptr %msl372, align 8, !tbaa !4
  %205 = getelementptr inbounds %struct.rte_memseg_list, ptr %204, i32 0, i32 0
  %206 = load ptr, ptr %205, align 8, !tbaa !24
  %cmp377 = icmp eq ptr %206, null
  br i1 %cmp377, label %if.then379, label %if.end380

if.then379:                                       ; preds = %for.body371
  store i32 35, ptr %cleanup.dest.slot, align 4
  br label %cleanup388

if.end380:                                        ; preds = %for.body371
  %207 = load ptr, ptr %msl372, align 8, !tbaa !4
  %memseg_arr = getelementptr inbounds %struct.rte_memseg_list, ptr %207, i32 0, i32 7
  %count = getelementptr inbounds %struct.rte_fbarray, ptr %memseg_arr, i32 0, i32 1
  %208 = load i32, ptr %count, align 8, !tbaa !50
  %cmp381 = icmp ugt i32 %208, 0
  br i1 %cmp381, label %if.then383, label %if.end384

if.then383:                                       ; preds = %if.end380
  store i32 35, ptr %cleanup.dest.slot, align 4
  br label %cleanup388

if.end384:                                        ; preds = %if.end380
  %209 = load ptr, ptr %msl372, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.rte_memseg_list, ptr %209, i32 0, i32 4
  %210 = load i64, ptr %len, align 8, !tbaa !52
  store i64 %210, ptr %mem_sz376, align 8, !tbaa !10
  %211 = load ptr, ptr %msl372, align 8, !tbaa !4
  %212 = getelementptr inbounds %struct.rte_memseg_list, ptr %211, i32 0, i32 0
  %213 = load ptr, ptr %212, align 8, !tbaa !24
  %214 = load i64, ptr %mem_sz376, align 8, !tbaa !10
  %call385 = call i32 @munmap(ptr noundef %213, i64 noundef %214) #13
  %215 = load ptr, ptr %msl372, align 8, !tbaa !4
  %216 = getelementptr inbounds %struct.rte_memseg_list, ptr %215, i32 0, i32 0
  store ptr null, ptr %216, align 8, !tbaa !24
  %217 = load ptr, ptr %msl372, align 8, !tbaa !4
  %heap = getelementptr inbounds %struct.rte_memseg_list, ptr %217, i32 0, i32 6
  store i32 0, ptr %heap, align 4, !tbaa !53
  %218 = load ptr, ptr %msl372, align 8, !tbaa !4
  %memseg_arr386 = getelementptr inbounds %struct.rte_memseg_list, ptr %218, i32 0, i32 7
  %call387 = call i32 @rte_fbarray_destroy(ptr noundef %memseg_arr386)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup388

cleanup388:                                       ; preds = %if.end384, %if.then383, %if.then379
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem_sz376) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %msl372) #13
  %cleanup.dest390 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest390, label %unreachable [
    i32 0, label %cleanup.cont391
    i32 35, label %for.inc392
  ]

cleanup.cont391:                                  ; preds = %cleanup388
  br label %for.inc392

for.inc392:                                       ; preds = %cleanup.cont391, %cleanup388
  %219 = load i32, ptr %i, align 4, !tbaa !8
  %inc393 = add nsw i32 %219, 1
  store i32 %inc393, ptr %i, align 4, !tbaa !8
  br label %for.cond368, !llvm.loop !54

for.end394:                                       ; preds = %for.cond368
  %220 = load ptr, ptr %mcfg, align 8, !tbaa !4
  %dma_maskbits395 = getelementptr inbounds %struct.rte_mem_config, ptr %220, i32 0, i32 20
  %221 = load i8, ptr %dma_maskbits395, align 32, !tbaa !25
  %conv396 = zext i8 %221 to i32
  %tobool397 = icmp ne i32 %conv396, 0
  br i1 %tobool397, label %land.lhs.true398, label %if.end404

land.lhs.true398:                                 ; preds = %for.end394
  %222 = load ptr, ptr %mcfg, align 8, !tbaa !4
  %dma_maskbits399 = getelementptr inbounds %struct.rte_mem_config, ptr %222, i32 0, i32 20
  %223 = load i8, ptr %dma_maskbits399, align 32, !tbaa !25
  %call400 = call i32 @rte_mem_check_dma_mask_thread_unsafe(i8 noundef zeroext %223)
  %tobool401 = icmp ne i32 %call400, 0
  br i1 %tobool401, label %if.then402, label %if.end404

if.then402:                                       ; preds = %land.lhs.true398
  %call403 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.18, ptr noundef @__func__.eal_legacy_hugepage_init)
  br label %fail

if.end404:                                        ; preds = %land.lhs.true398, %for.end394
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup413

fail:                                             ; preds = %cleanup193, %cleanup, %if.then402, %if.then362, %if.then352, %if.then347, %if.then341, %if.then331, %if.then288, %if.then92
  call void @huge_recover_sigbus()
  %224 = load ptr, ptr %tmp_hp, align 8, !tbaa !4
  call void @free(ptr noundef %224) #13
  %225 = load ptr, ptr %hugepage, align 8, !tbaa !4
  %cmp406 = icmp ne ptr %225, null
  br i1 %cmp406, label %if.then408, label %if.end412

if.then408:                                       ; preds = %fail
  %226 = load ptr, ptr %hugepage, align 8, !tbaa !4
  %227 = load i32, ptr %nr_hugefiles, align 4, !tbaa !8
  %conv409 = sext i32 %227 to i64
  %mul410 = mul i64 %conv409, 4136
  %call411 = call i32 @munmap(ptr noundef %226, i64 noundef %mul410) #13
  br label %if.end412

if.end412:                                        ; preds = %if.then408, %fail
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup413

cleanup413:                                       ; preds = %if.end412, %cleanup, %if.end404, %cleanup193
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_hugepages) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_hugefiles) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %hp_offset) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr %memory) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %internal_conf) #13
  call void @llvm.lifetime.end.p0(i64 12720, ptr %used_hp) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp_hp) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %hugepage) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcfg) #13
  %228 = load i32, ptr %retval, align 4
  ret i32 %228

unreachable:                                      ; preds = %cleanup388
  unreachable
}

declare i32 @eal_dynmem_hugepage_init() #3

; Function Attrs: nounwind uwtable
define i32 @rte_eal_hugepage_attach() #0 {
entry:
  %internal_conf = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %internal_conf) #13
  %call = call ptr @eal_get_internal_configuration()
  store ptr %call, ptr %internal_conf, align 8, !tbaa !4
  %0 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %legacy_mem = getelementptr inbounds %struct.internal_config, ptr %0, i32 0, i32 17
  %1 = load volatile i32, ptr %legacy_mem, align 8, !tbaa !12
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call1 = call i32 @eal_legacy_hugepage_attach()
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call i32 @eal_hugepage_attach()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ %call2, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %internal_conf) #13
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @eal_legacy_hugepage_attach() #0 {
entry:
  %retval = alloca i32, align 4
  %mcfg = alloca ptr, align 8
  %hp = alloca ptr, align 8
  %num_hp = alloca i32, align 4
  %i = alloca i32, align 4
  %cur_seg = alloca i32, align 4
  %size = alloca i64, align 8
  %fd = alloca i32, align 4
  %fd_hugepage = alloca i32, align 4
  %hf = alloca ptr, align 8
  %map_sz = alloca i64, align 8
  %map_addr = alloca ptr, align 8
  %msl_idx = alloca i32, align 4
  %ms_idx = alloca i32, align 4
  %msl = alloca ptr, align 8
  %ms = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcfg) #13
  %call = call ptr @rte_eal_get_configuration()
  %mem_config = getelementptr inbounds %struct.rte_config, ptr %call, i32 0, i32 8
  %0 = load ptr, ptr %mem_config, align 1, !tbaa !19
  store ptr %0, ptr %mcfg, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hp) #13
  store ptr null, ptr %hp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_hp) #13
  store i32 0, ptr %num_hp, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13
  store i32 0, ptr %i, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_seg) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #13
  store i64 0, ptr %size, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd_hugepage) #13
  store i32 -1, ptr %fd_hugepage, align 4, !tbaa !8
  %call1 = call i32 @aslr_enabled()
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 5, i32 noundef 0, ptr noundef @.str.61)
  %call3 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 5, i32 noundef 0, ptr noundef @.str.62)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call4 = call ptr @eal_hugepage_data_path()
  %call5 = call i32 (ptr, i32, ...) @open64(ptr noundef %call4, i32 noundef 0)
  store i32 %call5, ptr %fd_hugepage, align 4, !tbaa !8
  %1 = load i32, ptr %fd_hugepage, align 4, !tbaa !8
  %cmp6 = icmp slt i32 %1, 0
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %call8 = call ptr @eal_hugepage_data_path()
  %call9 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.63, ptr noundef %call8)
  br label %error

if.end10:                                         ; preds = %if.end
  %2 = load i32, ptr %fd_hugepage, align 4, !tbaa !8
  %call11 = call i64 @getFileSize(i32 noundef %2)
  store i64 %call11, ptr %size, align 8, !tbaa !10
  %3 = load i64, ptr %size, align 8, !tbaa !10
  %4 = load i32, ptr %fd_hugepage, align 4, !tbaa !8
  %call12 = call ptr @mmap64(ptr noundef null, i64 noundef %3, i32 noundef 1, i32 noundef 2, i32 noundef %4, i64 noundef 0) #13
  store ptr %call12, ptr %hp, align 8, !tbaa !4
  %5 = load ptr, ptr %hp, align 8, !tbaa !4
  %cmp13 = icmp eq ptr %5, inttoptr (i64 -1 to ptr)
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  %call15 = call ptr @eal_hugepage_data_path()
  %call16 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.64, ptr noundef %call15)
  br label %error

if.end17:                                         ; preds = %if.end10
  %6 = load i64, ptr %size, align 8, !tbaa !10
  %div = udiv i64 %6, 4136
  %conv = trunc i64 %div to i32
  store i32 %conv, ptr %num_hp, align 4, !tbaa !8
  %7 = load i32, ptr %num_hp, align 4, !tbaa !8
  %call18 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.65, i32 noundef %7)
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end17
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %9 = load i32, ptr %num_hp, align 4, !tbaa !8
  %cmp19 = icmp ult i32 %8, %9
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %hf) #13
  %10 = load ptr, ptr %hp, align 8, !tbaa !4
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct.hugepage_file, ptr %10, i64 %idxprom
  store ptr %arrayidx, ptr %hf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %map_sz) #13
  %12 = load ptr, ptr %hf, align 8, !tbaa !4
  %size21 = getelementptr inbounds %struct.hugepage_file, ptr %12, i32 0, i32 3
  %13 = load i64, ptr %size21, align 8, !tbaa !41
  store i64 %13, ptr %map_sz, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %map_addr) #13
  %14 = load ptr, ptr %hf, align 8, !tbaa !4
  %final_va = getelementptr inbounds %struct.hugepage_file, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %final_va, align 8, !tbaa !55
  store ptr %15, ptr %map_addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %msl_idx) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %ms_idx) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %msl) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %ms) #13
  %16 = load i64, ptr %map_sz, align 8, !tbaa !10
  %cmp22 = icmp eq i64 %16, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %for.body
  %17 = load ptr, ptr %hf, align 8, !tbaa !4
  %filepath = getelementptr inbounds %struct.hugepage_file, ptr %17, i32 0, i32 6
  %arraydecay = getelementptr inbounds [4096 x i8], ptr %filepath, i64 0, i64 0
  %call26 = call i32 (ptr, i32, ...) @open64(ptr noundef %arraydecay, i32 noundef 2)
  store i32 %call26, ptr %fd, align 4, !tbaa !8
  %18 = load i32, ptr %fd, align 4, !tbaa !8
  %cmp27 = icmp slt i32 %18, 0
  br i1 %cmp27, label %if.then29, label %if.end35

if.then29:                                        ; preds = %if.end25
  %19 = load ptr, ptr %hf, align 8, !tbaa !4
  %filepath30 = getelementptr inbounds %struct.hugepage_file, ptr %19, i32 0, i32 6
  %arraydecay31 = getelementptr inbounds [4096 x i8], ptr %filepath30, i64 0, i64 0
  %call32 = call ptr @__errno_location() #14
  %20 = load i32, ptr %call32, align 4, !tbaa !8
  %call33 = call ptr @strerror(i32 noundef %20) #13
  %call34 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.66, ptr noundef %arraydecay31, ptr noundef %call33)
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end25
  %21 = load ptr, ptr %map_addr, align 8, !tbaa !4
  %22 = load i64, ptr %map_sz, align 8, !tbaa !10
  %23 = load i32, ptr %fd, align 4, !tbaa !8
  %call36 = call ptr @mmap64(ptr noundef %21, i64 noundef %22, i32 noundef 3, i32 noundef 17, i32 noundef %23, i64 noundef 0) #13
  store ptr %call36, ptr %map_addr, align 8, !tbaa !4
  %24 = load ptr, ptr %map_addr, align 8, !tbaa !4
  %cmp37 = icmp eq ptr %24, inttoptr (i64 -1 to ptr)
  br i1 %cmp37, label %if.then39, label %if.end45

if.then39:                                        ; preds = %if.end35
  %25 = load ptr, ptr %hf, align 8, !tbaa !4
  %filepath40 = getelementptr inbounds %struct.hugepage_file, ptr %25, i32 0, i32 6
  %arraydecay41 = getelementptr inbounds [4096 x i8], ptr %filepath40, i64 0, i64 0
  %call42 = call ptr @__errno_location() #14
  %26 = load i32, ptr %call42, align 4, !tbaa !8
  %call43 = call ptr @strerror(i32 noundef %26) #13
  %call44 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.67, ptr noundef %arraydecay41, ptr noundef %call43)
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end35
  %27 = load i32, ptr %fd, align 4, !tbaa !8
  %call46 = call i32 @flock(i32 noundef %27, i32 noundef 1) #13
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.end53

if.then49:                                        ; preds = %if.end45
  %call50 = call ptr @__errno_location() #14
  %28 = load i32, ptr %call50, align 4, !tbaa !8
  %call51 = call ptr @strerror(i32 noundef %28) #13
  %call52 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.68, ptr noundef @__func__.eal_legacy_hugepage_attach, ptr noundef %call51)
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end53:                                         ; preds = %if.end45
  %29 = load ptr, ptr %map_addr, align 8, !tbaa !4
  %call54 = call ptr @rte_mem_virt2memseg_list(ptr noundef %29)
  store ptr %call54, ptr %msl, align 8, !tbaa !4
  %30 = load ptr, ptr %msl, align 8, !tbaa !4
  %cmp55 = icmp eq ptr %30, null
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end53
  %call58 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.69, ptr noundef @__func__.eal_legacy_hugepage_attach)
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end59:                                         ; preds = %if.end53
  %31 = load ptr, ptr %map_addr, align 8, !tbaa !4
  %32 = load ptr, ptr %msl, align 8, !tbaa !4
  %call60 = call ptr @rte_mem_virt2memseg(ptr noundef %31, ptr noundef %32)
  store ptr %call60, ptr %ms, align 8, !tbaa !4
  %33 = load ptr, ptr %ms, align 8, !tbaa !4
  %cmp61 = icmp eq ptr %33, null
  br i1 %cmp61, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.end59
  %call64 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.70, ptr noundef @__func__.eal_legacy_hugepage_attach)
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end65:                                         ; preds = %if.end59
  %34 = load ptr, ptr %msl, align 8, !tbaa !4
  %35 = load ptr, ptr %mcfg, align 8, !tbaa !4
  %memsegs = getelementptr inbounds %struct.rte_mem_config, ptr %35, i32 0, i32 11
  %arraydecay66 = getelementptr inbounds [128 x %struct.rte_memseg_list], ptr %memsegs, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint ptr %34 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay66 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 136
  %conv67 = trunc i64 %sub.ptr.div to i32
  store i32 %conv67, ptr %msl_idx, align 4, !tbaa !8
  %36 = load ptr, ptr %msl, align 8, !tbaa !4
  %memseg_arr = getelementptr inbounds %struct.rte_memseg_list, ptr %36, i32 0, i32 7
  %37 = load ptr, ptr %ms, align 8, !tbaa !4
  %call68 = call i32 @rte_fbarray_find_idx(ptr noundef %memseg_arr, ptr noundef %37)
  store i32 %call68, ptr %ms_idx, align 4, !tbaa !8
  %38 = load i32, ptr %ms_idx, align 4, !tbaa !8
  %cmp69 = icmp slt i32 %38, 0
  br i1 %cmp69, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.end65
  %call72 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.71, ptr noundef @__func__.eal_legacy_hugepage_attach)
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end73:                                         ; preds = %if.end65
  %39 = load i32, ptr %msl_idx, align 4, !tbaa !8
  %40 = load i32, ptr %ms_idx, align 4, !tbaa !8
  %41 = load i32, ptr %fd, align 4, !tbaa !8
  %call74 = call i32 @eal_memalloc_set_seg_fd(i32 noundef %39, i32 noundef %40, i32 noundef %41)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.then77, label %if.end80

if.then77:                                        ; preds = %if.end73
  %42 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @per_lcore__rte_errno)
  %43 = load i32, ptr %42, align 4, !tbaa !8
  %call78 = call ptr @rte_strerror(i32 noundef %43)
  %call79 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.59, ptr noundef %call78)
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.end73
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %if.then63, %if.then57, %if.then49, %if.then39, %if.then29, %if.end80, %if.then24
  call void @llvm.lifetime.end.p0(i64 8, ptr %ms) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %msl) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %ms_idx) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %msl_idx) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %map_addr) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %map_sz) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %hf) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup123 [
    i32 0, label %cleanup.cont
    i32 3, label %for.end
    i32 7, label %mmap_error
    i32 6, label %fd_error
    i32 2, label %error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %44 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add i32 %44, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !56

for.end:                                          ; preds = %cleanup, %for.cond
  %45 = load ptr, ptr %hp, align 8, !tbaa !4
  %46 = load i64, ptr %size, align 8, !tbaa !10
  %call87 = call i32 @munmap(ptr noundef %45, i64 noundef %46) #13
  %47 = load i32, ptr %fd_hugepage, align 4, !tbaa !8
  %call88 = call i32 @close(i32 noundef %47)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup123

mmap_error:                                       ; preds = %cleanup
  %48 = load ptr, ptr %hp, align 8, !tbaa !4
  %49 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom89 = zext i32 %49 to i64
  %arrayidx90 = getelementptr inbounds %struct.hugepage_file, ptr %48, i64 %idxprom89
  %final_va91 = getelementptr inbounds %struct.hugepage_file, ptr %arrayidx90, i32 0, i32 1
  %50 = load ptr, ptr %final_va91, align 8, !tbaa !55
  %51 = load ptr, ptr %hp, align 8, !tbaa !4
  %52 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom92 = zext i32 %52 to i64
  %arrayidx93 = getelementptr inbounds %struct.hugepage_file, ptr %51, i64 %idxprom92
  %size94 = getelementptr inbounds %struct.hugepage_file, ptr %arrayidx93, i32 0, i32 3
  %53 = load i64, ptr %size94, align 8, !tbaa !41
  %call95 = call i32 @munmap(ptr noundef %50, i64 noundef %53) #13
  br label %fd_error

fd_error:                                         ; preds = %mmap_error, %cleanup
  %54 = load i32, ptr %fd, align 4, !tbaa !8
  %call96 = call i32 @close(i32 noundef %54)
  br label %error

error:                                            ; preds = %fd_error, %cleanup, %if.then14, %if.then7
  store i32 0, ptr %cur_seg, align 4, !tbaa !8
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc108, %error
  %55 = load i32, ptr %cur_seg, align 4, !tbaa !8
  %56 = load i32, ptr %i, align 4, !tbaa !8
  %cmp98 = icmp ult i32 %55, %56
  br i1 %cmp98, label %for.body100, label %for.end110

for.body100:                                      ; preds = %for.cond97
  %57 = load ptr, ptr %hp, align 8, !tbaa !4
  %58 = load i32, ptr %cur_seg, align 4, !tbaa !8
  %idxprom101 = zext i32 %58 to i64
  %arrayidx102 = getelementptr inbounds %struct.hugepage_file, ptr %57, i64 %idxprom101
  %final_va103 = getelementptr inbounds %struct.hugepage_file, ptr %arrayidx102, i32 0, i32 1
  %59 = load ptr, ptr %final_va103, align 8, !tbaa !55
  %60 = load ptr, ptr %hp, align 8, !tbaa !4
  %61 = load i32, ptr %cur_seg, align 4, !tbaa !8
  %idxprom104 = zext i32 %61 to i64
  %arrayidx105 = getelementptr inbounds %struct.hugepage_file, ptr %60, i64 %idxprom104
  %size106 = getelementptr inbounds %struct.hugepage_file, ptr %arrayidx105, i32 0, i32 3
  %62 = load i64, ptr %size106, align 8, !tbaa !41
  %call107 = call i32 @munmap(ptr noundef %59, i64 noundef %62) #13
  br label %for.inc108

for.inc108:                                       ; preds = %for.body100
  %63 = load i32, ptr %cur_seg, align 4, !tbaa !8
  %inc109 = add i32 %63, 1
  store i32 %inc109, ptr %cur_seg, align 4, !tbaa !8
  br label %for.cond97, !llvm.loop !57

for.end110:                                       ; preds = %for.cond97
  %64 = load ptr, ptr %hp, align 8, !tbaa !4
  %cmp111 = icmp ne ptr %64, null
  br i1 %cmp111, label %land.lhs.true, label %if.end117

land.lhs.true:                                    ; preds = %for.end110
  %65 = load ptr, ptr %hp, align 8, !tbaa !4
  %cmp113 = icmp ne ptr %65, inttoptr (i64 -1 to ptr)
  br i1 %cmp113, label %if.then115, label %if.end117

if.then115:                                       ; preds = %land.lhs.true
  %66 = load ptr, ptr %hp, align 8, !tbaa !4
  %67 = load i64, ptr %size, align 8, !tbaa !10
  %call116 = call i32 @munmap(ptr noundef %66, i64 noundef %67) #13
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %land.lhs.true, %for.end110
  %68 = load i32, ptr %fd_hugepage, align 4, !tbaa !8
  %cmp118 = icmp sge i32 %68, 0
  br i1 %cmp118, label %if.then120, label %if.end122

if.then120:                                       ; preds = %if.end117
  %69 = load i32, ptr %fd_hugepage, align 4, !tbaa !8
  %call121 = call i32 @close(i32 noundef %69)
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.end117
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup123

cleanup123:                                       ; preds = %if.end122, %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd_hugepage) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_seg) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_hp) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %hp) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcfg) #13
  %70 = load i32, ptr %retval, align 4
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define internal i32 @eal_hugepage_attach() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 @eal_memalloc_sync_with_primary()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.73)
  %call2 = call i32 @aslr_enabled()
  %cmp = icmp sgt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %call4 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.74)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.end
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @rte_eal_using_phys_addrs() #0 {
entry:
  %tmp = alloca i64, align 8
  %0 = load i32, ptr @phys_addrs_available, align 4, !tbaa !8
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #13
  store i64 0, ptr %tmp, align 8, !tbaa !10
  %call = call i32 @rte_eal_has_hugepages()
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %call2 = call i64 @rte_mem_virt2phy(ptr noundef %tmp)
  %cmp3 = icmp ne i64 %call2, -1
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %land.lhs.true
  store i32 1, ptr @phys_addrs_available, align 4, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, ptr @phys_addrs_available, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #13
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %1 = load i32, ptr @phys_addrs_available, align 4, !tbaa !8
  ret i32 %1
}

declare i32 @rte_eal_has_hugepages() #3

; Function Attrs: nounwind uwtable
define i32 @rte_eal_memseg_init() #0 {
entry:
  %lim = alloca %struct.rlimit, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %lim) #13
  %call = call i32 @getrlimit64(i32 noundef 7, ptr noundef %lim) #13
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else9

if.then:                                          ; preds = %entry
  %rlim_max = getelementptr inbounds %struct.rlimit, ptr %lim, i32 0, i32 1
  %0 = load i64, ptr %rlim_max, align 8, !tbaa !58
  %rlim_cur = getelementptr inbounds %struct.rlimit, ptr %lim, i32 0, i32 0
  store i64 %0, ptr %rlim_cur, align 8, !tbaa !60
  %call1 = call i32 @setrlimit64(i32 noundef 7, ptr noundef %lim) #13
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %call4 = call ptr @__errno_location() #14
  %1 = load i32, ptr %call4, align 4, !tbaa !8
  %call5 = call ptr @strerror(i32 noundef %1) #13
  %call6 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.6, ptr noundef %call5)
  br label %if.end

if.else:                                          ; preds = %if.then
  %rlim_cur7 = getelementptr inbounds %struct.rlimit, ptr %lim, i32 0, i32 0
  %2 = load i64, ptr %rlim_cur7, align 8, !tbaa !60
  %call8 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.7, i64 noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end11

if.else9:                                         ; preds = %entry
  %call10 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.8)
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.end
  %call12 = call i32 @rte_eal_process_type()
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end11
  %call14 = call i32 @memseg_primary_init()
  br label %cond.end

cond.false:                                       ; preds = %if.end11
  %call15 = call i32 @memseg_secondary_init()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call14, %cond.true ], [ %call15, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 16, ptr %lim) #13
  ret i32 %cond
}

; Function Attrs: nounwind
declare i32 @getrlimit64(i32 noundef, ptr noundef) #4

; Function Attrs: nounwind
declare i32 @setrlimit64(i32 noundef, ptr noundef) #4

declare i32 @rte_eal_process_type() #3

; Function Attrs: nounwind uwtable
define internal i32 @memseg_primary_init() #0 {
entry:
  %call = call i32 @eal_dynmem_memseg_lists_init()
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @memseg_secondary_init() #0 {
entry:
  %retval = alloca i32, align 4
  %mcfg = alloca ptr, align 8
  %msl_idx = alloca i32, align 4
  %msl = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcfg) #13
  %call = call ptr @rte_eal_get_configuration()
  %mem_config = getelementptr inbounds %struct.rte_config, ptr %call, i32 0, i32 8
  %0 = load ptr, ptr %mem_config, align 1, !tbaa !19
  store ptr %0, ptr %mcfg, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %msl_idx) #13
  store i32 0, ptr %msl_idx, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %msl) #13
  store i32 0, ptr %msl_idx, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %msl_idx, align 4, !tbaa !8
  %cmp = icmp slt i32 %1, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %mcfg, align 8, !tbaa !4
  %memsegs = getelementptr inbounds %struct.rte_mem_config, ptr %2, i32 0, i32 11
  %3 = load i32, ptr %msl_idx, align 4, !tbaa !8
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [128 x %struct.rte_memseg_list], ptr %memsegs, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %msl, align 8, !tbaa !4
  %4 = load ptr, ptr %msl, align 8, !tbaa !4
  %memseg_arr = getelementptr inbounds %struct.rte_memseg_list, ptr %4, i32 0, i32 7
  %len = getelementptr inbounds %struct.rte_fbarray, ptr %memseg_arr, i32 0, i32 2
  %5 = load i32, ptr %len, align 4, !tbaa !61
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load ptr, ptr %msl, align 8, !tbaa !4
  %external = getelementptr inbounds %struct.rte_memseg_list, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %external, align 8, !tbaa !62
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %msl, align 8, !tbaa !4
  %memseg_arr2 = getelementptr inbounds %struct.rte_memseg_list, ptr %8, i32 0, i32 7
  %call3 = call i32 @rte_fbarray_attach(ptr noundef %memseg_arr2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %call6 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.75)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %9 = load ptr, ptr %msl, align 8, !tbaa !4
  %call8 = call i32 @eal_memseg_list_alloc(ptr noundef %9, i32 noundef 0)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %call11 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.15)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %if.then
  %10 = load i32, ptr %msl_idx, align 4, !tbaa !8
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %msl_idx, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !63

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then10, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %msl) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %msl_idx) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcfg) #13
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare ptr @rte_eal_get_configuration() #3

declare i32 @eal_memseg_list_init_named(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: nounwind
declare i32 @memfd_create(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i32 @ftruncate64(i32 noundef, i64 noundef) #4

declare i32 @eal_memseg_list_alloc(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare ptr @mmap64(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #4

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) #4

declare i32 @eal_memalloc_set_seg_list_fd(i32 noundef, i32 noundef) #3

declare void @eal_memseg_list_populate(ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @rte_mem_check_dma_mask_thread_unsafe(i8 noundef zeroext) #3

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

; Function Attrs: nounwind uwtable
define internal void @huge_register_sigbus() #0 {
entry:
  %mask = alloca %struct.__sigset_t, align 8
  %action = alloca %struct.sigaction, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr %mask) #13
  call void @llvm.lifetime.start.p0(i64 152, ptr %action) #13
  %call = call i32 @sigemptyset(ptr noundef %mask) #13
  %call1 = call i32 @sigaddset(ptr noundef %mask, i32 noundef 7) #13
  %sa_flags = getelementptr inbounds %struct.sigaction, ptr %action, i32 0, i32 2
  store i32 0, ptr %sa_flags, align 8, !tbaa !64
  %sa_mask = getelementptr inbounds %struct.sigaction, ptr %action, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %sa_mask, ptr align 8 %mask, i64 128, i1 false), !tbaa.struct !66
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, ptr %action, i32 0, i32 0
  store ptr @huge_sigbus_handler, ptr %__sigaction_handler, align 8, !tbaa !24
  %call2 = call i32 @sigaction(i32 noundef 7, ptr noundef %action, ptr noundef @huge_action_old) #13
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr @huge_need_recover, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 152, ptr %action) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr %mask) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @map_all_hugepages(ptr noundef %hugepg_tbl, ptr noundef %hpi, ptr noundef %essential_memory) #0 {
entry:
  %retval = alloca i32, align 4
  %hugepg_tbl.addr = alloca ptr, align 8
  %hpi.addr = alloca ptr, align 8
  %essential_memory.addr = alloca ptr, align 8
  %fd = alloca i32, align 4
  %i = alloca i32, align 4
  %virtaddr = alloca ptr, align 8
  %node_id = alloca i32, align 4
  %essential_prev = alloca i32, align 4
  %oldpolicy = alloca i32, align 4
  %oldmask = alloca ptr, align 8
  %have_numa = alloca i8, align 1
  %maxnode = alloca i64, align 8
  %internal_conf = alloca ptr, align 8
  %hf = alloca ptr, align 8
  %hugepage_sz = alloca i64, align 8
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hugepg_tbl, ptr %hugepg_tbl.addr, align 8, !tbaa !4
  store ptr %hpi, ptr %hpi.addr, align 8, !tbaa !4
  store ptr %essential_memory, ptr %essential_memory.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %virtaddr) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %node_id) #13
  store i32 -1, ptr %node_id, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %essential_prev) #13
  store i32 0, ptr %essential_prev, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldpolicy) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldmask) #13
  store ptr null, ptr %oldmask, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %have_numa) #13
  store i8 1, ptr %have_numa, align 1, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxnode) #13
  store i64 0, ptr %maxnode, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %internal_conf) #13
  %call = call ptr @eal_get_internal_configuration()
  store ptr %call, ptr %internal_conf, align 8, !tbaa !4
  %call1 = call i32 @numa_available()
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.30)
  store i8 0, ptr %have_numa, align 1, !tbaa !67
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i8, ptr %have_numa, align 1, !tbaa !67, !range !48, !noundef !49
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then3, label %if.end18

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.31)
  %call5 = call ptr @numa_allocate_nodemask()
  store ptr %call5, ptr %oldmask, align 8, !tbaa !4
  %1 = load ptr, ptr %oldmask, align 8, !tbaa !4
  %maskp = getelementptr inbounds %struct.bitmask, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %maskp, align 8, !tbaa !68
  %3 = load ptr, ptr %oldmask, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.bitmask, ptr %3, i32 0, i32 0
  %4 = load i64, ptr %size, align 8, !tbaa !70
  %add = add i64 %4, 1
  %call6 = call i64 @get_mempolicy(ptr noundef %oldpolicy, ptr noundef %2, i64 noundef %add, ptr noundef null, i32 noundef 0)
  %cmp7 = icmp slt i64 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.then3
  %call9 = call ptr @__errno_location() #14
  %5 = load i32, ptr %call9, align 4, !tbaa !8
  %call10 = call ptr @strerror(i32 noundef %5) #13
  %call11 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.32, ptr noundef %call10)
  store i32 0, ptr %oldpolicy, align 4, !tbaa !8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then3
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %6 = load i32, ptr %i, align 4, !tbaa !8
  %cmp13 = icmp ult i32 %6, 32
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %socket_mem = getelementptr inbounds %struct.internal_config, ptr %7, i32 0, i32 13
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds [32 x i64], ptr %socket_mem, i64 0, i64 %idxprom
  %9 = load volatile i64, ptr %arrayidx, align 8, !tbaa !10
  %tobool14 = icmp ne i64 %9, 0
  br i1 %tobool14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !tbaa !8
  %add16 = add i32 %10, 1
  %conv = zext i32 %add16 to i64
  store i64 %conv, ptr %maxnode, align 8, !tbaa !10
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add i32 %11, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !71

for.end:                                          ; preds = %for.cond
  br label %if.end18

if.end18:                                         ; preds = %for.end, %if.end
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc129, %if.end18
  %12 = load i32, ptr %i, align 4, !tbaa !8
  %13 = load ptr, ptr %hpi.addr, align 8, !tbaa !4
  %num_pages = getelementptr inbounds %struct.hugepage_info, ptr %13, i32 0, i32 2
  %arrayidx20 = getelementptr inbounds [32 x i32], ptr %num_pages, i64 0, i64 0
  %14 = load i32, ptr %arrayidx20, align 8, !tbaa !8
  %cmp21 = icmp ult i32 %12, %14
  br i1 %cmp21, label %for.body23, label %for.end131

for.body23:                                       ; preds = %for.cond19
  call void @llvm.lifetime.start.p0(i64 8, ptr %hf) #13
  %15 = load ptr, ptr %hugepg_tbl.addr, align 8, !tbaa !4
  %16 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom24 = zext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds %struct.hugepage_file, ptr %15, i64 %idxprom24
  store ptr %arrayidx25, ptr %hf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hugepage_sz) #13
  %17 = load ptr, ptr %hpi.addr, align 8, !tbaa !4
  %hugepage_sz26 = getelementptr inbounds %struct.hugepage_info, ptr %17, i32 0, i32 0
  %18 = load i64, ptr %hugepage_sz26, align 8, !tbaa !30
  store i64 %18, ptr %hugepage_sz, align 8, !tbaa !10
  %19 = load i64, ptr %maxnode, align 8, !tbaa !10
  %tobool27 = icmp ne i64 %19, 0
  br i1 %tobool27, label %if.then28, label %if.end73

if.then28:                                        ; preds = %for.body23
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #13
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc39, %if.then28
  %20 = load i32, ptr %j, align 4, !tbaa !8
  %conv30 = zext i32 %20 to i64
  %21 = load i64, ptr %maxnode, align 8, !tbaa !10
  %cmp31 = icmp ult i64 %conv30, %21
  br i1 %cmp31, label %for.body33, label %for.end41

for.body33:                                       ; preds = %for.cond29
  %22 = load ptr, ptr %essential_memory.addr, align 8, !tbaa !4
  %23 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom34 = zext i32 %23 to i64
  %arrayidx35 = getelementptr inbounds i64, ptr %22, i64 %idxprom34
  %24 = load i64, ptr %arrayidx35, align 8, !tbaa !10
  %tobool36 = icmp ne i64 %24, 0
  br i1 %tobool36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %for.body33
  br label %for.end41

if.end38:                                         ; preds = %for.body33
  br label %for.inc39

for.inc39:                                        ; preds = %if.end38
  %25 = load i32, ptr %j, align 4, !tbaa !8
  %inc40 = add i32 %25, 1
  store i32 %inc40, ptr %j, align 4, !tbaa !8
  br label %for.cond29, !llvm.loop !72

for.end41:                                        ; preds = %if.then37, %for.cond29
  %26 = load i32, ptr %j, align 4, !tbaa !8
  %conv42 = zext i32 %26 to i64
  %27 = load i64, ptr %maxnode, align 8, !tbaa !10
  %cmp43 = icmp eq i64 %conv42, %27
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %for.end41
  %28 = load i32, ptr %node_id, align 4, !tbaa !8
  %add46 = add nsw i32 %28, 1
  %conv47 = sext i32 %add46 to i64
  %29 = load i64, ptr %maxnode, align 8, !tbaa !10
  %rem = urem i64 %conv47, %29
  %conv48 = trunc i64 %rem to i32
  store i32 %conv48, ptr %node_id, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then45
  %30 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %socket_mem49 = getelementptr inbounds %struct.internal_config, ptr %30, i32 0, i32 13
  %31 = load i32, ptr %node_id, align 4, !tbaa !8
  %idxprom50 = sext i32 %31 to i64
  %arrayidx51 = getelementptr inbounds [32 x i64], ptr %socket_mem49, i64 0, i64 %idxprom50
  %32 = load volatile i64, ptr %arrayidx51, align 8, !tbaa !10
  %tobool52 = icmp ne i64 %32, 0
  %lnot = xor i1 %tobool52, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load i32, ptr %node_id, align 4, !tbaa !8
  %inc53 = add nsw i32 %33, 1
  store i32 %inc53, ptr %node_id, align 4, !tbaa !8
  %34 = load i64, ptr %maxnode, align 8, !tbaa !10
  %35 = load i32, ptr %node_id, align 4, !tbaa !8
  %conv54 = sext i32 %35 to i64
  %rem55 = urem i64 %conv54, %34
  %conv56 = trunc i64 %rem55 to i32
  store i32 %conv56, ptr %node_id, align 4, !tbaa !8
  br label %while.cond, !llvm.loop !73

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %essential_prev, align 4, !tbaa !8
  br label %if.end71

if.else:                                          ; preds = %for.end41
  %36 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %36, ptr %node_id, align 4, !tbaa !8
  %37 = load ptr, ptr %essential_memory.addr, align 8, !tbaa !4
  %38 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom57 = zext i32 %38 to i64
  %arrayidx58 = getelementptr inbounds i64, ptr %37, i64 %idxprom57
  %39 = load i64, ptr %arrayidx58, align 8, !tbaa !10
  %conv59 = trunc i64 %39 to i32
  store i32 %conv59, ptr %essential_prev, align 4, !tbaa !8
  %40 = load ptr, ptr %essential_memory.addr, align 8, !tbaa !4
  %41 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom60 = zext i32 %41 to i64
  %arrayidx61 = getelementptr inbounds i64, ptr %40, i64 %idxprom60
  %42 = load i64, ptr %arrayidx61, align 8, !tbaa !10
  %43 = load i64, ptr %hugepage_sz, align 8, !tbaa !10
  %cmp62 = icmp ult i64 %42, %43
  br i1 %cmp62, label %if.then64, label %if.else67

if.then64:                                        ; preds = %if.else
  %44 = load ptr, ptr %essential_memory.addr, align 8, !tbaa !4
  %45 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom65 = zext i32 %45 to i64
  %arrayidx66 = getelementptr inbounds i64, ptr %44, i64 %idxprom65
  store i64 0, ptr %arrayidx66, align 8, !tbaa !10
  br label %if.end70

if.else67:                                        ; preds = %if.else
  %46 = load i64, ptr %hugepage_sz, align 8, !tbaa !10
  %47 = load ptr, ptr %essential_memory.addr, align 8, !tbaa !4
  %48 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom68 = zext i32 %48 to i64
  %arrayidx69 = getelementptr inbounds i64, ptr %47, i64 %idxprom68
  %49 = load i64, ptr %arrayidx69, align 8, !tbaa !10
  %sub = sub i64 %49, %46
  store i64 %sub, ptr %arrayidx69, align 8, !tbaa !10
  br label %if.end70

if.end70:                                         ; preds = %if.else67, %if.then64
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %while.end
  %50 = load i32, ptr %node_id, align 4, !tbaa !8
  %call72 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.33, i32 noundef %50)
  %51 = load i32, ptr %node_id, align 4, !tbaa !8
  call void @numa_set_preferred(i32 noundef %51)
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #13
  br label %if.end73

if.end73:                                         ; preds = %if.end71, %for.body23
  %52 = load i32, ptr %i, align 4, !tbaa !8
  %53 = load ptr, ptr %hf, align 8, !tbaa !4
  %file_id = getelementptr inbounds %struct.hugepage_file, ptr %53, i32 0, i32 5
  store i32 %52, ptr %file_id, align 4, !tbaa !74
  %54 = load i64, ptr %hugepage_sz, align 8, !tbaa !10
  %55 = load ptr, ptr %hf, align 8, !tbaa !4
  %size74 = getelementptr inbounds %struct.hugepage_file, ptr %55, i32 0, i32 3
  store i64 %54, ptr %size74, align 8, !tbaa !41
  %56 = load ptr, ptr %hf, align 8, !tbaa !4
  %filepath = getelementptr inbounds %struct.hugepage_file, ptr %56, i32 0, i32 6
  %arraydecay = getelementptr inbounds [4096 x i8], ptr %filepath, i64 0, i64 0
  %57 = load ptr, ptr %hpi.addr, align 8, !tbaa !4
  %hugedir = getelementptr inbounds %struct.hugepage_info, ptr %57, i32 0, i32 1
  %arraydecay75 = getelementptr inbounds [4096 x i8], ptr %hugedir, i64 0, i64 0
  %58 = load ptr, ptr %hf, align 8, !tbaa !4
  %file_id76 = getelementptr inbounds %struct.hugepage_file, ptr %58, i32 0, i32 5
  %59 = load i32, ptr %file_id76, align 4, !tbaa !74
  %call77 = call ptr @eal_get_hugefile_path(ptr noundef %arraydecay, i64 noundef 4096, ptr noundef %arraydecay75, i32 noundef %59)
  %60 = load ptr, ptr %hf, align 8, !tbaa !4
  %filepath78 = getelementptr inbounds %struct.hugepage_file, ptr %60, i32 0, i32 6
  %arrayidx79 = getelementptr inbounds [4096 x i8], ptr %filepath78, i64 0, i64 4095
  store i8 0, ptr %arrayidx79, align 1, !tbaa !24
  %61 = load ptr, ptr %hf, align 8, !tbaa !4
  %filepath80 = getelementptr inbounds %struct.hugepage_file, ptr %61, i32 0, i32 6
  %arraydecay81 = getelementptr inbounds [4096 x i8], ptr %filepath80, i64 0, i64 0
  %call82 = call i32 (ptr, i32, ...) @open64(ptr noundef %arraydecay81, i32 noundef 66, i32 noundef 384)
  store i32 %call82, ptr %fd, align 4, !tbaa !8
  %62 = load i32, ptr %fd, align 4, !tbaa !8
  %cmp83 = icmp slt i32 %62, 0
  br i1 %cmp83, label %if.then85, label %if.end89

if.then85:                                        ; preds = %if.end73
  %call86 = call ptr @__errno_location() #14
  %63 = load i32, ptr %call86, align 4, !tbaa !8
  %call87 = call ptr @strerror(i32 noundef %63) #13
  %call88 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.34, ptr noundef @__func__.map_all_hugepages, ptr noundef %call87)
  store i32 13, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end89:                                         ; preds = %if.end73
  %64 = load i64, ptr %hugepage_sz, align 8, !tbaa !10
  %65 = load i32, ptr %fd, align 4, !tbaa !8
  %call90 = call ptr @mmap64(ptr noundef null, i64 noundef %64, i32 noundef 3, i32 noundef 32769, i32 noundef %65, i64 noundef 0) #13
  store ptr %call90, ptr %virtaddr, align 8, !tbaa !4
  %66 = load ptr, ptr %virtaddr, align 8, !tbaa !4
  %cmp91 = icmp eq ptr %66, inttoptr (i64 -1 to ptr)
  br i1 %cmp91, label %if.then93, label %if.end98

if.then93:                                        ; preds = %if.end89
  %call94 = call ptr @__errno_location() #14
  %67 = load i32, ptr %call94, align 4, !tbaa !8
  %call95 = call ptr @strerror(i32 noundef %67) #13
  %call96 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.35, ptr noundef @__func__.map_all_hugepages, ptr noundef %call95)
  %68 = load i32, ptr %fd, align 4, !tbaa !8
  %call97 = call i32 @close(i32 noundef %68)
  store i32 13, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end98:                                         ; preds = %if.end89
  %69 = load ptr, ptr %virtaddr, align 8, !tbaa !4
  %70 = load ptr, ptr %hf, align 8, !tbaa !4
  %orig_va = getelementptr inbounds %struct.hugepage_file, ptr %70, i32 0, i32 0
  store ptr %69, ptr %orig_va, align 8, !tbaa !75
  %call99 = call i32 @huge_wrap_sigsetjmp()
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.then101, label %if.end117

if.then101:                                       ; preds = %if.end98
  %71 = load i64, ptr %hugepage_sz, align 8, !tbaa !10
  %div = udiv i64 %71, 1048576
  %conv102 = trunc i64 %div to i32
  %call103 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.36, i32 noundef %conv102)
  %72 = load ptr, ptr %virtaddr, align 8, !tbaa !4
  %73 = load i64, ptr %hugepage_sz, align 8, !tbaa !10
  %call104 = call i32 @munmap(ptr noundef %72, i64 noundef %73) #13
  %74 = load i32, ptr %fd, align 4, !tbaa !8
  %call105 = call i32 @close(i32 noundef %74)
  %75 = load ptr, ptr %hugepg_tbl.addr, align 8, !tbaa !4
  %76 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom106 = zext i32 %76 to i64
  %arrayidx107 = getelementptr inbounds %struct.hugepage_file, ptr %75, i64 %idxprom106
  %filepath108 = getelementptr inbounds %struct.hugepage_file, ptr %arrayidx107, i32 0, i32 6
  %arraydecay109 = getelementptr inbounds [4096 x i8], ptr %filepath108, i64 0, i64 0
  %call110 = call i32 @unlink(ptr noundef %arraydecay109) #13
  %77 = load i64, ptr %maxnode, align 8, !tbaa !10
  %tobool111 = icmp ne i64 %77, 0
  br i1 %tobool111, label %if.then112, label %if.end116

if.then112:                                       ; preds = %if.then101
  %78 = load i32, ptr %essential_prev, align 4, !tbaa !8
  %conv113 = sext i32 %78 to i64
  %79 = load ptr, ptr %essential_memory.addr, align 8, !tbaa !4
  %80 = load i32, ptr %node_id, align 4, !tbaa !8
  %idxprom114 = sext i32 %80 to i64
  %arrayidx115 = getelementptr inbounds i64, ptr %79, i64 %idxprom114
  store i64 %conv113, ptr %arrayidx115, align 8, !tbaa !10
  br label %if.end116

if.end116:                                        ; preds = %if.then112, %if.then101
  store i32 13, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end117:                                        ; preds = %if.end98
  %81 = load ptr, ptr %virtaddr, align 8, !tbaa !4
  store i32 0, ptr %81, align 4, !tbaa !8
  %82 = load i32, ptr %fd, align 4, !tbaa !8
  %call118 = call i32 @flock(i32 noundef %82, i32 noundef 1) #13
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %if.then121, label %if.end126

if.then121:                                       ; preds = %if.end117
  %call122 = call ptr @__errno_location() #14
  %83 = load i32, ptr %call122, align 4, !tbaa !8
  %call123 = call ptr @strerror(i32 noundef %83) #13
  %call124 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.37, ptr noundef @__func__.map_all_hugepages, ptr noundef %call123)
  %84 = load i32, ptr %fd, align 4, !tbaa !8
  %call125 = call i32 @close(i32 noundef %84)
  store i32 13, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end126:                                        ; preds = %if.end117
  %85 = load i32, ptr %fd, align 4, !tbaa !8
  %call127 = call i32 @close(i32 noundef %85)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then121, %if.end116, %if.then93, %if.then85, %if.end126
  call void @llvm.lifetime.end.p0(i64 8, ptr %hugepage_sz) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %hf) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup156 [
    i32 0, label %cleanup.cont
    i32 13, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc129

for.inc129:                                       ; preds = %cleanup.cont
  %86 = load i32, ptr %i, align 4, !tbaa !8
  %inc130 = add i32 %86, 1
  store i32 %inc130, ptr %i, align 4, !tbaa !8
  br label %for.cond19, !llvm.loop !76

for.end131:                                       ; preds = %for.cond19
  br label %out

out:                                              ; preds = %for.end131, %cleanup
  %87 = load i64, ptr %maxnode, align 8, !tbaa !10
  %tobool132 = icmp ne i64 %87, 0
  br i1 %tobool132, label %if.then133, label %if.end151

if.then133:                                       ; preds = %out
  %88 = load i32, ptr %oldpolicy, align 4, !tbaa !8
  %call134 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.38, i32 noundef %88)
  %89 = load i32, ptr %oldpolicy, align 4, !tbaa !8
  %cmp135 = icmp eq i32 %89, 0
  br i1 %cmp135, label %if.then137, label %if.else138

if.then137:                                       ; preds = %if.then133
  call void @numa_set_localalloc()
  br label %if.end150

if.else138:                                       ; preds = %if.then133
  %90 = load i32, ptr %oldpolicy, align 4, !tbaa !8
  %91 = load ptr, ptr %oldmask, align 8, !tbaa !4
  %maskp139 = getelementptr inbounds %struct.bitmask, ptr %91, i32 0, i32 1
  %92 = load ptr, ptr %maskp139, align 8, !tbaa !68
  %93 = load ptr, ptr %oldmask, align 8, !tbaa !4
  %size140 = getelementptr inbounds %struct.bitmask, ptr %93, i32 0, i32 0
  %94 = load i64, ptr %size140, align 8, !tbaa !70
  %add141 = add i64 %94, 1
  %call142 = call i64 @set_mempolicy(i32 noundef %90, ptr noundef %92, i64 noundef %add141)
  %cmp143 = icmp slt i64 %call142, 0
  br i1 %cmp143, label %if.then145, label %if.end149

if.then145:                                       ; preds = %if.else138
  %call146 = call ptr @__errno_location() #14
  %95 = load i32, ptr %call146, align 4, !tbaa !8
  %call147 = call ptr @strerror(i32 noundef %95) #13
  %call148 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.39, ptr noundef %call147)
  call void @numa_set_localalloc()
  br label %if.end149

if.end149:                                        ; preds = %if.then145, %if.else138
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %if.then137
  br label %if.end151

if.end151:                                        ; preds = %if.end150, %out
  %96 = load ptr, ptr %oldmask, align 8, !tbaa !4
  %cmp152 = icmp ne ptr %96, null
  br i1 %cmp152, label %if.then154, label %if.end155

if.then154:                                       ; preds = %if.end151
  %97 = load ptr, ptr %oldmask, align 8, !tbaa !4
  call void @numa_free_cpumask(ptr noundef %97)
  br label %if.end155

if.end155:                                        ; preds = %if.then154, %if.end151
  %98 = load i32, ptr %i, align 4, !tbaa !8
  store i32 %98, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup156

cleanup156:                                       ; preds = %if.end155, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %internal_conf) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxnode) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr %have_numa) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldmask) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldpolicy) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %essential_prev) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %node_id) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %virtaddr) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #13
  %99 = load i32, ptr %retval, align 4
  ret i32 %99
}

; Function Attrs: nounwind uwtable
define internal i32 @find_physaddrs(ptr noundef %hugepg_tbl, ptr noundef %hpi) #0 {
entry:
  %retval = alloca i32, align 4
  %hugepg_tbl.addr = alloca ptr, align 8
  %hpi.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %addr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hugepg_tbl, ptr %hugepg_tbl.addr, align 8, !tbaa !4
  store ptr %hpi, ptr %hpi.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #13
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !8
  %1 = load ptr, ptr %hpi.addr, align 8, !tbaa !4
  %num_pages = getelementptr inbounds %struct.hugepage_info, ptr %1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [32 x i32], ptr %num_pages, i64 0, i64 0
  %2 = load i32, ptr %arrayidx, align 8, !tbaa !8
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %hugepg_tbl.addr, align 8, !tbaa !4
  %4 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %4 to i64
  %arrayidx1 = getelementptr inbounds %struct.hugepage_file, ptr %3, i64 %idxprom
  %orig_va = getelementptr inbounds %struct.hugepage_file, ptr %arrayidx1, i32 0, i32 0
  %5 = load ptr, ptr %orig_va, align 8, !tbaa !75
  %call = call i64 @rte_mem_virt2phy(ptr noundef %5)
  store i64 %call, ptr %addr, align 8, !tbaa !10
  %6 = load i64, ptr %addr, align 8, !tbaa !10
  %cmp2 = icmp eq i64 %6, -1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  %7 = load i64, ptr %addr, align 8, !tbaa !10
  %8 = load ptr, ptr %hugepg_tbl.addr, align 8, !tbaa !4
  %9 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom3 = zext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds %struct.hugepage_file, ptr %8, i64 %idxprom3
  %physaddr = getelementptr inbounds %struct.hugepage_file, ptr %arrayidx4, i32 0, i32 2
  store i64 %7, ptr %physaddr, align 8, !tbaa !77
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add i32 %10, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !78

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @set_physaddrs(ptr noundef %hugepg_tbl, ptr noundef %hpi) #0 {
entry:
  %hugepg_tbl.addr = alloca ptr, align 8
  %hpi.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %hugepg_tbl, ptr %hugepg_tbl.addr, align 8, !tbaa !4
  store ptr %hpi, ptr %hpi.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !8
  %1 = load ptr, ptr %hpi.addr, align 8, !tbaa !4
  %num_pages = getelementptr inbounds %struct.hugepage_info, ptr %1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [32 x i32], ptr %num_pages, i64 0, i64 0
  %2 = load i32, ptr %arrayidx, align 8, !tbaa !8
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr @set_physaddrs.addr, align 8, !tbaa !10
  %4 = load ptr, ptr %hugepg_tbl.addr, align 8, !tbaa !4
  %5 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %5 to i64
  %arrayidx1 = getelementptr inbounds %struct.hugepage_file, ptr %4, i64 %idxprom
  %physaddr = getelementptr inbounds %struct.hugepage_file, ptr %arrayidx1, i32 0, i32 2
  store i64 %3, ptr %physaddr, align 8, !tbaa !77
  %6 = load ptr, ptr %hugepg_tbl.addr, align 8, !tbaa !4
  %7 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom2 = zext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds %struct.hugepage_file, ptr %6, i64 %idxprom2
  %size = getelementptr inbounds %struct.hugepage_file, ptr %arrayidx3, i32 0, i32 3
  %8 = load i64, ptr %size, align 8, !tbaa !41
  %9 = load i64, ptr @set_physaddrs.addr, align 8, !tbaa !10
  %add = add i64 %9, %8
  store i64 %add, ptr @set_physaddrs.addr, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add i32 %10, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @find_numasocket(ptr noundef %hugepg_tbl, ptr noundef %hpi) #0 {
entry:
  %retval = alloca i32, align 4
  %hugepg_tbl.addr = alloca ptr, align 8
  %hpi.addr = alloca ptr, align 8
  %socket_id = alloca i32, align 4
  %end = alloca ptr, align 8
  %nodestr = alloca ptr, align 8
  %i = alloca i32, align 4
  %hp_count = alloca i32, align 4
  %virt_addr = alloca i64, align 8
  %buf = alloca [8192 x i8], align 16
  %hugedir_str = alloca [4096 x i8], align 16
  %f = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %va = alloca ptr, align 8
  store ptr %hugepg_tbl, ptr %hugepg_tbl.addr, align 8, !tbaa !4
  store ptr %hpi, ptr %hpi.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %socket_id) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %nodestr) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %hp_count) #13
  store i32 0, ptr %hp_count, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %virt_addr) #13
  call void @llvm.lifetime.start.p0(i64 8192, ptr %buf) #13
  call void @llvm.lifetime.start.p0(i64 4096, ptr %hugedir_str) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #13
  %call = call noalias ptr @fopen64(ptr noundef @.str.41, ptr noundef @.str.42)
  store ptr %call, ptr %f, align 8, !tbaa !4
  %0 = load ptr, ptr %f, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 6, i32 noundef 0, ptr noundef @.str.43)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [4096 x i8], ptr %hugedir_str, i64 0, i64 0
  %1 = load ptr, ptr %hpi.addr, align 8, !tbaa !4
  %hugedir = getelementptr inbounds %struct.hugepage_info, ptr %1, i32 0, i32 1
  %arraydecay2 = getelementptr inbounds [4096 x i8], ptr %hugedir, i64 0, i64 0
  %call3 = call ptr @eal_get_hugefile_prefix()
  %call4 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 4096, ptr noundef @.str.44, ptr noundef %arraydecay2, ptr noundef %call3) #13
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.then15, %if.end
  %arraydecay5 = getelementptr inbounds [8192 x i8], ptr %buf, i64 0, i64 0
  %2 = load ptr, ptr %f, align 8, !tbaa !4
  %call6 = call ptr @fgets(ptr noundef %arraydecay5, i32 noundef 8192, ptr noundef %2)
  %cmp7 = icmp ne ptr %call6, null
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay8 = getelementptr inbounds [8192 x i8], ptr %buf, i64 0, i64 0
  %call9 = call ptr @strstr(ptr noundef %arraydecay8, ptr noundef @.str.45) #16
  %cmp10 = icmp eq ptr %call9, null
  br i1 %cmp10, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %while.body
  %arraydecay11 = getelementptr inbounds [8192 x i8], ptr %buf, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [4096 x i8], ptr %hugedir_str, i64 0, i64 0
  %call13 = call ptr @strstr(ptr noundef %arraydecay11, ptr noundef %arraydecay12) #16
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true
  br label %while.cond, !llvm.loop !80

if.end16:                                         ; preds = %land.lhs.true, %while.body
  %arraydecay17 = getelementptr inbounds [8192 x i8], ptr %buf, i64 0, i64 0
  %call18 = call i64 @strtoull(ptr noundef %arraydecay17, ptr noundef %end, i32 noundef 16) #13
  store i64 %call18, ptr %virt_addr, align 8, !tbaa !10
  %3 = load i64, ptr %virt_addr, align 8, !tbaa !10
  %cmp19 = icmp eq i64 %3, 0
  br i1 %cmp19, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end16
  %4 = load ptr, ptr %end, align 8, !tbaa !4
  %arraydecay20 = getelementptr inbounds [8192 x i8], ptr %buf, i64 0, i64 0
  %cmp21 = icmp eq ptr %4, %arraydecay20
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %lor.lhs.false, %if.end16
  %call23 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.46, ptr noundef @__func__.find_numasocket)
  br label %error

if.end24:                                         ; preds = %lor.lhs.false
  %arraydecay25 = getelementptr inbounds [8192 x i8], ptr %buf, i64 0, i64 0
  %call26 = call ptr @strstr(ptr noundef %arraydecay25, ptr noundef @.str.47) #16
  store ptr %call26, ptr %nodestr, align 8, !tbaa !4
  %5 = load ptr, ptr %nodestr, align 8, !tbaa !4
  %cmp27 = icmp eq ptr %5, null
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end24
  %call29 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.46, ptr noundef @__func__.find_numasocket)
  br label %error

if.end30:                                         ; preds = %if.end24
  %6 = load ptr, ptr %nodestr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 2
  store ptr %add.ptr, ptr %nodestr, align 8, !tbaa !4
  %7 = load ptr, ptr %nodestr, align 8, !tbaa !4
  %call31 = call ptr @strstr(ptr noundef %7, ptr noundef @.str.48) #16
  store ptr %call31, ptr %end, align 8, !tbaa !4
  %8 = load ptr, ptr %end, align 8, !tbaa !4
  %cmp32 = icmp eq ptr %8, null
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end30
  %call34 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.46, ptr noundef @__func__.find_numasocket)
  br label %error

if.end35:                                         ; preds = %if.end30
  %9 = load ptr, ptr %end, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 0
  store i8 0, ptr %arrayidx, align 1, !tbaa !24
  store ptr null, ptr %end, align 8, !tbaa !4
  %10 = load ptr, ptr %nodestr, align 8, !tbaa !4
  %call36 = call i64 @strtoul(ptr noundef %10, ptr noundef %end, i32 noundef 0) #13
  %conv = trunc i64 %call36 to i32
  store i32 %conv, ptr %socket_id, align 4, !tbaa !8
  %11 = load ptr, ptr %nodestr, align 8, !tbaa !4
  %arrayidx37 = getelementptr inbounds i8, ptr %11, i64 0
  %12 = load i8, ptr %arrayidx37, align 1, !tbaa !24
  %conv38 = sext i8 %12 to i32
  %cmp39 = icmp eq i32 %conv38, 0
  br i1 %cmp39, label %if.then48, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %if.end35
  %13 = load ptr, ptr %end, align 8, !tbaa !4
  %cmp42 = icmp eq ptr %13, null
  br i1 %cmp42, label %if.then48, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false41
  %14 = load ptr, ptr %end, align 8, !tbaa !4
  %15 = load i8, ptr %14, align 1, !tbaa !24
  %conv45 = sext i8 %15 to i32
  %cmp46 = icmp ne i32 %conv45, 0
  br i1 %cmp46, label %if.then48, label %if.end50

if.then48:                                        ; preds = %lor.lhs.false44, %lor.lhs.false41, %if.end35
  %call49 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.46, ptr noundef @__func__.find_numasocket)
  br label %error

if.end50:                                         ; preds = %lor.lhs.false44
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end50
  %16 = load i32, ptr %i, align 4, !tbaa !8
  %17 = load ptr, ptr %hpi.addr, align 8, !tbaa !4
  %num_pages = getelementptr inbounds %struct.hugepage_info, ptr %17, i32 0, i32 2
  %arrayidx51 = getelementptr inbounds [32 x i32], ptr %num_pages, i64 0, i64 0
  %18 = load i32, ptr %arrayidx51, align 8, !tbaa !8
  %cmp52 = icmp ult i32 %16, %18
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %va) #13
  %19 = load i64, ptr %virt_addr, align 8, !tbaa !10
  %20 = inttoptr i64 %19 to ptr
  store ptr %20, ptr %va, align 8, !tbaa !4
  %21 = load ptr, ptr %hugepg_tbl.addr, align 8, !tbaa !4
  %22 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %22 to i64
  %arrayidx54 = getelementptr inbounds %struct.hugepage_file, ptr %21, i64 %idxprom
  %orig_va = getelementptr inbounds %struct.hugepage_file, ptr %arrayidx54, i32 0, i32 0
  %23 = load ptr, ptr %orig_va, align 8, !tbaa !75
  %24 = load ptr, ptr %va, align 8, !tbaa !4
  %cmp55 = icmp eq ptr %23, %24
  br i1 %cmp55, label %if.then57, label %if.end65

if.then57:                                        ; preds = %for.body
  %25 = load i32, ptr %socket_id, align 4, !tbaa !8
  %26 = load ptr, ptr %hugepg_tbl.addr, align 8, !tbaa !4
  %27 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom58 = zext i32 %27 to i64
  %arrayidx59 = getelementptr inbounds %struct.hugepage_file, ptr %26, i64 %idxprom58
  %socket_id60 = getelementptr inbounds %struct.hugepage_file, ptr %arrayidx59, i32 0, i32 4
  store i32 %25, ptr %socket_id60, align 8, !tbaa !39
  %28 = load i32, ptr %hp_count, align 4, !tbaa !8
  %inc = add i32 %28, 1
  store i32 %inc, ptr %hp_count, align 4, !tbaa !8
  %29 = load ptr, ptr %hugepg_tbl.addr, align 8, !tbaa !4
  %30 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom61 = zext i32 %30 to i64
  %arrayidx62 = getelementptr inbounds %struct.hugepage_file, ptr %29, i64 %idxprom61
  %filepath = getelementptr inbounds %struct.hugepage_file, ptr %arrayidx62, i32 0, i32 6
  %arraydecay63 = getelementptr inbounds [4096 x i8], ptr %filepath, i64 0, i64 0
  %31 = load i32, ptr %socket_id, align 4, !tbaa !8
  %call64 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.49, ptr noundef %arraydecay63, i32 noundef %31)
  br label %if.end65

if.end65:                                         ; preds = %if.then57, %for.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %va) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end65
  %32 = load i32, ptr %i, align 4, !tbaa !8
  %inc66 = add i32 %32, 1
  store i32 %inc66, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  br label %while.cond, !llvm.loop !80

while.end:                                        ; preds = %while.cond
  %33 = load i32, ptr %hp_count, align 4, !tbaa !8
  %34 = load ptr, ptr %hpi.addr, align 8, !tbaa !4
  %num_pages67 = getelementptr inbounds %struct.hugepage_info, ptr %34, i32 0, i32 2
  %arrayidx68 = getelementptr inbounds [32 x i32], ptr %num_pages67, i64 0, i64 0
  %35 = load i32, ptr %arrayidx68, align 8, !tbaa !8
  %cmp69 = icmp ult i32 %33, %35
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %while.end
  br label %error

if.end72:                                         ; preds = %while.end
  %36 = load ptr, ptr %f, align 8, !tbaa !4
  %call73 = call i32 @fclose(ptr noundef %36)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

error:                                            ; preds = %if.then71, %if.then48, %if.then33, %if.then28, %if.then22
  %37 = load ptr, ptr %f, align 8, !tbaa !4
  %call74 = call i32 @fclose(ptr noundef %37)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end72, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #13
  call void @llvm.lifetime.end.p0(i64 4096, ptr %hugedir_str) #13
  call void @llvm.lifetime.end.p0(i64 8192, ptr %buf) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %virt_addr) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %hp_count) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %nodestr) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %socket_id) #13
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @cmp_physaddr(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %p1 = alloca ptr, align 8
  %p2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p1) #13
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %p1, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p2) #13
  %1 = load ptr, ptr %b.addr, align 8, !tbaa !4
  store ptr %1, ptr %p2, align 8, !tbaa !4
  %2 = load ptr, ptr %p1, align 8, !tbaa !4
  %physaddr = getelementptr inbounds %struct.hugepage_file, ptr %2, i32 0, i32 2
  %3 = load i64, ptr %physaddr, align 8, !tbaa !77
  %4 = load ptr, ptr %p2, align 8, !tbaa !4
  %physaddr1 = getelementptr inbounds %struct.hugepage_file, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %physaddr1, align 8, !tbaa !77
  %cmp = icmp ult i64 %3, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %p1, align 8, !tbaa !4
  %physaddr2 = getelementptr inbounds %struct.hugepage_file, ptr %6, i32 0, i32 2
  %7 = load i64, ptr %physaddr2, align 8, !tbaa !77
  %8 = load ptr, ptr %p2, align 8, !tbaa !4
  %physaddr3 = getelementptr inbounds %struct.hugepage_file, ptr %8, i32 0, i32 2
  %9 = load i64, ptr %physaddr3, align 8, !tbaa !77
  %cmp4 = icmp ugt i64 %7, %9
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else6:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p2) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %p1) #13
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal void @huge_recover_sigbus() #0 {
entry:
  %0 = load i32, ptr @huge_need_recover, align 4, !tbaa !8
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @sigaction(i32 noundef 7, ptr noundef @huge_action_old, ptr noundef null) #13
  store i32 0, ptr @huge_need_recover, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @eal_get_hugepage_mem_size() #7 {
entry:
  %size = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %internal_conf = alloca ptr, align 8
  %hpi = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #13
  store i64 0, ptr %size, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %internal_conf) #13
  %call = call ptr @eal_get_internal_configuration()
  store ptr %call, ptr %internal_conf, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !8
  %1 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %num_hugepage_sizes = getelementptr inbounds %struct.internal_config, ptr %1, i32 0, i32 26
  %2 = load i32, ptr %num_hugepage_sizes, align 8, !tbaa !29
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %hpi) #13
  %3 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %hugepage_info = getelementptr inbounds %struct.internal_config, ptr %3, i32 0, i32 27
  %4 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.hugepage_info], ptr %hugepage_info, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %hpi, align 8, !tbaa !4
  %5 = load ptr, ptr %hpi, align 8, !tbaa !4
  %hugedir = getelementptr inbounds %struct.hugepage_info, ptr %5, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4096 x i8], ptr %hugedir, i64 0, i64 0
  %call1 = call i64 @strnlen(ptr noundef %arraydecay, i64 noundef 4096) #16
  %cmp2 = icmp ne i64 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %if.then
  %6 = load i32, ptr %j, align 4, !tbaa !8
  %cmp4 = icmp ult i32 %6, 32
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %7 = load ptr, ptr %hpi, align 8, !tbaa !4
  %hugepage_sz = getelementptr inbounds %struct.hugepage_info, ptr %7, i32 0, i32 0
  %8 = load i64, ptr %hugepage_sz, align 8, !tbaa !30
  %9 = load ptr, ptr %hpi, align 8, !tbaa !4
  %num_pages = getelementptr inbounds %struct.hugepage_info, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom6 = zext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [32 x i32], ptr %num_pages, i64 0, i64 %idxprom6
  %11 = load i32, ptr %arrayidx7, align 4, !tbaa !8
  %conv = zext i32 %11 to i64
  %mul = mul i64 %8, %conv
  %12 = load i64, ptr %size, align 8, !tbaa !10
  %add = add i64 %12, %mul
  store i64 %add, ptr %size, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %13 = load i32, ptr %j, align 4, !tbaa !8
  %inc = add i32 %13, 1
  store i32 %inc, ptr %j, align 4, !tbaa !8
  br label %for.cond3, !llvm.loop !82

for.end:                                          ; preds = %for.cond3
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %hpi) #13
  br label %for.inc8

for.inc8:                                         ; preds = %if.end
  %14 = load i32, ptr %i, align 4, !tbaa !8
  %inc9 = add i32 %14, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !83

for.end10:                                        ; preds = %for.cond
  %15 = load i64, ptr %size, align 8, !tbaa !10
  %cmp11 = icmp ult i64 %15, -1
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end10
  %16 = load i64, ptr %size, align 8, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %for.end10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ -1, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %internal_conf) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #13
  ret i64 %cond
}

declare i32 @eal_dynmem_calc_num_pages_per_socket(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @create_shared_memory(ptr noundef %filename, i64 noundef %mem_size) #0 {
entry:
  %retval = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %mem_size.addr = alloca i64, align 8
  %retval1 = alloca ptr, align 8
  %fd = alloca i32, align 4
  %internal_conf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !4
  store i64 %mem_size, ptr %mem_size.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval1) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %internal_conf) #13
  %call = call ptr @eal_get_internal_configuration()
  store ptr %call, ptr %internal_conf, align 8, !tbaa !4
  %0 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %no_shconf = getelementptr inbounds %struct.internal_config, ptr %0, i32 0, i32 8
  %1 = load volatile i32, ptr %no_shconf, align 4, !tbaa !84
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %mem_size.addr, align 8, !tbaa !10
  %call2 = call ptr @mmap64(ptr noundef null, i64 noundef %2, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #13
  store ptr %call2, ptr %retval1, align 8, !tbaa !4
  %3 = load ptr, ptr %retval1, align 8, !tbaa !4
  %cmp = icmp eq ptr %3, inttoptr (i64 -1 to ptr)
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %retval1, align 8, !tbaa !4
  store ptr %4, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %5 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %call5 = call i32 (ptr, i32, ...) @open64(ptr noundef %5, i32 noundef 66, i32 noundef 384)
  store i32 %call5, ptr %fd, align 4, !tbaa !8
  %6 = load i32, ptr %fd, align 4, !tbaa !8
  %cmp6 = icmp slt i32 %6, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %7 = load i32, ptr %fd, align 4, !tbaa !8
  %8 = load i64, ptr %mem_size.addr, align 8, !tbaa !10
  %call9 = call i32 @ftruncate64(i32 noundef %7, i64 noundef %8) #13
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  %9 = load i32, ptr %fd, align 4, !tbaa !8
  %call12 = call i32 @close(i32 noundef %9)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %10 = load i64, ptr %mem_size.addr, align 8, !tbaa !10
  %11 = load i32, ptr %fd, align 4, !tbaa !8
  %call14 = call ptr @mmap64(ptr noundef null, i64 noundef %10, i32 noundef 3, i32 noundef 1, i32 noundef %11, i64 noundef 0) #13
  store ptr %call14, ptr %retval1, align 8, !tbaa !4
  %12 = load i32, ptr %fd, align 4, !tbaa !8
  %call15 = call i32 @close(i32 noundef %12)
  %13 = load ptr, ptr %retval1, align 8, !tbaa !4
  %cmp16 = icmp eq ptr %13, inttoptr (i64 -1 to ptr)
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %14 = load ptr, ptr %retval1, align 8, !tbaa !4
  store ptr %14, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then17, %if.then11, %if.then7, %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %internal_conf) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval1) #13
  %15 = load ptr, ptr %retval, align 8
  ret ptr %15
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @eal_hugepage_data_path() #7 {
entry:
  %call = call ptr @rte_eal_get_runtime_dir()
  %call1 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @eal_hugepage_data_path.buffer, i64 noundef 4096, ptr noundef @.str.44, ptr noundef %call, ptr noundef @.str.50) #13
  ret ptr @eal_hugepage_data_path.buffer
}

; Function Attrs: nounwind uwtable
define internal i32 @unmap_unneeded_hugepages(ptr noundef %hugepg_tbl, ptr noundef %hpi, i32 noundef %num_hp_info) #0 {
entry:
  %retval = alloca i32, align 4
  %hugepg_tbl.addr = alloca ptr, align 8
  %hpi.addr = alloca ptr, align 8
  %num_hp_info.addr = alloca i32, align 4
  %socket = alloca i32, align 4
  %size = alloca i32, align 4
  %page = alloca i32, align 4
  %nrpages = alloca i32, align 4
  %internal_conf = alloca ptr, align 8
  %pages_found = alloca i32, align 4
  %hp = alloca ptr, align 8
  %unmap_len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hugepg_tbl, ptr %hugepg_tbl.addr, align 8, !tbaa !4
  store ptr %hpi, ptr %hpi.addr, align 8, !tbaa !4
  store i32 %num_hp_info, ptr %num_hp_info.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %socket) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %page) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %nrpages) #13
  store i32 0, ptr %nrpages, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %internal_conf) #13
  %call = call ptr @eal_get_internal_configuration()
  store ptr %call, ptr %internal_conf, align 8, !tbaa !4
  store i32 0, ptr %size, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, ptr %size, align 4, !tbaa !8
  %1 = load i32, ptr %num_hp_info.addr, align 4, !tbaa !8
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %socket, align 4, !tbaa !8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %socket, align 4, !tbaa !8
  %cmp2 = icmp ult i32 %2, 32
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %hugepage_info = getelementptr inbounds %struct.internal_config, ptr %3, i32 0, i32 27
  %4 = load i32, ptr %size, align 4, !tbaa !8
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.hugepage_info], ptr %hugepage_info, i64 0, i64 %idxprom
  %num_pages = getelementptr inbounds %struct.hugepage_info, ptr %arrayidx, i32 0, i32 2
  %5 = load i32, ptr %socket, align 4, !tbaa !8
  %idxprom4 = zext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [32 x i32], ptr %num_pages, i64 0, i64 %idxprom4
  %6 = load i32, ptr %arrayidx5, align 4, !tbaa !8
  %7 = load i32, ptr %nrpages, align 4, !tbaa !8
  %add = add i32 %7, %6
  store i32 %add, ptr %nrpages, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %8 = load i32, ptr %socket, align 4, !tbaa !8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %socket, align 4, !tbaa !8
  br label %for.cond1, !llvm.loop !85

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %9 = load i32, ptr %size, align 4, !tbaa !8
  %inc7 = add i32 %9, 1
  store i32 %inc7, ptr %size, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !86

for.end8:                                         ; preds = %for.cond
  store i32 0, ptr %size, align 4, !tbaa !8
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc58, %for.end8
  %10 = load i32, ptr %size, align 4, !tbaa !8
  %11 = load i32, ptr %num_hp_info.addr, align 4, !tbaa !8
  %cmp10 = icmp ult i32 %10, %11
  br i1 %cmp10, label %for.body11, label %for.end60

for.body11:                                       ; preds = %for.cond9
  store i32 0, ptr %socket, align 4, !tbaa !8
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc55, %for.body11
  %12 = load i32, ptr %socket, align 4, !tbaa !8
  %cmp13 = icmp ult i32 %12, 32
  br i1 %cmp13, label %for.body14, label %for.end57

for.body14:                                       ; preds = %for.cond12
  call void @llvm.lifetime.start.p0(i64 4, ptr %pages_found) #13
  store i32 0, ptr %pages_found, align 4, !tbaa !8
  store i32 0, ptr %page, align 4, !tbaa !8
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc49, %for.body14
  %13 = load i32, ptr %page, align 4, !tbaa !8
  %14 = load i32, ptr %nrpages, align 4, !tbaa !8
  %cmp16 = icmp slt i32 %13, %14
  br i1 %cmp16, label %for.body17, label %for.end51

for.body17:                                       ; preds = %for.cond15
  call void @llvm.lifetime.start.p0(i64 8, ptr %hp) #13
  %15 = load ptr, ptr %hugepg_tbl.addr, align 8, !tbaa !4
  %16 = load i32, ptr %page, align 4, !tbaa !8
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds %struct.hugepage_file, ptr %15, i64 %idxprom18
  store ptr %arrayidx19, ptr %hp, align 8, !tbaa !4
  %17 = load ptr, ptr %hp, align 8, !tbaa !4
  %size20 = getelementptr inbounds %struct.hugepage_file, ptr %17, i32 0, i32 3
  %18 = load i64, ptr %size20, align 8, !tbaa !41
  %19 = load ptr, ptr %hpi.addr, align 8, !tbaa !4
  %20 = load i32, ptr %size, align 4, !tbaa !8
  %idxprom21 = zext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds %struct.hugepage_info, ptr %19, i64 %idxprom21
  %hugepage_sz = getelementptr inbounds %struct.hugepage_info, ptr %arrayidx22, i32 0, i32 0
  %21 = load i64, ptr %hugepage_sz, align 8, !tbaa !30
  %cmp23 = icmp eq i64 %18, %21
  br i1 %cmp23, label %land.lhs.true, label %if.end45

land.lhs.true:                                    ; preds = %for.body17
  %22 = load ptr, ptr %hp, align 8, !tbaa !4
  %socket_id = getelementptr inbounds %struct.hugepage_file, ptr %22, i32 0, i32 4
  %23 = load i32, ptr %socket_id, align 8, !tbaa !39
  %24 = load i32, ptr %socket, align 4, !tbaa !8
  %cmp24 = icmp eq i32 %23, %24
  br i1 %cmp24, label %if.then, label %if.end45

if.then:                                          ; preds = %land.lhs.true
  %25 = load i32, ptr %pages_found, align 4, !tbaa !8
  %26 = load ptr, ptr %hpi.addr, align 8, !tbaa !4
  %27 = load i32, ptr %size, align 4, !tbaa !8
  %idxprom25 = zext i32 %27 to i64
  %arrayidx26 = getelementptr inbounds %struct.hugepage_info, ptr %26, i64 %idxprom25
  %num_pages27 = getelementptr inbounds %struct.hugepage_info, ptr %arrayidx26, i32 0, i32 2
  %28 = load i32, ptr %socket, align 4, !tbaa !8
  %idxprom28 = zext i32 %28 to i64
  %arrayidx29 = getelementptr inbounds [32 x i32], ptr %num_pages27, i64 0, i64 %idxprom28
  %29 = load i32, ptr %arrayidx29, align 4, !tbaa !8
  %cmp30 = icmp eq i32 %25, %29
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %unmap_len) #13
  %30 = load ptr, ptr %hp, align 8, !tbaa !4
  %size32 = getelementptr inbounds %struct.hugepage_file, ptr %30, i32 0, i32 3
  %31 = load i64, ptr %size32, align 8, !tbaa !41
  store i64 %31, ptr %unmap_len, align 8, !tbaa !10
  %32 = load ptr, ptr %hp, align 8, !tbaa !4
  %orig_va = getelementptr inbounds %struct.hugepage_file, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %orig_va, align 8, !tbaa !75
  %34 = load i64, ptr %unmap_len, align 8, !tbaa !10
  %call33 = call i32 @munmap(ptr noundef %33, i64 noundef %34) #13
  %35 = load ptr, ptr %hp, align 8, !tbaa !4
  %orig_va34 = getelementptr inbounds %struct.hugepage_file, ptr %35, i32 0, i32 0
  store ptr null, ptr %orig_va34, align 8, !tbaa !75
  %36 = load ptr, ptr %hp, align 8, !tbaa !4
  %filepath = getelementptr inbounds %struct.hugepage_file, ptr %36, i32 0, i32 6
  %arraydecay = getelementptr inbounds [4096 x i8], ptr %filepath, i64 0, i64 0
  %call35 = call i32 @unlink(ptr noundef %arraydecay) #13
  %cmp36 = icmp eq i32 %call35, -1
  br i1 %cmp36, label %if.then37, label %if.end

if.then37:                                        ; preds = %if.then31
  %37 = load ptr, ptr %hp, align 8, !tbaa !4
  %filepath38 = getelementptr inbounds %struct.hugepage_file, ptr %37, i32 0, i32 6
  %arraydecay39 = getelementptr inbounds [4096 x i8], ptr %filepath38, i64 0, i64 0
  %call40 = call ptr @__errno_location() #14
  %38 = load i32, ptr %call40, align 4, !tbaa !8
  %call41 = call ptr @strerror(i32 noundef %38) #13
  %call42 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.51, ptr noundef @__func__.unmap_unneeded_hugepages, ptr noundef %arraydecay39, ptr noundef %call41)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then31
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then37
  call void @llvm.lifetime.end.p0(i64 8, ptr %unmap_len) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup46 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end44

if.else:                                          ; preds = %if.then
  %39 = load i32, ptr %pages_found, align 4, !tbaa !8
  %inc43 = add i32 %39, 1
  store i32 %inc43, ptr %pages_found, align 4, !tbaa !8
  br label %if.end44

if.end44:                                         ; preds = %if.else, %cleanup.cont
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %land.lhs.true, %for.body17
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup46

cleanup46:                                        ; preds = %if.end45, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %hp) #13
  %cleanup.dest47 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest47, label %cleanup52 [
    i32 0, label %cleanup.cont48
  ]

cleanup.cont48:                                   ; preds = %cleanup46
  br label %for.inc49

for.inc49:                                        ; preds = %cleanup.cont48
  %40 = load i32, ptr %page, align 4, !tbaa !8
  %inc50 = add nsw i32 %40, 1
  store i32 %inc50, ptr %page, align 4, !tbaa !8
  br label %for.cond15, !llvm.loop !87

for.end51:                                        ; preds = %for.cond15
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup52

cleanup52:                                        ; preds = %for.end51, %cleanup46
  call void @llvm.lifetime.end.p0(i64 4, ptr %pages_found) #13
  %cleanup.dest53 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest53, label %cleanup61 [
    i32 0, label %cleanup.cont54
  ]

cleanup.cont54:                                   ; preds = %cleanup52
  br label %for.inc55

for.inc55:                                        ; preds = %cleanup.cont54
  %41 = load i32, ptr %socket, align 4, !tbaa !8
  %inc56 = add i32 %41, 1
  store i32 %inc56, ptr %socket, align 4, !tbaa !8
  br label %for.cond12, !llvm.loop !88

for.end57:                                        ; preds = %for.cond12
  br label %for.inc58

for.inc58:                                        ; preds = %for.end57
  %42 = load i32, ptr %size, align 4, !tbaa !8
  %inc59 = add i32 %42, 1
  store i32 %inc59, ptr %size, align 4, !tbaa !8
  br label %for.cond9, !llvm.loop !89

for.end60:                                        ; preds = %for.cond9
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup61

cleanup61:                                        ; preds = %for.end60, %cleanup52
  call void @llvm.lifetime.end.p0(i64 8, ptr %internal_conf) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %nrpages) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %page) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %socket) #13
  %43 = load i32, ptr %retval, align 4
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_hugepages_to_shared_mem(ptr noundef %dst, i32 noundef %dest_size, ptr noundef %src, i32 noundef %src_size) #0 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %dest_size.addr = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %src_size.addr = alloca i32, align 4
  %src_pos = alloca i32, align 4
  %dst_pos = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  store i32 %dest_size, ptr %dest_size.addr, align 4, !tbaa !8
  store ptr %src, ptr %src.addr, align 8, !tbaa !4
  store i32 %src_size, ptr %src_size.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %src_pos) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %dst_pos) #13
  store i32 0, ptr %dst_pos, align 4, !tbaa !8
  store i32 0, ptr %src_pos, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %src_pos, align 4, !tbaa !8
  %1 = load i32, ptr %src_size.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %src.addr, align 8, !tbaa !4
  %3 = load i32, ptr %src_pos, align 4, !tbaa !8
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.hugepage_file, ptr %2, i64 %idxprom
  %orig_va = getelementptr inbounds %struct.hugepage_file, ptr %arrayidx, i32 0, i32 0
  %4 = load ptr, ptr %orig_va, align 8, !tbaa !75
  %cmp1 = icmp ne ptr %4, null
  br i1 %cmp1, label %if.then, label %if.end8

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %dst_pos, align 4, !tbaa !8
  %6 = load i32, ptr %dest_size.addr, align 4, !tbaa !8
  %cmp2 = icmp eq i32 %5, %6
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %8 = load i32, ptr %dst_pos, align 4, !tbaa !8
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds %struct.hugepage_file, ptr %7, i64 %idxprom4
  %9 = load ptr, ptr %src.addr, align 8, !tbaa !4
  %10 = load i32, ptr %src_pos, align 4, !tbaa !8
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds %struct.hugepage_file, ptr %9, i64 %idxprom6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx5, ptr align 8 %arrayidx7, i64 4136, i1 false)
  %11 = load i32, ptr %dst_pos, align 4, !tbaa !8
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %dst_pos, align 4, !tbaa !8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %12 = load i32, ptr %src_pos, align 4, !tbaa !8
  %inc9 = add nsw i32 %12, 1
  store i32 %inc9, ptr %src_pos, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !90

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dst_pos) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %src_pos) #13
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @remap_needed_hugepages(ptr noundef %hugepages, i32 noundef %n_pages) #0 {
entry:
  %retval = alloca i32, align 4
  %hugepages.addr = alloca ptr, align 8
  %n_pages.addr = alloca i32, align 4
  %cur_page = alloca i32, align 4
  %seg_start_page = alloca i32, align 4
  %new_memseg = alloca i32, align 4
  %ret = alloca i32, align 4
  %prev = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hugepages, ptr %hugepages.addr, align 8, !tbaa !4
  store i32 %n_pages, ptr %n_pages.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_page) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %seg_start_page) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_memseg) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13
  store i32 0, ptr %seg_start_page, align 4, !tbaa !8
  store i32 0, ptr %cur_page, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %cur_page, align 4, !tbaa !8
  %1 = load i32, ptr %n_pages.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #13
  store i32 0, ptr %new_memseg, align 4, !tbaa !8
  %2 = load ptr, ptr %hugepages.addr, align 8, !tbaa !4
  %3 = load i32, ptr %cur_page, align 4, !tbaa !8
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.hugepage_file, ptr %2, i64 %idxprom
  store ptr %arrayidx, ptr %cur, align 8, !tbaa !4
  %4 = load i32, ptr %cur_page, align 4, !tbaa !8
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %5 = load ptr, ptr %hugepages.addr, align 8, !tbaa !4
  %6 = load i32, ptr %cur_page, align 4, !tbaa !8
  %sub = sub nsw i32 %6, 1
  %idxprom2 = sext i32 %sub to i64
  %arrayidx3 = getelementptr inbounds %struct.hugepage_file, ptr %5, i64 %idxprom2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %arrayidx3, %cond.false ]
  store ptr %cond, ptr %prev, align 8, !tbaa !4
  %7 = load ptr, ptr %cur, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.hugepage_file, ptr %7, i32 0, i32 3
  %8 = load i64, ptr %size, align 8, !tbaa !41
  %cmp4 = icmp eq i64 %8, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %9 = load i32, ptr %cur_page, align 4, !tbaa !8
  %cmp5 = icmp eq i32 %9, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  store i32 1, ptr %new_memseg, align 4, !tbaa !8
  br label %if.end24

if.else:                                          ; preds = %if.end
  %10 = load ptr, ptr %cur, align 8, !tbaa !4
  %socket_id = getelementptr inbounds %struct.hugepage_file, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %socket_id, align 8, !tbaa !39
  %12 = load ptr, ptr %prev, align 8, !tbaa !4
  %socket_id7 = getelementptr inbounds %struct.hugepage_file, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %socket_id7, align 8, !tbaa !39
  %cmp8 = icmp ne i32 %11, %13
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else
  store i32 1, ptr %new_memseg, align 4, !tbaa !8
  br label %if.end23

if.else10:                                        ; preds = %if.else
  %14 = load ptr, ptr %cur, align 8, !tbaa !4
  %size11 = getelementptr inbounds %struct.hugepage_file, ptr %14, i32 0, i32 3
  %15 = load i64, ptr %size11, align 8, !tbaa !41
  %16 = load ptr, ptr %prev, align 8, !tbaa !4
  %size12 = getelementptr inbounds %struct.hugepage_file, ptr %16, i32 0, i32 3
  %17 = load i64, ptr %size12, align 8, !tbaa !41
  %cmp13 = icmp ne i64 %15, %17
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else10
  store i32 1, ptr %new_memseg, align 4, !tbaa !8
  br label %if.end22

if.else15:                                        ; preds = %if.else10
  %18 = load ptr, ptr %cur, align 8, !tbaa !4
  %physaddr = getelementptr inbounds %struct.hugepage_file, ptr %18, i32 0, i32 2
  %19 = load i64, ptr %physaddr, align 8, !tbaa !77
  %20 = load ptr, ptr %prev, align 8, !tbaa !4
  %physaddr16 = getelementptr inbounds %struct.hugepage_file, ptr %20, i32 0, i32 2
  %21 = load i64, ptr %physaddr16, align 8, !tbaa !77
  %sub17 = sub i64 %19, %21
  %22 = load ptr, ptr %cur, align 8, !tbaa !4
  %size18 = getelementptr inbounds %struct.hugepage_file, ptr %22, i32 0, i32 3
  %23 = load i64, ptr %size18, align 8, !tbaa !41
  %cmp19 = icmp ne i64 %sub17, %23
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.else15
  store i32 1, ptr %new_memseg, align 4, !tbaa !8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.else15
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then14
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then9
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then6
  %24 = load i32, ptr %new_memseg, align 4, !tbaa !8
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then25, label %if.end32

if.then25:                                        ; preds = %if.end24
  %25 = load i32, ptr %cur_page, align 4, !tbaa !8
  %cmp26 = icmp ne i32 %25, 0
  br i1 %cmp26, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.then25
  %26 = load ptr, ptr %hugepages.addr, align 8, !tbaa !4
  %27 = load i32, ptr %seg_start_page, align 4, !tbaa !8
  %28 = load i32, ptr %cur_page, align 4, !tbaa !8
  %call = call i32 @remap_segment(ptr noundef %26, i32 noundef %27, i32 noundef %28)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %29 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp28 = icmp ne i32 %29, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then27
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.then27
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then25
  %30 = load i32, ptr %cur_page, align 4, !tbaa !8
  store i32 %30, ptr %seg_start_page, align 4, !tbaa !8
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end24
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then29, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup41 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %31 = load i32, ptr %cur_page, align 4, !tbaa !8
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %cur_page, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !91

for.end:                                          ; preds = %cleanup, %for.cond
  %32 = load i32, ptr %cur_page, align 4, !tbaa !8
  %cmp34 = icmp ne i32 %32, 0
  br i1 %cmp34, label %if.then35, label %if.end40

if.then35:                                        ; preds = %for.end
  %33 = load ptr, ptr %hugepages.addr, align 8, !tbaa !4
  %34 = load i32, ptr %seg_start_page, align 4, !tbaa !8
  %35 = load i32, ptr %cur_page, align 4, !tbaa !8
  %call36 = call i32 @remap_segment(ptr noundef %33, i32 noundef %34, i32 noundef %35)
  store i32 %call36, ptr %ret, align 4, !tbaa !8
  %36 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp37 = icmp ne i32 %36, 0
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.then35
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41

if.end39:                                         ; preds = %if.then35
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %for.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41

cleanup41:                                        ; preds = %if.end40, %if.then38, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_memseg) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %seg_start_page) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_page) #13
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @unlink_hugepage_files(ptr noundef %hugepg_tbl, i32 noundef %num_hp_info) #0 {
entry:
  %hugepg_tbl.addr = alloca ptr, align 8
  %num_hp_info.addr = alloca i32, align 4
  %socket = alloca i32, align 4
  %size = alloca i32, align 4
  %page = alloca i32, align 4
  %nrpages = alloca i32, align 4
  %internal_conf = alloca ptr, align 8
  %hp = alloca ptr, align 8
  store ptr %hugepg_tbl, ptr %hugepg_tbl.addr, align 8, !tbaa !4
  store i32 %num_hp_info, ptr %num_hp_info.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %socket) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %page) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %nrpages) #13
  store i32 0, ptr %nrpages, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %internal_conf) #13
  %call = call ptr @eal_get_internal_configuration()
  store ptr %call, ptr %internal_conf, align 8, !tbaa !4
  store i32 0, ptr %size, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, ptr %size, align 4, !tbaa !8
  %1 = load i32, ptr %num_hp_info.addr, align 4, !tbaa !8
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %socket, align 4, !tbaa !8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %socket, align 4, !tbaa !8
  %cmp2 = icmp ult i32 %2, 32
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load ptr, ptr %internal_conf, align 8, !tbaa !4
  %hugepage_info = getelementptr inbounds %struct.internal_config, ptr %3, i32 0, i32 27
  %4 = load i32, ptr %size, align 4, !tbaa !8
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.hugepage_info], ptr %hugepage_info, i64 0, i64 %idxprom
  %num_pages = getelementptr inbounds %struct.hugepage_info, ptr %arrayidx, i32 0, i32 2
  %5 = load i32, ptr %socket, align 4, !tbaa !8
  %idxprom4 = zext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [32 x i32], ptr %num_pages, i64 0, i64 %idxprom4
  %6 = load i32, ptr %arrayidx5, align 4, !tbaa !8
  %7 = load i32, ptr %nrpages, align 4, !tbaa !8
  %add = add i32 %7, %6
  store i32 %add, ptr %nrpages, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %8 = load i32, ptr %socket, align 4, !tbaa !8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %socket, align 4, !tbaa !8
  br label %for.cond1, !llvm.loop !92

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %9 = load i32, ptr %size, align 4, !tbaa !8
  %inc7 = add i32 %9, 1
  store i32 %inc7, ptr %size, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !93

for.end8:                                         ; preds = %for.cond
  store i32 0, ptr %page, align 4, !tbaa !8
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc21, %for.end8
  %10 = load i32, ptr %page, align 4, !tbaa !8
  %11 = load i32, ptr %nrpages, align 4, !tbaa !8
  %cmp10 = icmp slt i32 %10, %11
  br i1 %cmp10, label %for.body11, label %for.end23

for.body11:                                       ; preds = %for.cond9
  call void @llvm.lifetime.start.p0(i64 8, ptr %hp) #13
  %12 = load ptr, ptr %hugepg_tbl.addr, align 8, !tbaa !4
  %13 = load i32, ptr %page, align 4, !tbaa !8
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds %struct.hugepage_file, ptr %12, i64 %idxprom12
  store ptr %arrayidx13, ptr %hp, align 8, !tbaa !4
  %14 = load ptr, ptr %hp, align 8, !tbaa !4
  %orig_va = getelementptr inbounds %struct.hugepage_file, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %orig_va, align 8, !tbaa !75
  %cmp14 = icmp ne ptr %15, null
  br i1 %cmp14, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body11
  %16 = load ptr, ptr %hp, align 8, !tbaa !4
  %filepath = getelementptr inbounds %struct.hugepage_file, ptr %16, i32 0, i32 6
  %arraydecay = getelementptr inbounds [4096 x i8], ptr %filepath, i64 0, i64 0
  %call15 = call i32 @unlink(ptr noundef %arraydecay) #13
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %17 = load ptr, ptr %hp, align 8, !tbaa !4
  %filepath16 = getelementptr inbounds %struct.hugepage_file, ptr %17, i32 0, i32 6
  %arraydecay17 = getelementptr inbounds [4096 x i8], ptr %filepath16, i64 0, i64 0
  %call18 = call ptr @__errno_location() #14
  %18 = load i32, ptr %call18, align 4, !tbaa !8
  %call19 = call ptr @strerror(i32 noundef %18) #13
  %call20 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 5, i32 noundef 0, ptr noundef @.str.51, ptr noundef @__func__.unlink_hugepage_files, ptr noundef %arraydecay17, ptr noundef %call19)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body11
  call void @llvm.lifetime.end.p0(i64 8, ptr %hp) #13
  br label %for.inc21

for.inc21:                                        ; preds = %if.end
  %19 = load i32, ptr %page, align 4, !tbaa !8
  %inc22 = add nsw i32 %19, 1
  store i32 %inc22, ptr %page, align 4, !tbaa !8
  br label %for.cond9, !llvm.loop !94

for.end23:                                        ; preds = %for.cond9
  call void @llvm.lifetime.end.p0(i64 8, ptr %internal_conf) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %nrpages) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %page) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %socket) #13
  ret i32 0
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

declare i32 @rte_fbarray_destroy(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) #4

; Function Attrs: nounwind
declare i32 @sigaddset(ptr noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define internal void @huge_sigbus_handler(i32 noundef %signo) #0 {
entry:
  %signo.addr = alloca i32, align 4
  store i32 %signo, ptr %signo.addr, align 4, !tbaa !8
  call void @siglongjmp(ptr noundef @huge_jmpenv, i32 noundef 1) #17
  unreachable
}

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noreturn nounwind
declare void @siglongjmp(ptr noundef, i32 noundef) #9

declare i32 @numa_available() #3

declare ptr @numa_allocate_nodemask() #3

declare i64 @get_mempolicy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #3

declare void @numa_set_preferred(i32 noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @eal_get_hugefile_path(ptr noundef %buffer, i64 noundef %buflen, ptr noundef %hugedir, i32 noundef %f_id) #7 {
entry:
  %buffer.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  %hugedir.addr = alloca ptr, align 8
  %f_id.addr = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !4
  store i64 %buflen, ptr %buflen.addr, align 8, !tbaa !10
  store ptr %hugedir, ptr %hugedir.addr, align 8, !tbaa !4
  store i32 %f_id, ptr %f_id.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %1 = load i64, ptr %buflen.addr, align 8, !tbaa !10
  %2 = load ptr, ptr %hugedir.addr, align 8, !tbaa !4
  %call = call ptr @eal_get_hugefile_prefix()
  %3 = load i32, ptr %f_id.addr, align 4, !tbaa !8
  %call1 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef @.str.40, ptr noundef %2, ptr noundef %call, i32 noundef %3) #13
  %4 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define internal i32 @huge_wrap_sigsetjmp() #0 {
entry:
  %call = call i32 @__sigsetjmp(ptr noundef @huge_jmpenv, i32 noundef 1) #18
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @unlink(ptr noundef) #4

; Function Attrs: nounwind
declare i32 @flock(i32 noundef, i32 noundef) #4

declare void @numa_set_localalloc() #3

declare i64 @set_mempolicy(i32 noundef, ptr noundef, i64 noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @numa_free_cpumask(ptr noundef %b) #7 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @numa_bitmask_free(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

declare ptr @eal_get_hugefile_prefix() #3

; Function Attrs: nounwind returns_twice
declare i32 @__sigsetjmp(ptr noundef, i32 noundef) #10

declare void @numa_bitmask_free(ptr noundef) #3

declare noalias ptr @fopen64(ptr noundef, ptr noundef) #3

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #11

; Function Attrs: nounwind
declare i64 @strtoull(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i64 @strtoul(ptr noundef, ptr noundef, i32 noundef) #4

declare i32 @fclose(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strnlen(ptr noundef, i64 noundef) #11

declare ptr @rte_eal_get_runtime_dir() #3

; Function Attrs: nounwind uwtable
define internal i32 @remap_segment(ptr noundef %hugepages, i32 noundef %seg_start, i32 noundef %seg_end) #0 {
entry:
  %retval = alloca i32, align 4
  %hugepages.addr = alloca ptr, align 8
  %seg_start.addr = alloca i32, align 4
  %seg_end.addr = alloca i32, align 4
  %mcfg = alloca ptr, align 8
  %msl = alloca ptr, align 8
  %arr = alloca ptr, align 8
  %cur_page = alloca i32, align 4
  %seg_len = alloca i32, align 4
  %msl_idx = alloca i32, align 4
  %ms_idx = alloca i32, align 4
  %page_sz = alloca i64, align 8
  %memseg_len = alloca i64, align 8
  %socket_id = alloca i32, align 4
  %empty = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %hfile = alloca ptr, align 8
  %ms = alloca ptr, align 8
  %addr = alloca ptr, align 8
  %fd = alloca i32, align 4
  store ptr %hugepages, ptr %hugepages.addr, align 8, !tbaa !4
  store i32 %seg_start, ptr %seg_start.addr, align 4, !tbaa !8
  store i32 %seg_end, ptr %seg_end.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcfg) #13
  %call = call ptr @rte_eal_get_configuration()
  %mem_config = getelementptr inbounds %struct.rte_config, ptr %call, i32 0, i32 8
  %0 = load ptr, ptr %mem_config, align 1, !tbaa !19
  store ptr %0, ptr %mcfg, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %msl) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %arr) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_page) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %seg_len) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %msl_idx) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %ms_idx) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %page_sz) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %memseg_len) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %socket_id) #13
  %1 = load ptr, ptr %hugepages.addr, align 8, !tbaa !4
  %2 = load i32, ptr %seg_start.addr, align 4, !tbaa !8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.hugepage_file, ptr %1, i64 %idxprom
  %size = getelementptr inbounds %struct.hugepage_file, ptr %arrayidx, i32 0, i32 3
  %3 = load i64, ptr %size, align 8, !tbaa !41
  store i64 %3, ptr %page_sz, align 8, !tbaa !10
  %4 = load ptr, ptr %hugepages.addr, align 8, !tbaa !4
  %5 = load i32, ptr %seg_start.addr, align 4, !tbaa !8
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds %struct.hugepage_file, ptr %4, i64 %idxprom1
  %socket_id3 = getelementptr inbounds %struct.hugepage_file, ptr %arrayidx2, i32 0, i32 4
  %6 = load i32, ptr %socket_id3, align 8, !tbaa !39
  store i32 %6, ptr %socket_id, align 4, !tbaa !8
  %7 = load i32, ptr %seg_end.addr, align 4, !tbaa !8
  %8 = load i32, ptr %seg_start.addr, align 4, !tbaa !8
  %sub = sub nsw i32 %7, %8
  store i32 %sub, ptr %seg_len, align 4, !tbaa !8
  %9 = load i32, ptr %seg_len, align 4, !tbaa !8
  %conv = sext i32 %9 to i64
  %10 = load i64, ptr %page_sz, align 8, !tbaa !10
  %mul = mul i64 %conv, %10
  %shr = lshr i64 %mul, 20
  %11 = load i32, ptr %socket_id, align 4, !tbaa !8
  %call4 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.52, i64 noundef %shr, i32 noundef %11)
  store i32 0, ptr %msl_idx, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, ptr %msl_idx, align 4, !tbaa !8
  %cmp = icmp ult i32 %12, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %empty) #13
  %13 = load ptr, ptr %mcfg, align 8, !tbaa !4
  %memsegs = getelementptr inbounds %struct.rte_mem_config, ptr %13, i32 0, i32 11
  %14 = load i32, ptr %msl_idx, align 4, !tbaa !8
  %idxprom6 = zext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds [128 x %struct.rte_memseg_list], ptr %memsegs, i64 0, i64 %idxprom6
  store ptr %arrayidx7, ptr %msl, align 8, !tbaa !4
  %15 = load ptr, ptr %msl, align 8, !tbaa !4
  %memseg_arr = getelementptr inbounds %struct.rte_memseg_list, ptr %15, i32 0, i32 7
  store ptr %memseg_arr, ptr %arr, align 8, !tbaa !4
  %16 = load ptr, ptr %msl, align 8, !tbaa !4
  %page_sz8 = getelementptr inbounds %struct.rte_memseg_list, ptr %16, i32 0, i32 1
  %17 = load i64, ptr %page_sz8, align 8, !tbaa !95
  %18 = load i64, ptr %page_sz, align 8, !tbaa !10
  %cmp9 = icmp ne i64 %17, %18
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  %19 = load ptr, ptr %msl, align 8, !tbaa !4
  %socket_id11 = getelementptr inbounds %struct.rte_memseg_list, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %socket_id11, align 8, !tbaa !96
  %21 = load i32, ptr %socket_id, align 4, !tbaa !8
  %cmp12 = icmp ne i32 %20, %21
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %22 = load ptr, ptr %arr, align 8, !tbaa !4
  %count = getelementptr inbounds %struct.rte_fbarray, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %count, align 8, !tbaa !97
  %cmp16 = icmp eq i32 %23, 0
  %frombool = zext i1 %cmp16 to i8
  store i8 %frombool, ptr %empty, align 1, !tbaa !67
  %24 = load ptr, ptr %arr, align 8, !tbaa !4
  %25 = load i32, ptr %seg_len, align 4, !tbaa !8
  %26 = load i8, ptr %empty, align 1, !tbaa !67, !range !48, !noundef !49
  %tobool = trunc i8 %26 to i1
  %27 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 0, i32 1
  %add = add nsw i32 %25, %cond
  %call19 = call i32 @rte_fbarray_find_next_n_free(ptr noundef %24, i32 noundef 0, i32 noundef %add)
  store i32 %call19, ptr %ms_idx, align 4, !tbaa !8
  %28 = load i32, ptr %ms_idx, align 4, !tbaa !8
  %cmp20 = icmp slt i32 %28, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end15
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %29 = load i8, ptr %empty, align 1, !tbaa !67, !range !48, !noundef !49
  %tobool24 = trunc i8 %29 to i1
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end23
  %30 = load i32, ptr %ms_idx, align 4, !tbaa !8
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %ms_idx, align 4, !tbaa !8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then22, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %empty) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 4, label %for.inc
    i32 2, label %for.end
  ]

for.inc:                                          ; preds = %cleanup
  %31 = load i32, ptr %msl_idx, align 4, !tbaa !8
  %inc27 = add i32 %31, 1
  store i32 %inc27, ptr %msl_idx, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !98

for.end:                                          ; preds = %cleanup, %for.cond
  %32 = load i32, ptr %msl_idx, align 4, !tbaa !8
  %cmp28 = icmp eq i32 %32, 128
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %for.end
  %call31 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.53, ptr noundef @.str.54, ptr noundef @.str.55)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup108

if.end32:                                         ; preds = %for.end
  %33 = load i32, ptr %seg_start.addr, align 4, !tbaa !8
  store i32 %33, ptr %cur_page, align 4, !tbaa !8
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc100, %if.end32
  %34 = load i32, ptr %cur_page, align 4, !tbaa !8
  %35 = load i32, ptr %seg_end.addr, align 4, !tbaa !8
  %cmp34 = icmp slt i32 %34, %35
  br i1 %cmp34, label %for.body36, label %for.end103

for.body36:                                       ; preds = %for.cond33
  call void @llvm.lifetime.start.p0(i64 8, ptr %hfile) #13
  %36 = load ptr, ptr %hugepages.addr, align 8, !tbaa !4
  %37 = load i32, ptr %cur_page, align 4, !tbaa !8
  %idxprom37 = sext i32 %37 to i64
  %arrayidx38 = getelementptr inbounds %struct.hugepage_file, ptr %36, i64 %idxprom37
  store ptr %arrayidx38, ptr %hfile, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ms) #13
  %38 = load ptr, ptr %arr, align 8, !tbaa !4
  %39 = load i32, ptr %ms_idx, align 4, !tbaa !8
  %call39 = call ptr @rte_fbarray_get(ptr noundef %38, i32 noundef %39)
  store ptr %call39, ptr %ms, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #13
  %40 = load ptr, ptr %hfile, align 8, !tbaa !4
  %filepath = getelementptr inbounds %struct.hugepage_file, ptr %40, i32 0, i32 6
  %arraydecay = getelementptr inbounds [4096 x i8], ptr %filepath, i64 0, i64 0
  %call40 = call i32 (ptr, i32, ...) @open64(ptr noundef %arraydecay, i32 noundef 2)
  store i32 %call40, ptr %fd, align 4, !tbaa !8
  %41 = load i32, ptr %fd, align 4, !tbaa !8
  %cmp41 = icmp slt i32 %41, 0
  br i1 %cmp41, label %if.then43, label %if.end49

if.then43:                                        ; preds = %for.body36
  %42 = load ptr, ptr %hfile, align 8, !tbaa !4
  %filepath44 = getelementptr inbounds %struct.hugepage_file, ptr %42, i32 0, i32 6
  %arraydecay45 = getelementptr inbounds [4096 x i8], ptr %filepath44, i64 0, i64 0
  %call46 = call ptr @__errno_location() #14
  %43 = load i32, ptr %call46, align 4, !tbaa !8
  %call47 = call ptr @strerror(i32 noundef %43) #13
  %call48 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.56, ptr noundef %arraydecay45, ptr noundef %call47)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup95

if.end49:                                         ; preds = %for.body36
  %44 = load i32, ptr %fd, align 4, !tbaa !8
  %call50 = call i32 @flock(i32 noundef %44, i32 noundef 1) #13
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %if.end60

if.then53:                                        ; preds = %if.end49
  %45 = load ptr, ptr %hfile, align 8, !tbaa !4
  %filepath54 = getelementptr inbounds %struct.hugepage_file, ptr %45, i32 0, i32 6
  %arraydecay55 = getelementptr inbounds [4096 x i8], ptr %filepath54, i64 0, i64 0
  %call56 = call ptr @__errno_location() #14
  %46 = load i32, ptr %call56, align 4, !tbaa !8
  %call57 = call ptr @strerror(i32 noundef %46) #13
  %call58 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.57, ptr noundef %arraydecay55, ptr noundef %call57)
  %47 = load i32, ptr %fd, align 4, !tbaa !8
  %call59 = call i32 @close(i32 noundef %47)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup95

if.end60:                                         ; preds = %if.end49
  %48 = load i64, ptr %page_sz, align 8, !tbaa !10
  store i64 %48, ptr %memseg_len, align 8, !tbaa !10
  %49 = load ptr, ptr %msl, align 8, !tbaa !4
  %50 = getelementptr inbounds %struct.rte_memseg_list, ptr %49, i32 0, i32 0
  %51 = load ptr, ptr %50, align 8, !tbaa !24
  %52 = ptrtoint ptr %51 to i64
  %53 = load i32, ptr %ms_idx, align 4, !tbaa !8
  %conv61 = sext i32 %53 to i64
  %54 = load i64, ptr %memseg_len, align 8, !tbaa !10
  %mul62 = mul i64 %conv61, %54
  %add63 = add i64 %52, %mul62
  %55 = inttoptr i64 %add63 to ptr
  store ptr %55, ptr %addr, align 8, !tbaa !4
  %56 = load ptr, ptr %addr, align 8, !tbaa !4
  %57 = load i64, ptr %page_sz, align 8, !tbaa !10
  %58 = load i32, ptr %fd, align 4, !tbaa !8
  %call64 = call ptr @mmap64(ptr noundef %56, i64 noundef %57, i32 noundef 3, i32 noundef 32785, i32 noundef %58, i64 noundef 0) #13
  store ptr %call64, ptr %addr, align 8, !tbaa !4
  %59 = load ptr, ptr %addr, align 8, !tbaa !4
  %cmp65 = icmp eq ptr %59, inttoptr (i64 -1 to ptr)
  br i1 %cmp65, label %if.then67, label %if.end74

if.then67:                                        ; preds = %if.end60
  %60 = load ptr, ptr %hfile, align 8, !tbaa !4
  %filepath68 = getelementptr inbounds %struct.hugepage_file, ptr %60, i32 0, i32 6
  %arraydecay69 = getelementptr inbounds [4096 x i8], ptr %filepath68, i64 0, i64 0
  %call70 = call ptr @__errno_location() #14
  %61 = load i32, ptr %call70, align 4, !tbaa !8
  %call71 = call ptr @strerror(i32 noundef %61) #13
  %call72 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.58, ptr noundef %arraydecay69, ptr noundef %call71)
  %62 = load i32, ptr %fd, align 4, !tbaa !8
  %call73 = call i32 @close(i32 noundef %62)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup95

if.end74:                                         ; preds = %if.end60
  %63 = load ptr, ptr %hfile, align 8, !tbaa !4
  %orig_va = getelementptr inbounds %struct.hugepage_file, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %orig_va, align 8, !tbaa !75
  %65 = load i64, ptr %page_sz, align 8, !tbaa !10
  %call75 = call i32 @munmap(ptr noundef %64, i64 noundef %65) #13
  %66 = load ptr, ptr %hfile, align 8, !tbaa !4
  %orig_va76 = getelementptr inbounds %struct.hugepage_file, ptr %66, i32 0, i32 0
  store ptr null, ptr %orig_va76, align 8, !tbaa !75
  %67 = load ptr, ptr %addr, align 8, !tbaa !4
  %68 = load ptr, ptr %hfile, align 8, !tbaa !4
  %final_va = getelementptr inbounds %struct.hugepage_file, ptr %68, i32 0, i32 1
  store ptr %67, ptr %final_va, align 8, !tbaa !55
  %call77 = call i32 @rte_eal_iova_mode()
  %cmp78 = icmp eq i32 %call77, 2
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end74
  %69 = load ptr, ptr %addr, align 8, !tbaa !4
  %70 = ptrtoint ptr %69 to i64
  %71 = load ptr, ptr %hfile, align 8, !tbaa !4
  %physaddr = getelementptr inbounds %struct.hugepage_file, ptr %71, i32 0, i32 2
  store i64 %70, ptr %physaddr, align 8, !tbaa !77
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.end74
  %72 = load ptr, ptr %addr, align 8, !tbaa !4
  %73 = load ptr, ptr %ms, align 8, !tbaa !4
  %74 = getelementptr inbounds %struct.rte_memseg, ptr %73, i32 0, i32 1
  store ptr %72, ptr %74, align 1, !tbaa !24
  %75 = load i64, ptr %page_sz, align 8, !tbaa !10
  %76 = load ptr, ptr %ms, align 8, !tbaa !4
  %hugepage_sz = getelementptr inbounds %struct.rte_memseg, ptr %76, i32 0, i32 3
  store i64 %75, ptr %hugepage_sz, align 1, !tbaa !99
  %77 = load i64, ptr %memseg_len, align 8, !tbaa !10
  %78 = load ptr, ptr %ms, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.rte_memseg, ptr %78, i32 0, i32 2
  store i64 %77, ptr %len, align 1, !tbaa !101
  %79 = load ptr, ptr %hfile, align 8, !tbaa !4
  %physaddr82 = getelementptr inbounds %struct.hugepage_file, ptr %79, i32 0, i32 2
  %80 = load i64, ptr %physaddr82, align 8, !tbaa !77
  %81 = load ptr, ptr %ms, align 8, !tbaa !4
  %iova = getelementptr inbounds %struct.rte_memseg, ptr %81, i32 0, i32 0
  store i64 %80, ptr %iova, align 1, !tbaa !102
  %82 = load ptr, ptr %hfile, align 8, !tbaa !4
  %socket_id83 = getelementptr inbounds %struct.hugepage_file, ptr %82, i32 0, i32 4
  %83 = load i32, ptr %socket_id83, align 8, !tbaa !39
  %84 = load ptr, ptr %ms, align 8, !tbaa !4
  %socket_id84 = getelementptr inbounds %struct.rte_memseg, ptr %84, i32 0, i32 4
  store i32 %83, ptr %socket_id84, align 1, !tbaa !103
  %call85 = call i32 @rte_memory_get_nchannel()
  %85 = load ptr, ptr %ms, align 8, !tbaa !4
  %nchannel = getelementptr inbounds %struct.rte_memseg, ptr %85, i32 0, i32 5
  store i32 %call85, ptr %nchannel, align 1, !tbaa !104
  %call86 = call i32 @rte_memory_get_nrank()
  %86 = load ptr, ptr %ms, align 8, !tbaa !4
  %nrank = getelementptr inbounds %struct.rte_memseg, ptr %86, i32 0, i32 6
  store i32 %call86, ptr %nrank, align 1, !tbaa !105
  %87 = load ptr, ptr %arr, align 8, !tbaa !4
  %88 = load i32, ptr %ms_idx, align 4, !tbaa !8
  %call87 = call i32 @rte_fbarray_set_used(ptr noundef %87, i32 noundef %88)
  %89 = load i32, ptr %msl_idx, align 4, !tbaa !8
  %90 = load i32, ptr %ms_idx, align 4, !tbaa !8
  %91 = load i32, ptr %fd, align 4, !tbaa !8
  %call88 = call i32 @eal_memalloc_set_seg_fd(i32 noundef %89, i32 noundef %90, i32 noundef %91)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.then91, label %if.end94

if.then91:                                        ; preds = %if.end81
  %92 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @per_lcore__rte_errno)
  %93 = load i32, ptr %92, align 4, !tbaa !8
  %call92 = call ptr @rte_strerror(i32 noundef %93)
  %call93 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.59, ptr noundef %call92)
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %if.end81
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup95

cleanup95:                                        ; preds = %if.end94, %if.then67, %if.then53, %if.then43
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %ms) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %hfile) #13
  %cleanup.dest99 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest99, label %cleanup108 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup95
  br label %for.inc100

for.inc100:                                       ; preds = %cleanup.cont
  %94 = load i32, ptr %cur_page, align 4, !tbaa !8
  %inc101 = add nsw i32 %94, 1
  store i32 %inc101, ptr %cur_page, align 4, !tbaa !8
  %95 = load i32, ptr %ms_idx, align 4, !tbaa !8
  %inc102 = add nsw i32 %95, 1
  store i32 %inc102, ptr %ms_idx, align 4, !tbaa !8
  br label %for.cond33, !llvm.loop !106

for.end103:                                       ; preds = %for.cond33
  %96 = load i32, ptr %seg_len, align 4, !tbaa !8
  %conv104 = sext i32 %96 to i64
  %97 = load i64, ptr %page_sz, align 8, !tbaa !10
  %mul105 = mul i64 %conv104, %97
  %shr106 = lshr i64 %mul105, 20
  %98 = load i32, ptr %socket_id, align 4, !tbaa !8
  %call107 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 8, i32 noundef 0, ptr noundef @.str.60, i64 noundef %shr106, i32 noundef %98)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup108

cleanup108:                                       ; preds = %for.end103, %cleanup95, %if.then30
  call void @llvm.lifetime.end.p0(i64 4, ptr %socket_id) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %memseg_len) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %page_sz) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %ms_idx) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %msl_idx) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %seg_len) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_page) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %arr) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %msl) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcfg) #13
  %99 = load i32, ptr %retval, align 4
  ret i32 %99

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @rte_fbarray_find_next_n_free(ptr noundef, i32 noundef, i32 noundef) #3

declare ptr @rte_fbarray_get(ptr noundef, i32 noundef) #3

declare i32 @rte_memory_get_nchannel() #3

declare i32 @rte_memory_get_nrank() #3

declare i32 @rte_fbarray_set_used(ptr noundef, i32 noundef) #3

declare i32 @eal_memalloc_set_seg_fd(i32 noundef, i32 noundef, i32 noundef) #3

declare ptr @rte_strerror(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #12

; Function Attrs: nounwind uwtable
define internal i32 @aslr_enabled() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i8, align 1
  %retval1 = alloca i32, align 4
  %fd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #13
  %call = call i32 (ptr, i32, ...) @open64(ptr noundef @.str.72, i32 noundef 0)
  store i32 %call, ptr %fd, align 4, !tbaa !8
  %0 = load i32, ptr %fd, align 4, !tbaa !8
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call ptr @__errno_location() #14
  %1 = load i32, ptr %call2, align 4, !tbaa !8
  %sub = sub nsw i32 0, %1
  store i32 %sub, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %fd, align 4, !tbaa !8
  %call3 = call i64 @read(i32 noundef %2, ptr noundef %c, i64 noundef 1)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr %retval1, align 4, !tbaa !8
  %3 = load i32, ptr %fd, align 4, !tbaa !8
  %call4 = call i32 @close(i32 noundef %3)
  %4 = load i32, ptr %retval1, align 4, !tbaa !8
  %cmp5 = icmp slt i32 %4, 0
  br i1 %cmp5, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %call8 = call ptr @__errno_location() #14
  %5 = load i32, ptr %call8, align 4, !tbaa !8
  %sub9 = sub nsw i32 0, %5
  store i32 %sub9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %6 = load i32, ptr %retval1, align 4, !tbaa !8
  %cmp11 = icmp eq i32 %6, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  store i32 -5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %7 = load i8, ptr %c, align 1, !tbaa !24
  %conv15 = sext i8 %7 to i32
  switch i32 %conv15, label %sw.default [
    i32 48, label %sw.bb
    i32 49, label %sw.bb16
    i32 50, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end14
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %if.end14
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %if.end14
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end14
  store i32 -22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb17, %sw.bb16, %sw.bb, %if.then13, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #13
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i64 @getFileSize(i32 noundef %fd) #0 {
entry:
  %retval = alloca i64, align 8
  %fd.addr = alloca i32, align 4
  %st = alloca %struct.stat, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 144, ptr %st) #13
  %0 = load i32, ptr %fd.addr, align 4, !tbaa !8
  %call = call i32 @fstat64(i32 noundef %0, ptr noundef %st) #13
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %st_size = getelementptr inbounds %struct.stat, ptr %st, i32 0, i32 8
  %1 = load i64, ptr %st_size, align 8, !tbaa !107
  store i64 %1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 144, ptr %st) #13
  %2 = load i64, ptr %retval, align 8
  ret i64 %2
}

declare ptr @rte_mem_virt2memseg_list(ptr noundef) #3

declare ptr @rte_mem_virt2memseg(ptr noundef, ptr noundef) #3

declare i32 @rte_fbarray_find_idx(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @fstat64(i32 noundef, ptr noundef) #4

declare i32 @eal_memalloc_sync_with_primary() #3

declare i32 @eal_dynmem_memseg_lists_init() #3

declare i32 @rte_fbarray_attach(ptr noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #10 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #11 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind returns_twice }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!13, !9, i64 584}
!13 = !{!"internal_config", !11, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !14, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !6, i64 48, !9, i64 52, !6, i64 56, !9, i64 312, !6, i64 320, !11, i64 576, !9, i64 584, !9, i64 588, !9, i64 592, !9, i64 596, !6, i64 600, !6, i64 604, !5, i64 624, !5, i64 632, !5, i64 640, !9, i64 648, !6, i64 656, !6, i64 13376, !16, i64 13384, !9, i64 13512, !9, i64 13516, !17, i64 13520, !11, i64 13528}
!14 = !{!"hugepage_file_discipline", !15, i64 0, !15, i64 1}
!15 = !{!"_Bool", !6, i64 0}
!16 = !{!"", !6, i64 0}
!17 = !{!"simd_bitwidth", !15, i64 0, !18, i64 2}
!18 = !{!"short", !6, i64 0}
!19 = !{!20, !5, i64 664}
!20 = !{!"rte_config", !9, i64 0, !9, i64 4, !9, i64 8, !6, i64 12, !9, i64 140, !6, i64 144, !6, i64 656, !6, i64 660, !5, i64 664}
!21 = !{!13, !9, i64 16}
!22 = !{!13, !9, i64 592}
!23 = !{!13, !11, i64 0}
!24 = !{!6, !6, i64 0}
!25 = !{!26, !6, i64 25312}
!26 = !{!"rte_mem_config", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !27, i64 16, !27, i64 20, !27, i64 24, !27, i64 28, !27, i64 32, !6, i64 36, !28, i64 40, !6, i64 136, !6, i64 17544, !6, i64 19136, !9, i64 25280, !11, i64 25288, !9, i64 25296, !9, i64 25300, !11, i64 25304, !6, i64 25312}
!27 = !{!"", !9, i64 0}
!28 = !{!"rte_fbarray", !6, i64 0, !9, i64 64, !9, i64 68, !9, i64 72, !5, i64 80, !27, i64 88}
!29 = !{!13, !9, i64 648}
!30 = !{!31, !11, i64 0}
!31 = !{!"hugepage_info", !11, i64 0, !6, i64 8, !6, i64 4104, !9, i64 4232}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = !{!13, !9, i64 52}
!37 = distinct !{!37, !33}
!38 = distinct !{!38, !33}
!39 = !{!40, !9, i64 32}
!40 = !{!"hugepage_file", !5, i64 0, !5, i64 8, !11, i64 16, !11, i64 24, !9, i64 32, !9, i64 36, !6, i64 40}
!41 = !{!40, !11, i64 24}
!42 = distinct !{!42, !33}
!43 = distinct !{!43, !33}
!44 = distinct !{!44, !33}
!45 = distinct !{!45, !33}
!46 = distinct !{!46, !33}
!47 = !{!13, !15, i64 20}
!48 = !{i8 0, i8 2}
!49 = !{}
!50 = !{!51, !9, i64 104}
!51 = !{!"rte_memseg_list", !6, i64 0, !11, i64 8, !9, i64 16, !9, i64 20, !11, i64 24, !9, i64 32, !9, i64 36, !28, i64 40}
!52 = !{!51, !11, i64 24}
!53 = !{!51, !9, i64 36}
!54 = distinct !{!54, !33}
!55 = !{!40, !5, i64 8}
!56 = distinct !{!56, !33}
!57 = distinct !{!57, !33}
!58 = !{!59, !11, i64 8}
!59 = !{!"rlimit", !11, i64 0, !11, i64 8}
!60 = !{!59, !11, i64 0}
!61 = !{!51, !9, i64 108}
!62 = !{!51, !9, i64 32}
!63 = distinct !{!63, !33}
!64 = !{!65, !9, i64 136}
!65 = !{!"sigaction", !6, i64 0, !16, i64 8, !9, i64 136, !5, i64 144}
!66 = !{i64 0, i64 128, !24}
!67 = !{!15, !15, i64 0}
!68 = !{!69, !5, i64 8}
!69 = !{!"bitmask", !11, i64 0, !5, i64 8}
!70 = !{!69, !11, i64 0}
!71 = distinct !{!71, !33}
!72 = distinct !{!72, !33}
!73 = distinct !{!73, !33}
!74 = !{!40, !9, i64 36}
!75 = !{!40, !5, i64 0}
!76 = distinct !{!76, !33}
!77 = !{!40, !11, i64 16}
!78 = distinct !{!78, !33}
!79 = distinct !{!79, !33}
!80 = distinct !{!80, !33}
!81 = distinct !{!81, !33}
!82 = distinct !{!82, !33}
!83 = distinct !{!83, !33}
!84 = !{!13, !9, i64 36}
!85 = distinct !{!85, !33}
!86 = distinct !{!86, !33}
!87 = distinct !{!87, !33}
!88 = distinct !{!88, !33}
!89 = distinct !{!89, !33}
!90 = distinct !{!90, !33}
!91 = distinct !{!91, !33}
!92 = distinct !{!92, !33}
!93 = distinct !{!93, !33}
!94 = distinct !{!94, !33}
!95 = !{!51, !11, i64 8}
!96 = !{!51, !9, i64 16}
!97 = !{!28, !9, i64 64}
!98 = distinct !{!98, !33}
!99 = !{!100, !11, i64 24}
!100 = !{!"rte_memseg", !11, i64 0, !6, i64 8, !11, i64 16, !11, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44}
!101 = !{!100, !11, i64 16}
!102 = !{!100, !11, i64 0}
!103 = !{!100, !9, i64 32}
!104 = !{!100, !9, i64 36}
!105 = !{!100, !9, i64 40}
!106 = distinct !{!106, !33}
!107 = !{!108, !11, i64 48}
!108 = !{!"stat", !11, i64 0, !11, i64 8, !11, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !109, i64 72, !109, i64 88, !109, i64 104, !6, i64 120}
!109 = !{!"timespec", !11, i64 0, !11, i64 8}

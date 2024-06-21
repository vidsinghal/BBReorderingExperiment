; ModuleID = 'samples/394.bc'
source_filename = "distances.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwloc_topology = type { i32, i32, i32, ptr, ptr, i64, [20 x i32], [20 x i32], i32, i32, i32, i32, ptr, i64, ptr, i64, [6 x %struct.hwloc_special_level_s], ptr, ptr, %struct.hwloc_binding_hooks, %struct.hwloc_topology_support, ptr, ptr, i32, ptr, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, [5 x float], i32, ptr, ptr, i32, i32, ptr, %struct.hwloc_numanode_attr_s, i32, i32, ptr, i64, i32, ptr, ptr, ptr }
%struct.hwloc_special_level_s = type { i32, ptr, ptr, ptr }
%struct.hwloc_binding_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwloc_topology_support = type { ptr, ptr, ptr, ptr }
%struct.hwloc_numanode_attr_s = type { i64, i32, ptr }
%struct.hwloc_internal_distances_s = type { ptr, i32, i32, ptr, i32, ptr, ptr, i64, i32, ptr, ptr, ptr }
%struct.hwloc_tma = type { ptr, ptr, i32 }
%struct.hwloc_distances_container_s = type { i32, %struct.hwloc_distances_s }
%struct.hwloc_distances_s = type { i32, ptr, i64, ptr }
%struct.hwloc_obj = type { i32, ptr, i32, ptr, i64, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i64 }
%struct.hwloc_group_attr_s = type { i32, i32, i32, i8 }

@.str = private unnamed_addr constant [15 x i8] c"HWLOC_GROUPING\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [24 x i8] c"HWLOC_GROUPING_ACCURACY\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [4 x i8] c"try\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [23 x i8] c"HWLOC_GROUPING_VERBOSE\00", align 1, !dbg !22
@stderr = external global ptr, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"Trying to group objects using distance matrix:\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [43 x i8] c"!topology->tma || !topology->tma->dontfree\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [12 x i8] c"distances.c\00", align 1, !dbg !37
@__PRETTY_FUNCTION__.hwloc_internal_distances_refresh = private unnamed_addr constant [56 x i8] c"void hwloc_internal_distances_refresh(hwloc_topology_t)\00", align 1, !dbg !42
@.str.8 = private unnamed_addr constant [23 x i8] c"!tma || !tma->dontfree\00", align 1, !dbg !48
@__PRETTY_FUNCTION__.hwloc_internal_distances_dup_one = private unnamed_addr constant [99 x i8] c"int hwloc_internal_distances_dup_one(struct hwloc_topology *, struct hwloc_internal_distances_s *)\00", align 1, !dbg !50
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !55
@.str.10 = private unnamed_addr constant [9 x i8] c"gp_index\00", align 1, !dbg !60
@.str.11 = private unnamed_addr constant [9 x i8] c"os_index\00", align 1, !dbg !65
@.str.12 = private unnamed_addr constant [6 x i8] c" % 5d\00", align 1, !dbg !67
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !72
@.str.14 = private unnamed_addr constant [7 x i8] c"  % 5d\00", align 1, !dbg !74
@.str.15 = private unnamed_addr constant [8 x i8] c" % 5lld\00", align 1, !dbg !79
@.str.16 = private unnamed_addr constant [80 x i8] c"Trying to group %u %s objects according to physical distances with accuracy %f\0A\00", align 1, !dbg !84
@.str.17 = private unnamed_addr constant [25 x i8] c"distances:fromuser:group\00", align 1, !dbg !89
@.str.18 = private unnamed_addr constant [16 x i8] c"distances:group\00", align 1, !dbg !94
@.str.19 = private unnamed_addr constant [70 x i8] c" Distance matrix asymmetric ([%u,%u]=%llu != [%u,%u]=%llu), aborting\0A\00", align 1, !dbg !99
@.str.20 = private unnamed_addr constant [81 x i8] c" Distance to self not strictly minimal ([%u,%u]=%llu <= [%u,%u]=%llu), aborting\0A\00", align 1, !dbg !104
@.str.21 = private unnamed_addr constant [47 x i8] c"  found minimal distance %llu between objects\0A\00", align 1, !dbg !109
@.str.22 = private unnamed_addr constant [42 x i8] c"  object %u is minimally connected to %u\0A\00", align 1, !dbg !114
@.str.23 = private unnamed_addr constant [53 x i8] c"  object %u is minimally connected to %u through %u\0A\00", align 1, !dbg !119
@.str.24 = private unnamed_addr constant [80 x i8] c" Found transitive graph with %u objects with minimal distance %llu accuracy %f\0A\00", align 1, !dbg !124
@.str.25 = private unnamed_addr constant [16 x i8] c"NVLinkBandwidth\00", align 1, !dbg !126
@.str.26 = private unnamed_addr constant [9 x i8] c"NVSwitch\00", align 1, !dbg !128

; Function Attrs: nounwind uwtable
define hidden void @hwloc_internal_distances_init(ptr noundef %topology) #0 !dbg !413 {
entry:
  %topology.addr = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !776, metadata !DIExpression()), !dbg !781
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !782, !tbaa !777
  %last_dist = getelementptr inbounds %struct.hwloc_topology, ptr %0, i32 0, i32 25, !dbg !783
  store ptr null, ptr %last_dist, align 8, !dbg !784, !tbaa !785
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !792, !tbaa !777
  %first_dist = getelementptr inbounds %struct.hwloc_topology, ptr %1, i32 0, i32 24, !dbg !793
  store ptr null, ptr %first_dist, align 8, !dbg !794, !tbaa !795
  %2 = load ptr, ptr %topology.addr, align 8, !dbg !796, !tbaa !777
  %next_dist_id = getelementptr inbounds %struct.hwloc_topology, ptr %2, i32 0, i32 26, !dbg !797
  store i32 0, ptr %next_dist_id, align 8, !dbg !798, !tbaa !799
  ret void, !dbg !800
}

; Function Attrs: nounwind uwtable
define hidden void @hwloc_internal_distances_prepare(ptr noundef %topology) #0 !dbg !801 {
entry:
  %topology.addr = alloca ptr, align 8
  %env = alloca ptr, align 8
  %__old_locale = alloca ptr, align 8
  %__new_locale = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !803, metadata !DIExpression()), !dbg !807
  call void @llvm.lifetime.start.p0(i64 8, ptr %env) #15, !dbg !808
  tail call void @llvm.dbg.declare(metadata ptr %env, metadata !804, metadata !DIExpression()), !dbg !809
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old_locale) #15, !dbg !810
  tail call void @llvm.dbg.declare(metadata ptr %__old_locale, metadata !805, metadata !DIExpression()), !dbg !810
  store ptr null, ptr %__old_locale, align 8, !dbg !810, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new_locale) #15, !dbg !810
  tail call void @llvm.dbg.declare(metadata ptr %__new_locale, metadata !806, metadata !DIExpression()), !dbg !810
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !811, !tbaa !777
  %grouping = getelementptr inbounds %struct.hwloc_topology, ptr %0, i32 0, i32 32, !dbg !812
  store i32 1, ptr %grouping, align 8, !dbg !813, !tbaa !814
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !815, !tbaa !777
  %type_filter = getelementptr inbounds %struct.hwloc_topology, ptr %1, i32 0, i32 7, !dbg !817
  %arrayidx = getelementptr inbounds [20 x i32], ptr %type_filter, i64 0, i64 12, !dbg !815
  %2 = load i32, ptr %arrayidx, align 8, !dbg !815, !tbaa !818
  %cmp = icmp eq i32 %2, 1, !dbg !819
  br i1 %cmp, label %if.then, label %if.end, !dbg !820

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %topology.addr, align 8, !dbg !821, !tbaa !777
  %grouping1 = getelementptr inbounds %struct.hwloc_topology, ptr %3, i32 0, i32 32, !dbg !822
  store i32 0, ptr %grouping1, align 8, !dbg !823, !tbaa !814
  br label %if.end, !dbg !821

if.end:                                           ; preds = %if.then, %entry
  %call = call ptr @getenv(ptr noundef @.str) #15, !dbg !824
  store ptr %call, ptr %env, align 8, !dbg !825, !tbaa !777
  %4 = load ptr, ptr %env, align 8, !dbg !826, !tbaa !777
  %tobool = icmp ne ptr %4, null, !dbg !826
  br i1 %tobool, label %land.lhs.true, label %if.end6, !dbg !828

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %env, align 8, !dbg !829, !tbaa !777
  %call2 = call i32 @atoi(ptr noundef %5) #16, !dbg !830
  %tobool3 = icmp ne i32 %call2, 0, !dbg !830
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !831

if.then4:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %topology.addr, align 8, !dbg !832, !tbaa !777
  %grouping5 = getelementptr inbounds %struct.hwloc_topology, ptr %6, i32 0, i32 32, !dbg !833
  store i32 0, ptr %grouping5, align 8, !dbg !834, !tbaa !814
  br label %if.end6, !dbg !832

if.end6:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  %7 = load ptr, ptr %topology.addr, align 8, !dbg !835, !tbaa !777
  %grouping7 = getelementptr inbounds %struct.hwloc_topology, ptr %7, i32 0, i32 32, !dbg !837
  %8 = load i32, ptr %grouping7, align 8, !dbg !837, !tbaa !814
  %tobool8 = icmp ne i32 %8, 0, !dbg !835
  br i1 %tobool8, label %if.then9, label %if.end51, !dbg !838

if.then9:                                         ; preds = %if.end6
  %9 = load ptr, ptr %topology.addr, align 8, !dbg !839, !tbaa !777
  %grouping_next_subkind = getelementptr inbounds %struct.hwloc_topology, ptr %9, i32 0, i32 36, !dbg !841
  store i32 0, ptr %grouping_next_subkind, align 8, !dbg !842, !tbaa !843
  %10 = load ptr, ptr %topology.addr, align 8, !dbg !844, !tbaa !777
  %grouping_accuracies = getelementptr inbounds %struct.hwloc_topology, ptr %10, i32 0, i32 35, !dbg !845
  %arrayidx10 = getelementptr inbounds [5 x float], ptr %grouping_accuracies, i64 0, i64 0, !dbg !844
  store float 0.000000e+00, ptr %arrayidx10, align 4, !dbg !846, !tbaa !847
  %11 = load ptr, ptr %topology.addr, align 8, !dbg !849, !tbaa !777
  %grouping_accuracies11 = getelementptr inbounds %struct.hwloc_topology, ptr %11, i32 0, i32 35, !dbg !850
  %arrayidx12 = getelementptr inbounds [5 x float], ptr %grouping_accuracies11, i64 0, i64 1, !dbg !849
  store float 0x3F847AE140000000, ptr %arrayidx12, align 4, !dbg !851, !tbaa !847
  %12 = load ptr, ptr %topology.addr, align 8, !dbg !852, !tbaa !777
  %grouping_accuracies13 = getelementptr inbounds %struct.hwloc_topology, ptr %12, i32 0, i32 35, !dbg !853
  %arrayidx14 = getelementptr inbounds [5 x float], ptr %grouping_accuracies13, i64 0, i64 2, !dbg !852
  store float 0x3F947AE140000000, ptr %arrayidx14, align 4, !dbg !854, !tbaa !847
  %13 = load ptr, ptr %topology.addr, align 8, !dbg !855, !tbaa !777
  %grouping_accuracies15 = getelementptr inbounds %struct.hwloc_topology, ptr %13, i32 0, i32 35, !dbg !856
  %arrayidx16 = getelementptr inbounds [5 x float], ptr %grouping_accuracies15, i64 0, i64 3, !dbg !855
  store float 0x3FA99999A0000000, ptr %arrayidx16, align 4, !dbg !857, !tbaa !847
  %14 = load ptr, ptr %topology.addr, align 8, !dbg !858, !tbaa !777
  %grouping_accuracies17 = getelementptr inbounds %struct.hwloc_topology, ptr %14, i32 0, i32 35, !dbg !859
  %arrayidx18 = getelementptr inbounds [5 x float], ptr %grouping_accuracies17, i64 0, i64 4, !dbg !858
  store float 0x3FB99999A0000000, ptr %arrayidx18, align 4, !dbg !860, !tbaa !847
  %15 = load ptr, ptr %topology.addr, align 8, !dbg !861, !tbaa !777
  %grouping_nbaccuracies = getelementptr inbounds %struct.hwloc_topology, ptr %15, i32 0, i32 34, !dbg !862
  store i32 5, ptr %grouping_nbaccuracies, align 8, !dbg !863, !tbaa !864
  br label %do.body, !dbg !865

do.body:                                          ; preds = %if.then9
  %call19 = call ptr @newlocale(i32 noundef 8127, ptr noundef @.str.1, ptr noundef null) #15, !dbg !866
  store ptr %call19, ptr %__new_locale, align 8, !dbg !866, !tbaa !777
  %16 = load ptr, ptr %__new_locale, align 8, !dbg !868, !tbaa !777
  %cmp20 = icmp ne ptr %16, null, !dbg !868
  br i1 %cmp20, label %if.then21, label %if.end23, !dbg !866

if.then21:                                        ; preds = %do.body
  %17 = load ptr, ptr %__new_locale, align 8, !dbg !868, !tbaa !777
  %call22 = call ptr @uselocale(ptr noundef %17) #15, !dbg !868
  store ptr %call22, ptr %__old_locale, align 8, !dbg !868, !tbaa !777
  br label %if.end23, !dbg !868

if.end23:                                         ; preds = %if.then21, %do.body
  br label %do.cond, !dbg !866

do.cond:                                          ; preds = %if.end23
  br label %do.end, !dbg !866

do.end:                                           ; preds = %do.cond
  %call24 = call ptr @getenv(ptr noundef @.str.2) #15, !dbg !870
  store ptr %call24, ptr %env, align 8, !dbg !871, !tbaa !777
  %18 = load ptr, ptr %env, align 8, !dbg !872, !tbaa !777
  %tobool25 = icmp ne ptr %18, null, !dbg !872
  br i1 %tobool25, label %if.else, label %if.then26, !dbg !874

if.then26:                                        ; preds = %do.end
  %19 = load ptr, ptr %topology.addr, align 8, !dbg !875, !tbaa !777
  %grouping_nbaccuracies27 = getelementptr inbounds %struct.hwloc_topology, ptr %19, i32 0, i32 34, !dbg !877
  store i32 1, ptr %grouping_nbaccuracies27, align 8, !dbg !878, !tbaa !864
  br label %if.end36, !dbg !879

if.else:                                          ; preds = %do.end
  %20 = load ptr, ptr %env, align 8, !dbg !880, !tbaa !777
  %call28 = call i32 @strcmp(ptr noundef %20, ptr noundef @.str.3) #16, !dbg !882
  %tobool29 = icmp ne i32 %call28, 0, !dbg !882
  br i1 %tobool29, label %if.then30, label %if.end35, !dbg !883

if.then30:                                        ; preds = %if.else
  %21 = load ptr, ptr %topology.addr, align 8, !dbg !884, !tbaa !777
  %grouping_nbaccuracies31 = getelementptr inbounds %struct.hwloc_topology, ptr %21, i32 0, i32 34, !dbg !886
  store i32 1, ptr %grouping_nbaccuracies31, align 8, !dbg !887, !tbaa !864
  %22 = load ptr, ptr %env, align 8, !dbg !888, !tbaa !777
  %call32 = call double @atof(ptr noundef %22) #16, !dbg !889
  %conv = fptrunc double %call32 to float, !dbg !890
  %23 = load ptr, ptr %topology.addr, align 8, !dbg !891, !tbaa !777
  %grouping_accuracies33 = getelementptr inbounds %struct.hwloc_topology, ptr %23, i32 0, i32 35, !dbg !892
  %arrayidx34 = getelementptr inbounds [5 x float], ptr %grouping_accuracies33, i64 0, i64 0, !dbg !891
  store float %conv, ptr %arrayidx34, align 4, !dbg !893, !tbaa !847
  br label %if.end35, !dbg !894

if.end35:                                         ; preds = %if.then30, %if.else
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then26
  br label %do.body37, !dbg !895

do.body37:                                        ; preds = %if.end36
  %24 = load ptr, ptr %__new_locale, align 8, !dbg !896, !tbaa !777
  %cmp38 = icmp ne ptr %24, null, !dbg !896
  br i1 %cmp38, label %if.then40, label %if.end42, !dbg !899

if.then40:                                        ; preds = %do.body37
  %25 = load ptr, ptr %__old_locale, align 8, !dbg !900, !tbaa !777
  %call41 = call ptr @uselocale(ptr noundef %25) #15, !dbg !900
  %26 = load ptr, ptr %__new_locale, align 8, !dbg !900, !tbaa !777
  call void @freelocale(ptr noundef %26) #15, !dbg !900
  br label %if.end42, !dbg !900

if.end42:                                         ; preds = %if.then40, %do.body37
  br label %do.cond43, !dbg !899

do.cond43:                                        ; preds = %if.end42
  br label %do.end44, !dbg !899

do.end44:                                         ; preds = %do.cond43
  %27 = load ptr, ptr %topology.addr, align 8, !dbg !902, !tbaa !777
  %grouping_verbose = getelementptr inbounds %struct.hwloc_topology, ptr %27, i32 0, i32 33, !dbg !903
  store i32 0, ptr %grouping_verbose, align 4, !dbg !904, !tbaa !905
  %call45 = call ptr @getenv(ptr noundef @.str.4) #15, !dbg !906
  store ptr %call45, ptr %env, align 8, !dbg !907, !tbaa !777
  %28 = load ptr, ptr %env, align 8, !dbg !908, !tbaa !777
  %tobool46 = icmp ne ptr %28, null, !dbg !908
  br i1 %tobool46, label %if.then47, label %if.end50, !dbg !910

if.then47:                                        ; preds = %do.end44
  %29 = load ptr, ptr %env, align 8, !dbg !911, !tbaa !777
  %call48 = call i32 @atoi(ptr noundef %29) #16, !dbg !912
  %30 = load ptr, ptr %topology.addr, align 8, !dbg !913, !tbaa !777
  %grouping_verbose49 = getelementptr inbounds %struct.hwloc_topology, ptr %30, i32 0, i32 33, !dbg !914
  store i32 %call48, ptr %grouping_verbose49, align 4, !dbg !915, !tbaa !905
  br label %if.end50, !dbg !913

if.end50:                                         ; preds = %if.then47, %do.end44
  br label %if.end51, !dbg !916

if.end51:                                         ; preds = %if.end50, %if.end6
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new_locale) #15, !dbg !917
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old_locale) #15, !dbg !917
  call void @llvm.lifetime.end.p0(i64 8, ptr %env) #15, !dbg !917
  ret void, !dbg !917
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare !dbg !918 ptr @getenv(ptr noundef) #2

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i32 @atoi(ptr noundef nonnull %__nptr) #3 !dbg !922 {
entry:
  %__nptr.addr = alloca ptr, align 8
  store ptr %__nptr, ptr %__nptr.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %__nptr.addr, metadata !926, metadata !DIExpression()), !dbg !927
  %0 = load ptr, ptr %__nptr.addr, align 8, !dbg !928, !tbaa !777
  %call = call i64 @strtol(ptr noundef %0, ptr noundef null, i32 noundef 10) #15, !dbg !929
  %conv = trunc i64 %call to i32, !dbg !930
  ret i32 %conv, !dbg !931
}

; Function Attrs: nounwind
declare !dbg !932 ptr @newlocale(i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare !dbg !936 ptr @uselocale(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !939 i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally double @atof(ptr noundef nonnull %__nptr) #3 !dbg !943 {
entry:
  %__nptr.addr = alloca ptr, align 8
  store ptr %__nptr, ptr %__nptr.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %__nptr.addr, metadata !949, metadata !DIExpression()), !dbg !950
  %0 = load ptr, ptr %__nptr.addr, align 8, !dbg !951, !tbaa !777
  %call = call double @strtod(ptr noundef %0, ptr noundef null) #15, !dbg !952
  ret double %call, !dbg !953
}

; Function Attrs: nounwind
declare !dbg !954 void @freelocale(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden void @hwloc_internal_distances_destroy(ptr noundef %topology) #0 !dbg !957 {
entry:
  %topology.addr = alloca ptr, align 8
  %dist = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !959, metadata !DIExpression()), !dbg !962
  call void @llvm.lifetime.start.p0(i64 8, ptr %dist) #15, !dbg !963
  tail call void @llvm.dbg.declare(metadata ptr %dist, metadata !960, metadata !DIExpression()), !dbg !964
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #15, !dbg !963
  tail call void @llvm.dbg.declare(metadata ptr %next, metadata !961, metadata !DIExpression()), !dbg !965
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !966, !tbaa !777
  %first_dist = getelementptr inbounds %struct.hwloc_topology, ptr %0, i32 0, i32 24, !dbg !967
  %1 = load ptr, ptr %first_dist, align 8, !dbg !967, !tbaa !795
  store ptr %1, ptr %next, align 8, !dbg !965, !tbaa !777
  br label %while.cond, !dbg !968

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %next, align 8, !dbg !969, !tbaa !777
  store ptr %2, ptr %dist, align 8, !dbg !970, !tbaa !777
  %cmp = icmp ne ptr %2, null, !dbg !971
  br i1 %cmp, label %while.body, label %while.end, !dbg !968

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %dist, align 8, !dbg !972, !tbaa !777
  %next1 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %3, i32 0, i32 11, !dbg !974
  %4 = load ptr, ptr %next1, align 8, !dbg !974, !tbaa !975
  store ptr %4, ptr %next, align 8, !dbg !977, !tbaa !777
  %5 = load ptr, ptr %dist, align 8, !dbg !978, !tbaa !777
  call void @hwloc_internal_distances_free(ptr noundef %5), !dbg !979
  br label %while.cond, !dbg !968, !llvm.loop !980

while.end:                                        ; preds = %while.cond
  %6 = load ptr, ptr %topology.addr, align 8, !dbg !983, !tbaa !777
  %last_dist = getelementptr inbounds %struct.hwloc_topology, ptr %6, i32 0, i32 25, !dbg !984
  store ptr null, ptr %last_dist, align 8, !dbg !985, !tbaa !785
  %7 = load ptr, ptr %topology.addr, align 8, !dbg !986, !tbaa !777
  %first_dist2 = getelementptr inbounds %struct.hwloc_topology, ptr %7, i32 0, i32 24, !dbg !987
  store ptr null, ptr %first_dist2, align 8, !dbg !988, !tbaa !795
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #15, !dbg !989
  call void @llvm.lifetime.end.p0(i64 8, ptr %dist) #15, !dbg !989
  ret void, !dbg !989
}

; Function Attrs: nounwind uwtable
define internal void @hwloc_internal_distances_free(ptr noundef %dist) #0 !dbg !990 {
entry:
  %dist.addr = alloca ptr, align 8
  store ptr %dist, ptr %dist.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %dist.addr, metadata !994, metadata !DIExpression()), !dbg !995
  %0 = load ptr, ptr %dist.addr, align 8, !dbg !996, !tbaa !777
  %name = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %0, i32 0, i32 0, !dbg !997
  %1 = load ptr, ptr %name, align 8, !dbg !997, !tbaa !998
  call void @free(ptr noundef %1) #15, !dbg !999
  %2 = load ptr, ptr %dist.addr, align 8, !dbg !1000, !tbaa !777
  %different_types = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %2, i32 0, i32 3, !dbg !1001
  %3 = load ptr, ptr %different_types, align 8, !dbg !1001, !tbaa !1002
  call void @free(ptr noundef %3) #15, !dbg !1003
  %4 = load ptr, ptr %dist.addr, align 8, !dbg !1004, !tbaa !777
  %indexes = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %4, i32 0, i32 5, !dbg !1005
  %5 = load ptr, ptr %indexes, align 8, !dbg !1005, !tbaa !1006
  call void @free(ptr noundef %5) #15, !dbg !1007
  %6 = load ptr, ptr %dist.addr, align 8, !dbg !1008, !tbaa !777
  %objs = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %6, i32 0, i32 9, !dbg !1009
  %7 = load ptr, ptr %objs, align 8, !dbg !1009, !tbaa !1010
  call void @free(ptr noundef %7) #15, !dbg !1011
  %8 = load ptr, ptr %dist.addr, align 8, !dbg !1012, !tbaa !777
  %values = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %8, i32 0, i32 6, !dbg !1013
  %9 = load ptr, ptr %values, align 8, !dbg !1013, !tbaa !1014
  call void @free(ptr noundef %9) #15, !dbg !1015
  %10 = load ptr, ptr %dist.addr, align 8, !dbg !1016, !tbaa !777
  call void @free(ptr noundef %10) #15, !dbg !1017
  ret void, !dbg !1018
}

; Function Attrs: nounwind uwtable
define hidden i32 @hwloc_internal_distances_dup(ptr noundef %new, ptr noundef %old) #0 !dbg !1019 {
entry:
  %retval = alloca i32, align 4
  %new.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %olddist = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %new, ptr %new.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1023, metadata !DIExpression()), !dbg !1027
  store ptr %old, ptr %old.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1024, metadata !DIExpression()), !dbg !1028
  call void @llvm.lifetime.start.p0(i64 8, ptr %olddist) #15, !dbg !1029
  tail call void @llvm.dbg.declare(metadata ptr %olddist, metadata !1025, metadata !DIExpression()), !dbg !1030
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !1031
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1026, metadata !DIExpression()), !dbg !1032
  %0 = load ptr, ptr %old.addr, align 8, !dbg !1033, !tbaa !777
  %next_dist_id = getelementptr inbounds %struct.hwloc_topology, ptr %0, i32 0, i32 26, !dbg !1034
  %1 = load i32, ptr %next_dist_id, align 8, !dbg !1034, !tbaa !799
  %2 = load ptr, ptr %new.addr, align 8, !dbg !1035, !tbaa !777
  %next_dist_id1 = getelementptr inbounds %struct.hwloc_topology, ptr %2, i32 0, i32 26, !dbg !1036
  store i32 %1, ptr %next_dist_id1, align 8, !dbg !1037, !tbaa !799
  %3 = load ptr, ptr %old.addr, align 8, !dbg !1038, !tbaa !777
  %first_dist = getelementptr inbounds %struct.hwloc_topology, ptr %3, i32 0, i32 24, !dbg !1040
  %4 = load ptr, ptr %first_dist, align 8, !dbg !1040, !tbaa !795
  store ptr %4, ptr %olddist, align 8, !dbg !1041, !tbaa !777
  br label %for.cond, !dbg !1042

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %olddist, align 8, !dbg !1043, !tbaa !777
  %tobool = icmp ne ptr %5, null, !dbg !1045
  br i1 %tobool, label %for.body, label %for.end, !dbg !1045

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %new.addr, align 8, !dbg !1046, !tbaa !777
  %7 = load ptr, ptr %olddist, align 8, !dbg !1048, !tbaa !777
  %call = call i32 @hwloc_internal_distances_dup_one(ptr noundef %6, ptr noundef %7), !dbg !1049
  store i32 %call, ptr %err, align 4, !dbg !1050, !tbaa !1051
  %8 = load i32, ptr %err, align 4, !dbg !1052, !tbaa !1051
  %cmp = icmp slt i32 %8, 0, !dbg !1054
  br i1 %cmp, label %if.then, label %if.end, !dbg !1055

if.then:                                          ; preds = %for.body
  %9 = load i32, ptr %err, align 4, !dbg !1056, !tbaa !1051
  store i32 %9, ptr %retval, align 4, !dbg !1057
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1057

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1058

for.inc:                                          ; preds = %if.end
  %10 = load ptr, ptr %olddist, align 8, !dbg !1059, !tbaa !777
  %next = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %10, i32 0, i32 11, !dbg !1060
  %11 = load ptr, ptr %next, align 8, !dbg !1060, !tbaa !975
  store ptr %11, ptr %olddist, align 8, !dbg !1061, !tbaa !777
  br label %for.cond, !dbg !1062, !llvm.loop !1063

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1065
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1065

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !1066
  call void @llvm.lifetime.end.p0(i64 8, ptr %olddist) #15, !dbg !1066
  %12 = load i32, ptr %retval, align 4, !dbg !1066
  ret i32 %12, !dbg !1066
}

; Function Attrs: nounwind uwtable
define internal i32 @hwloc_internal_distances_dup_one(ptr noundef %new, ptr noundef %olddist) #0 !dbg !1067 {
entry:
  %retval = alloca i32, align 4
  %new.addr = alloca ptr, align 8
  %olddist.addr = alloca ptr, align 8
  %tma = alloca ptr, align 8
  %newdist = alloca ptr, align 8
  %nbobjs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %new, ptr %new.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1071, metadata !DIExpression()), !dbg !1076
  store ptr %olddist, ptr %olddist.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %olddist.addr, metadata !1072, metadata !DIExpression()), !dbg !1077
  call void @llvm.lifetime.start.p0(i64 8, ptr %tma) #15, !dbg !1078
  tail call void @llvm.dbg.declare(metadata ptr %tma, metadata !1073, metadata !DIExpression()), !dbg !1079
  %0 = load ptr, ptr %new.addr, align 8, !dbg !1080, !tbaa !777
  %tma1 = getelementptr inbounds %struct.hwloc_topology, ptr %0, i32 0, i32 41, !dbg !1081
  %1 = load ptr, ptr %tma1, align 8, !dbg !1081, !tbaa !1082
  store ptr %1, ptr %tma, align 8, !dbg !1079, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 8, ptr %newdist) #15, !dbg !1083
  tail call void @llvm.dbg.declare(metadata ptr %newdist, metadata !1074, metadata !DIExpression()), !dbg !1084
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbobjs) #15, !dbg !1085
  tail call void @llvm.dbg.declare(metadata ptr %nbobjs, metadata !1075, metadata !DIExpression()), !dbg !1086
  %2 = load ptr, ptr %olddist.addr, align 8, !dbg !1087, !tbaa !777
  %nbobjs2 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %2, i32 0, i32 4, !dbg !1088
  %3 = load i32, ptr %nbobjs2, align 8, !dbg !1088, !tbaa !1089
  store i32 %3, ptr %nbobjs, align 4, !dbg !1086, !tbaa !1051
  %4 = load ptr, ptr %tma, align 8, !dbg !1090, !tbaa !777
  %call = call ptr @hwloc_tma_malloc(ptr noundef %4, i64 noundef 88), !dbg !1091
  store ptr %call, ptr %newdist, align 8, !dbg !1092, !tbaa !777
  %5 = load ptr, ptr %newdist, align 8, !dbg !1093, !tbaa !777
  %tobool = icmp ne ptr %5, null, !dbg !1093
  br i1 %tobool, label %if.end, label %if.then, !dbg !1095

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !1096
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1096

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %olddist.addr, align 8, !dbg !1097, !tbaa !777
  %name = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %6, i32 0, i32 0, !dbg !1099
  %7 = load ptr, ptr %name, align 8, !dbg !1099, !tbaa !998
  %tobool3 = icmp ne ptr %7, null, !dbg !1097
  br i1 %tobool3, label %if.then4, label %if.else16, !dbg !1100

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %tma, align 8, !dbg !1101, !tbaa !777
  %9 = load ptr, ptr %olddist.addr, align 8, !dbg !1103, !tbaa !777
  %name5 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %9, i32 0, i32 0, !dbg !1104
  %10 = load ptr, ptr %name5, align 8, !dbg !1104, !tbaa !998
  %call6 = call ptr @hwloc_tma_strdup(ptr noundef %8, ptr noundef %10), !dbg !1105
  %11 = load ptr, ptr %newdist, align 8, !dbg !1106, !tbaa !777
  %name7 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %11, i32 0, i32 0, !dbg !1107
  store ptr %call6, ptr %name7, align 8, !dbg !1108, !tbaa !998
  %12 = load ptr, ptr %newdist, align 8, !dbg !1109, !tbaa !777
  %name8 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %12, i32 0, i32 0, !dbg !1111
  %13 = load ptr, ptr %name8, align 8, !dbg !1111, !tbaa !998
  %tobool9 = icmp ne ptr %13, null, !dbg !1109
  br i1 %tobool9, label %if.end15, label %if.then10, !dbg !1112

if.then10:                                        ; preds = %if.then4
  %14 = load ptr, ptr %tma, align 8, !dbg !1113, !tbaa !777
  %tobool11 = icmp ne ptr %14, null, !dbg !1113
  br i1 %tobool11, label %lor.lhs.false, label %if.then13, !dbg !1113

lor.lhs.false:                                    ; preds = %if.then10
  %15 = load ptr, ptr %tma, align 8, !dbg !1113, !tbaa !777
  %dontfree = getelementptr inbounds %struct.hwloc_tma, ptr %15, i32 0, i32 2, !dbg !1113
  %16 = load i32, ptr %dontfree, align 8, !dbg !1113, !tbaa !1117
  %tobool12 = icmp ne i32 %16, 0, !dbg !1113
  br i1 %tobool12, label %if.else, label %if.then13, !dbg !1119

if.then13:                                        ; preds = %lor.lhs.false, %if.then10
  br label %if.end14, !dbg !1119

if.else:                                          ; preds = %lor.lhs.false
  call void @__assert_fail(ptr noundef @.str.8, ptr noundef @.str.7, i32 noundef 138, ptr noundef @__PRETTY_FUNCTION__.hwloc_internal_distances_dup_one) #17, !dbg !1113
  unreachable, !dbg !1113

if.end14:                                         ; preds = %if.then13
  %17 = load ptr, ptr %newdist, align 8, !dbg !1120, !tbaa !777
  call void @hwloc_internal_distances_free(ptr noundef %17), !dbg !1121
  store i32 -1, ptr %retval, align 4, !dbg !1122
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1122

if.end15:                                         ; preds = %if.then4
  br label %if.end18, !dbg !1123

if.else16:                                        ; preds = %if.end
  %18 = load ptr, ptr %newdist, align 8, !dbg !1124, !tbaa !777
  %name17 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %18, i32 0, i32 0, !dbg !1126
  store ptr null, ptr %name17, align 8, !dbg !1127, !tbaa !998
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %if.end15
  %19 = load ptr, ptr %olddist.addr, align 8, !dbg !1128, !tbaa !777
  %different_types = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %19, i32 0, i32 3, !dbg !1130
  %20 = load ptr, ptr %different_types, align 8, !dbg !1130, !tbaa !1002
  %tobool19 = icmp ne ptr %20, null, !dbg !1128
  br i1 %tobool19, label %if.then20, label %if.else38, !dbg !1131

if.then20:                                        ; preds = %if.end18
  %21 = load ptr, ptr %tma, align 8, !dbg !1132, !tbaa !777
  %22 = load i32, ptr %nbobjs, align 4, !dbg !1134, !tbaa !1051
  %conv = zext i32 %22 to i64, !dbg !1134
  %mul = mul i64 %conv, 4, !dbg !1135
  %call21 = call ptr @hwloc_tma_malloc(ptr noundef %21, i64 noundef %mul), !dbg !1136
  %23 = load ptr, ptr %newdist, align 8, !dbg !1137, !tbaa !777
  %different_types22 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %23, i32 0, i32 3, !dbg !1138
  store ptr %call21, ptr %different_types22, align 8, !dbg !1139, !tbaa !1002
  %24 = load ptr, ptr %newdist, align 8, !dbg !1140, !tbaa !777
  %different_types23 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %24, i32 0, i32 3, !dbg !1142
  %25 = load ptr, ptr %different_types23, align 8, !dbg !1142, !tbaa !1002
  %tobool24 = icmp ne ptr %25, null, !dbg !1140
  br i1 %tobool24, label %if.end33, label %if.then25, !dbg !1143

if.then25:                                        ; preds = %if.then20
  %26 = load ptr, ptr %tma, align 8, !dbg !1144, !tbaa !777
  %tobool26 = icmp ne ptr %26, null, !dbg !1144
  br i1 %tobool26, label %lor.lhs.false27, label %if.then30, !dbg !1144

lor.lhs.false27:                                  ; preds = %if.then25
  %27 = load ptr, ptr %tma, align 8, !dbg !1144, !tbaa !777
  %dontfree28 = getelementptr inbounds %struct.hwloc_tma, ptr %27, i32 0, i32 2, !dbg !1144
  %28 = load i32, ptr %dontfree28, align 8, !dbg !1144, !tbaa !1117
  %tobool29 = icmp ne i32 %28, 0, !dbg !1144
  br i1 %tobool29, label %if.else31, label %if.then30, !dbg !1148

if.then30:                                        ; preds = %lor.lhs.false27, %if.then25
  br label %if.end32, !dbg !1148

if.else31:                                        ; preds = %lor.lhs.false27
  call void @__assert_fail(ptr noundef @.str.8, ptr noundef @.str.7, i32 noundef 149, ptr noundef @__PRETTY_FUNCTION__.hwloc_internal_distances_dup_one) #17, !dbg !1144
  unreachable, !dbg !1144

if.end32:                                         ; preds = %if.then30
  %29 = load ptr, ptr %newdist, align 8, !dbg !1149, !tbaa !777
  call void @hwloc_internal_distances_free(ptr noundef %29), !dbg !1150
  store i32 -1, ptr %retval, align 4, !dbg !1151
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1151

if.end33:                                         ; preds = %if.then20
  %30 = load ptr, ptr %newdist, align 8, !dbg !1152, !tbaa !777
  %different_types34 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %30, i32 0, i32 3, !dbg !1153
  %31 = load ptr, ptr %different_types34, align 8, !dbg !1153, !tbaa !1002
  %32 = load ptr, ptr %olddist.addr, align 8, !dbg !1154, !tbaa !777
  %different_types35 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %32, i32 0, i32 3, !dbg !1155
  %33 = load ptr, ptr %different_types35, align 8, !dbg !1155, !tbaa !1002
  %34 = load i32, ptr %nbobjs, align 4, !dbg !1156, !tbaa !1051
  %conv36 = zext i32 %34 to i64, !dbg !1156
  %mul37 = mul i64 %conv36, 4, !dbg !1157
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %31, ptr align 4 %33, i64 %mul37, i1 false), !dbg !1158
  br label %if.end40, !dbg !1159

if.else38:                                        ; preds = %if.end18
  %35 = load ptr, ptr %newdist, align 8, !dbg !1160, !tbaa !777
  %different_types39 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %35, i32 0, i32 3, !dbg !1161
  store ptr null, ptr %different_types39, align 8, !dbg !1162, !tbaa !1002
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %if.end33
  %36 = load ptr, ptr %olddist.addr, align 8, !dbg !1163, !tbaa !777
  %unique_type = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %36, i32 0, i32 2, !dbg !1164
  %37 = load i32, ptr %unique_type, align 4, !dbg !1164, !tbaa !1165
  %38 = load ptr, ptr %newdist, align 8, !dbg !1166, !tbaa !777
  %unique_type41 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %38, i32 0, i32 2, !dbg !1167
  store i32 %37, ptr %unique_type41, align 4, !dbg !1168, !tbaa !1165
  %39 = load i32, ptr %nbobjs, align 4, !dbg !1169, !tbaa !1051
  %40 = load ptr, ptr %newdist, align 8, !dbg !1170, !tbaa !777
  %nbobjs42 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %40, i32 0, i32 4, !dbg !1171
  store i32 %39, ptr %nbobjs42, align 8, !dbg !1172, !tbaa !1089
  %41 = load ptr, ptr %olddist.addr, align 8, !dbg !1173, !tbaa !777
  %kind = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %41, i32 0, i32 7, !dbg !1174
  %42 = load i64, ptr %kind, align 8, !dbg !1174, !tbaa !1175
  %43 = load ptr, ptr %newdist, align 8, !dbg !1176, !tbaa !777
  %kind43 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %43, i32 0, i32 7, !dbg !1177
  store i64 %42, ptr %kind43, align 8, !dbg !1178, !tbaa !1175
  %44 = load ptr, ptr %olddist.addr, align 8, !dbg !1179, !tbaa !777
  %id = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %44, i32 0, i32 1, !dbg !1180
  %45 = load i32, ptr %id, align 8, !dbg !1180, !tbaa !1181
  %46 = load ptr, ptr %newdist, align 8, !dbg !1182, !tbaa !777
  %id44 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %46, i32 0, i32 1, !dbg !1183
  store i32 %45, ptr %id44, align 8, !dbg !1184, !tbaa !1181
  %47 = load ptr, ptr %tma, align 8, !dbg !1185, !tbaa !777
  %48 = load i32, ptr %nbobjs, align 4, !dbg !1186, !tbaa !1051
  %conv45 = zext i32 %48 to i64, !dbg !1186
  %mul46 = mul i64 %conv45, 8, !dbg !1187
  %call47 = call ptr @hwloc_tma_malloc(ptr noundef %47, i64 noundef %mul46), !dbg !1188
  %49 = load ptr, ptr %newdist, align 8, !dbg !1189, !tbaa !777
  %indexes = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %49, i32 0, i32 5, !dbg !1190
  store ptr %call47, ptr %indexes, align 8, !dbg !1191, !tbaa !1006
  %50 = load ptr, ptr %tma, align 8, !dbg !1192, !tbaa !777
  %51 = load i32, ptr %nbobjs, align 4, !dbg !1193, !tbaa !1051
  %conv48 = zext i32 %51 to i64, !dbg !1193
  %mul49 = mul i64 %conv48, 8, !dbg !1194
  %call50 = call ptr @hwloc_tma_calloc(ptr noundef %50, i64 noundef %mul49), !dbg !1195
  %52 = load ptr, ptr %newdist, align 8, !dbg !1196, !tbaa !777
  %objs = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %52, i32 0, i32 9, !dbg !1197
  store ptr %call50, ptr %objs, align 8, !dbg !1198, !tbaa !1010
  %53 = load ptr, ptr %olddist.addr, align 8, !dbg !1199, !tbaa !777
  %iflags = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %53, i32 0, i32 8, !dbg !1200
  %54 = load i32, ptr %iflags, align 8, !dbg !1200, !tbaa !1201
  %and = and i32 %54, -2, !dbg !1202
  %55 = load ptr, ptr %newdist, align 8, !dbg !1203, !tbaa !777
  %iflags51 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %55, i32 0, i32 8, !dbg !1204
  store i32 %and, ptr %iflags51, align 8, !dbg !1205, !tbaa !1201
  %56 = load ptr, ptr %tma, align 8, !dbg !1206, !tbaa !777
  %57 = load i32, ptr %nbobjs, align 4, !dbg !1207, !tbaa !1051
  %58 = load i32, ptr %nbobjs, align 4, !dbg !1208, !tbaa !1051
  %mul52 = mul i32 %57, %58, !dbg !1209
  %conv53 = zext i32 %mul52 to i64, !dbg !1207
  %mul54 = mul i64 %conv53, 8, !dbg !1210
  %call55 = call ptr @hwloc_tma_malloc(ptr noundef %56, i64 noundef %mul54), !dbg !1211
  %59 = load ptr, ptr %newdist, align 8, !dbg !1212, !tbaa !777
  %values = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %59, i32 0, i32 6, !dbg !1213
  store ptr %call55, ptr %values, align 8, !dbg !1214, !tbaa !1014
  %60 = load ptr, ptr %newdist, align 8, !dbg !1215, !tbaa !777
  %indexes56 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %60, i32 0, i32 5, !dbg !1217
  %61 = load ptr, ptr %indexes56, align 8, !dbg !1217, !tbaa !1006
  %tobool57 = icmp ne ptr %61, null, !dbg !1215
  br i1 %tobool57, label %lor.lhs.false58, label %if.then64, !dbg !1218

lor.lhs.false58:                                  ; preds = %if.end40
  %62 = load ptr, ptr %newdist, align 8, !dbg !1219, !tbaa !777
  %objs59 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %62, i32 0, i32 9, !dbg !1220
  %63 = load ptr, ptr %objs59, align 8, !dbg !1220, !tbaa !1010
  %tobool60 = icmp ne ptr %63, null, !dbg !1219
  br i1 %tobool60, label %lor.lhs.false61, label %if.then64, !dbg !1221

lor.lhs.false61:                                  ; preds = %lor.lhs.false58
  %64 = load ptr, ptr %newdist, align 8, !dbg !1222, !tbaa !777
  %values62 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %64, i32 0, i32 6, !dbg !1223
  %65 = load ptr, ptr %values62, align 8, !dbg !1223, !tbaa !1014
  %tobool63 = icmp ne ptr %65, null, !dbg !1222
  br i1 %tobool63, label %if.end72, label %if.then64, !dbg !1224

if.then64:                                        ; preds = %lor.lhs.false61, %lor.lhs.false58, %if.end40
  %66 = load ptr, ptr %tma, align 8, !dbg !1225, !tbaa !777
  %tobool65 = icmp ne ptr %66, null, !dbg !1225
  br i1 %tobool65, label %lor.lhs.false66, label %if.then69, !dbg !1225

lor.lhs.false66:                                  ; preds = %if.then64
  %67 = load ptr, ptr %tma, align 8, !dbg !1225, !tbaa !777
  %dontfree67 = getelementptr inbounds %struct.hwloc_tma, ptr %67, i32 0, i32 2, !dbg !1225
  %68 = load i32, ptr %dontfree67, align 8, !dbg !1225, !tbaa !1117
  %tobool68 = icmp ne i32 %68, 0, !dbg !1225
  br i1 %tobool68, label %if.else70, label %if.then69, !dbg !1229

if.then69:                                        ; preds = %lor.lhs.false66, %if.then64
  br label %if.end71, !dbg !1229

if.else70:                                        ; preds = %lor.lhs.false66
  call void @__assert_fail(ptr noundef @.str.8, ptr noundef @.str.7, i32 noundef 166, ptr noundef @__PRETTY_FUNCTION__.hwloc_internal_distances_dup_one) #17, !dbg !1225
  unreachable, !dbg !1225

if.end71:                                         ; preds = %if.then69
  %69 = load ptr, ptr %newdist, align 8, !dbg !1230, !tbaa !777
  call void @hwloc_internal_distances_free(ptr noundef %69), !dbg !1231
  store i32 -1, ptr %retval, align 4, !dbg !1232
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1232

if.end72:                                         ; preds = %lor.lhs.false61
  %70 = load ptr, ptr %newdist, align 8, !dbg !1233, !tbaa !777
  %indexes73 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %70, i32 0, i32 5, !dbg !1234
  %71 = load ptr, ptr %indexes73, align 8, !dbg !1234, !tbaa !1006
  %72 = load ptr, ptr %olddist.addr, align 8, !dbg !1235, !tbaa !777
  %indexes74 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %72, i32 0, i32 5, !dbg !1236
  %73 = load ptr, ptr %indexes74, align 8, !dbg !1236, !tbaa !1006
  %74 = load i32, ptr %nbobjs, align 4, !dbg !1237, !tbaa !1051
  %conv75 = zext i32 %74 to i64, !dbg !1237
  %mul76 = mul i64 %conv75, 8, !dbg !1238
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %71, ptr align 8 %73, i64 %mul76, i1 false), !dbg !1239
  %75 = load ptr, ptr %newdist, align 8, !dbg !1240, !tbaa !777
  %values77 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %75, i32 0, i32 6, !dbg !1241
  %76 = load ptr, ptr %values77, align 8, !dbg !1241, !tbaa !1014
  %77 = load ptr, ptr %olddist.addr, align 8, !dbg !1242, !tbaa !777
  %values78 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %77, i32 0, i32 6, !dbg !1243
  %78 = load ptr, ptr %values78, align 8, !dbg !1243, !tbaa !1014
  %79 = load i32, ptr %nbobjs, align 4, !dbg !1244, !tbaa !1051
  %80 = load i32, ptr %nbobjs, align 4, !dbg !1245, !tbaa !1051
  %mul79 = mul i32 %79, %80, !dbg !1246
  %conv80 = zext i32 %mul79 to i64, !dbg !1244
  %mul81 = mul i64 %conv80, 8, !dbg !1247
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %76, ptr align 8 %78, i64 %mul81, i1 false), !dbg !1248
  %81 = load ptr, ptr %newdist, align 8, !dbg !1249, !tbaa !777
  %next = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %81, i32 0, i32 11, !dbg !1250
  store ptr null, ptr %next, align 8, !dbg !1251, !tbaa !975
  %82 = load ptr, ptr %new.addr, align 8, !dbg !1252, !tbaa !777
  %last_dist = getelementptr inbounds %struct.hwloc_topology, ptr %82, i32 0, i32 25, !dbg !1253
  %83 = load ptr, ptr %last_dist, align 8, !dbg !1253, !tbaa !785
  %84 = load ptr, ptr %newdist, align 8, !dbg !1254, !tbaa !777
  %prev = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %84, i32 0, i32 10, !dbg !1255
  store ptr %83, ptr %prev, align 8, !dbg !1256, !tbaa !1257
  %85 = load ptr, ptr %new.addr, align 8, !dbg !1258, !tbaa !777
  %last_dist82 = getelementptr inbounds %struct.hwloc_topology, ptr %85, i32 0, i32 25, !dbg !1260
  %86 = load ptr, ptr %last_dist82, align 8, !dbg !1260, !tbaa !785
  %tobool83 = icmp ne ptr %86, null, !dbg !1258
  br i1 %tobool83, label %if.then84, label %if.else87, !dbg !1261

if.then84:                                        ; preds = %if.end72
  %87 = load ptr, ptr %newdist, align 8, !dbg !1262, !tbaa !777
  %88 = load ptr, ptr %new.addr, align 8, !dbg !1263, !tbaa !777
  %last_dist85 = getelementptr inbounds %struct.hwloc_topology, ptr %88, i32 0, i32 25, !dbg !1264
  %89 = load ptr, ptr %last_dist85, align 8, !dbg !1264, !tbaa !785
  %next86 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %89, i32 0, i32 11, !dbg !1265
  store ptr %87, ptr %next86, align 8, !dbg !1266, !tbaa !975
  br label %if.end88, !dbg !1263

if.else87:                                        ; preds = %if.end72
  %90 = load ptr, ptr %newdist, align 8, !dbg !1267, !tbaa !777
  %91 = load ptr, ptr %new.addr, align 8, !dbg !1268, !tbaa !777
  %first_dist = getelementptr inbounds %struct.hwloc_topology, ptr %91, i32 0, i32 24, !dbg !1269
  store ptr %90, ptr %first_dist, align 8, !dbg !1270, !tbaa !795
  br label %if.end88

if.end88:                                         ; preds = %if.else87, %if.then84
  %92 = load ptr, ptr %newdist, align 8, !dbg !1271, !tbaa !777
  %93 = load ptr, ptr %new.addr, align 8, !dbg !1272, !tbaa !777
  %last_dist89 = getelementptr inbounds %struct.hwloc_topology, ptr %93, i32 0, i32 25, !dbg !1273
  store ptr %92, ptr %last_dist89, align 8, !dbg !1274, !tbaa !785
  store i32 0, ptr %retval, align 4, !dbg !1275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1275

cleanup:                                          ; preds = %if.end88, %if.end71, %if.end32, %if.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbobjs) #15, !dbg !1276
  call void @llvm.lifetime.end.p0(i64 8, ptr %newdist) #15, !dbg !1276
  call void @llvm.lifetime.end.p0(i64 8, ptr %tma) #15, !dbg !1276
  %94 = load i32, ptr %retval, align 4, !dbg !1276
  ret i32 %94, !dbg !1276
}

; Function Attrs: nounwind uwtable
define i32 @hwloc_distances_remove(ptr noundef %topology) #0 !dbg !1277 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1279, metadata !DIExpression()), !dbg !1280
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !1281, !tbaa !777
  %is_loaded = getelementptr inbounds %struct.hwloc_topology, ptr %0, i32 0, i32 9, !dbg !1283
  %1 = load i32, ptr %is_loaded, align 4, !dbg !1283, !tbaa !1284
  %tobool = icmp ne i32 %1, 0, !dbg !1281
  br i1 %tobool, label %if.end, label %if.then, !dbg !1285

if.then:                                          ; preds = %entry
  %call = call ptr @__errno_location() #18, !dbg !1286
  store i32 22, ptr %call, align 4, !dbg !1288, !tbaa !1051
  store i32 -1, ptr %retval, align 4, !dbg !1289
  br label %return, !dbg !1289

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %topology.addr, align 8, !dbg !1290, !tbaa !777
  %adopted_shmem_addr = getelementptr inbounds %struct.hwloc_topology, ptr %2, i32 0, i32 14, !dbg !1292
  %3 = load ptr, ptr %adopted_shmem_addr, align 8, !dbg !1292, !tbaa !1293
  %tobool1 = icmp ne ptr %3, null, !dbg !1290
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !1294

if.then2:                                         ; preds = %if.end
  %call3 = call ptr @__errno_location() #18, !dbg !1295
  store i32 1, ptr %call3, align 4, !dbg !1297, !tbaa !1051
  store i32 -1, ptr %retval, align 4, !dbg !1298
  br label %return, !dbg !1298

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %topology.addr, align 8, !dbg !1299, !tbaa !777
  call void @hwloc_internal_distances_destroy(ptr noundef %4), !dbg !1300
  store i32 0, ptr %retval, align 4, !dbg !1301
  br label %return, !dbg !1301

return:                                           ; preds = %if.end4, %if.then2, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !1302
  ret i32 %5, !dbg !1302
}

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !1303 ptr @__errno_location() #5

; Function Attrs: nounwind uwtable
define i32 @hwloc_distances_remove_by_depth(ptr noundef %topology, i32 noundef %depth) #0 !dbg !1308 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %depth.addr = alloca i32, align 4
  %dist = alloca ptr, align 8
  %next = alloca ptr, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1312, metadata !DIExpression()), !dbg !1317
  store i32 %depth, ptr %depth.addr, align 4, !tbaa !1051
  tail call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !1313, metadata !DIExpression()), !dbg !1318
  call void @llvm.lifetime.start.p0(i64 8, ptr %dist) #15, !dbg !1319
  tail call void @llvm.dbg.declare(metadata ptr %dist, metadata !1314, metadata !DIExpression()), !dbg !1320
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #15, !dbg !1319
  tail call void @llvm.dbg.declare(metadata ptr %next, metadata !1315, metadata !DIExpression()), !dbg !1321
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #15, !dbg !1322
  tail call void @llvm.dbg.declare(metadata ptr %type, metadata !1316, metadata !DIExpression()), !dbg !1323
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !1324, !tbaa !777
  %is_loaded = getelementptr inbounds %struct.hwloc_topology, ptr %0, i32 0, i32 9, !dbg !1326
  %1 = load i32, ptr %is_loaded, align 4, !dbg !1326, !tbaa !1284
  %tobool = icmp ne i32 %1, 0, !dbg !1324
  br i1 %tobool, label %if.end, label %if.then, !dbg !1327

if.then:                                          ; preds = %entry
  %call = call ptr @__errno_location() #18, !dbg !1328
  store i32 22, ptr %call, align 4, !dbg !1330, !tbaa !1051
  store i32 -1, ptr %retval, align 4, !dbg !1331
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1331

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %topology.addr, align 8, !dbg !1332, !tbaa !777
  %adopted_shmem_addr = getelementptr inbounds %struct.hwloc_topology, ptr %2, i32 0, i32 14, !dbg !1334
  %3 = load ptr, ptr %adopted_shmem_addr, align 8, !dbg !1334, !tbaa !1293
  %tobool1 = icmp ne ptr %3, null, !dbg !1332
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !1335

if.then2:                                         ; preds = %if.end
  %call3 = call ptr @__errno_location() #18, !dbg !1336
  store i32 1, ptr %call3, align 4, !dbg !1338, !tbaa !1051
  store i32 -1, ptr %retval, align 4, !dbg !1339
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1339

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %topology.addr, align 8, !dbg !1340, !tbaa !777
  %5 = load i32, ptr %depth.addr, align 4, !dbg !1341, !tbaa !1051
  %call5 = call i32 @hwloc_get_depth_type(ptr noundef %4, i32 noundef %5) #16, !dbg !1342
  store i32 %call5, ptr %type, align 4, !dbg !1343, !tbaa !818
  %6 = load i32, ptr %type, align 4, !dbg !1344, !tbaa !818
  %cmp = icmp eq i32 %6, -1, !dbg !1346
  br i1 %cmp, label %if.then6, label %if.end8, !dbg !1347

if.then6:                                         ; preds = %if.end4
  %call7 = call ptr @__errno_location() #18, !dbg !1348
  store i32 22, ptr %call7, align 4, !dbg !1350, !tbaa !1051
  store i32 -1, ptr %retval, align 4, !dbg !1351
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1351

if.end8:                                          ; preds = %if.end4
  %7 = load ptr, ptr %topology.addr, align 8, !dbg !1352, !tbaa !777
  %first_dist = getelementptr inbounds %struct.hwloc_topology, ptr %7, i32 0, i32 24, !dbg !1353
  %8 = load ptr, ptr %first_dist, align 8, !dbg !1353, !tbaa !795
  store ptr %8, ptr %next, align 8, !dbg !1354, !tbaa !777
  br label %while.cond, !dbg !1355

while.cond:                                       ; preds = %if.end28, %if.end8
  %9 = load ptr, ptr %next, align 8, !dbg !1356, !tbaa !777
  store ptr %9, ptr %dist, align 8, !dbg !1357, !tbaa !777
  %cmp9 = icmp ne ptr %9, null, !dbg !1358
  br i1 %cmp9, label %while.body, label %while.end, !dbg !1355

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %dist, align 8, !dbg !1359, !tbaa !777
  %next10 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %10, i32 0, i32 11, !dbg !1361
  %11 = load ptr, ptr %next10, align 8, !dbg !1361, !tbaa !975
  store ptr %11, ptr %next, align 8, !dbg !1362, !tbaa !777
  %12 = load ptr, ptr %dist, align 8, !dbg !1363, !tbaa !777
  %unique_type = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %12, i32 0, i32 2, !dbg !1365
  %13 = load i32, ptr %unique_type, align 4, !dbg !1365, !tbaa !1165
  %14 = load i32, ptr %type, align 4, !dbg !1366, !tbaa !818
  %cmp11 = icmp eq i32 %13, %14, !dbg !1367
  br i1 %cmp11, label %if.then12, label %if.end28, !dbg !1368

if.then12:                                        ; preds = %while.body
  %15 = load ptr, ptr %next, align 8, !dbg !1369, !tbaa !777
  %tobool13 = icmp ne ptr %15, null, !dbg !1369
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !1372

if.then14:                                        ; preds = %if.then12
  %16 = load ptr, ptr %dist, align 8, !dbg !1373, !tbaa !777
  %prev = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %16, i32 0, i32 10, !dbg !1374
  %17 = load ptr, ptr %prev, align 8, !dbg !1374, !tbaa !1257
  %18 = load ptr, ptr %next, align 8, !dbg !1375, !tbaa !777
  %prev15 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %18, i32 0, i32 10, !dbg !1376
  store ptr %17, ptr %prev15, align 8, !dbg !1377, !tbaa !1257
  br label %if.end17, !dbg !1375

if.else:                                          ; preds = %if.then12
  %19 = load ptr, ptr %dist, align 8, !dbg !1378, !tbaa !777
  %prev16 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %19, i32 0, i32 10, !dbg !1379
  %20 = load ptr, ptr %prev16, align 8, !dbg !1379, !tbaa !1257
  %21 = load ptr, ptr %topology.addr, align 8, !dbg !1380, !tbaa !777
  %last_dist = getelementptr inbounds %struct.hwloc_topology, ptr %21, i32 0, i32 25, !dbg !1381
  store ptr %20, ptr %last_dist, align 8, !dbg !1382, !tbaa !785
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14
  %22 = load ptr, ptr %dist, align 8, !dbg !1383, !tbaa !777
  %prev18 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %22, i32 0, i32 10, !dbg !1385
  %23 = load ptr, ptr %prev18, align 8, !dbg !1385, !tbaa !1257
  %tobool19 = icmp ne ptr %23, null, !dbg !1383
  br i1 %tobool19, label %if.then20, label %if.else24, !dbg !1386

if.then20:                                        ; preds = %if.end17
  %24 = load ptr, ptr %dist, align 8, !dbg !1387, !tbaa !777
  %next21 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %24, i32 0, i32 11, !dbg !1388
  %25 = load ptr, ptr %next21, align 8, !dbg !1388, !tbaa !975
  %26 = load ptr, ptr %dist, align 8, !dbg !1389, !tbaa !777
  %prev22 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %26, i32 0, i32 10, !dbg !1390
  %27 = load ptr, ptr %prev22, align 8, !dbg !1390, !tbaa !1257
  %next23 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %27, i32 0, i32 11, !dbg !1391
  store ptr %25, ptr %next23, align 8, !dbg !1392, !tbaa !975
  br label %if.end27, !dbg !1389

if.else24:                                        ; preds = %if.end17
  %28 = load ptr, ptr %dist, align 8, !dbg !1393, !tbaa !777
  %next25 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %28, i32 0, i32 11, !dbg !1394
  %29 = load ptr, ptr %next25, align 8, !dbg !1394, !tbaa !975
  %30 = load ptr, ptr %topology.addr, align 8, !dbg !1395, !tbaa !777
  %first_dist26 = getelementptr inbounds %struct.hwloc_topology, ptr %30, i32 0, i32 24, !dbg !1396
  store ptr %29, ptr %first_dist26, align 8, !dbg !1397, !tbaa !795
  br label %if.end27

if.end27:                                         ; preds = %if.else24, %if.then20
  %31 = load ptr, ptr %dist, align 8, !dbg !1398, !tbaa !777
  call void @hwloc_internal_distances_free(ptr noundef %31), !dbg !1399
  br label %if.end28, !dbg !1400

if.end28:                                         ; preds = %if.end27, %while.body
  br label %while.cond, !dbg !1355, !llvm.loop !1401

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !1403
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1403

cleanup:                                          ; preds = %while.end, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #15, !dbg !1404
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #15, !dbg !1404
  call void @llvm.lifetime.end.p0(i64 8, ptr %dist) #15, !dbg !1404
  %32 = load i32, ptr %retval, align 4, !dbg !1404
  ret i32 %32, !dbg !1404
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1405 i32 @hwloc_get_depth_type(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind uwtable
define i32 @hwloc_distances_release_remove(ptr noundef %topology, ptr noundef %distances) #0 !dbg !1408 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %distances.addr = alloca ptr, align 8
  %dist = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1413, metadata !DIExpression()), !dbg !1416
  store ptr %distances, ptr %distances.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %distances.addr, metadata !1414, metadata !DIExpression()), !dbg !1417
  call void @llvm.lifetime.start.p0(i64 8, ptr %dist) #15, !dbg !1418
  tail call void @llvm.dbg.declare(metadata ptr %dist, metadata !1415, metadata !DIExpression()), !dbg !1419
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !1420, !tbaa !777
  %1 = load ptr, ptr %distances.addr, align 8, !dbg !1421, !tbaa !777
  %call = call ptr @hwloc__internal_distances_from_public(ptr noundef %0, ptr noundef %1), !dbg !1422
  store ptr %call, ptr %dist, align 8, !dbg !1419, !tbaa !777
  %2 = load ptr, ptr %dist, align 8, !dbg !1423, !tbaa !777
  %tobool = icmp ne ptr %2, null, !dbg !1423
  br i1 %tobool, label %if.end, label %if.then, !dbg !1425

if.then:                                          ; preds = %entry
  %call1 = call ptr @__errno_location() #18, !dbg !1426
  store i32 22, ptr %call1, align 4, !dbg !1428, !tbaa !1051
  store i32 -1, ptr %retval, align 4, !dbg !1429
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1429

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dist, align 8, !dbg !1430, !tbaa !777
  %prev = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %3, i32 0, i32 10, !dbg !1432
  %4 = load ptr, ptr %prev, align 8, !dbg !1432, !tbaa !1257
  %tobool2 = icmp ne ptr %4, null, !dbg !1430
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !1433

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %dist, align 8, !dbg !1434, !tbaa !777
  %next = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %5, i32 0, i32 11, !dbg !1435
  %6 = load ptr, ptr %next, align 8, !dbg !1435, !tbaa !975
  %7 = load ptr, ptr %dist, align 8, !dbg !1436, !tbaa !777
  %prev4 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %7, i32 0, i32 10, !dbg !1437
  %8 = load ptr, ptr %prev4, align 8, !dbg !1437, !tbaa !1257
  %next5 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %8, i32 0, i32 11, !dbg !1438
  store ptr %6, ptr %next5, align 8, !dbg !1439, !tbaa !975
  br label %if.end7, !dbg !1436

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %dist, align 8, !dbg !1440, !tbaa !777
  %next6 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %9, i32 0, i32 11, !dbg !1441
  %10 = load ptr, ptr %next6, align 8, !dbg !1441, !tbaa !975
  %11 = load ptr, ptr %topology.addr, align 8, !dbg !1442, !tbaa !777
  %first_dist = getelementptr inbounds %struct.hwloc_topology, ptr %11, i32 0, i32 24, !dbg !1443
  store ptr %10, ptr %first_dist, align 8, !dbg !1444, !tbaa !795
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %12 = load ptr, ptr %dist, align 8, !dbg !1445, !tbaa !777
  %next8 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %12, i32 0, i32 11, !dbg !1447
  %13 = load ptr, ptr %next8, align 8, !dbg !1447, !tbaa !975
  %tobool9 = icmp ne ptr %13, null, !dbg !1445
  br i1 %tobool9, label %if.then10, label %if.else14, !dbg !1448

if.then10:                                        ; preds = %if.end7
  %14 = load ptr, ptr %dist, align 8, !dbg !1449, !tbaa !777
  %prev11 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %14, i32 0, i32 10, !dbg !1450
  %15 = load ptr, ptr %prev11, align 8, !dbg !1450, !tbaa !1257
  %16 = load ptr, ptr %dist, align 8, !dbg !1451, !tbaa !777
  %next12 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %16, i32 0, i32 11, !dbg !1452
  %17 = load ptr, ptr %next12, align 8, !dbg !1452, !tbaa !975
  %prev13 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %17, i32 0, i32 10, !dbg !1453
  store ptr %15, ptr %prev13, align 8, !dbg !1454, !tbaa !1257
  br label %if.end16, !dbg !1451

if.else14:                                        ; preds = %if.end7
  %18 = load ptr, ptr %dist, align 8, !dbg !1455, !tbaa !777
  %prev15 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %18, i32 0, i32 10, !dbg !1456
  %19 = load ptr, ptr %prev15, align 8, !dbg !1456, !tbaa !1257
  %20 = load ptr, ptr %topology.addr, align 8, !dbg !1457, !tbaa !777
  %last_dist = getelementptr inbounds %struct.hwloc_topology, ptr %20, i32 0, i32 25, !dbg !1458
  store ptr %19, ptr %last_dist, align 8, !dbg !1459, !tbaa !785
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then10
  %21 = load ptr, ptr %dist, align 8, !dbg !1460, !tbaa !777
  call void @hwloc_internal_distances_free(ptr noundef %21), !dbg !1461
  %22 = load ptr, ptr %topology.addr, align 8, !dbg !1462, !tbaa !777
  %23 = load ptr, ptr %distances.addr, align 8, !dbg !1463, !tbaa !777
  call void @hwloc_distances_release(ptr noundef %22, ptr noundef %23), !dbg !1464
  store i32 0, ptr %retval, align 4, !dbg !1465
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1465

cleanup:                                          ; preds = %if.end16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dist) #15, !dbg !1466
  %24 = load i32, ptr %retval, align 4, !dbg !1466
  ret i32 %24, !dbg !1466
}

; Function Attrs: nounwind uwtable
define internal ptr @hwloc__internal_distances_from_public(ptr noundef %topology, ptr noundef %distances) #0 !dbg !1467 {
entry:
  %retval = alloca ptr, align 8
  %topology.addr = alloca ptr, align 8
  %distances.addr = alloca ptr, align 8
  %cont = alloca ptr, align 8
  %dist = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1471, metadata !DIExpression()), !dbg !1475
  store ptr %distances, ptr %distances.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %distances.addr, metadata !1472, metadata !DIExpression()), !dbg !1476
  call void @llvm.lifetime.start.p0(i64 8, ptr %cont) #15, !dbg !1477
  tail call void @llvm.dbg.declare(metadata ptr %cont, metadata !1473, metadata !DIExpression()), !dbg !1478
  %0 = load ptr, ptr %distances.addr, align 8, !dbg !1479, !tbaa !777
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 sub (i64 0, i64 ptrtoint (ptr getelementptr inbounds (%struct.hwloc_distances_container_s, ptr null, i32 0, i32 1) to i64)), !dbg !1479
  store ptr %add.ptr, ptr %cont, align 8, !dbg !1478, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 8, ptr %dist) #15, !dbg !1480
  tail call void @llvm.dbg.declare(metadata ptr %dist, metadata !1474, metadata !DIExpression()), !dbg !1481
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !1482, !tbaa !777
  %first_dist = getelementptr inbounds %struct.hwloc_topology, ptr %1, i32 0, i32 24, !dbg !1484
  %2 = load ptr, ptr %first_dist, align 8, !dbg !1484, !tbaa !795
  store ptr %2, ptr %dist, align 8, !dbg !1485, !tbaa !777
  br label %for.cond, !dbg !1486

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %dist, align 8, !dbg !1487, !tbaa !777
  %tobool = icmp ne ptr %3, null, !dbg !1489
  br i1 %tobool, label %for.body, label %for.end, !dbg !1489

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %dist, align 8, !dbg !1490, !tbaa !777
  %id = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %4, i32 0, i32 1, !dbg !1492
  %5 = load i32, ptr %id, align 8, !dbg !1492, !tbaa !1181
  %6 = load ptr, ptr %cont, align 8, !dbg !1493, !tbaa !777
  %id1 = getelementptr inbounds %struct.hwloc_distances_container_s, ptr %6, i32 0, i32 0, !dbg !1494
  %7 = load i32, ptr %id1, align 8, !dbg !1494, !tbaa !1495
  %cmp = icmp eq i32 %5, %7, !dbg !1498
  br i1 %cmp, label %if.then, label %if.end, !dbg !1499

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %dist, align 8, !dbg !1500, !tbaa !777
  store ptr %8, ptr %retval, align 8, !dbg !1501
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1501

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1494

for.inc:                                          ; preds = %if.end
  %9 = load ptr, ptr %dist, align 8, !dbg !1502, !tbaa !777
  %next = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %9, i32 0, i32 11, !dbg !1503
  %10 = load ptr, ptr %next, align 8, !dbg !1503, !tbaa !975
  store ptr %10, ptr %dist, align 8, !dbg !1504, !tbaa !777
  br label %for.cond, !dbg !1505, !llvm.loop !1506

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !1508
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1508

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dist) #15, !dbg !1509
  call void @llvm.lifetime.end.p0(i64 8, ptr %cont) #15, !dbg !1509
  %11 = load ptr, ptr %retval, align 8, !dbg !1509
  ret ptr %11, !dbg !1509
}

; Function Attrs: nounwind uwtable
define void @hwloc_distances_release(ptr noundef %topology, ptr noundef %distances) #0 !dbg !1510 {
entry:
  %topology.addr = alloca ptr, align 8
  %distances.addr = alloca ptr, align 8
  %cont = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1514, metadata !DIExpression()), !dbg !1517
  store ptr %distances, ptr %distances.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %distances.addr, metadata !1515, metadata !DIExpression()), !dbg !1518
  call void @llvm.lifetime.start.p0(i64 8, ptr %cont) #15, !dbg !1519
  tail call void @llvm.dbg.declare(metadata ptr %cont, metadata !1516, metadata !DIExpression()), !dbg !1520
  %0 = load ptr, ptr %distances.addr, align 8, !dbg !1521, !tbaa !777
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 sub (i64 0, i64 ptrtoint (ptr getelementptr inbounds (%struct.hwloc_distances_container_s, ptr null, i32 0, i32 1) to i64)), !dbg !1521
  store ptr %add.ptr, ptr %cont, align 8, !dbg !1520, !tbaa !777
  %1 = load ptr, ptr %distances.addr, align 8, !dbg !1522, !tbaa !777
  %values = getelementptr inbounds %struct.hwloc_distances_s, ptr %1, i32 0, i32 3, !dbg !1523
  %2 = load ptr, ptr %values, align 8, !dbg !1523, !tbaa !1524
  call void @free(ptr noundef %2) #15, !dbg !1525
  %3 = load ptr, ptr %distances.addr, align 8, !dbg !1526, !tbaa !777
  %objs = getelementptr inbounds %struct.hwloc_distances_s, ptr %3, i32 0, i32 1, !dbg !1527
  %4 = load ptr, ptr %objs, align 8, !dbg !1527, !tbaa !1528
  call void @free(ptr noundef %4) #15, !dbg !1529
  %5 = load ptr, ptr %cont, align 8, !dbg !1530, !tbaa !777
  call void @free(ptr noundef %5) #15, !dbg !1531
  call void @llvm.lifetime.end.p0(i64 8, ptr %cont) #15, !dbg !1532
  ret void, !dbg !1532
}

; Function Attrs: nounwind uwtable
define ptr @hwloc_backend_distances_add_create(ptr noundef %topology, ptr noundef %name, i64 noundef %kind, i64 noundef %flags) #0 !dbg !1533 {
entry:
  %retval = alloca ptr, align 8
  %topology.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %kind.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %dist = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1538, metadata !DIExpression()), !dbg !1545
  store ptr %name, ptr %name.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1539, metadata !DIExpression()), !dbg !1546
  store i64 %kind, ptr %kind.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %kind.addr, metadata !1540, metadata !DIExpression()), !dbg !1548
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1541, metadata !DIExpression()), !dbg !1549
  call void @llvm.lifetime.start.p0(i64 8, ptr %dist) #15, !dbg !1550
  tail call void @llvm.dbg.declare(metadata ptr %dist, metadata !1542, metadata !DIExpression()), !dbg !1551
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1552, !tbaa !1547
  %tobool = icmp ne i64 %0, 0, !dbg !1552
  br i1 %tobool, label %if.then, label %if.end, !dbg !1554

if.then:                                          ; preds = %entry
  %call = call ptr @__errno_location() #18, !dbg !1555
  store i32 22, ptr %call, align 4, !dbg !1557, !tbaa !1051
  br label %err, !dbg !1558

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 88) #19, !dbg !1559
  store ptr %call1, ptr %dist, align 8, !dbg !1560, !tbaa !777
  %1 = load ptr, ptr %dist, align 8, !dbg !1561, !tbaa !777
  %tobool2 = icmp ne ptr %1, null, !dbg !1561
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1563

if.then3:                                         ; preds = %if.end
  br label %err, !dbg !1564

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr %name.addr, align 8, !dbg !1565, !tbaa !777
  %tobool5 = icmp ne ptr %2, null, !dbg !1565
  br i1 %tobool5, label %if.then6, label %if.end13, !dbg !1567

if.then6:                                         ; preds = %if.end4
  %3 = load ptr, ptr %name.addr, align 8, !dbg !1568, !tbaa !777
  %call7 = call noalias ptr @strdup(ptr noundef %3) #15, !dbg !1570
  %4 = load ptr, ptr %dist, align 8, !dbg !1571, !tbaa !777
  %name8 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %4, i32 0, i32 0, !dbg !1572
  store ptr %call7, ptr %name8, align 8, !dbg !1573, !tbaa !998
  %5 = load ptr, ptr %dist, align 8, !dbg !1574, !tbaa !777
  %name9 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %5, i32 0, i32 0, !dbg !1576
  %6 = load ptr, ptr %name9, align 8, !dbg !1576, !tbaa !998
  %tobool10 = icmp ne ptr %6, null, !dbg !1574
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !1577

if.then11:                                        ; preds = %if.then6
  br label %err_with_dist, !dbg !1578

if.end12:                                         ; preds = %if.then6
  br label %if.end13, !dbg !1579

if.end13:                                         ; preds = %if.end12, %if.end4
  %7 = load i64, ptr %kind.addr, align 8, !dbg !1580, !tbaa !1547
  %8 = load ptr, ptr %dist, align 8, !dbg !1581, !tbaa !777
  %kind14 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %8, i32 0, i32 7, !dbg !1582
  store i64 %7, ptr %kind14, align 8, !dbg !1583, !tbaa !1175
  %9 = load ptr, ptr %dist, align 8, !dbg !1584, !tbaa !777
  %iflags = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %9, i32 0, i32 8, !dbg !1585
  store i32 2, ptr %iflags, align 8, !dbg !1586, !tbaa !1201
  %10 = load ptr, ptr %dist, align 8, !dbg !1587, !tbaa !777
  %unique_type = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %10, i32 0, i32 2, !dbg !1588
  store i32 -1, ptr %unique_type, align 4, !dbg !1589, !tbaa !1165
  %11 = load ptr, ptr %dist, align 8, !dbg !1590, !tbaa !777
  %different_types = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %11, i32 0, i32 3, !dbg !1591
  store ptr null, ptr %different_types, align 8, !dbg !1592, !tbaa !1002
  %12 = load ptr, ptr %dist, align 8, !dbg !1593, !tbaa !777
  %nbobjs = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %12, i32 0, i32 4, !dbg !1594
  store i32 0, ptr %nbobjs, align 8, !dbg !1595, !tbaa !1089
  %13 = load ptr, ptr %dist, align 8, !dbg !1596, !tbaa !777
  %indexes = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %13, i32 0, i32 5, !dbg !1597
  store ptr null, ptr %indexes, align 8, !dbg !1598, !tbaa !1006
  %14 = load ptr, ptr %dist, align 8, !dbg !1599, !tbaa !777
  %objs = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %14, i32 0, i32 9, !dbg !1600
  store ptr null, ptr %objs, align 8, !dbg !1601, !tbaa !1010
  %15 = load ptr, ptr %dist, align 8, !dbg !1602, !tbaa !777
  %values = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %15, i32 0, i32 6, !dbg !1603
  store ptr null, ptr %values, align 8, !dbg !1604, !tbaa !1014
  %16 = load ptr, ptr %topology.addr, align 8, !dbg !1605, !tbaa !777
  %next_dist_id = getelementptr inbounds %struct.hwloc_topology, ptr %16, i32 0, i32 26, !dbg !1606
  %17 = load i32, ptr %next_dist_id, align 8, !dbg !1607, !tbaa !799
  %inc = add i32 %17, 1, !dbg !1607
  store i32 %inc, ptr %next_dist_id, align 8, !dbg !1607, !tbaa !799
  %18 = load ptr, ptr %dist, align 8, !dbg !1608, !tbaa !777
  %id = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %18, i32 0, i32 1, !dbg !1609
  store i32 %17, ptr %id, align 8, !dbg !1610, !tbaa !1181
  %19 = load ptr, ptr %dist, align 8, !dbg !1611, !tbaa !777
  store ptr %19, ptr %retval, align 8, !dbg !1612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1612

err_with_dist:                                    ; preds = %if.then11
  tail call void @llvm.dbg.label(metadata !1543), !dbg !1613
  %20 = load ptr, ptr %dist, align 8, !dbg !1614, !tbaa !777
  call void @hwloc_backend_distances_add__cancel(ptr noundef %20), !dbg !1615
  br label %err, !dbg !1615

err:                                              ; preds = %err_with_dist, %if.then3, %if.then
  tail call void @llvm.dbg.label(metadata !1544), !dbg !1616
  store ptr null, ptr %retval, align 8, !dbg !1617
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1617

cleanup:                                          ; preds = %err, %if.end13
  call void @llvm.lifetime.end.p0(i64 8, ptr %dist) #15, !dbg !1618
  %21 = load ptr, ptr %retval, align 8, !dbg !1618
  ret ptr %21, !dbg !1618
}

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !1619 noalias ptr @calloc(i64 noundef, i64 noundef) #6

; Function Attrs: nounwind
declare !dbg !1622 noalias ptr @strdup(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @hwloc_backend_distances_add__cancel(ptr noundef %dist) #0 !dbg !1623 {
entry:
  %dist.addr = alloca ptr, align 8
  store ptr %dist, ptr %dist.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %dist.addr, metadata !1625, metadata !DIExpression()), !dbg !1626
  %0 = load ptr, ptr %dist.addr, align 8, !dbg !1627, !tbaa !777
  %name = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %0, i32 0, i32 0, !dbg !1628
  %1 = load ptr, ptr %name, align 8, !dbg !1628, !tbaa !998
  call void @free(ptr noundef %1) #15, !dbg !1629
  %2 = load ptr, ptr %dist.addr, align 8, !dbg !1630, !tbaa !777
  %indexes = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %2, i32 0, i32 5, !dbg !1631
  %3 = load ptr, ptr %indexes, align 8, !dbg !1631, !tbaa !1006
  call void @free(ptr noundef %3) #15, !dbg !1632
  %4 = load ptr, ptr %dist.addr, align 8, !dbg !1633, !tbaa !777
  %objs = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %4, i32 0, i32 9, !dbg !1634
  %5 = load ptr, ptr %objs, align 8, !dbg !1634, !tbaa !1010
  call void @free(ptr noundef %5) #15, !dbg !1635
  %6 = load ptr, ptr %dist.addr, align 8, !dbg !1636, !tbaa !777
  %different_types = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %6, i32 0, i32 3, !dbg !1637
  %7 = load ptr, ptr %different_types, align 8, !dbg !1637, !tbaa !1002
  call void @free(ptr noundef %7) #15, !dbg !1638
  %8 = load ptr, ptr %dist.addr, align 8, !dbg !1639, !tbaa !777
  %values = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %8, i32 0, i32 6, !dbg !1640
  %9 = load ptr, ptr %values, align 8, !dbg !1640, !tbaa !1014
  call void @free(ptr noundef %9) #15, !dbg !1641
  %10 = load ptr, ptr %dist.addr, align 8, !dbg !1642, !tbaa !777
  call void @free(ptr noundef %10) #15, !dbg !1643
  ret void, !dbg !1644
}

; Function Attrs: nounwind uwtable
define i32 @hwloc_backend_distances_add_values(ptr noundef %topology, ptr noundef %handle, i32 noundef %nbobjs, ptr noundef %objs, ptr noundef %values, i64 noundef %flags) #0 !dbg !1645 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %nbobjs.addr = alloca i32, align 4
  %objs.addr = alloca ptr, align 8
  %values.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %dist = alloca ptr, align 8
  %unique_type = alloca i32, align 4
  %different_types = alloca ptr, align 8
  %indexes = alloca ptr, align 8
  %i = alloca i32, align 4
  %disappeared = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1649, metadata !DIExpression()), !dbg !1663
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1650, metadata !DIExpression()), !dbg !1664
  store i32 %nbobjs, ptr %nbobjs.addr, align 4, !tbaa !1051
  tail call void @llvm.dbg.declare(metadata ptr %nbobjs.addr, metadata !1651, metadata !DIExpression()), !dbg !1665
  store ptr %objs, ptr %objs.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %objs.addr, metadata !1652, metadata !DIExpression()), !dbg !1666
  store ptr %values, ptr %values.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %values.addr, metadata !1653, metadata !DIExpression()), !dbg !1667
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1654, metadata !DIExpression()), !dbg !1668
  call void @llvm.lifetime.start.p0(i64 8, ptr %dist) #15, !dbg !1669
  tail call void @llvm.dbg.declare(metadata ptr %dist, metadata !1655, metadata !DIExpression()), !dbg !1670
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !1671, !tbaa !777
  store ptr %0, ptr %dist, align 8, !dbg !1670, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 4, ptr %unique_type) #15, !dbg !1672
  tail call void @llvm.dbg.declare(metadata ptr %unique_type, metadata !1656, metadata !DIExpression()), !dbg !1673
  call void @llvm.lifetime.start.p0(i64 8, ptr %different_types) #15, !dbg !1672
  tail call void @llvm.dbg.declare(metadata ptr %different_types, metadata !1657, metadata !DIExpression()), !dbg !1674
  store ptr null, ptr %different_types, align 8, !dbg !1674, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 8, ptr %indexes) #15, !dbg !1675
  tail call void @llvm.dbg.declare(metadata ptr %indexes, metadata !1658, metadata !DIExpression()), !dbg !1676
  store ptr null, ptr %indexes, align 8, !dbg !1676, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !1677
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1659, metadata !DIExpression()), !dbg !1678
  call void @llvm.lifetime.start.p0(i64 4, ptr %disappeared) #15, !dbg !1677
  tail call void @llvm.dbg.declare(metadata ptr %disappeared, metadata !1660, metadata !DIExpression()), !dbg !1679
  store i32 0, ptr %disappeared, align 4, !dbg !1679, !tbaa !1051
  %1 = load ptr, ptr %dist, align 8, !dbg !1680, !tbaa !777
  %nbobjs1 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %1, i32 0, i32 4, !dbg !1682
  %2 = load i32, ptr %nbobjs1, align 8, !dbg !1682, !tbaa !1089
  %tobool = icmp ne i32 %2, 0, !dbg !1680
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !1683

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %dist, align 8, !dbg !1684, !tbaa !777
  %iflags = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %3, i32 0, i32 8, !dbg !1685
  %4 = load i32, ptr %iflags, align 8, !dbg !1685, !tbaa !1201
  %and = and i32 %4, 2, !dbg !1686
  %tobool2 = icmp ne i32 %and, 0, !dbg !1686
  br i1 %tobool2, label %if.end, label %if.then, !dbg !1687

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call ptr @__errno_location() #18, !dbg !1688
  store i32 22, ptr %call, align 4, !dbg !1690, !tbaa !1051
  br label %err, !dbg !1691

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i64, ptr %flags.addr, align 8, !dbg !1692, !tbaa !1547
  %tobool3 = icmp ne i64 %5, 0, !dbg !1692
  br i1 %tobool3, label %if.then9, label %lor.lhs.false4, !dbg !1694

lor.lhs.false4:                                   ; preds = %if.end
  %6 = load i32, ptr %nbobjs.addr, align 4, !dbg !1695, !tbaa !1051
  %cmp = icmp ult i32 %6, 2, !dbg !1696
  br i1 %cmp, label %if.then9, label %lor.lhs.false5, !dbg !1697

lor.lhs.false5:                                   ; preds = %lor.lhs.false4
  %7 = load ptr, ptr %objs.addr, align 8, !dbg !1698, !tbaa !777
  %tobool6 = icmp ne ptr %7, null, !dbg !1698
  br i1 %tobool6, label %lor.lhs.false7, label %if.then9, !dbg !1699

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %8 = load ptr, ptr %values.addr, align 8, !dbg !1700, !tbaa !777
  %tobool8 = icmp ne ptr %8, null, !dbg !1700
  br i1 %tobool8, label %if.end11, label %if.then9, !dbg !1701

if.then9:                                         ; preds = %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false4, %if.end
  %call10 = call ptr @__errno_location() #18, !dbg !1702
  store i32 22, ptr %call10, align 4, !dbg !1704, !tbaa !1051
  br label %err, !dbg !1705

if.end11:                                         ; preds = %lor.lhs.false7
  store i32 0, ptr %i, align 4, !dbg !1706, !tbaa !1051
  br label %for.cond, !dbg !1708

for.cond:                                         ; preds = %for.inc, %if.end11
  %9 = load i32, ptr %i, align 4, !dbg !1709, !tbaa !1051
  %10 = load i32, ptr %nbobjs.addr, align 4, !dbg !1711, !tbaa !1051
  %cmp12 = icmp ult i32 %9, %10, !dbg !1712
  br i1 %cmp12, label %for.body, label %for.end, !dbg !1713

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %objs.addr, align 8, !dbg !1714, !tbaa !777
  %12 = load i32, ptr %i, align 4, !dbg !1716, !tbaa !1051
  %idxprom = zext i32 %12 to i64, !dbg !1714
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 %idxprom, !dbg !1714
  %13 = load ptr, ptr %arrayidx, align 8, !dbg !1714, !tbaa !777
  %tobool13 = icmp ne ptr %13, null, !dbg !1714
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !1717

if.then14:                                        ; preds = %for.body
  %14 = load i32, ptr %disappeared, align 4, !dbg !1718, !tbaa !1051
  %inc = add i32 %14, 1, !dbg !1718
  store i32 %inc, ptr %disappeared, align 4, !dbg !1718, !tbaa !1051
  br label %if.end15, !dbg !1719

if.end15:                                         ; preds = %if.then14, %for.body
  br label %for.inc, !dbg !1720

for.inc:                                          ; preds = %if.end15
  %15 = load i32, ptr %i, align 4, !dbg !1721, !tbaa !1051
  %inc16 = add i32 %15, 1, !dbg !1721
  store i32 %inc16, ptr %i, align 4, !dbg !1721, !tbaa !1051
  br label %for.cond, !dbg !1722, !llvm.loop !1723

for.end:                                          ; preds = %for.cond
  %16 = load i32, ptr %disappeared, align 4, !dbg !1725, !tbaa !1051
  %tobool17 = icmp ne i32 %16, 0, !dbg !1725
  br i1 %tobool17, label %if.then18, label %if.end23, !dbg !1727

if.then18:                                        ; preds = %for.end
  %17 = load i32, ptr %disappeared, align 4, !dbg !1728, !tbaa !1051
  %18 = load i32, ptr %nbobjs.addr, align 4, !dbg !1731, !tbaa !1051
  %cmp19 = icmp eq i32 %17, %18, !dbg !1732
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1733

if.then20:                                        ; preds = %if.then18
  %call21 = call ptr @__errno_location() #18, !dbg !1734
  store i32 2, ptr %call21, align 4, !dbg !1736, !tbaa !1051
  br label %err, !dbg !1737

if.end22:                                         ; preds = %if.then18
  %19 = load ptr, ptr %objs.addr, align 8, !dbg !1738, !tbaa !777
  %20 = load ptr, ptr %values.addr, align 8, !dbg !1739, !tbaa !777
  %21 = load i32, ptr %nbobjs.addr, align 4, !dbg !1740, !tbaa !1051
  %22 = load i32, ptr %disappeared, align 4, !dbg !1741, !tbaa !1051
  call void @hwloc_internal_distances_restrict(ptr noundef %19, ptr noundef null, ptr noundef null, ptr noundef %20, i32 noundef %21, i32 noundef %22), !dbg !1742
  %23 = load i32, ptr %disappeared, align 4, !dbg !1743, !tbaa !1051
  %24 = load i32, ptr %nbobjs.addr, align 4, !dbg !1744, !tbaa !1051
  %sub = sub i32 %24, %23, !dbg !1744
  store i32 %sub, ptr %nbobjs.addr, align 4, !dbg !1744, !tbaa !1051
  br label %if.end23, !dbg !1745

if.end23:                                         ; preds = %if.end22, %for.end
  %25 = load i32, ptr %nbobjs.addr, align 4, !dbg !1746, !tbaa !1051
  %conv = zext i32 %25 to i64, !dbg !1746
  %mul = mul i64 %conv, 8, !dbg !1747
  %call24 = call noalias ptr @malloc(i64 noundef %mul) #20, !dbg !1748
  store ptr %call24, ptr %indexes, align 8, !dbg !1749, !tbaa !777
  %26 = load ptr, ptr %indexes, align 8, !dbg !1750, !tbaa !777
  %tobool25 = icmp ne ptr %26, null, !dbg !1750
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !1752

if.then26:                                        ; preds = %if.end23
  br label %err, !dbg !1753

if.end27:                                         ; preds = %if.end23
  %27 = load ptr, ptr %objs.addr, align 8, !dbg !1754, !tbaa !777
  %arrayidx28 = getelementptr inbounds ptr, ptr %27, i64 0, !dbg !1754
  %28 = load ptr, ptr %arrayidx28, align 8, !dbg !1754, !tbaa !777
  %type = getelementptr inbounds %struct.hwloc_obj, ptr %28, i32 0, i32 0, !dbg !1755
  %29 = load i32, ptr %type, align 8, !dbg !1755, !tbaa !1756
  store i32 %29, ptr %unique_type, align 4, !dbg !1758, !tbaa !818
  store i32 1, ptr %i, align 4, !dbg !1759, !tbaa !1051
  br label %for.cond29, !dbg !1761

for.cond29:                                       ; preds = %for.inc40, %if.end27
  %30 = load i32, ptr %i, align 4, !dbg !1762, !tbaa !1051
  %31 = load i32, ptr %nbobjs.addr, align 4, !dbg !1764, !tbaa !1051
  %cmp30 = icmp ult i32 %30, %31, !dbg !1765
  br i1 %cmp30, label %for.body32, label %for.end42, !dbg !1766

for.body32:                                       ; preds = %for.cond29
  %32 = load ptr, ptr %objs.addr, align 8, !dbg !1767, !tbaa !777
  %33 = load i32, ptr %i, align 4, !dbg !1769, !tbaa !1051
  %idxprom33 = zext i32 %33 to i64, !dbg !1767
  %arrayidx34 = getelementptr inbounds ptr, ptr %32, i64 %idxprom33, !dbg !1767
  %34 = load ptr, ptr %arrayidx34, align 8, !dbg !1767, !tbaa !777
  %type35 = getelementptr inbounds %struct.hwloc_obj, ptr %34, i32 0, i32 0, !dbg !1770
  %35 = load i32, ptr %type35, align 8, !dbg !1770, !tbaa !1756
  %36 = load i32, ptr %unique_type, align 4, !dbg !1771, !tbaa !818
  %cmp36 = icmp ne i32 %35, %36, !dbg !1772
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !1773

if.then38:                                        ; preds = %for.body32
  store i32 -1, ptr %unique_type, align 4, !dbg !1774, !tbaa !818
  br label %for.end42, !dbg !1776

if.end39:                                         ; preds = %for.body32
  br label %for.inc40, !dbg !1771

for.inc40:                                        ; preds = %if.end39
  %37 = load i32, ptr %i, align 4, !dbg !1777, !tbaa !1051
  %inc41 = add i32 %37, 1, !dbg !1777
  store i32 %inc41, ptr %i, align 4, !dbg !1777, !tbaa !1051
  br label %for.cond29, !dbg !1778, !llvm.loop !1779

for.end42:                                        ; preds = %if.then38, %for.cond29
  %38 = load i32, ptr %unique_type, align 4, !dbg !1781, !tbaa !818
  %cmp43 = icmp eq i32 %38, -1, !dbg !1783
  br i1 %cmp43, label %if.then45, label %if.end64, !dbg !1784

if.then45:                                        ; preds = %for.end42
  %39 = load i32, ptr %nbobjs.addr, align 4, !dbg !1785, !tbaa !1051
  %conv46 = zext i32 %39 to i64, !dbg !1785
  %mul47 = mul i64 %conv46, 4, !dbg !1787
  %call48 = call noalias ptr @malloc(i64 noundef %mul47) #20, !dbg !1788
  store ptr %call48, ptr %different_types, align 8, !dbg !1789, !tbaa !777
  %40 = load ptr, ptr %different_types, align 8, !dbg !1790, !tbaa !777
  %tobool49 = icmp ne ptr %40, null, !dbg !1790
  br i1 %tobool49, label %if.end51, label %if.then50, !dbg !1792

if.then50:                                        ; preds = %if.then45
  br label %err_with_indexes, !dbg !1793

if.end51:                                         ; preds = %if.then45
  store i32 0, ptr %i, align 4, !dbg !1794, !tbaa !1051
  br label %for.cond52, !dbg !1796

for.cond52:                                       ; preds = %for.inc61, %if.end51
  %41 = load i32, ptr %i, align 4, !dbg !1797, !tbaa !1051
  %42 = load i32, ptr %nbobjs.addr, align 4, !dbg !1799, !tbaa !1051
  %cmp53 = icmp ult i32 %41, %42, !dbg !1800
  br i1 %cmp53, label %for.body55, label %for.end63, !dbg !1801

for.body55:                                       ; preds = %for.cond52
  %43 = load ptr, ptr %objs.addr, align 8, !dbg !1802, !tbaa !777
  %44 = load i32, ptr %i, align 4, !dbg !1803, !tbaa !1051
  %idxprom56 = zext i32 %44 to i64, !dbg !1802
  %arrayidx57 = getelementptr inbounds ptr, ptr %43, i64 %idxprom56, !dbg !1802
  %45 = load ptr, ptr %arrayidx57, align 8, !dbg !1802, !tbaa !777
  %type58 = getelementptr inbounds %struct.hwloc_obj, ptr %45, i32 0, i32 0, !dbg !1804
  %46 = load i32, ptr %type58, align 8, !dbg !1804, !tbaa !1756
  %47 = load ptr, ptr %different_types, align 8, !dbg !1805, !tbaa !777
  %48 = load i32, ptr %i, align 4, !dbg !1806, !tbaa !1051
  %idxprom59 = zext i32 %48 to i64, !dbg !1805
  %arrayidx60 = getelementptr inbounds i32, ptr %47, i64 %idxprom59, !dbg !1805
  store i32 %46, ptr %arrayidx60, align 4, !dbg !1807, !tbaa !818
  br label %for.inc61, !dbg !1805

for.inc61:                                        ; preds = %for.body55
  %49 = load i32, ptr %i, align 4, !dbg !1808, !tbaa !1051
  %inc62 = add i32 %49, 1, !dbg !1808
  store i32 %inc62, ptr %i, align 4, !dbg !1808, !tbaa !1051
  br label %for.cond52, !dbg !1809, !llvm.loop !1810

for.end63:                                        ; preds = %for.cond52
  br label %if.end64, !dbg !1812

if.end64:                                         ; preds = %for.end63, %for.end42
  %50 = load i32, ptr %nbobjs.addr, align 4, !dbg !1813, !tbaa !1051
  %51 = load ptr, ptr %dist, align 8, !dbg !1814, !tbaa !777
  %nbobjs65 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %51, i32 0, i32 4, !dbg !1815
  store i32 %50, ptr %nbobjs65, align 8, !dbg !1816, !tbaa !1089
  %52 = load ptr, ptr %objs.addr, align 8, !dbg !1817, !tbaa !777
  %53 = load ptr, ptr %dist, align 8, !dbg !1818, !tbaa !777
  %objs66 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %53, i32 0, i32 9, !dbg !1819
  store ptr %52, ptr %objs66, align 8, !dbg !1820, !tbaa !1010
  %54 = load ptr, ptr %dist, align 8, !dbg !1821, !tbaa !777
  %iflags67 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %54, i32 0, i32 8, !dbg !1822
  %55 = load i32, ptr %iflags67, align 8, !dbg !1823, !tbaa !1201
  %or = or i32 %55, 1, !dbg !1823
  store i32 %or, ptr %iflags67, align 8, !dbg !1823, !tbaa !1201
  %56 = load ptr, ptr %indexes, align 8, !dbg !1824, !tbaa !777
  %57 = load ptr, ptr %dist, align 8, !dbg !1825, !tbaa !777
  %indexes68 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %57, i32 0, i32 5, !dbg !1826
  store ptr %56, ptr %indexes68, align 8, !dbg !1827, !tbaa !1006
  %58 = load i32, ptr %unique_type, align 4, !dbg !1828, !tbaa !818
  %59 = load ptr, ptr %dist, align 8, !dbg !1829, !tbaa !777
  %unique_type69 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %59, i32 0, i32 2, !dbg !1830
  store i32 %58, ptr %unique_type69, align 4, !dbg !1831, !tbaa !1165
  %60 = load ptr, ptr %different_types, align 8, !dbg !1832, !tbaa !777
  %61 = load ptr, ptr %dist, align 8, !dbg !1833, !tbaa !777
  %different_types70 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %61, i32 0, i32 3, !dbg !1834
  store ptr %60, ptr %different_types70, align 8, !dbg !1835, !tbaa !1002
  %62 = load ptr, ptr %values.addr, align 8, !dbg !1836, !tbaa !777
  %63 = load ptr, ptr %dist, align 8, !dbg !1837, !tbaa !777
  %values71 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %63, i32 0, i32 6, !dbg !1838
  store ptr %62, ptr %values71, align 8, !dbg !1839, !tbaa !1014
  %64 = load ptr, ptr %different_types, align 8, !dbg !1840, !tbaa !777
  %tobool72 = icmp ne ptr %64, null, !dbg !1840
  br i1 %tobool72, label %if.then73, label %if.end75, !dbg !1842

if.then73:                                        ; preds = %if.end64
  %65 = load ptr, ptr %dist, align 8, !dbg !1843, !tbaa !777
  %kind = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %65, i32 0, i32 7, !dbg !1844
  %66 = load i64, ptr %kind, align 8, !dbg !1845, !tbaa !1175
  %or74 = or i64 %66, 16, !dbg !1845
  store i64 %or74, ptr %kind, align 8, !dbg !1845, !tbaa !1175
  br label %if.end75, !dbg !1843

if.end75:                                         ; preds = %if.then73, %if.end64
  %67 = load ptr, ptr %dist, align 8, !dbg !1846, !tbaa !777
  %unique_type76 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %67, i32 0, i32 2, !dbg !1846
  %68 = load i32, ptr %unique_type76, align 4, !dbg !1846, !tbaa !1165
  %cmp77 = icmp eq i32 %68, 3, !dbg !1846
  br i1 %cmp77, label %if.then83, label %lor.lhs.false79, !dbg !1846

lor.lhs.false79:                                  ; preds = %if.end75
  %69 = load ptr, ptr %dist, align 8, !dbg !1846, !tbaa !777
  %unique_type80 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %69, i32 0, i32 2, !dbg !1846
  %70 = load i32, ptr %unique_type80, align 4, !dbg !1846, !tbaa !1165
  %cmp81 = icmp eq i32 %70, 13, !dbg !1846
  br i1 %cmp81, label %if.then83, label %if.else, !dbg !1848

if.then83:                                        ; preds = %lor.lhs.false79, %if.end75
  store i32 0, ptr %i, align 4, !dbg !1849, !tbaa !1051
  br label %for.cond84, !dbg !1852

for.cond84:                                       ; preds = %for.inc94, %if.then83
  %71 = load i32, ptr %i, align 4, !dbg !1853, !tbaa !1051
  %72 = load i32, ptr %nbobjs.addr, align 4, !dbg !1855, !tbaa !1051
  %cmp85 = icmp ult i32 %71, %72, !dbg !1856
  br i1 %cmp85, label %for.body87, label %for.end96, !dbg !1857

for.body87:                                       ; preds = %for.cond84
  %73 = load ptr, ptr %objs.addr, align 8, !dbg !1858, !tbaa !777
  %74 = load i32, ptr %i, align 4, !dbg !1859, !tbaa !1051
  %idxprom88 = zext i32 %74 to i64, !dbg !1858
  %arrayidx89 = getelementptr inbounds ptr, ptr %73, i64 %idxprom88, !dbg !1858
  %75 = load ptr, ptr %arrayidx89, align 8, !dbg !1858, !tbaa !777
  %os_index = getelementptr inbounds %struct.hwloc_obj, ptr %75, i32 0, i32 2, !dbg !1860
  %76 = load i32, ptr %os_index, align 8, !dbg !1860, !tbaa !1861
  %conv90 = zext i32 %76 to i64, !dbg !1858
  %77 = load ptr, ptr %dist, align 8, !dbg !1862, !tbaa !777
  %indexes91 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %77, i32 0, i32 5, !dbg !1863
  %78 = load ptr, ptr %indexes91, align 8, !dbg !1863, !tbaa !1006
  %79 = load i32, ptr %i, align 4, !dbg !1864, !tbaa !1051
  %idxprom92 = zext i32 %79 to i64, !dbg !1862
  %arrayidx93 = getelementptr inbounds i64, ptr %78, i64 %idxprom92, !dbg !1862
  store i64 %conv90, ptr %arrayidx93, align 8, !dbg !1865, !tbaa !1547
  br label %for.inc94, !dbg !1862

for.inc94:                                        ; preds = %for.body87
  %80 = load i32, ptr %i, align 4, !dbg !1866, !tbaa !1051
  %inc95 = add i32 %80, 1, !dbg !1866
  store i32 %inc95, ptr %i, align 4, !dbg !1866, !tbaa !1051
  br label %for.cond84, !dbg !1867, !llvm.loop !1868

for.end96:                                        ; preds = %for.cond84
  br label %if.end109, !dbg !1870

if.else:                                          ; preds = %lor.lhs.false79
  store i32 0, ptr %i, align 4, !dbg !1871, !tbaa !1051
  br label %for.cond97, !dbg !1874

for.cond97:                                       ; preds = %for.inc106, %if.else
  %81 = load i32, ptr %i, align 4, !dbg !1875, !tbaa !1051
  %82 = load i32, ptr %nbobjs.addr, align 4, !dbg !1877, !tbaa !1051
  %cmp98 = icmp ult i32 %81, %82, !dbg !1878
  br i1 %cmp98, label %for.body100, label %for.end108, !dbg !1879

for.body100:                                      ; preds = %for.cond97
  %83 = load ptr, ptr %objs.addr, align 8, !dbg !1880, !tbaa !777
  %84 = load i32, ptr %i, align 4, !dbg !1881, !tbaa !1051
  %idxprom101 = zext i32 %84 to i64, !dbg !1880
  %arrayidx102 = getelementptr inbounds ptr, ptr %83, i64 %idxprom101, !dbg !1880
  %85 = load ptr, ptr %arrayidx102, align 8, !dbg !1880, !tbaa !777
  %gp_index = getelementptr inbounds %struct.hwloc_obj, ptr %85, i32 0, i32 32, !dbg !1882
  %86 = load i64, ptr %gp_index, align 8, !dbg !1882, !tbaa !1883
  %87 = load ptr, ptr %dist, align 8, !dbg !1884, !tbaa !777
  %indexes103 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %87, i32 0, i32 5, !dbg !1885
  %88 = load ptr, ptr %indexes103, align 8, !dbg !1885, !tbaa !1006
  %89 = load i32, ptr %i, align 4, !dbg !1886, !tbaa !1051
  %idxprom104 = zext i32 %89 to i64, !dbg !1884
  %arrayidx105 = getelementptr inbounds i64, ptr %88, i64 %idxprom104, !dbg !1884
  store i64 %86, ptr %arrayidx105, align 8, !dbg !1887, !tbaa !1547
  br label %for.inc106, !dbg !1884

for.inc106:                                       ; preds = %for.body100
  %90 = load i32, ptr %i, align 4, !dbg !1888, !tbaa !1051
  %inc107 = add i32 %90, 1, !dbg !1888
  store i32 %inc107, ptr %i, align 4, !dbg !1888, !tbaa !1051
  br label %for.cond97, !dbg !1889, !llvm.loop !1890

for.end108:                                       ; preds = %for.cond97
  br label %if.end109

if.end109:                                        ; preds = %for.end108, %for.end96
  store i32 0, ptr %retval, align 4, !dbg !1892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1892

err_with_indexes:                                 ; preds = %if.then50
  tail call void @llvm.dbg.label(metadata !1661), !dbg !1893
  %91 = load ptr, ptr %indexes, align 8, !dbg !1894, !tbaa !777
  call void @free(ptr noundef %91) #15, !dbg !1895
  br label %err, !dbg !1895

err:                                              ; preds = %err_with_indexes, %if.then26, %if.then20, %if.then9, %if.then
  tail call void @llvm.dbg.label(metadata !1662), !dbg !1896
  %92 = load ptr, ptr %dist, align 8, !dbg !1897, !tbaa !777
  call void @hwloc_backend_distances_add__cancel(ptr noundef %92), !dbg !1898
  store i32 -1, ptr %retval, align 4, !dbg !1899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1899

cleanup:                                          ; preds = %err, %if.end109
  call void @llvm.lifetime.end.p0(i64 4, ptr %disappeared) #15, !dbg !1900
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !1900
  call void @llvm.lifetime.end.p0(i64 8, ptr %indexes) #15, !dbg !1900
  call void @llvm.lifetime.end.p0(i64 8, ptr %different_types) #15, !dbg !1900
  call void @llvm.lifetime.end.p0(i64 4, ptr %unique_type) #15, !dbg !1900
  call void @llvm.lifetime.end.p0(i64 8, ptr %dist) #15, !dbg !1900
  %93 = load i32, ptr %retval, align 4, !dbg !1900
  ret i32 %93, !dbg !1900
}

; Function Attrs: nounwind uwtable
define internal void @hwloc_internal_distances_restrict(ptr noundef %objs, ptr noundef %indexes, ptr noundef %different_types, ptr noundef %values, i32 noundef %nbobjs, i32 noundef %disappeared) #0 !dbg !1901 {
entry:
  %objs.addr = alloca ptr, align 8
  %indexes.addr = alloca ptr, align 8
  %different_types.addr = alloca ptr, align 8
  %values.addr = alloca ptr, align 8
  %nbobjs.addr = alloca i32, align 4
  %disappeared.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %newi = alloca i32, align 4
  %j = alloca i32, align 4
  %newj = alloca i32, align 4
  store ptr %objs, ptr %objs.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %objs.addr, metadata !1905, metadata !DIExpression()), !dbg !1915
  store ptr %indexes, ptr %indexes.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %indexes.addr, metadata !1906, metadata !DIExpression()), !dbg !1916
  store ptr %different_types, ptr %different_types.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %different_types.addr, metadata !1907, metadata !DIExpression()), !dbg !1917
  store ptr %values, ptr %values.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %values.addr, metadata !1908, metadata !DIExpression()), !dbg !1918
  store i32 %nbobjs, ptr %nbobjs.addr, align 4, !tbaa !1051
  tail call void @llvm.dbg.declare(metadata ptr %nbobjs.addr, metadata !1909, metadata !DIExpression()), !dbg !1919
  store i32 %disappeared, ptr %disappeared.addr, align 4, !tbaa !1051
  tail call void @llvm.dbg.declare(metadata ptr %disappeared.addr, metadata !1910, metadata !DIExpression()), !dbg !1920
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !1921
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1911, metadata !DIExpression()), !dbg !1922
  call void @llvm.lifetime.start.p0(i64 4, ptr %newi) #15, !dbg !1921
  tail call void @llvm.dbg.declare(metadata ptr %newi, metadata !1912, metadata !DIExpression()), !dbg !1923
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #15, !dbg !1924
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !1913, metadata !DIExpression()), !dbg !1925
  call void @llvm.lifetime.start.p0(i64 4, ptr %newj) #15, !dbg !1924
  tail call void @llvm.dbg.declare(metadata ptr %newj, metadata !1914, metadata !DIExpression()), !dbg !1926
  store i32 0, ptr %i, align 4, !dbg !1927, !tbaa !1051
  store i32 0, ptr %newi, align 4, !dbg !1929, !tbaa !1051
  br label %for.cond, !dbg !1930

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1931, !tbaa !1051
  %1 = load i32, ptr %nbobjs.addr, align 4, !dbg !1933, !tbaa !1051
  %cmp = icmp ult i32 %0, %1, !dbg !1934
  br i1 %cmp, label %for.body, label %for.end19, !dbg !1935

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %objs.addr, align 8, !dbg !1936, !tbaa !777
  %3 = load i32, ptr %i, align 4, !dbg !1938, !tbaa !1051
  %idxprom = zext i32 %3 to i64, !dbg !1936
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom, !dbg !1936
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !1936, !tbaa !777
  %tobool = icmp ne ptr %4, null, !dbg !1936
  br i1 %tobool, label %if.then, label %if.end16, !dbg !1939

if.then:                                          ; preds = %for.body
  store i32 0, ptr %j, align 4, !dbg !1940, !tbaa !1051
  store i32 0, ptr %newj, align 4, !dbg !1943, !tbaa !1051
  br label %for.cond1, !dbg !1944

for.cond1:                                        ; preds = %for.inc, %if.then
  %5 = load i32, ptr %j, align 4, !dbg !1945, !tbaa !1051
  %6 = load i32, ptr %nbobjs.addr, align 4, !dbg !1947, !tbaa !1051
  %cmp2 = icmp ult i32 %5, %6, !dbg !1948
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !1949

for.body3:                                        ; preds = %for.cond1
  %7 = load ptr, ptr %objs.addr, align 8, !dbg !1950, !tbaa !777
  %8 = load i32, ptr %j, align 4, !dbg !1952, !tbaa !1051
  %idxprom4 = zext i32 %8 to i64, !dbg !1950
  %arrayidx5 = getelementptr inbounds ptr, ptr %7, i64 %idxprom4, !dbg !1950
  %9 = load ptr, ptr %arrayidx5, align 8, !dbg !1950, !tbaa !777
  %tobool6 = icmp ne ptr %9, null, !dbg !1950
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !1953

if.then7:                                         ; preds = %for.body3
  %10 = load ptr, ptr %values.addr, align 8, !dbg !1954, !tbaa !777
  %11 = load i32, ptr %i, align 4, !dbg !1956, !tbaa !1051
  %12 = load i32, ptr %nbobjs.addr, align 4, !dbg !1957, !tbaa !1051
  %mul = mul i32 %11, %12, !dbg !1958
  %13 = load i32, ptr %j, align 4, !dbg !1959, !tbaa !1051
  %add = add i32 %mul, %13, !dbg !1960
  %idxprom8 = zext i32 %add to i64, !dbg !1954
  %arrayidx9 = getelementptr inbounds i64, ptr %10, i64 %idxprom8, !dbg !1954
  %14 = load i64, ptr %arrayidx9, align 8, !dbg !1954, !tbaa !1547
  %15 = load ptr, ptr %values.addr, align 8, !dbg !1961, !tbaa !777
  %16 = load i32, ptr %newi, align 4, !dbg !1962, !tbaa !1051
  %17 = load i32, ptr %nbobjs.addr, align 4, !dbg !1963, !tbaa !1051
  %18 = load i32, ptr %disappeared.addr, align 4, !dbg !1964, !tbaa !1051
  %sub = sub i32 %17, %18, !dbg !1965
  %mul10 = mul i32 %16, %sub, !dbg !1966
  %19 = load i32, ptr %newj, align 4, !dbg !1967, !tbaa !1051
  %add11 = add i32 %mul10, %19, !dbg !1968
  %idxprom12 = zext i32 %add11 to i64, !dbg !1961
  %arrayidx13 = getelementptr inbounds i64, ptr %15, i64 %idxprom12, !dbg !1961
  store i64 %14, ptr %arrayidx13, align 8, !dbg !1969, !tbaa !1547
  %20 = load i32, ptr %newj, align 4, !dbg !1970, !tbaa !1051
  %inc = add i32 %20, 1, !dbg !1970
  store i32 %inc, ptr %newj, align 4, !dbg !1970, !tbaa !1051
  br label %if.end, !dbg !1971

if.end:                                           ; preds = %if.then7, %for.body3
  br label %for.inc, !dbg !1972

for.inc:                                          ; preds = %if.end
  %21 = load i32, ptr %j, align 4, !dbg !1973, !tbaa !1051
  %inc14 = add i32 %21, 1, !dbg !1973
  store i32 %inc14, ptr %j, align 4, !dbg !1973, !tbaa !1051
  br label %for.cond1, !dbg !1974, !llvm.loop !1975

for.end:                                          ; preds = %for.cond1
  %22 = load i32, ptr %newi, align 4, !dbg !1977, !tbaa !1051
  %inc15 = add i32 %22, 1, !dbg !1977
  store i32 %inc15, ptr %newi, align 4, !dbg !1977, !tbaa !1051
  br label %if.end16, !dbg !1978

if.end16:                                         ; preds = %for.end, %for.body
  br label %for.inc17, !dbg !1979

for.inc17:                                        ; preds = %if.end16
  %23 = load i32, ptr %i, align 4, !dbg !1980, !tbaa !1051
  %inc18 = add i32 %23, 1, !dbg !1980
  store i32 %inc18, ptr %i, align 4, !dbg !1980, !tbaa !1051
  br label %for.cond, !dbg !1981, !llvm.loop !1982

for.end19:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !1984, !tbaa !1051
  store i32 0, ptr %newi, align 4, !dbg !1986, !tbaa !1051
  br label %for.cond20, !dbg !1987

for.cond20:                                       ; preds = %for.inc47, %for.end19
  %24 = load i32, ptr %i, align 4, !dbg !1988, !tbaa !1051
  %25 = load i32, ptr %nbobjs.addr, align 4, !dbg !1990, !tbaa !1051
  %cmp21 = icmp ult i32 %24, %25, !dbg !1991
  br i1 %cmp21, label %for.body22, label %for.end49, !dbg !1992

for.body22:                                       ; preds = %for.cond20
  %26 = load ptr, ptr %objs.addr, align 8, !dbg !1993, !tbaa !777
  %27 = load i32, ptr %i, align 4, !dbg !1995, !tbaa !1051
  %idxprom23 = zext i32 %27 to i64, !dbg !1993
  %arrayidx24 = getelementptr inbounds ptr, ptr %26, i64 %idxprom23, !dbg !1993
  %28 = load ptr, ptr %arrayidx24, align 8, !dbg !1993, !tbaa !777
  %tobool25 = icmp ne ptr %28, null, !dbg !1993
  br i1 %tobool25, label %if.then26, label %if.end46, !dbg !1996

if.then26:                                        ; preds = %for.body22
  %29 = load ptr, ptr %objs.addr, align 8, !dbg !1997, !tbaa !777
  %30 = load i32, ptr %i, align 4, !dbg !1999, !tbaa !1051
  %idxprom27 = zext i32 %30 to i64, !dbg !1997
  %arrayidx28 = getelementptr inbounds ptr, ptr %29, i64 %idxprom27, !dbg !1997
  %31 = load ptr, ptr %arrayidx28, align 8, !dbg !1997, !tbaa !777
  %32 = load ptr, ptr %objs.addr, align 8, !dbg !2000, !tbaa !777
  %33 = load i32, ptr %newi, align 4, !dbg !2001, !tbaa !1051
  %idxprom29 = zext i32 %33 to i64, !dbg !2000
  %arrayidx30 = getelementptr inbounds ptr, ptr %32, i64 %idxprom29, !dbg !2000
  store ptr %31, ptr %arrayidx30, align 8, !dbg !2002, !tbaa !777
  %34 = load ptr, ptr %indexes.addr, align 8, !dbg !2003, !tbaa !777
  %tobool31 = icmp ne ptr %34, null, !dbg !2003
  br i1 %tobool31, label %if.then32, label %if.end37, !dbg !2005

if.then32:                                        ; preds = %if.then26
  %35 = load ptr, ptr %indexes.addr, align 8, !dbg !2006, !tbaa !777
  %36 = load i32, ptr %i, align 4, !dbg !2007, !tbaa !1051
  %idxprom33 = zext i32 %36 to i64, !dbg !2006
  %arrayidx34 = getelementptr inbounds i64, ptr %35, i64 %idxprom33, !dbg !2006
  %37 = load i64, ptr %arrayidx34, align 8, !dbg !2006, !tbaa !1547
  %38 = load ptr, ptr %indexes.addr, align 8, !dbg !2008, !tbaa !777
  %39 = load i32, ptr %newi, align 4, !dbg !2009, !tbaa !1051
  %idxprom35 = zext i32 %39 to i64, !dbg !2008
  %arrayidx36 = getelementptr inbounds i64, ptr %38, i64 %idxprom35, !dbg !2008
  store i64 %37, ptr %arrayidx36, align 8, !dbg !2010, !tbaa !1547
  br label %if.end37, !dbg !2008

if.end37:                                         ; preds = %if.then32, %if.then26
  %40 = load ptr, ptr %different_types.addr, align 8, !dbg !2011, !tbaa !777
  %tobool38 = icmp ne ptr %40, null, !dbg !2011
  br i1 %tobool38, label %if.then39, label %if.end44, !dbg !2013

if.then39:                                        ; preds = %if.end37
  %41 = load ptr, ptr %different_types.addr, align 8, !dbg !2014, !tbaa !777
  %42 = load i32, ptr %i, align 4, !dbg !2015, !tbaa !1051
  %idxprom40 = zext i32 %42 to i64, !dbg !2014
  %arrayidx41 = getelementptr inbounds i32, ptr %41, i64 %idxprom40, !dbg !2014
  %43 = load i32, ptr %arrayidx41, align 4, !dbg !2014, !tbaa !818
  %44 = load ptr, ptr %different_types.addr, align 8, !dbg !2016, !tbaa !777
  %45 = load i32, ptr %newi, align 4, !dbg !2017, !tbaa !1051
  %idxprom42 = zext i32 %45 to i64, !dbg !2016
  %arrayidx43 = getelementptr inbounds i32, ptr %44, i64 %idxprom42, !dbg !2016
  store i32 %43, ptr %arrayidx43, align 4, !dbg !2018, !tbaa !818
  br label %if.end44, !dbg !2016

if.end44:                                         ; preds = %if.then39, %if.end37
  %46 = load i32, ptr %newi, align 4, !dbg !2019, !tbaa !1051
  %inc45 = add i32 %46, 1, !dbg !2019
  store i32 %inc45, ptr %newi, align 4, !dbg !2019, !tbaa !1051
  br label %if.end46, !dbg !2020

if.end46:                                         ; preds = %if.end44, %for.body22
  br label %for.inc47, !dbg !2021

for.inc47:                                        ; preds = %if.end46
  %47 = load i32, ptr %i, align 4, !dbg !2022, !tbaa !1051
  %inc48 = add i32 %47, 1, !dbg !2022
  store i32 %inc48, ptr %i, align 4, !dbg !2022, !tbaa !1051
  br label %for.cond20, !dbg !2023, !llvm.loop !2024

for.end49:                                        ; preds = %for.cond20
  call void @llvm.lifetime.end.p0(i64 4, ptr %newj) #15, !dbg !2026
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #15, !dbg !2026
  call void @llvm.lifetime.end.p0(i64 4, ptr %newi) #15, !dbg !2026
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !2026
  ret void, !dbg !2026
}

; Function Attrs: nounwind allocsize(0)
declare !dbg !2027 noalias ptr @malloc(i64 noundef) #7

; Function Attrs: nounwind
declare !dbg !2030 void @free(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hwloc_backend_distances_add_commit(ptr noundef %topology, ptr noundef %handle, i64 noundef %flags) #0 !dbg !2033 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %dist = alloca ptr, align 8
  %full_accuracy = alloca float, align 4
  %accuracies = alloca ptr, align 8
  %nbaccuracies = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2037, metadata !DIExpression()), !dbg !2048
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !2038, metadata !DIExpression()), !dbg !2049
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2039, metadata !DIExpression()), !dbg !2050
  call void @llvm.lifetime.start.p0(i64 8, ptr %dist) #15, !dbg !2051
  tail call void @llvm.dbg.declare(metadata ptr %dist, metadata !2040, metadata !DIExpression()), !dbg !2052
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !2053, !tbaa !777
  store ptr %0, ptr %dist, align 8, !dbg !2052, !tbaa !777
  %1 = load ptr, ptr %dist, align 8, !dbg !2054, !tbaa !777
  %nbobjs = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %1, i32 0, i32 4, !dbg !2056
  %2 = load i32, ptr %nbobjs, align 8, !dbg !2056, !tbaa !1089
  %tobool = icmp ne i32 %2, 0, !dbg !2054
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2057

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %dist, align 8, !dbg !2058, !tbaa !777
  %iflags = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %3, i32 0, i32 8, !dbg !2059
  %4 = load i32, ptr %iflags, align 8, !dbg !2059, !tbaa !1201
  %and = and i32 %4, 2, !dbg !2060
  %tobool1 = icmp ne i32 %and, 0, !dbg !2060
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2061

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call ptr @__errno_location() #18, !dbg !2062
  store i32 22, ptr %call, align 4, !dbg !2064, !tbaa !1051
  br label %err, !dbg !2065

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i64, ptr %flags.addr, align 8, !dbg !2066, !tbaa !1547
  %and2 = and i64 %5, 1, !dbg !2068
  %tobool3 = icmp ne i64 %and2, 0, !dbg !2068
  br i1 %tobool3, label %land.lhs.true, label %if.end7, !dbg !2069

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %dist, align 8, !dbg !2070, !tbaa !777
  %objs = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %6, i32 0, i32 9, !dbg !2071
  %7 = load ptr, ptr %objs, align 8, !dbg !2071, !tbaa !1010
  %tobool4 = icmp ne ptr %7, null, !dbg !2070
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !2072

if.then5:                                         ; preds = %land.lhs.true
  %call6 = call ptr @__errno_location() #18, !dbg !2073
  store i32 22, ptr %call6, align 4, !dbg !2075, !tbaa !1051
  br label %err, !dbg !2076

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %8 = load ptr, ptr %topology.addr, align 8, !dbg !2077, !tbaa !777
  %grouping = getelementptr inbounds %struct.hwloc_topology, ptr %8, i32 0, i32 32, !dbg !2078
  %9 = load i32, ptr %grouping, align 8, !dbg !2078, !tbaa !814
  %tobool8 = icmp ne i32 %9, 0, !dbg !2077
  br i1 %tobool8, label %land.lhs.true9, label %if.end25, !dbg !2079

land.lhs.true9:                                   ; preds = %if.end7
  %10 = load i64, ptr %flags.addr, align 8, !dbg !2080, !tbaa !1547
  %and10 = and i64 %10, 1, !dbg !2081
  %tobool11 = icmp ne i64 %and10, 0, !dbg !2081
  br i1 %tobool11, label %land.lhs.true12, label %if.end25, !dbg !2082

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %11 = load ptr, ptr %dist, align 8, !dbg !2083, !tbaa !777
  %different_types = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %11, i32 0, i32 3, !dbg !2084
  %12 = load ptr, ptr %different_types, align 8, !dbg !2084, !tbaa !1002
  %tobool13 = icmp ne ptr %12, null, !dbg !2083
  br i1 %tobool13, label %if.end25, label %if.then14, !dbg !2085

if.then14:                                        ; preds = %land.lhs.true12
  call void @llvm.lifetime.start.p0(i64 4, ptr %full_accuracy) #15, !dbg !2086
  tail call void @llvm.dbg.declare(metadata ptr %full_accuracy, metadata !2041, metadata !DIExpression()), !dbg !2087
  store float 0.000000e+00, ptr %full_accuracy, align 4, !dbg !2087, !tbaa !847
  call void @llvm.lifetime.start.p0(i64 8, ptr %accuracies) #15, !dbg !2088
  tail call void @llvm.dbg.declare(metadata ptr %accuracies, metadata !2044, metadata !DIExpression()), !dbg !2089
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbaccuracies) #15, !dbg !2090
  tail call void @llvm.dbg.declare(metadata ptr %nbaccuracies, metadata !2046, metadata !DIExpression()), !dbg !2091
  %13 = load i64, ptr %flags.addr, align 8, !dbg !2092, !tbaa !1547
  %and15 = and i64 %13, 2, !dbg !2094
  %tobool16 = icmp ne i64 %and15, 0, !dbg !2094
  br i1 %tobool16, label %if.then17, label %if.else, !dbg !2095

if.then17:                                        ; preds = %if.then14
  %14 = load ptr, ptr %topology.addr, align 8, !dbg !2096, !tbaa !777
  %grouping_accuracies = getelementptr inbounds %struct.hwloc_topology, ptr %14, i32 0, i32 35, !dbg !2098
  %arraydecay = getelementptr inbounds [5 x float], ptr %grouping_accuracies, i64 0, i64 0, !dbg !2096
  store ptr %arraydecay, ptr %accuracies, align 8, !dbg !2099, !tbaa !777
  %15 = load ptr, ptr %topology.addr, align 8, !dbg !2100, !tbaa !777
  %grouping_nbaccuracies = getelementptr inbounds %struct.hwloc_topology, ptr %15, i32 0, i32 34, !dbg !2101
  %16 = load i32, ptr %grouping_nbaccuracies, align 8, !dbg !2101, !tbaa !864
  store i32 %16, ptr %nbaccuracies, align 4, !dbg !2102, !tbaa !1051
  br label %if.end18, !dbg !2103

if.else:                                          ; preds = %if.then14
  store ptr %full_accuracy, ptr %accuracies, align 8, !dbg !2104, !tbaa !777
  store i32 1, ptr %nbaccuracies, align 4, !dbg !2106, !tbaa !1051
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then17
  %17 = load ptr, ptr %topology.addr, align 8, !dbg !2107, !tbaa !777
  %grouping_verbose = getelementptr inbounds %struct.hwloc_topology, ptr %17, i32 0, i32 33, !dbg !2109
  %18 = load i32, ptr %grouping_verbose, align 4, !dbg !2109, !tbaa !905
  %tobool19 = icmp ne i32 %18, 0, !dbg !2107
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !2110

if.then20:                                        ; preds = %if.end18
  %19 = load ptr, ptr @stderr, align 8, !dbg !2111, !tbaa !777
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.5), !dbg !2113
  %20 = load ptr, ptr %dist, align 8, !dbg !2114, !tbaa !777
  call void @hwloc_internal_distances_print_matrix(ptr noundef %20), !dbg !2115
  br label %if.end22, !dbg !2116

if.end22:                                         ; preds = %if.then20, %if.end18
  %21 = load ptr, ptr %topology.addr, align 8, !dbg !2117, !tbaa !777
  %22 = load ptr, ptr %dist, align 8, !dbg !2118, !tbaa !777
  %nbobjs23 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %22, i32 0, i32 4, !dbg !2119
  %23 = load i32, ptr %nbobjs23, align 8, !dbg !2119, !tbaa !1089
  %24 = load ptr, ptr %dist, align 8, !dbg !2120, !tbaa !777
  %objs24 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %24, i32 0, i32 9, !dbg !2121
  %25 = load ptr, ptr %objs24, align 8, !dbg !2121, !tbaa !1010
  %26 = load ptr, ptr %dist, align 8, !dbg !2122, !tbaa !777
  %values = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %26, i32 0, i32 6, !dbg !2123
  %27 = load ptr, ptr %values, align 8, !dbg !2123, !tbaa !1014
  %28 = load ptr, ptr %dist, align 8, !dbg !2124, !tbaa !777
  %kind = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %28, i32 0, i32 7, !dbg !2125
  %29 = load i64, ptr %kind, align 8, !dbg !2125, !tbaa !1175
  %30 = load i32, ptr %nbaccuracies, align 4, !dbg !2126, !tbaa !1051
  %31 = load ptr, ptr %accuracies, align 8, !dbg !2127, !tbaa !777
  call void @hwloc__groups_by_distances(ptr noundef %21, i32 noundef %23, ptr noundef %25, ptr noundef %27, i64 noundef %29, i32 noundef %30, ptr noundef %31, i32 noundef 1), !dbg !2128
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbaccuracies) #15, !dbg !2129
  call void @llvm.lifetime.end.p0(i64 8, ptr %accuracies) #15, !dbg !2129
  call void @llvm.lifetime.end.p0(i64 4, ptr %full_accuracy) #15, !dbg !2129
  br label %if.end25, !dbg !2130

if.end25:                                         ; preds = %if.end22, %land.lhs.true12, %land.lhs.true9, %if.end7
  %32 = load ptr, ptr %topology.addr, align 8, !dbg !2131, !tbaa !777
  %last_dist = getelementptr inbounds %struct.hwloc_topology, ptr %32, i32 0, i32 25, !dbg !2133
  %33 = load ptr, ptr %last_dist, align 8, !dbg !2133, !tbaa !785
  %tobool26 = icmp ne ptr %33, null, !dbg !2131
  br i1 %tobool26, label %if.then27, label %if.else29, !dbg !2134

if.then27:                                        ; preds = %if.end25
  %34 = load ptr, ptr %dist, align 8, !dbg !2135, !tbaa !777
  %35 = load ptr, ptr %topology.addr, align 8, !dbg !2136, !tbaa !777
  %last_dist28 = getelementptr inbounds %struct.hwloc_topology, ptr %35, i32 0, i32 25, !dbg !2137
  %36 = load ptr, ptr %last_dist28, align 8, !dbg !2137, !tbaa !785
  %next = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %36, i32 0, i32 11, !dbg !2138
  store ptr %34, ptr %next, align 8, !dbg !2139, !tbaa !975
  br label %if.end30, !dbg !2136

if.else29:                                        ; preds = %if.end25
  %37 = load ptr, ptr %dist, align 8, !dbg !2140, !tbaa !777
  %38 = load ptr, ptr %topology.addr, align 8, !dbg !2141, !tbaa !777
  %first_dist = getelementptr inbounds %struct.hwloc_topology, ptr %38, i32 0, i32 24, !dbg !2142
  store ptr %37, ptr %first_dist, align 8, !dbg !2143, !tbaa !795
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.then27
  %39 = load ptr, ptr %topology.addr, align 8, !dbg !2144, !tbaa !777
  %last_dist31 = getelementptr inbounds %struct.hwloc_topology, ptr %39, i32 0, i32 25, !dbg !2145
  %40 = load ptr, ptr %last_dist31, align 8, !dbg !2145, !tbaa !785
  %41 = load ptr, ptr %dist, align 8, !dbg !2146, !tbaa !777
  %prev = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %41, i32 0, i32 10, !dbg !2147
  store ptr %40, ptr %prev, align 8, !dbg !2148, !tbaa !1257
  %42 = load ptr, ptr %dist, align 8, !dbg !2149, !tbaa !777
  %next32 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %42, i32 0, i32 11, !dbg !2150
  store ptr null, ptr %next32, align 8, !dbg !2151, !tbaa !975
  %43 = load ptr, ptr %dist, align 8, !dbg !2152, !tbaa !777
  %44 = load ptr, ptr %topology.addr, align 8, !dbg !2153, !tbaa !777
  %last_dist33 = getelementptr inbounds %struct.hwloc_topology, ptr %44, i32 0, i32 25, !dbg !2154
  store ptr %43, ptr %last_dist33, align 8, !dbg !2155, !tbaa !785
  %45 = load ptr, ptr %dist, align 8, !dbg !2156, !tbaa !777
  %iflags34 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %45, i32 0, i32 8, !dbg !2157
  %46 = load i32, ptr %iflags34, align 8, !dbg !2158, !tbaa !1201
  %and35 = and i32 %46, -3, !dbg !2158
  store i32 %and35, ptr %iflags34, align 8, !dbg !2158, !tbaa !1201
  store i32 0, ptr %retval, align 4, !dbg !2159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2159

err:                                              ; preds = %if.then5, %if.then
  tail call void @llvm.dbg.label(metadata !2047), !dbg !2160
  %47 = load ptr, ptr %dist, align 8, !dbg !2161, !tbaa !777
  call void @hwloc_backend_distances_add__cancel(ptr noundef %47), !dbg !2162
  store i32 -1, ptr %retval, align 4, !dbg !2163
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2163

cleanup:                                          ; preds = %err, %if.end30
  call void @llvm.lifetime.end.p0(i64 8, ptr %dist) #15, !dbg !2164
  %48 = load i32, ptr %retval, align 4, !dbg !2164
  ret i32 %48, !dbg !2164
}

declare !dbg !2165 i32 @fprintf(ptr noundef, ptr noundef, ...) #8

; Function Attrs: nounwind uwtable
define internal void @hwloc_internal_distances_print_matrix(ptr noundef %dist) #0 !dbg !2223 {
entry:
  %dist.addr = alloca ptr, align 8
  %nbobjs = alloca i32, align 4
  %objs = alloca ptr, align 8
  %values = alloca ptr, align 8
  %gp = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %dist, ptr %dist.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %dist.addr, metadata !2225, metadata !DIExpression()), !dbg !2232
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbobjs) #15, !dbg !2233
  tail call void @llvm.dbg.declare(metadata ptr %nbobjs, metadata !2226, metadata !DIExpression()), !dbg !2234
  %0 = load ptr, ptr %dist.addr, align 8, !dbg !2235, !tbaa !777
  %nbobjs1 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %0, i32 0, i32 4, !dbg !2236
  %1 = load i32, ptr %nbobjs1, align 8, !dbg !2236, !tbaa !1089
  store i32 %1, ptr %nbobjs, align 4, !dbg !2234, !tbaa !1051
  call void @llvm.lifetime.start.p0(i64 8, ptr %objs) #15, !dbg !2237
  tail call void @llvm.dbg.declare(metadata ptr %objs, metadata !2227, metadata !DIExpression()), !dbg !2238
  %2 = load ptr, ptr %dist.addr, align 8, !dbg !2239, !tbaa !777
  %objs2 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %2, i32 0, i32 9, !dbg !2240
  %3 = load ptr, ptr %objs2, align 8, !dbg !2240, !tbaa !1010
  store ptr %3, ptr %objs, align 8, !dbg !2238, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 8, ptr %values) #15, !dbg !2241
  tail call void @llvm.dbg.declare(metadata ptr %values, metadata !2228, metadata !DIExpression()), !dbg !2242
  %4 = load ptr, ptr %dist.addr, align 8, !dbg !2243, !tbaa !777
  %values3 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %4, i32 0, i32 6, !dbg !2244
  %5 = load ptr, ptr %values3, align 8, !dbg !2244, !tbaa !1014
  store ptr %5, ptr %values, align 8, !dbg !2242, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 4, ptr %gp) #15, !dbg !2245
  tail call void @llvm.dbg.declare(metadata ptr %gp, metadata !2229, metadata !DIExpression()), !dbg !2246
  %6 = load ptr, ptr %dist.addr, align 8, !dbg !2247, !tbaa !777
  %unique_type = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %6, i32 0, i32 2, !dbg !2247
  %7 = load i32, ptr %unique_type, align 4, !dbg !2247, !tbaa !1165
  %cmp = icmp eq i32 %7, 3, !dbg !2247
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !2247

lor.rhs:                                          ; preds = %entry
  %8 = load ptr, ptr %dist.addr, align 8, !dbg !2247, !tbaa !777
  %unique_type4 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %8, i32 0, i32 2, !dbg !2247
  %9 = load i32, ptr %unique_type4, align 4, !dbg !2247, !tbaa !1165
  %cmp5 = icmp eq i32 %9, 13, !dbg !2247
  br label %lor.end, !dbg !2247

lor.end:                                          ; preds = %lor.rhs, %entry
  %10 = phi i1 [ true, %entry ], [ %cmp5, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !2248
  %lnot.ext = zext i1 %lnot to i32, !dbg !2248
  store i32 %lnot.ext, ptr %gp, align 4, !dbg !2246, !tbaa !1051
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !2249
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2230, metadata !DIExpression()), !dbg !2250
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #15, !dbg !2249
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !2231, metadata !DIExpression()), !dbg !2251
  %11 = load ptr, ptr @stderr, align 8, !dbg !2252, !tbaa !777
  %12 = load i32, ptr %gp, align 4, !dbg !2253, !tbaa !1051
  %tobool = icmp ne i32 %12, 0, !dbg !2253
  %13 = zext i1 %tobool to i64, !dbg !2253
  %cond = select i1 %tobool, ptr @.str.10, ptr @.str.11, !dbg !2253
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.9, ptr noundef %cond), !dbg !2254
  store i32 0, ptr %j, align 4, !dbg !2255, !tbaa !1051
  br label %for.cond, !dbg !2257

for.cond:                                         ; preds = %for.inc, %lor.end
  %14 = load i32, ptr %j, align 4, !dbg !2258, !tbaa !1051
  %15 = load i32, ptr %nbobjs, align 4, !dbg !2260, !tbaa !1051
  %cmp6 = icmp ult i32 %14, %15, !dbg !2261
  br i1 %cmp6, label %for.body, label %for.end, !dbg !2262

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr @stderr, align 8, !dbg !2263, !tbaa !777
  %17 = load i32, ptr %gp, align 4, !dbg !2264, !tbaa !1051
  %tobool7 = icmp ne i32 %17, 0, !dbg !2264
  br i1 %tobool7, label %cond.true, label %cond.false, !dbg !2264

cond.true:                                        ; preds = %for.body
  %18 = load ptr, ptr %objs, align 8, !dbg !2265, !tbaa !777
  %19 = load i32, ptr %j, align 4, !dbg !2266, !tbaa !1051
  %idxprom = zext i32 %19 to i64, !dbg !2265
  %arrayidx = getelementptr inbounds ptr, ptr %18, i64 %idxprom, !dbg !2265
  %20 = load ptr, ptr %arrayidx, align 8, !dbg !2265, !tbaa !777
  %gp_index = getelementptr inbounds %struct.hwloc_obj, ptr %20, i32 0, i32 32, !dbg !2267
  %21 = load i64, ptr %gp_index, align 8, !dbg !2267, !tbaa !1883
  br label %cond.end, !dbg !2264

cond.false:                                       ; preds = %for.body
  %22 = load ptr, ptr %objs, align 8, !dbg !2268, !tbaa !777
  %23 = load i32, ptr %j, align 4, !dbg !2269, !tbaa !1051
  %idxprom8 = zext i32 %23 to i64, !dbg !2268
  %arrayidx9 = getelementptr inbounds ptr, ptr %22, i64 %idxprom8, !dbg !2268
  %24 = load ptr, ptr %arrayidx9, align 8, !dbg !2268, !tbaa !777
  %os_index = getelementptr inbounds %struct.hwloc_obj, ptr %24, i32 0, i32 2, !dbg !2270
  %25 = load i32, ptr %os_index, align 8, !dbg !2270, !tbaa !1861
  %conv = zext i32 %25 to i64, !dbg !2268
  br label %cond.end, !dbg !2264

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi i64 [ %21, %cond.true ], [ %conv, %cond.false ], !dbg !2264
  %conv11 = trunc i64 %cond10 to i32, !dbg !2271
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.12, i32 noundef %conv11), !dbg !2272
  br label %for.inc, !dbg !2272

for.inc:                                          ; preds = %cond.end
  %26 = load i32, ptr %j, align 4, !dbg !2273, !tbaa !1051
  %inc = add i32 %26, 1, !dbg !2273
  store i32 %inc, ptr %j, align 4, !dbg !2273, !tbaa !1051
  br label %for.cond, !dbg !2274, !llvm.loop !2275

for.end:                                          ; preds = %for.cond
  %27 = load ptr, ptr @stderr, align 8, !dbg !2277, !tbaa !777
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.13), !dbg !2278
  store i32 0, ptr %i, align 4, !dbg !2279, !tbaa !1051
  br label %for.cond14, !dbg !2281

for.cond14:                                       ; preds = %for.inc43, %for.end
  %28 = load i32, ptr %i, align 4, !dbg !2282, !tbaa !1051
  %29 = load i32, ptr %nbobjs, align 4, !dbg !2284, !tbaa !1051
  %cmp15 = icmp ult i32 %28, %29, !dbg !2285
  br i1 %cmp15, label %for.body17, label %for.end45, !dbg !2286

for.body17:                                       ; preds = %for.cond14
  %30 = load ptr, ptr @stderr, align 8, !dbg !2287, !tbaa !777
  %31 = load i32, ptr %gp, align 4, !dbg !2289, !tbaa !1051
  %tobool18 = icmp ne i32 %31, 0, !dbg !2289
  br i1 %tobool18, label %cond.true19, label %cond.false23, !dbg !2289

cond.true19:                                      ; preds = %for.body17
  %32 = load ptr, ptr %objs, align 8, !dbg !2290, !tbaa !777
  %33 = load i32, ptr %i, align 4, !dbg !2291, !tbaa !1051
  %idxprom20 = zext i32 %33 to i64, !dbg !2290
  %arrayidx21 = getelementptr inbounds ptr, ptr %32, i64 %idxprom20, !dbg !2290
  %34 = load ptr, ptr %arrayidx21, align 8, !dbg !2290, !tbaa !777
  %gp_index22 = getelementptr inbounds %struct.hwloc_obj, ptr %34, i32 0, i32 32, !dbg !2292
  %35 = load i64, ptr %gp_index22, align 8, !dbg !2292, !tbaa !1883
  br label %cond.end28, !dbg !2289

cond.false23:                                     ; preds = %for.body17
  %36 = load ptr, ptr %objs, align 8, !dbg !2293, !tbaa !777
  %37 = load i32, ptr %i, align 4, !dbg !2294, !tbaa !1051
  %idxprom24 = zext i32 %37 to i64, !dbg !2293
  %arrayidx25 = getelementptr inbounds ptr, ptr %36, i64 %idxprom24, !dbg !2293
  %38 = load ptr, ptr %arrayidx25, align 8, !dbg !2293, !tbaa !777
  %os_index26 = getelementptr inbounds %struct.hwloc_obj, ptr %38, i32 0, i32 2, !dbg !2295
  %39 = load i32, ptr %os_index26, align 8, !dbg !2295, !tbaa !1861
  %conv27 = zext i32 %39 to i64, !dbg !2293
  br label %cond.end28, !dbg !2289

cond.end28:                                       ; preds = %cond.false23, %cond.true19
  %cond29 = phi i64 [ %35, %cond.true19 ], [ %conv27, %cond.false23 ], !dbg !2289
  %conv30 = trunc i64 %cond29 to i32, !dbg !2296
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.14, i32 noundef %conv30), !dbg !2297
  store i32 0, ptr %j, align 4, !dbg !2298, !tbaa !1051
  br label %for.cond32, !dbg !2300

for.cond32:                                       ; preds = %for.inc39, %cond.end28
  %40 = load i32, ptr %j, align 4, !dbg !2301, !tbaa !1051
  %41 = load i32, ptr %nbobjs, align 4, !dbg !2303, !tbaa !1051
  %cmp33 = icmp ult i32 %40, %41, !dbg !2304
  br i1 %cmp33, label %for.body35, label %for.end41, !dbg !2305

for.body35:                                       ; preds = %for.cond32
  %42 = load ptr, ptr @stderr, align 8, !dbg !2306, !tbaa !777
  %43 = load ptr, ptr %values, align 8, !dbg !2307, !tbaa !777
  %44 = load i32, ptr %i, align 4, !dbg !2308, !tbaa !1051
  %45 = load i32, ptr %nbobjs, align 4, !dbg !2309, !tbaa !1051
  %mul = mul i32 %44, %45, !dbg !2310
  %46 = load i32, ptr %j, align 4, !dbg !2311, !tbaa !1051
  %add = add i32 %mul, %46, !dbg !2312
  %idxprom36 = zext i32 %add to i64, !dbg !2307
  %arrayidx37 = getelementptr inbounds i64, ptr %43, i64 %idxprom36, !dbg !2307
  %47 = load i64, ptr %arrayidx37, align 8, !dbg !2307, !tbaa !1547
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.15, i64 noundef %47), !dbg !2313
  br label %for.inc39, !dbg !2313

for.inc39:                                        ; preds = %for.body35
  %48 = load i32, ptr %j, align 4, !dbg !2314, !tbaa !1051
  %inc40 = add i32 %48, 1, !dbg !2314
  store i32 %inc40, ptr %j, align 4, !dbg !2314, !tbaa !1051
  br label %for.cond32, !dbg !2315, !llvm.loop !2316

for.end41:                                        ; preds = %for.cond32
  %49 = load ptr, ptr @stderr, align 8, !dbg !2318, !tbaa !777
  %call42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef @.str.13), !dbg !2319
  br label %for.inc43, !dbg !2320

for.inc43:                                        ; preds = %for.end41
  %50 = load i32, ptr %i, align 4, !dbg !2321, !tbaa !1051
  %inc44 = add i32 %50, 1, !dbg !2321
  store i32 %inc44, ptr %i, align 4, !dbg !2321, !tbaa !1051
  br label %for.cond14, !dbg !2322, !llvm.loop !2323

for.end45:                                        ; preds = %for.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #15, !dbg !2325
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !2325
  call void @llvm.lifetime.end.p0(i64 4, ptr %gp) #15, !dbg !2325
  call void @llvm.lifetime.end.p0(i64 8, ptr %values) #15, !dbg !2325
  call void @llvm.lifetime.end.p0(i64 8, ptr %objs) #15, !dbg !2325
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbobjs) #15, !dbg !2325
  ret void, !dbg !2325
}

; Function Attrs: nounwind uwtable
define internal void @hwloc__groups_by_distances(ptr noundef %topology, i32 noundef %nbobjs, ptr noundef %objs, ptr noundef %_values, i64 noundef %kind, i32 noundef %nbaccuracies, ptr noundef %accuracies, i32 noundef %needcheck) #0 !dbg !2326 {
entry:
  %topology.addr = alloca ptr, align 8
  %nbobjs.addr = alloca i32, align 4
  %objs.addr = alloca ptr, align 8
  %_values.addr = alloca ptr, align 8
  %kind.addr = alloca i64, align 8
  %nbaccuracies.addr = alloca i32, align 4
  %accuracies.addr = alloca ptr, align 8
  %needcheck.addr = alloca i32, align 4
  %groupids = alloca ptr, align 8
  %nbgroups = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %verbose = alloca i32, align 4
  %groupobjs = alloca ptr, align 8
  %groupsizes = alloca ptr, align 8
  %groupvalues = alloca ptr, align 8
  %failed = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %group_obj = alloca ptr, align 8
  %res_obj = alloca ptr, align 8
  %groupsize = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2330, metadata !DIExpression()), !dbg !2360
  store i32 %nbobjs, ptr %nbobjs.addr, align 4, !tbaa !1051
  tail call void @llvm.dbg.declare(metadata ptr %nbobjs.addr, metadata !2331, metadata !DIExpression()), !dbg !2361
  store ptr %objs, ptr %objs.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %objs.addr, metadata !2332, metadata !DIExpression()), !dbg !2362
  store ptr %_values, ptr %_values.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %_values.addr, metadata !2333, metadata !DIExpression()), !dbg !2363
  store i64 %kind, ptr %kind.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %kind.addr, metadata !2334, metadata !DIExpression()), !dbg !2364
  store i32 %nbaccuracies, ptr %nbaccuracies.addr, align 4, !tbaa !1051
  tail call void @llvm.dbg.declare(metadata ptr %nbaccuracies.addr, metadata !2335, metadata !DIExpression()), !dbg !2365
  store ptr %accuracies, ptr %accuracies.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %accuracies.addr, metadata !2336, metadata !DIExpression()), !dbg !2366
  store i32 %needcheck, ptr %needcheck.addr, align 4, !tbaa !1051
  tail call void @llvm.dbg.declare(metadata ptr %needcheck.addr, metadata !2337, metadata !DIExpression()), !dbg !2367
  call void @llvm.lifetime.start.p0(i64 8, ptr %groupids) #15, !dbg !2368
  tail call void @llvm.dbg.declare(metadata ptr %groupids, metadata !2338, metadata !DIExpression()), !dbg !2369
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbgroups) #15, !dbg !2370
  tail call void @llvm.dbg.declare(metadata ptr %nbgroups, metadata !2339, metadata !DIExpression()), !dbg !2371
  store i32 0, ptr %nbgroups, align 4, !dbg !2371, !tbaa !1051
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !2372
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2340, metadata !DIExpression()), !dbg !2373
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #15, !dbg !2372
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !2341, metadata !DIExpression()), !dbg !2374
  call void @llvm.lifetime.start.p0(i64 4, ptr %verbose) #15, !dbg !2375
  tail call void @llvm.dbg.declare(metadata ptr %verbose, metadata !2342, metadata !DIExpression()), !dbg !2376
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !2377, !tbaa !777
  %grouping_verbose = getelementptr inbounds %struct.hwloc_topology, ptr %0, i32 0, i32 33, !dbg !2378
  %1 = load i32, ptr %grouping_verbose, align 4, !dbg !2378, !tbaa !905
  store i32 %1, ptr %verbose, align 4, !dbg !2376, !tbaa !1051
  call void @llvm.lifetime.start.p0(i64 8, ptr %groupobjs) #15, !dbg !2379
  tail call void @llvm.dbg.declare(metadata ptr %groupobjs, metadata !2343, metadata !DIExpression()), !dbg !2380
  call void @llvm.lifetime.start.p0(i64 8, ptr %groupsizes) #15, !dbg !2381
  tail call void @llvm.dbg.declare(metadata ptr %groupsizes, metadata !2344, metadata !DIExpression()), !dbg !2382
  call void @llvm.lifetime.start.p0(i64 8, ptr %groupvalues) #15, !dbg !2383
  tail call void @llvm.dbg.declare(metadata ptr %groupvalues, metadata !2345, metadata !DIExpression()), !dbg !2384
  call void @llvm.lifetime.start.p0(i64 4, ptr %failed) #15, !dbg !2385
  tail call void @llvm.dbg.declare(metadata ptr %failed, metadata !2346, metadata !DIExpression()), !dbg !2386
  store i32 0, ptr %failed, align 4, !dbg !2386, !tbaa !1051
  %2 = load i32, ptr %nbobjs.addr, align 4, !dbg !2387, !tbaa !1051
  %cmp = icmp ule i32 %2, 2, !dbg !2389
  br i1 %cmp, label %if.then, label %if.end, !dbg !2390

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2391

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %kind.addr, align 8, !dbg !2392, !tbaa !1547
  %and = and i64 %3, 4, !dbg !2394
  %tobool = icmp ne i64 %and, 0, !dbg !2394
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !2395

if.then1:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2396

if.end2:                                          ; preds = %if.end
  %4 = load i32, ptr %nbobjs.addr, align 4, !dbg !2397, !tbaa !1051
  %conv = zext i32 %4 to i64, !dbg !2397
  %mul = mul i64 %conv, 4, !dbg !2398
  %call = call noalias ptr @malloc(i64 noundef %mul) #20, !dbg !2399
  store ptr %call, ptr %groupids, align 8, !dbg !2400, !tbaa !777
  %5 = load ptr, ptr %groupids, align 8, !dbg !2401, !tbaa !777
  %tobool3 = icmp ne ptr %5, null, !dbg !2401
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !2403

if.then4:                                         ; preds = %if.end2
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2404

if.end5:                                          ; preds = %if.end2
  store i32 0, ptr %i, align 4, !dbg !2405, !tbaa !1051
  br label %for.cond, !dbg !2407

for.cond:                                         ; preds = %for.inc, %if.end5
  %6 = load i32, ptr %i, align 4, !dbg !2408, !tbaa !1051
  %7 = load i32, ptr %nbaccuracies.addr, align 4, !dbg !2410, !tbaa !1051
  %cmp6 = icmp ult i32 %6, %7, !dbg !2411
  br i1 %cmp6, label %for.body, label %for.end, !dbg !2412

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %verbose, align 4, !dbg !2413, !tbaa !1051
  %tobool8 = icmp ne i32 %8, 0, !dbg !2413
  br i1 %tobool8, label %if.then9, label %if.end14, !dbg !2416

if.then9:                                         ; preds = %for.body
  %9 = load ptr, ptr @stderr, align 8, !dbg !2417, !tbaa !777
  %10 = load i32, ptr %nbobjs.addr, align 4, !dbg !2418, !tbaa !1051
  %11 = load ptr, ptr %objs.addr, align 8, !dbg !2419, !tbaa !777
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 0, !dbg !2419
  %12 = load ptr, ptr %arrayidx, align 8, !dbg !2419, !tbaa !777
  %type = getelementptr inbounds %struct.hwloc_obj, ptr %12, i32 0, i32 0, !dbg !2420
  %13 = load i32, ptr %type, align 8, !dbg !2420, !tbaa !1756
  %call10 = call ptr @hwloc_obj_type_string(i32 noundef %13) #18, !dbg !2421
  %14 = load ptr, ptr %accuracies.addr, align 8, !dbg !2422, !tbaa !777
  %15 = load i32, ptr %i, align 4, !dbg !2423, !tbaa !1051
  %idxprom = zext i32 %15 to i64, !dbg !2422
  %arrayidx11 = getelementptr inbounds float, ptr %14, i64 %idxprom, !dbg !2422
  %16 = load float, ptr %arrayidx11, align 4, !dbg !2422, !tbaa !847
  %conv12 = fpext float %16 to double, !dbg !2422
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.16, i32 noundef %10, ptr noundef %call10, double noundef %conv12), !dbg !2424
  br label %if.end14, !dbg !2424

if.end14:                                         ; preds = %if.then9, %for.body
  %17 = load i32, ptr %needcheck.addr, align 4, !dbg !2425, !tbaa !1051
  %tobool15 = icmp ne i32 %17, 0, !dbg !2425
  br i1 %tobool15, label %land.lhs.true, label %if.end22, !dbg !2427

land.lhs.true:                                    ; preds = %if.end14
  %18 = load i32, ptr %nbobjs.addr, align 4, !dbg !2428, !tbaa !1051
  %19 = load ptr, ptr %_values.addr, align 8, !dbg !2429, !tbaa !777
  %20 = load ptr, ptr %accuracies.addr, align 8, !dbg !2430, !tbaa !777
  %21 = load i32, ptr %i, align 4, !dbg !2431, !tbaa !1051
  %idxprom16 = zext i32 %21 to i64, !dbg !2430
  %arrayidx17 = getelementptr inbounds float, ptr %20, i64 %idxprom16, !dbg !2430
  %22 = load float, ptr %arrayidx17, align 4, !dbg !2430, !tbaa !847
  %23 = load i32, ptr %verbose, align 4, !dbg !2432, !tbaa !1051
  %call18 = call i32 @hwloc__check_grouping_matrix(i32 noundef %18, ptr noundef %19, float noundef %22, i32 noundef %23), !dbg !2433
  %cmp19 = icmp slt i32 %call18, 0, !dbg !2434
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !2435

if.then21:                                        ; preds = %land.lhs.true
  br label %for.inc, !dbg !2436

if.end22:                                         ; preds = %land.lhs.true, %if.end14
  %24 = load i32, ptr %nbobjs.addr, align 4, !dbg !2437, !tbaa !1051
  %25 = load ptr, ptr %_values.addr, align 8, !dbg !2438, !tbaa !777
  %26 = load ptr, ptr %accuracies.addr, align 8, !dbg !2439, !tbaa !777
  %27 = load i32, ptr %i, align 4, !dbg !2440, !tbaa !1051
  %idxprom23 = zext i32 %27 to i64, !dbg !2439
  %arrayidx24 = getelementptr inbounds float, ptr %26, i64 %idxprom23, !dbg !2439
  %28 = load float, ptr %arrayidx24, align 4, !dbg !2439, !tbaa !847
  %29 = load ptr, ptr %groupids, align 8, !dbg !2441, !tbaa !777
  %30 = load i32, ptr %verbose, align 4, !dbg !2442, !tbaa !1051
  %call25 = call i32 @hwloc__find_groups_by_min_distance(i32 noundef %24, ptr noundef %25, float noundef %28, ptr noundef %29, i32 noundef %30), !dbg !2443
  store i32 %call25, ptr %nbgroups, align 4, !dbg !2444, !tbaa !1051
  %31 = load i32, ptr %nbgroups, align 4, !dbg !2445, !tbaa !1051
  %tobool26 = icmp ne i32 %31, 0, !dbg !2445
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !2447

if.then27:                                        ; preds = %if.end22
  br label %for.end, !dbg !2448

if.end28:                                         ; preds = %if.end22
  br label %for.inc, !dbg !2449

for.inc:                                          ; preds = %if.end28, %if.then21
  %32 = load i32, ptr %i, align 4, !dbg !2450, !tbaa !1051
  %inc = add i32 %32, 1, !dbg !2450
  store i32 %inc, ptr %i, align 4, !dbg !2450, !tbaa !1051
  br label %for.cond, !dbg !2451, !llvm.loop !2452

for.end:                                          ; preds = %if.then27, %for.cond
  %33 = load i32, ptr %nbgroups, align 4, !dbg !2454, !tbaa !1051
  %tobool29 = icmp ne i32 %33, 0, !dbg !2454
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !2456

if.then30:                                        ; preds = %for.end
  br label %out_with_groupids, !dbg !2457

if.end31:                                         ; preds = %for.end
  %34 = load i32, ptr %nbgroups, align 4, !dbg !2458, !tbaa !1051
  %conv32 = zext i32 %34 to i64, !dbg !2458
  %mul33 = mul i64 %conv32, 8, !dbg !2459
  %call34 = call noalias ptr @malloc(i64 noundef %mul33) #20, !dbg !2460
  store ptr %call34, ptr %groupobjs, align 8, !dbg !2461, !tbaa !777
  %35 = load i32, ptr %nbgroups, align 4, !dbg !2462, !tbaa !1051
  %conv35 = zext i32 %35 to i64, !dbg !2462
  %mul36 = mul i64 %conv35, 4, !dbg !2463
  %call37 = call noalias ptr @malloc(i64 noundef %mul36) #20, !dbg !2464
  store ptr %call37, ptr %groupsizes, align 8, !dbg !2465, !tbaa !777
  %36 = load i32, ptr %nbgroups, align 4, !dbg !2466, !tbaa !1051
  %37 = load i32, ptr %nbgroups, align 4, !dbg !2467, !tbaa !1051
  %mul38 = mul i32 %36, %37, !dbg !2468
  %conv39 = zext i32 %mul38 to i64, !dbg !2466
  %mul40 = mul i64 %conv39, 8, !dbg !2469
  %call41 = call noalias ptr @malloc(i64 noundef %mul40) #20, !dbg !2470
  store ptr %call41, ptr %groupvalues, align 8, !dbg !2471, !tbaa !777
  %38 = load ptr, ptr %groupobjs, align 8, !dbg !2472, !tbaa !777
  %tobool42 = icmp ne ptr %38, null, !dbg !2472
  br i1 %tobool42, label %lor.lhs.false, label %if.then46, !dbg !2474

lor.lhs.false:                                    ; preds = %if.end31
  %39 = load ptr, ptr %groupsizes, align 8, !dbg !2475, !tbaa !777
  %tobool43 = icmp ne ptr %39, null, !dbg !2475
  br i1 %tobool43, label %lor.lhs.false44, label %if.then46, !dbg !2476

lor.lhs.false44:                                  ; preds = %lor.lhs.false
  %40 = load ptr, ptr %groupvalues, align 8, !dbg !2477, !tbaa !777
  %tobool45 = icmp ne ptr %40, null, !dbg !2477
  br i1 %tobool45, label %if.end47, label %if.then46, !dbg !2478

if.then46:                                        ; preds = %lor.lhs.false44, %lor.lhs.false, %if.end31
  br label %out_with_groups, !dbg !2479

if.end47:                                         ; preds = %lor.lhs.false44
  %41 = load ptr, ptr %groupsizes, align 8, !dbg !2480, !tbaa !777
  %arrayidx48 = getelementptr inbounds i32, ptr %41, i64 0, !dbg !2480
  %42 = load i32, ptr %nbgroups, align 4, !dbg !2481, !tbaa !1051
  %conv49 = zext i32 %42 to i64, !dbg !2481
  %mul50 = mul i64 4, %conv49, !dbg !2482
  call void @llvm.memset.p0.i64(ptr align 4 %arrayidx48, i8 0, i64 %mul50, i1 false), !dbg !2483
  store i32 0, ptr %i, align 4, !dbg !2484, !tbaa !1051
  br label %for.cond51, !dbg !2485

for.cond51:                                       ; preds = %for.inc87, %if.end47
  %43 = load i32, ptr %i, align 4, !dbg !2486, !tbaa !1051
  %44 = load i32, ptr %nbgroups, align 4, !dbg !2487, !tbaa !1051
  %cmp52 = icmp ult i32 %43, %44, !dbg !2488
  br i1 %cmp52, label %for.body54, label %for.end89, !dbg !2489

for.body54:                                       ; preds = %for.cond51
  call void @llvm.lifetime.start.p0(i64 8, ptr %group_obj) #15, !dbg !2490
  tail call void @llvm.dbg.declare(metadata ptr %group_obj, metadata !2347, metadata !DIExpression()), !dbg !2491
  call void @llvm.lifetime.start.p0(i64 8, ptr %res_obj) #15, !dbg !2490
  tail call void @llvm.dbg.declare(metadata ptr %res_obj, metadata !2351, metadata !DIExpression()), !dbg !2492
  %45 = load ptr, ptr %topology.addr, align 8, !dbg !2493, !tbaa !777
  %call55 = call ptr @hwloc_alloc_setup_object(ptr noundef %45, i32 noundef 12, i32 noundef -1), !dbg !2494
  store ptr %call55, ptr %group_obj, align 8, !dbg !2495, !tbaa !777
  %call56 = call noalias ptr @hwloc_bitmap_alloc(), !dbg !2496
  %46 = load ptr, ptr %group_obj, align 8, !dbg !2497, !tbaa !777
  %cpuset = getelementptr inbounds %struct.hwloc_obj, ptr %46, i32 0, i32 25, !dbg !2498
  store ptr %call56, ptr %cpuset, align 8, !dbg !2499, !tbaa !2500
  %47 = load ptr, ptr %group_obj, align 8, !dbg !2501, !tbaa !777
  %attr = getelementptr inbounds %struct.hwloc_obj, ptr %47, i32 0, i32 5, !dbg !2502
  %48 = load ptr, ptr %attr, align 8, !dbg !2502, !tbaa !2503
  %kind57 = getelementptr inbounds %struct.hwloc_group_attr_s, ptr %48, i32 0, i32 1, !dbg !2504
  store i32 900, ptr %kind57, align 4, !dbg !2505, !tbaa !818
  %49 = load ptr, ptr %topology.addr, align 8, !dbg !2506, !tbaa !777
  %grouping_next_subkind = getelementptr inbounds %struct.hwloc_topology, ptr %49, i32 0, i32 36, !dbg !2507
  %50 = load i32, ptr %grouping_next_subkind, align 8, !dbg !2507, !tbaa !843
  %51 = load ptr, ptr %group_obj, align 8, !dbg !2508, !tbaa !777
  %attr58 = getelementptr inbounds %struct.hwloc_obj, ptr %51, i32 0, i32 5, !dbg !2509
  %52 = load ptr, ptr %attr58, align 8, !dbg !2509, !tbaa !2503
  %subkind = getelementptr inbounds %struct.hwloc_group_attr_s, ptr %52, i32 0, i32 2, !dbg !2510
  store i32 %50, ptr %subkind, align 8, !dbg !2511, !tbaa !818
  store i32 0, ptr %j, align 4, !dbg !2512, !tbaa !1051
  br label %for.cond59, !dbg !2514

for.cond59:                                       ; preds = %for.inc75, %for.body54
  %53 = load i32, ptr %j, align 4, !dbg !2515, !tbaa !1051
  %54 = load i32, ptr %nbobjs.addr, align 4, !dbg !2517, !tbaa !1051
  %cmp60 = icmp ult i32 %53, %54, !dbg !2518
  br i1 %cmp60, label %for.body62, label %for.end77, !dbg !2519

for.body62:                                       ; preds = %for.cond59
  %55 = load ptr, ptr %groupids, align 8, !dbg !2520, !tbaa !777
  %56 = load i32, ptr %j, align 4, !dbg !2522, !tbaa !1051
  %idxprom63 = zext i32 %56 to i64, !dbg !2520
  %arrayidx64 = getelementptr inbounds i32, ptr %55, i64 %idxprom63, !dbg !2520
  %57 = load i32, ptr %arrayidx64, align 4, !dbg !2520, !tbaa !1051
  %58 = load i32, ptr %i, align 4, !dbg !2523, !tbaa !1051
  %add = add i32 %58, 1, !dbg !2524
  %cmp65 = icmp eq i32 %57, %add, !dbg !2525
  br i1 %cmp65, label %if.then67, label %if.end74, !dbg !2526

if.then67:                                        ; preds = %for.body62
  %59 = load ptr, ptr %group_obj, align 8, !dbg !2527, !tbaa !777
  %60 = load ptr, ptr %objs.addr, align 8, !dbg !2529, !tbaa !777
  %61 = load i32, ptr %j, align 4, !dbg !2530, !tbaa !1051
  %idxprom68 = zext i32 %61 to i64, !dbg !2529
  %arrayidx69 = getelementptr inbounds ptr, ptr %60, i64 %idxprom68, !dbg !2529
  %62 = load ptr, ptr %arrayidx69, align 8, !dbg !2529, !tbaa !777
  %call70 = call i32 @hwloc_obj_add_other_obj_sets(ptr noundef %59, ptr noundef %62), !dbg !2531
  %63 = load ptr, ptr %groupsizes, align 8, !dbg !2532, !tbaa !777
  %64 = load i32, ptr %i, align 4, !dbg !2533, !tbaa !1051
  %idxprom71 = zext i32 %64 to i64, !dbg !2532
  %arrayidx72 = getelementptr inbounds i32, ptr %63, i64 %idxprom71, !dbg !2532
  %65 = load i32, ptr %arrayidx72, align 4, !dbg !2534, !tbaa !1051
  %inc73 = add i32 %65, 1, !dbg !2534
  store i32 %inc73, ptr %arrayidx72, align 4, !dbg !2534, !tbaa !1051
  br label %if.end74, !dbg !2535

if.end74:                                         ; preds = %if.then67, %for.body62
  br label %for.inc75, !dbg !2536

for.inc75:                                        ; preds = %if.end74
  %66 = load i32, ptr %j, align 4, !dbg !2537, !tbaa !1051
  %inc76 = add i32 %66, 1, !dbg !2537
  store i32 %inc76, ptr %j, align 4, !dbg !2537, !tbaa !1051
  br label %for.cond59, !dbg !2538, !llvm.loop !2539

for.end77:                                        ; preds = %for.cond59
  br label %do.body, !dbg !2541

do.body:                                          ; preds = %for.end77
  br label %do.cond, !dbg !2542

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2542

do.end:                                           ; preds = %do.cond
  %67 = load ptr, ptr %topology.addr, align 8, !dbg !2544, !tbaa !777
  %68 = load ptr, ptr %group_obj, align 8, !dbg !2545, !tbaa !777
  %69 = load i64, ptr %kind.addr, align 8, !dbg !2546, !tbaa !1547
  %and78 = and i64 %69, 2, !dbg !2547
  %tobool79 = icmp ne i64 %and78, 0, !dbg !2548
  %70 = zext i1 %tobool79 to i64, !dbg !2548
  %cond = select i1 %tobool79, ptr @.str.17, ptr @.str.18, !dbg !2548
  %call80 = call ptr @hwloc__insert_object_by_cpuset(ptr noundef %67, ptr noundef null, ptr noundef %68, ptr noundef %cond), !dbg !2549
  store ptr %call80, ptr %res_obj, align 8, !dbg !2550, !tbaa !777
  %71 = load ptr, ptr %res_obj, align 8, !dbg !2551, !tbaa !777
  %tobool81 = icmp ne ptr %71, null, !dbg !2551
  br i1 %tobool81, label %if.end84, label %if.then82, !dbg !2553

if.then82:                                        ; preds = %do.end
  %72 = load i32, ptr %failed, align 4, !dbg !2554, !tbaa !1051
  %inc83 = add i32 %72, 1, !dbg !2554
  store i32 %inc83, ptr %failed, align 4, !dbg !2554, !tbaa !1051
  br label %if.end84, !dbg !2555

if.end84:                                         ; preds = %if.then82, %do.end
  %73 = load ptr, ptr %res_obj, align 8, !dbg !2556, !tbaa !777
  %74 = load ptr, ptr %groupobjs, align 8, !dbg !2557, !tbaa !777
  %75 = load i32, ptr %i, align 4, !dbg !2558, !tbaa !1051
  %idxprom85 = zext i32 %75 to i64, !dbg !2557
  %arrayidx86 = getelementptr inbounds ptr, ptr %74, i64 %idxprom85, !dbg !2557
  store ptr %73, ptr %arrayidx86, align 8, !dbg !2559, !tbaa !777
  call void @llvm.lifetime.end.p0(i64 8, ptr %res_obj) #15, !dbg !2560
  call void @llvm.lifetime.end.p0(i64 8, ptr %group_obj) #15, !dbg !2560
  br label %for.inc87, !dbg !2561

for.inc87:                                        ; preds = %if.end84
  %76 = load i32, ptr %i, align 4, !dbg !2562, !tbaa !1051
  %inc88 = add i32 %76, 1, !dbg !2562
  store i32 %inc88, ptr %i, align 4, !dbg !2562, !tbaa !1051
  br label %for.cond51, !dbg !2563, !llvm.loop !2564

for.end89:                                        ; preds = %for.cond51
  %77 = load ptr, ptr %topology.addr, align 8, !dbg !2566, !tbaa !777
  %grouping_next_subkind90 = getelementptr inbounds %struct.hwloc_topology, ptr %77, i32 0, i32 36, !dbg !2567
  %78 = load i32, ptr %grouping_next_subkind90, align 8, !dbg !2568, !tbaa !843
  %inc91 = add i32 %78, 1, !dbg !2568
  store i32 %inc91, ptr %grouping_next_subkind90, align 8, !dbg !2568, !tbaa !843
  %79 = load i32, ptr %failed, align 4, !dbg !2569, !tbaa !1051
  %tobool92 = icmp ne i32 %79, 0, !dbg !2569
  br i1 %tobool92, label %if.then93, label %if.end94, !dbg !2571

if.then93:                                        ; preds = %for.end89
  br label %out_with_groups, !dbg !2572

if.end94:                                         ; preds = %for.end89
  %80 = load ptr, ptr %groupvalues, align 8, !dbg !2573, !tbaa !777
  %arrayidx95 = getelementptr inbounds i64, ptr %80, i64 0, !dbg !2573
  %81 = load i32, ptr %nbgroups, align 4, !dbg !2574, !tbaa !1051
  %conv96 = zext i32 %81 to i64, !dbg !2574
  %mul97 = mul i64 8, %conv96, !dbg !2575
  %82 = load i32, ptr %nbgroups, align 4, !dbg !2576, !tbaa !1051
  %conv98 = zext i32 %82 to i64, !dbg !2576
  %mul99 = mul i64 %mul97, %conv98, !dbg !2577
  call void @llvm.memset.p0.i64(ptr align 8 %arrayidx95, i8 0, i64 %mul99, i1 false), !dbg !2578
  store i32 0, ptr %i, align 4, !dbg !2579, !tbaa !1051
  br label %for.cond100, !dbg !2581

for.cond100:                                      ; preds = %for.inc135, %if.end94
  %83 = load i32, ptr %i, align 4, !dbg !2582, !tbaa !1051
  %84 = load i32, ptr %nbobjs.addr, align 4, !dbg !2584, !tbaa !1051
  %cmp101 = icmp ult i32 %83, %84, !dbg !2585
  br i1 %cmp101, label %for.body103, label %for.end137, !dbg !2586

for.body103:                                      ; preds = %for.cond100
  %85 = load ptr, ptr %groupids, align 8, !dbg !2587, !tbaa !777
  %86 = load i32, ptr %i, align 4, !dbg !2589, !tbaa !1051
  %idxprom104 = zext i32 %86 to i64, !dbg !2587
  %arrayidx105 = getelementptr inbounds i32, ptr %85, i64 %idxprom104, !dbg !2587
  %87 = load i32, ptr %arrayidx105, align 4, !dbg !2587, !tbaa !1051
  %tobool106 = icmp ne i32 %87, 0, !dbg !2587
  br i1 %tobool106, label %if.then107, label %if.end134, !dbg !2590

if.then107:                                       ; preds = %for.body103
  store i32 0, ptr %j, align 4, !dbg !2591, !tbaa !1051
  br label %for.cond108, !dbg !2593

for.cond108:                                      ; preds = %for.inc131, %if.then107
  %88 = load i32, ptr %j, align 4, !dbg !2594, !tbaa !1051
  %89 = load i32, ptr %nbobjs.addr, align 4, !dbg !2596, !tbaa !1051
  %cmp109 = icmp ult i32 %88, %89, !dbg !2597
  br i1 %cmp109, label %for.body111, label %for.end133, !dbg !2598

for.body111:                                      ; preds = %for.cond108
  %90 = load ptr, ptr %groupids, align 8, !dbg !2599, !tbaa !777
  %91 = load i32, ptr %j, align 4, !dbg !2601, !tbaa !1051
  %idxprom112 = zext i32 %91 to i64, !dbg !2599
  %arrayidx113 = getelementptr inbounds i32, ptr %90, i64 %idxprom112, !dbg !2599
  %92 = load i32, ptr %arrayidx113, align 4, !dbg !2599, !tbaa !1051
  %tobool114 = icmp ne i32 %92, 0, !dbg !2599
  br i1 %tobool114, label %if.then115, label %if.end130, !dbg !2602

if.then115:                                       ; preds = %for.body111
  %93 = load ptr, ptr %_values.addr, align 8, !dbg !2603, !tbaa !777
  %94 = load i32, ptr %i, align 4, !dbg !2603, !tbaa !1051
  %95 = load i32, ptr %nbobjs.addr, align 4, !dbg !2603, !tbaa !1051
  %mul116 = mul i32 %94, %95, !dbg !2603
  %96 = load i32, ptr %j, align 4, !dbg !2603, !tbaa !1051
  %add117 = add i32 %mul116, %96, !dbg !2603
  %idxprom118 = zext i32 %add117 to i64, !dbg !2603
  %arrayidx119 = getelementptr inbounds i64, ptr %93, i64 %idxprom118, !dbg !2603
  %97 = load i64, ptr %arrayidx119, align 8, !dbg !2603, !tbaa !1547
  %98 = load ptr, ptr %groupvalues, align 8, !dbg !2604, !tbaa !777
  %99 = load ptr, ptr %groupids, align 8, !dbg !2604, !tbaa !777
  %100 = load i32, ptr %i, align 4, !dbg !2604, !tbaa !1051
  %idxprom120 = zext i32 %100 to i64, !dbg !2604
  %arrayidx121 = getelementptr inbounds i32, ptr %99, i64 %idxprom120, !dbg !2604
  %101 = load i32, ptr %arrayidx121, align 4, !dbg !2604, !tbaa !1051
  %sub = sub i32 %101, 1, !dbg !2604
  %102 = load i32, ptr %nbgroups, align 4, !dbg !2604, !tbaa !1051
  %mul122 = mul i32 %sub, %102, !dbg !2604
  %103 = load ptr, ptr %groupids, align 8, !dbg !2604, !tbaa !777
  %104 = load i32, ptr %j, align 4, !dbg !2604, !tbaa !1051
  %idxprom123 = zext i32 %104 to i64, !dbg !2604
  %arrayidx124 = getelementptr inbounds i32, ptr %103, i64 %idxprom123, !dbg !2604
  %105 = load i32, ptr %arrayidx124, align 4, !dbg !2604, !tbaa !1051
  %sub125 = sub i32 %105, 1, !dbg !2604
  %add126 = add i32 %mul122, %sub125, !dbg !2604
  %idxprom127 = zext i32 %add126 to i64, !dbg !2604
  %arrayidx128 = getelementptr inbounds i64, ptr %98, i64 %idxprom127, !dbg !2604
  %106 = load i64, ptr %arrayidx128, align 8, !dbg !2605, !tbaa !1547
  %add129 = add i64 %106, %97, !dbg !2605
  store i64 %add129, ptr %arrayidx128, align 8, !dbg !2605, !tbaa !1547
  br label %if.end130, !dbg !2604

if.end130:                                        ; preds = %if.then115, %for.body111
  br label %for.inc131, !dbg !2606

for.inc131:                                       ; preds = %if.end130
  %107 = load i32, ptr %j, align 4, !dbg !2607, !tbaa !1051
  %inc132 = add i32 %107, 1, !dbg !2607
  store i32 %inc132, ptr %j, align 4, !dbg !2607, !tbaa !1051
  br label %for.cond108, !dbg !2608, !llvm.loop !2609

for.end133:                                       ; preds = %for.cond108
  br label %if.end134, !dbg !2610

if.end134:                                        ; preds = %for.end133, %for.body103
  br label %for.inc135, !dbg !2611

for.inc135:                                       ; preds = %if.end134
  %108 = load i32, ptr %i, align 4, !dbg !2612, !tbaa !1051
  %inc136 = add i32 %108, 1, !dbg !2612
  store i32 %inc136, ptr %i, align 4, !dbg !2612, !tbaa !1051
  br label %for.cond100, !dbg !2613, !llvm.loop !2614

for.end137:                                       ; preds = %for.cond100
  store i32 0, ptr %i, align 4, !dbg !2616, !tbaa !1051
  br label %for.cond138, !dbg !2617

for.cond138:                                      ; preds = %for.inc159, %for.end137
  %109 = load i32, ptr %i, align 4, !dbg !2618, !tbaa !1051
  %110 = load i32, ptr %nbgroups, align 4, !dbg !2619, !tbaa !1051
  %cmp139 = icmp ult i32 %109, %110, !dbg !2620
  br i1 %cmp139, label %for.body141, label %for.end161, !dbg !2621

for.body141:                                      ; preds = %for.cond138
  store i32 0, ptr %j, align 4, !dbg !2622, !tbaa !1051
  br label %for.cond142, !dbg !2623

for.cond142:                                      ; preds = %for.inc156, %for.body141
  %111 = load i32, ptr %j, align 4, !dbg !2624, !tbaa !1051
  %112 = load i32, ptr %nbgroups, align 4, !dbg !2625, !tbaa !1051
  %cmp143 = icmp ult i32 %111, %112, !dbg !2626
  br i1 %cmp143, label %for.body145, label %for.end158, !dbg !2627

for.body145:                                      ; preds = %for.cond142
  call void @llvm.lifetime.start.p0(i64 4, ptr %groupsize) #15, !dbg !2628
  tail call void @llvm.dbg.declare(metadata ptr %groupsize, metadata !2352, metadata !DIExpression()), !dbg !2629
  %113 = load ptr, ptr %groupsizes, align 8, !dbg !2630, !tbaa !777
  %114 = load i32, ptr %i, align 4, !dbg !2631, !tbaa !1051
  %idxprom146 = zext i32 %114 to i64, !dbg !2630
  %arrayidx147 = getelementptr inbounds i32, ptr %113, i64 %idxprom146, !dbg !2630
  %115 = load i32, ptr %arrayidx147, align 4, !dbg !2630, !tbaa !1051
  %116 = load ptr, ptr %groupsizes, align 8, !dbg !2632, !tbaa !777
  %117 = load i32, ptr %j, align 4, !dbg !2633, !tbaa !1051
  %idxprom148 = zext i32 %117 to i64, !dbg !2632
  %arrayidx149 = getelementptr inbounds i32, ptr %116, i64 %idxprom148, !dbg !2632
  %118 = load i32, ptr %arrayidx149, align 4, !dbg !2632, !tbaa !1051
  %mul150 = mul i32 %115, %118, !dbg !2634
  store i32 %mul150, ptr %groupsize, align 4, !dbg !2629, !tbaa !1051
  %119 = load i32, ptr %groupsize, align 4, !dbg !2635, !tbaa !1051
  %conv151 = zext i32 %119 to i64, !dbg !2635
  %120 = load ptr, ptr %groupvalues, align 8, !dbg !2636, !tbaa !777
  %121 = load i32, ptr %i, align 4, !dbg !2636, !tbaa !1051
  %122 = load i32, ptr %nbgroups, align 4, !dbg !2636, !tbaa !1051
  %mul152 = mul i32 %121, %122, !dbg !2636
  %123 = load i32, ptr %j, align 4, !dbg !2636, !tbaa !1051
  %add153 = add i32 %mul152, %123, !dbg !2636
  %idxprom154 = zext i32 %add153 to i64, !dbg !2636
  %arrayidx155 = getelementptr inbounds i64, ptr %120, i64 %idxprom154, !dbg !2636
  %124 = load i64, ptr %arrayidx155, align 8, !dbg !2637, !tbaa !1547
  %div = udiv i64 %124, %conv151, !dbg !2637
  store i64 %div, ptr %arrayidx155, align 8, !dbg !2637, !tbaa !1547
  call void @llvm.lifetime.end.p0(i64 4, ptr %groupsize) #15, !dbg !2638
  br label %for.inc156, !dbg !2639

for.inc156:                                       ; preds = %for.body145
  %125 = load i32, ptr %j, align 4, !dbg !2640, !tbaa !1051
  %inc157 = add i32 %125, 1, !dbg !2640
  store i32 %inc157, ptr %j, align 4, !dbg !2640, !tbaa !1051
  br label %for.cond142, !dbg !2641, !llvm.loop !2642

for.end158:                                       ; preds = %for.cond142
  br label %for.inc159, !dbg !2643

for.inc159:                                       ; preds = %for.end158
  %126 = load i32, ptr %i, align 4, !dbg !2644, !tbaa !1051
  %inc160 = add i32 %126, 1, !dbg !2644
  store i32 %inc160, ptr %i, align 4, !dbg !2644, !tbaa !1051
  br label %for.cond138, !dbg !2645, !llvm.loop !2646

for.end161:                                       ; preds = %for.cond138
  %127 = load ptr, ptr %topology.addr, align 8, !dbg !2648, !tbaa !777
  %128 = load i32, ptr %nbgroups, align 4, !dbg !2649, !tbaa !1051
  %129 = load ptr, ptr %groupobjs, align 8, !dbg !2650, !tbaa !777
  %130 = load ptr, ptr %groupvalues, align 8, !dbg !2651, !tbaa !777
  %131 = load i64, ptr %kind.addr, align 8, !dbg !2652, !tbaa !1547
  %132 = load i32, ptr %nbaccuracies.addr, align 4, !dbg !2653, !tbaa !1051
  %133 = load ptr, ptr %accuracies.addr, align 8, !dbg !2654, !tbaa !777
  call void @hwloc__groups_by_distances(ptr noundef %127, i32 noundef %128, ptr noundef %129, ptr noundef %130, i64 noundef %131, i32 noundef %132, ptr noundef %133, i32 noundef 0), !dbg !2655
  br label %out_with_groups, !dbg !2655

out_with_groups:                                  ; preds = %for.end161, %if.then93, %if.then46
  tail call void @llvm.dbg.label(metadata !2358), !dbg !2656
  %134 = load ptr, ptr %groupobjs, align 8, !dbg !2657, !tbaa !777
  call void @free(ptr noundef %134) #15, !dbg !2658
  %135 = load ptr, ptr %groupsizes, align 8, !dbg !2659, !tbaa !777
  call void @free(ptr noundef %135) #15, !dbg !2660
  %136 = load ptr, ptr %groupvalues, align 8, !dbg !2661, !tbaa !777
  call void @free(ptr noundef %136) #15, !dbg !2662
  br label %out_with_groupids, !dbg !2662

out_with_groupids:                                ; preds = %out_with_groups, %if.then30
  tail call void @llvm.dbg.label(metadata !2359), !dbg !2663
  %137 = load ptr, ptr %groupids, align 8, !dbg !2664, !tbaa !777
  call void @free(ptr noundef %137) #15, !dbg !2665
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2666
  br label %cleanup, !dbg !2666

cleanup:                                          ; preds = %out_with_groupids, %if.then4, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %failed) #15, !dbg !2666
  call void @llvm.lifetime.end.p0(i64 8, ptr %groupvalues) #15, !dbg !2666
  call void @llvm.lifetime.end.p0(i64 8, ptr %groupsizes) #15, !dbg !2666
  call void @llvm.lifetime.end.p0(i64 8, ptr %groupobjs) #15, !dbg !2666
  call void @llvm.lifetime.end.p0(i64 4, ptr %verbose) #15, !dbg !2666
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #15, !dbg !2666
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !2666
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbgroups) #15, !dbg !2666
  call void @llvm.lifetime.end.p0(i64 8, ptr %groupids) #15, !dbg !2666
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2666

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden i32 @hwloc_internal_distances_add_by_index(ptr noundef %topology, ptr noundef %name, i32 noundef %unique_type, ptr noundef %different_types, i32 noundef %nbobjs, ptr noundef %indexes, ptr noundef %values, i64 noundef %kind, i64 noundef %flags) #0 !dbg !2667 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %unique_type.addr = alloca i32, align 4
  %different_types.addr = alloca ptr, align 8
  %nbobjs.addr = alloca i32, align 4
  %indexes.addr = alloca ptr, align 8
  %values.addr = alloca ptr, align 8
  %kind.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %handle = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2671, metadata !DIExpression()), !dbg !2683
  store ptr %name, ptr %name.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2672, metadata !DIExpression()), !dbg !2684
  store i32 %unique_type, ptr %unique_type.addr, align 4, !tbaa !818
  tail call void @llvm.dbg.declare(metadata ptr %unique_type.addr, metadata !2673, metadata !DIExpression()), !dbg !2685
  store ptr %different_types, ptr %different_types.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %different_types.addr, metadata !2674, metadata !DIExpression()), !dbg !2686
  store i32 %nbobjs, ptr %nbobjs.addr, align 4, !tbaa !1051
  tail call void @llvm.dbg.declare(metadata ptr %nbobjs.addr, metadata !2675, metadata !DIExpression()), !dbg !2687
  store ptr %indexes, ptr %indexes.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %indexes.addr, metadata !2676, metadata !DIExpression()), !dbg !2688
  store ptr %values, ptr %values.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %values.addr, metadata !2677, metadata !DIExpression()), !dbg !2689
  store i64 %kind, ptr %kind.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %kind.addr, metadata !2678, metadata !DIExpression()), !dbg !2690
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2679, metadata !DIExpression()), !dbg !2691
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #15, !dbg !2692
  tail call void @llvm.dbg.declare(metadata ptr %handle, metadata !2680, metadata !DIExpression()), !dbg !2693
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !2694
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !2681, metadata !DIExpression()), !dbg !2695
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !2696, !tbaa !777
  %1 = load ptr, ptr %name.addr, align 8, !dbg !2697, !tbaa !777
  %2 = load i64, ptr %kind.addr, align 8, !dbg !2698, !tbaa !1547
  %call = call ptr @hwloc_backend_distances_add_create(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef 0), !dbg !2699
  store ptr %call, ptr %handle, align 8, !dbg !2700, !tbaa !777
  %3 = load ptr, ptr %handle, align 8, !dbg !2701, !tbaa !777
  %tobool = icmp ne ptr %3, null, !dbg !2701
  br i1 %tobool, label %if.end, label %if.then, !dbg !2703

if.then:                                          ; preds = %entry
  br label %err8, !dbg !2704

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %topology.addr, align 8, !dbg !2705, !tbaa !777
  %5 = load ptr, ptr %handle, align 8, !dbg !2706, !tbaa !777
  %6 = load i32, ptr %nbobjs.addr, align 4, !dbg !2707, !tbaa !1051
  %7 = load i32, ptr %unique_type.addr, align 4, !dbg !2708, !tbaa !818
  %8 = load ptr, ptr %different_types.addr, align 8, !dbg !2709, !tbaa !777
  %9 = load ptr, ptr %indexes.addr, align 8, !dbg !2710, !tbaa !777
  %10 = load ptr, ptr %values.addr, align 8, !dbg !2711, !tbaa !777
  %call1 = call i32 @hwloc_backend_distances_add_values_by_index(ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !2712
  store i32 %call1, ptr %err, align 4, !dbg !2713, !tbaa !1051
  %11 = load i32, ptr %err, align 4, !dbg !2714, !tbaa !1051
  %cmp = icmp slt i32 %11, 0, !dbg !2716
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2717

if.then2:                                         ; preds = %if.end
  br label %err8, !dbg !2718

if.end3:                                          ; preds = %if.end
  store ptr null, ptr %indexes.addr, align 8, !dbg !2719, !tbaa !777
  store ptr null, ptr %different_types.addr, align 8, !dbg !2720, !tbaa !777
  store ptr null, ptr %values.addr, align 8, !dbg !2721, !tbaa !777
  %12 = load ptr, ptr %topology.addr, align 8, !dbg !2722, !tbaa !777
  %13 = load ptr, ptr %handle, align 8, !dbg !2723, !tbaa !777
  %14 = load i64, ptr %flags.addr, align 8, !dbg !2724, !tbaa !1547
  %call4 = call i32 @hwloc_backend_distances_add_commit(ptr noundef %12, ptr noundef %13, i64 noundef %14), !dbg !2725
  store i32 %call4, ptr %err, align 4, !dbg !2726, !tbaa !1051
  %15 = load i32, ptr %err, align 4, !dbg !2727, !tbaa !1051
  %cmp5 = icmp slt i32 %15, 0, !dbg !2729
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !2730

if.then6:                                         ; preds = %if.end3
  br label %err8, !dbg !2731

if.end7:                                          ; preds = %if.end3
  store i32 0, ptr %retval, align 4, !dbg !2732
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2732

err8:                                             ; preds = %if.then6, %if.then2, %if.then
  tail call void @llvm.dbg.label(metadata !2682), !dbg !2733
  %16 = load ptr, ptr %indexes.addr, align 8, !dbg !2734, !tbaa !777
  call void @free(ptr noundef %16) #15, !dbg !2735
  %17 = load ptr, ptr %different_types.addr, align 8, !dbg !2736, !tbaa !777
  call void @free(ptr noundef %17) #15, !dbg !2737
  %18 = load ptr, ptr %values.addr, align 8, !dbg !2738, !tbaa !777
  call void @free(ptr noundef %18) #15, !dbg !2739
  store i32 -1, ptr %retval, align 4, !dbg !2740
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2740

cleanup:                                          ; preds = %err8, %if.end7
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !2741
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #15, !dbg !2741
  %19 = load i32, ptr %retval, align 4, !dbg !2741
  ret i32 %19, !dbg !2741
}

; Function Attrs: nounwind uwtable
define internal i32 @hwloc_backend_distances_add_values_by_index(ptr noundef %topology, ptr noundef %handle, i32 noundef %nbobjs, i32 noundef %unique_type, ptr noundef %different_types, ptr noundef %indexes, ptr noundef %values) #0 !dbg !2742 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %nbobjs.addr = alloca i32, align 4
  %unique_type.addr = alloca i32, align 4
  %different_types.addr = alloca ptr, align 8
  %indexes.addr = alloca ptr, align 8
  %values.addr = alloca ptr, align 8
  %dist = alloca ptr, align 8
  %objs = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2746, metadata !DIExpression()), !dbg !2756
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !2747, metadata !DIExpression()), !dbg !2757
  store i32 %nbobjs, ptr %nbobjs.addr, align 4, !tbaa !1051
  tail call void @llvm.dbg.declare(metadata ptr %nbobjs.addr, metadata !2748, metadata !DIExpression()), !dbg !2758
  store i32 %unique_type, ptr %unique_type.addr, align 4, !tbaa !818
  tail call void @llvm.dbg.declare(metadata ptr %unique_type.addr, metadata !2749, metadata !DIExpression()), !dbg !2759
  store ptr %different_types, ptr %different_types.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %different_types.addr, metadata !2750, metadata !DIExpression()), !dbg !2760
  store ptr %indexes, ptr %indexes.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %indexes.addr, metadata !2751, metadata !DIExpression()), !dbg !2761
  store ptr %values, ptr %values.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %values.addr, metadata !2752, metadata !DIExpression()), !dbg !2762
  call void @llvm.lifetime.start.p0(i64 8, ptr %dist) #15, !dbg !2763
  tail call void @llvm.dbg.declare(metadata ptr %dist, metadata !2753, metadata !DIExpression()), !dbg !2764
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !2765, !tbaa !777
  store ptr %0, ptr %dist, align 8, !dbg !2764, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 8, ptr %objs) #15, !dbg !2766
  tail call void @llvm.dbg.declare(metadata ptr %objs, metadata !2754, metadata !DIExpression()), !dbg !2767
  %1 = load ptr, ptr %dist, align 8, !dbg !2768, !tbaa !777
  %nbobjs1 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %1, i32 0, i32 4, !dbg !2770
  %2 = load i32, ptr %nbobjs1, align 8, !dbg !2770, !tbaa !1089
  %tobool = icmp ne i32 %2, 0, !dbg !2768
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2771

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %dist, align 8, !dbg !2772, !tbaa !777
  %iflags = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %3, i32 0, i32 8, !dbg !2773
  %4 = load i32, ptr %iflags, align 8, !dbg !2773, !tbaa !1201
  %and = and i32 %4, 2, !dbg !2774
  %tobool2 = icmp ne i32 %and, 0, !dbg !2774
  br i1 %tobool2, label %if.end, label %if.then, !dbg !2775

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call ptr @__errno_location() #18, !dbg !2776
  store i32 22, ptr %call, align 4, !dbg !2778, !tbaa !1051
  br label %err, !dbg !2779

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, ptr %nbobjs.addr, align 4, !dbg !2780, !tbaa !1051
  %cmp = icmp ult i32 %5, 2, !dbg !2782
  br i1 %cmp, label %if.then10, label %lor.lhs.false3, !dbg !2783

lor.lhs.false3:                                   ; preds = %if.end
  %6 = load ptr, ptr %indexes.addr, align 8, !dbg !2784, !tbaa !777
  %tobool4 = icmp ne ptr %6, null, !dbg !2784
  br i1 %tobool4, label %lor.lhs.false5, label %if.then10, !dbg !2785

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %7 = load ptr, ptr %values.addr, align 8, !dbg !2786, !tbaa !777
  %tobool6 = icmp ne ptr %7, null, !dbg !2786
  br i1 %tobool6, label %lor.lhs.false7, label %if.then10, !dbg !2787

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %8 = load i32, ptr %unique_type.addr, align 4, !dbg !2788, !tbaa !818
  %cmp8 = icmp eq i32 %8, -1, !dbg !2789
  br i1 %cmp8, label %land.lhs.true, label %if.end12, !dbg !2790

land.lhs.true:                                    ; preds = %lor.lhs.false7
  %9 = load ptr, ptr %different_types.addr, align 8, !dbg !2791, !tbaa !777
  %tobool9 = icmp ne ptr %9, null, !dbg !2791
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !2792

if.then10:                                        ; preds = %land.lhs.true, %lor.lhs.false5, %lor.lhs.false3, %if.end
  %call11 = call ptr @__errno_location() #18, !dbg !2793
  store i32 22, ptr %call11, align 4, !dbg !2795, !tbaa !1051
  br label %err, !dbg !2796

if.end12:                                         ; preds = %land.lhs.true, %lor.lhs.false7
  %10 = load i32, ptr %nbobjs.addr, align 4, !dbg !2797, !tbaa !1051
  %conv = zext i32 %10 to i64, !dbg !2797
  %mul = mul i64 %conv, 8, !dbg !2798
  %call13 = call noalias ptr @malloc(i64 noundef %mul) #20, !dbg !2799
  store ptr %call13, ptr %objs, align 8, !dbg !2800, !tbaa !777
  %11 = load ptr, ptr %objs, align 8, !dbg !2801, !tbaa !777
  %tobool14 = icmp ne ptr %11, null, !dbg !2801
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !2803

if.then15:                                        ; preds = %if.end12
  br label %err, !dbg !2804

if.end16:                                         ; preds = %if.end12
  %12 = load i32, ptr %nbobjs.addr, align 4, !dbg !2805, !tbaa !1051
  %13 = load ptr, ptr %dist, align 8, !dbg !2806, !tbaa !777
  %nbobjs17 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %13, i32 0, i32 4, !dbg !2807
  store i32 %12, ptr %nbobjs17, align 8, !dbg !2808, !tbaa !1089
  %14 = load ptr, ptr %objs, align 8, !dbg !2809, !tbaa !777
  %15 = load ptr, ptr %dist, align 8, !dbg !2810, !tbaa !777
  %objs18 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %15, i32 0, i32 9, !dbg !2811
  store ptr %14, ptr %objs18, align 8, !dbg !2812, !tbaa !1010
  %16 = load ptr, ptr %indexes.addr, align 8, !dbg !2813, !tbaa !777
  %17 = load ptr, ptr %dist, align 8, !dbg !2814, !tbaa !777
  %indexes19 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %17, i32 0, i32 5, !dbg !2815
  store ptr %16, ptr %indexes19, align 8, !dbg !2816, !tbaa !1006
  %18 = load i32, ptr %unique_type.addr, align 4, !dbg !2817, !tbaa !818
  %19 = load ptr, ptr %dist, align 8, !dbg !2818, !tbaa !777
  %unique_type20 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %19, i32 0, i32 2, !dbg !2819
  store i32 %18, ptr %unique_type20, align 4, !dbg !2820, !tbaa !1165
  %20 = load ptr, ptr %different_types.addr, align 8, !dbg !2821, !tbaa !777
  %21 = load ptr, ptr %dist, align 8, !dbg !2822, !tbaa !777
  %different_types21 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %21, i32 0, i32 3, !dbg !2823
  store ptr %20, ptr %different_types21, align 8, !dbg !2824, !tbaa !1002
  %22 = load ptr, ptr %values.addr, align 8, !dbg !2825, !tbaa !777
  %23 = load ptr, ptr %dist, align 8, !dbg !2826, !tbaa !777
  %values22 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %23, i32 0, i32 6, !dbg !2827
  store ptr %22, ptr %values22, align 8, !dbg !2828, !tbaa !1014
  %24 = load ptr, ptr %different_types.addr, align 8, !dbg !2829, !tbaa !777
  %tobool23 = icmp ne ptr %24, null, !dbg !2829
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !2831

if.then24:                                        ; preds = %if.end16
  %25 = load ptr, ptr %dist, align 8, !dbg !2832, !tbaa !777
  %kind = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %25, i32 0, i32 7, !dbg !2833
  %26 = load i64, ptr %kind, align 8, !dbg !2834, !tbaa !1175
  %or = or i64 %26, 16, !dbg !2834
  store i64 %or, ptr %kind, align 8, !dbg !2834, !tbaa !1175
  br label %if.end25, !dbg !2832

if.end25:                                         ; preds = %if.then24, %if.end16
  store i32 0, ptr %retval, align 4, !dbg !2835
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2835

err:                                              ; preds = %if.then15, %if.then10, %if.then
  tail call void @llvm.dbg.label(metadata !2755), !dbg !2836
  %27 = load ptr, ptr %dist, align 8, !dbg !2837, !tbaa !777
  call void @hwloc_backend_distances_add__cancel(ptr noundef %27), !dbg !2838
  store i32 -1, ptr %retval, align 4, !dbg !2839
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2839

cleanup:                                          ; preds = %err, %if.end25
  call void @llvm.lifetime.end.p0(i64 8, ptr %objs) #15, !dbg !2840
  call void @llvm.lifetime.end.p0(i64 8, ptr %dist) #15, !dbg !2840
  %28 = load i32, ptr %retval, align 4, !dbg !2840
  ret i32 %28, !dbg !2840
}

; Function Attrs: nounwind uwtable
define hidden i32 @hwloc_internal_distances_add(ptr noundef %topology, ptr noundef %name, i32 noundef %nbobjs, ptr noundef %objs, ptr noundef %values, i64 noundef %kind, i64 noundef %flags) #0 !dbg !2841 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %nbobjs.addr = alloca i32, align 4
  %objs.addr = alloca ptr, align 8
  %values.addr = alloca ptr, align 8
  %kind.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %handle = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2845, metadata !DIExpression()), !dbg !2855
  store ptr %name, ptr %name.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2846, metadata !DIExpression()), !dbg !2856
  store i32 %nbobjs, ptr %nbobjs.addr, align 4, !tbaa !1051
  tail call void @llvm.dbg.declare(metadata ptr %nbobjs.addr, metadata !2847, metadata !DIExpression()), !dbg !2857
  store ptr %objs, ptr %objs.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %objs.addr, metadata !2848, metadata !DIExpression()), !dbg !2858
  store ptr %values, ptr %values.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %values.addr, metadata !2849, metadata !DIExpression()), !dbg !2859
  store i64 %kind, ptr %kind.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %kind.addr, metadata !2850, metadata !DIExpression()), !dbg !2860
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2851, metadata !DIExpression()), !dbg !2861
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #15, !dbg !2862
  tail call void @llvm.dbg.declare(metadata ptr %handle, metadata !2852, metadata !DIExpression()), !dbg !2863
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !2864
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !2853, metadata !DIExpression()), !dbg !2865
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !2866, !tbaa !777
  %1 = load ptr, ptr %name.addr, align 8, !dbg !2867, !tbaa !777
  %2 = load i64, ptr %kind.addr, align 8, !dbg !2868, !tbaa !1547
  %call = call ptr @hwloc_backend_distances_add_create(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef 0), !dbg !2869
  store ptr %call, ptr %handle, align 8, !dbg !2870, !tbaa !777
  %3 = load ptr, ptr %handle, align 8, !dbg !2871, !tbaa !777
  %tobool = icmp ne ptr %3, null, !dbg !2871
  br i1 %tobool, label %if.end, label %if.then, !dbg !2873

if.then:                                          ; preds = %entry
  br label %err8, !dbg !2874

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %topology.addr, align 8, !dbg !2875, !tbaa !777
  %5 = load ptr, ptr %handle, align 8, !dbg !2876, !tbaa !777
  %6 = load i32, ptr %nbobjs.addr, align 4, !dbg !2877, !tbaa !1051
  %7 = load ptr, ptr %objs.addr, align 8, !dbg !2878, !tbaa !777
  %8 = load ptr, ptr %values.addr, align 8, !dbg !2879, !tbaa !777
  %call1 = call i32 @hwloc_backend_distances_add_values(ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef 0), !dbg !2880
  store i32 %call1, ptr %err, align 4, !dbg !2881, !tbaa !1051
  %9 = load i32, ptr %err, align 4, !dbg !2882, !tbaa !1051
  %cmp = icmp slt i32 %9, 0, !dbg !2884
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2885

if.then2:                                         ; preds = %if.end
  br label %err8, !dbg !2886

if.end3:                                          ; preds = %if.end
  store ptr null, ptr %objs.addr, align 8, !dbg !2887, !tbaa !777
  store ptr null, ptr %values.addr, align 8, !dbg !2888, !tbaa !777
  %10 = load ptr, ptr %topology.addr, align 8, !dbg !2889, !tbaa !777
  %11 = load ptr, ptr %handle, align 8, !dbg !2890, !tbaa !777
  %12 = load i64, ptr %flags.addr, align 8, !dbg !2891, !tbaa !1547
  %call4 = call i32 @hwloc_backend_distances_add_commit(ptr noundef %10, ptr noundef %11, i64 noundef %12), !dbg !2892
  store i32 %call4, ptr %err, align 4, !dbg !2893, !tbaa !1051
  %13 = load i32, ptr %err, align 4, !dbg !2894, !tbaa !1051
  %cmp5 = icmp slt i32 %13, 0, !dbg !2896
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !2897

if.then6:                                         ; preds = %if.end3
  br label %err8, !dbg !2898

if.end7:                                          ; preds = %if.end3
  store i32 0, ptr %retval, align 4, !dbg !2899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2899

err8:                                             ; preds = %if.then6, %if.then2, %if.then
  tail call void @llvm.dbg.label(metadata !2854), !dbg !2900
  %14 = load ptr, ptr %objs.addr, align 8, !dbg !2901, !tbaa !777
  call void @free(ptr noundef %14) #15, !dbg !2902
  %15 = load ptr, ptr %values.addr, align 8, !dbg !2903, !tbaa !777
  call void @free(ptr noundef %15) #15, !dbg !2904
  store i32 -1, ptr %retval, align 4, !dbg !2905
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2905

cleanup:                                          ; preds = %err8, %if.end7
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !2906
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #15, !dbg !2906
  %16 = load i32, ptr %retval, align 4, !dbg !2906
  ret i32 %16, !dbg !2906
}

; Function Attrs: nounwind uwtable
define ptr @hwloc_distances_add_create(ptr noundef %topology, ptr noundef %name, i64 noundef %kind, i64 noundef %flags) #0 !dbg !2907 {
entry:
  %retval = alloca ptr, align 8
  %topology.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %kind.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2912, metadata !DIExpression()), !dbg !2916
  store ptr %name, ptr %name.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2913, metadata !DIExpression()), !dbg !2917
  store i64 %kind, ptr %kind.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %kind.addr, metadata !2914, metadata !DIExpression()), !dbg !2918
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2915, metadata !DIExpression()), !dbg !2919
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !2920, !tbaa !777
  %is_loaded = getelementptr inbounds %struct.hwloc_topology, ptr %0, i32 0, i32 9, !dbg !2922
  %1 = load i32, ptr %is_loaded, align 4, !dbg !2922, !tbaa !1284
  %tobool = icmp ne i32 %1, 0, !dbg !2920
  br i1 %tobool, label %if.end, label %if.then, !dbg !2923

if.then:                                          ; preds = %entry
  %call = call ptr @__errno_location() #18, !dbg !2924
  store i32 22, ptr %call, align 4, !dbg !2926, !tbaa !1051
  store ptr null, ptr %retval, align 8, !dbg !2927
  br label %return, !dbg !2927

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %topology.addr, align 8, !dbg !2928, !tbaa !777
  %adopted_shmem_addr = getelementptr inbounds %struct.hwloc_topology, ptr %2, i32 0, i32 14, !dbg !2930
  %3 = load ptr, ptr %adopted_shmem_addr, align 8, !dbg !2930, !tbaa !1293
  %tobool1 = icmp ne ptr %3, null, !dbg !2928
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !2931

if.then2:                                         ; preds = %if.end
  %call3 = call ptr @__errno_location() #18, !dbg !2932
  store i32 1, ptr %call3, align 4, !dbg !2934, !tbaa !1051
  store ptr null, ptr %retval, align 8, !dbg !2935
  br label %return, !dbg !2935

if.end4:                                          ; preds = %if.end
  %4 = load i64, ptr %kind.addr, align 8, !dbg !2936, !tbaa !1547
  %and = and i64 %4, -32, !dbg !2938
  %tobool5 = icmp ne i64 %and, 0, !dbg !2938
  br i1 %tobool5, label %if.then12, label %lor.lhs.false, !dbg !2939

lor.lhs.false:                                    ; preds = %if.end4
  %5 = load i64, ptr %kind.addr, align 8, !dbg !2940, !tbaa !1547
  %and6 = and i64 %5, 3, !dbg !2941
  %call7 = call i32 @hwloc_weight_long(i64 noundef %and6) #18, !dbg !2942
  %cmp = icmp ne i32 %call7, 1, !dbg !2943
  br i1 %cmp, label %if.then12, label %lor.lhs.false8, !dbg !2944

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %6 = load i64, ptr %kind.addr, align 8, !dbg !2945, !tbaa !1547
  %and9 = and i64 %6, 12, !dbg !2946
  %call10 = call i32 @hwloc_weight_long(i64 noundef %and9) #18, !dbg !2947
  %cmp11 = icmp ne i32 %call10, 1, !dbg !2948
  br i1 %cmp11, label %if.then12, label %if.end14, !dbg !2949

if.then12:                                        ; preds = %lor.lhs.false8, %lor.lhs.false, %if.end4
  %call13 = call ptr @__errno_location() #18, !dbg !2950
  store i32 22, ptr %call13, align 4, !dbg !2952, !tbaa !1051
  store ptr null, ptr %retval, align 8, !dbg !2953
  br label %return, !dbg !2953

if.end14:                                         ; preds = %lor.lhs.false8
  %7 = load ptr, ptr %topology.addr, align 8, !dbg !2954, !tbaa !777
  %8 = load ptr, ptr %name.addr, align 8, !dbg !2955, !tbaa !777
  %9 = load i64, ptr %kind.addr, align 8, !dbg !2956, !tbaa !1547
  %10 = load i64, ptr %flags.addr, align 8, !dbg !2957, !tbaa !1547
  %call15 = call ptr @hwloc_backend_distances_add_create(ptr noundef %7, ptr noundef %8, i64 noundef %9, i64 noundef %10), !dbg !2958
  store ptr %call15, ptr %retval, align 8, !dbg !2959
  br label %return, !dbg !2959

return:                                           ; preds = %if.end14, %if.then12, %if.then2, %if.then
  %11 = load ptr, ptr %retval, align 8, !dbg !2960
  ret ptr %11, !dbg !2960
}

; Function Attrs: inlinehint nounwind willreturn memory(none) uwtable
define internal i32 @hwloc_weight_long(i64 noundef %w) #9 !dbg !2961 {
entry:
  %w.addr = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !2966, metadata !DIExpression()), !dbg !2967
  %0 = load i64, ptr %w.addr, align 8, !dbg !2968, !tbaa !1547
  %1 = call i64 @llvm.ctpop.i64(i64 %0), !dbg !2969
  %cast = trunc i64 %1 to i32, !dbg !2969
  ret i32 %cast, !dbg !2970
}

; Function Attrs: nounwind uwtable
define i32 @hwloc_distances_add_values(ptr noundef %topology, ptr noundef %handle, i32 noundef %nbobjs, ptr noundef %objs, ptr noundef %values, i64 noundef %flags) #0 !dbg !2971 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %nbobjs.addr = alloca i32, align 4
  %objs.addr = alloca ptr, align 8
  %values.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %_values = alloca ptr, align 8
  %_objs = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2975, metadata !DIExpression()), !dbg !2987
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !2976, metadata !DIExpression()), !dbg !2988
  store i32 %nbobjs, ptr %nbobjs.addr, align 4, !tbaa !1051
  tail call void @llvm.dbg.declare(metadata ptr %nbobjs.addr, metadata !2977, metadata !DIExpression()), !dbg !2989
  store ptr %objs, ptr %objs.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %objs.addr, metadata !2978, metadata !DIExpression()), !dbg !2990
  store ptr %values, ptr %values.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %values.addr, metadata !2979, metadata !DIExpression()), !dbg !2991
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2980, metadata !DIExpression()), !dbg !2992
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !2993
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2981, metadata !DIExpression()), !dbg !2994
  call void @llvm.lifetime.start.p0(i64 8, ptr %_values) #15, !dbg !2995
  tail call void @llvm.dbg.declare(metadata ptr %_values, metadata !2982, metadata !DIExpression()), !dbg !2996
  call void @llvm.lifetime.start.p0(i64 8, ptr %_objs) #15, !dbg !2997
  tail call void @llvm.dbg.declare(metadata ptr %_objs, metadata !2983, metadata !DIExpression()), !dbg !2998
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !2999
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !2984, metadata !DIExpression()), !dbg !3000
  store i32 1, ptr %i, align 4, !dbg !3001, !tbaa !1051
  br label %for.cond, !dbg !3003

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !3004, !tbaa !1051
  %1 = load i32, ptr %nbobjs.addr, align 4, !dbg !3006, !tbaa !1051
  %cmp = icmp ult i32 %0, %1, !dbg !3007
  br i1 %cmp, label %for.body, label %for.end, !dbg !3008

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %objs.addr, align 8, !dbg !3009, !tbaa !777
  %3 = load i32, ptr %i, align 4, !dbg !3011, !tbaa !1051
  %idxprom = zext i32 %3 to i64, !dbg !3009
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom, !dbg !3009
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !3009, !tbaa !777
  %tobool = icmp ne ptr %4, null, !dbg !3009
  br i1 %tobool, label %if.end, label %if.then, !dbg !3012

if.then:                                          ; preds = %for.body
  %call = call ptr @__errno_location() #18, !dbg !3013
  store i32 22, ptr %call, align 4, !dbg !3015, !tbaa !1051
  br label %out, !dbg !3016

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3017

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4, !dbg !3018, !tbaa !1051
  %inc = add i32 %5, 1, !dbg !3018
  store i32 %inc, ptr %i, align 4, !dbg !3018, !tbaa !1051
  br label %for.cond, !dbg !3019, !llvm.loop !3020

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %nbobjs.addr, align 4, !dbg !3022, !tbaa !1051
  %conv = zext i32 %6 to i64, !dbg !3022
  %mul = mul i64 %conv, 8, !dbg !3023
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #20, !dbg !3024
  store ptr %call1, ptr %_objs, align 8, !dbg !3025, !tbaa !777
  %7 = load i32, ptr %nbobjs.addr, align 4, !dbg !3026, !tbaa !1051
  %8 = load i32, ptr %nbobjs.addr, align 4, !dbg !3027, !tbaa !1051
  %mul2 = mul i32 %7, %8, !dbg !3028
  %conv3 = zext i32 %mul2 to i64, !dbg !3026
  %mul4 = mul i64 %conv3, 8, !dbg !3029
  %call5 = call noalias ptr @malloc(i64 noundef %mul4) #20, !dbg !3030
  store ptr %call5, ptr %_values, align 8, !dbg !3031, !tbaa !777
  %9 = load ptr, ptr %_objs, align 8, !dbg !3032, !tbaa !777
  %tobool6 = icmp ne ptr %9, null, !dbg !3032
  br i1 %tobool6, label %lor.lhs.false, label %if.then8, !dbg !3034

lor.lhs.false:                                    ; preds = %for.end
  %10 = load ptr, ptr %_values, align 8, !dbg !3035, !tbaa !777
  %tobool7 = icmp ne ptr %10, null, !dbg !3035
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !3036

if.then8:                                         ; preds = %lor.lhs.false, %for.end
  br label %out_with_arrays, !dbg !3037

if.end9:                                          ; preds = %lor.lhs.false
  %11 = load ptr, ptr %_objs, align 8, !dbg !3038, !tbaa !777
  %12 = load ptr, ptr %objs.addr, align 8, !dbg !3039, !tbaa !777
  %13 = load i32, ptr %nbobjs.addr, align 4, !dbg !3040, !tbaa !1051
  %conv10 = zext i32 %13 to i64, !dbg !3040
  %mul11 = mul i64 %conv10, 8, !dbg !3041
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %12, i64 %mul11, i1 false), !dbg !3042
  %14 = load ptr, ptr %_values, align 8, !dbg !3043, !tbaa !777
  %15 = load ptr, ptr %values.addr, align 8, !dbg !3044, !tbaa !777
  %16 = load i32, ptr %nbobjs.addr, align 4, !dbg !3045, !tbaa !1051
  %17 = load i32, ptr %nbobjs.addr, align 4, !dbg !3046, !tbaa !1051
  %mul12 = mul i32 %16, %17, !dbg !3047
  %conv13 = zext i32 %mul12 to i64, !dbg !3045
  %mul14 = mul i64 %conv13, 8, !dbg !3048
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %15, i64 %mul14, i1 false), !dbg !3049
  %18 = load ptr, ptr %topology.addr, align 8, !dbg !3050, !tbaa !777
  %19 = load ptr, ptr %handle.addr, align 8, !dbg !3051, !tbaa !777
  %20 = load i32, ptr %nbobjs.addr, align 4, !dbg !3052, !tbaa !1051
  %21 = load ptr, ptr %_objs, align 8, !dbg !3053, !tbaa !777
  %22 = load ptr, ptr %_values, align 8, !dbg !3054, !tbaa !777
  %23 = load i64, ptr %flags.addr, align 8, !dbg !3055, !tbaa !1547
  %call15 = call i32 @hwloc_backend_distances_add_values(ptr noundef %18, ptr noundef %19, i32 noundef %20, ptr noundef %21, ptr noundef %22, i64 noundef %23), !dbg !3056
  store i32 %call15, ptr %err, align 4, !dbg !3057, !tbaa !1051
  %24 = load i32, ptr %err, align 4, !dbg !3058, !tbaa !1051
  %cmp16 = icmp slt i32 %24, 0, !dbg !3060
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !3061

if.then18:                                        ; preds = %if.end9
  store ptr null, ptr %handle.addr, align 8, !dbg !3062, !tbaa !777
  br label %out_with_arrays, !dbg !3064

if.end19:                                         ; preds = %if.end9
  store i32 0, ptr %retval, align 4, !dbg !3065
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3065

out_with_arrays:                                  ; preds = %if.then18, %if.then8
  tail call void @llvm.dbg.label(metadata !2985), !dbg !3066
  %25 = load ptr, ptr %_objs, align 8, !dbg !3067, !tbaa !777
  call void @free(ptr noundef %25) #15, !dbg !3068
  %26 = load ptr, ptr %_values, align 8, !dbg !3069, !tbaa !777
  call void @free(ptr noundef %26) #15, !dbg !3070
  br label %out, !dbg !3070

out:                                              ; preds = %out_with_arrays, %if.then
  tail call void @llvm.dbg.label(metadata !2986), !dbg !3071
  %27 = load ptr, ptr %handle.addr, align 8, !dbg !3072, !tbaa !777
  %tobool20 = icmp ne ptr %27, null, !dbg !3072
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !3074

if.then21:                                        ; preds = %out
  %28 = load ptr, ptr %handle.addr, align 8, !dbg !3075, !tbaa !777
  call void @hwloc_backend_distances_add__cancel(ptr noundef %28), !dbg !3076
  br label %if.end22, !dbg !3076

if.end22:                                         ; preds = %if.then21, %out
  store i32 -1, ptr %retval, align 4, !dbg !3077
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3077

cleanup:                                          ; preds = %if.end22, %if.end19
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !3078
  call void @llvm.lifetime.end.p0(i64 8, ptr %_objs) #15, !dbg !3078
  call void @llvm.lifetime.end.p0(i64 8, ptr %_values) #15, !dbg !3078
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !3078
  %29 = load i32, ptr %retval, align 4, !dbg !3078
  ret i32 %29, !dbg !3078
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable
define i32 @hwloc_distances_add_commit(ptr noundef %topology, ptr noundef %handle, i64 noundef %flags) #0 !dbg !3079 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3083, metadata !DIExpression()), !dbg !3088
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !3084, metadata !DIExpression()), !dbg !3089
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3085, metadata !DIExpression()), !dbg !3090
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !3091
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !3086, metadata !DIExpression()), !dbg !3092
  %0 = load i64, ptr %flags.addr, align 8, !dbg !3093, !tbaa !1547
  %and = and i64 %0, -4, !dbg !3095
  %tobool = icmp ne i64 %and, 0, !dbg !3095
  br i1 %tobool, label %if.then, label %if.end, !dbg !3096

if.then:                                          ; preds = %entry
  %call = call ptr @__errno_location() #18, !dbg !3097
  store i32 22, ptr %call, align 4, !dbg !3099, !tbaa !1051
  br label %out, !dbg !3100

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !3101, !tbaa !777
  %2 = load ptr, ptr %handle.addr, align 8, !dbg !3102, !tbaa !777
  %3 = load i64, ptr %flags.addr, align 8, !dbg !3103, !tbaa !1547
  %call1 = call i32 @hwloc_backend_distances_add_commit(ptr noundef %1, ptr noundef %2, i64 noundef %3), !dbg !3104
  store i32 %call1, ptr %err, align 4, !dbg !3105, !tbaa !1051
  %4 = load i32, ptr %err, align 4, !dbg !3106, !tbaa !1051
  %cmp = icmp slt i32 %4, 0, !dbg !3108
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3109

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %handle.addr, align 8, !dbg !3110, !tbaa !777
  br label %out, !dbg !3112

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %topology.addr, align 8, !dbg !3113, !tbaa !777
  %call4 = call i32 @hwloc_topology_reconnect(ptr noundef %5, i64 noundef 0), !dbg !3114
  store i32 0, ptr %retval, align 4, !dbg !3115
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3115

out:                                              ; preds = %if.then2, %if.then
  tail call void @llvm.dbg.label(metadata !3087), !dbg !3116
  %6 = load ptr, ptr %handle.addr, align 8, !dbg !3117, !tbaa !777
  %tobool5 = icmp ne ptr %6, null, !dbg !3117
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !3119

if.then6:                                         ; preds = %out
  %7 = load ptr, ptr %handle.addr, align 8, !dbg !3120, !tbaa !777
  call void @hwloc_backend_distances_add__cancel(ptr noundef %7), !dbg !3121
  br label %if.end7, !dbg !3121

if.end7:                                          ; preds = %if.then6, %out
  store i32 -1, ptr %retval, align 4, !dbg !3122
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3122

cleanup:                                          ; preds = %if.end7, %if.end3
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !3123
  %8 = load i32, ptr %retval, align 4, !dbg !3123
  ret i32 %8, !dbg !3123
}

declare !dbg !3124 i32 @hwloc_topology_reconnect(ptr noundef, i64 noundef) #8

; Function Attrs: nounwind uwtable
define i32 @hwloc_distances_add(ptr noundef %topology, i32 noundef %nbobjs, ptr noundef %objs, ptr noundef %values, i64 noundef %kind, i64 noundef %flags) #0 !dbg !3127 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %nbobjs.addr = alloca i32, align 4
  %objs.addr = alloca ptr, align 8
  %values.addr = alloca ptr, align 8
  %kind.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %handle = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3131, metadata !DIExpression()), !dbg !3139
  store i32 %nbobjs, ptr %nbobjs.addr, align 4, !tbaa !1051
  tail call void @llvm.dbg.declare(metadata ptr %nbobjs.addr, metadata !3132, metadata !DIExpression()), !dbg !3140
  store ptr %objs, ptr %objs.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %objs.addr, metadata !3133, metadata !DIExpression()), !dbg !3141
  store ptr %values, ptr %values.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %values.addr, metadata !3134, metadata !DIExpression()), !dbg !3142
  store i64 %kind, ptr %kind.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %kind.addr, metadata !3135, metadata !DIExpression()), !dbg !3143
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3136, metadata !DIExpression()), !dbg !3144
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #15, !dbg !3145
  tail call void @llvm.dbg.declare(metadata ptr %handle, metadata !3137, metadata !DIExpression()), !dbg !3146
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !3147
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !3138, metadata !DIExpression()), !dbg !3148
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !3149, !tbaa !777
  %1 = load i64, ptr %kind.addr, align 8, !dbg !3150, !tbaa !1547
  %call = call ptr @hwloc_distances_add_create(ptr noundef %0, ptr noundef null, i64 noundef %1, i64 noundef 0), !dbg !3151
  store ptr %call, ptr %handle, align 8, !dbg !3152, !tbaa !777
  %2 = load ptr, ptr %handle, align 8, !dbg !3153, !tbaa !777
  %tobool = icmp ne ptr %2, null, !dbg !3153
  br i1 %tobool, label %if.end, label %if.then, !dbg !3155

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !3156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3156

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %topology.addr, align 8, !dbg !3157, !tbaa !777
  %4 = load ptr, ptr %handle, align 8, !dbg !3158, !tbaa !777
  %5 = load i32, ptr %nbobjs.addr, align 4, !dbg !3159, !tbaa !1051
  %6 = load ptr, ptr %objs.addr, align 8, !dbg !3160, !tbaa !777
  %7 = load ptr, ptr %values.addr, align 8, !dbg !3161, !tbaa !777
  %call1 = call i32 @hwloc_distances_add_values(ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, i64 noundef 0), !dbg !3162
  store i32 %call1, ptr %err, align 4, !dbg !3163, !tbaa !1051
  %8 = load i32, ptr %err, align 4, !dbg !3164, !tbaa !1051
  %cmp = icmp slt i32 %8, 0, !dbg !3166
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3167

if.then2:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !3168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3168

if.end3:                                          ; preds = %if.end
  %9 = load ptr, ptr %topology.addr, align 8, !dbg !3169, !tbaa !777
  %10 = load ptr, ptr %handle, align 8, !dbg !3170, !tbaa !777
  %11 = load i64, ptr %flags.addr, align 8, !dbg !3171, !tbaa !1547
  %call4 = call i32 @hwloc_distances_add_commit(ptr noundef %9, ptr noundef %10, i64 noundef %11), !dbg !3172
  store i32 %call4, ptr %err, align 4, !dbg !3173, !tbaa !1051
  %12 = load i32, ptr %err, align 4, !dbg !3174, !tbaa !1051
  %cmp5 = icmp slt i32 %12, 0, !dbg !3176
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !3177

if.then6:                                         ; preds = %if.end3
  store i32 -1, ptr %retval, align 4, !dbg !3178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3178

if.end7:                                          ; preds = %if.end3
  store i32 0, ptr %retval, align 4, !dbg !3179
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3179

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !3180
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #15, !dbg !3180
  %13 = load i32, ptr %retval, align 4, !dbg !3180
  ret i32 %13, !dbg !3180
}

; Function Attrs: nounwind uwtable
define hidden void @hwloc_internal_distances_refresh(ptr noundef %topology) #0 !dbg !3181 {
entry:
  %topology.addr = alloca ptr, align 8
  %dist = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3185, metadata !DIExpression()), !dbg !3188
  call void @llvm.lifetime.start.p0(i64 8, ptr %dist) #15, !dbg !3189
  tail call void @llvm.dbg.declare(metadata ptr %dist, metadata !3186, metadata !DIExpression()), !dbg !3190
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #15, !dbg !3189
  tail call void @llvm.dbg.declare(metadata ptr %next, metadata !3187, metadata !DIExpression()), !dbg !3191
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !3192, !tbaa !777
  %first_dist = getelementptr inbounds %struct.hwloc_topology, ptr %0, i32 0, i32 24, !dbg !3194
  %1 = load ptr, ptr %first_dist, align 8, !dbg !3194, !tbaa !795
  store ptr %1, ptr %dist, align 8, !dbg !3195, !tbaa !777
  br label %for.cond, !dbg !3196

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %dist, align 8, !dbg !3197, !tbaa !777
  %tobool = icmp ne ptr %2, null, !dbg !3199
  br i1 %tobool, label %for.body, label %for.end, !dbg !3199

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %dist, align 8, !dbg !3200, !tbaa !777
  %next1 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %3, i32 0, i32 11, !dbg !3202
  %4 = load ptr, ptr %next1, align 8, !dbg !3202, !tbaa !975
  store ptr %4, ptr %next, align 8, !dbg !3203, !tbaa !777
  %5 = load ptr, ptr %topology.addr, align 8, !dbg !3204, !tbaa !777
  %6 = load ptr, ptr %dist, align 8, !dbg !3206, !tbaa !777
  %call = call i32 @hwloc_internal_distances_refresh_one(ptr noundef %5, ptr noundef %6), !dbg !3207
  %cmp = icmp slt i32 %call, 0, !dbg !3208
  br i1 %cmp, label %if.then, label %if.end20, !dbg !3209

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %topology.addr, align 8, !dbg !3210, !tbaa !777
  %tma = getelementptr inbounds %struct.hwloc_topology, ptr %7, i32 0, i32 41, !dbg !3210
  %8 = load ptr, ptr %tma, align 8, !dbg !3210, !tbaa !1082
  %tobool2 = icmp ne ptr %8, null, !dbg !3210
  br i1 %tobool2, label %lor.lhs.false, label %if.then5, !dbg !3210

lor.lhs.false:                                    ; preds = %if.then
  %9 = load ptr, ptr %topology.addr, align 8, !dbg !3210, !tbaa !777
  %tma3 = getelementptr inbounds %struct.hwloc_topology, ptr %9, i32 0, i32 41, !dbg !3210
  %10 = load ptr, ptr %tma3, align 8, !dbg !3210, !tbaa !1082
  %dontfree = getelementptr inbounds %struct.hwloc_tma, ptr %10, i32 0, i32 2, !dbg !3210
  %11 = load i32, ptr %dontfree, align 8, !dbg !3210, !tbaa !1117
  %tobool4 = icmp ne i32 %11, 0, !dbg !3210
  br i1 %tobool4, label %if.else, label %if.then5, !dbg !3214

if.then5:                                         ; preds = %lor.lhs.false, %if.then
  br label %if.end, !dbg !3214

if.else:                                          ; preds = %lor.lhs.false
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.7, i32 noundef 828, ptr noundef @__PRETTY_FUNCTION__.hwloc_internal_distances_refresh) #17, !dbg !3210
  unreachable, !dbg !3210

if.end:                                           ; preds = %if.then5
  %12 = load ptr, ptr %dist, align 8, !dbg !3215, !tbaa !777
  %prev = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %12, i32 0, i32 10, !dbg !3217
  %13 = load ptr, ptr %prev, align 8, !dbg !3217, !tbaa !1257
  %tobool6 = icmp ne ptr %13, null, !dbg !3215
  br i1 %tobool6, label %if.then7, label %if.else10, !dbg !3218

if.then7:                                         ; preds = %if.end
  %14 = load ptr, ptr %next, align 8, !dbg !3219, !tbaa !777
  %15 = load ptr, ptr %dist, align 8, !dbg !3220, !tbaa !777
  %prev8 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %15, i32 0, i32 10, !dbg !3221
  %16 = load ptr, ptr %prev8, align 8, !dbg !3221, !tbaa !1257
  %next9 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %16, i32 0, i32 11, !dbg !3222
  store ptr %14, ptr %next9, align 8, !dbg !3223, !tbaa !975
  br label %if.end12, !dbg !3220

if.else10:                                        ; preds = %if.end
  %17 = load ptr, ptr %next, align 8, !dbg !3224, !tbaa !777
  %18 = load ptr, ptr %topology.addr, align 8, !dbg !3225, !tbaa !777
  %first_dist11 = getelementptr inbounds %struct.hwloc_topology, ptr %18, i32 0, i32 24, !dbg !3226
  store ptr %17, ptr %first_dist11, align 8, !dbg !3227, !tbaa !795
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then7
  %19 = load ptr, ptr %next, align 8, !dbg !3228, !tbaa !777
  %tobool13 = icmp ne ptr %19, null, !dbg !3228
  br i1 %tobool13, label %if.then14, label %if.else17, !dbg !3230

if.then14:                                        ; preds = %if.end12
  %20 = load ptr, ptr %dist, align 8, !dbg !3231, !tbaa !777
  %prev15 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %20, i32 0, i32 10, !dbg !3232
  %21 = load ptr, ptr %prev15, align 8, !dbg !3232, !tbaa !1257
  %22 = load ptr, ptr %next, align 8, !dbg !3233, !tbaa !777
  %prev16 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %22, i32 0, i32 10, !dbg !3234
  store ptr %21, ptr %prev16, align 8, !dbg !3235, !tbaa !1257
  br label %if.end19, !dbg !3233

if.else17:                                        ; preds = %if.end12
  %23 = load ptr, ptr %dist, align 8, !dbg !3236, !tbaa !777
  %prev18 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %23, i32 0, i32 10, !dbg !3237
  %24 = load ptr, ptr %prev18, align 8, !dbg !3237, !tbaa !1257
  %25 = load ptr, ptr %topology.addr, align 8, !dbg !3238, !tbaa !777
  %last_dist = getelementptr inbounds %struct.hwloc_topology, ptr %25, i32 0, i32 25, !dbg !3239
  store ptr %24, ptr %last_dist, align 8, !dbg !3240, !tbaa !785
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then14
  %26 = load ptr, ptr %dist, align 8, !dbg !3241, !tbaa !777
  call void @hwloc_internal_distances_free(ptr noundef %26), !dbg !3242
  br label %for.inc, !dbg !3243

if.end20:                                         ; preds = %for.body
  br label %for.inc, !dbg !3244

for.inc:                                          ; preds = %if.end20, %if.end19
  %27 = load ptr, ptr %next, align 8, !dbg !3245, !tbaa !777
  store ptr %27, ptr %dist, align 8, !dbg !3246, !tbaa !777
  br label %for.cond, !dbg !3247, !llvm.loop !3248

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #15, !dbg !3250
  call void @llvm.lifetime.end.p0(i64 8, ptr %dist) #15, !dbg !3250
  ret void, !dbg !3250
}

; Function Attrs: nounwind uwtable
define internal i32 @hwloc_internal_distances_refresh_one(ptr noundef %topology, ptr noundef %dist) #0 !dbg !3251 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %dist.addr = alloca ptr, align 8
  %unique_type = alloca i32, align 4
  %different_types = alloca ptr, align 8
  %nbobjs = alloca i32, align 4
  %objs = alloca ptr, align 8
  %indexes = alloca ptr, align 8
  %disappeared = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %obj = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3255, metadata !DIExpression()), !dbg !3268
  store ptr %dist, ptr %dist.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %dist.addr, metadata !3256, metadata !DIExpression()), !dbg !3269
  call void @llvm.lifetime.start.p0(i64 4, ptr %unique_type) #15, !dbg !3270
  tail call void @llvm.dbg.declare(metadata ptr %unique_type, metadata !3257, metadata !DIExpression()), !dbg !3271
  %0 = load ptr, ptr %dist.addr, align 8, !dbg !3272, !tbaa !777
  %unique_type1 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %0, i32 0, i32 2, !dbg !3273
  %1 = load i32, ptr %unique_type1, align 4, !dbg !3273, !tbaa !1165
  store i32 %1, ptr %unique_type, align 4, !dbg !3271, !tbaa !818
  call void @llvm.lifetime.start.p0(i64 8, ptr %different_types) #15, !dbg !3274
  tail call void @llvm.dbg.declare(metadata ptr %different_types, metadata !3258, metadata !DIExpression()), !dbg !3275
  %2 = load ptr, ptr %dist.addr, align 8, !dbg !3276, !tbaa !777
  %different_types2 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %2, i32 0, i32 3, !dbg !3277
  %3 = load ptr, ptr %different_types2, align 8, !dbg !3277, !tbaa !1002
  store ptr %3, ptr %different_types, align 8, !dbg !3275, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbobjs) #15, !dbg !3278
  tail call void @llvm.dbg.declare(metadata ptr %nbobjs, metadata !3259, metadata !DIExpression()), !dbg !3279
  %4 = load ptr, ptr %dist.addr, align 8, !dbg !3280, !tbaa !777
  %nbobjs3 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %4, i32 0, i32 4, !dbg !3281
  %5 = load i32, ptr %nbobjs3, align 8, !dbg !3281, !tbaa !1089
  store i32 %5, ptr %nbobjs, align 4, !dbg !3279, !tbaa !1051
  call void @llvm.lifetime.start.p0(i64 8, ptr %objs) #15, !dbg !3282
  tail call void @llvm.dbg.declare(metadata ptr %objs, metadata !3260, metadata !DIExpression()), !dbg !3283
  %6 = load ptr, ptr %dist.addr, align 8, !dbg !3284, !tbaa !777
  %objs4 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %6, i32 0, i32 9, !dbg !3285
  %7 = load ptr, ptr %objs4, align 8, !dbg !3285, !tbaa !1010
  store ptr %7, ptr %objs, align 8, !dbg !3283, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 8, ptr %indexes) #15, !dbg !3286
  tail call void @llvm.dbg.declare(metadata ptr %indexes, metadata !3261, metadata !DIExpression()), !dbg !3287
  %8 = load ptr, ptr %dist.addr, align 8, !dbg !3288, !tbaa !777
  %indexes5 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %8, i32 0, i32 5, !dbg !3289
  %9 = load ptr, ptr %indexes5, align 8, !dbg !3289, !tbaa !1006
  store ptr %9, ptr %indexes, align 8, !dbg !3287, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 4, ptr %disappeared) #15, !dbg !3290
  tail call void @llvm.dbg.declare(metadata ptr %disappeared, metadata !3262, metadata !DIExpression()), !dbg !3291
  store i32 0, ptr %disappeared, align 4, !dbg !3291, !tbaa !1051
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !3292
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3263, metadata !DIExpression()), !dbg !3293
  %10 = load ptr, ptr %dist.addr, align 8, !dbg !3294, !tbaa !777
  %iflags = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %10, i32 0, i32 8, !dbg !3296
  %11 = load i32, ptr %iflags, align 8, !dbg !3296, !tbaa !1201
  %and = and i32 %11, 1, !dbg !3297
  %tobool = icmp ne i32 %and, 0, !dbg !3297
  br i1 %tobool, label %if.then, label %if.end, !dbg !3298

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3299
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3299

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !3300, !tbaa !1051
  br label %for.cond, !dbg !3301

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, ptr %i, align 4, !dbg !3302, !tbaa !1051
  %13 = load i32, ptr %nbobjs, align 4, !dbg !3303, !tbaa !1051
  %cmp = icmp ult i32 %12, %13, !dbg !3304
  br i1 %cmp, label %for.body, label %for.end, !dbg !3305

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #15, !dbg !3306
  tail call void @llvm.dbg.declare(metadata ptr %obj, metadata !3264, metadata !DIExpression()), !dbg !3307
  %14 = load i32, ptr %unique_type, align 4, !dbg !3308, !tbaa !818
  %cmp6 = icmp eq i32 %14, 3, !dbg !3308
  br i1 %cmp6, label %if.then8, label %lor.lhs.false, !dbg !3308

lor.lhs.false:                                    ; preds = %for.body
  %15 = load i32, ptr %unique_type, align 4, !dbg !3308, !tbaa !818
  %cmp7 = icmp eq i32 %15, 13, !dbg !3308
  br i1 %cmp7, label %if.then8, label %if.else21, !dbg !3310

if.then8:                                         ; preds = %lor.lhs.false, %for.body
  %16 = load i32, ptr %unique_type, align 4, !dbg !3311, !tbaa !818
  %cmp9 = icmp eq i32 %16, 3, !dbg !3314
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !3315

if.then10:                                        ; preds = %if.then8
  %17 = load ptr, ptr %topology.addr, align 8, !dbg !3316, !tbaa !777
  %18 = load ptr, ptr %indexes, align 8, !dbg !3317, !tbaa !777
  %19 = load i32, ptr %i, align 4, !dbg !3318, !tbaa !1051
  %idxprom = zext i32 %19 to i64, !dbg !3317
  %arrayidx = getelementptr inbounds i64, ptr %18, i64 %idxprom, !dbg !3317
  %20 = load i64, ptr %arrayidx, align 8, !dbg !3317, !tbaa !1547
  %conv = trunc i64 %20 to i32, !dbg !3319
  %call = call ptr @hwloc_get_pu_obj_by_os_index(ptr noundef %17, i32 noundef %conv) #16, !dbg !3320
  store ptr %call, ptr %obj, align 8, !dbg !3321, !tbaa !777
  br label %if.end20, !dbg !3322

if.else:                                          ; preds = %if.then8
  %21 = load i32, ptr %unique_type, align 4, !dbg !3323, !tbaa !818
  %cmp11 = icmp eq i32 %21, 13, !dbg !3325
  br i1 %cmp11, label %if.then13, label %if.else18, !dbg !3326

if.then13:                                        ; preds = %if.else
  %22 = load ptr, ptr %topology.addr, align 8, !dbg !3327, !tbaa !777
  %23 = load ptr, ptr %indexes, align 8, !dbg !3328, !tbaa !777
  %24 = load i32, ptr %i, align 4, !dbg !3329, !tbaa !1051
  %idxprom14 = zext i32 %24 to i64, !dbg !3328
  %arrayidx15 = getelementptr inbounds i64, ptr %23, i64 %idxprom14, !dbg !3328
  %25 = load i64, ptr %arrayidx15, align 8, !dbg !3328, !tbaa !1547
  %conv16 = trunc i64 %25 to i32, !dbg !3330
  %call17 = call ptr @hwloc_get_numanode_obj_by_os_index(ptr noundef %22, i32 noundef %conv16) #16, !dbg !3331
  store ptr %call17, ptr %obj, align 8, !dbg !3332, !tbaa !777
  br label %if.end19, !dbg !3333

if.else18:                                        ; preds = %if.else
  call void @abort() #17, !dbg !3334
  unreachable, !dbg !3334

if.end19:                                         ; preds = %if.then13
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then10
  br label %if.end28, !dbg !3335

if.else21:                                        ; preds = %lor.lhs.false
  %26 = load ptr, ptr %topology.addr, align 8, !dbg !3336, !tbaa !777
  %27 = load ptr, ptr %different_types, align 8, !dbg !3338, !tbaa !777
  %tobool22 = icmp ne ptr %27, null, !dbg !3338
  br i1 %tobool22, label %cond.true, label %cond.false, !dbg !3338

cond.true:                                        ; preds = %if.else21
  %28 = load ptr, ptr %different_types, align 8, !dbg !3339, !tbaa !777
  %29 = load i32, ptr %i, align 4, !dbg !3340, !tbaa !1051
  %idxprom23 = zext i32 %29 to i64, !dbg !3339
  %arrayidx24 = getelementptr inbounds i32, ptr %28, i64 %idxprom23, !dbg !3339
  %30 = load i32, ptr %arrayidx24, align 4, !dbg !3339, !tbaa !818
  br label %cond.end, !dbg !3338

cond.false:                                       ; preds = %if.else21
  %31 = load i32, ptr %unique_type, align 4, !dbg !3341, !tbaa !818
  br label %cond.end, !dbg !3338

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %30, %cond.true ], [ %31, %cond.false ], !dbg !3338
  %32 = load ptr, ptr %indexes, align 8, !dbg !3342, !tbaa !777
  %33 = load i32, ptr %i, align 4, !dbg !3343, !tbaa !1051
  %idxprom25 = zext i32 %33 to i64, !dbg !3342
  %arrayidx26 = getelementptr inbounds i64, ptr %32, i64 %idxprom25, !dbg !3342
  %34 = load i64, ptr %arrayidx26, align 8, !dbg !3342, !tbaa !1547
  %call27 = call ptr @hwloc_get_obj_by_type_and_gp_index(ptr noundef %26, i32 noundef %cond, i64 noundef %34), !dbg !3344
  store ptr %call27, ptr %obj, align 8, !dbg !3345, !tbaa !777
  br label %if.end28

if.end28:                                         ; preds = %cond.end, %if.end20
  %35 = load ptr, ptr %obj, align 8, !dbg !3346, !tbaa !777
  %36 = load ptr, ptr %objs, align 8, !dbg !3347, !tbaa !777
  %37 = load i32, ptr %i, align 4, !dbg !3348, !tbaa !1051
  %idxprom29 = zext i32 %37 to i64, !dbg !3347
  %arrayidx30 = getelementptr inbounds ptr, ptr %36, i64 %idxprom29, !dbg !3347
  store ptr %35, ptr %arrayidx30, align 8, !dbg !3349, !tbaa !777
  %38 = load ptr, ptr %obj, align 8, !dbg !3350, !tbaa !777
  %tobool31 = icmp ne ptr %38, null, !dbg !3350
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !3352

if.then32:                                        ; preds = %if.end28
  %39 = load i32, ptr %disappeared, align 4, !dbg !3353, !tbaa !1051
  %inc = add i32 %39, 1, !dbg !3353
  store i32 %inc, ptr %disappeared, align 4, !dbg !3353, !tbaa !1051
  br label %if.end33, !dbg !3354

if.end33:                                         ; preds = %if.then32, %if.end28
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #15, !dbg !3355
  br label %for.inc, !dbg !3356

for.inc:                                          ; preds = %if.end33
  %40 = load i32, ptr %i, align 4, !dbg !3357, !tbaa !1051
  %inc34 = add i32 %40, 1, !dbg !3357
  store i32 %inc34, ptr %i, align 4, !dbg !3357, !tbaa !1051
  br label %for.cond, !dbg !3358, !llvm.loop !3359

for.end:                                          ; preds = %for.cond
  %41 = load i32, ptr %nbobjs, align 4, !dbg !3361, !tbaa !1051
  %42 = load i32, ptr %disappeared, align 4, !dbg !3363, !tbaa !1051
  %sub = sub i32 %41, %42, !dbg !3364
  %cmp35 = icmp ult i32 %sub, 2, !dbg !3365
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !3366

if.then37:                                        ; preds = %for.end
  store i32 -1, ptr %retval, align 4, !dbg !3367
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3367

if.end38:                                         ; preds = %for.end
  %43 = load i32, ptr %disappeared, align 4, !dbg !3368, !tbaa !1051
  %tobool39 = icmp ne i32 %43, 0, !dbg !3368
  br i1 %tobool39, label %if.then40, label %if.end45, !dbg !3370

if.then40:                                        ; preds = %if.end38
  %44 = load ptr, ptr %objs, align 8, !dbg !3371, !tbaa !777
  %45 = load ptr, ptr %dist.addr, align 8, !dbg !3373, !tbaa !777
  %indexes41 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %45, i32 0, i32 5, !dbg !3374
  %46 = load ptr, ptr %indexes41, align 8, !dbg !3374, !tbaa !1006
  %47 = load ptr, ptr %dist.addr, align 8, !dbg !3375, !tbaa !777
  %different_types42 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %47, i32 0, i32 3, !dbg !3376
  %48 = load ptr, ptr %different_types42, align 8, !dbg !3376, !tbaa !1002
  %49 = load ptr, ptr %dist.addr, align 8, !dbg !3377, !tbaa !777
  %values = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %49, i32 0, i32 6, !dbg !3378
  %50 = load ptr, ptr %values, align 8, !dbg !3378, !tbaa !1014
  %51 = load i32, ptr %nbobjs, align 4, !dbg !3379, !tbaa !1051
  %52 = load i32, ptr %disappeared, align 4, !dbg !3380, !tbaa !1051
  call void @hwloc_internal_distances_restrict(ptr noundef %44, ptr noundef %46, ptr noundef %48, ptr noundef %50, i32 noundef %51, i32 noundef %52), !dbg !3381
  %53 = load i32, ptr %disappeared, align 4, !dbg !3382, !tbaa !1051
  %54 = load ptr, ptr %dist.addr, align 8, !dbg !3383, !tbaa !777
  %nbobjs43 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %54, i32 0, i32 4, !dbg !3384
  %55 = load i32, ptr %nbobjs43, align 8, !dbg !3385, !tbaa !1089
  %sub44 = sub i32 %55, %53, !dbg !3385
  store i32 %sub44, ptr %nbobjs43, align 8, !dbg !3385, !tbaa !1089
  br label %if.end45, !dbg !3386

if.end45:                                         ; preds = %if.then40, %if.end38
  %56 = load ptr, ptr %dist.addr, align 8, !dbg !3387, !tbaa !777
  %iflags46 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %56, i32 0, i32 8, !dbg !3388
  %57 = load i32, ptr %iflags46, align 8, !dbg !3389, !tbaa !1201
  %or = or i32 %57, 1, !dbg !3389
  store i32 %or, ptr %iflags46, align 8, !dbg !3389, !tbaa !1201
  store i32 0, ptr %retval, align 4, !dbg !3390
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3390

cleanup:                                          ; preds = %if.end45, %if.then37, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !3391
  call void @llvm.lifetime.end.p0(i64 4, ptr %disappeared) #15, !dbg !3391
  call void @llvm.lifetime.end.p0(i64 8, ptr %indexes) #15, !dbg !3391
  call void @llvm.lifetime.end.p0(i64 8, ptr %objs) #15, !dbg !3391
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbobjs) #15, !dbg !3391
  call void @llvm.lifetime.end.p0(i64 8, ptr %different_types) #15, !dbg !3391
  call void @llvm.lifetime.end.p0(i64 4, ptr %unique_type) #15, !dbg !3391
  %58 = load i32, ptr %retval, align 4, !dbg !3391
  ret i32 %58, !dbg !3391
}

; Function Attrs: noreturn nounwind
declare !dbg !3392 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #11

; Function Attrs: nounwind uwtable
define hidden void @hwloc_internal_distances_invalidate_cached_objs(ptr noundef %topology) #0 !dbg !3396 {
entry:
  %topology.addr = alloca ptr, align 8
  %dist = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3398, metadata !DIExpression()), !dbg !3400
  call void @llvm.lifetime.start.p0(i64 8, ptr %dist) #15, !dbg !3401
  tail call void @llvm.dbg.declare(metadata ptr %dist, metadata !3399, metadata !DIExpression()), !dbg !3402
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !3403, !tbaa !777
  %first_dist = getelementptr inbounds %struct.hwloc_topology, ptr %0, i32 0, i32 24, !dbg !3405
  %1 = load ptr, ptr %first_dist, align 8, !dbg !3405, !tbaa !795
  store ptr %1, ptr %dist, align 8, !dbg !3406, !tbaa !777
  br label %for.cond, !dbg !3407

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %dist, align 8, !dbg !3408, !tbaa !777
  %tobool = icmp ne ptr %2, null, !dbg !3410
  br i1 %tobool, label %for.body, label %for.end, !dbg !3410

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %dist, align 8, !dbg !3411, !tbaa !777
  %iflags = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %3, i32 0, i32 8, !dbg !3412
  %4 = load i32, ptr %iflags, align 8, !dbg !3413, !tbaa !1201
  %and = and i32 %4, -2, !dbg !3413
  store i32 %and, ptr %iflags, align 8, !dbg !3413, !tbaa !1201
  br label %for.inc, !dbg !3411

for.inc:                                          ; preds = %for.body
  %5 = load ptr, ptr %dist, align 8, !dbg !3414, !tbaa !777
  %next = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %5, i32 0, i32 11, !dbg !3415
  %6 = load ptr, ptr %next, align 8, !dbg !3415, !tbaa !975
  store ptr %6, ptr %dist, align 8, !dbg !3416, !tbaa !777
  br label %for.cond, !dbg !3417, !llvm.loop !3418

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %dist) #15, !dbg !3420
  ret void, !dbg !3420
}

; Function Attrs: nounwind uwtable
define ptr @hwloc_distances_get_name(ptr noundef %topology, ptr noundef %distances) #0 !dbg !3421 {
entry:
  %topology.addr = alloca ptr, align 8
  %distances.addr = alloca ptr, align 8
  %dist = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3425, metadata !DIExpression()), !dbg !3428
  store ptr %distances, ptr %distances.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %distances.addr, metadata !3426, metadata !DIExpression()), !dbg !3429
  call void @llvm.lifetime.start.p0(i64 8, ptr %dist) #15, !dbg !3430
  tail call void @llvm.dbg.declare(metadata ptr %dist, metadata !3427, metadata !DIExpression()), !dbg !3431
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !3432, !tbaa !777
  %1 = load ptr, ptr %distances.addr, align 8, !dbg !3433, !tbaa !777
  %call = call ptr @hwloc__internal_distances_from_public(ptr noundef %0, ptr noundef %1), !dbg !3434
  store ptr %call, ptr %dist, align 8, !dbg !3431, !tbaa !777
  %2 = load ptr, ptr %dist, align 8, !dbg !3435, !tbaa !777
  %tobool = icmp ne ptr %2, null, !dbg !3435
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3435

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %dist, align 8, !dbg !3436, !tbaa !777
  %name = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %3, i32 0, i32 0, !dbg !3437
  %4 = load ptr, ptr %name, align 8, !dbg !3437, !tbaa !998
  br label %cond.end, !dbg !3435

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3435

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !3435
  call void @llvm.lifetime.end.p0(i64 8, ptr %dist) #15, !dbg !3438
  ret ptr %cond, !dbg !3439
}

; Function Attrs: nounwind uwtable
define i32 @hwloc_distances_get(ptr noundef %topology, ptr noundef %nrp, ptr noundef %distancesp, i64 noundef %kind, i64 noundef %flags) #0 !dbg !3440 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %nrp.addr = alloca ptr, align 8
  %distancesp.addr = alloca ptr, align 8
  %kind.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3445, metadata !DIExpression()), !dbg !3450
  store ptr %nrp, ptr %nrp.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %nrp.addr, metadata !3446, metadata !DIExpression()), !dbg !3451
  store ptr %distancesp, ptr %distancesp.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %distancesp.addr, metadata !3447, metadata !DIExpression()), !dbg !3452
  store i64 %kind, ptr %kind.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %kind.addr, metadata !3448, metadata !DIExpression()), !dbg !3453
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3449, metadata !DIExpression()), !dbg !3454
  %0 = load i64, ptr %flags.addr, align 8, !dbg !3455, !tbaa !1547
  %tobool = icmp ne i64 %0, 0, !dbg !3455
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3457

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !3458, !tbaa !777
  %is_loaded = getelementptr inbounds %struct.hwloc_topology, ptr %1, i32 0, i32 9, !dbg !3459
  %2 = load i32, ptr %is_loaded, align 4, !dbg !3459, !tbaa !1284
  %tobool1 = icmp ne i32 %2, 0, !dbg !3458
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3460

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call ptr @__errno_location() #18, !dbg !3461
  store i32 22, ptr %call, align 4, !dbg !3463, !tbaa !1051
  store i32 -1, ptr %retval, align 4, !dbg !3464
  br label %return, !dbg !3464

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %topology.addr, align 8, !dbg !3465, !tbaa !777
  %4 = load ptr, ptr %nrp.addr, align 8, !dbg !3466, !tbaa !777
  %5 = load ptr, ptr %distancesp.addr, align 8, !dbg !3467, !tbaa !777
  %6 = load i64, ptr %kind.addr, align 8, !dbg !3468, !tbaa !1547
  %7 = load i64, ptr %flags.addr, align 8, !dbg !3469, !tbaa !1547
  %call2 = call i32 @hwloc__distances_get(ptr noundef %3, ptr noundef null, i32 noundef -1, ptr noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7), !dbg !3470
  store i32 %call2, ptr %retval, align 4, !dbg !3471
  br label %return, !dbg !3471

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !3472
  ret i32 %8, !dbg !3472
}

; Function Attrs: nounwind uwtable
define internal i32 @hwloc__distances_get(ptr noundef %topology, ptr noundef %name, i32 noundef %type, ptr noundef %nrp, ptr noundef %distancesp, i64 noundef %kind, i64 noundef %flags) #0 !dbg !3473 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %nrp.addr = alloca ptr, align 8
  %distancesp.addr = alloca ptr, align 8
  %kind.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %dist = alloca ptr, align 8
  %nr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %kind_from = alloca i64, align 8
  %kind_means = alloca i64, align 8
  %distances = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3477, metadata !DIExpression()), !dbg !3496
  store ptr %name, ptr %name.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !3478, metadata !DIExpression()), !dbg !3497
  store i32 %type, ptr %type.addr, align 4, !tbaa !818
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3479, metadata !DIExpression()), !dbg !3498
  store ptr %nrp, ptr %nrp.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %nrp.addr, metadata !3480, metadata !DIExpression()), !dbg !3499
  store ptr %distancesp, ptr %distancesp.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %distancesp.addr, metadata !3481, metadata !DIExpression()), !dbg !3500
  store i64 %kind, ptr %kind.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %kind.addr, metadata !3482, metadata !DIExpression()), !dbg !3501
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3483, metadata !DIExpression()), !dbg !3502
  call void @llvm.lifetime.start.p0(i64 8, ptr %dist) #15, !dbg !3503
  tail call void @llvm.dbg.declare(metadata ptr %dist, metadata !3484, metadata !DIExpression()), !dbg !3504
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr) #15, !dbg !3505
  tail call void @llvm.dbg.declare(metadata ptr %nr, metadata !3485, metadata !DIExpression()), !dbg !3506
  store i32 0, ptr %nr, align 4, !dbg !3506, !tbaa !1051
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !3505
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3486, metadata !DIExpression()), !dbg !3507
  %0 = load i64, ptr %flags.addr, align 8, !dbg !3508, !tbaa !1547
  %tobool = icmp ne i64 %0, 0, !dbg !3508
  br i1 %tobool, label %if.then, label %if.end, !dbg !3510

if.then:                                          ; preds = %entry
  %call = call ptr @__errno_location() #18, !dbg !3511
  store i32 22, ptr %call, align 4, !dbg !3513, !tbaa !1051
  store i32 -1, ptr %retval, align 4, !dbg !3514
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup56, !dbg !3514

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !3515, !tbaa !777
  call void @hwloc_internal_distances_refresh(ptr noundef %1), !dbg !3516
  %2 = load ptr, ptr %topology.addr, align 8, !dbg !3517, !tbaa !777
  %first_dist = getelementptr inbounds %struct.hwloc_topology, ptr %2, i32 0, i32 24, !dbg !3518
  %3 = load ptr, ptr %first_dist, align 8, !dbg !3518, !tbaa !795
  store ptr %3, ptr %dist, align 8, !dbg !3519, !tbaa !777
  br label %for.cond, !dbg !3520

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %dist, align 8, !dbg !3521, !tbaa !777
  %tobool1 = icmp ne ptr %4, null, !dbg !3522
  br i1 %tobool1, label %for.body, label %for.end, !dbg !3522

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %kind_from) #15, !dbg !3523
  tail call void @llvm.dbg.declare(metadata ptr %kind_from, metadata !3487, metadata !DIExpression()), !dbg !3524
  %5 = load i64, ptr %kind.addr, align 8, !dbg !3525, !tbaa !1547
  %and = and i64 %5, 3, !dbg !3526
  store i64 %and, ptr %kind_from, align 8, !dbg !3524, !tbaa !1547
  call void @llvm.lifetime.start.p0(i64 8, ptr %kind_means) #15, !dbg !3527
  tail call void @llvm.dbg.declare(metadata ptr %kind_means, metadata !3491, metadata !DIExpression()), !dbg !3528
  %6 = load i64, ptr %kind.addr, align 8, !dbg !3529, !tbaa !1547
  %and2 = and i64 %6, 12, !dbg !3530
  store i64 %and2, ptr %kind_means, align 8, !dbg !3528, !tbaa !1547
  %7 = load ptr, ptr %name.addr, align 8, !dbg !3531, !tbaa !777
  %tobool3 = icmp ne ptr %7, null, !dbg !3531
  br i1 %tobool3, label %land.lhs.true, label %if.end10, !dbg !3533

land.lhs.true:                                    ; preds = %for.body
  %8 = load ptr, ptr %dist, align 8, !dbg !3534, !tbaa !777
  %name4 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %8, i32 0, i32 0, !dbg !3535
  %9 = load ptr, ptr %name4, align 8, !dbg !3535, !tbaa !998
  %tobool5 = icmp ne ptr %9, null, !dbg !3534
  br i1 %tobool5, label %lor.lhs.false, label %if.then9, !dbg !3536

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load ptr, ptr %name.addr, align 8, !dbg !3537, !tbaa !777
  %11 = load ptr, ptr %dist, align 8, !dbg !3538, !tbaa !777
  %name6 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %11, i32 0, i32 0, !dbg !3539
  %12 = load ptr, ptr %name6, align 8, !dbg !3539, !tbaa !998
  %call7 = call i32 @strcmp(ptr noundef %10, ptr noundef %12) #16, !dbg !3540
  %tobool8 = icmp ne i32 %call7, 0, !dbg !3540
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !3541

if.then9:                                         ; preds = %lor.lhs.false, %land.lhs.true
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup36, !dbg !3542

if.end10:                                         ; preds = %lor.lhs.false, %for.body
  %13 = load i32, ptr %type.addr, align 4, !dbg !3543, !tbaa !818
  %cmp = icmp ne i32 %13, -1, !dbg !3545
  br i1 %cmp, label %land.lhs.true11, label %if.end14, !dbg !3546

land.lhs.true11:                                  ; preds = %if.end10
  %14 = load i32, ptr %type.addr, align 4, !dbg !3547, !tbaa !818
  %15 = load ptr, ptr %dist, align 8, !dbg !3548, !tbaa !777
  %unique_type = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %15, i32 0, i32 2, !dbg !3549
  %16 = load i32, ptr %unique_type, align 4, !dbg !3549, !tbaa !1165
  %cmp12 = icmp ne i32 %14, %16, !dbg !3550
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3551

if.then13:                                        ; preds = %land.lhs.true11
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup36, !dbg !3552

if.end14:                                         ; preds = %land.lhs.true11, %if.end10
  %17 = load i64, ptr %kind_from, align 8, !dbg !3553, !tbaa !1547
  %tobool15 = icmp ne i64 %17, 0, !dbg !3553
  br i1 %tobool15, label %land.lhs.true16, label %if.end21, !dbg !3555

land.lhs.true16:                                  ; preds = %if.end14
  %18 = load i64, ptr %kind_from, align 8, !dbg !3556, !tbaa !1547
  %19 = load ptr, ptr %dist, align 8, !dbg !3557, !tbaa !777
  %kind17 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %19, i32 0, i32 7, !dbg !3558
  %20 = load i64, ptr %kind17, align 8, !dbg !3558, !tbaa !1175
  %and18 = and i64 %18, %20, !dbg !3559
  %tobool19 = icmp ne i64 %and18, 0, !dbg !3559
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !3560

if.then20:                                        ; preds = %land.lhs.true16
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup36, !dbg !3561

if.end21:                                         ; preds = %land.lhs.true16, %if.end14
  %21 = load i64, ptr %kind_means, align 8, !dbg !3562, !tbaa !1547
  %tobool22 = icmp ne i64 %21, 0, !dbg !3562
  br i1 %tobool22, label %land.lhs.true23, label %if.end28, !dbg !3564

land.lhs.true23:                                  ; preds = %if.end21
  %22 = load i64, ptr %kind_means, align 8, !dbg !3565, !tbaa !1547
  %23 = load ptr, ptr %dist, align 8, !dbg !3566, !tbaa !777
  %kind24 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %23, i32 0, i32 7, !dbg !3567
  %24 = load i64, ptr %kind24, align 8, !dbg !3567, !tbaa !1175
  %and25 = and i64 %22, %24, !dbg !3568
  %tobool26 = icmp ne i64 %and25, 0, !dbg !3568
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !3569

if.then27:                                        ; preds = %land.lhs.true23
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup36, !dbg !3570

if.end28:                                         ; preds = %land.lhs.true23, %if.end21
  %25 = load i32, ptr %nr, align 4, !dbg !3571, !tbaa !1051
  %26 = load ptr, ptr %nrp.addr, align 8, !dbg !3572, !tbaa !777
  %27 = load i32, ptr %26, align 4, !dbg !3573, !tbaa !1051
  %cmp29 = icmp ult i32 %25, %27, !dbg !3574
  br i1 %cmp29, label %if.then30, label %if.end35, !dbg !3575

if.then30:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 8, ptr %distances) #15, !dbg !3576
  tail call void @llvm.dbg.declare(metadata ptr %distances, metadata !3492, metadata !DIExpression()), !dbg !3577
  %28 = load ptr, ptr %topology.addr, align 8, !dbg !3578, !tbaa !777
  %29 = load ptr, ptr %dist, align 8, !dbg !3579, !tbaa !777
  %call31 = call ptr @hwloc_distances_get_one(ptr noundef %28, ptr noundef %29), !dbg !3580
  store ptr %call31, ptr %distances, align 8, !dbg !3577, !tbaa !777
  %30 = load ptr, ptr %distances, align 8, !dbg !3581, !tbaa !777
  %tobool32 = icmp ne ptr %30, null, !dbg !3581
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !3583

if.then33:                                        ; preds = %if.then30
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3584

if.end34:                                         ; preds = %if.then30
  %31 = load ptr, ptr %distances, align 8, !dbg !3585, !tbaa !777
  %32 = load ptr, ptr %distancesp.addr, align 8, !dbg !3586, !tbaa !777
  %33 = load i32, ptr %nr, align 4, !dbg !3587, !tbaa !1051
  %idxprom = zext i32 %33 to i64, !dbg !3586
  %arrayidx = getelementptr inbounds ptr, ptr %32, i64 %idxprom, !dbg !3586
  store ptr %31, ptr %arrayidx, align 8, !dbg !3588, !tbaa !777
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3589
  br label %cleanup, !dbg !3589

cleanup:                                          ; preds = %if.then33, %if.end34
  call void @llvm.lifetime.end.p0(i64 8, ptr %distances) #15, !dbg !3589
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup36 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end35, !dbg !3590

if.end35:                                         ; preds = %cleanup.cont, %if.end28
  %34 = load i32, ptr %nr, align 4, !dbg !3591, !tbaa !1051
  %inc = add i32 %34, 1, !dbg !3591
  store i32 %inc, ptr %nr, align 4, !dbg !3591, !tbaa !1051
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3592
  br label %cleanup36, !dbg !3592

cleanup36:                                        ; preds = %if.end35, %cleanup, %if.then27, %if.then20, %if.then13, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %kind_means) #15, !dbg !3592
  call void @llvm.lifetime.end.p0(i64 8, ptr %kind_from) #15, !dbg !3592
  %cleanup.dest38 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest38, label %cleanup56 [
    i32 0, label %cleanup.cont39
    i32 4, label %for.inc
    i32 5, label %error
  ]

cleanup.cont39:                                   ; preds = %cleanup36
  br label %for.inc, !dbg !3593

for.inc:                                          ; preds = %cleanup.cont39, %cleanup36
  %35 = load ptr, ptr %dist, align 8, !dbg !3594, !tbaa !777
  %next = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %35, i32 0, i32 11, !dbg !3595
  %36 = load ptr, ptr %next, align 8, !dbg !3595, !tbaa !975
  store ptr %36, ptr %dist, align 8, !dbg !3596, !tbaa !777
  br label %for.cond, !dbg !3597, !llvm.loop !3598

for.end:                                          ; preds = %for.cond
  %37 = load i32, ptr %nr, align 4, !dbg !3600, !tbaa !1051
  store i32 %37, ptr %i, align 4, !dbg !3602, !tbaa !1051
  br label %for.cond40, !dbg !3603

for.cond40:                                       ; preds = %for.inc45, %for.end
  %38 = load i32, ptr %i, align 4, !dbg !3604, !tbaa !1051
  %39 = load ptr, ptr %nrp.addr, align 8, !dbg !3606, !tbaa !777
  %40 = load i32, ptr %39, align 4, !dbg !3607, !tbaa !1051
  %cmp41 = icmp ult i32 %38, %40, !dbg !3608
  br i1 %cmp41, label %for.body42, label %for.end47, !dbg !3609

for.body42:                                       ; preds = %for.cond40
  %41 = load ptr, ptr %distancesp.addr, align 8, !dbg !3610, !tbaa !777
  %42 = load i32, ptr %i, align 4, !dbg !3611, !tbaa !1051
  %idxprom43 = zext i32 %42 to i64, !dbg !3610
  %arrayidx44 = getelementptr inbounds ptr, ptr %41, i64 %idxprom43, !dbg !3610
  store ptr null, ptr %arrayidx44, align 8, !dbg !3612, !tbaa !777
  br label %for.inc45, !dbg !3610

for.inc45:                                        ; preds = %for.body42
  %43 = load i32, ptr %i, align 4, !dbg !3613, !tbaa !1051
  %inc46 = add i32 %43, 1, !dbg !3613
  store i32 %inc46, ptr %i, align 4, !dbg !3613, !tbaa !1051
  br label %for.cond40, !dbg !3614, !llvm.loop !3615

for.end47:                                        ; preds = %for.cond40
  %44 = load i32, ptr %nr, align 4, !dbg !3617, !tbaa !1051
  %45 = load ptr, ptr %nrp.addr, align 8, !dbg !3618, !tbaa !777
  store i32 %44, ptr %45, align 4, !dbg !3619, !tbaa !1051
  store i32 0, ptr %retval, align 4, !dbg !3620
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup56, !dbg !3620

error:                                            ; preds = %cleanup36
  tail call void @llvm.dbg.label(metadata !3495), !dbg !3621
  store i32 0, ptr %i, align 4, !dbg !3622, !tbaa !1051
  br label %for.cond48, !dbg !3624

for.cond48:                                       ; preds = %for.inc53, %error
  %46 = load i32, ptr %i, align 4, !dbg !3625, !tbaa !1051
  %47 = load i32, ptr %nr, align 4, !dbg !3627, !tbaa !1051
  %cmp49 = icmp ult i32 %46, %47, !dbg !3628
  br i1 %cmp49, label %for.body50, label %for.end55, !dbg !3629

for.body50:                                       ; preds = %for.cond48
  %48 = load ptr, ptr %topology.addr, align 8, !dbg !3630, !tbaa !777
  %49 = load ptr, ptr %distancesp.addr, align 8, !dbg !3631, !tbaa !777
  %50 = load i32, ptr %i, align 4, !dbg !3632, !tbaa !1051
  %idxprom51 = zext i32 %50 to i64, !dbg !3631
  %arrayidx52 = getelementptr inbounds ptr, ptr %49, i64 %idxprom51, !dbg !3631
  %51 = load ptr, ptr %arrayidx52, align 8, !dbg !3631, !tbaa !777
  call void @hwloc_distances_release(ptr noundef %48, ptr noundef %51), !dbg !3633
  br label %for.inc53, !dbg !3633

for.inc53:                                        ; preds = %for.body50
  %52 = load i32, ptr %i, align 4, !dbg !3634, !tbaa !1051
  %inc54 = add i32 %52, 1, !dbg !3634
  store i32 %inc54, ptr %i, align 4, !dbg !3634, !tbaa !1051
  br label %for.cond48, !dbg !3635, !llvm.loop !3636

for.end55:                                        ; preds = %for.cond48
  store i32 -1, ptr %retval, align 4, !dbg !3638
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup56, !dbg !3638

cleanup56:                                        ; preds = %for.end55, %for.end47, %cleanup36, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !3639
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr) #15, !dbg !3639
  call void @llvm.lifetime.end.p0(i64 8, ptr %dist) #15, !dbg !3639
  %53 = load i32, ptr %retval, align 4, !dbg !3639
  ret i32 %53, !dbg !3639
}

; Function Attrs: nounwind uwtable
define i32 @hwloc_distances_get_by_depth(ptr noundef %topology, i32 noundef %depth, ptr noundef %nrp, ptr noundef %distancesp, i64 noundef %kind, i64 noundef %flags) #0 !dbg !3640 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %depth.addr = alloca i32, align 4
  %nrp.addr = alloca ptr, align 8
  %distancesp.addr = alloca ptr, align 8
  %kind.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3644, metadata !DIExpression()), !dbg !3651
  store i32 %depth, ptr %depth.addr, align 4, !tbaa !1051
  tail call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !3645, metadata !DIExpression()), !dbg !3652
  store ptr %nrp, ptr %nrp.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %nrp.addr, metadata !3646, metadata !DIExpression()), !dbg !3653
  store ptr %distancesp, ptr %distancesp.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %distancesp.addr, metadata !3647, metadata !DIExpression()), !dbg !3654
  store i64 %kind, ptr %kind.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %kind.addr, metadata !3648, metadata !DIExpression()), !dbg !3655
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3649, metadata !DIExpression()), !dbg !3656
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #15, !dbg !3657
  tail call void @llvm.dbg.declare(metadata ptr %type, metadata !3650, metadata !DIExpression()), !dbg !3658
  %0 = load i64, ptr %flags.addr, align 8, !dbg !3659, !tbaa !1547
  %tobool = icmp ne i64 %0, 0, !dbg !3659
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3661

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !3662, !tbaa !777
  %is_loaded = getelementptr inbounds %struct.hwloc_topology, ptr %1, i32 0, i32 9, !dbg !3663
  %2 = load i32, ptr %is_loaded, align 4, !dbg !3663, !tbaa !1284
  %tobool1 = icmp ne i32 %2, 0, !dbg !3662
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3664

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call ptr @__errno_location() #18, !dbg !3665
  store i32 22, ptr %call, align 4, !dbg !3667, !tbaa !1051
  store i32 -1, ptr %retval, align 4, !dbg !3668
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3668

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %topology.addr, align 8, !dbg !3669, !tbaa !777
  %4 = load i32, ptr %depth.addr, align 4, !dbg !3670, !tbaa !1051
  %call2 = call i32 @hwloc_get_depth_type(ptr noundef %3, i32 noundef %4) #16, !dbg !3671
  store i32 %call2, ptr %type, align 4, !dbg !3672, !tbaa !818
  %5 = load i32, ptr %type, align 4, !dbg !3673, !tbaa !818
  %cmp = icmp eq i32 %5, -1, !dbg !3675
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !3676

if.then3:                                         ; preds = %if.end
  %call4 = call ptr @__errno_location() #18, !dbg !3677
  store i32 22, ptr %call4, align 4, !dbg !3679, !tbaa !1051
  store i32 -1, ptr %retval, align 4, !dbg !3680
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3680

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %topology.addr, align 8, !dbg !3681, !tbaa !777
  %7 = load i32, ptr %type, align 4, !dbg !3682, !tbaa !818
  %8 = load ptr, ptr %nrp.addr, align 8, !dbg !3683, !tbaa !777
  %9 = load ptr, ptr %distancesp.addr, align 8, !dbg !3684, !tbaa !777
  %10 = load i64, ptr %kind.addr, align 8, !dbg !3685, !tbaa !1547
  %11 = load i64, ptr %flags.addr, align 8, !dbg !3686, !tbaa !1547
  %call6 = call i32 @hwloc__distances_get(ptr noundef %6, ptr noundef null, i32 noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef %10, i64 noundef %11), !dbg !3687
  store i32 %call6, ptr %retval, align 4, !dbg !3688
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3688

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #15, !dbg !3689
  %12 = load i32, ptr %retval, align 4, !dbg !3689
  ret i32 %12, !dbg !3689
}

; Function Attrs: nounwind uwtable
define i32 @hwloc_distances_get_by_name(ptr noundef %topology, ptr noundef %name, ptr noundef %nrp, ptr noundef %distancesp, i64 noundef %flags) #0 !dbg !3690 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %nrp.addr = alloca ptr, align 8
  %distancesp.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3694, metadata !DIExpression()), !dbg !3699
  store ptr %name, ptr %name.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !3695, metadata !DIExpression()), !dbg !3700
  store ptr %nrp, ptr %nrp.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %nrp.addr, metadata !3696, metadata !DIExpression()), !dbg !3701
  store ptr %distancesp, ptr %distancesp.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %distancesp.addr, metadata !3697, metadata !DIExpression()), !dbg !3702
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3698, metadata !DIExpression()), !dbg !3703
  %0 = load i64, ptr %flags.addr, align 8, !dbg !3704, !tbaa !1547
  %tobool = icmp ne i64 %0, 0, !dbg !3704
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3706

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !3707, !tbaa !777
  %is_loaded = getelementptr inbounds %struct.hwloc_topology, ptr %1, i32 0, i32 9, !dbg !3708
  %2 = load i32, ptr %is_loaded, align 4, !dbg !3708, !tbaa !1284
  %tobool1 = icmp ne i32 %2, 0, !dbg !3707
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3709

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call ptr @__errno_location() #18, !dbg !3710
  store i32 22, ptr %call, align 4, !dbg !3712, !tbaa !1051
  store i32 -1, ptr %retval, align 4, !dbg !3713
  br label %return, !dbg !3713

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %topology.addr, align 8, !dbg !3714, !tbaa !777
  %4 = load ptr, ptr %name.addr, align 8, !dbg !3715, !tbaa !777
  %5 = load ptr, ptr %nrp.addr, align 8, !dbg !3716, !tbaa !777
  %6 = load ptr, ptr %distancesp.addr, align 8, !dbg !3717, !tbaa !777
  %7 = load i64, ptr %flags.addr, align 8, !dbg !3718, !tbaa !1547
  %call2 = call i32 @hwloc__distances_get(ptr noundef %3, ptr noundef %4, i32 noundef -1, ptr noundef %5, ptr noundef %6, i64 noundef 31, i64 noundef %7), !dbg !3719
  store i32 %call2, ptr %retval, align 4, !dbg !3720
  br label %return, !dbg !3720

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !3721
  ret i32 %8, !dbg !3721
}

; Function Attrs: nounwind uwtable
define i32 @hwloc_distances_get_by_type(ptr noundef %topology, i32 noundef %type, ptr noundef %nrp, ptr noundef %distancesp, i64 noundef %kind, i64 noundef %flags) #0 !dbg !3722 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %nrp.addr = alloca ptr, align 8
  %distancesp.addr = alloca ptr, align 8
  %kind.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3726, metadata !DIExpression()), !dbg !3732
  store i32 %type, ptr %type.addr, align 4, !tbaa !818
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3727, metadata !DIExpression()), !dbg !3733
  store ptr %nrp, ptr %nrp.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %nrp.addr, metadata !3728, metadata !DIExpression()), !dbg !3734
  store ptr %distancesp, ptr %distancesp.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %distancesp.addr, metadata !3729, metadata !DIExpression()), !dbg !3735
  store i64 %kind, ptr %kind.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %kind.addr, metadata !3730, metadata !DIExpression()), !dbg !3736
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3731, metadata !DIExpression()), !dbg !3737
  %0 = load i64, ptr %flags.addr, align 8, !dbg !3738, !tbaa !1547
  %tobool = icmp ne i64 %0, 0, !dbg !3738
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3740

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !3741, !tbaa !777
  %is_loaded = getelementptr inbounds %struct.hwloc_topology, ptr %1, i32 0, i32 9, !dbg !3742
  %2 = load i32, ptr %is_loaded, align 4, !dbg !3742, !tbaa !1284
  %tobool1 = icmp ne i32 %2, 0, !dbg !3741
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3743

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call ptr @__errno_location() #18, !dbg !3744
  store i32 22, ptr %call, align 4, !dbg !3746, !tbaa !1051
  store i32 -1, ptr %retval, align 4, !dbg !3747
  br label %return, !dbg !3747

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %topology.addr, align 8, !dbg !3748, !tbaa !777
  %4 = load i32, ptr %type.addr, align 4, !dbg !3749, !tbaa !818
  %5 = load ptr, ptr %nrp.addr, align 8, !dbg !3750, !tbaa !777
  %6 = load ptr, ptr %distancesp.addr, align 8, !dbg !3751, !tbaa !777
  %7 = load i64, ptr %kind.addr, align 8, !dbg !3752, !tbaa !1547
  %8 = load i64, ptr %flags.addr, align 8, !dbg !3753, !tbaa !1547
  %call2 = call i32 @hwloc__distances_get(ptr noundef %3, ptr noundef null, i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8), !dbg !3754
  store i32 %call2, ptr %retval, align 4, !dbg !3755
  br label %return, !dbg !3755

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !3756
  ret i32 %9, !dbg !3756
}

; Function Attrs: nounwind uwtable
define i32 @hwloc_distances_transform(ptr noundef %topology, ptr noundef %distances, i32 noundef %transform, ptr noundef %transform_attr, i64 noundef %flags) #0 !dbg !3757 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %distances.addr = alloca ptr, align 8
  %transform.addr = alloca i32, align 4
  %transform_attr.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %err = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3761, metadata !DIExpression()), !dbg !3769
  store ptr %distances, ptr %distances.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %distances.addr, metadata !3762, metadata !DIExpression()), !dbg !3770
  store i32 %transform, ptr %transform.addr, align 4, !tbaa !818
  tail call void @llvm.dbg.declare(metadata ptr %transform.addr, metadata !3763, metadata !DIExpression()), !dbg !3771
  store ptr %transform_attr, ptr %transform_attr.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %transform_attr.addr, metadata !3764, metadata !DIExpression()), !dbg !3772
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3765, metadata !DIExpression()), !dbg !3773
  %0 = load i64, ptr %flags.addr, align 8, !dbg !3774, !tbaa !1547
  %tobool = icmp ne i64 %0, 0, !dbg !3774
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3776

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %transform_attr.addr, align 8, !dbg !3777, !tbaa !777
  %tobool1 = icmp ne ptr %1, null, !dbg !3777
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3778

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call ptr @__errno_location() #18, !dbg !3779
  store i32 22, ptr %call, align 4, !dbg !3781, !tbaa !1051
  store i32 -1, ptr %retval, align 4, !dbg !3782
  br label %return, !dbg !3782

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr %transform.addr, align 4, !dbg !3783, !tbaa !818
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb11
  ], !dbg !3784

sw.bb:                                            ; preds = %if.end
  %3 = load ptr, ptr %distances.addr, align 8, !dbg !3785, !tbaa !777
  %call2 = call i32 @hwloc__distances_transform_remove_null(ptr noundef %3), !dbg !3786
  store i32 %call2, ptr %retval, align 4, !dbg !3787
  br label %return, !dbg !3787

sw.bb3:                                           ; preds = %if.end
  %4 = load ptr, ptr %distances.addr, align 8, !dbg !3788, !tbaa !777
  %call4 = call i32 @hwloc__distances_transform_links(ptr noundef %4), !dbg !3789
  store i32 %call4, ptr %retval, align 4, !dbg !3790
  br label %return, !dbg !3790

sw.bb5:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !3791
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !3766, metadata !DIExpression()), !dbg !3792
  %5 = load ptr, ptr %topology.addr, align 8, !dbg !3793, !tbaa !777
  %6 = load ptr, ptr %distances.addr, align 8, !dbg !3794, !tbaa !777
  %call6 = call i32 @hwloc__distances_transform_merge_switch_ports(ptr noundef %5, ptr noundef %6), !dbg !3795
  store i32 %call6, ptr %err, align 4, !dbg !3796, !tbaa !1051
  %7 = load i32, ptr %err, align 4, !dbg !3797, !tbaa !1051
  %tobool7 = icmp ne i32 %7, 0, !dbg !3797
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !3799

if.then8:                                         ; preds = %sw.bb5
  %8 = load ptr, ptr %distances.addr, align 8, !dbg !3800, !tbaa !777
  %call9 = call i32 @hwloc__distances_transform_remove_null(ptr noundef %8), !dbg !3801
  store i32 %call9, ptr %err, align 4, !dbg !3802, !tbaa !1051
  br label %if.end10, !dbg !3803

if.end10:                                         ; preds = %if.then8, %sw.bb5
  %9 = load i32, ptr %err, align 4, !dbg !3804, !tbaa !1051
  store i32 %9, ptr %retval, align 4, !dbg !3805
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !3806
  br label %return

sw.bb11:                                          ; preds = %if.end
  %10 = load ptr, ptr %topology.addr, align 8, !dbg !3807, !tbaa !777
  %11 = load ptr, ptr %distances.addr, align 8, !dbg !3808, !tbaa !777
  %call12 = call i32 @hwloc__distances_transform_transitive_closure(ptr noundef %10, ptr noundef %11), !dbg !3809
  store i32 %call12, ptr %retval, align 4, !dbg !3810
  br label %return, !dbg !3810

sw.default:                                       ; preds = %if.end
  %call13 = call ptr @__errno_location() #18, !dbg !3811
  store i32 22, ptr %call13, align 4, !dbg !3812, !tbaa !1051
  store i32 -1, ptr %retval, align 4, !dbg !3813
  br label %return, !dbg !3813

return:                                           ; preds = %sw.default, %sw.bb11, %if.end10, %sw.bb3, %sw.bb, %if.then
  %12 = load i32, ptr %retval, align 4, !dbg !3814
  ret i32 %12, !dbg !3814
}

; Function Attrs: nounwind uwtable
define internal i32 @hwloc__distances_transform_remove_null(ptr noundef %distances) #0 !dbg !3815 {
entry:
  %retval = alloca i32, align 4
  %distances.addr = alloca ptr, align 8
  %values = alloca ptr, align 8
  %objs = alloca ptr, align 8
  %i = alloca i32, align 4
  %nb = alloca i32, align 4
  %nbobjs = alloca i32, align 4
  %unique_type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %distances, ptr %distances.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %distances.addr, metadata !3819, metadata !DIExpression()), !dbg !3826
  call void @llvm.lifetime.start.p0(i64 8, ptr %values) #15, !dbg !3827
  tail call void @llvm.dbg.declare(metadata ptr %values, metadata !3820, metadata !DIExpression()), !dbg !3828
  %0 = load ptr, ptr %distances.addr, align 8, !dbg !3829, !tbaa !777
  %values1 = getelementptr inbounds %struct.hwloc_distances_s, ptr %0, i32 0, i32 3, !dbg !3830
  %1 = load ptr, ptr %values1, align 8, !dbg !3830, !tbaa !1524
  store ptr %1, ptr %values, align 8, !dbg !3828, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 8, ptr %objs) #15, !dbg !3831
  tail call void @llvm.dbg.declare(metadata ptr %objs, metadata !3821, metadata !DIExpression()), !dbg !3832
  %2 = load ptr, ptr %distances.addr, align 8, !dbg !3833, !tbaa !777
  %objs2 = getelementptr inbounds %struct.hwloc_distances_s, ptr %2, i32 0, i32 1, !dbg !3834
  %3 = load ptr, ptr %objs2, align 8, !dbg !3834, !tbaa !1528
  store ptr %3, ptr %objs, align 8, !dbg !3832, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !3835
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3822, metadata !DIExpression()), !dbg !3836
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb) #15, !dbg !3835
  tail call void @llvm.dbg.declare(metadata ptr %nb, metadata !3823, metadata !DIExpression()), !dbg !3837
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbobjs) #15, !dbg !3835
  tail call void @llvm.dbg.declare(metadata ptr %nbobjs, metadata !3824, metadata !DIExpression()), !dbg !3838
  %4 = load ptr, ptr %distances.addr, align 8, !dbg !3839, !tbaa !777
  %nbobjs3 = getelementptr inbounds %struct.hwloc_distances_s, ptr %4, i32 0, i32 0, !dbg !3840
  %5 = load i32, ptr %nbobjs3, align 8, !dbg !3840, !tbaa !3841
  store i32 %5, ptr %nbobjs, align 4, !dbg !3838, !tbaa !1051
  call void @llvm.lifetime.start.p0(i64 4, ptr %unique_type) #15, !dbg !3842
  tail call void @llvm.dbg.declare(metadata ptr %unique_type, metadata !3825, metadata !DIExpression()), !dbg !3843
  store i32 0, ptr %i, align 4, !dbg !3844, !tbaa !1051
  store i32 0, ptr %nb, align 4, !dbg !3846, !tbaa !1051
  br label %for.cond, !dbg !3847

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %i, align 4, !dbg !3848, !tbaa !1051
  %7 = load i32, ptr %nbobjs, align 4, !dbg !3850, !tbaa !1051
  %cmp = icmp ult i32 %6, %7, !dbg !3851
  br i1 %cmp, label %for.body, label %for.end, !dbg !3852

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %objs, align 8, !dbg !3853, !tbaa !777
  %9 = load i32, ptr %i, align 4, !dbg !3855, !tbaa !1051
  %idxprom = zext i32 %9 to i64, !dbg !3853
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom, !dbg !3853
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !3853, !tbaa !777
  %tobool = icmp ne ptr %10, null, !dbg !3853
  br i1 %tobool, label %if.then, label %if.end, !dbg !3856

if.then:                                          ; preds = %for.body
  %11 = load i32, ptr %nb, align 4, !dbg !3857, !tbaa !1051
  %inc = add i32 %11, 1, !dbg !3857
  store i32 %inc, ptr %nb, align 4, !dbg !3857, !tbaa !1051
  br label %if.end, !dbg !3858

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !3859

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4, !dbg !3860, !tbaa !1051
  %inc4 = add i32 %12, 1, !dbg !3860
  store i32 %inc4, ptr %i, align 4, !dbg !3860, !tbaa !1051
  br label %for.cond, !dbg !3861, !llvm.loop !3862

for.end:                                          ; preds = %for.cond
  %13 = load i32, ptr %nb, align 4, !dbg !3864, !tbaa !1051
  %cmp5 = icmp ult i32 %13, 2, !dbg !3866
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !3867

if.then6:                                         ; preds = %for.end
  %call = call ptr @__errno_location() #18, !dbg !3868
  store i32 22, ptr %call, align 4, !dbg !3870, !tbaa !1051
  store i32 -1, ptr %retval, align 4, !dbg !3871
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3871

if.end7:                                          ; preds = %for.end
  %14 = load i32, ptr %nb, align 4, !dbg !3872, !tbaa !1051
  %15 = load i32, ptr %nbobjs, align 4, !dbg !3874, !tbaa !1051
  %cmp8 = icmp eq i32 %14, %15, !dbg !3875
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !3876

if.then9:                                         ; preds = %if.end7
  store i32 0, ptr %retval, align 4, !dbg !3877
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3877

if.end10:                                         ; preds = %if.end7
  %16 = load ptr, ptr %objs, align 8, !dbg !3878, !tbaa !777
  %17 = load ptr, ptr %values, align 8, !dbg !3879, !tbaa !777
  %18 = load i32, ptr %nbobjs, align 4, !dbg !3880, !tbaa !1051
  %19 = load i32, ptr %nbobjs, align 4, !dbg !3881, !tbaa !1051
  %20 = load i32, ptr %nb, align 4, !dbg !3882, !tbaa !1051
  %sub = sub i32 %19, %20, !dbg !3883
  call void @hwloc_internal_distances_restrict(ptr noundef %16, ptr noundef null, ptr noundef null, ptr noundef %17, i32 noundef %18, i32 noundef %sub), !dbg !3884
  %21 = load i32, ptr %nb, align 4, !dbg !3885, !tbaa !1051
  %22 = load ptr, ptr %distances.addr, align 8, !dbg !3886, !tbaa !777
  %nbobjs11 = getelementptr inbounds %struct.hwloc_distances_s, ptr %22, i32 0, i32 0, !dbg !3887
  store i32 %21, ptr %nbobjs11, align 8, !dbg !3888, !tbaa !3841
  %23 = load ptr, ptr %objs, align 8, !dbg !3889, !tbaa !777
  %arrayidx12 = getelementptr inbounds ptr, ptr %23, i64 0, !dbg !3889
  %24 = load ptr, ptr %arrayidx12, align 8, !dbg !3889, !tbaa !777
  %type = getelementptr inbounds %struct.hwloc_obj, ptr %24, i32 0, i32 0, !dbg !3890
  %25 = load i32, ptr %type, align 8, !dbg !3890, !tbaa !1756
  store i32 %25, ptr %unique_type, align 4, !dbg !3891, !tbaa !818
  store i32 1, ptr %i, align 4, !dbg !3892, !tbaa !1051
  br label %for.cond13, !dbg !3894

for.cond13:                                       ; preds = %for.inc22, %if.end10
  %26 = load i32, ptr %i, align 4, !dbg !3895, !tbaa !1051
  %27 = load i32, ptr %nb, align 4, !dbg !3897, !tbaa !1051
  %cmp14 = icmp ult i32 %26, %27, !dbg !3898
  br i1 %cmp14, label %for.body15, label %for.end24, !dbg !3899

for.body15:                                       ; preds = %for.cond13
  %28 = load ptr, ptr %objs, align 8, !dbg !3900, !tbaa !777
  %29 = load i32, ptr %i, align 4, !dbg !3902, !tbaa !1051
  %idxprom16 = zext i32 %29 to i64, !dbg !3900
  %arrayidx17 = getelementptr inbounds ptr, ptr %28, i64 %idxprom16, !dbg !3900
  %30 = load ptr, ptr %arrayidx17, align 8, !dbg !3900, !tbaa !777
  %type18 = getelementptr inbounds %struct.hwloc_obj, ptr %30, i32 0, i32 0, !dbg !3903
  %31 = load i32, ptr %type18, align 8, !dbg !3903, !tbaa !1756
  %32 = load i32, ptr %unique_type, align 4, !dbg !3904, !tbaa !818
  %cmp19 = icmp ne i32 %31, %32, !dbg !3905
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !3906

if.then20:                                        ; preds = %for.body15
  store i32 -1, ptr %unique_type, align 4, !dbg !3907, !tbaa !818
  br label %for.end24, !dbg !3909

if.end21:                                         ; preds = %for.body15
  br label %for.inc22, !dbg !3904

for.inc22:                                        ; preds = %if.end21
  %33 = load i32, ptr %i, align 4, !dbg !3910, !tbaa !1051
  %inc23 = add i32 %33, 1, !dbg !3910
  store i32 %inc23, ptr %i, align 4, !dbg !3910, !tbaa !1051
  br label %for.cond13, !dbg !3911, !llvm.loop !3912

for.end24:                                        ; preds = %if.then20, %for.cond13
  %34 = load i32, ptr %unique_type, align 4, !dbg !3914, !tbaa !818
  %cmp25 = icmp eq i32 %34, -1, !dbg !3916
  br i1 %cmp25, label %if.then26, label %if.else, !dbg !3917

if.then26:                                        ; preds = %for.end24
  %35 = load ptr, ptr %distances.addr, align 8, !dbg !3918, !tbaa !777
  %kind = getelementptr inbounds %struct.hwloc_distances_s, ptr %35, i32 0, i32 2, !dbg !3919
  %36 = load i64, ptr %kind, align 8, !dbg !3920, !tbaa !3921
  %or = or i64 %36, 16, !dbg !3920
  store i64 %or, ptr %kind, align 8, !dbg !3920, !tbaa !3921
  br label %if.end28, !dbg !3918

if.else:                                          ; preds = %for.end24
  %37 = load ptr, ptr %distances.addr, align 8, !dbg !3922, !tbaa !777
  %kind27 = getelementptr inbounds %struct.hwloc_distances_s, ptr %37, i32 0, i32 2, !dbg !3923
  %38 = load i64, ptr %kind27, align 8, !dbg !3924, !tbaa !3921
  %and = and i64 %38, -17, !dbg !3924
  store i64 %and, ptr %kind27, align 8, !dbg !3924, !tbaa !3921
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then26
  store i32 0, ptr %retval, align 4, !dbg !3925
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3925

cleanup:                                          ; preds = %if.end28, %if.then9, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %unique_type) #15, !dbg !3926
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbobjs) #15, !dbg !3926
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #15, !dbg !3926
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !3926
  call void @llvm.lifetime.end.p0(i64 8, ptr %objs) #15, !dbg !3926
  call void @llvm.lifetime.end.p0(i64 8, ptr %values) #15, !dbg !3926
  %39 = load i32, ptr %retval, align 4, !dbg !3926
  ret i32 %39, !dbg !3926
}

; Function Attrs: nounwind uwtable
define internal i32 @hwloc__distances_transform_links(ptr noundef %distances) #0 !dbg !3927 {
entry:
  %retval = alloca i32, align 4
  %distances.addr = alloca ptr, align 8
  %divider = alloca i64, align 8
  %values = alloca ptr, align 8
  %i = alloca i32, align 4
  %nbobjs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %distances, ptr %distances.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %distances.addr, metadata !3929, metadata !DIExpression()), !dbg !3934
  call void @llvm.lifetime.start.p0(i64 8, ptr %divider) #15, !dbg !3935
  tail call void @llvm.dbg.declare(metadata ptr %divider, metadata !3930, metadata !DIExpression()), !dbg !3936
  call void @llvm.lifetime.start.p0(i64 8, ptr %values) #15, !dbg !3935
  tail call void @llvm.dbg.declare(metadata ptr %values, metadata !3931, metadata !DIExpression()), !dbg !3937
  %0 = load ptr, ptr %distances.addr, align 8, !dbg !3938, !tbaa !777
  %values1 = getelementptr inbounds %struct.hwloc_distances_s, ptr %0, i32 0, i32 3, !dbg !3939
  %1 = load ptr, ptr %values1, align 8, !dbg !3939, !tbaa !1524
  store ptr %1, ptr %values, align 8, !dbg !3937, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !3940
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3932, metadata !DIExpression()), !dbg !3941
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbobjs) #15, !dbg !3940
  tail call void @llvm.dbg.declare(metadata ptr %nbobjs, metadata !3933, metadata !DIExpression()), !dbg !3942
  %2 = load ptr, ptr %distances.addr, align 8, !dbg !3943, !tbaa !777
  %nbobjs2 = getelementptr inbounds %struct.hwloc_distances_s, ptr %2, i32 0, i32 0, !dbg !3944
  %3 = load i32, ptr %nbobjs2, align 8, !dbg !3944, !tbaa !3841
  store i32 %3, ptr %nbobjs, align 4, !dbg !3942, !tbaa !1051
  %4 = load ptr, ptr %distances.addr, align 8, !dbg !3945, !tbaa !777
  %kind = getelementptr inbounds %struct.hwloc_distances_s, ptr %4, i32 0, i32 2, !dbg !3947
  %5 = load i64, ptr %kind, align 8, !dbg !3947, !tbaa !3921
  %and = and i64 %5, 8, !dbg !3948
  %tobool = icmp ne i64 %and, 0, !dbg !3948
  br i1 %tobool, label %if.end, label %if.then, !dbg !3949

if.then:                                          ; preds = %entry
  %call = call ptr @__errno_location() #18, !dbg !3950
  store i32 22, ptr %call, align 4, !dbg !3952, !tbaa !1051
  store i32 -1, ptr %retval, align 4, !dbg !3953
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3953

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !3954, !tbaa !1051
  br label %for.cond, !dbg !3956

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4, !dbg !3957, !tbaa !1051
  %7 = load i32, ptr %nbobjs, align 4, !dbg !3959, !tbaa !1051
  %cmp = icmp ult i32 %6, %7, !dbg !3960
  br i1 %cmp, label %for.body, label %for.end, !dbg !3961

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %values, align 8, !dbg !3962, !tbaa !777
  %9 = load i32, ptr %i, align 4, !dbg !3963, !tbaa !1051
  %10 = load i32, ptr %nbobjs, align 4, !dbg !3964, !tbaa !1051
  %mul = mul i32 %9, %10, !dbg !3965
  %11 = load i32, ptr %i, align 4, !dbg !3966, !tbaa !1051
  %add = add i32 %mul, %11, !dbg !3967
  %idxprom = zext i32 %add to i64, !dbg !3962
  %arrayidx = getelementptr inbounds i64, ptr %8, i64 %idxprom, !dbg !3962
  store i64 0, ptr %arrayidx, align 8, !dbg !3968, !tbaa !1547
  br label %for.inc, !dbg !3962

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !3969, !tbaa !1051
  %inc = add i32 %12, 1, !dbg !3969
  store i32 %inc, ptr %i, align 4, !dbg !3969, !tbaa !1051
  br label %for.cond, !dbg !3970, !llvm.loop !3971

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %divider, align 8, !dbg !3973, !tbaa !1547
  store i32 0, ptr %i, align 4, !dbg !3974, !tbaa !1051
  br label %for.cond3, !dbg !3976

for.cond3:                                        ; preds = %for.inc18, %for.end
  %13 = load i32, ptr %i, align 4, !dbg !3977, !tbaa !1051
  %14 = load i32, ptr %nbobjs, align 4, !dbg !3979, !tbaa !1051
  %15 = load i32, ptr %nbobjs, align 4, !dbg !3980, !tbaa !1051
  %mul4 = mul i32 %14, %15, !dbg !3981
  %cmp5 = icmp ult i32 %13, %mul4, !dbg !3982
  br i1 %cmp5, label %for.body6, label %for.end20, !dbg !3983

for.body6:                                        ; preds = %for.cond3
  %16 = load ptr, ptr %values, align 8, !dbg !3984, !tbaa !777
  %17 = load i32, ptr %i, align 4, !dbg !3986, !tbaa !1051
  %idxprom7 = zext i32 %17 to i64, !dbg !3984
  %arrayidx8 = getelementptr inbounds i64, ptr %16, i64 %idxprom7, !dbg !3984
  %18 = load i64, ptr %arrayidx8, align 8, !dbg !3984, !tbaa !1547
  %tobool9 = icmp ne i64 %18, 0, !dbg !3984
  br i1 %tobool9, label %land.lhs.true, label %if.end17, !dbg !3987

land.lhs.true:                                    ; preds = %for.body6
  %19 = load i64, ptr %divider, align 8, !dbg !3988, !tbaa !1547
  %tobool10 = icmp ne i64 %19, 0, !dbg !3988
  br i1 %tobool10, label %lor.lhs.false, label %if.then14, !dbg !3989

lor.lhs.false:                                    ; preds = %land.lhs.true
  %20 = load ptr, ptr %values, align 8, !dbg !3990, !tbaa !777
  %21 = load i32, ptr %i, align 4, !dbg !3991, !tbaa !1051
  %idxprom11 = zext i32 %21 to i64, !dbg !3990
  %arrayidx12 = getelementptr inbounds i64, ptr %20, i64 %idxprom11, !dbg !3990
  %22 = load i64, ptr %arrayidx12, align 8, !dbg !3990, !tbaa !1547
  %23 = load i64, ptr %divider, align 8, !dbg !3992, !tbaa !1547
  %cmp13 = icmp ult i64 %22, %23, !dbg !3993
  br i1 %cmp13, label %if.then14, label %if.end17, !dbg !3994

if.then14:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %24 = load ptr, ptr %values, align 8, !dbg !3995, !tbaa !777
  %25 = load i32, ptr %i, align 4, !dbg !3996, !tbaa !1051
  %idxprom15 = zext i32 %25 to i64, !dbg !3995
  %arrayidx16 = getelementptr inbounds i64, ptr %24, i64 %idxprom15, !dbg !3995
  %26 = load i64, ptr %arrayidx16, align 8, !dbg !3995, !tbaa !1547
  store i64 %26, ptr %divider, align 8, !dbg !3997, !tbaa !1547
  br label %if.end17, !dbg !3998

if.end17:                                         ; preds = %if.then14, %lor.lhs.false, %for.body6
  br label %for.inc18, !dbg !3999

for.inc18:                                        ; preds = %if.end17
  %27 = load i32, ptr %i, align 4, !dbg !4000, !tbaa !1051
  %inc19 = add i32 %27, 1, !dbg !4000
  store i32 %inc19, ptr %i, align 4, !dbg !4000, !tbaa !1051
  br label %for.cond3, !dbg !4001, !llvm.loop !4002

for.end20:                                        ; preds = %for.cond3
  %28 = load i64, ptr %divider, align 8, !dbg !4004, !tbaa !1547
  %tobool21 = icmp ne i64 %28, 0, !dbg !4004
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !4006

if.then22:                                        ; preds = %for.end20
  store i32 0, ptr %retval, align 4, !dbg !4007
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4007

if.end23:                                         ; preds = %for.end20
  store i32 0, ptr %i, align 4, !dbg !4008, !tbaa !1051
  br label %for.cond24, !dbg !4010

for.cond24:                                       ; preds = %for.inc34, %if.end23
  %29 = load i32, ptr %i, align 4, !dbg !4011, !tbaa !1051
  %30 = load i32, ptr %nbobjs, align 4, !dbg !4013, !tbaa !1051
  %31 = load i32, ptr %nbobjs, align 4, !dbg !4014, !tbaa !1051
  %mul25 = mul i32 %30, %31, !dbg !4015
  %cmp26 = icmp ult i32 %29, %mul25, !dbg !4016
  br i1 %cmp26, label %for.body27, label %for.end36, !dbg !4017

for.body27:                                       ; preds = %for.cond24
  %32 = load ptr, ptr %values, align 8, !dbg !4018, !tbaa !777
  %33 = load i32, ptr %i, align 4, !dbg !4020, !tbaa !1051
  %idxprom28 = zext i32 %33 to i64, !dbg !4018
  %arrayidx29 = getelementptr inbounds i64, ptr %32, i64 %idxprom28, !dbg !4018
  %34 = load i64, ptr %arrayidx29, align 8, !dbg !4018, !tbaa !1547
  %35 = load i64, ptr %divider, align 8, !dbg !4021, !tbaa !1547
  %rem = urem i64 %34, %35, !dbg !4022
  %tobool30 = icmp ne i64 %rem, 0, !dbg !4022
  br i1 %tobool30, label %if.then31, label %if.end33, !dbg !4023

if.then31:                                        ; preds = %for.body27
  %call32 = call ptr @__errno_location() #18, !dbg !4024
  store i32 2, ptr %call32, align 4, !dbg !4026, !tbaa !1051
  store i32 -1, ptr %retval, align 4, !dbg !4027
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4027

if.end33:                                         ; preds = %for.body27
  br label %for.inc34, !dbg !4021

for.inc34:                                        ; preds = %if.end33
  %36 = load i32, ptr %i, align 4, !dbg !4028, !tbaa !1051
  %inc35 = add i32 %36, 1, !dbg !4028
  store i32 %inc35, ptr %i, align 4, !dbg !4028, !tbaa !1051
  br label %for.cond24, !dbg !4029, !llvm.loop !4030

for.end36:                                        ; preds = %for.cond24
  store i32 0, ptr %i, align 4, !dbg !4032, !tbaa !1051
  br label %for.cond37, !dbg !4034

for.cond37:                                       ; preds = %for.inc43, %for.end36
  %37 = load i32, ptr %i, align 4, !dbg !4035, !tbaa !1051
  %38 = load i32, ptr %nbobjs, align 4, !dbg !4037, !tbaa !1051
  %39 = load i32, ptr %nbobjs, align 4, !dbg !4038, !tbaa !1051
  %mul38 = mul i32 %38, %39, !dbg !4039
  %cmp39 = icmp ult i32 %37, %mul38, !dbg !4040
  br i1 %cmp39, label %for.body40, label %for.end45, !dbg !4041

for.body40:                                       ; preds = %for.cond37
  %40 = load i64, ptr %divider, align 8, !dbg !4042, !tbaa !1547
  %41 = load ptr, ptr %values, align 8, !dbg !4043, !tbaa !777
  %42 = load i32, ptr %i, align 4, !dbg !4044, !tbaa !1051
  %idxprom41 = zext i32 %42 to i64, !dbg !4043
  %arrayidx42 = getelementptr inbounds i64, ptr %41, i64 %idxprom41, !dbg !4043
  %43 = load i64, ptr %arrayidx42, align 8, !dbg !4045, !tbaa !1547
  %div = udiv i64 %43, %40, !dbg !4045
  store i64 %div, ptr %arrayidx42, align 8, !dbg !4045, !tbaa !1547
  br label %for.inc43, !dbg !4043

for.inc43:                                        ; preds = %for.body40
  %44 = load i32, ptr %i, align 4, !dbg !4046, !tbaa !1051
  %inc44 = add i32 %44, 1, !dbg !4046
  store i32 %inc44, ptr %i, align 4, !dbg !4046, !tbaa !1051
  br label %for.cond37, !dbg !4047, !llvm.loop !4048

for.end45:                                        ; preds = %for.cond37
  store i32 0, ptr %retval, align 4, !dbg !4050
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4050

cleanup:                                          ; preds = %for.end45, %if.then31, %if.then22, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbobjs) #15, !dbg !4051
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !4051
  call void @llvm.lifetime.end.p0(i64 8, ptr %values) #15, !dbg !4051
  call void @llvm.lifetime.end.p0(i64 8, ptr %divider) #15, !dbg !4051
  %45 = load i32, ptr %retval, align 4, !dbg !4051
  ret i32 %45, !dbg !4051
}

; Function Attrs: nounwind uwtable
define internal i32 @hwloc__distances_transform_merge_switch_ports(ptr noundef %topology, ptr noundef %distances) #0 !dbg !4052 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %distances.addr = alloca ptr, align 8
  %dist = alloca ptr, align 8
  %objs = alloca ptr, align 8
  %values = alloca ptr, align 8
  %first = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nbobjs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !4054, metadata !DIExpression()), !dbg !4069
  store ptr %distances, ptr %distances.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %distances.addr, metadata !4055, metadata !DIExpression()), !dbg !4070
  call void @llvm.lifetime.start.p0(i64 8, ptr %dist) #15, !dbg !4071
  tail call void @llvm.dbg.declare(metadata ptr %dist, metadata !4056, metadata !DIExpression()), !dbg !4072
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !4073, !tbaa !777
  %1 = load ptr, ptr %distances.addr, align 8, !dbg !4074, !tbaa !777
  %call = call ptr @hwloc__internal_distances_from_public(ptr noundef %0, ptr noundef %1), !dbg !4075
  store ptr %call, ptr %dist, align 8, !dbg !4072, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 8, ptr %objs) #15, !dbg !4076
  tail call void @llvm.dbg.declare(metadata ptr %objs, metadata !4057, metadata !DIExpression()), !dbg !4077
  %2 = load ptr, ptr %distances.addr, align 8, !dbg !4078, !tbaa !777
  %objs1 = getelementptr inbounds %struct.hwloc_distances_s, ptr %2, i32 0, i32 1, !dbg !4079
  %3 = load ptr, ptr %objs1, align 8, !dbg !4079, !tbaa !1528
  store ptr %3, ptr %objs, align 8, !dbg !4077, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 8, ptr %values) #15, !dbg !4080
  tail call void @llvm.dbg.declare(metadata ptr %values, metadata !4058, metadata !DIExpression()), !dbg !4081
  %4 = load ptr, ptr %distances.addr, align 8, !dbg !4082, !tbaa !777
  %values2 = getelementptr inbounds %struct.hwloc_distances_s, ptr %4, i32 0, i32 3, !dbg !4083
  %5 = load ptr, ptr %values2, align 8, !dbg !4083, !tbaa !1524
  store ptr %5, ptr %values, align 8, !dbg !4081, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 4, ptr %first) #15, !dbg !4084
  tail call void @llvm.dbg.declare(metadata ptr %first, metadata !4059, metadata !DIExpression()), !dbg !4085
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4084
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !4060, metadata !DIExpression()), !dbg !4086
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #15, !dbg !4084
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !4061, metadata !DIExpression()), !dbg !4087
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbobjs) #15, !dbg !4084
  tail call void @llvm.dbg.declare(metadata ptr %nbobjs, metadata !4062, metadata !DIExpression()), !dbg !4088
  %6 = load ptr, ptr %distances.addr, align 8, !dbg !4089, !tbaa !777
  %nbobjs3 = getelementptr inbounds %struct.hwloc_distances_s, ptr %6, i32 0, i32 0, !dbg !4090
  %7 = load i32, ptr %nbobjs3, align 8, !dbg !4090, !tbaa !3841
  store i32 %7, ptr %nbobjs, align 4, !dbg !4088, !tbaa !1051
  %8 = load ptr, ptr %dist, align 8, !dbg !4091, !tbaa !777
  %name = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %8, i32 0, i32 0, !dbg !4093
  %9 = load ptr, ptr %name, align 8, !dbg !4093, !tbaa !998
  %call4 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.25) #16, !dbg !4094
  %tobool = icmp ne i32 %call4, 0, !dbg !4094
  br i1 %tobool, label %if.then, label %if.end, !dbg !4095

if.then:                                          ; preds = %entry
  %call5 = call ptr @__errno_location() #18, !dbg !4096
  store i32 22, ptr %call5, align 4, !dbg !4098, !tbaa !1051
  store i32 -1, ptr %retval, align 4, !dbg !4099
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4099

if.end:                                           ; preds = %entry
  store i32 -1, ptr %first, align 4, !dbg !4100, !tbaa !1051
  store i32 0, ptr %i, align 4, !dbg !4101, !tbaa !1051
  br label %for.cond, !dbg !4103

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, ptr %i, align 4, !dbg !4104, !tbaa !1051
  %11 = load i32, ptr %nbobjs, align 4, !dbg !4106, !tbaa !1051
  %cmp = icmp ult i32 %10, %11, !dbg !4107
  br i1 %cmp, label %for.body, label %for.end, !dbg !4108

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %objs, align 8, !dbg !4109, !tbaa !777
  %13 = load i32, ptr %i, align 4, !dbg !4111, !tbaa !1051
  %idxprom = zext i32 %13 to i64, !dbg !4109
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 %idxprom, !dbg !4109
  %14 = load ptr, ptr %arrayidx, align 8, !dbg !4109, !tbaa !777
  %call6 = call i32 @is_nvswitch(ptr noundef %14), !dbg !4112
  %tobool7 = icmp ne i32 %call6, 0, !dbg !4112
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4113

if.then8:                                         ; preds = %for.body
  %15 = load i32, ptr %i, align 4, !dbg !4114, !tbaa !1051
  store i32 %15, ptr %first, align 4, !dbg !4116, !tbaa !1051
  br label %for.end, !dbg !4117

if.end9:                                          ; preds = %for.body
  br label %for.inc, !dbg !4118

for.inc:                                          ; preds = %if.end9
  %16 = load i32, ptr %i, align 4, !dbg !4119, !tbaa !1051
  %inc = add i32 %16, 1, !dbg !4119
  store i32 %inc, ptr %i, align 4, !dbg !4119, !tbaa !1051
  br label %for.cond, !dbg !4120, !llvm.loop !4121

for.end:                                          ; preds = %if.then8, %for.cond
  %17 = load i32, ptr %first, align 4, !dbg !4123, !tbaa !1051
  %cmp10 = icmp eq i32 %17, -1, !dbg !4125
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !4126

if.then11:                                        ; preds = %for.end
  %call12 = call ptr @__errno_location() #18, !dbg !4127
  store i32 2, ptr %call12, align 4, !dbg !4129, !tbaa !1051
  store i32 -1, ptr %retval, align 4, !dbg !4130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4130

if.end13:                                         ; preds = %for.end
  %18 = load i32, ptr %i, align 4, !dbg !4131, !tbaa !1051
  %add = add i32 %18, 1, !dbg !4132
  store i32 %add, ptr %j, align 4, !dbg !4133, !tbaa !1051
  br label %for.cond14, !dbg !4134

for.cond14:                                       ; preds = %for.inc73, %if.end13
  %19 = load i32, ptr %j, align 4, !dbg !4135, !tbaa !1051
  %20 = load i32, ptr %nbobjs, align 4, !dbg !4136, !tbaa !1051
  %cmp15 = icmp ult i32 %19, %20, !dbg !4137
  br i1 %cmp15, label %for.body16, label %for.end75, !dbg !4138

for.body16:                                       ; preds = %for.cond14
  %21 = load ptr, ptr %objs, align 8, !dbg !4139, !tbaa !777
  %22 = load i32, ptr %j, align 4, !dbg !4140, !tbaa !1051
  %idxprom17 = zext i32 %22 to i64, !dbg !4139
  %arrayidx18 = getelementptr inbounds ptr, ptr %21, i64 %idxprom17, !dbg !4139
  %23 = load ptr, ptr %arrayidx18, align 8, !dbg !4139, !tbaa !777
  %call19 = call i32 @is_nvswitch(ptr noundef %23), !dbg !4141
  %tobool20 = icmp ne i32 %call19, 0, !dbg !4141
  br i1 %tobool20, label %if.then21, label %if.end70, !dbg !4142

if.then21:                                        ; preds = %for.body16
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #15, !dbg !4143
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !4063, metadata !DIExpression()), !dbg !4144
  store i32 0, ptr %k, align 4, !dbg !4145, !tbaa !1051
  br label %for.cond22, !dbg !4147

for.cond22:                                       ; preds = %for.inc54, %if.then21
  %24 = load i32, ptr %k, align 4, !dbg !4148, !tbaa !1051
  %25 = load i32, ptr %nbobjs, align 4, !dbg !4150, !tbaa !1051
  %cmp23 = icmp ult i32 %24, %25, !dbg !4151
  br i1 %cmp23, label %for.body24, label %for.end56, !dbg !4152

for.body24:                                       ; preds = %for.cond22
  %26 = load i32, ptr %k, align 4, !dbg !4153, !tbaa !1051
  %27 = load i32, ptr %i, align 4, !dbg !4156, !tbaa !1051
  %cmp25 = icmp eq i32 %26, %27, !dbg !4157
  br i1 %cmp25, label %if.then27, label %lor.lhs.false, !dbg !4158

lor.lhs.false:                                    ; preds = %for.body24
  %28 = load i32, ptr %k, align 4, !dbg !4159, !tbaa !1051
  %29 = load i32, ptr %j, align 4, !dbg !4160, !tbaa !1051
  %cmp26 = icmp eq i32 %28, %29, !dbg !4161
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !4162

if.then27:                                        ; preds = %lor.lhs.false, %for.body24
  br label %for.inc54, !dbg !4163

if.end28:                                         ; preds = %lor.lhs.false
  %30 = load ptr, ptr %values, align 8, !dbg !4164, !tbaa !777
  %31 = load i32, ptr %k, align 4, !dbg !4165, !tbaa !1051
  %32 = load i32, ptr %nbobjs, align 4, !dbg !4166, !tbaa !1051
  %mul = mul i32 %31, %32, !dbg !4167
  %33 = load i32, ptr %j, align 4, !dbg !4168, !tbaa !1051
  %add29 = add i32 %mul, %33, !dbg !4169
  %idxprom30 = zext i32 %add29 to i64, !dbg !4164
  %arrayidx31 = getelementptr inbounds i64, ptr %30, i64 %idxprom30, !dbg !4164
  %34 = load i64, ptr %arrayidx31, align 8, !dbg !4164, !tbaa !1547
  %35 = load ptr, ptr %values, align 8, !dbg !4170, !tbaa !777
  %36 = load i32, ptr %k, align 4, !dbg !4171, !tbaa !1051
  %37 = load i32, ptr %nbobjs, align 4, !dbg !4172, !tbaa !1051
  %mul32 = mul i32 %36, %37, !dbg !4173
  %38 = load i32, ptr %i, align 4, !dbg !4174, !tbaa !1051
  %add33 = add i32 %mul32, %38, !dbg !4175
  %idxprom34 = zext i32 %add33 to i64, !dbg !4170
  %arrayidx35 = getelementptr inbounds i64, ptr %35, i64 %idxprom34, !dbg !4170
  %39 = load i64, ptr %arrayidx35, align 8, !dbg !4176, !tbaa !1547
  %add36 = add i64 %39, %34, !dbg !4176
  store i64 %add36, ptr %arrayidx35, align 8, !dbg !4176, !tbaa !1547
  %40 = load ptr, ptr %values, align 8, !dbg !4177, !tbaa !777
  %41 = load i32, ptr %k, align 4, !dbg !4178, !tbaa !1051
  %42 = load i32, ptr %nbobjs, align 4, !dbg !4179, !tbaa !1051
  %mul37 = mul i32 %41, %42, !dbg !4180
  %43 = load i32, ptr %j, align 4, !dbg !4181, !tbaa !1051
  %add38 = add i32 %mul37, %43, !dbg !4182
  %idxprom39 = zext i32 %add38 to i64, !dbg !4177
  %arrayidx40 = getelementptr inbounds i64, ptr %40, i64 %idxprom39, !dbg !4177
  store i64 0, ptr %arrayidx40, align 8, !dbg !4183, !tbaa !1547
  %44 = load ptr, ptr %values, align 8, !dbg !4184, !tbaa !777
  %45 = load i32, ptr %j, align 4, !dbg !4185, !tbaa !1051
  %46 = load i32, ptr %nbobjs, align 4, !dbg !4186, !tbaa !1051
  %mul41 = mul i32 %45, %46, !dbg !4187
  %47 = load i32, ptr %k, align 4, !dbg !4188, !tbaa !1051
  %add42 = add i32 %mul41, %47, !dbg !4189
  %idxprom43 = zext i32 %add42 to i64, !dbg !4184
  %arrayidx44 = getelementptr inbounds i64, ptr %44, i64 %idxprom43, !dbg !4184
  %48 = load i64, ptr %arrayidx44, align 8, !dbg !4184, !tbaa !1547
  %49 = load ptr, ptr %values, align 8, !dbg !4190, !tbaa !777
  %50 = load i32, ptr %i, align 4, !dbg !4191, !tbaa !1051
  %51 = load i32, ptr %nbobjs, align 4, !dbg !4192, !tbaa !1051
  %mul45 = mul i32 %50, %51, !dbg !4193
  %52 = load i32, ptr %k, align 4, !dbg !4194, !tbaa !1051
  %add46 = add i32 %mul45, %52, !dbg !4195
  %idxprom47 = zext i32 %add46 to i64, !dbg !4190
  %arrayidx48 = getelementptr inbounds i64, ptr %49, i64 %idxprom47, !dbg !4190
  %53 = load i64, ptr %arrayidx48, align 8, !dbg !4196, !tbaa !1547
  %add49 = add i64 %53, %48, !dbg !4196
  store i64 %add49, ptr %arrayidx48, align 8, !dbg !4196, !tbaa !1547
  %54 = load ptr, ptr %values, align 8, !dbg !4197, !tbaa !777
  %55 = load i32, ptr %j, align 4, !dbg !4198, !tbaa !1051
  %56 = load i32, ptr %nbobjs, align 4, !dbg !4199, !tbaa !1051
  %mul50 = mul i32 %55, %56, !dbg !4200
  %57 = load i32, ptr %k, align 4, !dbg !4201, !tbaa !1051
  %add51 = add i32 %mul50, %57, !dbg !4202
  %idxprom52 = zext i32 %add51 to i64, !dbg !4197
  %arrayidx53 = getelementptr inbounds i64, ptr %54, i64 %idxprom52, !dbg !4197
  store i64 0, ptr %arrayidx53, align 8, !dbg !4203, !tbaa !1547
  br label %for.inc54, !dbg !4204

for.inc54:                                        ; preds = %if.end28, %if.then27
  %58 = load i32, ptr %k, align 4, !dbg !4205, !tbaa !1051
  %inc55 = add i32 %58, 1, !dbg !4205
  store i32 %inc55, ptr %k, align 4, !dbg !4205, !tbaa !1051
  br label %for.cond22, !dbg !4206, !llvm.loop !4207

for.end56:                                        ; preds = %for.cond22
  %59 = load ptr, ptr %values, align 8, !dbg !4209, !tbaa !777
  %60 = load i32, ptr %j, align 4, !dbg !4210, !tbaa !1051
  %61 = load i32, ptr %nbobjs, align 4, !dbg !4211, !tbaa !1051
  %mul57 = mul i32 %60, %61, !dbg !4212
  %62 = load i32, ptr %j, align 4, !dbg !4213, !tbaa !1051
  %add58 = add i32 %mul57, %62, !dbg !4214
  %idxprom59 = zext i32 %add58 to i64, !dbg !4209
  %arrayidx60 = getelementptr inbounds i64, ptr %59, i64 %idxprom59, !dbg !4209
  %63 = load i64, ptr %arrayidx60, align 8, !dbg !4209, !tbaa !1547
  %64 = load ptr, ptr %values, align 8, !dbg !4215, !tbaa !777
  %65 = load i32, ptr %i, align 4, !dbg !4216, !tbaa !1051
  %66 = load i32, ptr %nbobjs, align 4, !dbg !4217, !tbaa !1051
  %mul61 = mul i32 %65, %66, !dbg !4218
  %67 = load i32, ptr %i, align 4, !dbg !4219, !tbaa !1051
  %add62 = add i32 %mul61, %67, !dbg !4220
  %idxprom63 = zext i32 %add62 to i64, !dbg !4215
  %arrayidx64 = getelementptr inbounds i64, ptr %64, i64 %idxprom63, !dbg !4215
  %68 = load i64, ptr %arrayidx64, align 8, !dbg !4221, !tbaa !1547
  %add65 = add i64 %68, %63, !dbg !4221
  store i64 %add65, ptr %arrayidx64, align 8, !dbg !4221, !tbaa !1547
  %69 = load ptr, ptr %values, align 8, !dbg !4222, !tbaa !777
  %70 = load i32, ptr %j, align 4, !dbg !4223, !tbaa !1051
  %71 = load i32, ptr %nbobjs, align 4, !dbg !4224, !tbaa !1051
  %mul66 = mul i32 %70, %71, !dbg !4225
  %72 = load i32, ptr %j, align 4, !dbg !4226, !tbaa !1051
  %add67 = add i32 %mul66, %72, !dbg !4227
  %idxprom68 = zext i32 %add67 to i64, !dbg !4222
  %arrayidx69 = getelementptr inbounds i64, ptr %69, i64 %idxprom68, !dbg !4222
  store i64 0, ptr %arrayidx69, align 8, !dbg !4228, !tbaa !1547
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #15, !dbg !4229
  br label %if.end70, !dbg !4230

if.end70:                                         ; preds = %for.end56, %for.body16
  %73 = load ptr, ptr %objs, align 8, !dbg !4231, !tbaa !777
  %74 = load i32, ptr %j, align 4, !dbg !4232, !tbaa !1051
  %idxprom71 = zext i32 %74 to i64, !dbg !4231
  %arrayidx72 = getelementptr inbounds ptr, ptr %73, i64 %idxprom71, !dbg !4231
  store ptr null, ptr %arrayidx72, align 8, !dbg !4233, !tbaa !777
  br label %for.inc73, !dbg !4234

for.inc73:                                        ; preds = %if.end70
  %75 = load i32, ptr %j, align 4, !dbg !4235, !tbaa !1051
  %inc74 = add i32 %75, 1, !dbg !4235
  store i32 %inc74, ptr %j, align 4, !dbg !4235, !tbaa !1051
  br label %for.cond14, !dbg !4236, !llvm.loop !4237

for.end75:                                        ; preds = %for.cond14
  store i32 0, ptr %retval, align 4, !dbg !4239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4239

cleanup:                                          ; preds = %for.end75, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbobjs) #15, !dbg !4240
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #15, !dbg !4240
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !4240
  call void @llvm.lifetime.end.p0(i64 4, ptr %first) #15, !dbg !4240
  call void @llvm.lifetime.end.p0(i64 8, ptr %values) #15, !dbg !4240
  call void @llvm.lifetime.end.p0(i64 8, ptr %objs) #15, !dbg !4240
  call void @llvm.lifetime.end.p0(i64 8, ptr %dist) #15, !dbg !4240
  %76 = load i32, ptr %retval, align 4, !dbg !4240
  ret i32 %76, !dbg !4240
}

; Function Attrs: nounwind uwtable
define internal i32 @hwloc__distances_transform_transitive_closure(ptr noundef %topology, ptr noundef %distances) #0 !dbg !4241 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %distances.addr = alloca ptr, align 8
  %dist = alloca ptr, align 8
  %objs = alloca ptr, align 8
  %values = alloca ptr, align 8
  %nbobjs = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %bw_i2sw = alloca i64, align 8
  %bw_sw2j = alloca i64, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !4243, metadata !DIExpression()), !dbg !4260
  store ptr %distances, ptr %distances.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %distances.addr, metadata !4244, metadata !DIExpression()), !dbg !4261
  call void @llvm.lifetime.start.p0(i64 8, ptr %dist) #15, !dbg !4262
  tail call void @llvm.dbg.declare(metadata ptr %dist, metadata !4245, metadata !DIExpression()), !dbg !4263
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !4264, !tbaa !777
  %1 = load ptr, ptr %distances.addr, align 8, !dbg !4265, !tbaa !777
  %call = call ptr @hwloc__internal_distances_from_public(ptr noundef %0, ptr noundef %1), !dbg !4266
  store ptr %call, ptr %dist, align 8, !dbg !4263, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 8, ptr %objs) #15, !dbg !4267
  tail call void @llvm.dbg.declare(metadata ptr %objs, metadata !4246, metadata !DIExpression()), !dbg !4268
  %2 = load ptr, ptr %distances.addr, align 8, !dbg !4269, !tbaa !777
  %objs1 = getelementptr inbounds %struct.hwloc_distances_s, ptr %2, i32 0, i32 1, !dbg !4270
  %3 = load ptr, ptr %objs1, align 8, !dbg !4270, !tbaa !1528
  store ptr %3, ptr %objs, align 8, !dbg !4268, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 8, ptr %values) #15, !dbg !4271
  tail call void @llvm.dbg.declare(metadata ptr %values, metadata !4247, metadata !DIExpression()), !dbg !4272
  %4 = load ptr, ptr %distances.addr, align 8, !dbg !4273, !tbaa !777
  %values2 = getelementptr inbounds %struct.hwloc_distances_s, ptr %4, i32 0, i32 3, !dbg !4274
  %5 = load ptr, ptr %values2, align 8, !dbg !4274, !tbaa !1524
  store ptr %5, ptr %values, align 8, !dbg !4272, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbobjs) #15, !dbg !4275
  tail call void @llvm.dbg.declare(metadata ptr %nbobjs, metadata !4248, metadata !DIExpression()), !dbg !4276
  %6 = load ptr, ptr %distances.addr, align 8, !dbg !4277, !tbaa !777
  %nbobjs3 = getelementptr inbounds %struct.hwloc_distances_s, ptr %6, i32 0, i32 0, !dbg !4278
  %7 = load i32, ptr %nbobjs3, align 8, !dbg !4278, !tbaa !3841
  store i32 %7, ptr %nbobjs, align 4, !dbg !4276, !tbaa !1051
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4279
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !4249, metadata !DIExpression()), !dbg !4280
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #15, !dbg !4279
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !4250, metadata !DIExpression()), !dbg !4281
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #15, !dbg !4279
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !4251, metadata !DIExpression()), !dbg !4282
  %8 = load ptr, ptr %dist, align 8, !dbg !4283, !tbaa !777
  %name = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %8, i32 0, i32 0, !dbg !4285
  %9 = load ptr, ptr %name, align 8, !dbg !4285, !tbaa !998
  %call4 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.25) #16, !dbg !4286
  %tobool = icmp ne i32 %call4, 0, !dbg !4286
  br i1 %tobool, label %if.then, label %if.end, !dbg !4287

if.then:                                          ; preds = %entry
  %call5 = call ptr @__errno_location() #18, !dbg !4288
  store i32 22, ptr %call5, align 4, !dbg !4290, !tbaa !1051
  store i32 -1, ptr %retval, align 4, !dbg !4291
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !4291

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !4292, !tbaa !1051
  br label %for.cond, !dbg !4293

for.cond:                                         ; preds = %for.inc60, %if.end
  %10 = load i32, ptr %i, align 4, !dbg !4294, !tbaa !1051
  %11 = load i32, ptr %nbobjs, align 4, !dbg !4295, !tbaa !1051
  %cmp = icmp ult i32 %10, %11, !dbg !4296
  br i1 %cmp, label %for.body, label %for.end62, !dbg !4297

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %bw_i2sw) #15, !dbg !4298
  tail call void @llvm.dbg.declare(metadata ptr %bw_i2sw, metadata !4252, metadata !DIExpression()), !dbg !4299
  store i64 0, ptr %bw_i2sw, align 8, !dbg !4299, !tbaa !1547
  %12 = load ptr, ptr %objs, align 8, !dbg !4300, !tbaa !777
  %13 = load i32, ptr %i, align 4, !dbg !4302, !tbaa !1051
  %idxprom = zext i32 %13 to i64, !dbg !4300
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 %idxprom, !dbg !4300
  %14 = load ptr, ptr %arrayidx, align 8, !dbg !4300, !tbaa !777
  %call6 = call i32 @is_nvswitch(ptr noundef %14), !dbg !4303
  %tobool7 = icmp ne i32 %call6, 0, !dbg !4303
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4304

if.then8:                                         ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup57, !dbg !4305

if.end9:                                          ; preds = %for.body
  store i32 0, ptr %k, align 4, !dbg !4306, !tbaa !1051
  br label %for.cond10, !dbg !4308

for.cond10:                                       ; preds = %for.inc, %if.end9
  %15 = load i32, ptr %k, align 4, !dbg !4309, !tbaa !1051
  %16 = load i32, ptr %nbobjs, align 4, !dbg !4311, !tbaa !1051
  %cmp11 = icmp ult i32 %15, %16, !dbg !4312
  br i1 %cmp11, label %for.body12, label %for.end, !dbg !4313

for.body12:                                       ; preds = %for.cond10
  %17 = load ptr, ptr %objs, align 8, !dbg !4314, !tbaa !777
  %18 = load i32, ptr %k, align 4, !dbg !4316, !tbaa !1051
  %idxprom13 = zext i32 %18 to i64, !dbg !4314
  %arrayidx14 = getelementptr inbounds ptr, ptr %17, i64 %idxprom13, !dbg !4314
  %19 = load ptr, ptr %arrayidx14, align 8, !dbg !4314, !tbaa !777
  %call15 = call i32 @is_nvswitch(ptr noundef %19), !dbg !4317
  %tobool16 = icmp ne i32 %call15, 0, !dbg !4317
  br i1 %tobool16, label %if.then17, label %if.end21, !dbg !4318

if.then17:                                        ; preds = %for.body12
  %20 = load ptr, ptr %values, align 8, !dbg !4319, !tbaa !777
  %21 = load i32, ptr %i, align 4, !dbg !4320, !tbaa !1051
  %22 = load i32, ptr %nbobjs, align 4, !dbg !4321, !tbaa !1051
  %mul = mul i32 %21, %22, !dbg !4322
  %23 = load i32, ptr %k, align 4, !dbg !4323, !tbaa !1051
  %add = add i32 %mul, %23, !dbg !4324
  %idxprom18 = zext i32 %add to i64, !dbg !4319
  %arrayidx19 = getelementptr inbounds i64, ptr %20, i64 %idxprom18, !dbg !4319
  %24 = load i64, ptr %arrayidx19, align 8, !dbg !4319, !tbaa !1547
  %25 = load i64, ptr %bw_i2sw, align 8, !dbg !4325, !tbaa !1547
  %add20 = add i64 %25, %24, !dbg !4325
  store i64 %add20, ptr %bw_i2sw, align 8, !dbg !4325, !tbaa !1547
  br label %if.end21, !dbg !4326

if.end21:                                         ; preds = %if.then17, %for.body12
  br label %for.inc, !dbg !4327

for.inc:                                          ; preds = %if.end21
  %26 = load i32, ptr %k, align 4, !dbg !4328, !tbaa !1051
  %inc = add i32 %26, 1, !dbg !4328
  store i32 %inc, ptr %k, align 4, !dbg !4328, !tbaa !1051
  br label %for.cond10, !dbg !4329, !llvm.loop !4330

for.end:                                          ; preds = %for.cond10
  store i32 0, ptr %j, align 4, !dbg !4332, !tbaa !1051
  br label %for.cond22, !dbg !4333

for.cond22:                                       ; preds = %for.inc54, %for.end
  %27 = load i32, ptr %j, align 4, !dbg !4334, !tbaa !1051
  %28 = load i32, ptr %nbobjs, align 4, !dbg !4335, !tbaa !1051
  %cmp23 = icmp ult i32 %27, %28, !dbg !4336
  br i1 %cmp23, label %for.body24, label %for.end56, !dbg !4337

for.body24:                                       ; preds = %for.cond22
  call void @llvm.lifetime.start.p0(i64 8, ptr %bw_sw2j) #15, !dbg !4338
  tail call void @llvm.dbg.declare(metadata ptr %bw_sw2j, metadata !4256, metadata !DIExpression()), !dbg !4339
  store i64 0, ptr %bw_sw2j, align 8, !dbg !4339, !tbaa !1547
  %29 = load i32, ptr %i, align 4, !dbg !4340, !tbaa !1051
  %30 = load i32, ptr %j, align 4, !dbg !4342, !tbaa !1051
  %cmp25 = icmp eq i32 %29, %30, !dbg !4343
  br i1 %cmp25, label %if.then30, label %lor.lhs.false, !dbg !4344

lor.lhs.false:                                    ; preds = %for.body24
  %31 = load ptr, ptr %objs, align 8, !dbg !4345, !tbaa !777
  %32 = load i32, ptr %j, align 4, !dbg !4346, !tbaa !1051
  %idxprom26 = zext i32 %32 to i64, !dbg !4345
  %arrayidx27 = getelementptr inbounds ptr, ptr %31, i64 %idxprom26, !dbg !4345
  %33 = load ptr, ptr %arrayidx27, align 8, !dbg !4345, !tbaa !777
  %call28 = call i32 @is_nvswitch(ptr noundef %33), !dbg !4347
  %tobool29 = icmp ne i32 %call28, 0, !dbg !4347
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !4348

if.then30:                                        ; preds = %lor.lhs.false, %for.body24
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4349

if.end31:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %k, align 4, !dbg !4350, !tbaa !1051
  br label %for.cond32, !dbg !4352

for.cond32:                                       ; preds = %for.inc46, %if.end31
  %34 = load i32, ptr %k, align 4, !dbg !4353, !tbaa !1051
  %35 = load i32, ptr %nbobjs, align 4, !dbg !4355, !tbaa !1051
  %cmp33 = icmp ult i32 %34, %35, !dbg !4356
  br i1 %cmp33, label %for.body34, label %for.end48, !dbg !4357

for.body34:                                       ; preds = %for.cond32
  %36 = load ptr, ptr %objs, align 8, !dbg !4358, !tbaa !777
  %37 = load i32, ptr %k, align 4, !dbg !4360, !tbaa !1051
  %idxprom35 = zext i32 %37 to i64, !dbg !4358
  %arrayidx36 = getelementptr inbounds ptr, ptr %36, i64 %idxprom35, !dbg !4358
  %38 = load ptr, ptr %arrayidx36, align 8, !dbg !4358, !tbaa !777
  %call37 = call i32 @is_nvswitch(ptr noundef %38), !dbg !4361
  %tobool38 = icmp ne i32 %call37, 0, !dbg !4361
  br i1 %tobool38, label %if.then39, label %if.end45, !dbg !4362

if.then39:                                        ; preds = %for.body34
  %39 = load ptr, ptr %values, align 8, !dbg !4363, !tbaa !777
  %40 = load i32, ptr %k, align 4, !dbg !4364, !tbaa !1051
  %41 = load i32, ptr %nbobjs, align 4, !dbg !4365, !tbaa !1051
  %mul40 = mul i32 %40, %41, !dbg !4366
  %42 = load i32, ptr %j, align 4, !dbg !4367, !tbaa !1051
  %add41 = add i32 %mul40, %42, !dbg !4368
  %idxprom42 = zext i32 %add41 to i64, !dbg !4363
  %arrayidx43 = getelementptr inbounds i64, ptr %39, i64 %idxprom42, !dbg !4363
  %43 = load i64, ptr %arrayidx43, align 8, !dbg !4363, !tbaa !1547
  %44 = load i64, ptr %bw_sw2j, align 8, !dbg !4369, !tbaa !1547
  %add44 = add i64 %44, %43, !dbg !4369
  store i64 %add44, ptr %bw_sw2j, align 8, !dbg !4369, !tbaa !1547
  br label %if.end45, !dbg !4370

if.end45:                                         ; preds = %if.then39, %for.body34
  br label %for.inc46, !dbg !4371

for.inc46:                                        ; preds = %if.end45
  %45 = load i32, ptr %k, align 4, !dbg !4372, !tbaa !1051
  %inc47 = add i32 %45, 1, !dbg !4372
  store i32 %inc47, ptr %k, align 4, !dbg !4372, !tbaa !1051
  br label %for.cond32, !dbg !4373, !llvm.loop !4374

for.end48:                                        ; preds = %for.cond32
  %46 = load i64, ptr %bw_i2sw, align 8, !dbg !4376, !tbaa !1547
  %47 = load i64, ptr %bw_sw2j, align 8, !dbg !4377, !tbaa !1547
  %cmp49 = icmp ugt i64 %46, %47, !dbg !4378
  br i1 %cmp49, label %cond.true, label %cond.false, !dbg !4376

cond.true:                                        ; preds = %for.end48
  %48 = load i64, ptr %bw_sw2j, align 8, !dbg !4379, !tbaa !1547
  br label %cond.end, !dbg !4376

cond.false:                                       ; preds = %for.end48
  %49 = load i64, ptr %bw_i2sw, align 8, !dbg !4380, !tbaa !1547
  br label %cond.end, !dbg !4376

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %48, %cond.true ], [ %49, %cond.false ], !dbg !4376
  %50 = load ptr, ptr %values, align 8, !dbg !4381, !tbaa !777
  %51 = load i32, ptr %i, align 4, !dbg !4382, !tbaa !1051
  %52 = load i32, ptr %nbobjs, align 4, !dbg !4383, !tbaa !1051
  %mul50 = mul i32 %51, %52, !dbg !4384
  %53 = load i32, ptr %j, align 4, !dbg !4385, !tbaa !1051
  %add51 = add i32 %mul50, %53, !dbg !4386
  %idxprom52 = zext i32 %add51 to i64, !dbg !4381
  %arrayidx53 = getelementptr inbounds i64, ptr %50, i64 %idxprom52, !dbg !4381
  store i64 %cond, ptr %arrayidx53, align 8, !dbg !4387, !tbaa !1547
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4388
  br label %cleanup, !dbg !4388

cleanup:                                          ; preds = %cond.end, %if.then30
  call void @llvm.lifetime.end.p0(i64 8, ptr %bw_sw2j) #15, !dbg !4388
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 10, label %for.inc54
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc54, !dbg !4389

for.inc54:                                        ; preds = %cleanup.cont, %cleanup
  %54 = load i32, ptr %j, align 4, !dbg !4390, !tbaa !1051
  %inc55 = add i32 %54, 1, !dbg !4390
  store i32 %inc55, ptr %j, align 4, !dbg !4390, !tbaa !1051
  br label %for.cond22, !dbg !4391, !llvm.loop !4392

for.end56:                                        ; preds = %for.cond22
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4394
  br label %cleanup57, !dbg !4394

cleanup57:                                        ; preds = %for.end56, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bw_i2sw) #15, !dbg !4394
  %cleanup.dest58 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest58, label %unreachable [
    i32 0, label %cleanup.cont59
    i32 4, label %for.inc60
  ]

cleanup.cont59:                                   ; preds = %cleanup57
  br label %for.inc60, !dbg !4395

for.inc60:                                        ; preds = %cleanup.cont59, %cleanup57
  %55 = load i32, ptr %i, align 4, !dbg !4396, !tbaa !1051
  %inc61 = add i32 %55, 1, !dbg !4396
  store i32 %inc61, ptr %i, align 4, !dbg !4396, !tbaa !1051
  br label %for.cond, !dbg !4397, !llvm.loop !4398

for.end62:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !4400

cleanup63:                                        ; preds = %for.end62, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #15, !dbg !4401
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #15, !dbg !4401
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !4401
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbobjs) #15, !dbg !4401
  call void @llvm.lifetime.end.p0(i64 8, ptr %values) #15, !dbg !4401
  call void @llvm.lifetime.end.p0(i64 8, ptr %objs) #15, !dbg !4401
  call void @llvm.lifetime.end.p0(i64 8, ptr %dist) #15, !dbg !4401
  %56 = load i32, ptr %retval, align 4, !dbg !4401
  ret i32 %56, !dbg !4401

unreachable:                                      ; preds = %cleanup57, %cleanup
  unreachable
}

; Function Attrs: nounwind
declare !dbg !4402 i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare !dbg !4406 double @strtod(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @hwloc_tma_malloc(ptr noundef %tma, i64 noundef %size) #12 !dbg !4409 {
entry:
  %retval = alloca ptr, align 8
  %tma.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %tma, ptr %tma.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %tma.addr, metadata !4411, metadata !DIExpression()), !dbg !4413
  store i64 %size, ptr %size.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4412, metadata !DIExpression()), !dbg !4414
  %0 = load ptr, ptr %tma.addr, align 8, !dbg !4415, !tbaa !777
  %tobool = icmp ne ptr %0, null, !dbg !4415
  br i1 %tobool, label %if.then, label %if.else, !dbg !4417

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tma.addr, align 8, !dbg !4418, !tbaa !777
  %malloc = getelementptr inbounds %struct.hwloc_tma, ptr %1, i32 0, i32 0, !dbg !4420
  %2 = load ptr, ptr %malloc, align 8, !dbg !4420, !tbaa !4421
  %3 = load ptr, ptr %tma.addr, align 8, !dbg !4422, !tbaa !777
  %4 = load i64, ptr %size.addr, align 8, !dbg !4423, !tbaa !1547
  %call = call ptr %2(ptr noundef %3, i64 noundef %4), !dbg !4418
  store ptr %call, ptr %retval, align 8, !dbg !4424
  br label %return, !dbg !4424

if.else:                                          ; preds = %entry
  %5 = load i64, ptr %size.addr, align 8, !dbg !4425, !tbaa !1547
  %call1 = call noalias ptr @malloc(i64 noundef %5) #20, !dbg !4427
  store ptr %call1, ptr %retval, align 8, !dbg !4428
  br label %return, !dbg !4428

return:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %retval, align 8, !dbg !4429
  ret ptr %6, !dbg !4429
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @hwloc_tma_strdup(ptr noundef %tma, ptr noundef %src) #12 !dbg !4430 {
entry:
  %tma.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  %ptr = alloca ptr, align 8
  store ptr %tma, ptr %tma.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %tma.addr, metadata !4434, metadata !DIExpression()), !dbg !4438
  store ptr %src, ptr %src.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4435, metadata !DIExpression()), !dbg !4439
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #15, !dbg !4440
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !4436, metadata !DIExpression()), !dbg !4441
  %0 = load ptr, ptr %src.addr, align 8, !dbg !4442, !tbaa !777
  %call = call i64 @strlen(ptr noundef %0) #16, !dbg !4443
  store i64 %call, ptr %len, align 8, !dbg !4441, !tbaa !1547
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #15, !dbg !4444
  tail call void @llvm.dbg.declare(metadata ptr %ptr, metadata !4437, metadata !DIExpression()), !dbg !4445
  %1 = load ptr, ptr %tma.addr, align 8, !dbg !4446, !tbaa !777
  %2 = load i64, ptr %len, align 8, !dbg !4447, !tbaa !1547
  %add = add i64 %2, 1, !dbg !4448
  %call1 = call ptr @hwloc_tma_malloc(ptr noundef %1, i64 noundef %add), !dbg !4449
  store ptr %call1, ptr %ptr, align 8, !dbg !4445, !tbaa !777
  %3 = load ptr, ptr %ptr, align 8, !dbg !4450, !tbaa !777
  %tobool = icmp ne ptr %3, null, !dbg !4450
  br i1 %tobool, label %if.then, label %if.end, !dbg !4452

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %ptr, align 8, !dbg !4453, !tbaa !777
  %5 = load ptr, ptr %src.addr, align 8, !dbg !4454, !tbaa !777
  %6 = load i64, ptr %len, align 8, !dbg !4455, !tbaa !1547
  %add2 = add i64 %6, 1, !dbg !4456
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %5, i64 %add2, i1 false), !dbg !4457
  br label %if.end, !dbg !4457

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %ptr, align 8, !dbg !4458, !tbaa !777
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #15, !dbg !4459
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #15, !dbg !4459
  ret ptr %7, !dbg !4460
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @hwloc_tma_calloc(ptr noundef %tma, i64 noundef %size) #12 !dbg !4461 {
entry:
  %tma.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %ptr = alloca ptr, align 8
  store ptr %tma, ptr %tma.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %tma.addr, metadata !4463, metadata !DIExpression()), !dbg !4466
  store i64 %size, ptr %size.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4464, metadata !DIExpression()), !dbg !4467
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #15, !dbg !4468
  tail call void @llvm.dbg.declare(metadata ptr %ptr, metadata !4465, metadata !DIExpression()), !dbg !4469
  %0 = load ptr, ptr %tma.addr, align 8, !dbg !4470, !tbaa !777
  %1 = load i64, ptr %size.addr, align 8, !dbg !4471, !tbaa !1547
  %call = call ptr @hwloc_tma_malloc(ptr noundef %0, i64 noundef %1), !dbg !4472
  store ptr %call, ptr %ptr, align 8, !dbg !4469, !tbaa !777
  %2 = load ptr, ptr %ptr, align 8, !dbg !4473, !tbaa !777
  %tobool = icmp ne ptr %2, null, !dbg !4473
  br i1 %tobool, label %if.then, label %if.end, !dbg !4475

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %ptr, align 8, !dbg !4476, !tbaa !777
  %4 = load i64, ptr %size.addr, align 8, !dbg !4477, !tbaa !1547
  call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %4, i1 false), !dbg !4478
  br label %if.end, !dbg !4478

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %ptr, align 8, !dbg !4479, !tbaa !777
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #15, !dbg !4480
  ret ptr %5, !dbg !4481
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !4482 i64 @strlen(ptr noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #14

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define internal ptr @hwloc_get_pu_obj_by_os_index(ptr noundef %topology, i32 noundef %os_index) #3 !dbg !4485 {
entry:
  %retval = alloca ptr, align 8
  %topology.addr = alloca ptr, align 8
  %os_index.addr = alloca i32, align 4
  %obj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !4490, metadata !DIExpression()), !dbg !4493
  store i32 %os_index, ptr %os_index.addr, align 4, !tbaa !1051
  tail call void @llvm.dbg.declare(metadata ptr %os_index.addr, metadata !4491, metadata !DIExpression()), !dbg !4494
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #15, !dbg !4495
  tail call void @llvm.dbg.declare(metadata ptr %obj, metadata !4492, metadata !DIExpression()), !dbg !4496
  store ptr null, ptr %obj, align 8, !dbg !4496, !tbaa !777
  br label %while.cond, !dbg !4497

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !4498, !tbaa !777
  %1 = load ptr, ptr %obj, align 8, !dbg !4499, !tbaa !777
  %call = call ptr @hwloc_get_next_obj_by_type(ptr noundef %0, i32 noundef 3, ptr noundef %1), !dbg !4500
  store ptr %call, ptr %obj, align 8, !dbg !4501, !tbaa !777
  %cmp = icmp ne ptr %call, null, !dbg !4502
  br i1 %cmp, label %while.body, label %while.end, !dbg !4497

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %obj, align 8, !dbg !4503, !tbaa !777
  %os_index1 = getelementptr inbounds %struct.hwloc_obj, ptr %2, i32 0, i32 2, !dbg !4505
  %3 = load i32, ptr %os_index1, align 8, !dbg !4505, !tbaa !1861
  %4 = load i32, ptr %os_index.addr, align 4, !dbg !4506, !tbaa !1051
  %cmp2 = icmp eq i32 %3, %4, !dbg !4507
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4508

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %obj, align 8, !dbg !4509, !tbaa !777
  store ptr %5, ptr %retval, align 8, !dbg !4510
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4510

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !4497, !llvm.loop !4511

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !4513
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4513

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #15, !dbg !4514
  %6 = load ptr, ptr %retval, align 8, !dbg !4514
  ret ptr %6, !dbg !4514
}

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define internal ptr @hwloc_get_numanode_obj_by_os_index(ptr noundef %topology, i32 noundef %os_index) #3 !dbg !4515 {
entry:
  %retval = alloca ptr, align 8
  %topology.addr = alloca ptr, align 8
  %os_index.addr = alloca i32, align 4
  %obj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !4517, metadata !DIExpression()), !dbg !4520
  store i32 %os_index, ptr %os_index.addr, align 4, !tbaa !1051
  tail call void @llvm.dbg.declare(metadata ptr %os_index.addr, metadata !4518, metadata !DIExpression()), !dbg !4521
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #15, !dbg !4522
  tail call void @llvm.dbg.declare(metadata ptr %obj, metadata !4519, metadata !DIExpression()), !dbg !4523
  store ptr null, ptr %obj, align 8, !dbg !4523, !tbaa !777
  br label %while.cond, !dbg !4524

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !4525, !tbaa !777
  %1 = load ptr, ptr %obj, align 8, !dbg !4526, !tbaa !777
  %call = call ptr @hwloc_get_next_obj_by_type(ptr noundef %0, i32 noundef 13, ptr noundef %1), !dbg !4527
  store ptr %call, ptr %obj, align 8, !dbg !4528, !tbaa !777
  %cmp = icmp ne ptr %call, null, !dbg !4529
  br i1 %cmp, label %while.body, label %while.end, !dbg !4524

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %obj, align 8, !dbg !4530, !tbaa !777
  %os_index1 = getelementptr inbounds %struct.hwloc_obj, ptr %2, i32 0, i32 2, !dbg !4532
  %3 = load i32, ptr %os_index1, align 8, !dbg !4532, !tbaa !1861
  %4 = load i32, ptr %os_index.addr, align 4, !dbg !4533, !tbaa !1051
  %cmp2 = icmp eq i32 %3, %4, !dbg !4534
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4535

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %obj, align 8, !dbg !4536, !tbaa !777
  store ptr %5, ptr %retval, align 8, !dbg !4537
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4537

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !4524, !llvm.loop !4538

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !4540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4540

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #15, !dbg !4541
  %6 = load ptr, ptr %retval, align 8, !dbg !4541
  ret ptr %6, !dbg !4541
}

; Function Attrs: noreturn nounwind
declare !dbg !4542 void @abort() #11

declare !dbg !4545 ptr @hwloc_get_obj_by_type_and_gp_index(ptr noundef, i32 noundef, i64 noundef) #8

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @hwloc_get_next_obj_by_type(ptr noundef %topology, i32 noundef %type, ptr noundef %prev) #12 !dbg !4548 {
entry:
  %retval = alloca ptr, align 8
  %topology.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %prev.addr = alloca ptr, align 8
  %depth = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !4553, metadata !DIExpression()), !dbg !4557
  store i32 %type, ptr %type.addr, align 4, !tbaa !818
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4554, metadata !DIExpression()), !dbg !4558
  store ptr %prev, ptr %prev.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4555, metadata !DIExpression()), !dbg !4559
  call void @llvm.lifetime.start.p0(i64 4, ptr %depth) #15, !dbg !4560
  tail call void @llvm.dbg.declare(metadata ptr %depth, metadata !4556, metadata !DIExpression()), !dbg !4561
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !4562, !tbaa !777
  %1 = load i32, ptr %type.addr, align 4, !dbg !4563, !tbaa !818
  %call = call i32 @hwloc_get_type_depth(ptr noundef %0, i32 noundef %1), !dbg !4564
  store i32 %call, ptr %depth, align 4, !dbg !4561, !tbaa !1051
  %2 = load i32, ptr %depth, align 4, !dbg !4565, !tbaa !1051
  %cmp = icmp eq i32 %2, -1, !dbg !4567
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4568

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %depth, align 4, !dbg !4569, !tbaa !1051
  %cmp1 = icmp eq i32 %3, -2, !dbg !4570
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4571

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !4572
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4572

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %topology.addr, align 8, !dbg !4573, !tbaa !777
  %5 = load i32, ptr %depth, align 4, !dbg !4574, !tbaa !1051
  %6 = load ptr, ptr %prev.addr, align 8, !dbg !4575, !tbaa !777
  %call2 = call ptr @hwloc_get_next_obj_by_depth(ptr noundef %4, i32 noundef %5, ptr noundef %6), !dbg !4576
  store ptr %call2, ptr %retval, align 8, !dbg !4577
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4577

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %depth) #15, !dbg !4578
  %7 = load ptr, ptr %retval, align 8, !dbg !4578
  ret ptr %7, !dbg !4578
}

declare !dbg !4579 i32 @hwloc_get_type_depth(ptr noundef, i32 noundef) #8

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @hwloc_get_next_obj_by_depth(ptr noundef %topology, i32 noundef %depth, ptr noundef %prev) #12 !dbg !4582 {
entry:
  %retval = alloca ptr, align 8
  %topology.addr = alloca ptr, align 8
  %depth.addr = alloca i32, align 4
  %prev.addr = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !4586, metadata !DIExpression()), !dbg !4589
  store i32 %depth, ptr %depth.addr, align 4, !tbaa !1051
  tail call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !4587, metadata !DIExpression()), !dbg !4590
  store ptr %prev, ptr %prev.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4588, metadata !DIExpression()), !dbg !4591
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !4592, !tbaa !777
  %tobool = icmp ne ptr %0, null, !dbg !4592
  br i1 %tobool, label %if.end, label %if.then, !dbg !4594

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !4595, !tbaa !777
  %2 = load i32, ptr %depth.addr, align 4, !dbg !4596, !tbaa !1051
  %call = call ptr @hwloc_get_obj_by_depth(ptr noundef %1, i32 noundef %2, i32 noundef 0) #16, !dbg !4597
  store ptr %call, ptr %retval, align 8, !dbg !4598
  br label %return, !dbg !4598

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !4599, !tbaa !777
  %depth1 = getelementptr inbounds %struct.hwloc_obj, ptr %3, i32 0, i32 6, !dbg !4601
  %4 = load i32, ptr %depth1, align 8, !dbg !4601, !tbaa !4602
  %5 = load i32, ptr %depth.addr, align 4, !dbg !4603, !tbaa !1051
  %cmp = icmp ne i32 %4, %5, !dbg !4604
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4605

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !4606
  br label %return, !dbg !4606

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %prev.addr, align 8, !dbg !4607, !tbaa !777
  %next_cousin = getelementptr inbounds %struct.hwloc_obj, ptr %6, i32 0, i32 8, !dbg !4608
  %7 = load ptr, ptr %next_cousin, align 8, !dbg !4608, !tbaa !4609
  store ptr %7, ptr %retval, align 8, !dbg !4610
  br label %return, !dbg !4610

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %8 = load ptr, ptr %retval, align 8, !dbg !4611
  ret ptr %8, !dbg !4611
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !4612 ptr @hwloc_get_obj_by_depth(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind uwtable
define internal ptr @hwloc_distances_get_one(ptr noundef %topology, ptr noundef %dist) #0 !dbg !4615 {
entry:
  %retval = alloca ptr, align 8
  %topology.addr = alloca ptr, align 8
  %dist.addr = alloca ptr, align 8
  %cont = alloca ptr, align 8
  %distances = alloca ptr, align 8
  %nbobjs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !4619, metadata !DIExpression()), !dbg !4626
  store ptr %dist, ptr %dist.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %dist.addr, metadata !4620, metadata !DIExpression()), !dbg !4627
  call void @llvm.lifetime.start.p0(i64 8, ptr %cont) #15, !dbg !4628
  tail call void @llvm.dbg.declare(metadata ptr %cont, metadata !4621, metadata !DIExpression()), !dbg !4629
  call void @llvm.lifetime.start.p0(i64 8, ptr %distances) #15, !dbg !4630
  tail call void @llvm.dbg.declare(metadata ptr %distances, metadata !4622, metadata !DIExpression()), !dbg !4631
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbobjs) #15, !dbg !4632
  tail call void @llvm.dbg.declare(metadata ptr %nbobjs, metadata !4623, metadata !DIExpression()), !dbg !4633
  %call = call noalias ptr @malloc(i64 noundef 40) #20, !dbg !4634
  store ptr %call, ptr %cont, align 8, !dbg !4635, !tbaa !777
  %0 = load ptr, ptr %cont, align 8, !dbg !4636, !tbaa !777
  %tobool = icmp ne ptr %0, null, !dbg !4636
  br i1 %tobool, label %if.end, label %if.then, !dbg !4638

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4639
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4639

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %cont, align 8, !dbg !4640, !tbaa !777
  %distances1 = getelementptr inbounds %struct.hwloc_distances_container_s, ptr %1, i32 0, i32 1, !dbg !4641
  store ptr %distances1, ptr %distances, align 8, !dbg !4642, !tbaa !777
  %2 = load ptr, ptr %dist.addr, align 8, !dbg !4643, !tbaa !777
  %nbobjs2 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %2, i32 0, i32 4, !dbg !4644
  %3 = load i32, ptr %nbobjs2, align 8, !dbg !4644, !tbaa !1089
  %4 = load ptr, ptr %distances, align 8, !dbg !4645, !tbaa !777
  %nbobjs3 = getelementptr inbounds %struct.hwloc_distances_s, ptr %4, i32 0, i32 0, !dbg !4646
  store i32 %3, ptr %nbobjs3, align 8, !dbg !4647, !tbaa !3841
  store i32 %3, ptr %nbobjs, align 4, !dbg !4648, !tbaa !1051
  %5 = load i32, ptr %nbobjs, align 4, !dbg !4649, !tbaa !1051
  %conv = zext i32 %5 to i64, !dbg !4649
  %mul = mul i64 %conv, 8, !dbg !4650
  %call4 = call noalias ptr @malloc(i64 noundef %mul) #20, !dbg !4651
  %6 = load ptr, ptr %distances, align 8, !dbg !4652, !tbaa !777
  %objs = getelementptr inbounds %struct.hwloc_distances_s, ptr %6, i32 0, i32 1, !dbg !4653
  store ptr %call4, ptr %objs, align 8, !dbg !4654, !tbaa !1528
  %7 = load ptr, ptr %distances, align 8, !dbg !4655, !tbaa !777
  %objs5 = getelementptr inbounds %struct.hwloc_distances_s, ptr %7, i32 0, i32 1, !dbg !4657
  %8 = load ptr, ptr %objs5, align 8, !dbg !4657, !tbaa !1528
  %tobool6 = icmp ne ptr %8, null, !dbg !4655
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4658

if.then7:                                         ; preds = %if.end
  br label %out, !dbg !4659

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %distances, align 8, !dbg !4660, !tbaa !777
  %objs9 = getelementptr inbounds %struct.hwloc_distances_s, ptr %9, i32 0, i32 1, !dbg !4661
  %10 = load ptr, ptr %objs9, align 8, !dbg !4661, !tbaa !1528
  %11 = load ptr, ptr %dist.addr, align 8, !dbg !4662, !tbaa !777
  %objs10 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %11, i32 0, i32 9, !dbg !4663
  %12 = load ptr, ptr %objs10, align 8, !dbg !4663, !tbaa !1010
  %13 = load i32, ptr %nbobjs, align 4, !dbg !4664, !tbaa !1051
  %conv11 = zext i32 %13 to i64, !dbg !4664
  %mul12 = mul i64 %conv11, 8, !dbg !4665
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %12, i64 %mul12, i1 false), !dbg !4666
  %14 = load i32, ptr %nbobjs, align 4, !dbg !4667, !tbaa !1051
  %15 = load i32, ptr %nbobjs, align 4, !dbg !4668, !tbaa !1051
  %mul13 = mul i32 %14, %15, !dbg !4669
  %conv14 = zext i32 %mul13 to i64, !dbg !4667
  %mul15 = mul i64 %conv14, 8, !dbg !4670
  %call16 = call noalias ptr @malloc(i64 noundef %mul15) #20, !dbg !4671
  %16 = load ptr, ptr %distances, align 8, !dbg !4672, !tbaa !777
  %values = getelementptr inbounds %struct.hwloc_distances_s, ptr %16, i32 0, i32 3, !dbg !4673
  store ptr %call16, ptr %values, align 8, !dbg !4674, !tbaa !1524
  %17 = load ptr, ptr %distances, align 8, !dbg !4675, !tbaa !777
  %values17 = getelementptr inbounds %struct.hwloc_distances_s, ptr %17, i32 0, i32 3, !dbg !4677
  %18 = load ptr, ptr %values17, align 8, !dbg !4677, !tbaa !1524
  %tobool18 = icmp ne ptr %18, null, !dbg !4675
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !4678

if.then19:                                        ; preds = %if.end8
  br label %out_with_objs, !dbg !4679

if.end20:                                         ; preds = %if.end8
  %19 = load ptr, ptr %distances, align 8, !dbg !4680, !tbaa !777
  %values21 = getelementptr inbounds %struct.hwloc_distances_s, ptr %19, i32 0, i32 3, !dbg !4681
  %20 = load ptr, ptr %values21, align 8, !dbg !4681, !tbaa !1524
  %21 = load ptr, ptr %dist.addr, align 8, !dbg !4682, !tbaa !777
  %values22 = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %21, i32 0, i32 6, !dbg !4683
  %22 = load ptr, ptr %values22, align 8, !dbg !4683, !tbaa !1014
  %23 = load i32, ptr %nbobjs, align 4, !dbg !4684, !tbaa !1051
  %24 = load i32, ptr %nbobjs, align 4, !dbg !4685, !tbaa !1051
  %mul23 = mul i32 %23, %24, !dbg !4686
  %conv24 = zext i32 %mul23 to i64, !dbg !4684
  %mul25 = mul i64 %conv24, 8, !dbg !4687
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %20, ptr align 8 %22, i64 %mul25, i1 false), !dbg !4688
  %25 = load ptr, ptr %dist.addr, align 8, !dbg !4689, !tbaa !777
  %kind = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %25, i32 0, i32 7, !dbg !4690
  %26 = load i64, ptr %kind, align 8, !dbg !4690, !tbaa !1175
  %27 = load ptr, ptr %distances, align 8, !dbg !4691, !tbaa !777
  %kind26 = getelementptr inbounds %struct.hwloc_distances_s, ptr %27, i32 0, i32 2, !dbg !4692
  store i64 %26, ptr %kind26, align 8, !dbg !4693, !tbaa !3921
  %28 = load ptr, ptr %dist.addr, align 8, !dbg !4694, !tbaa !777
  %id = getelementptr inbounds %struct.hwloc_internal_distances_s, ptr %28, i32 0, i32 1, !dbg !4695
  %29 = load i32, ptr %id, align 8, !dbg !4695, !tbaa !1181
  %30 = load ptr, ptr %cont, align 8, !dbg !4696, !tbaa !777
  %id27 = getelementptr inbounds %struct.hwloc_distances_container_s, ptr %30, i32 0, i32 0, !dbg !4697
  store i32 %29, ptr %id27, align 8, !dbg !4698, !tbaa !1495
  %31 = load ptr, ptr %distances, align 8, !dbg !4699, !tbaa !777
  store ptr %31, ptr %retval, align 8, !dbg !4700
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4700

out_with_objs:                                    ; preds = %if.then19
  tail call void @llvm.dbg.label(metadata !4624), !dbg !4701
  %32 = load ptr, ptr %distances, align 8, !dbg !4702, !tbaa !777
  %objs28 = getelementptr inbounds %struct.hwloc_distances_s, ptr %32, i32 0, i32 1, !dbg !4703
  %33 = load ptr, ptr %objs28, align 8, !dbg !4703, !tbaa !1528
  call void @free(ptr noundef %33) #15, !dbg !4704
  br label %out, !dbg !4704

out:                                              ; preds = %out_with_objs, %if.then7
  tail call void @llvm.dbg.label(metadata !4625), !dbg !4705
  %34 = load ptr, ptr %cont, align 8, !dbg !4706, !tbaa !777
  call void @free(ptr noundef %34) #15, !dbg !4707
  store ptr null, ptr %retval, align 8, !dbg !4708
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4708

cleanup:                                          ; preds = %out, %if.end20, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbobjs) #15, !dbg !4709
  call void @llvm.lifetime.end.p0(i64 8, ptr %distances) #15, !dbg !4709
  call void @llvm.lifetime.end.p0(i64 8, ptr %cont) #15, !dbg !4709
  %35 = load ptr, ptr %retval, align 8, !dbg !4709
  ret ptr %35, !dbg !4709
}

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !4710 ptr @hwloc_obj_type_string(i32 noundef) #5

; Function Attrs: nounwind uwtable
define internal i32 @hwloc__check_grouping_matrix(i32 noundef %nbobjs, ptr noundef %_values, float noundef %accuracy, i32 noundef %verbose) #0 !dbg !4713 {
entry:
  %retval = alloca i32, align 4
  %nbobjs.addr = alloca i32, align 4
  %_values.addr = alloca ptr, align 8
  %accuracy.addr = alloca float, align 4
  %verbose.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %nbobjs, ptr %nbobjs.addr, align 4, !tbaa !1051
  tail call void @llvm.dbg.declare(metadata ptr %nbobjs.addr, metadata !4717, metadata !DIExpression()), !dbg !4723
  store ptr %_values, ptr %_values.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %_values.addr, metadata !4718, metadata !DIExpression()), !dbg !4724
  store float %accuracy, ptr %accuracy.addr, align 4, !tbaa !847
  tail call void @llvm.dbg.declare(metadata ptr %accuracy.addr, metadata !4719, metadata !DIExpression()), !dbg !4725
  store i32 %verbose, ptr %verbose.addr, align 4, !tbaa !1051
  tail call void @llvm.dbg.declare(metadata ptr %verbose.addr, metadata !4720, metadata !DIExpression()), !dbg !4726
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4727
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !4721, metadata !DIExpression()), !dbg !4728
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #15, !dbg !4727
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !4722, metadata !DIExpression()), !dbg !4729
  store i32 0, ptr %i, align 4, !dbg !4730, !tbaa !1051
  br label %for.cond, !dbg !4732

for.cond:                                         ; preds = %for.inc45, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4733, !tbaa !1051
  %1 = load i32, ptr %nbobjs.addr, align 4, !dbg !4735, !tbaa !1051
  %cmp = icmp ult i32 %0, %1, !dbg !4736
  br i1 %cmp, label %for.body, label %for.end47, !dbg !4737

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !4738, !tbaa !1051
  %add = add i32 %2, 1, !dbg !4741
  store i32 %add, ptr %j, align 4, !dbg !4742, !tbaa !1051
  br label %for.cond1, !dbg !4743

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4, !dbg !4744, !tbaa !1051
  %4 = load i32, ptr %nbobjs.addr, align 4, !dbg !4746, !tbaa !1051
  %cmp2 = icmp ult i32 %3, %4, !dbg !4747
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !4748

for.body3:                                        ; preds = %for.cond1
  %5 = load ptr, ptr %_values.addr, align 8, !dbg !4749, !tbaa !777
  %6 = load i32, ptr %i, align 4, !dbg !4749, !tbaa !1051
  %7 = load i32, ptr %nbobjs.addr, align 4, !dbg !4749, !tbaa !1051
  %mul = mul i32 %6, %7, !dbg !4749
  %8 = load i32, ptr %j, align 4, !dbg !4749, !tbaa !1051
  %add4 = add i32 %mul, %8, !dbg !4749
  %idxprom = zext i32 %add4 to i64, !dbg !4749
  %arrayidx = getelementptr inbounds i64, ptr %5, i64 %idxprom, !dbg !4749
  %9 = load i64, ptr %arrayidx, align 8, !dbg !4749, !tbaa !1547
  %10 = load ptr, ptr %_values.addr, align 8, !dbg !4752, !tbaa !777
  %11 = load i32, ptr %j, align 4, !dbg !4752, !tbaa !1051
  %12 = load i32, ptr %nbobjs.addr, align 4, !dbg !4752, !tbaa !1051
  %mul5 = mul i32 %11, %12, !dbg !4752
  %13 = load i32, ptr %i, align 4, !dbg !4752, !tbaa !1051
  %add6 = add i32 %mul5, %13, !dbg !4752
  %idxprom7 = zext i32 %add6 to i64, !dbg !4752
  %arrayidx8 = getelementptr inbounds i64, ptr %10, i64 %idxprom7, !dbg !4752
  %14 = load i64, ptr %arrayidx8, align 8, !dbg !4752, !tbaa !1547
  %15 = load float, ptr %accuracy.addr, align 4, !dbg !4753, !tbaa !847
  %call = call i32 @hwloc_compare_values(i64 noundef %9, i64 noundef %14, float noundef %15), !dbg !4754
  %tobool = icmp ne i32 %call, 0, !dbg !4754
  br i1 %tobool, label %if.then, label %if.end20, !dbg !4755

if.then:                                          ; preds = %for.body3
  %16 = load i32, ptr %verbose.addr, align 4, !dbg !4756, !tbaa !1051
  %tobool9 = icmp ne i32 %16, 0, !dbg !4756
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !4759

if.then10:                                        ; preds = %if.then
  %17 = load ptr, ptr @stderr, align 8, !dbg !4760, !tbaa !777
  %18 = load i32, ptr %i, align 4, !dbg !4761, !tbaa !1051
  %19 = load i32, ptr %j, align 4, !dbg !4762, !tbaa !1051
  %20 = load ptr, ptr %_values.addr, align 8, !dbg !4763, !tbaa !777
  %21 = load i32, ptr %i, align 4, !dbg !4763, !tbaa !1051
  %22 = load i32, ptr %nbobjs.addr, align 4, !dbg !4763, !tbaa !1051
  %mul11 = mul i32 %21, %22, !dbg !4763
  %23 = load i32, ptr %j, align 4, !dbg !4763, !tbaa !1051
  %add12 = add i32 %mul11, %23, !dbg !4763
  %idxprom13 = zext i32 %add12 to i64, !dbg !4763
  %arrayidx14 = getelementptr inbounds i64, ptr %20, i64 %idxprom13, !dbg !4763
  %24 = load i64, ptr %arrayidx14, align 8, !dbg !4763, !tbaa !1547
  %25 = load i32, ptr %j, align 4, !dbg !4764, !tbaa !1051
  %26 = load i32, ptr %i, align 4, !dbg !4765, !tbaa !1051
  %27 = load ptr, ptr %_values.addr, align 8, !dbg !4766, !tbaa !777
  %28 = load i32, ptr %j, align 4, !dbg !4766, !tbaa !1051
  %29 = load i32, ptr %nbobjs.addr, align 4, !dbg !4766, !tbaa !1051
  %mul15 = mul i32 %28, %29, !dbg !4766
  %30 = load i32, ptr %i, align 4, !dbg !4766, !tbaa !1051
  %add16 = add i32 %mul15, %30, !dbg !4766
  %idxprom17 = zext i32 %add16 to i64, !dbg !4766
  %arrayidx18 = getelementptr inbounds i64, ptr %27, i64 %idxprom17, !dbg !4766
  %31 = load i64, ptr %arrayidx18, align 8, !dbg !4766, !tbaa !1547
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.19, i32 noundef %18, i32 noundef %19, i64 noundef %24, i32 noundef %25, i32 noundef %26, i64 noundef %31), !dbg !4767
  br label %if.end, !dbg !4767

if.end:                                           ; preds = %if.then10, %if.then
  store i32 -1, ptr %retval, align 4, !dbg !4768
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4768

if.end20:                                         ; preds = %for.body3
  %32 = load ptr, ptr %_values.addr, align 8, !dbg !4769, !tbaa !777
  %33 = load i32, ptr %i, align 4, !dbg !4769, !tbaa !1051
  %34 = load i32, ptr %nbobjs.addr, align 4, !dbg !4769, !tbaa !1051
  %mul21 = mul i32 %33, %34, !dbg !4769
  %35 = load i32, ptr %j, align 4, !dbg !4769, !tbaa !1051
  %add22 = add i32 %mul21, %35, !dbg !4769
  %idxprom23 = zext i32 %add22 to i64, !dbg !4769
  %arrayidx24 = getelementptr inbounds i64, ptr %32, i64 %idxprom23, !dbg !4769
  %36 = load i64, ptr %arrayidx24, align 8, !dbg !4769, !tbaa !1547
  %37 = load ptr, ptr %_values.addr, align 8, !dbg !4771, !tbaa !777
  %38 = load i32, ptr %i, align 4, !dbg !4771, !tbaa !1051
  %39 = load i32, ptr %nbobjs.addr, align 4, !dbg !4771, !tbaa !1051
  %mul25 = mul i32 %38, %39, !dbg !4771
  %40 = load i32, ptr %i, align 4, !dbg !4771, !tbaa !1051
  %add26 = add i32 %mul25, %40, !dbg !4771
  %idxprom27 = zext i32 %add26 to i64, !dbg !4771
  %arrayidx28 = getelementptr inbounds i64, ptr %37, i64 %idxprom27, !dbg !4771
  %41 = load i64, ptr %arrayidx28, align 8, !dbg !4771, !tbaa !1547
  %42 = load float, ptr %accuracy.addr, align 4, !dbg !4772, !tbaa !847
  %call29 = call i32 @hwloc_compare_values(i64 noundef %36, i64 noundef %41, float noundef %42), !dbg !4773
  %cmp30 = icmp sle i32 %call29, 0, !dbg !4774
  br i1 %cmp30, label %if.then31, label %if.end44, !dbg !4775

if.then31:                                        ; preds = %if.end20
  %43 = load i32, ptr %verbose.addr, align 4, !dbg !4776, !tbaa !1051
  %tobool32 = icmp ne i32 %43, 0, !dbg !4776
  br i1 %tobool32, label %if.then33, label %if.end43, !dbg !4779

if.then33:                                        ; preds = %if.then31
  %44 = load ptr, ptr @stderr, align 8, !dbg !4780, !tbaa !777
  %45 = load i32, ptr %i, align 4, !dbg !4781, !tbaa !1051
  %46 = load i32, ptr %j, align 4, !dbg !4782, !tbaa !1051
  %47 = load ptr, ptr %_values.addr, align 8, !dbg !4783, !tbaa !777
  %48 = load i32, ptr %i, align 4, !dbg !4783, !tbaa !1051
  %49 = load i32, ptr %nbobjs.addr, align 4, !dbg !4783, !tbaa !1051
  %mul34 = mul i32 %48, %49, !dbg !4783
  %50 = load i32, ptr %j, align 4, !dbg !4783, !tbaa !1051
  %add35 = add i32 %mul34, %50, !dbg !4783
  %idxprom36 = zext i32 %add35 to i64, !dbg !4783
  %arrayidx37 = getelementptr inbounds i64, ptr %47, i64 %idxprom36, !dbg !4783
  %51 = load i64, ptr %arrayidx37, align 8, !dbg !4783, !tbaa !1547
  %52 = load i32, ptr %i, align 4, !dbg !4784, !tbaa !1051
  %53 = load i32, ptr %i, align 4, !dbg !4785, !tbaa !1051
  %54 = load ptr, ptr %_values.addr, align 8, !dbg !4786, !tbaa !777
  %55 = load i32, ptr %i, align 4, !dbg !4786, !tbaa !1051
  %56 = load i32, ptr %nbobjs.addr, align 4, !dbg !4786, !tbaa !1051
  %mul38 = mul i32 %55, %56, !dbg !4786
  %57 = load i32, ptr %i, align 4, !dbg !4786, !tbaa !1051
  %add39 = add i32 %mul38, %57, !dbg !4786
  %idxprom40 = zext i32 %add39 to i64, !dbg !4786
  %arrayidx41 = getelementptr inbounds i64, ptr %54, i64 %idxprom40, !dbg !4786
  %58 = load i64, ptr %arrayidx41, align 8, !dbg !4786, !tbaa !1547
  %call42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.20, i32 noundef %45, i32 noundef %46, i64 noundef %51, i32 noundef %52, i32 noundef %53, i64 noundef %58), !dbg !4787
  br label %if.end43, !dbg !4787

if.end43:                                         ; preds = %if.then33, %if.then31
  store i32 -1, ptr %retval, align 4, !dbg !4788
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4788

if.end44:                                         ; preds = %if.end20
  br label %for.inc, !dbg !4789

for.inc:                                          ; preds = %if.end44
  %59 = load i32, ptr %j, align 4, !dbg !4790, !tbaa !1051
  %inc = add i32 %59, 1, !dbg !4790
  store i32 %inc, ptr %j, align 4, !dbg !4790, !tbaa !1051
  br label %for.cond1, !dbg !4791, !llvm.loop !4792

for.end:                                          ; preds = %for.cond1
  br label %for.inc45, !dbg !4794

for.inc45:                                        ; preds = %for.end
  %60 = load i32, ptr %i, align 4, !dbg !4795, !tbaa !1051
  %inc46 = add i32 %60, 1, !dbg !4795
  store i32 %inc46, ptr %i, align 4, !dbg !4795, !tbaa !1051
  br label %for.cond, !dbg !4796, !llvm.loop !4797

for.end47:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4799
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4799

cleanup:                                          ; preds = %for.end47, %if.end43, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #15, !dbg !4800
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !4800
  %61 = load i32, ptr %retval, align 4, !dbg !4800
  ret i32 %61, !dbg !4800
}

; Function Attrs: nounwind uwtable
define internal i32 @hwloc__find_groups_by_min_distance(i32 noundef %nbobjs, ptr noundef %_values, float noundef %accuracy, ptr noundef %groupids, i32 noundef %verbose) #0 !dbg !4801 {
entry:
  %retval = alloca i32, align 4
  %nbobjs.addr = alloca i32, align 4
  %_values.addr = alloca ptr, align 8
  %accuracy.addr = alloca float, align 4
  %groupids.addr = alloca ptr, align 8
  %verbose.addr = alloca i32, align 4
  %min_distance = alloca i64, align 8
  %groupid = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %skipped = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %size = alloca i32, align 4
  %firstfound = alloca i32, align 4
  %newfirstfound = alloca i32, align 4
  store i32 %nbobjs, ptr %nbobjs.addr, align 4, !tbaa !1051
  tail call void @llvm.dbg.declare(metadata ptr %nbobjs.addr, metadata !4805, metadata !DIExpression()), !dbg !4823
  store ptr %_values, ptr %_values.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %_values.addr, metadata !4806, metadata !DIExpression()), !dbg !4824
  store float %accuracy, ptr %accuracy.addr, align 4, !tbaa !847
  tail call void @llvm.dbg.declare(metadata ptr %accuracy.addr, metadata !4807, metadata !DIExpression()), !dbg !4825
  store ptr %groupids, ptr %groupids.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %groupids.addr, metadata !4808, metadata !DIExpression()), !dbg !4826
  store i32 %verbose, ptr %verbose.addr, align 4, !tbaa !1051
  tail call void @llvm.dbg.declare(metadata ptr %verbose.addr, metadata !4809, metadata !DIExpression()), !dbg !4827
  call void @llvm.lifetime.start.p0(i64 8, ptr %min_distance) #15, !dbg !4828
  tail call void @llvm.dbg.declare(metadata ptr %min_distance, metadata !4810, metadata !DIExpression()), !dbg !4829
  store i64 -1, ptr %min_distance, align 8, !dbg !4829, !tbaa !1547
  call void @llvm.lifetime.start.p0(i64 4, ptr %groupid) #15, !dbg !4830
  tail call void @llvm.dbg.declare(metadata ptr %groupid, metadata !4811, metadata !DIExpression()), !dbg !4831
  store i32 1, ptr %groupid, align 4, !dbg !4831, !tbaa !1051
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4832
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !4812, metadata !DIExpression()), !dbg !4833
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #15, !dbg !4832
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !4813, metadata !DIExpression()), !dbg !4834
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #15, !dbg !4832
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !4814, metadata !DIExpression()), !dbg !4835
  call void @llvm.lifetime.start.p0(i64 4, ptr %skipped) #15, !dbg !4836
  tail call void @llvm.dbg.declare(metadata ptr %skipped, metadata !4815, metadata !DIExpression()), !dbg !4837
  store i32 0, ptr %skipped, align 4, !dbg !4837, !tbaa !1051
  %0 = load ptr, ptr %groupids.addr, align 8, !dbg !4838, !tbaa !777
  %1 = load i32, ptr %nbobjs.addr, align 4, !dbg !4839, !tbaa !1051
  %conv = zext i32 %1 to i64, !dbg !4839
  %mul = mul i64 %conv, 4, !dbg !4840
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %mul, i1 false), !dbg !4841
  store i32 0, ptr %i, align 4, !dbg !4842, !tbaa !1051
  br label %for.cond, !dbg !4844

for.cond:                                         ; preds = %for.inc15, %entry
  %2 = load i32, ptr %i, align 4, !dbg !4845, !tbaa !1051
  %3 = load i32, ptr %nbobjs.addr, align 4, !dbg !4847, !tbaa !1051
  %cmp = icmp ult i32 %2, %3, !dbg !4848
  br i1 %cmp, label %for.body, label %for.end17, !dbg !4849

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !dbg !4850, !tbaa !1051
  br label %for.cond2, !dbg !4852

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %j, align 4, !dbg !4853, !tbaa !1051
  %5 = load i32, ptr %nbobjs.addr, align 4, !dbg !4855, !tbaa !1051
  %cmp3 = icmp ult i32 %4, %5, !dbg !4856
  br i1 %cmp3, label %for.body5, label %for.end, !dbg !4857

for.body5:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4, !dbg !4858, !tbaa !1051
  %7 = load i32, ptr %j, align 4, !dbg !4860, !tbaa !1051
  %cmp6 = icmp ne i32 %6, %7, !dbg !4861
  br i1 %cmp6, label %land.lhs.true, label %if.end, !dbg !4862

land.lhs.true:                                    ; preds = %for.body5
  %8 = load ptr, ptr %_values.addr, align 8, !dbg !4863, !tbaa !777
  %9 = load i32, ptr %i, align 4, !dbg !4863, !tbaa !1051
  %10 = load i32, ptr %nbobjs.addr, align 4, !dbg !4863, !tbaa !1051
  %mul8 = mul i32 %9, %10, !dbg !4863
  %11 = load i32, ptr %j, align 4, !dbg !4863, !tbaa !1051
  %add = add i32 %mul8, %11, !dbg !4863
  %idxprom = zext i32 %add to i64, !dbg !4863
  %arrayidx = getelementptr inbounds i64, ptr %8, i64 %idxprom, !dbg !4863
  %12 = load i64, ptr %arrayidx, align 8, !dbg !4863, !tbaa !1547
  %13 = load i64, ptr %min_distance, align 8, !dbg !4864, !tbaa !1547
  %cmp9 = icmp ult i64 %12, %13, !dbg !4865
  br i1 %cmp9, label %if.then, label %if.end, !dbg !4866

if.then:                                          ; preds = %land.lhs.true
  %14 = load ptr, ptr %_values.addr, align 8, !dbg !4867, !tbaa !777
  %15 = load i32, ptr %i, align 4, !dbg !4867, !tbaa !1051
  %16 = load i32, ptr %nbobjs.addr, align 4, !dbg !4867, !tbaa !1051
  %mul11 = mul i32 %15, %16, !dbg !4867
  %17 = load i32, ptr %j, align 4, !dbg !4867, !tbaa !1051
  %add12 = add i32 %mul11, %17, !dbg !4867
  %idxprom13 = zext i32 %add12 to i64, !dbg !4867
  %arrayidx14 = getelementptr inbounds i64, ptr %14, i64 %idxprom13, !dbg !4867
  %18 = load i64, ptr %arrayidx14, align 8, !dbg !4867, !tbaa !1547
  store i64 %18, ptr %min_distance, align 8, !dbg !4868, !tbaa !1547
  br label %if.end, !dbg !4869

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body5
  br label %for.inc, !dbg !4864

for.inc:                                          ; preds = %if.end
  %19 = load i32, ptr %j, align 4, !dbg !4870, !tbaa !1051
  %inc = add i32 %19, 1, !dbg !4870
  store i32 %inc, ptr %j, align 4, !dbg !4870, !tbaa !1051
  br label %for.cond2, !dbg !4871, !llvm.loop !4872

for.end:                                          ; preds = %for.cond2
  br label %for.inc15, !dbg !4873

for.inc15:                                        ; preds = %for.end
  %20 = load i32, ptr %i, align 4, !dbg !4874, !tbaa !1051
  %inc16 = add i32 %20, 1, !dbg !4874
  store i32 %inc16, ptr %i, align 4, !dbg !4874, !tbaa !1051
  br label %for.cond, !dbg !4875, !llvm.loop !4876

for.end17:                                        ; preds = %for.cond
  %21 = load i64, ptr %min_distance, align 8, !dbg !4878, !tbaa !1547
  call void (ptr, ...) @hwloc_debug(ptr noundef @.str.21, i64 noundef %21), !dbg !4879
  %22 = load i64, ptr %min_distance, align 8, !dbg !4880, !tbaa !1547
  %cmp18 = icmp eq i64 %22, -1, !dbg !4882
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !4883

if.then20:                                        ; preds = %for.end17
  store i32 0, ptr %retval, align 4, !dbg !4884
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup99, !dbg !4884

if.end21:                                         ; preds = %for.end17
  store i32 0, ptr %i, align 4, !dbg !4885, !tbaa !1051
  br label %for.cond22, !dbg !4886

for.cond22:                                       ; preds = %for.inc90, %if.end21
  %23 = load i32, ptr %i, align 4, !dbg !4887, !tbaa !1051
  %24 = load i32, ptr %nbobjs.addr, align 4, !dbg !4888, !tbaa !1051
  %cmp23 = icmp ult i32 %23, %24, !dbg !4889
  br i1 %cmp23, label %for.body25, label %for.end92, !dbg !4890

for.body25:                                       ; preds = %for.cond22
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #15, !dbg !4891
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !4816, metadata !DIExpression()), !dbg !4892
  call void @llvm.lifetime.start.p0(i64 4, ptr %firstfound) #15, !dbg !4893
  tail call void @llvm.dbg.declare(metadata ptr %firstfound, metadata !4820, metadata !DIExpression()), !dbg !4894
  %25 = load ptr, ptr %groupids.addr, align 8, !dbg !4895, !tbaa !777
  %26 = load i32, ptr %i, align 4, !dbg !4897, !tbaa !1051
  %idxprom26 = zext i32 %26 to i64, !dbg !4895
  %arrayidx27 = getelementptr inbounds i32, ptr %25, i64 %idxprom26, !dbg !4895
  %27 = load i32, ptr %arrayidx27, align 4, !dbg !4895, !tbaa !1051
  %tobool = icmp ne i32 %27, 0, !dbg !4895
  br i1 %tobool, label %if.then28, label %if.end29, !dbg !4898

if.then28:                                        ; preds = %for.body25
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4899

if.end29:                                         ; preds = %for.body25
  %28 = load i32, ptr %groupid, align 4, !dbg !4900, !tbaa !1051
  %29 = load ptr, ptr %groupids.addr, align 8, !dbg !4901, !tbaa !777
  %30 = load i32, ptr %i, align 4, !dbg !4902, !tbaa !1051
  %idxprom30 = zext i32 %30 to i64, !dbg !4901
  %arrayidx31 = getelementptr inbounds i32, ptr %29, i64 %idxprom30, !dbg !4901
  store i32 %28, ptr %arrayidx31, align 4, !dbg !4903, !tbaa !1051
  store i32 1, ptr %size, align 4, !dbg !4904, !tbaa !1051
  %31 = load i32, ptr %i, align 4, !dbg !4905, !tbaa !1051
  store i32 %31, ptr %firstfound, align 4, !dbg !4906, !tbaa !1051
  br label %while.cond, !dbg !4907

while.cond:                                       ; preds = %for.end75, %if.end29
  %32 = load i32, ptr %firstfound, align 4, !dbg !4908, !tbaa !1051
  %cmp32 = icmp ne i32 %32, -1, !dbg !4909
  br i1 %cmp32, label %while.body, label %while.end, !dbg !4907

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %newfirstfound) #15, !dbg !4910
  tail call void @llvm.dbg.declare(metadata ptr %newfirstfound, metadata !4821, metadata !DIExpression()), !dbg !4911
  store i32 -1, ptr %newfirstfound, align 4, !dbg !4911, !tbaa !1051
  %33 = load i32, ptr %firstfound, align 4, !dbg !4912, !tbaa !1051
  store i32 %33, ptr %j, align 4, !dbg !4914, !tbaa !1051
  br label %for.cond34, !dbg !4915

for.cond34:                                       ; preds = %for.inc73, %while.body
  %34 = load i32, ptr %j, align 4, !dbg !4916, !tbaa !1051
  %35 = load i32, ptr %nbobjs.addr, align 4, !dbg !4918, !tbaa !1051
  %cmp35 = icmp ult i32 %34, %35, !dbg !4919
  br i1 %cmp35, label %for.body37, label %for.end75, !dbg !4920

for.body37:                                       ; preds = %for.cond34
  %36 = load ptr, ptr %groupids.addr, align 8, !dbg !4921, !tbaa !777
  %37 = load i32, ptr %j, align 4, !dbg !4923, !tbaa !1051
  %idxprom38 = zext i32 %37 to i64, !dbg !4921
  %arrayidx39 = getelementptr inbounds i32, ptr %36, i64 %idxprom38, !dbg !4921
  %38 = load i32, ptr %arrayidx39, align 4, !dbg !4921, !tbaa !1051
  %39 = load i32, ptr %groupid, align 4, !dbg !4924, !tbaa !1051
  %cmp40 = icmp eq i32 %38, %39, !dbg !4925
  br i1 %cmp40, label %if.then42, label %if.end72, !dbg !4926

if.then42:                                        ; preds = %for.body37
  store i32 0, ptr %k, align 4, !dbg !4927, !tbaa !1051
  br label %for.cond43, !dbg !4929

for.cond43:                                       ; preds = %for.inc69, %if.then42
  %40 = load i32, ptr %k, align 4, !dbg !4930, !tbaa !1051
  %41 = load i32, ptr %nbobjs.addr, align 4, !dbg !4932, !tbaa !1051
  %cmp44 = icmp ult i32 %40, %41, !dbg !4933
  br i1 %cmp44, label %for.body46, label %for.end71, !dbg !4934

for.body46:                                       ; preds = %for.cond43
  %42 = load ptr, ptr %groupids.addr, align 8, !dbg !4935, !tbaa !777
  %43 = load i32, ptr %k, align 4, !dbg !4937, !tbaa !1051
  %idxprom47 = zext i32 %43 to i64, !dbg !4935
  %arrayidx48 = getelementptr inbounds i32, ptr %42, i64 %idxprom47, !dbg !4935
  %44 = load i32, ptr %arrayidx48, align 4, !dbg !4935, !tbaa !1051
  %tobool49 = icmp ne i32 %44, 0, !dbg !4935
  br i1 %tobool49, label %if.end68, label %land.lhs.true50, !dbg !4938

land.lhs.true50:                                  ; preds = %for.body46
  %45 = load ptr, ptr %_values.addr, align 8, !dbg !4939, !tbaa !777
  %46 = load i32, ptr %j, align 4, !dbg !4939, !tbaa !1051
  %47 = load i32, ptr %nbobjs.addr, align 4, !dbg !4939, !tbaa !1051
  %mul51 = mul i32 %46, %47, !dbg !4939
  %48 = load i32, ptr %k, align 4, !dbg !4939, !tbaa !1051
  %add52 = add i32 %mul51, %48, !dbg !4939
  %idxprom53 = zext i32 %add52 to i64, !dbg !4939
  %arrayidx54 = getelementptr inbounds i64, ptr %45, i64 %idxprom53, !dbg !4939
  %49 = load i64, ptr %arrayidx54, align 8, !dbg !4939, !tbaa !1547
  %50 = load i64, ptr %min_distance, align 8, !dbg !4940, !tbaa !1547
  %51 = load float, ptr %accuracy.addr, align 4, !dbg !4941, !tbaa !847
  %call = call i32 @hwloc_compare_values(i64 noundef %49, i64 noundef %50, float noundef %51), !dbg !4942
  %tobool55 = icmp ne i32 %call, 0, !dbg !4942
  br i1 %tobool55, label %if.end68, label %if.then56, !dbg !4943

if.then56:                                        ; preds = %land.lhs.true50
  %52 = load i32, ptr %groupid, align 4, !dbg !4944, !tbaa !1051
  %53 = load ptr, ptr %groupids.addr, align 8, !dbg !4946, !tbaa !777
  %54 = load i32, ptr %k, align 4, !dbg !4947, !tbaa !1051
  %idxprom57 = zext i32 %54 to i64, !dbg !4946
  %arrayidx58 = getelementptr inbounds i32, ptr %53, i64 %idxprom57, !dbg !4946
  store i32 %52, ptr %arrayidx58, align 4, !dbg !4948, !tbaa !1051
  %55 = load i32, ptr %size, align 4, !dbg !4949, !tbaa !1051
  %inc59 = add i32 %55, 1, !dbg !4949
  store i32 %inc59, ptr %size, align 4, !dbg !4949, !tbaa !1051
  %56 = load i32, ptr %newfirstfound, align 4, !dbg !4950, !tbaa !1051
  %cmp60 = icmp eq i32 %56, -1, !dbg !4952
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !4953

if.then62:                                        ; preds = %if.then56
  %57 = load i32, ptr %k, align 4, !dbg !4954, !tbaa !1051
  store i32 %57, ptr %newfirstfound, align 4, !dbg !4955, !tbaa !1051
  br label %if.end63, !dbg !4956

if.end63:                                         ; preds = %if.then62, %if.then56
  %58 = load i32, ptr %i, align 4, !dbg !4957, !tbaa !1051
  %59 = load i32, ptr %j, align 4, !dbg !4959, !tbaa !1051
  %cmp64 = icmp eq i32 %58, %59, !dbg !4960
  br i1 %cmp64, label %if.then66, label %if.else, !dbg !4961

if.then66:                                        ; preds = %if.end63
  %60 = load i32, ptr %k, align 4, !dbg !4962, !tbaa !1051
  %61 = load i32, ptr %i, align 4, !dbg !4963, !tbaa !1051
  call void (ptr, ...) @hwloc_debug(ptr noundef @.str.22, i32 noundef %60, i32 noundef %61), !dbg !4964
  br label %if.end67, !dbg !4964

if.else:                                          ; preds = %if.end63
  %62 = load i32, ptr %k, align 4, !dbg !4965, !tbaa !1051
  %63 = load i32, ptr %i, align 4, !dbg !4966, !tbaa !1051
  %64 = load i32, ptr %j, align 4, !dbg !4967, !tbaa !1051
  call void (ptr, ...) @hwloc_debug(ptr noundef @.str.23, i32 noundef %62, i32 noundef %63, i32 noundef %64), !dbg !4968
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then66
  br label %if.end68, !dbg !4969

if.end68:                                         ; preds = %if.end67, %land.lhs.true50, %for.body46
  br label %for.inc69, !dbg !4970

for.inc69:                                        ; preds = %if.end68
  %65 = load i32, ptr %k, align 4, !dbg !4971, !tbaa !1051
  %inc70 = add i32 %65, 1, !dbg !4971
  store i32 %inc70, ptr %k, align 4, !dbg !4971, !tbaa !1051
  br label %for.cond43, !dbg !4972, !llvm.loop !4973

for.end71:                                        ; preds = %for.cond43
  br label %if.end72, !dbg !4974

if.end72:                                         ; preds = %for.end71, %for.body37
  br label %for.inc73, !dbg !4924

for.inc73:                                        ; preds = %if.end72
  %66 = load i32, ptr %j, align 4, !dbg !4975, !tbaa !1051
  %inc74 = add i32 %66, 1, !dbg !4975
  store i32 %inc74, ptr %j, align 4, !dbg !4975, !tbaa !1051
  br label %for.cond34, !dbg !4976, !llvm.loop !4977

for.end75:                                        ; preds = %for.cond34
  %67 = load i32, ptr %newfirstfound, align 4, !dbg !4979, !tbaa !1051
  store i32 %67, ptr %firstfound, align 4, !dbg !4980, !tbaa !1051
  call void @llvm.lifetime.end.p0(i64 4, ptr %newfirstfound) #15, !dbg !4981
  br label %while.cond, !dbg !4907, !llvm.loop !4982

while.end:                                        ; preds = %while.cond
  %68 = load i32, ptr %size, align 4, !dbg !4983, !tbaa !1051
  %cmp76 = icmp eq i32 %68, 1, !dbg !4985
  br i1 %cmp76, label %if.then78, label %if.end82, !dbg !4986

if.then78:                                        ; preds = %while.end
  %69 = load ptr, ptr %groupids.addr, align 8, !dbg !4987, !tbaa !777
  %70 = load i32, ptr %i, align 4, !dbg !4989, !tbaa !1051
  %idxprom79 = zext i32 %70 to i64, !dbg !4987
  %arrayidx80 = getelementptr inbounds i32, ptr %69, i64 %idxprom79, !dbg !4987
  store i32 0, ptr %arrayidx80, align 4, !dbg !4990, !tbaa !1051
  %71 = load i32, ptr %skipped, align 4, !dbg !4991, !tbaa !1051
  %inc81 = add i32 %71, 1, !dbg !4991
  store i32 %inc81, ptr %skipped, align 4, !dbg !4991, !tbaa !1051
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4992

if.end82:                                         ; preds = %while.end
  %72 = load i32, ptr %groupid, align 4, !dbg !4993, !tbaa !1051
  %inc83 = add i32 %72, 1, !dbg !4993
  store i32 %inc83, ptr %groupid, align 4, !dbg !4993, !tbaa !1051
  %73 = load i32, ptr %verbose.addr, align 4, !dbg !4994, !tbaa !1051
  %tobool84 = icmp ne i32 %73, 0, !dbg !4994
  br i1 %tobool84, label %if.then85, label %if.end88, !dbg !4996

if.then85:                                        ; preds = %if.end82
  %74 = load ptr, ptr @stderr, align 8, !dbg !4997, !tbaa !777
  %75 = load i32, ptr %size, align 4, !dbg !4998, !tbaa !1051
  %76 = load i64, ptr %min_distance, align 8, !dbg !4999, !tbaa !1547
  %77 = load float, ptr %accuracy.addr, align 4, !dbg !5000, !tbaa !847
  %conv86 = fpext float %77 to double, !dbg !5000
  %call87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef @.str.24, i32 noundef %75, i64 noundef %76, double noundef %conv86), !dbg !5001
  br label %if.end88, !dbg !5001

if.end88:                                         ; preds = %if.then85, %if.end82
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5002
  br label %cleanup, !dbg !5002

cleanup:                                          ; preds = %if.end88, %if.then78, %if.then28
  call void @llvm.lifetime.end.p0(i64 4, ptr %firstfound) #15, !dbg !5002
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #15, !dbg !5002
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 10, label %for.inc90
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc90, !dbg !5003

for.inc90:                                        ; preds = %cleanup.cont, %cleanup
  %78 = load i32, ptr %i, align 4, !dbg !5004, !tbaa !1051
  %inc91 = add i32 %78, 1, !dbg !5004
  store i32 %inc91, ptr %i, align 4, !dbg !5004, !tbaa !1051
  br label %for.cond22, !dbg !5005, !llvm.loop !5006

for.end92:                                        ; preds = %for.cond22
  %79 = load i32, ptr %groupid, align 4, !dbg !5008, !tbaa !1051
  %cmp93 = icmp eq i32 %79, 2, !dbg !5010
  br i1 %cmp93, label %land.lhs.true95, label %if.end98, !dbg !5011

land.lhs.true95:                                  ; preds = %for.end92
  %80 = load i32, ptr %skipped, align 4, !dbg !5012, !tbaa !1051
  %tobool96 = icmp ne i32 %80, 0, !dbg !5012
  br i1 %tobool96, label %if.end98, label %if.then97, !dbg !5013

if.then97:                                        ; preds = %land.lhs.true95
  store i32 0, ptr %retval, align 4, !dbg !5014
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup99, !dbg !5014

if.end98:                                         ; preds = %land.lhs.true95, %for.end92
  %81 = load i32, ptr %groupid, align 4, !dbg !5015, !tbaa !1051
  %sub = sub i32 %81, 1, !dbg !5016
  store i32 %sub, ptr %retval, align 4, !dbg !5017
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup99, !dbg !5017

cleanup99:                                        ; preds = %if.end98, %if.then97, %if.then20
  call void @llvm.lifetime.end.p0(i64 4, ptr %skipped) #15, !dbg !5018
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #15, !dbg !5018
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #15, !dbg !5018
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5018
  call void @llvm.lifetime.end.p0(i64 4, ptr %groupid) #15, !dbg !5018
  call void @llvm.lifetime.end.p0(i64 8, ptr %min_distance) #15, !dbg !5018
  %82 = load i32, ptr %retval, align 4, !dbg !5018
  ret i32 %82, !dbg !5018

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !5019 ptr @hwloc_alloc_setup_object(ptr noundef, i32 noundef, i32 noundef) #8

declare !dbg !5022 noalias ptr @hwloc_bitmap_alloc() #8

declare !dbg !5025 i32 @hwloc_obj_add_other_obj_sets(ptr noundef, ptr noundef) #8

declare !dbg !5028 ptr @hwloc__insert_object_by_cpuset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: nounwind uwtable
define internal i32 @hwloc_compare_values(i64 noundef %a, i64 noundef %b, float noundef %accuracy) #0 !dbg !5031 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %accuracy.addr = alloca float, align 4
  store i64 %a, ptr %a.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !5035, metadata !DIExpression()), !dbg !5038
  store i64 %b, ptr %b.addr, align 8, !tbaa !1547
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !5036, metadata !DIExpression()), !dbg !5039
  store float %accuracy, ptr %accuracy.addr, align 4, !tbaa !847
  tail call void @llvm.dbg.declare(metadata ptr %accuracy.addr, metadata !5037, metadata !DIExpression()), !dbg !5040
  %0 = load float, ptr %accuracy.addr, align 4, !dbg !5041, !tbaa !847
  %cmp = fcmp une float %0, 0.000000e+00, !dbg !5043
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5044

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, ptr %a.addr, align 8, !dbg !5045, !tbaa !1547
  %conv = uitofp i64 %1 to float, !dbg !5046
  %2 = load i64, ptr %b.addr, align 8, !dbg !5047, !tbaa !1547
  %conv1 = uitofp i64 %2 to float, !dbg !5048
  %sub = fsub float %conv, %conv1, !dbg !5049
  %3 = call float @llvm.fabs.f32(float %sub), !dbg !5050
  %4 = load i64, ptr %a.addr, align 8, !dbg !5051, !tbaa !1547
  %conv2 = uitofp i64 %4 to float, !dbg !5052
  %5 = load float, ptr %accuracy.addr, align 4, !dbg !5053, !tbaa !847
  %mul = fmul float %conv2, %5, !dbg !5054
  %cmp3 = fcmp olt float %3, %mul, !dbg !5055
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5056

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !5057
  br label %return, !dbg !5057

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i64, ptr %a.addr, align 8, !dbg !5058, !tbaa !1547
  %7 = load i64, ptr %b.addr, align 8, !dbg !5059, !tbaa !1547
  %cmp5 = icmp ult i64 %6, %7, !dbg !5060
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !5058

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !5058

cond.false:                                       ; preds = %if.end
  %8 = load i64, ptr %a.addr, align 8, !dbg !5061, !tbaa !1547
  %9 = load i64, ptr %b.addr, align 8, !dbg !5062, !tbaa !1547
  %cmp7 = icmp eq i64 %8, %9, !dbg !5063
  %10 = zext i1 %cmp7 to i64, !dbg !5061
  %cond = select i1 %cmp7, i32 0, i32 1, !dbg !5061
  br label %cond.end, !dbg !5058

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond9 = phi i32 [ -1, %cond.true ], [ %cond, %cond.false ], !dbg !5058
  store i32 %cond9, ptr %retval, align 4, !dbg !5064
  br label %return, !dbg !5064

return:                                           ; preds = %cond.end, %if.then
  %11 = load i32, ptr %retval, align 4, !dbg !5065
  ret i32 %11, !dbg !5065
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

; Function Attrs: inlinehint nounwind uwtable
define internal void @hwloc_debug(ptr noundef %s, ...) #12 !dbg !5066 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5071, metadata !DIExpression()), !dbg !5072
  ret void, !dbg !5073
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @is_nvswitch(ptr noundef %obj) #12 !dbg !5074 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !5078, metadata !DIExpression()), !dbg !5079
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !5080, !tbaa !777
  %tobool = icmp ne ptr %0, null, !dbg !5080
  br i1 %tobool, label %land.lhs.true, label %land.end, !dbg !5081

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %obj.addr, align 8, !dbg !5082, !tbaa !777
  %subtype = getelementptr inbounds %struct.hwloc_obj, ptr %1, i32 0, i32 1, !dbg !5083
  %2 = load ptr, ptr %subtype, align 8, !dbg !5083, !tbaa !5084
  %tobool1 = icmp ne ptr %2, null, !dbg !5082
  br i1 %tobool1, label %land.rhs, label %land.end, !dbg !5085

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load ptr, ptr %obj.addr, align 8, !dbg !5086, !tbaa !777
  %subtype2 = getelementptr inbounds %struct.hwloc_obj, ptr %3, i32 0, i32 1, !dbg !5087
  %4 = load ptr, ptr %subtype2, align 8, !dbg !5087, !tbaa !5084
  %call = call i32 @strcmp(ptr noundef %4, ptr noundef @.str.26) #16, !dbg !5088
  %tobool3 = icmp ne i32 %call, 0, !dbg !5089
  %lnot = xor i1 %tobool3, true, !dbg !5089
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ], !dbg !5090
  %land.ext = zext i1 %5 to i32, !dbg !5085
  ret i32 %land.ext, !dbg !5091
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { nounwind allocsize(0,1) }
attributes #20 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!130}
!llvm.module.flags = !{!407, !408, !409, !410, !411}
!llvm.ident = !{!412}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "distances.c", directory: "/local-ssd/hwloc-zu2rei3kjykcqla7tvon4gcf6srurf7q-build/aidengro/spack-stage-hwloc-2.9.1-zu2rei3kjykcqla7tvon4gcf6srurf7q/spack-src/hwloc", checksumkind: CSK_MD5, checksum: "ee72c9dc731e66bf12030891a2a52173")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 15)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 2)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 24)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 4)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 23)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 510, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 48)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 828, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 43)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 828, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 12)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 828, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 448, elements: !46)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!46 = !{!47}
!47 = !DISubrange(count: 56)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !24, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 792, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 99)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 3)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 9)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !62, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 6)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !9, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 7)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 8)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1217, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 80)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1252, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 25)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1252, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 16)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1165, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 560, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 70)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1172, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 81)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1092, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 47)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1126, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 42)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1128, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 53)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1143, type: !86, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1398, type: !96, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1386, type: !62, isLocal: true, isDefinition: true)
!130 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !131, retainedTypes: !233, globals: !406, splitDebugInlining: false, nameTableKind: None)
!131 = !{!132, !157, !162, !166, !174, !180, !189, !194, !205, !213, !217, !223}
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !133, line: 176, baseType: !134, size: 32, elements: !135)
!133 = !DIFile(filename: "include/hwloc.h", directory: "/local-ssd/hwloc-zu2rei3kjykcqla7tvon4gcf6srurf7q-build/aidengro/spack-stage-hwloc-2.9.1-zu2rei3kjykcqla7tvon4gcf6srurf7q/spack-src", checksumkind: CSK_MD5, checksum: "b5c82f7cd9e6825d089443056321980c")
!134 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156}
!136 = !DIEnumerator(name: "HWLOC_OBJ_MACHINE", value: 0)
!137 = !DIEnumerator(name: "HWLOC_OBJ_PACKAGE", value: 1)
!138 = !DIEnumerator(name: "HWLOC_OBJ_CORE", value: 2)
!139 = !DIEnumerator(name: "HWLOC_OBJ_PU", value: 3)
!140 = !DIEnumerator(name: "HWLOC_OBJ_L1CACHE", value: 4)
!141 = !DIEnumerator(name: "HWLOC_OBJ_L2CACHE", value: 5)
!142 = !DIEnumerator(name: "HWLOC_OBJ_L3CACHE", value: 6)
!143 = !DIEnumerator(name: "HWLOC_OBJ_L4CACHE", value: 7)
!144 = !DIEnumerator(name: "HWLOC_OBJ_L5CACHE", value: 8)
!145 = !DIEnumerator(name: "HWLOC_OBJ_L1ICACHE", value: 9)
!146 = !DIEnumerator(name: "HWLOC_OBJ_L2ICACHE", value: 10)
!147 = !DIEnumerator(name: "HWLOC_OBJ_L3ICACHE", value: 11)
!148 = !DIEnumerator(name: "HWLOC_OBJ_GROUP", value: 12)
!149 = !DIEnumerator(name: "HWLOC_OBJ_NUMANODE", value: 13)
!150 = !DIEnumerator(name: "HWLOC_OBJ_BRIDGE", value: 14)
!151 = !DIEnumerator(name: "HWLOC_OBJ_PCI_DEVICE", value: 15)
!152 = !DIEnumerator(name: "HWLOC_OBJ_OS_DEVICE", value: 16)
!153 = !DIEnumerator(name: "HWLOC_OBJ_MISC", value: 17)
!154 = !DIEnumerator(name: "HWLOC_OBJ_MEMCACHE", value: 18)
!155 = !DIEnumerator(name: "HWLOC_OBJ_DIE", value: 19)
!156 = !DIEnumerator(name: "HWLOC_OBJ_TYPE_MAX", value: 20)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hwloc_obj_cache_type_e", file: !133, line: 326, baseType: !134, size: 32, elements: !158)
!158 = !{!159, !160, !161}
!159 = !DIEnumerator(name: "HWLOC_OBJ_CACHE_UNIFIED", value: 0)
!160 = !DIEnumerator(name: "HWLOC_OBJ_CACHE_DATA", value: 1)
!161 = !DIEnumerator(name: "HWLOC_OBJ_CACHE_INSTRUCTION", value: 2)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hwloc_obj_bridge_type_e", file: !133, line: 333, baseType: !134, size: 32, elements: !163)
!163 = !{!164, !165}
!164 = !DIEnumerator(name: "HWLOC_OBJ_BRIDGE_HOST", value: 0)
!165 = !DIEnumerator(name: "HWLOC_OBJ_BRIDGE_PCI", value: 1)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hwloc_obj_osdev_type_e", file: !133, line: 339, baseType: !134, size: 32, elements: !167)
!167 = !{!168, !169, !170, !171, !172, !173}
!168 = !DIEnumerator(name: "HWLOC_OBJ_OSDEV_BLOCK", value: 0)
!169 = !DIEnumerator(name: "HWLOC_OBJ_OSDEV_GPU", value: 1)
!170 = !DIEnumerator(name: "HWLOC_OBJ_OSDEV_NETWORK", value: 2)
!171 = !DIEnumerator(name: "HWLOC_OBJ_OSDEV_OPENFABRICS", value: 3)
!172 = !DIEnumerator(name: "HWLOC_OBJ_OSDEV_DMA", value: 4)
!173 = !DIEnumerator(name: "HWLOC_OBJ_OSDEV_COPROC", value: 5)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hwloc_type_filter_e", file: !133, line: 2254, baseType: !134, size: 32, elements: !175)
!175 = !{!176, !177, !178, !179}
!176 = !DIEnumerator(name: "HWLOC_TYPE_FILTER_KEEP_ALL", value: 0)
!177 = !DIEnumerator(name: "HWLOC_TYPE_FILTER_KEEP_NONE", value: 1)
!178 = !DIEnumerator(name: "HWLOC_TYPE_FILTER_KEEP_STRUCTURE", value: 2)
!179 = !DIEnumerator(name: "HWLOC_TYPE_FILTER_KEEP_IMPORTANT", value: 3)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !133, line: 1398, baseType: !181, size: 32, elements: !182)
!181 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!182 = !{!183, !184, !185, !186, !187, !188}
!183 = !DIEnumerator(name: "HWLOC_MEMBIND_DEFAULT", value: 0)
!184 = !DIEnumerator(name: "HWLOC_MEMBIND_FIRSTTOUCH", value: 1)
!185 = !DIEnumerator(name: "HWLOC_MEMBIND_BIND", value: 2)
!186 = !DIEnumerator(name: "HWLOC_MEMBIND_INTERLEAVE", value: 3)
!187 = !DIEnumerator(name: "HWLOC_MEMBIND_NEXTTOUCH", value: 4)
!188 = !DIEnumerator(name: "HWLOC_MEMBIND_MIXED", value: -1)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hwloc_location_type_e", file: !190, line: 189, baseType: !134, size: 32, elements: !191)
!190 = !DIFile(filename: "include/hwloc/memattrs.h", directory: "/local-ssd/hwloc-zu2rei3kjykcqla7tvon4gcf6srurf7q-build/aidengro/spack-stage-hwloc-2.9.1-zu2rei3kjykcqla7tvon4gcf6srurf7q/spack-src", checksumkind: CSK_MD5, checksum: "8d02fef3c931f8d5edf088c2e471611c")
!191 = !{!192, !193}
!192 = !DIEnumerator(name: "HWLOC_LOCATION_TYPE_CPUSET", value: 1)
!193 = !DIEnumerator(name: "HWLOC_LOCATION_TYPE_OBJECT", value: 0)
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hwloc_disc_phase_e", file: !195, line: 106, baseType: !134, size: 32, elements: !196)
!195 = !DIFile(filename: "include/hwloc/plugins.h", directory: "/local-ssd/hwloc-zu2rei3kjykcqla7tvon4gcf6srurf7q-build/aidengro/spack-stage-hwloc-2.9.1-zu2rei3kjykcqla7tvon4gcf6srurf7q/spack-src", checksumkind: CSK_MD5, checksum: "1091dfebc1c65f2228869166bc74d551")
!196 = !{!197, !198, !199, !200, !201, !202, !203, !204}
!197 = !DIEnumerator(name: "HWLOC_DISC_PHASE_GLOBAL", value: 1)
!198 = !DIEnumerator(name: "HWLOC_DISC_PHASE_CPU", value: 2)
!199 = !DIEnumerator(name: "HWLOC_DISC_PHASE_MEMORY", value: 4)
!200 = !DIEnumerator(name: "HWLOC_DISC_PHASE_PCI", value: 8)
!201 = !DIEnumerator(name: "HWLOC_DISC_PHASE_IO", value: 16)
!202 = !DIEnumerator(name: "HWLOC_DISC_PHASE_MISC", value: 32)
!203 = !DIEnumerator(name: "HWLOC_DISC_PHASE_ANNOTATE", value: 64)
!204 = !DIEnumerator(name: "HWLOC_DISC_PHASE_TWEAK", value: 128)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hwloc_distances_kind_e", file: !206, line: 79, baseType: !134, size: 32, elements: !207)
!206 = !DIFile(filename: "include/hwloc/distances.h", directory: "/local-ssd/hwloc-zu2rei3kjykcqla7tvon4gcf6srurf7q-build/aidengro/spack-stage-hwloc-2.9.1-zu2rei3kjykcqla7tvon4gcf6srurf7q/spack-src", checksumkind: CSK_MD5, checksum: "863dd20681acdca3d698acf4037fd048")
!207 = !{!208, !209, !210, !211, !212}
!208 = !DIEnumerator(name: "HWLOC_DISTANCES_KIND_FROM_OS", value: 1)
!209 = !DIEnumerator(name: "HWLOC_DISTANCES_KIND_FROM_USER", value: 2)
!210 = !DIEnumerator(name: "HWLOC_DISTANCES_KIND_MEANS_LATENCY", value: 4)
!211 = !DIEnumerator(name: "HWLOC_DISTANCES_KIND_MEANS_BANDWIDTH", value: 8)
!212 = !DIEnumerator(name: "HWLOC_DISTANCES_KIND_HETEROGENEOUS_TYPES", value: 16)
!213 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hwloc_distances_add_flag_e", file: !206, line: 387, baseType: !134, size: 32, elements: !214)
!214 = !{!215, !216}
!215 = !DIEnumerator(name: "HWLOC_DISTANCES_ADD_FLAG_GROUP", value: 1)
!216 = !DIEnumerator(name: "HWLOC_DISTANCES_ADD_FLAG_GROUP_INACCURATE", value: 2)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hwloc_distances_transform_e", file: !206, line: 187, baseType: !134, size: 32, elements: !218)
!218 = !{!219, !220, !221, !222}
!219 = !DIEnumerator(name: "HWLOC_DISTANCES_TRANSFORM_REMOVE_NULL", value: 0)
!220 = !DIEnumerator(name: "HWLOC_DISTANCES_TRANSFORM_LINKS", value: 1)
!221 = !DIEnumerator(name: "HWLOC_DISTANCES_TRANSFORM_MERGE_SWITCH_PORTS", value: 2)
!222 = !DIEnumerator(name: "HWLOC_DISTANCES_TRANSFORM_TRANSITIVE_CLOSURE", value: 3)
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hwloc_get_type_depth_e", file: !133, line: 821, baseType: !181, size: 32, elements: !224)
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232}
!225 = !DIEnumerator(name: "HWLOC_TYPE_DEPTH_UNKNOWN", value: -1)
!226 = !DIEnumerator(name: "HWLOC_TYPE_DEPTH_MULTIPLE", value: -2)
!227 = !DIEnumerator(name: "HWLOC_TYPE_DEPTH_NUMANODE", value: -3)
!228 = !DIEnumerator(name: "HWLOC_TYPE_DEPTH_BRIDGE", value: -4)
!229 = !DIEnumerator(name: "HWLOC_TYPE_DEPTH_PCI_DEVICE", value: -5)
!230 = !DIEnumerator(name: "HWLOC_TYPE_DEPTH_OS_DEVICE", value: -6)
!231 = !DIEnumerator(name: "HWLOC_TYPE_DEPTH_MISC", value: -7)
!232 = !DIEnumerator(name: "HWLOC_TYPE_DEPTH_MEMCACHE", value: -8)
!233 = !{!234, !258, !259, !260, !261, !277, !401, !181, !403, !404, !134, !405}
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !235, line: 24, baseType: !236)
!235 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h", directory: "", checksumkind: CSK_MD5, checksum: "4752f26e930c42056083e96227ff0057")
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !237, line: 41, baseType: !238)
!237 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h", directory: "", checksumkind: CSK_MD5, checksum: "79eea70c97dfcbc51f94cdf9446ea8a8")
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !237, line: 27, size: 1856, elements: !240)
!240 = !{!241, !247, !251, !254, !255}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !239, file: !237, line: 30, baseType: !242, size: 832)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 832, elements: !245)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !237, line: 30, flags: DIFlagFwdDecl)
!245 = !{!246}
!246 = !DISubrange(count: 13)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !239, file: !237, line: 33, baseType: !248, size: 64, offset: 832)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!250 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !239, file: !237, line: 34, baseType: !252, size: 64, offset: 896)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !239, file: !237, line: 35, baseType: !252, size: 64, offset: 960)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !239, file: !237, line: 38, baseType: !256, size: 832, offset: 1024)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 832, elements: !245)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!258 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "hwloc_obj_type_t", file: !133, line: 323, baseType: !132)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_distances_container_s", file: !2, line: 858, size: 320, elements: !263)
!263 = !{!264, !265}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !262, file: !2, line: 859, baseType: !134, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "distances", scope: !262, file: !2, line: 860, baseType: !266, size: 256, offset: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_distances_s", file: !206, line: 53, size: 256, elements: !267)
!267 = !{!268, !269, !398, !399}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "nbobjs", scope: !266, file: !206, line: 54, baseType: !134, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "objs", scope: !266, file: !206, line: 55, baseType: !270, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "hwloc_obj_t", file: !133, line: 596, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_obj", file: !133, line: 396, size: 1984, elements: !274)
!274 = !{!275, !276, !278, !279, !280, !288, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !385, !386, !388, !389, !395, !396, !397}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !273, file: !133, line: 398, baseType: !260, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !273, file: !133, line: 399, baseType: !277, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "os_index", scope: !273, file: !133, line: 401, baseType: !134, size: 32, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !273, file: !133, line: 408, baseType: !277, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "total_memory", scope: !273, file: !133, line: 413, baseType: !281, size: 64, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "hwloc_uint64_t", file: !282, line: 226, baseType: !283)
!282 = !DIFile(filename: "include/hwloc/autogen/config.h", directory: "/local-ssd/hwloc-zu2rei3kjykcqla7tvon4gcf6srurf7q-build/aidengro/spack-stage-hwloc-2.9.1-zu2rei3kjykcqla7tvon4gcf6srurf7q/spack-src", checksumkind: CSK_MD5, checksum: "2df0ab57186d6652185a93ca57e74def")
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !284, line: 27, baseType: !285)
!284 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !286, line: 45, baseType: !287)
!286 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!287 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !273, file: !133, line: 415, baseType: !289, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "hwloc_obj_attr_u", file: !133, line: 599, size: 320, elements: !291)
!291 = !{!292, !303, !312, !320, !334, !354}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "numanode", scope: !290, file: !133, line: 613, baseType: !293, size: 192)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_numanode_attr_s", file: !133, line: 601, size: 192, elements: !294)
!294 = !{!295, !296, !297}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory", scope: !293, file: !133, line: 602, baseType: !281, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "page_types_len", scope: !293, file: !133, line: 603, baseType: !134, size: 32, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "page_types", scope: !293, file: !133, line: 612, baseType: !298, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_memory_page_type_s", file: !133, line: 609, size: 128, elements: !300)
!300 = !{!301, !302}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !299, file: !133, line: 610, baseType: !281, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !299, file: !133, line: 611, baseType: !281, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !290, file: !133, line: 623, baseType: !304, size: 192)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_cache_attr_s", file: !133, line: 616, size: 192, elements: !305)
!305 = !{!306, !307, !308, !309, !310}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !304, file: !133, line: 617, baseType: !281, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !304, file: !133, line: 618, baseType: !134, size: 32, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "linesize", scope: !304, file: !133, line: 619, baseType: !134, size: 32, offset: 96)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "associativity", scope: !304, file: !133, line: 620, baseType: !181, size: 32, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !304, file: !133, line: 622, baseType: !311, size: 32, offset: 160)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "hwloc_obj_cache_type_t", file: !133, line: 330, baseType: !157)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !290, file: !133, line: 631, baseType: !313, size: 128)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_group_attr_s", file: !133, line: 625, size: 128, elements: !314)
!314 = !{!315, !316, !317, !318}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !313, file: !133, line: 626, baseType: !134, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !313, file: !133, line: 628, baseType: !134, size: 32, offset: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "subkind", scope: !313, file: !133, line: 629, baseType: !134, size: 32, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "dont_merge", scope: !313, file: !133, line: 630, baseType: !319, size: 8, offset: 96)
!319 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "pcidev", scope: !290, file: !133, line: 644, baseType: !321, size: 192)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_pcidev_attr_s", file: !133, line: 633, size: 192, elements: !322)
!322 = !{!323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !321, file: !133, line: 635, baseType: !250, size: 16)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !321, file: !133, line: 639, baseType: !319, size: 8, offset: 16)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !321, file: !133, line: 639, baseType: !319, size: 8, offset: 24)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !321, file: !133, line: 639, baseType: !319, size: 8, offset: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "class_id", scope: !321, file: !133, line: 640, baseType: !250, size: 16, offset: 48)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !321, file: !133, line: 641, baseType: !250, size: 16, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "device_id", scope: !321, file: !133, line: 641, baseType: !250, size: 16, offset: 80)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor_id", scope: !321, file: !133, line: 641, baseType: !250, size: 16, offset: 96)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice_id", scope: !321, file: !133, line: 641, baseType: !250, size: 16, offset: 112)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !321, file: !133, line: 642, baseType: !319, size: 8, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "linkspeed", scope: !321, file: !133, line: 643, baseType: !258, size: 32, offset: 160)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !290, file: !133, line: 663, baseType: !335, size: 320)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_bridge_attr_s", file: !133, line: 646, size: 320, elements: !336)
!336 = !{!337, !341, !343, !352, !353}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !335, file: !133, line: 649, baseType: !338, size: 192)
!338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !335, file: !133, line: 647, size: 192, elements: !339)
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !338, file: !133, line: 648, baseType: !321, size: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_type", scope: !335, file: !133, line: 650, baseType: !342, size: 32, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "hwloc_obj_bridge_type_t", file: !133, line: 336, baseType: !162)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "downstream", scope: !335, file: !133, line: 660, baseType: !344, size: 32, offset: 224)
!344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !335, file: !133, line: 651, size: 32, elements: !345)
!345 = !{!346}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !344, file: !133, line: 659, baseType: !347, size: 32)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !344, file: !133, line: 652, size: 32, elements: !348)
!348 = !{!349, !350, !351}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !347, file: !133, line: 654, baseType: !250, size: 16)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "secondary_bus", scope: !347, file: !133, line: 658, baseType: !319, size: 8, offset: 16)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate_bus", scope: !347, file: !133, line: 658, baseType: !319, size: 8, offset: 24)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_type", scope: !335, file: !133, line: 661, baseType: !342, size: 32, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !335, file: !133, line: 662, baseType: !134, size: 32, offset: 288)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "osdev", scope: !290, file: !133, line: 667, baseType: !355, size: 32)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_osdev_attr_s", file: !133, line: 665, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !355, file: !133, line: 666, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "hwloc_obj_osdev_type_t", file: !133, line: 356, baseType: !166)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !273, file: !133, line: 419, baseType: !181, size: 32, offset: 384)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "logical_index", scope: !273, file: !133, line: 434, baseType: !134, size: 32, offset: 416)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next_cousin", scope: !273, file: !133, line: 442, baseType: !272, size: 64, offset: 448)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cousin", scope: !273, file: !133, line: 443, baseType: !272, size: 64, offset: 512)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !273, file: !133, line: 446, baseType: !272, size: 64, offset: 576)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_rank", scope: !273, file: !133, line: 447, baseType: !134, size: 32, offset: 640)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling", scope: !273, file: !133, line: 448, baseType: !272, size: 64, offset: 704)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling", scope: !273, file: !133, line: 449, baseType: !272, size: 64, offset: 768)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !273, file: !133, line: 452, baseType: !134, size: 32, offset: 832)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !273, file: !133, line: 456, baseType: !369, size: 64, offset: 896)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "first_child", scope: !273, file: !133, line: 457, baseType: !272, size: 64, offset: 960)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "last_child", scope: !273, file: !133, line: 458, baseType: !272, size: 64, offset: 1024)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "symmetric_subtree", scope: !273, file: !133, line: 461, baseType: !181, size: 32, offset: 1088)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "memory_arity", scope: !273, file: !133, line: 472, baseType: !134, size: 32, offset: 1120)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "memory_first_child", scope: !273, file: !133, line: 475, baseType: !272, size: 64, offset: 1152)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "io_arity", scope: !273, file: !133, line: 490, baseType: !134, size: 32, offset: 1216)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "io_first_child", scope: !273, file: !133, line: 493, baseType: !272, size: 64, offset: 1280)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "misc_arity", scope: !273, file: !133, line: 502, baseType: !134, size: 32, offset: 1344)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "misc_first_child", scope: !273, file: !133, line: 505, baseType: !272, size: 64, offset: 1408)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset", scope: !273, file: !133, line: 512, baseType: !380, size: 64, offset: 1472)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "hwloc_cpuset_t", file: !133, line: 140, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "hwloc_bitmap_t", file: !382, line: 68, baseType: !383)
!382 = !DIFile(filename: "include/hwloc/bitmap.h", directory: "/local-ssd/hwloc-zu2rei3kjykcqla7tvon4gcf6srurf7q-build/aidengro/spack-stage-hwloc-2.9.1-zu2rei3kjykcqla7tvon4gcf6srurf7q/spack-src", checksumkind: CSK_MD5, checksum: "d0456df9b7335ef555b3fd609c469e99")
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_bitmap_s", file: !382, line: 68, flags: DIFlagFwdDecl)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "complete_cpuset", scope: !273, file: !133, line: 527, baseType: !380, size: 64, offset: 1536)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "nodeset", scope: !273, file: !133, line: 540, baseType: !387, size: 64, offset: 1600)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "hwloc_nodeset_t", file: !133, line: 157, baseType: !381)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "complete_nodeset", scope: !273, file: !133, line: 562, baseType: !387, size: 64, offset: 1664)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "infos", scope: !273, file: !133, line: 578, baseType: !390, size: 64, offset: 1728)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_info_s", file: !133, line: 674, size: 128, elements: !392)
!392 = !{!393, !394}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !391, file: !133, line: 675, baseType: !277, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !391, file: !133, line: 676, baseType: !277, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "infos_count", scope: !273, file: !133, line: 579, baseType: !134, size: 32, offset: 1792)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "userdata", scope: !273, file: !133, line: 582, baseType: !259, size: 64, offset: 1856)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "gp_index", scope: !273, file: !133, line: 587, baseType: !281, size: 64, offset: 1920)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !266, file: !206, line: 60, baseType: !287, size: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !266, file: !206, line: 61, baseType: !400, size: 64, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !402, line: 90, baseType: !287)
!402 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!404 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!405 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!406 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !48, !50, !55, !60, !65, !67, !72, !74, !79, !84, !89, !94, !99, !104, !109, !114, !119, !124, !126, !128}
!407 = !{i32 7, !"Dwarf Version", i32 5}
!408 = !{i32 2, !"Debug Info Version", i32 3}
!409 = !{i32 1, !"wchar_size", i32 4}
!410 = !{i32 8, !"PIC Level", i32 2}
!411 = !{i32 7, !"uwtable", i32 2}
!412 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!413 = distinct !DISubprogram(name: "hwloc_internal_distances_init", scope: !2, file: !2, line: 56, type: !414, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !775)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !416}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_topology", file: !418, line: 63, size: 7232, elements: !419)
!418 = !DIFile(filename: "include/private/private.h", directory: "/local-ssd/hwloc-zu2rei3kjykcqla7tvon4gcf6srurf7q-build/aidengro/spack-stage-hwloc-2.9.1-zu2rei3kjykcqla7tvon4gcf6srurf7q/spack-src", checksumkind: CSK_MD5, checksum: "d5b6519b0f9aae3453b4c83bca837d9a")
!419 = !{!420, !421, !422, !423, !425, !427, !428, !432, !434, !435, !436, !437, !441, !442, !443, !444, !447, !455, !456, !457, !547, !599, !603, !607, !608, !626, !627, !628, !629, !666, !667, !668, !678, !679, !680, !681, !685, !686, !731, !732, !733, !734, !744, !745, !746, !747, !755, !756, !757, !763, !774}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "topology_abi", scope: !417, file: !418, line: 64, baseType: !134, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "nb_levels", scope: !417, file: !418, line: 66, baseType: !134, size: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "nb_levels_allocated", scope: !417, file: !418, line: 67, baseType: !134, size: 32, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "level_nbobjects", scope: !417, file: !418, line: 68, baseType: !424, size: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "levels", scope: !417, file: !418, line: 69, baseType: !426, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !417, file: !418, line: 70, baseType: !287, size: 64, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "type_depth", scope: !417, file: !418, line: 71, baseType: !429, size: 640, offset: 320)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 640, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 20)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "type_filter", scope: !417, file: !418, line: 72, baseType: !433, size: 640, offset: 960)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 640, elements: !430)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "is_thissystem", scope: !417, file: !418, line: 73, baseType: !181, size: 32, offset: 1600)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "is_loaded", scope: !417, file: !418, line: 74, baseType: !181, size: 32, offset: 1632)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !417, file: !418, line: 75, baseType: !181, size: 32, offset: 1664)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !417, file: !418, line: 76, baseType: !438, size: 32, offset: 1696)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !439, line: 38, baseType: !440)
!439 = !DIFile(filename: "/usr/include/sched.h", directory: "", checksumkind: CSK_MD5, checksum: "52ea601aba54a9937a50019367077a72")
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !286, line: 154, baseType: !181)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "userdata", scope: !417, file: !418, line: 77, baseType: !259, size: 64, offset: 1728)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next_gp_index", scope: !417, file: !418, line: 78, baseType: !283, size: 64, offset: 1792)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "adopted_shmem_addr", scope: !417, file: !418, line: 80, baseType: !259, size: 64, offset: 1856)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "adopted_shmem_length", scope: !417, file: !418, line: 81, baseType: !445, size: 64, offset: 1920)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !446, line: 70, baseType: !287)
!446 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!447 = !DIDerivedType(tag: DW_TAG_member, name: "slevels", scope: !417, file: !418, line: 97, baseType: !448, size: 1536, offset: 1984)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 1536, elements: !70)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_special_level_s", file: !418, line: 93, size: 256, elements: !450)
!450 = !{!451, !452, !453, !454}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "nbobjs", scope: !449, file: !418, line: 94, baseType: !134, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "objs", scope: !449, file: !418, line: 95, baseType: !369, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !449, file: !418, line: 96, baseType: !272, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !449, file: !418, line: 96, baseType: !272, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_cpuset", scope: !417, file: !418, line: 99, baseType: !381, size: 64, offset: 3520)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_nodeset", scope: !417, file: !418, line: 100, baseType: !381, size: 64, offset: 3584)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "binding_hooks", scope: !417, file: !418, line: 136, baseType: !458, size: 1536, offset: 3648)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_binding_hooks", file: !418, line: 102, size: 1536, elements: !459)
!459 = !{!460, !469, !473, !474, !475, !479, !483, !489, !493, !494, !495, !496, !502, !507, !508, !509, !513, !517, !523, !527, !531, !535, !539, !543}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "set_thisproc_cpubind", scope: !458, file: !418, line: 104, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!181, !464, !465, !181}
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "hwloc_topology_t", file: !133, line: 692, baseType: !416)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "hwloc_const_cpuset_t", file: !133, line: 142, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "hwloc_const_bitmap_t", file: !382, line: 70, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisproc_cpubind", scope: !458, file: !418, line: 105, baseType: !470, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!181, !464, !380, !181}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "set_thisthread_cpubind", scope: !458, file: !418, line: 106, baseType: !461, size: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisthread_cpubind", scope: !458, file: !418, line: 107, baseType: !470, size: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "set_proc_cpubind", scope: !458, file: !418, line: 108, baseType: !476, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!181, !464, !438, !465, !181}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "get_proc_cpubind", scope: !458, file: !418, line: 109, baseType: !480, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!181, !464, !438, !380, !181}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "set_thread_cpubind", scope: !458, file: !418, line: 111, baseType: !484, size: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!181, !464, !487, !465, !181}
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !488, line: 27, baseType: !287)
!488 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!489 = !DIDerivedType(tag: DW_TAG_member, name: "get_thread_cpubind", scope: !458, file: !418, line: 112, baseType: !490, size: 64, offset: 448)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!181, !464, !487, !380, !181}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisproc_last_cpu_location", scope: !458, file: !418, line: 115, baseType: !470, size: 64, offset: 512)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisthread_last_cpu_location", scope: !458, file: !418, line: 116, baseType: !470, size: 64, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "get_proc_last_cpu_location", scope: !458, file: !418, line: 117, baseType: !480, size: 64, offset: 640)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "set_thisproc_membind", scope: !458, file: !418, line: 119, baseType: !497, size: 64, offset: 704)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!181, !464, !500, !501, !181}
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "hwloc_const_nodeset_t", file: !133, line: 160, baseType: !466)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "hwloc_membind_policy_t", file: !133, line: 1446, baseType: !180)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisproc_membind", scope: !458, file: !418, line: 120, baseType: !503, size: 64, offset: 768)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!181, !464, !387, !506, !181}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "set_thisthread_membind", scope: !458, file: !418, line: 121, baseType: !497, size: 64, offset: 832)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisthread_membind", scope: !458, file: !418, line: 122, baseType: !503, size: 64, offset: 896)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "set_proc_membind", scope: !458, file: !418, line: 123, baseType: !510, size: 64, offset: 960)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!181, !464, !438, !500, !501, !181}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "get_proc_membind", scope: !458, file: !418, line: 124, baseType: !514, size: 64, offset: 1024)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!181, !464, !438, !387, !506, !181}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "set_area_membind", scope: !458, file: !418, line: 125, baseType: !518, size: 64, offset: 1088)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!181, !464, !521, !445, !500, !501, !181}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "get_area_membind", scope: !458, file: !418, line: 126, baseType: !524, size: 64, offset: 1152)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!181, !464, !521, !445, !387, !506, !181}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "get_area_memlocation", scope: !458, file: !418, line: 127, baseType: !528, size: 64, offset: 1216)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!181, !464, !521, !445, !387, !181}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !458, file: !418, line: 129, baseType: !532, size: 64, offset: 1280)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!259, !464, !445}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_membind", scope: !458, file: !418, line: 132, baseType: !536, size: 64, offset: 1344)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!259, !464, !445, !500, !501, !181}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "free_membind", scope: !458, file: !418, line: 133, baseType: !540, size: 64, offset: 1408)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!181, !464, !259, !445}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "get_allowed_resources", scope: !458, file: !418, line: 135, baseType: !544, size: 64, offset: 1472)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!181, !464}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "support", scope: !417, file: !418, line: 138, baseType: !548, size: 256, offset: 5184)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_topology_support", file: !133, line: 2215, size: 256, elements: !549)
!549 = !{!550, !560, !575, !594}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "discovery", scope: !548, file: !133, line: 2216, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_topology_discovery_support", file: !133, line: 2119, size: 48, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !559}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "pu", scope: !552, file: !133, line: 2121, baseType: !319, size: 8)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "numa", scope: !552, file: !133, line: 2123, baseType: !319, size: 8, offset: 8)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "numa_memory", scope: !552, file: !133, line: 2125, baseType: !319, size: 8, offset: 16)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "disallowed_pu", scope: !552, file: !133, line: 2127, baseType: !319, size: 8, offset: 24)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "disallowed_numa", scope: !552, file: !133, line: 2129, baseType: !319, size: 8, offset: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "cpukind_efficiency", scope: !552, file: !133, line: 2131, baseType: !319, size: 8, offset: 40)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "cpubind", scope: !548, file: !133, line: 2217, baseType: !561, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_topology_cpubind_support", file: !133, line: 2139, size: 88, elements: !563)
!563 = !{!564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "set_thisproc_cpubind", scope: !562, file: !133, line: 2141, baseType: !319, size: 8)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisproc_cpubind", scope: !562, file: !133, line: 2143, baseType: !319, size: 8, offset: 8)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "set_proc_cpubind", scope: !562, file: !133, line: 2145, baseType: !319, size: 8, offset: 16)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "get_proc_cpubind", scope: !562, file: !133, line: 2147, baseType: !319, size: 8, offset: 24)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "set_thisthread_cpubind", scope: !562, file: !133, line: 2149, baseType: !319, size: 8, offset: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisthread_cpubind", scope: !562, file: !133, line: 2151, baseType: !319, size: 8, offset: 40)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "set_thread_cpubind", scope: !562, file: !133, line: 2153, baseType: !319, size: 8, offset: 48)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "get_thread_cpubind", scope: !562, file: !133, line: 2155, baseType: !319, size: 8, offset: 56)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisproc_last_cpu_location", scope: !562, file: !133, line: 2157, baseType: !319, size: 8, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "get_proc_last_cpu_location", scope: !562, file: !133, line: 2159, baseType: !319, size: 8, offset: 72)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisthread_last_cpu_location", scope: !562, file: !133, line: 2161, baseType: !319, size: 8, offset: 80)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "membind", scope: !548, file: !133, line: 2218, baseType: !576, size: 64, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_topology_membind_support", file: !133, line: 2169, size: 120, elements: !578)
!578 = !{!579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "set_thisproc_membind", scope: !577, file: !133, line: 2171, baseType: !319, size: 8)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisproc_membind", scope: !577, file: !133, line: 2173, baseType: !319, size: 8, offset: 8)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "set_proc_membind", scope: !577, file: !133, line: 2175, baseType: !319, size: 8, offset: 16)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "get_proc_membind", scope: !577, file: !133, line: 2177, baseType: !319, size: 8, offset: 24)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "set_thisthread_membind", scope: !577, file: !133, line: 2179, baseType: !319, size: 8, offset: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisthread_membind", scope: !577, file: !133, line: 2181, baseType: !319, size: 8, offset: 40)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "set_area_membind", scope: !577, file: !133, line: 2183, baseType: !319, size: 8, offset: 48)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "get_area_membind", scope: !577, file: !133, line: 2185, baseType: !319, size: 8, offset: 56)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_membind", scope: !577, file: !133, line: 2187, baseType: !319, size: 8, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "firsttouch_membind", scope: !577, file: !133, line: 2189, baseType: !319, size: 8, offset: 72)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "bind_membind", scope: !577, file: !133, line: 2191, baseType: !319, size: 8, offset: 80)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_membind", scope: !577, file: !133, line: 2193, baseType: !319, size: 8, offset: 88)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "nexttouch_membind", scope: !577, file: !133, line: 2195, baseType: !319, size: 8, offset: 96)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_membind", scope: !577, file: !133, line: 2197, baseType: !319, size: 8, offset: 104)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "get_area_memlocation", scope: !577, file: !133, line: 2199, baseType: !319, size: 8, offset: 112)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !548, file: !133, line: 2219, baseType: !595, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_topology_misc_support", file: !133, line: 2204, size: 8, elements: !597)
!597 = !{!598}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "imported_support", scope: !596, file: !133, line: 2206, baseType: !319, size: 8)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "userdata_export_cb", scope: !417, file: !418, line: 140, baseType: !600, size: 64, offset: 5440)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !259, !416, !272}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "userdata_import_cb", scope: !417, file: !418, line: 141, baseType: !604, size: 64, offset: 5504)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !416, !272, !257, !521, !445}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "userdata_not_decoded", scope: !417, file: !418, line: 142, baseType: !181, size: 32, offset: 5568)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "first_dist", scope: !417, file: !418, line: 176, baseType: !609, size: 64, offset: 5632)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_internal_distances_s", file: !418, line: 144, size: 704, elements: !611)
!611 = !{!612, !613, !614, !615, !617, !618, !620, !621, !622, !623, !624, !625}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !610, file: !418, line: 145, baseType: !277, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !610, file: !418, line: 147, baseType: !134, size: 32, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "unique_type", scope: !610, file: !418, line: 154, baseType: !260, size: 32, offset: 96)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "different_types", scope: !610, file: !418, line: 155, baseType: !616, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "nbobjs", scope: !610, file: !418, line: 158, baseType: !134, size: 32, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "indexes", scope: !610, file: !418, line: 159, baseType: !619, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !610, file: !418, line: 163, baseType: !619, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !610, file: !418, line: 166, baseType: !287, size: 64, offset: 384)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !610, file: !418, line: 170, baseType: !134, size: 32, offset: 448)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "objs", scope: !610, file: !418, line: 173, baseType: !270, size: 64, offset: 512)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !610, file: !418, line: 175, baseType: !609, size: 64, offset: 576)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !610, file: !418, line: 175, baseType: !609, size: 64, offset: 640)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "last_dist", scope: !417, file: !418, line: 176, baseType: !609, size: 64, offset: 5696)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "next_dist_id", scope: !417, file: !418, line: 177, baseType: !134, size: 32, offset: 5760)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_memattrs", scope: !417, file: !418, line: 180, baseType: !134, size: 32, offset: 5792)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "memattrs", scope: !417, file: !418, line: 208, baseType: !630, size: 64, offset: 5824)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_internal_memattr_s", file: !418, line: 181, size: 256, elements: !632)
!632 = !{!633, !634, !635, !636, !637}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !631, file: !418, line: 183, baseType: !277, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !631, file: !418, line: 184, baseType: !287, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !631, file: !418, line: 188, baseType: !134, size: 32, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_targets", scope: !631, file: !418, line: 191, baseType: !134, size: 32, offset: 160)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "targets", scope: !631, file: !418, line: 207, baseType: !638, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_internal_memattr_target_s", file: !418, line: 192, size: 384, elements: !640)
!640 = !{!641, !642, !643, !644, !645, !646, !647}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !639, file: !418, line: 194, baseType: !271, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !639, file: !418, line: 195, baseType: !260, size: 32, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "os_index", scope: !639, file: !418, line: 196, baseType: !134, size: 32, offset: 96)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "gp_index", scope: !639, file: !418, line: 197, baseType: !281, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "noinitiator_value", scope: !639, file: !418, line: 200, baseType: !281, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "nr_initiators", scope: !639, file: !418, line: 202, baseType: !134, size: 32, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "initiators", scope: !639, file: !418, line: 206, baseType: !648, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_internal_memattr_initiator_s", file: !418, line: 203, size: 320, elements: !650)
!650 = !{!651, !665}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "initiator", scope: !649, file: !418, line: 204, baseType: !652, size: 256)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_internal_location_s", file: !418, line: 45, size: 256, elements: !653)
!653 = !{!654, !655}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !652, file: !418, line: 46, baseType: !189, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !652, file: !418, line: 54, baseType: !656, size: 192, offset: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !652, file: !418, line: 47, size: 192, elements: !657)
!657 = !{!658, !664}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !656, file: !418, line: 52, baseType: !659, size: 192)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !656, file: !418, line: 48, size: 192, elements: !660)
!660 = !{!661, !662, !663}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !659, file: !418, line: 49, baseType: !271, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "gp_index", scope: !659, file: !418, line: 50, baseType: !283, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !659, file: !418, line: 51, baseType: !260, size: 32, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset", scope: !656, file: !418, line: 53, baseType: !380, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !649, file: !418, line: 205, baseType: !281, size: 64, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpukinds", scope: !417, file: !418, line: 211, baseType: !134, size: 32, offset: 5888)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpukinds_allocated", scope: !417, file: !418, line: 212, baseType: !134, size: 32, offset: 5920)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "cpukinds", scope: !417, file: !418, line: 221, baseType: !669, size: 64, offset: 5952)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_internal_cpukind_s", file: !418, line: 213, size: 320, elements: !671)
!671 = !{!672, !673, !674, !675, !676, !677}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset", scope: !670, file: !418, line: 214, baseType: !380, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "efficiency", scope: !670, file: !418, line: 216, baseType: !181, size: 32, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "forced_efficiency", scope: !670, file: !418, line: 217, baseType: !181, size: 32, offset: 96)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "ranking_value", scope: !670, file: !418, line: 218, baseType: !281, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_infos", scope: !670, file: !418, line: 219, baseType: !134, size: 32, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "infos", scope: !670, file: !418, line: 220, baseType: !390, size: 64, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !417, file: !418, line: 223, baseType: !181, size: 32, offset: 6016)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "grouping_verbose", scope: !417, file: !418, line: 224, baseType: !181, size: 32, offset: 6048)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "grouping_nbaccuracies", scope: !417, file: !418, line: 225, baseType: !134, size: 32, offset: 6080)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "grouping_accuracies", scope: !417, file: !418, line: 226, baseType: !682, size: 160, offset: 6112)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 160, elements: !683)
!683 = !{!684}
!684 = !DISubrange(count: 5)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "grouping_next_subkind", scope: !417, file: !418, line: 227, baseType: !134, size: 32, offset: 6272)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "backends", scope: !417, file: !418, line: 230, baseType: !687, size: 64, offset: 6336)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_backend", file: !195, line: 189, size: 704, elements: !689)
!689 = !{!690, !704, !705, !706, !707, !708, !709, !710, !711, !715, !726}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "component", scope: !688, file: !195, line: 191, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_disc_component", file: !195, line: 41, size: 320, elements: !693)
!693 = !{!694, !695, !696, !697, !701, !702, !703}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !692, file: !195, line: 45, baseType: !257, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "phases", scope: !692, file: !195, line: 50, baseType: !134, size: 32, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "excluded_phases", scope: !692, file: !195, line: 60, baseType: !134, size: 32, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "instantiate", scope: !692, file: !195, line: 65, baseType: !698, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!687, !416, !691, !134, !521, !521, !521}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !692, file: !195, line: 79, baseType: !134, size: 32, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "enabled_by_default", scope: !692, file: !195, line: 84, baseType: !134, size: 32, offset: 224)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !692, file: !195, line: 90, baseType: !691, size: 64, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "topology", scope: !688, file: !195, line: 193, baseType: !416, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "envvar_forced", scope: !688, file: !195, line: 195, baseType: !181, size: 32, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !688, file: !195, line: 197, baseType: !687, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "phases", scope: !688, file: !195, line: 202, baseType: !134, size: 32, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !688, file: !195, line: 205, baseType: !287, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "is_thissystem", scope: !688, file: !195, line: 213, baseType: !181, size: 32, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !688, file: !195, line: 216, baseType: !259, size: 64, offset: 448)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !688, file: !195, line: 220, baseType: !712, size: 64, offset: 512)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !687}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "discover", scope: !688, file: !195, line: 227, baseType: !716, size: 64, offset: 576)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!181, !687, !719}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_disc_status", file: !195, line: 156, size: 128, elements: !721)
!721 = !{!722, !724, !725}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !720, file: !195, line: 160, baseType: !723, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "hwloc_disc_phase_t", file: !195, line: 143, baseType: !194)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "excluded_phases", scope: !720, file: !195, line: 165, baseType: !134, size: 32, offset: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !720, file: !195, line: 168, baseType: !287, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "get_pci_busid_cpuset", scope: !688, file: !195, line: 233, baseType: !727, size: 64, offset: 640)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!181, !687, !730, !381}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "get_pci_busid_cpuset_backend", scope: !417, file: !418, line: 231, baseType: !687, size: 64, offset: 6400)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "backend_phases", scope: !417, file: !418, line: 232, baseType: !134, size: 32, offset: 6464)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "backend_excluded_phases", scope: !417, file: !418, line: 233, baseType: !134, size: 32, offset: 6496)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "tma", scope: !417, file: !418, line: 236, baseType: !735, size: 64, offset: 6528)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_tma", file: !418, line: 493, size: 192, elements: !737)
!737 = !{!738, !742, !743}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !736, file: !418, line: 494, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!259, !735, !445}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !736, file: !418, line: 495, baseType: !259, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "dontfree", scope: !736, file: !418, line: 496, baseType: !181, size: 32, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "machine_memory", scope: !417, file: !418, line: 252, baseType: !293, size: 192, offset: 6592)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "pci_has_forced_locality", scope: !417, file: !418, line: 255, baseType: !181, size: 32, offset: 6784)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "pci_forced_locality_nr", scope: !417, file: !418, line: 256, baseType: !134, size: 32, offset: 6816)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "pci_forced_locality", scope: !417, file: !418, line: 261, baseType: !748, size: 64, offset: 6848)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_pci_forced_locality_s", file: !418, line: 257, size: 192, elements: !750)
!750 = !{!751, !752, !753, !754}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !749, file: !418, line: 258, baseType: !134, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "bus_first", scope: !749, file: !418, line: 259, baseType: !134, size: 32, offset: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "bus_last", scope: !749, file: !418, line: 259, baseType: !134, size: 32, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset", scope: !749, file: !418, line: 260, baseType: !381, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "pci_locality_quirks", scope: !417, file: !418, line: 262, baseType: !281, size: 64, offset: 6912)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_blacklisted_components", scope: !417, file: !418, line: 265, baseType: !134, size: 32, offset: 6976)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "blacklisted_components", scope: !417, file: !418, line: 269, baseType: !758, size: 64, offset: 7040)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_topology_forced_component_s", file: !418, line: 266, size: 128, elements: !760)
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "component", scope: !759, file: !418, line: 267, baseType: !691, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "phases", scope: !759, file: !418, line: 268, baseType: !134, size: 32, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "first_pci_locality", scope: !417, file: !418, line: 279, baseType: !764, size: 64, offset: 7104)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_pci_locality_s", file: !418, line: 272, size: 384, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !772, !773}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !765, file: !418, line: 273, baseType: !134, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "bus_min", scope: !765, file: !418, line: 274, baseType: !134, size: 32, offset: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "bus_max", scope: !765, file: !418, line: 275, baseType: !134, size: 32, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset", scope: !765, file: !418, line: 276, baseType: !381, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !765, file: !418, line: 277, baseType: !271, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !765, file: !418, line: 278, baseType: !764, size: 64, offset: 256)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !765, file: !418, line: 278, baseType: !764, size: 64, offset: 320)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "last_pci_locality", scope: !417, file: !418, line: 279, baseType: !764, size: 64, offset: 7168)
!775 = !{!776}
!776 = !DILocalVariable(name: "topology", arg: 1, scope: !413, file: !2, line: 56, type: !416)
!777 = !{!778, !778, i64 0}
!778 = !{!"any pointer", !779, i64 0}
!779 = !{!"omnipotent char", !780, i64 0}
!780 = !{!"Simple C/C++ TBAA"}
!781 = !DILocation(line: 56, column: 59, scope: !413)
!782 = !DILocation(line: 58, column: 26, scope: !413)
!783 = !DILocation(line: 58, column: 36, scope: !413)
!784 = !DILocation(line: 58, column: 46, scope: !413)
!785 = !{!786, !778, i64 712}
!786 = !{!"hwloc_topology", !787, i64 0, !787, i64 4, !787, i64 8, !778, i64 16, !778, i64 24, !788, i64 32, !779, i64 40, !779, i64 120, !787, i64 200, !787, i64 204, !787, i64 208, !787, i64 212, !778, i64 216, !788, i64 224, !778, i64 232, !788, i64 240, !779, i64 248, !778, i64 440, !778, i64 448, !789, i64 456, !790, i64 648, !778, i64 680, !778, i64 688, !787, i64 696, !778, i64 704, !778, i64 712, !787, i64 720, !787, i64 724, !778, i64 728, !787, i64 736, !787, i64 740, !778, i64 744, !787, i64 752, !787, i64 756, !787, i64 760, !779, i64 764, !787, i64 784, !778, i64 792, !778, i64 800, !787, i64 808, !787, i64 812, !778, i64 816, !791, i64 824, !787, i64 848, !787, i64 852, !778, i64 856, !788, i64 864, !787, i64 872, !778, i64 880, !778, i64 888, !778, i64 896}
!787 = !{!"int", !779, i64 0}
!788 = !{!"long", !779, i64 0}
!789 = !{!"hwloc_binding_hooks", !778, i64 0, !778, i64 8, !778, i64 16, !778, i64 24, !778, i64 32, !778, i64 40, !778, i64 48, !778, i64 56, !778, i64 64, !778, i64 72, !778, i64 80, !778, i64 88, !778, i64 96, !778, i64 104, !778, i64 112, !778, i64 120, !778, i64 128, !778, i64 136, !778, i64 144, !778, i64 152, !778, i64 160, !778, i64 168, !778, i64 176, !778, i64 184}
!790 = !{!"hwloc_topology_support", !778, i64 0, !778, i64 8, !778, i64 16, !778, i64 24}
!791 = !{!"hwloc_numanode_attr_s", !788, i64 0, !787, i64 8, !778, i64 16}
!792 = !DILocation(line: 58, column: 3, scope: !413)
!793 = !DILocation(line: 58, column: 13, scope: !413)
!794 = !DILocation(line: 58, column: 24, scope: !413)
!795 = !{!786, !778, i64 704}
!796 = !DILocation(line: 59, column: 3, scope: !413)
!797 = !DILocation(line: 59, column: 13, scope: !413)
!798 = !DILocation(line: 59, column: 26, scope: !413)
!799 = !{!786, !787, i64 720}
!800 = !DILocation(line: 60, column: 1, scope: !413)
!801 = distinct !DISubprogram(name: "hwloc_internal_distances_prepare", scope: !2, file: !2, line: 63, type: !414, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !802)
!802 = !{!803, !804, !805, !806}
!803 = !DILocalVariable(name: "topology", arg: 1, scope: !801, file: !2, line: 63, type: !416)
!804 = !DILocalVariable(name: "env", scope: !801, file: !2, line: 65, type: !277)
!805 = !DILocalVariable(name: "__old_locale", scope: !801, file: !2, line: 66, type: !234)
!806 = !DILocalVariable(name: "__new_locale", scope: !801, file: !2, line: 66, type: !234)
!807 = !DILocation(line: 63, column: 62, scope: !801)
!808 = !DILocation(line: 65, column: 3, scope: !801)
!809 = !DILocation(line: 65, column: 9, scope: !801)
!810 = !DILocation(line: 66, column: 3, scope: !801)
!811 = !DILocation(line: 68, column: 3, scope: !801)
!812 = !DILocation(line: 68, column: 13, scope: !801)
!813 = !DILocation(line: 68, column: 22, scope: !801)
!814 = !{!786, !787, i64 752}
!815 = !DILocation(line: 69, column: 7, scope: !816)
!816 = distinct !DILexicalBlock(scope: !801, file: !2, line: 69, column: 7)
!817 = !DILocation(line: 69, column: 17, scope: !816)
!818 = !{!779, !779, i64 0}
!819 = !DILocation(line: 69, column: 46, scope: !816)
!820 = !DILocation(line: 69, column: 7, scope: !801)
!821 = !DILocation(line: 70, column: 5, scope: !816)
!822 = !DILocation(line: 70, column: 15, scope: !816)
!823 = !DILocation(line: 70, column: 24, scope: !816)
!824 = !DILocation(line: 71, column: 9, scope: !801)
!825 = !DILocation(line: 71, column: 7, scope: !801)
!826 = !DILocation(line: 72, column: 7, scope: !827)
!827 = distinct !DILexicalBlock(scope: !801, file: !2, line: 72, column: 7)
!828 = !DILocation(line: 72, column: 11, scope: !827)
!829 = !DILocation(line: 72, column: 20, scope: !827)
!830 = !DILocation(line: 72, column: 15, scope: !827)
!831 = !DILocation(line: 72, column: 7, scope: !801)
!832 = !DILocation(line: 73, column: 5, scope: !827)
!833 = !DILocation(line: 73, column: 15, scope: !827)
!834 = !DILocation(line: 73, column: 24, scope: !827)
!835 = !DILocation(line: 75, column: 7, scope: !836)
!836 = distinct !DILexicalBlock(scope: !801, file: !2, line: 75, column: 7)
!837 = !DILocation(line: 75, column: 17, scope: !836)
!838 = !DILocation(line: 75, column: 7, scope: !801)
!839 = !DILocation(line: 76, column: 5, scope: !840)
!840 = distinct !DILexicalBlock(scope: !836, file: !2, line: 75, column: 27)
!841 = !DILocation(line: 76, column: 15, scope: !840)
!842 = !DILocation(line: 76, column: 37, scope: !840)
!843 = !{!786, !787, i64 784}
!844 = !DILocation(line: 79, column: 5, scope: !840)
!845 = !DILocation(line: 79, column: 15, scope: !840)
!846 = !DILocation(line: 79, column: 38, scope: !840)
!847 = !{!848, !848, i64 0}
!848 = !{!"float", !779, i64 0}
!849 = !DILocation(line: 80, column: 5, scope: !840)
!850 = !DILocation(line: 80, column: 15, scope: !840)
!851 = !DILocation(line: 80, column: 38, scope: !840)
!852 = !DILocation(line: 81, column: 5, scope: !840)
!853 = !DILocation(line: 81, column: 15, scope: !840)
!854 = !DILocation(line: 81, column: 38, scope: !840)
!855 = !DILocation(line: 82, column: 5, scope: !840)
!856 = !DILocation(line: 82, column: 15, scope: !840)
!857 = !DILocation(line: 82, column: 38, scope: !840)
!858 = !DILocation(line: 83, column: 5, scope: !840)
!859 = !DILocation(line: 83, column: 15, scope: !840)
!860 = !DILocation(line: 83, column: 38, scope: !840)
!861 = !DILocation(line: 84, column: 5, scope: !840)
!862 = !DILocation(line: 84, column: 15, scope: !840)
!863 = !DILocation(line: 84, column: 37, scope: !840)
!864 = !{!786, !787, i64 760}
!865 = !DILocation(line: 86, column: 5, scope: !840)
!866 = !DILocation(line: 86, column: 5, scope: !867)
!867 = distinct !DILexicalBlock(scope: !840, file: !2, line: 86, column: 5)
!868 = !DILocation(line: 86, column: 5, scope: !869)
!869 = distinct !DILexicalBlock(scope: !867, file: !2, line: 86, column: 5)
!870 = !DILocation(line: 87, column: 11, scope: !840)
!871 = !DILocation(line: 87, column: 9, scope: !840)
!872 = !DILocation(line: 88, column: 10, scope: !873)
!873 = distinct !DILexicalBlock(scope: !840, file: !2, line: 88, column: 9)
!874 = !DILocation(line: 88, column: 9, scope: !840)
!875 = !DILocation(line: 90, column: 7, scope: !876)
!876 = distinct !DILexicalBlock(scope: !873, file: !2, line: 88, column: 15)
!877 = !DILocation(line: 90, column: 17, scope: !876)
!878 = !DILocation(line: 90, column: 39, scope: !876)
!879 = !DILocation(line: 91, column: 5, scope: !876)
!880 = !DILocation(line: 91, column: 23, scope: !881)
!881 = distinct !DILexicalBlock(scope: !873, file: !2, line: 91, column: 16)
!882 = !DILocation(line: 91, column: 16, scope: !881)
!883 = !DILocation(line: 91, column: 16, scope: !873)
!884 = !DILocation(line: 93, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !881, file: !2, line: 91, column: 36)
!886 = !DILocation(line: 93, column: 17, scope: !885)
!887 = !DILocation(line: 93, column: 39, scope: !885)
!888 = !DILocation(line: 94, column: 55, scope: !885)
!889 = !DILocation(line: 94, column: 50, scope: !885)
!890 = !DILocation(line: 94, column: 42, scope: !885)
!891 = !DILocation(line: 94, column: 7, scope: !885)
!892 = !DILocation(line: 94, column: 17, scope: !885)
!893 = !DILocation(line: 94, column: 40, scope: !885)
!894 = !DILocation(line: 95, column: 5, scope: !885)
!895 = !DILocation(line: 96, column: 5, scope: !840)
!896 = !DILocation(line: 96, column: 5, scope: !897)
!897 = distinct !DILexicalBlock(scope: !898, file: !2, line: 96, column: 5)
!898 = distinct !DILexicalBlock(scope: !840, file: !2, line: 96, column: 5)
!899 = !DILocation(line: 96, column: 5, scope: !898)
!900 = !DILocation(line: 96, column: 5, scope: !901)
!901 = distinct !DILexicalBlock(scope: !897, file: !2, line: 96, column: 5)
!902 = !DILocation(line: 98, column: 5, scope: !840)
!903 = !DILocation(line: 98, column: 15, scope: !840)
!904 = !DILocation(line: 98, column: 32, scope: !840)
!905 = !{!786, !787, i64 756}
!906 = !DILocation(line: 99, column: 11, scope: !840)
!907 = !DILocation(line: 99, column: 9, scope: !840)
!908 = !DILocation(line: 100, column: 9, scope: !909)
!909 = distinct !DILexicalBlock(scope: !840, file: !2, line: 100, column: 9)
!910 = !DILocation(line: 100, column: 9, scope: !840)
!911 = !DILocation(line: 101, column: 41, scope: !909)
!912 = !DILocation(line: 101, column: 36, scope: !909)
!913 = !DILocation(line: 101, column: 7, scope: !909)
!914 = !DILocation(line: 101, column: 17, scope: !909)
!915 = !DILocation(line: 101, column: 34, scope: !909)
!916 = !DILocation(line: 102, column: 3, scope: !840)
!917 = !DILocation(line: 103, column: 1, scope: !801)
!918 = !DISubprogram(name: "getenv", scope: !919, file: !919, line: 641, type: !920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!919 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!920 = !DISubroutineType(types: !921)
!921 = !{!277, !257}
!922 = distinct !DISubprogram(name: "atoi", scope: !919, file: !919, line: 362, type: !923, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !925)
!923 = !DISubroutineType(types: !924)
!924 = !{!181, !257}
!925 = !{!926}
!926 = !DILocalVariable(name: "__nptr", arg: 1, scope: !922, file: !919, line: 362, type: !257)
!927 = !DILocation(line: 362, column: 1, scope: !922)
!928 = !DILocation(line: 364, column: 24, scope: !922)
!929 = !DILocation(line: 364, column: 16, scope: !922)
!930 = !DILocation(line: 364, column: 10, scope: !922)
!931 = !DILocation(line: 364, column: 3, scope: !922)
!932 = !DISubprogram(name: "newlocale", scope: !933, file: !933, line: 141, type: !934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!933 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!934 = !DISubroutineType(types: !935)
!935 = !{!234, !181, !257, !234}
!936 = !DISubprogram(name: "uselocale", scope: !933, file: !933, line: 187, type: !937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!937 = !DISubroutineType(types: !938)
!938 = !{!234, !234}
!939 = !DISubprogram(name: "strcmp", scope: !940, file: !940, line: 156, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!940 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!941 = !DISubroutineType(types: !942)
!942 = !{!181, !257, !257}
!943 = distinct !DISubprogram(name: "atof", scope: !944, file: !944, line: 25, type: !945, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !948)
!944 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "", checksumkind: CSK_MD5, checksum: "adfe1626ff4efc68ac58c367ff5f206b")
!945 = !DISubroutineType(types: !946)
!946 = !{!947, !257}
!947 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!948 = !{!949}
!949 = !DILocalVariable(name: "__nptr", arg: 1, scope: !943, file: !944, line: 25, type: !257)
!950 = !DILocation(line: 25, column: 1, scope: !943)
!951 = !DILocation(line: 27, column: 18, scope: !943)
!952 = !DILocation(line: 27, column: 10, scope: !943)
!953 = !DILocation(line: 27, column: 3, scope: !943)
!954 = !DISubprogram(name: "freelocale", scope: !933, file: !933, line: 180, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !234}
!957 = distinct !DISubprogram(name: "hwloc_internal_distances_destroy", scope: !2, file: !2, line: 116, type: !414, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !958)
!958 = !{!959, !960, !961}
!959 = !DILocalVariable(name: "topology", arg: 1, scope: !957, file: !2, line: 116, type: !416)
!960 = !DILocalVariable(name: "dist", scope: !957, file: !2, line: 118, type: !609)
!961 = !DILocalVariable(name: "next", scope: !957, file: !2, line: 118, type: !609)
!962 = !DILocation(line: 116, column: 63, scope: !957)
!963 = !DILocation(line: 118, column: 3, scope: !957)
!964 = !DILocation(line: 118, column: 38, scope: !957)
!965 = !DILocation(line: 118, column: 45, scope: !957)
!966 = !DILocation(line: 118, column: 52, scope: !957)
!967 = !DILocation(line: 118, column: 62, scope: !957)
!968 = !DILocation(line: 119, column: 3, scope: !957)
!969 = !DILocation(line: 119, column: 18, scope: !957)
!970 = !DILocation(line: 119, column: 16, scope: !957)
!971 = !DILocation(line: 119, column: 24, scope: !957)
!972 = !DILocation(line: 120, column: 12, scope: !973)
!973 = distinct !DILexicalBlock(scope: !957, file: !2, line: 119, column: 33)
!974 = !DILocation(line: 120, column: 18, scope: !973)
!975 = !{!976, !778, i64 80}
!976 = !{!"hwloc_internal_distances_s", !778, i64 0, !787, i64 8, !779, i64 12, !778, i64 16, !787, i64 24, !778, i64 32, !778, i64 40, !788, i64 48, !787, i64 56, !778, i64 64, !778, i64 72, !778, i64 80}
!977 = !DILocation(line: 120, column: 10, scope: !973)
!978 = !DILocation(line: 121, column: 35, scope: !973)
!979 = !DILocation(line: 121, column: 5, scope: !973)
!980 = distinct !{!980, !968, !981, !982}
!981 = !DILocation(line: 122, column: 3, scope: !957)
!982 = !{!"llvm.loop.mustprogress"}
!983 = !DILocation(line: 123, column: 26, scope: !957)
!984 = !DILocation(line: 123, column: 36, scope: !957)
!985 = !DILocation(line: 123, column: 46, scope: !957)
!986 = !DILocation(line: 123, column: 3, scope: !957)
!987 = !DILocation(line: 123, column: 13, scope: !957)
!988 = !DILocation(line: 123, column: 24, scope: !957)
!989 = !DILocation(line: 124, column: 1, scope: !957)
!990 = distinct !DISubprogram(name: "hwloc_internal_distances_free", scope: !2, file: !2, line: 105, type: !991, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !993)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !609}
!993 = !{!994}
!994 = !DILocalVariable(name: "dist", arg: 1, scope: !990, file: !2, line: 105, type: !609)
!995 = !DILocation(line: 105, column: 78, scope: !990)
!996 = !DILocation(line: 107, column: 8, scope: !990)
!997 = !DILocation(line: 107, column: 14, scope: !990)
!998 = !{!976, !778, i64 0}
!999 = !DILocation(line: 107, column: 3, scope: !990)
!1000 = !DILocation(line: 108, column: 8, scope: !990)
!1001 = !DILocation(line: 108, column: 14, scope: !990)
!1002 = !{!976, !778, i64 16}
!1003 = !DILocation(line: 108, column: 3, scope: !990)
!1004 = !DILocation(line: 109, column: 8, scope: !990)
!1005 = !DILocation(line: 109, column: 14, scope: !990)
!1006 = !{!976, !778, i64 32}
!1007 = !DILocation(line: 109, column: 3, scope: !990)
!1008 = !DILocation(line: 110, column: 8, scope: !990)
!1009 = !DILocation(line: 110, column: 14, scope: !990)
!1010 = !{!976, !778, i64 64}
!1011 = !DILocation(line: 110, column: 3, scope: !990)
!1012 = !DILocation(line: 111, column: 8, scope: !990)
!1013 = !DILocation(line: 111, column: 14, scope: !990)
!1014 = !{!976, !778, i64 40}
!1015 = !DILocation(line: 111, column: 3, scope: !990)
!1016 = !DILocation(line: 112, column: 8, scope: !990)
!1017 = !DILocation(line: 112, column: 3, scope: !990)
!1018 = !DILocation(line: 113, column: 1, scope: !990)
!1019 = distinct !DISubprogram(name: "hwloc_internal_distances_dup", scope: !2, file: !2, line: 186, type: !1020, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !1022)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!181, !416, !416}
!1022 = !{!1023, !1024, !1025, !1026}
!1023 = !DILocalVariable(name: "new", arg: 1, scope: !1019, file: !2, line: 186, type: !416)
!1024 = !DILocalVariable(name: "old", arg: 2, scope: !1019, file: !2, line: 186, type: !416)
!1025 = !DILocalVariable(name: "olddist", scope: !1019, file: !2, line: 188, type: !609)
!1026 = !DILocalVariable(name: "err", scope: !1019, file: !2, line: 189, type: !181)
!1027 = !DILocation(line: 186, column: 57, scope: !1019)
!1028 = !DILocation(line: 186, column: 85, scope: !1019)
!1029 = !DILocation(line: 188, column: 3, scope: !1019)
!1030 = !DILocation(line: 188, column: 38, scope: !1019)
!1031 = !DILocation(line: 189, column: 3, scope: !1019)
!1032 = !DILocation(line: 189, column: 7, scope: !1019)
!1033 = !DILocation(line: 190, column: 23, scope: !1019)
!1034 = !DILocation(line: 190, column: 28, scope: !1019)
!1035 = !DILocation(line: 190, column: 3, scope: !1019)
!1036 = !DILocation(line: 190, column: 8, scope: !1019)
!1037 = !DILocation(line: 190, column: 21, scope: !1019)
!1038 = !DILocation(line: 191, column: 17, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 191, column: 3)
!1040 = !DILocation(line: 191, column: 22, scope: !1039)
!1041 = !DILocation(line: 191, column: 15, scope: !1039)
!1042 = !DILocation(line: 191, column: 7, scope: !1039)
!1043 = !DILocation(line: 191, column: 34, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 191, column: 3)
!1045 = !DILocation(line: 191, column: 3, scope: !1039)
!1046 = !DILocation(line: 192, column: 44, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 191, column: 68)
!1048 = !DILocation(line: 192, column: 49, scope: !1047)
!1049 = !DILocation(line: 192, column: 11, scope: !1047)
!1050 = !DILocation(line: 192, column: 9, scope: !1047)
!1051 = !{!787, !787, i64 0}
!1052 = !DILocation(line: 193, column: 9, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1047, file: !2, line: 193, column: 9)
!1054 = !DILocation(line: 193, column: 13, scope: !1053)
!1055 = !DILocation(line: 193, column: 9, scope: !1047)
!1056 = !DILocation(line: 194, column: 14, scope: !1053)
!1057 = !DILocation(line: 194, column: 7, scope: !1053)
!1058 = !DILocation(line: 195, column: 3, scope: !1047)
!1059 = !DILocation(line: 191, column: 53, scope: !1044)
!1060 = !DILocation(line: 191, column: 62, scope: !1044)
!1061 = !DILocation(line: 191, column: 51, scope: !1044)
!1062 = !DILocation(line: 191, column: 3, scope: !1044)
!1063 = distinct !{!1063, !1045, !1064, !982}
!1064 = !DILocation(line: 195, column: 3, scope: !1039)
!1065 = !DILocation(line: 196, column: 3, scope: !1019)
!1066 = !DILocation(line: 197, column: 1, scope: !1019)
!1067 = distinct !DISubprogram(name: "hwloc_internal_distances_dup_one", scope: !2, file: !2, line: 126, type: !1068, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !1070)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!181, !416, !609}
!1070 = !{!1071, !1072, !1073, !1074, !1075}
!1071 = !DILocalVariable(name: "new", arg: 1, scope: !1067, file: !2, line: 126, type: !416)
!1072 = !DILocalVariable(name: "olddist", arg: 2, scope: !1067, file: !2, line: 126, type: !609)
!1073 = !DILocalVariable(name: "tma", scope: !1067, file: !2, line: 128, type: !735)
!1074 = !DILocalVariable(name: "newdist", scope: !1067, file: !2, line: 129, type: !609)
!1075 = !DILocalVariable(name: "nbobjs", scope: !1067, file: !2, line: 130, type: !134)
!1076 = !DILocation(line: 126, column: 68, scope: !1067)
!1077 = !DILocation(line: 126, column: 108, scope: !1067)
!1078 = !DILocation(line: 128, column: 3, scope: !1067)
!1079 = !DILocation(line: 128, column: 21, scope: !1067)
!1080 = !DILocation(line: 128, column: 27, scope: !1067)
!1081 = !DILocation(line: 128, column: 32, scope: !1067)
!1082 = !{!786, !778, i64 816}
!1083 = !DILocation(line: 129, column: 3, scope: !1067)
!1084 = !DILocation(line: 129, column: 38, scope: !1067)
!1085 = !DILocation(line: 130, column: 3, scope: !1067)
!1086 = !DILocation(line: 130, column: 12, scope: !1067)
!1087 = !DILocation(line: 130, column: 21, scope: !1067)
!1088 = !DILocation(line: 130, column: 30, scope: !1067)
!1089 = !{!976, !787, i64 24}
!1090 = !DILocation(line: 132, column: 30, scope: !1067)
!1091 = !DILocation(line: 132, column: 13, scope: !1067)
!1092 = !DILocation(line: 132, column: 11, scope: !1067)
!1093 = !DILocation(line: 133, column: 8, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 133, column: 7)
!1095 = !DILocation(line: 133, column: 7, scope: !1067)
!1096 = !DILocation(line: 134, column: 5, scope: !1094)
!1097 = !DILocation(line: 135, column: 7, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 135, column: 7)
!1099 = !DILocation(line: 135, column: 16, scope: !1098)
!1100 = !DILocation(line: 135, column: 7, scope: !1067)
!1101 = !DILocation(line: 136, column: 38, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 135, column: 22)
!1103 = !DILocation(line: 136, column: 43, scope: !1102)
!1104 = !DILocation(line: 136, column: 52, scope: !1102)
!1105 = !DILocation(line: 136, column: 21, scope: !1102)
!1106 = !DILocation(line: 136, column: 5, scope: !1102)
!1107 = !DILocation(line: 136, column: 14, scope: !1102)
!1108 = !DILocation(line: 136, column: 19, scope: !1102)
!1109 = !DILocation(line: 137, column: 10, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1102, file: !2, line: 137, column: 9)
!1111 = !DILocation(line: 137, column: 19, scope: !1110)
!1112 = !DILocation(line: 137, column: 9, scope: !1102)
!1113 = !DILocation(line: 138, column: 7, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 138, column: 7)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 138, column: 7)
!1116 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 137, column: 25)
!1117 = !{!1118, !787, i64 16}
!1118 = !{!"hwloc_tma", !778, i64 0, !778, i64 8, !787, i64 16}
!1119 = !DILocation(line: 138, column: 7, scope: !1115)
!1120 = !DILocation(line: 139, column: 37, scope: !1116)
!1121 = !DILocation(line: 139, column: 7, scope: !1116)
!1122 = !DILocation(line: 140, column: 7, scope: !1116)
!1123 = !DILocation(line: 142, column: 3, scope: !1102)
!1124 = !DILocation(line: 143, column: 5, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 142, column: 10)
!1126 = !DILocation(line: 143, column: 14, scope: !1125)
!1127 = !DILocation(line: 143, column: 19, scope: !1125)
!1128 = !DILocation(line: 146, column: 7, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 146, column: 7)
!1130 = !DILocation(line: 146, column: 16, scope: !1129)
!1131 = !DILocation(line: 146, column: 7, scope: !1067)
!1132 = !DILocation(line: 147, column: 49, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 146, column: 33)
!1134 = !DILocation(line: 147, column: 54, scope: !1133)
!1135 = !DILocation(line: 147, column: 61, scope: !1133)
!1136 = !DILocation(line: 147, column: 32, scope: !1133)
!1137 = !DILocation(line: 147, column: 5, scope: !1133)
!1138 = !DILocation(line: 147, column: 14, scope: !1133)
!1139 = !DILocation(line: 147, column: 30, scope: !1133)
!1140 = !DILocation(line: 148, column: 10, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 148, column: 9)
!1142 = !DILocation(line: 148, column: 19, scope: !1141)
!1143 = !DILocation(line: 148, column: 9, scope: !1133)
!1144 = !DILocation(line: 149, column: 7, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !2, line: 149, column: 7)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 149, column: 7)
!1147 = distinct !DILexicalBlock(scope: !1141, file: !2, line: 148, column: 36)
!1148 = !DILocation(line: 149, column: 7, scope: !1146)
!1149 = !DILocation(line: 150, column: 37, scope: !1147)
!1150 = !DILocation(line: 150, column: 7, scope: !1147)
!1151 = !DILocation(line: 151, column: 7, scope: !1147)
!1152 = !DILocation(line: 153, column: 12, scope: !1133)
!1153 = !DILocation(line: 153, column: 21, scope: !1133)
!1154 = !DILocation(line: 153, column: 38, scope: !1133)
!1155 = !DILocation(line: 153, column: 47, scope: !1133)
!1156 = !DILocation(line: 153, column: 64, scope: !1133)
!1157 = !DILocation(line: 153, column: 71, scope: !1133)
!1158 = !DILocation(line: 153, column: 5, scope: !1133)
!1159 = !DILocation(line: 154, column: 3, scope: !1133)
!1160 = !DILocation(line: 155, column: 5, scope: !1129)
!1161 = !DILocation(line: 155, column: 14, scope: !1129)
!1162 = !DILocation(line: 155, column: 30, scope: !1129)
!1163 = !DILocation(line: 156, column: 26, scope: !1067)
!1164 = !DILocation(line: 156, column: 35, scope: !1067)
!1165 = !{!976, !779, i64 12}
!1166 = !DILocation(line: 156, column: 3, scope: !1067)
!1167 = !DILocation(line: 156, column: 12, scope: !1067)
!1168 = !DILocation(line: 156, column: 24, scope: !1067)
!1169 = !DILocation(line: 157, column: 21, scope: !1067)
!1170 = !DILocation(line: 157, column: 3, scope: !1067)
!1171 = !DILocation(line: 157, column: 12, scope: !1067)
!1172 = !DILocation(line: 157, column: 19, scope: !1067)
!1173 = !DILocation(line: 158, column: 19, scope: !1067)
!1174 = !DILocation(line: 158, column: 28, scope: !1067)
!1175 = !{!976, !788, i64 48}
!1176 = !DILocation(line: 158, column: 3, scope: !1067)
!1177 = !DILocation(line: 158, column: 12, scope: !1067)
!1178 = !DILocation(line: 158, column: 17, scope: !1067)
!1179 = !DILocation(line: 159, column: 17, scope: !1067)
!1180 = !DILocation(line: 159, column: 26, scope: !1067)
!1181 = !{!976, !787, i64 8}
!1182 = !DILocation(line: 159, column: 3, scope: !1067)
!1183 = !DILocation(line: 159, column: 12, scope: !1067)
!1184 = !DILocation(line: 159, column: 15, scope: !1067)
!1185 = !DILocation(line: 161, column: 39, scope: !1067)
!1186 = !DILocation(line: 161, column: 44, scope: !1067)
!1187 = !DILocation(line: 161, column: 51, scope: !1067)
!1188 = !DILocation(line: 161, column: 22, scope: !1067)
!1189 = !DILocation(line: 161, column: 3, scope: !1067)
!1190 = !DILocation(line: 161, column: 12, scope: !1067)
!1191 = !DILocation(line: 161, column: 20, scope: !1067)
!1192 = !DILocation(line: 162, column: 36, scope: !1067)
!1193 = !DILocation(line: 162, column: 41, scope: !1067)
!1194 = !DILocation(line: 162, column: 48, scope: !1067)
!1195 = !DILocation(line: 162, column: 19, scope: !1067)
!1196 = !DILocation(line: 162, column: 3, scope: !1067)
!1197 = !DILocation(line: 162, column: 12, scope: !1067)
!1198 = !DILocation(line: 162, column: 17, scope: !1067)
!1199 = !DILocation(line: 163, column: 21, scope: !1067)
!1200 = !DILocation(line: 163, column: 30, scope: !1067)
!1201 = !{!976, !787, i64 56}
!1202 = !DILocation(line: 163, column: 37, scope: !1067)
!1203 = !DILocation(line: 163, column: 3, scope: !1067)
!1204 = !DILocation(line: 163, column: 12, scope: !1067)
!1205 = !DILocation(line: 163, column: 19, scope: !1067)
!1206 = !DILocation(line: 164, column: 38, scope: !1067)
!1207 = !DILocation(line: 164, column: 43, scope: !1067)
!1208 = !DILocation(line: 164, column: 50, scope: !1067)
!1209 = !DILocation(line: 164, column: 49, scope: !1067)
!1210 = !DILocation(line: 164, column: 57, scope: !1067)
!1211 = !DILocation(line: 164, column: 21, scope: !1067)
!1212 = !DILocation(line: 164, column: 3, scope: !1067)
!1213 = !DILocation(line: 164, column: 12, scope: !1067)
!1214 = !DILocation(line: 164, column: 19, scope: !1067)
!1215 = !DILocation(line: 165, column: 8, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 165, column: 7)
!1217 = !DILocation(line: 165, column: 17, scope: !1216)
!1218 = !DILocation(line: 165, column: 25, scope: !1216)
!1219 = !DILocation(line: 165, column: 29, scope: !1216)
!1220 = !DILocation(line: 165, column: 38, scope: !1216)
!1221 = !DILocation(line: 165, column: 43, scope: !1216)
!1222 = !DILocation(line: 165, column: 47, scope: !1216)
!1223 = !DILocation(line: 165, column: 56, scope: !1216)
!1224 = !DILocation(line: 165, column: 7, scope: !1067)
!1225 = !DILocation(line: 166, column: 5, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !2, line: 166, column: 5)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 166, column: 5)
!1228 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 165, column: 64)
!1229 = !DILocation(line: 166, column: 5, scope: !1227)
!1230 = !DILocation(line: 167, column: 35, scope: !1228)
!1231 = !DILocation(line: 167, column: 5, scope: !1228)
!1232 = !DILocation(line: 168, column: 5, scope: !1228)
!1233 = !DILocation(line: 171, column: 10, scope: !1067)
!1234 = !DILocation(line: 171, column: 19, scope: !1067)
!1235 = !DILocation(line: 171, column: 28, scope: !1067)
!1236 = !DILocation(line: 171, column: 37, scope: !1067)
!1237 = !DILocation(line: 171, column: 46, scope: !1067)
!1238 = !DILocation(line: 171, column: 53, scope: !1067)
!1239 = !DILocation(line: 171, column: 3, scope: !1067)
!1240 = !DILocation(line: 172, column: 10, scope: !1067)
!1241 = !DILocation(line: 172, column: 19, scope: !1067)
!1242 = !DILocation(line: 172, column: 27, scope: !1067)
!1243 = !DILocation(line: 172, column: 36, scope: !1067)
!1244 = !DILocation(line: 172, column: 44, scope: !1067)
!1245 = !DILocation(line: 172, column: 51, scope: !1067)
!1246 = !DILocation(line: 172, column: 50, scope: !1067)
!1247 = !DILocation(line: 172, column: 58, scope: !1067)
!1248 = !DILocation(line: 172, column: 3, scope: !1067)
!1249 = !DILocation(line: 174, column: 3, scope: !1067)
!1250 = !DILocation(line: 174, column: 12, scope: !1067)
!1251 = !DILocation(line: 174, column: 17, scope: !1067)
!1252 = !DILocation(line: 175, column: 19, scope: !1067)
!1253 = !DILocation(line: 175, column: 24, scope: !1067)
!1254 = !DILocation(line: 175, column: 3, scope: !1067)
!1255 = !DILocation(line: 175, column: 12, scope: !1067)
!1256 = !DILocation(line: 175, column: 17, scope: !1067)
!1257 = !{!976, !778, i64 72}
!1258 = !DILocation(line: 176, column: 7, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 176, column: 7)
!1260 = !DILocation(line: 176, column: 12, scope: !1259)
!1261 = !DILocation(line: 176, column: 7, scope: !1067)
!1262 = !DILocation(line: 177, column: 28, scope: !1259)
!1263 = !DILocation(line: 177, column: 5, scope: !1259)
!1264 = !DILocation(line: 177, column: 10, scope: !1259)
!1265 = !DILocation(line: 177, column: 21, scope: !1259)
!1266 = !DILocation(line: 177, column: 26, scope: !1259)
!1267 = !DILocation(line: 179, column: 23, scope: !1259)
!1268 = !DILocation(line: 179, column: 5, scope: !1259)
!1269 = !DILocation(line: 179, column: 10, scope: !1259)
!1270 = !DILocation(line: 179, column: 21, scope: !1259)
!1271 = !DILocation(line: 180, column: 20, scope: !1067)
!1272 = !DILocation(line: 180, column: 3, scope: !1067)
!1273 = !DILocation(line: 180, column: 8, scope: !1067)
!1274 = !DILocation(line: 180, column: 18, scope: !1067)
!1275 = !DILocation(line: 182, column: 3, scope: !1067)
!1276 = !DILocation(line: 183, column: 1, scope: !1067)
!1277 = distinct !DISubprogram(name: "hwloc_distances_remove", scope: !2, file: !2, line: 203, type: !545, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !1278)
!1278 = !{!1279}
!1279 = !DILocalVariable(name: "topology", arg: 1, scope: !1277, file: !2, line: 203, type: !464)
!1280 = !DILocation(line: 203, column: 45, scope: !1277)
!1281 = !DILocation(line: 205, column: 8, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 205, column: 7)
!1283 = !DILocation(line: 205, column: 18, scope: !1282)
!1284 = !{!786, !787, i64 204}
!1285 = !DILocation(line: 205, column: 7, scope: !1277)
!1286 = !DILocation(line: 206, column: 5, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1282, file: !2, line: 205, column: 29)
!1288 = !DILocation(line: 206, column: 11, scope: !1287)
!1289 = !DILocation(line: 207, column: 5, scope: !1287)
!1290 = !DILocation(line: 209, column: 7, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 209, column: 7)
!1292 = !DILocation(line: 209, column: 17, scope: !1291)
!1293 = !{!786, !778, i64 232}
!1294 = !DILocation(line: 209, column: 7, scope: !1277)
!1295 = !DILocation(line: 210, column: 5, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 209, column: 37)
!1297 = !DILocation(line: 210, column: 11, scope: !1296)
!1298 = !DILocation(line: 211, column: 5, scope: !1296)
!1299 = !DILocation(line: 213, column: 36, scope: !1277)
!1300 = !DILocation(line: 213, column: 3, scope: !1277)
!1301 = !DILocation(line: 214, column: 3, scope: !1277)
!1302 = !DILocation(line: 215, column: 1, scope: !1277)
!1303 = !DISubprogram(name: "__errno_location", scope: !1304, file: !1304, line: 37, type: !1305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1304 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!1307}
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!1308 = distinct !DISubprogram(name: "hwloc_distances_remove_by_depth", scope: !2, file: !2, line: 217, type: !1309, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !1311)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!181, !464, !181}
!1311 = !{!1312, !1313, !1314, !1315, !1316}
!1312 = !DILocalVariable(name: "topology", arg: 1, scope: !1308, file: !2, line: 217, type: !464)
!1313 = !DILocalVariable(name: "depth", arg: 2, scope: !1308, file: !2, line: 217, type: !181)
!1314 = !DILocalVariable(name: "dist", scope: !1308, file: !2, line: 219, type: !609)
!1315 = !DILocalVariable(name: "next", scope: !1308, file: !2, line: 219, type: !609)
!1316 = !DILocalVariable(name: "type", scope: !1308, file: !2, line: 220, type: !260)
!1317 = !DILocation(line: 217, column: 54, scope: !1308)
!1318 = !DILocation(line: 217, column: 68, scope: !1308)
!1319 = !DILocation(line: 219, column: 3, scope: !1308)
!1320 = !DILocation(line: 219, column: 38, scope: !1308)
!1321 = !DILocation(line: 219, column: 45, scope: !1308)
!1322 = !DILocation(line: 220, column: 3, scope: !1308)
!1323 = !DILocation(line: 220, column: 20, scope: !1308)
!1324 = !DILocation(line: 222, column: 8, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 222, column: 7)
!1326 = !DILocation(line: 222, column: 18, scope: !1325)
!1327 = !DILocation(line: 222, column: 7, scope: !1308)
!1328 = !DILocation(line: 223, column: 5, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 222, column: 29)
!1330 = !DILocation(line: 223, column: 11, scope: !1329)
!1331 = !DILocation(line: 224, column: 5, scope: !1329)
!1332 = !DILocation(line: 226, column: 7, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 226, column: 7)
!1334 = !DILocation(line: 226, column: 17, scope: !1333)
!1335 = !DILocation(line: 226, column: 7, scope: !1308)
!1336 = !DILocation(line: 227, column: 5, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 226, column: 37)
!1338 = !DILocation(line: 227, column: 11, scope: !1337)
!1339 = !DILocation(line: 228, column: 5, scope: !1337)
!1340 = !DILocation(line: 232, column: 31, scope: !1308)
!1341 = !DILocation(line: 232, column: 41, scope: !1308)
!1342 = !DILocation(line: 232, column: 10, scope: !1308)
!1343 = !DILocation(line: 232, column: 8, scope: !1308)
!1344 = !DILocation(line: 233, column: 7, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 233, column: 7)
!1346 = !DILocation(line: 233, column: 12, scope: !1345)
!1347 = !DILocation(line: 233, column: 7, scope: !1308)
!1348 = !DILocation(line: 234, column: 5, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 233, column: 37)
!1350 = !DILocation(line: 234, column: 11, scope: !1349)
!1351 = !DILocation(line: 235, column: 5, scope: !1349)
!1352 = !DILocation(line: 238, column: 10, scope: !1308)
!1353 = !DILocation(line: 238, column: 20, scope: !1308)
!1354 = !DILocation(line: 238, column: 8, scope: !1308)
!1355 = !DILocation(line: 239, column: 3, scope: !1308)
!1356 = !DILocation(line: 239, column: 18, scope: !1308)
!1357 = !DILocation(line: 239, column: 16, scope: !1308)
!1358 = !DILocation(line: 239, column: 24, scope: !1308)
!1359 = !DILocation(line: 240, column: 12, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 239, column: 33)
!1361 = !DILocation(line: 240, column: 18, scope: !1360)
!1362 = !DILocation(line: 240, column: 10, scope: !1360)
!1363 = !DILocation(line: 241, column: 9, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 241, column: 9)
!1365 = !DILocation(line: 241, column: 15, scope: !1364)
!1366 = !DILocation(line: 241, column: 30, scope: !1364)
!1367 = !DILocation(line: 241, column: 27, scope: !1364)
!1368 = !DILocation(line: 241, column: 9, scope: !1360)
!1369 = !DILocation(line: 242, column: 11, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 242, column: 11)
!1371 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 241, column: 36)
!1372 = !DILocation(line: 242, column: 11, scope: !1371)
!1373 = !DILocation(line: 243, column: 15, scope: !1370)
!1374 = !DILocation(line: 243, column: 21, scope: !1370)
!1375 = !DILocation(line: 243, column: 2, scope: !1370)
!1376 = !DILocation(line: 243, column: 8, scope: !1370)
!1377 = !DILocation(line: 243, column: 13, scope: !1370)
!1378 = !DILocation(line: 245, column: 24, scope: !1370)
!1379 = !DILocation(line: 245, column: 30, scope: !1370)
!1380 = !DILocation(line: 245, column: 2, scope: !1370)
!1381 = !DILocation(line: 245, column: 12, scope: !1370)
!1382 = !DILocation(line: 245, column: 22, scope: !1370)
!1383 = !DILocation(line: 246, column: 11, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 246, column: 11)
!1385 = !DILocation(line: 246, column: 17, scope: !1384)
!1386 = !DILocation(line: 246, column: 11, scope: !1371)
!1387 = !DILocation(line: 247, column: 21, scope: !1384)
!1388 = !DILocation(line: 247, column: 27, scope: !1384)
!1389 = !DILocation(line: 247, column: 2, scope: !1384)
!1390 = !DILocation(line: 247, column: 8, scope: !1384)
!1391 = !DILocation(line: 247, column: 14, scope: !1384)
!1392 = !DILocation(line: 247, column: 19, scope: !1384)
!1393 = !DILocation(line: 249, column: 25, scope: !1384)
!1394 = !DILocation(line: 249, column: 31, scope: !1384)
!1395 = !DILocation(line: 249, column: 2, scope: !1384)
!1396 = !DILocation(line: 249, column: 12, scope: !1384)
!1397 = !DILocation(line: 249, column: 23, scope: !1384)
!1398 = !DILocation(line: 250, column: 37, scope: !1371)
!1399 = !DILocation(line: 250, column: 7, scope: !1371)
!1400 = !DILocation(line: 251, column: 5, scope: !1371)
!1401 = distinct !{!1401, !1355, !1402, !982}
!1402 = !DILocation(line: 252, column: 3, scope: !1308)
!1403 = !DILocation(line: 254, column: 3, scope: !1308)
!1404 = !DILocation(line: 255, column: 1, scope: !1308)
!1405 = !DISubprogram(name: "hwloc_get_depth_type", scope: !133, file: !133, line: 892, type: !1406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!260, !464, !181}
!1408 = distinct !DISubprogram(name: "hwloc_distances_release_remove", scope: !2, file: !2, line: 257, type: !1409, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !1412)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!181, !464, !1411}
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!1412 = !{!1413, !1414, !1415}
!1413 = !DILocalVariable(name: "topology", arg: 1, scope: !1408, file: !2, line: 257, type: !464)
!1414 = !DILocalVariable(name: "distances", arg: 2, scope: !1408, file: !2, line: 258, type: !1411)
!1415 = !DILocalVariable(name: "dist", scope: !1408, file: !2, line: 260, type: !609)
!1416 = !DILocation(line: 257, column: 53, scope: !1408)
!1417 = !DILocation(line: 258, column: 34, scope: !1408)
!1418 = !DILocation(line: 260, column: 3, scope: !1408)
!1419 = !DILocation(line: 260, column: 38, scope: !1408)
!1420 = !DILocation(line: 260, column: 83, scope: !1408)
!1421 = !DILocation(line: 260, column: 93, scope: !1408)
!1422 = !DILocation(line: 260, column: 45, scope: !1408)
!1423 = !DILocation(line: 261, column: 8, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1408, file: !2, line: 261, column: 7)
!1425 = !DILocation(line: 261, column: 7, scope: !1408)
!1426 = !DILocation(line: 262, column: 5, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 261, column: 14)
!1428 = !DILocation(line: 262, column: 11, scope: !1427)
!1429 = !DILocation(line: 263, column: 5, scope: !1427)
!1430 = !DILocation(line: 265, column: 7, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1408, file: !2, line: 265, column: 7)
!1432 = !DILocation(line: 265, column: 13, scope: !1431)
!1433 = !DILocation(line: 265, column: 7, scope: !1408)
!1434 = !DILocation(line: 266, column: 24, scope: !1431)
!1435 = !DILocation(line: 266, column: 30, scope: !1431)
!1436 = !DILocation(line: 266, column: 5, scope: !1431)
!1437 = !DILocation(line: 266, column: 11, scope: !1431)
!1438 = !DILocation(line: 266, column: 17, scope: !1431)
!1439 = !DILocation(line: 266, column: 22, scope: !1431)
!1440 = !DILocation(line: 268, column: 28, scope: !1431)
!1441 = !DILocation(line: 268, column: 34, scope: !1431)
!1442 = !DILocation(line: 268, column: 5, scope: !1431)
!1443 = !DILocation(line: 268, column: 15, scope: !1431)
!1444 = !DILocation(line: 268, column: 26, scope: !1431)
!1445 = !DILocation(line: 269, column: 7, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1408, file: !2, line: 269, column: 7)
!1447 = !DILocation(line: 269, column: 13, scope: !1446)
!1448 = !DILocation(line: 269, column: 7, scope: !1408)
!1449 = !DILocation(line: 270, column: 24, scope: !1446)
!1450 = !DILocation(line: 270, column: 30, scope: !1446)
!1451 = !DILocation(line: 270, column: 5, scope: !1446)
!1452 = !DILocation(line: 270, column: 11, scope: !1446)
!1453 = !DILocation(line: 270, column: 17, scope: !1446)
!1454 = !DILocation(line: 270, column: 22, scope: !1446)
!1455 = !DILocation(line: 272, column: 27, scope: !1446)
!1456 = !DILocation(line: 272, column: 33, scope: !1446)
!1457 = !DILocation(line: 272, column: 5, scope: !1446)
!1458 = !DILocation(line: 272, column: 15, scope: !1446)
!1459 = !DILocation(line: 272, column: 25, scope: !1446)
!1460 = !DILocation(line: 273, column: 33, scope: !1408)
!1461 = !DILocation(line: 273, column: 3, scope: !1408)
!1462 = !DILocation(line: 274, column: 27, scope: !1408)
!1463 = !DILocation(line: 274, column: 37, scope: !1408)
!1464 = !DILocation(line: 274, column: 3, scope: !1408)
!1465 = !DILocation(line: 275, column: 3, scope: !1408)
!1466 = !DILocation(line: 276, column: 1, scope: !1408)
!1467 = distinct !DISubprogram(name: "hwloc__internal_distances_from_public", scope: !2, file: !2, line: 867, type: !1468, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !1470)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!609, !464, !1411}
!1470 = !{!1471, !1472, !1473, !1474}
!1471 = !DILocalVariable(name: "topology", arg: 1, scope: !1467, file: !2, line: 867, type: !464)
!1472 = !DILocalVariable(name: "distances", arg: 2, scope: !1467, file: !2, line: 867, type: !1411)
!1473 = !DILocalVariable(name: "cont", scope: !1467, file: !2, line: 869, type: !261)
!1474 = !DILocalVariable(name: "dist", scope: !1467, file: !2, line: 870, type: !609)
!1475 = !DILocation(line: 867, column: 56, scope: !1467)
!1476 = !DILocation(line: 867, column: 92, scope: !1467)
!1477 = !DILocation(line: 869, column: 3, scope: !1467)
!1478 = !DILocation(line: 869, column: 39, scope: !1467)
!1479 = !DILocation(line: 869, column: 46, scope: !1467)
!1480 = !DILocation(line: 870, column: 3, scope: !1467)
!1481 = !DILocation(line: 870, column: 38, scope: !1467)
!1482 = !DILocation(line: 871, column: 14, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1467, file: !2, line: 871, column: 3)
!1484 = !DILocation(line: 871, column: 24, scope: !1483)
!1485 = !DILocation(line: 871, column: 12, scope: !1483)
!1486 = !DILocation(line: 871, column: 7, scope: !1483)
!1487 = !DILocation(line: 871, column: 36, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 871, column: 3)
!1489 = !DILocation(line: 871, column: 3, scope: !1483)
!1490 = !DILocation(line: 872, column: 9, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 872, column: 9)
!1492 = !DILocation(line: 872, column: 15, scope: !1491)
!1493 = !DILocation(line: 872, column: 21, scope: !1491)
!1494 = !DILocation(line: 872, column: 27, scope: !1491)
!1495 = !{!1496, !787, i64 0}
!1496 = !{!"hwloc_distances_container_s", !787, i64 0, !1497, i64 8}
!1497 = !{!"hwloc_distances_s", !787, i64 0, !778, i64 8, !788, i64 16, !778, i64 24}
!1498 = !DILocation(line: 872, column: 18, scope: !1491)
!1499 = !DILocation(line: 872, column: 9, scope: !1488)
!1500 = !DILocation(line: 873, column: 14, scope: !1491)
!1501 = !DILocation(line: 873, column: 7, scope: !1491)
!1502 = !DILocation(line: 871, column: 49, scope: !1488)
!1503 = !DILocation(line: 871, column: 55, scope: !1488)
!1504 = !DILocation(line: 871, column: 47, scope: !1488)
!1505 = !DILocation(line: 871, column: 3, scope: !1488)
!1506 = distinct !{!1506, !1489, !1507, !982}
!1507 = !DILocation(line: 873, column: 14, scope: !1483)
!1508 = !DILocation(line: 874, column: 3, scope: !1467)
!1509 = !DILocation(line: 875, column: 1, scope: !1467)
!1510 = distinct !DISubprogram(name: "hwloc_distances_release", scope: !2, file: !2, line: 878, type: !1511, scopeLine: 880, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !1513)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{null, !464, !1411}
!1513 = !{!1514, !1515, !1516}
!1514 = !DILocalVariable(name: "topology", arg: 1, scope: !1510, file: !2, line: 878, type: !464)
!1515 = !DILocalVariable(name: "distances", arg: 2, scope: !1510, file: !2, line: 879, type: !1411)
!1516 = !DILocalVariable(name: "cont", scope: !1510, file: !2, line: 881, type: !261)
!1517 = !DILocation(line: 878, column: 42, scope: !1510)
!1518 = !DILocation(line: 879, column: 30, scope: !1510)
!1519 = !DILocation(line: 881, column: 3, scope: !1510)
!1520 = !DILocation(line: 881, column: 39, scope: !1510)
!1521 = !DILocation(line: 881, column: 46, scope: !1510)
!1522 = !DILocation(line: 882, column: 8, scope: !1510)
!1523 = !DILocation(line: 882, column: 19, scope: !1510)
!1524 = !{!1497, !778, i64 24}
!1525 = !DILocation(line: 882, column: 3, scope: !1510)
!1526 = !DILocation(line: 883, column: 8, scope: !1510)
!1527 = !DILocation(line: 883, column: 19, scope: !1510)
!1528 = !{!1497, !778, i64 8}
!1529 = !DILocation(line: 883, column: 3, scope: !1510)
!1530 = !DILocation(line: 884, column: 8, scope: !1510)
!1531 = !DILocation(line: 884, column: 3, scope: !1510)
!1532 = !DILocation(line: 885, column: 1, scope: !1510)
!1533 = distinct !DISubprogram(name: "hwloc_backend_distances_add_create", scope: !2, file: !2, line: 299, type: !1534, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !1537)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!1536, !464, !257, !287, !287}
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "hwloc_backend_distances_add_handle_t", file: !195, line: 649, baseType: !259)
!1537 = !{!1538, !1539, !1540, !1541, !1542, !1543, !1544}
!1538 = !DILocalVariable(name: "topology", arg: 1, scope: !1533, file: !2, line: 299, type: !464)
!1539 = !DILocalVariable(name: "name", arg: 2, scope: !1533, file: !2, line: 300, type: !257)
!1540 = !DILocalVariable(name: "kind", arg: 3, scope: !1533, file: !2, line: 300, type: !287)
!1541 = !DILocalVariable(name: "flags", arg: 4, scope: !1533, file: !2, line: 300, type: !287)
!1542 = !DILocalVariable(name: "dist", scope: !1533, file: !2, line: 302, type: !609)
!1543 = !DILabel(scope: !1533, name: "err_with_dist", file: !2, line: 332)
!1544 = !DILabel(scope: !1533, name: "err", file: !2, line: 334)
!1545 = !DILocation(line: 299, column: 53, scope: !1533)
!1546 = !DILocation(line: 300, column: 48, scope: !1533)
!1547 = !{!788, !788, i64 0}
!1548 = !DILocation(line: 300, column: 68, scope: !1533)
!1549 = !DILocation(line: 300, column: 88, scope: !1533)
!1550 = !DILocation(line: 302, column: 3, scope: !1533)
!1551 = !DILocation(line: 302, column: 38, scope: !1533)
!1552 = !DILocation(line: 304, column: 7, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1533, file: !2, line: 304, column: 7)
!1554 = !DILocation(line: 304, column: 7, scope: !1533)
!1555 = !DILocation(line: 305, column: 5, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 304, column: 14)
!1557 = !DILocation(line: 305, column: 11, scope: !1556)
!1558 = !DILocation(line: 306, column: 5, scope: !1556)
!1559 = !DILocation(line: 309, column: 10, scope: !1533)
!1560 = !DILocation(line: 309, column: 8, scope: !1533)
!1561 = !DILocation(line: 310, column: 8, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1533, file: !2, line: 310, column: 7)
!1563 = !DILocation(line: 310, column: 7, scope: !1533)
!1564 = !DILocation(line: 311, column: 5, scope: !1562)
!1565 = !DILocation(line: 313, column: 7, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1533, file: !2, line: 313, column: 7)
!1567 = !DILocation(line: 313, column: 7, scope: !1533)
!1568 = !DILocation(line: 314, column: 25, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1566, file: !2, line: 313, column: 13)
!1570 = !DILocation(line: 314, column: 18, scope: !1569)
!1571 = !DILocation(line: 314, column: 5, scope: !1569)
!1572 = !DILocation(line: 314, column: 11, scope: !1569)
!1573 = !DILocation(line: 314, column: 16, scope: !1569)
!1574 = !DILocation(line: 315, column: 10, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1569, file: !2, line: 315, column: 9)
!1576 = !DILocation(line: 315, column: 16, scope: !1575)
!1577 = !DILocation(line: 315, column: 9, scope: !1569)
!1578 = !DILocation(line: 316, column: 7, scope: !1575)
!1579 = !DILocation(line: 317, column: 3, scope: !1569)
!1580 = !DILocation(line: 319, column: 16, scope: !1533)
!1581 = !DILocation(line: 319, column: 3, scope: !1533)
!1582 = !DILocation(line: 319, column: 9, scope: !1533)
!1583 = !DILocation(line: 319, column: 14, scope: !1533)
!1584 = !DILocation(line: 320, column: 3, scope: !1533)
!1585 = !DILocation(line: 320, column: 9, scope: !1533)
!1586 = !DILocation(line: 320, column: 16, scope: !1533)
!1587 = !DILocation(line: 322, column: 3, scope: !1533)
!1588 = !DILocation(line: 322, column: 9, scope: !1533)
!1589 = !DILocation(line: 322, column: 21, scope: !1533)
!1590 = !DILocation(line: 323, column: 3, scope: !1533)
!1591 = !DILocation(line: 323, column: 9, scope: !1533)
!1592 = !DILocation(line: 323, column: 25, scope: !1533)
!1593 = !DILocation(line: 324, column: 3, scope: !1533)
!1594 = !DILocation(line: 324, column: 9, scope: !1533)
!1595 = !DILocation(line: 324, column: 16, scope: !1533)
!1596 = !DILocation(line: 325, column: 3, scope: !1533)
!1597 = !DILocation(line: 325, column: 9, scope: !1533)
!1598 = !DILocation(line: 325, column: 17, scope: !1533)
!1599 = !DILocation(line: 326, column: 3, scope: !1533)
!1600 = !DILocation(line: 326, column: 9, scope: !1533)
!1601 = !DILocation(line: 326, column: 14, scope: !1533)
!1602 = !DILocation(line: 327, column: 3, scope: !1533)
!1603 = !DILocation(line: 327, column: 9, scope: !1533)
!1604 = !DILocation(line: 327, column: 16, scope: !1533)
!1605 = !DILocation(line: 329, column: 14, scope: !1533)
!1606 = !DILocation(line: 329, column: 24, scope: !1533)
!1607 = !DILocation(line: 329, column: 36, scope: !1533)
!1608 = !DILocation(line: 329, column: 3, scope: !1533)
!1609 = !DILocation(line: 329, column: 9, scope: !1533)
!1610 = !DILocation(line: 329, column: 12, scope: !1533)
!1611 = !DILocation(line: 330, column: 10, scope: !1533)
!1612 = !DILocation(line: 330, column: 3, scope: !1533)
!1613 = !DILocation(line: 332, column: 2, scope: !1533)
!1614 = !DILocation(line: 333, column: 39, scope: !1533)
!1615 = !DILocation(line: 333, column: 3, scope: !1533)
!1616 = !DILocation(line: 334, column: 2, scope: !1533)
!1617 = !DILocation(line: 335, column: 3, scope: !1533)
!1618 = !DILocation(line: 336, column: 1, scope: !1533)
!1619 = !DISubprogram(name: "calloc", scope: !919, file: !919, line: 543, type: !1620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!259, !445, !445}
!1622 = !DISubprogram(name: "strdup", scope: !940, file: !940, line: 187, type: !920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1623 = distinct !DISubprogram(name: "hwloc_backend_distances_add__cancel", scope: !2, file: !2, line: 284, type: !991, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !1624)
!1624 = !{!1625}
!1625 = !DILocalVariable(name: "dist", arg: 1, scope: !1623, file: !2, line: 284, type: !609)
!1626 = !DILocation(line: 284, column: 72, scope: !1623)
!1627 = !DILocation(line: 287, column: 8, scope: !1623)
!1628 = !DILocation(line: 287, column: 14, scope: !1623)
!1629 = !DILocation(line: 287, column: 3, scope: !1623)
!1630 = !DILocation(line: 288, column: 8, scope: !1623)
!1631 = !DILocation(line: 288, column: 14, scope: !1623)
!1632 = !DILocation(line: 288, column: 3, scope: !1623)
!1633 = !DILocation(line: 289, column: 8, scope: !1623)
!1634 = !DILocation(line: 289, column: 14, scope: !1623)
!1635 = !DILocation(line: 289, column: 3, scope: !1623)
!1636 = !DILocation(line: 290, column: 8, scope: !1623)
!1637 = !DILocation(line: 290, column: 14, scope: !1623)
!1638 = !DILocation(line: 290, column: 3, scope: !1623)
!1639 = !DILocation(line: 291, column: 8, scope: !1623)
!1640 = !DILocation(line: 291, column: 14, scope: !1623)
!1641 = !DILocation(line: 291, column: 3, scope: !1623)
!1642 = !DILocation(line: 292, column: 8, scope: !1623)
!1643 = !DILocation(line: 292, column: 3, scope: !1623)
!1644 = !DILocation(line: 293, column: 1, scope: !1623)
!1645 = distinct !DISubprogram(name: "hwloc_backend_distances_add_values", scope: !2, file: !2, line: 343, type: !1646, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !1648)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!181, !464, !1536, !134, !270, !400, !287}
!1648 = !{!1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662}
!1649 = !DILocalVariable(name: "topology", arg: 1, scope: !1645, file: !2, line: 343, type: !464)
!1650 = !DILocalVariable(name: "handle", arg: 2, scope: !1645, file: !2, line: 344, type: !1536)
!1651 = !DILocalVariable(name: "nbobjs", arg: 3, scope: !1645, file: !2, line: 345, type: !134)
!1652 = !DILocalVariable(name: "objs", arg: 4, scope: !1645, file: !2, line: 345, type: !270)
!1653 = !DILocalVariable(name: "values", arg: 5, scope: !1645, file: !2, line: 346, type: !400)
!1654 = !DILocalVariable(name: "flags", arg: 6, scope: !1645, file: !2, line: 347, type: !287)
!1655 = !DILocalVariable(name: "dist", scope: !1645, file: !2, line: 349, type: !609)
!1656 = !DILocalVariable(name: "unique_type", scope: !1645, file: !2, line: 350, type: !260)
!1657 = !DILocalVariable(name: "different_types", scope: !1645, file: !2, line: 350, type: !616)
!1658 = !DILocalVariable(name: "indexes", scope: !1645, file: !2, line: 351, type: !400)
!1659 = !DILocalVariable(name: "i", scope: !1645, file: !2, line: 352, type: !134)
!1660 = !DILocalVariable(name: "disappeared", scope: !1645, file: !2, line: 352, type: !134)
!1661 = !DILabel(scope: !1645, name: "err_with_indexes", file: !2, line: 421)
!1662 = !DILabel(scope: !1645, name: "err", file: !2, line: 423)
!1663 = !DILocation(line: 343, column: 53, scope: !1645)
!1664 = !DILocation(line: 344, column: 73, scope: !1645)
!1665 = !DILocation(line: 345, column: 45, scope: !1645)
!1666 = !DILocation(line: 345, column: 66, scope: !1645)
!1667 = !DILocation(line: 346, column: 52, scope: !1645)
!1668 = !DILocation(line: 347, column: 50, scope: !1645)
!1669 = !DILocation(line: 349, column: 3, scope: !1645)
!1670 = !DILocation(line: 349, column: 38, scope: !1645)
!1671 = !DILocation(line: 349, column: 45, scope: !1645)
!1672 = !DILocation(line: 350, column: 3, scope: !1645)
!1673 = !DILocation(line: 350, column: 20, scope: !1645)
!1674 = !DILocation(line: 350, column: 34, scope: !1645)
!1675 = !DILocation(line: 351, column: 3, scope: !1645)
!1676 = !DILocation(line: 351, column: 19, scope: !1645)
!1677 = !DILocation(line: 352, column: 3, scope: !1645)
!1678 = !DILocation(line: 352, column: 12, scope: !1645)
!1679 = !DILocation(line: 352, column: 15, scope: !1645)
!1680 = !DILocation(line: 354, column: 7, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1645, file: !2, line: 354, column: 7)
!1682 = !DILocation(line: 354, column: 13, scope: !1681)
!1683 = !DILocation(line: 354, column: 20, scope: !1681)
!1684 = !DILocation(line: 354, column: 25, scope: !1681)
!1685 = !DILocation(line: 354, column: 31, scope: !1681)
!1686 = !DILocation(line: 354, column: 38, scope: !1681)
!1687 = !DILocation(line: 354, column: 7, scope: !1645)
!1688 = !DILocation(line: 356, column: 5, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1681, file: !2, line: 354, column: 81)
!1690 = !DILocation(line: 356, column: 11, scope: !1689)
!1691 = !DILocation(line: 357, column: 5, scope: !1689)
!1692 = !DILocation(line: 360, column: 7, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1645, file: !2, line: 360, column: 7)
!1694 = !DILocation(line: 360, column: 13, scope: !1693)
!1695 = !DILocation(line: 360, column: 16, scope: !1693)
!1696 = !DILocation(line: 360, column: 23, scope: !1693)
!1697 = !DILocation(line: 360, column: 27, scope: !1693)
!1698 = !DILocation(line: 360, column: 31, scope: !1693)
!1699 = !DILocation(line: 360, column: 36, scope: !1693)
!1700 = !DILocation(line: 360, column: 40, scope: !1693)
!1701 = !DILocation(line: 360, column: 7, scope: !1645)
!1702 = !DILocation(line: 361, column: 5, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 360, column: 48)
!1704 = !DILocation(line: 361, column: 11, scope: !1703)
!1705 = !DILocation(line: 362, column: 5, scope: !1703)
!1706 = !DILocation(line: 366, column: 8, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1645, file: !2, line: 366, column: 3)
!1708 = !DILocation(line: 366, column: 7, scope: !1707)
!1709 = !DILocation(line: 366, column: 12, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1707, file: !2, line: 366, column: 3)
!1711 = !DILocation(line: 366, column: 14, scope: !1710)
!1712 = !DILocation(line: 366, column: 13, scope: !1710)
!1713 = !DILocation(line: 366, column: 3, scope: !1707)
!1714 = !DILocation(line: 367, column: 10, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1710, file: !2, line: 367, column: 9)
!1716 = !DILocation(line: 367, column: 15, scope: !1715)
!1717 = !DILocation(line: 367, column: 9, scope: !1710)
!1718 = !DILocation(line: 368, column: 18, scope: !1715)
!1719 = !DILocation(line: 368, column: 7, scope: !1715)
!1720 = !DILocation(line: 367, column: 16, scope: !1715)
!1721 = !DILocation(line: 366, column: 23, scope: !1710)
!1722 = !DILocation(line: 366, column: 3, scope: !1710)
!1723 = distinct !{!1723, !1713, !1724, !982}
!1724 = !DILocation(line: 368, column: 18, scope: !1707)
!1725 = !DILocation(line: 369, column: 7, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1645, file: !2, line: 369, column: 7)
!1727 = !DILocation(line: 369, column: 7, scope: !1645)
!1728 = !DILocation(line: 371, column: 9, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !2, line: 371, column: 9)
!1730 = distinct !DILexicalBlock(scope: !1726, file: !2, line: 369, column: 20)
!1731 = !DILocation(line: 371, column: 24, scope: !1729)
!1732 = !DILocation(line: 371, column: 21, scope: !1729)
!1733 = !DILocation(line: 371, column: 9, scope: !1730)
!1734 = !DILocation(line: 373, column: 7, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1729, file: !2, line: 371, column: 32)
!1736 = !DILocation(line: 373, column: 13, scope: !1735)
!1737 = !DILocation(line: 374, column: 7, scope: !1735)
!1738 = !DILocation(line: 377, column: 39, scope: !1730)
!1739 = !DILocation(line: 377, column: 57, scope: !1730)
!1740 = !DILocation(line: 377, column: 65, scope: !1730)
!1741 = !DILocation(line: 377, column: 73, scope: !1730)
!1742 = !DILocation(line: 377, column: 5, scope: !1730)
!1743 = !DILocation(line: 378, column: 15, scope: !1730)
!1744 = !DILocation(line: 378, column: 12, scope: !1730)
!1745 = !DILocation(line: 379, column: 3, scope: !1730)
!1746 = !DILocation(line: 381, column: 20, scope: !1645)
!1747 = !DILocation(line: 381, column: 27, scope: !1645)
!1748 = !DILocation(line: 381, column: 13, scope: !1645)
!1749 = !DILocation(line: 381, column: 11, scope: !1645)
!1750 = !DILocation(line: 382, column: 8, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1645, file: !2, line: 382, column: 7)
!1752 = !DILocation(line: 382, column: 7, scope: !1645)
!1753 = !DILocation(line: 383, column: 5, scope: !1751)
!1754 = !DILocation(line: 385, column: 17, scope: !1645)
!1755 = !DILocation(line: 385, column: 26, scope: !1645)
!1756 = !{!1757, !779, i64 0}
!1757 = !{!"hwloc_obj", !779, i64 0, !778, i64 8, !787, i64 16, !778, i64 24, !788, i64 32, !778, i64 40, !787, i64 48, !787, i64 52, !778, i64 56, !778, i64 64, !778, i64 72, !787, i64 80, !778, i64 88, !778, i64 96, !787, i64 104, !778, i64 112, !778, i64 120, !778, i64 128, !787, i64 136, !787, i64 140, !778, i64 144, !787, i64 152, !778, i64 160, !787, i64 168, !778, i64 176, !778, i64 184, !778, i64 192, !778, i64 200, !778, i64 208, !778, i64 216, !787, i64 224, !778, i64 232, !788, i64 240}
!1758 = !DILocation(line: 385, column: 15, scope: !1645)
!1759 = !DILocation(line: 386, column: 8, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1645, file: !2, line: 386, column: 3)
!1761 = !DILocation(line: 386, column: 7, scope: !1760)
!1762 = !DILocation(line: 386, column: 12, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1760, file: !2, line: 386, column: 3)
!1764 = !DILocation(line: 386, column: 14, scope: !1763)
!1765 = !DILocation(line: 386, column: 13, scope: !1763)
!1766 = !DILocation(line: 386, column: 3, scope: !1760)
!1767 = !DILocation(line: 387, column: 9, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1763, file: !2, line: 387, column: 9)
!1769 = !DILocation(line: 387, column: 14, scope: !1768)
!1770 = !DILocation(line: 387, column: 18, scope: !1768)
!1771 = !DILocation(line: 387, column: 26, scope: !1768)
!1772 = !DILocation(line: 387, column: 23, scope: !1768)
!1773 = !DILocation(line: 387, column: 9, scope: !1763)
!1774 = !DILocation(line: 388, column: 19, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1768, file: !2, line: 387, column: 39)
!1776 = !DILocation(line: 389, column: 7, scope: !1775)
!1777 = !DILocation(line: 386, column: 23, scope: !1763)
!1778 = !DILocation(line: 386, column: 3, scope: !1763)
!1779 = distinct !{!1779, !1766, !1780, !982}
!1780 = !DILocation(line: 390, column: 5, scope: !1760)
!1781 = !DILocation(line: 391, column: 7, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1645, file: !2, line: 391, column: 7)
!1783 = !DILocation(line: 391, column: 19, scope: !1782)
!1784 = !DILocation(line: 391, column: 7, scope: !1645)
!1785 = !DILocation(line: 393, column: 30, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1782, file: !2, line: 391, column: 43)
!1787 = !DILocation(line: 393, column: 37, scope: !1786)
!1788 = !DILocation(line: 393, column: 23, scope: !1786)
!1789 = !DILocation(line: 393, column: 21, scope: !1786)
!1790 = !DILocation(line: 394, column: 10, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 394, column: 9)
!1792 = !DILocation(line: 394, column: 9, scope: !1786)
!1793 = !DILocation(line: 395, column: 7, scope: !1791)
!1794 = !DILocation(line: 396, column: 10, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 396, column: 5)
!1796 = !DILocation(line: 396, column: 9, scope: !1795)
!1797 = !DILocation(line: 396, column: 14, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1795, file: !2, line: 396, column: 5)
!1799 = !DILocation(line: 396, column: 16, scope: !1798)
!1800 = !DILocation(line: 396, column: 15, scope: !1798)
!1801 = !DILocation(line: 396, column: 5, scope: !1795)
!1802 = !DILocation(line: 397, column: 28, scope: !1798)
!1803 = !DILocation(line: 397, column: 33, scope: !1798)
!1804 = !DILocation(line: 397, column: 37, scope: !1798)
!1805 = !DILocation(line: 397, column: 7, scope: !1798)
!1806 = !DILocation(line: 397, column: 23, scope: !1798)
!1807 = !DILocation(line: 397, column: 26, scope: !1798)
!1808 = !DILocation(line: 396, column: 25, scope: !1798)
!1809 = !DILocation(line: 396, column: 5, scope: !1798)
!1810 = distinct !{!1810, !1801, !1811, !982}
!1811 = !DILocation(line: 397, column: 37, scope: !1795)
!1812 = !DILocation(line: 398, column: 3, scope: !1786)
!1813 = !DILocation(line: 400, column: 18, scope: !1645)
!1814 = !DILocation(line: 400, column: 3, scope: !1645)
!1815 = !DILocation(line: 400, column: 9, scope: !1645)
!1816 = !DILocation(line: 400, column: 16, scope: !1645)
!1817 = !DILocation(line: 401, column: 16, scope: !1645)
!1818 = !DILocation(line: 401, column: 3, scope: !1645)
!1819 = !DILocation(line: 401, column: 9, scope: !1645)
!1820 = !DILocation(line: 401, column: 14, scope: !1645)
!1821 = !DILocation(line: 402, column: 3, scope: !1645)
!1822 = !DILocation(line: 402, column: 9, scope: !1645)
!1823 = !DILocation(line: 402, column: 16, scope: !1645)
!1824 = !DILocation(line: 403, column: 19, scope: !1645)
!1825 = !DILocation(line: 403, column: 3, scope: !1645)
!1826 = !DILocation(line: 403, column: 9, scope: !1645)
!1827 = !DILocation(line: 403, column: 17, scope: !1645)
!1828 = !DILocation(line: 404, column: 23, scope: !1645)
!1829 = !DILocation(line: 404, column: 3, scope: !1645)
!1830 = !DILocation(line: 404, column: 9, scope: !1645)
!1831 = !DILocation(line: 404, column: 21, scope: !1645)
!1832 = !DILocation(line: 405, column: 27, scope: !1645)
!1833 = !DILocation(line: 405, column: 3, scope: !1645)
!1834 = !DILocation(line: 405, column: 9, scope: !1645)
!1835 = !DILocation(line: 405, column: 25, scope: !1645)
!1836 = !DILocation(line: 406, column: 18, scope: !1645)
!1837 = !DILocation(line: 406, column: 3, scope: !1645)
!1838 = !DILocation(line: 406, column: 9, scope: !1645)
!1839 = !DILocation(line: 406, column: 16, scope: !1645)
!1840 = !DILocation(line: 408, column: 7, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1645, file: !2, line: 408, column: 7)
!1842 = !DILocation(line: 408, column: 7, scope: !1645)
!1843 = !DILocation(line: 409, column: 5, scope: !1841)
!1844 = !DILocation(line: 409, column: 11, scope: !1841)
!1845 = !DILocation(line: 409, column: 16, scope: !1841)
!1846 = !DILocation(line: 411, column: 7, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1645, file: !2, line: 411, column: 7)
!1848 = !DILocation(line: 411, column: 7, scope: !1645)
!1849 = !DILocation(line: 412, column: 12, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !2, line: 412, column: 7)
!1851 = distinct !DILexicalBlock(scope: !1847, file: !2, line: 411, column: 56)
!1852 = !DILocation(line: 412, column: 11, scope: !1850)
!1853 = !DILocation(line: 412, column: 16, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1850, file: !2, line: 412, column: 7)
!1855 = !DILocation(line: 412, column: 18, scope: !1854)
!1856 = !DILocation(line: 412, column: 17, scope: !1854)
!1857 = !DILocation(line: 412, column: 7, scope: !1850)
!1858 = !DILocation(line: 413, column: 21, scope: !1854)
!1859 = !DILocation(line: 413, column: 26, scope: !1854)
!1860 = !DILocation(line: 413, column: 30, scope: !1854)
!1861 = !{!1757, !787, i64 16}
!1862 = !DILocation(line: 413, column: 2, scope: !1854)
!1863 = !DILocation(line: 413, column: 8, scope: !1854)
!1864 = !DILocation(line: 413, column: 16, scope: !1854)
!1865 = !DILocation(line: 413, column: 19, scope: !1854)
!1866 = !DILocation(line: 412, column: 27, scope: !1854)
!1867 = !DILocation(line: 412, column: 7, scope: !1854)
!1868 = distinct !{!1868, !1857, !1869, !982}
!1869 = !DILocation(line: 413, column: 30, scope: !1850)
!1870 = !DILocation(line: 414, column: 5, scope: !1851)
!1871 = !DILocation(line: 415, column: 12, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !2, line: 415, column: 7)
!1873 = distinct !DILexicalBlock(scope: !1847, file: !2, line: 414, column: 12)
!1874 = !DILocation(line: 415, column: 11, scope: !1872)
!1875 = !DILocation(line: 415, column: 16, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1872, file: !2, line: 415, column: 7)
!1877 = !DILocation(line: 415, column: 18, scope: !1876)
!1878 = !DILocation(line: 415, column: 17, scope: !1876)
!1879 = !DILocation(line: 415, column: 7, scope: !1872)
!1880 = !DILocation(line: 416, column: 21, scope: !1876)
!1881 = !DILocation(line: 416, column: 26, scope: !1876)
!1882 = !DILocation(line: 416, column: 30, scope: !1876)
!1883 = !{!1757, !788, i64 240}
!1884 = !DILocation(line: 416, column: 2, scope: !1876)
!1885 = !DILocation(line: 416, column: 8, scope: !1876)
!1886 = !DILocation(line: 416, column: 16, scope: !1876)
!1887 = !DILocation(line: 416, column: 19, scope: !1876)
!1888 = !DILocation(line: 415, column: 27, scope: !1876)
!1889 = !DILocation(line: 415, column: 7, scope: !1876)
!1890 = distinct !{!1890, !1879, !1891, !982}
!1891 = !DILocation(line: 416, column: 30, scope: !1872)
!1892 = !DILocation(line: 419, column: 3, scope: !1645)
!1893 = !DILocation(line: 421, column: 2, scope: !1645)
!1894 = !DILocation(line: 422, column: 8, scope: !1645)
!1895 = !DILocation(line: 422, column: 3, scope: !1645)
!1896 = !DILocation(line: 423, column: 2, scope: !1645)
!1897 = !DILocation(line: 424, column: 39, scope: !1645)
!1898 = !DILocation(line: 424, column: 3, scope: !1645)
!1899 = !DILocation(line: 425, column: 3, scope: !1645)
!1900 = !DILocation(line: 426, column: 1, scope: !1645)
!1901 = distinct !DISubprogram(name: "hwloc_internal_distances_restrict", scope: !2, file: !2, line: 740, type: !1902, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !1904)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{null, !270, !619, !616, !619, !134, !134}
!1904 = !{!1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914}
!1905 = !DILocalVariable(name: "objs", arg: 1, scope: !1901, file: !2, line: 740, type: !270)
!1906 = !DILocalVariable(name: "indexes", arg: 2, scope: !1901, file: !2, line: 741, type: !619)
!1907 = !DILocalVariable(name: "different_types", arg: 3, scope: !1901, file: !2, line: 742, type: !616)
!1908 = !DILocalVariable(name: "values", arg: 4, scope: !1901, file: !2, line: 743, type: !619)
!1909 = !DILocalVariable(name: "nbobjs", arg: 5, scope: !1901, file: !2, line: 744, type: !134)
!1910 = !DILocalVariable(name: "disappeared", arg: 6, scope: !1901, file: !2, line: 744, type: !134)
!1911 = !DILocalVariable(name: "i", scope: !1901, file: !2, line: 746, type: !134)
!1912 = !DILocalVariable(name: "newi", scope: !1901, file: !2, line: 746, type: !134)
!1913 = !DILocalVariable(name: "j", scope: !1901, file: !2, line: 747, type: !134)
!1914 = !DILocalVariable(name: "newj", scope: !1901, file: !2, line: 747, type: !134)
!1915 = !DILocation(line: 740, column: 48, scope: !1901)
!1916 = !DILocation(line: 741, column: 17, scope: !1901)
!1917 = !DILocation(line: 742, column: 53, scope: !1901)
!1918 = !DILocation(line: 743, column: 17, scope: !1901)
!1919 = !DILocation(line: 744, column: 16, scope: !1901)
!1920 = !DILocation(line: 744, column: 33, scope: !1901)
!1921 = !DILocation(line: 746, column: 3, scope: !1901)
!1922 = !DILocation(line: 746, column: 12, scope: !1901)
!1923 = !DILocation(line: 746, column: 15, scope: !1901)
!1924 = !DILocation(line: 747, column: 3, scope: !1901)
!1925 = !DILocation(line: 747, column: 12, scope: !1901)
!1926 = !DILocation(line: 747, column: 15, scope: !1901)
!1927 = !DILocation(line: 749, column: 8, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1901, file: !2, line: 749, column: 3)
!1929 = !DILocation(line: 749, column: 16, scope: !1928)
!1930 = !DILocation(line: 749, column: 7, scope: !1928)
!1931 = !DILocation(line: 749, column: 20, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1928, file: !2, line: 749, column: 3)
!1933 = !DILocation(line: 749, column: 22, scope: !1932)
!1934 = !DILocation(line: 749, column: 21, scope: !1932)
!1935 = !DILocation(line: 749, column: 3, scope: !1928)
!1936 = !DILocation(line: 750, column: 9, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1932, file: !2, line: 750, column: 9)
!1938 = !DILocation(line: 750, column: 14, scope: !1937)
!1939 = !DILocation(line: 750, column: 9, scope: !1932)
!1940 = !DILocation(line: 751, column: 12, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !2, line: 751, column: 7)
!1942 = distinct !DILexicalBlock(scope: !1937, file: !2, line: 750, column: 18)
!1943 = !DILocation(line: 751, column: 20, scope: !1941)
!1944 = !DILocation(line: 751, column: 11, scope: !1941)
!1945 = !DILocation(line: 751, column: 24, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1941, file: !2, line: 751, column: 7)
!1947 = !DILocation(line: 751, column: 26, scope: !1946)
!1948 = !DILocation(line: 751, column: 25, scope: !1946)
!1949 = !DILocation(line: 751, column: 7, scope: !1941)
!1950 = !DILocation(line: 752, column: 6, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1946, file: !2, line: 752, column: 6)
!1952 = !DILocation(line: 752, column: 11, scope: !1951)
!1953 = !DILocation(line: 752, column: 6, scope: !1946)
!1954 = !DILocation(line: 753, column: 45, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1951, file: !2, line: 752, column: 15)
!1956 = !DILocation(line: 753, column: 52, scope: !1955)
!1957 = !DILocation(line: 753, column: 54, scope: !1955)
!1958 = !DILocation(line: 753, column: 53, scope: !1955)
!1959 = !DILocation(line: 753, column: 61, scope: !1955)
!1960 = !DILocation(line: 753, column: 60, scope: !1955)
!1961 = !DILocation(line: 753, column: 4, scope: !1955)
!1962 = !DILocation(line: 753, column: 11, scope: !1955)
!1963 = !DILocation(line: 753, column: 17, scope: !1955)
!1964 = !DILocation(line: 753, column: 24, scope: !1955)
!1965 = !DILocation(line: 753, column: 23, scope: !1955)
!1966 = !DILocation(line: 753, column: 15, scope: !1955)
!1967 = !DILocation(line: 753, column: 37, scope: !1955)
!1968 = !DILocation(line: 753, column: 36, scope: !1955)
!1969 = !DILocation(line: 753, column: 43, scope: !1955)
!1970 = !DILocation(line: 754, column: 8, scope: !1955)
!1971 = !DILocation(line: 755, column: 2, scope: !1955)
!1972 = !DILocation(line: 752, column: 12, scope: !1951)
!1973 = !DILocation(line: 751, column: 35, scope: !1946)
!1974 = !DILocation(line: 751, column: 7, scope: !1946)
!1975 = distinct !{!1975, !1949, !1976, !982}
!1976 = !DILocation(line: 755, column: 2, scope: !1941)
!1977 = !DILocation(line: 756, column: 11, scope: !1942)
!1978 = !DILocation(line: 757, column: 5, scope: !1942)
!1979 = !DILocation(line: 750, column: 15, scope: !1937)
!1980 = !DILocation(line: 749, column: 31, scope: !1932)
!1981 = !DILocation(line: 749, column: 3, scope: !1932)
!1982 = distinct !{!1982, !1935, !1983, !982}
!1983 = !DILocation(line: 757, column: 5, scope: !1928)
!1984 = !DILocation(line: 759, column: 8, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1901, file: !2, line: 759, column: 3)
!1986 = !DILocation(line: 759, column: 16, scope: !1985)
!1987 = !DILocation(line: 759, column: 7, scope: !1985)
!1988 = !DILocation(line: 759, column: 20, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1985, file: !2, line: 759, column: 3)
!1990 = !DILocation(line: 759, column: 22, scope: !1989)
!1991 = !DILocation(line: 759, column: 21, scope: !1989)
!1992 = !DILocation(line: 759, column: 3, scope: !1985)
!1993 = !DILocation(line: 760, column: 9, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1989, file: !2, line: 760, column: 9)
!1995 = !DILocation(line: 760, column: 14, scope: !1994)
!1996 = !DILocation(line: 760, column: 9, scope: !1989)
!1997 = !DILocation(line: 761, column: 20, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1994, file: !2, line: 760, column: 18)
!1999 = !DILocation(line: 761, column: 25, scope: !1998)
!2000 = !DILocation(line: 761, column: 7, scope: !1998)
!2001 = !DILocation(line: 761, column: 12, scope: !1998)
!2002 = !DILocation(line: 761, column: 18, scope: !1998)
!2003 = !DILocation(line: 762, column: 11, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1998, file: !2, line: 762, column: 11)
!2005 = !DILocation(line: 762, column: 11, scope: !1998)
!2006 = !DILocation(line: 763, column: 18, scope: !2004)
!2007 = !DILocation(line: 763, column: 26, scope: !2004)
!2008 = !DILocation(line: 763, column: 2, scope: !2004)
!2009 = !DILocation(line: 763, column: 10, scope: !2004)
!2010 = !DILocation(line: 763, column: 16, scope: !2004)
!2011 = !DILocation(line: 764, column: 11, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1998, file: !2, line: 764, column: 11)
!2013 = !DILocation(line: 764, column: 11, scope: !1998)
!2014 = !DILocation(line: 765, column: 33, scope: !2012)
!2015 = !DILocation(line: 765, column: 49, scope: !2012)
!2016 = !DILocation(line: 765, column: 9, scope: !2012)
!2017 = !DILocation(line: 765, column: 25, scope: !2012)
!2018 = !DILocation(line: 765, column: 31, scope: !2012)
!2019 = !DILocation(line: 766, column: 11, scope: !1998)
!2020 = !DILocation(line: 767, column: 5, scope: !1998)
!2021 = !DILocation(line: 760, column: 15, scope: !1994)
!2022 = !DILocation(line: 759, column: 31, scope: !1989)
!2023 = !DILocation(line: 759, column: 3, scope: !1989)
!2024 = distinct !{!2024, !1992, !2025, !982}
!2025 = !DILocation(line: 767, column: 5, scope: !1985)
!2026 = !DILocation(line: 768, column: 1, scope: !1901)
!2027 = !DISubprogram(name: "malloc", scope: !919, file: !919, line: 540, type: !2028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!259, !445}
!2030 = !DISubprogram(name: "free", scope: !919, file: !919, line: 555, type: !2031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{null, !259}
!2033 = distinct !DISubprogram(name: "hwloc_backend_distances_add_commit", scope: !2, file: !2, line: 476, type: !2034, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2036)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!181, !464, !1536, !287}
!2036 = !{!2037, !2038, !2039, !2040, !2041, !2044, !2046, !2047}
!2037 = !DILocalVariable(name: "topology", arg: 1, scope: !2033, file: !2, line: 476, type: !464)
!2038 = !DILocalVariable(name: "handle", arg: 2, scope: !2033, file: !2, line: 477, type: !1536)
!2039 = !DILocalVariable(name: "flags", arg: 3, scope: !2033, file: !2, line: 478, type: !287)
!2040 = !DILocalVariable(name: "dist", scope: !2033, file: !2, line: 480, type: !609)
!2041 = !DILocalVariable(name: "full_accuracy", scope: !2042, file: !2, line: 497, type: !258)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !2, line: 496, column: 97)
!2043 = distinct !DILexicalBlock(scope: !2033, file: !2, line: 496, column: 7)
!2044 = !DILocalVariable(name: "accuracies", scope: !2042, file: !2, line: 498, type: !2045)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!2046 = !DILocalVariable(name: "nbaccuracies", scope: !2042, file: !2, line: 499, type: !134)
!2047 = !DILabel(scope: !2033, name: "err", file: !2, line: 529)
!2048 = !DILocation(line: 476, column: 53, scope: !2033)
!2049 = !DILocation(line: 477, column: 73, scope: !2033)
!2050 = !DILocation(line: 478, column: 50, scope: !2033)
!2051 = !DILocation(line: 480, column: 3, scope: !2033)
!2052 = !DILocation(line: 480, column: 38, scope: !2033)
!2053 = !DILocation(line: 480, column: 45, scope: !2033)
!2054 = !DILocation(line: 482, column: 8, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2033, file: !2, line: 482, column: 7)
!2056 = !DILocation(line: 482, column: 14, scope: !2055)
!2057 = !DILocation(line: 482, column: 21, scope: !2055)
!2058 = !DILocation(line: 482, column: 26, scope: !2055)
!2059 = !DILocation(line: 482, column: 32, scope: !2055)
!2060 = !DILocation(line: 482, column: 39, scope: !2055)
!2061 = !DILocation(line: 482, column: 7, scope: !2033)
!2062 = !DILocation(line: 484, column: 5, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2055, file: !2, line: 482, column: 82)
!2064 = !DILocation(line: 484, column: 11, scope: !2063)
!2065 = !DILocation(line: 485, column: 5, scope: !2063)
!2066 = !DILocation(line: 488, column: 8, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2033, file: !2, line: 488, column: 7)
!2068 = !DILocation(line: 488, column: 14, scope: !2067)
!2069 = !DILocation(line: 488, column: 48, scope: !2067)
!2070 = !DILocation(line: 488, column: 52, scope: !2067)
!2071 = !DILocation(line: 488, column: 58, scope: !2067)
!2072 = !DILocation(line: 488, column: 7, scope: !2033)
!2073 = !DILocation(line: 492, column: 5, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2067, file: !2, line: 488, column: 64)
!2075 = !DILocation(line: 492, column: 11, scope: !2074)
!2076 = !DILocation(line: 493, column: 5, scope: !2074)
!2077 = !DILocation(line: 496, column: 7, scope: !2043)
!2078 = !DILocation(line: 496, column: 17, scope: !2043)
!2079 = !DILocation(line: 496, column: 26, scope: !2043)
!2080 = !DILocation(line: 496, column: 30, scope: !2043)
!2081 = !DILocation(line: 496, column: 36, scope: !2043)
!2082 = !DILocation(line: 496, column: 70, scope: !2043)
!2083 = !DILocation(line: 496, column: 74, scope: !2043)
!2084 = !DILocation(line: 496, column: 80, scope: !2043)
!2085 = !DILocation(line: 496, column: 7, scope: !2033)
!2086 = !DILocation(line: 497, column: 5, scope: !2042)
!2087 = !DILocation(line: 497, column: 11, scope: !2042)
!2088 = !DILocation(line: 498, column: 5, scope: !2042)
!2089 = !DILocation(line: 498, column: 12, scope: !2042)
!2090 = !DILocation(line: 499, column: 5, scope: !2042)
!2091 = !DILocation(line: 499, column: 14, scope: !2042)
!2092 = !DILocation(line: 501, column: 9, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2042, file: !2, line: 501, column: 9)
!2094 = !DILocation(line: 501, column: 15, scope: !2093)
!2095 = !DILocation(line: 501, column: 9, scope: !2042)
!2096 = !DILocation(line: 502, column: 20, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2093, file: !2, line: 501, column: 60)
!2098 = !DILocation(line: 502, column: 30, scope: !2097)
!2099 = !DILocation(line: 502, column: 18, scope: !2097)
!2100 = !DILocation(line: 503, column: 22, scope: !2097)
!2101 = !DILocation(line: 503, column: 32, scope: !2097)
!2102 = !DILocation(line: 503, column: 20, scope: !2097)
!2103 = !DILocation(line: 504, column: 5, scope: !2097)
!2104 = !DILocation(line: 505, column: 18, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2093, file: !2, line: 504, column: 12)
!2106 = !DILocation(line: 506, column: 20, scope: !2105)
!2107 = !DILocation(line: 509, column: 9, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2042, file: !2, line: 509, column: 9)
!2109 = !DILocation(line: 509, column: 19, scope: !2108)
!2110 = !DILocation(line: 509, column: 9, scope: !2042)
!2111 = !DILocation(line: 510, column: 15, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2108, file: !2, line: 509, column: 37)
!2113 = !DILocation(line: 510, column: 7, scope: !2112)
!2114 = !DILocation(line: 511, column: 45, scope: !2112)
!2115 = !DILocation(line: 511, column: 7, scope: !2112)
!2116 = !DILocation(line: 512, column: 5, scope: !2112)
!2117 = !DILocation(line: 514, column: 32, scope: !2042)
!2118 = !DILocation(line: 514, column: 42, scope: !2042)
!2119 = !DILocation(line: 514, column: 48, scope: !2042)
!2120 = !DILocation(line: 514, column: 56, scope: !2042)
!2121 = !DILocation(line: 514, column: 62, scope: !2042)
!2122 = !DILocation(line: 514, column: 68, scope: !2042)
!2123 = !DILocation(line: 514, column: 74, scope: !2042)
!2124 = !DILocation(line: 515, column: 11, scope: !2042)
!2125 = !DILocation(line: 515, column: 17, scope: !2042)
!2126 = !DILocation(line: 515, column: 23, scope: !2042)
!2127 = !DILocation(line: 515, column: 37, scope: !2042)
!2128 = !DILocation(line: 514, column: 5, scope: !2042)
!2129 = !DILocation(line: 516, column: 3, scope: !2043)
!2130 = !DILocation(line: 516, column: 3, scope: !2042)
!2131 = !DILocation(line: 518, column: 7, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2033, file: !2, line: 518, column: 7)
!2133 = !DILocation(line: 518, column: 17, scope: !2132)
!2134 = !DILocation(line: 518, column: 7, scope: !2033)
!2135 = !DILocation(line: 519, column: 33, scope: !2132)
!2136 = !DILocation(line: 519, column: 5, scope: !2132)
!2137 = !DILocation(line: 519, column: 15, scope: !2132)
!2138 = !DILocation(line: 519, column: 26, scope: !2132)
!2139 = !DILocation(line: 519, column: 31, scope: !2132)
!2140 = !DILocation(line: 521, column: 28, scope: !2132)
!2141 = !DILocation(line: 521, column: 5, scope: !2132)
!2142 = !DILocation(line: 521, column: 15, scope: !2132)
!2143 = !DILocation(line: 521, column: 26, scope: !2132)
!2144 = !DILocation(line: 522, column: 16, scope: !2033)
!2145 = !DILocation(line: 522, column: 26, scope: !2033)
!2146 = !DILocation(line: 522, column: 3, scope: !2033)
!2147 = !DILocation(line: 522, column: 9, scope: !2033)
!2148 = !DILocation(line: 522, column: 14, scope: !2033)
!2149 = !DILocation(line: 523, column: 3, scope: !2033)
!2150 = !DILocation(line: 523, column: 9, scope: !2033)
!2151 = !DILocation(line: 523, column: 14, scope: !2033)
!2152 = !DILocation(line: 524, column: 25, scope: !2033)
!2153 = !DILocation(line: 524, column: 3, scope: !2033)
!2154 = !DILocation(line: 524, column: 13, scope: !2033)
!2155 = !DILocation(line: 524, column: 23, scope: !2033)
!2156 = !DILocation(line: 526, column: 3, scope: !2033)
!2157 = !DILocation(line: 526, column: 9, scope: !2033)
!2158 = !DILocation(line: 526, column: 16, scope: !2033)
!2159 = !DILocation(line: 527, column: 3, scope: !2033)
!2160 = !DILocation(line: 529, column: 2, scope: !2033)
!2161 = !DILocation(line: 530, column: 39, scope: !2033)
!2162 = !DILocation(line: 530, column: 3, scope: !2033)
!2163 = !DILocation(line: 531, column: 3, scope: !2033)
!2164 = !DILocation(line: 532, column: 1, scope: !2033)
!2165 = !DISubprogram(name: "fprintf", scope: !2166, file: !2166, line: 350, type: !2167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2166 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!181, !2169, !2222, null}
!2169 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2170)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2172, line: 7, baseType: !2173)
!2172 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2174, line: 49, size: 1728, elements: !2175)
!2174 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!2175 = !{!2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2191, !2193, !2194, !2195, !2198, !2199, !2201, !2205, !2208, !2210, !2213, !2216, !2217, !2218, !2219, !2220}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2173, file: !2174, line: 51, baseType: !181, size: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2173, file: !2174, line: 54, baseType: !277, size: 64, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2173, file: !2174, line: 55, baseType: !277, size: 64, offset: 128)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2173, file: !2174, line: 56, baseType: !277, size: 64, offset: 192)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2173, file: !2174, line: 57, baseType: !277, size: 64, offset: 256)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2173, file: !2174, line: 58, baseType: !277, size: 64, offset: 320)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2173, file: !2174, line: 59, baseType: !277, size: 64, offset: 384)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2173, file: !2174, line: 60, baseType: !277, size: 64, offset: 448)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2173, file: !2174, line: 61, baseType: !277, size: 64, offset: 512)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2173, file: !2174, line: 64, baseType: !277, size: 64, offset: 576)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2173, file: !2174, line: 65, baseType: !277, size: 64, offset: 640)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2173, file: !2174, line: 66, baseType: !277, size: 64, offset: 704)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2173, file: !2174, line: 68, baseType: !2189, size: 64, offset: 768)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2174, line: 36, flags: DIFlagFwdDecl)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2173, file: !2174, line: 70, baseType: !2192, size: 64, offset: 832)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2173, file: !2174, line: 72, baseType: !181, size: 32, offset: 896)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2173, file: !2174, line: 73, baseType: !181, size: 32, offset: 928)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2173, file: !2174, line: 74, baseType: !2196, size: 64, offset: 960)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !286, line: 152, baseType: !2197)
!2197 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2173, file: !2174, line: 77, baseType: !250, size: 16, offset: 1024)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2173, file: !2174, line: 78, baseType: !2200, size: 8, offset: 1040)
!2200 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2173, file: !2174, line: 79, baseType: !2202, size: 8, offset: 1048)
!2202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !2203)
!2203 = !{!2204}
!2204 = !DISubrange(count: 1)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2173, file: !2174, line: 81, baseType: !2206, size: 64, offset: 1088)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2174, line: 43, baseType: null)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2173, file: !2174, line: 89, baseType: !2209, size: 64, offset: 1152)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !286, line: 153, baseType: !2197)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2173, file: !2174, line: 91, baseType: !2211, size: 64, offset: 1216)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2174, line: 37, flags: DIFlagFwdDecl)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2173, file: !2174, line: 92, baseType: !2214, size: 64, offset: 1280)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2174, line: 38, flags: DIFlagFwdDecl)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2173, file: !2174, line: 93, baseType: !2192, size: 64, offset: 1344)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2173, file: !2174, line: 94, baseType: !259, size: 64, offset: 1408)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2173, file: !2174, line: 95, baseType: !445, size: 64, offset: 1472)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2173, file: !2174, line: 96, baseType: !181, size: 32, offset: 1536)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2173, file: !2174, line: 98, baseType: !2221, size: 160, offset: 1568)
!2221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !430)
!2222 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !257)
!2223 = distinct !DISubprogram(name: "hwloc_internal_distances_print_matrix", scope: !2, file: !2, line: 31, type: !991, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2224)
!2224 = !{!2225, !2226, !2227, !2228, !2229, !2230, !2231}
!2225 = !DILocalVariable(name: "dist", arg: 1, scope: !2223, file: !2, line: 31, type: !609)
!2226 = !DILocalVariable(name: "nbobjs", scope: !2223, file: !2, line: 33, type: !134)
!2227 = !DILocalVariable(name: "objs", scope: !2223, file: !2, line: 34, type: !270)
!2228 = !DILocalVariable(name: "values", scope: !2223, file: !2, line: 35, type: !400)
!2229 = !DILocalVariable(name: "gp", scope: !2223, file: !2, line: 36, type: !181)
!2230 = !DILocalVariable(name: "i", scope: !2223, file: !2, line: 37, type: !134)
!2231 = !DILocalVariable(name: "j", scope: !2223, file: !2, line: 37, type: !134)
!2232 = !DILocation(line: 31, column: 74, scope: !2223)
!2233 = !DILocation(line: 33, column: 3, scope: !2223)
!2234 = !DILocation(line: 33, column: 12, scope: !2223)
!2235 = !DILocation(line: 33, column: 21, scope: !2223)
!2236 = !DILocation(line: 33, column: 27, scope: !2223)
!2237 = !DILocation(line: 34, column: 3, scope: !2223)
!2238 = !DILocation(line: 34, column: 16, scope: !2223)
!2239 = !DILocation(line: 34, column: 23, scope: !2223)
!2240 = !DILocation(line: 34, column: 29, scope: !2223)
!2241 = !DILocation(line: 35, column: 3, scope: !2223)
!2242 = !DILocation(line: 35, column: 19, scope: !2223)
!2243 = !DILocation(line: 35, column: 28, scope: !2223)
!2244 = !DILocation(line: 35, column: 34, scope: !2223)
!2245 = !DILocation(line: 36, column: 3, scope: !2223)
!2246 = !DILocation(line: 36, column: 7, scope: !2223)
!2247 = !DILocation(line: 36, column: 13, scope: !2223)
!2248 = !DILocation(line: 36, column: 12, scope: !2223)
!2249 = !DILocation(line: 37, column: 3, scope: !2223)
!2250 = !DILocation(line: 37, column: 12, scope: !2223)
!2251 = !DILocation(line: 37, column: 15, scope: !2223)
!2252 = !DILocation(line: 39, column: 11, scope: !2223)
!2253 = !DILocation(line: 39, column: 25, scope: !2223)
!2254 = !DILocation(line: 39, column: 3, scope: !2223)
!2255 = !DILocation(line: 40, column: 8, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2223, file: !2, line: 40, column: 3)
!2257 = !DILocation(line: 40, column: 7, scope: !2256)
!2258 = !DILocation(line: 40, column: 12, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2256, file: !2, line: 40, column: 3)
!2260 = !DILocation(line: 40, column: 14, scope: !2259)
!2261 = !DILocation(line: 40, column: 13, scope: !2259)
!2262 = !DILocation(line: 40, column: 3, scope: !2256)
!2263 = !DILocation(line: 41, column: 13, scope: !2259)
!2264 = !DILocation(line: 41, column: 36, scope: !2259)
!2265 = !DILocation(line: 41, column: 41, scope: !2259)
!2266 = !DILocation(line: 41, column: 46, scope: !2259)
!2267 = !DILocation(line: 41, column: 50, scope: !2259)
!2268 = !DILocation(line: 41, column: 61, scope: !2259)
!2269 = !DILocation(line: 41, column: 66, scope: !2259)
!2270 = !DILocation(line: 41, column: 70, scope: !2259)
!2271 = !DILocation(line: 41, column: 30, scope: !2259)
!2272 = !DILocation(line: 41, column: 5, scope: !2259)
!2273 = !DILocation(line: 40, column: 23, scope: !2259)
!2274 = !DILocation(line: 40, column: 3, scope: !2259)
!2275 = distinct !{!2275, !2262, !2276, !982}
!2276 = !DILocation(line: 41, column: 79, scope: !2256)
!2277 = !DILocation(line: 42, column: 11, scope: !2223)
!2278 = !DILocation(line: 42, column: 3, scope: !2223)
!2279 = !DILocation(line: 43, column: 8, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2223, file: !2, line: 43, column: 3)
!2281 = !DILocation(line: 43, column: 7, scope: !2280)
!2282 = !DILocation(line: 43, column: 12, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2280, file: !2, line: 43, column: 3)
!2284 = !DILocation(line: 43, column: 14, scope: !2283)
!2285 = !DILocation(line: 43, column: 13, scope: !2283)
!2286 = !DILocation(line: 43, column: 3, scope: !2280)
!2287 = !DILocation(line: 44, column: 13, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2283, file: !2, line: 43, column: 27)
!2289 = !DILocation(line: 44, column: 37, scope: !2288)
!2290 = !DILocation(line: 44, column: 42, scope: !2288)
!2291 = !DILocation(line: 44, column: 47, scope: !2288)
!2292 = !DILocation(line: 44, column: 51, scope: !2288)
!2293 = !DILocation(line: 44, column: 62, scope: !2288)
!2294 = !DILocation(line: 44, column: 67, scope: !2288)
!2295 = !DILocation(line: 44, column: 71, scope: !2288)
!2296 = !DILocation(line: 44, column: 31, scope: !2288)
!2297 = !DILocation(line: 44, column: 5, scope: !2288)
!2298 = !DILocation(line: 45, column: 10, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2288, file: !2, line: 45, column: 5)
!2300 = !DILocation(line: 45, column: 9, scope: !2299)
!2301 = !DILocation(line: 45, column: 14, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2299, file: !2, line: 45, column: 5)
!2303 = !DILocation(line: 45, column: 16, scope: !2302)
!2304 = !DILocation(line: 45, column: 15, scope: !2302)
!2305 = !DILocation(line: 45, column: 5, scope: !2299)
!2306 = !DILocation(line: 46, column: 15, scope: !2302)
!2307 = !DILocation(line: 46, column: 46, scope: !2302)
!2308 = !DILocation(line: 46, column: 53, scope: !2302)
!2309 = !DILocation(line: 46, column: 55, scope: !2302)
!2310 = !DILocation(line: 46, column: 54, scope: !2302)
!2311 = !DILocation(line: 46, column: 64, scope: !2302)
!2312 = !DILocation(line: 46, column: 62, scope: !2302)
!2313 = !DILocation(line: 46, column: 7, scope: !2302)
!2314 = !DILocation(line: 45, column: 25, scope: !2302)
!2315 = !DILocation(line: 45, column: 5, scope: !2302)
!2316 = distinct !{!2316, !2305, !2317, !982}
!2317 = !DILocation(line: 46, column: 66, scope: !2299)
!2318 = !DILocation(line: 47, column: 13, scope: !2288)
!2319 = !DILocation(line: 47, column: 5, scope: !2288)
!2320 = !DILocation(line: 48, column: 3, scope: !2288)
!2321 = !DILocation(line: 43, column: 23, scope: !2283)
!2322 = !DILocation(line: 43, column: 3, scope: !2283)
!2323 = distinct !{!2323, !2286, !2324, !982}
!2324 = !DILocation(line: 48, column: 3, scope: !2280)
!2325 = !DILocation(line: 49, column: 1, scope: !2223)
!2326 = distinct !DISubprogram(name: "hwloc__groups_by_distances", scope: !2, file: !2, line: 1185, type: !2327, scopeLine: 1193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2329)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{null, !416, !134, !369, !619, !287, !134, !2045, !181}
!2329 = !{!2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2351, !2352, !2358, !2359}
!2330 = !DILocalVariable(name: "topology", arg: 1, scope: !2326, file: !2, line: 1185, type: !416)
!2331 = !DILocalVariable(name: "nbobjs", arg: 2, scope: !2326, file: !2, line: 1186, type: !134)
!2332 = !DILocalVariable(name: "objs", arg: 3, scope: !2326, file: !2, line: 1187, type: !369)
!2333 = !DILocalVariable(name: "_values", arg: 4, scope: !2326, file: !2, line: 1188, type: !619)
!2334 = !DILocalVariable(name: "kind", arg: 5, scope: !2326, file: !2, line: 1189, type: !287)
!2335 = !DILocalVariable(name: "nbaccuracies", arg: 6, scope: !2326, file: !2, line: 1190, type: !134)
!2336 = !DILocalVariable(name: "accuracies", arg: 7, scope: !2326, file: !2, line: 1191, type: !2045)
!2337 = !DILocalVariable(name: "needcheck", arg: 8, scope: !2326, file: !2, line: 1192, type: !181)
!2338 = !DILocalVariable(name: "groupids", scope: !2326, file: !2, line: 1194, type: !424)
!2339 = !DILocalVariable(name: "nbgroups", scope: !2326, file: !2, line: 1195, type: !134)
!2340 = !DILocalVariable(name: "i", scope: !2326, file: !2, line: 1196, type: !134)
!2341 = !DILocalVariable(name: "j", scope: !2326, file: !2, line: 1196, type: !134)
!2342 = !DILocalVariable(name: "verbose", scope: !2326, file: !2, line: 1197, type: !181)
!2343 = !DILocalVariable(name: "groupobjs", scope: !2326, file: !2, line: 1198, type: !270)
!2344 = !DILocalVariable(name: "groupsizes", scope: !2326, file: !2, line: 1199, type: !424)
!2345 = !DILocalVariable(name: "groupvalues", scope: !2326, file: !2, line: 1200, type: !619)
!2346 = !DILocalVariable(name: "failed", scope: !2326, file: !2, line: 1201, type: !134)
!2347 = !DILocalVariable(name: "group_obj", scope: !2348, file: !2, line: 1238, type: !271)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !2, line: 1236, column: 33)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !2, line: 1236, column: 7)
!2350 = distinct !DILexicalBlock(scope: !2326, file: !2, line: 1236, column: 7)
!2351 = !DILocalVariable(name: "res_obj", scope: !2348, file: !2, line: 1238, type: !271)
!2352 = !DILocalVariable(name: "groupsize", scope: !2353, file: !2, line: 1277, type: !134)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !2, line: 1276, column: 37)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !2, line: 1276, column: 11)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !2, line: 1276, column: 11)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !2, line: 1275, column: 7)
!2357 = distinct !DILexicalBlock(scope: !2326, file: !2, line: 1275, column: 7)
!2358 = !DILabel(scope: !2326, name: "out_with_groups", file: !2, line: 1296)
!2359 = !DILabel(scope: !2326, name: "out_with_groupids", file: !2, line: 1300)
!2360 = !DILocation(line: 1185, column: 51, scope: !2326)
!2361 = !DILocation(line: 1186, column: 16, scope: !2326)
!2362 = !DILocation(line: 1187, column: 26, scope: !2326)
!2363 = !DILocation(line: 1188, column: 17, scope: !2326)
!2364 = !DILocation(line: 1189, column: 21, scope: !2326)
!2365 = !DILocation(line: 1190, column: 16, scope: !2326)
!2366 = !DILocation(line: 1191, column: 14, scope: !2326)
!2367 = !DILocation(line: 1192, column: 11, scope: !2326)
!2368 = !DILocation(line: 1194, column: 3, scope: !2326)
!2369 = !DILocation(line: 1194, column: 13, scope: !2326)
!2370 = !DILocation(line: 1195, column: 3, scope: !2326)
!2371 = !DILocation(line: 1195, column: 12, scope: !2326)
!2372 = !DILocation(line: 1196, column: 3, scope: !2326)
!2373 = !DILocation(line: 1196, column: 12, scope: !2326)
!2374 = !DILocation(line: 1196, column: 14, scope: !2326)
!2375 = !DILocation(line: 1197, column: 3, scope: !2326)
!2376 = !DILocation(line: 1197, column: 7, scope: !2326)
!2377 = !DILocation(line: 1197, column: 17, scope: !2326)
!2378 = !DILocation(line: 1197, column: 27, scope: !2326)
!2379 = !DILocation(line: 1198, column: 3, scope: !2326)
!2380 = !DILocation(line: 1198, column: 16, scope: !2326)
!2381 = !DILocation(line: 1199, column: 3, scope: !2326)
!2382 = !DILocation(line: 1199, column: 14, scope: !2326)
!2383 = !DILocation(line: 1200, column: 3, scope: !2326)
!2384 = !DILocation(line: 1200, column: 13, scope: !2326)
!2385 = !DILocation(line: 1201, column: 3, scope: !2326)
!2386 = !DILocation(line: 1201, column: 12, scope: !2326)
!2387 = !DILocation(line: 1203, column: 7, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2326, file: !2, line: 1203, column: 7)
!2389 = !DILocation(line: 1203, column: 14, scope: !2388)
!2390 = !DILocation(line: 1203, column: 7, scope: !2326)
!2391 = !DILocation(line: 1204, column: 7, scope: !2388)
!2392 = !DILocation(line: 1206, column: 9, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2326, file: !2, line: 1206, column: 7)
!2394 = !DILocation(line: 1206, column: 14, scope: !2393)
!2395 = !DILocation(line: 1206, column: 7, scope: !2326)
!2396 = !DILocation(line: 1209, column: 5, scope: !2393)
!2397 = !DILocation(line: 1211, column: 21, scope: !2326)
!2398 = !DILocation(line: 1211, column: 28, scope: !2326)
!2399 = !DILocation(line: 1211, column: 14, scope: !2326)
!2400 = !DILocation(line: 1211, column: 12, scope: !2326)
!2401 = !DILocation(line: 1212, column: 8, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2326, file: !2, line: 1212, column: 7)
!2403 = !DILocation(line: 1212, column: 7, scope: !2326)
!2404 = !DILocation(line: 1213, column: 5, scope: !2402)
!2405 = !DILocation(line: 1215, column: 8, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2326, file: !2, line: 1215, column: 3)
!2407 = !DILocation(line: 1215, column: 7, scope: !2406)
!2408 = !DILocation(line: 1215, column: 12, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2406, file: !2, line: 1215, column: 3)
!2410 = !DILocation(line: 1215, column: 14, scope: !2409)
!2411 = !DILocation(line: 1215, column: 13, scope: !2409)
!2412 = !DILocation(line: 1215, column: 3, scope: !2406)
!2413 = !DILocation(line: 1216, column: 9, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !2, line: 1216, column: 9)
!2415 = distinct !DILexicalBlock(scope: !2409, file: !2, line: 1215, column: 33)
!2416 = !DILocation(line: 1216, column: 9, scope: !2415)
!2417 = !DILocation(line: 1217, column: 15, scope: !2414)
!2418 = !DILocation(line: 1218, column: 8, scope: !2414)
!2419 = !DILocation(line: 1218, column: 38, scope: !2414)
!2420 = !DILocation(line: 1218, column: 47, scope: !2414)
!2421 = !DILocation(line: 1218, column: 16, scope: !2414)
!2422 = !DILocation(line: 1218, column: 54, scope: !2414)
!2423 = !DILocation(line: 1218, column: 65, scope: !2414)
!2424 = !DILocation(line: 1217, column: 7, scope: !2414)
!2425 = !DILocation(line: 1219, column: 9, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2415, file: !2, line: 1219, column: 9)
!2427 = !DILocation(line: 1219, column: 19, scope: !2426)
!2428 = !DILocation(line: 1219, column: 51, scope: !2426)
!2429 = !DILocation(line: 1219, column: 59, scope: !2426)
!2430 = !DILocation(line: 1219, column: 68, scope: !2426)
!2431 = !DILocation(line: 1219, column: 79, scope: !2426)
!2432 = !DILocation(line: 1219, column: 83, scope: !2426)
!2433 = !DILocation(line: 1219, column: 22, scope: !2426)
!2434 = !DILocation(line: 1219, column: 92, scope: !2426)
!2435 = !DILocation(line: 1219, column: 9, scope: !2415)
!2436 = !DILocation(line: 1220, column: 7, scope: !2426)
!2437 = !DILocation(line: 1221, column: 51, scope: !2415)
!2438 = !DILocation(line: 1221, column: 59, scope: !2415)
!2439 = !DILocation(line: 1221, column: 68, scope: !2415)
!2440 = !DILocation(line: 1221, column: 79, scope: !2415)
!2441 = !DILocation(line: 1221, column: 83, scope: !2415)
!2442 = !DILocation(line: 1221, column: 93, scope: !2415)
!2443 = !DILocation(line: 1221, column: 16, scope: !2415)
!2444 = !DILocation(line: 1221, column: 14, scope: !2415)
!2445 = !DILocation(line: 1222, column: 9, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2415, file: !2, line: 1222, column: 9)
!2447 = !DILocation(line: 1222, column: 9, scope: !2415)
!2448 = !DILocation(line: 1223, column: 7, scope: !2446)
!2449 = !DILocation(line: 1224, column: 3, scope: !2415)
!2450 = !DILocation(line: 1215, column: 29, scope: !2409)
!2451 = !DILocation(line: 1215, column: 3, scope: !2409)
!2452 = distinct !{!2452, !2412, !2453, !982}
!2453 = !DILocation(line: 1224, column: 3, scope: !2406)
!2454 = !DILocation(line: 1225, column: 8, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2326, file: !2, line: 1225, column: 7)
!2456 = !DILocation(line: 1225, column: 7, scope: !2326)
!2457 = !DILocation(line: 1226, column: 5, scope: !2455)
!2458 = !DILocation(line: 1228, column: 22, scope: !2326)
!2459 = !DILocation(line: 1228, column: 31, scope: !2326)
!2460 = !DILocation(line: 1228, column: 15, scope: !2326)
!2461 = !DILocation(line: 1228, column: 13, scope: !2326)
!2462 = !DILocation(line: 1229, column: 23, scope: !2326)
!2463 = !DILocation(line: 1229, column: 32, scope: !2326)
!2464 = !DILocation(line: 1229, column: 16, scope: !2326)
!2465 = !DILocation(line: 1229, column: 14, scope: !2326)
!2466 = !DILocation(line: 1230, column: 24, scope: !2326)
!2467 = !DILocation(line: 1230, column: 35, scope: !2326)
!2468 = !DILocation(line: 1230, column: 33, scope: !2326)
!2469 = !DILocation(line: 1230, column: 44, scope: !2326)
!2470 = !DILocation(line: 1230, column: 17, scope: !2326)
!2471 = !DILocation(line: 1230, column: 15, scope: !2326)
!2472 = !DILocation(line: 1231, column: 8, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2326, file: !2, line: 1231, column: 7)
!2474 = !DILocation(line: 1231, column: 18, scope: !2473)
!2475 = !DILocation(line: 1231, column: 22, scope: !2473)
!2476 = !DILocation(line: 1231, column: 33, scope: !2473)
!2477 = !DILocation(line: 1231, column: 37, scope: !2473)
!2478 = !DILocation(line: 1231, column: 7, scope: !2326)
!2479 = !DILocation(line: 1232, column: 5, scope: !2473)
!2480 = !DILocation(line: 1235, column: 16, scope: !2326)
!2481 = !DILocation(line: 1235, column: 59, scope: !2326)
!2482 = !DILocation(line: 1235, column: 57, scope: !2326)
!2483 = !DILocation(line: 1235, column: 7, scope: !2326)
!2484 = !DILocation(line: 1236, column: 12, scope: !2350)
!2485 = !DILocation(line: 1236, column: 11, scope: !2350)
!2486 = !DILocation(line: 1236, column: 16, scope: !2349)
!2487 = !DILocation(line: 1236, column: 18, scope: !2349)
!2488 = !DILocation(line: 1236, column: 17, scope: !2349)
!2489 = !DILocation(line: 1236, column: 7, scope: !2350)
!2490 = !DILocation(line: 1238, column: 11, scope: !2348)
!2491 = !DILocation(line: 1238, column: 23, scope: !2348)
!2492 = !DILocation(line: 1238, column: 34, scope: !2348)
!2493 = !DILocation(line: 1239, column: 48, scope: !2348)
!2494 = !DILocation(line: 1239, column: 23, scope: !2348)
!2495 = !DILocation(line: 1239, column: 21, scope: !2348)
!2496 = !DILocation(line: 1240, column: 31, scope: !2348)
!2497 = !DILocation(line: 1240, column: 11, scope: !2348)
!2498 = !DILocation(line: 1240, column: 22, scope: !2348)
!2499 = !DILocation(line: 1240, column: 29, scope: !2348)
!2500 = !{!1757, !778, i64 184}
!2501 = !DILocation(line: 1241, column: 11, scope: !2348)
!2502 = !DILocation(line: 1241, column: 22, scope: !2348)
!2503 = !{!1757, !778, i64 40}
!2504 = !DILocation(line: 1241, column: 34, scope: !2348)
!2505 = !DILocation(line: 1241, column: 39, scope: !2348)
!2506 = !DILocation(line: 1242, column: 44, scope: !2348)
!2507 = !DILocation(line: 1242, column: 54, scope: !2348)
!2508 = !DILocation(line: 1242, column: 11, scope: !2348)
!2509 = !DILocation(line: 1242, column: 22, scope: !2348)
!2510 = !DILocation(line: 1242, column: 34, scope: !2348)
!2511 = !DILocation(line: 1242, column: 42, scope: !2348)
!2512 = !DILocation(line: 1243, column: 17, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2348, file: !2, line: 1243, column: 11)
!2514 = !DILocation(line: 1243, column: 16, scope: !2513)
!2515 = !DILocation(line: 1243, column: 21, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2513, file: !2, line: 1243, column: 11)
!2517 = !DILocation(line: 1243, column: 23, scope: !2516)
!2518 = !DILocation(line: 1243, column: 22, scope: !2516)
!2519 = !DILocation(line: 1243, column: 11, scope: !2513)
!2520 = !DILocation(line: 1244, column: 10, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2516, file: !2, line: 1244, column: 10)
!2522 = !DILocation(line: 1244, column: 19, scope: !2521)
!2523 = !DILocation(line: 1244, column: 25, scope: !2521)
!2524 = !DILocation(line: 1244, column: 26, scope: !2521)
!2525 = !DILocation(line: 1244, column: 22, scope: !2521)
!2526 = !DILocation(line: 1244, column: 10, scope: !2516)
!2527 = !DILocation(line: 1246, column: 37, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2521, file: !2, line: 1244, column: 30)
!2529 = !DILocation(line: 1246, column: 48, scope: !2528)
!2530 = !DILocation(line: 1246, column: 53, scope: !2528)
!2531 = !DILocation(line: 1246, column: 8, scope: !2528)
!2532 = !DILocation(line: 1247, column: 15, scope: !2528)
!2533 = !DILocation(line: 1247, column: 26, scope: !2528)
!2534 = !DILocation(line: 1247, column: 28, scope: !2528)
!2535 = !DILocation(line: 1248, column: 13, scope: !2528)
!2536 = !DILocation(line: 1244, column: 27, scope: !2521)
!2537 = !DILocation(line: 1243, column: 32, scope: !2516)
!2538 = !DILocation(line: 1243, column: 11, scope: !2516)
!2539 = distinct !{!2539, !2519, !2540, !982}
!2540 = !DILocation(line: 1248, column: 13, scope: !2513)
!2541 = !DILocation(line: 1249, column: 11, scope: !2348)
!2542 = !DILocation(line: 1249, column: 11, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2348, file: !2, line: 1249, column: 11)
!2544 = !DILocation(line: 1251, column: 52, scope: !2348)
!2545 = !DILocation(line: 1251, column: 68, scope: !2348)
!2546 = !DILocation(line: 1252, column: 53, scope: !2348)
!2547 = !DILocation(line: 1252, column: 58, scope: !2348)
!2548 = !DILocation(line: 1252, column: 52, scope: !2348)
!2549 = !DILocation(line: 1251, column: 21, scope: !2348)
!2550 = !DILocation(line: 1251, column: 19, scope: !2348)
!2551 = !DILocation(line: 1254, column: 9, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2348, file: !2, line: 1254, column: 8)
!2553 = !DILocation(line: 1254, column: 8, scope: !2348)
!2554 = !DILocation(line: 1255, column: 12, scope: !2552)
!2555 = !DILocation(line: 1255, column: 6, scope: !2552)
!2556 = !DILocation(line: 1257, column: 26, scope: !2348)
!2557 = !DILocation(line: 1257, column: 11, scope: !2348)
!2558 = !DILocation(line: 1257, column: 21, scope: !2348)
!2559 = !DILocation(line: 1257, column: 24, scope: !2348)
!2560 = !DILocation(line: 1258, column: 7, scope: !2349)
!2561 = !DILocation(line: 1258, column: 7, scope: !2348)
!2562 = !DILocation(line: 1236, column: 29, scope: !2349)
!2563 = !DILocation(line: 1236, column: 7, scope: !2349)
!2564 = distinct !{!2564, !2489, !2565, !982}
!2565 = !DILocation(line: 1258, column: 7, scope: !2350)
!2566 = !DILocation(line: 1259, column: 7, scope: !2326)
!2567 = !DILocation(line: 1259, column: 17, scope: !2326)
!2568 = !DILocation(line: 1259, column: 38, scope: !2326)
!2569 = !DILocation(line: 1261, column: 11, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2326, file: !2, line: 1261, column: 11)
!2571 = !DILocation(line: 1261, column: 11, scope: !2326)
!2572 = !DILocation(line: 1263, column: 2, scope: !2570)
!2573 = !DILocation(line: 1266, column: 16, scope: !2326)
!2574 = !DILocation(line: 1266, column: 61, scope: !2326)
!2575 = !DILocation(line: 1266, column: 59, scope: !2326)
!2576 = !DILocation(line: 1266, column: 72, scope: !2326)
!2577 = !DILocation(line: 1266, column: 70, scope: !2326)
!2578 = !DILocation(line: 1266, column: 7, scope: !2326)
!2579 = !DILocation(line: 1270, column: 12, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2326, file: !2, line: 1270, column: 7)
!2581 = !DILocation(line: 1270, column: 11, scope: !2580)
!2582 = !DILocation(line: 1270, column: 16, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2580, file: !2, line: 1270, column: 7)
!2584 = !DILocation(line: 1270, column: 18, scope: !2583)
!2585 = !DILocation(line: 1270, column: 17, scope: !2583)
!2586 = !DILocation(line: 1270, column: 7, scope: !2580)
!2587 = !DILocation(line: 1271, column: 6, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2583, file: !2, line: 1271, column: 6)
!2589 = !DILocation(line: 1271, column: 15, scope: !2588)
!2590 = !DILocation(line: 1271, column: 6, scope: !2583)
!2591 = !DILocation(line: 1272, column: 9, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2588, file: !2, line: 1272, column: 4)
!2593 = !DILocation(line: 1272, column: 8, scope: !2592)
!2594 = !DILocation(line: 1272, column: 13, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2592, file: !2, line: 1272, column: 4)
!2596 = !DILocation(line: 1272, column: 15, scope: !2595)
!2597 = !DILocation(line: 1272, column: 14, scope: !2595)
!2598 = !DILocation(line: 1272, column: 4, scope: !2592)
!2599 = !DILocation(line: 1273, column: 10, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2595, file: !2, line: 1273, column: 10)
!2601 = !DILocation(line: 1273, column: 19, scope: !2600)
!2602 = !DILocation(line: 1273, column: 10, scope: !2595)
!2603 = !DILocation(line: 1274, column: 62, scope: !2600)
!2604 = !DILocation(line: 1274, column: 17, scope: !2600)
!2605 = !DILocation(line: 1274, column: 59, scope: !2600)
!2606 = !DILocation(line: 1273, column: 20, scope: !2600)
!2607 = !DILocation(line: 1272, column: 24, scope: !2595)
!2608 = !DILocation(line: 1272, column: 4, scope: !2595)
!2609 = distinct !{!2609, !2598, !2610, !982}
!2610 = !DILocation(line: 1274, column: 62, scope: !2592)
!2611 = !DILocation(line: 1271, column: 16, scope: !2588)
!2612 = !DILocation(line: 1270, column: 27, scope: !2583)
!2613 = !DILocation(line: 1270, column: 7, scope: !2583)
!2614 = distinct !{!2614, !2586, !2615, !982}
!2615 = !DILocation(line: 1274, column: 62, scope: !2580)
!2616 = !DILocation(line: 1275, column: 12, scope: !2357)
!2617 = !DILocation(line: 1275, column: 11, scope: !2357)
!2618 = !DILocation(line: 1275, column: 16, scope: !2356)
!2619 = !DILocation(line: 1275, column: 18, scope: !2356)
!2620 = !DILocation(line: 1275, column: 17, scope: !2356)
!2621 = !DILocation(line: 1275, column: 7, scope: !2357)
!2622 = !DILocation(line: 1276, column: 16, scope: !2355)
!2623 = !DILocation(line: 1276, column: 15, scope: !2355)
!2624 = !DILocation(line: 1276, column: 20, scope: !2354)
!2625 = !DILocation(line: 1276, column: 22, scope: !2354)
!2626 = !DILocation(line: 1276, column: 21, scope: !2354)
!2627 = !DILocation(line: 1276, column: 11, scope: !2355)
!2628 = !DILocation(line: 1277, column: 15, scope: !2353)
!2629 = !DILocation(line: 1277, column: 24, scope: !2353)
!2630 = !DILocation(line: 1277, column: 36, scope: !2353)
!2631 = !DILocation(line: 1277, column: 47, scope: !2353)
!2632 = !DILocation(line: 1277, column: 50, scope: !2353)
!2633 = !DILocation(line: 1277, column: 61, scope: !2353)
!2634 = !DILocation(line: 1277, column: 49, scope: !2353)
!2635 = !DILocation(line: 1278, column: 36, scope: !2353)
!2636 = !DILocation(line: 1278, column: 15, scope: !2353)
!2637 = !DILocation(line: 1278, column: 33, scope: !2353)
!2638 = !DILocation(line: 1279, column: 11, scope: !2354)
!2639 = !DILocation(line: 1279, column: 11, scope: !2353)
!2640 = !DILocation(line: 1276, column: 33, scope: !2354)
!2641 = !DILocation(line: 1276, column: 11, scope: !2354)
!2642 = distinct !{!2642, !2627, !2643, !982}
!2643 = !DILocation(line: 1279, column: 11, scope: !2355)
!2644 = !DILocation(line: 1275, column: 29, scope: !2356)
!2645 = !DILocation(line: 1275, column: 7, scope: !2356)
!2646 = distinct !{!2646, !2621, !2647, !982}
!2647 = !DILocation(line: 1279, column: 11, scope: !2357)
!2648 = !DILocation(line: 1294, column: 34, scope: !2326)
!2649 = !DILocation(line: 1294, column: 44, scope: !2326)
!2650 = !DILocation(line: 1294, column: 54, scope: !2326)
!2651 = !DILocation(line: 1294, column: 65, scope: !2326)
!2652 = !DILocation(line: 1294, column: 78, scope: !2326)
!2653 = !DILocation(line: 1294, column: 84, scope: !2326)
!2654 = !DILocation(line: 1294, column: 98, scope: !2326)
!2655 = !DILocation(line: 1294, column: 7, scope: !2326)
!2656 = !DILocation(line: 1296, column: 2, scope: !2326)
!2657 = !DILocation(line: 1297, column: 8, scope: !2326)
!2658 = !DILocation(line: 1297, column: 3, scope: !2326)
!2659 = !DILocation(line: 1298, column: 8, scope: !2326)
!2660 = !DILocation(line: 1298, column: 3, scope: !2326)
!2661 = !DILocation(line: 1299, column: 8, scope: !2326)
!2662 = !DILocation(line: 1299, column: 3, scope: !2326)
!2663 = !DILocation(line: 1300, column: 2, scope: !2326)
!2664 = !DILocation(line: 1301, column: 8, scope: !2326)
!2665 = !DILocation(line: 1301, column: 3, scope: !2326)
!2666 = !DILocation(line: 1302, column: 1, scope: !2326)
!2667 = distinct !DISubprogram(name: "hwloc_internal_distances_add_by_index", scope: !2, file: !2, line: 535, type: !2668, scopeLine: 538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2670)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!181, !464, !257, !260, !616, !134, !619, !619, !287, !287}
!2670 = !{!2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682}
!2671 = !DILocalVariable(name: "topology", arg: 1, scope: !2667, file: !2, line: 535, type: !464)
!2672 = !DILocalVariable(name: "name", arg: 2, scope: !2667, file: !2, line: 535, type: !257)
!2673 = !DILocalVariable(name: "unique_type", arg: 3, scope: !2667, file: !2, line: 536, type: !260)
!2674 = !DILocalVariable(name: "different_types", arg: 4, scope: !2667, file: !2, line: 536, type: !616)
!2675 = !DILocalVariable(name: "nbobjs", arg: 5, scope: !2667, file: !2, line: 536, type: !134)
!2676 = !DILocalVariable(name: "indexes", arg: 6, scope: !2667, file: !2, line: 536, type: !619)
!2677 = !DILocalVariable(name: "values", arg: 7, scope: !2667, file: !2, line: 536, type: !619)
!2678 = !DILocalVariable(name: "kind", arg: 8, scope: !2667, file: !2, line: 537, type: !287)
!2679 = !DILocalVariable(name: "flags", arg: 9, scope: !2667, file: !2, line: 537, type: !287)
!2680 = !DILocalVariable(name: "handle", scope: !2667, file: !2, line: 539, type: !1536)
!2681 = !DILocalVariable(name: "err", scope: !2667, file: !2, line: 540, type: !181)
!2682 = !DILabel(scope: !2667, name: "err", file: !2, line: 563)
!2683 = !DILocation(line: 535, column: 60, scope: !2667)
!2684 = !DILocation(line: 535, column: 82, scope: !2667)
!2685 = !DILocation(line: 536, column: 60, scope: !2667)
!2686 = !DILocation(line: 536, column: 91, scope: !2667)
!2687 = !DILocation(line: 536, column: 117, scope: !2667)
!2688 = !DILocation(line: 536, column: 135, scope: !2667)
!2689 = !DILocation(line: 536, column: 154, scope: !2667)
!2690 = !DILocation(line: 537, column: 57, scope: !2667)
!2691 = !DILocation(line: 537, column: 77, scope: !2667)
!2692 = !DILocation(line: 539, column: 3, scope: !2667)
!2693 = !DILocation(line: 539, column: 40, scope: !2667)
!2694 = !DILocation(line: 540, column: 3, scope: !2667)
!2695 = !DILocation(line: 540, column: 7, scope: !2667)
!2696 = !DILocation(line: 542, column: 47, scope: !2667)
!2697 = !DILocation(line: 542, column: 57, scope: !2667)
!2698 = !DILocation(line: 542, column: 63, scope: !2667)
!2699 = !DILocation(line: 542, column: 12, scope: !2667)
!2700 = !DILocation(line: 542, column: 10, scope: !2667)
!2701 = !DILocation(line: 543, column: 8, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2667, file: !2, line: 543, column: 7)
!2703 = !DILocation(line: 543, column: 7, scope: !2667)
!2704 = !DILocation(line: 544, column: 5, scope: !2702)
!2705 = !DILocation(line: 546, column: 53, scope: !2667)
!2706 = !DILocation(line: 546, column: 63, scope: !2667)
!2707 = !DILocation(line: 547, column: 53, scope: !2667)
!2708 = !DILocation(line: 547, column: 61, scope: !2667)
!2709 = !DILocation(line: 547, column: 74, scope: !2667)
!2710 = !DILocation(line: 547, column: 91, scope: !2667)
!2711 = !DILocation(line: 548, column: 53, scope: !2667)
!2712 = !DILocation(line: 546, column: 9, scope: !2667)
!2713 = !DILocation(line: 546, column: 7, scope: !2667)
!2714 = !DILocation(line: 549, column: 7, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2667, file: !2, line: 549, column: 7)
!2716 = !DILocation(line: 549, column: 11, scope: !2715)
!2717 = !DILocation(line: 549, column: 7, scope: !2667)
!2718 = !DILocation(line: 550, column: 5, scope: !2715)
!2719 = !DILocation(line: 553, column: 11, scope: !2667)
!2720 = !DILocation(line: 554, column: 19, scope: !2667)
!2721 = !DILocation(line: 555, column: 10, scope: !2667)
!2722 = !DILocation(line: 557, column: 44, scope: !2667)
!2723 = !DILocation(line: 557, column: 54, scope: !2667)
!2724 = !DILocation(line: 557, column: 62, scope: !2667)
!2725 = !DILocation(line: 557, column: 9, scope: !2667)
!2726 = !DILocation(line: 557, column: 7, scope: !2667)
!2727 = !DILocation(line: 558, column: 7, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2667, file: !2, line: 558, column: 7)
!2729 = !DILocation(line: 558, column: 11, scope: !2728)
!2730 = !DILocation(line: 558, column: 7, scope: !2667)
!2731 = !DILocation(line: 559, column: 5, scope: !2728)
!2732 = !DILocation(line: 561, column: 3, scope: !2667)
!2733 = !DILocation(line: 563, column: 2, scope: !2667)
!2734 = !DILocation(line: 564, column: 8, scope: !2667)
!2735 = !DILocation(line: 564, column: 3, scope: !2667)
!2736 = !DILocation(line: 565, column: 8, scope: !2667)
!2737 = !DILocation(line: 565, column: 3, scope: !2667)
!2738 = !DILocation(line: 566, column: 8, scope: !2667)
!2739 = !DILocation(line: 566, column: 3, scope: !2667)
!2740 = !DILocation(line: 567, column: 3, scope: !2667)
!2741 = !DILocation(line: 568, column: 1, scope: !2667)
!2742 = distinct !DISubprogram(name: "hwloc_backend_distances_add_values_by_index", scope: !2, file: !2, line: 433, type: !2743, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2745)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!181, !464, !1536, !134, !260, !616, !400, !400}
!2745 = !{!2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755}
!2746 = !DILocalVariable(name: "topology", arg: 1, scope: !2742, file: !2, line: 433, type: !464)
!2747 = !DILocalVariable(name: "handle", arg: 2, scope: !2742, file: !2, line: 434, type: !1536)
!2748 = !DILocalVariable(name: "nbobjs", arg: 3, scope: !2742, file: !2, line: 435, type: !134)
!2749 = !DILocalVariable(name: "unique_type", arg: 4, scope: !2742, file: !2, line: 435, type: !260)
!2750 = !DILocalVariable(name: "different_types", arg: 5, scope: !2742, file: !2, line: 435, type: !616)
!2751 = !DILocalVariable(name: "indexes", arg: 6, scope: !2742, file: !2, line: 435, type: !400)
!2752 = !DILocalVariable(name: "values", arg: 7, scope: !2742, file: !2, line: 436, type: !400)
!2753 = !DILocalVariable(name: "dist", scope: !2742, file: !2, line: 438, type: !609)
!2754 = !DILocalVariable(name: "objs", scope: !2742, file: !2, line: 439, type: !270)
!2755 = !DILabel(scope: !2742, name: "err", file: !2, line: 467)
!2756 = !DILocation(line: 433, column: 62, scope: !2742)
!2757 = !DILocation(line: 434, column: 82, scope: !2742)
!2758 = !DILocation(line: 435, column: 54, scope: !2742)
!2759 = !DILocation(line: 435, column: 79, scope: !2742)
!2760 = !DILocation(line: 435, column: 110, scope: !2742)
!2761 = !DILocation(line: 435, column: 143, scope: !2742)
!2762 = !DILocation(line: 436, column: 61, scope: !2742)
!2763 = !DILocation(line: 438, column: 3, scope: !2742)
!2764 = !DILocation(line: 438, column: 38, scope: !2742)
!2765 = !DILocation(line: 438, column: 45, scope: !2742)
!2766 = !DILocation(line: 439, column: 3, scope: !2742)
!2767 = !DILocation(line: 439, column: 16, scope: !2742)
!2768 = !DILocation(line: 441, column: 7, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 441, column: 7)
!2770 = !DILocation(line: 441, column: 13, scope: !2769)
!2771 = !DILocation(line: 441, column: 20, scope: !2769)
!2772 = !DILocation(line: 441, column: 25, scope: !2769)
!2773 = !DILocation(line: 441, column: 31, scope: !2769)
!2774 = !DILocation(line: 441, column: 38, scope: !2769)
!2775 = !DILocation(line: 441, column: 7, scope: !2742)
!2776 = !DILocation(line: 443, column: 5, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2769, file: !2, line: 441, column: 81)
!2778 = !DILocation(line: 443, column: 11, scope: !2777)
!2779 = !DILocation(line: 444, column: 5, scope: !2777)
!2780 = !DILocation(line: 446, column: 7, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 446, column: 7)
!2782 = !DILocation(line: 446, column: 14, scope: !2781)
!2783 = !DILocation(line: 446, column: 18, scope: !2781)
!2784 = !DILocation(line: 446, column: 22, scope: !2781)
!2785 = !DILocation(line: 446, column: 30, scope: !2781)
!2786 = !DILocation(line: 446, column: 34, scope: !2781)
!2787 = !DILocation(line: 446, column: 41, scope: !2781)
!2788 = !DILocation(line: 446, column: 45, scope: !2781)
!2789 = !DILocation(line: 446, column: 57, scope: !2781)
!2790 = !DILocation(line: 446, column: 80, scope: !2781)
!2791 = !DILocation(line: 446, column: 84, scope: !2781)
!2792 = !DILocation(line: 446, column: 7, scope: !2742)
!2793 = !DILocation(line: 447, column: 5, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2781, file: !2, line: 446, column: 102)
!2795 = !DILocation(line: 447, column: 11, scope: !2794)
!2796 = !DILocation(line: 448, column: 5, scope: !2794)
!2797 = !DILocation(line: 451, column: 17, scope: !2742)
!2798 = !DILocation(line: 451, column: 24, scope: !2742)
!2799 = !DILocation(line: 451, column: 10, scope: !2742)
!2800 = !DILocation(line: 451, column: 8, scope: !2742)
!2801 = !DILocation(line: 452, column: 8, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 452, column: 7)
!2803 = !DILocation(line: 452, column: 7, scope: !2742)
!2804 = !DILocation(line: 453, column: 5, scope: !2802)
!2805 = !DILocation(line: 455, column: 18, scope: !2742)
!2806 = !DILocation(line: 455, column: 3, scope: !2742)
!2807 = !DILocation(line: 455, column: 9, scope: !2742)
!2808 = !DILocation(line: 455, column: 16, scope: !2742)
!2809 = !DILocation(line: 456, column: 16, scope: !2742)
!2810 = !DILocation(line: 456, column: 3, scope: !2742)
!2811 = !DILocation(line: 456, column: 9, scope: !2742)
!2812 = !DILocation(line: 456, column: 14, scope: !2742)
!2813 = !DILocation(line: 457, column: 19, scope: !2742)
!2814 = !DILocation(line: 457, column: 3, scope: !2742)
!2815 = !DILocation(line: 457, column: 9, scope: !2742)
!2816 = !DILocation(line: 457, column: 17, scope: !2742)
!2817 = !DILocation(line: 458, column: 23, scope: !2742)
!2818 = !DILocation(line: 458, column: 3, scope: !2742)
!2819 = !DILocation(line: 458, column: 9, scope: !2742)
!2820 = !DILocation(line: 458, column: 21, scope: !2742)
!2821 = !DILocation(line: 459, column: 27, scope: !2742)
!2822 = !DILocation(line: 459, column: 3, scope: !2742)
!2823 = !DILocation(line: 459, column: 9, scope: !2742)
!2824 = !DILocation(line: 459, column: 25, scope: !2742)
!2825 = !DILocation(line: 460, column: 18, scope: !2742)
!2826 = !DILocation(line: 460, column: 3, scope: !2742)
!2827 = !DILocation(line: 460, column: 9, scope: !2742)
!2828 = !DILocation(line: 460, column: 16, scope: !2742)
!2829 = !DILocation(line: 462, column: 7, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 462, column: 7)
!2831 = !DILocation(line: 462, column: 7, scope: !2742)
!2832 = !DILocation(line: 463, column: 5, scope: !2830)
!2833 = !DILocation(line: 463, column: 11, scope: !2830)
!2834 = !DILocation(line: 463, column: 16, scope: !2830)
!2835 = !DILocation(line: 465, column: 3, scope: !2742)
!2836 = !DILocation(line: 467, column: 2, scope: !2742)
!2837 = !DILocation(line: 468, column: 39, scope: !2742)
!2838 = !DILocation(line: 468, column: 3, scope: !2742)
!2839 = !DILocation(line: 469, column: 3, scope: !2742)
!2840 = !DILocation(line: 470, column: 1, scope: !2742)
!2841 = distinct !DISubprogram(name: "hwloc_internal_distances_add", scope: !2, file: !2, line: 571, type: !2842, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!181, !464, !257, !134, !270, !619, !287, !287}
!2844 = !{!2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854}
!2845 = !DILocalVariable(name: "topology", arg: 1, scope: !2841, file: !2, line: 571, type: !464)
!2846 = !DILocalVariable(name: "name", arg: 2, scope: !2841, file: !2, line: 571, type: !257)
!2847 = !DILocalVariable(name: "nbobjs", arg: 3, scope: !2841, file: !2, line: 572, type: !134)
!2848 = !DILocalVariable(name: "objs", arg: 4, scope: !2841, file: !2, line: 572, type: !270)
!2849 = !DILocalVariable(name: "values", arg: 5, scope: !2841, file: !2, line: 572, type: !619)
!2850 = !DILocalVariable(name: "kind", arg: 6, scope: !2841, file: !2, line: 573, type: !287)
!2851 = !DILocalVariable(name: "flags", arg: 7, scope: !2841, file: !2, line: 573, type: !287)
!2852 = !DILocalVariable(name: "handle", scope: !2841, file: !2, line: 575, type: !1536)
!2853 = !DILocalVariable(name: "err", scope: !2841, file: !2, line: 576, type: !181)
!2854 = !DILabel(scope: !2841, name: "err", file: !2, line: 599)
!2855 = !DILocation(line: 571, column: 51, scope: !2841)
!2856 = !DILocation(line: 571, column: 73, scope: !2841)
!2857 = !DILocation(line: 572, column: 43, scope: !2841)
!2858 = !DILocation(line: 572, column: 64, scope: !2841)
!2859 = !DILocation(line: 572, column: 80, scope: !2841)
!2860 = !DILocation(line: 573, column: 48, scope: !2841)
!2861 = !DILocation(line: 573, column: 68, scope: !2841)
!2862 = !DILocation(line: 575, column: 3, scope: !2841)
!2863 = !DILocation(line: 575, column: 40, scope: !2841)
!2864 = !DILocation(line: 576, column: 3, scope: !2841)
!2865 = !DILocation(line: 576, column: 7, scope: !2841)
!2866 = !DILocation(line: 578, column: 47, scope: !2841)
!2867 = !DILocation(line: 578, column: 57, scope: !2841)
!2868 = !DILocation(line: 578, column: 63, scope: !2841)
!2869 = !DILocation(line: 578, column: 12, scope: !2841)
!2870 = !DILocation(line: 578, column: 10, scope: !2841)
!2871 = !DILocation(line: 579, column: 8, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2841, file: !2, line: 579, column: 7)
!2873 = !DILocation(line: 579, column: 7, scope: !2841)
!2874 = !DILocation(line: 580, column: 5, scope: !2872)
!2875 = !DILocation(line: 582, column: 44, scope: !2841)
!2876 = !DILocation(line: 582, column: 54, scope: !2841)
!2877 = !DILocation(line: 583, column: 44, scope: !2841)
!2878 = !DILocation(line: 583, column: 52, scope: !2841)
!2879 = !DILocation(line: 584, column: 44, scope: !2841)
!2880 = !DILocation(line: 582, column: 9, scope: !2841)
!2881 = !DILocation(line: 582, column: 7, scope: !2841)
!2882 = !DILocation(line: 586, column: 7, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2841, file: !2, line: 586, column: 7)
!2884 = !DILocation(line: 586, column: 11, scope: !2883)
!2885 = !DILocation(line: 586, column: 7, scope: !2841)
!2886 = !DILocation(line: 587, column: 5, scope: !2883)
!2887 = !DILocation(line: 590, column: 8, scope: !2841)
!2888 = !DILocation(line: 591, column: 10, scope: !2841)
!2889 = !DILocation(line: 593, column: 44, scope: !2841)
!2890 = !DILocation(line: 593, column: 54, scope: !2841)
!2891 = !DILocation(line: 593, column: 62, scope: !2841)
!2892 = !DILocation(line: 593, column: 9, scope: !2841)
!2893 = !DILocation(line: 593, column: 7, scope: !2841)
!2894 = !DILocation(line: 594, column: 7, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2841, file: !2, line: 594, column: 7)
!2896 = !DILocation(line: 594, column: 11, scope: !2895)
!2897 = !DILocation(line: 594, column: 7, scope: !2841)
!2898 = !DILocation(line: 595, column: 5, scope: !2895)
!2899 = !DILocation(line: 597, column: 3, scope: !2841)
!2900 = !DILocation(line: 599, column: 2, scope: !2841)
!2901 = !DILocation(line: 600, column: 8, scope: !2841)
!2902 = !DILocation(line: 600, column: 3, scope: !2841)
!2903 = !DILocation(line: 601, column: 8, scope: !2841)
!2904 = !DILocation(line: 601, column: 3, scope: !2841)
!2905 = !DILocation(line: 602, column: 3, scope: !2841)
!2906 = !DILocation(line: 603, column: 1, scope: !2841)
!2907 = distinct !DISubprogram(name: "hwloc_distances_add_create", scope: !2, file: !2, line: 614, type: !2908, scopeLine: 617, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2911)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!2910, !464, !257, !287, !287}
!2910 = !DIDerivedType(tag: DW_TAG_typedef, name: "hwloc_distances_add_handle_t", file: !206, line: 331, baseType: !259)
!2911 = !{!2912, !2913, !2914, !2915}
!2912 = !DILocalVariable(name: "topology", arg: 1, scope: !2907, file: !2, line: 614, type: !464)
!2913 = !DILocalVariable(name: "name", arg: 2, scope: !2907, file: !2, line: 615, type: !257)
!2914 = !DILocalVariable(name: "kind", arg: 3, scope: !2907, file: !2, line: 615, type: !287)
!2915 = !DILocalVariable(name: "flags", arg: 4, scope: !2907, file: !2, line: 616, type: !287)
!2916 = !DILocation(line: 614, column: 52, scope: !2907)
!2917 = !DILocation(line: 615, column: 47, scope: !2907)
!2918 = !DILocation(line: 615, column: 67, scope: !2907)
!2919 = !DILocation(line: 616, column: 49, scope: !2907)
!2920 = !DILocation(line: 618, column: 8, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2907, file: !2, line: 618, column: 7)
!2922 = !DILocation(line: 618, column: 18, scope: !2921)
!2923 = !DILocation(line: 618, column: 7, scope: !2907)
!2924 = !DILocation(line: 619, column: 5, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2921, file: !2, line: 618, column: 29)
!2926 = !DILocation(line: 619, column: 11, scope: !2925)
!2927 = !DILocation(line: 620, column: 5, scope: !2925)
!2928 = !DILocation(line: 622, column: 7, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2907, file: !2, line: 622, column: 7)
!2930 = !DILocation(line: 622, column: 17, scope: !2929)
!2931 = !DILocation(line: 622, column: 7, scope: !2907)
!2932 = !DILocation(line: 623, column: 5, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2929, file: !2, line: 622, column: 37)
!2934 = !DILocation(line: 623, column: 11, scope: !2933)
!2935 = !DILocation(line: 624, column: 5, scope: !2933)
!2936 = !DILocation(line: 626, column: 8, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2907, file: !2, line: 626, column: 7)
!2938 = !DILocation(line: 626, column: 13, scope: !2937)
!2939 = !DILocation(line: 627, column: 7, scope: !2937)
!2940 = !DILocation(line: 627, column: 28, scope: !2937)
!2941 = !DILocation(line: 627, column: 33, scope: !2937)
!2942 = !DILocation(line: 627, column: 10, scope: !2937)
!2943 = !DILocation(line: 627, column: 66, scope: !2937)
!2944 = !DILocation(line: 628, column: 7, scope: !2937)
!2945 = !DILocation(line: 628, column: 28, scope: !2937)
!2946 = !DILocation(line: 628, column: 33, scope: !2937)
!2947 = !DILocation(line: 628, column: 10, scope: !2937)
!2948 = !DILocation(line: 628, column: 67, scope: !2937)
!2949 = !DILocation(line: 626, column: 7, scope: !2907)
!2950 = !DILocation(line: 629, column: 5, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2937, file: !2, line: 628, column: 73)
!2952 = !DILocation(line: 629, column: 11, scope: !2951)
!2953 = !DILocation(line: 630, column: 5, scope: !2951)
!2954 = !DILocation(line: 633, column: 45, scope: !2907)
!2955 = !DILocation(line: 633, column: 55, scope: !2907)
!2956 = !DILocation(line: 633, column: 61, scope: !2907)
!2957 = !DILocation(line: 633, column: 67, scope: !2907)
!2958 = !DILocation(line: 633, column: 10, scope: !2907)
!2959 = !DILocation(line: 633, column: 3, scope: !2907)
!2960 = !DILocation(line: 634, column: 1, scope: !2907)
!2961 = distinct !DISubprogram(name: "hwloc_weight_long", scope: !2962, file: !2962, line: 336, type: !2963, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2965)
!2962 = !DIFile(filename: "include/private/misc.h", directory: "/local-ssd/hwloc-zu2rei3kjykcqla7tvon4gcf6srurf7q-build/aidengro/spack-stage-hwloc-2.9.1-zu2rei3kjykcqla7tvon4gcf6srurf7q/spack-src", checksumkind: CSK_MD5, checksum: "ce290d98eccddc8e92aea2d7cedae34e")
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!181, !287}
!2965 = !{!2966}
!2966 = !DILocalVariable(name: "w", arg: 1, scope: !2961, file: !2962, line: 336, type: !287)
!2967 = !DILocation(line: 336, column: 33, scope: !2961)
!2968 = !DILocation(line: 350, column: 30, scope: !2961)
!2969 = !DILocation(line: 350, column: 9, scope: !2961)
!2970 = !DILocation(line: 350, column: 2, scope: !2961)
!2971 = distinct !DISubprogram(name: "hwloc_distances_add_values", scope: !2, file: !2, line: 636, type: !2972, scopeLine: 641, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !2974)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!181, !464, !259, !134, !270, !400, !287}
!2974 = !{!2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986}
!2975 = !DILocalVariable(name: "topology", arg: 1, scope: !2971, file: !2, line: 636, type: !464)
!2976 = !DILocalVariable(name: "handle", arg: 2, scope: !2971, file: !2, line: 637, type: !259)
!2977 = !DILocalVariable(name: "nbobjs", arg: 3, scope: !2971, file: !2, line: 638, type: !134)
!2978 = !DILocalVariable(name: "objs", arg: 4, scope: !2971, file: !2, line: 638, type: !270)
!2979 = !DILocalVariable(name: "values", arg: 5, scope: !2971, file: !2, line: 639, type: !400)
!2980 = !DILocalVariable(name: "flags", arg: 6, scope: !2971, file: !2, line: 640, type: !287)
!2981 = !DILocalVariable(name: "i", scope: !2971, file: !2, line: 642, type: !134)
!2982 = !DILocalVariable(name: "_values", scope: !2971, file: !2, line: 643, type: !619)
!2983 = !DILocalVariable(name: "_objs", scope: !2971, file: !2, line: 644, type: !270)
!2984 = !DILocalVariable(name: "err", scope: !2971, file: !2, line: 645, type: !181)
!2985 = !DILabel(scope: !2971, name: "out_with_arrays", file: !2, line: 673)
!2986 = !DILabel(scope: !2971, name: "out", file: !2, line: 676)
!2987 = !DILocation(line: 636, column: 49, scope: !2971)
!2988 = !DILocation(line: 637, column: 38, scope: !2971)
!2989 = !DILocation(line: 638, column: 41, scope: !2971)
!2990 = !DILocation(line: 638, column: 62, scope: !2971)
!2991 = !DILocation(line: 639, column: 48, scope: !2971)
!2992 = !DILocation(line: 640, column: 46, scope: !2971)
!2993 = !DILocation(line: 642, column: 3, scope: !2971)
!2994 = !DILocation(line: 642, column: 12, scope: !2971)
!2995 = !DILocation(line: 643, column: 3, scope: !2971)
!2996 = !DILocation(line: 643, column: 13, scope: !2971)
!2997 = !DILocation(line: 644, column: 3, scope: !2971)
!2998 = !DILocation(line: 644, column: 16, scope: !2971)
!2999 = !DILocation(line: 645, column: 3, scope: !2971)
!3000 = !DILocation(line: 645, column: 7, scope: !2971)
!3001 = !DILocation(line: 649, column: 8, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2971, file: !2, line: 649, column: 3)
!3003 = !DILocation(line: 649, column: 7, scope: !3002)
!3004 = !DILocation(line: 649, column: 12, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3002, file: !2, line: 649, column: 3)
!3006 = !DILocation(line: 649, column: 14, scope: !3005)
!3007 = !DILocation(line: 649, column: 13, scope: !3005)
!3008 = !DILocation(line: 649, column: 3, scope: !3002)
!3009 = !DILocation(line: 650, column: 10, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3005, file: !2, line: 650, column: 9)
!3011 = !DILocation(line: 650, column: 15, scope: !3010)
!3012 = !DILocation(line: 650, column: 9, scope: !3005)
!3013 = !DILocation(line: 651, column: 7, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3010, file: !2, line: 650, column: 19)
!3015 = !DILocation(line: 651, column: 13, scope: !3014)
!3016 = !DILocation(line: 652, column: 7, scope: !3014)
!3017 = !DILocation(line: 650, column: 16, scope: !3010)
!3018 = !DILocation(line: 649, column: 23, scope: !3005)
!3019 = !DILocation(line: 649, column: 3, scope: !3005)
!3020 = distinct !{!3020, !3008, !3021, !982}
!3021 = !DILocation(line: 653, column: 5, scope: !3002)
!3022 = !DILocation(line: 656, column: 18, scope: !2971)
!3023 = !DILocation(line: 656, column: 24, scope: !2971)
!3024 = !DILocation(line: 656, column: 11, scope: !2971)
!3025 = !DILocation(line: 656, column: 9, scope: !2971)
!3026 = !DILocation(line: 657, column: 20, scope: !2971)
!3027 = !DILocation(line: 657, column: 27, scope: !2971)
!3028 = !DILocation(line: 657, column: 26, scope: !2971)
!3029 = !DILocation(line: 657, column: 33, scope: !2971)
!3030 = !DILocation(line: 657, column: 13, scope: !2971)
!3031 = !DILocation(line: 657, column: 11, scope: !2971)
!3032 = !DILocation(line: 658, column: 8, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !2971, file: !2, line: 658, column: 7)
!3034 = !DILocation(line: 658, column: 14, scope: !3033)
!3035 = !DILocation(line: 658, column: 18, scope: !3033)
!3036 = !DILocation(line: 658, column: 7, scope: !2971)
!3037 = !DILocation(line: 659, column: 5, scope: !3033)
!3038 = !DILocation(line: 661, column: 10, scope: !2971)
!3039 = !DILocation(line: 661, column: 17, scope: !2971)
!3040 = !DILocation(line: 661, column: 23, scope: !2971)
!3041 = !DILocation(line: 661, column: 29, scope: !2971)
!3042 = !DILocation(line: 661, column: 3, scope: !2971)
!3043 = !DILocation(line: 662, column: 10, scope: !2971)
!3044 = !DILocation(line: 662, column: 19, scope: !2971)
!3045 = !DILocation(line: 662, column: 27, scope: !2971)
!3046 = !DILocation(line: 662, column: 34, scope: !2971)
!3047 = !DILocation(line: 662, column: 33, scope: !2971)
!3048 = !DILocation(line: 662, column: 40, scope: !2971)
!3049 = !DILocation(line: 662, column: 3, scope: !2971)
!3050 = !DILocation(line: 664, column: 44, scope: !2971)
!3051 = !DILocation(line: 664, column: 54, scope: !2971)
!3052 = !DILocation(line: 664, column: 62, scope: !2971)
!3053 = !DILocation(line: 664, column: 70, scope: !2971)
!3054 = !DILocation(line: 664, column: 77, scope: !2971)
!3055 = !DILocation(line: 664, column: 86, scope: !2971)
!3056 = !DILocation(line: 664, column: 9, scope: !2971)
!3057 = !DILocation(line: 664, column: 7, scope: !2971)
!3058 = !DILocation(line: 665, column: 7, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !2971, file: !2, line: 665, column: 7)
!3060 = !DILocation(line: 665, column: 11, scope: !3059)
!3061 = !DILocation(line: 665, column: 7, scope: !2971)
!3062 = !DILocation(line: 667, column: 12, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3059, file: !2, line: 665, column: 16)
!3064 = !DILocation(line: 668, column: 5, scope: !3063)
!3065 = !DILocation(line: 671, column: 3, scope: !2971)
!3066 = !DILocation(line: 673, column: 2, scope: !2971)
!3067 = !DILocation(line: 674, column: 8, scope: !2971)
!3068 = !DILocation(line: 674, column: 3, scope: !2971)
!3069 = !DILocation(line: 675, column: 8, scope: !2971)
!3070 = !DILocation(line: 675, column: 3, scope: !2971)
!3071 = !DILocation(line: 676, column: 2, scope: !2971)
!3072 = !DILocation(line: 677, column: 7, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !2971, file: !2, line: 677, column: 7)
!3074 = !DILocation(line: 677, column: 7, scope: !2971)
!3075 = !DILocation(line: 678, column: 41, scope: !3073)
!3076 = !DILocation(line: 678, column: 5, scope: !3073)
!3077 = !DILocation(line: 679, column: 3, scope: !2971)
!3078 = !DILocation(line: 680, column: 1, scope: !2971)
!3079 = distinct !DISubprogram(name: "hwloc_distances_add_commit", scope: !2, file: !2, line: 683, type: !3080, scopeLine: 686, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3082)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!181, !464, !259, !287}
!3082 = !{!3083, !3084, !3085, !3086, !3087}
!3083 = !DILocalVariable(name: "topology", arg: 1, scope: !3079, file: !2, line: 683, type: !464)
!3084 = !DILocalVariable(name: "handle", arg: 2, scope: !3079, file: !2, line: 684, type: !259)
!3085 = !DILocalVariable(name: "flags", arg: 3, scope: !3079, file: !2, line: 685, type: !287)
!3086 = !DILocalVariable(name: "err", scope: !3079, file: !2, line: 687, type: !181)
!3087 = !DILabel(scope: !3079, name: "out", file: !2, line: 706)
!3088 = !DILocation(line: 683, column: 45, scope: !3079)
!3089 = !DILocation(line: 684, column: 34, scope: !3079)
!3090 = !DILocation(line: 685, column: 42, scope: !3079)
!3091 = !DILocation(line: 687, column: 3, scope: !3079)
!3092 = !DILocation(line: 687, column: 7, scope: !3079)
!3093 = !DILocation(line: 689, column: 7, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3079, file: !2, line: 689, column: 7)
!3095 = !DILocation(line: 689, column: 13, scope: !3094)
!3096 = !DILocation(line: 689, column: 7, scope: !3079)
!3097 = !DILocation(line: 690, column: 5, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3094, file: !2, line: 689, column: 46)
!3099 = !DILocation(line: 690, column: 11, scope: !3098)
!3100 = !DILocation(line: 691, column: 5, scope: !3098)
!3101 = !DILocation(line: 694, column: 44, scope: !3079)
!3102 = !DILocation(line: 694, column: 54, scope: !3079)
!3103 = !DILocation(line: 694, column: 62, scope: !3079)
!3104 = !DILocation(line: 694, column: 9, scope: !3079)
!3105 = !DILocation(line: 694, column: 7, scope: !3079)
!3106 = !DILocation(line: 695, column: 7, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3079, file: !2, line: 695, column: 7)
!3108 = !DILocation(line: 695, column: 11, scope: !3107)
!3109 = !DILocation(line: 695, column: 7, scope: !3079)
!3110 = !DILocation(line: 697, column: 12, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3107, file: !2, line: 695, column: 16)
!3112 = !DILocation(line: 698, column: 5, scope: !3111)
!3113 = !DILocation(line: 702, column: 28, scope: !3079)
!3114 = !DILocation(line: 702, column: 3, scope: !3079)
!3115 = !DILocation(line: 704, column: 3, scope: !3079)
!3116 = !DILocation(line: 706, column: 2, scope: !3079)
!3117 = !DILocation(line: 707, column: 7, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3079, file: !2, line: 707, column: 7)
!3119 = !DILocation(line: 707, column: 7, scope: !3079)
!3120 = !DILocation(line: 708, column: 41, scope: !3118)
!3121 = !DILocation(line: 708, column: 5, scope: !3118)
!3122 = !DILocation(line: 709, column: 3, scope: !3079)
!3123 = !DILocation(line: 710, column: 1, scope: !3079)
!3124 = !DISubprogram(name: "hwloc_topology_reconnect", scope: !195, file: !195, line: 423, type: !3125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!181, !464, !287}
!3127 = distinct !DISubprogram(name: "hwloc_distances_add", scope: !2, file: !2, line: 713, type: !3128, scopeLine: 716, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3130)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!181, !464, !134, !270, !400, !287, !287}
!3130 = !{!3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138}
!3131 = !DILocalVariable(name: "topology", arg: 1, scope: !3127, file: !2, line: 713, type: !464)
!3132 = !DILocalVariable(name: "nbobjs", arg: 2, scope: !3127, file: !2, line: 714, type: !134)
!3133 = !DILocalVariable(name: "objs", arg: 3, scope: !3127, file: !2, line: 714, type: !270)
!3134 = !DILocalVariable(name: "values", arg: 4, scope: !3127, file: !2, line: 714, type: !400)
!3135 = !DILocalVariable(name: "kind", arg: 5, scope: !3127, file: !2, line: 715, type: !287)
!3136 = !DILocalVariable(name: "flags", arg: 6, scope: !3127, file: !2, line: 715, type: !287)
!3137 = !DILocalVariable(name: "handle", scope: !3127, file: !2, line: 717, type: !259)
!3138 = !DILocalVariable(name: "err", scope: !3127, file: !2, line: 718, type: !181)
!3139 = !DILocation(line: 713, column: 42, scope: !3127)
!3140 = !DILocation(line: 714, column: 13, scope: !3127)
!3141 = !DILocation(line: 714, column: 34, scope: !3127)
!3142 = !DILocation(line: 714, column: 56, scope: !3127)
!3143 = !DILocation(line: 715, column: 18, scope: !3127)
!3144 = !DILocation(line: 715, column: 38, scope: !3127)
!3145 = !DILocation(line: 717, column: 3, scope: !3127)
!3146 = !DILocation(line: 717, column: 9, scope: !3127)
!3147 = !DILocation(line: 718, column: 3, scope: !3127)
!3148 = !DILocation(line: 718, column: 7, scope: !3127)
!3149 = !DILocation(line: 720, column: 39, scope: !3127)
!3150 = !DILocation(line: 720, column: 55, scope: !3127)
!3151 = !DILocation(line: 720, column: 12, scope: !3127)
!3152 = !DILocation(line: 720, column: 10, scope: !3127)
!3153 = !DILocation(line: 721, column: 8, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3127, file: !2, line: 721, column: 7)
!3155 = !DILocation(line: 721, column: 7, scope: !3127)
!3156 = !DILocation(line: 722, column: 5, scope: !3154)
!3157 = !DILocation(line: 724, column: 36, scope: !3127)
!3158 = !DILocation(line: 724, column: 46, scope: !3127)
!3159 = !DILocation(line: 724, column: 54, scope: !3127)
!3160 = !DILocation(line: 724, column: 62, scope: !3127)
!3161 = !DILocation(line: 724, column: 68, scope: !3127)
!3162 = !DILocation(line: 724, column: 9, scope: !3127)
!3163 = !DILocation(line: 724, column: 7, scope: !3127)
!3164 = !DILocation(line: 725, column: 7, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3127, file: !2, line: 725, column: 7)
!3166 = !DILocation(line: 725, column: 11, scope: !3165)
!3167 = !DILocation(line: 725, column: 7, scope: !3127)
!3168 = !DILocation(line: 726, column: 5, scope: !3165)
!3169 = !DILocation(line: 728, column: 36, scope: !3127)
!3170 = !DILocation(line: 728, column: 46, scope: !3127)
!3171 = !DILocation(line: 728, column: 54, scope: !3127)
!3172 = !DILocation(line: 728, column: 9, scope: !3127)
!3173 = !DILocation(line: 728, column: 7, scope: !3127)
!3174 = !DILocation(line: 729, column: 7, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3127, file: !2, line: 729, column: 7)
!3176 = !DILocation(line: 729, column: 11, scope: !3175)
!3177 = !DILocation(line: 729, column: 7, scope: !3127)
!3178 = !DILocation(line: 730, column: 5, scope: !3175)
!3179 = !DILocation(line: 732, column: 3, scope: !3127)
!3180 = !DILocation(line: 733, column: 1, scope: !3127)
!3181 = distinct !DISubprogram(name: "hwloc_internal_distances_refresh", scope: !2, file: !2, line: 820, type: !3182, scopeLine: 821, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3184)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{null, !464}
!3184 = !{!3185, !3186, !3187}
!3185 = !DILocalVariable(name: "topology", arg: 1, scope: !3181, file: !2, line: 820, type: !464)
!3186 = !DILocalVariable(name: "dist", scope: !3181, file: !2, line: 822, type: !609)
!3187 = !DILocalVariable(name: "next", scope: !3181, file: !2, line: 822, type: !609)
!3188 = !DILocation(line: 820, column: 51, scope: !3181)
!3189 = !DILocation(line: 822, column: 3, scope: !3181)
!3190 = !DILocation(line: 822, column: 38, scope: !3181)
!3191 = !DILocation(line: 822, column: 45, scope: !3181)
!3192 = !DILocation(line: 824, column: 14, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3181, file: !2, line: 824, column: 3)
!3194 = !DILocation(line: 824, column: 24, scope: !3193)
!3195 = !DILocation(line: 824, column: 12, scope: !3193)
!3196 = !DILocation(line: 824, column: 7, scope: !3193)
!3197 = !DILocation(line: 824, column: 36, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3193, file: !2, line: 824, column: 3)
!3199 = !DILocation(line: 824, column: 3, scope: !3193)
!3200 = !DILocation(line: 825, column: 12, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3198, file: !2, line: 824, column: 55)
!3202 = !DILocation(line: 825, column: 18, scope: !3201)
!3203 = !DILocation(line: 825, column: 10, scope: !3201)
!3204 = !DILocation(line: 827, column: 46, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3201, file: !2, line: 827, column: 9)
!3206 = !DILocation(line: 827, column: 56, scope: !3205)
!3207 = !DILocation(line: 827, column: 9, scope: !3205)
!3208 = !DILocation(line: 827, column: 62, scope: !3205)
!3209 = !DILocation(line: 827, column: 9, scope: !3201)
!3210 = !DILocation(line: 828, column: 7, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3212, file: !2, line: 828, column: 7)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !2, line: 828, column: 7)
!3213 = distinct !DILexicalBlock(scope: !3205, file: !2, line: 827, column: 67)
!3214 = !DILocation(line: 828, column: 7, scope: !3212)
!3215 = !DILocation(line: 829, column: 11, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3213, file: !2, line: 829, column: 11)
!3217 = !DILocation(line: 829, column: 17, scope: !3216)
!3218 = !DILocation(line: 829, column: 11, scope: !3213)
!3219 = !DILocation(line: 830, column: 21, scope: !3216)
!3220 = !DILocation(line: 830, column: 2, scope: !3216)
!3221 = !DILocation(line: 830, column: 8, scope: !3216)
!3222 = !DILocation(line: 830, column: 14, scope: !3216)
!3223 = !DILocation(line: 830, column: 19, scope: !3216)
!3224 = !DILocation(line: 832, column: 25, scope: !3216)
!3225 = !DILocation(line: 832, column: 2, scope: !3216)
!3226 = !DILocation(line: 832, column: 12, scope: !3216)
!3227 = !DILocation(line: 832, column: 23, scope: !3216)
!3228 = !DILocation(line: 833, column: 11, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3213, file: !2, line: 833, column: 11)
!3230 = !DILocation(line: 833, column: 11, scope: !3213)
!3231 = !DILocation(line: 834, column: 15, scope: !3229)
!3232 = !DILocation(line: 834, column: 21, scope: !3229)
!3233 = !DILocation(line: 834, column: 2, scope: !3229)
!3234 = !DILocation(line: 834, column: 8, scope: !3229)
!3235 = !DILocation(line: 834, column: 13, scope: !3229)
!3236 = !DILocation(line: 836, column: 24, scope: !3229)
!3237 = !DILocation(line: 836, column: 30, scope: !3229)
!3238 = !DILocation(line: 836, column: 2, scope: !3229)
!3239 = !DILocation(line: 836, column: 12, scope: !3229)
!3240 = !DILocation(line: 836, column: 22, scope: !3229)
!3241 = !DILocation(line: 837, column: 37, scope: !3213)
!3242 = !DILocation(line: 837, column: 7, scope: !3213)
!3243 = !DILocation(line: 838, column: 7, scope: !3213)
!3244 = !DILocation(line: 840, column: 3, scope: !3201)
!3245 = !DILocation(line: 824, column: 49, scope: !3198)
!3246 = !DILocation(line: 824, column: 47, scope: !3198)
!3247 = !DILocation(line: 824, column: 3, scope: !3198)
!3248 = distinct !{!3248, !3199, !3249, !982}
!3249 = !DILocation(line: 840, column: 3, scope: !3193)
!3250 = !DILocation(line: 841, column: 1, scope: !3181)
!3251 = distinct !DISubprogram(name: "hwloc_internal_distances_refresh_one", scope: !2, file: !2, line: 771, type: !3252, scopeLine: 773, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3254)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!181, !464, !609}
!3254 = !{!3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264}
!3255 = !DILocalVariable(name: "topology", arg: 1, scope: !3251, file: !2, line: 771, type: !464)
!3256 = !DILocalVariable(name: "dist", arg: 2, scope: !3251, file: !2, line: 772, type: !609)
!3257 = !DILocalVariable(name: "unique_type", scope: !3251, file: !2, line: 774, type: !260)
!3258 = !DILocalVariable(name: "different_types", scope: !3251, file: !2, line: 775, type: !616)
!3259 = !DILocalVariable(name: "nbobjs", scope: !3251, file: !2, line: 776, type: !134)
!3260 = !DILocalVariable(name: "objs", scope: !3251, file: !2, line: 777, type: !270)
!3261 = !DILocalVariable(name: "indexes", scope: !3251, file: !2, line: 778, type: !619)
!3262 = !DILocalVariable(name: "disappeared", scope: !3251, file: !2, line: 779, type: !134)
!3263 = !DILocalVariable(name: "i", scope: !3251, file: !2, line: 780, type: !134)
!3264 = !DILocalVariable(name: "obj", scope: !3265, file: !2, line: 786, type: !271)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !2, line: 785, column: 27)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !2, line: 785, column: 3)
!3267 = distinct !DILexicalBlock(scope: !3251, file: !2, line: 785, column: 3)
!3268 = !DILocation(line: 771, column: 55, scope: !3251)
!3269 = !DILocation(line: 772, column: 45, scope: !3251)
!3270 = !DILocation(line: 774, column: 3, scope: !3251)
!3271 = !DILocation(line: 774, column: 20, scope: !3251)
!3272 = !DILocation(line: 774, column: 34, scope: !3251)
!3273 = !DILocation(line: 774, column: 40, scope: !3251)
!3274 = !DILocation(line: 775, column: 3, scope: !3251)
!3275 = !DILocation(line: 775, column: 21, scope: !3251)
!3276 = !DILocation(line: 775, column: 39, scope: !3251)
!3277 = !DILocation(line: 775, column: 45, scope: !3251)
!3278 = !DILocation(line: 776, column: 3, scope: !3251)
!3279 = !DILocation(line: 776, column: 12, scope: !3251)
!3280 = !DILocation(line: 776, column: 21, scope: !3251)
!3281 = !DILocation(line: 776, column: 27, scope: !3251)
!3282 = !DILocation(line: 777, column: 3, scope: !3251)
!3283 = !DILocation(line: 777, column: 16, scope: !3251)
!3284 = !DILocation(line: 777, column: 23, scope: !3251)
!3285 = !DILocation(line: 777, column: 29, scope: !3251)
!3286 = !DILocation(line: 778, column: 3, scope: !3251)
!3287 = !DILocation(line: 778, column: 13, scope: !3251)
!3288 = !DILocation(line: 778, column: 23, scope: !3251)
!3289 = !DILocation(line: 778, column: 29, scope: !3251)
!3290 = !DILocation(line: 779, column: 3, scope: !3251)
!3291 = !DILocation(line: 779, column: 12, scope: !3251)
!3292 = !DILocation(line: 780, column: 3, scope: !3251)
!3293 = !DILocation(line: 780, column: 12, scope: !3251)
!3294 = !DILocation(line: 782, column: 7, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3251, file: !2, line: 782, column: 7)
!3296 = !DILocation(line: 782, column: 13, scope: !3295)
!3297 = !DILocation(line: 782, column: 20, scope: !3295)
!3298 = !DILocation(line: 782, column: 7, scope: !3251)
!3299 = !DILocation(line: 783, column: 5, scope: !3295)
!3300 = !DILocation(line: 785, column: 8, scope: !3267)
!3301 = !DILocation(line: 785, column: 7, scope: !3267)
!3302 = !DILocation(line: 785, column: 12, scope: !3266)
!3303 = !DILocation(line: 785, column: 14, scope: !3266)
!3304 = !DILocation(line: 785, column: 13, scope: !3266)
!3305 = !DILocation(line: 785, column: 3, scope: !3267)
!3306 = !DILocation(line: 786, column: 5, scope: !3265)
!3307 = !DILocation(line: 786, column: 17, scope: !3265)
!3308 = !DILocation(line: 790, column: 9, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3265, file: !2, line: 790, column: 9)
!3310 = !DILocation(line: 790, column: 9, scope: !3265)
!3311 = !DILocation(line: 791, column: 11, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3313, file: !2, line: 791, column: 11)
!3313 = distinct !DILexicalBlock(scope: !3309, file: !2, line: 790, column: 52)
!3314 = !DILocation(line: 791, column: 23, scope: !3312)
!3315 = !DILocation(line: 791, column: 11, scope: !3313)
!3316 = !DILocation(line: 792, column: 37, scope: !3312)
!3317 = !DILocation(line: 792, column: 58, scope: !3312)
!3318 = !DILocation(line: 792, column: 66, scope: !3312)
!3319 = !DILocation(line: 792, column: 47, scope: !3312)
!3320 = !DILocation(line: 792, column: 8, scope: !3312)
!3321 = !DILocation(line: 792, column: 6, scope: !3312)
!3322 = !DILocation(line: 792, column: 2, scope: !3312)
!3323 = !DILocation(line: 793, column: 16, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3312, file: !2, line: 793, column: 16)
!3325 = !DILocation(line: 793, column: 28, scope: !3324)
!3326 = !DILocation(line: 793, column: 16, scope: !3312)
!3327 = !DILocation(line: 794, column: 43, scope: !3324)
!3328 = !DILocation(line: 794, column: 64, scope: !3324)
!3329 = !DILocation(line: 794, column: 72, scope: !3324)
!3330 = !DILocation(line: 794, column: 53, scope: !3324)
!3331 = !DILocation(line: 794, column: 8, scope: !3324)
!3332 = !DILocation(line: 794, column: 6, scope: !3324)
!3333 = !DILocation(line: 794, column: 2, scope: !3324)
!3334 = !DILocation(line: 796, column: 2, scope: !3324)
!3335 = !DILocation(line: 797, column: 5, scope: !3313)
!3336 = !DILocation(line: 798, column: 48, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3309, file: !2, line: 797, column: 12)
!3338 = !DILocation(line: 798, column: 58, scope: !3337)
!3339 = !DILocation(line: 798, column: 76, scope: !3337)
!3340 = !DILocation(line: 798, column: 92, scope: !3337)
!3341 = !DILocation(line: 798, column: 97, scope: !3337)
!3342 = !DILocation(line: 798, column: 110, scope: !3337)
!3343 = !DILocation(line: 798, column: 118, scope: !3337)
!3344 = !DILocation(line: 798, column: 13, scope: !3337)
!3345 = !DILocation(line: 798, column: 11, scope: !3337)
!3346 = !DILocation(line: 800, column: 15, scope: !3265)
!3347 = !DILocation(line: 800, column: 5, scope: !3265)
!3348 = !DILocation(line: 800, column: 10, scope: !3265)
!3349 = !DILocation(line: 800, column: 13, scope: !3265)
!3350 = !DILocation(line: 801, column: 10, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3265, file: !2, line: 801, column: 9)
!3352 = !DILocation(line: 801, column: 9, scope: !3265)
!3353 = !DILocation(line: 802, column: 18, scope: !3351)
!3354 = !DILocation(line: 802, column: 7, scope: !3351)
!3355 = !DILocation(line: 803, column: 3, scope: !3266)
!3356 = !DILocation(line: 803, column: 3, scope: !3265)
!3357 = !DILocation(line: 785, column: 23, scope: !3266)
!3358 = !DILocation(line: 785, column: 3, scope: !3266)
!3359 = distinct !{!3359, !3305, !3360, !982}
!3360 = !DILocation(line: 803, column: 3, scope: !3267)
!3361 = !DILocation(line: 805, column: 7, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3251, file: !2, line: 805, column: 7)
!3363 = !DILocation(line: 805, column: 14, scope: !3362)
!3364 = !DILocation(line: 805, column: 13, scope: !3362)
!3365 = !DILocation(line: 805, column: 26, scope: !3362)
!3366 = !DILocation(line: 805, column: 7, scope: !3251)
!3367 = !DILocation(line: 807, column: 5, scope: !3362)
!3368 = !DILocation(line: 809, column: 7, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3251, file: !2, line: 809, column: 7)
!3370 = !DILocation(line: 809, column: 7, scope: !3251)
!3371 = !DILocation(line: 810, column: 39, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3369, file: !2, line: 809, column: 20)
!3373 = !DILocation(line: 810, column: 45, scope: !3372)
!3374 = !DILocation(line: 810, column: 51, scope: !3372)
!3375 = !DILocation(line: 810, column: 60, scope: !3372)
!3376 = !DILocation(line: 810, column: 66, scope: !3372)
!3377 = !DILocation(line: 810, column: 83, scope: !3372)
!3378 = !DILocation(line: 810, column: 89, scope: !3372)
!3379 = !DILocation(line: 810, column: 97, scope: !3372)
!3380 = !DILocation(line: 810, column: 105, scope: !3372)
!3381 = !DILocation(line: 810, column: 5, scope: !3372)
!3382 = !DILocation(line: 811, column: 21, scope: !3372)
!3383 = !DILocation(line: 811, column: 5, scope: !3372)
!3384 = !DILocation(line: 811, column: 11, scope: !3372)
!3385 = !DILocation(line: 811, column: 18, scope: !3372)
!3386 = !DILocation(line: 812, column: 3, scope: !3372)
!3387 = !DILocation(line: 814, column: 3, scope: !3251)
!3388 = !DILocation(line: 814, column: 9, scope: !3251)
!3389 = !DILocation(line: 814, column: 16, scope: !3251)
!3390 = !DILocation(line: 815, column: 3, scope: !3251)
!3391 = !DILocation(line: 816, column: 1, scope: !3251)
!3392 = !DISubprogram(name: "__assert_fail", scope: !3393, file: !3393, line: 69, type: !3394, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3393 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!3394 = !DISubroutineType(types: !3395)
!3395 = !{null, !257, !257, !134, !257}
!3396 = distinct !DISubprogram(name: "hwloc_internal_distances_invalidate_cached_objs", scope: !2, file: !2, line: 844, type: !3182, scopeLine: 845, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3397)
!3397 = !{!3398, !3399}
!3398 = !DILocalVariable(name: "topology", arg: 1, scope: !3396, file: !2, line: 844, type: !464)
!3399 = !DILocalVariable(name: "dist", scope: !3396, file: !2, line: 846, type: !609)
!3400 = !DILocation(line: 844, column: 66, scope: !3396)
!3401 = !DILocation(line: 846, column: 3, scope: !3396)
!3402 = !DILocation(line: 846, column: 38, scope: !3396)
!3403 = !DILocation(line: 847, column: 14, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3396, file: !2, line: 847, column: 3)
!3405 = !DILocation(line: 847, column: 24, scope: !3404)
!3406 = !DILocation(line: 847, column: 12, scope: !3404)
!3407 = !DILocation(line: 847, column: 7, scope: !3404)
!3408 = !DILocation(line: 847, column: 36, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3404, file: !2, line: 847, column: 3)
!3410 = !DILocation(line: 847, column: 3, scope: !3404)
!3411 = !DILocation(line: 848, column: 5, scope: !3409)
!3412 = !DILocation(line: 848, column: 11, scope: !3409)
!3413 = !DILocation(line: 848, column: 18, scope: !3409)
!3414 = !DILocation(line: 847, column: 49, scope: !3409)
!3415 = !DILocation(line: 847, column: 55, scope: !3409)
!3416 = !DILocation(line: 847, column: 47, scope: !3409)
!3417 = !DILocation(line: 847, column: 3, scope: !3409)
!3418 = distinct !{!3418, !3410, !3419, !982}
!3419 = !DILocation(line: 848, column: 22, scope: !3404)
!3420 = !DILocation(line: 849, column: 1, scope: !3396)
!3421 = distinct !DISubprogram(name: "hwloc_distances_get_name", scope: !2, file: !2, line: 888, type: !3422, scopeLine: 889, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3424)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!257, !464, !1411}
!3424 = !{!3425, !3426, !3427}
!3425 = !DILocalVariable(name: "topology", arg: 1, scope: !3421, file: !2, line: 888, type: !464)
!3426 = !DILocalVariable(name: "distances", arg: 2, scope: !3421, file: !2, line: 888, type: !1411)
!3427 = !DILocalVariable(name: "dist", scope: !3421, file: !2, line: 890, type: !609)
!3428 = !DILocation(line: 888, column: 43, scope: !3421)
!3429 = !DILocation(line: 888, column: 79, scope: !3421)
!3430 = !DILocation(line: 890, column: 3, scope: !3421)
!3431 = !DILocation(line: 890, column: 38, scope: !3421)
!3432 = !DILocation(line: 890, column: 83, scope: !3421)
!3433 = !DILocation(line: 890, column: 93, scope: !3421)
!3434 = !DILocation(line: 890, column: 45, scope: !3421)
!3435 = !DILocation(line: 891, column: 10, scope: !3421)
!3436 = !DILocation(line: 891, column: 17, scope: !3421)
!3437 = !DILocation(line: 891, column: 23, scope: !3421)
!3438 = !DILocation(line: 892, column: 1, scope: !3421)
!3439 = !DILocation(line: 891, column: 3, scope: !3421)
!3440 = distinct !DISubprogram(name: "hwloc_distances_get", scope: !2, file: !2, line: 996, type: !3441, scopeLine: 999, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3444)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!181, !464, !424, !3443, !287, !287}
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!3444 = !{!3445, !3446, !3447, !3448, !3449}
!3445 = !DILocalVariable(name: "topology", arg: 1, scope: !3440, file: !2, line: 996, type: !464)
!3446 = !DILocalVariable(name: "nrp", arg: 2, scope: !3440, file: !2, line: 997, type: !424)
!3447 = !DILocalVariable(name: "distancesp", arg: 3, scope: !3440, file: !2, line: 997, type: !3443)
!3448 = !DILocalVariable(name: "kind", arg: 4, scope: !3440, file: !2, line: 998, type: !287)
!3449 = !DILocalVariable(name: "flags", arg: 5, scope: !3440, file: !2, line: 998, type: !287)
!3450 = !DILocation(line: 996, column: 38, scope: !3440)
!3451 = !DILocation(line: 997, column: 17, scope: !3440)
!3452 = !DILocation(line: 997, column: 49, scope: !3440)
!3453 = !DILocation(line: 998, column: 21, scope: !3440)
!3454 = !DILocation(line: 998, column: 41, scope: !3440)
!3455 = !DILocation(line: 1000, column: 7, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3440, file: !2, line: 1000, column: 7)
!3457 = !DILocation(line: 1000, column: 13, scope: !3456)
!3458 = !DILocation(line: 1000, column: 17, scope: !3456)
!3459 = !DILocation(line: 1000, column: 27, scope: !3456)
!3460 = !DILocation(line: 1000, column: 7, scope: !3440)
!3461 = !DILocation(line: 1001, column: 5, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3456, file: !2, line: 1000, column: 38)
!3463 = !DILocation(line: 1001, column: 11, scope: !3462)
!3464 = !DILocation(line: 1002, column: 5, scope: !3462)
!3465 = !DILocation(line: 1005, column: 31, scope: !3440)
!3466 = !DILocation(line: 1005, column: 68, scope: !3440)
!3467 = !DILocation(line: 1005, column: 73, scope: !3440)
!3468 = !DILocation(line: 1005, column: 85, scope: !3440)
!3469 = !DILocation(line: 1005, column: 91, scope: !3440)
!3470 = !DILocation(line: 1005, column: 10, scope: !3440)
!3471 = !DILocation(line: 1005, column: 3, scope: !3440)
!3472 = !DILocation(line: 1006, column: 1, scope: !3440)
!3473 = distinct !DISubprogram(name: "hwloc__distances_get", scope: !2, file: !2, line: 932, type: !3474, scopeLine: 936, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3476)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!181, !464, !257, !260, !424, !3443, !287, !287}
!3476 = !{!3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3491, !3492, !3495}
!3477 = !DILocalVariable(name: "topology", arg: 1, scope: !3473, file: !2, line: 932, type: !464)
!3478 = !DILocalVariable(name: "name", arg: 2, scope: !3473, file: !2, line: 933, type: !257)
!3479 = !DILocalVariable(name: "type", arg: 3, scope: !3473, file: !2, line: 933, type: !260)
!3480 = !DILocalVariable(name: "nrp", arg: 4, scope: !3473, file: !2, line: 934, type: !424)
!3481 = !DILocalVariable(name: "distancesp", arg: 5, scope: !3473, file: !2, line: 934, type: !3443)
!3482 = !DILocalVariable(name: "kind", arg: 6, scope: !3473, file: !2, line: 935, type: !287)
!3483 = !DILocalVariable(name: "flags", arg: 7, scope: !3473, file: !2, line: 935, type: !287)
!3484 = !DILocalVariable(name: "dist", scope: !3473, file: !2, line: 937, type: !609)
!3485 = !DILocalVariable(name: "nr", scope: !3473, file: !2, line: 938, type: !134)
!3486 = !DILocalVariable(name: "i", scope: !3473, file: !2, line: 938, type: !134)
!3487 = !DILocalVariable(name: "kind_from", scope: !3488, file: !2, line: 961, type: !287)
!3488 = distinct !DILexicalBlock(scope: !3489, file: !2, line: 960, column: 61)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !2, line: 960, column: 3)
!3490 = distinct !DILexicalBlock(scope: !3473, file: !2, line: 960, column: 3)
!3491 = !DILocalVariable(name: "kind_means", scope: !3488, file: !2, line: 962, type: !287)
!3492 = !DILocalVariable(name: "distances", scope: !3493, file: !2, line: 976, type: !1411)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !2, line: 975, column: 20)
!3494 = distinct !DILexicalBlock(scope: !3488, file: !2, line: 975, column: 9)
!3495 = !DILabel(scope: !3473, name: "error", file: !2, line: 989)
!3496 = !DILocation(line: 932, column: 39, scope: !3473)
!3497 = !DILocation(line: 933, column: 20, scope: !3473)
!3498 = !DILocation(line: 933, column: 43, scope: !3473)
!3499 = !DILocation(line: 934, column: 18, scope: !3473)
!3500 = !DILocation(line: 934, column: 50, scope: !3473)
!3501 = !DILocation(line: 935, column: 22, scope: !3473)
!3502 = !DILocation(line: 935, column: 42, scope: !3473)
!3503 = !DILocation(line: 937, column: 3, scope: !3473)
!3504 = !DILocation(line: 937, column: 38, scope: !3473)
!3505 = !DILocation(line: 938, column: 3, scope: !3473)
!3506 = !DILocation(line: 938, column: 12, scope: !3473)
!3507 = !DILocation(line: 938, column: 20, scope: !3473)
!3508 = !DILocation(line: 945, column: 7, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3473, file: !2, line: 945, column: 7)
!3510 = !DILocation(line: 945, column: 7, scope: !3473)
!3511 = !DILocation(line: 946, column: 5, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3509, file: !2, line: 945, column: 14)
!3513 = !DILocation(line: 946, column: 11, scope: !3512)
!3514 = !DILocation(line: 947, column: 5, scope: !3512)
!3515 = !DILocation(line: 958, column: 36, scope: !3473)
!3516 = !DILocation(line: 958, column: 3, scope: !3473)
!3517 = !DILocation(line: 960, column: 14, scope: !3490)
!3518 = !DILocation(line: 960, column: 24, scope: !3490)
!3519 = !DILocation(line: 960, column: 12, scope: !3490)
!3520 = !DILocation(line: 960, column: 7, scope: !3490)
!3521 = !DILocation(line: 960, column: 36, scope: !3489)
!3522 = !DILocation(line: 960, column: 3, scope: !3490)
!3523 = !DILocation(line: 961, column: 5, scope: !3488)
!3524 = !DILocation(line: 961, column: 19, scope: !3488)
!3525 = !DILocation(line: 961, column: 31, scope: !3488)
!3526 = !DILocation(line: 961, column: 36, scope: !3488)
!3527 = !DILocation(line: 962, column: 5, scope: !3488)
!3528 = !DILocation(line: 962, column: 19, scope: !3488)
!3529 = !DILocation(line: 962, column: 32, scope: !3488)
!3530 = !DILocation(line: 962, column: 37, scope: !3488)
!3531 = !DILocation(line: 964, column: 9, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3488, file: !2, line: 964, column: 9)
!3533 = !DILocation(line: 964, column: 14, scope: !3532)
!3534 = !DILocation(line: 964, column: 19, scope: !3532)
!3535 = !DILocation(line: 964, column: 25, scope: !3532)
!3536 = !DILocation(line: 964, column: 30, scope: !3532)
!3537 = !DILocation(line: 964, column: 40, scope: !3532)
!3538 = !DILocation(line: 964, column: 46, scope: !3532)
!3539 = !DILocation(line: 964, column: 52, scope: !3532)
!3540 = !DILocation(line: 964, column: 33, scope: !3532)
!3541 = !DILocation(line: 964, column: 9, scope: !3488)
!3542 = !DILocation(line: 965, column: 7, scope: !3532)
!3543 = !DILocation(line: 967, column: 9, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3488, file: !2, line: 967, column: 9)
!3545 = !DILocation(line: 967, column: 14, scope: !3544)
!3546 = !DILocation(line: 967, column: 37, scope: !3544)
!3547 = !DILocation(line: 967, column: 40, scope: !3544)
!3548 = !DILocation(line: 967, column: 48, scope: !3544)
!3549 = !DILocation(line: 967, column: 54, scope: !3544)
!3550 = !DILocation(line: 967, column: 45, scope: !3544)
!3551 = !DILocation(line: 967, column: 9, scope: !3488)
!3552 = !DILocation(line: 968, column: 7, scope: !3544)
!3553 = !DILocation(line: 970, column: 9, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3488, file: !2, line: 970, column: 9)
!3555 = !DILocation(line: 970, column: 19, scope: !3554)
!3556 = !DILocation(line: 970, column: 24, scope: !3554)
!3557 = !DILocation(line: 970, column: 36, scope: !3554)
!3558 = !DILocation(line: 970, column: 42, scope: !3554)
!3559 = !DILocation(line: 970, column: 34, scope: !3554)
!3560 = !DILocation(line: 970, column: 9, scope: !3488)
!3561 = !DILocation(line: 971, column: 7, scope: !3554)
!3562 = !DILocation(line: 972, column: 9, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3488, file: !2, line: 972, column: 9)
!3564 = !DILocation(line: 972, column: 20, scope: !3563)
!3565 = !DILocation(line: 972, column: 25, scope: !3563)
!3566 = !DILocation(line: 972, column: 38, scope: !3563)
!3567 = !DILocation(line: 972, column: 44, scope: !3563)
!3568 = !DILocation(line: 972, column: 36, scope: !3563)
!3569 = !DILocation(line: 972, column: 9, scope: !3488)
!3570 = !DILocation(line: 973, column: 7, scope: !3563)
!3571 = !DILocation(line: 975, column: 9, scope: !3494)
!3572 = !DILocation(line: 975, column: 15, scope: !3494)
!3573 = !DILocation(line: 975, column: 14, scope: !3494)
!3574 = !DILocation(line: 975, column: 12, scope: !3494)
!3575 = !DILocation(line: 975, column: 9, scope: !3488)
!3576 = !DILocation(line: 976, column: 7, scope: !3493)
!3577 = !DILocation(line: 976, column: 33, scope: !3493)
!3578 = !DILocation(line: 976, column: 69, scope: !3493)
!3579 = !DILocation(line: 976, column: 79, scope: !3493)
!3580 = !DILocation(line: 976, column: 45, scope: !3493)
!3581 = !DILocation(line: 977, column: 12, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3493, file: !2, line: 977, column: 11)
!3583 = !DILocation(line: 977, column: 11, scope: !3493)
!3584 = !DILocation(line: 978, column: 2, scope: !3582)
!3585 = !DILocation(line: 979, column: 24, scope: !3493)
!3586 = !DILocation(line: 979, column: 7, scope: !3493)
!3587 = !DILocation(line: 979, column: 18, scope: !3493)
!3588 = !DILocation(line: 979, column: 22, scope: !3493)
!3589 = !DILocation(line: 980, column: 5, scope: !3494)
!3590 = !DILocation(line: 980, column: 5, scope: !3493)
!3591 = !DILocation(line: 981, column: 7, scope: !3488)
!3592 = !DILocation(line: 982, column: 3, scope: !3489)
!3593 = !DILocation(line: 982, column: 3, scope: !3488)
!3594 = !DILocation(line: 960, column: 49, scope: !3489)
!3595 = !DILocation(line: 960, column: 55, scope: !3489)
!3596 = !DILocation(line: 960, column: 47, scope: !3489)
!3597 = !DILocation(line: 960, column: 3, scope: !3489)
!3598 = distinct !{!3598, !3522, !3599, !982}
!3599 = !DILocation(line: 982, column: 3, scope: !3490)
!3600 = !DILocation(line: 984, column: 9, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3473, file: !2, line: 984, column: 3)
!3602 = !DILocation(line: 984, column: 8, scope: !3601)
!3603 = !DILocation(line: 984, column: 7, scope: !3601)
!3604 = !DILocation(line: 984, column: 13, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3601, file: !2, line: 984, column: 3)
!3606 = !DILocation(line: 984, column: 16, scope: !3605)
!3607 = !DILocation(line: 984, column: 15, scope: !3605)
!3608 = !DILocation(line: 984, column: 14, scope: !3605)
!3609 = !DILocation(line: 984, column: 3, scope: !3601)
!3610 = !DILocation(line: 985, column: 5, scope: !3605)
!3611 = !DILocation(line: 985, column: 16, scope: !3605)
!3612 = !DILocation(line: 985, column: 19, scope: !3605)
!3613 = !DILocation(line: 984, column: 22, scope: !3605)
!3614 = !DILocation(line: 984, column: 3, scope: !3605)
!3615 = distinct !{!3615, !3609, !3616, !982}
!3616 = !DILocation(line: 985, column: 21, scope: !3601)
!3617 = !DILocation(line: 986, column: 10, scope: !3473)
!3618 = !DILocation(line: 986, column: 4, scope: !3473)
!3619 = !DILocation(line: 986, column: 8, scope: !3473)
!3620 = !DILocation(line: 987, column: 3, scope: !3473)
!3621 = !DILocation(line: 989, column: 2, scope: !3473)
!3622 = !DILocation(line: 990, column: 8, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3473, file: !2, line: 990, column: 3)
!3624 = !DILocation(line: 990, column: 7, scope: !3623)
!3625 = !DILocation(line: 990, column: 12, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3623, file: !2, line: 990, column: 3)
!3627 = !DILocation(line: 990, column: 14, scope: !3626)
!3628 = !DILocation(line: 990, column: 13, scope: !3626)
!3629 = !DILocation(line: 990, column: 3, scope: !3623)
!3630 = !DILocation(line: 991, column: 29, scope: !3626)
!3631 = !DILocation(line: 991, column: 39, scope: !3626)
!3632 = !DILocation(line: 991, column: 50, scope: !3626)
!3633 = !DILocation(line: 991, column: 5, scope: !3626)
!3634 = !DILocation(line: 990, column: 19, scope: !3626)
!3635 = !DILocation(line: 990, column: 3, scope: !3626)
!3636 = distinct !{!3636, !3629, !3637, !982}
!3637 = !DILocation(line: 991, column: 52, scope: !3623)
!3638 = !DILocation(line: 992, column: 3, scope: !3473)
!3639 = !DILocation(line: 993, column: 1, scope: !3473)
!3640 = distinct !DISubprogram(name: "hwloc_distances_get_by_depth", scope: !2, file: !2, line: 1009, type: !3641, scopeLine: 1012, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3643)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!181, !464, !181, !424, !3443, !287, !287}
!3643 = !{!3644, !3645, !3646, !3647, !3648, !3649, !3650}
!3644 = !DILocalVariable(name: "topology", arg: 1, scope: !3640, file: !2, line: 1009, type: !464)
!3645 = !DILocalVariable(name: "depth", arg: 2, scope: !3640, file: !2, line: 1009, type: !181)
!3646 = !DILocalVariable(name: "nrp", arg: 3, scope: !3640, file: !2, line: 1010, type: !424)
!3647 = !DILocalVariable(name: "distancesp", arg: 4, scope: !3640, file: !2, line: 1010, type: !3443)
!3648 = !DILocalVariable(name: "kind", arg: 5, scope: !3640, file: !2, line: 1011, type: !287)
!3649 = !DILocalVariable(name: "flags", arg: 6, scope: !3640, file: !2, line: 1011, type: !287)
!3650 = !DILocalVariable(name: "type", scope: !3640, file: !2, line: 1013, type: !260)
!3651 = !DILocation(line: 1009, column: 47, scope: !3640)
!3652 = !DILocation(line: 1009, column: 61, scope: !3640)
!3653 = !DILocation(line: 1010, column: 19, scope: !3640)
!3654 = !DILocation(line: 1010, column: 51, scope: !3640)
!3655 = !DILocation(line: 1011, column: 23, scope: !3640)
!3656 = !DILocation(line: 1011, column: 43, scope: !3640)
!3657 = !DILocation(line: 1013, column: 3, scope: !3640)
!3658 = !DILocation(line: 1013, column: 20, scope: !3640)
!3659 = !DILocation(line: 1015, column: 7, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3640, file: !2, line: 1015, column: 7)
!3661 = !DILocation(line: 1015, column: 13, scope: !3660)
!3662 = !DILocation(line: 1015, column: 17, scope: !3660)
!3663 = !DILocation(line: 1015, column: 27, scope: !3660)
!3664 = !DILocation(line: 1015, column: 7, scope: !3640)
!3665 = !DILocation(line: 1016, column: 5, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3660, file: !2, line: 1015, column: 38)
!3667 = !DILocation(line: 1016, column: 11, scope: !3666)
!3668 = !DILocation(line: 1017, column: 5, scope: !3666)
!3669 = !DILocation(line: 1021, column: 31, scope: !3640)
!3670 = !DILocation(line: 1021, column: 41, scope: !3640)
!3671 = !DILocation(line: 1021, column: 10, scope: !3640)
!3672 = !DILocation(line: 1021, column: 8, scope: !3640)
!3673 = !DILocation(line: 1022, column: 7, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3640, file: !2, line: 1022, column: 7)
!3675 = !DILocation(line: 1022, column: 12, scope: !3674)
!3676 = !DILocation(line: 1022, column: 7, scope: !3640)
!3677 = !DILocation(line: 1023, column: 5, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3674, file: !2, line: 1022, column: 37)
!3679 = !DILocation(line: 1023, column: 11, scope: !3678)
!3680 = !DILocation(line: 1024, column: 5, scope: !3678)
!3681 = !DILocation(line: 1027, column: 31, scope: !3640)
!3682 = !DILocation(line: 1027, column: 47, scope: !3640)
!3683 = !DILocation(line: 1027, column: 53, scope: !3640)
!3684 = !DILocation(line: 1027, column: 58, scope: !3640)
!3685 = !DILocation(line: 1027, column: 70, scope: !3640)
!3686 = !DILocation(line: 1027, column: 76, scope: !3640)
!3687 = !DILocation(line: 1027, column: 10, scope: !3640)
!3688 = !DILocation(line: 1027, column: 3, scope: !3640)
!3689 = !DILocation(line: 1028, column: 1, scope: !3640)
!3690 = distinct !DISubprogram(name: "hwloc_distances_get_by_name", scope: !2, file: !2, line: 1031, type: !3691, scopeLine: 1034, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3693)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!181, !464, !257, !424, !3443, !287}
!3693 = !{!3694, !3695, !3696, !3697, !3698}
!3694 = !DILocalVariable(name: "topology", arg: 1, scope: !3690, file: !2, line: 1031, type: !464)
!3695 = !DILocalVariable(name: "name", arg: 2, scope: !3690, file: !2, line: 1031, type: !257)
!3696 = !DILocalVariable(name: "nrp", arg: 3, scope: !3690, file: !2, line: 1032, type: !424)
!3697 = !DILocalVariable(name: "distancesp", arg: 4, scope: !3690, file: !2, line: 1032, type: !3443)
!3698 = !DILocalVariable(name: "flags", arg: 5, scope: !3690, file: !2, line: 1033, type: !287)
!3699 = !DILocation(line: 1031, column: 46, scope: !3690)
!3700 = !DILocation(line: 1031, column: 68, scope: !3690)
!3701 = !DILocation(line: 1032, column: 18, scope: !3690)
!3702 = !DILocation(line: 1032, column: 50, scope: !3690)
!3703 = !DILocation(line: 1033, column: 22, scope: !3690)
!3704 = !DILocation(line: 1035, column: 7, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3690, file: !2, line: 1035, column: 7)
!3706 = !DILocation(line: 1035, column: 13, scope: !3705)
!3707 = !DILocation(line: 1035, column: 17, scope: !3705)
!3708 = !DILocation(line: 1035, column: 27, scope: !3705)
!3709 = !DILocation(line: 1035, column: 7, scope: !3690)
!3710 = !DILocation(line: 1036, column: 5, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3705, file: !2, line: 1035, column: 38)
!3712 = !DILocation(line: 1036, column: 11, scope: !3711)
!3713 = !DILocation(line: 1037, column: 5, scope: !3711)
!3714 = !DILocation(line: 1040, column: 31, scope: !3690)
!3715 = !DILocation(line: 1040, column: 41, scope: !3690)
!3716 = !DILocation(line: 1040, column: 68, scope: !3690)
!3717 = !DILocation(line: 1040, column: 73, scope: !3690)
!3718 = !DILocation(line: 1040, column: 111, scope: !3690)
!3719 = !DILocation(line: 1040, column: 10, scope: !3690)
!3720 = !DILocation(line: 1040, column: 3, scope: !3690)
!3721 = !DILocation(line: 1041, column: 1, scope: !3690)
!3722 = distinct !DISubprogram(name: "hwloc_distances_get_by_type", scope: !2, file: !2, line: 1044, type: !3723, scopeLine: 1047, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3725)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!181, !464, !260, !424, !3443, !287, !287}
!3725 = !{!3726, !3727, !3728, !3729, !3730, !3731}
!3726 = !DILocalVariable(name: "topology", arg: 1, scope: !3722, file: !2, line: 1044, type: !464)
!3727 = !DILocalVariable(name: "type", arg: 2, scope: !3722, file: !2, line: 1044, type: !260)
!3728 = !DILocalVariable(name: "nrp", arg: 3, scope: !3722, file: !2, line: 1045, type: !424)
!3729 = !DILocalVariable(name: "distancesp", arg: 4, scope: !3722, file: !2, line: 1045, type: !3443)
!3730 = !DILocalVariable(name: "kind", arg: 5, scope: !3722, file: !2, line: 1046, type: !287)
!3731 = !DILocalVariable(name: "flags", arg: 6, scope: !3722, file: !2, line: 1046, type: !287)
!3732 = !DILocation(line: 1044, column: 46, scope: !3722)
!3733 = !DILocation(line: 1044, column: 73, scope: !3722)
!3734 = !DILocation(line: 1045, column: 18, scope: !3722)
!3735 = !DILocation(line: 1045, column: 50, scope: !3722)
!3736 = !DILocation(line: 1046, column: 22, scope: !3722)
!3737 = !DILocation(line: 1046, column: 42, scope: !3722)
!3738 = !DILocation(line: 1048, column: 7, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3722, file: !2, line: 1048, column: 7)
!3740 = !DILocation(line: 1048, column: 13, scope: !3739)
!3741 = !DILocation(line: 1048, column: 17, scope: !3739)
!3742 = !DILocation(line: 1048, column: 27, scope: !3739)
!3743 = !DILocation(line: 1048, column: 7, scope: !3722)
!3744 = !DILocation(line: 1049, column: 5, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3739, file: !2, line: 1048, column: 38)
!3746 = !DILocation(line: 1049, column: 11, scope: !3745)
!3747 = !DILocation(line: 1050, column: 5, scope: !3745)
!3748 = !DILocation(line: 1053, column: 31, scope: !3722)
!3749 = !DILocation(line: 1053, column: 47, scope: !3722)
!3750 = !DILocation(line: 1053, column: 53, scope: !3722)
!3751 = !DILocation(line: 1053, column: 58, scope: !3722)
!3752 = !DILocation(line: 1053, column: 70, scope: !3722)
!3753 = !DILocation(line: 1053, column: 76, scope: !3722)
!3754 = !DILocation(line: 1053, column: 10, scope: !3722)
!3755 = !DILocation(line: 1053, column: 3, scope: !3722)
!3756 = !DILocation(line: 1054, column: 1, scope: !3722)
!3757 = distinct !DISubprogram(name: "hwloc_distances_transform", scope: !2, file: !2, line: 1479, type: !3758, scopeLine: 1484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3760)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!181, !464, !1411, !217, !259, !287}
!3760 = !{!3761, !3762, !3763, !3764, !3765, !3766}
!3761 = !DILocalVariable(name: "topology", arg: 1, scope: !3757, file: !2, line: 1479, type: !464)
!3762 = !DILocalVariable(name: "distances", arg: 2, scope: !3757, file: !2, line: 1480, type: !1411)
!3763 = !DILocalVariable(name: "transform", arg: 3, scope: !3757, file: !2, line: 1481, type: !217)
!3764 = !DILocalVariable(name: "transform_attr", arg: 4, scope: !3757, file: !2, line: 1482, type: !259)
!3765 = !DILocalVariable(name: "flags", arg: 5, scope: !3757, file: !2, line: 1483, type: !287)
!3766 = !DILocalVariable(name: "err", scope: !3767, file: !2, line: 1497, type: !181)
!3767 = distinct !DILexicalBlock(scope: !3768, file: !2, line: 1496, column: 3)
!3768 = distinct !DILexicalBlock(scope: !3757, file: !2, line: 1490, column: 22)
!3769 = !DILocation(line: 1479, column: 44, scope: !3757)
!3770 = !DILocation(line: 1480, column: 53, scope: !3757)
!3771 = !DILocation(line: 1481, column: 60, scope: !3757)
!3772 = !DILocation(line: 1482, column: 33, scope: !3757)
!3773 = !DILocation(line: 1483, column: 41, scope: !3757)
!3774 = !DILocation(line: 1485, column: 7, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3757, file: !2, line: 1485, column: 7)
!3776 = !DILocation(line: 1485, column: 13, scope: !3775)
!3777 = !DILocation(line: 1485, column: 16, scope: !3775)
!3778 = !DILocation(line: 1485, column: 7, scope: !3757)
!3779 = !DILocation(line: 1486, column: 5, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3775, file: !2, line: 1485, column: 32)
!3781 = !DILocation(line: 1486, column: 11, scope: !3780)
!3782 = !DILocation(line: 1487, column: 5, scope: !3780)
!3783 = !DILocation(line: 1490, column: 11, scope: !3757)
!3784 = !DILocation(line: 1490, column: 3, scope: !3757)
!3785 = !DILocation(line: 1492, column: 51, scope: !3768)
!3786 = !DILocation(line: 1492, column: 12, scope: !3768)
!3787 = !DILocation(line: 1492, column: 5, scope: !3768)
!3788 = !DILocation(line: 1494, column: 45, scope: !3768)
!3789 = !DILocation(line: 1494, column: 12, scope: !3768)
!3790 = !DILocation(line: 1494, column: 5, scope: !3768)
!3791 = !DILocation(line: 1497, column: 5, scope: !3767)
!3792 = !DILocation(line: 1497, column: 9, scope: !3767)
!3793 = !DILocation(line: 1498, column: 57, scope: !3767)
!3794 = !DILocation(line: 1498, column: 67, scope: !3767)
!3795 = !DILocation(line: 1498, column: 11, scope: !3767)
!3796 = !DILocation(line: 1498, column: 9, scope: !3767)
!3797 = !DILocation(line: 1499, column: 10, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3767, file: !2, line: 1499, column: 9)
!3799 = !DILocation(line: 1499, column: 9, scope: !3767)
!3800 = !DILocation(line: 1500, column: 52, scope: !3798)
!3801 = !DILocation(line: 1500, column: 13, scope: !3798)
!3802 = !DILocation(line: 1500, column: 11, scope: !3798)
!3803 = !DILocation(line: 1500, column: 7, scope: !3798)
!3804 = !DILocation(line: 1501, column: 12, scope: !3767)
!3805 = !DILocation(line: 1501, column: 5, scope: !3767)
!3806 = !DILocation(line: 1502, column: 3, scope: !3768)
!3807 = !DILocation(line: 1504, column: 58, scope: !3768)
!3808 = !DILocation(line: 1504, column: 68, scope: !3768)
!3809 = !DILocation(line: 1504, column: 12, scope: !3768)
!3810 = !DILocation(line: 1504, column: 5, scope: !3768)
!3811 = !DILocation(line: 1506, column: 5, scope: !3768)
!3812 = !DILocation(line: 1506, column: 11, scope: !3768)
!3813 = !DILocation(line: 1507, column: 5, scope: !3768)
!3814 = !DILocation(line: 1509, column: 1, scope: !3757)
!3815 = distinct !DISubprogram(name: "hwloc__distances_transform_remove_null", scope: !2, file: !2, line: 1305, type: !3816, scopeLine: 1306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3818)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!181, !1411}
!3818 = !{!3819, !3820, !3821, !3822, !3823, !3824, !3825}
!3819 = !DILocalVariable(name: "distances", arg: 1, scope: !3815, file: !2, line: 1305, type: !1411)
!3820 = !DILocalVariable(name: "values", scope: !3815, file: !2, line: 1307, type: !400)
!3821 = !DILocalVariable(name: "objs", scope: !3815, file: !2, line: 1308, type: !270)
!3822 = !DILocalVariable(name: "i", scope: !3815, file: !2, line: 1309, type: !134)
!3823 = !DILocalVariable(name: "nb", scope: !3815, file: !2, line: 1309, type: !134)
!3824 = !DILocalVariable(name: "nbobjs", scope: !3815, file: !2, line: 1309, type: !134)
!3825 = !DILocalVariable(name: "unique_type", scope: !3815, file: !2, line: 1310, type: !260)
!3826 = !DILocation(line: 1305, column: 66, scope: !3815)
!3827 = !DILocation(line: 1307, column: 3, scope: !3815)
!3828 = !DILocation(line: 1307, column: 19, scope: !3815)
!3829 = !DILocation(line: 1307, column: 28, scope: !3815)
!3830 = !DILocation(line: 1307, column: 39, scope: !3815)
!3831 = !DILocation(line: 1308, column: 3, scope: !3815)
!3832 = !DILocation(line: 1308, column: 16, scope: !3815)
!3833 = !DILocation(line: 1308, column: 23, scope: !3815)
!3834 = !DILocation(line: 1308, column: 34, scope: !3815)
!3835 = !DILocation(line: 1309, column: 3, scope: !3815)
!3836 = !DILocation(line: 1309, column: 12, scope: !3815)
!3837 = !DILocation(line: 1309, column: 15, scope: !3815)
!3838 = !DILocation(line: 1309, column: 19, scope: !3815)
!3839 = !DILocation(line: 1309, column: 28, scope: !3815)
!3840 = !DILocation(line: 1309, column: 39, scope: !3815)
!3841 = !{!1497, !787, i64 0}
!3842 = !DILocation(line: 1310, column: 3, scope: !3815)
!3843 = !DILocation(line: 1310, column: 20, scope: !3815)
!3844 = !DILocation(line: 1312, column: 8, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3815, file: !2, line: 1312, column: 3)
!3846 = !DILocation(line: 1312, column: 14, scope: !3845)
!3847 = !DILocation(line: 1312, column: 7, scope: !3845)
!3848 = !DILocation(line: 1312, column: 18, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3845, file: !2, line: 1312, column: 3)
!3850 = !DILocation(line: 1312, column: 20, scope: !3849)
!3851 = !DILocation(line: 1312, column: 19, scope: !3849)
!3852 = !DILocation(line: 1312, column: 3, scope: !3845)
!3853 = !DILocation(line: 1313, column: 9, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3849, file: !2, line: 1313, column: 9)
!3855 = !DILocation(line: 1313, column: 14, scope: !3854)
!3856 = !DILocation(line: 1313, column: 9, scope: !3849)
!3857 = !DILocation(line: 1314, column: 9, scope: !3854)
!3858 = !DILocation(line: 1314, column: 7, scope: !3854)
!3859 = !DILocation(line: 1313, column: 15, scope: !3854)
!3860 = !DILocation(line: 1312, column: 29, scope: !3849)
!3861 = !DILocation(line: 1312, column: 3, scope: !3849)
!3862 = distinct !{!3862, !3852, !3863, !982}
!3863 = !DILocation(line: 1314, column: 9, scope: !3845)
!3864 = !DILocation(line: 1316, column: 7, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3815, file: !2, line: 1316, column: 7)
!3866 = !DILocation(line: 1316, column: 10, scope: !3865)
!3867 = !DILocation(line: 1316, column: 7, scope: !3815)
!3868 = !DILocation(line: 1317, column: 5, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3865, file: !2, line: 1316, column: 15)
!3870 = !DILocation(line: 1317, column: 11, scope: !3869)
!3871 = !DILocation(line: 1318, column: 5, scope: !3869)
!3872 = !DILocation(line: 1321, column: 7, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3815, file: !2, line: 1321, column: 7)
!3874 = !DILocation(line: 1321, column: 13, scope: !3873)
!3875 = !DILocation(line: 1321, column: 10, scope: !3873)
!3876 = !DILocation(line: 1321, column: 7, scope: !3815)
!3877 = !DILocation(line: 1322, column: 5, scope: !3873)
!3878 = !DILocation(line: 1324, column: 37, scope: !3815)
!3879 = !DILocation(line: 1324, column: 55, scope: !3815)
!3880 = !DILocation(line: 1324, column: 63, scope: !3815)
!3881 = !DILocation(line: 1324, column: 71, scope: !3815)
!3882 = !DILocation(line: 1324, column: 78, scope: !3815)
!3883 = !DILocation(line: 1324, column: 77, scope: !3815)
!3884 = !DILocation(line: 1324, column: 3, scope: !3815)
!3885 = !DILocation(line: 1325, column: 23, scope: !3815)
!3886 = !DILocation(line: 1325, column: 3, scope: !3815)
!3887 = !DILocation(line: 1325, column: 14, scope: !3815)
!3888 = !DILocation(line: 1325, column: 21, scope: !3815)
!3889 = !DILocation(line: 1328, column: 17, scope: !3815)
!3890 = !DILocation(line: 1328, column: 26, scope: !3815)
!3891 = !DILocation(line: 1328, column: 15, scope: !3815)
!3892 = !DILocation(line: 1329, column: 8, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3815, file: !2, line: 1329, column: 3)
!3894 = !DILocation(line: 1329, column: 7, scope: !3893)
!3895 = !DILocation(line: 1329, column: 12, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3893, file: !2, line: 1329, column: 3)
!3897 = !DILocation(line: 1329, column: 14, scope: !3896)
!3898 = !DILocation(line: 1329, column: 13, scope: !3896)
!3899 = !DILocation(line: 1329, column: 3, scope: !3893)
!3900 = !DILocation(line: 1330, column: 9, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3896, file: !2, line: 1330, column: 9)
!3902 = !DILocation(line: 1330, column: 14, scope: !3901)
!3903 = !DILocation(line: 1330, column: 18, scope: !3901)
!3904 = !DILocation(line: 1330, column: 26, scope: !3901)
!3905 = !DILocation(line: 1330, column: 23, scope: !3901)
!3906 = !DILocation(line: 1330, column: 9, scope: !3896)
!3907 = !DILocation(line: 1331, column: 19, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3901, file: !2, line: 1330, column: 39)
!3909 = !DILocation(line: 1332, column: 7, scope: !3908)
!3910 = !DILocation(line: 1329, column: 19, scope: !3896)
!3911 = !DILocation(line: 1329, column: 3, scope: !3896)
!3912 = distinct !{!3912, !3899, !3913, !982}
!3913 = !DILocation(line: 1333, column: 5, scope: !3893)
!3914 = !DILocation(line: 1334, column: 7, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3815, file: !2, line: 1334, column: 7)
!3916 = !DILocation(line: 1334, column: 19, scope: !3915)
!3917 = !DILocation(line: 1334, column: 7, scope: !3815)
!3918 = !DILocation(line: 1335, column: 5, scope: !3915)
!3919 = !DILocation(line: 1335, column: 16, scope: !3915)
!3920 = !DILocation(line: 1335, column: 21, scope: !3915)
!3921 = !{!1497, !788, i64 16}
!3922 = !DILocation(line: 1337, column: 5, scope: !3915)
!3923 = !DILocation(line: 1337, column: 16, scope: !3915)
!3924 = !DILocation(line: 1337, column: 21, scope: !3915)
!3925 = !DILocation(line: 1339, column: 3, scope: !3815)
!3926 = !DILocation(line: 1340, column: 1, scope: !3815)
!3927 = distinct !DISubprogram(name: "hwloc__distances_transform_links", scope: !2, file: !2, line: 1343, type: !3816, scopeLine: 1344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !3928)
!3928 = !{!3929, !3930, !3931, !3932, !3933}
!3929 = !DILocalVariable(name: "distances", arg: 1, scope: !3927, file: !2, line: 1343, type: !1411)
!3930 = !DILocalVariable(name: "divider", scope: !3927, file: !2, line: 1349, type: !281)
!3931 = !DILocalVariable(name: "values", scope: !3927, file: !2, line: 1349, type: !400)
!3932 = !DILocalVariable(name: "i", scope: !3927, file: !2, line: 1350, type: !134)
!3933 = !DILocalVariable(name: "nbobjs", scope: !3927, file: !2, line: 1350, type: !134)
!3934 = !DILocation(line: 1343, column: 60, scope: !3927)
!3935 = !DILocation(line: 1349, column: 3, scope: !3927)
!3936 = !DILocation(line: 1349, column: 18, scope: !3927)
!3937 = !DILocation(line: 1349, column: 28, scope: !3927)
!3938 = !DILocation(line: 1349, column: 37, scope: !3927)
!3939 = !DILocation(line: 1349, column: 48, scope: !3927)
!3940 = !DILocation(line: 1350, column: 3, scope: !3927)
!3941 = !DILocation(line: 1350, column: 12, scope: !3927)
!3942 = !DILocation(line: 1350, column: 15, scope: !3927)
!3943 = !DILocation(line: 1350, column: 24, scope: !3927)
!3944 = !DILocation(line: 1350, column: 35, scope: !3927)
!3945 = !DILocation(line: 1352, column: 9, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3927, file: !2, line: 1352, column: 7)
!3947 = !DILocation(line: 1352, column: 20, scope: !3946)
!3948 = !DILocation(line: 1352, column: 25, scope: !3946)
!3949 = !DILocation(line: 1352, column: 7, scope: !3927)
!3950 = !DILocation(line: 1353, column: 5, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3946, file: !2, line: 1352, column: 66)
!3952 = !DILocation(line: 1353, column: 11, scope: !3951)
!3953 = !DILocation(line: 1354, column: 5, scope: !3951)
!3954 = !DILocation(line: 1357, column: 8, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3927, file: !2, line: 1357, column: 3)
!3956 = !DILocation(line: 1357, column: 7, scope: !3955)
!3957 = !DILocation(line: 1357, column: 12, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3955, file: !2, line: 1357, column: 3)
!3959 = !DILocation(line: 1357, column: 14, scope: !3958)
!3960 = !DILocation(line: 1357, column: 13, scope: !3958)
!3961 = !DILocation(line: 1357, column: 3, scope: !3955)
!3962 = !DILocation(line: 1358, column: 5, scope: !3958)
!3963 = !DILocation(line: 1358, column: 12, scope: !3958)
!3964 = !DILocation(line: 1358, column: 14, scope: !3958)
!3965 = !DILocation(line: 1358, column: 13, scope: !3958)
!3966 = !DILocation(line: 1358, column: 21, scope: !3958)
!3967 = !DILocation(line: 1358, column: 20, scope: !3958)
!3968 = !DILocation(line: 1358, column: 24, scope: !3958)
!3969 = !DILocation(line: 1357, column: 23, scope: !3958)
!3970 = !DILocation(line: 1357, column: 3, scope: !3958)
!3971 = distinct !{!3971, !3961, !3972, !982}
!3972 = !DILocation(line: 1358, column: 26, scope: !3955)
!3973 = !DILocation(line: 1361, column: 11, scope: !3927)
!3974 = !DILocation(line: 1362, column: 8, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3927, file: !2, line: 1362, column: 3)
!3976 = !DILocation(line: 1362, column: 7, scope: !3975)
!3977 = !DILocation(line: 1362, column: 12, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3975, file: !2, line: 1362, column: 3)
!3979 = !DILocation(line: 1362, column: 14, scope: !3978)
!3980 = !DILocation(line: 1362, column: 21, scope: !3978)
!3981 = !DILocation(line: 1362, column: 20, scope: !3978)
!3982 = !DILocation(line: 1362, column: 13, scope: !3978)
!3983 = !DILocation(line: 1362, column: 3, scope: !3975)
!3984 = !DILocation(line: 1363, column: 9, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3978, file: !2, line: 1363, column: 9)
!3986 = !DILocation(line: 1363, column: 16, scope: !3985)
!3987 = !DILocation(line: 1363, column: 19, scope: !3985)
!3988 = !DILocation(line: 1363, column: 24, scope: !3985)
!3989 = !DILocation(line: 1363, column: 32, scope: !3985)
!3990 = !DILocation(line: 1363, column: 35, scope: !3985)
!3991 = !DILocation(line: 1363, column: 42, scope: !3985)
!3992 = !DILocation(line: 1363, column: 47, scope: !3985)
!3993 = !DILocation(line: 1363, column: 45, scope: !3985)
!3994 = !DILocation(line: 1363, column: 9, scope: !3978)
!3995 = !DILocation(line: 1364, column: 17, scope: !3985)
!3996 = !DILocation(line: 1364, column: 24, scope: !3985)
!3997 = !DILocation(line: 1364, column: 15, scope: !3985)
!3998 = !DILocation(line: 1364, column: 7, scope: !3985)
!3999 = !DILocation(line: 1363, column: 54, scope: !3985)
!4000 = !DILocation(line: 1362, column: 30, scope: !3978)
!4001 = !DILocation(line: 1362, column: 3, scope: !3978)
!4002 = distinct !{!4002, !3983, !4003, !982}
!4003 = !DILocation(line: 1364, column: 25, scope: !3975)
!4004 = !DILocation(line: 1366, column: 8, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3927, file: !2, line: 1366, column: 7)
!4006 = !DILocation(line: 1366, column: 7, scope: !3927)
!4007 = !DILocation(line: 1368, column: 5, scope: !4005)
!4008 = !DILocation(line: 1371, column: 8, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3927, file: !2, line: 1371, column: 3)
!4010 = !DILocation(line: 1371, column: 7, scope: !4009)
!4011 = !DILocation(line: 1371, column: 12, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4009, file: !2, line: 1371, column: 3)
!4013 = !DILocation(line: 1371, column: 14, scope: !4012)
!4014 = !DILocation(line: 1371, column: 21, scope: !4012)
!4015 = !DILocation(line: 1371, column: 20, scope: !4012)
!4016 = !DILocation(line: 1371, column: 13, scope: !4012)
!4017 = !DILocation(line: 1371, column: 3, scope: !4009)
!4018 = !DILocation(line: 1372, column: 9, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4012, file: !2, line: 1372, column: 9)
!4020 = !DILocation(line: 1372, column: 16, scope: !4019)
!4021 = !DILocation(line: 1372, column: 19, scope: !4019)
!4022 = !DILocation(line: 1372, column: 18, scope: !4019)
!4023 = !DILocation(line: 1372, column: 9, scope: !4012)
!4024 = !DILocation(line: 1373, column: 7, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4019, file: !2, line: 1372, column: 28)
!4026 = !DILocation(line: 1373, column: 13, scope: !4025)
!4027 = !DILocation(line: 1374, column: 7, scope: !4025)
!4028 = !DILocation(line: 1371, column: 30, scope: !4012)
!4029 = !DILocation(line: 1371, column: 3, scope: !4012)
!4030 = distinct !{!4030, !4017, !4031, !982}
!4031 = !DILocation(line: 1375, column: 5, scope: !4009)
!4032 = !DILocation(line: 1378, column: 8, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !3927, file: !2, line: 1378, column: 3)
!4034 = !DILocation(line: 1378, column: 7, scope: !4033)
!4035 = !DILocation(line: 1378, column: 12, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4033, file: !2, line: 1378, column: 3)
!4037 = !DILocation(line: 1378, column: 14, scope: !4036)
!4038 = !DILocation(line: 1378, column: 21, scope: !4036)
!4039 = !DILocation(line: 1378, column: 20, scope: !4036)
!4040 = !DILocation(line: 1378, column: 13, scope: !4036)
!4041 = !DILocation(line: 1378, column: 3, scope: !4033)
!4042 = !DILocation(line: 1379, column: 18, scope: !4036)
!4043 = !DILocation(line: 1379, column: 5, scope: !4036)
!4044 = !DILocation(line: 1379, column: 12, scope: !4036)
!4045 = !DILocation(line: 1379, column: 15, scope: !4036)
!4046 = !DILocation(line: 1378, column: 30, scope: !4036)
!4047 = !DILocation(line: 1378, column: 3, scope: !4036)
!4048 = distinct !{!4048, !4041, !4049, !982}
!4049 = !DILocation(line: 1379, column: 18, scope: !4033)
!4050 = !DILocation(line: 1381, column: 3, scope: !3927)
!4051 = !DILocation(line: 1382, column: 1, scope: !3927)
!4052 = distinct !DISubprogram(name: "hwloc__distances_transform_merge_switch_ports", scope: !2, file: !2, line: 1390, type: !1409, scopeLine: 1392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !4053)
!4053 = !{!4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063}
!4054 = !DILocalVariable(name: "topology", arg: 1, scope: !4052, file: !2, line: 1390, type: !464)
!4055 = !DILocalVariable(name: "distances", arg: 2, scope: !4052, file: !2, line: 1391, type: !1411)
!4056 = !DILocalVariable(name: "dist", scope: !4052, file: !2, line: 1393, type: !609)
!4057 = !DILocalVariable(name: "objs", scope: !4052, file: !2, line: 1394, type: !270)
!4058 = !DILocalVariable(name: "values", scope: !4052, file: !2, line: 1395, type: !400)
!4059 = !DILocalVariable(name: "first", scope: !4052, file: !2, line: 1396, type: !134)
!4060 = !DILocalVariable(name: "i", scope: !4052, file: !2, line: 1396, type: !134)
!4061 = !DILocalVariable(name: "j", scope: !4052, file: !2, line: 1396, type: !134)
!4062 = !DILocalVariable(name: "nbobjs", scope: !4052, file: !2, line: 1396, type: !134)
!4063 = !DILocalVariable(name: "k", scope: !4064, file: !2, line: 1418, type: !134)
!4064 = distinct !DILexicalBlock(scope: !4065, file: !2, line: 1416, column: 31)
!4065 = distinct !DILexicalBlock(scope: !4066, file: !2, line: 1416, column: 9)
!4066 = distinct !DILexicalBlock(scope: !4067, file: !2, line: 1415, column: 29)
!4067 = distinct !DILexicalBlock(scope: !4068, file: !2, line: 1415, column: 3)
!4068 = distinct !DILexicalBlock(scope: !4052, file: !2, line: 1415, column: 3)
!4069 = !DILocation(line: 1390, column: 64, scope: !4052)
!4070 = !DILocation(line: 1391, column: 73, scope: !4052)
!4071 = !DILocation(line: 1393, column: 3, scope: !4052)
!4072 = !DILocation(line: 1393, column: 38, scope: !4052)
!4073 = !DILocation(line: 1393, column: 83, scope: !4052)
!4074 = !DILocation(line: 1393, column: 93, scope: !4052)
!4075 = !DILocation(line: 1393, column: 45, scope: !4052)
!4076 = !DILocation(line: 1394, column: 3, scope: !4052)
!4077 = !DILocation(line: 1394, column: 16, scope: !4052)
!4078 = !DILocation(line: 1394, column: 23, scope: !4052)
!4079 = !DILocation(line: 1394, column: 34, scope: !4052)
!4080 = !DILocation(line: 1395, column: 3, scope: !4052)
!4081 = !DILocation(line: 1395, column: 19, scope: !4052)
!4082 = !DILocation(line: 1395, column: 28, scope: !4052)
!4083 = !DILocation(line: 1395, column: 39, scope: !4052)
!4084 = !DILocation(line: 1396, column: 3, scope: !4052)
!4085 = !DILocation(line: 1396, column: 12, scope: !4052)
!4086 = !DILocation(line: 1396, column: 19, scope: !4052)
!4087 = !DILocation(line: 1396, column: 22, scope: !4052)
!4088 = !DILocation(line: 1396, column: 25, scope: !4052)
!4089 = !DILocation(line: 1396, column: 34, scope: !4052)
!4090 = !DILocation(line: 1396, column: 45, scope: !4052)
!4091 = !DILocation(line: 1398, column: 14, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4052, file: !2, line: 1398, column: 7)
!4093 = !DILocation(line: 1398, column: 20, scope: !4092)
!4094 = !DILocation(line: 1398, column: 7, scope: !4092)
!4095 = !DILocation(line: 1398, column: 7, scope: !4052)
!4096 = !DILocation(line: 1399, column: 5, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4092, file: !2, line: 1398, column: 46)
!4098 = !DILocation(line: 1399, column: 11, scope: !4097)
!4099 = !DILocation(line: 1400, column: 5, scope: !4097)
!4100 = !DILocation(line: 1404, column: 9, scope: !4052)
!4101 = !DILocation(line: 1405, column: 8, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4052, file: !2, line: 1405, column: 3)
!4103 = !DILocation(line: 1405, column: 7, scope: !4102)
!4104 = !DILocation(line: 1405, column: 12, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4102, file: !2, line: 1405, column: 3)
!4106 = !DILocation(line: 1405, column: 14, scope: !4105)
!4107 = !DILocation(line: 1405, column: 13, scope: !4105)
!4108 = !DILocation(line: 1405, column: 3, scope: !4102)
!4109 = !DILocation(line: 1406, column: 21, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4105, file: !2, line: 1406, column: 9)
!4111 = !DILocation(line: 1406, column: 26, scope: !4110)
!4112 = !DILocation(line: 1406, column: 9, scope: !4110)
!4113 = !DILocation(line: 1406, column: 9, scope: !4105)
!4114 = !DILocation(line: 1407, column: 15, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4110, file: !2, line: 1406, column: 31)
!4116 = !DILocation(line: 1407, column: 13, scope: !4115)
!4117 = !DILocation(line: 1408, column: 7, scope: !4115)
!4118 = !DILocation(line: 1406, column: 28, scope: !4110)
!4119 = !DILocation(line: 1405, column: 23, scope: !4105)
!4120 = !DILocation(line: 1405, column: 3, scope: !4105)
!4121 = distinct !{!4121, !4108, !4122, !982}
!4122 = !DILocation(line: 1409, column: 5, scope: !4102)
!4123 = !DILocation(line: 1410, column: 7, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4052, file: !2, line: 1410, column: 7)
!4125 = !DILocation(line: 1410, column: 13, scope: !4124)
!4126 = !DILocation(line: 1410, column: 7, scope: !4052)
!4127 = !DILocation(line: 1411, column: 5, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4124, file: !2, line: 1410, column: 30)
!4129 = !DILocation(line: 1411, column: 11, scope: !4128)
!4130 = !DILocation(line: 1412, column: 5, scope: !4128)
!4131 = !DILocation(line: 1415, column: 9, scope: !4068)
!4132 = !DILocation(line: 1415, column: 10, scope: !4068)
!4133 = !DILocation(line: 1415, column: 8, scope: !4068)
!4134 = !DILocation(line: 1415, column: 7, scope: !4068)
!4135 = !DILocation(line: 1415, column: 14, scope: !4067)
!4136 = !DILocation(line: 1415, column: 16, scope: !4067)
!4137 = !DILocation(line: 1415, column: 15, scope: !4067)
!4138 = !DILocation(line: 1415, column: 3, scope: !4068)
!4139 = !DILocation(line: 1416, column: 21, scope: !4065)
!4140 = !DILocation(line: 1416, column: 26, scope: !4065)
!4141 = !DILocation(line: 1416, column: 9, scope: !4065)
!4142 = !DILocation(line: 1416, column: 9, scope: !4066)
!4143 = !DILocation(line: 1418, column: 7, scope: !4064)
!4144 = !DILocation(line: 1418, column: 16, scope: !4064)
!4145 = !DILocation(line: 1419, column: 12, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4064, file: !2, line: 1419, column: 7)
!4147 = !DILocation(line: 1419, column: 11, scope: !4146)
!4148 = !DILocation(line: 1419, column: 16, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4146, file: !2, line: 1419, column: 7)
!4150 = !DILocation(line: 1419, column: 18, scope: !4149)
!4151 = !DILocation(line: 1419, column: 17, scope: !4149)
!4152 = !DILocation(line: 1419, column: 7, scope: !4146)
!4153 = !DILocation(line: 1420, column: 13, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4155, file: !2, line: 1420, column: 13)
!4155 = distinct !DILexicalBlock(scope: !4149, file: !2, line: 1419, column: 31)
!4156 = !DILocation(line: 1420, column: 16, scope: !4154)
!4157 = !DILocation(line: 1420, column: 14, scope: !4154)
!4158 = !DILocation(line: 1420, column: 18, scope: !4154)
!4159 = !DILocation(line: 1420, column: 21, scope: !4154)
!4160 = !DILocation(line: 1420, column: 24, scope: !4154)
!4161 = !DILocation(line: 1420, column: 22, scope: !4154)
!4162 = !DILocation(line: 1420, column: 13, scope: !4155)
!4163 = !DILocation(line: 1421, column: 11, scope: !4154)
!4164 = !DILocation(line: 1422, column: 31, scope: !4155)
!4165 = !DILocation(line: 1422, column: 38, scope: !4155)
!4166 = !DILocation(line: 1422, column: 40, scope: !4155)
!4167 = !DILocation(line: 1422, column: 39, scope: !4155)
!4168 = !DILocation(line: 1422, column: 47, scope: !4155)
!4169 = !DILocation(line: 1422, column: 46, scope: !4155)
!4170 = !DILocation(line: 1422, column: 9, scope: !4155)
!4171 = !DILocation(line: 1422, column: 16, scope: !4155)
!4172 = !DILocation(line: 1422, column: 18, scope: !4155)
!4173 = !DILocation(line: 1422, column: 17, scope: !4155)
!4174 = !DILocation(line: 1422, column: 25, scope: !4155)
!4175 = !DILocation(line: 1422, column: 24, scope: !4155)
!4176 = !DILocation(line: 1422, column: 28, scope: !4155)
!4177 = !DILocation(line: 1423, column: 9, scope: !4155)
!4178 = !DILocation(line: 1423, column: 16, scope: !4155)
!4179 = !DILocation(line: 1423, column: 18, scope: !4155)
!4180 = !DILocation(line: 1423, column: 17, scope: !4155)
!4181 = !DILocation(line: 1423, column: 25, scope: !4155)
!4182 = !DILocation(line: 1423, column: 24, scope: !4155)
!4183 = !DILocation(line: 1423, column: 28, scope: !4155)
!4184 = !DILocation(line: 1424, column: 31, scope: !4155)
!4185 = !DILocation(line: 1424, column: 38, scope: !4155)
!4186 = !DILocation(line: 1424, column: 40, scope: !4155)
!4187 = !DILocation(line: 1424, column: 39, scope: !4155)
!4188 = !DILocation(line: 1424, column: 47, scope: !4155)
!4189 = !DILocation(line: 1424, column: 46, scope: !4155)
!4190 = !DILocation(line: 1424, column: 9, scope: !4155)
!4191 = !DILocation(line: 1424, column: 16, scope: !4155)
!4192 = !DILocation(line: 1424, column: 18, scope: !4155)
!4193 = !DILocation(line: 1424, column: 17, scope: !4155)
!4194 = !DILocation(line: 1424, column: 25, scope: !4155)
!4195 = !DILocation(line: 1424, column: 24, scope: !4155)
!4196 = !DILocation(line: 1424, column: 28, scope: !4155)
!4197 = !DILocation(line: 1425, column: 9, scope: !4155)
!4198 = !DILocation(line: 1425, column: 16, scope: !4155)
!4199 = !DILocation(line: 1425, column: 18, scope: !4155)
!4200 = !DILocation(line: 1425, column: 17, scope: !4155)
!4201 = !DILocation(line: 1425, column: 25, scope: !4155)
!4202 = !DILocation(line: 1425, column: 24, scope: !4155)
!4203 = !DILocation(line: 1425, column: 28, scope: !4155)
!4204 = !DILocation(line: 1426, column: 7, scope: !4155)
!4205 = !DILocation(line: 1419, column: 27, scope: !4149)
!4206 = !DILocation(line: 1419, column: 7, scope: !4149)
!4207 = distinct !{!4207, !4152, !4208, !982}
!4208 = !DILocation(line: 1426, column: 7, scope: !4146)
!4209 = !DILocation(line: 1427, column: 29, scope: !4064)
!4210 = !DILocation(line: 1427, column: 36, scope: !4064)
!4211 = !DILocation(line: 1427, column: 38, scope: !4064)
!4212 = !DILocation(line: 1427, column: 37, scope: !4064)
!4213 = !DILocation(line: 1427, column: 45, scope: !4064)
!4214 = !DILocation(line: 1427, column: 44, scope: !4064)
!4215 = !DILocation(line: 1427, column: 7, scope: !4064)
!4216 = !DILocation(line: 1427, column: 14, scope: !4064)
!4217 = !DILocation(line: 1427, column: 16, scope: !4064)
!4218 = !DILocation(line: 1427, column: 15, scope: !4064)
!4219 = !DILocation(line: 1427, column: 23, scope: !4064)
!4220 = !DILocation(line: 1427, column: 22, scope: !4064)
!4221 = !DILocation(line: 1427, column: 26, scope: !4064)
!4222 = !DILocation(line: 1428, column: 7, scope: !4064)
!4223 = !DILocation(line: 1428, column: 14, scope: !4064)
!4224 = !DILocation(line: 1428, column: 16, scope: !4064)
!4225 = !DILocation(line: 1428, column: 15, scope: !4064)
!4226 = !DILocation(line: 1428, column: 23, scope: !4064)
!4227 = !DILocation(line: 1428, column: 22, scope: !4064)
!4228 = !DILocation(line: 1428, column: 26, scope: !4064)
!4229 = !DILocation(line: 1429, column: 5, scope: !4065)
!4230 = !DILocation(line: 1429, column: 5, scope: !4064)
!4231 = !DILocation(line: 1431, column: 5, scope: !4066)
!4232 = !DILocation(line: 1431, column: 10, scope: !4066)
!4233 = !DILocation(line: 1431, column: 13, scope: !4066)
!4234 = !DILocation(line: 1432, column: 3, scope: !4066)
!4235 = !DILocation(line: 1415, column: 25, scope: !4067)
!4236 = !DILocation(line: 1415, column: 3, scope: !4067)
!4237 = distinct !{!4237, !4138, !4238, !982}
!4238 = !DILocation(line: 1432, column: 3, scope: !4068)
!4239 = !DILocation(line: 1434, column: 3, scope: !4052)
!4240 = !DILocation(line: 1435, column: 1, scope: !4052)
!4241 = distinct !DISubprogram(name: "hwloc__distances_transform_transitive_closure", scope: !2, file: !2, line: 1438, type: !1409, scopeLine: 1440, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !4242)
!4242 = !{!4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4256}
!4243 = !DILocalVariable(name: "topology", arg: 1, scope: !4241, file: !2, line: 1438, type: !464)
!4244 = !DILocalVariable(name: "distances", arg: 2, scope: !4241, file: !2, line: 1439, type: !1411)
!4245 = !DILocalVariable(name: "dist", scope: !4241, file: !2, line: 1441, type: !609)
!4246 = !DILocalVariable(name: "objs", scope: !4241, file: !2, line: 1442, type: !270)
!4247 = !DILocalVariable(name: "values", scope: !4241, file: !2, line: 1443, type: !400)
!4248 = !DILocalVariable(name: "nbobjs", scope: !4241, file: !2, line: 1444, type: !134)
!4249 = !DILocalVariable(name: "i", scope: !4241, file: !2, line: 1445, type: !134)
!4250 = !DILocalVariable(name: "j", scope: !4241, file: !2, line: 1445, type: !134)
!4251 = !DILocalVariable(name: "k", scope: !4241, file: !2, line: 1445, type: !134)
!4252 = !DILocalVariable(name: "bw_i2sw", scope: !4253, file: !2, line: 1453, type: !281)
!4253 = distinct !DILexicalBlock(scope: !4254, file: !2, line: 1452, column: 27)
!4254 = distinct !DILexicalBlock(scope: !4255, file: !2, line: 1452, column: 3)
!4255 = distinct !DILexicalBlock(scope: !4241, file: !2, line: 1452, column: 3)
!4256 = !DILocalVariable(name: "bw_sw2j", scope: !4257, file: !2, line: 1462, type: !281)
!4257 = distinct !DILexicalBlock(scope: !4258, file: !2, line: 1461, column: 29)
!4258 = distinct !DILexicalBlock(scope: !4259, file: !2, line: 1461, column: 5)
!4259 = distinct !DILexicalBlock(scope: !4253, file: !2, line: 1461, column: 5)
!4260 = !DILocation(line: 1438, column: 64, scope: !4241)
!4261 = !DILocation(line: 1439, column: 73, scope: !4241)
!4262 = !DILocation(line: 1441, column: 3, scope: !4241)
!4263 = !DILocation(line: 1441, column: 38, scope: !4241)
!4264 = !DILocation(line: 1441, column: 83, scope: !4241)
!4265 = !DILocation(line: 1441, column: 93, scope: !4241)
!4266 = !DILocation(line: 1441, column: 45, scope: !4241)
!4267 = !DILocation(line: 1442, column: 3, scope: !4241)
!4268 = !DILocation(line: 1442, column: 16, scope: !4241)
!4269 = !DILocation(line: 1442, column: 23, scope: !4241)
!4270 = !DILocation(line: 1442, column: 34, scope: !4241)
!4271 = !DILocation(line: 1443, column: 3, scope: !4241)
!4272 = !DILocation(line: 1443, column: 19, scope: !4241)
!4273 = !DILocation(line: 1443, column: 28, scope: !4241)
!4274 = !DILocation(line: 1443, column: 39, scope: !4241)
!4275 = !DILocation(line: 1444, column: 3, scope: !4241)
!4276 = !DILocation(line: 1444, column: 12, scope: !4241)
!4277 = !DILocation(line: 1444, column: 21, scope: !4241)
!4278 = !DILocation(line: 1444, column: 32, scope: !4241)
!4279 = !DILocation(line: 1445, column: 3, scope: !4241)
!4280 = !DILocation(line: 1445, column: 12, scope: !4241)
!4281 = !DILocation(line: 1445, column: 15, scope: !4241)
!4282 = !DILocation(line: 1445, column: 18, scope: !4241)
!4283 = !DILocation(line: 1447, column: 14, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4241, file: !2, line: 1447, column: 7)
!4285 = !DILocation(line: 1447, column: 20, scope: !4284)
!4286 = !DILocation(line: 1447, column: 7, scope: !4284)
!4287 = !DILocation(line: 1447, column: 7, scope: !4241)
!4288 = !DILocation(line: 1448, column: 5, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4284, file: !2, line: 1447, column: 46)
!4290 = !DILocation(line: 1448, column: 11, scope: !4289)
!4291 = !DILocation(line: 1449, column: 5, scope: !4289)
!4292 = !DILocation(line: 1452, column: 8, scope: !4255)
!4293 = !DILocation(line: 1452, column: 7, scope: !4255)
!4294 = !DILocation(line: 1452, column: 12, scope: !4254)
!4295 = !DILocation(line: 1452, column: 14, scope: !4254)
!4296 = !DILocation(line: 1452, column: 13, scope: !4254)
!4297 = !DILocation(line: 1452, column: 3, scope: !4255)
!4298 = !DILocation(line: 1453, column: 5, scope: !4253)
!4299 = !DILocation(line: 1453, column: 20, scope: !4253)
!4300 = !DILocation(line: 1454, column: 21, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4253, file: !2, line: 1454, column: 9)
!4302 = !DILocation(line: 1454, column: 26, scope: !4301)
!4303 = !DILocation(line: 1454, column: 9, scope: !4301)
!4304 = !DILocation(line: 1454, column: 9, scope: !4253)
!4305 = !DILocation(line: 1455, column: 7, scope: !4301)
!4306 = !DILocation(line: 1457, column: 10, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4253, file: !2, line: 1457, column: 5)
!4308 = !DILocation(line: 1457, column: 9, scope: !4307)
!4309 = !DILocation(line: 1457, column: 14, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4307, file: !2, line: 1457, column: 5)
!4311 = !DILocation(line: 1457, column: 16, scope: !4310)
!4312 = !DILocation(line: 1457, column: 15, scope: !4310)
!4313 = !DILocation(line: 1457, column: 5, scope: !4307)
!4314 = !DILocation(line: 1458, column: 23, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4310, file: !2, line: 1458, column: 11)
!4316 = !DILocation(line: 1458, column: 28, scope: !4315)
!4317 = !DILocation(line: 1458, column: 11, scope: !4315)
!4318 = !DILocation(line: 1458, column: 11, scope: !4310)
!4319 = !DILocation(line: 1459, column: 20, scope: !4315)
!4320 = !DILocation(line: 1459, column: 27, scope: !4315)
!4321 = !DILocation(line: 1459, column: 29, scope: !4315)
!4322 = !DILocation(line: 1459, column: 28, scope: !4315)
!4323 = !DILocation(line: 1459, column: 36, scope: !4315)
!4324 = !DILocation(line: 1459, column: 35, scope: !4315)
!4325 = !DILocation(line: 1459, column: 17, scope: !4315)
!4326 = !DILocation(line: 1459, column: 9, scope: !4315)
!4327 = !DILocation(line: 1458, column: 30, scope: !4315)
!4328 = !DILocation(line: 1457, column: 25, scope: !4310)
!4329 = !DILocation(line: 1457, column: 5, scope: !4310)
!4330 = distinct !{!4330, !4313, !4331, !982}
!4331 = !DILocation(line: 1459, column: 37, scope: !4307)
!4332 = !DILocation(line: 1461, column: 10, scope: !4259)
!4333 = !DILocation(line: 1461, column: 9, scope: !4259)
!4334 = !DILocation(line: 1461, column: 14, scope: !4258)
!4335 = !DILocation(line: 1461, column: 16, scope: !4258)
!4336 = !DILocation(line: 1461, column: 15, scope: !4258)
!4337 = !DILocation(line: 1461, column: 5, scope: !4259)
!4338 = !DILocation(line: 1462, column: 7, scope: !4257)
!4339 = !DILocation(line: 1462, column: 22, scope: !4257)
!4340 = !DILocation(line: 1463, column: 11, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4257, file: !2, line: 1463, column: 11)
!4342 = !DILocation(line: 1463, column: 16, scope: !4341)
!4343 = !DILocation(line: 1463, column: 13, scope: !4341)
!4344 = !DILocation(line: 1463, column: 18, scope: !4341)
!4345 = !DILocation(line: 1463, column: 33, scope: !4341)
!4346 = !DILocation(line: 1463, column: 38, scope: !4341)
!4347 = !DILocation(line: 1463, column: 21, scope: !4341)
!4348 = !DILocation(line: 1463, column: 11, scope: !4257)
!4349 = !DILocation(line: 1464, column: 9, scope: !4341)
!4350 = !DILocation(line: 1466, column: 12, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4257, file: !2, line: 1466, column: 7)
!4352 = !DILocation(line: 1466, column: 11, scope: !4351)
!4353 = !DILocation(line: 1466, column: 16, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4351, file: !2, line: 1466, column: 7)
!4355 = !DILocation(line: 1466, column: 18, scope: !4354)
!4356 = !DILocation(line: 1466, column: 17, scope: !4354)
!4357 = !DILocation(line: 1466, column: 7, scope: !4351)
!4358 = !DILocation(line: 1467, column: 25, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4354, file: !2, line: 1467, column: 13)
!4360 = !DILocation(line: 1467, column: 30, scope: !4359)
!4361 = !DILocation(line: 1467, column: 13, scope: !4359)
!4362 = !DILocation(line: 1467, column: 13, scope: !4354)
!4363 = !DILocation(line: 1468, column: 22, scope: !4359)
!4364 = !DILocation(line: 1468, column: 29, scope: !4359)
!4365 = !DILocation(line: 1468, column: 31, scope: !4359)
!4366 = !DILocation(line: 1468, column: 30, scope: !4359)
!4367 = !DILocation(line: 1468, column: 38, scope: !4359)
!4368 = !DILocation(line: 1468, column: 37, scope: !4359)
!4369 = !DILocation(line: 1468, column: 19, scope: !4359)
!4370 = !DILocation(line: 1468, column: 11, scope: !4359)
!4371 = !DILocation(line: 1467, column: 32, scope: !4359)
!4372 = !DILocation(line: 1466, column: 27, scope: !4354)
!4373 = !DILocation(line: 1466, column: 7, scope: !4354)
!4374 = distinct !{!4374, !4357, !4375, !982}
!4375 = !DILocation(line: 1468, column: 39, scope: !4351)
!4376 = !DILocation(line: 1471, column: 28, scope: !4257)
!4377 = !DILocation(line: 1471, column: 38, scope: !4257)
!4378 = !DILocation(line: 1471, column: 36, scope: !4257)
!4379 = !DILocation(line: 1471, column: 48, scope: !4257)
!4380 = !DILocation(line: 1471, column: 58, scope: !4257)
!4381 = !DILocation(line: 1471, column: 7, scope: !4257)
!4382 = !DILocation(line: 1471, column: 14, scope: !4257)
!4383 = !DILocation(line: 1471, column: 16, scope: !4257)
!4384 = !DILocation(line: 1471, column: 15, scope: !4257)
!4385 = !DILocation(line: 1471, column: 23, scope: !4257)
!4386 = !DILocation(line: 1471, column: 22, scope: !4257)
!4387 = !DILocation(line: 1471, column: 26, scope: !4257)
!4388 = !DILocation(line: 1472, column: 5, scope: !4258)
!4389 = !DILocation(line: 1472, column: 5, scope: !4257)
!4390 = !DILocation(line: 1461, column: 25, scope: !4258)
!4391 = !DILocation(line: 1461, column: 5, scope: !4258)
!4392 = distinct !{!4392, !4337, !4393, !982}
!4393 = !DILocation(line: 1472, column: 5, scope: !4259)
!4394 = !DILocation(line: 1473, column: 3, scope: !4254)
!4395 = !DILocation(line: 1473, column: 3, scope: !4253)
!4396 = !DILocation(line: 1452, column: 23, scope: !4254)
!4397 = !DILocation(line: 1452, column: 3, scope: !4254)
!4398 = distinct !{!4398, !4297, !4399, !982}
!4399 = !DILocation(line: 1473, column: 3, scope: !4255)
!4400 = !DILocation(line: 1475, column: 3, scope: !4241)
!4401 = !DILocation(line: 1476, column: 1, scope: !4241)
!4402 = !DISubprogram(name: "strtol", scope: !919, file: !919, line: 177, type: !4403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{!2197, !2222, !4405, !181}
!4405 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !403)
!4406 = !DISubprogram(name: "strtod", scope: !919, file: !919, line: 118, type: !4407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!947, !2222, !4405}
!4409 = distinct !DISubprogram(name: "hwloc_tma_malloc", scope: !418, file: !418, line: 500, type: !740, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !4410)
!4410 = !{!4411, !4412}
!4411 = !DILocalVariable(name: "tma", arg: 1, scope: !4409, file: !418, line: 500, type: !735)
!4412 = !DILocalVariable(name: "size", arg: 2, scope: !4409, file: !418, line: 501, type: !445)
!4413 = !DILocation(line: 500, column: 36, scope: !4409)
!4414 = !DILocation(line: 501, column: 11, scope: !4409)
!4415 = !DILocation(line: 503, column: 7, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4409, file: !418, line: 503, column: 7)
!4417 = !DILocation(line: 503, column: 7, scope: !4409)
!4418 = !DILocation(line: 504, column: 12, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4416, file: !418, line: 503, column: 12)
!4420 = !DILocation(line: 504, column: 17, scope: !4419)
!4421 = !{!1118, !778, i64 0}
!4422 = !DILocation(line: 504, column: 24, scope: !4419)
!4423 = !DILocation(line: 504, column: 29, scope: !4419)
!4424 = !DILocation(line: 504, column: 5, scope: !4419)
!4425 = !DILocation(line: 506, column: 19, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4416, file: !418, line: 505, column: 10)
!4427 = !DILocation(line: 506, column: 12, scope: !4426)
!4428 = !DILocation(line: 506, column: 5, scope: !4426)
!4429 = !DILocation(line: 508, column: 1, scope: !4409)
!4430 = distinct !DISubprogram(name: "hwloc_tma_strdup", scope: !418, file: !418, line: 521, type: !4431, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !4433)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!277, !735, !257}
!4433 = !{!4434, !4435, !4436, !4437}
!4434 = !DILocalVariable(name: "tma", arg: 1, scope: !4430, file: !418, line: 521, type: !735)
!4435 = !DILocalVariable(name: "src", arg: 2, scope: !4430, file: !418, line: 522, type: !257)
!4436 = !DILocalVariable(name: "len", scope: !4430, file: !418, line: 524, type: !445)
!4437 = !DILocalVariable(name: "ptr", scope: !4430, file: !418, line: 525, type: !277)
!4438 = !DILocation(line: 521, column: 36, scope: !4430)
!4439 = !DILocation(line: 522, column: 16, scope: !4430)
!4440 = !DILocation(line: 524, column: 3, scope: !4430)
!4441 = !DILocation(line: 524, column: 10, scope: !4430)
!4442 = !DILocation(line: 524, column: 23, scope: !4430)
!4443 = !DILocation(line: 524, column: 16, scope: !4430)
!4444 = !DILocation(line: 525, column: 3, scope: !4430)
!4445 = !DILocation(line: 525, column: 9, scope: !4430)
!4446 = !DILocation(line: 525, column: 32, scope: !4430)
!4447 = !DILocation(line: 525, column: 37, scope: !4430)
!4448 = !DILocation(line: 525, column: 40, scope: !4430)
!4449 = !DILocation(line: 525, column: 15, scope: !4430)
!4450 = !DILocation(line: 526, column: 7, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4430, file: !418, line: 526, column: 7)
!4452 = !DILocation(line: 526, column: 7, scope: !4430)
!4453 = !DILocation(line: 527, column: 12, scope: !4451)
!4454 = !DILocation(line: 527, column: 17, scope: !4451)
!4455 = !DILocation(line: 527, column: 22, scope: !4451)
!4456 = !DILocation(line: 527, column: 25, scope: !4451)
!4457 = !DILocation(line: 527, column: 5, scope: !4451)
!4458 = !DILocation(line: 528, column: 10, scope: !4430)
!4459 = !DILocation(line: 529, column: 1, scope: !4430)
!4460 = !DILocation(line: 528, column: 3, scope: !4430)
!4461 = distinct !DISubprogram(name: "hwloc_tma_calloc", scope: !418, file: !418, line: 511, type: !740, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !4462)
!4462 = !{!4463, !4464, !4465}
!4463 = !DILocalVariable(name: "tma", arg: 1, scope: !4461, file: !418, line: 511, type: !735)
!4464 = !DILocalVariable(name: "size", arg: 2, scope: !4461, file: !418, line: 512, type: !445)
!4465 = !DILocalVariable(name: "ptr", scope: !4461, file: !418, line: 514, type: !277)
!4466 = !DILocation(line: 511, column: 36, scope: !4461)
!4467 = !DILocation(line: 512, column: 11, scope: !4461)
!4468 = !DILocation(line: 514, column: 3, scope: !4461)
!4469 = !DILocation(line: 514, column: 9, scope: !4461)
!4470 = !DILocation(line: 514, column: 32, scope: !4461)
!4471 = !DILocation(line: 514, column: 37, scope: !4461)
!4472 = !DILocation(line: 514, column: 15, scope: !4461)
!4473 = !DILocation(line: 515, column: 7, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4461, file: !418, line: 515, column: 7)
!4475 = !DILocation(line: 515, column: 7, scope: !4461)
!4476 = !DILocation(line: 516, column: 12, scope: !4474)
!4477 = !DILocation(line: 516, column: 20, scope: !4474)
!4478 = !DILocation(line: 516, column: 5, scope: !4474)
!4479 = !DILocation(line: 517, column: 10, scope: !4461)
!4480 = !DILocation(line: 518, column: 1, scope: !4461)
!4481 = !DILocation(line: 517, column: 3, scope: !4461)
!4482 = !DISubprogram(name: "strlen", scope: !940, file: !940, line: 407, type: !4483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!287, !257}
!4485 = distinct !DISubprogram(name: "hwloc_get_pu_obj_by_os_index", scope: !4486, file: !4486, line: 705, type: !4487, scopeLine: 706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !4489)
!4486 = !DIFile(filename: "include/hwloc/helper.h", directory: "/local-ssd/hwloc-zu2rei3kjykcqla7tvon4gcf6srurf7q-build/aidengro/spack-stage-hwloc-2.9.1-zu2rei3kjykcqla7tvon4gcf6srurf7q/spack-src", checksumkind: CSK_MD5, checksum: "d8cdd99272ba277ff24a5135e1084e13")
!4487 = !DISubroutineType(types: !4488)
!4488 = !{!271, !464, !134}
!4489 = !{!4490, !4491, !4492}
!4490 = !DILocalVariable(name: "topology", arg: 1, scope: !4485, file: !4486, line: 705, type: !464)
!4491 = !DILocalVariable(name: "os_index", arg: 2, scope: !4485, file: !4486, line: 705, type: !134)
!4492 = !DILocalVariable(name: "obj", scope: !4485, file: !4486, line: 707, type: !271)
!4493 = !DILocation(line: 705, column: 47, scope: !4485)
!4494 = !DILocation(line: 705, column: 66, scope: !4485)
!4495 = !DILocation(line: 707, column: 3, scope: !4485)
!4496 = !DILocation(line: 707, column: 15, scope: !4485)
!4497 = !DILocation(line: 708, column: 3, scope: !4485)
!4498 = !DILocation(line: 708, column: 44, scope: !4485)
!4499 = !DILocation(line: 708, column: 68, scope: !4485)
!4500 = !DILocation(line: 708, column: 17, scope: !4485)
!4501 = !DILocation(line: 708, column: 15, scope: !4485)
!4502 = !DILocation(line: 708, column: 74, scope: !4485)
!4503 = !DILocation(line: 709, column: 9, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4485, file: !4486, line: 709, column: 9)
!4505 = !DILocation(line: 709, column: 14, scope: !4504)
!4506 = !DILocation(line: 709, column: 26, scope: !4504)
!4507 = !DILocation(line: 709, column: 23, scope: !4504)
!4508 = !DILocation(line: 709, column: 9, scope: !4485)
!4509 = !DILocation(line: 710, column: 14, scope: !4504)
!4510 = !DILocation(line: 710, column: 7, scope: !4504)
!4511 = distinct !{!4511, !4497, !4512, !982}
!4512 = !DILocation(line: 710, column: 14, scope: !4485)
!4513 = !DILocation(line: 711, column: 3, scope: !4485)
!4514 = !DILocation(line: 712, column: 1, scope: !4485)
!4515 = distinct !DISubprogram(name: "hwloc_get_numanode_obj_by_os_index", scope: !4486, file: !4486, line: 726, type: !4487, scopeLine: 727, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !4516)
!4516 = !{!4517, !4518, !4519}
!4517 = !DILocalVariable(name: "topology", arg: 1, scope: !4515, file: !4486, line: 726, type: !464)
!4518 = !DILocalVariable(name: "os_index", arg: 2, scope: !4515, file: !4486, line: 726, type: !134)
!4519 = !DILocalVariable(name: "obj", scope: !4515, file: !4486, line: 728, type: !271)
!4520 = !DILocation(line: 726, column: 53, scope: !4515)
!4521 = !DILocation(line: 726, column: 72, scope: !4515)
!4522 = !DILocation(line: 728, column: 3, scope: !4515)
!4523 = !DILocation(line: 728, column: 15, scope: !4515)
!4524 = !DILocation(line: 729, column: 3, scope: !4515)
!4525 = !DILocation(line: 729, column: 44, scope: !4515)
!4526 = !DILocation(line: 729, column: 74, scope: !4515)
!4527 = !DILocation(line: 729, column: 17, scope: !4515)
!4528 = !DILocation(line: 729, column: 15, scope: !4515)
!4529 = !DILocation(line: 729, column: 80, scope: !4515)
!4530 = !DILocation(line: 730, column: 9, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4515, file: !4486, line: 730, column: 9)
!4532 = !DILocation(line: 730, column: 14, scope: !4531)
!4533 = !DILocation(line: 730, column: 26, scope: !4531)
!4534 = !DILocation(line: 730, column: 23, scope: !4531)
!4535 = !DILocation(line: 730, column: 9, scope: !4515)
!4536 = !DILocation(line: 731, column: 14, scope: !4531)
!4537 = !DILocation(line: 731, column: 7, scope: !4531)
!4538 = distinct !{!4538, !4524, !4539, !982}
!4539 = !DILocation(line: 731, column: 14, scope: !4515)
!4540 = !DILocation(line: 732, column: 3, scope: !4515)
!4541 = !DILocation(line: 733, column: 1, scope: !4515)
!4542 = !DISubprogram(name: "abort", scope: !919, file: !919, line: 598, type: !4543, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{null}
!4545 = !DISubprogram(name: "hwloc_get_obj_by_type_and_gp_index", scope: !418, file: !418, line: 303, type: !4546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!271, !464, !260, !283}
!4548 = distinct !DISubprogram(name: "hwloc_get_next_obj_by_type", scope: !4549, file: !4549, line: 95, type: !4550, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !4552)
!4549 = !DIFile(filename: "include/hwloc/inlines.h", directory: "/local-ssd/hwloc-zu2rei3kjykcqla7tvon4gcf6srurf7q-build/aidengro/spack-stage-hwloc-2.9.1-zu2rei3kjykcqla7tvon4gcf6srurf7q/spack-src", checksumkind: CSK_MD5, checksum: "c5c0d234b4f53cfc5765c6cd1e0636f8")
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!271, !464, !260, !271}
!4552 = !{!4553, !4554, !4555, !4556}
!4553 = !DILocalVariable(name: "topology", arg: 1, scope: !4548, file: !4549, line: 95, type: !464)
!4554 = !DILocalVariable(name: "type", arg: 2, scope: !4548, file: !4549, line: 95, type: !260)
!4555 = !DILocalVariable(name: "prev", arg: 3, scope: !4548, file: !4549, line: 96, type: !271)
!4556 = !DILocalVariable(name: "depth", scope: !4548, file: !4549, line: 98, type: !181)
!4557 = !DILocation(line: 95, column: 46, scope: !4548)
!4558 = !DILocation(line: 95, column: 73, scope: !4548)
!4559 = !DILocation(line: 96, column: 20, scope: !4548)
!4560 = !DILocation(line: 98, column: 3, scope: !4548)
!4561 = !DILocation(line: 98, column: 7, scope: !4548)
!4562 = !DILocation(line: 98, column: 36, scope: !4548)
!4563 = !DILocation(line: 98, column: 46, scope: !4548)
!4564 = !DILocation(line: 98, column: 15, scope: !4548)
!4565 = !DILocation(line: 99, column: 7, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4548, file: !4549, line: 99, column: 7)
!4567 = !DILocation(line: 99, column: 13, scope: !4566)
!4568 = !DILocation(line: 99, column: 41, scope: !4566)
!4569 = !DILocation(line: 99, column: 44, scope: !4566)
!4570 = !DILocation(line: 99, column: 50, scope: !4566)
!4571 = !DILocation(line: 99, column: 7, scope: !4548)
!4572 = !DILocation(line: 100, column: 5, scope: !4566)
!4573 = !DILocation(line: 101, column: 39, scope: !4548)
!4574 = !DILocation(line: 101, column: 49, scope: !4548)
!4575 = !DILocation(line: 101, column: 56, scope: !4548)
!4576 = !DILocation(line: 101, column: 10, scope: !4548)
!4577 = !DILocation(line: 101, column: 3, scope: !4548)
!4578 = !DILocation(line: 102, column: 1, scope: !4548)
!4579 = !DISubprogram(name: "hwloc_get_type_depth", scope: !133, file: !133, line: 819, type: !4580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!181, !464, !260}
!4582 = distinct !DISubprogram(name: "hwloc_get_next_obj_by_depth", scope: !4549, file: !4549, line: 85, type: !4583, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !4585)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!271, !464, !181, !271}
!4585 = !{!4586, !4587, !4588}
!4586 = !DILocalVariable(name: "topology", arg: 1, scope: !4582, file: !4549, line: 85, type: !464)
!4587 = !DILocalVariable(name: "depth", arg: 2, scope: !4582, file: !4549, line: 85, type: !181)
!4588 = !DILocalVariable(name: "prev", arg: 3, scope: !4582, file: !4549, line: 85, type: !271)
!4589 = !DILocation(line: 85, column: 47, scope: !4582)
!4590 = !DILocation(line: 85, column: 61, scope: !4582)
!4591 = !DILocation(line: 85, column: 80, scope: !4582)
!4592 = !DILocation(line: 87, column: 8, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4582, file: !4549, line: 87, column: 7)
!4594 = !DILocation(line: 87, column: 7, scope: !4582)
!4595 = !DILocation(line: 88, column: 36, scope: !4593)
!4596 = !DILocation(line: 88, column: 46, scope: !4593)
!4597 = !DILocation(line: 88, column: 12, scope: !4593)
!4598 = !DILocation(line: 88, column: 5, scope: !4593)
!4599 = !DILocation(line: 89, column: 7, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4582, file: !4549, line: 89, column: 7)
!4601 = !DILocation(line: 89, column: 13, scope: !4600)
!4602 = !{!1757, !787, i64 48}
!4603 = !DILocation(line: 89, column: 22, scope: !4600)
!4604 = !DILocation(line: 89, column: 19, scope: !4600)
!4605 = !DILocation(line: 89, column: 7, scope: !4582)
!4606 = !DILocation(line: 90, column: 5, scope: !4600)
!4607 = !DILocation(line: 91, column: 10, scope: !4582)
!4608 = !DILocation(line: 91, column: 16, scope: !4582)
!4609 = !{!1757, !778, i64 56}
!4610 = !DILocation(line: 91, column: 3, scope: !4582)
!4611 = !DILocation(line: 92, column: 1, scope: !4582)
!4612 = !DISubprogram(name: "hwloc_get_obj_by_depth", scope: !133, file: !133, line: 914, type: !4613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!271, !464, !181, !134}
!4615 = distinct !DISubprogram(name: "hwloc_distances_get_one", scope: !2, file: !2, line: 895, type: !4616, scopeLine: 897, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !4618)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!1411, !464, !609}
!4618 = !{!4619, !4620, !4621, !4622, !4623, !4624, !4625}
!4619 = !DILocalVariable(name: "topology", arg: 1, scope: !4615, file: !2, line: 895, type: !464)
!4620 = !DILocalVariable(name: "dist", arg: 2, scope: !4615, file: !2, line: 896, type: !609)
!4621 = !DILocalVariable(name: "cont", scope: !4615, file: !2, line: 898, type: !261)
!4622 = !DILocalVariable(name: "distances", scope: !4615, file: !2, line: 899, type: !1411)
!4623 = !DILocalVariable(name: "nbobjs", scope: !4615, file: !2, line: 900, type: !134)
!4624 = !DILabel(scope: !4615, name: "out_with_objs", file: !2, line: 924)
!4625 = !DILabel(scope: !4615, name: "out", file: !2, line: 926)
!4626 = !DILocation(line: 895, column: 42, scope: !4615)
!4627 = !DILocation(line: 896, column: 39, scope: !4615)
!4628 = !DILocation(line: 898, column: 3, scope: !4615)
!4629 = !DILocation(line: 898, column: 39, scope: !4615)
!4630 = !DILocation(line: 899, column: 3, scope: !4615)
!4631 = !DILocation(line: 899, column: 29, scope: !4615)
!4632 = !DILocation(line: 900, column: 3, scope: !4615)
!4633 = !DILocation(line: 900, column: 12, scope: !4615)
!4634 = !DILocation(line: 902, column: 10, scope: !4615)
!4635 = !DILocation(line: 902, column: 8, scope: !4615)
!4636 = !DILocation(line: 903, column: 8, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4615, file: !2, line: 903, column: 7)
!4638 = !DILocation(line: 903, column: 7, scope: !4615)
!4639 = !DILocation(line: 904, column: 5, scope: !4637)
!4640 = !DILocation(line: 905, column: 16, scope: !4615)
!4641 = !DILocation(line: 905, column: 22, scope: !4615)
!4642 = !DILocation(line: 905, column: 13, scope: !4615)
!4643 = !DILocation(line: 907, column: 32, scope: !4615)
!4644 = !DILocation(line: 907, column: 38, scope: !4615)
!4645 = !DILocation(line: 907, column: 12, scope: !4615)
!4646 = !DILocation(line: 907, column: 23, scope: !4615)
!4647 = !DILocation(line: 907, column: 30, scope: !4615)
!4648 = !DILocation(line: 907, column: 10, scope: !4615)
!4649 = !DILocation(line: 909, column: 28, scope: !4615)
!4650 = !DILocation(line: 909, column: 35, scope: !4615)
!4651 = !DILocation(line: 909, column: 21, scope: !4615)
!4652 = !DILocation(line: 909, column: 3, scope: !4615)
!4653 = !DILocation(line: 909, column: 14, scope: !4615)
!4654 = !DILocation(line: 909, column: 19, scope: !4615)
!4655 = !DILocation(line: 910, column: 8, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4615, file: !2, line: 910, column: 7)
!4657 = !DILocation(line: 910, column: 19, scope: !4656)
!4658 = !DILocation(line: 910, column: 7, scope: !4615)
!4659 = !DILocation(line: 911, column: 5, scope: !4656)
!4660 = !DILocation(line: 912, column: 10, scope: !4615)
!4661 = !DILocation(line: 912, column: 21, scope: !4615)
!4662 = !DILocation(line: 912, column: 27, scope: !4615)
!4663 = !DILocation(line: 912, column: 33, scope: !4615)
!4664 = !DILocation(line: 912, column: 39, scope: !4615)
!4665 = !DILocation(line: 912, column: 46, scope: !4615)
!4666 = !DILocation(line: 912, column: 3, scope: !4615)
!4667 = !DILocation(line: 914, column: 30, scope: !4615)
!4668 = !DILocation(line: 914, column: 39, scope: !4615)
!4669 = !DILocation(line: 914, column: 37, scope: !4615)
!4670 = !DILocation(line: 914, column: 46, scope: !4615)
!4671 = !DILocation(line: 914, column: 23, scope: !4615)
!4672 = !DILocation(line: 914, column: 3, scope: !4615)
!4673 = !DILocation(line: 914, column: 14, scope: !4615)
!4674 = !DILocation(line: 914, column: 21, scope: !4615)
!4675 = !DILocation(line: 915, column: 8, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4615, file: !2, line: 915, column: 7)
!4677 = !DILocation(line: 915, column: 19, scope: !4676)
!4678 = !DILocation(line: 915, column: 7, scope: !4615)
!4679 = !DILocation(line: 916, column: 5, scope: !4676)
!4680 = !DILocation(line: 917, column: 10, scope: !4615)
!4681 = !DILocation(line: 917, column: 21, scope: !4615)
!4682 = !DILocation(line: 917, column: 29, scope: !4615)
!4683 = !DILocation(line: 917, column: 35, scope: !4615)
!4684 = !DILocation(line: 917, column: 43, scope: !4615)
!4685 = !DILocation(line: 917, column: 50, scope: !4615)
!4686 = !DILocation(line: 917, column: 49, scope: !4615)
!4687 = !DILocation(line: 917, column: 56, scope: !4615)
!4688 = !DILocation(line: 917, column: 3, scope: !4615)
!4689 = !DILocation(line: 919, column: 21, scope: !4615)
!4690 = !DILocation(line: 919, column: 27, scope: !4615)
!4691 = !DILocation(line: 919, column: 3, scope: !4615)
!4692 = !DILocation(line: 919, column: 14, scope: !4615)
!4693 = !DILocation(line: 919, column: 19, scope: !4615)
!4694 = !DILocation(line: 921, column: 14, scope: !4615)
!4695 = !DILocation(line: 921, column: 20, scope: !4615)
!4696 = !DILocation(line: 921, column: 3, scope: !4615)
!4697 = !DILocation(line: 921, column: 9, scope: !4615)
!4698 = !DILocation(line: 921, column: 12, scope: !4615)
!4699 = !DILocation(line: 922, column: 10, scope: !4615)
!4700 = !DILocation(line: 922, column: 3, scope: !4615)
!4701 = !DILocation(line: 924, column: 2, scope: !4615)
!4702 = !DILocation(line: 925, column: 8, scope: !4615)
!4703 = !DILocation(line: 925, column: 19, scope: !4615)
!4704 = !DILocation(line: 925, column: 3, scope: !4615)
!4705 = !DILocation(line: 926, column: 2, scope: !4615)
!4706 = !DILocation(line: 927, column: 8, scope: !4615)
!4707 = !DILocation(line: 927, column: 3, scope: !4615)
!4708 = !DILocation(line: 928, column: 3, scope: !4615)
!4709 = !DILocation(line: 929, column: 1, scope: !4615)
!4710 = !DISubprogram(name: "hwloc_obj_type_string", scope: !133, file: !133, line: 958, type: !4711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{!257, !260}
!4713 = distinct !DISubprogram(name: "hwloc__check_grouping_matrix", scope: !2, file: !2, line: 1157, type: !4714, scopeLine: 1158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !4716)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{!181, !134, !619, !258, !181}
!4716 = !{!4717, !4718, !4719, !4720, !4721, !4722}
!4717 = !DILocalVariable(name: "nbobjs", arg: 1, scope: !4713, file: !2, line: 1157, type: !134)
!4718 = !DILocalVariable(name: "_values", arg: 2, scope: !4713, file: !2, line: 1157, type: !619)
!4719 = !DILocalVariable(name: "accuracy", arg: 3, scope: !4713, file: !2, line: 1157, type: !258)
!4720 = !DILocalVariable(name: "verbose", arg: 4, scope: !4713, file: !2, line: 1157, type: !181)
!4721 = !DILocalVariable(name: "i", scope: !4713, file: !2, line: 1159, type: !134)
!4722 = !DILocalVariable(name: "j", scope: !4713, file: !2, line: 1159, type: !134)
!4723 = !DILocation(line: 1157, column: 39, scope: !4713)
!4724 = !DILocation(line: 1157, column: 57, scope: !4713)
!4725 = !DILocation(line: 1157, column: 72, scope: !4713)
!4726 = !DILocation(line: 1157, column: 86, scope: !4713)
!4727 = !DILocation(line: 1159, column: 3, scope: !4713)
!4728 = !DILocation(line: 1159, column: 12, scope: !4713)
!4729 = !DILocation(line: 1159, column: 14, scope: !4713)
!4730 = !DILocation(line: 1160, column: 8, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4713, file: !2, line: 1160, column: 3)
!4732 = !DILocation(line: 1160, column: 7, scope: !4731)
!4733 = !DILocation(line: 1160, column: 12, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4731, file: !2, line: 1160, column: 3)
!4735 = !DILocation(line: 1160, column: 14, scope: !4734)
!4736 = !DILocation(line: 1160, column: 13, scope: !4734)
!4737 = !DILocation(line: 1160, column: 3, scope: !4731)
!4738 = !DILocation(line: 1161, column: 11, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4740, file: !2, line: 1161, column: 5)
!4740 = distinct !DILexicalBlock(scope: !4734, file: !2, line: 1160, column: 27)
!4741 = !DILocation(line: 1161, column: 12, scope: !4739)
!4742 = !DILocation(line: 1161, column: 10, scope: !4739)
!4743 = !DILocation(line: 1161, column: 9, scope: !4739)
!4744 = !DILocation(line: 1161, column: 16, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4739, file: !2, line: 1161, column: 5)
!4746 = !DILocation(line: 1161, column: 18, scope: !4745)
!4747 = !DILocation(line: 1161, column: 17, scope: !4745)
!4748 = !DILocation(line: 1161, column: 5, scope: !4739)
!4749 = !DILocation(line: 1163, column: 32, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4751, file: !2, line: 1163, column: 11)
!4751 = distinct !DILexicalBlock(scope: !4745, file: !2, line: 1161, column: 31)
!4752 = !DILocation(line: 1163, column: 45, scope: !4750)
!4753 = !DILocation(line: 1163, column: 58, scope: !4750)
!4754 = !DILocation(line: 1163, column: 11, scope: !4750)
!4755 = !DILocation(line: 1163, column: 11, scope: !4751)
!4756 = !DILocation(line: 1164, column: 6, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4758, file: !2, line: 1164, column: 6)
!4758 = distinct !DILexicalBlock(scope: !4750, file: !2, line: 1163, column: 69)
!4759 = !DILocation(line: 1164, column: 6, scope: !4758)
!4760 = !DILocation(line: 1165, column: 12, scope: !4757)
!4761 = !DILocation(line: 1166, column: 5, scope: !4757)
!4762 = !DILocation(line: 1166, column: 8, scope: !4757)
!4763 = !DILocation(line: 1166, column: 32, scope: !4757)
!4764 = !DILocation(line: 1166, column: 45, scope: !4757)
!4765 = !DILocation(line: 1166, column: 48, scope: !4757)
!4766 = !DILocation(line: 1166, column: 72, scope: !4757)
!4767 = !DILocation(line: 1165, column: 4, scope: !4757)
!4768 = !DILocation(line: 1167, column: 2, scope: !4758)
!4769 = !DILocation(line: 1170, column: 32, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4751, file: !2, line: 1170, column: 11)
!4771 = !DILocation(line: 1170, column: 45, scope: !4770)
!4772 = !DILocation(line: 1170, column: 58, scope: !4770)
!4773 = !DILocation(line: 1170, column: 11, scope: !4770)
!4774 = !DILocation(line: 1170, column: 68, scope: !4770)
!4775 = !DILocation(line: 1170, column: 11, scope: !4751)
!4776 = !DILocation(line: 1171, column: 6, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4778, file: !2, line: 1171, column: 6)
!4778 = distinct !DILexicalBlock(scope: !4770, file: !2, line: 1170, column: 74)
!4779 = !DILocation(line: 1171, column: 6, scope: !4778)
!4780 = !DILocation(line: 1172, column: 12, scope: !4777)
!4781 = !DILocation(line: 1173, column: 5, scope: !4777)
!4782 = !DILocation(line: 1173, column: 8, scope: !4777)
!4783 = !DILocation(line: 1173, column: 32, scope: !4777)
!4784 = !DILocation(line: 1173, column: 45, scope: !4777)
!4785 = !DILocation(line: 1173, column: 48, scope: !4777)
!4786 = !DILocation(line: 1173, column: 72, scope: !4777)
!4787 = !DILocation(line: 1172, column: 4, scope: !4777)
!4788 = !DILocation(line: 1174, column: 2, scope: !4778)
!4789 = !DILocation(line: 1176, column: 5, scope: !4751)
!4790 = !DILocation(line: 1161, column: 27, scope: !4745)
!4791 = !DILocation(line: 1161, column: 5, scope: !4745)
!4792 = distinct !{!4792, !4748, !4793, !982}
!4793 = !DILocation(line: 1176, column: 5, scope: !4739)
!4794 = !DILocation(line: 1177, column: 3, scope: !4740)
!4795 = !DILocation(line: 1160, column: 23, scope: !4734)
!4796 = !DILocation(line: 1160, column: 3, scope: !4734)
!4797 = distinct !{!4797, !4737, !4798, !982}
!4798 = !DILocation(line: 1177, column: 3, scope: !4731)
!4799 = !DILocation(line: 1178, column: 3, scope: !4713)
!4800 = !DILocation(line: 1179, column: 1, scope: !4713)
!4801 = distinct !DISubprogram(name: "hwloc__find_groups_by_min_distance", scope: !2, file: !2, line: 1072, type: !4802, scopeLine: 1077, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !4804)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!134, !134, !619, !258, !424, !181}
!4804 = !{!4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4820, !4821}
!4805 = !DILocalVariable(name: "nbobjs", arg: 1, scope: !4801, file: !2, line: 1072, type: !134)
!4806 = !DILocalVariable(name: "_values", arg: 2, scope: !4801, file: !2, line: 1073, type: !619)
!4807 = !DILocalVariable(name: "accuracy", arg: 3, scope: !4801, file: !2, line: 1074, type: !258)
!4808 = !DILocalVariable(name: "groupids", arg: 4, scope: !4801, file: !2, line: 1075, type: !424)
!4809 = !DILocalVariable(name: "verbose", arg: 5, scope: !4801, file: !2, line: 1076, type: !181)
!4810 = !DILocalVariable(name: "min_distance", scope: !4801, file: !2, line: 1078, type: !283)
!4811 = !DILocalVariable(name: "groupid", scope: !4801, file: !2, line: 1079, type: !134)
!4812 = !DILocalVariable(name: "i", scope: !4801, file: !2, line: 1080, type: !134)
!4813 = !DILocalVariable(name: "j", scope: !4801, file: !2, line: 1080, type: !134)
!4814 = !DILocalVariable(name: "k", scope: !4801, file: !2, line: 1080, type: !134)
!4815 = !DILocalVariable(name: "skipped", scope: !4801, file: !2, line: 1081, type: !134)
!4816 = !DILocalVariable(name: "size", scope: !4817, file: !2, line: 1099, type: !134)
!4817 = distinct !DILexicalBlock(scope: !4818, file: !2, line: 1098, column: 27)
!4818 = distinct !DILexicalBlock(scope: !4819, file: !2, line: 1098, column: 3)
!4819 = distinct !DILexicalBlock(scope: !4801, file: !2, line: 1098, column: 3)
!4820 = !DILocalVariable(name: "firstfound", scope: !4817, file: !2, line: 1100, type: !134)
!4821 = !DILocalVariable(name: "newfirstfound", scope: !4822, file: !2, line: 1116, type: !134)
!4822 = distinct !DILexicalBlock(scope: !4817, file: !2, line: 1111, column: 40)
!4823 = !DILocation(line: 1072, column: 45, scope: !4801)
!4824 = !DILocation(line: 1073, column: 18, scope: !4801)
!4825 = !DILocation(line: 1074, column: 14, scope: !4801)
!4826 = !DILocation(line: 1075, column: 18, scope: !4801)
!4827 = !DILocation(line: 1076, column: 12, scope: !4801)
!4828 = !DILocation(line: 1078, column: 3, scope: !4801)
!4829 = !DILocation(line: 1078, column: 12, scope: !4801)
!4830 = !DILocation(line: 1079, column: 3, scope: !4801)
!4831 = !DILocation(line: 1079, column: 12, scope: !4801)
!4832 = !DILocation(line: 1080, column: 3, scope: !4801)
!4833 = !DILocation(line: 1080, column: 12, scope: !4801)
!4834 = !DILocation(line: 1080, column: 14, scope: !4801)
!4835 = !DILocation(line: 1080, column: 16, scope: !4801)
!4836 = !DILocation(line: 1081, column: 3, scope: !4801)
!4837 = !DILocation(line: 1081, column: 12, scope: !4801)
!4838 = !DILocation(line: 1085, column: 10, scope: !4801)
!4839 = !DILocation(line: 1085, column: 23, scope: !4801)
!4840 = !DILocation(line: 1085, column: 29, scope: !4801)
!4841 = !DILocation(line: 1085, column: 3, scope: !4801)
!4842 = !DILocation(line: 1088, column: 8, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4801, file: !2, line: 1088, column: 3)
!4844 = !DILocation(line: 1088, column: 7, scope: !4843)
!4845 = !DILocation(line: 1088, column: 12, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4843, file: !2, line: 1088, column: 3)
!4847 = !DILocation(line: 1088, column: 14, scope: !4846)
!4848 = !DILocation(line: 1088, column: 13, scope: !4846)
!4849 = !DILocation(line: 1088, column: 3, scope: !4843)
!4850 = !DILocation(line: 1089, column: 10, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4846, file: !2, line: 1089, column: 5)
!4852 = !DILocation(line: 1089, column: 9, scope: !4851)
!4853 = !DILocation(line: 1089, column: 14, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4851, file: !2, line: 1089, column: 5)
!4855 = !DILocation(line: 1089, column: 16, scope: !4854)
!4856 = !DILocation(line: 1089, column: 15, scope: !4854)
!4857 = !DILocation(line: 1089, column: 5, scope: !4851)
!4858 = !DILocation(line: 1090, column: 11, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4854, file: !2, line: 1090, column: 11)
!4860 = !DILocation(line: 1090, column: 16, scope: !4859)
!4861 = !DILocation(line: 1090, column: 13, scope: !4859)
!4862 = !DILocation(line: 1090, column: 18, scope: !4859)
!4863 = !DILocation(line: 1090, column: 21, scope: !4859)
!4864 = !DILocation(line: 1090, column: 35, scope: !4859)
!4865 = !DILocation(line: 1090, column: 33, scope: !4859)
!4866 = !DILocation(line: 1090, column: 11, scope: !4854)
!4867 = !DILocation(line: 1091, column: 24, scope: !4859)
!4868 = !DILocation(line: 1091, column: 22, scope: !4859)
!4869 = !DILocation(line: 1091, column: 9, scope: !4859)
!4870 = !DILocation(line: 1089, column: 25, scope: !4854)
!4871 = !DILocation(line: 1089, column: 5, scope: !4854)
!4872 = distinct !{!4872, !4857, !4873, !982}
!4873 = !DILocation(line: 1091, column: 24, scope: !4851)
!4874 = !DILocation(line: 1088, column: 23, scope: !4846)
!4875 = !DILocation(line: 1088, column: 3, scope: !4846)
!4876 = distinct !{!4876, !4849, !4877, !982}
!4877 = !DILocation(line: 1091, column: 24, scope: !4843)
!4878 = !DILocation(line: 1092, column: 87, scope: !4801)
!4879 = !DILocation(line: 1092, column: 3, scope: !4801)
!4880 = !DILocation(line: 1094, column: 7, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4801, file: !2, line: 1094, column: 7)
!4882 = !DILocation(line: 1094, column: 20, scope: !4881)
!4883 = !DILocation(line: 1094, column: 7, scope: !4801)
!4884 = !DILocation(line: 1095, column: 5, scope: !4881)
!4885 = !DILocation(line: 1098, column: 8, scope: !4819)
!4886 = !DILocation(line: 1098, column: 7, scope: !4819)
!4887 = !DILocation(line: 1098, column: 12, scope: !4818)
!4888 = !DILocation(line: 1098, column: 14, scope: !4818)
!4889 = !DILocation(line: 1098, column: 13, scope: !4818)
!4890 = !DILocation(line: 1098, column: 3, scope: !4819)
!4891 = !DILocation(line: 1099, column: 5, scope: !4817)
!4892 = !DILocation(line: 1099, column: 14, scope: !4817)
!4893 = !DILocation(line: 1100, column: 5, scope: !4817)
!4894 = !DILocation(line: 1100, column: 14, scope: !4817)
!4895 = !DILocation(line: 1103, column: 9, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4817, file: !2, line: 1103, column: 9)
!4897 = !DILocation(line: 1103, column: 18, scope: !4896)
!4898 = !DILocation(line: 1103, column: 9, scope: !4817)
!4899 = !DILocation(line: 1104, column: 7, scope: !4896)
!4900 = !DILocation(line: 1107, column: 19, scope: !4817)
!4901 = !DILocation(line: 1107, column: 5, scope: !4817)
!4902 = !DILocation(line: 1107, column: 14, scope: !4817)
!4903 = !DILocation(line: 1107, column: 17, scope: !4817)
!4904 = !DILocation(line: 1108, column: 10, scope: !4817)
!4905 = !DILocation(line: 1109, column: 18, scope: !4817)
!4906 = !DILocation(line: 1109, column: 16, scope: !4817)
!4907 = !DILocation(line: 1111, column: 5, scope: !4817)
!4908 = !DILocation(line: 1111, column: 12, scope: !4817)
!4909 = !DILocation(line: 1111, column: 23, scope: !4817)
!4910 = !DILocation(line: 1116, column: 7, scope: !4822)
!4911 = !DILocation(line: 1116, column: 16, scope: !4822)
!4912 = !DILocation(line: 1117, column: 13, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4822, file: !2, line: 1117, column: 7)
!4914 = !DILocation(line: 1117, column: 12, scope: !4913)
!4915 = !DILocation(line: 1117, column: 11, scope: !4913)
!4916 = !DILocation(line: 1117, column: 25, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4913, file: !2, line: 1117, column: 7)
!4918 = !DILocation(line: 1117, column: 27, scope: !4917)
!4919 = !DILocation(line: 1117, column: 26, scope: !4917)
!4920 = !DILocation(line: 1117, column: 7, scope: !4913)
!4921 = !DILocation(line: 1118, column: 6, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4917, file: !2, line: 1118, column: 6)
!4923 = !DILocation(line: 1118, column: 15, scope: !4922)
!4924 = !DILocation(line: 1118, column: 21, scope: !4922)
!4925 = !DILocation(line: 1118, column: 18, scope: !4922)
!4926 = !DILocation(line: 1118, column: 6, scope: !4917)
!4927 = !DILocation(line: 1119, column: 9, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4922, file: !2, line: 1119, column: 4)
!4929 = !DILocation(line: 1119, column: 8, scope: !4928)
!4930 = !DILocation(line: 1119, column: 13, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4928, file: !2, line: 1119, column: 4)
!4932 = !DILocation(line: 1119, column: 15, scope: !4931)
!4933 = !DILocation(line: 1119, column: 14, scope: !4931)
!4934 = !DILocation(line: 1119, column: 4, scope: !4928)
!4935 = !DILocation(line: 1120, column: 20, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4931, file: !2, line: 1120, column: 19)
!4937 = !DILocation(line: 1120, column: 29, scope: !4936)
!4938 = !DILocation(line: 1120, column: 32, scope: !4936)
!4939 = !DILocation(line: 1120, column: 57, scope: !4936)
!4940 = !DILocation(line: 1120, column: 70, scope: !4936)
!4941 = !DILocation(line: 1120, column: 84, scope: !4936)
!4942 = !DILocation(line: 1120, column: 36, scope: !4936)
!4943 = !DILocation(line: 1120, column: 19, scope: !4931)
!4944 = !DILocation(line: 1121, column: 22, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4936, file: !2, line: 1120, column: 95)
!4946 = !DILocation(line: 1121, column: 8, scope: !4945)
!4947 = !DILocation(line: 1121, column: 17, scope: !4945)
!4948 = !DILocation(line: 1121, column: 20, scope: !4945)
!4949 = !DILocation(line: 1122, column: 12, scope: !4945)
!4950 = !DILocation(line: 1123, column: 12, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4945, file: !2, line: 1123, column: 12)
!4952 = !DILocation(line: 1123, column: 26, scope: !4951)
!4953 = !DILocation(line: 1123, column: 12, scope: !4945)
!4954 = !DILocation(line: 1124, column: 19, scope: !4951)
!4955 = !DILocation(line: 1124, column: 17, scope: !4951)
!4956 = !DILocation(line: 1124, column: 3, scope: !4951)
!4957 = !DILocation(line: 1125, column: 12, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4945, file: !2, line: 1125, column: 12)
!4959 = !DILocation(line: 1125, column: 17, scope: !4958)
!4960 = !DILocation(line: 1125, column: 14, scope: !4958)
!4961 = !DILocation(line: 1125, column: 12, scope: !4945)
!4962 = !DILocation(line: 1126, column: 61, scope: !4958)
!4963 = !DILocation(line: 1126, column: 64, scope: !4958)
!4964 = !DILocation(line: 1126, column: 3, scope: !4958)
!4965 = !DILocation(line: 1128, column: 79, scope: !4958)
!4966 = !DILocation(line: 1128, column: 82, scope: !4958)
!4967 = !DILocation(line: 1128, column: 85, scope: !4958)
!4968 = !DILocation(line: 1128, column: 10, scope: !4958)
!4969 = !DILocation(line: 1129, column: 6, scope: !4945)
!4970 = !DILocation(line: 1120, column: 92, scope: !4936)
!4971 = !DILocation(line: 1119, column: 24, scope: !4931)
!4972 = !DILocation(line: 1119, column: 4, scope: !4931)
!4973 = distinct !{!4973, !4934, !4974, !982}
!4974 = !DILocation(line: 1129, column: 6, scope: !4928)
!4975 = !DILocation(line: 1117, column: 36, scope: !4917)
!4976 = !DILocation(line: 1117, column: 7, scope: !4917)
!4977 = distinct !{!4977, !4920, !4978, !982}
!4978 = !DILocation(line: 1129, column: 6, scope: !4913)
!4979 = !DILocation(line: 1130, column: 20, scope: !4822)
!4980 = !DILocation(line: 1130, column: 18, scope: !4822)
!4981 = !DILocation(line: 1131, column: 5, scope: !4817)
!4982 = distinct !{!4982, !4907, !4981, !982}
!4983 = !DILocation(line: 1133, column: 9, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4817, file: !2, line: 1133, column: 9)
!4985 = !DILocation(line: 1133, column: 14, scope: !4984)
!4986 = !DILocation(line: 1133, column: 9, scope: !4817)
!4987 = !DILocation(line: 1135, column: 7, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4984, file: !2, line: 1133, column: 20)
!4989 = !DILocation(line: 1135, column: 16, scope: !4988)
!4990 = !DILocation(line: 1135, column: 19, scope: !4988)
!4991 = !DILocation(line: 1136, column: 14, scope: !4988)
!4992 = !DILocation(line: 1137, column: 7, scope: !4988)
!4993 = !DILocation(line: 1141, column: 12, scope: !4817)
!4994 = !DILocation(line: 1142, column: 9, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4817, file: !2, line: 1142, column: 9)
!4996 = !DILocation(line: 1142, column: 9, scope: !4817)
!4997 = !DILocation(line: 1143, column: 15, scope: !4995)
!4998 = !DILocation(line: 1144, column: 8, scope: !4995)
!4999 = !DILocation(line: 1144, column: 35, scope: !4995)
!5000 = !DILocation(line: 1144, column: 49, scope: !4995)
!5001 = !DILocation(line: 1143, column: 7, scope: !4995)
!5002 = !DILocation(line: 1145, column: 3, scope: !4818)
!5003 = !DILocation(line: 1145, column: 3, scope: !4817)
!5004 = !DILocation(line: 1098, column: 23, scope: !4818)
!5005 = !DILocation(line: 1098, column: 3, scope: !4818)
!5006 = distinct !{!5006, !4890, !5007, !982}
!5007 = !DILocation(line: 1145, column: 3, scope: !4819)
!5008 = !DILocation(line: 1147, column: 7, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !4801, file: !2, line: 1147, column: 7)
!5010 = !DILocation(line: 1147, column: 15, scope: !5009)
!5011 = !DILocation(line: 1147, column: 20, scope: !5009)
!5012 = !DILocation(line: 1147, column: 24, scope: !5009)
!5013 = !DILocation(line: 1147, column: 7, scope: !4801)
!5014 = !DILocation(line: 1149, column: 5, scope: !5009)
!5015 = !DILocation(line: 1152, column: 10, scope: !4801)
!5016 = !DILocation(line: 1152, column: 17, scope: !4801)
!5017 = !DILocation(line: 1152, column: 3, scope: !4801)
!5018 = !DILocation(line: 1153, column: 1, scope: !4801)
!5019 = !DISubprogram(name: "hwloc_alloc_setup_object", scope: !195, file: !195, line: 404, type: !5020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5020 = !DISubroutineType(types: !5021)
!5021 = !{!271, !464, !260, !134}
!5022 = !DISubprogram(name: "hwloc_bitmap_alloc", scope: !382, file: !382, line: 84, type: !5023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5023 = !DISubroutineType(types: !5024)
!5024 = !{!381}
!5025 = !DISubprogram(name: "hwloc_obj_add_other_obj_sets", scope: !133, file: !133, line: 2546, type: !5026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5026 = !DISubroutineType(types: !5027)
!5027 = !{!181, !271, !271}
!5028 = !DISubprogram(name: "hwloc__insert_object_by_cpuset", scope: !195, file: !195, line: 379, type: !5029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{!271, !416, !271, !271, !257}
!5031 = distinct !DISubprogram(name: "hwloc_compare_values", scope: !2, file: !2, line: 1060, type: !5032, scopeLine: 1061, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !5034)
!5032 = !DISubroutineType(types: !5033)
!5033 = !{!181, !283, !283, !258}
!5034 = !{!5035, !5036, !5037}
!5035 = !DILocalVariable(name: "a", arg: 1, scope: !5031, file: !2, line: 1060, type: !283)
!5036 = !DILocalVariable(name: "b", arg: 2, scope: !5031, file: !2, line: 1060, type: !283)
!5037 = !DILocalVariable(name: "accuracy", arg: 3, scope: !5031, file: !2, line: 1060, type: !258)
!5038 = !DILocation(line: 1060, column: 42, scope: !5031)
!5039 = !DILocation(line: 1060, column: 54, scope: !5031)
!5040 = !DILocation(line: 1060, column: 63, scope: !5031)
!5041 = !DILocation(line: 1062, column: 7, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5031, file: !2, line: 1062, column: 7)
!5043 = !DILocation(line: 1062, column: 16, scope: !5042)
!5044 = !DILocation(line: 1062, column: 24, scope: !5042)
!5045 = !DILocation(line: 1062, column: 40, scope: !5042)
!5046 = !DILocation(line: 1062, column: 33, scope: !5042)
!5047 = !DILocation(line: 1062, column: 49, scope: !5042)
!5048 = !DILocation(line: 1062, column: 42, scope: !5042)
!5049 = !DILocation(line: 1062, column: 41, scope: !5042)
!5050 = !DILocation(line: 1062, column: 27, scope: !5042)
!5051 = !DILocation(line: 1062, column: 61, scope: !5042)
!5052 = !DILocation(line: 1062, column: 54, scope: !5042)
!5053 = !DILocation(line: 1062, column: 65, scope: !5042)
!5054 = !DILocation(line: 1062, column: 63, scope: !5042)
!5055 = !DILocation(line: 1062, column: 52, scope: !5042)
!5056 = !DILocation(line: 1062, column: 7, scope: !5031)
!5057 = !DILocation(line: 1063, column: 5, scope: !5042)
!5058 = !DILocation(line: 1064, column: 10, scope: !5031)
!5059 = !DILocation(line: 1064, column: 14, scope: !5031)
!5060 = !DILocation(line: 1064, column: 12, scope: !5031)
!5061 = !DILocation(line: 1064, column: 23, scope: !5031)
!5062 = !DILocation(line: 1064, column: 28, scope: !5031)
!5063 = !DILocation(line: 1064, column: 25, scope: !5031)
!5064 = !DILocation(line: 1064, column: 3, scope: !5031)
!5065 = !DILocation(line: 1065, column: 1, scope: !5031)
!5066 = distinct !DISubprogram(name: "hwloc_debug", scope: !5067, file: !5067, line: 47, type: !5068, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !5070)
!5067 = !DIFile(filename: "include/private/debug.h", directory: "/local-ssd/hwloc-zu2rei3kjykcqla7tvon4gcf6srurf7q-build/aidengro/spack-stage-hwloc-2.9.1-zu2rei3kjykcqla7tvon4gcf6srurf7q/spack-src", checksumkind: CSK_MD5, checksum: "b6f50f110b4360f6967611a517408dfe")
!5068 = !DISubroutineType(types: !5069)
!5069 = !{null, !257, null}
!5070 = !{!5071}
!5071 = !DILocalVariable(name: "s", arg: 1, scope: !5066, file: !5067, line: 47, type: !257)
!5072 = !DILocation(line: 47, column: 52, scope: !5066)
!5073 = !DILocation(line: 65, column: 1, scope: !5066)
!5074 = distinct !DISubprogram(name: "is_nvswitch", scope: !2, file: !2, line: 1384, type: !5075, scopeLine: 1385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !130, retainedNodes: !5077)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{!181, !271}
!5077 = !{!5078}
!5078 = !DILocalVariable(name: "obj", arg: 1, scope: !5074, file: !2, line: 1384, type: !271)
!5079 = !DILocation(line: 1384, column: 51, scope: !5074)
!5080 = !DILocation(line: 1386, column: 10, scope: !5074)
!5081 = !DILocation(line: 1386, column: 14, scope: !5074)
!5082 = !DILocation(line: 1386, column: 17, scope: !5074)
!5083 = !DILocation(line: 1386, column: 22, scope: !5074)
!5084 = !{!1757, !778, i64 8}
!5085 = !DILocation(line: 1386, column: 30, scope: !5074)
!5086 = !DILocation(line: 1386, column: 41, scope: !5074)
!5087 = !DILocation(line: 1386, column: 46, scope: !5074)
!5088 = !DILocation(line: 1386, column: 34, scope: !5074)
!5089 = !DILocation(line: 1386, column: 33, scope: !5074)
!5090 = !DILocation(line: 0, scope: !5074)
!5091 = !DILocation(line: 1386, column: 3, scope: !5074)

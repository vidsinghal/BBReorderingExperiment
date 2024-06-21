; ModuleID = 'samples/37.bc'
source_filename = "bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quo_internal_hwloc_topology = type { i32, i32, i32, ptr, ptr, i64, [20 x i32], [20 x i32], i32, i32, i32, i32, ptr, i64, ptr, i64, [6 x %struct.quo_internal_hwloc_special_level_s], ptr, ptr, %struct.quo_internal_hwloc_binding_hooks, %struct.quo_internal_hwloc_topology_support, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, [5 x float], i32, ptr, ptr, i32, i32, ptr, %struct.quo_internal_hwloc_numanode_attr_s, i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.quo_internal_hwloc_special_level_s = type { i32, ptr, ptr, ptr }
%struct.quo_internal_hwloc_binding_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.quo_internal_hwloc_topology_support = type { ptr, ptr, ptr }
%struct.quo_internal_hwloc_numanode_attr_s = type { i64, i32, ptr }
%struct.quo_internal_hwloc_obj = type { i32, ptr, i32, ptr, i64, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i64 }
%struct.quo_internal_hwloc_topology_cpubind_support = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.quo_internal_hwloc_topology_membind_support = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [34 x i8] c"depth != HWLOC_TYPE_DEPTH_UNKNOWN\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [167 x i8] c"/local-ssd/libquo-a5d64skrddtcir6td6wgkbqasktcbifa-build/aidengro/spack-stage-libquo-1.3.1-a5d64skrddtcir6td6wgkbqasktcbifa/spack-src/src/hwloc/include/hwloc/helper.h\00", align 1, !dbg !7
@__PRETTY_FUNCTION__.quo_internal_hwloc_cpuset_to_nodeset = private unnamed_addr constant [137 x i8] c"int quo_internal_hwloc_cpuset_to_nodeset(quo_internal_hwloc_topology_t, quo_internal_hwloc_const_cpuset_t, quo_internal_hwloc_nodeset_t)\00", align 1, !dbg !12
@__PRETTY_FUNCTION__.quo_internal_hwloc_cpuset_from_nodeset = private unnamed_addr constant [139 x i8] c"int quo_internal_hwloc_cpuset_from_nodeset(quo_internal_hwloc_topology_t, quo_internal_hwloc_cpuset_t, quo_internal_hwloc_const_nodeset_t)\00", align 1, !dbg !18

; Function Attrs: nounwind uwtable
define i32 @quo_internal_hwloc_set_cpubind(ptr noundef %topology, ptr noundef %set, i32 noundef %flags) #0 !dbg !347 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !787, metadata !DIExpression()), !dbg !800
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !788, metadata !DIExpression()), !dbg !801
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !789, metadata !DIExpression()), !dbg !804
  %0 = load i32, ptr %flags.addr, align 4, !dbg !805, !tbaa !802
  %and = and i32 %0, -16, !dbg !807
  %tobool = icmp ne i32 %and, 0, !dbg !807
  br i1 %tobool, label %if.then, label %if.end, !dbg !808

if.then:                                          ; preds = %entry
  %call = call ptr @__errno_location() #10, !dbg !809
  store i32 22, ptr %call, align 4, !dbg !811, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !812
  br label %return, !dbg !812

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !813, !tbaa !796
  %2 = load ptr, ptr %set.addr, align 8, !dbg !814, !tbaa !796
  %call1 = call ptr @hwloc_fix_cpubind(ptr noundef %1, ptr noundef %2), !dbg !815
  store ptr %call1, ptr %set.addr, align 8, !dbg !816, !tbaa !796
  %3 = load ptr, ptr %set.addr, align 8, !dbg !817, !tbaa !796
  %tobool2 = icmp ne ptr %3, null, !dbg !817
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !819

if.then3:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !820
  br label %return, !dbg !820

if.end4:                                          ; preds = %if.end
  %4 = load i32, ptr %flags.addr, align 4, !dbg !821, !tbaa !802
  %and5 = and i32 %4, 1, !dbg !822
  %tobool6 = icmp ne i32 %and5, 0, !dbg !822
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !823

if.then7:                                         ; preds = %if.end4
  %5 = load ptr, ptr %topology.addr, align 8, !dbg !824, !tbaa !796
  %binding_hooks = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %5, i32 0, i32 19, !dbg !827
  %set_thisproc_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks, i32 0, i32 0, !dbg !828
  %6 = load ptr, ptr %set_thisproc_cpubind, align 8, !dbg !828, !tbaa !829
  %tobool8 = icmp ne ptr %6, null, !dbg !824
  br i1 %tobool8, label %if.then9, label %if.end13, !dbg !835

if.then9:                                         ; preds = %if.then7
  %7 = load ptr, ptr %topology.addr, align 8, !dbg !836, !tbaa !796
  %binding_hooks10 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %7, i32 0, i32 19, !dbg !837
  %set_thisproc_cpubind11 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks10, i32 0, i32 0, !dbg !838
  %8 = load ptr, ptr %set_thisproc_cpubind11, align 8, !dbg !838, !tbaa !829
  %9 = load ptr, ptr %topology.addr, align 8, !dbg !839, !tbaa !796
  %10 = load ptr, ptr %set.addr, align 8, !dbg !840, !tbaa !796
  %11 = load i32, ptr %flags.addr, align 4, !dbg !841, !tbaa !802
  %call12 = call i32 %8(ptr noundef %9, ptr noundef %10, i32 noundef %11), !dbg !836
  store i32 %call12, ptr %retval, align 4, !dbg !842
  br label %return, !dbg !842

if.end13:                                         ; preds = %if.then7
  br label %if.end46, !dbg !843

if.else:                                          ; preds = %if.end4
  %12 = load i32, ptr %flags.addr, align 4, !dbg !844, !tbaa !802
  %and14 = and i32 %12, 2, !dbg !845
  %tobool15 = icmp ne i32 %and14, 0, !dbg !845
  br i1 %tobool15, label %if.then16, label %if.else24, !dbg !846

if.then16:                                        ; preds = %if.else
  %13 = load ptr, ptr %topology.addr, align 8, !dbg !847, !tbaa !796
  %binding_hooks17 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %13, i32 0, i32 19, !dbg !850
  %set_thisthread_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks17, i32 0, i32 2, !dbg !851
  %14 = load ptr, ptr %set_thisthread_cpubind, align 8, !dbg !851, !tbaa !852
  %tobool18 = icmp ne ptr %14, null, !dbg !847
  br i1 %tobool18, label %if.then19, label %if.end23, !dbg !853

if.then19:                                        ; preds = %if.then16
  %15 = load ptr, ptr %topology.addr, align 8, !dbg !854, !tbaa !796
  %binding_hooks20 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %15, i32 0, i32 19, !dbg !855
  %set_thisthread_cpubind21 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks20, i32 0, i32 2, !dbg !856
  %16 = load ptr, ptr %set_thisthread_cpubind21, align 8, !dbg !856, !tbaa !852
  %17 = load ptr, ptr %topology.addr, align 8, !dbg !857, !tbaa !796
  %18 = load ptr, ptr %set.addr, align 8, !dbg !858, !tbaa !796
  %19 = load i32, ptr %flags.addr, align 4, !dbg !859, !tbaa !802
  %call22 = call i32 %16(ptr noundef %17, ptr noundef %18, i32 noundef %19), !dbg !854
  store i32 %call22, ptr %retval, align 4, !dbg !860
  br label %return, !dbg !860

if.end23:                                         ; preds = %if.then16
  br label %if.end45, !dbg !861

if.else24:                                        ; preds = %if.else
  %20 = load ptr, ptr %topology.addr, align 8, !dbg !862, !tbaa !796
  %binding_hooks25 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %20, i32 0, i32 19, !dbg !863
  %set_thisproc_cpubind26 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks25, i32 0, i32 0, !dbg !864
  %21 = load ptr, ptr %set_thisproc_cpubind26, align 8, !dbg !864, !tbaa !829
  %tobool27 = icmp ne ptr %21, null, !dbg !862
  br i1 %tobool27, label %if.then28, label %if.end36, !dbg !865

if.then28:                                        ; preds = %if.else24
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #11, !dbg !866
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !790, metadata !DIExpression()), !dbg !867
  %22 = load ptr, ptr %topology.addr, align 8, !dbg !868, !tbaa !796
  %binding_hooks29 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %22, i32 0, i32 19, !dbg !869
  %set_thisproc_cpubind30 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks29, i32 0, i32 0, !dbg !870
  %23 = load ptr, ptr %set_thisproc_cpubind30, align 8, !dbg !870, !tbaa !829
  %24 = load ptr, ptr %topology.addr, align 8, !dbg !871, !tbaa !796
  %25 = load ptr, ptr %set.addr, align 8, !dbg !872, !tbaa !796
  %26 = load i32, ptr %flags.addr, align 4, !dbg !873, !tbaa !802
  %call31 = call i32 %23(ptr noundef %24, ptr noundef %25, i32 noundef %26), !dbg !868
  store i32 %call31, ptr %err, align 4, !dbg !867, !tbaa !802
  %27 = load i32, ptr %err, align 4, !dbg !874, !tbaa !802
  %cmp = icmp sge i32 %27, 0, !dbg !876
  br i1 %cmp, label %if.then34, label %lor.lhs.false, !dbg !877

lor.lhs.false:                                    ; preds = %if.then28
  %call32 = call ptr @__errno_location() #10, !dbg !878
  %28 = load i32, ptr %call32, align 4, !dbg !878, !tbaa !802
  %cmp33 = icmp ne i32 %28, 38, !dbg !879
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !880

if.then34:                                        ; preds = %lor.lhs.false, %if.then28
  %29 = load i32, ptr %err, align 4, !dbg !881, !tbaa !802
  store i32 %29, ptr %retval, align 4, !dbg !882
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !882

if.end35:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !883
  br label %cleanup, !dbg !883

cleanup:                                          ; preds = %if.end35, %if.then34
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #11, !dbg !883
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end36, !dbg !884

if.end36:                                         ; preds = %cleanup.cont, %if.else24
  %30 = load ptr, ptr %topology.addr, align 8, !dbg !885, !tbaa !796
  %binding_hooks37 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %30, i32 0, i32 19, !dbg !887
  %set_thisthread_cpubind38 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks37, i32 0, i32 2, !dbg !888
  %31 = load ptr, ptr %set_thisthread_cpubind38, align 8, !dbg !888, !tbaa !852
  %tobool39 = icmp ne ptr %31, null, !dbg !885
  br i1 %tobool39, label %if.then40, label %if.end44, !dbg !889

if.then40:                                        ; preds = %if.end36
  %32 = load ptr, ptr %topology.addr, align 8, !dbg !890, !tbaa !796
  %binding_hooks41 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %32, i32 0, i32 19, !dbg !891
  %set_thisthread_cpubind42 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks41, i32 0, i32 2, !dbg !892
  %33 = load ptr, ptr %set_thisthread_cpubind42, align 8, !dbg !892, !tbaa !852
  %34 = load ptr, ptr %topology.addr, align 8, !dbg !893, !tbaa !796
  %35 = load ptr, ptr %set.addr, align 8, !dbg !894, !tbaa !796
  %36 = load i32, ptr %flags.addr, align 4, !dbg !895, !tbaa !802
  %call43 = call i32 %33(ptr noundef %34, ptr noundef %35, i32 noundef %36), !dbg !890
  store i32 %call43, ptr %retval, align 4, !dbg !896
  br label %return, !dbg !896

if.end44:                                         ; preds = %if.end36
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end23
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end13
  %call47 = call ptr @__errno_location() #10, !dbg !897
  store i32 38, ptr %call47, align 4, !dbg !898, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !899
  br label %return, !dbg !899

return:                                           ; preds = %if.end46, %if.then40, %cleanup, %if.then19, %if.then9, %if.then3, %if.then
  %37 = load i32, ptr %retval, align 4, !dbg !900
  ret i32 %37, !dbg !900

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !901 ptr @__errno_location() #1

; Function Attrs: nounwind uwtable
define internal ptr @hwloc_fix_cpubind(ptr noundef %topology, ptr noundef %set) #0 !dbg !906 {
entry:
  %retval = alloca ptr, align 8
  %topology.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  %topology_set = alloca ptr, align 8
  %complete_set = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !910, metadata !DIExpression()), !dbg !914
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !911, metadata !DIExpression()), !dbg !915
  call void @llvm.lifetime.start.p0(i64 8, ptr %topology_set) #11, !dbg !916
  tail call void @llvm.dbg.declare(metadata ptr %topology_set, metadata !912, metadata !DIExpression()), !dbg !917
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !918, !tbaa !796
  %call = call ptr @quo_internal_hwloc_topology_get_topology_cpuset(ptr noundef %0) #12, !dbg !919
  store ptr %call, ptr %topology_set, align 8, !dbg !917, !tbaa !796
  call void @llvm.lifetime.start.p0(i64 8, ptr %complete_set) #11, !dbg !920
  tail call void @llvm.dbg.declare(metadata ptr %complete_set, metadata !913, metadata !DIExpression()), !dbg !921
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !922, !tbaa !796
  %call1 = call ptr @quo_internal_hwloc_topology_get_complete_cpuset(ptr noundef %1) #12, !dbg !923
  store ptr %call1, ptr %complete_set, align 8, !dbg !921, !tbaa !796
  %2 = load ptr, ptr %set.addr, align 8, !dbg !924, !tbaa !796
  %call2 = call i32 @quo_internal_hwloc_bitmap_iszero(ptr noundef %2) #12, !dbg !926
  %tobool = icmp ne i32 %call2, 0, !dbg !926
  br i1 %tobool, label %if.then, label %if.end, !dbg !927

if.then:                                          ; preds = %entry
  %call3 = call ptr @__errno_location() #10, !dbg !928
  store i32 22, ptr %call3, align 4, !dbg !930, !tbaa !802
  store ptr null, ptr %retval, align 8, !dbg !931
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !931

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %set.addr, align 8, !dbg !932, !tbaa !796
  %4 = load ptr, ptr %complete_set, align 8, !dbg !934, !tbaa !796
  %call4 = call i32 @quo_internal_hwloc_bitmap_isincluded(ptr noundef %3, ptr noundef %4) #12, !dbg !935
  %tobool5 = icmp ne i32 %call4, 0, !dbg !935
  br i1 %tobool5, label %if.end8, label %if.then6, !dbg !936

if.then6:                                         ; preds = %if.end
  %call7 = call ptr @__errno_location() #10, !dbg !937
  store i32 22, ptr %call7, align 4, !dbg !939, !tbaa !802
  store ptr null, ptr %retval, align 8, !dbg !940
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !940

if.end8:                                          ; preds = %if.end
  %5 = load ptr, ptr %topology_set, align 8, !dbg !941, !tbaa !796
  %6 = load ptr, ptr %set.addr, align 8, !dbg !943, !tbaa !796
  %call9 = call i32 @quo_internal_hwloc_bitmap_isincluded(ptr noundef %5, ptr noundef %6) #12, !dbg !944
  %tobool10 = icmp ne i32 %call9, 0, !dbg !944
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !945

if.then11:                                        ; preds = %if.end8
  %7 = load ptr, ptr %complete_set, align 8, !dbg !946, !tbaa !796
  store ptr %7, ptr %set.addr, align 8, !dbg !947, !tbaa !796
  br label %if.end12, !dbg !948

if.end12:                                         ; preds = %if.then11, %if.end8
  %8 = load ptr, ptr %set.addr, align 8, !dbg !949, !tbaa !796
  store ptr %8, ptr %retval, align 8, !dbg !950
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !950

cleanup:                                          ; preds = %if.end12, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %complete_set) #11, !dbg !951
  call void @llvm.lifetime.end.p0(i64 8, ptr %topology_set) #11, !dbg !951
  %9 = load ptr, ptr %retval, align 8, !dbg !951
  ret ptr %9, !dbg !951
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @quo_internal_hwloc_get_cpubind(ptr noundef %topology, ptr noundef %set, i32 noundef %flags) #0 !dbg !952 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !956, metadata !DIExpression()), !dbg !965
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !957, metadata !DIExpression()), !dbg !966
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !958, metadata !DIExpression()), !dbg !967
  %0 = load i32, ptr %flags.addr, align 4, !dbg !968, !tbaa !802
  %and = and i32 %0, -16, !dbg !970
  %tobool = icmp ne i32 %and, 0, !dbg !970
  br i1 %tobool, label %if.then, label %if.end, !dbg !971

if.then:                                          ; preds = %entry
  %call = call ptr @__errno_location() #10, !dbg !972
  store i32 22, ptr %call, align 4, !dbg !974, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !975
  br label %return, !dbg !975

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !976, !tbaa !802
  %and1 = and i32 %1, 1, !dbg !977
  %tobool2 = icmp ne i32 %and1, 0, !dbg !977
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !978

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr %topology.addr, align 8, !dbg !979, !tbaa !796
  %binding_hooks = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %2, i32 0, i32 19, !dbg !982
  %get_thisproc_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks, i32 0, i32 1, !dbg !983
  %3 = load ptr, ptr %get_thisproc_cpubind, align 8, !dbg !983, !tbaa !984
  %tobool4 = icmp ne ptr %3, null, !dbg !979
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !985

if.then5:                                         ; preds = %if.then3
  %4 = load ptr, ptr %topology.addr, align 8, !dbg !986, !tbaa !796
  %binding_hooks6 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %4, i32 0, i32 19, !dbg !987
  %get_thisproc_cpubind7 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks6, i32 0, i32 1, !dbg !988
  %5 = load ptr, ptr %get_thisproc_cpubind7, align 8, !dbg !988, !tbaa !984
  %6 = load ptr, ptr %topology.addr, align 8, !dbg !989, !tbaa !796
  %7 = load ptr, ptr %set.addr, align 8, !dbg !990, !tbaa !796
  %8 = load i32, ptr %flags.addr, align 4, !dbg !991, !tbaa !802
  %call8 = call i32 %5(ptr noundef %6, ptr noundef %7, i32 noundef %8), !dbg !986
  store i32 %call8, ptr %retval, align 4, !dbg !992
  br label %return, !dbg !992

if.end9:                                          ; preds = %if.then3
  br label %if.end42, !dbg !993

if.else:                                          ; preds = %if.end
  %9 = load i32, ptr %flags.addr, align 4, !dbg !994, !tbaa !802
  %and10 = and i32 %9, 2, !dbg !995
  %tobool11 = icmp ne i32 %and10, 0, !dbg !995
  br i1 %tobool11, label %if.then12, label %if.else20, !dbg !996

if.then12:                                        ; preds = %if.else
  %10 = load ptr, ptr %topology.addr, align 8, !dbg !997, !tbaa !796
  %binding_hooks13 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %10, i32 0, i32 19, !dbg !1000
  %get_thisthread_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks13, i32 0, i32 3, !dbg !1001
  %11 = load ptr, ptr %get_thisthread_cpubind, align 8, !dbg !1001, !tbaa !1002
  %tobool14 = icmp ne ptr %11, null, !dbg !997
  br i1 %tobool14, label %if.then15, label %if.end19, !dbg !1003

if.then15:                                        ; preds = %if.then12
  %12 = load ptr, ptr %topology.addr, align 8, !dbg !1004, !tbaa !796
  %binding_hooks16 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %12, i32 0, i32 19, !dbg !1005
  %get_thisthread_cpubind17 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks16, i32 0, i32 3, !dbg !1006
  %13 = load ptr, ptr %get_thisthread_cpubind17, align 8, !dbg !1006, !tbaa !1002
  %14 = load ptr, ptr %topology.addr, align 8, !dbg !1007, !tbaa !796
  %15 = load ptr, ptr %set.addr, align 8, !dbg !1008, !tbaa !796
  %16 = load i32, ptr %flags.addr, align 4, !dbg !1009, !tbaa !802
  %call18 = call i32 %13(ptr noundef %14, ptr noundef %15, i32 noundef %16), !dbg !1004
  store i32 %call18, ptr %retval, align 4, !dbg !1010
  br label %return, !dbg !1010

if.end19:                                         ; preds = %if.then12
  br label %if.end41, !dbg !1011

if.else20:                                        ; preds = %if.else
  %17 = load ptr, ptr %topology.addr, align 8, !dbg !1012, !tbaa !796
  %binding_hooks21 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %17, i32 0, i32 19, !dbg !1013
  %get_thisproc_cpubind22 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks21, i32 0, i32 1, !dbg !1014
  %18 = load ptr, ptr %get_thisproc_cpubind22, align 8, !dbg !1014, !tbaa !984
  %tobool23 = icmp ne ptr %18, null, !dbg !1012
  br i1 %tobool23, label %if.then24, label %if.end32, !dbg !1015

if.then24:                                        ; preds = %if.else20
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #11, !dbg !1016
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !959, metadata !DIExpression()), !dbg !1017
  %19 = load ptr, ptr %topology.addr, align 8, !dbg !1018, !tbaa !796
  %binding_hooks25 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %19, i32 0, i32 19, !dbg !1019
  %get_thisproc_cpubind26 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks25, i32 0, i32 1, !dbg !1020
  %20 = load ptr, ptr %get_thisproc_cpubind26, align 8, !dbg !1020, !tbaa !984
  %21 = load ptr, ptr %topology.addr, align 8, !dbg !1021, !tbaa !796
  %22 = load ptr, ptr %set.addr, align 8, !dbg !1022, !tbaa !796
  %23 = load i32, ptr %flags.addr, align 4, !dbg !1023, !tbaa !802
  %call27 = call i32 %20(ptr noundef %21, ptr noundef %22, i32 noundef %23), !dbg !1018
  store i32 %call27, ptr %err, align 4, !dbg !1017, !tbaa !802
  %24 = load i32, ptr %err, align 4, !dbg !1024, !tbaa !802
  %cmp = icmp sge i32 %24, 0, !dbg !1026
  br i1 %cmp, label %if.then30, label %lor.lhs.false, !dbg !1027

lor.lhs.false:                                    ; preds = %if.then24
  %call28 = call ptr @__errno_location() #10, !dbg !1028
  %25 = load i32, ptr %call28, align 4, !dbg !1028, !tbaa !802
  %cmp29 = icmp ne i32 %25, 38, !dbg !1029
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !1030

if.then30:                                        ; preds = %lor.lhs.false, %if.then24
  %26 = load i32, ptr %err, align 4, !dbg !1031, !tbaa !802
  store i32 %26, ptr %retval, align 4, !dbg !1032
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1032

if.end31:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1033
  br label %cleanup, !dbg !1033

cleanup:                                          ; preds = %if.end31, %if.then30
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #11, !dbg !1033
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end32, !dbg !1034

if.end32:                                         ; preds = %cleanup.cont, %if.else20
  %27 = load ptr, ptr %topology.addr, align 8, !dbg !1035, !tbaa !796
  %binding_hooks33 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %27, i32 0, i32 19, !dbg !1037
  %get_thisthread_cpubind34 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks33, i32 0, i32 3, !dbg !1038
  %28 = load ptr, ptr %get_thisthread_cpubind34, align 8, !dbg !1038, !tbaa !1002
  %tobool35 = icmp ne ptr %28, null, !dbg !1035
  br i1 %tobool35, label %if.then36, label %if.end40, !dbg !1039

if.then36:                                        ; preds = %if.end32
  %29 = load ptr, ptr %topology.addr, align 8, !dbg !1040, !tbaa !796
  %binding_hooks37 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %29, i32 0, i32 19, !dbg !1041
  %get_thisthread_cpubind38 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks37, i32 0, i32 3, !dbg !1042
  %30 = load ptr, ptr %get_thisthread_cpubind38, align 8, !dbg !1042, !tbaa !1002
  %31 = load ptr, ptr %topology.addr, align 8, !dbg !1043, !tbaa !796
  %32 = load ptr, ptr %set.addr, align 8, !dbg !1044, !tbaa !796
  %33 = load i32, ptr %flags.addr, align 4, !dbg !1045, !tbaa !802
  %call39 = call i32 %30(ptr noundef %31, ptr noundef %32, i32 noundef %33), !dbg !1040
  store i32 %call39, ptr %retval, align 4, !dbg !1046
  br label %return, !dbg !1046

if.end40:                                         ; preds = %if.end32
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end19
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end9
  %call43 = call ptr @__errno_location() #10, !dbg !1047
  store i32 38, ptr %call43, align 4, !dbg !1048, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1049
  br label %return, !dbg !1049

return:                                           ; preds = %if.end42, %if.then36, %cleanup, %if.then15, %if.then5, %if.then
  %34 = load i32, ptr %retval, align 4, !dbg !1050
  ret i32 %34, !dbg !1050

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @quo_internal_hwloc_set_proc_cpubind(ptr noundef %topology, i32 noundef %pid, ptr noundef %set, i32 noundef %flags) #0 !dbg !1051 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %pid.addr = alloca i32, align 4
  %set.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1055, metadata !DIExpression()), !dbg !1059
  store i32 %pid, ptr %pid.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !1056, metadata !DIExpression()), !dbg !1060
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1057, metadata !DIExpression()), !dbg !1061
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1058, metadata !DIExpression()), !dbg !1062
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1063, !tbaa !802
  %and = and i32 %0, -16, !dbg !1065
  %tobool = icmp ne i32 %and, 0, !dbg !1065
  br i1 %tobool, label %if.then, label %if.end, !dbg !1066

if.then:                                          ; preds = %entry
  %call = call ptr @__errno_location() #10, !dbg !1067
  store i32 22, ptr %call, align 4, !dbg !1069, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1070
  br label %return, !dbg !1070

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !1071, !tbaa !796
  %2 = load ptr, ptr %set.addr, align 8, !dbg !1072, !tbaa !796
  %call1 = call ptr @hwloc_fix_cpubind(ptr noundef %1, ptr noundef %2), !dbg !1073
  store ptr %call1, ptr %set.addr, align 8, !dbg !1074, !tbaa !796
  %3 = load ptr, ptr %set.addr, align 8, !dbg !1075, !tbaa !796
  %tobool2 = icmp ne ptr %3, null, !dbg !1075
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1077

if.then3:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !1078
  br label %return, !dbg !1078

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %topology.addr, align 8, !dbg !1079, !tbaa !796
  %binding_hooks = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %4, i32 0, i32 19, !dbg !1081
  %set_proc_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks, i32 0, i32 4, !dbg !1082
  %5 = load ptr, ptr %set_proc_cpubind, align 8, !dbg !1082, !tbaa !1083
  %tobool5 = icmp ne ptr %5, null, !dbg !1079
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !1084

if.then6:                                         ; preds = %if.end4
  %6 = load ptr, ptr %topology.addr, align 8, !dbg !1085, !tbaa !796
  %binding_hooks7 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %6, i32 0, i32 19, !dbg !1086
  %set_proc_cpubind8 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks7, i32 0, i32 4, !dbg !1087
  %7 = load ptr, ptr %set_proc_cpubind8, align 8, !dbg !1087, !tbaa !1083
  %8 = load ptr, ptr %topology.addr, align 8, !dbg !1088, !tbaa !796
  %9 = load i32, ptr %pid.addr, align 4, !dbg !1089, !tbaa !802
  %10 = load ptr, ptr %set.addr, align 8, !dbg !1090, !tbaa !796
  %11 = load i32, ptr %flags.addr, align 4, !dbg !1091, !tbaa !802
  %call9 = call i32 %7(ptr noundef %8, i32 noundef %9, ptr noundef %10, i32 noundef %11), !dbg !1085
  store i32 %call9, ptr %retval, align 4, !dbg !1092
  br label %return, !dbg !1092

if.end10:                                         ; preds = %if.end4
  %call11 = call ptr @__errno_location() #10, !dbg !1093
  store i32 38, ptr %call11, align 4, !dbg !1094, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1095
  br label %return, !dbg !1095

return:                                           ; preds = %if.end10, %if.then6, %if.then3, %if.then
  %12 = load i32, ptr %retval, align 4, !dbg !1096
  ret i32 %12, !dbg !1096
}

; Function Attrs: nounwind uwtable
define i32 @quo_internal_hwloc_get_proc_cpubind(ptr noundef %topology, i32 noundef %pid, ptr noundef %set, i32 noundef %flags) #0 !dbg !1097 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %pid.addr = alloca i32, align 4
  %set.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1101, metadata !DIExpression()), !dbg !1105
  store i32 %pid, ptr %pid.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !1102, metadata !DIExpression()), !dbg !1106
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1103, metadata !DIExpression()), !dbg !1107
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1104, metadata !DIExpression()), !dbg !1108
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1109, !tbaa !802
  %and = and i32 %0, -16, !dbg !1111
  %tobool = icmp ne i32 %and, 0, !dbg !1111
  br i1 %tobool, label %if.then, label %if.end, !dbg !1112

if.then:                                          ; preds = %entry
  %call = call ptr @__errno_location() #10, !dbg !1113
  store i32 22, ptr %call, align 4, !dbg !1115, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1116
  br label %return, !dbg !1116

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !1117, !tbaa !796
  %binding_hooks = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %1, i32 0, i32 19, !dbg !1119
  %get_proc_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks, i32 0, i32 5, !dbg !1120
  %2 = load ptr, ptr %get_proc_cpubind, align 8, !dbg !1120, !tbaa !1121
  %tobool1 = icmp ne ptr %2, null, !dbg !1117
  br i1 %tobool1, label %if.then2, label %if.end6, !dbg !1122

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %topology.addr, align 8, !dbg !1123, !tbaa !796
  %binding_hooks3 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %3, i32 0, i32 19, !dbg !1124
  %get_proc_cpubind4 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks3, i32 0, i32 5, !dbg !1125
  %4 = load ptr, ptr %get_proc_cpubind4, align 8, !dbg !1125, !tbaa !1121
  %5 = load ptr, ptr %topology.addr, align 8, !dbg !1126, !tbaa !796
  %6 = load i32, ptr %pid.addr, align 4, !dbg !1127, !tbaa !802
  %7 = load ptr, ptr %set.addr, align 8, !dbg !1128, !tbaa !796
  %8 = load i32, ptr %flags.addr, align 4, !dbg !1129, !tbaa !802
  %call5 = call i32 %4(ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8), !dbg !1123
  store i32 %call5, ptr %retval, align 4, !dbg !1130
  br label %return, !dbg !1130

if.end6:                                          ; preds = %if.end
  %call7 = call ptr @__errno_location() #10, !dbg !1131
  store i32 38, ptr %call7, align 4, !dbg !1132, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1133
  br label %return, !dbg !1133

return:                                           ; preds = %if.end6, %if.then2, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !1134
  ret i32 %9, !dbg !1134
}

; Function Attrs: nounwind uwtable
define i32 @quo_internal_hwloc_set_thread_cpubind(ptr noundef %topology, i64 noundef %tid, ptr noundef %set, i32 noundef %flags) #0 !dbg !1135 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %tid.addr = alloca i64, align 8
  %set.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1139, metadata !DIExpression()), !dbg !1143
  store i64 %tid, ptr %tid.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %tid.addr, metadata !1140, metadata !DIExpression()), !dbg !1145
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1141, metadata !DIExpression()), !dbg !1146
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1142, metadata !DIExpression()), !dbg !1147
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1148, !tbaa !802
  %and = and i32 %0, -16, !dbg !1150
  %tobool = icmp ne i32 %and, 0, !dbg !1150
  br i1 %tobool, label %if.then, label %if.end, !dbg !1151

if.then:                                          ; preds = %entry
  %call = call ptr @__errno_location() #10, !dbg !1152
  store i32 22, ptr %call, align 4, !dbg !1154, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1155
  br label %return, !dbg !1155

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !1156, !tbaa !796
  %2 = load ptr, ptr %set.addr, align 8, !dbg !1157, !tbaa !796
  %call1 = call ptr @hwloc_fix_cpubind(ptr noundef %1, ptr noundef %2), !dbg !1158
  store ptr %call1, ptr %set.addr, align 8, !dbg !1159, !tbaa !796
  %3 = load ptr, ptr %set.addr, align 8, !dbg !1160, !tbaa !796
  %tobool2 = icmp ne ptr %3, null, !dbg !1160
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1162

if.then3:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !1163
  br label %return, !dbg !1163

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %topology.addr, align 8, !dbg !1164, !tbaa !796
  %binding_hooks = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %4, i32 0, i32 19, !dbg !1166
  %set_thread_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks, i32 0, i32 6, !dbg !1167
  %5 = load ptr, ptr %set_thread_cpubind, align 8, !dbg !1167, !tbaa !1168
  %tobool5 = icmp ne ptr %5, null, !dbg !1164
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !1169

if.then6:                                         ; preds = %if.end4
  %6 = load ptr, ptr %topology.addr, align 8, !dbg !1170, !tbaa !796
  %binding_hooks7 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %6, i32 0, i32 19, !dbg !1171
  %set_thread_cpubind8 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks7, i32 0, i32 6, !dbg !1172
  %7 = load ptr, ptr %set_thread_cpubind8, align 8, !dbg !1172, !tbaa !1168
  %8 = load ptr, ptr %topology.addr, align 8, !dbg !1173, !tbaa !796
  %9 = load i64, ptr %tid.addr, align 8, !dbg !1174, !tbaa !1144
  %10 = load ptr, ptr %set.addr, align 8, !dbg !1175, !tbaa !796
  %11 = load i32, ptr %flags.addr, align 4, !dbg !1176, !tbaa !802
  %call9 = call i32 %7(ptr noundef %8, i64 noundef %9, ptr noundef %10, i32 noundef %11), !dbg !1170
  store i32 %call9, ptr %retval, align 4, !dbg !1177
  br label %return, !dbg !1177

if.end10:                                         ; preds = %if.end4
  %call11 = call ptr @__errno_location() #10, !dbg !1178
  store i32 38, ptr %call11, align 4, !dbg !1179, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1180
  br label %return, !dbg !1180

return:                                           ; preds = %if.end10, %if.then6, %if.then3, %if.then
  %12 = load i32, ptr %retval, align 4, !dbg !1181
  ret i32 %12, !dbg !1181
}

; Function Attrs: nounwind uwtable
define i32 @quo_internal_hwloc_get_thread_cpubind(ptr noundef %topology, i64 noundef %tid, ptr noundef %set, i32 noundef %flags) #0 !dbg !1182 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %tid.addr = alloca i64, align 8
  %set.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1186, metadata !DIExpression()), !dbg !1190
  store i64 %tid, ptr %tid.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %tid.addr, metadata !1187, metadata !DIExpression()), !dbg !1191
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1188, metadata !DIExpression()), !dbg !1192
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1189, metadata !DIExpression()), !dbg !1193
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1194, !tbaa !802
  %and = and i32 %0, -16, !dbg !1196
  %tobool = icmp ne i32 %and, 0, !dbg !1196
  br i1 %tobool, label %if.then, label %if.end, !dbg !1197

if.then:                                          ; preds = %entry
  %call = call ptr @__errno_location() #10, !dbg !1198
  store i32 22, ptr %call, align 4, !dbg !1200, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1201
  br label %return, !dbg !1201

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !1202, !tbaa !796
  %binding_hooks = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %1, i32 0, i32 19, !dbg !1204
  %get_thread_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks, i32 0, i32 7, !dbg !1205
  %2 = load ptr, ptr %get_thread_cpubind, align 8, !dbg !1205, !tbaa !1206
  %tobool1 = icmp ne ptr %2, null, !dbg !1202
  br i1 %tobool1, label %if.then2, label %if.end6, !dbg !1207

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %topology.addr, align 8, !dbg !1208, !tbaa !796
  %binding_hooks3 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %3, i32 0, i32 19, !dbg !1209
  %get_thread_cpubind4 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks3, i32 0, i32 7, !dbg !1210
  %4 = load ptr, ptr %get_thread_cpubind4, align 8, !dbg !1210, !tbaa !1206
  %5 = load ptr, ptr %topology.addr, align 8, !dbg !1211, !tbaa !796
  %6 = load i64, ptr %tid.addr, align 8, !dbg !1212, !tbaa !1144
  %7 = load ptr, ptr %set.addr, align 8, !dbg !1213, !tbaa !796
  %8 = load i32, ptr %flags.addr, align 4, !dbg !1214, !tbaa !802
  %call5 = call i32 %4(ptr noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8), !dbg !1208
  store i32 %call5, ptr %retval, align 4, !dbg !1215
  br label %return, !dbg !1215

if.end6:                                          ; preds = %if.end
  %call7 = call ptr @__errno_location() #10, !dbg !1216
  store i32 38, ptr %call7, align 4, !dbg !1217, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1218
  br label %return, !dbg !1218

return:                                           ; preds = %if.end6, %if.then2, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !1219
  ret i32 %9, !dbg !1219
}

; Function Attrs: nounwind uwtable
define i32 @quo_internal_hwloc_get_last_cpu_location(ptr noundef %topology, ptr noundef %set, i32 noundef %flags) #0 !dbg !1220 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1222, metadata !DIExpression()), !dbg !1231
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1223, metadata !DIExpression()), !dbg !1232
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1224, metadata !DIExpression()), !dbg !1233
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1234, !tbaa !802
  %and = and i32 %0, -16, !dbg !1236
  %tobool = icmp ne i32 %and, 0, !dbg !1236
  br i1 %tobool, label %if.then, label %if.end, !dbg !1237

if.then:                                          ; preds = %entry
  %call = call ptr @__errno_location() #10, !dbg !1238
  store i32 22, ptr %call, align 4, !dbg !1240, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1241
  br label %return, !dbg !1241

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1242, !tbaa !802
  %and1 = and i32 %1, 1, !dbg !1243
  %tobool2 = icmp ne i32 %and1, 0, !dbg !1243
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !1244

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr %topology.addr, align 8, !dbg !1245, !tbaa !796
  %binding_hooks = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %2, i32 0, i32 19, !dbg !1248
  %get_thisproc_last_cpu_location = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks, i32 0, i32 8, !dbg !1249
  %3 = load ptr, ptr %get_thisproc_last_cpu_location, align 8, !dbg !1249, !tbaa !1250
  %tobool4 = icmp ne ptr %3, null, !dbg !1245
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !1251

if.then5:                                         ; preds = %if.then3
  %4 = load ptr, ptr %topology.addr, align 8, !dbg !1252, !tbaa !796
  %binding_hooks6 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %4, i32 0, i32 19, !dbg !1253
  %get_thisproc_last_cpu_location7 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks6, i32 0, i32 8, !dbg !1254
  %5 = load ptr, ptr %get_thisproc_last_cpu_location7, align 8, !dbg !1254, !tbaa !1250
  %6 = load ptr, ptr %topology.addr, align 8, !dbg !1255, !tbaa !796
  %7 = load ptr, ptr %set.addr, align 8, !dbg !1256, !tbaa !796
  %8 = load i32, ptr %flags.addr, align 4, !dbg !1257, !tbaa !802
  %call8 = call i32 %5(ptr noundef %6, ptr noundef %7, i32 noundef %8), !dbg !1252
  store i32 %call8, ptr %retval, align 4, !dbg !1258
  br label %return, !dbg !1258

if.end9:                                          ; preds = %if.then3
  br label %if.end42, !dbg !1259

if.else:                                          ; preds = %if.end
  %9 = load i32, ptr %flags.addr, align 4, !dbg !1260, !tbaa !802
  %and10 = and i32 %9, 2, !dbg !1261
  %tobool11 = icmp ne i32 %and10, 0, !dbg !1261
  br i1 %tobool11, label %if.then12, label %if.else20, !dbg !1262

if.then12:                                        ; preds = %if.else
  %10 = load ptr, ptr %topology.addr, align 8, !dbg !1263, !tbaa !796
  %binding_hooks13 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %10, i32 0, i32 19, !dbg !1266
  %get_thisthread_last_cpu_location = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks13, i32 0, i32 9, !dbg !1267
  %11 = load ptr, ptr %get_thisthread_last_cpu_location, align 8, !dbg !1267, !tbaa !1268
  %tobool14 = icmp ne ptr %11, null, !dbg !1263
  br i1 %tobool14, label %if.then15, label %if.end19, !dbg !1269

if.then15:                                        ; preds = %if.then12
  %12 = load ptr, ptr %topology.addr, align 8, !dbg !1270, !tbaa !796
  %binding_hooks16 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %12, i32 0, i32 19, !dbg !1271
  %get_thisthread_last_cpu_location17 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks16, i32 0, i32 9, !dbg !1272
  %13 = load ptr, ptr %get_thisthread_last_cpu_location17, align 8, !dbg !1272, !tbaa !1268
  %14 = load ptr, ptr %topology.addr, align 8, !dbg !1273, !tbaa !796
  %15 = load ptr, ptr %set.addr, align 8, !dbg !1274, !tbaa !796
  %16 = load i32, ptr %flags.addr, align 4, !dbg !1275, !tbaa !802
  %call18 = call i32 %13(ptr noundef %14, ptr noundef %15, i32 noundef %16), !dbg !1270
  store i32 %call18, ptr %retval, align 4, !dbg !1276
  br label %return, !dbg !1276

if.end19:                                         ; preds = %if.then12
  br label %if.end41, !dbg !1277

if.else20:                                        ; preds = %if.else
  %17 = load ptr, ptr %topology.addr, align 8, !dbg !1278, !tbaa !796
  %binding_hooks21 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %17, i32 0, i32 19, !dbg !1279
  %get_thisproc_last_cpu_location22 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks21, i32 0, i32 8, !dbg !1280
  %18 = load ptr, ptr %get_thisproc_last_cpu_location22, align 8, !dbg !1280, !tbaa !1250
  %tobool23 = icmp ne ptr %18, null, !dbg !1278
  br i1 %tobool23, label %if.then24, label %if.end32, !dbg !1281

if.then24:                                        ; preds = %if.else20
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #11, !dbg !1282
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1225, metadata !DIExpression()), !dbg !1283
  %19 = load ptr, ptr %topology.addr, align 8, !dbg !1284, !tbaa !796
  %binding_hooks25 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %19, i32 0, i32 19, !dbg !1285
  %get_thisproc_last_cpu_location26 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks25, i32 0, i32 8, !dbg !1286
  %20 = load ptr, ptr %get_thisproc_last_cpu_location26, align 8, !dbg !1286, !tbaa !1250
  %21 = load ptr, ptr %topology.addr, align 8, !dbg !1287, !tbaa !796
  %22 = load ptr, ptr %set.addr, align 8, !dbg !1288, !tbaa !796
  %23 = load i32, ptr %flags.addr, align 4, !dbg !1289, !tbaa !802
  %call27 = call i32 %20(ptr noundef %21, ptr noundef %22, i32 noundef %23), !dbg !1284
  store i32 %call27, ptr %err, align 4, !dbg !1283, !tbaa !802
  %24 = load i32, ptr %err, align 4, !dbg !1290, !tbaa !802
  %cmp = icmp sge i32 %24, 0, !dbg !1292
  br i1 %cmp, label %if.then30, label %lor.lhs.false, !dbg !1293

lor.lhs.false:                                    ; preds = %if.then24
  %call28 = call ptr @__errno_location() #10, !dbg !1294
  %25 = load i32, ptr %call28, align 4, !dbg !1294, !tbaa !802
  %cmp29 = icmp ne i32 %25, 38, !dbg !1295
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !1296

if.then30:                                        ; preds = %lor.lhs.false, %if.then24
  %26 = load i32, ptr %err, align 4, !dbg !1297, !tbaa !802
  store i32 %26, ptr %retval, align 4, !dbg !1298
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1298

if.end31:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1299
  br label %cleanup, !dbg !1299

cleanup:                                          ; preds = %if.end31, %if.then30
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #11, !dbg !1299
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end32, !dbg !1300

if.end32:                                         ; preds = %cleanup.cont, %if.else20
  %27 = load ptr, ptr %topology.addr, align 8, !dbg !1301, !tbaa !796
  %binding_hooks33 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %27, i32 0, i32 19, !dbg !1303
  %get_thisthread_last_cpu_location34 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks33, i32 0, i32 9, !dbg !1304
  %28 = load ptr, ptr %get_thisthread_last_cpu_location34, align 8, !dbg !1304, !tbaa !1268
  %tobool35 = icmp ne ptr %28, null, !dbg !1301
  br i1 %tobool35, label %if.then36, label %if.end40, !dbg !1305

if.then36:                                        ; preds = %if.end32
  %29 = load ptr, ptr %topology.addr, align 8, !dbg !1306, !tbaa !796
  %binding_hooks37 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %29, i32 0, i32 19, !dbg !1307
  %get_thisthread_last_cpu_location38 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks37, i32 0, i32 9, !dbg !1308
  %30 = load ptr, ptr %get_thisthread_last_cpu_location38, align 8, !dbg !1308, !tbaa !1268
  %31 = load ptr, ptr %topology.addr, align 8, !dbg !1309, !tbaa !796
  %32 = load ptr, ptr %set.addr, align 8, !dbg !1310, !tbaa !796
  %33 = load i32, ptr %flags.addr, align 4, !dbg !1311, !tbaa !802
  %call39 = call i32 %30(ptr noundef %31, ptr noundef %32, i32 noundef %33), !dbg !1306
  store i32 %call39, ptr %retval, align 4, !dbg !1312
  br label %return, !dbg !1312

if.end40:                                         ; preds = %if.end32
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end19
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end9
  %call43 = call ptr @__errno_location() #10, !dbg !1313
  store i32 38, ptr %call43, align 4, !dbg !1314, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1315
  br label %return, !dbg !1315

return:                                           ; preds = %if.end42, %if.then36, %cleanup, %if.then15, %if.then5, %if.then
  %34 = load i32, ptr %retval, align 4, !dbg !1316
  ret i32 %34, !dbg !1316

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @quo_internal_hwloc_get_proc_last_cpu_location(ptr noundef %topology, i32 noundef %pid, ptr noundef %set, i32 noundef %flags) #0 !dbg !1317 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %pid.addr = alloca i32, align 4
  %set.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1319, metadata !DIExpression()), !dbg !1323
  store i32 %pid, ptr %pid.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !1320, metadata !DIExpression()), !dbg !1324
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1321, metadata !DIExpression()), !dbg !1325
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1322, metadata !DIExpression()), !dbg !1326
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1327, !tbaa !802
  %and = and i32 %0, -16, !dbg !1329
  %tobool = icmp ne i32 %and, 0, !dbg !1329
  br i1 %tobool, label %if.then, label %if.end, !dbg !1330

if.then:                                          ; preds = %entry
  %call = call ptr @__errno_location() #10, !dbg !1331
  store i32 22, ptr %call, align 4, !dbg !1333, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1334
  br label %return, !dbg !1334

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !1335, !tbaa !796
  %binding_hooks = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %1, i32 0, i32 19, !dbg !1337
  %get_proc_last_cpu_location = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks, i32 0, i32 10, !dbg !1338
  %2 = load ptr, ptr %get_proc_last_cpu_location, align 8, !dbg !1338, !tbaa !1339
  %tobool1 = icmp ne ptr %2, null, !dbg !1335
  br i1 %tobool1, label %if.then2, label %if.end6, !dbg !1340

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %topology.addr, align 8, !dbg !1341, !tbaa !796
  %binding_hooks3 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %3, i32 0, i32 19, !dbg !1342
  %get_proc_last_cpu_location4 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks3, i32 0, i32 10, !dbg !1343
  %4 = load ptr, ptr %get_proc_last_cpu_location4, align 8, !dbg !1343, !tbaa !1339
  %5 = load ptr, ptr %topology.addr, align 8, !dbg !1344, !tbaa !796
  %6 = load i32, ptr %pid.addr, align 4, !dbg !1345, !tbaa !802
  %7 = load ptr, ptr %set.addr, align 8, !dbg !1346, !tbaa !796
  %8 = load i32, ptr %flags.addr, align 4, !dbg !1347, !tbaa !802
  %call5 = call i32 %4(ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8), !dbg !1341
  store i32 %call5, ptr %retval, align 4, !dbg !1348
  br label %return, !dbg !1348

if.end6:                                          ; preds = %if.end
  %call7 = call ptr @__errno_location() #10, !dbg !1349
  store i32 38, ptr %call7, align 4, !dbg !1350, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1351
  br label %return, !dbg !1351

return:                                           ; preds = %if.end6, %if.then2, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !1352
  ret i32 %9, !dbg !1352
}

; Function Attrs: nounwind uwtable
define i32 @quo_internal_hwloc_set_membind(ptr noundef %topology, ptr noundef %set, i32 noundef %policy, i32 noundef %flags) #0 !dbg !1353 {
entry:
  %topology.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  %policy.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %nodeset = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1357, metadata !DIExpression()), !dbg !1365
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1358, metadata !DIExpression()), !dbg !1366
  store i32 %policy, ptr %policy.addr, align 4, !tbaa !1367
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !1359, metadata !DIExpression()), !dbg !1368
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1360, metadata !DIExpression()), !dbg !1369
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !1370
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1361, metadata !DIExpression()), !dbg !1371
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1372, !tbaa !802
  %and = and i32 %0, 32, !dbg !1373
  %tobool = icmp ne i32 %and, 0, !dbg !1373
  br i1 %tobool, label %if.then, label %if.else, !dbg !1374

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !1375, !tbaa !796
  %2 = load ptr, ptr %set.addr, align 8, !dbg !1377, !tbaa !796
  %3 = load i32, ptr %policy.addr, align 4, !dbg !1378, !tbaa !1367
  %4 = load i32, ptr %flags.addr, align 4, !dbg !1379, !tbaa !802
  %call = call i32 @hwloc_set_membind_by_nodeset(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4), !dbg !1380
  store i32 %call, ptr %ret, align 4, !dbg !1381, !tbaa !802
  br label %if.end7, !dbg !1382

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %nodeset) #11, !dbg !1383
  tail call void @llvm.dbg.declare(metadata ptr %nodeset, metadata !1362, metadata !DIExpression()), !dbg !1384
  %call1 = call noalias ptr @quo_internal_hwloc_bitmap_alloc(), !dbg !1385
  store ptr %call1, ptr %nodeset, align 8, !dbg !1384, !tbaa !796
  %5 = load ptr, ptr %topology.addr, align 8, !dbg !1386, !tbaa !796
  %6 = load ptr, ptr %nodeset, align 8, !dbg !1388, !tbaa !796
  %7 = load ptr, ptr %set.addr, align 8, !dbg !1389, !tbaa !796
  %call2 = call i32 @hwloc_fix_membind_cpuset(ptr noundef %5, ptr noundef %6, ptr noundef %7), !dbg !1390
  %tobool3 = icmp ne i32 %call2, 0, !dbg !1390
  br i1 %tobool3, label %if.then4, label %if.else5, !dbg !1391

if.then4:                                         ; preds = %if.else
  store i32 -1, ptr %ret, align 4, !dbg !1392, !tbaa !802
  br label %if.end, !dbg !1393

if.else5:                                         ; preds = %if.else
  %8 = load ptr, ptr %topology.addr, align 8, !dbg !1394, !tbaa !796
  %9 = load ptr, ptr %nodeset, align 8, !dbg !1395, !tbaa !796
  %10 = load i32, ptr %policy.addr, align 4, !dbg !1396, !tbaa !1367
  %11 = load i32, ptr %flags.addr, align 4, !dbg !1397, !tbaa !802
  %call6 = call i32 @hwloc_set_membind_by_nodeset(ptr noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11), !dbg !1398
  store i32 %call6, ptr %ret, align 4, !dbg !1399, !tbaa !802
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then4
  %12 = load ptr, ptr %nodeset, align 8, !dbg !1400, !tbaa !796
  call void @quo_internal_hwloc_bitmap_free(ptr noundef %12), !dbg !1401
  call void @llvm.lifetime.end.p0(i64 8, ptr %nodeset) #11, !dbg !1402
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %13 = load i32, ptr %ret, align 4, !dbg !1403, !tbaa !802
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !1404
  ret i32 %13, !dbg !1405
}

; Function Attrs: nounwind uwtable
define internal i32 @hwloc_set_membind_by_nodeset(ptr noundef %topology, ptr noundef %nodeset, i32 noundef %policy, i32 noundef %flags) #0 !dbg !1406 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %nodeset.addr = alloca ptr, align 8
  %policy.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1408, metadata !DIExpression()), !dbg !1418
  store ptr %nodeset, ptr %nodeset.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %nodeset.addr, metadata !1409, metadata !DIExpression()), !dbg !1419
  store i32 %policy, ptr %policy.addr, align 4, !tbaa !1367
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !1410, metadata !DIExpression()), !dbg !1420
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1411, metadata !DIExpression()), !dbg !1421
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1422, !tbaa !802
  %and = and i32 %0, -64, !dbg !1424
  %tobool = icmp ne i32 %and, 0, !dbg !1424
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !1425

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %policy.addr, align 4, !dbg !1426, !tbaa !1367
  %call = call i32 @hwloc__check_membind_policy(i32 noundef %1), !dbg !1427
  %cmp = icmp slt i32 %call, 0, !dbg !1428
  br i1 %cmp, label %if.then, label %if.end, !dbg !1429

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call1 = call ptr @__errno_location() #10, !dbg !1430
  store i32 22, ptr %call1, align 4, !dbg !1432, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1433
  br label %return, !dbg !1433

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %topology.addr, align 8, !dbg !1434, !tbaa !796
  %3 = load ptr, ptr %nodeset.addr, align 8, !dbg !1435, !tbaa !796
  %call2 = call ptr @hwloc_fix_membind(ptr noundef %2, ptr noundef %3), !dbg !1436
  store ptr %call2, ptr %nodeset.addr, align 8, !dbg !1437, !tbaa !796
  %4 = load ptr, ptr %nodeset.addr, align 8, !dbg !1438, !tbaa !796
  %tobool3 = icmp ne ptr %4, null, !dbg !1438
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1440

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !1441
  br label %return, !dbg !1441

if.end5:                                          ; preds = %if.end
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1442, !tbaa !802
  %and6 = and i32 %5, 1, !dbg !1443
  %tobool7 = icmp ne i32 %and6, 0, !dbg !1443
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !1444

if.then8:                                         ; preds = %if.end5
  %6 = load ptr, ptr %topology.addr, align 8, !dbg !1445, !tbaa !796
  %binding_hooks = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %6, i32 0, i32 19, !dbg !1448
  %set_thisproc_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks, i32 0, i32 11, !dbg !1449
  %7 = load ptr, ptr %set_thisproc_membind, align 8, !dbg !1449, !tbaa !1450
  %tobool9 = icmp ne ptr %7, null, !dbg !1445
  br i1 %tobool9, label %if.then10, label %if.end14, !dbg !1451

if.then10:                                        ; preds = %if.then8
  %8 = load ptr, ptr %topology.addr, align 8, !dbg !1452, !tbaa !796
  %binding_hooks11 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %8, i32 0, i32 19, !dbg !1453
  %set_thisproc_membind12 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks11, i32 0, i32 11, !dbg !1454
  %9 = load ptr, ptr %set_thisproc_membind12, align 8, !dbg !1454, !tbaa !1450
  %10 = load ptr, ptr %topology.addr, align 8, !dbg !1455, !tbaa !796
  %11 = load ptr, ptr %nodeset.addr, align 8, !dbg !1456, !tbaa !796
  %12 = load i32, ptr %policy.addr, align 4, !dbg !1457, !tbaa !1367
  %13 = load i32, ptr %flags.addr, align 4, !dbg !1458, !tbaa !802
  %call13 = call i32 %9(ptr noundef %10, ptr noundef %11, i32 noundef %12, i32 noundef %13), !dbg !1452
  store i32 %call13, ptr %retval, align 4, !dbg !1459
  br label %return, !dbg !1459

if.end14:                                         ; preds = %if.then8
  br label %if.end49, !dbg !1460

if.else:                                          ; preds = %if.end5
  %14 = load i32, ptr %flags.addr, align 4, !dbg !1461, !tbaa !802
  %and15 = and i32 %14, 2, !dbg !1462
  %tobool16 = icmp ne i32 %and15, 0, !dbg !1462
  br i1 %tobool16, label %if.then17, label %if.else25, !dbg !1463

if.then17:                                        ; preds = %if.else
  %15 = load ptr, ptr %topology.addr, align 8, !dbg !1464, !tbaa !796
  %binding_hooks18 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %15, i32 0, i32 19, !dbg !1467
  %set_thisthread_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks18, i32 0, i32 13, !dbg !1468
  %16 = load ptr, ptr %set_thisthread_membind, align 8, !dbg !1468, !tbaa !1469
  %tobool19 = icmp ne ptr %16, null, !dbg !1464
  br i1 %tobool19, label %if.then20, label %if.end24, !dbg !1470

if.then20:                                        ; preds = %if.then17
  %17 = load ptr, ptr %topology.addr, align 8, !dbg !1471, !tbaa !796
  %binding_hooks21 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %17, i32 0, i32 19, !dbg !1472
  %set_thisthread_membind22 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks21, i32 0, i32 13, !dbg !1473
  %18 = load ptr, ptr %set_thisthread_membind22, align 8, !dbg !1473, !tbaa !1469
  %19 = load ptr, ptr %topology.addr, align 8, !dbg !1474, !tbaa !796
  %20 = load ptr, ptr %nodeset.addr, align 8, !dbg !1475, !tbaa !796
  %21 = load i32, ptr %policy.addr, align 4, !dbg !1476, !tbaa !1367
  %22 = load i32, ptr %flags.addr, align 4, !dbg !1477, !tbaa !802
  %call23 = call i32 %18(ptr noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22), !dbg !1471
  store i32 %call23, ptr %retval, align 4, !dbg !1478
  br label %return, !dbg !1478

if.end24:                                         ; preds = %if.then17
  br label %if.end48, !dbg !1479

if.else25:                                        ; preds = %if.else
  %23 = load ptr, ptr %topology.addr, align 8, !dbg !1480, !tbaa !796
  %binding_hooks26 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %23, i32 0, i32 19, !dbg !1481
  %set_thisproc_membind27 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks26, i32 0, i32 11, !dbg !1482
  %24 = load ptr, ptr %set_thisproc_membind27, align 8, !dbg !1482, !tbaa !1450
  %tobool28 = icmp ne ptr %24, null, !dbg !1480
  br i1 %tobool28, label %if.then29, label %if.end39, !dbg !1483

if.then29:                                        ; preds = %if.else25
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #11, !dbg !1484
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1412, metadata !DIExpression()), !dbg !1485
  %25 = load ptr, ptr %topology.addr, align 8, !dbg !1486, !tbaa !796
  %binding_hooks30 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %25, i32 0, i32 19, !dbg !1487
  %set_thisproc_membind31 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks30, i32 0, i32 11, !dbg !1488
  %26 = load ptr, ptr %set_thisproc_membind31, align 8, !dbg !1488, !tbaa !1450
  %27 = load ptr, ptr %topology.addr, align 8, !dbg !1489, !tbaa !796
  %28 = load ptr, ptr %nodeset.addr, align 8, !dbg !1490, !tbaa !796
  %29 = load i32, ptr %policy.addr, align 4, !dbg !1491, !tbaa !1367
  %30 = load i32, ptr %flags.addr, align 4, !dbg !1492, !tbaa !802
  %call32 = call i32 %26(ptr noundef %27, ptr noundef %28, i32 noundef %29, i32 noundef %30), !dbg !1486
  store i32 %call32, ptr %err, align 4, !dbg !1485, !tbaa !802
  %31 = load i32, ptr %err, align 4, !dbg !1493, !tbaa !802
  %cmp33 = icmp sge i32 %31, 0, !dbg !1495
  br i1 %cmp33, label %if.then37, label %lor.lhs.false34, !dbg !1496

lor.lhs.false34:                                  ; preds = %if.then29
  %call35 = call ptr @__errno_location() #10, !dbg !1497
  %32 = load i32, ptr %call35, align 4, !dbg !1497, !tbaa !802
  %cmp36 = icmp ne i32 %32, 38, !dbg !1498
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1499

if.then37:                                        ; preds = %lor.lhs.false34, %if.then29
  %33 = load i32, ptr %err, align 4, !dbg !1500, !tbaa !802
  store i32 %33, ptr %retval, align 4, !dbg !1501
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1501

if.end38:                                         ; preds = %lor.lhs.false34
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1502
  br label %cleanup, !dbg !1502

cleanup:                                          ; preds = %if.end38, %if.then37
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #11, !dbg !1502
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end39, !dbg !1503

if.end39:                                         ; preds = %cleanup.cont, %if.else25
  %34 = load ptr, ptr %topology.addr, align 8, !dbg !1504, !tbaa !796
  %binding_hooks40 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %34, i32 0, i32 19, !dbg !1506
  %set_thisthread_membind41 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks40, i32 0, i32 13, !dbg !1507
  %35 = load ptr, ptr %set_thisthread_membind41, align 8, !dbg !1507, !tbaa !1469
  %tobool42 = icmp ne ptr %35, null, !dbg !1504
  br i1 %tobool42, label %if.then43, label %if.end47, !dbg !1508

if.then43:                                        ; preds = %if.end39
  %36 = load ptr, ptr %topology.addr, align 8, !dbg !1509, !tbaa !796
  %binding_hooks44 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %36, i32 0, i32 19, !dbg !1510
  %set_thisthread_membind45 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks44, i32 0, i32 13, !dbg !1511
  %37 = load ptr, ptr %set_thisthread_membind45, align 8, !dbg !1511, !tbaa !1469
  %38 = load ptr, ptr %topology.addr, align 8, !dbg !1512, !tbaa !796
  %39 = load ptr, ptr %nodeset.addr, align 8, !dbg !1513, !tbaa !796
  %40 = load i32, ptr %policy.addr, align 4, !dbg !1514, !tbaa !1367
  %41 = load i32, ptr %flags.addr, align 4, !dbg !1515, !tbaa !802
  %call46 = call i32 %37(ptr noundef %38, ptr noundef %39, i32 noundef %40, i32 noundef %41), !dbg !1509
  store i32 %call46, ptr %retval, align 4, !dbg !1516
  br label %return, !dbg !1516

if.end47:                                         ; preds = %if.end39
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end24
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end14
  %call50 = call ptr @__errno_location() #10, !dbg !1517
  store i32 38, ptr %call50, align 4, !dbg !1518, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1519
  br label %return, !dbg !1519

return:                                           ; preds = %if.end49, %if.then43, %cleanup, %if.then20, %if.then10, %if.then4, %if.then
  %42 = load i32, ptr %retval, align 4, !dbg !1520
  ret i32 %42, !dbg !1520

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !1521 noalias ptr @quo_internal_hwloc_bitmap_alloc() #3

; Function Attrs: nounwind uwtable
define internal i32 @hwloc_fix_membind_cpuset(ptr noundef %topology, ptr noundef %nodeset, ptr noundef %cpuset) #0 !dbg !1524 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %nodeset.addr = alloca ptr, align 8
  %cpuset.addr = alloca ptr, align 8
  %topology_set = alloca ptr, align 8
  %complete_set = alloca ptr, align 8
  %complete_nodeset = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1528, metadata !DIExpression()), !dbg !1534
  store ptr %nodeset, ptr %nodeset.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %nodeset.addr, metadata !1529, metadata !DIExpression()), !dbg !1535
  store ptr %cpuset, ptr %cpuset.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %cpuset.addr, metadata !1530, metadata !DIExpression()), !dbg !1536
  call void @llvm.lifetime.start.p0(i64 8, ptr %topology_set) #11, !dbg !1537
  tail call void @llvm.dbg.declare(metadata ptr %topology_set, metadata !1531, metadata !DIExpression()), !dbg !1538
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !1539, !tbaa !796
  %call = call ptr @quo_internal_hwloc_topology_get_topology_cpuset(ptr noundef %0) #12, !dbg !1540
  store ptr %call, ptr %topology_set, align 8, !dbg !1538, !tbaa !796
  call void @llvm.lifetime.start.p0(i64 8, ptr %complete_set) #11, !dbg !1541
  tail call void @llvm.dbg.declare(metadata ptr %complete_set, metadata !1532, metadata !DIExpression()), !dbg !1542
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !1543, !tbaa !796
  %call1 = call ptr @quo_internal_hwloc_topology_get_complete_cpuset(ptr noundef %1) #12, !dbg !1544
  store ptr %call1, ptr %complete_set, align 8, !dbg !1542, !tbaa !796
  call void @llvm.lifetime.start.p0(i64 8, ptr %complete_nodeset) #11, !dbg !1545
  tail call void @llvm.dbg.declare(metadata ptr %complete_nodeset, metadata !1533, metadata !DIExpression()), !dbg !1546
  %2 = load ptr, ptr %topology.addr, align 8, !dbg !1547, !tbaa !796
  %call2 = call ptr @quo_internal_hwloc_topology_get_complete_nodeset(ptr noundef %2) #12, !dbg !1548
  store ptr %call2, ptr %complete_nodeset, align 8, !dbg !1546, !tbaa !796
  %3 = load ptr, ptr %cpuset.addr, align 8, !dbg !1549, !tbaa !796
  %call3 = call i32 @quo_internal_hwloc_bitmap_iszero(ptr noundef %3) #12, !dbg !1551
  %tobool = icmp ne i32 %call3, 0, !dbg !1551
  br i1 %tobool, label %if.then, label %if.end, !dbg !1552

if.then:                                          ; preds = %entry
  %call4 = call ptr @__errno_location() #10, !dbg !1553
  store i32 22, ptr %call4, align 4, !dbg !1555, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1556
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1556

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %cpuset.addr, align 8, !dbg !1557, !tbaa !796
  %5 = load ptr, ptr %complete_set, align 8, !dbg !1559, !tbaa !796
  %call5 = call i32 @quo_internal_hwloc_bitmap_isincluded(ptr noundef %4, ptr noundef %5) #12, !dbg !1560
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1560
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !1561

if.then7:                                         ; preds = %if.end
  %call8 = call ptr @__errno_location() #10, !dbg !1562
  store i32 22, ptr %call8, align 4, !dbg !1564, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1565
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1565

if.end9:                                          ; preds = %if.end
  %6 = load ptr, ptr %topology_set, align 8, !dbg !1566, !tbaa !796
  %7 = load ptr, ptr %cpuset.addr, align 8, !dbg !1568, !tbaa !796
  %call10 = call i32 @quo_internal_hwloc_bitmap_isincluded(ptr noundef %6, ptr noundef %7) #12, !dbg !1569
  %tobool11 = icmp ne i32 %call10, 0, !dbg !1569
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !1570

if.then12:                                        ; preds = %if.end9
  %8 = load ptr, ptr %nodeset.addr, align 8, !dbg !1571, !tbaa !796
  %9 = load ptr, ptr %complete_nodeset, align 8, !dbg !1573, !tbaa !796
  %call13 = call i32 @quo_internal_hwloc_bitmap_copy(ptr noundef %8, ptr noundef %9), !dbg !1574
  store i32 0, ptr %retval, align 4, !dbg !1575
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1575

if.end14:                                         ; preds = %if.end9
  %10 = load ptr, ptr %topology.addr, align 8, !dbg !1576, !tbaa !796
  %11 = load ptr, ptr %cpuset.addr, align 8, !dbg !1577, !tbaa !796
  %12 = load ptr, ptr %nodeset.addr, align 8, !dbg !1578, !tbaa !796
  %call15 = call i32 @quo_internal_hwloc_cpuset_to_nodeset(ptr noundef %10, ptr noundef %11, ptr noundef %12), !dbg !1579
  store i32 0, ptr %retval, align 4, !dbg !1580
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1580

cleanup:                                          ; preds = %if.end14, %if.then12, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %complete_nodeset) #11, !dbg !1581
  call void @llvm.lifetime.end.p0(i64 8, ptr %complete_set) #11, !dbg !1581
  call void @llvm.lifetime.end.p0(i64 8, ptr %topology_set) #11, !dbg !1581
  %13 = load i32, ptr %retval, align 4, !dbg !1581
  ret i32 %13, !dbg !1581
}

declare !dbg !1582 void @quo_internal_hwloc_bitmap_free(ptr noundef) #3

; Function Attrs: nounwind uwtable
define i32 @quo_internal_hwloc_get_membind(ptr noundef %topology, ptr noundef %set, ptr noundef %policy, i32 noundef %flags) #0 !dbg !1585 {
entry:
  %topology.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  %policy.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %nodeset = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1589, metadata !DIExpression()), !dbg !1597
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1590, metadata !DIExpression()), !dbg !1598
  store ptr %policy, ptr %policy.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !1591, metadata !DIExpression()), !dbg !1599
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1592, metadata !DIExpression()), !dbg !1600
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !1601
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1593, metadata !DIExpression()), !dbg !1602
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1603, !tbaa !802
  %and = and i32 %0, 32, !dbg !1604
  %tobool = icmp ne i32 %and, 0, !dbg !1604
  br i1 %tobool, label %if.then, label %if.else, !dbg !1605

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !1606, !tbaa !796
  %2 = load ptr, ptr %set.addr, align 8, !dbg !1608, !tbaa !796
  %3 = load ptr, ptr %policy.addr, align 8, !dbg !1609, !tbaa !796
  %4 = load i32, ptr %flags.addr, align 4, !dbg !1610, !tbaa !802
  %call = call i32 @hwloc_get_membind_by_nodeset(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4), !dbg !1611
  store i32 %call, ptr %ret, align 4, !dbg !1612, !tbaa !802
  br label %if.end6, !dbg !1613

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %nodeset) #11, !dbg !1614
  tail call void @llvm.dbg.declare(metadata ptr %nodeset, metadata !1594, metadata !DIExpression()), !dbg !1615
  %call1 = call noalias ptr @quo_internal_hwloc_bitmap_alloc(), !dbg !1616
  store ptr %call1, ptr %nodeset, align 8, !dbg !1615, !tbaa !796
  %5 = load ptr, ptr %topology.addr, align 8, !dbg !1617, !tbaa !796
  %6 = load ptr, ptr %nodeset, align 8, !dbg !1618, !tbaa !796
  %7 = load ptr, ptr %policy.addr, align 8, !dbg !1619, !tbaa !796
  %8 = load i32, ptr %flags.addr, align 4, !dbg !1620, !tbaa !802
  %call2 = call i32 @hwloc_get_membind_by_nodeset(ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8), !dbg !1621
  store i32 %call2, ptr %ret, align 4, !dbg !1622, !tbaa !802
  %9 = load i32, ptr %ret, align 4, !dbg !1623, !tbaa !802
  %tobool3 = icmp ne i32 %9, 0, !dbg !1623
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !1625

if.then4:                                         ; preds = %if.else
  %10 = load ptr, ptr %topology.addr, align 8, !dbg !1626, !tbaa !796
  %11 = load ptr, ptr %set.addr, align 8, !dbg !1627, !tbaa !796
  %12 = load ptr, ptr %nodeset, align 8, !dbg !1628, !tbaa !796
  %call5 = call i32 @quo_internal_hwloc_cpuset_from_nodeset(ptr noundef %10, ptr noundef %11, ptr noundef %12), !dbg !1629
  br label %if.end, !dbg !1629

if.end:                                           ; preds = %if.then4, %if.else
  %13 = load ptr, ptr %nodeset, align 8, !dbg !1630, !tbaa !796
  call void @quo_internal_hwloc_bitmap_free(ptr noundef %13), !dbg !1631
  call void @llvm.lifetime.end.p0(i64 8, ptr %nodeset) #11, !dbg !1632
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %14 = load i32, ptr %ret, align 4, !dbg !1633, !tbaa !802
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !1634
  ret i32 %14, !dbg !1635
}

; Function Attrs: nounwind uwtable
define internal i32 @hwloc_get_membind_by_nodeset(ptr noundef %topology, ptr noundef %nodeset, ptr noundef %policy, i32 noundef %flags) #0 !dbg !1636 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %nodeset.addr = alloca ptr, align 8
  %policy.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1638, metadata !DIExpression()), !dbg !1648
  store ptr %nodeset, ptr %nodeset.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %nodeset.addr, metadata !1639, metadata !DIExpression()), !dbg !1649
  store ptr %policy, ptr %policy.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !1640, metadata !DIExpression()), !dbg !1650
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1641, metadata !DIExpression()), !dbg !1651
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1652, !tbaa !802
  %and = and i32 %0, -64, !dbg !1654
  %tobool = icmp ne i32 %and, 0, !dbg !1654
  br i1 %tobool, label %if.then, label %if.end, !dbg !1655

if.then:                                          ; preds = %entry
  %call = call ptr @__errno_location() #10, !dbg !1656
  store i32 22, ptr %call, align 4, !dbg !1658, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1659
  br label %return, !dbg !1659

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1660, !tbaa !802
  %and1 = and i32 %1, 1, !dbg !1661
  %tobool2 = icmp ne i32 %and1, 0, !dbg !1661
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !1662

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr %topology.addr, align 8, !dbg !1663, !tbaa !796
  %binding_hooks = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %2, i32 0, i32 19, !dbg !1666
  %get_thisproc_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks, i32 0, i32 12, !dbg !1667
  %3 = load ptr, ptr %get_thisproc_membind, align 8, !dbg !1667, !tbaa !1668
  %tobool4 = icmp ne ptr %3, null, !dbg !1663
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !1669

if.then5:                                         ; preds = %if.then3
  %4 = load ptr, ptr %topology.addr, align 8, !dbg !1670, !tbaa !796
  %binding_hooks6 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %4, i32 0, i32 19, !dbg !1671
  %get_thisproc_membind7 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks6, i32 0, i32 12, !dbg !1672
  %5 = load ptr, ptr %get_thisproc_membind7, align 8, !dbg !1672, !tbaa !1668
  %6 = load ptr, ptr %topology.addr, align 8, !dbg !1673, !tbaa !796
  %7 = load ptr, ptr %nodeset.addr, align 8, !dbg !1674, !tbaa !796
  %8 = load ptr, ptr %policy.addr, align 8, !dbg !1675, !tbaa !796
  %9 = load i32, ptr %flags.addr, align 4, !dbg !1676, !tbaa !802
  %call8 = call i32 %5(ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %9), !dbg !1670
  store i32 %call8, ptr %retval, align 4, !dbg !1677
  br label %return, !dbg !1677

if.end9:                                          ; preds = %if.then3
  br label %if.end42, !dbg !1678

if.else:                                          ; preds = %if.end
  %10 = load i32, ptr %flags.addr, align 4, !dbg !1679, !tbaa !802
  %and10 = and i32 %10, 2, !dbg !1680
  %tobool11 = icmp ne i32 %and10, 0, !dbg !1680
  br i1 %tobool11, label %if.then12, label %if.else20, !dbg !1681

if.then12:                                        ; preds = %if.else
  %11 = load ptr, ptr %topology.addr, align 8, !dbg !1682, !tbaa !796
  %binding_hooks13 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %11, i32 0, i32 19, !dbg !1685
  %get_thisthread_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks13, i32 0, i32 14, !dbg !1686
  %12 = load ptr, ptr %get_thisthread_membind, align 8, !dbg !1686, !tbaa !1687
  %tobool14 = icmp ne ptr %12, null, !dbg !1682
  br i1 %tobool14, label %if.then15, label %if.end19, !dbg !1688

if.then15:                                        ; preds = %if.then12
  %13 = load ptr, ptr %topology.addr, align 8, !dbg !1689, !tbaa !796
  %binding_hooks16 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %13, i32 0, i32 19, !dbg !1690
  %get_thisthread_membind17 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks16, i32 0, i32 14, !dbg !1691
  %14 = load ptr, ptr %get_thisthread_membind17, align 8, !dbg !1691, !tbaa !1687
  %15 = load ptr, ptr %topology.addr, align 8, !dbg !1692, !tbaa !796
  %16 = load ptr, ptr %nodeset.addr, align 8, !dbg !1693, !tbaa !796
  %17 = load ptr, ptr %policy.addr, align 8, !dbg !1694, !tbaa !796
  %18 = load i32, ptr %flags.addr, align 4, !dbg !1695, !tbaa !802
  %call18 = call i32 %14(ptr noundef %15, ptr noundef %16, ptr noundef %17, i32 noundef %18), !dbg !1689
  store i32 %call18, ptr %retval, align 4, !dbg !1696
  br label %return, !dbg !1696

if.end19:                                         ; preds = %if.then12
  br label %if.end41, !dbg !1697

if.else20:                                        ; preds = %if.else
  %19 = load ptr, ptr %topology.addr, align 8, !dbg !1698, !tbaa !796
  %binding_hooks21 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %19, i32 0, i32 19, !dbg !1699
  %get_thisproc_membind22 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks21, i32 0, i32 12, !dbg !1700
  %20 = load ptr, ptr %get_thisproc_membind22, align 8, !dbg !1700, !tbaa !1668
  %tobool23 = icmp ne ptr %20, null, !dbg !1698
  br i1 %tobool23, label %if.then24, label %if.end32, !dbg !1701

if.then24:                                        ; preds = %if.else20
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #11, !dbg !1702
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1642, metadata !DIExpression()), !dbg !1703
  %21 = load ptr, ptr %topology.addr, align 8, !dbg !1704, !tbaa !796
  %binding_hooks25 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %21, i32 0, i32 19, !dbg !1705
  %get_thisproc_membind26 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks25, i32 0, i32 12, !dbg !1706
  %22 = load ptr, ptr %get_thisproc_membind26, align 8, !dbg !1706, !tbaa !1668
  %23 = load ptr, ptr %topology.addr, align 8, !dbg !1707, !tbaa !796
  %24 = load ptr, ptr %nodeset.addr, align 8, !dbg !1708, !tbaa !796
  %25 = load ptr, ptr %policy.addr, align 8, !dbg !1709, !tbaa !796
  %26 = load i32, ptr %flags.addr, align 4, !dbg !1710, !tbaa !802
  %call27 = call i32 %22(ptr noundef %23, ptr noundef %24, ptr noundef %25, i32 noundef %26), !dbg !1704
  store i32 %call27, ptr %err, align 4, !dbg !1703, !tbaa !802
  %27 = load i32, ptr %err, align 4, !dbg !1711, !tbaa !802
  %cmp = icmp sge i32 %27, 0, !dbg !1713
  br i1 %cmp, label %if.then30, label %lor.lhs.false, !dbg !1714

lor.lhs.false:                                    ; preds = %if.then24
  %call28 = call ptr @__errno_location() #10, !dbg !1715
  %28 = load i32, ptr %call28, align 4, !dbg !1715, !tbaa !802
  %cmp29 = icmp ne i32 %28, 38, !dbg !1716
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !1717

if.then30:                                        ; preds = %lor.lhs.false, %if.then24
  %29 = load i32, ptr %err, align 4, !dbg !1718, !tbaa !802
  store i32 %29, ptr %retval, align 4, !dbg !1719
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1719

if.end31:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1720
  br label %cleanup, !dbg !1720

cleanup:                                          ; preds = %if.end31, %if.then30
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #11, !dbg !1720
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end32, !dbg !1721

if.end32:                                         ; preds = %cleanup.cont, %if.else20
  %30 = load ptr, ptr %topology.addr, align 8, !dbg !1722, !tbaa !796
  %binding_hooks33 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %30, i32 0, i32 19, !dbg !1724
  %get_thisthread_membind34 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks33, i32 0, i32 14, !dbg !1725
  %31 = load ptr, ptr %get_thisthread_membind34, align 8, !dbg !1725, !tbaa !1687
  %tobool35 = icmp ne ptr %31, null, !dbg !1722
  br i1 %tobool35, label %if.then36, label %if.end40, !dbg !1726

if.then36:                                        ; preds = %if.end32
  %32 = load ptr, ptr %topology.addr, align 8, !dbg !1727, !tbaa !796
  %binding_hooks37 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %32, i32 0, i32 19, !dbg !1728
  %get_thisthread_membind38 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks37, i32 0, i32 14, !dbg !1729
  %33 = load ptr, ptr %get_thisthread_membind38, align 8, !dbg !1729, !tbaa !1687
  %34 = load ptr, ptr %topology.addr, align 8, !dbg !1730, !tbaa !796
  %35 = load ptr, ptr %nodeset.addr, align 8, !dbg !1731, !tbaa !796
  %36 = load ptr, ptr %policy.addr, align 8, !dbg !1732, !tbaa !796
  %37 = load i32, ptr %flags.addr, align 4, !dbg !1733, !tbaa !802
  %call39 = call i32 %33(ptr noundef %34, ptr noundef %35, ptr noundef %36, i32 noundef %37), !dbg !1727
  store i32 %call39, ptr %retval, align 4, !dbg !1734
  br label %return, !dbg !1734

if.end40:                                         ; preds = %if.end32
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end19
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end9
  %call43 = call ptr @__errno_location() #10, !dbg !1735
  store i32 38, ptr %call43, align 4, !dbg !1736, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1737
  br label %return, !dbg !1737

return:                                           ; preds = %if.end42, %if.then36, %cleanup, %if.then15, %if.then5, %if.then
  %38 = load i32, ptr %retval, align 4, !dbg !1738
  ret i32 %38, !dbg !1738

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @quo_internal_hwloc_cpuset_from_nodeset(ptr noundef %topology, ptr noundef %_cpuset, ptr noundef %nodeset) #4 !dbg !1739 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %_cpuset.addr = alloca ptr, align 8
  %nodeset.addr = alloca ptr, align 8
  %depth = alloca i32, align 4
  %obj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1743, metadata !DIExpression()), !dbg !1748
  store ptr %_cpuset, ptr %_cpuset.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %_cpuset.addr, metadata !1744, metadata !DIExpression()), !dbg !1749
  store ptr %nodeset, ptr %nodeset.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %nodeset.addr, metadata !1745, metadata !DIExpression()), !dbg !1750
  call void @llvm.lifetime.start.p0(i64 4, ptr %depth) #11, !dbg !1751
  tail call void @llvm.dbg.declare(metadata ptr %depth, metadata !1746, metadata !DIExpression()), !dbg !1752
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !1753, !tbaa !796
  %call = call i32 @quo_internal_hwloc_get_type_depth(ptr noundef %0, i32 noundef 13), !dbg !1754
  store i32 %call, ptr %depth, align 4, !dbg !1752, !tbaa !802
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #11, !dbg !1755
  tail call void @llvm.dbg.declare(metadata ptr %obj, metadata !1747, metadata !DIExpression()), !dbg !1756
  store ptr null, ptr %obj, align 8, !dbg !1756, !tbaa !796
  %1 = load i32, ptr %depth, align 4, !dbg !1757, !tbaa !802
  %cmp = icmp ne i32 %1, -1, !dbg !1757
  br i1 %cmp, label %if.then, label %if.else, !dbg !1760

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !1760

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 1037, ptr noundef @__PRETTY_FUNCTION__.quo_internal_hwloc_cpuset_from_nodeset) #13, !dbg !1757
  unreachable, !dbg !1757

if.end:                                           ; preds = %if.then
  %2 = load ptr, ptr %_cpuset.addr, align 8, !dbg !1761, !tbaa !796
  call void @quo_internal_hwloc_bitmap_zero(ptr noundef %2), !dbg !1762
  br label %while.cond, !dbg !1763

while.cond:                                       ; preds = %if.end9, %if.end
  %3 = load ptr, ptr %topology.addr, align 8, !dbg !1764, !tbaa !796
  %4 = load i32, ptr %depth, align 4, !dbg !1765, !tbaa !802
  %5 = load ptr, ptr %obj, align 8, !dbg !1766, !tbaa !796
  %call1 = call ptr @quo_internal_hwloc_get_next_obj_by_depth(ptr noundef %3, i32 noundef %4, ptr noundef %5), !dbg !1767
  store ptr %call1, ptr %obj, align 8, !dbg !1768, !tbaa !796
  %cmp2 = icmp ne ptr %call1, null, !dbg !1769
  br i1 %cmp2, label %while.body, label %while.end, !dbg !1763

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %nodeset.addr, align 8, !dbg !1770, !tbaa !796
  %7 = load ptr, ptr %obj, align 8, !dbg !1773, !tbaa !796
  %os_index = getelementptr inbounds %struct.quo_internal_hwloc_obj, ptr %7, i32 0, i32 2, !dbg !1774
  %8 = load i32, ptr %os_index, align 8, !dbg !1774, !tbaa !1775
  %call3 = call i32 @quo_internal_hwloc_bitmap_isset(ptr noundef %6, i32 noundef %8) #12, !dbg !1777
  %tobool = icmp ne i32 %call3, 0, !dbg !1777
  br i1 %tobool, label %if.then4, label %if.end9, !dbg !1778

if.then4:                                         ; preds = %while.body
  %9 = load ptr, ptr %_cpuset.addr, align 8, !dbg !1779, !tbaa !796
  %10 = load ptr, ptr %_cpuset.addr, align 8, !dbg !1781, !tbaa !796
  %11 = load ptr, ptr %obj, align 8, !dbg !1782, !tbaa !796
  %cpuset = getelementptr inbounds %struct.quo_internal_hwloc_obj, ptr %11, i32 0, i32 25, !dbg !1783
  %12 = load ptr, ptr %cpuset, align 8, !dbg !1783, !tbaa !1784
  %call5 = call i32 @quo_internal_hwloc_bitmap_or(ptr noundef %9, ptr noundef %10, ptr noundef %12), !dbg !1785
  %cmp6 = icmp slt i32 %call5, 0, !dbg !1786
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1787

if.then7:                                         ; preds = %if.then4
  store i32 -1, ptr %retval, align 4, !dbg !1788
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1788

if.end8:                                          ; preds = %if.then4
  br label %if.end9, !dbg !1789

if.end9:                                          ; preds = %if.end8, %while.body
  br label %while.cond, !dbg !1763, !llvm.loop !1790

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !1793
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1793

cleanup:                                          ; preds = %while.end, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #11, !dbg !1794
  call void @llvm.lifetime.end.p0(i64 4, ptr %depth) #11, !dbg !1794
  %13 = load i32, ptr %retval, align 4, !dbg !1794
  ret i32 %13, !dbg !1794
}

; Function Attrs: nounwind uwtable
define i32 @quo_internal_hwloc_set_proc_membind(ptr noundef %topology, i32 noundef %pid, ptr noundef %set, i32 noundef %policy, i32 noundef %flags) #0 !dbg !1795 {
entry:
  %topology.addr = alloca ptr, align 8
  %pid.addr = alloca i32, align 4
  %set.addr = alloca ptr, align 8
  %policy.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %nodeset = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1799, metadata !DIExpression()), !dbg !1808
  store i32 %pid, ptr %pid.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !1800, metadata !DIExpression()), !dbg !1809
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1801, metadata !DIExpression()), !dbg !1810
  store i32 %policy, ptr %policy.addr, align 4, !tbaa !1367
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !1802, metadata !DIExpression()), !dbg !1811
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1803, metadata !DIExpression()), !dbg !1812
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !1813
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1804, metadata !DIExpression()), !dbg !1814
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1815, !tbaa !802
  %and = and i32 %0, 32, !dbg !1816
  %tobool = icmp ne i32 %and, 0, !dbg !1816
  br i1 %tobool, label %if.then, label %if.else, !dbg !1817

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !1818, !tbaa !796
  %2 = load i32, ptr %pid.addr, align 4, !dbg !1820, !tbaa !802
  %3 = load ptr, ptr %set.addr, align 8, !dbg !1821, !tbaa !796
  %4 = load i32, ptr %policy.addr, align 4, !dbg !1822, !tbaa !1367
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1823, !tbaa !802
  %call = call i32 @hwloc_set_proc_membind_by_nodeset(ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5), !dbg !1824
  store i32 %call, ptr %ret, align 4, !dbg !1825, !tbaa !802
  br label %if.end7, !dbg !1826

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %nodeset) #11, !dbg !1827
  tail call void @llvm.dbg.declare(metadata ptr %nodeset, metadata !1805, metadata !DIExpression()), !dbg !1828
  %call1 = call noalias ptr @quo_internal_hwloc_bitmap_alloc(), !dbg !1829
  store ptr %call1, ptr %nodeset, align 8, !dbg !1828, !tbaa !796
  %6 = load ptr, ptr %topology.addr, align 8, !dbg !1830, !tbaa !796
  %7 = load ptr, ptr %nodeset, align 8, !dbg !1832, !tbaa !796
  %8 = load ptr, ptr %set.addr, align 8, !dbg !1833, !tbaa !796
  %call2 = call i32 @hwloc_fix_membind_cpuset(ptr noundef %6, ptr noundef %7, ptr noundef %8), !dbg !1834
  %tobool3 = icmp ne i32 %call2, 0, !dbg !1834
  br i1 %tobool3, label %if.then4, label %if.else5, !dbg !1835

if.then4:                                         ; preds = %if.else
  store i32 -1, ptr %ret, align 4, !dbg !1836, !tbaa !802
  br label %if.end, !dbg !1837

if.else5:                                         ; preds = %if.else
  %9 = load ptr, ptr %topology.addr, align 8, !dbg !1838, !tbaa !796
  %10 = load i32, ptr %pid.addr, align 4, !dbg !1839, !tbaa !802
  %11 = load ptr, ptr %nodeset, align 8, !dbg !1840, !tbaa !796
  %12 = load i32, ptr %policy.addr, align 4, !dbg !1841, !tbaa !1367
  %13 = load i32, ptr %flags.addr, align 4, !dbg !1842, !tbaa !802
  %call6 = call i32 @hwloc_set_proc_membind_by_nodeset(ptr noundef %9, i32 noundef %10, ptr noundef %11, i32 noundef %12, i32 noundef %13), !dbg !1843
  store i32 %call6, ptr %ret, align 4, !dbg !1844, !tbaa !802
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then4
  %14 = load ptr, ptr %nodeset, align 8, !dbg !1845, !tbaa !796
  call void @quo_internal_hwloc_bitmap_free(ptr noundef %14), !dbg !1846
  call void @llvm.lifetime.end.p0(i64 8, ptr %nodeset) #11, !dbg !1847
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %15 = load i32, ptr %ret, align 4, !dbg !1848, !tbaa !802
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !1849
  ret i32 %15, !dbg !1850
}

; Function Attrs: nounwind uwtable
define internal i32 @hwloc_set_proc_membind_by_nodeset(ptr noundef %topology, i32 noundef %pid, ptr noundef %nodeset, i32 noundef %policy, i32 noundef %flags) #0 !dbg !1851 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %pid.addr = alloca i32, align 4
  %nodeset.addr = alloca ptr, align 8
  %policy.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1853, metadata !DIExpression()), !dbg !1858
  store i32 %pid, ptr %pid.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !1854, metadata !DIExpression()), !dbg !1859
  store ptr %nodeset, ptr %nodeset.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %nodeset.addr, metadata !1855, metadata !DIExpression()), !dbg !1860
  store i32 %policy, ptr %policy.addr, align 4, !tbaa !1367
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !1856, metadata !DIExpression()), !dbg !1861
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1857, metadata !DIExpression()), !dbg !1862
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1863, !tbaa !802
  %and = and i32 %0, -64, !dbg !1865
  %tobool = icmp ne i32 %and, 0, !dbg !1865
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !1866

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %policy.addr, align 4, !dbg !1867, !tbaa !1367
  %call = call i32 @hwloc__check_membind_policy(i32 noundef %1), !dbg !1868
  %cmp = icmp slt i32 %call, 0, !dbg !1869
  br i1 %cmp, label %if.then, label %if.end, !dbg !1870

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call1 = call ptr @__errno_location() #10, !dbg !1871
  store i32 22, ptr %call1, align 4, !dbg !1873, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1874
  br label %return, !dbg !1874

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %topology.addr, align 8, !dbg !1875, !tbaa !796
  %3 = load ptr, ptr %nodeset.addr, align 8, !dbg !1876, !tbaa !796
  %call2 = call ptr @hwloc_fix_membind(ptr noundef %2, ptr noundef %3), !dbg !1877
  store ptr %call2, ptr %nodeset.addr, align 8, !dbg !1878, !tbaa !796
  %4 = load ptr, ptr %nodeset.addr, align 8, !dbg !1879, !tbaa !796
  %tobool3 = icmp ne ptr %4, null, !dbg !1879
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1881

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !1882
  br label %return, !dbg !1882

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %topology.addr, align 8, !dbg !1883, !tbaa !796
  %binding_hooks = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %5, i32 0, i32 19, !dbg !1885
  %set_proc_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks, i32 0, i32 15, !dbg !1886
  %6 = load ptr, ptr %set_proc_membind, align 8, !dbg !1886, !tbaa !1887
  %tobool6 = icmp ne ptr %6, null, !dbg !1883
  br i1 %tobool6, label %if.then7, label %if.end11, !dbg !1888

if.then7:                                         ; preds = %if.end5
  %7 = load ptr, ptr %topology.addr, align 8, !dbg !1889, !tbaa !796
  %binding_hooks8 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %7, i32 0, i32 19, !dbg !1890
  %set_proc_membind9 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks8, i32 0, i32 15, !dbg !1891
  %8 = load ptr, ptr %set_proc_membind9, align 8, !dbg !1891, !tbaa !1887
  %9 = load ptr, ptr %topology.addr, align 8, !dbg !1892, !tbaa !796
  %10 = load i32, ptr %pid.addr, align 4, !dbg !1893, !tbaa !802
  %11 = load ptr, ptr %nodeset.addr, align 8, !dbg !1894, !tbaa !796
  %12 = load i32, ptr %policy.addr, align 4, !dbg !1895, !tbaa !1367
  %13 = load i32, ptr %flags.addr, align 4, !dbg !1896, !tbaa !802
  %call10 = call i32 %8(ptr noundef %9, i32 noundef %10, ptr noundef %11, i32 noundef %12, i32 noundef %13), !dbg !1889
  store i32 %call10, ptr %retval, align 4, !dbg !1897
  br label %return, !dbg !1897

if.end11:                                         ; preds = %if.end5
  %call12 = call ptr @__errno_location() #10, !dbg !1898
  store i32 38, ptr %call12, align 4, !dbg !1899, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1900
  br label %return, !dbg !1900

return:                                           ; preds = %if.end11, %if.then7, %if.then4, %if.then
  %14 = load i32, ptr %retval, align 4, !dbg !1901
  ret i32 %14, !dbg !1901
}

; Function Attrs: nounwind uwtable
define i32 @quo_internal_hwloc_get_proc_membind(ptr noundef %topology, i32 noundef %pid, ptr noundef %set, ptr noundef %policy, i32 noundef %flags) #0 !dbg !1902 {
entry:
  %topology.addr = alloca ptr, align 8
  %pid.addr = alloca i32, align 4
  %set.addr = alloca ptr, align 8
  %policy.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %nodeset = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1906, metadata !DIExpression()), !dbg !1915
  store i32 %pid, ptr %pid.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !1907, metadata !DIExpression()), !dbg !1916
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1908, metadata !DIExpression()), !dbg !1917
  store ptr %policy, ptr %policy.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !1909, metadata !DIExpression()), !dbg !1918
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1910, metadata !DIExpression()), !dbg !1919
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !1920
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1911, metadata !DIExpression()), !dbg !1921
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1922, !tbaa !802
  %and = and i32 %0, 32, !dbg !1923
  %tobool = icmp ne i32 %and, 0, !dbg !1923
  br i1 %tobool, label %if.then, label %if.else, !dbg !1924

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !1925, !tbaa !796
  %2 = load i32, ptr %pid.addr, align 4, !dbg !1927, !tbaa !802
  %3 = load ptr, ptr %set.addr, align 8, !dbg !1928, !tbaa !796
  %4 = load ptr, ptr %policy.addr, align 8, !dbg !1929, !tbaa !796
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1930, !tbaa !802
  %call = call i32 @hwloc_get_proc_membind_by_nodeset(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5), !dbg !1931
  store i32 %call, ptr %ret, align 4, !dbg !1932, !tbaa !802
  br label %if.end6, !dbg !1933

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %nodeset) #11, !dbg !1934
  tail call void @llvm.dbg.declare(metadata ptr %nodeset, metadata !1912, metadata !DIExpression()), !dbg !1935
  %call1 = call noalias ptr @quo_internal_hwloc_bitmap_alloc(), !dbg !1936
  store ptr %call1, ptr %nodeset, align 8, !dbg !1935, !tbaa !796
  %6 = load ptr, ptr %topology.addr, align 8, !dbg !1937, !tbaa !796
  %7 = load i32, ptr %pid.addr, align 4, !dbg !1938, !tbaa !802
  %8 = load ptr, ptr %nodeset, align 8, !dbg !1939, !tbaa !796
  %9 = load ptr, ptr %policy.addr, align 8, !dbg !1940, !tbaa !796
  %10 = load i32, ptr %flags.addr, align 4, !dbg !1941, !tbaa !802
  %call2 = call i32 @hwloc_get_proc_membind_by_nodeset(ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10), !dbg !1942
  store i32 %call2, ptr %ret, align 4, !dbg !1943, !tbaa !802
  %11 = load i32, ptr %ret, align 4, !dbg !1944, !tbaa !802
  %tobool3 = icmp ne i32 %11, 0, !dbg !1944
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !1946

if.then4:                                         ; preds = %if.else
  %12 = load ptr, ptr %topology.addr, align 8, !dbg !1947, !tbaa !796
  %13 = load ptr, ptr %set.addr, align 8, !dbg !1948, !tbaa !796
  %14 = load ptr, ptr %nodeset, align 8, !dbg !1949, !tbaa !796
  %call5 = call i32 @quo_internal_hwloc_cpuset_from_nodeset(ptr noundef %12, ptr noundef %13, ptr noundef %14), !dbg !1950
  br label %if.end, !dbg !1950

if.end:                                           ; preds = %if.then4, %if.else
  %15 = load ptr, ptr %nodeset, align 8, !dbg !1951, !tbaa !796
  call void @quo_internal_hwloc_bitmap_free(ptr noundef %15), !dbg !1952
  call void @llvm.lifetime.end.p0(i64 8, ptr %nodeset) #11, !dbg !1953
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %16 = load i32, ptr %ret, align 4, !dbg !1954, !tbaa !802
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !1955
  ret i32 %16, !dbg !1956
}

; Function Attrs: nounwind uwtable
define internal i32 @hwloc_get_proc_membind_by_nodeset(ptr noundef %topology, i32 noundef %pid, ptr noundef %nodeset, ptr noundef %policy, i32 noundef %flags) #0 !dbg !1957 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %pid.addr = alloca i32, align 4
  %nodeset.addr = alloca ptr, align 8
  %policy.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !1959, metadata !DIExpression()), !dbg !1964
  store i32 %pid, ptr %pid.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !1960, metadata !DIExpression()), !dbg !1965
  store ptr %nodeset, ptr %nodeset.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %nodeset.addr, metadata !1961, metadata !DIExpression()), !dbg !1966
  store ptr %policy, ptr %policy.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !1962, metadata !DIExpression()), !dbg !1967
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1963, metadata !DIExpression()), !dbg !1968
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1969, !tbaa !802
  %and = and i32 %0, -64, !dbg !1971
  %tobool = icmp ne i32 %and, 0, !dbg !1971
  br i1 %tobool, label %if.then, label %if.end, !dbg !1972

if.then:                                          ; preds = %entry
  %call = call ptr @__errno_location() #10, !dbg !1973
  store i32 22, ptr %call, align 4, !dbg !1975, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1976
  br label %return, !dbg !1976

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !1977, !tbaa !796
  %binding_hooks = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %1, i32 0, i32 19, !dbg !1979
  %get_proc_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks, i32 0, i32 16, !dbg !1980
  %2 = load ptr, ptr %get_proc_membind, align 8, !dbg !1980, !tbaa !1981
  %tobool1 = icmp ne ptr %2, null, !dbg !1977
  br i1 %tobool1, label %if.then2, label %if.end6, !dbg !1982

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %topology.addr, align 8, !dbg !1983, !tbaa !796
  %binding_hooks3 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %3, i32 0, i32 19, !dbg !1984
  %get_proc_membind4 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks3, i32 0, i32 16, !dbg !1985
  %4 = load ptr, ptr %get_proc_membind4, align 8, !dbg !1985, !tbaa !1981
  %5 = load ptr, ptr %topology.addr, align 8, !dbg !1986, !tbaa !796
  %6 = load i32, ptr %pid.addr, align 4, !dbg !1987, !tbaa !802
  %7 = load ptr, ptr %nodeset.addr, align 8, !dbg !1988, !tbaa !796
  %8 = load ptr, ptr %policy.addr, align 8, !dbg !1989, !tbaa !796
  %9 = load i32, ptr %flags.addr, align 4, !dbg !1990, !tbaa !802
  %call5 = call i32 %4(ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %9), !dbg !1983
  store i32 %call5, ptr %retval, align 4, !dbg !1991
  br label %return, !dbg !1991

if.end6:                                          ; preds = %if.end
  %call7 = call ptr @__errno_location() #10, !dbg !1992
  store i32 38, ptr %call7, align 4, !dbg !1993, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !1994
  br label %return, !dbg !1994

return:                                           ; preds = %if.end6, %if.then2, %if.then
  %10 = load i32, ptr %retval, align 4, !dbg !1995
  ret i32 %10, !dbg !1995
}

; Function Attrs: nounwind uwtable
define i32 @quo_internal_hwloc_set_area_membind(ptr noundef %topology, ptr noundef %addr, i64 noundef %len, ptr noundef %set, i32 noundef %policy, i32 noundef %flags) #0 !dbg !1996 {
entry:
  %topology.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %set.addr = alloca ptr, align 8
  %policy.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %nodeset = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2000, metadata !DIExpression()), !dbg !2010
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2001, metadata !DIExpression()), !dbg !2011
  store i64 %len, ptr %len.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2002, metadata !DIExpression()), !dbg !2012
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !2003, metadata !DIExpression()), !dbg !2013
  store i32 %policy, ptr %policy.addr, align 4, !tbaa !1367
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !2004, metadata !DIExpression()), !dbg !2014
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2005, metadata !DIExpression()), !dbg !2015
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !2016
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !2006, metadata !DIExpression()), !dbg !2017
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2018, !tbaa !802
  %and = and i32 %0, 32, !dbg !2019
  %tobool = icmp ne i32 %and, 0, !dbg !2019
  br i1 %tobool, label %if.then, label %if.else, !dbg !2020

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !2021, !tbaa !796
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !2023, !tbaa !796
  %3 = load i64, ptr %len.addr, align 8, !dbg !2024, !tbaa !1144
  %4 = load ptr, ptr %set.addr, align 8, !dbg !2025, !tbaa !796
  %5 = load i32, ptr %policy.addr, align 4, !dbg !2026, !tbaa !1367
  %6 = load i32, ptr %flags.addr, align 4, !dbg !2027, !tbaa !802
  %call = call i32 @hwloc_set_area_membind_by_nodeset(ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6), !dbg !2028
  store i32 %call, ptr %ret, align 4, !dbg !2029, !tbaa !802
  br label %if.end7, !dbg !2030

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %nodeset) #11, !dbg !2031
  tail call void @llvm.dbg.declare(metadata ptr %nodeset, metadata !2007, metadata !DIExpression()), !dbg !2032
  %call1 = call noalias ptr @quo_internal_hwloc_bitmap_alloc(), !dbg !2033
  store ptr %call1, ptr %nodeset, align 8, !dbg !2032, !tbaa !796
  %7 = load ptr, ptr %topology.addr, align 8, !dbg !2034, !tbaa !796
  %8 = load ptr, ptr %nodeset, align 8, !dbg !2036, !tbaa !796
  %9 = load ptr, ptr %set.addr, align 8, !dbg !2037, !tbaa !796
  %call2 = call i32 @hwloc_fix_membind_cpuset(ptr noundef %7, ptr noundef %8, ptr noundef %9), !dbg !2038
  %tobool3 = icmp ne i32 %call2, 0, !dbg !2038
  br i1 %tobool3, label %if.then4, label %if.else5, !dbg !2039

if.then4:                                         ; preds = %if.else
  store i32 -1, ptr %ret, align 4, !dbg !2040, !tbaa !802
  br label %if.end, !dbg !2041

if.else5:                                         ; preds = %if.else
  %10 = load ptr, ptr %topology.addr, align 8, !dbg !2042, !tbaa !796
  %11 = load ptr, ptr %addr.addr, align 8, !dbg !2043, !tbaa !796
  %12 = load i64, ptr %len.addr, align 8, !dbg !2044, !tbaa !1144
  %13 = load ptr, ptr %nodeset, align 8, !dbg !2045, !tbaa !796
  %14 = load i32, ptr %policy.addr, align 4, !dbg !2046, !tbaa !1367
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2047, !tbaa !802
  %call6 = call i32 @hwloc_set_area_membind_by_nodeset(ptr noundef %10, ptr noundef %11, i64 noundef %12, ptr noundef %13, i32 noundef %14, i32 noundef %15), !dbg !2048
  store i32 %call6, ptr %ret, align 4, !dbg !2049, !tbaa !802
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then4
  %16 = load ptr, ptr %nodeset, align 8, !dbg !2050, !tbaa !796
  call void @quo_internal_hwloc_bitmap_free(ptr noundef %16), !dbg !2051
  call void @llvm.lifetime.end.p0(i64 8, ptr %nodeset) #11, !dbg !2052
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %17 = load i32, ptr %ret, align 4, !dbg !2053, !tbaa !802
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !2054
  ret i32 %17, !dbg !2055
}

; Function Attrs: nounwind uwtable
define internal i32 @hwloc_set_area_membind_by_nodeset(ptr noundef %topology, ptr noundef %addr, i64 noundef %len, ptr noundef %nodeset, i32 noundef %policy, i32 noundef %flags) #0 !dbg !2056 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %nodeset.addr = alloca ptr, align 8
  %policy.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2058, metadata !DIExpression()), !dbg !2064
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2059, metadata !DIExpression()), !dbg !2065
  store i64 %len, ptr %len.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2060, metadata !DIExpression()), !dbg !2066
  store ptr %nodeset, ptr %nodeset.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %nodeset.addr, metadata !2061, metadata !DIExpression()), !dbg !2067
  store i32 %policy, ptr %policy.addr, align 4, !tbaa !1367
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !2062, metadata !DIExpression()), !dbg !2068
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2063, metadata !DIExpression()), !dbg !2069
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2070, !tbaa !802
  %and = and i32 %0, -64, !dbg !2072
  %tobool = icmp ne i32 %and, 0, !dbg !2072
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2073

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %policy.addr, align 4, !dbg !2074, !tbaa !1367
  %call = call i32 @hwloc__check_membind_policy(i32 noundef %1), !dbg !2075
  %cmp = icmp slt i32 %call, 0, !dbg !2076
  br i1 %cmp, label %if.then, label %if.end, !dbg !2077

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call1 = call ptr @__errno_location() #10, !dbg !2078
  store i32 22, ptr %call1, align 4, !dbg !2080, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !2081
  br label %return, !dbg !2081

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, ptr %len.addr, align 8, !dbg !2082, !tbaa !1144
  %tobool2 = icmp ne i64 %2, 0, !dbg !2082
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2084

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !2085
  br label %return, !dbg !2085

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %topology.addr, align 8, !dbg !2086, !tbaa !796
  %4 = load ptr, ptr %nodeset.addr, align 8, !dbg !2087, !tbaa !796
  %call5 = call ptr @hwloc_fix_membind(ptr noundef %3, ptr noundef %4), !dbg !2088
  store ptr %call5, ptr %nodeset.addr, align 8, !dbg !2089, !tbaa !796
  %5 = load ptr, ptr %nodeset.addr, align 8, !dbg !2090, !tbaa !796
  %tobool6 = icmp ne ptr %5, null, !dbg !2090
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !2092

if.then7:                                         ; preds = %if.end4
  store i32 -1, ptr %retval, align 4, !dbg !2093
  br label %return, !dbg !2093

if.end8:                                          ; preds = %if.end4
  %6 = load ptr, ptr %topology.addr, align 8, !dbg !2094, !tbaa !796
  %binding_hooks = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %6, i32 0, i32 19, !dbg !2096
  %set_area_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks, i32 0, i32 17, !dbg !2097
  %7 = load ptr, ptr %set_area_membind, align 8, !dbg !2097, !tbaa !2098
  %tobool9 = icmp ne ptr %7, null, !dbg !2094
  br i1 %tobool9, label %if.then10, label %if.end14, !dbg !2099

if.then10:                                        ; preds = %if.end8
  %8 = load ptr, ptr %topology.addr, align 8, !dbg !2100, !tbaa !796
  %binding_hooks11 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %8, i32 0, i32 19, !dbg !2101
  %set_area_membind12 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks11, i32 0, i32 17, !dbg !2102
  %9 = load ptr, ptr %set_area_membind12, align 8, !dbg !2102, !tbaa !2098
  %10 = load ptr, ptr %topology.addr, align 8, !dbg !2103, !tbaa !796
  %11 = load ptr, ptr %addr.addr, align 8, !dbg !2104, !tbaa !796
  %12 = load i64, ptr %len.addr, align 8, !dbg !2105, !tbaa !1144
  %13 = load ptr, ptr %nodeset.addr, align 8, !dbg !2106, !tbaa !796
  %14 = load i32, ptr %policy.addr, align 4, !dbg !2107, !tbaa !1367
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2108, !tbaa !802
  %call13 = call i32 %9(ptr noundef %10, ptr noundef %11, i64 noundef %12, ptr noundef %13, i32 noundef %14, i32 noundef %15), !dbg !2100
  store i32 %call13, ptr %retval, align 4, !dbg !2109
  br label %return, !dbg !2109

if.end14:                                         ; preds = %if.end8
  %call15 = call ptr @__errno_location() #10, !dbg !2110
  store i32 38, ptr %call15, align 4, !dbg !2111, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !2112
  br label %return, !dbg !2112

return:                                           ; preds = %if.end14, %if.then10, %if.then7, %if.then3, %if.then
  %16 = load i32, ptr %retval, align 4, !dbg !2113
  ret i32 %16, !dbg !2113
}

; Function Attrs: nounwind uwtable
define i32 @quo_internal_hwloc_get_area_membind(ptr noundef %topology, ptr noundef %addr, i64 noundef %len, ptr noundef %set, ptr noundef %policy, i32 noundef %flags) #0 !dbg !2114 {
entry:
  %topology.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %set.addr = alloca ptr, align 8
  %policy.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %nodeset = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2118, metadata !DIExpression()), !dbg !2128
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2119, metadata !DIExpression()), !dbg !2129
  store i64 %len, ptr %len.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2120, metadata !DIExpression()), !dbg !2130
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !2121, metadata !DIExpression()), !dbg !2131
  store ptr %policy, ptr %policy.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !2122, metadata !DIExpression()), !dbg !2132
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2123, metadata !DIExpression()), !dbg !2133
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !2134
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !2124, metadata !DIExpression()), !dbg !2135
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2136, !tbaa !802
  %and = and i32 %0, 32, !dbg !2137
  %tobool = icmp ne i32 %and, 0, !dbg !2137
  br i1 %tobool, label %if.then, label %if.else, !dbg !2138

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !2139, !tbaa !796
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !2141, !tbaa !796
  %3 = load i64, ptr %len.addr, align 8, !dbg !2142, !tbaa !1144
  %4 = load ptr, ptr %set.addr, align 8, !dbg !2143, !tbaa !796
  %5 = load ptr, ptr %policy.addr, align 8, !dbg !2144, !tbaa !796
  %6 = load i32, ptr %flags.addr, align 4, !dbg !2145, !tbaa !802
  %call = call i32 @hwloc_get_area_membind_by_nodeset(ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6), !dbg !2146
  store i32 %call, ptr %ret, align 4, !dbg !2147, !tbaa !802
  br label %if.end6, !dbg !2148

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %nodeset) #11, !dbg !2149
  tail call void @llvm.dbg.declare(metadata ptr %nodeset, metadata !2125, metadata !DIExpression()), !dbg !2150
  %call1 = call noalias ptr @quo_internal_hwloc_bitmap_alloc(), !dbg !2151
  store ptr %call1, ptr %nodeset, align 8, !dbg !2150, !tbaa !796
  %7 = load ptr, ptr %topology.addr, align 8, !dbg !2152, !tbaa !796
  %8 = load ptr, ptr %addr.addr, align 8, !dbg !2153, !tbaa !796
  %9 = load i64, ptr %len.addr, align 8, !dbg !2154, !tbaa !1144
  %10 = load ptr, ptr %nodeset, align 8, !dbg !2155, !tbaa !796
  %11 = load ptr, ptr %policy.addr, align 8, !dbg !2156, !tbaa !796
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2157, !tbaa !802
  %call2 = call i32 @hwloc_get_area_membind_by_nodeset(ptr noundef %7, ptr noundef %8, i64 noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12), !dbg !2158
  store i32 %call2, ptr %ret, align 4, !dbg !2159, !tbaa !802
  %13 = load i32, ptr %ret, align 4, !dbg !2160, !tbaa !802
  %tobool3 = icmp ne i32 %13, 0, !dbg !2160
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !2162

if.then4:                                         ; preds = %if.else
  %14 = load ptr, ptr %topology.addr, align 8, !dbg !2163, !tbaa !796
  %15 = load ptr, ptr %set.addr, align 8, !dbg !2164, !tbaa !796
  %16 = load ptr, ptr %nodeset, align 8, !dbg !2165, !tbaa !796
  %call5 = call i32 @quo_internal_hwloc_cpuset_from_nodeset(ptr noundef %14, ptr noundef %15, ptr noundef %16), !dbg !2166
  br label %if.end, !dbg !2166

if.end:                                           ; preds = %if.then4, %if.else
  %17 = load ptr, ptr %nodeset, align 8, !dbg !2167, !tbaa !796
  call void @quo_internal_hwloc_bitmap_free(ptr noundef %17), !dbg !2168
  call void @llvm.lifetime.end.p0(i64 8, ptr %nodeset) #11, !dbg !2169
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %18 = load i32, ptr %ret, align 4, !dbg !2170, !tbaa !802
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !2171
  ret i32 %18, !dbg !2172
}

; Function Attrs: nounwind uwtable
define internal i32 @hwloc_get_area_membind_by_nodeset(ptr noundef %topology, ptr noundef %addr, i64 noundef %len, ptr noundef %nodeset, ptr noundef %policy, i32 noundef %flags) #0 !dbg !2173 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %nodeset.addr = alloca ptr, align 8
  %policy.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2175, metadata !DIExpression()), !dbg !2181
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2176, metadata !DIExpression()), !dbg !2182
  store i64 %len, ptr %len.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2177, metadata !DIExpression()), !dbg !2183
  store ptr %nodeset, ptr %nodeset.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %nodeset.addr, metadata !2178, metadata !DIExpression()), !dbg !2184
  store ptr %policy, ptr %policy.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !2179, metadata !DIExpression()), !dbg !2185
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2180, metadata !DIExpression()), !dbg !2186
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2187, !tbaa !802
  %and = and i32 %0, -64, !dbg !2189
  %tobool = icmp ne i32 %and, 0, !dbg !2189
  br i1 %tobool, label %if.then, label %if.end, !dbg !2190

if.then:                                          ; preds = %entry
  %call = call ptr @__errno_location() #10, !dbg !2191
  store i32 22, ptr %call, align 4, !dbg !2193, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !2194
  br label %return, !dbg !2194

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %len.addr, align 8, !dbg !2195, !tbaa !1144
  %tobool1 = icmp ne i64 %1, 0, !dbg !2195
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !2197

if.then2:                                         ; preds = %if.end
  %call3 = call ptr @__errno_location() #10, !dbg !2198
  store i32 22, ptr %call3, align 4, !dbg !2200, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !2201
  br label %return, !dbg !2201

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr %topology.addr, align 8, !dbg !2202, !tbaa !796
  %binding_hooks = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %2, i32 0, i32 19, !dbg !2204
  %get_area_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks, i32 0, i32 18, !dbg !2205
  %3 = load ptr, ptr %get_area_membind, align 8, !dbg !2205, !tbaa !2206
  %tobool5 = icmp ne ptr %3, null, !dbg !2202
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !2207

if.then6:                                         ; preds = %if.end4
  %4 = load ptr, ptr %topology.addr, align 8, !dbg !2208, !tbaa !796
  %binding_hooks7 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %4, i32 0, i32 19, !dbg !2209
  %get_area_membind8 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks7, i32 0, i32 18, !dbg !2210
  %5 = load ptr, ptr %get_area_membind8, align 8, !dbg !2210, !tbaa !2206
  %6 = load ptr, ptr %topology.addr, align 8, !dbg !2211, !tbaa !796
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !2212, !tbaa !796
  %8 = load i64, ptr %len.addr, align 8, !dbg !2213, !tbaa !1144
  %9 = load ptr, ptr %nodeset.addr, align 8, !dbg !2214, !tbaa !796
  %10 = load ptr, ptr %policy.addr, align 8, !dbg !2215, !tbaa !796
  %11 = load i32, ptr %flags.addr, align 4, !dbg !2216, !tbaa !802
  %call9 = call i32 %5(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11), !dbg !2208
  store i32 %call9, ptr %retval, align 4, !dbg !2217
  br label %return, !dbg !2217

if.end10:                                         ; preds = %if.end4
  %call11 = call ptr @__errno_location() #10, !dbg !2218
  store i32 38, ptr %call11, align 4, !dbg !2219, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !2220
  br label %return, !dbg !2220

return:                                           ; preds = %if.end10, %if.then6, %if.then2, %if.then
  %12 = load i32, ptr %retval, align 4, !dbg !2221
  ret i32 %12, !dbg !2221
}

; Function Attrs: nounwind uwtable
define i32 @quo_internal_hwloc_get_area_memlocation(ptr noundef %topology, ptr noundef %addr, i64 noundef %len, ptr noundef %set, i32 noundef %flags) #0 !dbg !2222 {
entry:
  %topology.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %set.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %nodeset = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2226, metadata !DIExpression()), !dbg !2235
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2227, metadata !DIExpression()), !dbg !2236
  store i64 %len, ptr %len.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2228, metadata !DIExpression()), !dbg !2237
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !2229, metadata !DIExpression()), !dbg !2238
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2230, metadata !DIExpression()), !dbg !2239
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !2240
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !2231, metadata !DIExpression()), !dbg !2241
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2242, !tbaa !802
  %and = and i32 %0, 32, !dbg !2243
  %tobool = icmp ne i32 %and, 0, !dbg !2243
  br i1 %tobool, label %if.then, label %if.else, !dbg !2244

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !2245, !tbaa !796
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !2247, !tbaa !796
  %3 = load i64, ptr %len.addr, align 8, !dbg !2248, !tbaa !1144
  %4 = load ptr, ptr %set.addr, align 8, !dbg !2249, !tbaa !796
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2250, !tbaa !802
  %call = call i32 @hwloc_get_area_memlocation_by_nodeset(ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5), !dbg !2251
  store i32 %call, ptr %ret, align 4, !dbg !2252, !tbaa !802
  br label %if.end6, !dbg !2253

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %nodeset) #11, !dbg !2254
  tail call void @llvm.dbg.declare(metadata ptr %nodeset, metadata !2232, metadata !DIExpression()), !dbg !2255
  %call1 = call noalias ptr @quo_internal_hwloc_bitmap_alloc(), !dbg !2256
  store ptr %call1, ptr %nodeset, align 8, !dbg !2255, !tbaa !796
  %6 = load ptr, ptr %topology.addr, align 8, !dbg !2257, !tbaa !796
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !2258, !tbaa !796
  %8 = load i64, ptr %len.addr, align 8, !dbg !2259, !tbaa !1144
  %9 = load ptr, ptr %nodeset, align 8, !dbg !2260, !tbaa !796
  %10 = load i32, ptr %flags.addr, align 4, !dbg !2261, !tbaa !802
  %call2 = call i32 @hwloc_get_area_memlocation_by_nodeset(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, i32 noundef %10), !dbg !2262
  store i32 %call2, ptr %ret, align 4, !dbg !2263, !tbaa !802
  %11 = load i32, ptr %ret, align 4, !dbg !2264, !tbaa !802
  %tobool3 = icmp ne i32 %11, 0, !dbg !2264
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !2266

if.then4:                                         ; preds = %if.else
  %12 = load ptr, ptr %topology.addr, align 8, !dbg !2267, !tbaa !796
  %13 = load ptr, ptr %set.addr, align 8, !dbg !2268, !tbaa !796
  %14 = load ptr, ptr %nodeset, align 8, !dbg !2269, !tbaa !796
  %call5 = call i32 @quo_internal_hwloc_cpuset_from_nodeset(ptr noundef %12, ptr noundef %13, ptr noundef %14), !dbg !2270
  br label %if.end, !dbg !2270

if.end:                                           ; preds = %if.then4, %if.else
  %15 = load ptr, ptr %nodeset, align 8, !dbg !2271, !tbaa !796
  call void @quo_internal_hwloc_bitmap_free(ptr noundef %15), !dbg !2272
  call void @llvm.lifetime.end.p0(i64 8, ptr %nodeset) #11, !dbg !2273
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %16 = load i32, ptr %ret, align 4, !dbg !2274, !tbaa !802
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !2275
  ret i32 %16, !dbg !2276
}

; Function Attrs: nounwind uwtable
define internal i32 @hwloc_get_area_memlocation_by_nodeset(ptr noundef %topology, ptr noundef %addr, i64 noundef %len, ptr noundef %nodeset, i32 noundef %flags) #0 !dbg !2277 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %nodeset.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2279, metadata !DIExpression()), !dbg !2284
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2280, metadata !DIExpression()), !dbg !2285
  store i64 %len, ptr %len.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2281, metadata !DIExpression()), !dbg !2286
  store ptr %nodeset, ptr %nodeset.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %nodeset.addr, metadata !2282, metadata !DIExpression()), !dbg !2287
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2283, metadata !DIExpression()), !dbg !2288
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2289, !tbaa !802
  %and = and i32 %0, -64, !dbg !2291
  %tobool = icmp ne i32 %and, 0, !dbg !2291
  br i1 %tobool, label %if.then, label %if.end, !dbg !2292

if.then:                                          ; preds = %entry
  %call = call ptr @__errno_location() #10, !dbg !2293
  store i32 22, ptr %call, align 4, !dbg !2295, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !2296
  br label %return, !dbg !2296

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %len.addr, align 8, !dbg !2297, !tbaa !1144
  %tobool1 = icmp ne i64 %1, 0, !dbg !2297
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2299

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !2300
  br label %return, !dbg !2300

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %topology.addr, align 8, !dbg !2301, !tbaa !796
  %binding_hooks = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %2, i32 0, i32 19, !dbg !2303
  %get_area_memlocation = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks, i32 0, i32 19, !dbg !2304
  %3 = load ptr, ptr %get_area_memlocation, align 8, !dbg !2304, !tbaa !2305
  %tobool4 = icmp ne ptr %3, null, !dbg !2301
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !2306

if.then5:                                         ; preds = %if.end3
  %4 = load ptr, ptr %topology.addr, align 8, !dbg !2307, !tbaa !796
  %binding_hooks6 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %4, i32 0, i32 19, !dbg !2308
  %get_area_memlocation7 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks6, i32 0, i32 19, !dbg !2309
  %5 = load ptr, ptr %get_area_memlocation7, align 8, !dbg !2309, !tbaa !2305
  %6 = load ptr, ptr %topology.addr, align 8, !dbg !2310, !tbaa !796
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !2311, !tbaa !796
  %8 = load i64, ptr %len.addr, align 8, !dbg !2312, !tbaa !1144
  %9 = load ptr, ptr %nodeset.addr, align 8, !dbg !2313, !tbaa !796
  %10 = load i32, ptr %flags.addr, align 4, !dbg !2314, !tbaa !802
  %call8 = call i32 %5(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9, i32 noundef %10), !dbg !2307
  store i32 %call8, ptr %retval, align 4, !dbg !2315
  br label %return, !dbg !2315

if.end9:                                          ; preds = %if.end3
  %call10 = call ptr @__errno_location() #10, !dbg !2316
  store i32 38, ptr %call10, align 4, !dbg !2317, !tbaa !802
  store i32 -1, ptr %retval, align 4, !dbg !2318
  br label %return, !dbg !2318

return:                                           ; preds = %if.end9, %if.then5, %if.then2, %if.then
  %11 = load i32, ptr %retval, align 4, !dbg !2319
  ret i32 %11, !dbg !2319
}

; Function Attrs: nounwind uwtable
define hidden ptr @quo_internal_hwloc_alloc_heap(ptr noundef %topology, i64 noundef %len) #0 !dbg !2320 {
entry:
  %topology.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2322, metadata !DIExpression()), !dbg !2325
  store i64 %len, ptr %len.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2323, metadata !DIExpression()), !dbg !2326
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !2327
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !2324, metadata !DIExpression()), !dbg !2328
  store ptr null, ptr %p, align 8, !dbg !2328, !tbaa !796
  %call = call i64 @sysconf(i32 noundef 30) #11, !dbg !2329
  %0 = load i64, ptr %len.addr, align 8, !dbg !2330, !tbaa !1144
  %call1 = call i32 @posix_memalign(ptr noundef %p, i64 noundef %call, i64 noundef %0) #11, !dbg !2331
  %call2 = call ptr @__errno_location() #10, !dbg !2332
  store i32 %call1, ptr %call2, align 4, !dbg !2333, !tbaa !802
  %call3 = call ptr @__errno_location() #10, !dbg !2334
  %1 = load i32, ptr %call3, align 4, !dbg !2334, !tbaa !802
  %tobool = icmp ne i32 %1, 0, !dbg !2334
  br i1 %tobool, label %if.then, label %if.end, !dbg !2336

if.then:                                          ; preds = %entry
  store ptr null, ptr %p, align 8, !dbg !2337, !tbaa !796
  br label %if.end, !dbg !2338

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %p, align 8, !dbg !2339, !tbaa !796
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !2340
  ret ptr %2, !dbg !2341
}

; Function Attrs: nounwind
declare !dbg !2342 i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) #5

; Function Attrs: nounwind
declare !dbg !2347 i64 @sysconf(i32 noundef) #5

; Function Attrs: nounwind uwtable
define hidden ptr @quo_internal_hwloc_alloc_mmap(ptr noundef %topology, i64 noundef %len) #0 !dbg !2352 {
entry:
  %topology.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %buffer = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2354, metadata !DIExpression()), !dbg !2357
  store i64 %len, ptr %len.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2355, metadata !DIExpression()), !dbg !2358
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #11, !dbg !2359
  tail call void @llvm.dbg.declare(metadata ptr %buffer, metadata !2356, metadata !DIExpression()), !dbg !2360
  %0 = load i64, ptr %len.addr, align 8, !dbg !2361, !tbaa !1144
  %call = call ptr @mmap(ptr noundef null, i64 noundef %0, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #11, !dbg !2362
  store ptr %call, ptr %buffer, align 8, !dbg !2360, !tbaa !796
  %1 = load ptr, ptr %buffer, align 8, !dbg !2363, !tbaa !796
  %cmp = icmp eq ptr %1, inttoptr (i64 -1 to ptr), !dbg !2364
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2363

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !2363

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %buffer, align 8, !dbg !2365, !tbaa !796
  br label %cond.end, !dbg !2363

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %2, %cond.false ], !dbg !2363
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #11, !dbg !2366
  ret ptr %cond, !dbg !2367
}

; Function Attrs: nounwind
declare !dbg !2368 ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #5

; Function Attrs: nounwind uwtable
define hidden i32 @quo_internal_hwloc_free_heap(ptr noundef %topology, ptr noundef %addr, i64 noundef %len) #0 !dbg !2373 {
entry:
  %topology.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2375, metadata !DIExpression()), !dbg !2378
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2376, metadata !DIExpression()), !dbg !2379
  store i64 %len, ptr %len.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2377, metadata !DIExpression()), !dbg !2380
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2381, !tbaa !796
  call void @free(ptr noundef %0) #11, !dbg !2382
  ret i32 0, !dbg !2383
}

; Function Attrs: nounwind
declare !dbg !2384 void @free(ptr noundef) #5

; Function Attrs: nounwind uwtable
define hidden i32 @quo_internal_hwloc_free_mmap(ptr noundef %topology, ptr noundef %addr, i64 noundef %len) #0 !dbg !2387 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2389, metadata !DIExpression()), !dbg !2392
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2390, metadata !DIExpression()), !dbg !2393
  store i64 %len, ptr %len.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2391, metadata !DIExpression()), !dbg !2394
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2395, !tbaa !796
  %tobool = icmp ne ptr %0, null, !dbg !2395
  br i1 %tobool, label %if.end, label %if.then, !dbg !2397

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2398
  br label %return, !dbg !2398

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !2399, !tbaa !796
  %2 = load i64, ptr %len.addr, align 8, !dbg !2400, !tbaa !1144
  %call = call i32 @munmap(ptr noundef %1, i64 noundef %2) #11, !dbg !2401
  store i32 %call, ptr %retval, align 4, !dbg !2402
  br label %return, !dbg !2402

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !2403
  ret i32 %3, !dbg !2403
}

; Function Attrs: nounwind
declare !dbg !2404 i32 @munmap(ptr noundef, i64 noundef) #5

; Function Attrs: nounwind uwtable
define ptr @quo_internal_hwloc_alloc(ptr noundef %topology, i64 noundef %len) #0 !dbg !2407 {
entry:
  %retval = alloca ptr, align 8
  %topology.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2409, metadata !DIExpression()), !dbg !2411
  store i64 %len, ptr %len.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2410, metadata !DIExpression()), !dbg !2412
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !2413, !tbaa !796
  %binding_hooks = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %0, i32 0, i32 19, !dbg !2415
  %alloc = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks, i32 0, i32 20, !dbg !2416
  %1 = load ptr, ptr %alloc, align 8, !dbg !2416, !tbaa !2417
  %tobool = icmp ne ptr %1, null, !dbg !2413
  br i1 %tobool, label %if.then, label %if.end, !dbg !2418

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %topology.addr, align 8, !dbg !2419, !tbaa !796
  %binding_hooks1 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %2, i32 0, i32 19, !dbg !2420
  %alloc2 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks1, i32 0, i32 20, !dbg !2421
  %3 = load ptr, ptr %alloc2, align 8, !dbg !2421, !tbaa !2417
  %4 = load ptr, ptr %topology.addr, align 8, !dbg !2422, !tbaa !796
  %5 = load i64, ptr %len.addr, align 8, !dbg !2423, !tbaa !1144
  %call = call ptr %3(ptr noundef %4, i64 noundef %5), !dbg !2419
  store ptr %call, ptr %retval, align 8, !dbg !2424
  br label %return, !dbg !2424

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %topology.addr, align 8, !dbg !2425, !tbaa !796
  %7 = load i64, ptr %len.addr, align 8, !dbg !2426, !tbaa !1144
  %call3 = call ptr @quo_internal_hwloc_alloc_heap(ptr noundef %6, i64 noundef %7), !dbg !2427
  store ptr %call3, ptr %retval, align 8, !dbg !2428
  br label %return, !dbg !2428

return:                                           ; preds = %if.end, %if.then
  %8 = load ptr, ptr %retval, align 8, !dbg !2429
  ret ptr %8, !dbg !2429
}

; Function Attrs: nounwind uwtable
define noalias ptr @quo_internal_hwloc_alloc_membind(ptr noundef %topology, i64 noundef %len, ptr noundef %set, i32 noundef %policy, i32 noundef %flags) #0 !dbg !2430 {
entry:
  %topology.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %set.addr = alloca ptr, align 8
  %policy.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  %nodeset = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2434, metadata !DIExpression()), !dbg !2443
  store i64 %len, ptr %len.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2435, metadata !DIExpression()), !dbg !2444
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !2436, metadata !DIExpression()), !dbg !2445
  store i32 %policy, ptr %policy.addr, align 4, !tbaa !1367
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !2437, metadata !DIExpression()), !dbg !2446
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2438, metadata !DIExpression()), !dbg !2447
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #11, !dbg !2448
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !2439, metadata !DIExpression()), !dbg !2449
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2450, !tbaa !802
  %and = and i32 %0, 32, !dbg !2451
  %tobool = icmp ne i32 %and, 0, !dbg !2451
  br i1 %tobool, label %if.then, label %if.else, !dbg !2452

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !2453, !tbaa !796
  %2 = load i64, ptr %len.addr, align 8, !dbg !2455, !tbaa !1144
  %3 = load ptr, ptr %set.addr, align 8, !dbg !2456, !tbaa !796
  %4 = load i32, ptr %policy.addr, align 4, !dbg !2457, !tbaa !1367
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2458, !tbaa !802
  %call = call ptr @hwloc_alloc_membind_by_nodeset(ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5), !dbg !2459
  store ptr %call, ptr %ret, align 8, !dbg !2460, !tbaa !796
  br label %if.end13, !dbg !2461

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %nodeset) #11, !dbg !2462
  tail call void @llvm.dbg.declare(metadata ptr %nodeset, metadata !2440, metadata !DIExpression()), !dbg !2463
  %call1 = call noalias ptr @quo_internal_hwloc_bitmap_alloc(), !dbg !2464
  store ptr %call1, ptr %nodeset, align 8, !dbg !2463, !tbaa !796
  %6 = load ptr, ptr %topology.addr, align 8, !dbg !2465, !tbaa !796
  %7 = load ptr, ptr %nodeset, align 8, !dbg !2467, !tbaa !796
  %8 = load ptr, ptr %set.addr, align 8, !dbg !2468, !tbaa !796
  %call2 = call i32 @hwloc_fix_membind_cpuset(ptr noundef %6, ptr noundef %7, ptr noundef %8), !dbg !2469
  %tobool3 = icmp ne i32 %call2, 0, !dbg !2469
  br i1 %tobool3, label %if.then4, label %if.else10, !dbg !2470

if.then4:                                         ; preds = %if.else
  %9 = load i32, ptr %flags.addr, align 4, !dbg !2471, !tbaa !802
  %and5 = and i32 %9, 4, !dbg !2474
  %tobool6 = icmp ne i32 %and5, 0, !dbg !2474
  br i1 %tobool6, label %if.then7, label %if.else8, !dbg !2475

if.then7:                                         ; preds = %if.then4
  store ptr null, ptr %ret, align 8, !dbg !2476, !tbaa !796
  br label %if.end, !dbg !2477

if.else8:                                         ; preds = %if.then4
  %10 = load ptr, ptr %topology.addr, align 8, !dbg !2478, !tbaa !796
  %11 = load i64, ptr %len.addr, align 8, !dbg !2479, !tbaa !1144
  %call9 = call ptr @quo_internal_hwloc_alloc(ptr noundef %10, i64 noundef %11), !dbg !2480
  store ptr %call9, ptr %ret, align 8, !dbg !2481, !tbaa !796
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then7
  br label %if.end12, !dbg !2482

if.else10:                                        ; preds = %if.else
  %12 = load ptr, ptr %topology.addr, align 8, !dbg !2483, !tbaa !796
  %13 = load i64, ptr %len.addr, align 8, !dbg !2484, !tbaa !1144
  %14 = load ptr, ptr %nodeset, align 8, !dbg !2485, !tbaa !796
  %15 = load i32, ptr %policy.addr, align 4, !dbg !2486, !tbaa !1367
  %16 = load i32, ptr %flags.addr, align 4, !dbg !2487, !tbaa !802
  %call11 = call ptr @hwloc_alloc_membind_by_nodeset(ptr noundef %12, i64 noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16), !dbg !2488
  store ptr %call11, ptr %ret, align 8, !dbg !2489, !tbaa !796
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.end
  %17 = load ptr, ptr %nodeset, align 8, !dbg !2490, !tbaa !796
  call void @quo_internal_hwloc_bitmap_free(ptr noundef %17), !dbg !2491
  call void @llvm.lifetime.end.p0(i64 8, ptr %nodeset) #11, !dbg !2492
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then
  %18 = load ptr, ptr %ret, align 8, !dbg !2493, !tbaa !796
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #11, !dbg !2494
  ret ptr %18, !dbg !2495
}

; Function Attrs: nounwind uwtable
define internal ptr @hwloc_alloc_membind_by_nodeset(ptr noundef %topology, i64 noundef %len, ptr noundef %nodeset, i32 noundef %policy, i32 noundef %flags) #0 !dbg !2496 {
entry:
  %retval = alloca ptr, align 8
  %topology.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %nodeset.addr = alloca ptr, align 8
  %policy.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %error = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2498, metadata !DIExpression()), !dbg !2511
  store i64 %len, ptr %len.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2499, metadata !DIExpression()), !dbg !2512
  store ptr %nodeset, ptr %nodeset.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %nodeset.addr, metadata !2500, metadata !DIExpression()), !dbg !2513
  store i32 %policy, ptr %policy.addr, align 4, !tbaa !1367
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !2501, metadata !DIExpression()), !dbg !2514
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2502, metadata !DIExpression()), !dbg !2515
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !2516
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !2503, metadata !DIExpression()), !dbg !2517
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2518, !tbaa !802
  %and = and i32 %0, -64, !dbg !2520
  %tobool = icmp ne i32 %and, 0, !dbg !2520
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2521

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %policy.addr, align 4, !dbg !2522, !tbaa !1367
  %call = call i32 @hwloc__check_membind_policy(i32 noundef %1), !dbg !2523
  %cmp = icmp slt i32 %call, 0, !dbg !2524
  br i1 %cmp, label %if.then, label %if.end, !dbg !2525

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call1 = call ptr @__errno_location() #10, !dbg !2526
  store i32 22, ptr %call1, align 4, !dbg !2528, !tbaa !802
  store ptr null, ptr %retval, align 8, !dbg !2529
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2529

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %topology.addr, align 8, !dbg !2530, !tbaa !796
  %3 = load ptr, ptr %nodeset.addr, align 8, !dbg !2531, !tbaa !796
  %call2 = call ptr @hwloc_fix_membind(ptr noundef %2, ptr noundef %3), !dbg !2532
  store ptr %call2, ptr %nodeset.addr, align 8, !dbg !2533, !tbaa !796
  %4 = load ptr, ptr %nodeset.addr, align 8, !dbg !2534, !tbaa !796
  %tobool3 = icmp ne ptr %4, null, !dbg !2534
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !2536

if.then4:                                         ; preds = %if.end
  br label %fallback, !dbg !2537

if.end5:                                          ; preds = %if.end
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2538, !tbaa !802
  %and6 = and i32 %5, 8, !dbg !2540
  %tobool7 = icmp ne i32 %and6, 0, !dbg !2540
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !2541

if.then8:                                         ; preds = %if.end5
  %call9 = call ptr @__errno_location() #10, !dbg !2542
  store i32 22, ptr %call9, align 4, !dbg !2544, !tbaa !802
  br label %fallback, !dbg !2545

if.end10:                                         ; preds = %if.end5
  %6 = load ptr, ptr %topology.addr, align 8, !dbg !2546, !tbaa !796
  %binding_hooks = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %6, i32 0, i32 19, !dbg !2547
  %alloc_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks, i32 0, i32 21, !dbg !2548
  %7 = load ptr, ptr %alloc_membind, align 8, !dbg !2548, !tbaa !2549
  %tobool11 = icmp ne ptr %7, null, !dbg !2546
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !2550

if.then12:                                        ; preds = %if.end10
  %8 = load ptr, ptr %topology.addr, align 8, !dbg !2551, !tbaa !796
  %binding_hooks13 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %8, i32 0, i32 19, !dbg !2552
  %alloc_membind14 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks13, i32 0, i32 21, !dbg !2553
  %9 = load ptr, ptr %alloc_membind14, align 8, !dbg !2553, !tbaa !2549
  %10 = load ptr, ptr %topology.addr, align 8, !dbg !2554, !tbaa !796
  %11 = load i64, ptr %len.addr, align 8, !dbg !2555, !tbaa !1144
  %12 = load ptr, ptr %nodeset.addr, align 8, !dbg !2556, !tbaa !796
  %13 = load i32, ptr %policy.addr, align 4, !dbg !2557, !tbaa !1367
  %14 = load i32, ptr %flags.addr, align 4, !dbg !2558, !tbaa !802
  %call15 = call ptr %9(ptr noundef %10, i64 noundef %11, ptr noundef %12, i32 noundef %13, i32 noundef %14), !dbg !2551
  store ptr %call15, ptr %retval, align 8, !dbg !2559
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2559

if.else:                                          ; preds = %if.end10
  %15 = load ptr, ptr %topology.addr, align 8, !dbg !2560, !tbaa !796
  %binding_hooks16 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %15, i32 0, i32 19, !dbg !2561
  %set_area_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks16, i32 0, i32 17, !dbg !2562
  %16 = load ptr, ptr %set_area_membind, align 8, !dbg !2562, !tbaa !2098
  %tobool17 = icmp ne ptr %16, null, !dbg !2560
  br i1 %tobool17, label %if.then18, label %if.else33, !dbg !2563

if.then18:                                        ; preds = %if.else
  %17 = load ptr, ptr %topology.addr, align 8, !dbg !2564, !tbaa !796
  %18 = load i64, ptr %len.addr, align 8, !dbg !2565, !tbaa !1144
  %call19 = call ptr @quo_internal_hwloc_alloc(ptr noundef %17, i64 noundef %18), !dbg !2566
  store ptr %call19, ptr %p, align 8, !dbg !2567, !tbaa !796
  %19 = load ptr, ptr %p, align 8, !dbg !2568, !tbaa !796
  %tobool20 = icmp ne ptr %19, null, !dbg !2568
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !2570

if.then21:                                        ; preds = %if.then18
  store ptr null, ptr %retval, align 8, !dbg !2571
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2571

if.end22:                                         ; preds = %if.then18
  %20 = load ptr, ptr %topology.addr, align 8, !dbg !2572, !tbaa !796
  %binding_hooks23 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %20, i32 0, i32 19, !dbg !2573
  %set_area_membind24 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks23, i32 0, i32 17, !dbg !2574
  %21 = load ptr, ptr %set_area_membind24, align 8, !dbg !2574, !tbaa !2098
  %22 = load ptr, ptr %topology.addr, align 8, !dbg !2575, !tbaa !796
  %23 = load ptr, ptr %p, align 8, !dbg !2576, !tbaa !796
  %24 = load i64, ptr %len.addr, align 8, !dbg !2577, !tbaa !1144
  %25 = load ptr, ptr %nodeset.addr, align 8, !dbg !2578, !tbaa !796
  %26 = load i32, ptr %policy.addr, align 4, !dbg !2579, !tbaa !1367
  %27 = load i32, ptr %flags.addr, align 4, !dbg !2580, !tbaa !802
  %call25 = call i32 %21(ptr noundef %22, ptr noundef %23, i64 noundef %24, ptr noundef %25, i32 noundef %26, i32 noundef %27), !dbg !2572
  %tobool26 = icmp ne i32 %call25, 0, !dbg !2572
  br i1 %tobool26, label %land.lhs.true, label %if.end32, !dbg !2581

land.lhs.true:                                    ; preds = %if.end22
  %28 = load i32, ptr %flags.addr, align 4, !dbg !2582, !tbaa !802
  %and27 = and i32 %28, 4, !dbg !2583
  %tobool28 = icmp ne i32 %and27, 0, !dbg !2583
  br i1 %tobool28, label %if.then29, label %if.end32, !dbg !2584

if.then29:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #11, !dbg !2585
  tail call void @llvm.dbg.declare(metadata ptr %error, metadata !2504, metadata !DIExpression()), !dbg !2586
  %call30 = call ptr @__errno_location() #10, !dbg !2587
  %29 = load i32, ptr %call30, align 4, !dbg !2587, !tbaa !802
  store i32 %29, ptr %error, align 4, !dbg !2586, !tbaa !802
  %30 = load ptr, ptr %p, align 8, !dbg !2588, !tbaa !796
  call void @free(ptr noundef %30) #11, !dbg !2589
  %31 = load i32, ptr %error, align 4, !dbg !2590, !tbaa !802
  %call31 = call ptr @__errno_location() #10, !dbg !2591
  store i32 %31, ptr %call31, align 4, !dbg !2592, !tbaa !802
  store ptr null, ptr %retval, align 8, !dbg !2593
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #11, !dbg !2594
  br label %cleanup

if.end32:                                         ; preds = %land.lhs.true, %if.end22
  %32 = load ptr, ptr %p, align 8, !dbg !2595, !tbaa !796
  store ptr %32, ptr %retval, align 8, !dbg !2596
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2596

if.else33:                                        ; preds = %if.else
  %call34 = call ptr @__errno_location() #10, !dbg !2597
  store i32 38, ptr %call34, align 4, !dbg !2599, !tbaa !802
  br label %if.end35

if.end35:                                         ; preds = %if.else33
  br label %if.end36

if.end36:                                         ; preds = %if.end35
  br label %fallback, !dbg !2548

fallback:                                         ; preds = %if.end36, %if.then8, %if.then4
  tail call void @llvm.dbg.label(metadata !2510), !dbg !2600
  %33 = load i32, ptr %flags.addr, align 4, !dbg !2601, !tbaa !802
  %and37 = and i32 %33, 4, !dbg !2603
  %tobool38 = icmp ne i32 %and37, 0, !dbg !2603
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !2604

if.then39:                                        ; preds = %fallback
  store ptr null, ptr %retval, align 8, !dbg !2605
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2605

if.end40:                                         ; preds = %fallback
  %34 = load ptr, ptr %topology.addr, align 8, !dbg !2606, !tbaa !796
  %35 = load i64, ptr %len.addr, align 8, !dbg !2607, !tbaa !1144
  %call41 = call ptr @quo_internal_hwloc_alloc(ptr noundef %34, i64 noundef %35), !dbg !2608
  store ptr %call41, ptr %retval, align 8, !dbg !2609
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2609

cleanup:                                          ; preds = %if.end40, %if.then39, %if.end32, %if.then29, %if.then21, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !2610
  %36 = load ptr, ptr %retval, align 8, !dbg !2610
  ret ptr %36, !dbg !2610
}

; Function Attrs: nounwind uwtable
define i32 @quo_internal_hwloc_free(ptr noundef %topology, ptr noundef %addr, i64 noundef %len) #0 !dbg !2611 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2613, metadata !DIExpression()), !dbg !2616
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2614, metadata !DIExpression()), !dbg !2617
  store i64 %len, ptr %len.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2615, metadata !DIExpression()), !dbg !2618
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !2619, !tbaa !796
  %binding_hooks = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %0, i32 0, i32 19, !dbg !2621
  %free_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks, i32 0, i32 22, !dbg !2622
  %1 = load ptr, ptr %free_membind, align 8, !dbg !2622, !tbaa !2623
  %tobool = icmp ne ptr %1, null, !dbg !2619
  br i1 %tobool, label %if.then, label %if.end, !dbg !2624

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %topology.addr, align 8, !dbg !2625, !tbaa !796
  %binding_hooks1 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %2, i32 0, i32 19, !dbg !2626
  %free_membind2 = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks1, i32 0, i32 22, !dbg !2627
  %3 = load ptr, ptr %free_membind2, align 8, !dbg !2627, !tbaa !2623
  %4 = load ptr, ptr %topology.addr, align 8, !dbg !2628, !tbaa !796
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2629, !tbaa !796
  %6 = load i64, ptr %len.addr, align 8, !dbg !2630, !tbaa !1144
  %call = call i32 %3(ptr noundef %4, ptr noundef %5, i64 noundef %6), !dbg !2625
  store i32 %call, ptr %retval, align 4, !dbg !2631
  br label %return, !dbg !2631

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %topology.addr, align 8, !dbg !2632, !tbaa !796
  %8 = load ptr, ptr %addr.addr, align 8, !dbg !2633, !tbaa !796
  %9 = load i64, ptr %len.addr, align 8, !dbg !2634, !tbaa !1144
  %call3 = call i32 @quo_internal_hwloc_free_heap(ptr noundef %7, ptr noundef %8, i64 noundef %9), !dbg !2635
  store i32 %call3, ptr %retval, align 4, !dbg !2636
  br label %return, !dbg !2636

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, ptr %retval, align 4, !dbg !2637
  ret i32 %10, !dbg !2637
}

; Function Attrs: nounwind uwtable
define hidden void @quo_internal_hwloc_set_native_binding_hooks(ptr noundef %hooks, ptr noundef %support) #0 !dbg !2638 {
entry:
  %hooks.addr = alloca ptr, align 8
  %support.addr = alloca ptr, align 8
  store ptr %hooks, ptr %hooks.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %hooks.addr, metadata !2644, metadata !DIExpression()), !dbg !2646
  store ptr %support, ptr %support.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %support.addr, metadata !2645, metadata !DIExpression()), !dbg !2647
  %0 = load ptr, ptr %hooks.addr, align 8, !dbg !2648, !tbaa !796
  %1 = load ptr, ptr %support.addr, align 8, !dbg !2649, !tbaa !796
  call void @quo_internal_hwloc_set_linuxfs_hooks(ptr noundef %0, ptr noundef %1), !dbg !2650
  ret void, !dbg !2651
}

declare !dbg !2652 void @quo_internal_hwloc_set_linuxfs_hooks(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define hidden void @quo_internal_hwloc_set_binding_hooks(ptr noundef %topology) #0 !dbg !2653 {
entry:
  %topology.addr = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2657, metadata !DIExpression()), !dbg !2658
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !2659, !tbaa !796
  %is_thissystem = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %0, i32 0, i32 8, !dbg !2661
  %1 = load i32, ptr %is_thissystem, align 8, !dbg !2661, !tbaa !2662
  %tobool = icmp ne i32 %1, 0, !dbg !2659
  br i1 %tobool, label %if.then, label %if.else, !dbg !2663

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %topology.addr, align 8, !dbg !2664, !tbaa !796
  %binding_hooks = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %2, i32 0, i32 19, !dbg !2666
  %3 = load ptr, ptr %topology.addr, align 8, !dbg !2667, !tbaa !796
  %support = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %3, i32 0, i32 20, !dbg !2668
  call void @quo_internal_hwloc_set_native_binding_hooks(ptr noundef %binding_hooks, ptr noundef %support), !dbg !2669
  br label %if.end, !dbg !2670

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %topology.addr, align 8, !dbg !2671, !tbaa !796
  %binding_hooks1 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %4, i32 0, i32 19, !dbg !2673
  %5 = load ptr, ptr %topology.addr, align 8, !dbg !2674, !tbaa !796
  %support2 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %5, i32 0, i32 20, !dbg !2675
  call void @hwloc_set_dummy_hooks(ptr noundef %binding_hooks1, ptr noundef %support2), !dbg !2676
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %topology.addr, align 8, !dbg !2677, !tbaa !796
  %is_thissystem3 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %6, i32 0, i32 8, !dbg !2679
  %7 = load i32, ptr %is_thissystem3, align 8, !dbg !2679, !tbaa !2662
  %tobool4 = icmp ne i32 %7, 0, !dbg !2677
  br i1 %tobool4, label %if.then5, label %if.end151, !dbg !2680

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr %topology.addr, align 8, !dbg !2681, !tbaa !796
  %binding_hooks6 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %8, i32 0, i32 19, !dbg !2681
  %set_thisproc_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks6, i32 0, i32 0, !dbg !2681
  %9 = load ptr, ptr %set_thisproc_cpubind, align 8, !dbg !2681, !tbaa !829
  %tobool7 = icmp ne ptr %9, null, !dbg !2681
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !2684

if.then8:                                         ; preds = %if.then5
  %10 = load ptr, ptr %topology.addr, align 8, !dbg !2681, !tbaa !796
  %support9 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %10, i32 0, i32 20, !dbg !2681
  %cpubind = getelementptr inbounds %struct.quo_internal_hwloc_topology_support, ptr %support9, i32 0, i32 1, !dbg !2681
  %11 = load ptr, ptr %cpubind, align 8, !dbg !2681, !tbaa !2685
  %set_thisproc_cpubind10 = getelementptr inbounds %struct.quo_internal_hwloc_topology_cpubind_support, ptr %11, i32 0, i32 0, !dbg !2681
  store i8 1, ptr %set_thisproc_cpubind10, align 1, !dbg !2681, !tbaa !2686
  br label %if.end11, !dbg !2681

if.end11:                                         ; preds = %if.then8, %if.then5
  %12 = load ptr, ptr %topology.addr, align 8, !dbg !2688, !tbaa !796
  %binding_hooks12 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %12, i32 0, i32 19, !dbg !2688
  %get_thisproc_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks12, i32 0, i32 1, !dbg !2688
  %13 = load ptr, ptr %get_thisproc_cpubind, align 8, !dbg !2688, !tbaa !984
  %tobool13 = icmp ne ptr %13, null, !dbg !2688
  br i1 %tobool13, label %if.then14, label %if.end18, !dbg !2690

if.then14:                                        ; preds = %if.end11
  %14 = load ptr, ptr %topology.addr, align 8, !dbg !2688, !tbaa !796
  %support15 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %14, i32 0, i32 20, !dbg !2688
  %cpubind16 = getelementptr inbounds %struct.quo_internal_hwloc_topology_support, ptr %support15, i32 0, i32 1, !dbg !2688
  %15 = load ptr, ptr %cpubind16, align 8, !dbg !2688, !tbaa !2685
  %get_thisproc_cpubind17 = getelementptr inbounds %struct.quo_internal_hwloc_topology_cpubind_support, ptr %15, i32 0, i32 1, !dbg !2688
  store i8 1, ptr %get_thisproc_cpubind17, align 1, !dbg !2688, !tbaa !2691
  br label %if.end18, !dbg !2688

if.end18:                                         ; preds = %if.then14, %if.end11
  %16 = load ptr, ptr %topology.addr, align 8, !dbg !2692, !tbaa !796
  %binding_hooks19 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %16, i32 0, i32 19, !dbg !2692
  %set_proc_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks19, i32 0, i32 4, !dbg !2692
  %17 = load ptr, ptr %set_proc_cpubind, align 8, !dbg !2692, !tbaa !1083
  %tobool20 = icmp ne ptr %17, null, !dbg !2692
  br i1 %tobool20, label %if.then21, label %if.end25, !dbg !2694

if.then21:                                        ; preds = %if.end18
  %18 = load ptr, ptr %topology.addr, align 8, !dbg !2692, !tbaa !796
  %support22 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %18, i32 0, i32 20, !dbg !2692
  %cpubind23 = getelementptr inbounds %struct.quo_internal_hwloc_topology_support, ptr %support22, i32 0, i32 1, !dbg !2692
  %19 = load ptr, ptr %cpubind23, align 8, !dbg !2692, !tbaa !2685
  %set_proc_cpubind24 = getelementptr inbounds %struct.quo_internal_hwloc_topology_cpubind_support, ptr %19, i32 0, i32 2, !dbg !2692
  store i8 1, ptr %set_proc_cpubind24, align 1, !dbg !2692, !tbaa !2695
  br label %if.end25, !dbg !2692

if.end25:                                         ; preds = %if.then21, %if.end18
  %20 = load ptr, ptr %topology.addr, align 8, !dbg !2696, !tbaa !796
  %binding_hooks26 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %20, i32 0, i32 19, !dbg !2696
  %get_proc_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks26, i32 0, i32 5, !dbg !2696
  %21 = load ptr, ptr %get_proc_cpubind, align 8, !dbg !2696, !tbaa !1121
  %tobool27 = icmp ne ptr %21, null, !dbg !2696
  br i1 %tobool27, label %if.then28, label %if.end32, !dbg !2698

if.then28:                                        ; preds = %if.end25
  %22 = load ptr, ptr %topology.addr, align 8, !dbg !2696, !tbaa !796
  %support29 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %22, i32 0, i32 20, !dbg !2696
  %cpubind30 = getelementptr inbounds %struct.quo_internal_hwloc_topology_support, ptr %support29, i32 0, i32 1, !dbg !2696
  %23 = load ptr, ptr %cpubind30, align 8, !dbg !2696, !tbaa !2685
  %get_proc_cpubind31 = getelementptr inbounds %struct.quo_internal_hwloc_topology_cpubind_support, ptr %23, i32 0, i32 3, !dbg !2696
  store i8 1, ptr %get_proc_cpubind31, align 1, !dbg !2696, !tbaa !2699
  br label %if.end32, !dbg !2696

if.end32:                                         ; preds = %if.then28, %if.end25
  %24 = load ptr, ptr %topology.addr, align 8, !dbg !2700, !tbaa !796
  %binding_hooks33 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %24, i32 0, i32 19, !dbg !2700
  %set_thisthread_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks33, i32 0, i32 2, !dbg !2700
  %25 = load ptr, ptr %set_thisthread_cpubind, align 8, !dbg !2700, !tbaa !852
  %tobool34 = icmp ne ptr %25, null, !dbg !2700
  br i1 %tobool34, label %if.then35, label %if.end39, !dbg !2702

if.then35:                                        ; preds = %if.end32
  %26 = load ptr, ptr %topology.addr, align 8, !dbg !2700, !tbaa !796
  %support36 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %26, i32 0, i32 20, !dbg !2700
  %cpubind37 = getelementptr inbounds %struct.quo_internal_hwloc_topology_support, ptr %support36, i32 0, i32 1, !dbg !2700
  %27 = load ptr, ptr %cpubind37, align 8, !dbg !2700, !tbaa !2685
  %set_thisthread_cpubind38 = getelementptr inbounds %struct.quo_internal_hwloc_topology_cpubind_support, ptr %27, i32 0, i32 4, !dbg !2700
  store i8 1, ptr %set_thisthread_cpubind38, align 1, !dbg !2700, !tbaa !2703
  br label %if.end39, !dbg !2700

if.end39:                                         ; preds = %if.then35, %if.end32
  %28 = load ptr, ptr %topology.addr, align 8, !dbg !2704, !tbaa !796
  %binding_hooks40 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %28, i32 0, i32 19, !dbg !2704
  %get_thisthread_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks40, i32 0, i32 3, !dbg !2704
  %29 = load ptr, ptr %get_thisthread_cpubind, align 8, !dbg !2704, !tbaa !1002
  %tobool41 = icmp ne ptr %29, null, !dbg !2704
  br i1 %tobool41, label %if.then42, label %if.end46, !dbg !2706

if.then42:                                        ; preds = %if.end39
  %30 = load ptr, ptr %topology.addr, align 8, !dbg !2704, !tbaa !796
  %support43 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %30, i32 0, i32 20, !dbg !2704
  %cpubind44 = getelementptr inbounds %struct.quo_internal_hwloc_topology_support, ptr %support43, i32 0, i32 1, !dbg !2704
  %31 = load ptr, ptr %cpubind44, align 8, !dbg !2704, !tbaa !2685
  %get_thisthread_cpubind45 = getelementptr inbounds %struct.quo_internal_hwloc_topology_cpubind_support, ptr %31, i32 0, i32 5, !dbg !2704
  store i8 1, ptr %get_thisthread_cpubind45, align 1, !dbg !2704, !tbaa !2707
  br label %if.end46, !dbg !2704

if.end46:                                         ; preds = %if.then42, %if.end39
  %32 = load ptr, ptr %topology.addr, align 8, !dbg !2708, !tbaa !796
  %binding_hooks47 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %32, i32 0, i32 19, !dbg !2708
  %set_thread_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks47, i32 0, i32 6, !dbg !2708
  %33 = load ptr, ptr %set_thread_cpubind, align 8, !dbg !2708, !tbaa !1168
  %tobool48 = icmp ne ptr %33, null, !dbg !2708
  br i1 %tobool48, label %if.then49, label %if.end53, !dbg !2710

if.then49:                                        ; preds = %if.end46
  %34 = load ptr, ptr %topology.addr, align 8, !dbg !2708, !tbaa !796
  %support50 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %34, i32 0, i32 20, !dbg !2708
  %cpubind51 = getelementptr inbounds %struct.quo_internal_hwloc_topology_support, ptr %support50, i32 0, i32 1, !dbg !2708
  %35 = load ptr, ptr %cpubind51, align 8, !dbg !2708, !tbaa !2685
  %set_thread_cpubind52 = getelementptr inbounds %struct.quo_internal_hwloc_topology_cpubind_support, ptr %35, i32 0, i32 6, !dbg !2708
  store i8 1, ptr %set_thread_cpubind52, align 1, !dbg !2708, !tbaa !2711
  br label %if.end53, !dbg !2708

if.end53:                                         ; preds = %if.then49, %if.end46
  %36 = load ptr, ptr %topology.addr, align 8, !dbg !2712, !tbaa !796
  %binding_hooks54 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %36, i32 0, i32 19, !dbg !2712
  %get_thread_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks54, i32 0, i32 7, !dbg !2712
  %37 = load ptr, ptr %get_thread_cpubind, align 8, !dbg !2712, !tbaa !1206
  %tobool55 = icmp ne ptr %37, null, !dbg !2712
  br i1 %tobool55, label %if.then56, label %if.end60, !dbg !2714

if.then56:                                        ; preds = %if.end53
  %38 = load ptr, ptr %topology.addr, align 8, !dbg !2712, !tbaa !796
  %support57 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %38, i32 0, i32 20, !dbg !2712
  %cpubind58 = getelementptr inbounds %struct.quo_internal_hwloc_topology_support, ptr %support57, i32 0, i32 1, !dbg !2712
  %39 = load ptr, ptr %cpubind58, align 8, !dbg !2712, !tbaa !2685
  %get_thread_cpubind59 = getelementptr inbounds %struct.quo_internal_hwloc_topology_cpubind_support, ptr %39, i32 0, i32 7, !dbg !2712
  store i8 1, ptr %get_thread_cpubind59, align 1, !dbg !2712, !tbaa !2715
  br label %if.end60, !dbg !2712

if.end60:                                         ; preds = %if.then56, %if.end53
  %40 = load ptr, ptr %topology.addr, align 8, !dbg !2716, !tbaa !796
  %binding_hooks61 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %40, i32 0, i32 19, !dbg !2716
  %get_thisproc_last_cpu_location = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks61, i32 0, i32 8, !dbg !2716
  %41 = load ptr, ptr %get_thisproc_last_cpu_location, align 8, !dbg !2716, !tbaa !1250
  %tobool62 = icmp ne ptr %41, null, !dbg !2716
  br i1 %tobool62, label %if.then63, label %if.end67, !dbg !2718

if.then63:                                        ; preds = %if.end60
  %42 = load ptr, ptr %topology.addr, align 8, !dbg !2716, !tbaa !796
  %support64 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %42, i32 0, i32 20, !dbg !2716
  %cpubind65 = getelementptr inbounds %struct.quo_internal_hwloc_topology_support, ptr %support64, i32 0, i32 1, !dbg !2716
  %43 = load ptr, ptr %cpubind65, align 8, !dbg !2716, !tbaa !2685
  %get_thisproc_last_cpu_location66 = getelementptr inbounds %struct.quo_internal_hwloc_topology_cpubind_support, ptr %43, i32 0, i32 8, !dbg !2716
  store i8 1, ptr %get_thisproc_last_cpu_location66, align 1, !dbg !2716, !tbaa !2719
  br label %if.end67, !dbg !2716

if.end67:                                         ; preds = %if.then63, %if.end60
  %44 = load ptr, ptr %topology.addr, align 8, !dbg !2720, !tbaa !796
  %binding_hooks68 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %44, i32 0, i32 19, !dbg !2720
  %get_proc_last_cpu_location = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks68, i32 0, i32 10, !dbg !2720
  %45 = load ptr, ptr %get_proc_last_cpu_location, align 8, !dbg !2720, !tbaa !1339
  %tobool69 = icmp ne ptr %45, null, !dbg !2720
  br i1 %tobool69, label %if.then70, label %if.end74, !dbg !2722

if.then70:                                        ; preds = %if.end67
  %46 = load ptr, ptr %topology.addr, align 8, !dbg !2720, !tbaa !796
  %support71 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %46, i32 0, i32 20, !dbg !2720
  %cpubind72 = getelementptr inbounds %struct.quo_internal_hwloc_topology_support, ptr %support71, i32 0, i32 1, !dbg !2720
  %47 = load ptr, ptr %cpubind72, align 8, !dbg !2720, !tbaa !2685
  %get_proc_last_cpu_location73 = getelementptr inbounds %struct.quo_internal_hwloc_topology_cpubind_support, ptr %47, i32 0, i32 9, !dbg !2720
  store i8 1, ptr %get_proc_last_cpu_location73, align 1, !dbg !2720, !tbaa !2723
  br label %if.end74, !dbg !2720

if.end74:                                         ; preds = %if.then70, %if.end67
  %48 = load ptr, ptr %topology.addr, align 8, !dbg !2724, !tbaa !796
  %binding_hooks75 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %48, i32 0, i32 19, !dbg !2724
  %get_thisthread_last_cpu_location = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks75, i32 0, i32 9, !dbg !2724
  %49 = load ptr, ptr %get_thisthread_last_cpu_location, align 8, !dbg !2724, !tbaa !1268
  %tobool76 = icmp ne ptr %49, null, !dbg !2724
  br i1 %tobool76, label %if.then77, label %if.end81, !dbg !2726

if.then77:                                        ; preds = %if.end74
  %50 = load ptr, ptr %topology.addr, align 8, !dbg !2724, !tbaa !796
  %support78 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %50, i32 0, i32 20, !dbg !2724
  %cpubind79 = getelementptr inbounds %struct.quo_internal_hwloc_topology_support, ptr %support78, i32 0, i32 1, !dbg !2724
  %51 = load ptr, ptr %cpubind79, align 8, !dbg !2724, !tbaa !2685
  %get_thisthread_last_cpu_location80 = getelementptr inbounds %struct.quo_internal_hwloc_topology_cpubind_support, ptr %51, i32 0, i32 10, !dbg !2724
  store i8 1, ptr %get_thisthread_last_cpu_location80, align 1, !dbg !2724, !tbaa !2727
  br label %if.end81, !dbg !2724

if.end81:                                         ; preds = %if.then77, %if.end74
  %52 = load ptr, ptr %topology.addr, align 8, !dbg !2728, !tbaa !796
  %binding_hooks82 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %52, i32 0, i32 19, !dbg !2728
  %set_thisproc_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks82, i32 0, i32 11, !dbg !2728
  %53 = load ptr, ptr %set_thisproc_membind, align 8, !dbg !2728, !tbaa !1450
  %tobool83 = icmp ne ptr %53, null, !dbg !2728
  br i1 %tobool83, label %if.then84, label %if.end87, !dbg !2730

if.then84:                                        ; preds = %if.end81
  %54 = load ptr, ptr %topology.addr, align 8, !dbg !2728, !tbaa !796
  %support85 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %54, i32 0, i32 20, !dbg !2728
  %membind = getelementptr inbounds %struct.quo_internal_hwloc_topology_support, ptr %support85, i32 0, i32 2, !dbg !2728
  %55 = load ptr, ptr %membind, align 8, !dbg !2728, !tbaa !2731
  %set_thisproc_membind86 = getelementptr inbounds %struct.quo_internal_hwloc_topology_membind_support, ptr %55, i32 0, i32 0, !dbg !2728
  store i8 1, ptr %set_thisproc_membind86, align 1, !dbg !2728, !tbaa !2732
  br label %if.end87, !dbg !2728

if.end87:                                         ; preds = %if.then84, %if.end81
  %56 = load ptr, ptr %topology.addr, align 8, !dbg !2734, !tbaa !796
  %binding_hooks88 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %56, i32 0, i32 19, !dbg !2734
  %get_thisproc_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks88, i32 0, i32 12, !dbg !2734
  %57 = load ptr, ptr %get_thisproc_membind, align 8, !dbg !2734, !tbaa !1668
  %tobool89 = icmp ne ptr %57, null, !dbg !2734
  br i1 %tobool89, label %if.then90, label %if.end94, !dbg !2736

if.then90:                                        ; preds = %if.end87
  %58 = load ptr, ptr %topology.addr, align 8, !dbg !2734, !tbaa !796
  %support91 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %58, i32 0, i32 20, !dbg !2734
  %membind92 = getelementptr inbounds %struct.quo_internal_hwloc_topology_support, ptr %support91, i32 0, i32 2, !dbg !2734
  %59 = load ptr, ptr %membind92, align 8, !dbg !2734, !tbaa !2731
  %get_thisproc_membind93 = getelementptr inbounds %struct.quo_internal_hwloc_topology_membind_support, ptr %59, i32 0, i32 1, !dbg !2734
  store i8 1, ptr %get_thisproc_membind93, align 1, !dbg !2734, !tbaa !2737
  br label %if.end94, !dbg !2734

if.end94:                                         ; preds = %if.then90, %if.end87
  %60 = load ptr, ptr %topology.addr, align 8, !dbg !2738, !tbaa !796
  %binding_hooks95 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %60, i32 0, i32 19, !dbg !2738
  %set_thisthread_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks95, i32 0, i32 13, !dbg !2738
  %61 = load ptr, ptr %set_thisthread_membind, align 8, !dbg !2738, !tbaa !1469
  %tobool96 = icmp ne ptr %61, null, !dbg !2738
  br i1 %tobool96, label %if.then97, label %if.end101, !dbg !2740

if.then97:                                        ; preds = %if.end94
  %62 = load ptr, ptr %topology.addr, align 8, !dbg !2738, !tbaa !796
  %support98 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %62, i32 0, i32 20, !dbg !2738
  %membind99 = getelementptr inbounds %struct.quo_internal_hwloc_topology_support, ptr %support98, i32 0, i32 2, !dbg !2738
  %63 = load ptr, ptr %membind99, align 8, !dbg !2738, !tbaa !2731
  %set_thisthread_membind100 = getelementptr inbounds %struct.quo_internal_hwloc_topology_membind_support, ptr %63, i32 0, i32 4, !dbg !2738
  store i8 1, ptr %set_thisthread_membind100, align 1, !dbg !2738, !tbaa !2741
  br label %if.end101, !dbg !2738

if.end101:                                        ; preds = %if.then97, %if.end94
  %64 = load ptr, ptr %topology.addr, align 8, !dbg !2742, !tbaa !796
  %binding_hooks102 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %64, i32 0, i32 19, !dbg !2742
  %get_thisthread_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks102, i32 0, i32 14, !dbg !2742
  %65 = load ptr, ptr %get_thisthread_membind, align 8, !dbg !2742, !tbaa !1687
  %tobool103 = icmp ne ptr %65, null, !dbg !2742
  br i1 %tobool103, label %if.then104, label %if.end108, !dbg !2744

if.then104:                                       ; preds = %if.end101
  %66 = load ptr, ptr %topology.addr, align 8, !dbg !2742, !tbaa !796
  %support105 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %66, i32 0, i32 20, !dbg !2742
  %membind106 = getelementptr inbounds %struct.quo_internal_hwloc_topology_support, ptr %support105, i32 0, i32 2, !dbg !2742
  %67 = load ptr, ptr %membind106, align 8, !dbg !2742, !tbaa !2731
  %get_thisthread_membind107 = getelementptr inbounds %struct.quo_internal_hwloc_topology_membind_support, ptr %67, i32 0, i32 5, !dbg !2742
  store i8 1, ptr %get_thisthread_membind107, align 1, !dbg !2742, !tbaa !2745
  br label %if.end108, !dbg !2742

if.end108:                                        ; preds = %if.then104, %if.end101
  %68 = load ptr, ptr %topology.addr, align 8, !dbg !2746, !tbaa !796
  %binding_hooks109 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %68, i32 0, i32 19, !dbg !2746
  %set_proc_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks109, i32 0, i32 15, !dbg !2746
  %69 = load ptr, ptr %set_proc_membind, align 8, !dbg !2746, !tbaa !1887
  %tobool110 = icmp ne ptr %69, null, !dbg !2746
  br i1 %tobool110, label %if.then111, label %if.end115, !dbg !2748

if.then111:                                       ; preds = %if.end108
  %70 = load ptr, ptr %topology.addr, align 8, !dbg !2746, !tbaa !796
  %support112 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %70, i32 0, i32 20, !dbg !2746
  %membind113 = getelementptr inbounds %struct.quo_internal_hwloc_topology_support, ptr %support112, i32 0, i32 2, !dbg !2746
  %71 = load ptr, ptr %membind113, align 8, !dbg !2746, !tbaa !2731
  %set_proc_membind114 = getelementptr inbounds %struct.quo_internal_hwloc_topology_membind_support, ptr %71, i32 0, i32 2, !dbg !2746
  store i8 1, ptr %set_proc_membind114, align 1, !dbg !2746, !tbaa !2749
  br label %if.end115, !dbg !2746

if.end115:                                        ; preds = %if.then111, %if.end108
  %72 = load ptr, ptr %topology.addr, align 8, !dbg !2750, !tbaa !796
  %binding_hooks116 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %72, i32 0, i32 19, !dbg !2750
  %get_proc_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks116, i32 0, i32 16, !dbg !2750
  %73 = load ptr, ptr %get_proc_membind, align 8, !dbg !2750, !tbaa !1981
  %tobool117 = icmp ne ptr %73, null, !dbg !2750
  br i1 %tobool117, label %if.then118, label %if.end122, !dbg !2752

if.then118:                                       ; preds = %if.end115
  %74 = load ptr, ptr %topology.addr, align 8, !dbg !2750, !tbaa !796
  %support119 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %74, i32 0, i32 20, !dbg !2750
  %membind120 = getelementptr inbounds %struct.quo_internal_hwloc_topology_support, ptr %support119, i32 0, i32 2, !dbg !2750
  %75 = load ptr, ptr %membind120, align 8, !dbg !2750, !tbaa !2731
  %get_proc_membind121 = getelementptr inbounds %struct.quo_internal_hwloc_topology_membind_support, ptr %75, i32 0, i32 3, !dbg !2750
  store i8 1, ptr %get_proc_membind121, align 1, !dbg !2750, !tbaa !2753
  br label %if.end122, !dbg !2750

if.end122:                                        ; preds = %if.then118, %if.end115
  %76 = load ptr, ptr %topology.addr, align 8, !dbg !2754, !tbaa !796
  %binding_hooks123 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %76, i32 0, i32 19, !dbg !2754
  %set_area_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks123, i32 0, i32 17, !dbg !2754
  %77 = load ptr, ptr %set_area_membind, align 8, !dbg !2754, !tbaa !2098
  %tobool124 = icmp ne ptr %77, null, !dbg !2754
  br i1 %tobool124, label %if.then125, label %if.end129, !dbg !2756

if.then125:                                       ; preds = %if.end122
  %78 = load ptr, ptr %topology.addr, align 8, !dbg !2754, !tbaa !796
  %support126 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %78, i32 0, i32 20, !dbg !2754
  %membind127 = getelementptr inbounds %struct.quo_internal_hwloc_topology_support, ptr %support126, i32 0, i32 2, !dbg !2754
  %79 = load ptr, ptr %membind127, align 8, !dbg !2754, !tbaa !2731
  %set_area_membind128 = getelementptr inbounds %struct.quo_internal_hwloc_topology_membind_support, ptr %79, i32 0, i32 6, !dbg !2754
  store i8 1, ptr %set_area_membind128, align 1, !dbg !2754, !tbaa !2757
  br label %if.end129, !dbg !2754

if.end129:                                        ; preds = %if.then125, %if.end122
  %80 = load ptr, ptr %topology.addr, align 8, !dbg !2758, !tbaa !796
  %binding_hooks130 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %80, i32 0, i32 19, !dbg !2758
  %get_area_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks130, i32 0, i32 18, !dbg !2758
  %81 = load ptr, ptr %get_area_membind, align 8, !dbg !2758, !tbaa !2206
  %tobool131 = icmp ne ptr %81, null, !dbg !2758
  br i1 %tobool131, label %if.then132, label %if.end136, !dbg !2760

if.then132:                                       ; preds = %if.end129
  %82 = load ptr, ptr %topology.addr, align 8, !dbg !2758, !tbaa !796
  %support133 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %82, i32 0, i32 20, !dbg !2758
  %membind134 = getelementptr inbounds %struct.quo_internal_hwloc_topology_support, ptr %support133, i32 0, i32 2, !dbg !2758
  %83 = load ptr, ptr %membind134, align 8, !dbg !2758, !tbaa !2731
  %get_area_membind135 = getelementptr inbounds %struct.quo_internal_hwloc_topology_membind_support, ptr %83, i32 0, i32 7, !dbg !2758
  store i8 1, ptr %get_area_membind135, align 1, !dbg !2758, !tbaa !2761
  br label %if.end136, !dbg !2758

if.end136:                                        ; preds = %if.then132, %if.end129
  %84 = load ptr, ptr %topology.addr, align 8, !dbg !2762, !tbaa !796
  %binding_hooks137 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %84, i32 0, i32 19, !dbg !2762
  %get_area_memlocation = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks137, i32 0, i32 19, !dbg !2762
  %85 = load ptr, ptr %get_area_memlocation, align 8, !dbg !2762, !tbaa !2305
  %tobool138 = icmp ne ptr %85, null, !dbg !2762
  br i1 %tobool138, label %if.then139, label %if.end143, !dbg !2764

if.then139:                                       ; preds = %if.end136
  %86 = load ptr, ptr %topology.addr, align 8, !dbg !2762, !tbaa !796
  %support140 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %86, i32 0, i32 20, !dbg !2762
  %membind141 = getelementptr inbounds %struct.quo_internal_hwloc_topology_support, ptr %support140, i32 0, i32 2, !dbg !2762
  %87 = load ptr, ptr %membind141, align 8, !dbg !2762, !tbaa !2731
  %get_area_memlocation142 = getelementptr inbounds %struct.quo_internal_hwloc_topology_membind_support, ptr %87, i32 0, i32 14, !dbg !2762
  store i8 1, ptr %get_area_memlocation142, align 1, !dbg !2762, !tbaa !2765
  br label %if.end143, !dbg !2762

if.end143:                                        ; preds = %if.then139, %if.end136
  %88 = load ptr, ptr %topology.addr, align 8, !dbg !2766, !tbaa !796
  %binding_hooks144 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %88, i32 0, i32 19, !dbg !2766
  %alloc_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %binding_hooks144, i32 0, i32 21, !dbg !2766
  %89 = load ptr, ptr %alloc_membind, align 8, !dbg !2766, !tbaa !2549
  %tobool145 = icmp ne ptr %89, null, !dbg !2766
  br i1 %tobool145, label %if.then146, label %if.end150, !dbg !2768

if.then146:                                       ; preds = %if.end143
  %90 = load ptr, ptr %topology.addr, align 8, !dbg !2766, !tbaa !796
  %support147 = getelementptr inbounds %struct.quo_internal_hwloc_topology, ptr %90, i32 0, i32 20, !dbg !2766
  %membind148 = getelementptr inbounds %struct.quo_internal_hwloc_topology_support, ptr %support147, i32 0, i32 2, !dbg !2766
  %91 = load ptr, ptr %membind148, align 8, !dbg !2766, !tbaa !2731
  %alloc_membind149 = getelementptr inbounds %struct.quo_internal_hwloc_topology_membind_support, ptr %91, i32 0, i32 8, !dbg !2766
  store i8 1, ptr %alloc_membind149, align 1, !dbg !2766, !tbaa !2769
  br label %if.end150, !dbg !2766

if.end150:                                        ; preds = %if.then146, %if.end143
  br label %if.end151, !dbg !2770

if.end151:                                        ; preds = %if.end150, %if.end
  ret void, !dbg !2771
}

; Function Attrs: nounwind uwtable
define internal void @hwloc_set_dummy_hooks(ptr noundef %hooks, ptr noundef %support) #0 !dbg !2772 {
entry:
  %hooks.addr = alloca ptr, align 8
  %support.addr = alloca ptr, align 8
  store ptr %hooks, ptr %hooks.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %hooks.addr, metadata !2774, metadata !DIExpression()), !dbg !2776
  store ptr %support, ptr %support.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %support.addr, metadata !2775, metadata !DIExpression()), !dbg !2777
  %0 = load ptr, ptr %hooks.addr, align 8, !dbg !2778, !tbaa !796
  %set_thisproc_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %0, i32 0, i32 0, !dbg !2779
  store ptr @dontset_thisproc_cpubind, ptr %set_thisproc_cpubind, align 8, !dbg !2780, !tbaa !2781
  %1 = load ptr, ptr %hooks.addr, align 8, !dbg !2782, !tbaa !796
  %get_thisproc_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %1, i32 0, i32 1, !dbg !2783
  store ptr @dontget_thisproc_cpubind, ptr %get_thisproc_cpubind, align 8, !dbg !2784, !tbaa !2785
  %2 = load ptr, ptr %hooks.addr, align 8, !dbg !2786, !tbaa !796
  %set_thisthread_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %2, i32 0, i32 2, !dbg !2787
  store ptr @dontset_thisthread_cpubind, ptr %set_thisthread_cpubind, align 8, !dbg !2788, !tbaa !2789
  %3 = load ptr, ptr %hooks.addr, align 8, !dbg !2790, !tbaa !796
  %get_thisthread_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %3, i32 0, i32 3, !dbg !2791
  store ptr @dontget_thisthread_cpubind, ptr %get_thisthread_cpubind, align 8, !dbg !2792, !tbaa !2793
  %4 = load ptr, ptr %hooks.addr, align 8, !dbg !2794, !tbaa !796
  %set_proc_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %4, i32 0, i32 4, !dbg !2795
  store ptr @dontset_proc_cpubind, ptr %set_proc_cpubind, align 8, !dbg !2796, !tbaa !2797
  %5 = load ptr, ptr %hooks.addr, align 8, !dbg !2798, !tbaa !796
  %get_proc_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %5, i32 0, i32 5, !dbg !2799
  store ptr @dontget_proc_cpubind, ptr %get_proc_cpubind, align 8, !dbg !2800, !tbaa !2801
  %6 = load ptr, ptr %hooks.addr, align 8, !dbg !2802, !tbaa !796
  %set_thread_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %6, i32 0, i32 6, !dbg !2803
  store ptr @dontset_thread_cpubind, ptr %set_thread_cpubind, align 8, !dbg !2804, !tbaa !2805
  %7 = load ptr, ptr %hooks.addr, align 8, !dbg !2806, !tbaa !796
  %get_thread_cpubind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %7, i32 0, i32 7, !dbg !2807
  store ptr @dontget_thread_cpubind, ptr %get_thread_cpubind, align 8, !dbg !2808, !tbaa !2809
  %8 = load ptr, ptr %hooks.addr, align 8, !dbg !2810, !tbaa !796
  %get_thisproc_last_cpu_location = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %8, i32 0, i32 8, !dbg !2811
  store ptr @dontget_thisproc_cpubind, ptr %get_thisproc_last_cpu_location, align 8, !dbg !2812, !tbaa !2813
  %9 = load ptr, ptr %hooks.addr, align 8, !dbg !2814, !tbaa !796
  %get_thisthread_last_cpu_location = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %9, i32 0, i32 9, !dbg !2815
  store ptr @dontget_thisthread_cpubind, ptr %get_thisthread_last_cpu_location, align 8, !dbg !2816, !tbaa !2817
  %10 = load ptr, ptr %hooks.addr, align 8, !dbg !2818, !tbaa !796
  %get_proc_last_cpu_location = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %10, i32 0, i32 10, !dbg !2819
  store ptr @dontget_proc_cpubind, ptr %get_proc_last_cpu_location, align 8, !dbg !2820, !tbaa !2821
  %11 = load ptr, ptr %hooks.addr, align 8, !dbg !2822, !tbaa !796
  %set_thisproc_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %11, i32 0, i32 11, !dbg !2823
  store ptr @dontset_thisproc_membind, ptr %set_thisproc_membind, align 8, !dbg !2824, !tbaa !2825
  %12 = load ptr, ptr %hooks.addr, align 8, !dbg !2826, !tbaa !796
  %get_thisproc_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %12, i32 0, i32 12, !dbg !2827
  store ptr @dontget_thisproc_membind, ptr %get_thisproc_membind, align 8, !dbg !2828, !tbaa !2829
  %13 = load ptr, ptr %hooks.addr, align 8, !dbg !2830, !tbaa !796
  %set_thisthread_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %13, i32 0, i32 13, !dbg !2831
  store ptr @dontset_thisthread_membind, ptr %set_thisthread_membind, align 8, !dbg !2832, !tbaa !2833
  %14 = load ptr, ptr %hooks.addr, align 8, !dbg !2834, !tbaa !796
  %get_thisthread_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %14, i32 0, i32 14, !dbg !2835
  store ptr @dontget_thisthread_membind, ptr %get_thisthread_membind, align 8, !dbg !2836, !tbaa !2837
  %15 = load ptr, ptr %hooks.addr, align 8, !dbg !2838, !tbaa !796
  %set_proc_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %15, i32 0, i32 15, !dbg !2839
  store ptr @dontset_proc_membind, ptr %set_proc_membind, align 8, !dbg !2840, !tbaa !2841
  %16 = load ptr, ptr %hooks.addr, align 8, !dbg !2842, !tbaa !796
  %get_proc_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %16, i32 0, i32 16, !dbg !2843
  store ptr @dontget_proc_membind, ptr %get_proc_membind, align 8, !dbg !2844, !tbaa !2845
  %17 = load ptr, ptr %hooks.addr, align 8, !dbg !2846, !tbaa !796
  %set_area_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %17, i32 0, i32 17, !dbg !2847
  store ptr @dontset_area_membind, ptr %set_area_membind, align 8, !dbg !2848, !tbaa !2849
  %18 = load ptr, ptr %hooks.addr, align 8, !dbg !2850, !tbaa !796
  %get_area_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %18, i32 0, i32 18, !dbg !2851
  store ptr @dontget_area_membind, ptr %get_area_membind, align 8, !dbg !2852, !tbaa !2853
  %19 = load ptr, ptr %hooks.addr, align 8, !dbg !2854, !tbaa !796
  %get_area_memlocation = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %19, i32 0, i32 19, !dbg !2855
  store ptr @dontget_area_memlocation, ptr %get_area_memlocation, align 8, !dbg !2856, !tbaa !2857
  %20 = load ptr, ptr %hooks.addr, align 8, !dbg !2858, !tbaa !796
  %alloc_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %20, i32 0, i32 21, !dbg !2859
  store ptr @dontalloc_membind, ptr %alloc_membind, align 8, !dbg !2860, !tbaa !2861
  %21 = load ptr, ptr %hooks.addr, align 8, !dbg !2862, !tbaa !796
  %free_membind = getelementptr inbounds %struct.quo_internal_hwloc_binding_hooks, ptr %21, i32 0, i32 22, !dbg !2863
  store ptr @dontfree_membind, ptr %free_membind, align 8, !dbg !2864, !tbaa !2865
  ret void, !dbg !2866
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2867 ptr @quo_internal_hwloc_topology_get_topology_cpuset(ptr noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2870 ptr @quo_internal_hwloc_topology_get_complete_cpuset(ptr noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2871 i32 @quo_internal_hwloc_bitmap_iszero(ptr noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2874 i32 @quo_internal_hwloc_bitmap_isincluded(ptr noundef, ptr noundef) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @hwloc__check_membind_policy(i32 noundef %policy) #4 !dbg !2877 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca i32, align 4
  store i32 %policy, ptr %policy.addr, align 4, !tbaa !1367
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !2881, metadata !DIExpression()), !dbg !2882
  %0 = load i32, ptr %policy.addr, align 4, !dbg !2883, !tbaa !1367
  %cmp = icmp eq i32 %0, 0, !dbg !2885
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2886

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %policy.addr, align 4, !dbg !2887, !tbaa !1367
  %cmp1 = icmp eq i32 %1, 1, !dbg !2888
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !2889

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %policy.addr, align 4, !dbg !2890, !tbaa !1367
  %cmp3 = icmp eq i32 %2, 2, !dbg !2891
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !2892

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, ptr %policy.addr, align 4, !dbg !2893, !tbaa !1367
  %cmp5 = icmp eq i32 %3, 3, !dbg !2894
  br i1 %cmp5, label %if.then, label %lor.lhs.false6, !dbg !2895

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %4 = load i32, ptr %policy.addr, align 4, !dbg !2896, !tbaa !1367
  %cmp7 = icmp eq i32 %4, 4, !dbg !2897
  br i1 %cmp7, label %if.then, label %if.end, !dbg !2898

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !2899
  br label %return, !dbg !2899

if.end:                                           ; preds = %lor.lhs.false6
  store i32 -1, ptr %retval, align 4, !dbg !2900
  br label %return, !dbg !2900

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !2901
  ret i32 %5, !dbg !2901
}

; Function Attrs: nounwind uwtable
define internal ptr @hwloc_fix_membind(ptr noundef %topology, ptr noundef %nodeset) #0 !dbg !2902 {
entry:
  %retval = alloca ptr, align 8
  %topology.addr = alloca ptr, align 8
  %nodeset.addr = alloca ptr, align 8
  %topology_nodeset = alloca ptr, align 8
  %complete_nodeset = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2906, metadata !DIExpression()), !dbg !2910
  store ptr %nodeset, ptr %nodeset.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %nodeset.addr, metadata !2907, metadata !DIExpression()), !dbg !2911
  call void @llvm.lifetime.start.p0(i64 8, ptr %topology_nodeset) #11, !dbg !2912
  tail call void @llvm.dbg.declare(metadata ptr %topology_nodeset, metadata !2908, metadata !DIExpression()), !dbg !2913
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !2914, !tbaa !796
  %call = call ptr @quo_internal_hwloc_topology_get_topology_nodeset(ptr noundef %0) #12, !dbg !2915
  store ptr %call, ptr %topology_nodeset, align 8, !dbg !2913, !tbaa !796
  call void @llvm.lifetime.start.p0(i64 8, ptr %complete_nodeset) #11, !dbg !2916
  tail call void @llvm.dbg.declare(metadata ptr %complete_nodeset, metadata !2909, metadata !DIExpression()), !dbg !2917
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !2918, !tbaa !796
  %call1 = call ptr @quo_internal_hwloc_topology_get_complete_nodeset(ptr noundef %1) #12, !dbg !2919
  store ptr %call1, ptr %complete_nodeset, align 8, !dbg !2917, !tbaa !796
  %2 = load ptr, ptr %nodeset.addr, align 8, !dbg !2920, !tbaa !796
  %call2 = call i32 @quo_internal_hwloc_bitmap_iszero(ptr noundef %2) #12, !dbg !2922
  %tobool = icmp ne i32 %call2, 0, !dbg !2922
  br i1 %tobool, label %if.then, label %if.end, !dbg !2923

if.then:                                          ; preds = %entry
  %call3 = call ptr @__errno_location() #10, !dbg !2924
  store i32 22, ptr %call3, align 4, !dbg !2926, !tbaa !802
  store ptr null, ptr %retval, align 8, !dbg !2927
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2927

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %nodeset.addr, align 8, !dbg !2928, !tbaa !796
  %4 = load ptr, ptr %complete_nodeset, align 8, !dbg !2930, !tbaa !796
  %call4 = call i32 @quo_internal_hwloc_bitmap_isincluded(ptr noundef %3, ptr noundef %4) #12, !dbg !2931
  %tobool5 = icmp ne i32 %call4, 0, !dbg !2931
  br i1 %tobool5, label %if.end8, label %if.then6, !dbg !2932

if.then6:                                         ; preds = %if.end
  %call7 = call ptr @__errno_location() #10, !dbg !2933
  store i32 22, ptr %call7, align 4, !dbg !2935, !tbaa !802
  store ptr null, ptr %retval, align 8, !dbg !2936
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2936

if.end8:                                          ; preds = %if.end
  %5 = load ptr, ptr %topology_nodeset, align 8, !dbg !2937, !tbaa !796
  %6 = load ptr, ptr %nodeset.addr, align 8, !dbg !2939, !tbaa !796
  %call9 = call i32 @quo_internal_hwloc_bitmap_isincluded(ptr noundef %5, ptr noundef %6) #12, !dbg !2940
  %tobool10 = icmp ne i32 %call9, 0, !dbg !2940
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2941

if.then11:                                        ; preds = %if.end8
  %7 = load ptr, ptr %complete_nodeset, align 8, !dbg !2942, !tbaa !796
  store ptr %7, ptr %retval, align 8, !dbg !2943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2943

if.end12:                                         ; preds = %if.end8
  %8 = load ptr, ptr %nodeset.addr, align 8, !dbg !2944, !tbaa !796
  store ptr %8, ptr %retval, align 8, !dbg !2945
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2945

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %complete_nodeset) #11, !dbg !2946
  call void @llvm.lifetime.end.p0(i64 8, ptr %topology_nodeset) #11, !dbg !2946
  %9 = load ptr, ptr %retval, align 8, !dbg !2946
  ret ptr %9, !dbg !2946
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2947 ptr @quo_internal_hwloc_topology_get_topology_nodeset(ptr noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2950 ptr @quo_internal_hwloc_topology_get_complete_nodeset(ptr noundef) #6

declare !dbg !2951 i32 @quo_internal_hwloc_bitmap_copy(ptr noundef, ptr noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @quo_internal_hwloc_cpuset_to_nodeset(ptr noundef %topology, ptr noundef %_cpuset, ptr noundef %nodeset) #4 !dbg !2954 {
entry:
  %retval = alloca i32, align 4
  %topology.addr = alloca ptr, align 8
  %_cpuset.addr = alloca ptr, align 8
  %nodeset.addr = alloca ptr, align 8
  %depth = alloca i32, align 4
  %obj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !2958, metadata !DIExpression()), !dbg !2963
  store ptr %_cpuset, ptr %_cpuset.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %_cpuset.addr, metadata !2959, metadata !DIExpression()), !dbg !2964
  store ptr %nodeset, ptr %nodeset.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %nodeset.addr, metadata !2960, metadata !DIExpression()), !dbg !2965
  call void @llvm.lifetime.start.p0(i64 4, ptr %depth) #11, !dbg !2966
  tail call void @llvm.dbg.declare(metadata ptr %depth, metadata !2961, metadata !DIExpression()), !dbg !2967
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !2968, !tbaa !796
  %call = call i32 @quo_internal_hwloc_get_type_depth(ptr noundef %0, i32 noundef 13), !dbg !2969
  store i32 %call, ptr %depth, align 4, !dbg !2967, !tbaa !802
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #11, !dbg !2970
  tail call void @llvm.dbg.declare(metadata ptr %obj, metadata !2962, metadata !DIExpression()), !dbg !2971
  store ptr null, ptr %obj, align 8, !dbg !2971, !tbaa !796
  %1 = load i32, ptr %depth, align 4, !dbg !2972, !tbaa !802
  %cmp = icmp ne i32 %1, -1, !dbg !2972
  br i1 %cmp, label %if.then, label %if.else, !dbg !2975

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !2975

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 1016, ptr noundef @__PRETTY_FUNCTION__.quo_internal_hwloc_cpuset_to_nodeset) #13, !dbg !2972
  unreachable, !dbg !2972

if.end:                                           ; preds = %if.then
  %2 = load ptr, ptr %nodeset.addr, align 8, !dbg !2976, !tbaa !796
  call void @quo_internal_hwloc_bitmap_zero(ptr noundef %2), !dbg !2977
  br label %while.cond, !dbg !2978

while.cond:                                       ; preds = %if.end6, %if.end
  %3 = load ptr, ptr %topology.addr, align 8, !dbg !2979, !tbaa !796
  %4 = load ptr, ptr %_cpuset.addr, align 8, !dbg !2980, !tbaa !796
  %5 = load i32, ptr %depth, align 4, !dbg !2981, !tbaa !802
  %6 = load ptr, ptr %obj, align 8, !dbg !2982, !tbaa !796
  %call1 = call ptr @quo_internal_hwloc_get_next_obj_covering_cpuset_by_depth(ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6), !dbg !2983
  store ptr %call1, ptr %obj, align 8, !dbg !2984, !tbaa !796
  %cmp2 = icmp ne ptr %call1, null, !dbg !2985
  br i1 %cmp2, label %while.body, label %while.end, !dbg !2978

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %nodeset.addr, align 8, !dbg !2986, !tbaa !796
  %8 = load ptr, ptr %obj, align 8, !dbg !2988, !tbaa !796
  %os_index = getelementptr inbounds %struct.quo_internal_hwloc_obj, ptr %8, i32 0, i32 2, !dbg !2989
  %9 = load i32, ptr %os_index, align 8, !dbg !2989, !tbaa !1775
  %call3 = call i32 @quo_internal_hwloc_bitmap_set(ptr noundef %7, i32 noundef %9), !dbg !2990
  %cmp4 = icmp slt i32 %call3, 0, !dbg !2991
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2992

if.then5:                                         ; preds = %while.body
  store i32 -1, ptr %retval, align 4, !dbg !2993
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2993

if.end6:                                          ; preds = %while.body
  br label %while.cond, !dbg !2978, !llvm.loop !2994

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !2996
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2996

cleanup:                                          ; preds = %while.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #11, !dbg !2997
  call void @llvm.lifetime.end.p0(i64 4, ptr %depth) #11, !dbg !2997
  %10 = load i32, ptr %retval, align 4, !dbg !2997
  ret i32 %10, !dbg !2997
}

declare !dbg !2998 i32 @quo_internal_hwloc_get_type_depth(ptr noundef, i32 noundef) #3

; Function Attrs: noreturn nounwind
declare !dbg !3001 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #7

declare !dbg !3005 void @quo_internal_hwloc_bitmap_zero(ptr noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @quo_internal_hwloc_get_next_obj_covering_cpuset_by_depth(ptr noundef %topology, ptr noundef %set, i32 noundef %depth, ptr noundef %prev) #4 !dbg !3006 {
entry:
  %retval = alloca ptr, align 8
  %topology.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  %depth.addr = alloca i32, align 4
  %prev.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3010, metadata !DIExpression()), !dbg !3015
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3011, metadata !DIExpression()), !dbg !3016
  store i32 %depth, ptr %depth.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !3012, metadata !DIExpression()), !dbg !3017
  store ptr %prev, ptr %prev.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3013, metadata !DIExpression()), !dbg !3018
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #11, !dbg !3019
  tail call void @llvm.dbg.declare(metadata ptr %next, metadata !3014, metadata !DIExpression()), !dbg !3020
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !3021, !tbaa !796
  %1 = load i32, ptr %depth.addr, align 4, !dbg !3022, !tbaa !802
  %2 = load ptr, ptr %prev.addr, align 8, !dbg !3023, !tbaa !796
  %call = call ptr @quo_internal_hwloc_get_next_obj_by_depth(ptr noundef %0, i32 noundef %1, ptr noundef %2), !dbg !3024
  store ptr %call, ptr %next, align 8, !dbg !3020, !tbaa !796
  %3 = load ptr, ptr %next, align 8, !dbg !3025, !tbaa !796
  %tobool = icmp ne ptr %3, null, !dbg !3025
  br i1 %tobool, label %if.end, label %if.then, !dbg !3027

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3028
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3028

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !3029

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load ptr, ptr %next, align 8, !dbg !3030, !tbaa !796
  %tobool1 = icmp ne ptr %4, null, !dbg !3030
  br i1 %tobool1, label %land.rhs, label %land.end, !dbg !3031

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %set.addr, align 8, !dbg !3032, !tbaa !796
  %6 = load ptr, ptr %next, align 8, !dbg !3033, !tbaa !796
  %cpuset = getelementptr inbounds %struct.quo_internal_hwloc_obj, ptr %6, i32 0, i32 25, !dbg !3034
  %7 = load ptr, ptr %cpuset, align 8, !dbg !3034, !tbaa !1784
  %call2 = call i32 @quo_internal_hwloc_bitmap_intersects(ptr noundef %5, ptr noundef %7) #12, !dbg !3035
  %tobool3 = icmp ne i32 %call2, 0, !dbg !3036
  %lnot = xor i1 %tobool3, true, !dbg !3036
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !3037
  br i1 %8, label %while.body, label %while.end, !dbg !3029

while.body:                                       ; preds = %land.end
  %9 = load ptr, ptr %next, align 8, !dbg !3038, !tbaa !796
  %next_cousin = getelementptr inbounds %struct.quo_internal_hwloc_obj, ptr %9, i32 0, i32 8, !dbg !3039
  %10 = load ptr, ptr %next_cousin, align 8, !dbg !3039, !tbaa !3040
  store ptr %10, ptr %next, align 8, !dbg !3041, !tbaa !796
  br label %while.cond, !dbg !3029, !llvm.loop !3042

while.end:                                        ; preds = %land.end
  %11 = load ptr, ptr %next, align 8, !dbg !3043, !tbaa !796
  store ptr %11, ptr %retval, align 8, !dbg !3044
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3044

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #11, !dbg !3045
  %12 = load ptr, ptr %retval, align 8, !dbg !3045
  ret ptr %12, !dbg !3045
}

declare !dbg !3046 i32 @quo_internal_hwloc_bitmap_set(ptr noundef, i32 noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @quo_internal_hwloc_get_next_obj_by_depth(ptr noundef %topology, i32 noundef %depth, ptr noundef %prev) #4 !dbg !3049 {
entry:
  %retval = alloca ptr, align 8
  %topology.addr = alloca ptr, align 8
  %depth.addr = alloca i32, align 4
  %prev.addr = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3054, metadata !DIExpression()), !dbg !3057
  store i32 %depth, ptr %depth.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !3055, metadata !DIExpression()), !dbg !3058
  store ptr %prev, ptr %prev.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3056, metadata !DIExpression()), !dbg !3059
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !3060, !tbaa !796
  %tobool = icmp ne ptr %0, null, !dbg !3060
  br i1 %tobool, label %if.end, label %if.then, !dbg !3062

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !3063, !tbaa !796
  %2 = load i32, ptr %depth.addr, align 4, !dbg !3064, !tbaa !802
  %call = call ptr @quo_internal_hwloc_get_obj_by_depth(ptr noundef %1, i32 noundef %2, i32 noundef 0) #12, !dbg !3065
  store ptr %call, ptr %retval, align 8, !dbg !3066
  br label %return, !dbg !3066

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !3067, !tbaa !796
  %depth1 = getelementptr inbounds %struct.quo_internal_hwloc_obj, ptr %3, i32 0, i32 6, !dbg !3069
  %4 = load i32, ptr %depth1, align 8, !dbg !3069, !tbaa !3070
  %5 = load i32, ptr %depth.addr, align 4, !dbg !3071, !tbaa !802
  %cmp = icmp ne i32 %4, %5, !dbg !3072
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3073

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !3074
  br label %return, !dbg !3074

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %prev.addr, align 8, !dbg !3075, !tbaa !796
  %next_cousin = getelementptr inbounds %struct.quo_internal_hwloc_obj, ptr %6, i32 0, i32 8, !dbg !3076
  %7 = load ptr, ptr %next_cousin, align 8, !dbg !3076, !tbaa !3040
  store ptr %7, ptr %retval, align 8, !dbg !3077
  br label %return, !dbg !3077

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %8 = load ptr, ptr %retval, align 8, !dbg !3078
  ret ptr %8, !dbg !3078
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !3079 i32 @quo_internal_hwloc_bitmap_intersects(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !3080 ptr @quo_internal_hwloc_get_obj_by_depth(ptr noundef, i32 noundef, i32 noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !3083 i32 @quo_internal_hwloc_bitmap_isset(ptr noundef, i32 noundef) #6

declare !dbg !3086 i32 @quo_internal_hwloc_bitmap_or(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @dontset_thisproc_cpubind(ptr noundef %topology, ptr noundef %set, i32 noundef %flags) #0 !dbg !3089 {
entry:
  %topology.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3091, metadata !DIExpression()), !dbg !3094
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3092, metadata !DIExpression()), !dbg !3095
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3093, metadata !DIExpression()), !dbg !3096
  ret i32 0, !dbg !3097
}

; Function Attrs: nounwind uwtable
define internal i32 @dontget_thisproc_cpubind(ptr noundef %topology, ptr noundef %set, i32 noundef %flags) #0 !dbg !3098 {
entry:
  %topology.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3100, metadata !DIExpression()), !dbg !3103
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3101, metadata !DIExpression()), !dbg !3104
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3102, metadata !DIExpression()), !dbg !3105
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !3106, !tbaa !796
  %1 = load ptr, ptr %set.addr, align 8, !dbg !3107, !tbaa !796
  %call = call i32 @dontset_return_complete_cpuset(ptr noundef %0, ptr noundef %1), !dbg !3108
  ret i32 %call, !dbg !3109
}

; Function Attrs: nounwind uwtable
define internal i32 @dontset_thisthread_cpubind(ptr noundef %topology, ptr noundef %set, i32 noundef %flags) #0 !dbg !3110 {
entry:
  %topology.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3112, metadata !DIExpression()), !dbg !3115
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3113, metadata !DIExpression()), !dbg !3116
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3114, metadata !DIExpression()), !dbg !3117
  ret i32 0, !dbg !3118
}

; Function Attrs: nounwind uwtable
define internal i32 @dontget_thisthread_cpubind(ptr noundef %topology, ptr noundef %set, i32 noundef %flags) #0 !dbg !3119 {
entry:
  %topology.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3121, metadata !DIExpression()), !dbg !3124
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3122, metadata !DIExpression()), !dbg !3125
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3123, metadata !DIExpression()), !dbg !3126
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !3127, !tbaa !796
  %1 = load ptr, ptr %set.addr, align 8, !dbg !3128, !tbaa !796
  %call = call i32 @dontset_return_complete_cpuset(ptr noundef %0, ptr noundef %1), !dbg !3129
  ret i32 %call, !dbg !3130
}

; Function Attrs: nounwind uwtable
define internal i32 @dontset_proc_cpubind(ptr noundef %topology, i32 noundef %pid, ptr noundef %set, i32 noundef %flags) #0 !dbg !3131 {
entry:
  %topology.addr = alloca ptr, align 8
  %pid.addr = alloca i32, align 4
  %set.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3133, metadata !DIExpression()), !dbg !3137
  store i32 %pid, ptr %pid.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !3134, metadata !DIExpression()), !dbg !3138
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3135, metadata !DIExpression()), !dbg !3139
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3136, metadata !DIExpression()), !dbg !3140
  ret i32 0, !dbg !3141
}

; Function Attrs: nounwind uwtable
define internal i32 @dontget_proc_cpubind(ptr noundef %topology, i32 noundef %pid, ptr noundef %cpuset, i32 noundef %flags) #0 !dbg !3142 {
entry:
  %topology.addr = alloca ptr, align 8
  %pid.addr = alloca i32, align 4
  %cpuset.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3144, metadata !DIExpression()), !dbg !3148
  store i32 %pid, ptr %pid.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !3145, metadata !DIExpression()), !dbg !3149
  store ptr %cpuset, ptr %cpuset.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %cpuset.addr, metadata !3146, metadata !DIExpression()), !dbg !3150
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3147, metadata !DIExpression()), !dbg !3151
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !3152, !tbaa !796
  %1 = load ptr, ptr %cpuset.addr, align 8, !dbg !3153, !tbaa !796
  %call = call i32 @dontset_return_complete_cpuset(ptr noundef %0, ptr noundef %1), !dbg !3154
  ret i32 %call, !dbg !3155
}

; Function Attrs: nounwind uwtable
define internal i32 @dontset_thread_cpubind(ptr noundef %topology, i64 noundef %tid, ptr noundef %set, i32 noundef %flags) #0 !dbg !3156 {
entry:
  %topology.addr = alloca ptr, align 8
  %tid.addr = alloca i64, align 8
  %set.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3158, metadata !DIExpression()), !dbg !3162
  store i64 %tid, ptr %tid.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %tid.addr, metadata !3159, metadata !DIExpression()), !dbg !3163
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3160, metadata !DIExpression()), !dbg !3164
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3161, metadata !DIExpression()), !dbg !3165
  ret i32 0, !dbg !3166
}

; Function Attrs: nounwind uwtable
define internal i32 @dontget_thread_cpubind(ptr noundef %topology, i64 noundef %tid, ptr noundef %cpuset, i32 noundef %flags) #0 !dbg !3167 {
entry:
  %topology.addr = alloca ptr, align 8
  %tid.addr = alloca i64, align 8
  %cpuset.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3169, metadata !DIExpression()), !dbg !3173
  store i64 %tid, ptr %tid.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %tid.addr, metadata !3170, metadata !DIExpression()), !dbg !3174
  store ptr %cpuset, ptr %cpuset.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %cpuset.addr, metadata !3171, metadata !DIExpression()), !dbg !3175
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3172, metadata !DIExpression()), !dbg !3176
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !3177, !tbaa !796
  %1 = load ptr, ptr %cpuset.addr, align 8, !dbg !3178, !tbaa !796
  %call = call i32 @dontset_return_complete_cpuset(ptr noundef %0, ptr noundef %1), !dbg !3179
  ret i32 %call, !dbg !3180
}

; Function Attrs: nounwind uwtable
define internal i32 @dontset_thisproc_membind(ptr noundef %topology, ptr noundef %set, i32 noundef %policy, i32 noundef %flags) #0 !dbg !3181 {
entry:
  %topology.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  %policy.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3183, metadata !DIExpression()), !dbg !3187
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3184, metadata !DIExpression()), !dbg !3188
  store i32 %policy, ptr %policy.addr, align 4, !tbaa !1367
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3185, metadata !DIExpression()), !dbg !3189
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3186, metadata !DIExpression()), !dbg !3190
  ret i32 0, !dbg !3191
}

; Function Attrs: nounwind uwtable
define internal i32 @dontget_thisproc_membind(ptr noundef %topology, ptr noundef %set, ptr noundef %policy, i32 noundef %flags) #0 !dbg !3192 {
entry:
  %topology.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  %policy.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3194, metadata !DIExpression()), !dbg !3198
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3195, metadata !DIExpression()), !dbg !3199
  store ptr %policy, ptr %policy.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3196, metadata !DIExpression()), !dbg !3200
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3197, metadata !DIExpression()), !dbg !3201
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !3202, !tbaa !796
  %1 = load ptr, ptr %set.addr, align 8, !dbg !3203, !tbaa !796
  %2 = load ptr, ptr %policy.addr, align 8, !dbg !3204, !tbaa !796
  %call = call i32 @dontset_return_complete_nodeset(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !3205
  ret i32 %call, !dbg !3206
}

; Function Attrs: nounwind uwtable
define internal i32 @dontset_thisthread_membind(ptr noundef %topology, ptr noundef %set, i32 noundef %policy, i32 noundef %flags) #0 !dbg !3207 {
entry:
  %topology.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  %policy.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3209, metadata !DIExpression()), !dbg !3213
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3210, metadata !DIExpression()), !dbg !3214
  store i32 %policy, ptr %policy.addr, align 4, !tbaa !1367
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3211, metadata !DIExpression()), !dbg !3215
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3212, metadata !DIExpression()), !dbg !3216
  ret i32 0, !dbg !3217
}

; Function Attrs: nounwind uwtable
define internal i32 @dontget_thisthread_membind(ptr noundef %topology, ptr noundef %set, ptr noundef %policy, i32 noundef %flags) #0 !dbg !3218 {
entry:
  %topology.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  %policy.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3220, metadata !DIExpression()), !dbg !3224
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3221, metadata !DIExpression()), !dbg !3225
  store ptr %policy, ptr %policy.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3222, metadata !DIExpression()), !dbg !3226
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3223, metadata !DIExpression()), !dbg !3227
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !3228, !tbaa !796
  %1 = load ptr, ptr %set.addr, align 8, !dbg !3229, !tbaa !796
  %2 = load ptr, ptr %policy.addr, align 8, !dbg !3230, !tbaa !796
  %call = call i32 @dontset_return_complete_nodeset(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !3231
  ret i32 %call, !dbg !3232
}

; Function Attrs: nounwind uwtable
define internal i32 @dontset_proc_membind(ptr noundef %topology, i32 noundef %pid, ptr noundef %set, i32 noundef %policy, i32 noundef %flags) #0 !dbg !3233 {
entry:
  %topology.addr = alloca ptr, align 8
  %pid.addr = alloca i32, align 4
  %set.addr = alloca ptr, align 8
  %policy.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3235, metadata !DIExpression()), !dbg !3240
  store i32 %pid, ptr %pid.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !3236, metadata !DIExpression()), !dbg !3241
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3237, metadata !DIExpression()), !dbg !3242
  store i32 %policy, ptr %policy.addr, align 4, !tbaa !1367
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3238, metadata !DIExpression()), !dbg !3243
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3239, metadata !DIExpression()), !dbg !3244
  ret i32 0, !dbg !3245
}

; Function Attrs: nounwind uwtable
define internal i32 @dontget_proc_membind(ptr noundef %topology, i32 noundef %pid, ptr noundef %set, ptr noundef %policy, i32 noundef %flags) #0 !dbg !3246 {
entry:
  %topology.addr = alloca ptr, align 8
  %pid.addr = alloca i32, align 4
  %set.addr = alloca ptr, align 8
  %policy.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3248, metadata !DIExpression()), !dbg !3253
  store i32 %pid, ptr %pid.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !3249, metadata !DIExpression()), !dbg !3254
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3250, metadata !DIExpression()), !dbg !3255
  store ptr %policy, ptr %policy.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3251, metadata !DIExpression()), !dbg !3256
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3252, metadata !DIExpression()), !dbg !3257
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !3258, !tbaa !796
  %1 = load ptr, ptr %set.addr, align 8, !dbg !3259, !tbaa !796
  %2 = load ptr, ptr %policy.addr, align 8, !dbg !3260, !tbaa !796
  %call = call i32 @dontset_return_complete_nodeset(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !3261
  ret i32 %call, !dbg !3262
}

; Function Attrs: nounwind uwtable
define internal i32 @dontset_area_membind(ptr noundef %topology, ptr noundef %addr, i64 noundef %size, ptr noundef %set, i32 noundef %policy, i32 noundef %flags) #0 !dbg !3263 {
entry:
  %topology.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %set.addr = alloca ptr, align 8
  %policy.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3265, metadata !DIExpression()), !dbg !3271
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3266, metadata !DIExpression()), !dbg !3272
  store i64 %size, ptr %size.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3267, metadata !DIExpression()), !dbg !3273
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3268, metadata !DIExpression()), !dbg !3274
  store i32 %policy, ptr %policy.addr, align 4, !tbaa !1367
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3269, metadata !DIExpression()), !dbg !3275
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3270, metadata !DIExpression()), !dbg !3276
  ret i32 0, !dbg !3277
}

; Function Attrs: nounwind uwtable
define internal i32 @dontget_area_membind(ptr noundef %topology, ptr noundef %addr, i64 noundef %size, ptr noundef %set, ptr noundef %policy, i32 noundef %flags) #0 !dbg !3278 {
entry:
  %topology.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %set.addr = alloca ptr, align 8
  %policy.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3280, metadata !DIExpression()), !dbg !3286
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3281, metadata !DIExpression()), !dbg !3287
  store i64 %size, ptr %size.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3282, metadata !DIExpression()), !dbg !3288
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3283, metadata !DIExpression()), !dbg !3289
  store ptr %policy, ptr %policy.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3284, metadata !DIExpression()), !dbg !3290
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3285, metadata !DIExpression()), !dbg !3291
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !3292, !tbaa !796
  %1 = load ptr, ptr %set.addr, align 8, !dbg !3293, !tbaa !796
  %2 = load ptr, ptr %policy.addr, align 8, !dbg !3294, !tbaa !796
  %call = call i32 @dontset_return_complete_nodeset(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !3295
  ret i32 %call, !dbg !3296
}

; Function Attrs: nounwind uwtable
define internal i32 @dontget_area_memlocation(ptr noundef %topology, ptr noundef %addr, i64 noundef %size, ptr noundef %set, i32 noundef %flags) #0 !dbg !3297 {
entry:
  %topology.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %set.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %policy = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3301, metadata !DIExpression()), !dbg !3307
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3302, metadata !DIExpression()), !dbg !3308
  store i64 %size, ptr %size.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3303, metadata !DIExpression()), !dbg !3309
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3304, metadata !DIExpression()), !dbg !3310
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3305, metadata !DIExpression()), !dbg !3311
  call void @llvm.lifetime.start.p0(i64 4, ptr %policy) #11, !dbg !3312
  tail call void @llvm.dbg.declare(metadata ptr %policy, metadata !3306, metadata !DIExpression()), !dbg !3313
  %0 = load ptr, ptr %topology.addr, align 8, !dbg !3314, !tbaa !796
  %1 = load ptr, ptr %set.addr, align 8, !dbg !3315, !tbaa !796
  %call = call i32 @dontset_return_complete_nodeset(ptr noundef %0, ptr noundef %1, ptr noundef %policy), !dbg !3316
  call void @llvm.lifetime.end.p0(i64 4, ptr %policy) #11, !dbg !3317
  ret i32 %call, !dbg !3318
}

; Function Attrs: nounwind uwtable
define internal ptr @dontalloc_membind(ptr noundef %topology, i64 noundef %size, ptr noundef %set, i32 noundef %policy, i32 noundef %flags) #0 !dbg !3319 {
entry:
  %topology.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %set.addr = alloca ptr, align 8
  %policy.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3321, metadata !DIExpression()), !dbg !3326
  store i64 %size, ptr %size.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3322, metadata !DIExpression()), !dbg !3327
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3323, metadata !DIExpression()), !dbg !3328
  store i32 %policy, ptr %policy.addr, align 4, !tbaa !1367
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3324, metadata !DIExpression()), !dbg !3329
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !802
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3325, metadata !DIExpression()), !dbg !3330
  %0 = load i64, ptr %size.addr, align 8, !dbg !3331, !tbaa !1144
  %call = call noalias ptr @malloc(i64 noundef %0) #14, !dbg !3332
  ret ptr %call, !dbg !3333
}

; Function Attrs: nounwind uwtable
define internal i32 @dontfree_membind(ptr noundef %topology, ptr noundef %addr, i64 noundef %size) #0 !dbg !3334 {
entry:
  %topology.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3336, metadata !DIExpression()), !dbg !3339
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3337, metadata !DIExpression()), !dbg !3340
  store i64 %size, ptr %size.addr, align 8, !tbaa !1144
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3338, metadata !DIExpression()), !dbg !3341
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3342, !tbaa !796
  call void @free(ptr noundef %0) #11, !dbg !3343
  ret i32 0, !dbg !3344
}

; Function Attrs: nounwind uwtable
define internal i32 @dontset_return_complete_cpuset(ptr noundef %topology, ptr noundef %set) #0 !dbg !3345 {
entry:
  %topology.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3349, metadata !DIExpression()), !dbg !3351
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3350, metadata !DIExpression()), !dbg !3352
  %0 = load ptr, ptr %set.addr, align 8, !dbg !3353, !tbaa !796
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !3354, !tbaa !796
  %call = call ptr @quo_internal_hwloc_topology_get_complete_cpuset(ptr noundef %1) #12, !dbg !3355
  %call1 = call i32 @quo_internal_hwloc_bitmap_copy(ptr noundef %0, ptr noundef %call), !dbg !3356
  ret i32 0, !dbg !3357
}

; Function Attrs: nounwind uwtable
define internal i32 @dontset_return_complete_nodeset(ptr noundef %topology, ptr noundef %set, ptr noundef %policy) #0 !dbg !3358 {
entry:
  %topology.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  %policy.addr = alloca ptr, align 8
  store ptr %topology, ptr %topology.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %topology.addr, metadata !3362, metadata !DIExpression()), !dbg !3365
  store ptr %set, ptr %set.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3363, metadata !DIExpression()), !dbg !3366
  store ptr %policy, ptr %policy.addr, align 8, !tbaa !796
  tail call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !3364, metadata !DIExpression()), !dbg !3367
  %0 = load ptr, ptr %set.addr, align 8, !dbg !3368, !tbaa !796
  %1 = load ptr, ptr %topology.addr, align 8, !dbg !3369, !tbaa !796
  %call = call ptr @quo_internal_hwloc_topology_get_complete_nodeset(ptr noundef %1) #12, !dbg !3370
  %call1 = call i32 @quo_internal_hwloc_bitmap_copy(ptr noundef %0, ptr noundef %call), !dbg !3371
  %2 = load ptr, ptr %policy.addr, align 8, !dbg !3372, !tbaa !796
  store i32 -1, ptr %2, align 4, !dbg !3373, !tbaa !1367
  ret i32 0, !dbg !3374
}

; Function Attrs: nounwind allocsize(0)
declare !dbg !3375 noalias ptr @malloc(i64 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!23}
!llvm.module.flags = !{!341, !342, !343, !344, !345}
!llvm.ident = !{!346}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1016, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "include/hwloc/helper.h", directory: "/local-ssd/libquo-a5d64skrddtcir6td6wgkbqasktcbifa-build/aidengro/spack-stage-libquo-1.3.1-a5d64skrddtcir6td6wgkbqasktcbifa/spack-src/src/hwloc", checksumkind: CSK_MD5, checksum: "3ecfeee2ecdf98502ae3af4e45de66d3")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 34)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1016, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1336, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 167)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1016, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 1096, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 137)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1037, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 1112, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 139)
!23 = distinct !DICompileUnit(language: DW_LANG_C11, file: !24, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !25, retainedTypes: !338, globals: !340, splitDebugInlining: false, nameTableKind: None)
!24 = !DIFile(filename: "bind.c", directory: "/local-ssd/libquo-a5d64skrddtcir6td6wgkbqasktcbifa-build/aidengro/spack-stage-libquo-1.3.1-a5d64skrddtcir6td6wgkbqasktcbifa/spack-src/src/hwloc/hwloc", checksumkind: CSK_MD5, checksum: "ace168b4bb362ee21f6b1ee7d5d44b44")
!25 = !{!26, !51, !56, !60, !68, !74, !83, !94, !100, !108, !328}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 177, baseType: !28, size: 32, elements: !29)
!27 = !DIFile(filename: "include/hwloc.h", directory: "/local-ssd/libquo-a5d64skrddtcir6td6wgkbqasktcbifa-build/aidengro/spack-stage-libquo-1.3.1-a5d64skrddtcir6td6wgkbqasktcbifa/spack-src/src/hwloc", checksumkind: CSK_MD5, checksum: "d46dcdb40efb29c8127dcc5c547ec556")
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!30 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_MACHINE", value: 0)
!31 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_PACKAGE", value: 1)
!32 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_CORE", value: 2)
!33 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_PU", value: 3)
!34 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_L1CACHE", value: 4)
!35 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_L2CACHE", value: 5)
!36 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_L3CACHE", value: 6)
!37 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_L4CACHE", value: 7)
!38 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_L5CACHE", value: 8)
!39 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_L1ICACHE", value: 9)
!40 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_L2ICACHE", value: 10)
!41 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_L3ICACHE", value: 11)
!42 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_GROUP", value: 12)
!43 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_NUMANODE", value: 13)
!44 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_BRIDGE", value: 14)
!45 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_PCI_DEVICE", value: 15)
!46 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_OS_DEVICE", value: 16)
!47 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_MISC", value: 17)
!48 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_MEMCACHE", value: 18)
!49 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_DIE", value: 19)
!50 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_TYPE_MAX", value: 20)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quo_internal_hwloc_obj_cache_type_e", file: !27, line: 310, baseType: !28, size: 32, elements: !52)
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_CACHE_UNIFIED", value: 0)
!54 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_CACHE_DATA", value: 1)
!55 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_CACHE_INSTRUCTION", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quo_internal_hwloc_obj_bridge_type_e", file: !27, line: 317, baseType: !28, size: 32, elements: !57)
!57 = !{!58, !59}
!58 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_BRIDGE_HOST", value: 0)
!59 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_BRIDGE_PCI", value: 1)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quo_internal_hwloc_obj_osdev_type_e", file: !27, line: 323, baseType: !28, size: 32, elements: !61)
!61 = !{!62, !63, !64, !65, !66, !67}
!62 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_OSDEV_BLOCK", value: 0)
!63 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_OSDEV_GPU", value: 1)
!64 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_OSDEV_NETWORK", value: 2)
!65 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_OSDEV_OPENFABRICS", value: 3)
!66 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_OSDEV_DMA", value: 4)
!67 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_OBJ_OSDEV_COPROC", value: 5)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quo_internal_hwloc_type_filter_e", file: !27, line: 2065, baseType: !28, size: 32, elements: !69)
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_TYPE_FILTER_KEEP_ALL", value: 0)
!71 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_TYPE_FILTER_KEEP_NONE", value: 1)
!72 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_TYPE_FILTER_KEEP_STRUCTURE", value: 2)
!73 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_TYPE_FILTER_KEEP_IMPORTANT", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 1355, baseType: !75, size: 32, elements: !76)
!75 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!76 = !{!77, !78, !79, !80, !81, !82}
!77 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_MEMBIND_DEFAULT", value: 0)
!78 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_MEMBIND_FIRSTTOUCH", value: 1)
!79 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_MEMBIND_BIND", value: 2)
!80 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_MEMBIND_INTERLEAVE", value: 3)
!81 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_MEMBIND_NEXTTOUCH", value: 4)
!82 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_MEMBIND_MIXED", value: -1)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quo_internal_hwloc_disc_phase_e", file: !84, line: 96, baseType: !28, size: 32, elements: !85)
!84 = !DIFile(filename: "include/hwloc/plugins.h", directory: "/local-ssd/libquo-a5d64skrddtcir6td6wgkbqasktcbifa-build/aidengro/spack-stage-libquo-1.3.1-a5d64skrddtcir6td6wgkbqasktcbifa/spack-src/src/hwloc", checksumkind: CSK_MD5, checksum: "bff744393320e92e26a0100ebb0d191f")
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93}
!86 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_DISC_PHASE_GLOBAL", value: 1)
!87 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_DISC_PHASE_CPU", value: 2)
!88 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_DISC_PHASE_MEMORY", value: 4)
!89 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_DISC_PHASE_PCI", value: 8)
!90 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_DISC_PHASE_IO", value: 16)
!91 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_DISC_PHASE_MISC", value: 32)
!92 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_DISC_PHASE_ANNOTATE", value: 64)
!93 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_DISC_PHASE_TWEAK", value: 128)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 1129, baseType: !28, size: 32, elements: !95)
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_CPUBIND_PROCESS", value: 1)
!97 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_CPUBIND_THREAD", value: 2)
!98 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_CPUBIND_STRICT", value: 4)
!99 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_CPUBIND_NOMEMBIND", value: 8)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 1418, baseType: !28, size: 32, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107}
!102 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_MEMBIND_PROCESS", value: 1)
!103 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_MEMBIND_THREAD", value: 2)
!104 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_MEMBIND_STRICT", value: 4)
!105 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_MEMBIND_MIGRATE", value: 8)
!106 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_MEMBIND_NOCPUBIND", value: 16)
!107 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_MEMBIND_BYNODESET", value: 32)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !109, line: 71, baseType: !28, size: 32, elements: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "", checksumkind: CSK_MD5, checksum: "78b98c9476f9b4c41f6f4ea6bcb3195f")
!110 = !{!111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327}
!111 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!112 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!113 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!114 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!115 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!116 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!117 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!118 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!119 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!120 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!121 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!122 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!123 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!124 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!125 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!126 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!127 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!128 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!129 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!130 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!131 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!132 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!133 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!134 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!135 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!136 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!137 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!138 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!139 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!140 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!141 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!142 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!143 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!144 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!145 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!146 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!147 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!148 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!149 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!150 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!151 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!152 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!153 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!154 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!155 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!156 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!157 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!158 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!159 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!160 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!161 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!162 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!163 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!164 = !DIEnumerator(name: "_SC_PII", value: 53)
!165 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!166 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!167 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!168 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!169 = !DIEnumerator(name: "_SC_POLL", value: 58)
!170 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!171 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!172 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!173 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!174 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!175 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!176 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!177 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!178 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!179 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!180 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!181 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!182 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!183 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!184 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!185 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!186 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!187 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!188 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!189 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!190 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!191 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!192 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!193 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!194 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!195 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!196 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!197 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!198 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!199 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!200 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!201 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!202 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!203 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!204 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!205 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!206 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!207 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!208 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!209 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!210 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!211 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!212 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!213 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!214 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!215 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!216 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!217 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!218 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!219 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!220 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!221 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!222 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!223 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!224 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!225 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!226 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!227 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!228 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!229 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!230 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!231 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!232 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!233 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!234 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!235 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!236 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!237 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!238 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!239 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!240 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!241 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!242 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!243 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!244 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!245 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!246 = !DIEnumerator(name: "_SC_BASE", value: 134)
!247 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!248 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!249 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!250 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!251 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!252 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!253 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!254 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!255 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!256 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!257 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!258 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!259 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!260 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!261 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!262 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!263 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!264 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!265 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!266 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!267 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!268 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!269 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!270 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!271 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!272 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!273 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!274 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!275 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!276 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!277 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!278 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!279 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!280 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!281 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!282 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!283 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!284 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!285 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!286 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!287 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!288 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!289 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!290 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!291 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!292 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!293 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!294 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!295 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!296 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!297 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!298 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!299 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!300 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!301 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!302 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!303 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!304 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!305 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!306 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!307 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!308 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!309 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!310 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!311 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!312 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!313 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!314 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!315 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!316 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!317 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!318 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!319 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!320 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!321 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!322 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!323 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!324 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!325 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!326 = !DIEnumerator(name: "_SC_MINSIGSTKSZ", value: 249)
!327 = !DIEnumerator(name: "_SC_SIGSTKSZ", value: 250)
!328 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quo_internal_hwloc_get_type_depth_e", file: !27, line: 796, baseType: !75, size: 32, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337}
!330 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_TYPE_DEPTH_UNKNOWN", value: -1)
!331 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_TYPE_DEPTH_MULTIPLE", value: -2)
!332 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_TYPE_DEPTH_NUMANODE", value: -3)
!333 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_TYPE_DEPTH_BRIDGE", value: -4)
!334 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_TYPE_DEPTH_PCI_DEVICE", value: -5)
!335 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_TYPE_DEPTH_OS_DEVICE", value: -6)
!336 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_TYPE_DEPTH_MISC", value: -7)
!337 = !DIEnumerator(name: "QUO_INTERNAL_hwloc_TYPE_DEPTH_MEMCACHE", value: -8)
!338 = !{!339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!340 = !{!0, !7, !12, !18}
!341 = !{i32 7, !"Dwarf Version", i32 5}
!342 = !{i32 2, !"Debug Info Version", i32 3}
!343 = !{i32 1, !"wchar_size", i32 4}
!344 = !{i32 8, !"PIC Level", i32 2}
!345 = !{i32 7, !"uwtable", i32 2}
!346 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!347 = distinct !DISubprogram(name: "quo_internal_hwloc_set_cpubind", scope: !24, file: !24, line: 59, type: !348, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !786)
!348 = !DISubroutineType(types: !349)
!349 = !{!75, !350, !531, !75}
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_internal_hwloc_topology_t", file: !27, line: 667, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_topology", file: !353, line: 51, size: 6848, elements: !354)
!353 = !DIFile(filename: "include/private/private.h", directory: "/local-ssd/libquo-a5d64skrddtcir6td6wgkbqasktcbifa-build/aidengro/spack-stage-libquo-1.3.1-a5d64skrddtcir6td6wgkbqasktcbifa/spack-src/src/hwloc", checksumkind: CSK_MD5, checksum: "8963c17497e31d792ec1196475f63180")
!354 = !{!355, !356, !357, !358, !360, !491, !492, !496, !498, !499, !500, !501, !505, !506, !507, !508, !511, !521, !522, !523, !612, !658, !662, !667, !668, !688, !689, !690, !691, !692, !693, !697, !698, !743, !744, !745, !746, !756, !757, !758, !759, !767, !768, !774, !785}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "topology_abi", scope: !352, file: !353, line: 52, baseType: !28, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "nb_levels", scope: !352, file: !353, line: 54, baseType: !28, size: 32, offset: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "nb_levels_allocated", scope: !352, file: !353, line: 55, baseType: !28, size: 32, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "level_nbobjects", scope: !352, file: !353, line: 56, baseType: !359, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "levels", scope: !352, file: !353, line: 57, baseType: !361, size: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_obj", file: !27, line: 381, size: 1984, elements: !365)
!365 = !{!366, !368, !370, !371, !372, !380, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !478, !479, !481, !482, !488, !489, !490}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !364, file: !27, line: 383, baseType: !367, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_internal_hwloc_obj_type_t", file: !27, line: 307, baseType: !26)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !364, file: !27, line: 384, baseType: !369, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "os_index", scope: !364, file: !27, line: 386, baseType: !28, size: 32, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !364, file: !27, line: 393, baseType: !369, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "total_memory", scope: !364, file: !27, line: 398, baseType: !373, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "hwloc_uint64_t", file: !374, line: 217, baseType: !375)
!374 = !DIFile(filename: "include/hwloc/autogen/config.h", directory: "/local-ssd/libquo-a5d64skrddtcir6td6wgkbqasktcbifa-build/aidengro/spack-stage-libquo-1.3.1-a5d64skrddtcir6td6wgkbqasktcbifa/spack-src/src/hwloc", checksumkind: CSK_MD5, checksum: "7574ee031d7a0fd53225d7770a824f3d")
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !376, line: 27, baseType: !377)
!376 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !378, line: 45, baseType: !379)
!378 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!379 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !364, file: !27, line: 400, baseType: !381, size: 64, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "quo_internal_hwloc_obj_attr_u", file: !27, line: 582, size: 320, elements: !383)
!383 = !{!384, !395, !404, !412, !428, !448}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "numanode", scope: !382, file: !27, line: 596, baseType: !385, size: 192)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_numanode_attr_s", file: !27, line: 584, size: 192, elements: !386)
!386 = !{!387, !388, !389}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory", scope: !385, file: !27, line: 585, baseType: !373, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "page_types_len", scope: !385, file: !27, line: 586, baseType: !28, size: 32, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "page_types", scope: !385, file: !27, line: 595, baseType: !390, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_memory_page_type_s", file: !27, line: 592, size: 128, elements: !392)
!392 = !{!393, !394}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !391, file: !27, line: 593, baseType: !373, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !391, file: !27, line: 594, baseType: !373, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !382, file: !27, line: 606, baseType: !396, size: 192)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_cache_attr_s", file: !27, line: 599, size: 192, elements: !397)
!397 = !{!398, !399, !400, !401, !402}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !396, file: !27, line: 600, baseType: !373, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !396, file: !27, line: 601, baseType: !28, size: 32, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "linesize", scope: !396, file: !27, line: 602, baseType: !28, size: 32, offset: 96)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "associativity", scope: !396, file: !27, line: 603, baseType: !75, size: 32, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !396, file: !27, line: 605, baseType: !403, size: 32, offset: 160)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_internal_hwloc_obj_cache_type_t", file: !27, line: 314, baseType: !51)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !382, file: !27, line: 614, baseType: !405, size: 128)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_group_attr_s", file: !27, line: 608, size: 128, elements: !406)
!406 = !{!407, !408, !409, !410}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !405, file: !27, line: 609, baseType: !28, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !405, file: !27, line: 611, baseType: !28, size: 32, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "subkind", scope: !405, file: !27, line: 612, baseType: !28, size: 32, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "dont_merge", scope: !405, file: !27, line: 613, baseType: !411, size: 8, offset: 96)
!411 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "pcidev", scope: !382, file: !27, line: 623, baseType: !413, size: 192)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_pcidev_attr_s", file: !27, line: 616, size: 192, elements: !414)
!414 = !{!415, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !413, file: !27, line: 617, baseType: !416, size: 16)
!416 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !413, file: !27, line: 618, baseType: !411, size: 8, offset: 16)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !413, file: !27, line: 618, baseType: !411, size: 8, offset: 24)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !413, file: !27, line: 618, baseType: !411, size: 8, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "class_id", scope: !413, file: !27, line: 619, baseType: !416, size: 16, offset: 48)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !413, file: !27, line: 620, baseType: !416, size: 16, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "device_id", scope: !413, file: !27, line: 620, baseType: !416, size: 16, offset: 80)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor_id", scope: !413, file: !27, line: 620, baseType: !416, size: 16, offset: 96)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice_id", scope: !413, file: !27, line: 620, baseType: !416, size: 16, offset: 112)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !413, file: !27, line: 621, baseType: !411, size: 8, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "linkspeed", scope: !413, file: !27, line: 622, baseType: !427, size: 32, offset: 160)
!427 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !382, file: !27, line: 638, baseType: !429, size: 320)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_bridge_attr_s", file: !27, line: 625, size: 320, elements: !430)
!430 = !{!431, !435, !437, !446, !447}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !429, file: !27, line: 628, baseType: !432, size: 192)
!432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !429, file: !27, line: 626, size: 192, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !432, file: !27, line: 627, baseType: !413, size: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_type", scope: !429, file: !27, line: 629, baseType: !436, size: 32, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_internal_hwloc_obj_bridge_type_t", file: !27, line: 320, baseType: !56)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "downstream", scope: !429, file: !27, line: 635, baseType: !438, size: 32, offset: 224)
!438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !429, file: !27, line: 630, size: 32, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !438, file: !27, line: 634, baseType: !441, size: 32)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !438, file: !27, line: 631, size: 32, elements: !442)
!442 = !{!443, !444, !445}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !441, file: !27, line: 632, baseType: !416, size: 16)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "secondary_bus", scope: !441, file: !27, line: 633, baseType: !411, size: 8, offset: 16)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate_bus", scope: !441, file: !27, line: 633, baseType: !411, size: 8, offset: 24)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_type", scope: !429, file: !27, line: 636, baseType: !436, size: 32, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !429, file: !27, line: 637, baseType: !28, size: 32, offset: 288)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "osdev", scope: !382, file: !27, line: 642, baseType: !449, size: 32)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_osdev_attr_s", file: !27, line: 640, size: 32, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !449, file: !27, line: 641, baseType: !452, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_internal_hwloc_obj_osdev_type_t", file: !27, line: 340, baseType: !60)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !364, file: !27, line: 404, baseType: !75, size: 32, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "logical_index", scope: !364, file: !27, line: 419, baseType: !28, size: 32, offset: 416)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next_cousin", scope: !364, file: !27, line: 427, baseType: !363, size: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cousin", scope: !364, file: !27, line: 428, baseType: !363, size: 64, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !364, file: !27, line: 431, baseType: !363, size: 64, offset: 576)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_rank", scope: !364, file: !27, line: 432, baseType: !28, size: 32, offset: 640)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling", scope: !364, file: !27, line: 433, baseType: !363, size: 64, offset: 704)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling", scope: !364, file: !27, line: 434, baseType: !363, size: 64, offset: 768)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !364, file: !27, line: 437, baseType: !28, size: 32, offset: 832)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !364, file: !27, line: 441, baseType: !362, size: 64, offset: 896)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "first_child", scope: !364, file: !27, line: 442, baseType: !363, size: 64, offset: 960)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "last_child", scope: !364, file: !27, line: 443, baseType: !363, size: 64, offset: 1024)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "symmetric_subtree", scope: !364, file: !27, line: 446, baseType: !75, size: 32, offset: 1088)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "memory_arity", scope: !364, file: !27, line: 457, baseType: !28, size: 32, offset: 1120)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "memory_first_child", scope: !364, file: !27, line: 460, baseType: !363, size: 64, offset: 1152)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "io_arity", scope: !364, file: !27, line: 475, baseType: !28, size: 32, offset: 1216)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "io_first_child", scope: !364, file: !27, line: 478, baseType: !363, size: 64, offset: 1280)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "misc_arity", scope: !364, file: !27, line: 487, baseType: !28, size: 32, offset: 1344)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "misc_first_child", scope: !364, file: !27, line: 490, baseType: !363, size: 64, offset: 1408)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset", scope: !364, file: !27, line: 497, baseType: !473, size: 64, offset: 1472)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_internal_hwloc_cpuset_t", file: !27, line: 140, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_internal_hwloc_bitmap_t", file: !475, line: 68, baseType: !476)
!475 = !DIFile(filename: "include/hwloc/bitmap.h", directory: "/local-ssd/libquo-a5d64skrddtcir6td6wgkbqasktcbifa-build/aidengro/spack-stage-libquo-1.3.1-a5d64skrddtcir6td6wgkbqasktcbifa/spack-src/src/hwloc", checksumkind: CSK_MD5, checksum: "3b45c6ee7685b8110a8db2955a1e9fc0")
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_bitmap_s", file: !475, line: 68, flags: DIFlagFwdDecl)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "complete_cpuset", scope: !364, file: !27, line: 512, baseType: !473, size: 64, offset: 1536)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "nodeset", scope: !364, file: !27, line: 525, baseType: !480, size: 64, offset: 1600)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_internal_hwloc_nodeset_t", file: !27, line: 157, baseType: !474)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "complete_nodeset", scope: !364, file: !27, line: 545, baseType: !480, size: 64, offset: 1664)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "infos", scope: !364, file: !27, line: 561, baseType: !483, size: 64, offset: 1728)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_info_s", file: !27, line: 649, size: 128, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !484, file: !27, line: 650, baseType: !369, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !484, file: !27, line: 651, baseType: !369, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "infos_count", scope: !364, file: !27, line: 562, baseType: !28, size: 32, offset: 1792)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "userdata", scope: !364, file: !27, line: 565, baseType: !339, size: 64, offset: 1856)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "gp_index", scope: !364, file: !27, line: 570, baseType: !373, size: 64, offset: 1920)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !352, file: !353, line: 58, baseType: !379, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "type_depth", scope: !352, file: !353, line: 59, baseType: !493, size: 640, offset: 320)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 640, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 20)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "type_filter", scope: !352, file: !353, line: 60, baseType: !497, size: 640, offset: 960)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 640, elements: !494)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "is_thissystem", scope: !352, file: !353, line: 61, baseType: !75, size: 32, offset: 1600)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "is_loaded", scope: !352, file: !353, line: 62, baseType: !75, size: 32, offset: 1632)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !352, file: !353, line: 63, baseType: !75, size: 32, offset: 1664)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !352, file: !353, line: 64, baseType: !502, size: 32, offset: 1696)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !503, line: 38, baseType: !504)
!503 = !DIFile(filename: "/usr/include/sched.h", directory: "", checksumkind: CSK_MD5, checksum: "52ea601aba54a9937a50019367077a72")
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !378, line: 154, baseType: !75)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "userdata", scope: !352, file: !353, line: 65, baseType: !339, size: 64, offset: 1728)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next_gp_index", scope: !352, file: !353, line: 66, baseType: !375, size: 64, offset: 1792)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "adopted_shmem_addr", scope: !352, file: !353, line: 68, baseType: !339, size: 64, offset: 1856)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "adopted_shmem_length", scope: !352, file: !353, line: 69, baseType: !509, size: 64, offset: 1920)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !510, line: 70, baseType: !379)
!510 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!511 = !DIDerivedType(tag: DW_TAG_member, name: "slevels", scope: !352, file: !353, line: 85, baseType: !512, size: 1536, offset: 1984)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 1536, elements: !519)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_special_level_s", file: !353, line: 81, size: 256, elements: !514)
!514 = !{!515, !516, !517, !518}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "nbobjs", scope: !513, file: !353, line: 82, baseType: !28, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "objs", scope: !513, file: !353, line: 83, baseType: !362, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !513, file: !353, line: 84, baseType: !363, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !513, file: !353, line: 84, baseType: !363, size: 64, offset: 192)
!519 = !{!520}
!520 = !DISubrange(count: 6)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_cpuset", scope: !352, file: !353, line: 87, baseType: !474, size: 64, offset: 3520)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_nodeset", scope: !352, file: !353, line: 88, baseType: !474, size: 64, offset: 3584)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "binding_hooks", scope: !352, file: !353, line: 124, baseType: !524, size: 1536, offset: 3648)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_binding_hooks", file: !353, line: 90, size: 1536, elements: !525)
!525 = !{!526, !534, !538, !539, !540, !544, !548, !554, !558, !559, !560, !561, !567, !572, !573, !574, !578, !582, !588, !592, !596, !600, !604, !608}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "set_thisproc_cpubind", scope: !524, file: !353, line: 92, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!75, !350, !530, !75}
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_internal_hwloc_const_cpuset_t", file: !27, line: 142, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_internal_hwloc_const_bitmap_t", file: !475, line: 70, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisproc_cpubind", scope: !524, file: !353, line: 93, baseType: !535, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!75, !350, !473, !75}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "set_thisthread_cpubind", scope: !524, file: !353, line: 94, baseType: !527, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisthread_cpubind", scope: !524, file: !353, line: 95, baseType: !535, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "set_proc_cpubind", scope: !524, file: !353, line: 96, baseType: !541, size: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!75, !350, !502, !530, !75}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "get_proc_cpubind", scope: !524, file: !353, line: 97, baseType: !545, size: 64, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!75, !350, !502, !473, !75}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "set_thread_cpubind", scope: !524, file: !353, line: 99, baseType: !549, size: 64, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!75, !350, !552, !530, !75}
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !553, line: 27, baseType: !379)
!553 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!554 = !DIDerivedType(tag: DW_TAG_member, name: "get_thread_cpubind", scope: !524, file: !353, line: 100, baseType: !555, size: 64, offset: 448)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!75, !350, !552, !473, !75}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisproc_last_cpu_location", scope: !524, file: !353, line: 103, baseType: !535, size: 64, offset: 512)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisthread_last_cpu_location", scope: !524, file: !353, line: 104, baseType: !535, size: 64, offset: 576)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "get_proc_last_cpu_location", scope: !524, file: !353, line: 105, baseType: !545, size: 64, offset: 640)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "set_thisproc_membind", scope: !524, file: !353, line: 107, baseType: !562, size: 64, offset: 704)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!75, !350, !565, !566, !75}
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_internal_hwloc_const_nodeset_t", file: !27, line: 160, baseType: !531)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_internal_hwloc_membind_policy_t", file: !27, line: 1403, baseType: !74)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisproc_membind", scope: !524, file: !353, line: 108, baseType: !568, size: 64, offset: 768)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!75, !350, !480, !571, !75}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "set_thisthread_membind", scope: !524, file: !353, line: 109, baseType: !562, size: 64, offset: 832)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisthread_membind", scope: !524, file: !353, line: 110, baseType: !568, size: 64, offset: 896)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "set_proc_membind", scope: !524, file: !353, line: 111, baseType: !575, size: 64, offset: 960)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!75, !350, !502, !565, !566, !75}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "get_proc_membind", scope: !524, file: !353, line: 112, baseType: !579, size: 64, offset: 1024)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!75, !350, !502, !480, !571, !75}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "set_area_membind", scope: !524, file: !353, line: 113, baseType: !583, size: 64, offset: 1088)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!75, !350, !586, !509, !565, !566, !75}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "get_area_membind", scope: !524, file: !353, line: 114, baseType: !589, size: 64, offset: 1152)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!75, !350, !586, !509, !480, !571, !75}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "get_area_memlocation", scope: !524, file: !353, line: 115, baseType: !593, size: 64, offset: 1216)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!75, !350, !586, !509, !480, !75}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !524, file: !353, line: 117, baseType: !597, size: 64, offset: 1280)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!339, !350, !509}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_membind", scope: !524, file: !353, line: 120, baseType: !601, size: 64, offset: 1344)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!339, !350, !509, !565, !566, !75}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "free_membind", scope: !524, file: !353, line: 121, baseType: !605, size: 64, offset: 1408)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!75, !350, !339, !509}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "get_allowed_resources", scope: !524, file: !353, line: 123, baseType: !609, size: 64, offset: 1472)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!75, !350}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "support", scope: !352, file: !353, line: 126, baseType: !613, size: 192, offset: 5184)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_topology_support", file: !27, line: 2039, size: 192, elements: !614)
!614 = !{!615, !624, !639}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "discovery", scope: !613, file: !27, line: 2040, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_topology_discovery_support", file: !27, line: 1952, size: 40, elements: !618)
!618 = !{!619, !620, !621, !622, !623}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "pu", scope: !617, file: !27, line: 1954, baseType: !411, size: 8)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "numa", scope: !617, file: !27, line: 1956, baseType: !411, size: 8, offset: 8)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "numa_memory", scope: !617, file: !27, line: 1958, baseType: !411, size: 8, offset: 16)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "disallowed_pu", scope: !617, file: !27, line: 1960, baseType: !411, size: 8, offset: 24)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "disallowed_numa", scope: !617, file: !27, line: 1962, baseType: !411, size: 8, offset: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "cpubind", scope: !613, file: !27, line: 2041, baseType: !625, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_topology_cpubind_support", file: !27, line: 1970, size: 88, elements: !627)
!627 = !{!628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "set_thisproc_cpubind", scope: !626, file: !27, line: 1972, baseType: !411, size: 8)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisproc_cpubind", scope: !626, file: !27, line: 1974, baseType: !411, size: 8, offset: 8)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "set_proc_cpubind", scope: !626, file: !27, line: 1976, baseType: !411, size: 8, offset: 16)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "get_proc_cpubind", scope: !626, file: !27, line: 1978, baseType: !411, size: 8, offset: 24)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "set_thisthread_cpubind", scope: !626, file: !27, line: 1980, baseType: !411, size: 8, offset: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisthread_cpubind", scope: !626, file: !27, line: 1982, baseType: !411, size: 8, offset: 40)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "set_thread_cpubind", scope: !626, file: !27, line: 1984, baseType: !411, size: 8, offset: 48)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "get_thread_cpubind", scope: !626, file: !27, line: 1986, baseType: !411, size: 8, offset: 56)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisproc_last_cpu_location", scope: !626, file: !27, line: 1988, baseType: !411, size: 8, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "get_proc_last_cpu_location", scope: !626, file: !27, line: 1990, baseType: !411, size: 8, offset: 72)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisthread_last_cpu_location", scope: !626, file: !27, line: 1992, baseType: !411, size: 8, offset: 80)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "membind", scope: !613, file: !27, line: 2042, baseType: !640, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_topology_membind_support", file: !27, line: 2000, size: 120, elements: !642)
!642 = !{!643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "set_thisproc_membind", scope: !641, file: !27, line: 2002, baseType: !411, size: 8)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisproc_membind", scope: !641, file: !27, line: 2004, baseType: !411, size: 8, offset: 8)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "set_proc_membind", scope: !641, file: !27, line: 2006, baseType: !411, size: 8, offset: 16)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "get_proc_membind", scope: !641, file: !27, line: 2008, baseType: !411, size: 8, offset: 24)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "set_thisthread_membind", scope: !641, file: !27, line: 2010, baseType: !411, size: 8, offset: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "get_thisthread_membind", scope: !641, file: !27, line: 2012, baseType: !411, size: 8, offset: 40)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "set_area_membind", scope: !641, file: !27, line: 2014, baseType: !411, size: 8, offset: 48)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "get_area_membind", scope: !641, file: !27, line: 2016, baseType: !411, size: 8, offset: 56)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_membind", scope: !641, file: !27, line: 2018, baseType: !411, size: 8, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "firsttouch_membind", scope: !641, file: !27, line: 2020, baseType: !411, size: 8, offset: 72)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "bind_membind", scope: !641, file: !27, line: 2022, baseType: !411, size: 8, offset: 80)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_membind", scope: !641, file: !27, line: 2024, baseType: !411, size: 8, offset: 88)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "nexttouch_membind", scope: !641, file: !27, line: 2026, baseType: !411, size: 8, offset: 96)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_membind", scope: !641, file: !27, line: 2028, baseType: !411, size: 8, offset: 104)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "get_area_memlocation", scope: !641, file: !27, line: 2030, baseType: !411, size: 8, offset: 112)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "userdata_export_cb", scope: !352, file: !353, line: 128, baseType: !659, size: 64, offset: 5376)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !339, !351, !363}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "userdata_import_cb", scope: !352, file: !353, line: 129, baseType: !663, size: 64, offset: 5440)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !351, !363, !666, !586, !509}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "userdata_not_decoded", scope: !352, file: !353, line: 130, baseType: !75, size: 32, offset: 5504)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "first_dist", scope: !352, file: !353, line: 163, baseType: !669, size: 64, offset: 5568)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_internal_distances_s", file: !353, line: 132, size: 704, elements: !671)
!671 = !{!672, !673, !674, !675, !677, !678, !680, !681, !682, !683, !686, !687}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !670, file: !353, line: 133, baseType: !369, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !670, file: !353, line: 135, baseType: !28, size: 32, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "unique_type", scope: !670, file: !353, line: 142, baseType: !367, size: 32, offset: 96)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "different_types", scope: !670, file: !353, line: 143, baseType: !676, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "nbobjs", scope: !670, file: !353, line: 146, baseType: !28, size: 32, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "indexes", scope: !670, file: !353, line: 147, baseType: !679, size: 64, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !670, file: !353, line: 151, baseType: !679, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !670, file: !353, line: 154, baseType: !379, size: 64, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !670, file: !353, line: 157, baseType: !28, size: 32, offset: 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "objs", scope: !670, file: !353, line: 160, baseType: !684, size: 64, offset: 512)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_internal_hwloc_obj_t", file: !27, line: 579, baseType: !363)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !670, file: !353, line: 162, baseType: !669, size: 64, offset: 576)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !670, file: !353, line: 162, baseType: !669, size: 64, offset: 640)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "last_dist", scope: !352, file: !353, line: 163, baseType: !669, size: 64, offset: 5632)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "next_dist_id", scope: !352, file: !353, line: 164, baseType: !28, size: 32, offset: 5696)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !352, file: !353, line: 166, baseType: !75, size: 32, offset: 5728)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "grouping_verbose", scope: !352, file: !353, line: 167, baseType: !75, size: 32, offset: 5760)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "grouping_nbaccuracies", scope: !352, file: !353, line: 168, baseType: !28, size: 32, offset: 5792)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "grouping_accuracies", scope: !352, file: !353, line: 169, baseType: !694, size: 160, offset: 5824)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 160, elements: !695)
!695 = !{!696}
!696 = !DISubrange(count: 5)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "grouping_next_subkind", scope: !352, file: !353, line: 170, baseType: !28, size: 32, offset: 5984)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "backends", scope: !352, file: !353, line: 173, baseType: !699, size: 64, offset: 6016)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_backend", file: !84, line: 179, size: 704, elements: !701)
!701 = !{!702, !716, !717, !718, !719, !720, !721, !722, !723, !727, !738}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "component", scope: !700, file: !84, line: 181, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_disc_component", file: !84, line: 34, size: 320, elements: !705)
!705 = !{!706, !707, !708, !709, !713, !714, !715}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !704, file: !84, line: 38, baseType: !666, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "phases", scope: !704, file: !84, line: 43, baseType: !28, size: 32, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "excluded_phases", scope: !704, file: !84, line: 53, baseType: !28, size: 32, offset: 96)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "instantiate", scope: !704, file: !84, line: 58, baseType: !710, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!699, !351, !703, !28, !586, !586, !586}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !704, file: !84, line: 72, baseType: !28, size: 32, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "enabled_by_default", scope: !704, file: !84, line: 77, baseType: !28, size: 32, offset: 224)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !704, file: !84, line: 83, baseType: !703, size: 64, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "topology", scope: !700, file: !84, line: 183, baseType: !351, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "envvar_forced", scope: !700, file: !84, line: 185, baseType: !75, size: 32, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !700, file: !84, line: 187, baseType: !699, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "phases", scope: !700, file: !84, line: 192, baseType: !28, size: 32, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !700, file: !84, line: 195, baseType: !379, size: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "is_thissystem", scope: !700, file: !84, line: 203, baseType: !75, size: 32, offset: 384)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !700, file: !84, line: 206, baseType: !339, size: 64, offset: 448)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !700, file: !84, line: 210, baseType: !724, size: 64, offset: 512)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !699}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "discover", scope: !700, file: !84, line: 217, baseType: !728, size: 64, offset: 576)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!75, !699, !731}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_disc_status", file: !84, line: 146, size: 128, elements: !733)
!733 = !{!734, !736, !737}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !732, file: !84, line: 150, baseType: !735, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_internal_hwloc_disc_phase_t", file: !84, line: 133, baseType: !83)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "excluded_phases", scope: !732, file: !84, line: 155, baseType: !28, size: 32, offset: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !84, line: 158, baseType: !379, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "get_pci_busid_cpuset", scope: !700, file: !84, line: 223, baseType: !739, size: 64, offset: 640)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!75, !699, !742, !474}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "get_pci_busid_cpuset_backend", scope: !352, file: !353, line: 174, baseType: !699, size: 64, offset: 6080)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "backend_phases", scope: !352, file: !353, line: 175, baseType: !28, size: 32, offset: 6144)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "backend_excluded_phases", scope: !352, file: !353, line: 176, baseType: !28, size: 32, offset: 6176)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "tma", scope: !352, file: !353, line: 179, baseType: !747, size: 64, offset: 6208)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_tma", file: !353, line: 414, size: 192, elements: !749)
!749 = !{!750, !754, !755}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !748, file: !353, line: 415, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!339, !747, !509}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !748, file: !353, line: 416, baseType: !339, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "dontfree", scope: !748, file: !353, line: 417, baseType: !75, size: 32, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "machine_memory", scope: !352, file: !353, line: 195, baseType: !385, size: 192, offset: 6272)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "pci_has_forced_locality", scope: !352, file: !353, line: 198, baseType: !75, size: 32, offset: 6464)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "pci_forced_locality_nr", scope: !352, file: !353, line: 199, baseType: !28, size: 32, offset: 6496)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "pci_forced_locality", scope: !352, file: !353, line: 204, baseType: !760, size: 64, offset: 6528)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_pci_forced_locality_s", file: !353, line: 200, size: 192, elements: !762)
!762 = !{!763, !764, !765, !766}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !761, file: !353, line: 201, baseType: !28, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "bus_first", scope: !761, file: !353, line: 202, baseType: !28, size: 32, offset: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "bus_last", scope: !761, file: !353, line: 202, baseType: !28, size: 32, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset", scope: !761, file: !353, line: 203, baseType: !474, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "nr_blacklisted_components", scope: !352, file: !353, line: 207, baseType: !28, size: 32, offset: 6592)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "blacklisted_components", scope: !352, file: !353, line: 211, baseType: !769, size: 64, offset: 6656)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_topology_forced_component", file: !353, line: 208, size: 128, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "component", scope: !770, file: !353, line: 209, baseType: !703, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "phases", scope: !770, file: !353, line: 210, baseType: !28, size: 32, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "first_pci_locality", scope: !352, file: !353, line: 221, baseType: !775, size: 64, offset: 6720)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_internal_hwloc_pci_locality_s", file: !353, line: 214, size: 384, elements: !777)
!777 = !{!778, !779, !780, !781, !782, !783, !784}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !776, file: !353, line: 215, baseType: !28, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "bus_min", scope: !776, file: !353, line: 216, baseType: !28, size: 32, offset: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "bus_max", scope: !776, file: !353, line: 217, baseType: !28, size: 32, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset", scope: !776, file: !353, line: 218, baseType: !474, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !776, file: !353, line: 219, baseType: !685, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !776, file: !353, line: 220, baseType: !775, size: 64, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !776, file: !353, line: 220, baseType: !775, size: 64, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "last_pci_locality", scope: !352, file: !353, line: 221, baseType: !775, size: 64, offset: 6784)
!786 = !{!787, !788, !789, !790}
!787 = !DILocalVariable(name: "topology", arg: 1, scope: !347, file: !24, line: 59, type: !350)
!788 = !DILocalVariable(name: "set", arg: 2, scope: !347, file: !24, line: 59, type: !531)
!789 = !DILocalVariable(name: "flags", arg: 3, scope: !347, file: !24, line: 59, type: !75)
!790 = !DILocalVariable(name: "err", scope: !791, file: !24, line: 78, type: !75)
!791 = distinct !DILexicalBlock(scope: !792, file: !24, line: 77, column: 55)
!792 = distinct !DILexicalBlock(scope: !793, file: !24, line: 77, column: 9)
!793 = distinct !DILexicalBlock(scope: !794, file: !24, line: 76, column: 10)
!794 = distinct !DILexicalBlock(scope: !795, file: !24, line: 73, column: 14)
!795 = distinct !DILexicalBlock(scope: !347, file: !24, line: 70, column: 7)
!796 = !{!797, !797, i64 0}
!797 = !{!"any pointer", !798, i64 0}
!798 = !{!"omnipotent char", !799, i64 0}
!799 = !{!"Simple C/C++ TBAA"}
!800 = !DILocation(line: 59, column: 36, scope: !347)
!801 = !DILocation(line: 59, column: 67, scope: !347)
!802 = !{!803, !803, i64 0}
!803 = !{!"int", !798, i64 0}
!804 = !DILocation(line: 59, column: 76, scope: !347)
!805 = !DILocation(line: 61, column: 7, scope: !806)
!806 = distinct !DILexicalBlock(scope: !347, file: !24, line: 61, column: 7)
!807 = !DILocation(line: 61, column: 13, scope: !806)
!808 = !DILocation(line: 61, column: 7, scope: !347)
!809 = !DILocation(line: 62, column: 5, scope: !810)
!810 = distinct !DILexicalBlock(scope: !806, file: !24, line: 61, column: 40)
!811 = !DILocation(line: 62, column: 11, scope: !810)
!812 = !DILocation(line: 63, column: 5, scope: !810)
!813 = !DILocation(line: 66, column: 27, scope: !347)
!814 = !DILocation(line: 66, column: 37, scope: !347)
!815 = !DILocation(line: 66, column: 9, scope: !347)
!816 = !DILocation(line: 66, column: 7, scope: !347)
!817 = !DILocation(line: 67, column: 8, scope: !818)
!818 = distinct !DILexicalBlock(scope: !347, file: !24, line: 67, column: 7)
!819 = !DILocation(line: 67, column: 7, scope: !347)
!820 = !DILocation(line: 68, column: 5, scope: !818)
!821 = !DILocation(line: 70, column: 7, scope: !795)
!822 = !DILocation(line: 70, column: 13, scope: !795)
!823 = !DILocation(line: 70, column: 7, scope: !347)
!824 = !DILocation(line: 71, column: 9, scope: !825)
!825 = distinct !DILexicalBlock(scope: !826, file: !24, line: 71, column: 9)
!826 = distinct !DILexicalBlock(scope: !795, file: !24, line: 70, column: 38)
!827 = !DILocation(line: 71, column: 19, scope: !825)
!828 = !DILocation(line: 71, column: 33, scope: !825)
!829 = !{!830, !797, i64 456}
!830 = !{!"quo_internal_hwloc_topology", !803, i64 0, !803, i64 4, !803, i64 8, !797, i64 16, !797, i64 24, !831, i64 32, !798, i64 40, !798, i64 120, !803, i64 200, !803, i64 204, !803, i64 208, !803, i64 212, !797, i64 216, !831, i64 224, !797, i64 232, !831, i64 240, !798, i64 248, !797, i64 440, !797, i64 448, !832, i64 456, !833, i64 648, !797, i64 672, !797, i64 680, !803, i64 688, !797, i64 696, !797, i64 704, !803, i64 712, !803, i64 716, !803, i64 720, !803, i64 724, !798, i64 728, !803, i64 748, !797, i64 752, !797, i64 760, !803, i64 768, !803, i64 772, !797, i64 776, !834, i64 784, !803, i64 808, !803, i64 812, !797, i64 816, !803, i64 824, !797, i64 832, !797, i64 840, !797, i64 848}
!831 = !{!"long", !798, i64 0}
!832 = !{!"quo_internal_hwloc_binding_hooks", !797, i64 0, !797, i64 8, !797, i64 16, !797, i64 24, !797, i64 32, !797, i64 40, !797, i64 48, !797, i64 56, !797, i64 64, !797, i64 72, !797, i64 80, !797, i64 88, !797, i64 96, !797, i64 104, !797, i64 112, !797, i64 120, !797, i64 128, !797, i64 136, !797, i64 144, !797, i64 152, !797, i64 160, !797, i64 168, !797, i64 176, !797, i64 184}
!833 = !{!"quo_internal_hwloc_topology_support", !797, i64 0, !797, i64 8, !797, i64 16}
!834 = !{!"quo_internal_hwloc_numanode_attr_s", !831, i64 0, !803, i64 8, !797, i64 16}
!835 = !DILocation(line: 71, column: 9, scope: !826)
!836 = !DILocation(line: 72, column: 14, scope: !825)
!837 = !DILocation(line: 72, column: 24, scope: !825)
!838 = !DILocation(line: 72, column: 38, scope: !825)
!839 = !DILocation(line: 72, column: 59, scope: !825)
!840 = !DILocation(line: 72, column: 69, scope: !825)
!841 = !DILocation(line: 72, column: 74, scope: !825)
!842 = !DILocation(line: 72, column: 7, scope: !825)
!843 = !DILocation(line: 73, column: 3, scope: !826)
!844 = !DILocation(line: 73, column: 14, scope: !794)
!845 = !DILocation(line: 73, column: 20, scope: !794)
!846 = !DILocation(line: 73, column: 14, scope: !795)
!847 = !DILocation(line: 74, column: 9, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !24, line: 74, column: 9)
!849 = distinct !DILexicalBlock(scope: !794, file: !24, line: 73, column: 44)
!850 = !DILocation(line: 74, column: 19, scope: !848)
!851 = !DILocation(line: 74, column: 33, scope: !848)
!852 = !{!830, !797, i64 472}
!853 = !DILocation(line: 74, column: 9, scope: !849)
!854 = !DILocation(line: 75, column: 14, scope: !848)
!855 = !DILocation(line: 75, column: 24, scope: !848)
!856 = !DILocation(line: 75, column: 38, scope: !848)
!857 = !DILocation(line: 75, column: 61, scope: !848)
!858 = !DILocation(line: 75, column: 71, scope: !848)
!859 = !DILocation(line: 75, column: 76, scope: !848)
!860 = !DILocation(line: 75, column: 7, scope: !848)
!861 = !DILocation(line: 76, column: 3, scope: !849)
!862 = !DILocation(line: 77, column: 9, scope: !792)
!863 = !DILocation(line: 77, column: 19, scope: !792)
!864 = !DILocation(line: 77, column: 33, scope: !792)
!865 = !DILocation(line: 77, column: 9, scope: !793)
!866 = !DILocation(line: 78, column: 7, scope: !791)
!867 = !DILocation(line: 78, column: 11, scope: !791)
!868 = !DILocation(line: 78, column: 17, scope: !791)
!869 = !DILocation(line: 78, column: 27, scope: !791)
!870 = !DILocation(line: 78, column: 41, scope: !791)
!871 = !DILocation(line: 78, column: 62, scope: !791)
!872 = !DILocation(line: 78, column: 72, scope: !791)
!873 = !DILocation(line: 78, column: 77, scope: !791)
!874 = !DILocation(line: 79, column: 11, scope: !875)
!875 = distinct !DILexicalBlock(scope: !791, file: !24, line: 79, column: 11)
!876 = !DILocation(line: 79, column: 15, scope: !875)
!877 = !DILocation(line: 79, column: 20, scope: !875)
!878 = !DILocation(line: 79, column: 23, scope: !875)
!879 = !DILocation(line: 79, column: 29, scope: !875)
!880 = !DILocation(line: 79, column: 11, scope: !791)
!881 = !DILocation(line: 80, column: 16, scope: !875)
!882 = !DILocation(line: 80, column: 9, scope: !875)
!883 = !DILocation(line: 82, column: 5, scope: !792)
!884 = !DILocation(line: 82, column: 5, scope: !791)
!885 = !DILocation(line: 83, column: 9, scope: !886)
!886 = distinct !DILexicalBlock(scope: !793, file: !24, line: 83, column: 9)
!887 = !DILocation(line: 83, column: 19, scope: !886)
!888 = !DILocation(line: 83, column: 33, scope: !886)
!889 = !DILocation(line: 83, column: 9, scope: !793)
!890 = !DILocation(line: 84, column: 14, scope: !886)
!891 = !DILocation(line: 84, column: 24, scope: !886)
!892 = !DILocation(line: 84, column: 38, scope: !886)
!893 = !DILocation(line: 84, column: 61, scope: !886)
!894 = !DILocation(line: 84, column: 71, scope: !886)
!895 = !DILocation(line: 84, column: 76, scope: !886)
!896 = !DILocation(line: 84, column: 7, scope: !886)
!897 = !DILocation(line: 87, column: 3, scope: !347)
!898 = !DILocation(line: 87, column: 9, scope: !347)
!899 = !DILocation(line: 88, column: 3, scope: !347)
!900 = !DILocation(line: 89, column: 1, scope: !347)
!901 = !DISubprogram(name: "__errno_location", scope: !902, file: !902, line: 37, type: !903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!902 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!903 = !DISubroutineType(types: !904)
!904 = !{!905}
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!906 = distinct !DISubprogram(name: "hwloc_fix_cpubind", scope: !24, file: !24, line: 37, type: !907, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !909)
!907 = !DISubroutineType(types: !908)
!908 = !{!531, !350, !531}
!909 = !{!910, !911, !912, !913}
!910 = !DILocalVariable(name: "topology", arg: 1, scope: !906, file: !24, line: 37, type: !350)
!911 = !DILocalVariable(name: "set", arg: 2, scope: !906, file: !24, line: 37, type: !531)
!912 = !DILocalVariable(name: "topology_set", scope: !906, file: !24, line: 39, type: !531)
!913 = !DILocalVariable(name: "complete_set", scope: !906, file: !24, line: 40, type: !531)
!914 = !DILocation(line: 37, column: 36, scope: !906)
!915 = !DILocation(line: 37, column: 67, scope: !906)
!916 = !DILocation(line: 39, column: 3, scope: !906)
!917 = !DILocation(line: 39, column: 24, scope: !906)
!918 = !DILocation(line: 39, column: 74, scope: !906)
!919 = !DILocation(line: 39, column: 39, scope: !906)
!920 = !DILocation(line: 40, column: 3, scope: !906)
!921 = !DILocation(line: 40, column: 24, scope: !906)
!922 = !DILocation(line: 40, column: 74, scope: !906)
!923 = !DILocation(line: 40, column: 39, scope: !906)
!924 = !DILocation(line: 42, column: 27, scope: !925)
!925 = distinct !DILexicalBlock(scope: !906, file: !24, line: 42, column: 7)
!926 = !DILocation(line: 42, column: 7, scope: !925)
!927 = !DILocation(line: 42, column: 7, scope: !906)
!928 = !DILocation(line: 43, column: 5, scope: !929)
!929 = distinct !DILexicalBlock(scope: !925, file: !24, line: 42, column: 33)
!930 = !DILocation(line: 43, column: 11, scope: !929)
!931 = !DILocation(line: 44, column: 5, scope: !929)
!932 = !DILocation(line: 47, column: 32, scope: !933)
!933 = distinct !DILexicalBlock(scope: !906, file: !24, line: 47, column: 7)
!934 = !DILocation(line: 47, column: 37, scope: !933)
!935 = !DILocation(line: 47, column: 8, scope: !933)
!936 = !DILocation(line: 47, column: 7, scope: !906)
!937 = !DILocation(line: 48, column: 5, scope: !938)
!938 = distinct !DILexicalBlock(scope: !933, file: !24, line: 47, column: 52)
!939 = !DILocation(line: 48, column: 11, scope: !938)
!940 = !DILocation(line: 49, column: 5, scope: !938)
!941 = !DILocation(line: 52, column: 31, scope: !942)
!942 = distinct !DILexicalBlock(scope: !906, file: !24, line: 52, column: 7)
!943 = !DILocation(line: 52, column: 45, scope: !942)
!944 = !DILocation(line: 52, column: 7, scope: !942)
!945 = !DILocation(line: 52, column: 7, scope: !906)
!946 = !DILocation(line: 53, column: 11, scope: !942)
!947 = !DILocation(line: 53, column: 9, scope: !942)
!948 = !DILocation(line: 53, column: 5, scope: !942)
!949 = !DILocation(line: 55, column: 10, scope: !906)
!950 = !DILocation(line: 55, column: 3, scope: !906)
!951 = !DILocation(line: 56, column: 1, scope: !906)
!952 = distinct !DISubprogram(name: "quo_internal_hwloc_get_cpubind", scope: !24, file: !24, line: 92, type: !953, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !955)
!953 = !DISubroutineType(types: !954)
!954 = !{!75, !350, !474, !75}
!955 = !{!956, !957, !958, !959}
!956 = !DILocalVariable(name: "topology", arg: 1, scope: !952, file: !24, line: 92, type: !350)
!957 = !DILocalVariable(name: "set", arg: 2, scope: !952, file: !24, line: 92, type: !474)
!958 = !DILocalVariable(name: "flags", arg: 3, scope: !952, file: !24, line: 92, type: !75)
!959 = !DILocalVariable(name: "err", scope: !960, file: !24, line: 107, type: !75)
!960 = distinct !DILexicalBlock(scope: !961, file: !24, line: 106, column: 55)
!961 = distinct !DILexicalBlock(scope: !962, file: !24, line: 106, column: 9)
!962 = distinct !DILexicalBlock(scope: !963, file: !24, line: 105, column: 10)
!963 = distinct !DILexicalBlock(scope: !964, file: !24, line: 102, column: 14)
!964 = distinct !DILexicalBlock(scope: !952, file: !24, line: 99, column: 7)
!965 = !DILocation(line: 92, column: 36, scope: !952)
!966 = !DILocation(line: 92, column: 61, scope: !952)
!967 = !DILocation(line: 92, column: 70, scope: !952)
!968 = !DILocation(line: 94, column: 7, scope: !969)
!969 = distinct !DILexicalBlock(scope: !952, file: !24, line: 94, column: 7)
!970 = !DILocation(line: 94, column: 13, scope: !969)
!971 = !DILocation(line: 94, column: 7, scope: !952)
!972 = !DILocation(line: 95, column: 5, scope: !973)
!973 = distinct !DILexicalBlock(scope: !969, file: !24, line: 94, column: 40)
!974 = !DILocation(line: 95, column: 11, scope: !973)
!975 = !DILocation(line: 96, column: 5, scope: !973)
!976 = !DILocation(line: 99, column: 7, scope: !964)
!977 = !DILocation(line: 99, column: 13, scope: !964)
!978 = !DILocation(line: 99, column: 7, scope: !952)
!979 = !DILocation(line: 100, column: 9, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !24, line: 100, column: 9)
!981 = distinct !DILexicalBlock(scope: !964, file: !24, line: 99, column: 38)
!982 = !DILocation(line: 100, column: 19, scope: !980)
!983 = !DILocation(line: 100, column: 33, scope: !980)
!984 = !{!830, !797, i64 464}
!985 = !DILocation(line: 100, column: 9, scope: !981)
!986 = !DILocation(line: 101, column: 14, scope: !980)
!987 = !DILocation(line: 101, column: 24, scope: !980)
!988 = !DILocation(line: 101, column: 38, scope: !980)
!989 = !DILocation(line: 101, column: 59, scope: !980)
!990 = !DILocation(line: 101, column: 69, scope: !980)
!991 = !DILocation(line: 101, column: 74, scope: !980)
!992 = !DILocation(line: 101, column: 7, scope: !980)
!993 = !DILocation(line: 102, column: 3, scope: !981)
!994 = !DILocation(line: 102, column: 14, scope: !963)
!995 = !DILocation(line: 102, column: 20, scope: !963)
!996 = !DILocation(line: 102, column: 14, scope: !964)
!997 = !DILocation(line: 103, column: 9, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !24, line: 103, column: 9)
!999 = distinct !DILexicalBlock(scope: !963, file: !24, line: 102, column: 44)
!1000 = !DILocation(line: 103, column: 19, scope: !998)
!1001 = !DILocation(line: 103, column: 33, scope: !998)
!1002 = !{!830, !797, i64 480}
!1003 = !DILocation(line: 103, column: 9, scope: !999)
!1004 = !DILocation(line: 104, column: 14, scope: !998)
!1005 = !DILocation(line: 104, column: 24, scope: !998)
!1006 = !DILocation(line: 104, column: 38, scope: !998)
!1007 = !DILocation(line: 104, column: 61, scope: !998)
!1008 = !DILocation(line: 104, column: 71, scope: !998)
!1009 = !DILocation(line: 104, column: 76, scope: !998)
!1010 = !DILocation(line: 104, column: 7, scope: !998)
!1011 = !DILocation(line: 105, column: 3, scope: !999)
!1012 = !DILocation(line: 106, column: 9, scope: !961)
!1013 = !DILocation(line: 106, column: 19, scope: !961)
!1014 = !DILocation(line: 106, column: 33, scope: !961)
!1015 = !DILocation(line: 106, column: 9, scope: !962)
!1016 = !DILocation(line: 107, column: 7, scope: !960)
!1017 = !DILocation(line: 107, column: 11, scope: !960)
!1018 = !DILocation(line: 107, column: 17, scope: !960)
!1019 = !DILocation(line: 107, column: 27, scope: !960)
!1020 = !DILocation(line: 107, column: 41, scope: !960)
!1021 = !DILocation(line: 107, column: 62, scope: !960)
!1022 = !DILocation(line: 107, column: 72, scope: !960)
!1023 = !DILocation(line: 107, column: 77, scope: !960)
!1024 = !DILocation(line: 108, column: 11, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !960, file: !24, line: 108, column: 11)
!1026 = !DILocation(line: 108, column: 15, scope: !1025)
!1027 = !DILocation(line: 108, column: 20, scope: !1025)
!1028 = !DILocation(line: 108, column: 23, scope: !1025)
!1029 = !DILocation(line: 108, column: 29, scope: !1025)
!1030 = !DILocation(line: 108, column: 11, scope: !960)
!1031 = !DILocation(line: 109, column: 16, scope: !1025)
!1032 = !DILocation(line: 109, column: 9, scope: !1025)
!1033 = !DILocation(line: 111, column: 5, scope: !961)
!1034 = !DILocation(line: 111, column: 5, scope: !960)
!1035 = !DILocation(line: 112, column: 9, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !962, file: !24, line: 112, column: 9)
!1037 = !DILocation(line: 112, column: 19, scope: !1036)
!1038 = !DILocation(line: 112, column: 33, scope: !1036)
!1039 = !DILocation(line: 112, column: 9, scope: !962)
!1040 = !DILocation(line: 113, column: 14, scope: !1036)
!1041 = !DILocation(line: 113, column: 24, scope: !1036)
!1042 = !DILocation(line: 113, column: 38, scope: !1036)
!1043 = !DILocation(line: 113, column: 61, scope: !1036)
!1044 = !DILocation(line: 113, column: 71, scope: !1036)
!1045 = !DILocation(line: 113, column: 76, scope: !1036)
!1046 = !DILocation(line: 113, column: 7, scope: !1036)
!1047 = !DILocation(line: 116, column: 3, scope: !952)
!1048 = !DILocation(line: 116, column: 9, scope: !952)
!1049 = !DILocation(line: 117, column: 3, scope: !952)
!1050 = !DILocation(line: 118, column: 1, scope: !952)
!1051 = distinct !DISubprogram(name: "quo_internal_hwloc_set_proc_cpubind", scope: !24, file: !24, line: 121, type: !1052, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1054)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!75, !350, !502, !531, !75}
!1054 = !{!1055, !1056, !1057, !1058}
!1055 = !DILocalVariable(name: "topology", arg: 1, scope: !1051, file: !24, line: 121, type: !350)
!1056 = !DILocalVariable(name: "pid", arg: 2, scope: !1051, file: !24, line: 121, type: !502)
!1057 = !DILocalVariable(name: "set", arg: 3, scope: !1051, file: !24, line: 121, type: !531)
!1058 = !DILocalVariable(name: "flags", arg: 4, scope: !1051, file: !24, line: 121, type: !75)
!1059 = !DILocation(line: 121, column: 41, scope: !1051)
!1060 = !DILocation(line: 121, column: 63, scope: !1051)
!1061 = !DILocation(line: 121, column: 89, scope: !1051)
!1062 = !DILocation(line: 121, column: 98, scope: !1051)
!1063 = !DILocation(line: 123, column: 7, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1051, file: !24, line: 123, column: 7)
!1065 = !DILocation(line: 123, column: 13, scope: !1064)
!1066 = !DILocation(line: 123, column: 7, scope: !1051)
!1067 = !DILocation(line: 124, column: 5, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1064, file: !24, line: 123, column: 40)
!1069 = !DILocation(line: 124, column: 11, scope: !1068)
!1070 = !DILocation(line: 125, column: 5, scope: !1068)
!1071 = !DILocation(line: 128, column: 27, scope: !1051)
!1072 = !DILocation(line: 128, column: 37, scope: !1051)
!1073 = !DILocation(line: 128, column: 9, scope: !1051)
!1074 = !DILocation(line: 128, column: 7, scope: !1051)
!1075 = !DILocation(line: 129, column: 8, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1051, file: !24, line: 129, column: 7)
!1077 = !DILocation(line: 129, column: 7, scope: !1051)
!1078 = !DILocation(line: 130, column: 5, scope: !1076)
!1079 = !DILocation(line: 132, column: 7, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1051, file: !24, line: 132, column: 7)
!1081 = !DILocation(line: 132, column: 17, scope: !1080)
!1082 = !DILocation(line: 132, column: 31, scope: !1080)
!1083 = !{!830, !797, i64 488}
!1084 = !DILocation(line: 132, column: 7, scope: !1051)
!1085 = !DILocation(line: 133, column: 12, scope: !1080)
!1086 = !DILocation(line: 133, column: 22, scope: !1080)
!1087 = !DILocation(line: 133, column: 36, scope: !1080)
!1088 = !DILocation(line: 133, column: 53, scope: !1080)
!1089 = !DILocation(line: 133, column: 63, scope: !1080)
!1090 = !DILocation(line: 133, column: 68, scope: !1080)
!1091 = !DILocation(line: 133, column: 73, scope: !1080)
!1092 = !DILocation(line: 133, column: 5, scope: !1080)
!1093 = !DILocation(line: 135, column: 3, scope: !1051)
!1094 = !DILocation(line: 135, column: 9, scope: !1051)
!1095 = !DILocation(line: 136, column: 3, scope: !1051)
!1096 = !DILocation(line: 137, column: 1, scope: !1051)
!1097 = distinct !DISubprogram(name: "quo_internal_hwloc_get_proc_cpubind", scope: !24, file: !24, line: 140, type: !1098, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1100)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!75, !350, !502, !474, !75}
!1100 = !{!1101, !1102, !1103, !1104}
!1101 = !DILocalVariable(name: "topology", arg: 1, scope: !1097, file: !24, line: 140, type: !350)
!1102 = !DILocalVariable(name: "pid", arg: 2, scope: !1097, file: !24, line: 140, type: !502)
!1103 = !DILocalVariable(name: "set", arg: 3, scope: !1097, file: !24, line: 140, type: !474)
!1104 = !DILocalVariable(name: "flags", arg: 4, scope: !1097, file: !24, line: 140, type: !75)
!1105 = !DILocation(line: 140, column: 41, scope: !1097)
!1106 = !DILocation(line: 140, column: 63, scope: !1097)
!1107 = !DILocation(line: 140, column: 83, scope: !1097)
!1108 = !DILocation(line: 140, column: 92, scope: !1097)
!1109 = !DILocation(line: 142, column: 7, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1097, file: !24, line: 142, column: 7)
!1111 = !DILocation(line: 142, column: 13, scope: !1110)
!1112 = !DILocation(line: 142, column: 7, scope: !1097)
!1113 = !DILocation(line: 143, column: 5, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !24, line: 142, column: 40)
!1115 = !DILocation(line: 143, column: 11, scope: !1114)
!1116 = !DILocation(line: 144, column: 5, scope: !1114)
!1117 = !DILocation(line: 147, column: 7, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1097, file: !24, line: 147, column: 7)
!1119 = !DILocation(line: 147, column: 17, scope: !1118)
!1120 = !DILocation(line: 147, column: 31, scope: !1118)
!1121 = !{!830, !797, i64 496}
!1122 = !DILocation(line: 147, column: 7, scope: !1097)
!1123 = !DILocation(line: 148, column: 12, scope: !1118)
!1124 = !DILocation(line: 148, column: 22, scope: !1118)
!1125 = !DILocation(line: 148, column: 36, scope: !1118)
!1126 = !DILocation(line: 148, column: 53, scope: !1118)
!1127 = !DILocation(line: 148, column: 63, scope: !1118)
!1128 = !DILocation(line: 148, column: 68, scope: !1118)
!1129 = !DILocation(line: 148, column: 73, scope: !1118)
!1130 = !DILocation(line: 148, column: 5, scope: !1118)
!1131 = !DILocation(line: 150, column: 3, scope: !1097)
!1132 = !DILocation(line: 150, column: 9, scope: !1097)
!1133 = !DILocation(line: 151, column: 3, scope: !1097)
!1134 = !DILocation(line: 152, column: 1, scope: !1097)
!1135 = distinct !DISubprogram(name: "quo_internal_hwloc_set_thread_cpubind", scope: !24, file: !24, line: 156, type: !1136, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1138)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!75, !350, !552, !531, !75}
!1138 = !{!1139, !1140, !1141, !1142}
!1139 = !DILocalVariable(name: "topology", arg: 1, scope: !1135, file: !24, line: 156, type: !350)
!1140 = !DILocalVariable(name: "tid", arg: 2, scope: !1135, file: !24, line: 156, type: !552)
!1141 = !DILocalVariable(name: "set", arg: 3, scope: !1135, file: !24, line: 156, type: !531)
!1142 = !DILocalVariable(name: "flags", arg: 4, scope: !1135, file: !24, line: 156, type: !75)
!1143 = !DILocation(line: 156, column: 43, scope: !1135)
!1144 = !{!831, !831, i64 0}
!1145 = !DILocation(line: 156, column: 68, scope: !1135)
!1146 = !DILocation(line: 156, column: 94, scope: !1135)
!1147 = !DILocation(line: 156, column: 103, scope: !1135)
!1148 = !DILocation(line: 158, column: 7, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1135, file: !24, line: 158, column: 7)
!1150 = !DILocation(line: 158, column: 13, scope: !1149)
!1151 = !DILocation(line: 158, column: 7, scope: !1135)
!1152 = !DILocation(line: 159, column: 5, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1149, file: !24, line: 158, column: 40)
!1154 = !DILocation(line: 159, column: 11, scope: !1153)
!1155 = !DILocation(line: 160, column: 5, scope: !1153)
!1156 = !DILocation(line: 163, column: 27, scope: !1135)
!1157 = !DILocation(line: 163, column: 37, scope: !1135)
!1158 = !DILocation(line: 163, column: 9, scope: !1135)
!1159 = !DILocation(line: 163, column: 7, scope: !1135)
!1160 = !DILocation(line: 164, column: 8, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1135, file: !24, line: 164, column: 7)
!1162 = !DILocation(line: 164, column: 7, scope: !1135)
!1163 = !DILocation(line: 165, column: 5, scope: !1161)
!1164 = !DILocation(line: 167, column: 7, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1135, file: !24, line: 167, column: 7)
!1166 = !DILocation(line: 167, column: 17, scope: !1165)
!1167 = !DILocation(line: 167, column: 31, scope: !1165)
!1168 = !{!830, !797, i64 504}
!1169 = !DILocation(line: 167, column: 7, scope: !1135)
!1170 = !DILocation(line: 168, column: 12, scope: !1165)
!1171 = !DILocation(line: 168, column: 22, scope: !1165)
!1172 = !DILocation(line: 168, column: 36, scope: !1165)
!1173 = !DILocation(line: 168, column: 55, scope: !1165)
!1174 = !DILocation(line: 168, column: 65, scope: !1165)
!1175 = !DILocation(line: 168, column: 70, scope: !1165)
!1176 = !DILocation(line: 168, column: 75, scope: !1165)
!1177 = !DILocation(line: 168, column: 5, scope: !1165)
!1178 = !DILocation(line: 170, column: 3, scope: !1135)
!1179 = !DILocation(line: 170, column: 9, scope: !1135)
!1180 = !DILocation(line: 171, column: 3, scope: !1135)
!1181 = !DILocation(line: 172, column: 1, scope: !1135)
!1182 = distinct !DISubprogram(name: "quo_internal_hwloc_get_thread_cpubind", scope: !24, file: !24, line: 175, type: !1183, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1185)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!75, !350, !552, !474, !75}
!1185 = !{!1186, !1187, !1188, !1189}
!1186 = !DILocalVariable(name: "topology", arg: 1, scope: !1182, file: !24, line: 175, type: !350)
!1187 = !DILocalVariable(name: "tid", arg: 2, scope: !1182, file: !24, line: 175, type: !552)
!1188 = !DILocalVariable(name: "set", arg: 3, scope: !1182, file: !24, line: 175, type: !474)
!1189 = !DILocalVariable(name: "flags", arg: 4, scope: !1182, file: !24, line: 175, type: !75)
!1190 = !DILocation(line: 175, column: 43, scope: !1182)
!1191 = !DILocation(line: 175, column: 68, scope: !1182)
!1192 = !DILocation(line: 175, column: 88, scope: !1182)
!1193 = !DILocation(line: 175, column: 97, scope: !1182)
!1194 = !DILocation(line: 177, column: 7, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1182, file: !24, line: 177, column: 7)
!1196 = !DILocation(line: 177, column: 13, scope: !1195)
!1197 = !DILocation(line: 177, column: 7, scope: !1182)
!1198 = !DILocation(line: 178, column: 5, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1195, file: !24, line: 177, column: 40)
!1200 = !DILocation(line: 178, column: 11, scope: !1199)
!1201 = !DILocation(line: 179, column: 5, scope: !1199)
!1202 = !DILocation(line: 182, column: 7, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1182, file: !24, line: 182, column: 7)
!1204 = !DILocation(line: 182, column: 17, scope: !1203)
!1205 = !DILocation(line: 182, column: 31, scope: !1203)
!1206 = !{!830, !797, i64 512}
!1207 = !DILocation(line: 182, column: 7, scope: !1182)
!1208 = !DILocation(line: 183, column: 12, scope: !1203)
!1209 = !DILocation(line: 183, column: 22, scope: !1203)
!1210 = !DILocation(line: 183, column: 36, scope: !1203)
!1211 = !DILocation(line: 183, column: 55, scope: !1203)
!1212 = !DILocation(line: 183, column: 65, scope: !1203)
!1213 = !DILocation(line: 183, column: 70, scope: !1203)
!1214 = !DILocation(line: 183, column: 75, scope: !1203)
!1215 = !DILocation(line: 183, column: 5, scope: !1203)
!1216 = !DILocation(line: 185, column: 3, scope: !1182)
!1217 = !DILocation(line: 185, column: 9, scope: !1182)
!1218 = !DILocation(line: 186, column: 3, scope: !1182)
!1219 = !DILocation(line: 187, column: 1, scope: !1182)
!1220 = distinct !DISubprogram(name: "quo_internal_hwloc_get_last_cpu_location", scope: !24, file: !24, line: 191, type: !953, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1221)
!1221 = !{!1222, !1223, !1224, !1225}
!1222 = !DILocalVariable(name: "topology", arg: 1, scope: !1220, file: !24, line: 191, type: !350)
!1223 = !DILocalVariable(name: "set", arg: 2, scope: !1220, file: !24, line: 191, type: !474)
!1224 = !DILocalVariable(name: "flags", arg: 3, scope: !1220, file: !24, line: 191, type: !75)
!1225 = !DILocalVariable(name: "err", scope: !1226, file: !24, line: 206, type: !75)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !24, line: 205, column: 65)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !24, line: 205, column: 9)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !24, line: 204, column: 10)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !24, line: 201, column: 14)
!1230 = distinct !DILexicalBlock(scope: !1220, file: !24, line: 198, column: 7)
!1231 = !DILocation(line: 191, column: 46, scope: !1220)
!1232 = !DILocation(line: 191, column: 71, scope: !1220)
!1233 = !DILocation(line: 191, column: 80, scope: !1220)
!1234 = !DILocation(line: 193, column: 7, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1220, file: !24, line: 193, column: 7)
!1236 = !DILocation(line: 193, column: 13, scope: !1235)
!1237 = !DILocation(line: 193, column: 7, scope: !1220)
!1238 = !DILocation(line: 194, column: 5, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1235, file: !24, line: 193, column: 40)
!1240 = !DILocation(line: 194, column: 11, scope: !1239)
!1241 = !DILocation(line: 195, column: 5, scope: !1239)
!1242 = !DILocation(line: 198, column: 7, scope: !1230)
!1243 = !DILocation(line: 198, column: 13, scope: !1230)
!1244 = !DILocation(line: 198, column: 7, scope: !1220)
!1245 = !DILocation(line: 199, column: 9, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !24, line: 199, column: 9)
!1247 = distinct !DILexicalBlock(scope: !1230, file: !24, line: 198, column: 38)
!1248 = !DILocation(line: 199, column: 19, scope: !1246)
!1249 = !DILocation(line: 199, column: 33, scope: !1246)
!1250 = !{!830, !797, i64 520}
!1251 = !DILocation(line: 199, column: 9, scope: !1247)
!1252 = !DILocation(line: 200, column: 14, scope: !1246)
!1253 = !DILocation(line: 200, column: 24, scope: !1246)
!1254 = !DILocation(line: 200, column: 38, scope: !1246)
!1255 = !DILocation(line: 200, column: 69, scope: !1246)
!1256 = !DILocation(line: 200, column: 79, scope: !1246)
!1257 = !DILocation(line: 200, column: 84, scope: !1246)
!1258 = !DILocation(line: 200, column: 7, scope: !1246)
!1259 = !DILocation(line: 201, column: 3, scope: !1247)
!1260 = !DILocation(line: 201, column: 14, scope: !1229)
!1261 = !DILocation(line: 201, column: 20, scope: !1229)
!1262 = !DILocation(line: 201, column: 14, scope: !1230)
!1263 = !DILocation(line: 202, column: 9, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !24, line: 202, column: 9)
!1265 = distinct !DILexicalBlock(scope: !1229, file: !24, line: 201, column: 44)
!1266 = !DILocation(line: 202, column: 19, scope: !1264)
!1267 = !DILocation(line: 202, column: 33, scope: !1264)
!1268 = !{!830, !797, i64 528}
!1269 = !DILocation(line: 202, column: 9, scope: !1265)
!1270 = !DILocation(line: 203, column: 14, scope: !1264)
!1271 = !DILocation(line: 203, column: 24, scope: !1264)
!1272 = !DILocation(line: 203, column: 38, scope: !1264)
!1273 = !DILocation(line: 203, column: 71, scope: !1264)
!1274 = !DILocation(line: 203, column: 81, scope: !1264)
!1275 = !DILocation(line: 203, column: 86, scope: !1264)
!1276 = !DILocation(line: 203, column: 7, scope: !1264)
!1277 = !DILocation(line: 204, column: 3, scope: !1265)
!1278 = !DILocation(line: 205, column: 9, scope: !1227)
!1279 = !DILocation(line: 205, column: 19, scope: !1227)
!1280 = !DILocation(line: 205, column: 33, scope: !1227)
!1281 = !DILocation(line: 205, column: 9, scope: !1228)
!1282 = !DILocation(line: 206, column: 7, scope: !1226)
!1283 = !DILocation(line: 206, column: 11, scope: !1226)
!1284 = !DILocation(line: 206, column: 17, scope: !1226)
!1285 = !DILocation(line: 206, column: 27, scope: !1226)
!1286 = !DILocation(line: 206, column: 41, scope: !1226)
!1287 = !DILocation(line: 206, column: 72, scope: !1226)
!1288 = !DILocation(line: 206, column: 82, scope: !1226)
!1289 = !DILocation(line: 206, column: 87, scope: !1226)
!1290 = !DILocation(line: 207, column: 11, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1226, file: !24, line: 207, column: 11)
!1292 = !DILocation(line: 207, column: 15, scope: !1291)
!1293 = !DILocation(line: 207, column: 20, scope: !1291)
!1294 = !DILocation(line: 207, column: 23, scope: !1291)
!1295 = !DILocation(line: 207, column: 29, scope: !1291)
!1296 = !DILocation(line: 207, column: 11, scope: !1226)
!1297 = !DILocation(line: 208, column: 16, scope: !1291)
!1298 = !DILocation(line: 208, column: 9, scope: !1291)
!1299 = !DILocation(line: 210, column: 5, scope: !1227)
!1300 = !DILocation(line: 210, column: 5, scope: !1226)
!1301 = !DILocation(line: 211, column: 9, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1228, file: !24, line: 211, column: 9)
!1303 = !DILocation(line: 211, column: 19, scope: !1302)
!1304 = !DILocation(line: 211, column: 33, scope: !1302)
!1305 = !DILocation(line: 211, column: 9, scope: !1228)
!1306 = !DILocation(line: 212, column: 14, scope: !1302)
!1307 = !DILocation(line: 212, column: 24, scope: !1302)
!1308 = !DILocation(line: 212, column: 38, scope: !1302)
!1309 = !DILocation(line: 212, column: 71, scope: !1302)
!1310 = !DILocation(line: 212, column: 81, scope: !1302)
!1311 = !DILocation(line: 212, column: 86, scope: !1302)
!1312 = !DILocation(line: 212, column: 7, scope: !1302)
!1313 = !DILocation(line: 215, column: 3, scope: !1220)
!1314 = !DILocation(line: 215, column: 9, scope: !1220)
!1315 = !DILocation(line: 216, column: 3, scope: !1220)
!1316 = !DILocation(line: 217, column: 1, scope: !1220)
!1317 = distinct !DISubprogram(name: "quo_internal_hwloc_get_proc_last_cpu_location", scope: !24, file: !24, line: 220, type: !1098, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1318)
!1318 = !{!1319, !1320, !1321, !1322}
!1319 = !DILocalVariable(name: "topology", arg: 1, scope: !1317, file: !24, line: 220, type: !350)
!1320 = !DILocalVariable(name: "pid", arg: 2, scope: !1317, file: !24, line: 220, type: !502)
!1321 = !DILocalVariable(name: "set", arg: 3, scope: !1317, file: !24, line: 220, type: !474)
!1322 = !DILocalVariable(name: "flags", arg: 4, scope: !1317, file: !24, line: 220, type: !75)
!1323 = !DILocation(line: 220, column: 51, scope: !1317)
!1324 = !DILocation(line: 220, column: 73, scope: !1317)
!1325 = !DILocation(line: 220, column: 93, scope: !1317)
!1326 = !DILocation(line: 220, column: 102, scope: !1317)
!1327 = !DILocation(line: 222, column: 7, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1317, file: !24, line: 222, column: 7)
!1329 = !DILocation(line: 222, column: 13, scope: !1328)
!1330 = !DILocation(line: 222, column: 7, scope: !1317)
!1331 = !DILocation(line: 223, column: 5, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1328, file: !24, line: 222, column: 40)
!1333 = !DILocation(line: 223, column: 11, scope: !1332)
!1334 = !DILocation(line: 224, column: 5, scope: !1332)
!1335 = !DILocation(line: 227, column: 7, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1317, file: !24, line: 227, column: 7)
!1337 = !DILocation(line: 227, column: 17, scope: !1336)
!1338 = !DILocation(line: 227, column: 31, scope: !1336)
!1339 = !{!830, !797, i64 536}
!1340 = !DILocation(line: 227, column: 7, scope: !1317)
!1341 = !DILocation(line: 228, column: 12, scope: !1336)
!1342 = !DILocation(line: 228, column: 22, scope: !1336)
!1343 = !DILocation(line: 228, column: 36, scope: !1336)
!1344 = !DILocation(line: 228, column: 63, scope: !1336)
!1345 = !DILocation(line: 228, column: 73, scope: !1336)
!1346 = !DILocation(line: 228, column: 78, scope: !1336)
!1347 = !DILocation(line: 228, column: 83, scope: !1336)
!1348 = !DILocation(line: 228, column: 5, scope: !1336)
!1349 = !DILocation(line: 230, column: 3, scope: !1317)
!1350 = !DILocation(line: 230, column: 9, scope: !1317)
!1351 = !DILocation(line: 231, column: 3, scope: !1317)
!1352 = !DILocation(line: 232, column: 1, scope: !1317)
!1353 = distinct !DISubprogram(name: "quo_internal_hwloc_set_membind", scope: !24, file: !24, line: 329, type: !1354, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1356)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!75, !350, !531, !566, !75}
!1356 = !{!1357, !1358, !1359, !1360, !1361, !1362}
!1357 = !DILocalVariable(name: "topology", arg: 1, scope: !1353, file: !24, line: 329, type: !350)
!1358 = !DILocalVariable(name: "set", arg: 2, scope: !1353, file: !24, line: 329, type: !531)
!1359 = !DILocalVariable(name: "policy", arg: 3, scope: !1353, file: !24, line: 329, type: !566)
!1360 = !DILocalVariable(name: "flags", arg: 4, scope: !1353, file: !24, line: 329, type: !75)
!1361 = !DILocalVariable(name: "ret", scope: !1353, file: !24, line: 331, type: !75)
!1362 = !DILocalVariable(name: "nodeset", scope: !1363, file: !24, line: 336, type: !480)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !24, line: 335, column: 10)
!1364 = distinct !DILexicalBlock(scope: !1353, file: !24, line: 333, column: 7)
!1365 = !DILocation(line: 329, column: 36, scope: !1353)
!1366 = !DILocation(line: 329, column: 67, scope: !1353)
!1367 = !{!798, !798, i64 0}
!1368 = !DILocation(line: 329, column: 95, scope: !1353)
!1369 = !DILocation(line: 329, column: 107, scope: !1353)
!1370 = !DILocation(line: 331, column: 3, scope: !1353)
!1371 = !DILocation(line: 331, column: 7, scope: !1353)
!1372 = !DILocation(line: 333, column: 7, scope: !1364)
!1373 = !DILocation(line: 333, column: 13, scope: !1364)
!1374 = !DILocation(line: 333, column: 7, scope: !1353)
!1375 = !DILocation(line: 334, column: 40, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1364, file: !24, line: 333, column: 40)
!1377 = !DILocation(line: 334, column: 50, scope: !1376)
!1378 = !DILocation(line: 334, column: 55, scope: !1376)
!1379 = !DILocation(line: 334, column: 63, scope: !1376)
!1380 = !DILocation(line: 334, column: 11, scope: !1376)
!1381 = !DILocation(line: 334, column: 9, scope: !1376)
!1382 = !DILocation(line: 335, column: 3, scope: !1376)
!1383 = !DILocation(line: 336, column: 5, scope: !1363)
!1384 = !DILocation(line: 336, column: 21, scope: !1363)
!1385 = !DILocation(line: 336, column: 31, scope: !1363)
!1386 = !DILocation(line: 337, column: 34, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1363, file: !24, line: 337, column: 9)
!1388 = !DILocation(line: 337, column: 44, scope: !1387)
!1389 = !DILocation(line: 337, column: 53, scope: !1387)
!1390 = !DILocation(line: 337, column: 9, scope: !1387)
!1391 = !DILocation(line: 337, column: 9, scope: !1363)
!1392 = !DILocation(line: 338, column: 11, scope: !1387)
!1393 = !DILocation(line: 338, column: 7, scope: !1387)
!1394 = !DILocation(line: 340, column: 42, scope: !1387)
!1395 = !DILocation(line: 340, column: 52, scope: !1387)
!1396 = !DILocation(line: 340, column: 61, scope: !1387)
!1397 = !DILocation(line: 340, column: 69, scope: !1387)
!1398 = !DILocation(line: 340, column: 13, scope: !1387)
!1399 = !DILocation(line: 340, column: 11, scope: !1387)
!1400 = !DILocation(line: 341, column: 23, scope: !1363)
!1401 = !DILocation(line: 341, column: 5, scope: !1363)
!1402 = !DILocation(line: 342, column: 3, scope: !1364)
!1403 = !DILocation(line: 343, column: 10, scope: !1353)
!1404 = !DILocation(line: 344, column: 1, scope: !1353)
!1405 = !DILocation(line: 343, column: 3, scope: !1353)
!1406 = distinct !DISubprogram(name: "hwloc_set_membind_by_nodeset", scope: !24, file: !24, line: 296, type: !563, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1407)
!1407 = !{!1408, !1409, !1410, !1411, !1412}
!1408 = !DILocalVariable(name: "topology", arg: 1, scope: !1406, file: !24, line: 296, type: !350)
!1409 = !DILocalVariable(name: "nodeset", arg: 2, scope: !1406, file: !24, line: 296, type: !565)
!1410 = !DILocalVariable(name: "policy", arg: 3, scope: !1406, file: !24, line: 296, type: !566)
!1411 = !DILocalVariable(name: "flags", arg: 4, scope: !1406, file: !24, line: 296, type: !75)
!1412 = !DILocalVariable(name: "err", scope: !1413, file: !24, line: 315, type: !75)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !24, line: 314, column: 55)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !24, line: 314, column: 9)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !24, line: 313, column: 10)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !24, line: 310, column: 14)
!1417 = distinct !DILexicalBlock(scope: !1406, file: !24, line: 307, column: 7)
!1418 = !DILocation(line: 296, column: 47, scope: !1406)
!1419 = !DILocation(line: 296, column: 79, scope: !1406)
!1420 = !DILocation(line: 296, column: 111, scope: !1406)
!1421 = !DILocation(line: 296, column: 123, scope: !1406)
!1422 = !DILocation(line: 298, column: 8, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1406, file: !24, line: 298, column: 7)
!1424 = !DILocation(line: 298, column: 14, scope: !1423)
!1425 = !DILocation(line: 298, column: 41, scope: !1423)
!1426 = !DILocation(line: 298, column: 72, scope: !1423)
!1427 = !DILocation(line: 298, column: 44, scope: !1423)
!1428 = !DILocation(line: 298, column: 80, scope: !1423)
!1429 = !DILocation(line: 298, column: 7, scope: !1406)
!1430 = !DILocation(line: 299, column: 5, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1423, file: !24, line: 298, column: 85)
!1432 = !DILocation(line: 299, column: 11, scope: !1431)
!1433 = !DILocation(line: 300, column: 5, scope: !1431)
!1434 = !DILocation(line: 303, column: 31, scope: !1406)
!1435 = !DILocation(line: 303, column: 41, scope: !1406)
!1436 = !DILocation(line: 303, column: 13, scope: !1406)
!1437 = !DILocation(line: 303, column: 11, scope: !1406)
!1438 = !DILocation(line: 304, column: 8, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1406, file: !24, line: 304, column: 7)
!1440 = !DILocation(line: 304, column: 7, scope: !1406)
!1441 = !DILocation(line: 305, column: 5, scope: !1439)
!1442 = !DILocation(line: 307, column: 7, scope: !1417)
!1443 = !DILocation(line: 307, column: 13, scope: !1417)
!1444 = !DILocation(line: 307, column: 7, scope: !1406)
!1445 = !DILocation(line: 308, column: 9, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !24, line: 308, column: 9)
!1447 = distinct !DILexicalBlock(scope: !1417, file: !24, line: 307, column: 38)
!1448 = !DILocation(line: 308, column: 19, scope: !1446)
!1449 = !DILocation(line: 308, column: 33, scope: !1446)
!1450 = !{!830, !797, i64 544}
!1451 = !DILocation(line: 308, column: 9, scope: !1447)
!1452 = !DILocation(line: 309, column: 14, scope: !1446)
!1453 = !DILocation(line: 309, column: 24, scope: !1446)
!1454 = !DILocation(line: 309, column: 38, scope: !1446)
!1455 = !DILocation(line: 309, column: 59, scope: !1446)
!1456 = !DILocation(line: 309, column: 69, scope: !1446)
!1457 = !DILocation(line: 309, column: 78, scope: !1446)
!1458 = !DILocation(line: 309, column: 86, scope: !1446)
!1459 = !DILocation(line: 309, column: 7, scope: !1446)
!1460 = !DILocation(line: 310, column: 3, scope: !1447)
!1461 = !DILocation(line: 310, column: 14, scope: !1416)
!1462 = !DILocation(line: 310, column: 20, scope: !1416)
!1463 = !DILocation(line: 310, column: 14, scope: !1417)
!1464 = !DILocation(line: 311, column: 9, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !24, line: 311, column: 9)
!1466 = distinct !DILexicalBlock(scope: !1416, file: !24, line: 310, column: 44)
!1467 = !DILocation(line: 311, column: 19, scope: !1465)
!1468 = !DILocation(line: 311, column: 33, scope: !1465)
!1469 = !{!830, !797, i64 560}
!1470 = !DILocation(line: 311, column: 9, scope: !1466)
!1471 = !DILocation(line: 312, column: 14, scope: !1465)
!1472 = !DILocation(line: 312, column: 24, scope: !1465)
!1473 = !DILocation(line: 312, column: 38, scope: !1465)
!1474 = !DILocation(line: 312, column: 61, scope: !1465)
!1475 = !DILocation(line: 312, column: 71, scope: !1465)
!1476 = !DILocation(line: 312, column: 80, scope: !1465)
!1477 = !DILocation(line: 312, column: 88, scope: !1465)
!1478 = !DILocation(line: 312, column: 7, scope: !1465)
!1479 = !DILocation(line: 313, column: 3, scope: !1466)
!1480 = !DILocation(line: 314, column: 9, scope: !1414)
!1481 = !DILocation(line: 314, column: 19, scope: !1414)
!1482 = !DILocation(line: 314, column: 33, scope: !1414)
!1483 = !DILocation(line: 314, column: 9, scope: !1415)
!1484 = !DILocation(line: 315, column: 7, scope: !1413)
!1485 = !DILocation(line: 315, column: 11, scope: !1413)
!1486 = !DILocation(line: 315, column: 17, scope: !1413)
!1487 = !DILocation(line: 315, column: 27, scope: !1413)
!1488 = !DILocation(line: 315, column: 41, scope: !1413)
!1489 = !DILocation(line: 315, column: 62, scope: !1413)
!1490 = !DILocation(line: 315, column: 72, scope: !1413)
!1491 = !DILocation(line: 315, column: 81, scope: !1413)
!1492 = !DILocation(line: 315, column: 89, scope: !1413)
!1493 = !DILocation(line: 316, column: 11, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1413, file: !24, line: 316, column: 11)
!1495 = !DILocation(line: 316, column: 15, scope: !1494)
!1496 = !DILocation(line: 316, column: 20, scope: !1494)
!1497 = !DILocation(line: 316, column: 23, scope: !1494)
!1498 = !DILocation(line: 316, column: 29, scope: !1494)
!1499 = !DILocation(line: 316, column: 11, scope: !1413)
!1500 = !DILocation(line: 317, column: 16, scope: !1494)
!1501 = !DILocation(line: 317, column: 9, scope: !1494)
!1502 = !DILocation(line: 319, column: 5, scope: !1414)
!1503 = !DILocation(line: 319, column: 5, scope: !1413)
!1504 = !DILocation(line: 320, column: 9, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1415, file: !24, line: 320, column: 9)
!1506 = !DILocation(line: 320, column: 19, scope: !1505)
!1507 = !DILocation(line: 320, column: 33, scope: !1505)
!1508 = !DILocation(line: 320, column: 9, scope: !1415)
!1509 = !DILocation(line: 321, column: 14, scope: !1505)
!1510 = !DILocation(line: 321, column: 24, scope: !1505)
!1511 = !DILocation(line: 321, column: 38, scope: !1505)
!1512 = !DILocation(line: 321, column: 61, scope: !1505)
!1513 = !DILocation(line: 321, column: 71, scope: !1505)
!1514 = !DILocation(line: 321, column: 80, scope: !1505)
!1515 = !DILocation(line: 321, column: 88, scope: !1505)
!1516 = !DILocation(line: 321, column: 7, scope: !1505)
!1517 = !DILocation(line: 324, column: 3, scope: !1406)
!1518 = !DILocation(line: 324, column: 9, scope: !1406)
!1519 = !DILocation(line: 325, column: 3, scope: !1406)
!1520 = !DILocation(line: 326, column: 1, scope: !1406)
!1521 = !DISubprogram(name: "quo_internal_hwloc_bitmap_alloc", scope: !475, file: !475, line: 84, type: !1522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!474}
!1524 = distinct !DISubprogram(name: "hwloc_fix_membind_cpuset", scope: !24, file: !24, line: 259, type: !1525, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1527)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!75, !350, !480, !530}
!1527 = !{!1528, !1529, !1530, !1531, !1532, !1533}
!1528 = !DILocalVariable(name: "topology", arg: 1, scope: !1524, file: !24, line: 259, type: !350)
!1529 = !DILocalVariable(name: "nodeset", arg: 2, scope: !1524, file: !24, line: 259, type: !480)
!1530 = !DILocalVariable(name: "cpuset", arg: 3, scope: !1524, file: !24, line: 259, type: !530)
!1531 = !DILocalVariable(name: "topology_set", scope: !1524, file: !24, line: 261, type: !531)
!1532 = !DILocalVariable(name: "complete_set", scope: !1524, file: !24, line: 262, type: !531)
!1533 = !DILocalVariable(name: "complete_nodeset", scope: !1524, file: !24, line: 263, type: !531)
!1534 = !DILocation(line: 259, column: 43, scope: !1524)
!1535 = !DILocation(line: 259, column: 69, scope: !1524)
!1536 = !DILocation(line: 259, column: 99, scope: !1524)
!1537 = !DILocation(line: 261, column: 3, scope: !1524)
!1538 = !DILocation(line: 261, column: 24, scope: !1524)
!1539 = !DILocation(line: 261, column: 74, scope: !1524)
!1540 = !DILocation(line: 261, column: 39, scope: !1524)
!1541 = !DILocation(line: 262, column: 3, scope: !1524)
!1542 = !DILocation(line: 262, column: 24, scope: !1524)
!1543 = !DILocation(line: 262, column: 74, scope: !1524)
!1544 = !DILocation(line: 262, column: 39, scope: !1524)
!1545 = !DILocation(line: 263, column: 3, scope: !1524)
!1546 = !DILocation(line: 263, column: 24, scope: !1524)
!1547 = !DILocation(line: 263, column: 79, scope: !1524)
!1548 = !DILocation(line: 263, column: 43, scope: !1524)
!1549 = !DILocation(line: 265, column: 27, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1524, file: !24, line: 265, column: 7)
!1551 = !DILocation(line: 265, column: 7, scope: !1550)
!1552 = !DILocation(line: 265, column: 7, scope: !1524)
!1553 = !DILocation(line: 266, column: 5, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1550, file: !24, line: 265, column: 36)
!1555 = !DILocation(line: 266, column: 11, scope: !1554)
!1556 = !DILocation(line: 267, column: 5, scope: !1554)
!1557 = !DILocation(line: 270, column: 32, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1524, file: !24, line: 270, column: 7)
!1559 = !DILocation(line: 270, column: 40, scope: !1558)
!1560 = !DILocation(line: 270, column: 8, scope: !1558)
!1561 = !DILocation(line: 270, column: 7, scope: !1524)
!1562 = !DILocation(line: 271, column: 5, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1558, file: !24, line: 270, column: 55)
!1564 = !DILocation(line: 271, column: 11, scope: !1563)
!1565 = !DILocation(line: 272, column: 5, scope: !1563)
!1566 = !DILocation(line: 275, column: 31, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1524, file: !24, line: 275, column: 7)
!1568 = !DILocation(line: 275, column: 45, scope: !1567)
!1569 = !DILocation(line: 275, column: 7, scope: !1567)
!1570 = !DILocation(line: 275, column: 7, scope: !1524)
!1571 = !DILocation(line: 276, column: 23, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1567, file: !24, line: 275, column: 54)
!1573 = !DILocation(line: 276, column: 32, scope: !1572)
!1574 = !DILocation(line: 276, column: 5, scope: !1572)
!1575 = !DILocation(line: 277, column: 5, scope: !1572)
!1576 = !DILocation(line: 280, column: 27, scope: !1524)
!1577 = !DILocation(line: 280, column: 37, scope: !1524)
!1578 = !DILocation(line: 280, column: 45, scope: !1524)
!1579 = !DILocation(line: 280, column: 3, scope: !1524)
!1580 = !DILocation(line: 281, column: 3, scope: !1524)
!1581 = !DILocation(line: 282, column: 1, scope: !1524)
!1582 = !DISubprogram(name: "quo_internal_hwloc_bitmap_free", scope: !475, file: !475, line: 93, type: !1583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{null, !474}
!1585 = distinct !DISubprogram(name: "quo_internal_hwloc_get_membind", scope: !24, file: !24, line: 376, type: !1586, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1588)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!75, !350, !474, !571, !75}
!1588 = !{!1589, !1590, !1591, !1592, !1593, !1594}
!1589 = !DILocalVariable(name: "topology", arg: 1, scope: !1585, file: !24, line: 376, type: !350)
!1590 = !DILocalVariable(name: "set", arg: 2, scope: !1585, file: !24, line: 376, type: !474)
!1591 = !DILocalVariable(name: "policy", arg: 3, scope: !1585, file: !24, line: 376, type: !571)
!1592 = !DILocalVariable(name: "flags", arg: 4, scope: !1585, file: !24, line: 376, type: !75)
!1593 = !DILocalVariable(name: "ret", scope: !1585, file: !24, line: 378, type: !75)
!1594 = !DILocalVariable(name: "nodeset", scope: !1595, file: !24, line: 383, type: !480)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !24, line: 382, column: 10)
!1596 = distinct !DILexicalBlock(scope: !1585, file: !24, line: 380, column: 7)
!1597 = !DILocation(line: 376, column: 36, scope: !1585)
!1598 = !DILocation(line: 376, column: 61, scope: !1585)
!1599 = !DILocation(line: 376, column: 91, scope: !1585)
!1600 = !DILocation(line: 376, column: 103, scope: !1585)
!1601 = !DILocation(line: 378, column: 3, scope: !1585)
!1602 = !DILocation(line: 378, column: 7, scope: !1585)
!1603 = !DILocation(line: 380, column: 7, scope: !1596)
!1604 = !DILocation(line: 380, column: 13, scope: !1596)
!1605 = !DILocation(line: 380, column: 7, scope: !1585)
!1606 = !DILocation(line: 381, column: 40, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1596, file: !24, line: 380, column: 40)
!1608 = !DILocation(line: 381, column: 50, scope: !1607)
!1609 = !DILocation(line: 381, column: 55, scope: !1607)
!1610 = !DILocation(line: 381, column: 63, scope: !1607)
!1611 = !DILocation(line: 381, column: 11, scope: !1607)
!1612 = !DILocation(line: 381, column: 9, scope: !1607)
!1613 = !DILocation(line: 382, column: 3, scope: !1607)
!1614 = !DILocation(line: 383, column: 5, scope: !1595)
!1615 = !DILocation(line: 383, column: 21, scope: !1595)
!1616 = !DILocation(line: 383, column: 31, scope: !1595)
!1617 = !DILocation(line: 384, column: 40, scope: !1595)
!1618 = !DILocation(line: 384, column: 50, scope: !1595)
!1619 = !DILocation(line: 384, column: 59, scope: !1595)
!1620 = !DILocation(line: 384, column: 67, scope: !1595)
!1621 = !DILocation(line: 384, column: 11, scope: !1595)
!1622 = !DILocation(line: 384, column: 9, scope: !1595)
!1623 = !DILocation(line: 385, column: 10, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1595, file: !24, line: 385, column: 9)
!1625 = !DILocation(line: 385, column: 9, scope: !1595)
!1626 = !DILocation(line: 386, column: 33, scope: !1624)
!1627 = !DILocation(line: 386, column: 43, scope: !1624)
!1628 = !DILocation(line: 386, column: 48, scope: !1624)
!1629 = !DILocation(line: 386, column: 7, scope: !1624)
!1630 = !DILocation(line: 387, column: 23, scope: !1595)
!1631 = !DILocation(line: 387, column: 5, scope: !1595)
!1632 = !DILocation(line: 388, column: 3, scope: !1596)
!1633 = !DILocation(line: 390, column: 10, scope: !1585)
!1634 = !DILocation(line: 391, column: 1, scope: !1585)
!1635 = !DILocation(line: 390, column: 3, scope: !1585)
!1636 = distinct !DISubprogram(name: "hwloc_get_membind_by_nodeset", scope: !24, file: !24, line: 347, type: !569, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1637)
!1637 = !{!1638, !1639, !1640, !1641, !1642}
!1638 = !DILocalVariable(name: "topology", arg: 1, scope: !1636, file: !24, line: 347, type: !350)
!1639 = !DILocalVariable(name: "nodeset", arg: 2, scope: !1636, file: !24, line: 347, type: !480)
!1640 = !DILocalVariable(name: "policy", arg: 3, scope: !1636, file: !24, line: 347, type: !571)
!1641 = !DILocalVariable(name: "flags", arg: 4, scope: !1636, file: !24, line: 347, type: !75)
!1642 = !DILocalVariable(name: "err", scope: !1643, file: !24, line: 362, type: !75)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !24, line: 361, column: 55)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !24, line: 361, column: 9)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !24, line: 360, column: 10)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !24, line: 357, column: 14)
!1647 = distinct !DILexicalBlock(scope: !1636, file: !24, line: 354, column: 7)
!1648 = !DILocation(line: 347, column: 47, scope: !1636)
!1649 = !DILocation(line: 347, column: 73, scope: !1636)
!1650 = !DILocation(line: 347, column: 107, scope: !1636)
!1651 = !DILocation(line: 347, column: 119, scope: !1636)
!1652 = !DILocation(line: 349, column: 7, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1636, file: !24, line: 349, column: 7)
!1654 = !DILocation(line: 349, column: 13, scope: !1653)
!1655 = !DILocation(line: 349, column: 7, scope: !1636)
!1656 = !DILocation(line: 350, column: 5, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1653, file: !24, line: 349, column: 40)
!1658 = !DILocation(line: 350, column: 11, scope: !1657)
!1659 = !DILocation(line: 351, column: 5, scope: !1657)
!1660 = !DILocation(line: 354, column: 7, scope: !1647)
!1661 = !DILocation(line: 354, column: 13, scope: !1647)
!1662 = !DILocation(line: 354, column: 7, scope: !1636)
!1663 = !DILocation(line: 355, column: 9, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !24, line: 355, column: 9)
!1665 = distinct !DILexicalBlock(scope: !1647, file: !24, line: 354, column: 38)
!1666 = !DILocation(line: 355, column: 19, scope: !1664)
!1667 = !DILocation(line: 355, column: 33, scope: !1664)
!1668 = !{!830, !797, i64 552}
!1669 = !DILocation(line: 355, column: 9, scope: !1665)
!1670 = !DILocation(line: 356, column: 14, scope: !1664)
!1671 = !DILocation(line: 356, column: 24, scope: !1664)
!1672 = !DILocation(line: 356, column: 38, scope: !1664)
!1673 = !DILocation(line: 356, column: 59, scope: !1664)
!1674 = !DILocation(line: 356, column: 69, scope: !1664)
!1675 = !DILocation(line: 356, column: 78, scope: !1664)
!1676 = !DILocation(line: 356, column: 86, scope: !1664)
!1677 = !DILocation(line: 356, column: 7, scope: !1664)
!1678 = !DILocation(line: 357, column: 3, scope: !1665)
!1679 = !DILocation(line: 357, column: 14, scope: !1646)
!1680 = !DILocation(line: 357, column: 20, scope: !1646)
!1681 = !DILocation(line: 357, column: 14, scope: !1647)
!1682 = !DILocation(line: 358, column: 9, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !24, line: 358, column: 9)
!1684 = distinct !DILexicalBlock(scope: !1646, file: !24, line: 357, column: 44)
!1685 = !DILocation(line: 358, column: 19, scope: !1683)
!1686 = !DILocation(line: 358, column: 33, scope: !1683)
!1687 = !{!830, !797, i64 568}
!1688 = !DILocation(line: 358, column: 9, scope: !1684)
!1689 = !DILocation(line: 359, column: 14, scope: !1683)
!1690 = !DILocation(line: 359, column: 24, scope: !1683)
!1691 = !DILocation(line: 359, column: 38, scope: !1683)
!1692 = !DILocation(line: 359, column: 61, scope: !1683)
!1693 = !DILocation(line: 359, column: 71, scope: !1683)
!1694 = !DILocation(line: 359, column: 80, scope: !1683)
!1695 = !DILocation(line: 359, column: 88, scope: !1683)
!1696 = !DILocation(line: 359, column: 7, scope: !1683)
!1697 = !DILocation(line: 360, column: 3, scope: !1684)
!1698 = !DILocation(line: 361, column: 9, scope: !1644)
!1699 = !DILocation(line: 361, column: 19, scope: !1644)
!1700 = !DILocation(line: 361, column: 33, scope: !1644)
!1701 = !DILocation(line: 361, column: 9, scope: !1645)
!1702 = !DILocation(line: 362, column: 7, scope: !1643)
!1703 = !DILocation(line: 362, column: 11, scope: !1643)
!1704 = !DILocation(line: 362, column: 17, scope: !1643)
!1705 = !DILocation(line: 362, column: 27, scope: !1643)
!1706 = !DILocation(line: 362, column: 41, scope: !1643)
!1707 = !DILocation(line: 362, column: 62, scope: !1643)
!1708 = !DILocation(line: 362, column: 72, scope: !1643)
!1709 = !DILocation(line: 362, column: 81, scope: !1643)
!1710 = !DILocation(line: 362, column: 89, scope: !1643)
!1711 = !DILocation(line: 363, column: 11, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1643, file: !24, line: 363, column: 11)
!1713 = !DILocation(line: 363, column: 15, scope: !1712)
!1714 = !DILocation(line: 363, column: 20, scope: !1712)
!1715 = !DILocation(line: 363, column: 23, scope: !1712)
!1716 = !DILocation(line: 363, column: 29, scope: !1712)
!1717 = !DILocation(line: 363, column: 11, scope: !1643)
!1718 = !DILocation(line: 364, column: 16, scope: !1712)
!1719 = !DILocation(line: 364, column: 9, scope: !1712)
!1720 = !DILocation(line: 366, column: 5, scope: !1644)
!1721 = !DILocation(line: 366, column: 5, scope: !1643)
!1722 = !DILocation(line: 367, column: 9, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1645, file: !24, line: 367, column: 9)
!1724 = !DILocation(line: 367, column: 19, scope: !1723)
!1725 = !DILocation(line: 367, column: 33, scope: !1723)
!1726 = !DILocation(line: 367, column: 9, scope: !1645)
!1727 = !DILocation(line: 368, column: 14, scope: !1723)
!1728 = !DILocation(line: 368, column: 24, scope: !1723)
!1729 = !DILocation(line: 368, column: 38, scope: !1723)
!1730 = !DILocation(line: 368, column: 61, scope: !1723)
!1731 = !DILocation(line: 368, column: 71, scope: !1723)
!1732 = !DILocation(line: 368, column: 80, scope: !1723)
!1733 = !DILocation(line: 368, column: 88, scope: !1723)
!1734 = !DILocation(line: 368, column: 7, scope: !1723)
!1735 = !DILocation(line: 371, column: 3, scope: !1636)
!1736 = !DILocation(line: 371, column: 9, scope: !1636)
!1737 = !DILocation(line: 372, column: 3, scope: !1636)
!1738 = !DILocation(line: 373, column: 1, scope: !1636)
!1739 = distinct !DISubprogram(name: "quo_internal_hwloc_cpuset_from_nodeset", scope: !2, file: !2, line: 1033, type: !1740, scopeLine: 1034, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1742)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!75, !350, !473, !565}
!1742 = !{!1743, !1744, !1745, !1746, !1747}
!1743 = !DILocalVariable(name: "topology", arg: 1, scope: !1739, file: !2, line: 1033, type: !350)
!1744 = !DILocalVariable(name: "_cpuset", arg: 2, scope: !1739, file: !2, line: 1033, type: !473)
!1745 = !DILocalVariable(name: "nodeset", arg: 3, scope: !1739, file: !2, line: 1033, type: !565)
!1746 = !DILocalVariable(name: "depth", scope: !1739, file: !2, line: 1035, type: !75)
!1747 = !DILocalVariable(name: "obj", scope: !1739, file: !2, line: 1036, type: !685)
!1748 = !DILocation(line: 1033, column: 44, scope: !1739)
!1749 = !DILocation(line: 1033, column: 69, scope: !1739)
!1750 = !DILocation(line: 1033, column: 100, scope: !1739)
!1751 = !DILocation(line: 1035, column: 2, scope: !1739)
!1752 = !DILocation(line: 1035, column: 6, scope: !1739)
!1753 = !DILocation(line: 1035, column: 35, scope: !1739)
!1754 = !DILocation(line: 1035, column: 14, scope: !1739)
!1755 = !DILocation(line: 1036, column: 2, scope: !1739)
!1756 = !DILocation(line: 1036, column: 14, scope: !1739)
!1757 = !DILocation(line: 1037, column: 2, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !2, line: 1037, column: 2)
!1759 = distinct !DILexicalBlock(scope: !1739, file: !2, line: 1037, column: 2)
!1760 = !DILocation(line: 1037, column: 2, scope: !1759)
!1761 = !DILocation(line: 1038, column: 20, scope: !1739)
!1762 = !DILocation(line: 1038, column: 2, scope: !1739)
!1763 = !DILocation(line: 1039, column: 2, scope: !1739)
!1764 = !DILocation(line: 1039, column: 44, scope: !1739)
!1765 = !DILocation(line: 1039, column: 54, scope: !1739)
!1766 = !DILocation(line: 1039, column: 61, scope: !1739)
!1767 = !DILocation(line: 1039, column: 16, scope: !1739)
!1768 = !DILocation(line: 1039, column: 14, scope: !1739)
!1769 = !DILocation(line: 1039, column: 67, scope: !1739)
!1770 = !DILocation(line: 1040, column: 26, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !2, line: 1040, column: 7)
!1772 = distinct !DILexicalBlock(scope: !1739, file: !2, line: 1039, column: 76)
!1773 = !DILocation(line: 1040, column: 35, scope: !1771)
!1774 = !DILocation(line: 1040, column: 40, scope: !1771)
!1775 = !{!1776, !803, i64 16}
!1776 = !{!"quo_internal_hwloc_obj", !798, i64 0, !797, i64 8, !803, i64 16, !797, i64 24, !831, i64 32, !797, i64 40, !803, i64 48, !803, i64 52, !797, i64 56, !797, i64 64, !797, i64 72, !803, i64 80, !797, i64 88, !797, i64 96, !803, i64 104, !797, i64 112, !797, i64 120, !797, i64 128, !803, i64 136, !803, i64 140, !797, i64 144, !803, i64 152, !797, i64 160, !803, i64 168, !797, i64 176, !797, i64 184, !797, i64 192, !797, i64 200, !797, i64 208, !797, i64 216, !803, i64 224, !797, i64 232, !831, i64 240}
!1777 = !DILocation(line: 1040, column: 7, scope: !1771)
!1778 = !DILocation(line: 1040, column: 7, scope: !1772)
!1779 = !DILocation(line: 1042, column: 24, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1771, file: !2, line: 1042, column: 8)
!1781 = !DILocation(line: 1042, column: 33, scope: !1780)
!1782 = !DILocation(line: 1042, column: 42, scope: !1780)
!1783 = !DILocation(line: 1042, column: 47, scope: !1780)
!1784 = !{!1776, !797, i64 184}
!1785 = !DILocation(line: 1042, column: 8, scope: !1780)
!1786 = !DILocation(line: 1042, column: 55, scope: !1780)
!1787 = !DILocation(line: 1042, column: 8, scope: !1771)
!1788 = !DILocation(line: 1043, column: 5, scope: !1780)
!1789 = !DILocation(line: 1042, column: 57, scope: !1780)
!1790 = distinct !{!1790, !1763, !1791, !1792}
!1791 = !DILocation(line: 1044, column: 2, scope: !1739)
!1792 = !{!"llvm.loop.mustprogress"}
!1793 = !DILocation(line: 1045, column: 2, scope: !1739)
!1794 = !DILocation(line: 1046, column: 1, scope: !1739)
!1795 = distinct !DISubprogram(name: "quo_internal_hwloc_set_proc_membind", scope: !24, file: !24, line: 414, type: !1796, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1798)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!75, !350, !502, !531, !566, !75}
!1798 = !{!1799, !1800, !1801, !1802, !1803, !1804, !1805}
!1799 = !DILocalVariable(name: "topology", arg: 1, scope: !1795, file: !24, line: 414, type: !350)
!1800 = !DILocalVariable(name: "pid", arg: 2, scope: !1795, file: !24, line: 414, type: !502)
!1801 = !DILocalVariable(name: "set", arg: 3, scope: !1795, file: !24, line: 414, type: !531)
!1802 = !DILocalVariable(name: "policy", arg: 4, scope: !1795, file: !24, line: 414, type: !566)
!1803 = !DILocalVariable(name: "flags", arg: 5, scope: !1795, file: !24, line: 414, type: !75)
!1804 = !DILocalVariable(name: "ret", scope: !1795, file: !24, line: 416, type: !75)
!1805 = !DILocalVariable(name: "nodeset", scope: !1806, file: !24, line: 421, type: !480)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !24, line: 420, column: 10)
!1807 = distinct !DILexicalBlock(scope: !1795, file: !24, line: 418, column: 7)
!1808 = !DILocation(line: 414, column: 41, scope: !1795)
!1809 = !DILocation(line: 414, column: 63, scope: !1795)
!1810 = !DILocation(line: 414, column: 89, scope: !1795)
!1811 = !DILocation(line: 414, column: 117, scope: !1795)
!1812 = !DILocation(line: 414, column: 129, scope: !1795)
!1813 = !DILocation(line: 416, column: 3, scope: !1795)
!1814 = !DILocation(line: 416, column: 7, scope: !1795)
!1815 = !DILocation(line: 418, column: 7, scope: !1807)
!1816 = !DILocation(line: 418, column: 13, scope: !1807)
!1817 = !DILocation(line: 418, column: 7, scope: !1795)
!1818 = !DILocation(line: 419, column: 45, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1807, file: !24, line: 418, column: 40)
!1820 = !DILocation(line: 419, column: 55, scope: !1819)
!1821 = !DILocation(line: 419, column: 60, scope: !1819)
!1822 = !DILocation(line: 419, column: 65, scope: !1819)
!1823 = !DILocation(line: 419, column: 73, scope: !1819)
!1824 = !DILocation(line: 419, column: 11, scope: !1819)
!1825 = !DILocation(line: 419, column: 9, scope: !1819)
!1826 = !DILocation(line: 420, column: 3, scope: !1819)
!1827 = !DILocation(line: 421, column: 5, scope: !1806)
!1828 = !DILocation(line: 421, column: 21, scope: !1806)
!1829 = !DILocation(line: 421, column: 31, scope: !1806)
!1830 = !DILocation(line: 422, column: 34, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1806, file: !24, line: 422, column: 9)
!1832 = !DILocation(line: 422, column: 44, scope: !1831)
!1833 = !DILocation(line: 422, column: 53, scope: !1831)
!1834 = !DILocation(line: 422, column: 9, scope: !1831)
!1835 = !DILocation(line: 422, column: 9, scope: !1806)
!1836 = !DILocation(line: 423, column: 11, scope: !1831)
!1837 = !DILocation(line: 423, column: 7, scope: !1831)
!1838 = !DILocation(line: 425, column: 47, scope: !1831)
!1839 = !DILocation(line: 425, column: 57, scope: !1831)
!1840 = !DILocation(line: 425, column: 62, scope: !1831)
!1841 = !DILocation(line: 425, column: 71, scope: !1831)
!1842 = !DILocation(line: 425, column: 79, scope: !1831)
!1843 = !DILocation(line: 425, column: 13, scope: !1831)
!1844 = !DILocation(line: 425, column: 11, scope: !1831)
!1845 = !DILocation(line: 426, column: 23, scope: !1806)
!1846 = !DILocation(line: 426, column: 5, scope: !1806)
!1847 = !DILocation(line: 427, column: 3, scope: !1807)
!1848 = !DILocation(line: 429, column: 10, scope: !1795)
!1849 = !DILocation(line: 430, column: 1, scope: !1795)
!1850 = !DILocation(line: 429, column: 3, scope: !1795)
!1851 = distinct !DISubprogram(name: "hwloc_set_proc_membind_by_nodeset", scope: !24, file: !24, line: 394, type: !576, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1852)
!1852 = !{!1853, !1854, !1855, !1856, !1857}
!1853 = !DILocalVariable(name: "topology", arg: 1, scope: !1851, file: !24, line: 394, type: !350)
!1854 = !DILocalVariable(name: "pid", arg: 2, scope: !1851, file: !24, line: 394, type: !502)
!1855 = !DILocalVariable(name: "nodeset", arg: 3, scope: !1851, file: !24, line: 394, type: !565)
!1856 = !DILocalVariable(name: "policy", arg: 4, scope: !1851, file: !24, line: 394, type: !566)
!1857 = !DILocalVariable(name: "flags", arg: 5, scope: !1851, file: !24, line: 394, type: !75)
!1858 = !DILocation(line: 394, column: 52, scope: !1851)
!1859 = !DILocation(line: 394, column: 74, scope: !1851)
!1860 = !DILocation(line: 394, column: 101, scope: !1851)
!1861 = !DILocation(line: 394, column: 133, scope: !1851)
!1862 = !DILocation(line: 394, column: 145, scope: !1851)
!1863 = !DILocation(line: 396, column: 8, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1851, file: !24, line: 396, column: 7)
!1865 = !DILocation(line: 396, column: 14, scope: !1864)
!1866 = !DILocation(line: 396, column: 41, scope: !1864)
!1867 = !DILocation(line: 396, column: 72, scope: !1864)
!1868 = !DILocation(line: 396, column: 44, scope: !1864)
!1869 = !DILocation(line: 396, column: 80, scope: !1864)
!1870 = !DILocation(line: 396, column: 7, scope: !1851)
!1871 = !DILocation(line: 397, column: 5, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1864, file: !24, line: 396, column: 85)
!1873 = !DILocation(line: 397, column: 11, scope: !1872)
!1874 = !DILocation(line: 398, column: 5, scope: !1872)
!1875 = !DILocation(line: 401, column: 31, scope: !1851)
!1876 = !DILocation(line: 401, column: 41, scope: !1851)
!1877 = !DILocation(line: 401, column: 13, scope: !1851)
!1878 = !DILocation(line: 401, column: 11, scope: !1851)
!1879 = !DILocation(line: 402, column: 8, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1851, file: !24, line: 402, column: 7)
!1881 = !DILocation(line: 402, column: 7, scope: !1851)
!1882 = !DILocation(line: 403, column: 5, scope: !1880)
!1883 = !DILocation(line: 405, column: 7, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1851, file: !24, line: 405, column: 7)
!1885 = !DILocation(line: 405, column: 17, scope: !1884)
!1886 = !DILocation(line: 405, column: 31, scope: !1884)
!1887 = !{!830, !797, i64 576}
!1888 = !DILocation(line: 405, column: 7, scope: !1851)
!1889 = !DILocation(line: 406, column: 12, scope: !1884)
!1890 = !DILocation(line: 406, column: 22, scope: !1884)
!1891 = !DILocation(line: 406, column: 36, scope: !1884)
!1892 = !DILocation(line: 406, column: 53, scope: !1884)
!1893 = !DILocation(line: 406, column: 63, scope: !1884)
!1894 = !DILocation(line: 406, column: 68, scope: !1884)
!1895 = !DILocation(line: 406, column: 77, scope: !1884)
!1896 = !DILocation(line: 406, column: 85, scope: !1884)
!1897 = !DILocation(line: 406, column: 5, scope: !1884)
!1898 = !DILocation(line: 408, column: 3, scope: !1851)
!1899 = !DILocation(line: 408, column: 9, scope: !1851)
!1900 = !DILocation(line: 409, column: 3, scope: !1851)
!1901 = !DILocation(line: 410, column: 1, scope: !1851)
!1902 = distinct !DISubprogram(name: "quo_internal_hwloc_get_proc_membind", scope: !24, file: !24, line: 448, type: !1903, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1905)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!75, !350, !502, !474, !571, !75}
!1905 = !{!1906, !1907, !1908, !1909, !1910, !1911, !1912}
!1906 = !DILocalVariable(name: "topology", arg: 1, scope: !1902, file: !24, line: 448, type: !350)
!1907 = !DILocalVariable(name: "pid", arg: 2, scope: !1902, file: !24, line: 448, type: !502)
!1908 = !DILocalVariable(name: "set", arg: 3, scope: !1902, file: !24, line: 448, type: !474)
!1909 = !DILocalVariable(name: "policy", arg: 4, scope: !1902, file: !24, line: 448, type: !571)
!1910 = !DILocalVariable(name: "flags", arg: 5, scope: !1902, file: !24, line: 448, type: !75)
!1911 = !DILocalVariable(name: "ret", scope: !1902, file: !24, line: 450, type: !75)
!1912 = !DILocalVariable(name: "nodeset", scope: !1913, file: !24, line: 455, type: !480)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !24, line: 454, column: 10)
!1914 = distinct !DILexicalBlock(scope: !1902, file: !24, line: 452, column: 7)
!1915 = !DILocation(line: 448, column: 41, scope: !1902)
!1916 = !DILocation(line: 448, column: 63, scope: !1902)
!1917 = !DILocation(line: 448, column: 83, scope: !1902)
!1918 = !DILocation(line: 448, column: 113, scope: !1902)
!1919 = !DILocation(line: 448, column: 125, scope: !1902)
!1920 = !DILocation(line: 450, column: 3, scope: !1902)
!1921 = !DILocation(line: 450, column: 7, scope: !1902)
!1922 = !DILocation(line: 452, column: 7, scope: !1914)
!1923 = !DILocation(line: 452, column: 13, scope: !1914)
!1924 = !DILocation(line: 452, column: 7, scope: !1902)
!1925 = !DILocation(line: 453, column: 45, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1914, file: !24, line: 452, column: 40)
!1927 = !DILocation(line: 453, column: 55, scope: !1926)
!1928 = !DILocation(line: 453, column: 60, scope: !1926)
!1929 = !DILocation(line: 453, column: 65, scope: !1926)
!1930 = !DILocation(line: 453, column: 73, scope: !1926)
!1931 = !DILocation(line: 453, column: 11, scope: !1926)
!1932 = !DILocation(line: 453, column: 9, scope: !1926)
!1933 = !DILocation(line: 454, column: 3, scope: !1926)
!1934 = !DILocation(line: 455, column: 5, scope: !1913)
!1935 = !DILocation(line: 455, column: 21, scope: !1913)
!1936 = !DILocation(line: 455, column: 31, scope: !1913)
!1937 = !DILocation(line: 456, column: 45, scope: !1913)
!1938 = !DILocation(line: 456, column: 55, scope: !1913)
!1939 = !DILocation(line: 456, column: 60, scope: !1913)
!1940 = !DILocation(line: 456, column: 69, scope: !1913)
!1941 = !DILocation(line: 456, column: 77, scope: !1913)
!1942 = !DILocation(line: 456, column: 11, scope: !1913)
!1943 = !DILocation(line: 456, column: 9, scope: !1913)
!1944 = !DILocation(line: 457, column: 10, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1913, file: !24, line: 457, column: 9)
!1946 = !DILocation(line: 457, column: 9, scope: !1913)
!1947 = !DILocation(line: 458, column: 33, scope: !1945)
!1948 = !DILocation(line: 458, column: 43, scope: !1945)
!1949 = !DILocation(line: 458, column: 48, scope: !1945)
!1950 = !DILocation(line: 458, column: 7, scope: !1945)
!1951 = !DILocation(line: 459, column: 23, scope: !1913)
!1952 = !DILocation(line: 459, column: 5, scope: !1913)
!1953 = !DILocation(line: 460, column: 3, scope: !1914)
!1954 = !DILocation(line: 462, column: 10, scope: !1902)
!1955 = !DILocation(line: 463, column: 1, scope: !1902)
!1956 = !DILocation(line: 462, column: 3, scope: !1902)
!1957 = distinct !DISubprogram(name: "hwloc_get_proc_membind_by_nodeset", scope: !24, file: !24, line: 433, type: !580, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1958)
!1958 = !{!1959, !1960, !1961, !1962, !1963}
!1959 = !DILocalVariable(name: "topology", arg: 1, scope: !1957, file: !24, line: 433, type: !350)
!1960 = !DILocalVariable(name: "pid", arg: 2, scope: !1957, file: !24, line: 433, type: !502)
!1961 = !DILocalVariable(name: "nodeset", arg: 3, scope: !1957, file: !24, line: 433, type: !480)
!1962 = !DILocalVariable(name: "policy", arg: 4, scope: !1957, file: !24, line: 433, type: !571)
!1963 = !DILocalVariable(name: "flags", arg: 5, scope: !1957, file: !24, line: 433, type: !75)
!1964 = !DILocation(line: 433, column: 52, scope: !1957)
!1965 = !DILocation(line: 433, column: 74, scope: !1957)
!1966 = !DILocation(line: 433, column: 95, scope: !1957)
!1967 = !DILocation(line: 433, column: 129, scope: !1957)
!1968 = !DILocation(line: 433, column: 141, scope: !1957)
!1969 = !DILocation(line: 435, column: 7, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1957, file: !24, line: 435, column: 7)
!1971 = !DILocation(line: 435, column: 13, scope: !1970)
!1972 = !DILocation(line: 435, column: 7, scope: !1957)
!1973 = !DILocation(line: 436, column: 5, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1970, file: !24, line: 435, column: 40)
!1975 = !DILocation(line: 436, column: 11, scope: !1974)
!1976 = !DILocation(line: 437, column: 5, scope: !1974)
!1977 = !DILocation(line: 440, column: 7, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1957, file: !24, line: 440, column: 7)
!1979 = !DILocation(line: 440, column: 17, scope: !1978)
!1980 = !DILocation(line: 440, column: 31, scope: !1978)
!1981 = !{!830, !797, i64 584}
!1982 = !DILocation(line: 440, column: 7, scope: !1957)
!1983 = !DILocation(line: 441, column: 12, scope: !1978)
!1984 = !DILocation(line: 441, column: 22, scope: !1978)
!1985 = !DILocation(line: 441, column: 36, scope: !1978)
!1986 = !DILocation(line: 441, column: 53, scope: !1978)
!1987 = !DILocation(line: 441, column: 63, scope: !1978)
!1988 = !DILocation(line: 441, column: 68, scope: !1978)
!1989 = !DILocation(line: 441, column: 77, scope: !1978)
!1990 = !DILocation(line: 441, column: 85, scope: !1978)
!1991 = !DILocation(line: 441, column: 5, scope: !1978)
!1992 = !DILocation(line: 443, column: 3, scope: !1957)
!1993 = !DILocation(line: 443, column: 9, scope: !1957)
!1994 = !DILocation(line: 444, column: 3, scope: !1957)
!1995 = !DILocation(line: 445, column: 1, scope: !1957)
!1996 = distinct !DISubprogram(name: "quo_internal_hwloc_set_area_membind", scope: !24, file: !24, line: 489, type: !1997, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !1999)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!75, !350, !586, !509, !531, !566, !75}
!1999 = !{!2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007}
!2000 = !DILocalVariable(name: "topology", arg: 1, scope: !1996, file: !24, line: 489, type: !350)
!2001 = !DILocalVariable(name: "addr", arg: 2, scope: !1996, file: !24, line: 489, type: !586)
!2002 = !DILocalVariable(name: "len", arg: 3, scope: !1996, file: !24, line: 489, type: !509)
!2003 = !DILocalVariable(name: "set", arg: 4, scope: !1996, file: !24, line: 489, type: !531)
!2004 = !DILocalVariable(name: "policy", arg: 5, scope: !1996, file: !24, line: 489, type: !566)
!2005 = !DILocalVariable(name: "flags", arg: 6, scope: !1996, file: !24, line: 489, type: !75)
!2006 = !DILocalVariable(name: "ret", scope: !1996, file: !24, line: 491, type: !75)
!2007 = !DILocalVariable(name: "nodeset", scope: !2008, file: !24, line: 496, type: !480)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !24, line: 495, column: 10)
!2009 = distinct !DILexicalBlock(scope: !1996, file: !24, line: 493, column: 7)
!2010 = !DILocation(line: 489, column: 41, scope: !1996)
!2011 = !DILocation(line: 489, column: 63, scope: !1996)
!2012 = !DILocation(line: 489, column: 76, scope: !1996)
!2013 = !DILocation(line: 489, column: 102, scope: !1996)
!2014 = !DILocation(line: 489, column: 130, scope: !1996)
!2015 = !DILocation(line: 489, column: 142, scope: !1996)
!2016 = !DILocation(line: 491, column: 3, scope: !1996)
!2017 = !DILocation(line: 491, column: 7, scope: !1996)
!2018 = !DILocation(line: 493, column: 7, scope: !2009)
!2019 = !DILocation(line: 493, column: 13, scope: !2009)
!2020 = !DILocation(line: 493, column: 7, scope: !1996)
!2021 = !DILocation(line: 494, column: 45, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2009, file: !24, line: 493, column: 40)
!2023 = !DILocation(line: 494, column: 55, scope: !2022)
!2024 = !DILocation(line: 494, column: 61, scope: !2022)
!2025 = !DILocation(line: 494, column: 66, scope: !2022)
!2026 = !DILocation(line: 494, column: 71, scope: !2022)
!2027 = !DILocation(line: 494, column: 79, scope: !2022)
!2028 = !DILocation(line: 494, column: 11, scope: !2022)
!2029 = !DILocation(line: 494, column: 9, scope: !2022)
!2030 = !DILocation(line: 495, column: 3, scope: !2022)
!2031 = !DILocation(line: 496, column: 5, scope: !2008)
!2032 = !DILocation(line: 496, column: 21, scope: !2008)
!2033 = !DILocation(line: 496, column: 31, scope: !2008)
!2034 = !DILocation(line: 497, column: 34, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2008, file: !24, line: 497, column: 9)
!2036 = !DILocation(line: 497, column: 44, scope: !2035)
!2037 = !DILocation(line: 497, column: 53, scope: !2035)
!2038 = !DILocation(line: 497, column: 9, scope: !2035)
!2039 = !DILocation(line: 497, column: 9, scope: !2008)
!2040 = !DILocation(line: 498, column: 11, scope: !2035)
!2041 = !DILocation(line: 498, column: 7, scope: !2035)
!2042 = !DILocation(line: 500, column: 47, scope: !2035)
!2043 = !DILocation(line: 500, column: 57, scope: !2035)
!2044 = !DILocation(line: 500, column: 63, scope: !2035)
!2045 = !DILocation(line: 500, column: 68, scope: !2035)
!2046 = !DILocation(line: 500, column: 77, scope: !2035)
!2047 = !DILocation(line: 500, column: 85, scope: !2035)
!2048 = !DILocation(line: 500, column: 13, scope: !2035)
!2049 = !DILocation(line: 500, column: 11, scope: !2035)
!2050 = !DILocation(line: 501, column: 23, scope: !2008)
!2051 = !DILocation(line: 501, column: 5, scope: !2008)
!2052 = !DILocation(line: 502, column: 3, scope: !2009)
!2053 = !DILocation(line: 504, column: 10, scope: !1996)
!2054 = !DILocation(line: 505, column: 1, scope: !1996)
!2055 = !DILocation(line: 504, column: 3, scope: !1996)
!2056 = distinct !DISubprogram(name: "hwloc_set_area_membind_by_nodeset", scope: !24, file: !24, line: 466, type: !584, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2057)
!2057 = !{!2058, !2059, !2060, !2061, !2062, !2063}
!2058 = !DILocalVariable(name: "topology", arg: 1, scope: !2056, file: !24, line: 466, type: !350)
!2059 = !DILocalVariable(name: "addr", arg: 2, scope: !2056, file: !24, line: 466, type: !586)
!2060 = !DILocalVariable(name: "len", arg: 3, scope: !2056, file: !24, line: 466, type: !509)
!2061 = !DILocalVariable(name: "nodeset", arg: 4, scope: !2056, file: !24, line: 466, type: !565)
!2062 = !DILocalVariable(name: "policy", arg: 5, scope: !2056, file: !24, line: 466, type: !566)
!2063 = !DILocalVariable(name: "flags", arg: 6, scope: !2056, file: !24, line: 466, type: !75)
!2064 = !DILocation(line: 466, column: 52, scope: !2056)
!2065 = !DILocation(line: 466, column: 74, scope: !2056)
!2066 = !DILocation(line: 466, column: 87, scope: !2056)
!2067 = !DILocation(line: 466, column: 114, scope: !2056)
!2068 = !DILocation(line: 466, column: 146, scope: !2056)
!2069 = !DILocation(line: 466, column: 158, scope: !2056)
!2070 = !DILocation(line: 468, column: 8, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2056, file: !24, line: 468, column: 7)
!2072 = !DILocation(line: 468, column: 14, scope: !2071)
!2073 = !DILocation(line: 468, column: 41, scope: !2071)
!2074 = !DILocation(line: 468, column: 72, scope: !2071)
!2075 = !DILocation(line: 468, column: 44, scope: !2071)
!2076 = !DILocation(line: 468, column: 80, scope: !2071)
!2077 = !DILocation(line: 468, column: 7, scope: !2056)
!2078 = !DILocation(line: 469, column: 5, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2071, file: !24, line: 468, column: 85)
!2080 = !DILocation(line: 469, column: 11, scope: !2079)
!2081 = !DILocation(line: 470, column: 5, scope: !2079)
!2082 = !DILocation(line: 473, column: 8, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2056, file: !24, line: 473, column: 7)
!2084 = !DILocation(line: 473, column: 7, scope: !2056)
!2085 = !DILocation(line: 475, column: 5, scope: !2083)
!2086 = !DILocation(line: 477, column: 31, scope: !2056)
!2087 = !DILocation(line: 477, column: 41, scope: !2056)
!2088 = !DILocation(line: 477, column: 13, scope: !2056)
!2089 = !DILocation(line: 477, column: 11, scope: !2056)
!2090 = !DILocation(line: 478, column: 8, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2056, file: !24, line: 478, column: 7)
!2092 = !DILocation(line: 478, column: 7, scope: !2056)
!2093 = !DILocation(line: 479, column: 5, scope: !2091)
!2094 = !DILocation(line: 481, column: 7, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2056, file: !24, line: 481, column: 7)
!2096 = !DILocation(line: 481, column: 17, scope: !2095)
!2097 = !DILocation(line: 481, column: 31, scope: !2095)
!2098 = !{!830, !797, i64 592}
!2099 = !DILocation(line: 481, column: 7, scope: !2056)
!2100 = !DILocation(line: 482, column: 12, scope: !2095)
!2101 = !DILocation(line: 482, column: 22, scope: !2095)
!2102 = !DILocation(line: 482, column: 36, scope: !2095)
!2103 = !DILocation(line: 482, column: 53, scope: !2095)
!2104 = !DILocation(line: 482, column: 63, scope: !2095)
!2105 = !DILocation(line: 482, column: 69, scope: !2095)
!2106 = !DILocation(line: 482, column: 74, scope: !2095)
!2107 = !DILocation(line: 482, column: 83, scope: !2095)
!2108 = !DILocation(line: 482, column: 91, scope: !2095)
!2109 = !DILocation(line: 482, column: 5, scope: !2095)
!2110 = !DILocation(line: 484, column: 3, scope: !2056)
!2111 = !DILocation(line: 484, column: 9, scope: !2056)
!2112 = !DILocation(line: 485, column: 3, scope: !2056)
!2113 = !DILocation(line: 486, column: 1, scope: !2056)
!2114 = distinct !DISubprogram(name: "quo_internal_hwloc_get_area_membind", scope: !24, file: !24, line: 529, type: !2115, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2117)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!75, !350, !586, !509, !474, !571, !75}
!2117 = !{!2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125}
!2118 = !DILocalVariable(name: "topology", arg: 1, scope: !2114, file: !24, line: 529, type: !350)
!2119 = !DILocalVariable(name: "addr", arg: 2, scope: !2114, file: !24, line: 529, type: !586)
!2120 = !DILocalVariable(name: "len", arg: 3, scope: !2114, file: !24, line: 529, type: !509)
!2121 = !DILocalVariable(name: "set", arg: 4, scope: !2114, file: !24, line: 529, type: !474)
!2122 = !DILocalVariable(name: "policy", arg: 5, scope: !2114, file: !24, line: 529, type: !571)
!2123 = !DILocalVariable(name: "flags", arg: 6, scope: !2114, file: !24, line: 529, type: !75)
!2124 = !DILocalVariable(name: "ret", scope: !2114, file: !24, line: 531, type: !75)
!2125 = !DILocalVariable(name: "nodeset", scope: !2126, file: !24, line: 536, type: !480)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !24, line: 535, column: 10)
!2127 = distinct !DILexicalBlock(scope: !2114, file: !24, line: 533, column: 7)
!2128 = !DILocation(line: 529, column: 41, scope: !2114)
!2129 = !DILocation(line: 529, column: 63, scope: !2114)
!2130 = !DILocation(line: 529, column: 76, scope: !2114)
!2131 = !DILocation(line: 529, column: 96, scope: !2114)
!2132 = !DILocation(line: 529, column: 126, scope: !2114)
!2133 = !DILocation(line: 529, column: 138, scope: !2114)
!2134 = !DILocation(line: 531, column: 3, scope: !2114)
!2135 = !DILocation(line: 531, column: 7, scope: !2114)
!2136 = !DILocation(line: 533, column: 7, scope: !2127)
!2137 = !DILocation(line: 533, column: 13, scope: !2127)
!2138 = !DILocation(line: 533, column: 7, scope: !2114)
!2139 = !DILocation(line: 534, column: 45, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2127, file: !24, line: 533, column: 40)
!2141 = !DILocation(line: 534, column: 55, scope: !2140)
!2142 = !DILocation(line: 534, column: 61, scope: !2140)
!2143 = !DILocation(line: 534, column: 66, scope: !2140)
!2144 = !DILocation(line: 534, column: 71, scope: !2140)
!2145 = !DILocation(line: 534, column: 79, scope: !2140)
!2146 = !DILocation(line: 534, column: 11, scope: !2140)
!2147 = !DILocation(line: 534, column: 9, scope: !2140)
!2148 = !DILocation(line: 535, column: 3, scope: !2140)
!2149 = !DILocation(line: 536, column: 5, scope: !2126)
!2150 = !DILocation(line: 536, column: 21, scope: !2126)
!2151 = !DILocation(line: 536, column: 31, scope: !2126)
!2152 = !DILocation(line: 537, column: 45, scope: !2126)
!2153 = !DILocation(line: 537, column: 55, scope: !2126)
!2154 = !DILocation(line: 537, column: 61, scope: !2126)
!2155 = !DILocation(line: 537, column: 66, scope: !2126)
!2156 = !DILocation(line: 537, column: 75, scope: !2126)
!2157 = !DILocation(line: 537, column: 83, scope: !2126)
!2158 = !DILocation(line: 537, column: 11, scope: !2126)
!2159 = !DILocation(line: 537, column: 9, scope: !2126)
!2160 = !DILocation(line: 538, column: 10, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2126, file: !24, line: 538, column: 9)
!2162 = !DILocation(line: 538, column: 9, scope: !2126)
!2163 = !DILocation(line: 539, column: 33, scope: !2161)
!2164 = !DILocation(line: 539, column: 43, scope: !2161)
!2165 = !DILocation(line: 539, column: 48, scope: !2161)
!2166 = !DILocation(line: 539, column: 7, scope: !2161)
!2167 = !DILocation(line: 540, column: 23, scope: !2126)
!2168 = !DILocation(line: 540, column: 5, scope: !2126)
!2169 = !DILocation(line: 541, column: 3, scope: !2127)
!2170 = !DILocation(line: 543, column: 10, scope: !2114)
!2171 = !DILocation(line: 544, column: 1, scope: !2114)
!2172 = !DILocation(line: 543, column: 3, scope: !2114)
!2173 = distinct !DISubprogram(name: "hwloc_get_area_membind_by_nodeset", scope: !24, file: !24, line: 508, type: !590, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2174)
!2174 = !{!2175, !2176, !2177, !2178, !2179, !2180}
!2175 = !DILocalVariable(name: "topology", arg: 1, scope: !2173, file: !24, line: 508, type: !350)
!2176 = !DILocalVariable(name: "addr", arg: 2, scope: !2173, file: !24, line: 508, type: !586)
!2177 = !DILocalVariable(name: "len", arg: 3, scope: !2173, file: !24, line: 508, type: !509)
!2178 = !DILocalVariable(name: "nodeset", arg: 4, scope: !2173, file: !24, line: 508, type: !480)
!2179 = !DILocalVariable(name: "policy", arg: 5, scope: !2173, file: !24, line: 508, type: !571)
!2180 = !DILocalVariable(name: "flags", arg: 6, scope: !2173, file: !24, line: 508, type: !75)
!2181 = !DILocation(line: 508, column: 52, scope: !2173)
!2182 = !DILocation(line: 508, column: 74, scope: !2173)
!2183 = !DILocation(line: 508, column: 87, scope: !2173)
!2184 = !DILocation(line: 508, column: 108, scope: !2173)
!2185 = !DILocation(line: 508, column: 142, scope: !2173)
!2186 = !DILocation(line: 508, column: 154, scope: !2173)
!2187 = !DILocation(line: 510, column: 7, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2173, file: !24, line: 510, column: 7)
!2189 = !DILocation(line: 510, column: 13, scope: !2188)
!2190 = !DILocation(line: 510, column: 7, scope: !2173)
!2191 = !DILocation(line: 511, column: 5, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2188, file: !24, line: 510, column: 40)
!2193 = !DILocation(line: 511, column: 11, scope: !2192)
!2194 = !DILocation(line: 512, column: 5, scope: !2192)
!2195 = !DILocation(line: 515, column: 8, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2173, file: !24, line: 515, column: 7)
!2197 = !DILocation(line: 515, column: 7, scope: !2173)
!2198 = !DILocation(line: 517, column: 5, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2196, file: !24, line: 515, column: 13)
!2200 = !DILocation(line: 517, column: 11, scope: !2199)
!2201 = !DILocation(line: 518, column: 5, scope: !2199)
!2202 = !DILocation(line: 521, column: 7, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2173, file: !24, line: 521, column: 7)
!2204 = !DILocation(line: 521, column: 17, scope: !2203)
!2205 = !DILocation(line: 521, column: 31, scope: !2203)
!2206 = !{!830, !797, i64 600}
!2207 = !DILocation(line: 521, column: 7, scope: !2173)
!2208 = !DILocation(line: 522, column: 12, scope: !2203)
!2209 = !DILocation(line: 522, column: 22, scope: !2203)
!2210 = !DILocation(line: 522, column: 36, scope: !2203)
!2211 = !DILocation(line: 522, column: 53, scope: !2203)
!2212 = !DILocation(line: 522, column: 63, scope: !2203)
!2213 = !DILocation(line: 522, column: 69, scope: !2203)
!2214 = !DILocation(line: 522, column: 74, scope: !2203)
!2215 = !DILocation(line: 522, column: 83, scope: !2203)
!2216 = !DILocation(line: 522, column: 91, scope: !2203)
!2217 = !DILocation(line: 522, column: 5, scope: !2203)
!2218 = !DILocation(line: 524, column: 3, scope: !2173)
!2219 = !DILocation(line: 524, column: 9, scope: !2173)
!2220 = !DILocation(line: 525, column: 3, scope: !2173)
!2221 = !DILocation(line: 526, column: 1, scope: !2173)
!2222 = distinct !DISubprogram(name: "quo_internal_hwloc_get_area_memlocation", scope: !24, file: !24, line: 566, type: !2223, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2225)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!75, !350, !586, !509, !473, !75}
!2225 = !{!2226, !2227, !2228, !2229, !2230, !2231, !2232}
!2226 = !DILocalVariable(name: "topology", arg: 1, scope: !2222, file: !24, line: 566, type: !350)
!2227 = !DILocalVariable(name: "addr", arg: 2, scope: !2222, file: !24, line: 566, type: !586)
!2228 = !DILocalVariable(name: "len", arg: 3, scope: !2222, file: !24, line: 566, type: !509)
!2229 = !DILocalVariable(name: "set", arg: 4, scope: !2222, file: !24, line: 566, type: !473)
!2230 = !DILocalVariable(name: "flags", arg: 5, scope: !2222, file: !24, line: 566, type: !75)
!2231 = !DILocalVariable(name: "ret", scope: !2222, file: !24, line: 568, type: !75)
!2232 = !DILocalVariable(name: "nodeset", scope: !2233, file: !24, line: 573, type: !480)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !24, line: 572, column: 10)
!2234 = distinct !DILexicalBlock(scope: !2222, file: !24, line: 570, column: 7)
!2235 = !DILocation(line: 566, column: 45, scope: !2222)
!2236 = !DILocation(line: 566, column: 67, scope: !2222)
!2237 = !DILocation(line: 566, column: 80, scope: !2222)
!2238 = !DILocation(line: 566, column: 100, scope: !2222)
!2239 = !DILocation(line: 566, column: 109, scope: !2222)
!2240 = !DILocation(line: 568, column: 3, scope: !2222)
!2241 = !DILocation(line: 568, column: 7, scope: !2222)
!2242 = !DILocation(line: 570, column: 7, scope: !2234)
!2243 = !DILocation(line: 570, column: 13, scope: !2234)
!2244 = !DILocation(line: 570, column: 7, scope: !2222)
!2245 = !DILocation(line: 571, column: 49, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2234, file: !24, line: 570, column: 40)
!2247 = !DILocation(line: 571, column: 59, scope: !2246)
!2248 = !DILocation(line: 571, column: 65, scope: !2246)
!2249 = !DILocation(line: 571, column: 70, scope: !2246)
!2250 = !DILocation(line: 571, column: 75, scope: !2246)
!2251 = !DILocation(line: 571, column: 11, scope: !2246)
!2252 = !DILocation(line: 571, column: 9, scope: !2246)
!2253 = !DILocation(line: 572, column: 3, scope: !2246)
!2254 = !DILocation(line: 573, column: 5, scope: !2233)
!2255 = !DILocation(line: 573, column: 21, scope: !2233)
!2256 = !DILocation(line: 573, column: 31, scope: !2233)
!2257 = !DILocation(line: 574, column: 49, scope: !2233)
!2258 = !DILocation(line: 574, column: 59, scope: !2233)
!2259 = !DILocation(line: 574, column: 65, scope: !2233)
!2260 = !DILocation(line: 574, column: 70, scope: !2233)
!2261 = !DILocation(line: 574, column: 79, scope: !2233)
!2262 = !DILocation(line: 574, column: 11, scope: !2233)
!2263 = !DILocation(line: 574, column: 9, scope: !2233)
!2264 = !DILocation(line: 575, column: 10, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2233, file: !24, line: 575, column: 9)
!2266 = !DILocation(line: 575, column: 9, scope: !2233)
!2267 = !DILocation(line: 576, column: 33, scope: !2265)
!2268 = !DILocation(line: 576, column: 43, scope: !2265)
!2269 = !DILocation(line: 576, column: 48, scope: !2265)
!2270 = !DILocation(line: 576, column: 7, scope: !2265)
!2271 = !DILocation(line: 577, column: 23, scope: !2233)
!2272 = !DILocation(line: 577, column: 5, scope: !2233)
!2273 = !DILocation(line: 578, column: 3, scope: !2234)
!2274 = !DILocation(line: 580, column: 10, scope: !2222)
!2275 = !DILocation(line: 581, column: 1, scope: !2222)
!2276 = !DILocation(line: 580, column: 3, scope: !2222)
!2277 = distinct !DISubprogram(name: "hwloc_get_area_memlocation_by_nodeset", scope: !24, file: !24, line: 547, type: !594, scopeLine: 548, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2278)
!2278 = !{!2279, !2280, !2281, !2282, !2283}
!2279 = !DILocalVariable(name: "topology", arg: 1, scope: !2277, file: !24, line: 547, type: !350)
!2280 = !DILocalVariable(name: "addr", arg: 2, scope: !2277, file: !24, line: 547, type: !586)
!2281 = !DILocalVariable(name: "len", arg: 3, scope: !2277, file: !24, line: 547, type: !509)
!2282 = !DILocalVariable(name: "nodeset", arg: 4, scope: !2277, file: !24, line: 547, type: !480)
!2283 = !DILocalVariable(name: "flags", arg: 5, scope: !2277, file: !24, line: 547, type: !75)
!2284 = !DILocation(line: 547, column: 56, scope: !2277)
!2285 = !DILocation(line: 547, column: 78, scope: !2277)
!2286 = !DILocation(line: 547, column: 91, scope: !2277)
!2287 = !DILocation(line: 547, column: 112, scope: !2277)
!2288 = !DILocation(line: 547, column: 125, scope: !2277)
!2289 = !DILocation(line: 549, column: 7, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2277, file: !24, line: 549, column: 7)
!2291 = !DILocation(line: 549, column: 13, scope: !2290)
!2292 = !DILocation(line: 549, column: 7, scope: !2277)
!2293 = !DILocation(line: 550, column: 5, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2290, file: !24, line: 549, column: 40)
!2295 = !DILocation(line: 550, column: 11, scope: !2294)
!2296 = !DILocation(line: 551, column: 5, scope: !2294)
!2297 = !DILocation(line: 554, column: 8, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2277, file: !24, line: 554, column: 7)
!2299 = !DILocation(line: 554, column: 7, scope: !2277)
!2300 = !DILocation(line: 556, column: 5, scope: !2298)
!2301 = !DILocation(line: 558, column: 7, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2277, file: !24, line: 558, column: 7)
!2303 = !DILocation(line: 558, column: 17, scope: !2302)
!2304 = !DILocation(line: 558, column: 31, scope: !2302)
!2305 = !{!830, !797, i64 608}
!2306 = !DILocation(line: 558, column: 7, scope: !2277)
!2307 = !DILocation(line: 559, column: 12, scope: !2302)
!2308 = !DILocation(line: 559, column: 22, scope: !2302)
!2309 = !DILocation(line: 559, column: 36, scope: !2302)
!2310 = !DILocation(line: 559, column: 57, scope: !2302)
!2311 = !DILocation(line: 559, column: 67, scope: !2302)
!2312 = !DILocation(line: 559, column: 73, scope: !2302)
!2313 = !DILocation(line: 559, column: 78, scope: !2302)
!2314 = !DILocation(line: 559, column: 87, scope: !2302)
!2315 = !DILocation(line: 559, column: 5, scope: !2302)
!2316 = !DILocation(line: 561, column: 3, scope: !2277)
!2317 = !DILocation(line: 561, column: 9, scope: !2277)
!2318 = !DILocation(line: 562, column: 3, scope: !2277)
!2319 = !DILocation(line: 563, column: 1, scope: !2277)
!2320 = distinct !DISubprogram(name: "quo_internal_hwloc_alloc_heap", scope: !24, file: !24, line: 584, type: !598, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2321)
!2321 = !{!2322, !2323, !2324}
!2322 = !DILocalVariable(name: "topology", arg: 1, scope: !2320, file: !24, line: 584, type: !350)
!2323 = !DILocalVariable(name: "len", arg: 2, scope: !2320, file: !24, line: 584, type: !509)
!2324 = !DILocalVariable(name: "p", scope: !2320, file: !24, line: 586, type: !339)
!2325 = !DILocation(line: 584, column: 35, scope: !2320)
!2326 = !DILocation(line: 584, column: 77, scope: !2320)
!2327 = !DILocation(line: 586, column: 3, scope: !2320)
!2328 = !DILocation(line: 586, column: 9, scope: !2320)
!2329 = !DILocation(line: 588, column: 30, scope: !2320)
!2330 = !DILocation(line: 588, column: 51, scope: !2320)
!2331 = !DILocation(line: 588, column: 11, scope: !2320)
!2332 = !DILocation(line: 588, column: 3, scope: !2320)
!2333 = !DILocation(line: 588, column: 9, scope: !2320)
!2334 = !DILocation(line: 589, column: 7, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2320, file: !24, line: 589, column: 7)
!2336 = !DILocation(line: 589, column: 7, scope: !2320)
!2337 = !DILocation(line: 590, column: 7, scope: !2335)
!2338 = !DILocation(line: 590, column: 5, scope: !2335)
!2339 = !DILocation(line: 596, column: 10, scope: !2320)
!2340 = !DILocation(line: 597, column: 1, scope: !2320)
!2341 = !DILocation(line: 596, column: 3, scope: !2320)
!2342 = !DISubprogram(name: "posix_memalign", scope: !2343, file: !2343, line: 586, type: !2344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2343 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!75, !2346, !509, !509}
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!2347 = !DISubprogram(name: "sysconf", scope: !2348, file: !2348, line: 640, type: !2349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2348 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!2351, !75}
!2351 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!2352 = distinct !DISubprogram(name: "quo_internal_hwloc_alloc_mmap", scope: !24, file: !24, line: 601, type: !598, scopeLine: 602, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2353)
!2353 = !{!2354, !2355, !2356}
!2354 = !DILocalVariable(name: "topology", arg: 1, scope: !2352, file: !24, line: 601, type: !350)
!2355 = !DILocalVariable(name: "len", arg: 2, scope: !2352, file: !24, line: 601, type: !509)
!2356 = !DILocalVariable(name: "buffer", scope: !2352, file: !24, line: 603, type: !339)
!2357 = !DILocation(line: 601, column: 35, scope: !2352)
!2358 = !DILocation(line: 601, column: 77, scope: !2352)
!2359 = !DILocation(line: 603, column: 3, scope: !2352)
!2360 = !DILocation(line: 603, column: 10, scope: !2352)
!2361 = !DILocation(line: 603, column: 30, scope: !2352)
!2362 = !DILocation(line: 603, column: 19, scope: !2352)
!2363 = !DILocation(line: 604, column: 10, scope: !2352)
!2364 = !DILocation(line: 604, column: 17, scope: !2352)
!2365 = !DILocation(line: 604, column: 40, scope: !2352)
!2366 = !DILocation(line: 605, column: 1, scope: !2352)
!2367 = !DILocation(line: 604, column: 3, scope: !2352)
!2368 = !DISubprogram(name: "mmap", scope: !2369, file: !2369, line: 57, type: !2370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2369 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/mman.h", directory: "", checksumkind: CSK_MD5, checksum: "93a87cc3b0558893646eb0c257165272")
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!339, !339, !509, !75, !75, !75, !2372}
!2372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !378, line: 152, baseType: !2351)
!2373 = distinct !DISubprogram(name: "quo_internal_hwloc_free_heap", scope: !24, file: !24, line: 609, type: !606, scopeLine: 610, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2374)
!2374 = !{!2375, !2376, !2377}
!2375 = !DILocalVariable(name: "topology", arg: 1, scope: !2373, file: !24, line: 609, type: !350)
!2376 = !DILocalVariable(name: "addr", arg: 2, scope: !2373, file: !24, line: 609, type: !339)
!2377 = !DILocalVariable(name: "len", arg: 3, scope: !2373, file: !24, line: 609, type: !509)
!2378 = !DILocation(line: 609, column: 34, scope: !2373)
!2379 = !DILocation(line: 609, column: 75, scope: !2373)
!2380 = !DILocation(line: 609, column: 88, scope: !2373)
!2381 = !DILocation(line: 611, column: 8, scope: !2373)
!2382 = !DILocation(line: 611, column: 3, scope: !2373)
!2383 = !DILocation(line: 612, column: 3, scope: !2373)
!2384 = !DISubprogram(name: "free", scope: !2343, file: !2343, line: 555, type: !2385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{null, !339}
!2387 = distinct !DISubprogram(name: "quo_internal_hwloc_free_mmap", scope: !24, file: !24, line: 617, type: !606, scopeLine: 618, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2388)
!2388 = !{!2389, !2390, !2391}
!2389 = !DILocalVariable(name: "topology", arg: 1, scope: !2387, file: !24, line: 617, type: !350)
!2390 = !DILocalVariable(name: "addr", arg: 2, scope: !2387, file: !24, line: 617, type: !339)
!2391 = !DILocalVariable(name: "len", arg: 3, scope: !2387, file: !24, line: 617, type: !509)
!2392 = !DILocation(line: 617, column: 34, scope: !2387)
!2393 = !DILocation(line: 617, column: 75, scope: !2387)
!2394 = !DILocation(line: 617, column: 88, scope: !2387)
!2395 = !DILocation(line: 619, column: 8, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2387, file: !24, line: 619, column: 7)
!2397 = !DILocation(line: 619, column: 7, scope: !2387)
!2398 = !DILocation(line: 620, column: 5, scope: !2396)
!2399 = !DILocation(line: 621, column: 17, scope: !2387)
!2400 = !DILocation(line: 621, column: 23, scope: !2387)
!2401 = !DILocation(line: 621, column: 10, scope: !2387)
!2402 = !DILocation(line: 621, column: 3, scope: !2387)
!2403 = !DILocation(line: 622, column: 1, scope: !2387)
!2404 = !DISubprogram(name: "munmap", scope: !2369, file: !2369, line: 76, type: !2405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!75, !339, !509}
!2407 = distinct !DISubprogram(name: "quo_internal_hwloc_alloc", scope: !24, file: !24, line: 626, type: !598, scopeLine: 627, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2408)
!2408 = !{!2409, !2410}
!2409 = !DILocalVariable(name: "topology", arg: 1, scope: !2407, file: !24, line: 626, type: !350)
!2410 = !DILocalVariable(name: "len", arg: 2, scope: !2407, file: !24, line: 626, type: !509)
!2411 = !DILocation(line: 626, column: 30, scope: !2407)
!2412 = !DILocation(line: 626, column: 47, scope: !2407)
!2413 = !DILocation(line: 628, column: 7, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2407, file: !24, line: 628, column: 7)
!2415 = !DILocation(line: 628, column: 17, scope: !2414)
!2416 = !DILocation(line: 628, column: 31, scope: !2414)
!2417 = !{!830, !797, i64 616}
!2418 = !DILocation(line: 628, column: 7, scope: !2407)
!2419 = !DILocation(line: 629, column: 12, scope: !2414)
!2420 = !DILocation(line: 629, column: 22, scope: !2414)
!2421 = !DILocation(line: 629, column: 36, scope: !2414)
!2422 = !DILocation(line: 629, column: 42, scope: !2414)
!2423 = !DILocation(line: 629, column: 52, scope: !2414)
!2424 = !DILocation(line: 629, column: 5, scope: !2414)
!2425 = !DILocation(line: 630, column: 27, scope: !2407)
!2426 = !DILocation(line: 630, column: 37, scope: !2407)
!2427 = !DILocation(line: 630, column: 10, scope: !2407)
!2428 = !DILocation(line: 630, column: 3, scope: !2407)
!2429 = !DILocation(line: 631, column: 1, scope: !2407)
!2430 = distinct !DISubprogram(name: "quo_internal_hwloc_alloc_membind", scope: !24, file: !24, line: 677, type: !2431, scopeLine: 678, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2433)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!339, !350, !509, !531, !566, !75}
!2433 = !{!2434, !2435, !2436, !2437, !2438, !2439, !2440}
!2434 = !DILocalVariable(name: "topology", arg: 1, scope: !2430, file: !24, line: 677, type: !350)
!2435 = !DILocalVariable(name: "len", arg: 2, scope: !2430, file: !24, line: 677, type: !509)
!2436 = !DILocalVariable(name: "set", arg: 3, scope: !2430, file: !24, line: 677, type: !531)
!2437 = !DILocalVariable(name: "policy", arg: 4, scope: !2430, file: !24, line: 677, type: !566)
!2438 = !DILocalVariable(name: "flags", arg: 5, scope: !2430, file: !24, line: 677, type: !75)
!2439 = !DILocalVariable(name: "ret", scope: !2430, file: !24, line: 679, type: !339)
!2440 = !DILocalVariable(name: "nodeset", scope: !2441, file: !24, line: 684, type: !480)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !24, line: 683, column: 10)
!2442 = distinct !DILexicalBlock(scope: !2430, file: !24, line: 681, column: 7)
!2443 = !DILocation(line: 677, column: 38, scope: !2430)
!2444 = !DILocation(line: 677, column: 55, scope: !2430)
!2445 = !DILocation(line: 677, column: 81, scope: !2430)
!2446 = !DILocation(line: 677, column: 109, scope: !2430)
!2447 = !DILocation(line: 677, column: 121, scope: !2430)
!2448 = !DILocation(line: 679, column: 3, scope: !2430)
!2449 = !DILocation(line: 679, column: 9, scope: !2430)
!2450 = !DILocation(line: 681, column: 7, scope: !2442)
!2451 = !DILocation(line: 681, column: 13, scope: !2442)
!2452 = !DILocation(line: 681, column: 7, scope: !2430)
!2453 = !DILocation(line: 682, column: 42, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2442, file: !24, line: 681, column: 40)
!2455 = !DILocation(line: 682, column: 52, scope: !2454)
!2456 = !DILocation(line: 682, column: 57, scope: !2454)
!2457 = !DILocation(line: 682, column: 62, scope: !2454)
!2458 = !DILocation(line: 682, column: 70, scope: !2454)
!2459 = !DILocation(line: 682, column: 11, scope: !2454)
!2460 = !DILocation(line: 682, column: 9, scope: !2454)
!2461 = !DILocation(line: 683, column: 3, scope: !2454)
!2462 = !DILocation(line: 684, column: 5, scope: !2441)
!2463 = !DILocation(line: 684, column: 21, scope: !2441)
!2464 = !DILocation(line: 684, column: 31, scope: !2441)
!2465 = !DILocation(line: 685, column: 34, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2441, file: !24, line: 685, column: 9)
!2467 = !DILocation(line: 685, column: 44, scope: !2466)
!2468 = !DILocation(line: 685, column: 53, scope: !2466)
!2469 = !DILocation(line: 685, column: 9, scope: !2466)
!2470 = !DILocation(line: 685, column: 9, scope: !2441)
!2471 = !DILocation(line: 686, column: 11, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !24, line: 686, column: 11)
!2473 = distinct !DILexicalBlock(scope: !2466, file: !24, line: 685, column: 59)
!2474 = !DILocation(line: 686, column: 17, scope: !2472)
!2475 = !DILocation(line: 686, column: 11, scope: !2473)
!2476 = !DILocation(line: 687, column: 6, scope: !2472)
!2477 = !DILocation(line: 687, column: 2, scope: !2472)
!2478 = !DILocation(line: 689, column: 20, scope: !2472)
!2479 = !DILocation(line: 689, column: 30, scope: !2472)
!2480 = !DILocation(line: 689, column: 8, scope: !2472)
!2481 = !DILocation(line: 689, column: 6, scope: !2472)
!2482 = !DILocation(line: 690, column: 5, scope: !2473)
!2483 = !DILocation(line: 691, column: 44, scope: !2466)
!2484 = !DILocation(line: 691, column: 54, scope: !2466)
!2485 = !DILocation(line: 691, column: 59, scope: !2466)
!2486 = !DILocation(line: 691, column: 68, scope: !2466)
!2487 = !DILocation(line: 691, column: 76, scope: !2466)
!2488 = !DILocation(line: 691, column: 13, scope: !2466)
!2489 = !DILocation(line: 691, column: 11, scope: !2466)
!2490 = !DILocation(line: 692, column: 23, scope: !2441)
!2491 = !DILocation(line: 692, column: 5, scope: !2441)
!2492 = !DILocation(line: 693, column: 3, scope: !2442)
!2493 = !DILocation(line: 695, column: 10, scope: !2430)
!2494 = !DILocation(line: 696, column: 1, scope: !2430)
!2495 = !DILocation(line: 695, column: 3, scope: !2430)
!2496 = distinct !DISubprogram(name: "hwloc_alloc_membind_by_nodeset", scope: !24, file: !24, line: 634, type: !602, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2497)
!2497 = !{!2498, !2499, !2500, !2501, !2502, !2503, !2504, !2510}
!2498 = !DILocalVariable(name: "topology", arg: 1, scope: !2496, file: !24, line: 634, type: !350)
!2499 = !DILocalVariable(name: "len", arg: 2, scope: !2496, file: !24, line: 634, type: !509)
!2500 = !DILocalVariable(name: "nodeset", arg: 3, scope: !2496, file: !24, line: 634, type: !565)
!2501 = !DILocalVariable(name: "policy", arg: 4, scope: !2496, file: !24, line: 634, type: !566)
!2502 = !DILocalVariable(name: "flags", arg: 5, scope: !2496, file: !24, line: 634, type: !75)
!2503 = !DILocalVariable(name: "p", scope: !2496, file: !24, line: 636, type: !339)
!2504 = !DILocalVariable(name: "error", scope: !2505, file: !24, line: 658, type: !75)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !24, line: 657, column: 125)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !24, line: 657, column: 9)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !24, line: 653, column: 54)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !24, line: 653, column: 12)
!2509 = distinct !DILexicalBlock(scope: !2496, file: !24, line: 651, column: 7)
!2510 = !DILabel(scope: !2496, name: "fallback", file: !24, line: 668)
!2511 = !DILocation(line: 634, column: 49, scope: !2496)
!2512 = !DILocation(line: 634, column: 66, scope: !2496)
!2513 = !DILocation(line: 634, column: 93, scope: !2496)
!2514 = !DILocation(line: 634, column: 125, scope: !2496)
!2515 = !DILocation(line: 634, column: 137, scope: !2496)
!2516 = !DILocation(line: 636, column: 3, scope: !2496)
!2517 = !DILocation(line: 636, column: 9, scope: !2496)
!2518 = !DILocation(line: 638, column: 8, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2496, file: !24, line: 638, column: 7)
!2520 = !DILocation(line: 638, column: 14, scope: !2519)
!2521 = !DILocation(line: 638, column: 41, scope: !2519)
!2522 = !DILocation(line: 638, column: 72, scope: !2519)
!2523 = !DILocation(line: 638, column: 44, scope: !2519)
!2524 = !DILocation(line: 638, column: 80, scope: !2519)
!2525 = !DILocation(line: 638, column: 7, scope: !2496)
!2526 = !DILocation(line: 639, column: 5, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2519, file: !24, line: 638, column: 85)
!2528 = !DILocation(line: 639, column: 11, scope: !2527)
!2529 = !DILocation(line: 640, column: 5, scope: !2527)
!2530 = !DILocation(line: 643, column: 31, scope: !2496)
!2531 = !DILocation(line: 643, column: 41, scope: !2496)
!2532 = !DILocation(line: 643, column: 13, scope: !2496)
!2533 = !DILocation(line: 643, column: 11, scope: !2496)
!2534 = !DILocation(line: 644, column: 8, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2496, file: !24, line: 644, column: 7)
!2536 = !DILocation(line: 644, column: 7, scope: !2496)
!2537 = !DILocation(line: 645, column: 5, scope: !2535)
!2538 = !DILocation(line: 646, column: 7, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2496, file: !24, line: 646, column: 7)
!2540 = !DILocation(line: 646, column: 13, scope: !2539)
!2541 = !DILocation(line: 646, column: 7, scope: !2496)
!2542 = !DILocation(line: 647, column: 5, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2539, file: !24, line: 646, column: 38)
!2544 = !DILocation(line: 647, column: 11, scope: !2543)
!2545 = !DILocation(line: 648, column: 5, scope: !2543)
!2546 = !DILocation(line: 651, column: 7, scope: !2509)
!2547 = !DILocation(line: 651, column: 17, scope: !2509)
!2548 = !DILocation(line: 651, column: 31, scope: !2509)
!2549 = !{!830, !797, i64 624}
!2550 = !DILocation(line: 651, column: 7, scope: !2496)
!2551 = !DILocation(line: 652, column: 12, scope: !2509)
!2552 = !DILocation(line: 652, column: 22, scope: !2509)
!2553 = !DILocation(line: 652, column: 36, scope: !2509)
!2554 = !DILocation(line: 652, column: 50, scope: !2509)
!2555 = !DILocation(line: 652, column: 60, scope: !2509)
!2556 = !DILocation(line: 652, column: 65, scope: !2509)
!2557 = !DILocation(line: 652, column: 74, scope: !2509)
!2558 = !DILocation(line: 652, column: 82, scope: !2509)
!2559 = !DILocation(line: 652, column: 5, scope: !2509)
!2560 = !DILocation(line: 653, column: 12, scope: !2508)
!2561 = !DILocation(line: 653, column: 22, scope: !2508)
!2562 = !DILocation(line: 653, column: 36, scope: !2508)
!2563 = !DILocation(line: 653, column: 12, scope: !2509)
!2564 = !DILocation(line: 654, column: 21, scope: !2507)
!2565 = !DILocation(line: 654, column: 31, scope: !2507)
!2566 = !DILocation(line: 654, column: 9, scope: !2507)
!2567 = !DILocation(line: 654, column: 7, scope: !2507)
!2568 = !DILocation(line: 655, column: 10, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2507, file: !24, line: 655, column: 9)
!2570 = !DILocation(line: 655, column: 9, scope: !2507)
!2571 = !DILocation(line: 656, column: 7, scope: !2569)
!2572 = !DILocation(line: 657, column: 9, scope: !2506)
!2573 = !DILocation(line: 657, column: 19, scope: !2506)
!2574 = !DILocation(line: 657, column: 33, scope: !2506)
!2575 = !DILocation(line: 657, column: 50, scope: !2506)
!2576 = !DILocation(line: 657, column: 60, scope: !2506)
!2577 = !DILocation(line: 657, column: 63, scope: !2506)
!2578 = !DILocation(line: 657, column: 68, scope: !2506)
!2579 = !DILocation(line: 657, column: 77, scope: !2506)
!2580 = !DILocation(line: 657, column: 85, scope: !2506)
!2581 = !DILocation(line: 657, column: 92, scope: !2506)
!2582 = !DILocation(line: 657, column: 95, scope: !2506)
!2583 = !DILocation(line: 657, column: 101, scope: !2506)
!2584 = !DILocation(line: 657, column: 9, scope: !2507)
!2585 = !DILocation(line: 658, column: 7, scope: !2505)
!2586 = !DILocation(line: 658, column: 11, scope: !2505)
!2587 = !DILocation(line: 658, column: 19, scope: !2505)
!2588 = !DILocation(line: 659, column: 12, scope: !2505)
!2589 = !DILocation(line: 659, column: 7, scope: !2505)
!2590 = !DILocation(line: 660, column: 15, scope: !2505)
!2591 = !DILocation(line: 660, column: 7, scope: !2505)
!2592 = !DILocation(line: 660, column: 13, scope: !2505)
!2593 = !DILocation(line: 661, column: 7, scope: !2505)
!2594 = !DILocation(line: 662, column: 5, scope: !2506)
!2595 = !DILocation(line: 663, column: 12, scope: !2507)
!2596 = !DILocation(line: 663, column: 5, scope: !2507)
!2597 = !DILocation(line: 665, column: 5, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2508, file: !24, line: 664, column: 10)
!2599 = !DILocation(line: 665, column: 11, scope: !2598)
!2600 = !DILocation(line: 668, column: 1, scope: !2496)
!2601 = !DILocation(line: 669, column: 7, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2496, file: !24, line: 669, column: 7)
!2603 = !DILocation(line: 669, column: 13, scope: !2602)
!2604 = !DILocation(line: 669, column: 7, scope: !2496)
!2605 = !DILocation(line: 671, column: 5, scope: !2602)
!2606 = !DILocation(line: 673, column: 22, scope: !2496)
!2607 = !DILocation(line: 673, column: 32, scope: !2496)
!2608 = !DILocation(line: 673, column: 10, scope: !2496)
!2609 = !DILocation(line: 673, column: 3, scope: !2496)
!2610 = !DILocation(line: 674, column: 1, scope: !2496)
!2611 = distinct !DISubprogram(name: "quo_internal_hwloc_free", scope: !24, file: !24, line: 699, type: !606, scopeLine: 700, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2612)
!2612 = !{!2613, !2614, !2615}
!2613 = !DILocalVariable(name: "topology", arg: 1, scope: !2611, file: !24, line: 699, type: !350)
!2614 = !DILocalVariable(name: "addr", arg: 2, scope: !2611, file: !24, line: 699, type: !339)
!2615 = !DILocalVariable(name: "len", arg: 3, scope: !2611, file: !24, line: 699, type: !509)
!2616 = !DILocation(line: 699, column: 29, scope: !2611)
!2617 = !DILocation(line: 699, column: 45, scope: !2611)
!2618 = !DILocation(line: 699, column: 58, scope: !2611)
!2619 = !DILocation(line: 701, column: 7, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2611, file: !24, line: 701, column: 7)
!2621 = !DILocation(line: 701, column: 17, scope: !2620)
!2622 = !DILocation(line: 701, column: 31, scope: !2620)
!2623 = !{!830, !797, i64 632}
!2624 = !DILocation(line: 701, column: 7, scope: !2611)
!2625 = !DILocation(line: 702, column: 12, scope: !2620)
!2626 = !DILocation(line: 702, column: 22, scope: !2620)
!2627 = !DILocation(line: 702, column: 36, scope: !2620)
!2628 = !DILocation(line: 702, column: 49, scope: !2620)
!2629 = !DILocation(line: 702, column: 59, scope: !2620)
!2630 = !DILocation(line: 702, column: 65, scope: !2620)
!2631 = !DILocation(line: 702, column: 5, scope: !2620)
!2632 = !DILocation(line: 703, column: 26, scope: !2611)
!2633 = !DILocation(line: 703, column: 36, scope: !2611)
!2634 = !DILocation(line: 703, column: 42, scope: !2611)
!2635 = !DILocation(line: 703, column: 10, scope: !2611)
!2636 = !DILocation(line: 703, column: 3, scope: !2611)
!2637 = !DILocation(line: 704, column: 1, scope: !2611)
!2638 = distinct !DISubprogram(name: "quo_internal_hwloc_set_native_binding_hooks", scope: !24, file: !24, line: 840, type: !2639, scopeLine: 841, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2643)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{null, !2641, !2642}
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!2643 = !{!2644, !2645}
!2644 = !DILocalVariable(name: "hooks", arg: 1, scope: !2638, file: !24, line: 840, type: !2641)
!2645 = !DILocalVariable(name: "support", arg: 2, scope: !2638, file: !24, line: 840, type: !2642)
!2646 = !DILocation(line: 840, column: 60, scope: !2638)
!2647 = !DILocation(line: 840, column: 98, scope: !2638)
!2648 = !DILocation(line: 843, column: 29, scope: !2638)
!2649 = !DILocation(line: 843, column: 36, scope: !2638)
!2650 = !DILocation(line: 843, column: 5, scope: !2638)
!2651 = !DILocation(line: 877, column: 1, scope: !2638)
!2652 = !DISubprogram(name: "quo_internal_hwloc_set_linuxfs_hooks", scope: !353, file: !353, line: 270, type: !2639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2653 = distinct !DISubprogram(name: "quo_internal_hwloc_set_binding_hooks", scope: !24, file: !24, line: 881, type: !2654, scopeLine: 882, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2656)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{null, !351}
!2656 = !{!2657}
!2657 = !DILocalVariable(name: "topology", arg: 1, scope: !2653, file: !24, line: 881, type: !351)
!2658 = !DILocation(line: 881, column: 48, scope: !2653)
!2659 = !DILocation(line: 883, column: 7, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2653, file: !24, line: 883, column: 7)
!2661 = !DILocation(line: 883, column: 17, scope: !2660)
!2662 = !{!830, !803, i64 200}
!2663 = !DILocation(line: 883, column: 7, scope: !2653)
!2664 = !DILocation(line: 884, column: 37, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2660, file: !24, line: 883, column: 32)
!2666 = !DILocation(line: 884, column: 47, scope: !2665)
!2667 = !DILocation(line: 884, column: 63, scope: !2665)
!2668 = !DILocation(line: 884, column: 73, scope: !2665)
!2669 = !DILocation(line: 884, column: 5, scope: !2665)
!2670 = !DILocation(line: 886, column: 3, scope: !2665)
!2671 = !DILocation(line: 888, column: 28, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2660, file: !24, line: 886, column: 10)
!2673 = !DILocation(line: 888, column: 38, scope: !2672)
!2674 = !DILocation(line: 888, column: 54, scope: !2672)
!2675 = !DILocation(line: 888, column: 64, scope: !2672)
!2676 = !DILocation(line: 888, column: 5, scope: !2672)
!2677 = !DILocation(line: 897, column: 7, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2653, file: !24, line: 897, column: 7)
!2679 = !DILocation(line: 897, column: 17, scope: !2678)
!2680 = !DILocation(line: 897, column: 7, scope: !2653)
!2681 = !DILocation(line: 901, column: 5, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !24, line: 901, column: 5)
!2683 = distinct !DILexicalBlock(scope: !2678, file: !24, line: 897, column: 32)
!2684 = !DILocation(line: 901, column: 5, scope: !2683)
!2685 = !{!830, !797, i64 656}
!2686 = !{!2687, !798, i64 0}
!2687 = !{!"quo_internal_hwloc_topology_cpubind_support", !798, i64 0, !798, i64 1, !798, i64 2, !798, i64 3, !798, i64 4, !798, i64 5, !798, i64 6, !798, i64 7, !798, i64 8, !798, i64 9, !798, i64 10}
!2688 = !DILocation(line: 902, column: 5, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2683, file: !24, line: 902, column: 5)
!2690 = !DILocation(line: 902, column: 5, scope: !2683)
!2691 = !{!2687, !798, i64 1}
!2692 = !DILocation(line: 903, column: 5, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2683, file: !24, line: 903, column: 5)
!2694 = !DILocation(line: 903, column: 5, scope: !2683)
!2695 = !{!2687, !798, i64 2}
!2696 = !DILocation(line: 904, column: 5, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2683, file: !24, line: 904, column: 5)
!2698 = !DILocation(line: 904, column: 5, scope: !2683)
!2699 = !{!2687, !798, i64 3}
!2700 = !DILocation(line: 905, column: 5, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2683, file: !24, line: 905, column: 5)
!2702 = !DILocation(line: 905, column: 5, scope: !2683)
!2703 = !{!2687, !798, i64 4}
!2704 = !DILocation(line: 906, column: 5, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2683, file: !24, line: 906, column: 5)
!2706 = !DILocation(line: 906, column: 5, scope: !2683)
!2707 = !{!2687, !798, i64 5}
!2708 = !DILocation(line: 908, column: 5, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2683, file: !24, line: 908, column: 5)
!2710 = !DILocation(line: 908, column: 5, scope: !2683)
!2711 = !{!2687, !798, i64 6}
!2712 = !DILocation(line: 909, column: 5, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2683, file: !24, line: 909, column: 5)
!2714 = !DILocation(line: 909, column: 5, scope: !2683)
!2715 = !{!2687, !798, i64 7}
!2716 = !DILocation(line: 911, column: 5, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2683, file: !24, line: 911, column: 5)
!2718 = !DILocation(line: 911, column: 5, scope: !2683)
!2719 = !{!2687, !798, i64 8}
!2720 = !DILocation(line: 912, column: 5, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2683, file: !24, line: 912, column: 5)
!2722 = !DILocation(line: 912, column: 5, scope: !2683)
!2723 = !{!2687, !798, i64 9}
!2724 = !DILocation(line: 913, column: 5, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2683, file: !24, line: 913, column: 5)
!2726 = !DILocation(line: 913, column: 5, scope: !2683)
!2727 = !{!2687, !798, i64 10}
!2728 = !DILocation(line: 914, column: 5, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2683, file: !24, line: 914, column: 5)
!2730 = !DILocation(line: 914, column: 5, scope: !2683)
!2731 = !{!830, !797, i64 664}
!2732 = !{!2733, !798, i64 0}
!2733 = !{!"quo_internal_hwloc_topology_membind_support", !798, i64 0, !798, i64 1, !798, i64 2, !798, i64 3, !798, i64 4, !798, i64 5, !798, i64 6, !798, i64 7, !798, i64 8, !798, i64 9, !798, i64 10, !798, i64 11, !798, i64 12, !798, i64 13, !798, i64 14}
!2734 = !DILocation(line: 915, column: 5, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2683, file: !24, line: 915, column: 5)
!2736 = !DILocation(line: 915, column: 5, scope: !2683)
!2737 = !{!2733, !798, i64 1}
!2738 = !DILocation(line: 916, column: 5, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2683, file: !24, line: 916, column: 5)
!2740 = !DILocation(line: 916, column: 5, scope: !2683)
!2741 = !{!2733, !798, i64 4}
!2742 = !DILocation(line: 917, column: 5, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2683, file: !24, line: 917, column: 5)
!2744 = !DILocation(line: 917, column: 5, scope: !2683)
!2745 = !{!2733, !798, i64 5}
!2746 = !DILocation(line: 918, column: 5, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2683, file: !24, line: 918, column: 5)
!2748 = !DILocation(line: 918, column: 5, scope: !2683)
!2749 = !{!2733, !798, i64 2}
!2750 = !DILocation(line: 919, column: 5, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2683, file: !24, line: 919, column: 5)
!2752 = !DILocation(line: 919, column: 5, scope: !2683)
!2753 = !{!2733, !798, i64 3}
!2754 = !DILocation(line: 920, column: 5, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2683, file: !24, line: 920, column: 5)
!2756 = !DILocation(line: 920, column: 5, scope: !2683)
!2757 = !{!2733, !798, i64 6}
!2758 = !DILocation(line: 921, column: 5, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2683, file: !24, line: 921, column: 5)
!2760 = !DILocation(line: 921, column: 5, scope: !2683)
!2761 = !{!2733, !798, i64 7}
!2762 = !DILocation(line: 922, column: 5, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2683, file: !24, line: 922, column: 5)
!2764 = !DILocation(line: 922, column: 5, scope: !2683)
!2765 = !{!2733, !798, i64 14}
!2766 = !DILocation(line: 923, column: 5, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2683, file: !24, line: 923, column: 5)
!2768 = !DILocation(line: 923, column: 5, scope: !2683)
!2769 = !{!2733, !798, i64 8}
!2770 = !DILocation(line: 924, column: 3, scope: !2683)
!2771 = !DILocation(line: 925, column: 1, scope: !2653)
!2772 = distinct !DISubprogram(name: "hwloc_set_dummy_hooks", scope: !24, file: !24, line: 809, type: !2639, scopeLine: 811, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2773)
!2773 = !{!2774, !2775}
!2774 = !DILocalVariable(name: "hooks", arg: 1, scope: !2772, file: !24, line: 809, type: !2641)
!2775 = !DILocalVariable(name: "support", arg: 2, scope: !2772, file: !24, line: 810, type: !2642)
!2776 = !DILocation(line: 809, column: 63, scope: !2772)
!2777 = !DILocation(line: 810, column: 38, scope: !2772)
!2778 = !DILocation(line: 812, column: 3, scope: !2772)
!2779 = !DILocation(line: 812, column: 10, scope: !2772)
!2780 = !DILocation(line: 812, column: 31, scope: !2772)
!2781 = !{!832, !797, i64 0}
!2782 = !DILocation(line: 813, column: 3, scope: !2772)
!2783 = !DILocation(line: 813, column: 10, scope: !2772)
!2784 = !DILocation(line: 813, column: 31, scope: !2772)
!2785 = !{!832, !797, i64 8}
!2786 = !DILocation(line: 814, column: 3, scope: !2772)
!2787 = !DILocation(line: 814, column: 10, scope: !2772)
!2788 = !DILocation(line: 814, column: 33, scope: !2772)
!2789 = !{!832, !797, i64 16}
!2790 = !DILocation(line: 815, column: 3, scope: !2772)
!2791 = !DILocation(line: 815, column: 10, scope: !2772)
!2792 = !DILocation(line: 815, column: 33, scope: !2772)
!2793 = !{!832, !797, i64 24}
!2794 = !DILocation(line: 816, column: 3, scope: !2772)
!2795 = !DILocation(line: 816, column: 10, scope: !2772)
!2796 = !DILocation(line: 816, column: 27, scope: !2772)
!2797 = !{!832, !797, i64 32}
!2798 = !DILocation(line: 817, column: 3, scope: !2772)
!2799 = !DILocation(line: 817, column: 10, scope: !2772)
!2800 = !DILocation(line: 817, column: 27, scope: !2772)
!2801 = !{!832, !797, i64 40}
!2802 = !DILocation(line: 819, column: 3, scope: !2772)
!2803 = !DILocation(line: 819, column: 10, scope: !2772)
!2804 = !DILocation(line: 819, column: 29, scope: !2772)
!2805 = !{!832, !797, i64 48}
!2806 = !DILocation(line: 820, column: 3, scope: !2772)
!2807 = !DILocation(line: 820, column: 10, scope: !2772)
!2808 = !DILocation(line: 820, column: 29, scope: !2772)
!2809 = !{!832, !797, i64 56}
!2810 = !DILocation(line: 822, column: 3, scope: !2772)
!2811 = !DILocation(line: 822, column: 10, scope: !2772)
!2812 = !DILocation(line: 822, column: 41, scope: !2772)
!2813 = !{!832, !797, i64 64}
!2814 = !DILocation(line: 823, column: 3, scope: !2772)
!2815 = !DILocation(line: 823, column: 10, scope: !2772)
!2816 = !DILocation(line: 823, column: 43, scope: !2772)
!2817 = !{!832, !797, i64 72}
!2818 = !DILocation(line: 824, column: 3, scope: !2772)
!2819 = !DILocation(line: 824, column: 10, scope: !2772)
!2820 = !DILocation(line: 824, column: 37, scope: !2772)
!2821 = !{!832, !797, i64 80}
!2822 = !DILocation(line: 826, column: 3, scope: !2772)
!2823 = !DILocation(line: 826, column: 10, scope: !2772)
!2824 = !DILocation(line: 826, column: 31, scope: !2772)
!2825 = !{!832, !797, i64 88}
!2826 = !DILocation(line: 827, column: 3, scope: !2772)
!2827 = !DILocation(line: 827, column: 10, scope: !2772)
!2828 = !DILocation(line: 827, column: 31, scope: !2772)
!2829 = !{!832, !797, i64 96}
!2830 = !DILocation(line: 828, column: 3, scope: !2772)
!2831 = !DILocation(line: 828, column: 10, scope: !2772)
!2832 = !DILocation(line: 828, column: 33, scope: !2772)
!2833 = !{!832, !797, i64 104}
!2834 = !DILocation(line: 829, column: 3, scope: !2772)
!2835 = !DILocation(line: 829, column: 10, scope: !2772)
!2836 = !DILocation(line: 829, column: 33, scope: !2772)
!2837 = !{!832, !797, i64 112}
!2838 = !DILocation(line: 830, column: 3, scope: !2772)
!2839 = !DILocation(line: 830, column: 10, scope: !2772)
!2840 = !DILocation(line: 830, column: 27, scope: !2772)
!2841 = !{!832, !797, i64 120}
!2842 = !DILocation(line: 831, column: 3, scope: !2772)
!2843 = !DILocation(line: 831, column: 10, scope: !2772)
!2844 = !DILocation(line: 831, column: 27, scope: !2772)
!2845 = !{!832, !797, i64 128}
!2846 = !DILocation(line: 832, column: 3, scope: !2772)
!2847 = !DILocation(line: 832, column: 10, scope: !2772)
!2848 = !DILocation(line: 832, column: 27, scope: !2772)
!2849 = !{!832, !797, i64 136}
!2850 = !DILocation(line: 833, column: 3, scope: !2772)
!2851 = !DILocation(line: 833, column: 10, scope: !2772)
!2852 = !DILocation(line: 833, column: 27, scope: !2772)
!2853 = !{!832, !797, i64 144}
!2854 = !DILocation(line: 834, column: 3, scope: !2772)
!2855 = !DILocation(line: 834, column: 10, scope: !2772)
!2856 = !DILocation(line: 834, column: 31, scope: !2772)
!2857 = !{!832, !797, i64 152}
!2858 = !DILocation(line: 835, column: 3, scope: !2772)
!2859 = !DILocation(line: 835, column: 10, scope: !2772)
!2860 = !DILocation(line: 835, column: 24, scope: !2772)
!2861 = !{!832, !797, i64 168}
!2862 = !DILocation(line: 836, column: 3, scope: !2772)
!2863 = !DILocation(line: 836, column: 10, scope: !2772)
!2864 = !DILocation(line: 836, column: 23, scope: !2772)
!2865 = !{!832, !797, i64 176}
!2866 = !DILocation(line: 837, column: 1, scope: !2772)
!2867 = !DISubprogram(name: "quo_internal_hwloc_topology_get_topology_cpuset", scope: !2, file: !2, line: 926, type: !2868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!530, !350}
!2870 = !DISubprogram(name: "quo_internal_hwloc_topology_get_complete_cpuset", scope: !2, file: !2, line: 912, type: !2868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2871 = !DISubprogram(name: "quo_internal_hwloc_bitmap_iszero", scope: !475, file: !475, line: 296, type: !2872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!75, !531}
!2874 = !DISubprogram(name: "quo_internal_hwloc_bitmap_isincluded", scope: !475, file: !475, line: 440, type: !2875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!75, !531, !531}
!2877 = distinct !DISubprogram(name: "hwloc__check_membind_policy", scope: !24, file: !24, line: 284, type: !2878, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2880)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!75, !566}
!2880 = !{!2881}
!2881 = !DILocalVariable(name: "policy", arg: 1, scope: !2877, file: !24, line: 284, type: !566)
!2882 = !DILocation(line: 284, column: 78, scope: !2877)
!2883 = !DILocation(line: 286, column: 7, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2877, file: !24, line: 286, column: 7)
!2885 = !DILocation(line: 286, column: 14, scope: !2884)
!2886 = !DILocation(line: 287, column: 7, scope: !2884)
!2887 = !DILocation(line: 287, column: 10, scope: !2884)
!2888 = !DILocation(line: 287, column: 17, scope: !2884)
!2889 = !DILocation(line: 288, column: 7, scope: !2884)
!2890 = !DILocation(line: 288, column: 10, scope: !2884)
!2891 = !DILocation(line: 288, column: 17, scope: !2884)
!2892 = !DILocation(line: 289, column: 7, scope: !2884)
!2893 = !DILocation(line: 289, column: 10, scope: !2884)
!2894 = !DILocation(line: 289, column: 17, scope: !2884)
!2895 = !DILocation(line: 290, column: 7, scope: !2884)
!2896 = !DILocation(line: 290, column: 10, scope: !2884)
!2897 = !DILocation(line: 290, column: 17, scope: !2884)
!2898 = !DILocation(line: 286, column: 7, scope: !2877)
!2899 = !DILocation(line: 291, column: 5, scope: !2884)
!2900 = !DILocation(line: 292, column: 3, scope: !2877)
!2901 = !DILocation(line: 293, column: 1, scope: !2877)
!2902 = distinct !DISubprogram(name: "hwloc_fix_membind", scope: !24, file: !24, line: 237, type: !2903, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2905)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!565, !350, !565}
!2905 = !{!2906, !2907, !2908, !2909}
!2906 = !DILocalVariable(name: "topology", arg: 1, scope: !2902, file: !24, line: 237, type: !350)
!2907 = !DILocalVariable(name: "nodeset", arg: 2, scope: !2902, file: !24, line: 237, type: !565)
!2908 = !DILocalVariable(name: "topology_nodeset", scope: !2902, file: !24, line: 239, type: !531)
!2909 = !DILocalVariable(name: "complete_nodeset", scope: !2902, file: !24, line: 240, type: !531)
!2910 = !DILocation(line: 237, column: 36, scope: !2902)
!2911 = !DILocation(line: 237, column: 68, scope: !2902)
!2912 = !DILocation(line: 239, column: 3, scope: !2902)
!2913 = !DILocation(line: 239, column: 24, scope: !2902)
!2914 = !DILocation(line: 239, column: 79, scope: !2902)
!2915 = !DILocation(line: 239, column: 43, scope: !2902)
!2916 = !DILocation(line: 240, column: 3, scope: !2902)
!2917 = !DILocation(line: 240, column: 24, scope: !2902)
!2918 = !DILocation(line: 240, column: 79, scope: !2902)
!2919 = !DILocation(line: 240, column: 43, scope: !2902)
!2920 = !DILocation(line: 242, column: 27, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2902, file: !24, line: 242, column: 7)
!2922 = !DILocation(line: 242, column: 7, scope: !2921)
!2923 = !DILocation(line: 242, column: 7, scope: !2902)
!2924 = !DILocation(line: 243, column: 5, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2921, file: !24, line: 242, column: 37)
!2926 = !DILocation(line: 243, column: 11, scope: !2925)
!2927 = !DILocation(line: 244, column: 5, scope: !2925)
!2928 = !DILocation(line: 247, column: 32, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2902, file: !24, line: 247, column: 7)
!2930 = !DILocation(line: 247, column: 41, scope: !2929)
!2931 = !DILocation(line: 247, column: 8, scope: !2929)
!2932 = !DILocation(line: 247, column: 7, scope: !2902)
!2933 = !DILocation(line: 248, column: 5, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2929, file: !24, line: 247, column: 60)
!2935 = !DILocation(line: 248, column: 11, scope: !2934)
!2936 = !DILocation(line: 249, column: 5, scope: !2934)
!2937 = !DILocation(line: 252, column: 31, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2902, file: !24, line: 252, column: 7)
!2939 = !DILocation(line: 252, column: 49, scope: !2938)
!2940 = !DILocation(line: 252, column: 7, scope: !2938)
!2941 = !DILocation(line: 252, column: 7, scope: !2902)
!2942 = !DILocation(line: 253, column: 12, scope: !2938)
!2943 = !DILocation(line: 253, column: 5, scope: !2938)
!2944 = !DILocation(line: 255, column: 10, scope: !2902)
!2945 = !DILocation(line: 255, column: 3, scope: !2902)
!2946 = !DILocation(line: 256, column: 1, scope: !2902)
!2947 = !DISubprogram(name: "quo_internal_hwloc_topology_get_topology_nodeset", scope: !2, file: !2, line: 971, type: !2948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!565, !350}
!2950 = !DISubprogram(name: "quo_internal_hwloc_topology_get_complete_nodeset", scope: !2, file: !2, line: 957, type: !2948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2951 = !DISubprogram(name: "quo_internal_hwloc_bitmap_copy", scope: !475, file: !475, line: 102, type: !2952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!75, !474, !531}
!2954 = distinct !DISubprogram(name: "quo_internal_hwloc_cpuset_to_nodeset", scope: !2, file: !2, line: 1012, type: !2955, scopeLine: 1013, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2957)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!75, !350, !530, !480}
!2957 = !{!2958, !2959, !2960, !2961, !2962}
!2958 = !DILocalVariable(name: "topology", arg: 1, scope: !2954, file: !2, line: 1012, type: !350)
!2959 = !DILocalVariable(name: "_cpuset", arg: 2, scope: !2954, file: !2, line: 1012, type: !530)
!2960 = !DILocalVariable(name: "nodeset", arg: 3, scope: !2954, file: !2, line: 1012, type: !480)
!2961 = !DILocalVariable(name: "depth", scope: !2954, file: !2, line: 1014, type: !75)
!2962 = !DILocalVariable(name: "obj", scope: !2954, file: !2, line: 1015, type: !685)
!2963 = !DILocation(line: 1012, column: 42, scope: !2954)
!2964 = !DILocation(line: 1012, column: 73, scope: !2954)
!2965 = !DILocation(line: 1012, column: 98, scope: !2954)
!2966 = !DILocation(line: 1014, column: 2, scope: !2954)
!2967 = !DILocation(line: 1014, column: 6, scope: !2954)
!2968 = !DILocation(line: 1014, column: 35, scope: !2954)
!2969 = !DILocation(line: 1014, column: 14, scope: !2954)
!2970 = !DILocation(line: 1015, column: 2, scope: !2954)
!2971 = !DILocation(line: 1015, column: 14, scope: !2954)
!2972 = !DILocation(line: 1016, column: 2, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !2, line: 1016, column: 2)
!2974 = distinct !DILexicalBlock(scope: !2954, file: !2, line: 1016, column: 2)
!2975 = !DILocation(line: 1016, column: 2, scope: !2974)
!2976 = !DILocation(line: 1017, column: 20, scope: !2954)
!2977 = !DILocation(line: 1017, column: 2, scope: !2954)
!2978 = !DILocation(line: 1018, column: 2, scope: !2954)
!2979 = !DILocation(line: 1018, column: 60, scope: !2954)
!2980 = !DILocation(line: 1018, column: 70, scope: !2954)
!2981 = !DILocation(line: 1018, column: 79, scope: !2954)
!2982 = !DILocation(line: 1018, column: 86, scope: !2954)
!2983 = !DILocation(line: 1018, column: 16, scope: !2954)
!2984 = !DILocation(line: 1018, column: 14, scope: !2954)
!2985 = !DILocation(line: 1018, column: 92, scope: !2954)
!2986 = !DILocation(line: 1019, column: 24, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2954, file: !2, line: 1019, column: 7)
!2988 = !DILocation(line: 1019, column: 33, scope: !2987)
!2989 = !DILocation(line: 1019, column: 38, scope: !2987)
!2990 = !DILocation(line: 1019, column: 7, scope: !2987)
!2991 = !DILocation(line: 1019, column: 48, scope: !2987)
!2992 = !DILocation(line: 1019, column: 7, scope: !2954)
!2993 = !DILocation(line: 1020, column: 4, scope: !2987)
!2994 = distinct !{!2994, !2978, !2995, !1792}
!2995 = !DILocation(line: 1020, column: 12, scope: !2954)
!2996 = !DILocation(line: 1021, column: 2, scope: !2954)
!2997 = !DILocation(line: 1022, column: 1, scope: !2954)
!2998 = !DISubprogram(name: "quo_internal_hwloc_get_type_depth", scope: !27, file: !27, line: 794, type: !2999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!75, !350, !367}
!3001 = !DISubprogram(name: "__assert_fail", scope: !3002, file: !3002, line: 69, type: !3003, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3002 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!3003 = !DISubroutineType(types: !3004)
!3004 = !{null, !666, !666, !28, !666}
!3005 = !DISubprogram(name: "quo_internal_hwloc_bitmap_zero", scope: !475, file: !475, line: 185, type: !1583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3006 = distinct !DISubprogram(name: "quo_internal_hwloc_get_next_obj_covering_cpuset_by_depth", scope: !2, file: !2, line: 321, type: !3007, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3009)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!685, !350, !530, !75, !685}
!3009 = !{!3010, !3011, !3012, !3013, !3014}
!3010 = !DILocalVariable(name: "topology", arg: 1, scope: !3006, file: !2, line: 321, type: !350)
!3011 = !DILocalVariable(name: "set", arg: 2, scope: !3006, file: !2, line: 321, type: !530)
!3012 = !DILocalVariable(name: "depth", arg: 3, scope: !3006, file: !2, line: 322, type: !75)
!3013 = !DILocalVariable(name: "prev", arg: 4, scope: !3006, file: !2, line: 322, type: !685)
!3014 = !DILocalVariable(name: "next", scope: !3006, file: !2, line: 324, type: !685)
!3015 = !DILocation(line: 321, column: 62, scope: !3006)
!3016 = !DILocation(line: 321, column: 93, scope: !3006)
!3017 = !DILocation(line: 322, column: 14, scope: !3006)
!3018 = !DILocation(line: 322, column: 33, scope: !3006)
!3019 = !DILocation(line: 324, column: 3, scope: !3006)
!3020 = !DILocation(line: 324, column: 15, scope: !3006)
!3021 = !DILocation(line: 324, column: 50, scope: !3006)
!3022 = !DILocation(line: 324, column: 60, scope: !3006)
!3023 = !DILocation(line: 324, column: 67, scope: !3006)
!3024 = !DILocation(line: 324, column: 22, scope: !3006)
!3025 = !DILocation(line: 325, column: 8, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3006, file: !2, line: 325, column: 7)
!3027 = !DILocation(line: 325, column: 7, scope: !3006)
!3028 = !DILocation(line: 326, column: 5, scope: !3026)
!3029 = !DILocation(line: 327, column: 3, scope: !3006)
!3030 = !DILocation(line: 327, column: 10, scope: !3006)
!3031 = !DILocation(line: 327, column: 15, scope: !3006)
!3032 = !DILocation(line: 327, column: 43, scope: !3006)
!3033 = !DILocation(line: 327, column: 48, scope: !3006)
!3034 = !DILocation(line: 327, column: 54, scope: !3006)
!3035 = !DILocation(line: 327, column: 19, scope: !3006)
!3036 = !DILocation(line: 327, column: 18, scope: !3006)
!3037 = !DILocation(line: 0, scope: !3006)
!3038 = !DILocation(line: 328, column: 12, scope: !3006)
!3039 = !DILocation(line: 328, column: 18, scope: !3006)
!3040 = !{!1776, !797, i64 56}
!3041 = !DILocation(line: 328, column: 10, scope: !3006)
!3042 = distinct !{!3042, !3029, !3039, !1792}
!3043 = !DILocation(line: 329, column: 10, scope: !3006)
!3044 = !DILocation(line: 329, column: 3, scope: !3006)
!3045 = !DILocation(line: 330, column: 1, scope: !3006)
!3046 = !DISubprogram(name: "quo_internal_hwloc_bitmap_set", scope: !475, file: !475, line: 211, type: !3047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!75, !474, !28}
!3049 = distinct !DISubprogram(name: "quo_internal_hwloc_get_next_obj_by_depth", scope: !3050, file: !3050, line: 85, type: !3051, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3053)
!3050 = !DIFile(filename: "include/hwloc/inlines.h", directory: "/local-ssd/libquo-a5d64skrddtcir6td6wgkbqasktcbifa-build/aidengro/spack-stage-libquo-1.3.1-a5d64skrddtcir6td6wgkbqasktcbifa/spack-src/src/hwloc", checksumkind: CSK_MD5, checksum: "c5c0d234b4f53cfc5765c6cd1e0636f8")
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!685, !350, !75, !685}
!3053 = !{!3054, !3055, !3056}
!3054 = !DILocalVariable(name: "topology", arg: 1, scope: !3049, file: !3050, line: 85, type: !350)
!3055 = !DILocalVariable(name: "depth", arg: 2, scope: !3049, file: !3050, line: 85, type: !75)
!3056 = !DILocalVariable(name: "prev", arg: 3, scope: !3049, file: !3050, line: 85, type: !685)
!3057 = !DILocation(line: 85, column: 47, scope: !3049)
!3058 = !DILocation(line: 85, column: 61, scope: !3049)
!3059 = !DILocation(line: 85, column: 80, scope: !3049)
!3060 = !DILocation(line: 87, column: 8, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3049, file: !3050, line: 87, column: 7)
!3062 = !DILocation(line: 87, column: 7, scope: !3049)
!3063 = !DILocation(line: 88, column: 36, scope: !3061)
!3064 = !DILocation(line: 88, column: 46, scope: !3061)
!3065 = !DILocation(line: 88, column: 12, scope: !3061)
!3066 = !DILocation(line: 88, column: 5, scope: !3061)
!3067 = !DILocation(line: 89, column: 7, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3049, file: !3050, line: 89, column: 7)
!3069 = !DILocation(line: 89, column: 13, scope: !3068)
!3070 = !{!1776, !803, i64 48}
!3071 = !DILocation(line: 89, column: 22, scope: !3068)
!3072 = !DILocation(line: 89, column: 19, scope: !3068)
!3073 = !DILocation(line: 89, column: 7, scope: !3049)
!3074 = !DILocation(line: 90, column: 5, scope: !3068)
!3075 = !DILocation(line: 91, column: 10, scope: !3049)
!3076 = !DILocation(line: 91, column: 16, scope: !3049)
!3077 = !DILocation(line: 91, column: 3, scope: !3049)
!3078 = !DILocation(line: 92, column: 1, scope: !3049)
!3079 = !DISubprogram(name: "quo_internal_hwloc_bitmap_intersects", scope: !475, file: !475, line: 432, type: !2875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3080 = !DISubprogram(name: "quo_internal_hwloc_get_obj_by_depth", scope: !27, file: !27, line: 888, type: !3081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!685, !350, !75, !28}
!3083 = !DISubprogram(name: "quo_internal_hwloc_bitmap_isset", scope: !475, file: !475, line: 290, type: !3084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!75, !531, !28}
!3086 = !DISubprogram(name: "quo_internal_hwloc_bitmap_or", scope: !475, file: !475, line: 397, type: !3087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!75, !474, !531, !531}
!3089 = distinct !DISubprogram(name: "dontset_thisproc_cpubind", scope: !24, file: !24, line: 724, type: !348, scopeLine: 725, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3090)
!3090 = !{!3091, !3092, !3093}
!3091 = !DILocalVariable(name: "topology", arg: 1, scope: !3089, file: !24, line: 724, type: !350)
!3092 = !DILocalVariable(name: "set", arg: 2, scope: !3089, file: !24, line: 724, type: !531)
!3093 = !DILocalVariable(name: "flags", arg: 3, scope: !3089, file: !24, line: 724, type: !75)
!3094 = !DILocation(line: 724, column: 54, scope: !3089)
!3095 = !DILocation(line: 724, column: 110, scope: !3089)
!3096 = !DILocation(line: 724, column: 144, scope: !3089)
!3097 = !DILocation(line: 726, column: 3, scope: !3089)
!3098 = distinct !DISubprogram(name: "dontget_thisproc_cpubind", scope: !24, file: !24, line: 728, type: !953, scopeLine: 729, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3099)
!3099 = !{!3100, !3101, !3102}
!3100 = !DILocalVariable(name: "topology", arg: 1, scope: !3098, file: !24, line: 728, type: !350)
!3101 = !DILocalVariable(name: "set", arg: 2, scope: !3098, file: !24, line: 728, type: !474)
!3102 = !DILocalVariable(name: "flags", arg: 3, scope: !3098, file: !24, line: 728, type: !75)
!3103 = !DILocation(line: 728, column: 54, scope: !3098)
!3104 = !DILocation(line: 728, column: 104, scope: !3098)
!3105 = !DILocation(line: 728, column: 113, scope: !3098)
!3106 = !DILocation(line: 730, column: 41, scope: !3098)
!3107 = !DILocation(line: 730, column: 51, scope: !3098)
!3108 = !DILocation(line: 730, column: 10, scope: !3098)
!3109 = !DILocation(line: 730, column: 3, scope: !3098)
!3110 = distinct !DISubprogram(name: "dontset_thisthread_cpubind", scope: !24, file: !24, line: 716, type: !348, scopeLine: 717, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3111)
!3111 = !{!3112, !3113, !3114}
!3112 = !DILocalVariable(name: "topology", arg: 1, scope: !3110, file: !24, line: 716, type: !350)
!3113 = !DILocalVariable(name: "set", arg: 2, scope: !3110, file: !24, line: 716, type: !531)
!3114 = !DILocalVariable(name: "flags", arg: 3, scope: !3110, file: !24, line: 716, type: !75)
!3115 = !DILocation(line: 716, column: 56, scope: !3110)
!3116 = !DILocation(line: 716, column: 112, scope: !3110)
!3117 = !DILocation(line: 716, column: 146, scope: !3110)
!3118 = !DILocation(line: 718, column: 3, scope: !3110)
!3119 = distinct !DISubprogram(name: "dontget_thisthread_cpubind", scope: !24, file: !24, line: 720, type: !953, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3120)
!3120 = !{!3121, !3122, !3123}
!3121 = !DILocalVariable(name: "topology", arg: 1, scope: !3119, file: !24, line: 720, type: !350)
!3122 = !DILocalVariable(name: "set", arg: 2, scope: !3119, file: !24, line: 720, type: !474)
!3123 = !DILocalVariable(name: "flags", arg: 3, scope: !3119, file: !24, line: 720, type: !75)
!3124 = !DILocation(line: 720, column: 56, scope: !3119)
!3125 = !DILocation(line: 720, column: 106, scope: !3119)
!3126 = !DILocation(line: 720, column: 115, scope: !3119)
!3127 = !DILocation(line: 722, column: 41, scope: !3119)
!3128 = !DILocation(line: 722, column: 51, scope: !3119)
!3129 = !DILocation(line: 722, column: 10, scope: !3119)
!3130 = !DILocation(line: 722, column: 3, scope: !3119)
!3131 = distinct !DISubprogram(name: "dontset_proc_cpubind", scope: !24, file: !24, line: 732, type: !1052, scopeLine: 733, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3132)
!3132 = !{!3133, !3134, !3135, !3136}
!3133 = !DILocalVariable(name: "topology", arg: 1, scope: !3131, file: !24, line: 732, type: !350)
!3134 = !DILocalVariable(name: "pid", arg: 2, scope: !3131, file: !24, line: 732, type: !502)
!3135 = !DILocalVariable(name: "set", arg: 3, scope: !3131, file: !24, line: 732, type: !531)
!3136 = !DILocalVariable(name: "flags", arg: 4, scope: !3131, file: !24, line: 732, type: !75)
!3137 = !DILocation(line: 732, column: 50, scope: !3131)
!3138 = !DILocation(line: 732, column: 97, scope: !3131)
!3139 = !DILocation(line: 732, column: 148, scope: !3131)
!3140 = !DILocation(line: 732, column: 182, scope: !3131)
!3141 = !DILocation(line: 734, column: 3, scope: !3131)
!3142 = distinct !DISubprogram(name: "dontget_proc_cpubind", scope: !24, file: !24, line: 736, type: !1098, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3143)
!3143 = !{!3144, !3145, !3146, !3147}
!3144 = !DILocalVariable(name: "topology", arg: 1, scope: !3142, file: !24, line: 736, type: !350)
!3145 = !DILocalVariable(name: "pid", arg: 2, scope: !3142, file: !24, line: 736, type: !502)
!3146 = !DILocalVariable(name: "cpuset", arg: 3, scope: !3142, file: !24, line: 736, type: !474)
!3147 = !DILocalVariable(name: "flags", arg: 4, scope: !3142, file: !24, line: 736, type: !75)
!3148 = !DILocation(line: 736, column: 50, scope: !3142)
!3149 = !DILocation(line: 736, column: 97, scope: !3142)
!3150 = !DILocation(line: 736, column: 142, scope: !3142)
!3151 = !DILocation(line: 736, column: 154, scope: !3142)
!3152 = !DILocation(line: 738, column: 41, scope: !3142)
!3153 = !DILocation(line: 738, column: 51, scope: !3142)
!3154 = !DILocation(line: 738, column: 10, scope: !3142)
!3155 = !DILocation(line: 738, column: 3, scope: !3142)
!3156 = distinct !DISubprogram(name: "dontset_thread_cpubind", scope: !24, file: !24, line: 741, type: !1136, scopeLine: 742, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3157)
!3157 = !{!3158, !3159, !3160, !3161}
!3158 = !DILocalVariable(name: "topology", arg: 1, scope: !3156, file: !24, line: 741, type: !350)
!3159 = !DILocalVariable(name: "tid", arg: 2, scope: !3156, file: !24, line: 741, type: !552)
!3160 = !DILocalVariable(name: "set", arg: 3, scope: !3156, file: !24, line: 741, type: !531)
!3161 = !DILocalVariable(name: "flags", arg: 4, scope: !3156, file: !24, line: 741, type: !75)
!3162 = !DILocation(line: 741, column: 52, scope: !3156)
!3163 = !DILocation(line: 741, column: 102, scope: !3156)
!3164 = !DILocation(line: 741, column: 153, scope: !3156)
!3165 = !DILocation(line: 741, column: 187, scope: !3156)
!3166 = !DILocation(line: 743, column: 3, scope: !3156)
!3167 = distinct !DISubprogram(name: "dontget_thread_cpubind", scope: !24, file: !24, line: 745, type: !1183, scopeLine: 746, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3168)
!3168 = !{!3169, !3170, !3171, !3172}
!3169 = !DILocalVariable(name: "topology", arg: 1, scope: !3167, file: !24, line: 745, type: !350)
!3170 = !DILocalVariable(name: "tid", arg: 2, scope: !3167, file: !24, line: 745, type: !552)
!3171 = !DILocalVariable(name: "cpuset", arg: 3, scope: !3167, file: !24, line: 745, type: !474)
!3172 = !DILocalVariable(name: "flags", arg: 4, scope: !3167, file: !24, line: 745, type: !75)
!3173 = !DILocation(line: 745, column: 52, scope: !3167)
!3174 = !DILocation(line: 745, column: 102, scope: !3167)
!3175 = !DILocation(line: 745, column: 147, scope: !3167)
!3176 = !DILocation(line: 745, column: 159, scope: !3167)
!3177 = !DILocation(line: 747, column: 41, scope: !3167)
!3178 = !DILocation(line: 747, column: 51, scope: !3167)
!3179 = !DILocation(line: 747, column: 10, scope: !3167)
!3180 = !DILocation(line: 747, column: 3, scope: !3167)
!3181 = distinct !DISubprogram(name: "dontset_thisproc_membind", scope: !24, file: !24, line: 758, type: !1354, scopeLine: 759, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3182)
!3182 = !{!3183, !3184, !3185, !3186}
!3183 = !DILocalVariable(name: "topology", arg: 1, scope: !3181, file: !24, line: 758, type: !350)
!3184 = !DILocalVariable(name: "set", arg: 2, scope: !3181, file: !24, line: 758, type: !531)
!3185 = !DILocalVariable(name: "policy", arg: 3, scope: !3181, file: !24, line: 758, type: !566)
!3186 = !DILocalVariable(name: "flags", arg: 4, scope: !3181, file: !24, line: 758, type: !75)
!3187 = !DILocation(line: 758, column: 54, scope: !3181)
!3188 = !DILocation(line: 758, column: 110, scope: !3181)
!3189 = !DILocation(line: 758, column: 163, scope: !3181)
!3190 = !DILocation(line: 758, column: 200, scope: !3181)
!3191 = !DILocation(line: 760, column: 3, scope: !3181)
!3192 = distinct !DISubprogram(name: "dontget_thisproc_membind", scope: !24, file: !24, line: 762, type: !1586, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3193)
!3193 = !{!3194, !3195, !3196, !3197}
!3194 = !DILocalVariable(name: "topology", arg: 1, scope: !3192, file: !24, line: 762, type: !350)
!3195 = !DILocalVariable(name: "set", arg: 2, scope: !3192, file: !24, line: 762, type: !474)
!3196 = !DILocalVariable(name: "policy", arg: 3, scope: !3192, file: !24, line: 762, type: !571)
!3197 = !DILocalVariable(name: "flags", arg: 4, scope: !3192, file: !24, line: 762, type: !75)
!3198 = !DILocation(line: 762, column: 54, scope: !3192)
!3199 = !DILocation(line: 762, column: 104, scope: !3192)
!3200 = !DILocation(line: 762, column: 134, scope: !3192)
!3201 = !DILocation(line: 762, column: 146, scope: !3192)
!3202 = !DILocation(line: 764, column: 42, scope: !3192)
!3203 = !DILocation(line: 764, column: 52, scope: !3192)
!3204 = !DILocation(line: 764, column: 57, scope: !3192)
!3205 = !DILocation(line: 764, column: 10, scope: !3192)
!3206 = !DILocation(line: 764, column: 3, scope: !3192)
!3207 = distinct !DISubprogram(name: "dontset_thisthread_membind", scope: !24, file: !24, line: 767, type: !1354, scopeLine: 768, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3208)
!3208 = !{!3209, !3210, !3211, !3212}
!3209 = !DILocalVariable(name: "topology", arg: 1, scope: !3207, file: !24, line: 767, type: !350)
!3210 = !DILocalVariable(name: "set", arg: 2, scope: !3207, file: !24, line: 767, type: !531)
!3211 = !DILocalVariable(name: "policy", arg: 3, scope: !3207, file: !24, line: 767, type: !566)
!3212 = !DILocalVariable(name: "flags", arg: 4, scope: !3207, file: !24, line: 767, type: !75)
!3213 = !DILocation(line: 767, column: 56, scope: !3207)
!3214 = !DILocation(line: 767, column: 112, scope: !3207)
!3215 = !DILocation(line: 767, column: 165, scope: !3207)
!3216 = !DILocation(line: 767, column: 202, scope: !3207)
!3217 = !DILocation(line: 769, column: 3, scope: !3207)
!3218 = distinct !DISubprogram(name: "dontget_thisthread_membind", scope: !24, file: !24, line: 771, type: !1586, scopeLine: 772, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3219)
!3219 = !{!3220, !3221, !3222, !3223}
!3220 = !DILocalVariable(name: "topology", arg: 1, scope: !3218, file: !24, line: 771, type: !350)
!3221 = !DILocalVariable(name: "set", arg: 2, scope: !3218, file: !24, line: 771, type: !474)
!3222 = !DILocalVariable(name: "policy", arg: 3, scope: !3218, file: !24, line: 771, type: !571)
!3223 = !DILocalVariable(name: "flags", arg: 4, scope: !3218, file: !24, line: 771, type: !75)
!3224 = !DILocation(line: 771, column: 56, scope: !3218)
!3225 = !DILocation(line: 771, column: 106, scope: !3218)
!3226 = !DILocation(line: 771, column: 136, scope: !3218)
!3227 = !DILocation(line: 771, column: 148, scope: !3218)
!3228 = !DILocation(line: 773, column: 42, scope: !3218)
!3229 = !DILocation(line: 773, column: 52, scope: !3218)
!3230 = !DILocation(line: 773, column: 57, scope: !3218)
!3231 = !DILocation(line: 773, column: 10, scope: !3218)
!3232 = !DILocation(line: 773, column: 3, scope: !3218)
!3233 = distinct !DISubprogram(name: "dontset_proc_membind", scope: !24, file: !24, line: 776, type: !1796, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3234)
!3234 = !{!3235, !3236, !3237, !3238, !3239}
!3235 = !DILocalVariable(name: "topology", arg: 1, scope: !3233, file: !24, line: 776, type: !350)
!3236 = !DILocalVariable(name: "pid", arg: 2, scope: !3233, file: !24, line: 776, type: !502)
!3237 = !DILocalVariable(name: "set", arg: 3, scope: !3233, file: !24, line: 776, type: !531)
!3238 = !DILocalVariable(name: "policy", arg: 4, scope: !3233, file: !24, line: 776, type: !566)
!3239 = !DILocalVariable(name: "flags", arg: 5, scope: !3233, file: !24, line: 776, type: !75)
!3240 = !DILocation(line: 776, column: 50, scope: !3233)
!3241 = !DILocation(line: 776, column: 97, scope: !3233)
!3242 = !DILocation(line: 776, column: 148, scope: !3233)
!3243 = !DILocation(line: 776, column: 201, scope: !3233)
!3244 = !DILocation(line: 776, column: 238, scope: !3233)
!3245 = !DILocation(line: 778, column: 3, scope: !3233)
!3246 = distinct !DISubprogram(name: "dontget_proc_membind", scope: !24, file: !24, line: 780, type: !1903, scopeLine: 781, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3247)
!3247 = !{!3248, !3249, !3250, !3251, !3252}
!3248 = !DILocalVariable(name: "topology", arg: 1, scope: !3246, file: !24, line: 780, type: !350)
!3249 = !DILocalVariable(name: "pid", arg: 2, scope: !3246, file: !24, line: 780, type: !502)
!3250 = !DILocalVariable(name: "set", arg: 3, scope: !3246, file: !24, line: 780, type: !474)
!3251 = !DILocalVariable(name: "policy", arg: 4, scope: !3246, file: !24, line: 780, type: !571)
!3252 = !DILocalVariable(name: "flags", arg: 5, scope: !3246, file: !24, line: 780, type: !75)
!3253 = !DILocation(line: 780, column: 50, scope: !3246)
!3254 = !DILocation(line: 780, column: 97, scope: !3246)
!3255 = !DILocation(line: 780, column: 142, scope: !3246)
!3256 = !DILocation(line: 780, column: 172, scope: !3246)
!3257 = !DILocation(line: 780, column: 184, scope: !3246)
!3258 = !DILocation(line: 782, column: 42, scope: !3246)
!3259 = !DILocation(line: 782, column: 52, scope: !3246)
!3260 = !DILocation(line: 782, column: 57, scope: !3246)
!3261 = !DILocation(line: 782, column: 10, scope: !3246)
!3262 = !DILocation(line: 782, column: 3, scope: !3246)
!3263 = distinct !DISubprogram(name: "dontset_area_membind", scope: !24, file: !24, line: 785, type: !1997, scopeLine: 786, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3264)
!3264 = !{!3265, !3266, !3267, !3268, !3269, !3270}
!3265 = !DILocalVariable(name: "topology", arg: 1, scope: !3263, file: !24, line: 785, type: !350)
!3266 = !DILocalVariable(name: "addr", arg: 2, scope: !3263, file: !24, line: 785, type: !586)
!3267 = !DILocalVariable(name: "size", arg: 3, scope: !3263, file: !24, line: 785, type: !509)
!3268 = !DILocalVariable(name: "set", arg: 4, scope: !3263, file: !24, line: 785, type: !531)
!3269 = !DILocalVariable(name: "policy", arg: 5, scope: !3263, file: !24, line: 785, type: !566)
!3270 = !DILocalVariable(name: "flags", arg: 6, scope: !3263, file: !24, line: 785, type: !75)
!3271 = !DILocation(line: 785, column: 50, scope: !3263)
!3272 = !DILocation(line: 785, column: 97, scope: !3263)
!3273 = !DILocation(line: 785, column: 135, scope: !3263)
!3274 = !DILocation(line: 785, column: 187, scope: !3263)
!3275 = !DILocation(line: 785, column: 240, scope: !3263)
!3276 = !DILocation(line: 785, column: 277, scope: !3263)
!3277 = !DILocation(line: 787, column: 3, scope: !3263)
!3278 = distinct !DISubprogram(name: "dontget_area_membind", scope: !24, file: !24, line: 789, type: !2115, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3279)
!3279 = !{!3280, !3281, !3282, !3283, !3284, !3285}
!3280 = !DILocalVariable(name: "topology", arg: 1, scope: !3278, file: !24, line: 789, type: !350)
!3281 = !DILocalVariable(name: "addr", arg: 2, scope: !3278, file: !24, line: 789, type: !586)
!3282 = !DILocalVariable(name: "size", arg: 3, scope: !3278, file: !24, line: 789, type: !509)
!3283 = !DILocalVariable(name: "set", arg: 4, scope: !3278, file: !24, line: 789, type: !474)
!3284 = !DILocalVariable(name: "policy", arg: 5, scope: !3278, file: !24, line: 789, type: !571)
!3285 = !DILocalVariable(name: "flags", arg: 6, scope: !3278, file: !24, line: 789, type: !75)
!3286 = !DILocation(line: 789, column: 50, scope: !3278)
!3287 = !DILocation(line: 789, column: 97, scope: !3278)
!3288 = !DILocation(line: 789, column: 135, scope: !3278)
!3289 = !DILocation(line: 789, column: 181, scope: !3278)
!3290 = !DILocation(line: 789, column: 211, scope: !3278)
!3291 = !DILocation(line: 789, column: 223, scope: !3278)
!3292 = !DILocation(line: 791, column: 42, scope: !3278)
!3293 = !DILocation(line: 791, column: 52, scope: !3278)
!3294 = !DILocation(line: 791, column: 57, scope: !3278)
!3295 = !DILocation(line: 791, column: 10, scope: !3278)
!3296 = !DILocation(line: 791, column: 3, scope: !3278)
!3297 = distinct !DISubprogram(name: "dontget_area_memlocation", scope: !24, file: !24, line: 793, type: !3298, scopeLine: 794, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3300)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!75, !350, !586, !509, !474, !75}
!3300 = !{!3301, !3302, !3303, !3304, !3305, !3306}
!3301 = !DILocalVariable(name: "topology", arg: 1, scope: !3297, file: !24, line: 793, type: !350)
!3302 = !DILocalVariable(name: "addr", arg: 2, scope: !3297, file: !24, line: 793, type: !586)
!3303 = !DILocalVariable(name: "size", arg: 3, scope: !3297, file: !24, line: 793, type: !509)
!3304 = !DILocalVariable(name: "set", arg: 4, scope: !3297, file: !24, line: 793, type: !474)
!3305 = !DILocalVariable(name: "flags", arg: 5, scope: !3297, file: !24, line: 793, type: !75)
!3306 = !DILocalVariable(name: "policy", scope: !3297, file: !24, line: 795, type: !566)
!3307 = !DILocation(line: 793, column: 54, scope: !3297)
!3308 = !DILocation(line: 793, column: 101, scope: !3297)
!3309 = !DILocation(line: 793, column: 139, scope: !3297)
!3310 = !DILocation(line: 793, column: 185, scope: !3297)
!3311 = !DILocation(line: 793, column: 194, scope: !3297)
!3312 = !DILocation(line: 795, column: 3, scope: !3297)
!3313 = !DILocation(line: 795, column: 26, scope: !3297)
!3314 = !DILocation(line: 796, column: 42, scope: !3297)
!3315 = !DILocation(line: 796, column: 52, scope: !3297)
!3316 = !DILocation(line: 796, column: 10, scope: !3297)
!3317 = !DILocation(line: 797, column: 1, scope: !3297)
!3318 = !DILocation(line: 796, column: 3, scope: !3297)
!3319 = distinct !DISubprogram(name: "dontalloc_membind", scope: !24, file: !24, line: 799, type: !2431, scopeLine: 800, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3320)
!3320 = !{!3321, !3322, !3323, !3324, !3325}
!3321 = !DILocalVariable(name: "topology", arg: 1, scope: !3319, file: !24, line: 799, type: !350)
!3322 = !DILocalVariable(name: "size", arg: 2, scope: !3319, file: !24, line: 799, type: !509)
!3323 = !DILocalVariable(name: "set", arg: 3, scope: !3319, file: !24, line: 799, type: !531)
!3324 = !DILocalVariable(name: "policy", arg: 4, scope: !3319, file: !24, line: 799, type: !566)
!3325 = !DILocalVariable(name: "flags", arg: 5, scope: !3319, file: !24, line: 799, type: !75)
!3326 = !DILocation(line: 799, column: 50, scope: !3319)
!3327 = !DILocation(line: 799, column: 92, scope: !3319)
!3328 = !DILocation(line: 799, column: 144, scope: !3319)
!3329 = !DILocation(line: 799, column: 197, scope: !3319)
!3330 = !DILocation(line: 799, column: 234, scope: !3319)
!3331 = !DILocation(line: 801, column: 17, scope: !3319)
!3332 = !DILocation(line: 801, column: 10, scope: !3319)
!3333 = !DILocation(line: 801, column: 3, scope: !3319)
!3334 = distinct !DISubprogram(name: "dontfree_membind", scope: !24, file: !24, line: 803, type: !606, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3335)
!3335 = !{!3336, !3337, !3338}
!3336 = !DILocalVariable(name: "topology", arg: 1, scope: !3334, file: !24, line: 803, type: !350)
!3337 = !DILocalVariable(name: "addr", arg: 2, scope: !3334, file: !24, line: 803, type: !339)
!3338 = !DILocalVariable(name: "size", arg: 3, scope: !3334, file: !24, line: 803, type: !509)
!3339 = !DILocation(line: 803, column: 46, scope: !3334)
!3340 = !DILocation(line: 803, column: 87, scope: !3334)
!3341 = !DILocation(line: 803, column: 125, scope: !3334)
!3342 = !DILocation(line: 805, column: 8, scope: !3334)
!3343 = !DILocation(line: 805, column: 3, scope: !3334)
!3344 = !DILocation(line: 806, column: 3, scope: !3334)
!3345 = distinct !DISubprogram(name: "dontset_return_complete_cpuset", scope: !24, file: !24, line: 710, type: !3346, scopeLine: 711, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3348)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!75, !350, !473}
!3348 = !{!3349, !3350}
!3349 = !DILocalVariable(name: "topology", arg: 1, scope: !3345, file: !24, line: 710, type: !350)
!3350 = !DILocalVariable(name: "set", arg: 2, scope: !3345, file: !24, line: 710, type: !473)
!3351 = !DILocation(line: 710, column: 60, scope: !3345)
!3352 = !DILocation(line: 710, column: 85, scope: !3345)
!3353 = !DILocation(line: 712, column: 21, scope: !3345)
!3354 = !DILocation(line: 712, column: 61, scope: !3345)
!3355 = !DILocation(line: 712, column: 26, scope: !3345)
!3356 = !DILocation(line: 712, column: 3, scope: !3345)
!3357 = !DILocation(line: 713, column: 3, scope: !3345)
!3358 = distinct !DISubprogram(name: "dontset_return_complete_nodeset", scope: !24, file: !24, line: 751, type: !3359, scopeLine: 752, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3361)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!75, !350, !480, !571}
!3361 = !{!3362, !3363, !3364}
!3362 = !DILocalVariable(name: "topology", arg: 1, scope: !3358, file: !24, line: 751, type: !350)
!3363 = !DILocalVariable(name: "set", arg: 2, scope: !3358, file: !24, line: 751, type: !480)
!3364 = !DILocalVariable(name: "policy", arg: 3, scope: !3358, file: !24, line: 751, type: !571)
!3365 = !DILocation(line: 751, column: 61, scope: !3358)
!3366 = !DILocation(line: 751, column: 87, scope: !3358)
!3367 = !DILocation(line: 751, column: 116, scope: !3358)
!3368 = !DILocation(line: 753, column: 21, scope: !3358)
!3369 = !DILocation(line: 753, column: 62, scope: !3358)
!3370 = !DILocation(line: 753, column: 26, scope: !3358)
!3371 = !DILocation(line: 753, column: 3, scope: !3358)
!3372 = !DILocation(line: 754, column: 4, scope: !3358)
!3373 = !DILocation(line: 754, column: 11, scope: !3358)
!3374 = !DILocation(line: 755, column: 3, scope: !3358)
!3375 = !DISubprogram(name: "malloc", scope: !2343, file: !2343, line: 540, type: !3376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!339, !509}

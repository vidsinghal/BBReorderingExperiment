; ModuleID = 'samples/166.bc'
source_filename = "/local-ssd/metis-atnxjhsg6agvwotqr5budxkumdz3mbwk-build/aidengro/spack-stage-metis-5.1.0-atnxjhsg6agvwotqr5budxkumdz3mbwk/spack-src/libmetis/kwayrefine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctrl_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, double, ptr, ptr, ptr, double, double, double, double, double, double, double, double, double, double, double, double, double, ptr, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.graph_t = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ckrinfo_t = type { i32, i32, i32, i32 }
%struct.cnbr_t = type { i32, i32 }
%struct.vkrinfo_t = type { i32, i32, i32, i32, i32 }
%struct.vnbr_t = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"AllocateKWayPartitionMemory: pwgts\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"AllocateKWayPartitionMemory: where\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"AllocateKWayPartitionMemory: bndptr\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"AllocateKWayPartitionMemory: bndind\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"AllocateKWayPartitionMemory: ckrinfo\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"AllocateKWayVolPartitionMemory: vkrinfo\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Unknown objtype of %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @libmetis__RefineKWay(ptr noundef %ctrl, ptr noundef %orggraph, ptr noundef %graph) #0 {
entry:
  %ctrl.addr = alloca ptr, align 8
  %orggraph.addr = alloca ptr, align 8
  %graph.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %nlevels = alloca i32, align 4
  %contig = alloca i32, align 4
  %ptr = alloca ptr, align 8
  store ptr %ctrl, ptr %ctrl.addr, align 8, !tbaa !4
  store ptr %orggraph, ptr %orggraph.addr, align 8, !tbaa !4
  store ptr %graph, ptr %graph.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nlevels) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %contig) #4
  %0 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %contig1 = getelementptr inbounds %struct.ctrl_t, ptr %0, i32 0, i32 10
  %1 = load i32, ptr %contig1, align 8, !tbaa !8
  store i32 %1, ptr %contig, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #4
  %2 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %dbglvl = getelementptr inbounds %struct.ctrl_t, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %dbglvl, align 8, !tbaa !14
  %and = and i32 %3, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call double @gk_CPUSeconds()
  %4 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %UncoarsenTmr = getelementptr inbounds %struct.ctrl_t, ptr %4, i32 0, i32 32
  %5 = load double, ptr %UncoarsenTmr, align 8, !tbaa !15
  %sub = fsub double %5, %call
  store double %sub, ptr %UncoarsenTmr, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  store ptr %6, ptr %ptr, align 8, !tbaa !4
  store i32 0, ptr %nlevels, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load ptr, ptr %ptr, align 8, !tbaa !4
  %8 = load ptr, ptr %orggraph.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load ptr, ptr %ptr, align 8, !tbaa !4
  %finer = getelementptr inbounds %struct.graph_t, ptr %9, i32 0, i32 30
  %10 = load ptr, ptr %finer, align 8, !tbaa !16
  store ptr %10, ptr %ptr, align 8, !tbaa !4
  %11 = load i32, ptr %nlevels, align 4, !tbaa !13
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %nlevels, align 4, !tbaa !13
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__ComputeKWayPartitionParams(ptr noundef %12, ptr noundef %13)
  %14 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %minconn = getelementptr inbounds %struct.ctrl_t, ptr %14, i32 0, i32 9
  %15 = load i32, ptr %minconn, align 4, !tbaa !20
  %tobool2 = icmp ne i32 %15, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.end
  %16 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__EliminateSubDomainEdges(ptr noundef %16, ptr noundef %17)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %for.end
  %18 = load i32, ptr %contig, align 4, !tbaa !13
  %tobool5 = icmp ne i32 %18, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end4
  %19 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %where = getelementptr inbounds %struct.graph_t, ptr %20, i32 0, i32 19
  %21 = load ptr, ptr %where, align 8, !tbaa !21
  %call6 = call i32 @libmetis__FindPartitionInducedComponents(ptr noundef %19, ptr noundef %21, ptr noundef null, ptr noundef null)
  %22 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %nparts = getelementptr inbounds %struct.ctrl_t, ptr %22, i32 0, i32 21
  %23 = load i32, ptr %nparts, align 4, !tbaa !22
  %cmp7 = icmp sgt i32 %call6, %23
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  %24 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__EliminateComponents(ptr noundef %24, ptr noundef %25)
  %26 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__ComputeKWayBoundary(ptr noundef %26, ptr noundef %27, i32 noundef 2)
  %28 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %29 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__Greedy_KWayOptimize(ptr noundef %28, ptr noundef %29, i32 noundef 5, double noundef 0.000000e+00, i32 noundef 2)
  %30 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__ComputeKWayBoundary(ptr noundef %30, ptr noundef %31, i32 noundef 1)
  %32 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %33 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %34 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %niter = getelementptr inbounds %struct.ctrl_t, ptr %34, i32 0, i32 17
  %35 = load i32, ptr %niter, align 4, !tbaa !23
  call void @libmetis__Greedy_KWayOptimize(ptr noundef %32, ptr noundef %33, i32 noundef %35, double noundef 0.000000e+00, i32 noundef 1)
  %36 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %contig9 = getelementptr inbounds %struct.ctrl_t, ptr %36, i32 0, i32 10
  store i32 0, ptr %contig9, align 8, !tbaa !8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true, %if.end4
  store i32 0, ptr %i, align 4, !tbaa !13
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc77, %if.end10
  %37 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %minconn12 = getelementptr inbounds %struct.ctrl_t, ptr %37, i32 0, i32 9
  %38 = load i32, ptr %minconn12, align 4, !tbaa !20
  %tobool13 = icmp ne i32 %38, 0
  br i1 %tobool13, label %land.lhs.true14, label %if.end17

land.lhs.true14:                                  ; preds = %for.cond11
  %39 = load i32, ptr %i, align 4, !tbaa !13
  %40 = load i32, ptr %nlevels, align 4, !tbaa !13
  %div = sdiv i32 %40, 2
  %cmp15 = icmp eq i32 %39, %div
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true14
  %41 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %42 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__EliminateSubDomainEdges(ptr noundef %41, ptr noundef %42)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %land.lhs.true14, %for.cond11
  %43 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %dbglvl18 = getelementptr inbounds %struct.ctrl_t, ptr %43, i32 0, i32 2
  %44 = load i32, ptr %dbglvl18, align 8, !tbaa !14
  %and19 = and i32 %44, 2
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end17
  %call22 = call double @gk_CPUSeconds()
  %45 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %RefTmr = getelementptr inbounds %struct.ctrl_t, ptr %45, i32 0, i32 33
  %46 = load double, ptr %RefTmr, align 8, !tbaa !24
  %sub23 = fsub double %46, %call22
  store double %sub23, ptr %RefTmr, align 8, !tbaa !24
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end17
  %47 = load i32, ptr %i, align 4, !tbaa !13
  %mul = mul nsw i32 2, %47
  %48 = load i32, ptr %nlevels, align 4, !tbaa !13
  %cmp25 = icmp sge i32 %mul, %48
  br i1 %cmp25, label %land.lhs.true26, label %if.end30

land.lhs.true26:                                  ; preds = %if.end24
  %49 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %50 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %call27 = call i32 @libmetis__IsBalanced(ptr noundef %49, ptr noundef %50, double noundef 2.000000e-02)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %land.lhs.true26
  %51 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %52 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__ComputeKWayBoundary(ptr noundef %51, ptr noundef %52, i32 noundef 2)
  %53 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %54 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__Greedy_KWayOptimize(ptr noundef %53, ptr noundef %54, i32 noundef 1, double noundef 0.000000e+00, i32 noundef 2)
  %55 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %56 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__ComputeKWayBoundary(ptr noundef %55, ptr noundef %56, i32 noundef 1)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %land.lhs.true26, %if.end24
  %57 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %58 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %59 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %niter31 = getelementptr inbounds %struct.ctrl_t, ptr %59, i32 0, i32 17
  %60 = load i32, ptr %niter31, align 4, !tbaa !23
  call void @libmetis__Greedy_KWayOptimize(ptr noundef %57, ptr noundef %58, i32 noundef %60, double noundef 5.000000e+00, i32 noundef 1)
  %61 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %dbglvl32 = getelementptr inbounds %struct.ctrl_t, ptr %61, i32 0, i32 2
  %62 = load i32, ptr %dbglvl32, align 8, !tbaa !14
  %and33 = and i32 %62, 2
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end30
  %call36 = call double @gk_CPUSeconds()
  %63 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %RefTmr37 = getelementptr inbounds %struct.ctrl_t, ptr %63, i32 0, i32 33
  %64 = load double, ptr %RefTmr37, align 8, !tbaa !24
  %add = fadd double %64, %call36
  store double %add, ptr %RefTmr37, align 8, !tbaa !24
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end30
  %65 = load i32, ptr %contig, align 4, !tbaa !13
  %tobool39 = icmp ne i32 %65, 0
  br i1 %tobool39, label %land.lhs.true40, label %if.end57

land.lhs.true40:                                  ; preds = %if.end38
  %66 = load i32, ptr %i, align 4, !tbaa !13
  %67 = load i32, ptr %nlevels, align 4, !tbaa !13
  %div41 = sdiv i32 %67, 2
  %cmp42 = icmp eq i32 %66, %div41
  br i1 %cmp42, label %if.then43, label %if.end57

if.then43:                                        ; preds = %land.lhs.true40
  %68 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %69 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %where44 = getelementptr inbounds %struct.graph_t, ptr %69, i32 0, i32 19
  %70 = load ptr, ptr %where44, align 8, !tbaa !21
  %call45 = call i32 @libmetis__FindPartitionInducedComponents(ptr noundef %68, ptr noundef %70, ptr noundef null, ptr noundef null)
  %71 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %nparts46 = getelementptr inbounds %struct.ctrl_t, ptr %71, i32 0, i32 21
  %72 = load i32, ptr %nparts46, align 4, !tbaa !22
  %cmp47 = icmp sgt i32 %call45, %72
  br i1 %cmp47, label %if.then48, label %if.end56

if.then48:                                        ; preds = %if.then43
  %73 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %74 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__EliminateComponents(ptr noundef %73, ptr noundef %74)
  %75 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %76 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %call49 = call i32 @libmetis__IsBalanced(ptr noundef %75, ptr noundef %76, double noundef 2.000000e-02)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end55, label %if.then51

if.then51:                                        ; preds = %if.then48
  %77 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %contig52 = getelementptr inbounds %struct.ctrl_t, ptr %77, i32 0, i32 10
  store i32 1, ptr %contig52, align 8, !tbaa !8
  %78 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %79 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__ComputeKWayBoundary(ptr noundef %78, ptr noundef %79, i32 noundef 2)
  %80 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %81 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__Greedy_KWayOptimize(ptr noundef %80, ptr noundef %81, i32 noundef 5, double noundef 0.000000e+00, i32 noundef 2)
  %82 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %83 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__ComputeKWayBoundary(ptr noundef %82, ptr noundef %83, i32 noundef 1)
  %84 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %85 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %86 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %niter53 = getelementptr inbounds %struct.ctrl_t, ptr %86, i32 0, i32 17
  %87 = load i32, ptr %niter53, align 4, !tbaa !23
  call void @libmetis__Greedy_KWayOptimize(ptr noundef %84, ptr noundef %85, i32 noundef %87, double noundef 0.000000e+00, i32 noundef 1)
  %88 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %contig54 = getelementptr inbounds %struct.ctrl_t, ptr %88, i32 0, i32 10
  store i32 0, ptr %contig54, align 8, !tbaa !8
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.then48
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then43
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %land.lhs.true40, %if.end38
  %89 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %90 = load ptr, ptr %orggraph.addr, align 8, !tbaa !4
  %cmp58 = icmp eq ptr %89, %90
  br i1 %cmp58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end57
  br label %for.end79

if.end60:                                         ; preds = %if.end57
  %91 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %finer61 = getelementptr inbounds %struct.graph_t, ptr %91, i32 0, i32 30
  %92 = load ptr, ptr %finer61, align 8, !tbaa !16
  store ptr %92, ptr %graph.addr, align 8, !tbaa !4
  %93 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %dbglvl62 = getelementptr inbounds %struct.ctrl_t, ptr %93, i32 0, i32 2
  %94 = load i32, ptr %dbglvl62, align 8, !tbaa !14
  %and63 = and i32 %94, 2
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.end60
  %call66 = call double @gk_CPUSeconds()
  %95 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %ProjectTmr = getelementptr inbounds %struct.ctrl_t, ptr %95, i32 0, i32 34
  %96 = load double, ptr %ProjectTmr, align 8, !tbaa !25
  %sub67 = fsub double %96, %call66
  store double %sub67, ptr %ProjectTmr, align 8, !tbaa !25
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.end60
  %97 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %98 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__ProjectKWayPartition(ptr noundef %97, ptr noundef %98)
  %99 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %dbglvl69 = getelementptr inbounds %struct.ctrl_t, ptr %99, i32 0, i32 2
  %100 = load i32, ptr %dbglvl69, align 8, !tbaa !14
  %and70 = and i32 %100, 2
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %if.then72, label %if.end76

if.then72:                                        ; preds = %if.end68
  %call73 = call double @gk_CPUSeconds()
  %101 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %ProjectTmr74 = getelementptr inbounds %struct.ctrl_t, ptr %101, i32 0, i32 34
  %102 = load double, ptr %ProjectTmr74, align 8, !tbaa !25
  %add75 = fadd double %102, %call73
  store double %add75, ptr %ProjectTmr74, align 8, !tbaa !25
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.end68
  br label %for.inc77

for.inc77:                                        ; preds = %if.end76
  %103 = load i32, ptr %i, align 4, !tbaa !13
  %inc78 = add nsw i32 %103, 1
  store i32 %inc78, ptr %i, align 4, !tbaa !13
  br label %for.cond11

for.end79:                                        ; preds = %if.then59
  %104 = load i32, ptr %contig, align 4, !tbaa !13
  %105 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %contig80 = getelementptr inbounds %struct.ctrl_t, ptr %105, i32 0, i32 10
  store i32 %104, ptr %contig80, align 8, !tbaa !8
  %106 = load i32, ptr %contig, align 4, !tbaa !13
  %tobool81 = icmp ne i32 %106, 0
  br i1 %tobool81, label %land.lhs.true82, label %if.end88

land.lhs.true82:                                  ; preds = %for.end79
  %107 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %108 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %where83 = getelementptr inbounds %struct.graph_t, ptr %108, i32 0, i32 19
  %109 = load ptr, ptr %where83, align 8, !tbaa !21
  %call84 = call i32 @libmetis__FindPartitionInducedComponents(ptr noundef %107, ptr noundef %109, ptr noundef null, ptr noundef null)
  %110 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %nparts85 = getelementptr inbounds %struct.ctrl_t, ptr %110, i32 0, i32 21
  %111 = load i32, ptr %nparts85, align 4, !tbaa !22
  %cmp86 = icmp sgt i32 %call84, %111
  br i1 %cmp86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %land.lhs.true82
  %112 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %113 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__EliminateComponents(ptr noundef %112, ptr noundef %113)
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %land.lhs.true82, %for.end79
  %114 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %115 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %call89 = call i32 @libmetis__IsBalanced(ptr noundef %114, ptr noundef %115, double noundef 0.000000e+00)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.end93, label %if.then91

if.then91:                                        ; preds = %if.end88
  %116 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %117 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__ComputeKWayBoundary(ptr noundef %116, ptr noundef %117, i32 noundef 2)
  %118 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %119 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__Greedy_KWayOptimize(ptr noundef %118, ptr noundef %119, i32 noundef 10, double noundef 0.000000e+00, i32 noundef 2)
  %120 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %121 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__ComputeKWayBoundary(ptr noundef %120, ptr noundef %121, i32 noundef 1)
  %122 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %123 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %124 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %niter92 = getelementptr inbounds %struct.ctrl_t, ptr %124, i32 0, i32 17
  %125 = load i32, ptr %niter92, align 4, !tbaa !23
  call void @libmetis__Greedy_KWayOptimize(ptr noundef %122, ptr noundef %123, i32 noundef %125, double noundef 0.000000e+00, i32 noundef 1)
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end88
  %126 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %contig94 = getelementptr inbounds %struct.ctrl_t, ptr %126, i32 0, i32 10
  %127 = load i32, ptr %contig94, align 8, !tbaa !8
  %tobool95 = icmp ne i32 %127, 0
  br i1 %tobool95, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end93
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end93
  %128 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %dbglvl98 = getelementptr inbounds %struct.ctrl_t, ptr %128, i32 0, i32 2
  %129 = load i32, ptr %dbglvl98, align 8, !tbaa !14
  %and99 = and i32 %129, 2
  %tobool100 = icmp ne i32 %and99, 0
  br i1 %tobool100, label %if.then101, label %if.end105

if.then101:                                       ; preds = %if.end97
  %call102 = call double @gk_CPUSeconds()
  %130 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %UncoarsenTmr103 = getelementptr inbounds %struct.ctrl_t, ptr %130, i32 0, i32 32
  %131 = load double, ptr %UncoarsenTmr103, align 8, !tbaa !15
  %add104 = fadd double %131, %call102
  store double %add104, ptr %UncoarsenTmr103, align 8, !tbaa !15
  br label %if.end105

if.end105:                                        ; preds = %if.then101, %if.end97
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %contig) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nlevels) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare double @gk_CPUSeconds() #2

; Function Attrs: nounwind uwtable
define void @libmetis__ComputeKWayPartitionParams(ptr noundef %ctrl, ptr noundef %graph) #0 {
entry:
  %ctrl.addr = alloca ptr, align 8
  %graph.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %nvtxs = alloca i32, align 4
  %ncon = alloca i32, align 4
  %nparts = alloca i32, align 4
  %nbnd = alloca i32, align 4
  %mincut = alloca i32, align 4
  %me = alloca i32, align 4
  %other = alloca i32, align 4
  %xadj = alloca ptr, align 8
  %vwgt = alloca ptr, align 8
  %adjncy = alloca ptr, align 8
  %adjwgt = alloca ptr, align 8
  %pwgts = alloca ptr, align 8
  %where = alloca ptr, align 8
  %bndind = alloca ptr, align 8
  %bndptr = alloca ptr, align 8
  %myrinfo = alloca ptr, align 8
  %mynbrs = alloca ptr, align 8
  %myrinfo173 = alloca ptr, align 8
  %mynbrs174 = alloca ptr, align 8
  store ptr %ctrl, ptr %ctrl.addr, align 8, !tbaa !4
  store ptr %graph, ptr %graph.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nvtxs) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ncon) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nparts) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbnd) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mincut) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %me) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %other) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %xadj) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vwgt) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adjncy) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adjwgt) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pwgts) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %where) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bndind) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bndptr) #4
  %0 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %nparts1 = getelementptr inbounds %struct.ctrl_t, ptr %0, i32 0, i32 21
  %1 = load i32, ptr %nparts1, align 4, !tbaa !22
  store i32 %1, ptr %nparts, align 4, !tbaa !13
  %2 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs2 = getelementptr inbounds %struct.graph_t, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %nvtxs2, align 8, !tbaa !26
  store i32 %3, ptr %nvtxs, align 4, !tbaa !13
  %4 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %ncon3 = getelementptr inbounds %struct.graph_t, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %ncon3, align 8, !tbaa !27
  store i32 %5, ptr %ncon, align 4, !tbaa !13
  %6 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %xadj4 = getelementptr inbounds %struct.graph_t, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %xadj4, align 8, !tbaa !28
  store ptr %7, ptr %xadj, align 8, !tbaa !4
  %8 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %vwgt5 = getelementptr inbounds %struct.graph_t, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %vwgt5, align 8, !tbaa !29
  store ptr %9, ptr %vwgt, align 8, !tbaa !4
  %10 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %adjncy6 = getelementptr inbounds %struct.graph_t, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %adjncy6, align 8, !tbaa !30
  store ptr %11, ptr %adjncy, align 8, !tbaa !4
  %12 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %adjwgt7 = getelementptr inbounds %struct.graph_t, ptr %12, i32 0, i32 7
  %13 = load ptr, ptr %adjwgt7, align 8, !tbaa !31
  store ptr %13, ptr %adjwgt, align 8, !tbaa !4
  %14 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %where8 = getelementptr inbounds %struct.graph_t, ptr %14, i32 0, i32 19
  %15 = load ptr, ptr %where8, align 8, !tbaa !21
  store ptr %15, ptr %where, align 8, !tbaa !4
  %16 = load i32, ptr %nparts, align 4, !tbaa !13
  %17 = load i32, ptr %ncon, align 4, !tbaa !13
  %mul = mul nsw i32 %16, %17
  %conv = sext i32 %mul to i64
  %18 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %pwgts9 = getelementptr inbounds %struct.graph_t, ptr %18, i32 0, i32 20
  %19 = load ptr, ptr %pwgts9, align 8, !tbaa !32
  %call = call ptr @libmetis__iset(i64 noundef %conv, i32 noundef 0, ptr noundef %19)
  store ptr %call, ptr %pwgts, align 8, !tbaa !4
  %20 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %bndind10 = getelementptr inbounds %struct.graph_t, ptr %20, i32 0, i32 23
  %21 = load ptr, ptr %bndind10, align 8, !tbaa !33
  store ptr %21, ptr %bndind, align 8, !tbaa !4
  %22 = load i32, ptr %nvtxs, align 4, !tbaa !13
  %conv11 = sext i32 %22 to i64
  %23 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %bndptr12 = getelementptr inbounds %struct.graph_t, ptr %23, i32 0, i32 22
  %24 = load ptr, ptr %bndptr12, align 8, !tbaa !34
  %call13 = call ptr @libmetis__iset(i64 noundef %conv11, i32 noundef -1, ptr noundef %24)
  store ptr %call13, ptr %bndptr, align 8, !tbaa !4
  store i32 0, ptr %mincut, align 4, !tbaa !13
  store i32 0, ptr %nbnd, align 4, !tbaa !13
  %25 = load i32, ptr %ncon, align 4, !tbaa !13
  %cmp = icmp eq i32 %25, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %26 = load i32, ptr %i, align 4, !tbaa !13
  %27 = load i32, ptr %nvtxs, align 4, !tbaa !13
  %cmp15 = icmp slt i32 %26, %27
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load ptr, ptr %vwgt, align 8, !tbaa !4
  %29 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom = sext i32 %29 to i64
  %arrayidx = getelementptr inbounds i32, ptr %28, i64 %idxprom
  %30 = load i32, ptr %arrayidx, align 4, !tbaa !13
  %31 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %32 = load ptr, ptr %where, align 8, !tbaa !4
  %33 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom17 = sext i32 %33 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %32, i64 %idxprom17
  %34 = load i32, ptr %arrayidx18, align 4, !tbaa !13
  %idxprom19 = sext i32 %34 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %31, i64 %idxprom19
  %35 = load i32, ptr %arrayidx20, align 4, !tbaa !13
  %add = add nsw i32 %35, %30
  store i32 %add, ptr %arrayidx20, align 4, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, ptr %i, align 4, !tbaa !13
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr %i, align 4, !tbaa !13
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !13
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc43, %if.else
  %37 = load i32, ptr %i, align 4, !tbaa !13
  %38 = load i32, ptr %nvtxs, align 4, !tbaa !13
  %cmp22 = icmp slt i32 %37, %38
  br i1 %cmp22, label %for.body24, label %for.end45

for.body24:                                       ; preds = %for.cond21
  %39 = load ptr, ptr %where, align 8, !tbaa !4
  %40 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom25 = sext i32 %40 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %39, i64 %idxprom25
  %41 = load i32, ptr %arrayidx26, align 4, !tbaa !13
  store i32 %41, ptr %me, align 4, !tbaa !13
  store i32 0, ptr %j, align 4, !tbaa !13
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc40, %for.body24
  %42 = load i32, ptr %j, align 4, !tbaa !13
  %43 = load i32, ptr %ncon, align 4, !tbaa !13
  %cmp28 = icmp slt i32 %42, %43
  br i1 %cmp28, label %for.body30, label %for.end42

for.body30:                                       ; preds = %for.cond27
  %44 = load ptr, ptr %vwgt, align 8, !tbaa !4
  %45 = load i32, ptr %i, align 4, !tbaa !13
  %46 = load i32, ptr %ncon, align 4, !tbaa !13
  %mul31 = mul nsw i32 %45, %46
  %47 = load i32, ptr %j, align 4, !tbaa !13
  %add32 = add nsw i32 %mul31, %47
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %44, i64 %idxprom33
  %48 = load i32, ptr %arrayidx34, align 4, !tbaa !13
  %49 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %50 = load i32, ptr %me, align 4, !tbaa !13
  %51 = load i32, ptr %ncon, align 4, !tbaa !13
  %mul35 = mul nsw i32 %50, %51
  %52 = load i32, ptr %j, align 4, !tbaa !13
  %add36 = add nsw i32 %mul35, %52
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %49, i64 %idxprom37
  %53 = load i32, ptr %arrayidx38, align 4, !tbaa !13
  %add39 = add nsw i32 %53, %48
  store i32 %add39, ptr %arrayidx38, align 4, !tbaa !13
  br label %for.inc40

for.inc40:                                        ; preds = %for.body30
  %54 = load i32, ptr %j, align 4, !tbaa !13
  %inc41 = add nsw i32 %54, 1
  store i32 %inc41, ptr %j, align 4, !tbaa !13
  br label %for.cond27, !llvm.loop !36

for.end42:                                        ; preds = %for.cond27
  br label %for.inc43

for.inc43:                                        ; preds = %for.end42
  %55 = load i32, ptr %i, align 4, !tbaa !13
  %inc44 = add nsw i32 %55, 1
  store i32 %inc44, ptr %i, align 4, !tbaa !13
  br label %for.cond21, !llvm.loop !37

for.end45:                                        ; preds = %for.cond21
  br label %if.end

if.end:                                           ; preds = %for.end45, %for.end
  %56 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %objtype = getelementptr inbounds %struct.ctrl_t, ptr %56, i32 0, i32 1
  %57 = load i32, ptr %objtype, align 4, !tbaa !38
  switch i32 %57, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb172
  ]

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %myrinfo) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mynbrs) #4
  %58 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %ckrinfo = getelementptr inbounds %struct.graph_t, ptr %58, i32 0, i32 26
  %59 = load ptr, ptr %ckrinfo, align 8, !tbaa !39
  %60 = load i32, ptr %nvtxs, align 4, !tbaa !13
  %conv46 = sext i32 %60 to i64
  %mul47 = mul i64 16, %conv46
  call void @llvm.memset.p0.i64(ptr align 4 %59, i8 0, i64 %mul47, i1 false)
  %61 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__cnbrpoolReset(ptr noundef %61)
  store i32 0, ptr %i, align 4, !tbaa !13
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc167, %sw.bb
  %62 = load i32, ptr %i, align 4, !tbaa !13
  %63 = load i32, ptr %nvtxs, align 4, !tbaa !13
  %cmp49 = icmp slt i32 %62, %63
  br i1 %cmp49, label %for.body51, label %for.end169

for.body51:                                       ; preds = %for.cond48
  %64 = load ptr, ptr %where, align 8, !tbaa !4
  %65 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom52 = sext i32 %65 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %64, i64 %idxprom52
  %66 = load i32, ptr %arrayidx53, align 4, !tbaa !13
  store i32 %66, ptr %me, align 4, !tbaa !13
  %67 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %ckrinfo54 = getelementptr inbounds %struct.graph_t, ptr %67, i32 0, i32 26
  %68 = load ptr, ptr %ckrinfo54, align 8, !tbaa !39
  %69 = load i32, ptr %i, align 4, !tbaa !13
  %idx.ext = sext i32 %69 to i64
  %add.ptr = getelementptr inbounds %struct.ckrinfo_t, ptr %68, i64 %idx.ext
  store ptr %add.ptr, ptr %myrinfo, align 8, !tbaa !4
  %70 = load ptr, ptr %xadj, align 8, !tbaa !4
  %71 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom55 = sext i32 %71 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %70, i64 %idxprom55
  %72 = load i32, ptr %arrayidx56, align 4, !tbaa !13
  store i32 %72, ptr %j, align 4, !tbaa !13
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc79, %for.body51
  %73 = load i32, ptr %j, align 4, !tbaa !13
  %74 = load ptr, ptr %xadj, align 8, !tbaa !4
  %75 = load i32, ptr %i, align 4, !tbaa !13
  %add58 = add nsw i32 %75, 1
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %74, i64 %idxprom59
  %76 = load i32, ptr %arrayidx60, align 4, !tbaa !13
  %cmp61 = icmp slt i32 %73, %76
  br i1 %cmp61, label %for.body63, label %for.end81

for.body63:                                       ; preds = %for.cond57
  %77 = load i32, ptr %me, align 4, !tbaa !13
  %78 = load ptr, ptr %where, align 8, !tbaa !4
  %79 = load ptr, ptr %adjncy, align 8, !tbaa !4
  %80 = load i32, ptr %j, align 4, !tbaa !13
  %idxprom64 = sext i32 %80 to i64
  %arrayidx65 = getelementptr inbounds i32, ptr %79, i64 %idxprom64
  %81 = load i32, ptr %arrayidx65, align 4, !tbaa !13
  %idxprom66 = sext i32 %81 to i64
  %arrayidx67 = getelementptr inbounds i32, ptr %78, i64 %idxprom66
  %82 = load i32, ptr %arrayidx67, align 4, !tbaa !13
  %cmp68 = icmp eq i32 %77, %82
  br i1 %cmp68, label %if.then70, label %if.else74

if.then70:                                        ; preds = %for.body63
  %83 = load ptr, ptr %adjwgt, align 8, !tbaa !4
  %84 = load i32, ptr %j, align 4, !tbaa !13
  %idxprom71 = sext i32 %84 to i64
  %arrayidx72 = getelementptr inbounds i32, ptr %83, i64 %idxprom71
  %85 = load i32, ptr %arrayidx72, align 4, !tbaa !13
  %86 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %id = getelementptr inbounds %struct.ckrinfo_t, ptr %86, i32 0, i32 0
  %87 = load i32, ptr %id, align 4, !tbaa !40
  %add73 = add nsw i32 %87, %85
  store i32 %add73, ptr %id, align 4, !tbaa !40
  br label %if.end78

if.else74:                                        ; preds = %for.body63
  %88 = load ptr, ptr %adjwgt, align 8, !tbaa !4
  %89 = load i32, ptr %j, align 4, !tbaa !13
  %idxprom75 = sext i32 %89 to i64
  %arrayidx76 = getelementptr inbounds i32, ptr %88, i64 %idxprom75
  %90 = load i32, ptr %arrayidx76, align 4, !tbaa !13
  %91 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %ed = getelementptr inbounds %struct.ckrinfo_t, ptr %91, i32 0, i32 1
  %92 = load i32, ptr %ed, align 4, !tbaa !42
  %add77 = add nsw i32 %92, %90
  store i32 %add77, ptr %ed, align 4, !tbaa !42
  br label %if.end78

if.end78:                                         ; preds = %if.else74, %if.then70
  br label %for.inc79

for.inc79:                                        ; preds = %if.end78
  %93 = load i32, ptr %j, align 4, !tbaa !13
  %inc80 = add nsw i32 %93, 1
  store i32 %inc80, ptr %j, align 4, !tbaa !13
  br label %for.cond57, !llvm.loop !43

for.end81:                                        ; preds = %for.cond57
  %94 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %ed82 = getelementptr inbounds %struct.ckrinfo_t, ptr %94, i32 0, i32 1
  %95 = load i32, ptr %ed82, align 4, !tbaa !42
  %cmp83 = icmp sgt i32 %95, 0
  br i1 %cmp83, label %if.then85, label %if.else164

if.then85:                                        ; preds = %for.end81
  %96 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %ed86 = getelementptr inbounds %struct.ckrinfo_t, ptr %96, i32 0, i32 1
  %97 = load i32, ptr %ed86, align 4, !tbaa !42
  %98 = load i32, ptr %mincut, align 4, !tbaa !13
  %add87 = add nsw i32 %98, %97
  store i32 %add87, ptr %mincut, align 4, !tbaa !13
  %99 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %100 = load ptr, ptr %xadj, align 8, !tbaa !4
  %101 = load i32, ptr %i, align 4, !tbaa !13
  %add88 = add nsw i32 %101, 1
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds i32, ptr %100, i64 %idxprom89
  %102 = load i32, ptr %arrayidx90, align 4, !tbaa !13
  %103 = load ptr, ptr %xadj, align 8, !tbaa !4
  %104 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom91 = sext i32 %104 to i64
  %arrayidx92 = getelementptr inbounds i32, ptr %103, i64 %idxprom91
  %105 = load i32, ptr %arrayidx92, align 4, !tbaa !13
  %sub = sub nsw i32 %102, %105
  %add93 = add nsw i32 %sub, 1
  %call94 = call i32 @libmetis__cnbrpoolGetNext(ptr noundef %99, i32 noundef %add93)
  %106 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %inbr = getelementptr inbounds %struct.ckrinfo_t, ptr %106, i32 0, i32 3
  store i32 %call94, ptr %inbr, align 4, !tbaa !44
  %107 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %cnbrpool = getelementptr inbounds %struct.ctrl_t, ptr %107, i32 0, i32 43
  %108 = load ptr, ptr %cnbrpool, align 8, !tbaa !45
  %109 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %inbr95 = getelementptr inbounds %struct.ckrinfo_t, ptr %109, i32 0, i32 3
  %110 = load i32, ptr %inbr95, align 4, !tbaa !44
  %idx.ext96 = sext i32 %110 to i64
  %add.ptr97 = getelementptr inbounds %struct.cnbr_t, ptr %108, i64 %idx.ext96
  store ptr %add.ptr97, ptr %mynbrs, align 8, !tbaa !4
  %111 = load ptr, ptr %xadj, align 8, !tbaa !4
  %112 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom98 = sext i32 %112 to i64
  %arrayidx99 = getelementptr inbounds i32, ptr %111, i64 %idxprom98
  %113 = load i32, ptr %arrayidx99, align 4, !tbaa !13
  store i32 %113, ptr %j, align 4, !tbaa !13
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc149, %if.then85
  %114 = load i32, ptr %j, align 4, !tbaa !13
  %115 = load ptr, ptr %xadj, align 8, !tbaa !4
  %116 = load i32, ptr %i, align 4, !tbaa !13
  %add101 = add nsw i32 %116, 1
  %idxprom102 = sext i32 %add101 to i64
  %arrayidx103 = getelementptr inbounds i32, ptr %115, i64 %idxprom102
  %117 = load i32, ptr %arrayidx103, align 4, !tbaa !13
  %cmp104 = icmp slt i32 %114, %117
  br i1 %cmp104, label %for.body106, label %for.end151

for.body106:                                      ; preds = %for.cond100
  %118 = load ptr, ptr %where, align 8, !tbaa !4
  %119 = load ptr, ptr %adjncy, align 8, !tbaa !4
  %120 = load i32, ptr %j, align 4, !tbaa !13
  %idxprom107 = sext i32 %120 to i64
  %arrayidx108 = getelementptr inbounds i32, ptr %119, i64 %idxprom107
  %121 = load i32, ptr %arrayidx108, align 4, !tbaa !13
  %idxprom109 = sext i32 %121 to i64
  %arrayidx110 = getelementptr inbounds i32, ptr %118, i64 %idxprom109
  %122 = load i32, ptr %arrayidx110, align 4, !tbaa !13
  store i32 %122, ptr %other, align 4, !tbaa !13
  %123 = load i32, ptr %me, align 4, !tbaa !13
  %124 = load i32, ptr %other, align 4, !tbaa !13
  %cmp111 = icmp ne i32 %123, %124
  br i1 %cmp111, label %if.then113, label %if.end148

if.then113:                                       ; preds = %for.body106
  store i32 0, ptr %k, align 4, !tbaa !13
  br label %for.cond114

for.cond114:                                      ; preds = %for.inc130, %if.then113
  %125 = load i32, ptr %k, align 4, !tbaa !13
  %126 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %nnbrs = getelementptr inbounds %struct.ckrinfo_t, ptr %126, i32 0, i32 2
  %127 = load i32, ptr %nnbrs, align 4, !tbaa !46
  %cmp115 = icmp slt i32 %125, %127
  br i1 %cmp115, label %for.body117, label %for.end132

for.body117:                                      ; preds = %for.cond114
  %128 = load ptr, ptr %mynbrs, align 8, !tbaa !4
  %129 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom118 = sext i32 %129 to i64
  %arrayidx119 = getelementptr inbounds %struct.cnbr_t, ptr %128, i64 %idxprom118
  %pid = getelementptr inbounds %struct.cnbr_t, ptr %arrayidx119, i32 0, i32 0
  %130 = load i32, ptr %pid, align 4, !tbaa !47
  %131 = load i32, ptr %other, align 4, !tbaa !13
  %cmp120 = icmp eq i32 %130, %131
  br i1 %cmp120, label %if.then122, label %if.end129

if.then122:                                       ; preds = %for.body117
  %132 = load ptr, ptr %adjwgt, align 8, !tbaa !4
  %133 = load i32, ptr %j, align 4, !tbaa !13
  %idxprom123 = sext i32 %133 to i64
  %arrayidx124 = getelementptr inbounds i32, ptr %132, i64 %idxprom123
  %134 = load i32, ptr %arrayidx124, align 4, !tbaa !13
  %135 = load ptr, ptr %mynbrs, align 8, !tbaa !4
  %136 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom125 = sext i32 %136 to i64
  %arrayidx126 = getelementptr inbounds %struct.cnbr_t, ptr %135, i64 %idxprom125
  %ed127 = getelementptr inbounds %struct.cnbr_t, ptr %arrayidx126, i32 0, i32 1
  %137 = load i32, ptr %ed127, align 4, !tbaa !49
  %add128 = add nsw i32 %137, %134
  store i32 %add128, ptr %ed127, align 4, !tbaa !49
  br label %for.end132

if.end129:                                        ; preds = %for.body117
  br label %for.inc130

for.inc130:                                       ; preds = %if.end129
  %138 = load i32, ptr %k, align 4, !tbaa !13
  %inc131 = add nsw i32 %138, 1
  store i32 %inc131, ptr %k, align 4, !tbaa !13
  br label %for.cond114, !llvm.loop !50

for.end132:                                       ; preds = %if.then122, %for.cond114
  %139 = load i32, ptr %k, align 4, !tbaa !13
  %140 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %nnbrs133 = getelementptr inbounds %struct.ckrinfo_t, ptr %140, i32 0, i32 2
  %141 = load i32, ptr %nnbrs133, align 4, !tbaa !46
  %cmp134 = icmp eq i32 %139, %141
  br i1 %cmp134, label %if.then136, label %if.end147

if.then136:                                       ; preds = %for.end132
  %142 = load i32, ptr %other, align 4, !tbaa !13
  %143 = load ptr, ptr %mynbrs, align 8, !tbaa !4
  %144 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom137 = sext i32 %144 to i64
  %arrayidx138 = getelementptr inbounds %struct.cnbr_t, ptr %143, i64 %idxprom137
  %pid139 = getelementptr inbounds %struct.cnbr_t, ptr %arrayidx138, i32 0, i32 0
  store i32 %142, ptr %pid139, align 4, !tbaa !47
  %145 = load ptr, ptr %adjwgt, align 8, !tbaa !4
  %146 = load i32, ptr %j, align 4, !tbaa !13
  %idxprom140 = sext i32 %146 to i64
  %arrayidx141 = getelementptr inbounds i32, ptr %145, i64 %idxprom140
  %147 = load i32, ptr %arrayidx141, align 4, !tbaa !13
  %148 = load ptr, ptr %mynbrs, align 8, !tbaa !4
  %149 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom142 = sext i32 %149 to i64
  %arrayidx143 = getelementptr inbounds %struct.cnbr_t, ptr %148, i64 %idxprom142
  %ed144 = getelementptr inbounds %struct.cnbr_t, ptr %arrayidx143, i32 0, i32 1
  store i32 %147, ptr %ed144, align 4, !tbaa !49
  %150 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %nnbrs145 = getelementptr inbounds %struct.ckrinfo_t, ptr %150, i32 0, i32 2
  %151 = load i32, ptr %nnbrs145, align 4, !tbaa !46
  %inc146 = add nsw i32 %151, 1
  store i32 %inc146, ptr %nnbrs145, align 4, !tbaa !46
  br label %if.end147

if.end147:                                        ; preds = %if.then136, %for.end132
  br label %if.end148

if.end148:                                        ; preds = %if.end147, %for.body106
  br label %for.inc149

for.inc149:                                       ; preds = %if.end148
  %152 = load i32, ptr %j, align 4, !tbaa !13
  %inc150 = add nsw i32 %152, 1
  store i32 %inc150, ptr %j, align 4, !tbaa !13
  br label %for.cond100, !llvm.loop !51

for.end151:                                       ; preds = %for.cond100
  %153 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %ed152 = getelementptr inbounds %struct.ckrinfo_t, ptr %153, i32 0, i32 1
  %154 = load i32, ptr %ed152, align 4, !tbaa !42
  %155 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %id153 = getelementptr inbounds %struct.ckrinfo_t, ptr %155, i32 0, i32 0
  %156 = load i32, ptr %id153, align 4, !tbaa !40
  %sub154 = sub nsw i32 %154, %156
  %cmp155 = icmp sge i32 %sub154, 0
  br i1 %cmp155, label %if.then157, label %if.end163

if.then157:                                       ; preds = %for.end151
  br label %do.body

do.body:                                          ; preds = %if.then157
  %157 = load i32, ptr %i, align 4, !tbaa !13
  %158 = load ptr, ptr %bndind, align 8, !tbaa !4
  %159 = load i32, ptr %nbnd, align 4, !tbaa !13
  %idxprom158 = sext i32 %159 to i64
  %arrayidx159 = getelementptr inbounds i32, ptr %158, i64 %idxprom158
  store i32 %157, ptr %arrayidx159, align 4, !tbaa !13
  %160 = load i32, ptr %nbnd, align 4, !tbaa !13
  %inc160 = add nsw i32 %160, 1
  store i32 %inc160, ptr %nbnd, align 4, !tbaa !13
  %161 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %162 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom161 = sext i32 %162 to i64
  %arrayidx162 = getelementptr inbounds i32, ptr %161, i64 %idxprom161
  store i32 %160, ptr %arrayidx162, align 4, !tbaa !13
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end163

if.end163:                                        ; preds = %do.end, %for.end151
  br label %if.end166

if.else164:                                       ; preds = %for.end81
  %163 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %inbr165 = getelementptr inbounds %struct.ckrinfo_t, ptr %163, i32 0, i32 3
  store i32 -1, ptr %inbr165, align 4, !tbaa !44
  br label %if.end166

if.end166:                                        ; preds = %if.else164, %if.end163
  br label %for.inc167

for.inc167:                                       ; preds = %if.end166
  %164 = load i32, ptr %i, align 4, !tbaa !13
  %inc168 = add nsw i32 %164, 1
  store i32 %inc168, ptr %i, align 4, !tbaa !13
  br label %for.cond48, !llvm.loop !52

for.end169:                                       ; preds = %for.cond48
  %165 = load i32, ptr %mincut, align 4, !tbaa !13
  %div = sdiv i32 %165, 2
  %166 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %mincut170 = getelementptr inbounds %struct.graph_t, ptr %166, i32 0, i32 17
  store i32 %div, ptr %mincut170, align 8, !tbaa !53
  %167 = load i32, ptr %nbnd, align 4, !tbaa !13
  %168 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nbnd171 = getelementptr inbounds %struct.graph_t, ptr %168, i32 0, i32 21
  store i32 %167, ptr %nbnd171, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 8, ptr %mynbrs) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %myrinfo) #4
  br label %sw.epilog

sw.bb172:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %myrinfo173) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mynbrs174) #4
  %169 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %vkrinfo = getelementptr inbounds %struct.graph_t, ptr %169, i32 0, i32 27
  %170 = load ptr, ptr %vkrinfo, align 8, !tbaa !55
  %171 = load i32, ptr %nvtxs, align 4, !tbaa !13
  %conv175 = sext i32 %171 to i64
  %mul176 = mul i64 20, %conv175
  call void @llvm.memset.p0.i64(ptr align 4 %170, i8 0, i64 %mul176, i1 false)
  %172 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__vnbrpoolReset(ptr noundef %172)
  store i32 0, ptr %i, align 4, !tbaa !13
  br label %for.cond177

for.cond177:                                      ; preds = %for.inc284, %sw.bb172
  %173 = load i32, ptr %i, align 4, !tbaa !13
  %174 = load i32, ptr %nvtxs, align 4, !tbaa !13
  %cmp178 = icmp slt i32 %173, %174
  br i1 %cmp178, label %for.body180, label %for.end286

for.body180:                                      ; preds = %for.cond177
  %175 = load ptr, ptr %where, align 8, !tbaa !4
  %176 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom181 = sext i32 %176 to i64
  %arrayidx182 = getelementptr inbounds i32, ptr %175, i64 %idxprom181
  %177 = load i32, ptr %arrayidx182, align 4, !tbaa !13
  store i32 %177, ptr %me, align 4, !tbaa !13
  %178 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %vkrinfo183 = getelementptr inbounds %struct.graph_t, ptr %178, i32 0, i32 27
  %179 = load ptr, ptr %vkrinfo183, align 8, !tbaa !55
  %180 = load i32, ptr %i, align 4, !tbaa !13
  %idx.ext184 = sext i32 %180 to i64
  %add.ptr185 = getelementptr inbounds %struct.vkrinfo_t, ptr %179, i64 %idx.ext184
  store ptr %add.ptr185, ptr %myrinfo173, align 8, !tbaa !4
  %181 = load ptr, ptr %xadj, align 8, !tbaa !4
  %182 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom186 = sext i32 %182 to i64
  %arrayidx187 = getelementptr inbounds i32, ptr %181, i64 %idxprom186
  %183 = load i32, ptr %arrayidx187, align 4, !tbaa !13
  store i32 %183, ptr %j, align 4, !tbaa !13
  br label %for.cond188

for.cond188:                                      ; preds = %for.inc206, %for.body180
  %184 = load i32, ptr %j, align 4, !tbaa !13
  %185 = load ptr, ptr %xadj, align 8, !tbaa !4
  %186 = load i32, ptr %i, align 4, !tbaa !13
  %add189 = add nsw i32 %186, 1
  %idxprom190 = sext i32 %add189 to i64
  %arrayidx191 = getelementptr inbounds i32, ptr %185, i64 %idxprom190
  %187 = load i32, ptr %arrayidx191, align 4, !tbaa !13
  %cmp192 = icmp slt i32 %184, %187
  br i1 %cmp192, label %for.body194, label %for.end208

for.body194:                                      ; preds = %for.cond188
  %188 = load i32, ptr %me, align 4, !tbaa !13
  %189 = load ptr, ptr %where, align 8, !tbaa !4
  %190 = load ptr, ptr %adjncy, align 8, !tbaa !4
  %191 = load i32, ptr %j, align 4, !tbaa !13
  %idxprom195 = sext i32 %191 to i64
  %arrayidx196 = getelementptr inbounds i32, ptr %190, i64 %idxprom195
  %192 = load i32, ptr %arrayidx196, align 4, !tbaa !13
  %idxprom197 = sext i32 %192 to i64
  %arrayidx198 = getelementptr inbounds i32, ptr %189, i64 %idxprom197
  %193 = load i32, ptr %arrayidx198, align 4, !tbaa !13
  %cmp199 = icmp eq i32 %188, %193
  br i1 %cmp199, label %if.then201, label %if.else203

if.then201:                                       ; preds = %for.body194
  %194 = load ptr, ptr %myrinfo173, align 8, !tbaa !4
  %nid = getelementptr inbounds %struct.vkrinfo_t, ptr %194, i32 0, i32 0
  %195 = load i32, ptr %nid, align 4, !tbaa !56
  %inc202 = add nsw i32 %195, 1
  store i32 %inc202, ptr %nid, align 4, !tbaa !56
  br label %if.end205

if.else203:                                       ; preds = %for.body194
  %196 = load ptr, ptr %myrinfo173, align 8, !tbaa !4
  %ned = getelementptr inbounds %struct.vkrinfo_t, ptr %196, i32 0, i32 1
  %197 = load i32, ptr %ned, align 4, !tbaa !58
  %inc204 = add nsw i32 %197, 1
  store i32 %inc204, ptr %ned, align 4, !tbaa !58
  br label %if.end205

if.end205:                                        ; preds = %if.else203, %if.then201
  br label %for.inc206

for.inc206:                                       ; preds = %if.end205
  %198 = load i32, ptr %j, align 4, !tbaa !13
  %inc207 = add nsw i32 %198, 1
  store i32 %inc207, ptr %j, align 4, !tbaa !13
  br label %for.cond188, !llvm.loop !59

for.end208:                                       ; preds = %for.cond188
  %199 = load ptr, ptr %myrinfo173, align 8, !tbaa !4
  %ned209 = getelementptr inbounds %struct.vkrinfo_t, ptr %199, i32 0, i32 1
  %200 = load i32, ptr %ned209, align 4, !tbaa !58
  %cmp210 = icmp sgt i32 %200, 0
  br i1 %cmp210, label %if.then212, label %if.else281

if.then212:                                       ; preds = %for.end208
  %201 = load ptr, ptr %myrinfo173, align 8, !tbaa !4
  %ned213 = getelementptr inbounds %struct.vkrinfo_t, ptr %201, i32 0, i32 1
  %202 = load i32, ptr %ned213, align 4, !tbaa !58
  %203 = load i32, ptr %mincut, align 4, !tbaa !13
  %add214 = add nsw i32 %203, %202
  store i32 %add214, ptr %mincut, align 4, !tbaa !13
  %204 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %205 = load ptr, ptr %xadj, align 8, !tbaa !4
  %206 = load i32, ptr %i, align 4, !tbaa !13
  %add215 = add nsw i32 %206, 1
  %idxprom216 = sext i32 %add215 to i64
  %arrayidx217 = getelementptr inbounds i32, ptr %205, i64 %idxprom216
  %207 = load i32, ptr %arrayidx217, align 4, !tbaa !13
  %208 = load ptr, ptr %xadj, align 8, !tbaa !4
  %209 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom218 = sext i32 %209 to i64
  %arrayidx219 = getelementptr inbounds i32, ptr %208, i64 %idxprom218
  %210 = load i32, ptr %arrayidx219, align 4, !tbaa !13
  %sub220 = sub nsw i32 %207, %210
  %add221 = add nsw i32 %sub220, 1
  %call222 = call i32 @libmetis__vnbrpoolGetNext(ptr noundef %204, i32 noundef %add221)
  %211 = load ptr, ptr %myrinfo173, align 8, !tbaa !4
  %inbr223 = getelementptr inbounds %struct.vkrinfo_t, ptr %211, i32 0, i32 4
  store i32 %call222, ptr %inbr223, align 4, !tbaa !60
  %212 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %vnbrpool = getelementptr inbounds %struct.ctrl_t, ptr %212, i32 0, i32 44
  %213 = load ptr, ptr %vnbrpool, align 8, !tbaa !61
  %214 = load ptr, ptr %myrinfo173, align 8, !tbaa !4
  %inbr224 = getelementptr inbounds %struct.vkrinfo_t, ptr %214, i32 0, i32 4
  %215 = load i32, ptr %inbr224, align 4, !tbaa !60
  %idx.ext225 = sext i32 %215 to i64
  %add.ptr226 = getelementptr inbounds %struct.vnbr_t, ptr %213, i64 %idx.ext225
  store ptr %add.ptr226, ptr %mynbrs174, align 8, !tbaa !4
  %216 = load ptr, ptr %xadj, align 8, !tbaa !4
  %217 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom227 = sext i32 %217 to i64
  %arrayidx228 = getelementptr inbounds i32, ptr %216, i64 %idxprom227
  %218 = load i32, ptr %arrayidx228, align 4, !tbaa !13
  store i32 %218, ptr %j, align 4, !tbaa !13
  br label %for.cond229

for.cond229:                                      ; preds = %for.inc278, %if.then212
  %219 = load i32, ptr %j, align 4, !tbaa !13
  %220 = load ptr, ptr %xadj, align 8, !tbaa !4
  %221 = load i32, ptr %i, align 4, !tbaa !13
  %add230 = add nsw i32 %221, 1
  %idxprom231 = sext i32 %add230 to i64
  %arrayidx232 = getelementptr inbounds i32, ptr %220, i64 %idxprom231
  %222 = load i32, ptr %arrayidx232, align 4, !tbaa !13
  %cmp233 = icmp slt i32 %219, %222
  br i1 %cmp233, label %for.body235, label %for.end280

for.body235:                                      ; preds = %for.cond229
  %223 = load ptr, ptr %where, align 8, !tbaa !4
  %224 = load ptr, ptr %adjncy, align 8, !tbaa !4
  %225 = load i32, ptr %j, align 4, !tbaa !13
  %idxprom236 = sext i32 %225 to i64
  %arrayidx237 = getelementptr inbounds i32, ptr %224, i64 %idxprom236
  %226 = load i32, ptr %arrayidx237, align 4, !tbaa !13
  %idxprom238 = sext i32 %226 to i64
  %arrayidx239 = getelementptr inbounds i32, ptr %223, i64 %idxprom238
  %227 = load i32, ptr %arrayidx239, align 4, !tbaa !13
  store i32 %227, ptr %other, align 4, !tbaa !13
  %228 = load i32, ptr %me, align 4, !tbaa !13
  %229 = load i32, ptr %other, align 4, !tbaa !13
  %cmp240 = icmp ne i32 %228, %229
  br i1 %cmp240, label %if.then242, label %if.end277

if.then242:                                       ; preds = %for.body235
  store i32 0, ptr %k, align 4, !tbaa !13
  br label %for.cond243

for.cond243:                                      ; preds = %for.inc259, %if.then242
  %230 = load i32, ptr %k, align 4, !tbaa !13
  %231 = load ptr, ptr %myrinfo173, align 8, !tbaa !4
  %nnbrs244 = getelementptr inbounds %struct.vkrinfo_t, ptr %231, i32 0, i32 3
  %232 = load i32, ptr %nnbrs244, align 4, !tbaa !62
  %cmp245 = icmp slt i32 %230, %232
  br i1 %cmp245, label %for.body247, label %for.end261

for.body247:                                      ; preds = %for.cond243
  %233 = load ptr, ptr %mynbrs174, align 8, !tbaa !4
  %234 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom248 = sext i32 %234 to i64
  %arrayidx249 = getelementptr inbounds %struct.vnbr_t, ptr %233, i64 %idxprom248
  %pid250 = getelementptr inbounds %struct.vnbr_t, ptr %arrayidx249, i32 0, i32 0
  %235 = load i32, ptr %pid250, align 4, !tbaa !63
  %236 = load i32, ptr %other, align 4, !tbaa !13
  %cmp251 = icmp eq i32 %235, %236
  br i1 %cmp251, label %if.then253, label %if.end258

if.then253:                                       ; preds = %for.body247
  %237 = load ptr, ptr %mynbrs174, align 8, !tbaa !4
  %238 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom254 = sext i32 %238 to i64
  %arrayidx255 = getelementptr inbounds %struct.vnbr_t, ptr %237, i64 %idxprom254
  %ned256 = getelementptr inbounds %struct.vnbr_t, ptr %arrayidx255, i32 0, i32 1
  %239 = load i32, ptr %ned256, align 4, !tbaa !65
  %inc257 = add nsw i32 %239, 1
  store i32 %inc257, ptr %ned256, align 4, !tbaa !65
  br label %for.end261

if.end258:                                        ; preds = %for.body247
  br label %for.inc259

for.inc259:                                       ; preds = %if.end258
  %240 = load i32, ptr %k, align 4, !tbaa !13
  %inc260 = add nsw i32 %240, 1
  store i32 %inc260, ptr %k, align 4, !tbaa !13
  br label %for.cond243, !llvm.loop !66

for.end261:                                       ; preds = %if.then253, %for.cond243
  %241 = load i32, ptr %k, align 4, !tbaa !13
  %242 = load ptr, ptr %myrinfo173, align 8, !tbaa !4
  %nnbrs262 = getelementptr inbounds %struct.vkrinfo_t, ptr %242, i32 0, i32 3
  %243 = load i32, ptr %nnbrs262, align 4, !tbaa !62
  %cmp263 = icmp eq i32 %241, %243
  br i1 %cmp263, label %if.then265, label %if.end276

if.then265:                                       ; preds = %for.end261
  %244 = load ptr, ptr %mynbrs174, align 8, !tbaa !4
  %245 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom266 = sext i32 %245 to i64
  %arrayidx267 = getelementptr inbounds %struct.vnbr_t, ptr %244, i64 %idxprom266
  %gv = getelementptr inbounds %struct.vnbr_t, ptr %arrayidx267, i32 0, i32 2
  store i32 0, ptr %gv, align 4, !tbaa !67
  %246 = load i32, ptr %other, align 4, !tbaa !13
  %247 = load ptr, ptr %mynbrs174, align 8, !tbaa !4
  %248 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom268 = sext i32 %248 to i64
  %arrayidx269 = getelementptr inbounds %struct.vnbr_t, ptr %247, i64 %idxprom268
  %pid270 = getelementptr inbounds %struct.vnbr_t, ptr %arrayidx269, i32 0, i32 0
  store i32 %246, ptr %pid270, align 4, !tbaa !63
  %249 = load ptr, ptr %mynbrs174, align 8, !tbaa !4
  %250 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom271 = sext i32 %250 to i64
  %arrayidx272 = getelementptr inbounds %struct.vnbr_t, ptr %249, i64 %idxprom271
  %ned273 = getelementptr inbounds %struct.vnbr_t, ptr %arrayidx272, i32 0, i32 1
  store i32 1, ptr %ned273, align 4, !tbaa !65
  %251 = load ptr, ptr %myrinfo173, align 8, !tbaa !4
  %nnbrs274 = getelementptr inbounds %struct.vkrinfo_t, ptr %251, i32 0, i32 3
  %252 = load i32, ptr %nnbrs274, align 4, !tbaa !62
  %inc275 = add nsw i32 %252, 1
  store i32 %inc275, ptr %nnbrs274, align 4, !tbaa !62
  br label %if.end276

if.end276:                                        ; preds = %if.then265, %for.end261
  br label %if.end277

if.end277:                                        ; preds = %if.end276, %for.body235
  br label %for.inc278

for.inc278:                                       ; preds = %if.end277
  %253 = load i32, ptr %j, align 4, !tbaa !13
  %inc279 = add nsw i32 %253, 1
  store i32 %inc279, ptr %j, align 4, !tbaa !13
  br label %for.cond229, !llvm.loop !68

for.end280:                                       ; preds = %for.cond229
  br label %if.end283

if.else281:                                       ; preds = %for.end208
  %254 = load ptr, ptr %myrinfo173, align 8, !tbaa !4
  %inbr282 = getelementptr inbounds %struct.vkrinfo_t, ptr %254, i32 0, i32 4
  store i32 -1, ptr %inbr282, align 4, !tbaa !60
  br label %if.end283

if.end283:                                        ; preds = %if.else281, %for.end280
  br label %for.inc284

for.inc284:                                       ; preds = %if.end283
  %255 = load i32, ptr %i, align 4, !tbaa !13
  %inc285 = add nsw i32 %255, 1
  store i32 %inc285, ptr %i, align 4, !tbaa !13
  br label %for.cond177, !llvm.loop !69

for.end286:                                       ; preds = %for.cond177
  %256 = load i32, ptr %mincut, align 4, !tbaa !13
  %div287 = sdiv i32 %256, 2
  %257 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %mincut288 = getelementptr inbounds %struct.graph_t, ptr %257, i32 0, i32 17
  store i32 %div287, ptr %mincut288, align 8, !tbaa !53
  %258 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %259 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__ComputeKWayVolGains(ptr noundef %258, ptr noundef %259)
  call void @llvm.lifetime.end.p0(i64 8, ptr %mynbrs174) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %myrinfo173) #4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %260 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %objtype289 = getelementptr inbounds %struct.ctrl_t, ptr %260, i32 0, i32 1
  %261 = load i32, ptr %objtype289, align 4, !tbaa !38
  call void (i32, ptr, ...) @gk_errexit(i32 noundef 15, ptr noundef @.str.6, i32 noundef %261)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end286, %for.end169
  call void @llvm.lifetime.end.p0(i64 8, ptr %bndptr) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bndind) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %where) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pwgts) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %adjwgt) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %adjncy) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %vwgt) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %xadj) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %other) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %me) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mincut) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbnd) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nparts) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ncon) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nvtxs) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret void
}

declare void @libmetis__EliminateSubDomainEdges(ptr noundef, ptr noundef) #2

declare i32 @libmetis__FindPartitionInducedComponents(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @libmetis__EliminateComponents(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @libmetis__ComputeKWayBoundary(ptr noundef %ctrl, ptr noundef %graph, i32 noundef %bndtype) #0 {
entry:
  %ctrl.addr = alloca ptr, align 8
  %graph.addr = alloca ptr, align 8
  %bndtype.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %nvtxs = alloca i32, align 4
  %nbnd = alloca i32, align 4
  %bndind = alloca ptr, align 8
  %bndptr = alloca ptr, align 8
  store ptr %ctrl, ptr %ctrl.addr, align 8, !tbaa !4
  store ptr %graph, ptr %graph.addr, align 8, !tbaa !4
  store i32 %bndtype, ptr %bndtype.addr, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nvtxs) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbnd) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bndind) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bndptr) #4
  %0 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs1 = getelementptr inbounds %struct.graph_t, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %nvtxs1, align 8, !tbaa !26
  store i32 %1, ptr %nvtxs, align 4, !tbaa !13
  %2 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %bndind2 = getelementptr inbounds %struct.graph_t, ptr %2, i32 0, i32 23
  %3 = load ptr, ptr %bndind2, align 8, !tbaa !33
  store ptr %3, ptr %bndind, align 8, !tbaa !4
  %4 = load i32, ptr %nvtxs, align 4, !tbaa !13
  %conv = sext i32 %4 to i64
  %5 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %bndptr3 = getelementptr inbounds %struct.graph_t, ptr %5, i32 0, i32 22
  %6 = load ptr, ptr %bndptr3, align 8, !tbaa !34
  %call = call ptr @libmetis__iset(i64 noundef %conv, i32 noundef -1, ptr noundef %6)
  store ptr %call, ptr %bndptr, align 8, !tbaa !4
  store i32 0, ptr %nbnd, align 4, !tbaa !13
  %7 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %objtype = getelementptr inbounds %struct.ctrl_t, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %objtype, align 4, !tbaa !38
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb42
  ]

sw.bb:                                            ; preds = %entry
  %9 = load i32, ptr %bndtype.addr, align 4, !tbaa !13
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i32 0, ptr %i, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, ptr %i, align 4, !tbaa !13
  %11 = load i32, ptr %nvtxs, align 4, !tbaa !13
  %cmp5 = icmp slt i32 %10, %11
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %ckrinfo = getelementptr inbounds %struct.graph_t, ptr %12, i32 0, i32 26
  %13 = load ptr, ptr %ckrinfo, align 8, !tbaa !39
  %14 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds %struct.ckrinfo_t, ptr %13, i64 %idxprom
  %ed = getelementptr inbounds %struct.ckrinfo_t, ptr %arrayidx, i32 0, i32 1
  %15 = load i32, ptr %ed, align 4, !tbaa !42
  %16 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %ckrinfo7 = getelementptr inbounds %struct.graph_t, ptr %16, i32 0, i32 26
  %17 = load ptr, ptr %ckrinfo7, align 8, !tbaa !39
  %18 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom8 = sext i32 %18 to i64
  %arrayidx9 = getelementptr inbounds %struct.ckrinfo_t, ptr %17, i64 %idxprom8
  %id = getelementptr inbounds %struct.ckrinfo_t, ptr %arrayidx9, i32 0, i32 0
  %19 = load i32, ptr %id, align 4, !tbaa !40
  %sub = sub nsw i32 %15, %19
  %cmp10 = icmp sge i32 %sub, 0
  br i1 %cmp10, label %if.then12, label %if.end

if.then12:                                        ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then12
  %20 = load i32, ptr %i, align 4, !tbaa !13
  %21 = load ptr, ptr %bndind, align 8, !tbaa !4
  %22 = load i32, ptr %nbnd, align 4, !tbaa !13
  %idxprom13 = sext i32 %22 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %21, i64 %idxprom13
  store i32 %20, ptr %arrayidx14, align 4, !tbaa !13
  %23 = load i32, ptr %nbnd, align 4, !tbaa !13
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %nbnd, align 4, !tbaa !13
  %24 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %25 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom15 = sext i32 %25 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %24, i64 %idxprom15
  store i32 %23, ptr %arrayidx16, align 4, !tbaa !13
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load i32, ptr %i, align 4, !tbaa !13
  %inc17 = add nsw i32 %26, 1
  store i32 %inc17, ptr %i, align 4, !tbaa !13
  br label %for.cond, !llvm.loop !70

for.end:                                          ; preds = %for.cond
  br label %if.end41

if.else:                                          ; preds = %sw.bb
  store i32 0, ptr %i, align 4, !tbaa !13
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc38, %if.else
  %27 = load i32, ptr %i, align 4, !tbaa !13
  %28 = load i32, ptr %nvtxs, align 4, !tbaa !13
  %cmp19 = icmp slt i32 %27, %28
  br i1 %cmp19, label %for.body21, label %for.end40

for.body21:                                       ; preds = %for.cond18
  %29 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %ckrinfo22 = getelementptr inbounds %struct.graph_t, ptr %29, i32 0, i32 26
  %30 = load ptr, ptr %ckrinfo22, align 8, !tbaa !39
  %31 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom23 = sext i32 %31 to i64
  %arrayidx24 = getelementptr inbounds %struct.ckrinfo_t, ptr %30, i64 %idxprom23
  %ed25 = getelementptr inbounds %struct.ckrinfo_t, ptr %arrayidx24, i32 0, i32 1
  %32 = load i32, ptr %ed25, align 4, !tbaa !42
  %cmp26 = icmp sgt i32 %32, 0
  br i1 %cmp26, label %if.then28, label %if.end37

if.then28:                                        ; preds = %for.body21
  br label %do.body29

do.body29:                                        ; preds = %if.then28
  %33 = load i32, ptr %i, align 4, !tbaa !13
  %34 = load ptr, ptr %bndind, align 8, !tbaa !4
  %35 = load i32, ptr %nbnd, align 4, !tbaa !13
  %idxprom30 = sext i32 %35 to i64
  %arrayidx31 = getelementptr inbounds i32, ptr %34, i64 %idxprom30
  store i32 %33, ptr %arrayidx31, align 4, !tbaa !13
  %36 = load i32, ptr %nbnd, align 4, !tbaa !13
  %inc32 = add nsw i32 %36, 1
  store i32 %inc32, ptr %nbnd, align 4, !tbaa !13
  %37 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %38 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom33 = sext i32 %38 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %37, i64 %idxprom33
  store i32 %36, ptr %arrayidx34, align 4, !tbaa !13
  br label %do.cond35

do.cond35:                                        ; preds = %do.body29
  br label %do.end36

do.end36:                                         ; preds = %do.cond35
  br label %if.end37

if.end37:                                         ; preds = %do.end36, %for.body21
  br label %for.inc38

for.inc38:                                        ; preds = %if.end37
  %39 = load i32, ptr %i, align 4, !tbaa !13
  %inc39 = add nsw i32 %39, 1
  store i32 %inc39, ptr %i, align 4, !tbaa !13
  br label %for.cond18, !llvm.loop !71

for.end40:                                        ; preds = %for.cond18
  br label %if.end41

if.end41:                                         ; preds = %for.end40, %for.end
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  %40 = load i32, ptr %bndtype.addr, align 4, !tbaa !13
  %cmp43 = icmp eq i32 %40, 1
  br i1 %cmp43, label %if.then45, label %if.else67

if.then45:                                        ; preds = %sw.bb42
  store i32 0, ptr %i, align 4, !tbaa !13
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc64, %if.then45
  %41 = load i32, ptr %i, align 4, !tbaa !13
  %42 = load i32, ptr %nvtxs, align 4, !tbaa !13
  %cmp47 = icmp slt i32 %41, %42
  br i1 %cmp47, label %for.body49, label %for.end66

for.body49:                                       ; preds = %for.cond46
  %43 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %vkrinfo = getelementptr inbounds %struct.graph_t, ptr %43, i32 0, i32 27
  %44 = load ptr, ptr %vkrinfo, align 8, !tbaa !55
  %45 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom50 = sext i32 %45 to i64
  %arrayidx51 = getelementptr inbounds %struct.vkrinfo_t, ptr %44, i64 %idxprom50
  %gv = getelementptr inbounds %struct.vkrinfo_t, ptr %arrayidx51, i32 0, i32 2
  %46 = load i32, ptr %gv, align 4, !tbaa !72
  %cmp52 = icmp sge i32 %46, 0
  br i1 %cmp52, label %if.then54, label %if.end63

if.then54:                                        ; preds = %for.body49
  br label %do.body55

do.body55:                                        ; preds = %if.then54
  %47 = load i32, ptr %i, align 4, !tbaa !13
  %48 = load ptr, ptr %bndind, align 8, !tbaa !4
  %49 = load i32, ptr %nbnd, align 4, !tbaa !13
  %idxprom56 = sext i32 %49 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %48, i64 %idxprom56
  store i32 %47, ptr %arrayidx57, align 4, !tbaa !13
  %50 = load i32, ptr %nbnd, align 4, !tbaa !13
  %inc58 = add nsw i32 %50, 1
  store i32 %inc58, ptr %nbnd, align 4, !tbaa !13
  %51 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %52 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom59 = sext i32 %52 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %51, i64 %idxprom59
  store i32 %50, ptr %arrayidx60, align 4, !tbaa !13
  br label %do.cond61

do.cond61:                                        ; preds = %do.body55
  br label %do.end62

do.end62:                                         ; preds = %do.cond61
  br label %if.end63

if.end63:                                         ; preds = %do.end62, %for.body49
  br label %for.inc64

for.inc64:                                        ; preds = %if.end63
  %53 = load i32, ptr %i, align 4, !tbaa !13
  %inc65 = add nsw i32 %53, 1
  store i32 %inc65, ptr %i, align 4, !tbaa !13
  br label %for.cond46, !llvm.loop !73

for.end66:                                        ; preds = %for.cond46
  br label %if.end90

if.else67:                                        ; preds = %sw.bb42
  store i32 0, ptr %i, align 4, !tbaa !13
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc87, %if.else67
  %54 = load i32, ptr %i, align 4, !tbaa !13
  %55 = load i32, ptr %nvtxs, align 4, !tbaa !13
  %cmp69 = icmp slt i32 %54, %55
  br i1 %cmp69, label %for.body71, label %for.end89

for.body71:                                       ; preds = %for.cond68
  %56 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %vkrinfo72 = getelementptr inbounds %struct.graph_t, ptr %56, i32 0, i32 27
  %57 = load ptr, ptr %vkrinfo72, align 8, !tbaa !55
  %58 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom73 = sext i32 %58 to i64
  %arrayidx74 = getelementptr inbounds %struct.vkrinfo_t, ptr %57, i64 %idxprom73
  %ned = getelementptr inbounds %struct.vkrinfo_t, ptr %arrayidx74, i32 0, i32 1
  %59 = load i32, ptr %ned, align 4, !tbaa !58
  %cmp75 = icmp sgt i32 %59, 0
  br i1 %cmp75, label %if.then77, label %if.end86

if.then77:                                        ; preds = %for.body71
  br label %do.body78

do.body78:                                        ; preds = %if.then77
  %60 = load i32, ptr %i, align 4, !tbaa !13
  %61 = load ptr, ptr %bndind, align 8, !tbaa !4
  %62 = load i32, ptr %nbnd, align 4, !tbaa !13
  %idxprom79 = sext i32 %62 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %61, i64 %idxprom79
  store i32 %60, ptr %arrayidx80, align 4, !tbaa !13
  %63 = load i32, ptr %nbnd, align 4, !tbaa !13
  %inc81 = add nsw i32 %63, 1
  store i32 %inc81, ptr %nbnd, align 4, !tbaa !13
  %64 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %65 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom82 = sext i32 %65 to i64
  %arrayidx83 = getelementptr inbounds i32, ptr %64, i64 %idxprom82
  store i32 %63, ptr %arrayidx83, align 4, !tbaa !13
  br label %do.cond84

do.cond84:                                        ; preds = %do.body78
  br label %do.end85

do.end85:                                         ; preds = %do.cond84
  br label %if.end86

if.end86:                                         ; preds = %do.end85, %for.body71
  br label %for.inc87

for.inc87:                                        ; preds = %if.end86
  %66 = load i32, ptr %i, align 4, !tbaa !13
  %inc88 = add nsw i32 %66, 1
  store i32 %inc88, ptr %i, align 4, !tbaa !13
  br label %for.cond68, !llvm.loop !74

for.end89:                                        ; preds = %for.cond68
  br label %if.end90

if.end90:                                         ; preds = %for.end89, %for.end66
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %67 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %objtype91 = getelementptr inbounds %struct.ctrl_t, ptr %67, i32 0, i32 1
  %68 = load i32, ptr %objtype91, align 4, !tbaa !38
  call void (i32, ptr, ...) @gk_errexit(i32 noundef 15, ptr noundef @.str.6, i32 noundef %68)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end90, %if.end41
  %69 = load i32, ptr %nbnd, align 4, !tbaa !13
  %70 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nbnd92 = getelementptr inbounds %struct.graph_t, ptr %70, i32 0, i32 21
  store i32 %69, ptr %nbnd92, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 8, ptr %bndptr) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bndind) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbnd) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nvtxs) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret void
}

declare void @libmetis__Greedy_KWayOptimize(ptr noundef, ptr noundef, i32 noundef, double noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define i32 @libmetis__IsBalanced(ptr noundef %ctrl, ptr noundef %graph, double noundef %ffactor) #0 {
entry:
  %ctrl.addr = alloca ptr, align 8
  %graph.addr = alloca ptr, align 8
  %ffactor.addr = alloca double, align 8
  store ptr %ctrl, ptr %ctrl.addr, align 8, !tbaa !4
  store ptr %graph, ptr %graph.addr, align 8, !tbaa !4
  store double %ffactor, ptr %ffactor.addr, align 8, !tbaa !75
  %0 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %nparts = getelementptr inbounds %struct.ctrl_t, ptr %1, i32 0, i32 21
  %2 = load i32, ptr %nparts, align 4, !tbaa !22
  %3 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %pijbm = getelementptr inbounds %struct.ctrl_t, ptr %3, i32 0, i32 25
  %4 = load ptr, ptr %pijbm, align 8, !tbaa !76
  %5 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %ubfactors = getelementptr inbounds %struct.ctrl_t, ptr %5, i32 0, i32 23
  %6 = load ptr, ptr %ubfactors, align 8, !tbaa !77
  %call = call double @libmetis__ComputeLoadImbalanceDiff(ptr noundef %0, i32 noundef %2, ptr noundef %4, ptr noundef %6)
  %7 = load double, ptr %ffactor.addr, align 8, !tbaa !75
  %cmp = fcmp ole double %call, %7
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define void @libmetis__ProjectKWayPartition(ptr noundef %ctrl, ptr noundef %graph) #0 {
entry:
  %ctrl.addr = alloca ptr, align 8
  %graph.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nvtxs = alloca i32, align 4
  %nbnd = alloca i32, align 4
  %nparts = alloca i32, align 4
  %me = alloca i32, align 4
  %other = alloca i32, align 4
  %istart = alloca i32, align 4
  %iend = alloca i32, align 4
  %tid = alloca i32, align 4
  %ted = alloca i32, align 4
  %xadj = alloca ptr, align 8
  %adjncy = alloca ptr, align 8
  %adjwgt = alloca ptr, align 8
  %cmap = alloca ptr, align 8
  %where = alloca ptr, align 8
  %bndptr = alloca ptr, align 8
  %bndind = alloca ptr, align 8
  %cwhere = alloca ptr, align 8
  %htable = alloca ptr, align 8
  %cgraph = alloca ptr, align 8
  %myrinfo = alloca ptr, align 8
  %mynbrs = alloca ptr, align 8
  %myrinfo143 = alloca ptr, align 8
  %mynbrs144 = alloca ptr, align 8
  store ptr %ctrl, ptr %ctrl.addr, align 8, !tbaa !4
  store ptr %graph, ptr %graph.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nvtxs) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbnd) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nparts) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %me) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %other) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %istart) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %iend) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tid) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ted) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %xadj) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adjncy) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adjwgt) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmap) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %where) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bndptr) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bndind) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cwhere) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %htable) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cgraph) #4
  %0 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__wspacepush(ptr noundef %0)
  %1 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %nparts1 = getelementptr inbounds %struct.ctrl_t, ptr %1, i32 0, i32 21
  %2 = load i32, ptr %nparts1, align 4, !tbaa !22
  store i32 %2, ptr %nparts, align 4, !tbaa !13
  %3 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %coarser = getelementptr inbounds %struct.graph_t, ptr %3, i32 0, i32 29
  %4 = load ptr, ptr %coarser, align 8, !tbaa !78
  store ptr %4, ptr %cgraph, align 8, !tbaa !4
  %5 = load ptr, ptr %cgraph, align 8, !tbaa !4
  %where2 = getelementptr inbounds %struct.graph_t, ptr %5, i32 0, i32 19
  %6 = load ptr, ptr %where2, align 8, !tbaa !21
  store ptr %6, ptr %cwhere, align 8, !tbaa !4
  %7 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs3 = getelementptr inbounds %struct.graph_t, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %nvtxs3, align 8, !tbaa !26
  store i32 %8, ptr %nvtxs, align 4, !tbaa !13
  %9 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %cmap4 = getelementptr inbounds %struct.graph_t, ptr %9, i32 0, i32 16
  %10 = load ptr, ptr %cmap4, align 8, !tbaa !79
  store ptr %10, ptr %cmap, align 8, !tbaa !4
  %11 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %xadj5 = getelementptr inbounds %struct.graph_t, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %xadj5, align 8, !tbaa !28
  store ptr %12, ptr %xadj, align 8, !tbaa !4
  %13 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %adjncy6 = getelementptr inbounds %struct.graph_t, ptr %13, i32 0, i32 6
  %14 = load ptr, ptr %adjncy6, align 8, !tbaa !30
  store ptr %14, ptr %adjncy, align 8, !tbaa !4
  %15 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %adjwgt7 = getelementptr inbounds %struct.graph_t, ptr %15, i32 0, i32 7
  %16 = load ptr, ptr %adjwgt7, align 8, !tbaa !31
  store ptr %16, ptr %adjwgt, align 8, !tbaa !4
  %17 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__AllocateKWayPartitionMemory(ptr noundef %17, ptr noundef %18)
  %19 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %where8 = getelementptr inbounds %struct.graph_t, ptr %19, i32 0, i32 19
  %20 = load ptr, ptr %where8, align 8, !tbaa !21
  store ptr %20, ptr %where, align 8, !tbaa !4
  %21 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %bndind9 = getelementptr inbounds %struct.graph_t, ptr %21, i32 0, i32 23
  %22 = load ptr, ptr %bndind9, align 8, !tbaa !33
  store ptr %22, ptr %bndind, align 8, !tbaa !4
  %23 = load i32, ptr %nvtxs, align 4, !tbaa !13
  %conv = sext i32 %23 to i64
  %24 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %bndptr10 = getelementptr inbounds %struct.graph_t, ptr %24, i32 0, i32 22
  %25 = load ptr, ptr %bndptr10, align 8, !tbaa !34
  %call = call ptr @libmetis__iset(i64 noundef %conv, i32 noundef -1, ptr noundef %25)
  store ptr %call, ptr %bndptr, align 8, !tbaa !4
  %26 = load i32, ptr %nparts, align 4, !tbaa !13
  %conv11 = sext i32 %26 to i64
  %27 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %28 = load i32, ptr %nparts, align 4, !tbaa !13
  %call12 = call ptr @libmetis__iwspacemalloc(ptr noundef %27, i32 noundef %28)
  %call13 = call ptr @libmetis__iset(i64 noundef %conv11, i32 noundef -1, ptr noundef %call12)
  store ptr %call13, ptr %htable, align 8, !tbaa !4
  %29 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %objtype = getelementptr inbounds %struct.ctrl_t, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %objtype, align 4, !tbaa !38
  switch i32 %30, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb142
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %myrinfo) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mynbrs) #4
  store i32 0, ptr %i, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %31 = load i32, ptr %i, align 4, !tbaa !13
  %32 = load i32, ptr %nvtxs, align 4, !tbaa !13
  %cmp = icmp slt i32 %31, %32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load ptr, ptr %cmap, align 8, !tbaa !4
  %34 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom = sext i32 %34 to i64
  %arrayidx = getelementptr inbounds i32, ptr %33, i64 %idxprom
  %35 = load i32, ptr %arrayidx, align 4, !tbaa !13
  store i32 %35, ptr %k, align 4, !tbaa !13
  %36 = load ptr, ptr %cwhere, align 8, !tbaa !4
  %37 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom15 = sext i32 %37 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %36, i64 %idxprom15
  %38 = load i32, ptr %arrayidx16, align 4, !tbaa !13
  %39 = load ptr, ptr %where, align 8, !tbaa !4
  %40 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom17 = sext i32 %40 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %39, i64 %idxprom17
  store i32 %38, ptr %arrayidx18, align 4, !tbaa !13
  %41 = load ptr, ptr %cgraph, align 8, !tbaa !4
  %ckrinfo = getelementptr inbounds %struct.graph_t, ptr %41, i32 0, i32 26
  %42 = load ptr, ptr %ckrinfo, align 8, !tbaa !39
  %43 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom19 = sext i32 %43 to i64
  %arrayidx20 = getelementptr inbounds %struct.ckrinfo_t, ptr %42, i64 %idxprom19
  %ed = getelementptr inbounds %struct.ckrinfo_t, ptr %arrayidx20, i32 0, i32 1
  %44 = load i32, ptr %ed, align 4, !tbaa !42
  %45 = load ptr, ptr %cmap, align 8, !tbaa !4
  %46 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom21 = sext i32 %46 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %45, i64 %idxprom21
  store i32 %44, ptr %arrayidx22, align 4, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, ptr %i, align 4, !tbaa !13
  %inc = add nsw i32 %47, 1
  store i32 %inc, ptr %i, align 4, !tbaa !13
  br label %for.cond, !llvm.loop !80

for.end:                                          ; preds = %for.cond
  %48 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %ckrinfo23 = getelementptr inbounds %struct.graph_t, ptr %48, i32 0, i32 26
  %49 = load ptr, ptr %ckrinfo23, align 8, !tbaa !39
  %50 = load i32, ptr %nvtxs, align 4, !tbaa !13
  %conv24 = sext i32 %50 to i64
  %mul = mul i64 16, %conv24
  call void @llvm.memset.p0.i64(ptr align 4 %49, i8 0, i64 %mul, i1 false)
  %51 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__cnbrpoolReset(ptr noundef %51)
  store i32 0, ptr %nbnd, align 4, !tbaa !13
  store i32 0, ptr %i, align 4, !tbaa !13
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc138, %for.end
  %52 = load i32, ptr %i, align 4, !tbaa !13
  %53 = load i32, ptr %nvtxs, align 4, !tbaa !13
  %cmp26 = icmp slt i32 %52, %53
  br i1 %cmp26, label %for.body28, label %for.end140

for.body28:                                       ; preds = %for.cond25
  %54 = load ptr, ptr %xadj, align 8, !tbaa !4
  %55 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom29 = sext i32 %55 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %54, i64 %idxprom29
  %56 = load i32, ptr %arrayidx30, align 4, !tbaa !13
  store i32 %56, ptr %istart, align 4, !tbaa !13
  %57 = load ptr, ptr %xadj, align 8, !tbaa !4
  %58 = load i32, ptr %i, align 4, !tbaa !13
  %add = add nsw i32 %58, 1
  %idxprom31 = sext i32 %add to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %57, i64 %idxprom31
  %59 = load i32, ptr %arrayidx32, align 4, !tbaa !13
  store i32 %59, ptr %iend, align 4, !tbaa !13
  %60 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %ckrinfo33 = getelementptr inbounds %struct.graph_t, ptr %60, i32 0, i32 26
  %61 = load ptr, ptr %ckrinfo33, align 8, !tbaa !39
  %62 = load i32, ptr %i, align 4, !tbaa !13
  %idx.ext = sext i32 %62 to i64
  %add.ptr = getelementptr inbounds %struct.ckrinfo_t, ptr %61, i64 %idx.ext
  store ptr %add.ptr, ptr %myrinfo, align 8, !tbaa !4
  %63 = load ptr, ptr %cmap, align 8, !tbaa !4
  %64 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom34 = sext i32 %64 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %63, i64 %idxprom34
  %65 = load i32, ptr %arrayidx35, align 4, !tbaa !13
  %cmp36 = icmp eq i32 %65, 0
  br i1 %cmp36, label %if.then, label %if.else

if.then:                                          ; preds = %for.body28
  store i32 0, ptr %tid, align 4, !tbaa !13
  %66 = load i32, ptr %istart, align 4, !tbaa !13
  store i32 %66, ptr %j, align 4, !tbaa !13
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc45, %if.then
  %67 = load i32, ptr %j, align 4, !tbaa !13
  %68 = load i32, ptr %iend, align 4, !tbaa !13
  %cmp39 = icmp slt i32 %67, %68
  br i1 %cmp39, label %for.body41, label %for.end47

for.body41:                                       ; preds = %for.cond38
  %69 = load ptr, ptr %adjwgt, align 8, !tbaa !4
  %70 = load i32, ptr %j, align 4, !tbaa !13
  %idxprom42 = sext i32 %70 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %69, i64 %idxprom42
  %71 = load i32, ptr %arrayidx43, align 4, !tbaa !13
  %72 = load i32, ptr %tid, align 4, !tbaa !13
  %add44 = add nsw i32 %72, %71
  store i32 %add44, ptr %tid, align 4, !tbaa !13
  br label %for.inc45

for.inc45:                                        ; preds = %for.body41
  %73 = load i32, ptr %j, align 4, !tbaa !13
  %inc46 = add nsw i32 %73, 1
  store i32 %inc46, ptr %j, align 4, !tbaa !13
  br label %for.cond38, !llvm.loop !81

for.end47:                                        ; preds = %for.cond38
  %74 = load i32, ptr %tid, align 4, !tbaa !13
  %75 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %id = getelementptr inbounds %struct.ckrinfo_t, ptr %75, i32 0, i32 0
  store i32 %74, ptr %id, align 4, !tbaa !40
  %76 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %inbr = getelementptr inbounds %struct.ckrinfo_t, ptr %76, i32 0, i32 3
  store i32 -1, ptr %inbr, align 4, !tbaa !44
  br label %if.end137

if.else:                                          ; preds = %for.body28
  %77 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %78 = load i32, ptr %iend, align 4, !tbaa !13
  %79 = load i32, ptr %istart, align 4, !tbaa !13
  %sub = sub nsw i32 %78, %79
  %add48 = add nsw i32 %sub, 1
  %call49 = call i32 @libmetis__cnbrpoolGetNext(ptr noundef %77, i32 noundef %add48)
  %80 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %inbr50 = getelementptr inbounds %struct.ckrinfo_t, ptr %80, i32 0, i32 3
  store i32 %call49, ptr %inbr50, align 4, !tbaa !44
  %81 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %cnbrpool = getelementptr inbounds %struct.ctrl_t, ptr %81, i32 0, i32 43
  %82 = load ptr, ptr %cnbrpool, align 8, !tbaa !45
  %83 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %inbr51 = getelementptr inbounds %struct.ckrinfo_t, ptr %83, i32 0, i32 3
  %84 = load i32, ptr %inbr51, align 4, !tbaa !44
  %idx.ext52 = sext i32 %84 to i64
  %add.ptr53 = getelementptr inbounds %struct.cnbr_t, ptr %82, i64 %idx.ext52
  store ptr %add.ptr53, ptr %mynbrs, align 8, !tbaa !4
  %85 = load ptr, ptr %where, align 8, !tbaa !4
  %86 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom54 = sext i32 %86 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %85, i64 %idxprom54
  %87 = load i32, ptr %arrayidx55, align 4, !tbaa !13
  store i32 %87, ptr %me, align 4, !tbaa !13
  store i32 0, ptr %tid, align 4, !tbaa !13
  store i32 0, ptr %ted, align 4, !tbaa !13
  %88 = load i32, ptr %istart, align 4, !tbaa !13
  store i32 %88, ptr %j, align 4, !tbaa !13
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc99, %if.else
  %89 = load i32, ptr %j, align 4, !tbaa !13
  %90 = load i32, ptr %iend, align 4, !tbaa !13
  %cmp57 = icmp slt i32 %89, %90
  br i1 %cmp57, label %for.body59, label %for.end101

for.body59:                                       ; preds = %for.cond56
  %91 = load ptr, ptr %where, align 8, !tbaa !4
  %92 = load ptr, ptr %adjncy, align 8, !tbaa !4
  %93 = load i32, ptr %j, align 4, !tbaa !13
  %idxprom60 = sext i32 %93 to i64
  %arrayidx61 = getelementptr inbounds i32, ptr %92, i64 %idxprom60
  %94 = load i32, ptr %arrayidx61, align 4, !tbaa !13
  %idxprom62 = sext i32 %94 to i64
  %arrayidx63 = getelementptr inbounds i32, ptr %91, i64 %idxprom62
  %95 = load i32, ptr %arrayidx63, align 4, !tbaa !13
  store i32 %95, ptr %other, align 4, !tbaa !13
  %96 = load i32, ptr %me, align 4, !tbaa !13
  %97 = load i32, ptr %other, align 4, !tbaa !13
  %cmp64 = icmp eq i32 %96, %97
  br i1 %cmp64, label %if.then66, label %if.else70

if.then66:                                        ; preds = %for.body59
  %98 = load ptr, ptr %adjwgt, align 8, !tbaa !4
  %99 = load i32, ptr %j, align 4, !tbaa !13
  %idxprom67 = sext i32 %99 to i64
  %arrayidx68 = getelementptr inbounds i32, ptr %98, i64 %idxprom67
  %100 = load i32, ptr %arrayidx68, align 4, !tbaa !13
  %101 = load i32, ptr %tid, align 4, !tbaa !13
  %add69 = add nsw i32 %101, %100
  store i32 %add69, ptr %tid, align 4, !tbaa !13
  br label %if.end98

if.else70:                                        ; preds = %for.body59
  %102 = load ptr, ptr %adjwgt, align 8, !tbaa !4
  %103 = load i32, ptr %j, align 4, !tbaa !13
  %idxprom71 = sext i32 %103 to i64
  %arrayidx72 = getelementptr inbounds i32, ptr %102, i64 %idxprom71
  %104 = load i32, ptr %arrayidx72, align 4, !tbaa !13
  %105 = load i32, ptr %ted, align 4, !tbaa !13
  %add73 = add nsw i32 %105, %104
  store i32 %add73, ptr %ted, align 4, !tbaa !13
  %106 = load ptr, ptr %htable, align 8, !tbaa !4
  %107 = load i32, ptr %other, align 4, !tbaa !13
  %idxprom74 = sext i32 %107 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %106, i64 %idxprom74
  %108 = load i32, ptr %arrayidx75, align 4, !tbaa !13
  store i32 %108, ptr %k, align 4, !tbaa !13
  %cmp76 = icmp eq i32 %108, -1
  br i1 %cmp76, label %if.then78, label %if.else91

if.then78:                                        ; preds = %if.else70
  %109 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %nnbrs = getelementptr inbounds %struct.ckrinfo_t, ptr %109, i32 0, i32 2
  %110 = load i32, ptr %nnbrs, align 4, !tbaa !46
  %111 = load ptr, ptr %htable, align 8, !tbaa !4
  %112 = load i32, ptr %other, align 4, !tbaa !13
  %idxprom79 = sext i32 %112 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %111, i64 %idxprom79
  store i32 %110, ptr %arrayidx80, align 4, !tbaa !13
  %113 = load i32, ptr %other, align 4, !tbaa !13
  %114 = load ptr, ptr %mynbrs, align 8, !tbaa !4
  %115 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %nnbrs81 = getelementptr inbounds %struct.ckrinfo_t, ptr %115, i32 0, i32 2
  %116 = load i32, ptr %nnbrs81, align 4, !tbaa !46
  %idxprom82 = sext i32 %116 to i64
  %arrayidx83 = getelementptr inbounds %struct.cnbr_t, ptr %114, i64 %idxprom82
  %pid = getelementptr inbounds %struct.cnbr_t, ptr %arrayidx83, i32 0, i32 0
  store i32 %113, ptr %pid, align 4, !tbaa !47
  %117 = load ptr, ptr %adjwgt, align 8, !tbaa !4
  %118 = load i32, ptr %j, align 4, !tbaa !13
  %idxprom84 = sext i32 %118 to i64
  %arrayidx85 = getelementptr inbounds i32, ptr %117, i64 %idxprom84
  %119 = load i32, ptr %arrayidx85, align 4, !tbaa !13
  %120 = load ptr, ptr %mynbrs, align 8, !tbaa !4
  %121 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %nnbrs86 = getelementptr inbounds %struct.ckrinfo_t, ptr %121, i32 0, i32 2
  %122 = load i32, ptr %nnbrs86, align 4, !tbaa !46
  %inc87 = add nsw i32 %122, 1
  store i32 %inc87, ptr %nnbrs86, align 4, !tbaa !46
  %idxprom88 = sext i32 %122 to i64
  %arrayidx89 = getelementptr inbounds %struct.cnbr_t, ptr %120, i64 %idxprom88
  %ed90 = getelementptr inbounds %struct.cnbr_t, ptr %arrayidx89, i32 0, i32 1
  store i32 %119, ptr %ed90, align 4, !tbaa !49
  br label %if.end

if.else91:                                        ; preds = %if.else70
  %123 = load ptr, ptr %adjwgt, align 8, !tbaa !4
  %124 = load i32, ptr %j, align 4, !tbaa !13
  %idxprom92 = sext i32 %124 to i64
  %arrayidx93 = getelementptr inbounds i32, ptr %123, i64 %idxprom92
  %125 = load i32, ptr %arrayidx93, align 4, !tbaa !13
  %126 = load ptr, ptr %mynbrs, align 8, !tbaa !4
  %127 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom94 = sext i32 %127 to i64
  %arrayidx95 = getelementptr inbounds %struct.cnbr_t, ptr %126, i64 %idxprom94
  %ed96 = getelementptr inbounds %struct.cnbr_t, ptr %arrayidx95, i32 0, i32 1
  %128 = load i32, ptr %ed96, align 4, !tbaa !49
  %add97 = add nsw i32 %128, %125
  store i32 %add97, ptr %ed96, align 4, !tbaa !49
  br label %if.end

if.end:                                           ; preds = %if.else91, %if.then78
  br label %if.end98

if.end98:                                         ; preds = %if.end, %if.then66
  br label %for.inc99

for.inc99:                                        ; preds = %if.end98
  %129 = load i32, ptr %j, align 4, !tbaa !13
  %inc100 = add nsw i32 %129, 1
  store i32 %inc100, ptr %j, align 4, !tbaa !13
  br label %for.cond56, !llvm.loop !82

for.end101:                                       ; preds = %for.cond56
  %130 = load i32, ptr %tid, align 4, !tbaa !13
  %131 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %id102 = getelementptr inbounds %struct.ckrinfo_t, ptr %131, i32 0, i32 0
  store i32 %130, ptr %id102, align 4, !tbaa !40
  %132 = load i32, ptr %ted, align 4, !tbaa !13
  %133 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %ed103 = getelementptr inbounds %struct.ckrinfo_t, ptr %133, i32 0, i32 1
  store i32 %132, ptr %ed103, align 4, !tbaa !42
  %134 = load i32, ptr %ted, align 4, !tbaa !13
  %cmp104 = icmp eq i32 %134, 0
  br i1 %cmp104, label %if.then106, label %if.else112

if.then106:                                       ; preds = %for.end101
  %135 = load i32, ptr %iend, align 4, !tbaa !13
  %136 = load i32, ptr %istart, align 4, !tbaa !13
  %sub107 = sub nsw i32 %135, %136
  %add108 = add nsw i32 %sub107, 1
  %conv109 = sext i32 %add108 to i64
  %137 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %nbrpoolcpos = getelementptr inbounds %struct.ctrl_t, ptr %137, i32 0, i32 41
  %138 = load i64, ptr %nbrpoolcpos, align 8, !tbaa !83
  %sub110 = sub i64 %138, %conv109
  store i64 %sub110, ptr %nbrpoolcpos, align 8, !tbaa !83
  %139 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %inbr111 = getelementptr inbounds %struct.ckrinfo_t, ptr %139, i32 0, i32 3
  store i32 -1, ptr %inbr111, align 4, !tbaa !44
  br label %if.end136

if.else112:                                       ; preds = %for.end101
  %140 = load i32, ptr %ted, align 4, !tbaa !13
  %141 = load i32, ptr %tid, align 4, !tbaa !13
  %sub113 = sub nsw i32 %140, %141
  %cmp114 = icmp sge i32 %sub113, 0
  br i1 %cmp114, label %if.then116, label %if.end122

if.then116:                                       ; preds = %if.else112
  br label %do.body

do.body:                                          ; preds = %if.then116
  %142 = load i32, ptr %i, align 4, !tbaa !13
  %143 = load ptr, ptr %bndind, align 8, !tbaa !4
  %144 = load i32, ptr %nbnd, align 4, !tbaa !13
  %idxprom117 = sext i32 %144 to i64
  %arrayidx118 = getelementptr inbounds i32, ptr %143, i64 %idxprom117
  store i32 %142, ptr %arrayidx118, align 4, !tbaa !13
  %145 = load i32, ptr %nbnd, align 4, !tbaa !13
  %inc119 = add nsw i32 %145, 1
  store i32 %inc119, ptr %nbnd, align 4, !tbaa !13
  %146 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %147 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom120 = sext i32 %147 to i64
  %arrayidx121 = getelementptr inbounds i32, ptr %146, i64 %idxprom120
  store i32 %145, ptr %arrayidx121, align 4, !tbaa !13
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end122

if.end122:                                        ; preds = %do.end, %if.else112
  store i32 0, ptr %j, align 4, !tbaa !13
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc133, %if.end122
  %148 = load i32, ptr %j, align 4, !tbaa !13
  %149 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %nnbrs124 = getelementptr inbounds %struct.ckrinfo_t, ptr %149, i32 0, i32 2
  %150 = load i32, ptr %nnbrs124, align 4, !tbaa !46
  %cmp125 = icmp slt i32 %148, %150
  br i1 %cmp125, label %for.body127, label %for.end135

for.body127:                                      ; preds = %for.cond123
  %151 = load ptr, ptr %htable, align 8, !tbaa !4
  %152 = load ptr, ptr %mynbrs, align 8, !tbaa !4
  %153 = load i32, ptr %j, align 4, !tbaa !13
  %idxprom128 = sext i32 %153 to i64
  %arrayidx129 = getelementptr inbounds %struct.cnbr_t, ptr %152, i64 %idxprom128
  %pid130 = getelementptr inbounds %struct.cnbr_t, ptr %arrayidx129, i32 0, i32 0
  %154 = load i32, ptr %pid130, align 4, !tbaa !47
  %idxprom131 = sext i32 %154 to i64
  %arrayidx132 = getelementptr inbounds i32, ptr %151, i64 %idxprom131
  store i32 -1, ptr %arrayidx132, align 4, !tbaa !13
  br label %for.inc133

for.inc133:                                       ; preds = %for.body127
  %155 = load i32, ptr %j, align 4, !tbaa !13
  %inc134 = add nsw i32 %155, 1
  store i32 %inc134, ptr %j, align 4, !tbaa !13
  br label %for.cond123, !llvm.loop !84

for.end135:                                       ; preds = %for.cond123
  br label %if.end136

if.end136:                                        ; preds = %for.end135, %if.then106
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %for.end47
  br label %for.inc138

for.inc138:                                       ; preds = %if.end137
  %156 = load i32, ptr %i, align 4, !tbaa !13
  %inc139 = add nsw i32 %156, 1
  store i32 %inc139, ptr %i, align 4, !tbaa !13
  br label %for.cond25, !llvm.loop !85

for.end140:                                       ; preds = %for.cond25
  %157 = load i32, ptr %nbnd, align 4, !tbaa !13
  %158 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nbnd141 = getelementptr inbounds %struct.graph_t, ptr %158, i32 0, i32 21
  store i32 %157, ptr %nbnd141, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 8, ptr %mynbrs) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %myrinfo) #4
  br label %sw.epilog

sw.bb142:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %myrinfo143) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mynbrs144) #4
  store i32 0, ptr %i, align 4, !tbaa !13
  br label %for.cond145

for.cond145:                                      ; preds = %for.inc159, %sw.bb142
  %159 = load i32, ptr %i, align 4, !tbaa !13
  %160 = load i32, ptr %nvtxs, align 4, !tbaa !13
  %cmp146 = icmp slt i32 %159, %160
  br i1 %cmp146, label %for.body148, label %for.end161

for.body148:                                      ; preds = %for.cond145
  %161 = load ptr, ptr %cmap, align 8, !tbaa !4
  %162 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom149 = sext i32 %162 to i64
  %arrayidx150 = getelementptr inbounds i32, ptr %161, i64 %idxprom149
  %163 = load i32, ptr %arrayidx150, align 4, !tbaa !13
  store i32 %163, ptr %k, align 4, !tbaa !13
  %164 = load ptr, ptr %cwhere, align 8, !tbaa !4
  %165 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom151 = sext i32 %165 to i64
  %arrayidx152 = getelementptr inbounds i32, ptr %164, i64 %idxprom151
  %166 = load i32, ptr %arrayidx152, align 4, !tbaa !13
  %167 = load ptr, ptr %where, align 8, !tbaa !4
  %168 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom153 = sext i32 %168 to i64
  %arrayidx154 = getelementptr inbounds i32, ptr %167, i64 %idxprom153
  store i32 %166, ptr %arrayidx154, align 4, !tbaa !13
  %169 = load ptr, ptr %cgraph, align 8, !tbaa !4
  %vkrinfo = getelementptr inbounds %struct.graph_t, ptr %169, i32 0, i32 27
  %170 = load ptr, ptr %vkrinfo, align 8, !tbaa !55
  %171 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom155 = sext i32 %171 to i64
  %arrayidx156 = getelementptr inbounds %struct.vkrinfo_t, ptr %170, i64 %idxprom155
  %ned = getelementptr inbounds %struct.vkrinfo_t, ptr %arrayidx156, i32 0, i32 1
  %172 = load i32, ptr %ned, align 4, !tbaa !58
  %173 = load ptr, ptr %cmap, align 8, !tbaa !4
  %174 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom157 = sext i32 %174 to i64
  %arrayidx158 = getelementptr inbounds i32, ptr %173, i64 %idxprom157
  store i32 %172, ptr %arrayidx158, align 4, !tbaa !13
  br label %for.inc159

for.inc159:                                       ; preds = %for.body148
  %175 = load i32, ptr %i, align 4, !tbaa !13
  %inc160 = add nsw i32 %175, 1
  store i32 %inc160, ptr %i, align 4, !tbaa !13
  br label %for.cond145, !llvm.loop !86

for.end161:                                       ; preds = %for.cond145
  %176 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %vkrinfo162 = getelementptr inbounds %struct.graph_t, ptr %176, i32 0, i32 27
  %177 = load ptr, ptr %vkrinfo162, align 8, !tbaa !55
  %178 = load i32, ptr %nvtxs, align 4, !tbaa !13
  %conv163 = sext i32 %178 to i64
  %mul164 = mul i64 20, %conv163
  call void @llvm.memset.p0.i64(ptr align 4 %177, i8 0, i64 %mul164, i1 false)
  %179 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__vnbrpoolReset(ptr noundef %179)
  store i32 0, ptr %i, align 4, !tbaa !13
  br label %for.cond165

for.cond165:                                      ; preds = %for.inc265, %for.end161
  %180 = load i32, ptr %i, align 4, !tbaa !13
  %181 = load i32, ptr %nvtxs, align 4, !tbaa !13
  %cmp166 = icmp slt i32 %180, %181
  br i1 %cmp166, label %for.body168, label %for.end267

for.body168:                                      ; preds = %for.cond165
  %182 = load ptr, ptr %xadj, align 8, !tbaa !4
  %183 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom169 = sext i32 %183 to i64
  %arrayidx170 = getelementptr inbounds i32, ptr %182, i64 %idxprom169
  %184 = load i32, ptr %arrayidx170, align 4, !tbaa !13
  store i32 %184, ptr %istart, align 4, !tbaa !13
  %185 = load ptr, ptr %xadj, align 8, !tbaa !4
  %186 = load i32, ptr %i, align 4, !tbaa !13
  %add171 = add nsw i32 %186, 1
  %idxprom172 = sext i32 %add171 to i64
  %arrayidx173 = getelementptr inbounds i32, ptr %185, i64 %idxprom172
  %187 = load i32, ptr %arrayidx173, align 4, !tbaa !13
  store i32 %187, ptr %iend, align 4, !tbaa !13
  %188 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %vkrinfo174 = getelementptr inbounds %struct.graph_t, ptr %188, i32 0, i32 27
  %189 = load ptr, ptr %vkrinfo174, align 8, !tbaa !55
  %190 = load i32, ptr %i, align 4, !tbaa !13
  %idx.ext175 = sext i32 %190 to i64
  %add.ptr176 = getelementptr inbounds %struct.vkrinfo_t, ptr %189, i64 %idx.ext175
  store ptr %add.ptr176, ptr %myrinfo143, align 8, !tbaa !4
  %191 = load ptr, ptr %cmap, align 8, !tbaa !4
  %192 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom177 = sext i32 %192 to i64
  %arrayidx178 = getelementptr inbounds i32, ptr %191, i64 %idxprom177
  %193 = load i32, ptr %arrayidx178, align 4, !tbaa !13
  %cmp179 = icmp eq i32 %193, 0
  br i1 %cmp179, label %if.then181, label %if.else184

if.then181:                                       ; preds = %for.body168
  %194 = load i32, ptr %iend, align 4, !tbaa !13
  %195 = load i32, ptr %istart, align 4, !tbaa !13
  %sub182 = sub nsw i32 %194, %195
  %196 = load ptr, ptr %myrinfo143, align 8, !tbaa !4
  %nid = getelementptr inbounds %struct.vkrinfo_t, ptr %196, i32 0, i32 0
  store i32 %sub182, ptr %nid, align 4, !tbaa !56
  %197 = load ptr, ptr %myrinfo143, align 8, !tbaa !4
  %inbr183 = getelementptr inbounds %struct.vkrinfo_t, ptr %197, i32 0, i32 4
  store i32 -1, ptr %inbr183, align 4, !tbaa !60
  br label %if.end264

if.else184:                                       ; preds = %for.body168
  %198 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %199 = load i32, ptr %iend, align 4, !tbaa !13
  %200 = load i32, ptr %istart, align 4, !tbaa !13
  %sub185 = sub nsw i32 %199, %200
  %add186 = add nsw i32 %sub185, 1
  %call187 = call i32 @libmetis__vnbrpoolGetNext(ptr noundef %198, i32 noundef %add186)
  %201 = load ptr, ptr %myrinfo143, align 8, !tbaa !4
  %inbr188 = getelementptr inbounds %struct.vkrinfo_t, ptr %201, i32 0, i32 4
  store i32 %call187, ptr %inbr188, align 4, !tbaa !60
  %202 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %vnbrpool = getelementptr inbounds %struct.ctrl_t, ptr %202, i32 0, i32 44
  %203 = load ptr, ptr %vnbrpool, align 8, !tbaa !61
  %204 = load ptr, ptr %myrinfo143, align 8, !tbaa !4
  %inbr189 = getelementptr inbounds %struct.vkrinfo_t, ptr %204, i32 0, i32 4
  %205 = load i32, ptr %inbr189, align 4, !tbaa !60
  %idx.ext190 = sext i32 %205 to i64
  %add.ptr191 = getelementptr inbounds %struct.vnbr_t, ptr %203, i64 %idx.ext190
  store ptr %add.ptr191, ptr %mynbrs144, align 8, !tbaa !4
  %206 = load ptr, ptr %where, align 8, !tbaa !4
  %207 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom192 = sext i32 %207 to i64
  %arrayidx193 = getelementptr inbounds i32, ptr %206, i64 %idxprom192
  %208 = load i32, ptr %arrayidx193, align 4, !tbaa !13
  store i32 %208, ptr %me, align 4, !tbaa !13
  store i32 0, ptr %tid, align 4, !tbaa !13
  store i32 0, ptr %ted, align 4, !tbaa !13
  %209 = load i32, ptr %istart, align 4, !tbaa !13
  store i32 %209, ptr %j, align 4, !tbaa !13
  br label %for.cond194

for.cond194:                                      ; preds = %for.inc235, %if.else184
  %210 = load i32, ptr %j, align 4, !tbaa !13
  %211 = load i32, ptr %iend, align 4, !tbaa !13
  %cmp195 = icmp slt i32 %210, %211
  br i1 %cmp195, label %for.body197, label %for.end237

for.body197:                                      ; preds = %for.cond194
  %212 = load ptr, ptr %where, align 8, !tbaa !4
  %213 = load ptr, ptr %adjncy, align 8, !tbaa !4
  %214 = load i32, ptr %j, align 4, !tbaa !13
  %idxprom198 = sext i32 %214 to i64
  %arrayidx199 = getelementptr inbounds i32, ptr %213, i64 %idxprom198
  %215 = load i32, ptr %arrayidx199, align 4, !tbaa !13
  %idxprom200 = sext i32 %215 to i64
  %arrayidx201 = getelementptr inbounds i32, ptr %212, i64 %idxprom200
  %216 = load i32, ptr %arrayidx201, align 4, !tbaa !13
  store i32 %216, ptr %other, align 4, !tbaa !13
  %217 = load i32, ptr %me, align 4, !tbaa !13
  %218 = load i32, ptr %other, align 4, !tbaa !13
  %cmp202 = icmp eq i32 %217, %218
  br i1 %cmp202, label %if.then204, label %if.else206

if.then204:                                       ; preds = %for.body197
  %219 = load i32, ptr %tid, align 4, !tbaa !13
  %inc205 = add nsw i32 %219, 1
  store i32 %inc205, ptr %tid, align 4, !tbaa !13
  br label %if.end234

if.else206:                                       ; preds = %for.body197
  %220 = load i32, ptr %ted, align 4, !tbaa !13
  %inc207 = add nsw i32 %220, 1
  store i32 %inc207, ptr %ted, align 4, !tbaa !13
  %221 = load ptr, ptr %htable, align 8, !tbaa !4
  %222 = load i32, ptr %other, align 4, !tbaa !13
  %idxprom208 = sext i32 %222 to i64
  %arrayidx209 = getelementptr inbounds i32, ptr %221, i64 %idxprom208
  %223 = load i32, ptr %arrayidx209, align 4, !tbaa !13
  store i32 %223, ptr %k, align 4, !tbaa !13
  %cmp210 = icmp eq i32 %223, -1
  br i1 %cmp210, label %if.then212, label %if.else228

if.then212:                                       ; preds = %if.else206
  %224 = load ptr, ptr %myrinfo143, align 8, !tbaa !4
  %nnbrs213 = getelementptr inbounds %struct.vkrinfo_t, ptr %224, i32 0, i32 3
  %225 = load i32, ptr %nnbrs213, align 4, !tbaa !62
  %226 = load ptr, ptr %htable, align 8, !tbaa !4
  %227 = load i32, ptr %other, align 4, !tbaa !13
  %idxprom214 = sext i32 %227 to i64
  %arrayidx215 = getelementptr inbounds i32, ptr %226, i64 %idxprom214
  store i32 %225, ptr %arrayidx215, align 4, !tbaa !13
  %228 = load ptr, ptr %mynbrs144, align 8, !tbaa !4
  %229 = load ptr, ptr %myrinfo143, align 8, !tbaa !4
  %nnbrs216 = getelementptr inbounds %struct.vkrinfo_t, ptr %229, i32 0, i32 3
  %230 = load i32, ptr %nnbrs216, align 4, !tbaa !62
  %idxprom217 = sext i32 %230 to i64
  %arrayidx218 = getelementptr inbounds %struct.vnbr_t, ptr %228, i64 %idxprom217
  %gv = getelementptr inbounds %struct.vnbr_t, ptr %arrayidx218, i32 0, i32 2
  store i32 0, ptr %gv, align 4, !tbaa !67
  %231 = load i32, ptr %other, align 4, !tbaa !13
  %232 = load ptr, ptr %mynbrs144, align 8, !tbaa !4
  %233 = load ptr, ptr %myrinfo143, align 8, !tbaa !4
  %nnbrs219 = getelementptr inbounds %struct.vkrinfo_t, ptr %233, i32 0, i32 3
  %234 = load i32, ptr %nnbrs219, align 4, !tbaa !62
  %idxprom220 = sext i32 %234 to i64
  %arrayidx221 = getelementptr inbounds %struct.vnbr_t, ptr %232, i64 %idxprom220
  %pid222 = getelementptr inbounds %struct.vnbr_t, ptr %arrayidx221, i32 0, i32 0
  store i32 %231, ptr %pid222, align 4, !tbaa !63
  %235 = load ptr, ptr %mynbrs144, align 8, !tbaa !4
  %236 = load ptr, ptr %myrinfo143, align 8, !tbaa !4
  %nnbrs223 = getelementptr inbounds %struct.vkrinfo_t, ptr %236, i32 0, i32 3
  %237 = load i32, ptr %nnbrs223, align 4, !tbaa !62
  %inc224 = add nsw i32 %237, 1
  store i32 %inc224, ptr %nnbrs223, align 4, !tbaa !62
  %idxprom225 = sext i32 %237 to i64
  %arrayidx226 = getelementptr inbounds %struct.vnbr_t, ptr %235, i64 %idxprom225
  %ned227 = getelementptr inbounds %struct.vnbr_t, ptr %arrayidx226, i32 0, i32 1
  store i32 1, ptr %ned227, align 4, !tbaa !65
  br label %if.end233

if.else228:                                       ; preds = %if.else206
  %238 = load ptr, ptr %mynbrs144, align 8, !tbaa !4
  %239 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom229 = sext i32 %239 to i64
  %arrayidx230 = getelementptr inbounds %struct.vnbr_t, ptr %238, i64 %idxprom229
  %ned231 = getelementptr inbounds %struct.vnbr_t, ptr %arrayidx230, i32 0, i32 1
  %240 = load i32, ptr %ned231, align 4, !tbaa !65
  %inc232 = add nsw i32 %240, 1
  store i32 %inc232, ptr %ned231, align 4, !tbaa !65
  br label %if.end233

if.end233:                                        ; preds = %if.else228, %if.then212
  br label %if.end234

if.end234:                                        ; preds = %if.end233, %if.then204
  br label %for.inc235

for.inc235:                                       ; preds = %if.end234
  %241 = load i32, ptr %j, align 4, !tbaa !13
  %inc236 = add nsw i32 %241, 1
  store i32 %inc236, ptr %j, align 4, !tbaa !13
  br label %for.cond194, !llvm.loop !87

for.end237:                                       ; preds = %for.cond194
  %242 = load i32, ptr %tid, align 4, !tbaa !13
  %243 = load ptr, ptr %myrinfo143, align 8, !tbaa !4
  %nid238 = getelementptr inbounds %struct.vkrinfo_t, ptr %243, i32 0, i32 0
  store i32 %242, ptr %nid238, align 4, !tbaa !56
  %244 = load i32, ptr %ted, align 4, !tbaa !13
  %245 = load ptr, ptr %myrinfo143, align 8, !tbaa !4
  %ned239 = getelementptr inbounds %struct.vkrinfo_t, ptr %245, i32 0, i32 1
  store i32 %244, ptr %ned239, align 4, !tbaa !58
  %246 = load i32, ptr %ted, align 4, !tbaa !13
  %cmp240 = icmp eq i32 %246, 0
  br i1 %cmp240, label %if.then242, label %if.else249

if.then242:                                       ; preds = %for.end237
  %247 = load i32, ptr %iend, align 4, !tbaa !13
  %248 = load i32, ptr %istart, align 4, !tbaa !13
  %sub243 = sub nsw i32 %247, %248
  %add244 = add nsw i32 %sub243, 1
  %conv245 = sext i32 %add244 to i64
  %249 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %nbrpoolcpos246 = getelementptr inbounds %struct.ctrl_t, ptr %249, i32 0, i32 41
  %250 = load i64, ptr %nbrpoolcpos246, align 8, !tbaa !83
  %sub247 = sub i64 %250, %conv245
  store i64 %sub247, ptr %nbrpoolcpos246, align 8, !tbaa !83
  %251 = load ptr, ptr %myrinfo143, align 8, !tbaa !4
  %inbr248 = getelementptr inbounds %struct.vkrinfo_t, ptr %251, i32 0, i32 4
  store i32 -1, ptr %inbr248, align 4, !tbaa !60
  br label %if.end263

if.else249:                                       ; preds = %for.end237
  store i32 0, ptr %j, align 4, !tbaa !13
  br label %for.cond250

for.cond250:                                      ; preds = %for.inc260, %if.else249
  %252 = load i32, ptr %j, align 4, !tbaa !13
  %253 = load ptr, ptr %myrinfo143, align 8, !tbaa !4
  %nnbrs251 = getelementptr inbounds %struct.vkrinfo_t, ptr %253, i32 0, i32 3
  %254 = load i32, ptr %nnbrs251, align 4, !tbaa !62
  %cmp252 = icmp slt i32 %252, %254
  br i1 %cmp252, label %for.body254, label %for.end262

for.body254:                                      ; preds = %for.cond250
  %255 = load ptr, ptr %htable, align 8, !tbaa !4
  %256 = load ptr, ptr %mynbrs144, align 8, !tbaa !4
  %257 = load i32, ptr %j, align 4, !tbaa !13
  %idxprom255 = sext i32 %257 to i64
  %arrayidx256 = getelementptr inbounds %struct.vnbr_t, ptr %256, i64 %idxprom255
  %pid257 = getelementptr inbounds %struct.vnbr_t, ptr %arrayidx256, i32 0, i32 0
  %258 = load i32, ptr %pid257, align 4, !tbaa !63
  %idxprom258 = sext i32 %258 to i64
  %arrayidx259 = getelementptr inbounds i32, ptr %255, i64 %idxprom258
  store i32 -1, ptr %arrayidx259, align 4, !tbaa !13
  br label %for.inc260

for.inc260:                                       ; preds = %for.body254
  %259 = load i32, ptr %j, align 4, !tbaa !13
  %inc261 = add nsw i32 %259, 1
  store i32 %inc261, ptr %j, align 4, !tbaa !13
  br label %for.cond250, !llvm.loop !88

for.end262:                                       ; preds = %for.cond250
  br label %if.end263

if.end263:                                        ; preds = %for.end262, %if.then242
  br label %if.end264

if.end264:                                        ; preds = %if.end263, %if.then181
  br label %for.inc265

for.inc265:                                       ; preds = %if.end264
  %260 = load i32, ptr %i, align 4, !tbaa !13
  %inc266 = add nsw i32 %260, 1
  store i32 %inc266, ptr %i, align 4, !tbaa !13
  br label %for.cond165, !llvm.loop !89

for.end267:                                       ; preds = %for.cond165
  %261 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %262 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  call void @libmetis__ComputeKWayVolGains(ptr noundef %261, ptr noundef %262)
  call void @llvm.lifetime.end.p0(i64 8, ptr %mynbrs144) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %myrinfo143) #4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %263 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %objtype268 = getelementptr inbounds %struct.ctrl_t, ptr %263, i32 0, i32 1
  %264 = load i32, ptr %objtype268, align 4, !tbaa !38
  call void (i32, ptr, ...) @gk_errexit(i32 noundef 15, ptr noundef @.str.6, i32 noundef %264)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end267, %for.end140
  %265 = load ptr, ptr %cgraph, align 8, !tbaa !4
  %mincut = getelementptr inbounds %struct.graph_t, ptr %265, i32 0, i32 17
  %266 = load i32, ptr %mincut, align 8, !tbaa !53
  %267 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %mincut269 = getelementptr inbounds %struct.graph_t, ptr %267, i32 0, i32 17
  store i32 %266, ptr %mincut269, align 8, !tbaa !53
  %268 = load i32, ptr %nparts, align 4, !tbaa !13
  %269 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %ncon = getelementptr inbounds %struct.graph_t, ptr %269, i32 0, i32 2
  %270 = load i32, ptr %ncon, align 8, !tbaa !27
  %mul270 = mul nsw i32 %268, %270
  %conv271 = sext i32 %mul270 to i64
  %271 = load ptr, ptr %cgraph, align 8, !tbaa !4
  %pwgts = getelementptr inbounds %struct.graph_t, ptr %271, i32 0, i32 20
  %272 = load ptr, ptr %pwgts, align 8, !tbaa !32
  %273 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %pwgts272 = getelementptr inbounds %struct.graph_t, ptr %273, i32 0, i32 20
  %274 = load ptr, ptr %pwgts272, align 8, !tbaa !32
  %call273 = call ptr @libmetis__icopy(i64 noundef %conv271, ptr noundef %272, ptr noundef %274)
  %275 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %coarser274 = getelementptr inbounds %struct.graph_t, ptr %275, i32 0, i32 29
  call void @libmetis__FreeGraph(ptr noundef %coarser274)
  %276 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %coarser275 = getelementptr inbounds %struct.graph_t, ptr %276, i32 0, i32 29
  store ptr null, ptr %coarser275, align 8, !tbaa !78
  %277 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__wspacepop(ptr noundef %277)
  call void @llvm.lifetime.end.p0(i64 8, ptr %cgraph) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %htable) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cwhere) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bndind) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bndptr) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %where) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmap) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %adjwgt) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %adjncy) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %xadj) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ted) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tid) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %iend) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %istart) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %other) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %me) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nparts) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbnd) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nvtxs) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @libmetis__AllocateKWayPartitionMemory(ptr noundef %ctrl, ptr noundef %graph) #0 {
entry:
  %ctrl.addr = alloca ptr, align 8
  %graph.addr = alloca ptr, align 8
  store ptr %ctrl, ptr %ctrl.addr, align 8, !tbaa !4
  store ptr %graph, ptr %graph.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %nparts = getelementptr inbounds %struct.ctrl_t, ptr %0, i32 0, i32 21
  %1 = load i32, ptr %nparts, align 4, !tbaa !22
  %2 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %ncon = getelementptr inbounds %struct.graph_t, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %ncon, align 8, !tbaa !27
  %mul = mul nsw i32 %1, %3
  %conv = sext i32 %mul to i64
  %call = call ptr @libmetis__imalloc(i64 noundef %conv, ptr noundef @.str)
  %4 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %pwgts = getelementptr inbounds %struct.graph_t, ptr %4, i32 0, i32 20
  store ptr %call, ptr %pwgts, align 8, !tbaa !32
  %5 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs = getelementptr inbounds %struct.graph_t, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nvtxs, align 8, !tbaa !26
  %conv1 = sext i32 %6 to i64
  %call2 = call ptr @libmetis__imalloc(i64 noundef %conv1, ptr noundef @.str.1)
  %7 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %where = getelementptr inbounds %struct.graph_t, ptr %7, i32 0, i32 19
  store ptr %call2, ptr %where, align 8, !tbaa !21
  %8 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs3 = getelementptr inbounds %struct.graph_t, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %nvtxs3, align 8, !tbaa !26
  %conv4 = sext i32 %9 to i64
  %call5 = call ptr @libmetis__imalloc(i64 noundef %conv4, ptr noundef @.str.2)
  %10 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %bndptr = getelementptr inbounds %struct.graph_t, ptr %10, i32 0, i32 22
  store ptr %call5, ptr %bndptr, align 8, !tbaa !34
  %11 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs6 = getelementptr inbounds %struct.graph_t, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %nvtxs6, align 8, !tbaa !26
  %conv7 = sext i32 %12 to i64
  %call8 = call ptr @libmetis__imalloc(i64 noundef %conv7, ptr noundef @.str.3)
  %13 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %bndind = getelementptr inbounds %struct.graph_t, ptr %13, i32 0, i32 23
  store ptr %call8, ptr %bndind, align 8, !tbaa !33
  %14 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %objtype = getelementptr inbounds %struct.ctrl_t, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %objtype, align 4, !tbaa !38
  switch i32 %15, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
  ]

sw.bb:                                            ; preds = %entry
  %16 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs9 = getelementptr inbounds %struct.graph_t, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %nvtxs9, align 8, !tbaa !26
  %conv10 = sext i32 %17 to i64
  %mul11 = mul i64 %conv10, 16
  %call12 = call ptr @gk_malloc(i64 noundef %mul11, ptr noundef @.str.4)
  %18 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %ckrinfo = getelementptr inbounds %struct.graph_t, ptr %18, i32 0, i32 26
  store ptr %call12, ptr %ckrinfo, align 8, !tbaa !39
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %19 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs14 = getelementptr inbounds %struct.graph_t, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %nvtxs14, align 8, !tbaa !26
  %conv15 = sext i32 %20 to i64
  %mul16 = mul i64 %conv15, 20
  %call17 = call ptr @gk_malloc(i64 noundef %mul16, ptr noundef @.str.5)
  %21 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %vkrinfo = getelementptr inbounds %struct.graph_t, ptr %21, i32 0, i32 27
  store ptr %call17, ptr %vkrinfo, align 8, !tbaa !55
  %22 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %vkrinfo18 = getelementptr inbounds %struct.graph_t, ptr %22, i32 0, i32 27
  %23 = load ptr, ptr %vkrinfo18, align 8, !tbaa !55
  %24 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %ckrinfo19 = getelementptr inbounds %struct.graph_t, ptr %24, i32 0, i32 26
  store ptr %23, ptr %ckrinfo19, align 8, !tbaa !39
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %25 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %objtype20 = getelementptr inbounds %struct.ctrl_t, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %objtype20, align 4, !tbaa !38
  call void (i32, ptr, ...) @gk_errexit(i32 noundef 15, ptr noundef @.str.6, i32 noundef %26)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb13, %sw.bb
  ret void
}

declare ptr @libmetis__imalloc(i64 noundef, ptr noundef) #2

declare ptr @gk_malloc(i64 noundef, ptr noundef) #2

declare void @gk_errexit(i32 noundef, ptr noundef, ...) #2

declare ptr @libmetis__iset(i64 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @libmetis__cnbrpoolReset(ptr noundef) #2

declare i32 @libmetis__cnbrpoolGetNext(ptr noundef, i32 noundef) #2

declare void @libmetis__vnbrpoolReset(ptr noundef) #2

declare i32 @libmetis__vnbrpoolGetNext(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define void @libmetis__ComputeKWayVolGains(ptr noundef %ctrl, ptr noundef %graph) #0 {
entry:
  %ctrl.addr = alloca ptr, align 8
  %graph.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ii = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %nvtxs = alloca i32, align 4
  %nparts = alloca i32, align 4
  %me = alloca i32, align 4
  %other = alloca i32, align 4
  %pid = alloca i32, align 4
  %xadj = alloca ptr, align 8
  %vsize = alloca ptr, align 8
  %adjncy = alloca ptr, align 8
  %adjwgt = alloca ptr, align 8
  %where = alloca ptr, align 8
  %bndind = alloca ptr, align 8
  %bndptr = alloca ptr, align 8
  %ophtable = alloca ptr, align 8
  %myrinfo = alloca ptr, align 8
  %orinfo = alloca ptr, align 8
  %mynbrs = alloca ptr, align 8
  %onbrs = alloca ptr, align 8
  store ptr %ctrl, ptr %ctrl.addr, align 8, !tbaa !4
  store ptr %graph, ptr %graph.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ii) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nvtxs) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nparts) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %me) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %other) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pid) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %xadj) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vsize) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adjncy) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adjwgt) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %where) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bndind) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bndptr) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ophtable) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %myrinfo) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %orinfo) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mynbrs) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %onbrs) #4
  %0 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__wspacepush(ptr noundef %0)
  %1 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %nparts1 = getelementptr inbounds %struct.ctrl_t, ptr %1, i32 0, i32 21
  %2 = load i32, ptr %nparts1, align 4, !tbaa !22
  store i32 %2, ptr %nparts, align 4, !tbaa !13
  %3 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs2 = getelementptr inbounds %struct.graph_t, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %nvtxs2, align 8, !tbaa !26
  store i32 %4, ptr %nvtxs, align 4, !tbaa !13
  %5 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %xadj3 = getelementptr inbounds %struct.graph_t, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %xadj3, align 8, !tbaa !28
  store ptr %6, ptr %xadj, align 8, !tbaa !4
  %7 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %vsize4 = getelementptr inbounds %struct.graph_t, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %vsize4, align 8, !tbaa !90
  store ptr %8, ptr %vsize, align 8, !tbaa !4
  %9 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %adjncy5 = getelementptr inbounds %struct.graph_t, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %adjncy5, align 8, !tbaa !30
  store ptr %10, ptr %adjncy, align 8, !tbaa !4
  %11 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %adjwgt6 = getelementptr inbounds %struct.graph_t, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %adjwgt6, align 8, !tbaa !31
  store ptr %12, ptr %adjwgt, align 8, !tbaa !4
  %13 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %where7 = getelementptr inbounds %struct.graph_t, ptr %13, i32 0, i32 19
  %14 = load ptr, ptr %where7, align 8, !tbaa !21
  store ptr %14, ptr %where, align 8, !tbaa !4
  %15 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %bndind8 = getelementptr inbounds %struct.graph_t, ptr %15, i32 0, i32 23
  %16 = load ptr, ptr %bndind8, align 8, !tbaa !33
  store ptr %16, ptr %bndind, align 8, !tbaa !4
  %17 = load i32, ptr %nvtxs, align 4, !tbaa !13
  %conv = sext i32 %17 to i64
  %18 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %bndptr9 = getelementptr inbounds %struct.graph_t, ptr %18, i32 0, i32 22
  %19 = load ptr, ptr %bndptr9, align 8, !tbaa !34
  %call = call ptr @libmetis__iset(i64 noundef %conv, i32 noundef -1, ptr noundef %19)
  store ptr %call, ptr %bndptr, align 8, !tbaa !4
  %20 = load i32, ptr %nparts, align 4, !tbaa !13
  %conv10 = sext i32 %20 to i64
  %21 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %22 = load i32, ptr %nparts, align 4, !tbaa !13
  %call11 = call ptr @libmetis__iwspacemalloc(ptr noundef %21, i32 noundef %22)
  %call12 = call ptr @libmetis__iset(i64 noundef %conv10, i32 noundef -1, ptr noundef %call11)
  store ptr %call12, ptr %ophtable, align 8, !tbaa !4
  %23 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nbnd = getelementptr inbounds %struct.graph_t, ptr %23, i32 0, i32 21
  store i32 0, ptr %nbnd, align 8, !tbaa !54
  %24 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %minvol = getelementptr inbounds %struct.graph_t, ptr %24, i32 0, i32 18
  store i32 0, ptr %minvol, align 4, !tbaa !91
  store i32 0, ptr %i, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc196, %entry
  %25 = load i32, ptr %i, align 4, !tbaa !13
  %26 = load i32, ptr %nvtxs, align 4, !tbaa !13
  %cmp = icmp slt i32 %25, %26
  br i1 %cmp, label %for.body, label %for.end198

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %vkrinfo = getelementptr inbounds %struct.graph_t, ptr %27, i32 0, i32 27
  %28 = load ptr, ptr %vkrinfo, align 8, !tbaa !55
  %29 = load i32, ptr %i, align 4, !tbaa !13
  %idx.ext = sext i32 %29 to i64
  %add.ptr = getelementptr inbounds %struct.vkrinfo_t, ptr %28, i64 %idx.ext
  store ptr %add.ptr, ptr %myrinfo, align 8, !tbaa !4
  %30 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %gv = getelementptr inbounds %struct.vkrinfo_t, ptr %30, i32 0, i32 2
  store i32 -2147483648, ptr %gv, align 4, !tbaa !72
  %31 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %nnbrs = getelementptr inbounds %struct.vkrinfo_t, ptr %31, i32 0, i32 3
  %32 = load i32, ptr %nnbrs, align 4, !tbaa !62
  %cmp14 = icmp sgt i32 %32, 0
  br i1 %cmp14, label %if.then, label %if.end183

if.then:                                          ; preds = %for.body
  %33 = load ptr, ptr %where, align 8, !tbaa !4
  %34 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom = sext i32 %34 to i64
  %arrayidx = getelementptr inbounds i32, ptr %33, i64 %idxprom
  %35 = load i32, ptr %arrayidx, align 4, !tbaa !13
  store i32 %35, ptr %me, align 4, !tbaa !13
  %36 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %vnbrpool = getelementptr inbounds %struct.ctrl_t, ptr %36, i32 0, i32 44
  %37 = load ptr, ptr %vnbrpool, align 8, !tbaa !61
  %38 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %inbr = getelementptr inbounds %struct.vkrinfo_t, ptr %38, i32 0, i32 4
  %39 = load i32, ptr %inbr, align 4, !tbaa !60
  %idx.ext16 = sext i32 %39 to i64
  %add.ptr17 = getelementptr inbounds %struct.vnbr_t, ptr %37, i64 %idx.ext16
  store ptr %add.ptr17, ptr %mynbrs, align 8, !tbaa !4
  %40 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %nnbrs18 = getelementptr inbounds %struct.vkrinfo_t, ptr %40, i32 0, i32 3
  %41 = load i32, ptr %nnbrs18, align 4, !tbaa !62
  %42 = load ptr, ptr %vsize, align 8, !tbaa !4
  %43 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom19 = sext i32 %43 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %42, i64 %idxprom19
  %44 = load i32, ptr %arrayidx20, align 4, !tbaa !13
  %mul = mul nsw i32 %41, %44
  %45 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %minvol21 = getelementptr inbounds %struct.graph_t, ptr %45, i32 0, i32 18
  %46 = load i32, ptr %minvol21, align 4, !tbaa !91
  %add = add nsw i32 %46, %mul
  store i32 %add, ptr %minvol21, align 4, !tbaa !91
  %47 = load ptr, ptr %xadj, align 8, !tbaa !4
  %48 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom22 = sext i32 %48 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %47, i64 %idxprom22
  %49 = load i32, ptr %arrayidx23, align 4, !tbaa !13
  store i32 %49, ptr %j, align 4, !tbaa !13
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc149, %if.then
  %50 = load i32, ptr %j, align 4, !tbaa !13
  %51 = load ptr, ptr %xadj, align 8, !tbaa !4
  %52 = load i32, ptr %i, align 4, !tbaa !13
  %add25 = add nsw i32 %52, 1
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %51, i64 %idxprom26
  %53 = load i32, ptr %arrayidx27, align 4, !tbaa !13
  %cmp28 = icmp slt i32 %50, %53
  br i1 %cmp28, label %for.body30, label %for.end151

for.body30:                                       ; preds = %for.cond24
  %54 = load ptr, ptr %adjncy, align 8, !tbaa !4
  %55 = load i32, ptr %j, align 4, !tbaa !13
  %idxprom31 = sext i32 %55 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %54, i64 %idxprom31
  %56 = load i32, ptr %arrayidx32, align 4, !tbaa !13
  store i32 %56, ptr %ii, align 4, !tbaa !13
  %57 = load ptr, ptr %where, align 8, !tbaa !4
  %58 = load i32, ptr %ii, align 4, !tbaa !13
  %idxprom33 = sext i32 %58 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %57, i64 %idxprom33
  %59 = load i32, ptr %arrayidx34, align 4, !tbaa !13
  store i32 %59, ptr %other, align 4, !tbaa !13
  %60 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %vkrinfo35 = getelementptr inbounds %struct.graph_t, ptr %60, i32 0, i32 27
  %61 = load ptr, ptr %vkrinfo35, align 8, !tbaa !55
  %62 = load i32, ptr %ii, align 4, !tbaa !13
  %idx.ext36 = sext i32 %62 to i64
  %add.ptr37 = getelementptr inbounds %struct.vkrinfo_t, ptr %61, i64 %idx.ext36
  store ptr %add.ptr37, ptr %orinfo, align 8, !tbaa !4
  %63 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %vnbrpool38 = getelementptr inbounds %struct.ctrl_t, ptr %63, i32 0, i32 44
  %64 = load ptr, ptr %vnbrpool38, align 8, !tbaa !61
  %65 = load ptr, ptr %orinfo, align 8, !tbaa !4
  %inbr39 = getelementptr inbounds %struct.vkrinfo_t, ptr %65, i32 0, i32 4
  %66 = load i32, ptr %inbr39, align 4, !tbaa !60
  %idx.ext40 = sext i32 %66 to i64
  %add.ptr41 = getelementptr inbounds %struct.vnbr_t, ptr %64, i64 %idx.ext40
  store ptr %add.ptr41, ptr %onbrs, align 8, !tbaa !4
  store i32 0, ptr %k, align 4, !tbaa !13
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body30
  %67 = load i32, ptr %k, align 4, !tbaa !13
  %68 = load ptr, ptr %orinfo, align 8, !tbaa !4
  %nnbrs43 = getelementptr inbounds %struct.vkrinfo_t, ptr %68, i32 0, i32 3
  %69 = load i32, ptr %nnbrs43, align 4, !tbaa !62
  %cmp44 = icmp slt i32 %67, %69
  br i1 %cmp44, label %for.body46, label %for.end

for.body46:                                       ; preds = %for.cond42
  %70 = load i32, ptr %k, align 4, !tbaa !13
  %71 = load ptr, ptr %ophtable, align 8, !tbaa !4
  %72 = load ptr, ptr %onbrs, align 8, !tbaa !4
  %73 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom47 = sext i32 %73 to i64
  %arrayidx48 = getelementptr inbounds %struct.vnbr_t, ptr %72, i64 %idxprom47
  %pid49 = getelementptr inbounds %struct.vnbr_t, ptr %arrayidx48, i32 0, i32 0
  %74 = load i32, ptr %pid49, align 4, !tbaa !63
  %idxprom50 = sext i32 %74 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %71, i64 %idxprom50
  store i32 %70, ptr %arrayidx51, align 4, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body46
  %75 = load i32, ptr %k, align 4, !tbaa !13
  %inc = add nsw i32 %75, 1
  store i32 %inc, ptr %k, align 4, !tbaa !13
  br label %for.cond42, !llvm.loop !92

for.end:                                          ; preds = %for.cond42
  %76 = load ptr, ptr %ophtable, align 8, !tbaa !4
  %77 = load i32, ptr %other, align 4, !tbaa !13
  %idxprom52 = sext i32 %77 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %76, i64 %idxprom52
  store i32 1, ptr %arrayidx53, align 4, !tbaa !13
  %78 = load i32, ptr %me, align 4, !tbaa !13
  %79 = load i32, ptr %other, align 4, !tbaa !13
  %cmp54 = icmp eq i32 %78, %79
  br i1 %cmp54, label %if.then56, label %if.else

if.then56:                                        ; preds = %for.end
  store i32 0, ptr %k, align 4, !tbaa !13
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc75, %if.then56
  %80 = load i32, ptr %k, align 4, !tbaa !13
  %81 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %nnbrs58 = getelementptr inbounds %struct.vkrinfo_t, ptr %81, i32 0, i32 3
  %82 = load i32, ptr %nnbrs58, align 4, !tbaa !62
  %cmp59 = icmp slt i32 %80, %82
  br i1 %cmp59, label %for.body61, label %for.end77

for.body61:                                       ; preds = %for.cond57
  %83 = load ptr, ptr %ophtable, align 8, !tbaa !4
  %84 = load ptr, ptr %mynbrs, align 8, !tbaa !4
  %85 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom62 = sext i32 %85 to i64
  %arrayidx63 = getelementptr inbounds %struct.vnbr_t, ptr %84, i64 %idxprom62
  %pid64 = getelementptr inbounds %struct.vnbr_t, ptr %arrayidx63, i32 0, i32 0
  %86 = load i32, ptr %pid64, align 4, !tbaa !63
  %idxprom65 = sext i32 %86 to i64
  %arrayidx66 = getelementptr inbounds i32, ptr %83, i64 %idxprom65
  %87 = load i32, ptr %arrayidx66, align 4, !tbaa !13
  %cmp67 = icmp eq i32 %87, -1
  br i1 %cmp67, label %if.then69, label %if.end

if.then69:                                        ; preds = %for.body61
  %88 = load ptr, ptr %vsize, align 8, !tbaa !4
  %89 = load i32, ptr %ii, align 4, !tbaa !13
  %idxprom70 = sext i32 %89 to i64
  %arrayidx71 = getelementptr inbounds i32, ptr %88, i64 %idxprom70
  %90 = load i32, ptr %arrayidx71, align 4, !tbaa !13
  %91 = load ptr, ptr %mynbrs, align 8, !tbaa !4
  %92 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom72 = sext i32 %92 to i64
  %arrayidx73 = getelementptr inbounds %struct.vnbr_t, ptr %91, i64 %idxprom72
  %gv74 = getelementptr inbounds %struct.vnbr_t, ptr %arrayidx73, i32 0, i32 2
  %93 = load i32, ptr %gv74, align 4, !tbaa !67
  %sub = sub nsw i32 %93, %90
  store i32 %sub, ptr %gv74, align 4, !tbaa !67
  br label %if.end

if.end:                                           ; preds = %if.then69, %for.body61
  br label %for.inc75

for.inc75:                                        ; preds = %if.end
  %94 = load i32, ptr %k, align 4, !tbaa !13
  %inc76 = add nsw i32 %94, 1
  store i32 %inc76, ptr %k, align 4, !tbaa !13
  br label %for.cond57, !llvm.loop !93

for.end77:                                        ; preds = %for.cond57
  br label %if.end133

if.else:                                          ; preds = %for.end
  %95 = load ptr, ptr %onbrs, align 8, !tbaa !4
  %96 = load ptr, ptr %ophtable, align 8, !tbaa !4
  %97 = load i32, ptr %me, align 4, !tbaa !13
  %idxprom78 = sext i32 %97 to i64
  %arrayidx79 = getelementptr inbounds i32, ptr %96, i64 %idxprom78
  %98 = load i32, ptr %arrayidx79, align 4, !tbaa !13
  %idxprom80 = sext i32 %98 to i64
  %arrayidx81 = getelementptr inbounds %struct.vnbr_t, ptr %95, i64 %idxprom80
  %ned = getelementptr inbounds %struct.vnbr_t, ptr %arrayidx81, i32 0, i32 1
  %99 = load i32, ptr %ned, align 4, !tbaa !65
  %cmp82 = icmp eq i32 %99, 1
  br i1 %cmp82, label %if.then84, label %if.else108

if.then84:                                        ; preds = %if.else
  store i32 0, ptr %k, align 4, !tbaa !13
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc105, %if.then84
  %100 = load i32, ptr %k, align 4, !tbaa !13
  %101 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %nnbrs86 = getelementptr inbounds %struct.vkrinfo_t, ptr %101, i32 0, i32 3
  %102 = load i32, ptr %nnbrs86, align 4, !tbaa !62
  %cmp87 = icmp slt i32 %100, %102
  br i1 %cmp87, label %for.body89, label %for.end107

for.body89:                                       ; preds = %for.cond85
  %103 = load ptr, ptr %ophtable, align 8, !tbaa !4
  %104 = load ptr, ptr %mynbrs, align 8, !tbaa !4
  %105 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom90 = sext i32 %105 to i64
  %arrayidx91 = getelementptr inbounds %struct.vnbr_t, ptr %104, i64 %idxprom90
  %pid92 = getelementptr inbounds %struct.vnbr_t, ptr %arrayidx91, i32 0, i32 0
  %106 = load i32, ptr %pid92, align 4, !tbaa !63
  %idxprom93 = sext i32 %106 to i64
  %arrayidx94 = getelementptr inbounds i32, ptr %103, i64 %idxprom93
  %107 = load i32, ptr %arrayidx94, align 4, !tbaa !13
  %cmp95 = icmp ne i32 %107, -1
  br i1 %cmp95, label %if.then97, label %if.end104

if.then97:                                        ; preds = %for.body89
  %108 = load ptr, ptr %vsize, align 8, !tbaa !4
  %109 = load i32, ptr %ii, align 4, !tbaa !13
  %idxprom98 = sext i32 %109 to i64
  %arrayidx99 = getelementptr inbounds i32, ptr %108, i64 %idxprom98
  %110 = load i32, ptr %arrayidx99, align 4, !tbaa !13
  %111 = load ptr, ptr %mynbrs, align 8, !tbaa !4
  %112 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom100 = sext i32 %112 to i64
  %arrayidx101 = getelementptr inbounds %struct.vnbr_t, ptr %111, i64 %idxprom100
  %gv102 = getelementptr inbounds %struct.vnbr_t, ptr %arrayidx101, i32 0, i32 2
  %113 = load i32, ptr %gv102, align 4, !tbaa !67
  %add103 = add nsw i32 %113, %110
  store i32 %add103, ptr %gv102, align 4, !tbaa !67
  br label %if.end104

if.end104:                                        ; preds = %if.then97, %for.body89
  br label %for.inc105

for.inc105:                                       ; preds = %if.end104
  %114 = load i32, ptr %k, align 4, !tbaa !13
  %inc106 = add nsw i32 %114, 1
  store i32 %inc106, ptr %k, align 4, !tbaa !13
  br label %for.cond85, !llvm.loop !94

for.end107:                                       ; preds = %for.cond85
  br label %if.end132

if.else108:                                       ; preds = %if.else
  store i32 0, ptr %k, align 4, !tbaa !13
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc129, %if.else108
  %115 = load i32, ptr %k, align 4, !tbaa !13
  %116 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %nnbrs110 = getelementptr inbounds %struct.vkrinfo_t, ptr %116, i32 0, i32 3
  %117 = load i32, ptr %nnbrs110, align 4, !tbaa !62
  %cmp111 = icmp slt i32 %115, %117
  br i1 %cmp111, label %for.body113, label %for.end131

for.body113:                                      ; preds = %for.cond109
  %118 = load ptr, ptr %ophtable, align 8, !tbaa !4
  %119 = load ptr, ptr %mynbrs, align 8, !tbaa !4
  %120 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom114 = sext i32 %120 to i64
  %arrayidx115 = getelementptr inbounds %struct.vnbr_t, ptr %119, i64 %idxprom114
  %pid116 = getelementptr inbounds %struct.vnbr_t, ptr %arrayidx115, i32 0, i32 0
  %121 = load i32, ptr %pid116, align 4, !tbaa !63
  %idxprom117 = sext i32 %121 to i64
  %arrayidx118 = getelementptr inbounds i32, ptr %118, i64 %idxprom117
  %122 = load i32, ptr %arrayidx118, align 4, !tbaa !13
  %cmp119 = icmp eq i32 %122, -1
  br i1 %cmp119, label %if.then121, label %if.end128

if.then121:                                       ; preds = %for.body113
  %123 = load ptr, ptr %vsize, align 8, !tbaa !4
  %124 = load i32, ptr %ii, align 4, !tbaa !13
  %idxprom122 = sext i32 %124 to i64
  %arrayidx123 = getelementptr inbounds i32, ptr %123, i64 %idxprom122
  %125 = load i32, ptr %arrayidx123, align 4, !tbaa !13
  %126 = load ptr, ptr %mynbrs, align 8, !tbaa !4
  %127 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom124 = sext i32 %127 to i64
  %arrayidx125 = getelementptr inbounds %struct.vnbr_t, ptr %126, i64 %idxprom124
  %gv126 = getelementptr inbounds %struct.vnbr_t, ptr %arrayidx125, i32 0, i32 2
  %128 = load i32, ptr %gv126, align 4, !tbaa !67
  %sub127 = sub nsw i32 %128, %125
  store i32 %sub127, ptr %gv126, align 4, !tbaa !67
  br label %if.end128

if.end128:                                        ; preds = %if.then121, %for.body113
  br label %for.inc129

for.inc129:                                       ; preds = %if.end128
  %129 = load i32, ptr %k, align 4, !tbaa !13
  %inc130 = add nsw i32 %129, 1
  store i32 %inc130, ptr %k, align 4, !tbaa !13
  br label %for.cond109, !llvm.loop !95

for.end131:                                       ; preds = %for.cond109
  br label %if.end132

if.end132:                                        ; preds = %for.end131, %for.end107
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %for.end77
  store i32 0, ptr %k, align 4, !tbaa !13
  br label %for.cond134

for.cond134:                                      ; preds = %for.inc144, %if.end133
  %130 = load i32, ptr %k, align 4, !tbaa !13
  %131 = load ptr, ptr %orinfo, align 8, !tbaa !4
  %nnbrs135 = getelementptr inbounds %struct.vkrinfo_t, ptr %131, i32 0, i32 3
  %132 = load i32, ptr %nnbrs135, align 4, !tbaa !62
  %cmp136 = icmp slt i32 %130, %132
  br i1 %cmp136, label %for.body138, label %for.end146

for.body138:                                      ; preds = %for.cond134
  %133 = load ptr, ptr %ophtable, align 8, !tbaa !4
  %134 = load ptr, ptr %onbrs, align 8, !tbaa !4
  %135 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom139 = sext i32 %135 to i64
  %arrayidx140 = getelementptr inbounds %struct.vnbr_t, ptr %134, i64 %idxprom139
  %pid141 = getelementptr inbounds %struct.vnbr_t, ptr %arrayidx140, i32 0, i32 0
  %136 = load i32, ptr %pid141, align 4, !tbaa !63
  %idxprom142 = sext i32 %136 to i64
  %arrayidx143 = getelementptr inbounds i32, ptr %133, i64 %idxprom142
  store i32 -1, ptr %arrayidx143, align 4, !tbaa !13
  br label %for.inc144

for.inc144:                                       ; preds = %for.body138
  %137 = load i32, ptr %k, align 4, !tbaa !13
  %inc145 = add nsw i32 %137, 1
  store i32 %inc145, ptr %k, align 4, !tbaa !13
  br label %for.cond134, !llvm.loop !96

for.end146:                                       ; preds = %for.cond134
  %138 = load ptr, ptr %ophtable, align 8, !tbaa !4
  %139 = load i32, ptr %other, align 4, !tbaa !13
  %idxprom147 = sext i32 %139 to i64
  %arrayidx148 = getelementptr inbounds i32, ptr %138, i64 %idxprom147
  store i32 -1, ptr %arrayidx148, align 4, !tbaa !13
  br label %for.inc149

for.inc149:                                       ; preds = %for.end146
  %140 = load i32, ptr %j, align 4, !tbaa !13
  %inc150 = add nsw i32 %140, 1
  store i32 %inc150, ptr %j, align 4, !tbaa !13
  br label %for.cond24, !llvm.loop !97

for.end151:                                       ; preds = %for.cond24
  store i32 0, ptr %k, align 4, !tbaa !13
  br label %for.cond152

for.cond152:                                      ; preds = %for.inc169, %for.end151
  %141 = load i32, ptr %k, align 4, !tbaa !13
  %142 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %nnbrs153 = getelementptr inbounds %struct.vkrinfo_t, ptr %142, i32 0, i32 3
  %143 = load i32, ptr %nnbrs153, align 4, !tbaa !62
  %cmp154 = icmp slt i32 %141, %143
  br i1 %cmp154, label %for.body156, label %for.end171

for.body156:                                      ; preds = %for.cond152
  %144 = load ptr, ptr %mynbrs, align 8, !tbaa !4
  %145 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom157 = sext i32 %145 to i64
  %arrayidx158 = getelementptr inbounds %struct.vnbr_t, ptr %144, i64 %idxprom157
  %gv159 = getelementptr inbounds %struct.vnbr_t, ptr %arrayidx158, i32 0, i32 2
  %146 = load i32, ptr %gv159, align 4, !tbaa !67
  %147 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %gv160 = getelementptr inbounds %struct.vkrinfo_t, ptr %147, i32 0, i32 2
  %148 = load i32, ptr %gv160, align 4, !tbaa !72
  %cmp161 = icmp sgt i32 %146, %148
  br i1 %cmp161, label %if.then163, label %if.end168

if.then163:                                       ; preds = %for.body156
  %149 = load ptr, ptr %mynbrs, align 8, !tbaa !4
  %150 = load i32, ptr %k, align 4, !tbaa !13
  %idxprom164 = sext i32 %150 to i64
  %arrayidx165 = getelementptr inbounds %struct.vnbr_t, ptr %149, i64 %idxprom164
  %gv166 = getelementptr inbounds %struct.vnbr_t, ptr %arrayidx165, i32 0, i32 2
  %151 = load i32, ptr %gv166, align 4, !tbaa !67
  %152 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %gv167 = getelementptr inbounds %struct.vkrinfo_t, ptr %152, i32 0, i32 2
  store i32 %151, ptr %gv167, align 4, !tbaa !72
  br label %if.end168

if.end168:                                        ; preds = %if.then163, %for.body156
  br label %for.inc169

for.inc169:                                       ; preds = %if.end168
  %153 = load i32, ptr %k, align 4, !tbaa !13
  %inc170 = add nsw i32 %153, 1
  store i32 %inc170, ptr %k, align 4, !tbaa !13
  br label %for.cond152, !llvm.loop !98

for.end171:                                       ; preds = %for.cond152
  %154 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %ned172 = getelementptr inbounds %struct.vkrinfo_t, ptr %154, i32 0, i32 1
  %155 = load i32, ptr %ned172, align 4, !tbaa !58
  %cmp173 = icmp sgt i32 %155, 0
  br i1 %cmp173, label %land.lhs.true, label %if.end182

land.lhs.true:                                    ; preds = %for.end171
  %156 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %nid = getelementptr inbounds %struct.vkrinfo_t, ptr %156, i32 0, i32 0
  %157 = load i32, ptr %nid, align 4, !tbaa !56
  %cmp175 = icmp eq i32 %157, 0
  br i1 %cmp175, label %if.then177, label %if.end182

if.then177:                                       ; preds = %land.lhs.true
  %158 = load ptr, ptr %vsize, align 8, !tbaa !4
  %159 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom178 = sext i32 %159 to i64
  %arrayidx179 = getelementptr inbounds i32, ptr %158, i64 %idxprom178
  %160 = load i32, ptr %arrayidx179, align 4, !tbaa !13
  %161 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %gv180 = getelementptr inbounds %struct.vkrinfo_t, ptr %161, i32 0, i32 2
  %162 = load i32, ptr %gv180, align 4, !tbaa !72
  %add181 = add nsw i32 %162, %160
  store i32 %add181, ptr %gv180, align 4, !tbaa !72
  br label %if.end182

if.end182:                                        ; preds = %if.then177, %land.lhs.true, %for.end171
  br label %if.end183

if.end183:                                        ; preds = %if.end182, %for.body
  %163 = load ptr, ptr %myrinfo, align 8, !tbaa !4
  %gv184 = getelementptr inbounds %struct.vkrinfo_t, ptr %163, i32 0, i32 2
  %164 = load i32, ptr %gv184, align 4, !tbaa !72
  %cmp185 = icmp sge i32 %164, 0
  br i1 %cmp185, label %if.then187, label %if.end195

if.then187:                                       ; preds = %if.end183
  br label %do.body

do.body:                                          ; preds = %if.then187
  %165 = load i32, ptr %i, align 4, !tbaa !13
  %166 = load ptr, ptr %bndind, align 8, !tbaa !4
  %167 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nbnd188 = getelementptr inbounds %struct.graph_t, ptr %167, i32 0, i32 21
  %168 = load i32, ptr %nbnd188, align 8, !tbaa !54
  %idxprom189 = sext i32 %168 to i64
  %arrayidx190 = getelementptr inbounds i32, ptr %166, i64 %idxprom189
  store i32 %165, ptr %arrayidx190, align 4, !tbaa !13
  %169 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nbnd191 = getelementptr inbounds %struct.graph_t, ptr %169, i32 0, i32 21
  %170 = load i32, ptr %nbnd191, align 8, !tbaa !54
  %inc192 = add nsw i32 %170, 1
  store i32 %inc192, ptr %nbnd191, align 8, !tbaa !54
  %171 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %172 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom193 = sext i32 %172 to i64
  %arrayidx194 = getelementptr inbounds i32, ptr %171, i64 %idxprom193
  store i32 %170, ptr %arrayidx194, align 4, !tbaa !13
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end195

if.end195:                                        ; preds = %do.end, %if.end183
  br label %for.inc196

for.inc196:                                       ; preds = %if.end195
  %173 = load i32, ptr %i, align 4, !tbaa !13
  %inc197 = add nsw i32 %173, 1
  store i32 %inc197, ptr %i, align 4, !tbaa !13
  br label %for.cond, !llvm.loop !99

for.end198:                                       ; preds = %for.cond
  %174 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__wspacepop(ptr noundef %174)
  call void @llvm.lifetime.end.p0(i64 8, ptr %onbrs) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mynbrs) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %orinfo) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %myrinfo) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ophtable) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bndptr) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bndind) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %where) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %adjwgt) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %adjncy) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %vsize) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %xadj) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pid) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %other) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %me) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nparts) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nvtxs) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ii) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret void
}

declare void @libmetis__wspacepush(ptr noundef) #2

declare ptr @libmetis__iwspacemalloc(ptr noundef, i32 noundef) #2

declare ptr @libmetis__icopy(i64 noundef, ptr noundef, ptr noundef) #2

declare void @libmetis__FreeGraph(ptr noundef) #2

declare void @libmetis__wspacepop(ptr noundef) #2

declare double @libmetis__ComputeLoadImbalanceDiff(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

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
!8 = !{!9, !10, i64 40}
!9 = !{!"ctrl_t", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !5, i64 80, !10, i64 88, !10, i64 92, !11, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !5, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312, !5, i64 320}
!10 = !{!"int", !6, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!9, !6, i64 8}
!15 = !{!9, !11, i64 176}
!16 = !{!17, !5, i64 208}
!17 = !{!"graph_t", !10, i64 0, !10, i64 4, !10, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !5, i64 96, !5, i64 104, !10, i64 112, !10, i64 116, !5, i64 120, !5, i64 128, !10, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!9, !10, i64 36}
!21 = !{!17, !5, i64 120}
!22 = !{!9, !10, i64 92}
!23 = !{!9, !10, i64 68}
!24 = !{!9, !11, i64 184}
!25 = !{!9, !11, i64 192}
!26 = !{!17, !10, i64 0}
!27 = !{!17, !10, i64 8}
!28 = !{!17, !5, i64 16}
!29 = !{!17, !5, i64 24}
!30 = !{!17, !5, i64 40}
!31 = !{!17, !5, i64 48}
!32 = !{!17, !5, i64 128}
!33 = !{!17, !5, i64 152}
!34 = !{!17, !5, i64 144}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !19}
!37 = distinct !{!37, !19}
!38 = !{!9, !6, i64 4}
!39 = !{!17, !5, i64 176}
!40 = !{!41, !10, i64 0}
!41 = !{!"ckrinfo_t", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!42 = !{!41, !10, i64 4}
!43 = distinct !{!43, !19}
!44 = !{!41, !10, i64 12}
!45 = !{!9, !5, i64 264}
!46 = !{!41, !10, i64 8}
!47 = !{!48, !10, i64 0}
!48 = !{!"cnbr_t", !10, i64 0, !10, i64 4}
!49 = !{!48, !10, i64 4}
!50 = distinct !{!50, !19}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !19}
!53 = !{!17, !10, i64 112}
!54 = !{!17, !10, i64 136}
!55 = !{!17, !5, i64 184}
!56 = !{!57, !10, i64 0}
!57 = !{!"vkrinfo_t", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16}
!58 = !{!57, !10, i64 4}
!59 = distinct !{!59, !19}
!60 = !{!57, !10, i64 16}
!61 = !{!9, !5, i64 272}
!62 = !{!57, !10, i64 12}
!63 = !{!64, !10, i64 0}
!64 = !{!"vnbr_t", !10, i64 0, !10, i64 4, !10, i64 8}
!65 = !{!64, !10, i64 4}
!66 = distinct !{!66, !19}
!67 = !{!64, !10, i64 8}
!68 = distinct !{!68, !19}
!69 = distinct !{!69, !19}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19}
!72 = !{!57, !10, i64 8}
!73 = distinct !{!73, !19}
!74 = distinct !{!74, !19}
!75 = !{!11, !11, i64 0}
!76 = !{!9, !5, i64 120}
!77 = !{!9, !5, i64 104}
!78 = !{!17, !5, i64 200}
!79 = !{!17, !5, i64 104}
!80 = distinct !{!80, !19}
!81 = distinct !{!81, !19}
!82 = distinct !{!82, !19}
!83 = !{!9, !12, i64 248}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !19}
!86 = distinct !{!86, !19}
!87 = distinct !{!87, !19}
!88 = distinct !{!88, !19}
!89 = distinct !{!89, !19}
!90 = !{!17, !5, i64 32}
!91 = !{!17, !10, i64 116}
!92 = distinct !{!92, !19}
!93 = distinct !{!93, !19}
!94 = distinct !{!94, !19}
!95 = distinct !{!95, !19}
!96 = distinct !{!96, !19}
!97 = distinct !{!97, !19}
!98 = distinct !{!98, !19}
!99 = distinct !{!99, !19}

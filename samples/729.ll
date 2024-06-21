; ModuleID = 'samples/729.bc'
source_filename = "/local-ssd/metis-yqn6kxeioqiubfzujxahbjd7jp5b5s7g-build/aidengro/spack-stage-metis-5.1.0-yqn6kxeioqiubfzujxahbjd7jp5b5s7g/spack-src/libmetis/fm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_t = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, i64, i64, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ctrl_t = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i64, i64, float, ptr, ptr, ptr, float, double, double, double, double, double, double, double, double, double, double, double, double, ptr, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [51 x i8] c"Moved %6ld from %ld. [%3ld %3ld] %5ld [%4ld %4ld]\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Moved%6ld from %ld(%ld) Gain:%5ld, Cut:%5ld, NPwgts:\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"(%.3f %.3f)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c" %+.3f LB: %.3f(%+.3f)\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Parts: \00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Nv-Nb[%5ld %5ld] ICut: %6ld\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"(%.3f %.3f T:%.3f %.3f)\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"] LB: %.3f(%+.3f)\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"\09Mincut: %6ld at %5ld NBND %6ld NPwgts: [\00", align 1

; Function Attrs: nounwind uwtable
define void @libmetis__FM_2WayRefine(ptr noundef %ctrl, ptr noundef %graph, ptr noundef %ntpwgts, i64 noundef %niter) #0 {
entry:
  %ctrl.addr = alloca ptr, align 8
  %graph.addr = alloca ptr, align 8
  %ntpwgts.addr = alloca ptr, align 8
  %niter.addr = alloca i64, align 8
  store ptr %ctrl, ptr %ctrl.addr, align 8, !tbaa !4
  store ptr %graph, ptr %graph.addr, align 8, !tbaa !4
  store ptr %ntpwgts, ptr %ntpwgts.addr, align 8, !tbaa !4
  store i64 %niter, ptr %niter.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %ncon = getelementptr inbounds %struct.graph_t, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %ncon, align 8, !tbaa !10
  %cmp = icmp eq i64 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %ntpwgts.addr, align 8, !tbaa !4
  %5 = load i64, ptr %niter.addr, align 8, !tbaa !8
  call void @libmetis__FM_2WayCutRefine(ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %ntpwgts.addr, align 8, !tbaa !4
  %9 = load i64, ptr %niter.addr, align 8, !tbaa !8
  call void @libmetis__FM_Mc2WayCutRefine(ptr noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @libmetis__FM_2WayCutRefine(ptr noundef %ctrl, ptr noundef %graph, ptr noundef %ntpwgts, i64 noundef %niter) #0 {
entry:
  %ctrl.addr = alloca ptr, align 8
  %graph.addr = alloca ptr, align 8
  %ntpwgts.addr = alloca ptr, align 8
  %niter.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %ii = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %kwgt = alloca i64, align 8
  %nvtxs = alloca i64, align 8
  %nbnd = alloca i64, align 8
  %nswaps = alloca i64, align 8
  %from = alloca i64, align 8
  %to = alloca i64, align 8
  %pass = alloca i64, align 8
  %me = alloca i64, align 8
  %limit = alloca i64, align 8
  %tmp = alloca i64, align 8
  %xadj = alloca ptr, align 8
  %vwgt = alloca ptr, align 8
  %adjncy = alloca ptr, align 8
  %adjwgt = alloca ptr, align 8
  %where = alloca ptr, align 8
  %id = alloca ptr, align 8
  %ed = alloca ptr, align 8
  %bndptr = alloca ptr, align 8
  %bndind = alloca ptr, align 8
  %pwgts = alloca ptr, align 8
  %moved = alloca ptr, align 8
  %swaps = alloca ptr, align 8
  %perm = alloca ptr, align 8
  %queues = alloca [2 x ptr], align 16
  %higain = alloca i64, align 8
  %mincut = alloca i64, align 8
  %mindiff = alloca i64, align 8
  %origdiff = alloca i64, align 8
  %initcut = alloca i64, align 8
  %newcut = alloca i64, align 8
  %mincutorder = alloca i64, align 8
  %avgvwgt = alloca i64, align 8
  %tpwgts = alloca [2 x i64], align 16
  store ptr %ctrl, ptr %ctrl.addr, align 8, !tbaa !4
  store ptr %graph, ptr %graph.addr, align 8, !tbaa !4
  store ptr %ntpwgts, ptr %ntpwgts.addr, align 8, !tbaa !4
  store i64 %niter, ptr %niter.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ii) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kwgt) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nvtxs) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nbnd) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nswaps) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %from) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %to) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pass) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %me) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %limit) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %xadj) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vwgt) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adjncy) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adjwgt) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %where) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ed) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bndptr) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bndind) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pwgts) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %moved) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %swaps) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %perm) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %queues) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %higain) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mincut) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mindiff) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %origdiff) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %initcut) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %newcut) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mincutorder) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %avgvwgt) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %tpwgts) #4
  %0 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__wspacepush(ptr noundef %0)
  %1 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs1 = getelementptr inbounds %struct.graph_t, ptr %1, i32 0, i32 0
  %2 = load i64, ptr %nvtxs1, align 8, !tbaa !13
  store i64 %2, ptr %nvtxs, align 8, !tbaa !8
  %3 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %xadj2 = getelementptr inbounds %struct.graph_t, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %xadj2, align 8, !tbaa !14
  store ptr %4, ptr %xadj, align 8, !tbaa !4
  %5 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %vwgt3 = getelementptr inbounds %struct.graph_t, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %vwgt3, align 8, !tbaa !15
  store ptr %6, ptr %vwgt, align 8, !tbaa !4
  %7 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %adjncy4 = getelementptr inbounds %struct.graph_t, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %adjncy4, align 8, !tbaa !16
  store ptr %8, ptr %adjncy, align 8, !tbaa !4
  %9 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %adjwgt5 = getelementptr inbounds %struct.graph_t, ptr %9, i32 0, i32 7
  %10 = load ptr, ptr %adjwgt5, align 8, !tbaa !17
  store ptr %10, ptr %adjwgt, align 8, !tbaa !4
  %11 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %where6 = getelementptr inbounds %struct.graph_t, ptr %11, i32 0, i32 19
  %12 = load ptr, ptr %where6, align 8, !tbaa !18
  store ptr %12, ptr %where, align 8, !tbaa !4
  %13 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %id7 = getelementptr inbounds %struct.graph_t, ptr %13, i32 0, i32 24
  %14 = load ptr, ptr %id7, align 8, !tbaa !19
  store ptr %14, ptr %id, align 8, !tbaa !4
  %15 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %ed8 = getelementptr inbounds %struct.graph_t, ptr %15, i32 0, i32 25
  %16 = load ptr, ptr %ed8, align 8, !tbaa !20
  store ptr %16, ptr %ed, align 8, !tbaa !4
  %17 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %pwgts9 = getelementptr inbounds %struct.graph_t, ptr %17, i32 0, i32 20
  %18 = load ptr, ptr %pwgts9, align 8, !tbaa !21
  store ptr %18, ptr %pwgts, align 8, !tbaa !4
  %19 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %bndptr10 = getelementptr inbounds %struct.graph_t, ptr %19, i32 0, i32 22
  %20 = load ptr, ptr %bndptr10, align 8, !tbaa !22
  store ptr %20, ptr %bndptr, align 8, !tbaa !4
  %21 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %bndind11 = getelementptr inbounds %struct.graph_t, ptr %21, i32 0, i32 23
  %22 = load ptr, ptr %bndind11, align 8, !tbaa !23
  store ptr %22, ptr %bndind, align 8, !tbaa !4
  %23 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %24 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %call = call ptr @libmetis__iwspacemalloc(ptr noundef %23, i64 noundef %24)
  store ptr %call, ptr %moved, align 8, !tbaa !4
  %25 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %26 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %call12 = call ptr @libmetis__iwspacemalloc(ptr noundef %25, i64 noundef %26)
  store ptr %call12, ptr %swaps, align 8, !tbaa !4
  %27 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %28 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %call13 = call ptr @libmetis__iwspacemalloc(ptr noundef %27, i64 noundef %28)
  store ptr %call13, ptr %perm, align 8, !tbaa !4
  %29 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %tvwgt = getelementptr inbounds %struct.graph_t, ptr %29, i32 0, i32 8
  %30 = load ptr, ptr %tvwgt, align 8, !tbaa !24
  %arrayidx = getelementptr inbounds i64, ptr %30, i64 0
  %31 = load i64, ptr %arrayidx, align 8, !tbaa !8
  %conv = sitofp i64 %31 to float
  %32 = load ptr, ptr %ntpwgts.addr, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds float, ptr %32, i64 0
  %33 = load float, ptr %arrayidx14, align 4, !tbaa !25
  %mul = fmul float %conv, %33
  %conv15 = fptosi float %mul to i64
  %arrayidx16 = getelementptr inbounds [2 x i64], ptr %tpwgts, i64 0, i64 0
  store i64 %conv15, ptr %arrayidx16, align 16, !tbaa !8
  %34 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %tvwgt17 = getelementptr inbounds %struct.graph_t, ptr %34, i32 0, i32 8
  %35 = load ptr, ptr %tvwgt17, align 8, !tbaa !24
  %arrayidx18 = getelementptr inbounds i64, ptr %35, i64 0
  %36 = load i64, ptr %arrayidx18, align 8, !tbaa !8
  %arrayidx19 = getelementptr inbounds [2 x i64], ptr %tpwgts, i64 0, i64 0
  %37 = load i64, ptr %arrayidx19, align 16, !tbaa !8
  %sub = sub nsw i64 %36, %37
  %arrayidx20 = getelementptr inbounds [2 x i64], ptr %tpwgts, i64 0, i64 1
  store i64 %sub, ptr %arrayidx20, align 8, !tbaa !8
  %38 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %conv21 = sitofp i64 %38 to double
  %mul22 = fmul double 1.000000e-02, %conv21
  %cmp = fcmp oge double %mul22, 1.500000e+01
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %39 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %conv24 = sitofp i64 %39 to double
  %mul25 = fmul double 1.000000e-02, %conv24
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul25, %cond.true ], [ 1.500000e+01, %cond.false ]
  %cmp26 = fcmp oge double %cond, 1.000000e+02
  br i1 %cmp26, label %cond.true28, label %cond.false29

cond.true28:                                      ; preds = %cond.end
  br label %cond.end40

cond.false29:                                     ; preds = %cond.end
  %40 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %conv30 = sitofp i64 %40 to double
  %mul31 = fmul double 1.000000e-02, %conv30
  %cmp32 = fcmp oge double %mul31, 1.500000e+01
  br i1 %cmp32, label %cond.true34, label %cond.false37

cond.true34:                                      ; preds = %cond.false29
  %41 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %conv35 = sitofp i64 %41 to double
  %mul36 = fmul double 1.000000e-02, %conv35
  br label %cond.end38

cond.false37:                                     ; preds = %cond.false29
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false37, %cond.true34
  %cond39 = phi double [ %mul36, %cond.true34 ], [ 1.500000e+01, %cond.false37 ]
  br label %cond.end40

cond.end40:                                       ; preds = %cond.end38, %cond.true28
  %cond41 = phi double [ 1.000000e+02, %cond.true28 ], [ %cond39, %cond.end38 ]
  %conv42 = fptosi double %cond41 to i64
  store i64 %conv42, ptr %limit, align 8, !tbaa !8
  %42 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %arrayidx43 = getelementptr inbounds i64, ptr %42, i64 0
  %43 = load i64, ptr %arrayidx43, align 8, !tbaa !8
  %44 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %arrayidx44 = getelementptr inbounds i64, ptr %44, i64 1
  %45 = load i64, ptr %arrayidx44, align 8, !tbaa !8
  %add = add nsw i64 %43, %45
  %div = sdiv i64 %add, 20
  %46 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %arrayidx45 = getelementptr inbounds i64, ptr %46, i64 0
  %47 = load i64, ptr %arrayidx45, align 8, !tbaa !8
  %48 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %arrayidx46 = getelementptr inbounds i64, ptr %48, i64 1
  %49 = load i64, ptr %arrayidx46, align 8, !tbaa !8
  %add47 = add nsw i64 %47, %49
  %mul48 = mul nsw i64 2, %add47
  %50 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %div49 = sdiv i64 %mul48, %50
  %cmp50 = icmp sge i64 %div, %div49
  br i1 %cmp50, label %cond.true52, label %cond.false58

cond.true52:                                      ; preds = %cond.end40
  %51 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %arrayidx53 = getelementptr inbounds i64, ptr %51, i64 0
  %52 = load i64, ptr %arrayidx53, align 8, !tbaa !8
  %53 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %arrayidx54 = getelementptr inbounds i64, ptr %53, i64 1
  %54 = load i64, ptr %arrayidx54, align 8, !tbaa !8
  %add55 = add nsw i64 %52, %54
  %mul56 = mul nsw i64 2, %add55
  %55 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %div57 = sdiv i64 %mul56, %55
  br label %cond.end63

cond.false58:                                     ; preds = %cond.end40
  %56 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %arrayidx59 = getelementptr inbounds i64, ptr %56, i64 0
  %57 = load i64, ptr %arrayidx59, align 8, !tbaa !8
  %58 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %arrayidx60 = getelementptr inbounds i64, ptr %58, i64 1
  %59 = load i64, ptr %arrayidx60, align 8, !tbaa !8
  %add61 = add nsw i64 %57, %59
  %div62 = sdiv i64 %add61, 20
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false58, %cond.true52
  %cond64 = phi i64 [ %div57, %cond.true52 ], [ %div62, %cond.false58 ]
  store i64 %cond64, ptr %avgvwgt, align 8, !tbaa !8
  %60 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %call65 = call ptr @libmetis__rpqCreate(i64 noundef %60)
  %arrayidx66 = getelementptr inbounds [2 x ptr], ptr %queues, i64 0, i64 0
  store ptr %call65, ptr %arrayidx66, align 16, !tbaa !4
  %61 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %call67 = call ptr @libmetis__rpqCreate(i64 noundef %61)
  %arrayidx68 = getelementptr inbounds [2 x ptr], ptr %queues, i64 0, i64 1
  store ptr %call67, ptr %arrayidx68, align 8, !tbaa !4
  %62 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %dbglvl = getelementptr inbounds %struct.ctrl_t, ptr %62, i32 0, i32 2
  %63 = load i32, ptr %dbglvl, align 8, !tbaa !27
  %and = and i32 %63, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end63
  %64 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %65 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %66 = load ptr, ptr %ntpwgts.addr, align 8, !tbaa !4
  call void @libmetis__Print2WayRefineStats(ptr noundef %64, ptr noundef %65, ptr noundef %66, float noundef 0.000000e+00, i64 noundef -2)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end63
  %arrayidx69 = getelementptr inbounds [2 x i64], ptr %tpwgts, i64 0, i64 0
  %67 = load i64, ptr %arrayidx69, align 16, !tbaa !8
  %68 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %arrayidx70 = getelementptr inbounds i64, ptr %68, i64 0
  %69 = load i64, ptr %arrayidx70, align 8, !tbaa !8
  %sub71 = sub nsw i64 %67, %69
  %neg = sub nsw i64 0, %sub71
  %abscond = icmp slt i64 %sub71, 0
  %abs = select i1 %abscond, i64 %neg, i64 %sub71
  store i64 %abs, ptr %origdiff, align 8, !tbaa !8
  %70 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %71 = load ptr, ptr %moved, align 8, !tbaa !4
  %call72 = call ptr @libmetis__iset(i64 noundef %70, i64 noundef -1, ptr noundef %71)
  store i64 0, ptr %pass, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc478, %if.end
  %72 = load i64, ptr %pass, align 8, !tbaa !8
  %73 = load i64, ptr %niter.addr, align 8, !tbaa !8
  %cmp73 = icmp slt i64 %72, %73
  br i1 %cmp73, label %for.body, label %for.end480

for.body:                                         ; preds = %for.cond
  %arrayidx75 = getelementptr inbounds [2 x ptr], ptr %queues, i64 0, i64 0
  %74 = load ptr, ptr %arrayidx75, align 16, !tbaa !4
  call void @libmetis__rpqReset(ptr noundef %74)
  %arrayidx76 = getelementptr inbounds [2 x ptr], ptr %queues, i64 0, i64 1
  %75 = load ptr, ptr %arrayidx76, align 8, !tbaa !4
  call void @libmetis__rpqReset(ptr noundef %75)
  store i64 -1, ptr %mincutorder, align 8, !tbaa !8
  %76 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %mincut77 = getelementptr inbounds %struct.graph_t, ptr %76, i32 0, i32 17
  %77 = load i64, ptr %mincut77, align 8, !tbaa !30
  store i64 %77, ptr %initcut, align 8, !tbaa !8
  store i64 %77, ptr %mincut, align 8, !tbaa !8
  store i64 %77, ptr %newcut, align 8, !tbaa !8
  %arrayidx78 = getelementptr inbounds [2 x i64], ptr %tpwgts, i64 0, i64 0
  %78 = load i64, ptr %arrayidx78, align 16, !tbaa !8
  %79 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %arrayidx79 = getelementptr inbounds i64, ptr %79, i64 0
  %80 = load i64, ptr %arrayidx79, align 8, !tbaa !8
  %sub80 = sub nsw i64 %78, %80
  %neg81 = sub nsw i64 0, %sub80
  %abscond82 = icmp slt i64 %sub80, 0
  %abs83 = select i1 %abscond82, i64 %neg81, i64 %sub80
  store i64 %abs83, ptr %mindiff, align 8, !tbaa !8
  %81 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nbnd84 = getelementptr inbounds %struct.graph_t, ptr %81, i32 0, i32 21
  %82 = load i64, ptr %nbnd84, align 8, !tbaa !31
  store i64 %82, ptr %nbnd, align 8, !tbaa !8
  %83 = load i64, ptr %nbnd, align 8, !tbaa !8
  %84 = load ptr, ptr %perm, align 8, !tbaa !4
  %85 = load i64, ptr %nbnd, align 8, !tbaa !8
  call void @libmetis__irandArrayPermute(i64 noundef %83, ptr noundef %84, i64 noundef %85, i32 noundef 1)
  store i64 0, ptr %ii, align 8, !tbaa !8
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc, %for.body
  %86 = load i64, ptr %ii, align 8, !tbaa !8
  %87 = load i64, ptr %nbnd, align 8, !tbaa !8
  %cmp86 = icmp slt i64 %86, %87
  br i1 %cmp86, label %for.body88, label %for.end

for.body88:                                       ; preds = %for.cond85
  %88 = load ptr, ptr %perm, align 8, !tbaa !4
  %89 = load i64, ptr %ii, align 8, !tbaa !8
  %arrayidx89 = getelementptr inbounds i64, ptr %88, i64 %89
  %90 = load i64, ptr %arrayidx89, align 8, !tbaa !8
  store i64 %90, ptr %i, align 8, !tbaa !8
  %91 = load ptr, ptr %where, align 8, !tbaa !4
  %92 = load ptr, ptr %bndind, align 8, !tbaa !4
  %93 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx90 = getelementptr inbounds i64, ptr %92, i64 %93
  %94 = load i64, ptr %arrayidx90, align 8, !tbaa !8
  %arrayidx91 = getelementptr inbounds i64, ptr %91, i64 %94
  %95 = load i64, ptr %arrayidx91, align 8, !tbaa !8
  %arrayidx92 = getelementptr inbounds [2 x ptr], ptr %queues, i64 0, i64 %95
  %96 = load ptr, ptr %arrayidx92, align 8, !tbaa !4
  %97 = load ptr, ptr %bndind, align 8, !tbaa !4
  %98 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx93 = getelementptr inbounds i64, ptr %97, i64 %98
  %99 = load i64, ptr %arrayidx93, align 8, !tbaa !8
  %100 = load ptr, ptr %ed, align 8, !tbaa !4
  %101 = load ptr, ptr %bndind, align 8, !tbaa !4
  %102 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx94 = getelementptr inbounds i64, ptr %101, i64 %102
  %103 = load i64, ptr %arrayidx94, align 8, !tbaa !8
  %arrayidx95 = getelementptr inbounds i64, ptr %100, i64 %103
  %104 = load i64, ptr %arrayidx95, align 8, !tbaa !8
  %105 = load ptr, ptr %id, align 8, !tbaa !4
  %106 = load ptr, ptr %bndind, align 8, !tbaa !4
  %107 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx96 = getelementptr inbounds i64, ptr %106, i64 %107
  %108 = load i64, ptr %arrayidx96, align 8, !tbaa !8
  %arrayidx97 = getelementptr inbounds i64, ptr %105, i64 %108
  %109 = load i64, ptr %arrayidx97, align 8, !tbaa !8
  %sub98 = sub nsw i64 %104, %109
  %conv99 = sitofp i64 %sub98 to float
  %call100 = call i32 @libmetis__rpqInsert(ptr noundef %96, i64 noundef %99, float noundef %conv99)
  br label %for.inc

for.inc:                                          ; preds = %for.body88
  %110 = load i64, ptr %ii, align 8, !tbaa !8
  %inc = add nsw i64 %110, 1
  store i64 %inc, ptr %ii, align 8, !tbaa !8
  br label %for.cond85, !llvm.loop !32

for.end:                                          ; preds = %for.cond85
  store i64 0, ptr %nswaps, align 8, !tbaa !8
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc316, %for.end
  %111 = load i64, ptr %nswaps, align 8, !tbaa !8
  %112 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %cmp102 = icmp slt i64 %111, %112
  br i1 %cmp102, label %for.body104, label %for.end318

for.body104:                                      ; preds = %for.cond101
  %arrayidx105 = getelementptr inbounds [2 x i64], ptr %tpwgts, i64 0, i64 0
  %113 = load i64, ptr %arrayidx105, align 16, !tbaa !8
  %114 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %arrayidx106 = getelementptr inbounds i64, ptr %114, i64 0
  %115 = load i64, ptr %arrayidx106, align 8, !tbaa !8
  %sub107 = sub nsw i64 %113, %115
  %arrayidx108 = getelementptr inbounds [2 x i64], ptr %tpwgts, i64 0, i64 1
  %116 = load i64, ptr %arrayidx108, align 8, !tbaa !8
  %117 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %arrayidx109 = getelementptr inbounds i64, ptr %117, i64 1
  %118 = load i64, ptr %arrayidx109, align 8, !tbaa !8
  %sub110 = sub nsw i64 %116, %118
  %cmp111 = icmp slt i64 %sub107, %sub110
  %119 = zext i1 %cmp111 to i64
  %cond113 = select i1 %cmp111, i32 0, i32 1
  %conv114 = sext i32 %cond113 to i64
  store i64 %conv114, ptr %from, align 8, !tbaa !8
  %120 = load i64, ptr %from, align 8, !tbaa !8
  %add115 = add nsw i64 %120, 1
  %rem = srem i64 %add115, 2
  store i64 %rem, ptr %to, align 8, !tbaa !8
  %121 = load i64, ptr %from, align 8, !tbaa !8
  %arrayidx116 = getelementptr inbounds [2 x ptr], ptr %queues, i64 0, i64 %121
  %122 = load ptr, ptr %arrayidx116, align 8, !tbaa !4
  %call117 = call i64 @libmetis__rpqGetTop(ptr noundef %122)
  store i64 %call117, ptr %higain, align 8, !tbaa !8
  %cmp118 = icmp eq i64 %call117, -1
  br i1 %cmp118, label %if.then120, label %if.end121

if.then120:                                       ; preds = %for.body104
  br label %for.end318

if.end121:                                        ; preds = %for.body104
  %123 = load ptr, ptr %ed, align 8, !tbaa !4
  %124 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx122 = getelementptr inbounds i64, ptr %123, i64 %124
  %125 = load i64, ptr %arrayidx122, align 8, !tbaa !8
  %126 = load ptr, ptr %id, align 8, !tbaa !4
  %127 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx123 = getelementptr inbounds i64, ptr %126, i64 %127
  %128 = load i64, ptr %arrayidx123, align 8, !tbaa !8
  %sub124 = sub nsw i64 %125, %128
  %129 = load i64, ptr %newcut, align 8, !tbaa !8
  %sub125 = sub nsw i64 %129, %sub124
  store i64 %sub125, ptr %newcut, align 8, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %if.end121
  %130 = load ptr, ptr %vwgt, align 8, !tbaa !4
  %131 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx126 = getelementptr inbounds i64, ptr %130, i64 %131
  %132 = load i64, ptr %arrayidx126, align 8, !tbaa !8
  %133 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %134 = load i64, ptr %to, align 8, !tbaa !8
  %arrayidx127 = getelementptr inbounds i64, ptr %133, i64 %134
  %135 = load i64, ptr %arrayidx127, align 8, !tbaa !8
  %add128 = add nsw i64 %135, %132
  store i64 %add128, ptr %arrayidx127, align 8, !tbaa !8
  %136 = load ptr, ptr %vwgt, align 8, !tbaa !4
  %137 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx129 = getelementptr inbounds i64, ptr %136, i64 %137
  %138 = load i64, ptr %arrayidx129, align 8, !tbaa !8
  %139 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %140 = load i64, ptr %from, align 8, !tbaa !8
  %arrayidx130 = getelementptr inbounds i64, ptr %139, i64 %140
  %141 = load i64, ptr %arrayidx130, align 8, !tbaa !8
  %sub131 = sub nsw i64 %141, %138
  store i64 %sub131, ptr %arrayidx130, align 8, !tbaa !8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %142 = load i64, ptr %newcut, align 8, !tbaa !8
  %143 = load i64, ptr %mincut, align 8, !tbaa !8
  %cmp132 = icmp slt i64 %142, %143
  br i1 %cmp132, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %do.end
  %arrayidx134 = getelementptr inbounds [2 x i64], ptr %tpwgts, i64 0, i64 0
  %144 = load i64, ptr %arrayidx134, align 16, !tbaa !8
  %145 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %arrayidx135 = getelementptr inbounds i64, ptr %145, i64 0
  %146 = load i64, ptr %arrayidx135, align 8, !tbaa !8
  %sub136 = sub nsw i64 %144, %146
  %neg137 = sub nsw i64 0, %sub136
  %abscond138 = icmp slt i64 %sub136, 0
  %abs139 = select i1 %abscond138, i64 %neg137, i64 %sub136
  %147 = load i64, ptr %origdiff, align 8, !tbaa !8
  %148 = load i64, ptr %avgvwgt, align 8, !tbaa !8
  %add140 = add nsw i64 %147, %148
  %cmp141 = icmp sle i64 %abs139, %add140
  br i1 %cmp141, label %if.then154, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %do.end
  %149 = load i64, ptr %newcut, align 8, !tbaa !8
  %150 = load i64, ptr %mincut, align 8, !tbaa !8
  %cmp143 = icmp eq i64 %149, %150
  br i1 %cmp143, label %land.lhs.true145, label %if.else

land.lhs.true145:                                 ; preds = %lor.lhs.false
  %arrayidx146 = getelementptr inbounds [2 x i64], ptr %tpwgts, i64 0, i64 0
  %151 = load i64, ptr %arrayidx146, align 16, !tbaa !8
  %152 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %arrayidx147 = getelementptr inbounds i64, ptr %152, i64 0
  %153 = load i64, ptr %arrayidx147, align 8, !tbaa !8
  %sub148 = sub nsw i64 %151, %153
  %neg149 = sub nsw i64 0, %sub148
  %abscond150 = icmp slt i64 %sub148, 0
  %abs151 = select i1 %abscond150, i64 %neg149, i64 %sub148
  %154 = load i64, ptr %mindiff, align 8, !tbaa !8
  %cmp152 = icmp slt i64 %abs151, %154
  br i1 %cmp152, label %if.then154, label %if.else

if.then154:                                       ; preds = %land.lhs.true145, %land.lhs.true
  %155 = load i64, ptr %newcut, align 8, !tbaa !8
  store i64 %155, ptr %mincut, align 8, !tbaa !8
  %arrayidx155 = getelementptr inbounds [2 x i64], ptr %tpwgts, i64 0, i64 0
  %156 = load i64, ptr %arrayidx155, align 16, !tbaa !8
  %157 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %arrayidx156 = getelementptr inbounds i64, ptr %157, i64 0
  %158 = load i64, ptr %arrayidx156, align 8, !tbaa !8
  %sub157 = sub nsw i64 %156, %158
  %neg158 = sub nsw i64 0, %sub157
  %abscond159 = icmp slt i64 %sub157, 0
  %abs160 = select i1 %abscond159, i64 %neg158, i64 %sub157
  store i64 %abs160, ptr %mindiff, align 8, !tbaa !8
  %159 = load i64, ptr %nswaps, align 8, !tbaa !8
  store i64 %159, ptr %mincutorder, align 8, !tbaa !8
  br label %if.end179

if.else:                                          ; preds = %land.lhs.true145, %lor.lhs.false
  %160 = load i64, ptr %nswaps, align 8, !tbaa !8
  %161 = load i64, ptr %mincutorder, align 8, !tbaa !8
  %sub161 = sub nsw i64 %160, %161
  %162 = load i64, ptr %limit, align 8, !tbaa !8
  %cmp162 = icmp sgt i64 %sub161, %162
  br i1 %cmp162, label %if.then164, label %if.end178

if.then164:                                       ; preds = %if.else
  %163 = load ptr, ptr %ed, align 8, !tbaa !4
  %164 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx165 = getelementptr inbounds i64, ptr %163, i64 %164
  %165 = load i64, ptr %arrayidx165, align 8, !tbaa !8
  %166 = load ptr, ptr %id, align 8, !tbaa !4
  %167 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx166 = getelementptr inbounds i64, ptr %166, i64 %167
  %168 = load i64, ptr %arrayidx166, align 8, !tbaa !8
  %sub167 = sub nsw i64 %165, %168
  %169 = load i64, ptr %newcut, align 8, !tbaa !8
  %add168 = add nsw i64 %169, %sub167
  store i64 %add168, ptr %newcut, align 8, !tbaa !8
  br label %do.body169

do.body169:                                       ; preds = %if.then164
  %170 = load ptr, ptr %vwgt, align 8, !tbaa !4
  %171 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx170 = getelementptr inbounds i64, ptr %170, i64 %171
  %172 = load i64, ptr %arrayidx170, align 8, !tbaa !8
  %173 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %174 = load i64, ptr %from, align 8, !tbaa !8
  %arrayidx171 = getelementptr inbounds i64, ptr %173, i64 %174
  %175 = load i64, ptr %arrayidx171, align 8, !tbaa !8
  %add172 = add nsw i64 %175, %172
  store i64 %add172, ptr %arrayidx171, align 8, !tbaa !8
  %176 = load ptr, ptr %vwgt, align 8, !tbaa !4
  %177 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx173 = getelementptr inbounds i64, ptr %176, i64 %177
  %178 = load i64, ptr %arrayidx173, align 8, !tbaa !8
  %179 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %180 = load i64, ptr %to, align 8, !tbaa !8
  %arrayidx174 = getelementptr inbounds i64, ptr %179, i64 %180
  %181 = load i64, ptr %arrayidx174, align 8, !tbaa !8
  %sub175 = sub nsw i64 %181, %178
  store i64 %sub175, ptr %arrayidx174, align 8, !tbaa !8
  br label %do.cond176

do.cond176:                                       ; preds = %do.body169
  br label %do.end177

do.end177:                                        ; preds = %do.cond176
  br label %for.end318

if.end178:                                        ; preds = %if.else
  br label %if.end179

if.end179:                                        ; preds = %if.end178, %if.then154
  %182 = load i64, ptr %to, align 8, !tbaa !8
  %183 = load ptr, ptr %where, align 8, !tbaa !4
  %184 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx180 = getelementptr inbounds i64, ptr %183, i64 %184
  store i64 %182, ptr %arrayidx180, align 8, !tbaa !8
  %185 = load i64, ptr %nswaps, align 8, !tbaa !8
  %186 = load ptr, ptr %moved, align 8, !tbaa !4
  %187 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx181 = getelementptr inbounds i64, ptr %186, i64 %187
  store i64 %185, ptr %arrayidx181, align 8, !tbaa !8
  %188 = load i64, ptr %higain, align 8, !tbaa !8
  %189 = load ptr, ptr %swaps, align 8, !tbaa !4
  %190 = load i64, ptr %nswaps, align 8, !tbaa !8
  %arrayidx182 = getelementptr inbounds i64, ptr %189, i64 %190
  store i64 %188, ptr %arrayidx182, align 8, !tbaa !8
  %191 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %dbglvl183 = getelementptr inbounds %struct.ctrl_t, ptr %191, i32 0, i32 2
  %192 = load i32, ptr %dbglvl183, align 8, !tbaa !27
  %and184 = and i32 %192, 32
  %tobool185 = icmp ne i32 %and184, 0
  br i1 %tobool185, label %if.then186, label %if.end194

if.then186:                                       ; preds = %if.end179
  %193 = load i64, ptr %higain, align 8, !tbaa !8
  %194 = load i64, ptr %from, align 8, !tbaa !8
  %195 = load ptr, ptr %ed, align 8, !tbaa !4
  %196 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx187 = getelementptr inbounds i64, ptr %195, i64 %196
  %197 = load i64, ptr %arrayidx187, align 8, !tbaa !8
  %198 = load ptr, ptr %id, align 8, !tbaa !4
  %199 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx188 = getelementptr inbounds i64, ptr %198, i64 %199
  %200 = load i64, ptr %arrayidx188, align 8, !tbaa !8
  %sub189 = sub nsw i64 %197, %200
  %201 = load ptr, ptr %vwgt, align 8, !tbaa !4
  %202 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx190 = getelementptr inbounds i64, ptr %201, i64 %202
  %203 = load i64, ptr %arrayidx190, align 8, !tbaa !8
  %204 = load i64, ptr %newcut, align 8, !tbaa !8
  %205 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %arrayidx191 = getelementptr inbounds i64, ptr %205, i64 0
  %206 = load i64, ptr %arrayidx191, align 8, !tbaa !8
  %207 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %arrayidx192 = getelementptr inbounds i64, ptr %207, i64 1
  %208 = load i64, ptr %arrayidx192, align 8, !tbaa !8
  %call193 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %193, i64 noundef %194, i64 noundef %sub189, i64 noundef %203, i64 noundef %204, i64 noundef %206, i64 noundef %208)
  br label %if.end194

if.end194:                                        ; preds = %if.then186, %if.end179
  br label %do.body195

do.body195:                                       ; preds = %if.end194
  %209 = load ptr, ptr %id, align 8, !tbaa !4
  %210 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx196 = getelementptr inbounds i64, ptr %209, i64 %210
  %211 = load i64, ptr %arrayidx196, align 8, !tbaa !8
  store i64 %211, ptr %tmp, align 8, !tbaa !8
  %212 = load ptr, ptr %ed, align 8, !tbaa !4
  %213 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx197 = getelementptr inbounds i64, ptr %212, i64 %213
  %214 = load i64, ptr %arrayidx197, align 8, !tbaa !8
  %215 = load ptr, ptr %id, align 8, !tbaa !4
  %216 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx198 = getelementptr inbounds i64, ptr %215, i64 %216
  store i64 %214, ptr %arrayidx198, align 8, !tbaa !8
  %217 = load i64, ptr %tmp, align 8, !tbaa !8
  %218 = load ptr, ptr %ed, align 8, !tbaa !4
  %219 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx199 = getelementptr inbounds i64, ptr %218, i64 %219
  store i64 %217, ptr %arrayidx199, align 8, !tbaa !8
  br label %do.cond200

do.cond200:                                       ; preds = %do.body195
  br label %do.end201

do.end201:                                        ; preds = %do.cond200
  %220 = load ptr, ptr %ed, align 8, !tbaa !4
  %221 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx202 = getelementptr inbounds i64, ptr %220, i64 %221
  %222 = load i64, ptr %arrayidx202, align 8, !tbaa !8
  %cmp203 = icmp eq i64 %222, 0
  br i1 %cmp203, label %land.lhs.true205, label %if.end222

land.lhs.true205:                                 ; preds = %do.end201
  %223 = load ptr, ptr %xadj, align 8, !tbaa !4
  %224 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx206 = getelementptr inbounds i64, ptr %223, i64 %224
  %225 = load i64, ptr %arrayidx206, align 8, !tbaa !8
  %226 = load ptr, ptr %xadj, align 8, !tbaa !4
  %227 = load i64, ptr %higain, align 8, !tbaa !8
  %add207 = add nsw i64 %227, 1
  %arrayidx208 = getelementptr inbounds i64, ptr %226, i64 %add207
  %228 = load i64, ptr %arrayidx208, align 8, !tbaa !8
  %cmp209 = icmp slt i64 %225, %228
  br i1 %cmp209, label %if.then211, label %if.end222

if.then211:                                       ; preds = %land.lhs.true205
  br label %do.body212

do.body212:                                       ; preds = %if.then211
  %229 = load ptr, ptr %bndind, align 8, !tbaa !4
  %230 = load i64, ptr %nbnd, align 8, !tbaa !8
  %dec = add nsw i64 %230, -1
  store i64 %dec, ptr %nbnd, align 8, !tbaa !8
  %arrayidx213 = getelementptr inbounds i64, ptr %229, i64 %dec
  %231 = load i64, ptr %arrayidx213, align 8, !tbaa !8
  %232 = load ptr, ptr %bndind, align 8, !tbaa !4
  %233 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %234 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx214 = getelementptr inbounds i64, ptr %233, i64 %234
  %235 = load i64, ptr %arrayidx214, align 8, !tbaa !8
  %arrayidx215 = getelementptr inbounds i64, ptr %232, i64 %235
  store i64 %231, ptr %arrayidx215, align 8, !tbaa !8
  %236 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %237 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx216 = getelementptr inbounds i64, ptr %236, i64 %237
  %238 = load i64, ptr %arrayidx216, align 8, !tbaa !8
  %239 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %240 = load ptr, ptr %bndind, align 8, !tbaa !4
  %241 = load i64, ptr %nbnd, align 8, !tbaa !8
  %arrayidx217 = getelementptr inbounds i64, ptr %240, i64 %241
  %242 = load i64, ptr %arrayidx217, align 8, !tbaa !8
  %arrayidx218 = getelementptr inbounds i64, ptr %239, i64 %242
  store i64 %238, ptr %arrayidx218, align 8, !tbaa !8
  %243 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %244 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx219 = getelementptr inbounds i64, ptr %243, i64 %244
  store i64 -1, ptr %arrayidx219, align 8, !tbaa !8
  br label %do.cond220

do.cond220:                                       ; preds = %do.body212
  br label %do.end221

do.end221:                                        ; preds = %do.cond220
  br label %if.end222

if.end222:                                        ; preds = %do.end221, %land.lhs.true205, %do.end201
  %245 = load ptr, ptr %xadj, align 8, !tbaa !4
  %246 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx223 = getelementptr inbounds i64, ptr %245, i64 %246
  %247 = load i64, ptr %arrayidx223, align 8, !tbaa !8
  store i64 %247, ptr %j, align 8, !tbaa !8
  br label %for.cond224

for.cond224:                                      ; preds = %for.inc313, %if.end222
  %248 = load i64, ptr %j, align 8, !tbaa !8
  %249 = load ptr, ptr %xadj, align 8, !tbaa !4
  %250 = load i64, ptr %higain, align 8, !tbaa !8
  %add225 = add nsw i64 %250, 1
  %arrayidx226 = getelementptr inbounds i64, ptr %249, i64 %add225
  %251 = load i64, ptr %arrayidx226, align 8, !tbaa !8
  %cmp227 = icmp slt i64 %248, %251
  br i1 %cmp227, label %for.body229, label %for.end315

for.body229:                                      ; preds = %for.cond224
  %252 = load ptr, ptr %adjncy, align 8, !tbaa !4
  %253 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx230 = getelementptr inbounds i64, ptr %252, i64 %253
  %254 = load i64, ptr %arrayidx230, align 8, !tbaa !8
  store i64 %254, ptr %k, align 8, !tbaa !8
  %255 = load i64, ptr %to, align 8, !tbaa !8
  %256 = load ptr, ptr %where, align 8, !tbaa !4
  %257 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx231 = getelementptr inbounds i64, ptr %256, i64 %257
  %258 = load i64, ptr %arrayidx231, align 8, !tbaa !8
  %cmp232 = icmp eq i64 %255, %258
  br i1 %cmp232, label %cond.true234, label %cond.false236

cond.true234:                                     ; preds = %for.body229
  %259 = load ptr, ptr %adjwgt, align 8, !tbaa !4
  %260 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx235 = getelementptr inbounds i64, ptr %259, i64 %260
  %261 = load i64, ptr %arrayidx235, align 8, !tbaa !8
  br label %cond.end239

cond.false236:                                    ; preds = %for.body229
  %262 = load ptr, ptr %adjwgt, align 8, !tbaa !4
  %263 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx237 = getelementptr inbounds i64, ptr %262, i64 %263
  %264 = load i64, ptr %arrayidx237, align 8, !tbaa !8
  %sub238 = sub nsw i64 0, %264
  br label %cond.end239

cond.end239:                                      ; preds = %cond.false236, %cond.true234
  %cond240 = phi i64 [ %261, %cond.true234 ], [ %sub238, %cond.false236 ]
  store i64 %cond240, ptr %kwgt, align 8, !tbaa !8
  br label %do.body241

do.body241:                                       ; preds = %cond.end239
  %265 = load i64, ptr %kwgt, align 8, !tbaa !8
  %266 = load ptr, ptr %id, align 8, !tbaa !4
  %267 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx242 = getelementptr inbounds i64, ptr %266, i64 %267
  %268 = load i64, ptr %arrayidx242, align 8, !tbaa !8
  %add243 = add nsw i64 %268, %265
  store i64 %add243, ptr %arrayidx242, align 8, !tbaa !8
  %269 = load i64, ptr %kwgt, align 8, !tbaa !8
  %270 = load ptr, ptr %ed, align 8, !tbaa !4
  %271 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx244 = getelementptr inbounds i64, ptr %270, i64 %271
  %272 = load i64, ptr %arrayidx244, align 8, !tbaa !8
  %sub245 = sub nsw i64 %272, %269
  store i64 %sub245, ptr %arrayidx244, align 8, !tbaa !8
  br label %do.cond246

do.cond246:                                       ; preds = %do.body241
  br label %do.end247

do.end247:                                        ; preds = %do.cond246
  %273 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %274 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx248 = getelementptr inbounds i64, ptr %273, i64 %274
  %275 = load i64, ptr %arrayidx248, align 8, !tbaa !8
  %cmp249 = icmp ne i64 %275, -1
  br i1 %cmp249, label %if.then251, label %if.else288

if.then251:                                       ; preds = %do.end247
  %276 = load ptr, ptr %ed, align 8, !tbaa !4
  %277 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx252 = getelementptr inbounds i64, ptr %276, i64 %277
  %278 = load i64, ptr %arrayidx252, align 8, !tbaa !8
  %cmp253 = icmp eq i64 %278, 0
  br i1 %cmp253, label %if.then255, label %if.else275

if.then255:                                       ; preds = %if.then251
  br label %do.body256

do.body256:                                       ; preds = %if.then255
  %279 = load ptr, ptr %bndind, align 8, !tbaa !4
  %280 = load i64, ptr %nbnd, align 8, !tbaa !8
  %dec257 = add nsw i64 %280, -1
  store i64 %dec257, ptr %nbnd, align 8, !tbaa !8
  %arrayidx258 = getelementptr inbounds i64, ptr %279, i64 %dec257
  %281 = load i64, ptr %arrayidx258, align 8, !tbaa !8
  %282 = load ptr, ptr %bndind, align 8, !tbaa !4
  %283 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %284 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx259 = getelementptr inbounds i64, ptr %283, i64 %284
  %285 = load i64, ptr %arrayidx259, align 8, !tbaa !8
  %arrayidx260 = getelementptr inbounds i64, ptr %282, i64 %285
  store i64 %281, ptr %arrayidx260, align 8, !tbaa !8
  %286 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %287 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx261 = getelementptr inbounds i64, ptr %286, i64 %287
  %288 = load i64, ptr %arrayidx261, align 8, !tbaa !8
  %289 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %290 = load ptr, ptr %bndind, align 8, !tbaa !4
  %291 = load i64, ptr %nbnd, align 8, !tbaa !8
  %arrayidx262 = getelementptr inbounds i64, ptr %290, i64 %291
  %292 = load i64, ptr %arrayidx262, align 8, !tbaa !8
  %arrayidx263 = getelementptr inbounds i64, ptr %289, i64 %292
  store i64 %288, ptr %arrayidx263, align 8, !tbaa !8
  %293 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %294 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx264 = getelementptr inbounds i64, ptr %293, i64 %294
  store i64 -1, ptr %arrayidx264, align 8, !tbaa !8
  br label %do.cond265

do.cond265:                                       ; preds = %do.body256
  br label %do.end266

do.end266:                                        ; preds = %do.cond265
  %295 = load ptr, ptr %moved, align 8, !tbaa !4
  %296 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx267 = getelementptr inbounds i64, ptr %295, i64 %296
  %297 = load i64, ptr %arrayidx267, align 8, !tbaa !8
  %cmp268 = icmp eq i64 %297, -1
  br i1 %cmp268, label %if.then270, label %if.end274

if.then270:                                       ; preds = %do.end266
  %298 = load ptr, ptr %where, align 8, !tbaa !4
  %299 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx271 = getelementptr inbounds i64, ptr %298, i64 %299
  %300 = load i64, ptr %arrayidx271, align 8, !tbaa !8
  %arrayidx272 = getelementptr inbounds [2 x ptr], ptr %queues, i64 0, i64 %300
  %301 = load ptr, ptr %arrayidx272, align 8, !tbaa !4
  %302 = load i64, ptr %k, align 8, !tbaa !8
  %call273 = call i32 @libmetis__rpqDelete(ptr noundef %301, i64 noundef %302)
  br label %if.end274

if.end274:                                        ; preds = %if.then270, %do.end266
  br label %if.end287

if.else275:                                       ; preds = %if.then251
  %303 = load ptr, ptr %moved, align 8, !tbaa !4
  %304 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx276 = getelementptr inbounds i64, ptr %303, i64 %304
  %305 = load i64, ptr %arrayidx276, align 8, !tbaa !8
  %cmp277 = icmp eq i64 %305, -1
  br i1 %cmp277, label %if.then279, label %if.end286

if.then279:                                       ; preds = %if.else275
  %306 = load ptr, ptr %where, align 8, !tbaa !4
  %307 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx280 = getelementptr inbounds i64, ptr %306, i64 %307
  %308 = load i64, ptr %arrayidx280, align 8, !tbaa !8
  %arrayidx281 = getelementptr inbounds [2 x ptr], ptr %queues, i64 0, i64 %308
  %309 = load ptr, ptr %arrayidx281, align 8, !tbaa !4
  %310 = load i64, ptr %k, align 8, !tbaa !8
  %311 = load ptr, ptr %ed, align 8, !tbaa !4
  %312 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx282 = getelementptr inbounds i64, ptr %311, i64 %312
  %313 = load i64, ptr %arrayidx282, align 8, !tbaa !8
  %314 = load ptr, ptr %id, align 8, !tbaa !4
  %315 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx283 = getelementptr inbounds i64, ptr %314, i64 %315
  %316 = load i64, ptr %arrayidx283, align 8, !tbaa !8
  %sub284 = sub nsw i64 %313, %316
  %conv285 = sitofp i64 %sub284 to float
  call void @libmetis__rpqUpdate(ptr noundef %309, i64 noundef %310, float noundef %conv285)
  br label %if.end286

if.end286:                                        ; preds = %if.then279, %if.else275
  br label %if.end287

if.end287:                                        ; preds = %if.end286, %if.end274
  br label %if.end312

if.else288:                                       ; preds = %do.end247
  %317 = load ptr, ptr %ed, align 8, !tbaa !4
  %318 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx289 = getelementptr inbounds i64, ptr %317, i64 %318
  %319 = load i64, ptr %arrayidx289, align 8, !tbaa !8
  %cmp290 = icmp sgt i64 %319, 0
  br i1 %cmp290, label %if.then292, label %if.end311

if.then292:                                       ; preds = %if.else288
  br label %do.body293

do.body293:                                       ; preds = %if.then292
  %320 = load i64, ptr %k, align 8, !tbaa !8
  %321 = load ptr, ptr %bndind, align 8, !tbaa !4
  %322 = load i64, ptr %nbnd, align 8, !tbaa !8
  %arrayidx294 = getelementptr inbounds i64, ptr %321, i64 %322
  store i64 %320, ptr %arrayidx294, align 8, !tbaa !8
  %323 = load i64, ptr %nbnd, align 8, !tbaa !8
  %inc295 = add nsw i64 %323, 1
  store i64 %inc295, ptr %nbnd, align 8, !tbaa !8
  %324 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %325 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx296 = getelementptr inbounds i64, ptr %324, i64 %325
  store i64 %323, ptr %arrayidx296, align 8, !tbaa !8
  br label %do.cond297

do.cond297:                                       ; preds = %do.body293
  br label %do.end298

do.end298:                                        ; preds = %do.cond297
  %326 = load ptr, ptr %moved, align 8, !tbaa !4
  %327 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx299 = getelementptr inbounds i64, ptr %326, i64 %327
  %328 = load i64, ptr %arrayidx299, align 8, !tbaa !8
  %cmp300 = icmp eq i64 %328, -1
  br i1 %cmp300, label %if.then302, label %if.end310

if.then302:                                       ; preds = %do.end298
  %329 = load ptr, ptr %where, align 8, !tbaa !4
  %330 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx303 = getelementptr inbounds i64, ptr %329, i64 %330
  %331 = load i64, ptr %arrayidx303, align 8, !tbaa !8
  %arrayidx304 = getelementptr inbounds [2 x ptr], ptr %queues, i64 0, i64 %331
  %332 = load ptr, ptr %arrayidx304, align 8, !tbaa !4
  %333 = load i64, ptr %k, align 8, !tbaa !8
  %334 = load ptr, ptr %ed, align 8, !tbaa !4
  %335 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx305 = getelementptr inbounds i64, ptr %334, i64 %335
  %336 = load i64, ptr %arrayidx305, align 8, !tbaa !8
  %337 = load ptr, ptr %id, align 8, !tbaa !4
  %338 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx306 = getelementptr inbounds i64, ptr %337, i64 %338
  %339 = load i64, ptr %arrayidx306, align 8, !tbaa !8
  %sub307 = sub nsw i64 %336, %339
  %conv308 = sitofp i64 %sub307 to float
  %call309 = call i32 @libmetis__rpqInsert(ptr noundef %332, i64 noundef %333, float noundef %conv308)
  br label %if.end310

if.end310:                                        ; preds = %if.then302, %do.end298
  br label %if.end311

if.end311:                                        ; preds = %if.end310, %if.else288
  br label %if.end312

if.end312:                                        ; preds = %if.end311, %if.end287
  br label %for.inc313

for.inc313:                                       ; preds = %if.end312
  %340 = load i64, ptr %j, align 8, !tbaa !8
  %inc314 = add nsw i64 %340, 1
  store i64 %inc314, ptr %j, align 8, !tbaa !8
  br label %for.cond224, !llvm.loop !34

for.end315:                                       ; preds = %for.cond224
  br label %for.inc316

for.inc316:                                       ; preds = %for.end315
  %341 = load i64, ptr %nswaps, align 8, !tbaa !8
  %inc317 = add nsw i64 %341, 1
  store i64 %inc317, ptr %nswaps, align 8, !tbaa !8
  br label %for.cond101, !llvm.loop !35

for.end318:                                       ; preds = %do.end177, %if.then120, %for.cond101
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond319

for.cond319:                                      ; preds = %for.inc325, %for.end318
  %342 = load i64, ptr %i, align 8, !tbaa !8
  %343 = load i64, ptr %nswaps, align 8, !tbaa !8
  %cmp320 = icmp slt i64 %342, %343
  br i1 %cmp320, label %for.body322, label %for.end327

for.body322:                                      ; preds = %for.cond319
  %344 = load ptr, ptr %moved, align 8, !tbaa !4
  %345 = load ptr, ptr %swaps, align 8, !tbaa !4
  %346 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx323 = getelementptr inbounds i64, ptr %345, i64 %346
  %347 = load i64, ptr %arrayidx323, align 8, !tbaa !8
  %arrayidx324 = getelementptr inbounds i64, ptr %344, i64 %347
  store i64 -1, ptr %arrayidx324, align 8, !tbaa !8
  br label %for.inc325

for.inc325:                                       ; preds = %for.body322
  %348 = load i64, ptr %i, align 8, !tbaa !8
  %inc326 = add nsw i64 %348, 1
  store i64 %inc326, ptr %i, align 8, !tbaa !8
  br label %for.cond319, !llvm.loop !36

for.end327:                                       ; preds = %for.cond319
  %349 = load i64, ptr %nswaps, align 8, !tbaa !8
  %dec328 = add nsw i64 %349, -1
  store i64 %dec328, ptr %nswaps, align 8, !tbaa !8
  br label %for.cond329

for.cond329:                                      ; preds = %for.inc461, %for.end327
  %350 = load i64, ptr %nswaps, align 8, !tbaa !8
  %351 = load i64, ptr %mincutorder, align 8, !tbaa !8
  %cmp330 = icmp sgt i64 %350, %351
  br i1 %cmp330, label %for.body332, label %for.end463

for.body332:                                      ; preds = %for.cond329
  %352 = load ptr, ptr %swaps, align 8, !tbaa !4
  %353 = load i64, ptr %nswaps, align 8, !tbaa !8
  %arrayidx333 = getelementptr inbounds i64, ptr %352, i64 %353
  %354 = load i64, ptr %arrayidx333, align 8, !tbaa !8
  store i64 %354, ptr %higain, align 8, !tbaa !8
  %355 = load ptr, ptr %where, align 8, !tbaa !4
  %356 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx334 = getelementptr inbounds i64, ptr %355, i64 %356
  %357 = load i64, ptr %arrayidx334, align 8, !tbaa !8
  %add335 = add nsw i64 %357, 1
  %rem336 = srem i64 %add335, 2
  %358 = load ptr, ptr %where, align 8, !tbaa !4
  %359 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx337 = getelementptr inbounds i64, ptr %358, i64 %359
  store i64 %rem336, ptr %arrayidx337, align 8, !tbaa !8
  store i64 %rem336, ptr %to, align 8, !tbaa !8
  br label %do.body338

do.body338:                                       ; preds = %for.body332
  %360 = load ptr, ptr %id, align 8, !tbaa !4
  %361 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx339 = getelementptr inbounds i64, ptr %360, i64 %361
  %362 = load i64, ptr %arrayidx339, align 8, !tbaa !8
  store i64 %362, ptr %tmp, align 8, !tbaa !8
  %363 = load ptr, ptr %ed, align 8, !tbaa !4
  %364 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx340 = getelementptr inbounds i64, ptr %363, i64 %364
  %365 = load i64, ptr %arrayidx340, align 8, !tbaa !8
  %366 = load ptr, ptr %id, align 8, !tbaa !4
  %367 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx341 = getelementptr inbounds i64, ptr %366, i64 %367
  store i64 %365, ptr %arrayidx341, align 8, !tbaa !8
  %368 = load i64, ptr %tmp, align 8, !tbaa !8
  %369 = load ptr, ptr %ed, align 8, !tbaa !4
  %370 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx342 = getelementptr inbounds i64, ptr %369, i64 %370
  store i64 %368, ptr %arrayidx342, align 8, !tbaa !8
  br label %do.cond343

do.cond343:                                       ; preds = %do.body338
  br label %do.end344

do.end344:                                        ; preds = %do.cond343
  %371 = load ptr, ptr %ed, align 8, !tbaa !4
  %372 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx345 = getelementptr inbounds i64, ptr %371, i64 %372
  %373 = load i64, ptr %arrayidx345, align 8, !tbaa !8
  %cmp346 = icmp eq i64 %373, 0
  br i1 %cmp346, label %land.lhs.true348, label %if.else370

land.lhs.true348:                                 ; preds = %do.end344
  %374 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %375 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx349 = getelementptr inbounds i64, ptr %374, i64 %375
  %376 = load i64, ptr %arrayidx349, align 8, !tbaa !8
  %cmp350 = icmp ne i64 %376, -1
  br i1 %cmp350, label %land.lhs.true352, label %if.else370

land.lhs.true352:                                 ; preds = %land.lhs.true348
  %377 = load ptr, ptr %xadj, align 8, !tbaa !4
  %378 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx353 = getelementptr inbounds i64, ptr %377, i64 %378
  %379 = load i64, ptr %arrayidx353, align 8, !tbaa !8
  %380 = load ptr, ptr %xadj, align 8, !tbaa !4
  %381 = load i64, ptr %higain, align 8, !tbaa !8
  %add354 = add nsw i64 %381, 1
  %arrayidx355 = getelementptr inbounds i64, ptr %380, i64 %add354
  %382 = load i64, ptr %arrayidx355, align 8, !tbaa !8
  %cmp356 = icmp slt i64 %379, %382
  br i1 %cmp356, label %if.then358, label %if.else370

if.then358:                                       ; preds = %land.lhs.true352
  br label %do.body359

do.body359:                                       ; preds = %if.then358
  %383 = load ptr, ptr %bndind, align 8, !tbaa !4
  %384 = load i64, ptr %nbnd, align 8, !tbaa !8
  %dec360 = add nsw i64 %384, -1
  store i64 %dec360, ptr %nbnd, align 8, !tbaa !8
  %arrayidx361 = getelementptr inbounds i64, ptr %383, i64 %dec360
  %385 = load i64, ptr %arrayidx361, align 8, !tbaa !8
  %386 = load ptr, ptr %bndind, align 8, !tbaa !4
  %387 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %388 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx362 = getelementptr inbounds i64, ptr %387, i64 %388
  %389 = load i64, ptr %arrayidx362, align 8, !tbaa !8
  %arrayidx363 = getelementptr inbounds i64, ptr %386, i64 %389
  store i64 %385, ptr %arrayidx363, align 8, !tbaa !8
  %390 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %391 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx364 = getelementptr inbounds i64, ptr %390, i64 %391
  %392 = load i64, ptr %arrayidx364, align 8, !tbaa !8
  %393 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %394 = load ptr, ptr %bndind, align 8, !tbaa !4
  %395 = load i64, ptr %nbnd, align 8, !tbaa !8
  %arrayidx365 = getelementptr inbounds i64, ptr %394, i64 %395
  %396 = load i64, ptr %arrayidx365, align 8, !tbaa !8
  %arrayidx366 = getelementptr inbounds i64, ptr %393, i64 %396
  store i64 %392, ptr %arrayidx366, align 8, !tbaa !8
  %397 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %398 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx367 = getelementptr inbounds i64, ptr %397, i64 %398
  store i64 -1, ptr %arrayidx367, align 8, !tbaa !8
  br label %do.cond368

do.cond368:                                       ; preds = %do.body359
  br label %do.end369

do.end369:                                        ; preds = %do.cond368
  br label %if.end386

if.else370:                                       ; preds = %land.lhs.true352, %land.lhs.true348, %do.end344
  %399 = load ptr, ptr %ed, align 8, !tbaa !4
  %400 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx371 = getelementptr inbounds i64, ptr %399, i64 %400
  %401 = load i64, ptr %arrayidx371, align 8, !tbaa !8
  %cmp372 = icmp sgt i64 %401, 0
  br i1 %cmp372, label %land.lhs.true374, label %if.end385

land.lhs.true374:                                 ; preds = %if.else370
  %402 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %403 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx375 = getelementptr inbounds i64, ptr %402, i64 %403
  %404 = load i64, ptr %arrayidx375, align 8, !tbaa !8
  %cmp376 = icmp eq i64 %404, -1
  br i1 %cmp376, label %if.then378, label %if.end385

if.then378:                                       ; preds = %land.lhs.true374
  br label %do.body379

do.body379:                                       ; preds = %if.then378
  %405 = load i64, ptr %higain, align 8, !tbaa !8
  %406 = load ptr, ptr %bndind, align 8, !tbaa !4
  %407 = load i64, ptr %nbnd, align 8, !tbaa !8
  %arrayidx380 = getelementptr inbounds i64, ptr %406, i64 %407
  store i64 %405, ptr %arrayidx380, align 8, !tbaa !8
  %408 = load i64, ptr %nbnd, align 8, !tbaa !8
  %inc381 = add nsw i64 %408, 1
  store i64 %inc381, ptr %nbnd, align 8, !tbaa !8
  %409 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %410 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx382 = getelementptr inbounds i64, ptr %409, i64 %410
  store i64 %408, ptr %arrayidx382, align 8, !tbaa !8
  br label %do.cond383

do.cond383:                                       ; preds = %do.body379
  br label %do.end384

do.end384:                                        ; preds = %do.cond383
  br label %if.end385

if.end385:                                        ; preds = %do.end384, %land.lhs.true374, %if.else370
  br label %if.end386

if.end386:                                        ; preds = %if.end385, %do.end369
  br label %do.body387

do.body387:                                       ; preds = %if.end386
  %411 = load ptr, ptr %vwgt, align 8, !tbaa !4
  %412 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx388 = getelementptr inbounds i64, ptr %411, i64 %412
  %413 = load i64, ptr %arrayidx388, align 8, !tbaa !8
  %414 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %415 = load i64, ptr %to, align 8, !tbaa !8
  %arrayidx389 = getelementptr inbounds i64, ptr %414, i64 %415
  %416 = load i64, ptr %arrayidx389, align 8, !tbaa !8
  %add390 = add nsw i64 %416, %413
  store i64 %add390, ptr %arrayidx389, align 8, !tbaa !8
  %417 = load ptr, ptr %vwgt, align 8, !tbaa !4
  %418 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx391 = getelementptr inbounds i64, ptr %417, i64 %418
  %419 = load i64, ptr %arrayidx391, align 8, !tbaa !8
  %420 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %421 = load i64, ptr %to, align 8, !tbaa !8
  %add392 = add nsw i64 %421, 1
  %rem393 = srem i64 %add392, 2
  %arrayidx394 = getelementptr inbounds i64, ptr %420, i64 %rem393
  %422 = load i64, ptr %arrayidx394, align 8, !tbaa !8
  %sub395 = sub nsw i64 %422, %419
  store i64 %sub395, ptr %arrayidx394, align 8, !tbaa !8
  br label %do.cond396

do.cond396:                                       ; preds = %do.body387
  br label %do.end397

do.end397:                                        ; preds = %do.cond396
  %423 = load ptr, ptr %xadj, align 8, !tbaa !4
  %424 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx398 = getelementptr inbounds i64, ptr %423, i64 %424
  %425 = load i64, ptr %arrayidx398, align 8, !tbaa !8
  store i64 %425, ptr %j, align 8, !tbaa !8
  br label %for.cond399

for.cond399:                                      ; preds = %for.inc458, %do.end397
  %426 = load i64, ptr %j, align 8, !tbaa !8
  %427 = load ptr, ptr %xadj, align 8, !tbaa !4
  %428 = load i64, ptr %higain, align 8, !tbaa !8
  %add400 = add nsw i64 %428, 1
  %arrayidx401 = getelementptr inbounds i64, ptr %427, i64 %add400
  %429 = load i64, ptr %arrayidx401, align 8, !tbaa !8
  %cmp402 = icmp slt i64 %426, %429
  br i1 %cmp402, label %for.body404, label %for.end460

for.body404:                                      ; preds = %for.cond399
  %430 = load ptr, ptr %adjncy, align 8, !tbaa !4
  %431 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx405 = getelementptr inbounds i64, ptr %430, i64 %431
  %432 = load i64, ptr %arrayidx405, align 8, !tbaa !8
  store i64 %432, ptr %k, align 8, !tbaa !8
  %433 = load i64, ptr %to, align 8, !tbaa !8
  %434 = load ptr, ptr %where, align 8, !tbaa !4
  %435 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx406 = getelementptr inbounds i64, ptr %434, i64 %435
  %436 = load i64, ptr %arrayidx406, align 8, !tbaa !8
  %cmp407 = icmp eq i64 %433, %436
  br i1 %cmp407, label %cond.true409, label %cond.false411

cond.true409:                                     ; preds = %for.body404
  %437 = load ptr, ptr %adjwgt, align 8, !tbaa !4
  %438 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx410 = getelementptr inbounds i64, ptr %437, i64 %438
  %439 = load i64, ptr %arrayidx410, align 8, !tbaa !8
  br label %cond.end414

cond.false411:                                    ; preds = %for.body404
  %440 = load ptr, ptr %adjwgt, align 8, !tbaa !4
  %441 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx412 = getelementptr inbounds i64, ptr %440, i64 %441
  %442 = load i64, ptr %arrayidx412, align 8, !tbaa !8
  %sub413 = sub nsw i64 0, %442
  br label %cond.end414

cond.end414:                                      ; preds = %cond.false411, %cond.true409
  %cond415 = phi i64 [ %439, %cond.true409 ], [ %sub413, %cond.false411 ]
  store i64 %cond415, ptr %kwgt, align 8, !tbaa !8
  br label %do.body416

do.body416:                                       ; preds = %cond.end414
  %443 = load i64, ptr %kwgt, align 8, !tbaa !8
  %444 = load ptr, ptr %id, align 8, !tbaa !4
  %445 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx417 = getelementptr inbounds i64, ptr %444, i64 %445
  %446 = load i64, ptr %arrayidx417, align 8, !tbaa !8
  %add418 = add nsw i64 %446, %443
  store i64 %add418, ptr %arrayidx417, align 8, !tbaa !8
  %447 = load i64, ptr %kwgt, align 8, !tbaa !8
  %448 = load ptr, ptr %ed, align 8, !tbaa !4
  %449 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx419 = getelementptr inbounds i64, ptr %448, i64 %449
  %450 = load i64, ptr %arrayidx419, align 8, !tbaa !8
  %sub420 = sub nsw i64 %450, %447
  store i64 %sub420, ptr %arrayidx419, align 8, !tbaa !8
  br label %do.cond421

do.cond421:                                       ; preds = %do.body416
  br label %do.end422

do.end422:                                        ; preds = %do.cond421
  %451 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %452 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx423 = getelementptr inbounds i64, ptr %451, i64 %452
  %453 = load i64, ptr %arrayidx423, align 8, !tbaa !8
  %cmp424 = icmp ne i64 %453, -1
  br i1 %cmp424, label %land.lhs.true426, label %if.end442

land.lhs.true426:                                 ; preds = %do.end422
  %454 = load ptr, ptr %ed, align 8, !tbaa !4
  %455 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx427 = getelementptr inbounds i64, ptr %454, i64 %455
  %456 = load i64, ptr %arrayidx427, align 8, !tbaa !8
  %cmp428 = icmp eq i64 %456, 0
  br i1 %cmp428, label %if.then430, label %if.end442

if.then430:                                       ; preds = %land.lhs.true426
  br label %do.body431

do.body431:                                       ; preds = %if.then430
  %457 = load ptr, ptr %bndind, align 8, !tbaa !4
  %458 = load i64, ptr %nbnd, align 8, !tbaa !8
  %dec432 = add nsw i64 %458, -1
  store i64 %dec432, ptr %nbnd, align 8, !tbaa !8
  %arrayidx433 = getelementptr inbounds i64, ptr %457, i64 %dec432
  %459 = load i64, ptr %arrayidx433, align 8, !tbaa !8
  %460 = load ptr, ptr %bndind, align 8, !tbaa !4
  %461 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %462 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx434 = getelementptr inbounds i64, ptr %461, i64 %462
  %463 = load i64, ptr %arrayidx434, align 8, !tbaa !8
  %arrayidx435 = getelementptr inbounds i64, ptr %460, i64 %463
  store i64 %459, ptr %arrayidx435, align 8, !tbaa !8
  %464 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %465 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx436 = getelementptr inbounds i64, ptr %464, i64 %465
  %466 = load i64, ptr %arrayidx436, align 8, !tbaa !8
  %467 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %468 = load ptr, ptr %bndind, align 8, !tbaa !4
  %469 = load i64, ptr %nbnd, align 8, !tbaa !8
  %arrayidx437 = getelementptr inbounds i64, ptr %468, i64 %469
  %470 = load i64, ptr %arrayidx437, align 8, !tbaa !8
  %arrayidx438 = getelementptr inbounds i64, ptr %467, i64 %470
  store i64 %466, ptr %arrayidx438, align 8, !tbaa !8
  %471 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %472 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx439 = getelementptr inbounds i64, ptr %471, i64 %472
  store i64 -1, ptr %arrayidx439, align 8, !tbaa !8
  br label %do.cond440

do.cond440:                                       ; preds = %do.body431
  br label %do.end441

do.end441:                                        ; preds = %do.cond440
  br label %if.end442

if.end442:                                        ; preds = %do.end441, %land.lhs.true426, %do.end422
  %473 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %474 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx443 = getelementptr inbounds i64, ptr %473, i64 %474
  %475 = load i64, ptr %arrayidx443, align 8, !tbaa !8
  %cmp444 = icmp eq i64 %475, -1
  br i1 %cmp444, label %land.lhs.true446, label %if.end457

land.lhs.true446:                                 ; preds = %if.end442
  %476 = load ptr, ptr %ed, align 8, !tbaa !4
  %477 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx447 = getelementptr inbounds i64, ptr %476, i64 %477
  %478 = load i64, ptr %arrayidx447, align 8, !tbaa !8
  %cmp448 = icmp sgt i64 %478, 0
  br i1 %cmp448, label %if.then450, label %if.end457

if.then450:                                       ; preds = %land.lhs.true446
  br label %do.body451

do.body451:                                       ; preds = %if.then450
  %479 = load i64, ptr %k, align 8, !tbaa !8
  %480 = load ptr, ptr %bndind, align 8, !tbaa !4
  %481 = load i64, ptr %nbnd, align 8, !tbaa !8
  %arrayidx452 = getelementptr inbounds i64, ptr %480, i64 %481
  store i64 %479, ptr %arrayidx452, align 8, !tbaa !8
  %482 = load i64, ptr %nbnd, align 8, !tbaa !8
  %inc453 = add nsw i64 %482, 1
  store i64 %inc453, ptr %nbnd, align 8, !tbaa !8
  %483 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %484 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx454 = getelementptr inbounds i64, ptr %483, i64 %484
  store i64 %482, ptr %arrayidx454, align 8, !tbaa !8
  br label %do.cond455

do.cond455:                                       ; preds = %do.body451
  br label %do.end456

do.end456:                                        ; preds = %do.cond455
  br label %if.end457

if.end457:                                        ; preds = %do.end456, %land.lhs.true446, %if.end442
  br label %for.inc458

for.inc458:                                       ; preds = %if.end457
  %485 = load i64, ptr %j, align 8, !tbaa !8
  %inc459 = add nsw i64 %485, 1
  store i64 %inc459, ptr %j, align 8, !tbaa !8
  br label %for.cond399, !llvm.loop !37

for.end460:                                       ; preds = %for.cond399
  br label %for.inc461

for.inc461:                                       ; preds = %for.end460
  %486 = load i64, ptr %nswaps, align 8, !tbaa !8
  %dec462 = add nsw i64 %486, -1
  store i64 %dec462, ptr %nswaps, align 8, !tbaa !8
  br label %for.cond329, !llvm.loop !38

for.end463:                                       ; preds = %for.cond329
  %487 = load i64, ptr %mincut, align 8, !tbaa !8
  %488 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %mincut464 = getelementptr inbounds %struct.graph_t, ptr %488, i32 0, i32 17
  store i64 %487, ptr %mincut464, align 8, !tbaa !30
  %489 = load i64, ptr %nbnd, align 8, !tbaa !8
  %490 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nbnd465 = getelementptr inbounds %struct.graph_t, ptr %490, i32 0, i32 21
  store i64 %489, ptr %nbnd465, align 8, !tbaa !31
  %491 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %dbglvl466 = getelementptr inbounds %struct.ctrl_t, ptr %491, i32 0, i32 2
  %492 = load i32, ptr %dbglvl466, align 8, !tbaa !27
  %and467 = and i32 %492, 8
  %tobool468 = icmp ne i32 %and467, 0
  br i1 %tobool468, label %if.then469, label %if.end470

if.then469:                                       ; preds = %for.end463
  %493 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %494 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %495 = load ptr, ptr %ntpwgts.addr, align 8, !tbaa !4
  %496 = load i64, ptr %mincutorder, align 8, !tbaa !8
  call void @libmetis__Print2WayRefineStats(ptr noundef %493, ptr noundef %494, ptr noundef %495, float noundef 0.000000e+00, i64 noundef %496)
  br label %if.end470

if.end470:                                        ; preds = %if.then469, %for.end463
  %497 = load i64, ptr %mincutorder, align 8, !tbaa !8
  %cmp471 = icmp sle i64 %497, 0
  br i1 %cmp471, label %if.then476, label %lor.lhs.false473

lor.lhs.false473:                                 ; preds = %if.end470
  %498 = load i64, ptr %mincut, align 8, !tbaa !8
  %499 = load i64, ptr %initcut, align 8, !tbaa !8
  %cmp474 = icmp eq i64 %498, %499
  br i1 %cmp474, label %if.then476, label %if.end477

if.then476:                                       ; preds = %lor.lhs.false473, %if.end470
  br label %for.end480

if.end477:                                        ; preds = %lor.lhs.false473
  br label %for.inc478

for.inc478:                                       ; preds = %if.end477
  %500 = load i64, ptr %pass, align 8, !tbaa !8
  %inc479 = add nsw i64 %500, 1
  store i64 %inc479, ptr %pass, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !39

for.end480:                                       ; preds = %if.then476, %for.cond
  %arrayidx481 = getelementptr inbounds [2 x ptr], ptr %queues, i64 0, i64 0
  %501 = load ptr, ptr %arrayidx481, align 16, !tbaa !4
  call void @libmetis__rpqDestroy(ptr noundef %501)
  %arrayidx482 = getelementptr inbounds [2 x ptr], ptr %queues, i64 0, i64 1
  %502 = load ptr, ptr %arrayidx482, align 8, !tbaa !4
  call void @libmetis__rpqDestroy(ptr noundef %502)
  %503 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__wspacepop(ptr noundef %503)
  call void @llvm.lifetime.end.p0(i64 16, ptr %tpwgts) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %avgvwgt) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mincutorder) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %newcut) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %initcut) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %origdiff) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mindiff) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mincut) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %higain) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %queues) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %perm) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %swaps) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %moved) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pwgts) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bndind) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bndptr) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ed) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %where) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %adjwgt) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %adjncy) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %vwgt) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %xadj) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %limit) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %me) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pass) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %to) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %from) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %nswaps) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %nbnd) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %nvtxs) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kwgt) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ii) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @libmetis__FM_Mc2WayCutRefine(ptr noundef %ctrl, ptr noundef %graph, ptr noundef %ntpwgts, i64 noundef %niter) #0 {
entry:
  %ctrl.addr = alloca ptr, align 8
  %graph.addr = alloca ptr, align 8
  %ntpwgts.addr = alloca ptr, align 8
  %niter.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %ii = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %l = alloca i64, align 8
  %kwgt = alloca i64, align 8
  %nvtxs = alloca i64, align 8
  %ncon = alloca i64, align 8
  %nbnd = alloca i64, align 8
  %nswaps = alloca i64, align 8
  %from = alloca i64, align 8
  %to = alloca i64, align 8
  %pass = alloca i64, align 8
  %me = alloca i64, align 8
  %limit = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cnum = alloca i64, align 8
  %xadj = alloca ptr, align 8
  %adjncy = alloca ptr, align 8
  %vwgt = alloca ptr, align 8
  %adjwgt = alloca ptr, align 8
  %pwgts = alloca ptr, align 8
  %where = alloca ptr, align 8
  %id = alloca ptr, align 8
  %ed = alloca ptr, align 8
  %bndptr = alloca ptr, align 8
  %bndind = alloca ptr, align 8
  %moved = alloca ptr, align 8
  %swaps = alloca ptr, align 8
  %perm = alloca ptr, align 8
  %qnum = alloca ptr, align 8
  %higain = alloca i64, align 8
  %mincut = alloca i64, align 8
  %initcut = alloca i64, align 8
  %newcut = alloca i64, align 8
  %mincutorder = alloca i64, align 8
  %invtvwgt = alloca ptr, align 8
  %ubfactors = alloca ptr, align 8
  %minbalv = alloca ptr, align 8
  %newbalv = alloca ptr, align 8
  %origbal = alloca float, align 4
  %minbal = alloca float, align 4
  %newbal = alloca float, align 4
  %rgain = alloca float, align 4
  %ffactor = alloca float, align 4
  %queues = alloca ptr, align 8
  store ptr %ctrl, ptr %ctrl.addr, align 8, !tbaa !4
  store ptr %graph, ptr %graph.addr, align 8, !tbaa !4
  store ptr %ntpwgts, ptr %ntpwgts.addr, align 8, !tbaa !4
  store i64 %niter, ptr %niter.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ii) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kwgt) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nvtxs) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ncon) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nbnd) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nswaps) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %from) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %to) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pass) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %me) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %limit) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cnum) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %xadj) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adjncy) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vwgt) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %adjwgt) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pwgts) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %where) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ed) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bndptr) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bndind) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %moved) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %swaps) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %perm) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %qnum) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %higain) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mincut) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %initcut) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %newcut) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mincutorder) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %invtvwgt) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ubfactors) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %minbalv) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %newbalv) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %origbal) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %minbal) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %newbal) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rgain) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ffactor) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %queues) #4
  %0 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__wspacepush(ptr noundef %0)
  %1 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs1 = getelementptr inbounds %struct.graph_t, ptr %1, i32 0, i32 0
  %2 = load i64, ptr %nvtxs1, align 8, !tbaa !13
  store i64 %2, ptr %nvtxs, align 8, !tbaa !8
  %3 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %ncon2 = getelementptr inbounds %struct.graph_t, ptr %3, i32 0, i32 2
  %4 = load i64, ptr %ncon2, align 8, !tbaa !10
  store i64 %4, ptr %ncon, align 8, !tbaa !8
  %5 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %xadj3 = getelementptr inbounds %struct.graph_t, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %xadj3, align 8, !tbaa !14
  store ptr %6, ptr %xadj, align 8, !tbaa !4
  %7 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %vwgt4 = getelementptr inbounds %struct.graph_t, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %vwgt4, align 8, !tbaa !15
  store ptr %8, ptr %vwgt, align 8, !tbaa !4
  %9 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %adjncy5 = getelementptr inbounds %struct.graph_t, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %adjncy5, align 8, !tbaa !16
  store ptr %10, ptr %adjncy, align 8, !tbaa !4
  %11 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %adjwgt6 = getelementptr inbounds %struct.graph_t, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %adjwgt6, align 8, !tbaa !17
  store ptr %12, ptr %adjwgt, align 8, !tbaa !4
  %13 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %invtvwgt7 = getelementptr inbounds %struct.graph_t, ptr %13, i32 0, i32 9
  %14 = load ptr, ptr %invtvwgt7, align 8, !tbaa !40
  store ptr %14, ptr %invtvwgt, align 8, !tbaa !4
  %15 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %where8 = getelementptr inbounds %struct.graph_t, ptr %15, i32 0, i32 19
  %16 = load ptr, ptr %where8, align 8, !tbaa !18
  store ptr %16, ptr %where, align 8, !tbaa !4
  %17 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %id9 = getelementptr inbounds %struct.graph_t, ptr %17, i32 0, i32 24
  %18 = load ptr, ptr %id9, align 8, !tbaa !19
  store ptr %18, ptr %id, align 8, !tbaa !4
  %19 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %ed10 = getelementptr inbounds %struct.graph_t, ptr %19, i32 0, i32 25
  %20 = load ptr, ptr %ed10, align 8, !tbaa !20
  store ptr %20, ptr %ed, align 8, !tbaa !4
  %21 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %pwgts11 = getelementptr inbounds %struct.graph_t, ptr %21, i32 0, i32 20
  %22 = load ptr, ptr %pwgts11, align 8, !tbaa !21
  store ptr %22, ptr %pwgts, align 8, !tbaa !4
  %23 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %bndptr12 = getelementptr inbounds %struct.graph_t, ptr %23, i32 0, i32 22
  %24 = load ptr, ptr %bndptr12, align 8, !tbaa !22
  store ptr %24, ptr %bndptr, align 8, !tbaa !4
  %25 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %bndind13 = getelementptr inbounds %struct.graph_t, ptr %25, i32 0, i32 23
  %26 = load ptr, ptr %bndind13, align 8, !tbaa !23
  store ptr %26, ptr %bndind, align 8, !tbaa !4
  %27 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %28 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %call = call ptr @libmetis__iwspacemalloc(ptr noundef %27, i64 noundef %28)
  store ptr %call, ptr %moved, align 8, !tbaa !4
  %29 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %30 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %call14 = call ptr @libmetis__iwspacemalloc(ptr noundef %29, i64 noundef %30)
  store ptr %call14, ptr %swaps, align 8, !tbaa !4
  %31 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %32 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %call15 = call ptr @libmetis__iwspacemalloc(ptr noundef %31, i64 noundef %32)
  store ptr %call15, ptr %perm, align 8, !tbaa !4
  %33 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %34 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %call16 = call ptr @libmetis__iwspacemalloc(ptr noundef %33, i64 noundef %34)
  store ptr %call16, ptr %qnum, align 8, !tbaa !4
  %35 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %36 = load i64, ptr %ncon, align 8, !tbaa !8
  %call17 = call ptr @libmetis__rwspacemalloc(ptr noundef %35, i64 noundef %36)
  store ptr %call17, ptr %ubfactors, align 8, !tbaa !4
  %37 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %38 = load i64, ptr %ncon, align 8, !tbaa !8
  %call18 = call ptr @libmetis__rwspacemalloc(ptr noundef %37, i64 noundef %38)
  store ptr %call18, ptr %newbalv, align 8, !tbaa !4
  %39 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %40 = load i64, ptr %ncon, align 8, !tbaa !8
  %call19 = call ptr @libmetis__rwspacemalloc(ptr noundef %39, i64 noundef %40)
  store ptr %call19, ptr %minbalv, align 8, !tbaa !4
  %41 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %conv = sitofp i64 %41 to double
  %mul = fmul double 1.000000e-02, %conv
  %cmp = fcmp oge double %mul, 2.500000e+01
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %42 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %conv21 = sitofp i64 %42 to double
  %mul22 = fmul double 1.000000e-02, %conv21
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul22, %cond.true ], [ 2.500000e+01, %cond.false ]
  %cmp23 = fcmp oge double %cond, 1.500000e+02
  br i1 %cmp23, label %cond.true25, label %cond.false26

cond.true25:                                      ; preds = %cond.end
  br label %cond.end37

cond.false26:                                     ; preds = %cond.end
  %43 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %conv27 = sitofp i64 %43 to double
  %mul28 = fmul double 1.000000e-02, %conv27
  %cmp29 = fcmp oge double %mul28, 2.500000e+01
  br i1 %cmp29, label %cond.true31, label %cond.false34

cond.true31:                                      ; preds = %cond.false26
  %44 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %conv32 = sitofp i64 %44 to double
  %mul33 = fmul double 1.000000e-02, %conv32
  br label %cond.end35

cond.false34:                                     ; preds = %cond.false26
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false34, %cond.true31
  %cond36 = phi double [ %mul33, %cond.true31 ], [ 2.500000e+01, %cond.false34 ]
  br label %cond.end37

cond.end37:                                       ; preds = %cond.end35, %cond.true25
  %cond38 = phi double [ 1.500000e+02, %cond.true25 ], [ %cond36, %cond.end35 ]
  %conv39 = fptosi double %cond38 to i64
  store i64 %conv39, ptr %limit, align 8, !tbaa !8
  %45 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %cmp40 = icmp sge i64 20, %45
  br i1 %cmp40, label %cond.true42, label %cond.false43

cond.true42:                                      ; preds = %cond.end37
  br label %cond.end44

cond.false43:                                     ; preds = %cond.end37
  %46 = load i64, ptr %nvtxs, align 8, !tbaa !8
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false43, %cond.true42
  %cond45 = phi i64 [ 20, %cond.true42 ], [ %46, %cond.false43 ]
  %conv46 = sitofp i64 %cond45 to double
  %div = fdiv double 5.000000e-01, %conv46
  %conv47 = fptrunc double %div to float
  store float %conv47, ptr %ffactor, align 4, !tbaa !25
  %47 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %48 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul48 = mul nsw i64 2, %48
  %mul49 = mul i64 %mul48, 8
  %call50 = call ptr @libmetis__wspacemalloc(ptr noundef %47, i64 noundef %mul49)
  store ptr %call50, ptr %queues, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end44
  %49 = load i64, ptr %i, align 8, !tbaa !8
  %50 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul51 = mul nsw i64 2, %50
  %cmp52 = icmp slt i64 %49, %mul51
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %call54 = call ptr @libmetis__rpqCreate(i64 noundef %51)
  %52 = load ptr, ptr %queues, align 8, !tbaa !4
  %53 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds ptr, ptr %52, i64 %53
  store ptr %call54, ptr %arrayidx, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add nsw i64 %54, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc62, %for.end
  %55 = load i64, ptr %i, align 8, !tbaa !8
  %56 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %cmp56 = icmp slt i64 %55, %56
  br i1 %cmp56, label %for.body58, label %for.end64

for.body58:                                       ; preds = %for.cond55
  %57 = load i64, ptr %ncon, align 8, !tbaa !8
  %58 = load ptr, ptr %vwgt, align 8, !tbaa !4
  %59 = load i64, ptr %i, align 8, !tbaa !8
  %60 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul59 = mul nsw i64 %59, %60
  %add.ptr = getelementptr inbounds i64, ptr %58, i64 %mul59
  %61 = load ptr, ptr %invtvwgt, align 8, !tbaa !4
  %call60 = call i64 @libmetis__iargmax_nrm(i64 noundef %57, ptr noundef %add.ptr, ptr noundef %61)
  %62 = load ptr, ptr %qnum, align 8, !tbaa !4
  %63 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx61 = getelementptr inbounds i64, ptr %62, i64 %63
  store i64 %call60, ptr %arrayidx61, align 8, !tbaa !8
  br label %for.inc62

for.inc62:                                        ; preds = %for.body58
  %64 = load i64, ptr %i, align 8, !tbaa !8
  %inc63 = add nsw i64 %64, 1
  store i64 %inc63, ptr %i, align 8, !tbaa !8
  br label %for.cond55, !llvm.loop !42

for.end64:                                        ; preds = %for.cond55
  %65 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %66 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %pijbm = getelementptr inbounds %struct.ctrl_t, ptr %66, i32 0, i32 25
  %67 = load ptr, ptr %pijbm, align 8, !tbaa !43
  %68 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %ubfactors65 = getelementptr inbounds %struct.ctrl_t, ptr %68, i32 0, i32 23
  %69 = load ptr, ptr %ubfactors65, align 8, !tbaa !44
  %70 = load ptr, ptr %ubfactors, align 8, !tbaa !4
  %call66 = call float @libmetis__ComputeLoadImbalanceDiffVec(ptr noundef %65, i64 noundef 2, ptr noundef %67, ptr noundef %69, ptr noundef %70)
  store float %call66, ptr %origbal, align 4, !tbaa !25
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc84, %for.end64
  %71 = load i64, ptr %i, align 8, !tbaa !8
  %72 = load i64, ptr %ncon, align 8, !tbaa !8
  %cmp68 = icmp slt i64 %71, %72
  br i1 %cmp68, label %for.body70, label %for.end86

for.body70:                                       ; preds = %for.cond67
  %73 = load ptr, ptr %ubfactors, align 8, !tbaa !4
  %74 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx71 = getelementptr inbounds float, ptr %73, i64 %74
  %75 = load float, ptr %arrayidx71, align 4, !tbaa !25
  %cmp72 = fcmp ogt float %75, 0.000000e+00
  br i1 %cmp72, label %cond.true74, label %cond.false78

cond.true74:                                      ; preds = %for.body70
  %76 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %ubfactors75 = getelementptr inbounds %struct.ctrl_t, ptr %76, i32 0, i32 23
  %77 = load ptr, ptr %ubfactors75, align 8, !tbaa !44
  %78 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx76 = getelementptr inbounds float, ptr %77, i64 %78
  %79 = load float, ptr %arrayidx76, align 4, !tbaa !25
  %80 = load ptr, ptr %ubfactors, align 8, !tbaa !4
  %81 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx77 = getelementptr inbounds float, ptr %80, i64 %81
  %82 = load float, ptr %arrayidx77, align 4, !tbaa !25
  %add = fadd float %79, %82
  br label %cond.end81

cond.false78:                                     ; preds = %for.body70
  %83 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %ubfactors79 = getelementptr inbounds %struct.ctrl_t, ptr %83, i32 0, i32 23
  %84 = load ptr, ptr %ubfactors79, align 8, !tbaa !44
  %85 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx80 = getelementptr inbounds float, ptr %84, i64 %85
  %86 = load float, ptr %arrayidx80, align 4, !tbaa !25
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false78, %cond.true74
  %cond82 = phi float [ %add, %cond.true74 ], [ %86, %cond.false78 ]
  %87 = load ptr, ptr %ubfactors, align 8, !tbaa !4
  %88 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx83 = getelementptr inbounds float, ptr %87, i64 %88
  store float %cond82, ptr %arrayidx83, align 4, !tbaa !25
  br label %for.inc84

for.inc84:                                        ; preds = %cond.end81
  %89 = load i64, ptr %i, align 8, !tbaa !8
  %inc85 = add nsw i64 %89, 1
  store i64 %inc85, ptr %i, align 8, !tbaa !8
  br label %for.cond67, !llvm.loop !45

for.end86:                                        ; preds = %for.cond67
  %90 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %dbglvl = getelementptr inbounds %struct.ctrl_t, ptr %90, i32 0, i32 2
  %91 = load i32, ptr %dbglvl, align 8, !tbaa !27
  %and = and i32 %91, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end86
  %92 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %93 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %94 = load ptr, ptr %ntpwgts.addr, align 8, !tbaa !4
  %95 = load float, ptr %origbal, align 4, !tbaa !25
  call void @libmetis__Print2WayRefineStats(ptr noundef %92, ptr noundef %93, ptr noundef %94, float noundef %95, i64 noundef -2)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end86
  %96 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %97 = load ptr, ptr %moved, align 8, !tbaa !4
  %call87 = call ptr @libmetis__iset(i64 noundef %96, i64 noundef -1, ptr noundef %97)
  store i64 0, ptr %pass, align 8, !tbaa !8
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc521, %if.end
  %98 = load i64, ptr %pass, align 8, !tbaa !8
  %99 = load i64, ptr %niter.addr, align 8, !tbaa !8
  %cmp89 = icmp slt i64 %98, %99
  br i1 %cmp89, label %for.body91, label %for.end523

for.body91:                                       ; preds = %for.cond88
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc98, %for.body91
  %100 = load i64, ptr %i, align 8, !tbaa !8
  %101 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul93 = mul nsw i64 2, %101
  %cmp94 = icmp slt i64 %100, %mul93
  br i1 %cmp94, label %for.body96, label %for.end100

for.body96:                                       ; preds = %for.cond92
  %102 = load ptr, ptr %queues, align 8, !tbaa !4
  %103 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx97 = getelementptr inbounds ptr, ptr %102, i64 %103
  %104 = load ptr, ptr %arrayidx97, align 8, !tbaa !4
  call void @libmetis__rpqReset(ptr noundef %104)
  br label %for.inc98

for.inc98:                                        ; preds = %for.body96
  %105 = load i64, ptr %i, align 8, !tbaa !8
  %inc99 = add nsw i64 %105, 1
  store i64 %inc99, ptr %i, align 8, !tbaa !8
  br label %for.cond92, !llvm.loop !46

for.end100:                                       ; preds = %for.cond92
  store i64 -1, ptr %mincutorder, align 8, !tbaa !8
  %106 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %mincut101 = getelementptr inbounds %struct.graph_t, ptr %106, i32 0, i32 17
  %107 = load i64, ptr %mincut101, align 8, !tbaa !30
  store i64 %107, ptr %initcut, align 8, !tbaa !8
  store i64 %107, ptr %mincut, align 8, !tbaa !8
  store i64 %107, ptr %newcut, align 8, !tbaa !8
  %108 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %109 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %pijbm102 = getelementptr inbounds %struct.ctrl_t, ptr %109, i32 0, i32 25
  %110 = load ptr, ptr %pijbm102, align 8, !tbaa !43
  %111 = load ptr, ptr %ubfactors, align 8, !tbaa !4
  %112 = load ptr, ptr %minbalv, align 8, !tbaa !4
  %call103 = call float @libmetis__ComputeLoadImbalanceDiffVec(ptr noundef %108, i64 noundef 2, ptr noundef %110, ptr noundef %111, ptr noundef %112)
  store float %call103, ptr %minbal, align 4, !tbaa !25
  %113 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nbnd104 = getelementptr inbounds %struct.graph_t, ptr %113, i32 0, i32 21
  %114 = load i64, ptr %nbnd104, align 8, !tbaa !31
  store i64 %114, ptr %nbnd, align 8, !tbaa !8
  %115 = load i64, ptr %nbnd, align 8, !tbaa !8
  %116 = load ptr, ptr %perm, align 8, !tbaa !4
  %117 = load i64, ptr %nbnd, align 8, !tbaa !8
  %div105 = sdiv i64 %117, 5
  call void @libmetis__irandArrayPermute(i64 noundef %115, ptr noundef %116, i64 noundef %div105, i32 noundef 1)
  store i64 0, ptr %ii, align 8, !tbaa !8
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc121, %for.end100
  %118 = load i64, ptr %ii, align 8, !tbaa !8
  %119 = load i64, ptr %nbnd, align 8, !tbaa !8
  %cmp107 = icmp slt i64 %118, %119
  br i1 %cmp107, label %for.body109, label %for.end123

for.body109:                                      ; preds = %for.cond106
  %120 = load ptr, ptr %bndind, align 8, !tbaa !4
  %121 = load ptr, ptr %perm, align 8, !tbaa !4
  %122 = load i64, ptr %ii, align 8, !tbaa !8
  %arrayidx110 = getelementptr inbounds i64, ptr %121, i64 %122
  %123 = load i64, ptr %arrayidx110, align 8, !tbaa !8
  %arrayidx111 = getelementptr inbounds i64, ptr %120, i64 %123
  %124 = load i64, ptr %arrayidx111, align 8, !tbaa !8
  store i64 %124, ptr %i, align 8, !tbaa !8
  %125 = load ptr, ptr %ed, align 8, !tbaa !4
  %126 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx112 = getelementptr inbounds i64, ptr %125, i64 %126
  %127 = load i64, ptr %arrayidx112, align 8, !tbaa !8
  %128 = load ptr, ptr %id, align 8, !tbaa !4
  %129 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx113 = getelementptr inbounds i64, ptr %128, i64 %129
  %130 = load i64, ptr %arrayidx113, align 8, !tbaa !8
  %sub = sub nsw i64 %127, %130
  %conv114 = sitofp i64 %sub to float
  store float %conv114, ptr %rgain, align 4, !tbaa !25
  %131 = load ptr, ptr %queues, align 8, !tbaa !4
  %132 = load ptr, ptr %qnum, align 8, !tbaa !4
  %133 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx115 = getelementptr inbounds i64, ptr %132, i64 %133
  %134 = load i64, ptr %arrayidx115, align 8, !tbaa !8
  %mul116 = mul nsw i64 2, %134
  %135 = load ptr, ptr %where, align 8, !tbaa !4
  %136 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx117 = getelementptr inbounds i64, ptr %135, i64 %136
  %137 = load i64, ptr %arrayidx117, align 8, !tbaa !8
  %add118 = add nsw i64 %mul116, %137
  %arrayidx119 = getelementptr inbounds ptr, ptr %131, i64 %add118
  %138 = load ptr, ptr %arrayidx119, align 8, !tbaa !4
  %139 = load i64, ptr %i, align 8, !tbaa !8
  %140 = load float, ptr %rgain, align 4, !tbaa !25
  %call120 = call i32 @libmetis__rpqInsert(ptr noundef %138, i64 noundef %139, float noundef %140)
  br label %for.inc121

for.inc121:                                       ; preds = %for.body109
  %141 = load i64, ptr %ii, align 8, !tbaa !8
  %inc122 = add nsw i64 %141, 1
  store i64 %inc122, ptr %ii, align 8, !tbaa !8
  br label %for.cond106, !llvm.loop !47

for.end123:                                       ; preds = %for.cond106
  store i64 0, ptr %nswaps, align 8, !tbaa !8
  br label %for.cond124

for.cond124:                                      ; preds = %for.inc358, %for.end123
  %142 = load i64, ptr %nswaps, align 8, !tbaa !8
  %143 = load i64, ptr %nvtxs, align 8, !tbaa !8
  %cmp125 = icmp slt i64 %142, %143
  br i1 %cmp125, label %for.body127, label %for.end360

for.body127:                                      ; preds = %for.cond124
  %144 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %145 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %pijbm128 = getelementptr inbounds %struct.ctrl_t, ptr %145, i32 0, i32 25
  %146 = load ptr, ptr %pijbm128, align 8, !tbaa !43
  %147 = load ptr, ptr %ubfactors, align 8, !tbaa !4
  %148 = load ptr, ptr %queues, align 8, !tbaa !4
  call void @libmetis__SelectQueue(ptr noundef %144, ptr noundef %146, ptr noundef %147, ptr noundef %148, ptr noundef %from, ptr noundef %cnum)
  %149 = load i64, ptr %from, align 8, !tbaa !8
  %add129 = add nsw i64 %149, 1
  %rem = srem i64 %add129, 2
  store i64 %rem, ptr %to, align 8, !tbaa !8
  %150 = load i64, ptr %from, align 8, !tbaa !8
  %cmp130 = icmp eq i64 %150, -1
  br i1 %cmp130, label %if.then138, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body127
  %151 = load ptr, ptr %queues, align 8, !tbaa !4
  %152 = load i64, ptr %cnum, align 8, !tbaa !8
  %mul132 = mul nsw i64 2, %152
  %153 = load i64, ptr %from, align 8, !tbaa !8
  %add133 = add nsw i64 %mul132, %153
  %arrayidx134 = getelementptr inbounds ptr, ptr %151, i64 %add133
  %154 = load ptr, ptr %arrayidx134, align 8, !tbaa !4
  %call135 = call i64 @libmetis__rpqGetTop(ptr noundef %154)
  store i64 %call135, ptr %higain, align 8, !tbaa !8
  %cmp136 = icmp eq i64 %call135, -1
  br i1 %cmp136, label %if.then138, label %if.end139

if.then138:                                       ; preds = %lor.lhs.false, %for.body127
  br label %for.end360

if.end139:                                        ; preds = %lor.lhs.false
  %155 = load ptr, ptr %ed, align 8, !tbaa !4
  %156 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx140 = getelementptr inbounds i64, ptr %155, i64 %156
  %157 = load i64, ptr %arrayidx140, align 8, !tbaa !8
  %158 = load ptr, ptr %id, align 8, !tbaa !4
  %159 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx141 = getelementptr inbounds i64, ptr %158, i64 %159
  %160 = load i64, ptr %arrayidx141, align 8, !tbaa !8
  %sub142 = sub nsw i64 %157, %160
  %161 = load i64, ptr %newcut, align 8, !tbaa !8
  %sub143 = sub nsw i64 %161, %sub142
  store i64 %sub143, ptr %newcut, align 8, !tbaa !8
  %162 = load i64, ptr %ncon, align 8, !tbaa !8
  %163 = load ptr, ptr %vwgt, align 8, !tbaa !4
  %164 = load i64, ptr %higain, align 8, !tbaa !8
  %165 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul144 = mul nsw i64 %164, %165
  %add.ptr145 = getelementptr inbounds i64, ptr %163, i64 %mul144
  %166 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %167 = load i64, ptr %to, align 8, !tbaa !8
  %168 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul146 = mul nsw i64 %167, %168
  %add.ptr147 = getelementptr inbounds i64, ptr %166, i64 %mul146
  %call148 = call ptr @libmetis__iaxpy(i64 noundef %162, i64 noundef 1, ptr noundef %add.ptr145, i64 noundef 1, ptr noundef %add.ptr147, i64 noundef 1)
  %169 = load i64, ptr %ncon, align 8, !tbaa !8
  %170 = load ptr, ptr %vwgt, align 8, !tbaa !4
  %171 = load i64, ptr %higain, align 8, !tbaa !8
  %172 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul149 = mul nsw i64 %171, %172
  %add.ptr150 = getelementptr inbounds i64, ptr %170, i64 %mul149
  %173 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %174 = load i64, ptr %from, align 8, !tbaa !8
  %175 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul151 = mul nsw i64 %174, %175
  %add.ptr152 = getelementptr inbounds i64, ptr %173, i64 %mul151
  %call153 = call ptr @libmetis__iaxpy(i64 noundef %169, i64 noundef -1, ptr noundef %add.ptr150, i64 noundef 1, ptr noundef %add.ptr152, i64 noundef 1)
  %176 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %177 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %pijbm154 = getelementptr inbounds %struct.ctrl_t, ptr %177, i32 0, i32 25
  %178 = load ptr, ptr %pijbm154, align 8, !tbaa !43
  %179 = load ptr, ptr %ubfactors, align 8, !tbaa !4
  %180 = load ptr, ptr %newbalv, align 8, !tbaa !4
  %call155 = call float @libmetis__ComputeLoadImbalanceDiffVec(ptr noundef %176, i64 noundef 2, ptr noundef %178, ptr noundef %179, ptr noundef %180)
  store float %call155, ptr %newbal, align 4, !tbaa !25
  %181 = load i64, ptr %newcut, align 8, !tbaa !8
  %182 = load i64, ptr %mincut, align 8, !tbaa !8
  %cmp156 = icmp slt i64 %181, %182
  br i1 %cmp156, label %land.lhs.true, label %lor.lhs.false160

land.lhs.true:                                    ; preds = %if.end139
  %183 = load float, ptr %newbal, align 4, !tbaa !25
  %184 = load float, ptr %ffactor, align 4, !tbaa !25
  %cmp158 = fcmp ole float %183, %184
  br i1 %cmp158, label %if.then172, label %lor.lhs.false160

lor.lhs.false160:                                 ; preds = %land.lhs.true, %if.end139
  %185 = load i64, ptr %newcut, align 8, !tbaa !8
  %186 = load i64, ptr %mincut, align 8, !tbaa !8
  %cmp161 = icmp eq i64 %185, %186
  br i1 %cmp161, label %land.lhs.true163, label %if.else

land.lhs.true163:                                 ; preds = %lor.lhs.false160
  %187 = load float, ptr %newbal, align 4, !tbaa !25
  %188 = load float, ptr %minbal, align 4, !tbaa !25
  %cmp164 = fcmp olt float %187, %188
  br i1 %cmp164, label %if.then172, label %lor.lhs.false166

lor.lhs.false166:                                 ; preds = %land.lhs.true163
  %189 = load float, ptr %newbal, align 4, !tbaa !25
  %190 = load float, ptr %minbal, align 4, !tbaa !25
  %cmp167 = fcmp oeq float %189, %190
  br i1 %cmp167, label %land.lhs.true169, label %if.else

land.lhs.true169:                                 ; preds = %lor.lhs.false166
  %191 = load i64, ptr %ncon, align 8, !tbaa !8
  %192 = load ptr, ptr %minbalv, align 8, !tbaa !4
  %193 = load ptr, ptr %newbalv, align 8, !tbaa !4
  %call170 = call i32 @libmetis__BetterBalance2Way(i64 noundef %191, ptr noundef %192, ptr noundef %193)
  %tobool171 = icmp ne i32 %call170, 0
  br i1 %tobool171, label %if.then172, label %if.else

if.then172:                                       ; preds = %land.lhs.true169, %land.lhs.true163, %land.lhs.true
  %194 = load i64, ptr %newcut, align 8, !tbaa !8
  store i64 %194, ptr %mincut, align 8, !tbaa !8
  %195 = load float, ptr %newbal, align 4, !tbaa !25
  store float %195, ptr %minbal, align 4, !tbaa !25
  %196 = load i64, ptr %nswaps, align 8, !tbaa !8
  store i64 %196, ptr %mincutorder, align 8, !tbaa !8
  %197 = load i64, ptr %ncon, align 8, !tbaa !8
  %198 = load ptr, ptr %newbalv, align 8, !tbaa !4
  %199 = load ptr, ptr %minbalv, align 8, !tbaa !4
  %call173 = call ptr @libmetis__rcopy(i64 noundef %197, ptr noundef %198, ptr noundef %199)
  br label %if.end193

if.else:                                          ; preds = %land.lhs.true169, %lor.lhs.false166, %lor.lhs.false160
  %200 = load i64, ptr %nswaps, align 8, !tbaa !8
  %201 = load i64, ptr %mincutorder, align 8, !tbaa !8
  %sub174 = sub nsw i64 %200, %201
  %202 = load i64, ptr %limit, align 8, !tbaa !8
  %cmp175 = icmp sgt i64 %sub174, %202
  br i1 %cmp175, label %if.then177, label %if.end192

if.then177:                                       ; preds = %if.else
  %203 = load ptr, ptr %ed, align 8, !tbaa !4
  %204 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx178 = getelementptr inbounds i64, ptr %203, i64 %204
  %205 = load i64, ptr %arrayidx178, align 8, !tbaa !8
  %206 = load ptr, ptr %id, align 8, !tbaa !4
  %207 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx179 = getelementptr inbounds i64, ptr %206, i64 %207
  %208 = load i64, ptr %arrayidx179, align 8, !tbaa !8
  %sub180 = sub nsw i64 %205, %208
  %209 = load i64, ptr %newcut, align 8, !tbaa !8
  %add181 = add nsw i64 %209, %sub180
  store i64 %add181, ptr %newcut, align 8, !tbaa !8
  %210 = load i64, ptr %ncon, align 8, !tbaa !8
  %211 = load ptr, ptr %vwgt, align 8, !tbaa !4
  %212 = load i64, ptr %higain, align 8, !tbaa !8
  %213 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul182 = mul nsw i64 %212, %213
  %add.ptr183 = getelementptr inbounds i64, ptr %211, i64 %mul182
  %214 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %215 = load i64, ptr %from, align 8, !tbaa !8
  %216 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul184 = mul nsw i64 %215, %216
  %add.ptr185 = getelementptr inbounds i64, ptr %214, i64 %mul184
  %call186 = call ptr @libmetis__iaxpy(i64 noundef %210, i64 noundef 1, ptr noundef %add.ptr183, i64 noundef 1, ptr noundef %add.ptr185, i64 noundef 1)
  %217 = load i64, ptr %ncon, align 8, !tbaa !8
  %218 = load ptr, ptr %vwgt, align 8, !tbaa !4
  %219 = load i64, ptr %higain, align 8, !tbaa !8
  %220 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul187 = mul nsw i64 %219, %220
  %add.ptr188 = getelementptr inbounds i64, ptr %218, i64 %mul187
  %221 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %222 = load i64, ptr %to, align 8, !tbaa !8
  %223 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul189 = mul nsw i64 %222, %223
  %add.ptr190 = getelementptr inbounds i64, ptr %221, i64 %mul189
  %call191 = call ptr @libmetis__iaxpy(i64 noundef %217, i64 noundef -1, ptr noundef %add.ptr188, i64 noundef 1, ptr noundef %add.ptr190, i64 noundef 1)
  br label %for.end360

if.end192:                                        ; preds = %if.else
  br label %if.end193

if.end193:                                        ; preds = %if.end192, %if.then172
  %224 = load i64, ptr %to, align 8, !tbaa !8
  %225 = load ptr, ptr %where, align 8, !tbaa !4
  %226 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx194 = getelementptr inbounds i64, ptr %225, i64 %226
  store i64 %224, ptr %arrayidx194, align 8, !tbaa !8
  %227 = load i64, ptr %nswaps, align 8, !tbaa !8
  %228 = load ptr, ptr %moved, align 8, !tbaa !4
  %229 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx195 = getelementptr inbounds i64, ptr %228, i64 %229
  store i64 %227, ptr %arrayidx195, align 8, !tbaa !8
  %230 = load i64, ptr %higain, align 8, !tbaa !8
  %231 = load ptr, ptr %swaps, align 8, !tbaa !4
  %232 = load i64, ptr %nswaps, align 8, !tbaa !8
  %arrayidx196 = getelementptr inbounds i64, ptr %231, i64 %232
  store i64 %230, ptr %arrayidx196, align 8, !tbaa !8
  %233 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %dbglvl197 = getelementptr inbounds %struct.ctrl_t, ptr %233, i32 0, i32 2
  %234 = load i32, ptr %dbglvl197, align 8, !tbaa !27
  %and198 = and i32 %234, 32
  %tobool199 = icmp ne i32 %and198, 0
  br i1 %tobool199, label %if.then200, label %if.end230

if.then200:                                       ; preds = %if.end193
  %235 = load i64, ptr %higain, align 8, !tbaa !8
  %236 = load i64, ptr %from, align 8, !tbaa !8
  %237 = load i64, ptr %cnum, align 8, !tbaa !8
  %238 = load ptr, ptr %ed, align 8, !tbaa !4
  %239 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx201 = getelementptr inbounds i64, ptr %238, i64 %239
  %240 = load i64, ptr %arrayidx201, align 8, !tbaa !8
  %241 = load ptr, ptr %id, align 8, !tbaa !4
  %242 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx202 = getelementptr inbounds i64, ptr %241, i64 %242
  %243 = load i64, ptr %arrayidx202, align 8, !tbaa !8
  %sub203 = sub nsw i64 %240, %243
  %244 = load i64, ptr %newcut, align 8, !tbaa !8
  %call204 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %235, i64 noundef %236, i64 noundef %237, i64 noundef %sub203, i64 noundef %244)
  store i64 0, ptr %l, align 8, !tbaa !8
  br label %for.cond205

for.cond205:                                      ; preds = %for.inc221, %if.then200
  %245 = load i64, ptr %l, align 8, !tbaa !8
  %246 = load i64, ptr %ncon, align 8, !tbaa !8
  %cmp206 = icmp slt i64 %245, %246
  br i1 %cmp206, label %for.body208, label %for.end223

for.body208:                                      ; preds = %for.cond205
  %247 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %248 = load i64, ptr %l, align 8, !tbaa !8
  %arrayidx209 = getelementptr inbounds i64, ptr %247, i64 %248
  %249 = load i64, ptr %arrayidx209, align 8, !tbaa !8
  %conv210 = sitofp i64 %249 to float
  %250 = load ptr, ptr %invtvwgt, align 8, !tbaa !4
  %251 = load i64, ptr %l, align 8, !tbaa !8
  %arrayidx211 = getelementptr inbounds float, ptr %250, i64 %251
  %252 = load float, ptr %arrayidx211, align 4, !tbaa !25
  %mul212 = fmul float %conv210, %252
  %conv213 = fpext float %mul212 to double
  %253 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %254 = load i64, ptr %ncon, align 8, !tbaa !8
  %255 = load i64, ptr %l, align 8, !tbaa !8
  %add214 = add nsw i64 %254, %255
  %arrayidx215 = getelementptr inbounds i64, ptr %253, i64 %add214
  %256 = load i64, ptr %arrayidx215, align 8, !tbaa !8
  %conv216 = sitofp i64 %256 to float
  %257 = load ptr, ptr %invtvwgt, align 8, !tbaa !4
  %258 = load i64, ptr %l, align 8, !tbaa !8
  %arrayidx217 = getelementptr inbounds float, ptr %257, i64 %258
  %259 = load float, ptr %arrayidx217, align 4, !tbaa !25
  %mul218 = fmul float %conv216, %259
  %conv219 = fpext float %mul218 to double
  %call220 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %conv213, double noundef %conv219)
  br label %for.inc221

for.inc221:                                       ; preds = %for.body208
  %260 = load i64, ptr %l, align 8, !tbaa !8
  %inc222 = add nsw i64 %260, 1
  store i64 %inc222, ptr %l, align 8, !tbaa !8
  br label %for.cond205, !llvm.loop !48

for.end223:                                       ; preds = %for.cond205
  %261 = load float, ptr %minbal, align 4, !tbaa !25
  %conv224 = fpext float %261 to double
  %262 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %263 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %pijbm225 = getelementptr inbounds %struct.ctrl_t, ptr %263, i32 0, i32 25
  %264 = load ptr, ptr %pijbm225, align 8, !tbaa !43
  %call226 = call float @libmetis__ComputeLoadImbalance(ptr noundef %262, i64 noundef 2, ptr noundef %264)
  %conv227 = fpext float %call226 to double
  %265 = load float, ptr %newbal, align 4, !tbaa !25
  %conv228 = fpext float %265 to double
  %call229 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %conv224, double noundef %conv227, double noundef %conv228)
  br label %if.end230

if.end230:                                        ; preds = %for.end223, %if.end193
  br label %do.body

do.body:                                          ; preds = %if.end230
  %266 = load ptr, ptr %id, align 8, !tbaa !4
  %267 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx231 = getelementptr inbounds i64, ptr %266, i64 %267
  %268 = load i64, ptr %arrayidx231, align 8, !tbaa !8
  store i64 %268, ptr %tmp, align 8, !tbaa !8
  %269 = load ptr, ptr %ed, align 8, !tbaa !4
  %270 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx232 = getelementptr inbounds i64, ptr %269, i64 %270
  %271 = load i64, ptr %arrayidx232, align 8, !tbaa !8
  %272 = load ptr, ptr %id, align 8, !tbaa !4
  %273 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx233 = getelementptr inbounds i64, ptr %272, i64 %273
  store i64 %271, ptr %arrayidx233, align 8, !tbaa !8
  %274 = load i64, ptr %tmp, align 8, !tbaa !8
  %275 = load ptr, ptr %ed, align 8, !tbaa !4
  %276 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx234 = getelementptr inbounds i64, ptr %275, i64 %276
  store i64 %274, ptr %arrayidx234, align 8, !tbaa !8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %277 = load ptr, ptr %ed, align 8, !tbaa !4
  %278 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx235 = getelementptr inbounds i64, ptr %277, i64 %278
  %279 = load i64, ptr %arrayidx235, align 8, !tbaa !8
  %cmp236 = icmp eq i64 %279, 0
  br i1 %cmp236, label %land.lhs.true238, label %if.end255

land.lhs.true238:                                 ; preds = %do.end
  %280 = load ptr, ptr %xadj, align 8, !tbaa !4
  %281 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx239 = getelementptr inbounds i64, ptr %280, i64 %281
  %282 = load i64, ptr %arrayidx239, align 8, !tbaa !8
  %283 = load ptr, ptr %xadj, align 8, !tbaa !4
  %284 = load i64, ptr %higain, align 8, !tbaa !8
  %add240 = add nsw i64 %284, 1
  %arrayidx241 = getelementptr inbounds i64, ptr %283, i64 %add240
  %285 = load i64, ptr %arrayidx241, align 8, !tbaa !8
  %cmp242 = icmp slt i64 %282, %285
  br i1 %cmp242, label %if.then244, label %if.end255

if.then244:                                       ; preds = %land.lhs.true238
  br label %do.body245

do.body245:                                       ; preds = %if.then244
  %286 = load ptr, ptr %bndind, align 8, !tbaa !4
  %287 = load i64, ptr %nbnd, align 8, !tbaa !8
  %dec = add nsw i64 %287, -1
  store i64 %dec, ptr %nbnd, align 8, !tbaa !8
  %arrayidx246 = getelementptr inbounds i64, ptr %286, i64 %dec
  %288 = load i64, ptr %arrayidx246, align 8, !tbaa !8
  %289 = load ptr, ptr %bndind, align 8, !tbaa !4
  %290 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %291 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx247 = getelementptr inbounds i64, ptr %290, i64 %291
  %292 = load i64, ptr %arrayidx247, align 8, !tbaa !8
  %arrayidx248 = getelementptr inbounds i64, ptr %289, i64 %292
  store i64 %288, ptr %arrayidx248, align 8, !tbaa !8
  %293 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %294 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx249 = getelementptr inbounds i64, ptr %293, i64 %294
  %295 = load i64, ptr %arrayidx249, align 8, !tbaa !8
  %296 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %297 = load ptr, ptr %bndind, align 8, !tbaa !4
  %298 = load i64, ptr %nbnd, align 8, !tbaa !8
  %arrayidx250 = getelementptr inbounds i64, ptr %297, i64 %298
  %299 = load i64, ptr %arrayidx250, align 8, !tbaa !8
  %arrayidx251 = getelementptr inbounds i64, ptr %296, i64 %299
  store i64 %295, ptr %arrayidx251, align 8, !tbaa !8
  %300 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %301 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx252 = getelementptr inbounds i64, ptr %300, i64 %301
  store i64 -1, ptr %arrayidx252, align 8, !tbaa !8
  br label %do.cond253

do.cond253:                                       ; preds = %do.body245
  br label %do.end254

do.end254:                                        ; preds = %do.cond253
  br label %if.end255

if.end255:                                        ; preds = %do.end254, %land.lhs.true238, %do.end
  %302 = load ptr, ptr %xadj, align 8, !tbaa !4
  %303 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx256 = getelementptr inbounds i64, ptr %302, i64 %303
  %304 = load i64, ptr %arrayidx256, align 8, !tbaa !8
  store i64 %304, ptr %j, align 8, !tbaa !8
  br label %for.cond257

for.cond257:                                      ; preds = %for.inc355, %if.end255
  %305 = load i64, ptr %j, align 8, !tbaa !8
  %306 = load ptr, ptr %xadj, align 8, !tbaa !4
  %307 = load i64, ptr %higain, align 8, !tbaa !8
  %add258 = add nsw i64 %307, 1
  %arrayidx259 = getelementptr inbounds i64, ptr %306, i64 %add258
  %308 = load i64, ptr %arrayidx259, align 8, !tbaa !8
  %cmp260 = icmp slt i64 %305, %308
  br i1 %cmp260, label %for.body262, label %for.end357

for.body262:                                      ; preds = %for.cond257
  %309 = load ptr, ptr %adjncy, align 8, !tbaa !4
  %310 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx263 = getelementptr inbounds i64, ptr %309, i64 %310
  %311 = load i64, ptr %arrayidx263, align 8, !tbaa !8
  store i64 %311, ptr %k, align 8, !tbaa !8
  %312 = load i64, ptr %to, align 8, !tbaa !8
  %313 = load ptr, ptr %where, align 8, !tbaa !4
  %314 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx264 = getelementptr inbounds i64, ptr %313, i64 %314
  %315 = load i64, ptr %arrayidx264, align 8, !tbaa !8
  %cmp265 = icmp eq i64 %312, %315
  br i1 %cmp265, label %cond.true267, label %cond.false269

cond.true267:                                     ; preds = %for.body262
  %316 = load ptr, ptr %adjwgt, align 8, !tbaa !4
  %317 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx268 = getelementptr inbounds i64, ptr %316, i64 %317
  %318 = load i64, ptr %arrayidx268, align 8, !tbaa !8
  br label %cond.end272

cond.false269:                                    ; preds = %for.body262
  %319 = load ptr, ptr %adjwgt, align 8, !tbaa !4
  %320 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx270 = getelementptr inbounds i64, ptr %319, i64 %320
  %321 = load i64, ptr %arrayidx270, align 8, !tbaa !8
  %sub271 = sub nsw i64 0, %321
  br label %cond.end272

cond.end272:                                      ; preds = %cond.false269, %cond.true267
  %cond273 = phi i64 [ %318, %cond.true267 ], [ %sub271, %cond.false269 ]
  store i64 %cond273, ptr %kwgt, align 8, !tbaa !8
  br label %do.body274

do.body274:                                       ; preds = %cond.end272
  %322 = load i64, ptr %kwgt, align 8, !tbaa !8
  %323 = load ptr, ptr %id, align 8, !tbaa !4
  %324 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx275 = getelementptr inbounds i64, ptr %323, i64 %324
  %325 = load i64, ptr %arrayidx275, align 8, !tbaa !8
  %add276 = add nsw i64 %325, %322
  store i64 %add276, ptr %arrayidx275, align 8, !tbaa !8
  %326 = load i64, ptr %kwgt, align 8, !tbaa !8
  %327 = load ptr, ptr %ed, align 8, !tbaa !4
  %328 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx277 = getelementptr inbounds i64, ptr %327, i64 %328
  %329 = load i64, ptr %arrayidx277, align 8, !tbaa !8
  %sub278 = sub nsw i64 %329, %326
  store i64 %sub278, ptr %arrayidx277, align 8, !tbaa !8
  br label %do.cond279

do.cond279:                                       ; preds = %do.body274
  br label %do.end280

do.end280:                                        ; preds = %do.cond279
  %330 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %331 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx281 = getelementptr inbounds i64, ptr %330, i64 %331
  %332 = load i64, ptr %arrayidx281, align 8, !tbaa !8
  %cmp282 = icmp ne i64 %332, -1
  br i1 %cmp282, label %if.then284, label %if.else327

if.then284:                                       ; preds = %do.end280
  %333 = load ptr, ptr %ed, align 8, !tbaa !4
  %334 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx285 = getelementptr inbounds i64, ptr %333, i64 %334
  %335 = load i64, ptr %arrayidx285, align 8, !tbaa !8
  %cmp286 = icmp eq i64 %335, 0
  br i1 %cmp286, label %if.then288, label %if.else311

if.then288:                                       ; preds = %if.then284
  br label %do.body289

do.body289:                                       ; preds = %if.then288
  %336 = load ptr, ptr %bndind, align 8, !tbaa !4
  %337 = load i64, ptr %nbnd, align 8, !tbaa !8
  %dec290 = add nsw i64 %337, -1
  store i64 %dec290, ptr %nbnd, align 8, !tbaa !8
  %arrayidx291 = getelementptr inbounds i64, ptr %336, i64 %dec290
  %338 = load i64, ptr %arrayidx291, align 8, !tbaa !8
  %339 = load ptr, ptr %bndind, align 8, !tbaa !4
  %340 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %341 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx292 = getelementptr inbounds i64, ptr %340, i64 %341
  %342 = load i64, ptr %arrayidx292, align 8, !tbaa !8
  %arrayidx293 = getelementptr inbounds i64, ptr %339, i64 %342
  store i64 %338, ptr %arrayidx293, align 8, !tbaa !8
  %343 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %344 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx294 = getelementptr inbounds i64, ptr %343, i64 %344
  %345 = load i64, ptr %arrayidx294, align 8, !tbaa !8
  %346 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %347 = load ptr, ptr %bndind, align 8, !tbaa !4
  %348 = load i64, ptr %nbnd, align 8, !tbaa !8
  %arrayidx295 = getelementptr inbounds i64, ptr %347, i64 %348
  %349 = load i64, ptr %arrayidx295, align 8, !tbaa !8
  %arrayidx296 = getelementptr inbounds i64, ptr %346, i64 %349
  store i64 %345, ptr %arrayidx296, align 8, !tbaa !8
  %350 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %351 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx297 = getelementptr inbounds i64, ptr %350, i64 %351
  store i64 -1, ptr %arrayidx297, align 8, !tbaa !8
  br label %do.cond298

do.cond298:                                       ; preds = %do.body289
  br label %do.end299

do.end299:                                        ; preds = %do.cond298
  %352 = load ptr, ptr %moved, align 8, !tbaa !4
  %353 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx300 = getelementptr inbounds i64, ptr %352, i64 %353
  %354 = load i64, ptr %arrayidx300, align 8, !tbaa !8
  %cmp301 = icmp eq i64 %354, -1
  br i1 %cmp301, label %if.then303, label %if.end310

if.then303:                                       ; preds = %do.end299
  %355 = load ptr, ptr %queues, align 8, !tbaa !4
  %356 = load ptr, ptr %qnum, align 8, !tbaa !4
  %357 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx304 = getelementptr inbounds i64, ptr %356, i64 %357
  %358 = load i64, ptr %arrayidx304, align 8, !tbaa !8
  %mul305 = mul nsw i64 2, %358
  %359 = load ptr, ptr %where, align 8, !tbaa !4
  %360 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx306 = getelementptr inbounds i64, ptr %359, i64 %360
  %361 = load i64, ptr %arrayidx306, align 8, !tbaa !8
  %add307 = add nsw i64 %mul305, %361
  %arrayidx308 = getelementptr inbounds ptr, ptr %355, i64 %add307
  %362 = load ptr, ptr %arrayidx308, align 8, !tbaa !4
  %363 = load i64, ptr %k, align 8, !tbaa !8
  %call309 = call i32 @libmetis__rpqDelete(ptr noundef %362, i64 noundef %363)
  br label %if.end310

if.end310:                                        ; preds = %if.then303, %do.end299
  br label %if.end326

if.else311:                                       ; preds = %if.then284
  %364 = load ptr, ptr %moved, align 8, !tbaa !4
  %365 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx312 = getelementptr inbounds i64, ptr %364, i64 %365
  %366 = load i64, ptr %arrayidx312, align 8, !tbaa !8
  %cmp313 = icmp eq i64 %366, -1
  br i1 %cmp313, label %if.then315, label %if.end325

if.then315:                                       ; preds = %if.else311
  %367 = load ptr, ptr %ed, align 8, !tbaa !4
  %368 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx316 = getelementptr inbounds i64, ptr %367, i64 %368
  %369 = load i64, ptr %arrayidx316, align 8, !tbaa !8
  %370 = load ptr, ptr %id, align 8, !tbaa !4
  %371 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx317 = getelementptr inbounds i64, ptr %370, i64 %371
  %372 = load i64, ptr %arrayidx317, align 8, !tbaa !8
  %sub318 = sub nsw i64 %369, %372
  %conv319 = sitofp i64 %sub318 to float
  store float %conv319, ptr %rgain, align 4, !tbaa !25
  %373 = load ptr, ptr %queues, align 8, !tbaa !4
  %374 = load ptr, ptr %qnum, align 8, !tbaa !4
  %375 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx320 = getelementptr inbounds i64, ptr %374, i64 %375
  %376 = load i64, ptr %arrayidx320, align 8, !tbaa !8
  %mul321 = mul nsw i64 2, %376
  %377 = load ptr, ptr %where, align 8, !tbaa !4
  %378 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx322 = getelementptr inbounds i64, ptr %377, i64 %378
  %379 = load i64, ptr %arrayidx322, align 8, !tbaa !8
  %add323 = add nsw i64 %mul321, %379
  %arrayidx324 = getelementptr inbounds ptr, ptr %373, i64 %add323
  %380 = load ptr, ptr %arrayidx324, align 8, !tbaa !4
  %381 = load i64, ptr %k, align 8, !tbaa !8
  %382 = load float, ptr %rgain, align 4, !tbaa !25
  call void @libmetis__rpqUpdate(ptr noundef %380, i64 noundef %381, float noundef %382)
  br label %if.end325

if.end325:                                        ; preds = %if.then315, %if.else311
  br label %if.end326

if.end326:                                        ; preds = %if.end325, %if.end310
  br label %if.end354

if.else327:                                       ; preds = %do.end280
  %383 = load ptr, ptr %ed, align 8, !tbaa !4
  %384 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx328 = getelementptr inbounds i64, ptr %383, i64 %384
  %385 = load i64, ptr %arrayidx328, align 8, !tbaa !8
  %cmp329 = icmp sgt i64 %385, 0
  br i1 %cmp329, label %if.then331, label %if.end353

if.then331:                                       ; preds = %if.else327
  br label %do.body332

do.body332:                                       ; preds = %if.then331
  %386 = load i64, ptr %k, align 8, !tbaa !8
  %387 = load ptr, ptr %bndind, align 8, !tbaa !4
  %388 = load i64, ptr %nbnd, align 8, !tbaa !8
  %arrayidx333 = getelementptr inbounds i64, ptr %387, i64 %388
  store i64 %386, ptr %arrayidx333, align 8, !tbaa !8
  %389 = load i64, ptr %nbnd, align 8, !tbaa !8
  %inc334 = add nsw i64 %389, 1
  store i64 %inc334, ptr %nbnd, align 8, !tbaa !8
  %390 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %391 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx335 = getelementptr inbounds i64, ptr %390, i64 %391
  store i64 %389, ptr %arrayidx335, align 8, !tbaa !8
  br label %do.cond336

do.cond336:                                       ; preds = %do.body332
  br label %do.end337

do.end337:                                        ; preds = %do.cond336
  %392 = load ptr, ptr %moved, align 8, !tbaa !4
  %393 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx338 = getelementptr inbounds i64, ptr %392, i64 %393
  %394 = load i64, ptr %arrayidx338, align 8, !tbaa !8
  %cmp339 = icmp eq i64 %394, -1
  br i1 %cmp339, label %if.then341, label %if.end352

if.then341:                                       ; preds = %do.end337
  %395 = load ptr, ptr %ed, align 8, !tbaa !4
  %396 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx342 = getelementptr inbounds i64, ptr %395, i64 %396
  %397 = load i64, ptr %arrayidx342, align 8, !tbaa !8
  %398 = load ptr, ptr %id, align 8, !tbaa !4
  %399 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx343 = getelementptr inbounds i64, ptr %398, i64 %399
  %400 = load i64, ptr %arrayidx343, align 8, !tbaa !8
  %sub344 = sub nsw i64 %397, %400
  %conv345 = sitofp i64 %sub344 to float
  store float %conv345, ptr %rgain, align 4, !tbaa !25
  %401 = load ptr, ptr %queues, align 8, !tbaa !4
  %402 = load ptr, ptr %qnum, align 8, !tbaa !4
  %403 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx346 = getelementptr inbounds i64, ptr %402, i64 %403
  %404 = load i64, ptr %arrayidx346, align 8, !tbaa !8
  %mul347 = mul nsw i64 2, %404
  %405 = load ptr, ptr %where, align 8, !tbaa !4
  %406 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx348 = getelementptr inbounds i64, ptr %405, i64 %406
  %407 = load i64, ptr %arrayidx348, align 8, !tbaa !8
  %add349 = add nsw i64 %mul347, %407
  %arrayidx350 = getelementptr inbounds ptr, ptr %401, i64 %add349
  %408 = load ptr, ptr %arrayidx350, align 8, !tbaa !4
  %409 = load i64, ptr %k, align 8, !tbaa !8
  %410 = load float, ptr %rgain, align 4, !tbaa !25
  %call351 = call i32 @libmetis__rpqInsert(ptr noundef %408, i64 noundef %409, float noundef %410)
  br label %if.end352

if.end352:                                        ; preds = %if.then341, %do.end337
  br label %if.end353

if.end353:                                        ; preds = %if.end352, %if.else327
  br label %if.end354

if.end354:                                        ; preds = %if.end353, %if.end326
  br label %for.inc355

for.inc355:                                       ; preds = %if.end354
  %411 = load i64, ptr %j, align 8, !tbaa !8
  %inc356 = add nsw i64 %411, 1
  store i64 %inc356, ptr %j, align 8, !tbaa !8
  br label %for.cond257, !llvm.loop !49

for.end357:                                       ; preds = %for.cond257
  br label %for.inc358

for.inc358:                                       ; preds = %for.end357
  %412 = load i64, ptr %nswaps, align 8, !tbaa !8
  %inc359 = add nsw i64 %412, 1
  store i64 %inc359, ptr %nswaps, align 8, !tbaa !8
  br label %for.cond124, !llvm.loop !50

for.end360:                                       ; preds = %if.then177, %if.then138, %for.cond124
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond361

for.cond361:                                      ; preds = %for.inc367, %for.end360
  %413 = load i64, ptr %i, align 8, !tbaa !8
  %414 = load i64, ptr %nswaps, align 8, !tbaa !8
  %cmp362 = icmp slt i64 %413, %414
  br i1 %cmp362, label %for.body364, label %for.end369

for.body364:                                      ; preds = %for.cond361
  %415 = load ptr, ptr %moved, align 8, !tbaa !4
  %416 = load ptr, ptr %swaps, align 8, !tbaa !4
  %417 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx365 = getelementptr inbounds i64, ptr %416, i64 %417
  %418 = load i64, ptr %arrayidx365, align 8, !tbaa !8
  %arrayidx366 = getelementptr inbounds i64, ptr %415, i64 %418
  store i64 -1, ptr %arrayidx366, align 8, !tbaa !8
  br label %for.inc367

for.inc367:                                       ; preds = %for.body364
  %419 = load i64, ptr %i, align 8, !tbaa !8
  %inc368 = add nsw i64 %419, 1
  store i64 %inc368, ptr %i, align 8, !tbaa !8
  br label %for.cond361, !llvm.loop !51

for.end369:                                       ; preds = %for.cond361
  %420 = load i64, ptr %nswaps, align 8, !tbaa !8
  %dec370 = add nsw i64 %420, -1
  store i64 %dec370, ptr %nswaps, align 8, !tbaa !8
  br label %for.cond371

for.cond371:                                      ; preds = %for.inc504, %for.end369
  %421 = load i64, ptr %nswaps, align 8, !tbaa !8
  %422 = load i64, ptr %mincutorder, align 8, !tbaa !8
  %cmp372 = icmp sgt i64 %421, %422
  br i1 %cmp372, label %for.body374, label %for.end506

for.body374:                                      ; preds = %for.cond371
  %423 = load ptr, ptr %swaps, align 8, !tbaa !4
  %424 = load i64, ptr %nswaps, align 8, !tbaa !8
  %arrayidx375 = getelementptr inbounds i64, ptr %423, i64 %424
  %425 = load i64, ptr %arrayidx375, align 8, !tbaa !8
  store i64 %425, ptr %higain, align 8, !tbaa !8
  %426 = load ptr, ptr %where, align 8, !tbaa !4
  %427 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx376 = getelementptr inbounds i64, ptr %426, i64 %427
  %428 = load i64, ptr %arrayidx376, align 8, !tbaa !8
  %add377 = add nsw i64 %428, 1
  %rem378 = srem i64 %add377, 2
  %429 = load ptr, ptr %where, align 8, !tbaa !4
  %430 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx379 = getelementptr inbounds i64, ptr %429, i64 %430
  store i64 %rem378, ptr %arrayidx379, align 8, !tbaa !8
  store i64 %rem378, ptr %to, align 8, !tbaa !8
  br label %do.body380

do.body380:                                       ; preds = %for.body374
  %431 = load ptr, ptr %id, align 8, !tbaa !4
  %432 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx381 = getelementptr inbounds i64, ptr %431, i64 %432
  %433 = load i64, ptr %arrayidx381, align 8, !tbaa !8
  store i64 %433, ptr %tmp, align 8, !tbaa !8
  %434 = load ptr, ptr %ed, align 8, !tbaa !4
  %435 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx382 = getelementptr inbounds i64, ptr %434, i64 %435
  %436 = load i64, ptr %arrayidx382, align 8, !tbaa !8
  %437 = load ptr, ptr %id, align 8, !tbaa !4
  %438 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx383 = getelementptr inbounds i64, ptr %437, i64 %438
  store i64 %436, ptr %arrayidx383, align 8, !tbaa !8
  %439 = load i64, ptr %tmp, align 8, !tbaa !8
  %440 = load ptr, ptr %ed, align 8, !tbaa !4
  %441 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx384 = getelementptr inbounds i64, ptr %440, i64 %441
  store i64 %439, ptr %arrayidx384, align 8, !tbaa !8
  br label %do.cond385

do.cond385:                                       ; preds = %do.body380
  br label %do.end386

do.end386:                                        ; preds = %do.cond385
  %442 = load ptr, ptr %ed, align 8, !tbaa !4
  %443 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx387 = getelementptr inbounds i64, ptr %442, i64 %443
  %444 = load i64, ptr %arrayidx387, align 8, !tbaa !8
  %cmp388 = icmp eq i64 %444, 0
  br i1 %cmp388, label %land.lhs.true390, label %if.else412

land.lhs.true390:                                 ; preds = %do.end386
  %445 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %446 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx391 = getelementptr inbounds i64, ptr %445, i64 %446
  %447 = load i64, ptr %arrayidx391, align 8, !tbaa !8
  %cmp392 = icmp ne i64 %447, -1
  br i1 %cmp392, label %land.lhs.true394, label %if.else412

land.lhs.true394:                                 ; preds = %land.lhs.true390
  %448 = load ptr, ptr %xadj, align 8, !tbaa !4
  %449 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx395 = getelementptr inbounds i64, ptr %448, i64 %449
  %450 = load i64, ptr %arrayidx395, align 8, !tbaa !8
  %451 = load ptr, ptr %xadj, align 8, !tbaa !4
  %452 = load i64, ptr %higain, align 8, !tbaa !8
  %add396 = add nsw i64 %452, 1
  %arrayidx397 = getelementptr inbounds i64, ptr %451, i64 %add396
  %453 = load i64, ptr %arrayidx397, align 8, !tbaa !8
  %cmp398 = icmp slt i64 %450, %453
  br i1 %cmp398, label %if.then400, label %if.else412

if.then400:                                       ; preds = %land.lhs.true394
  br label %do.body401

do.body401:                                       ; preds = %if.then400
  %454 = load ptr, ptr %bndind, align 8, !tbaa !4
  %455 = load i64, ptr %nbnd, align 8, !tbaa !8
  %dec402 = add nsw i64 %455, -1
  store i64 %dec402, ptr %nbnd, align 8, !tbaa !8
  %arrayidx403 = getelementptr inbounds i64, ptr %454, i64 %dec402
  %456 = load i64, ptr %arrayidx403, align 8, !tbaa !8
  %457 = load ptr, ptr %bndind, align 8, !tbaa !4
  %458 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %459 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx404 = getelementptr inbounds i64, ptr %458, i64 %459
  %460 = load i64, ptr %arrayidx404, align 8, !tbaa !8
  %arrayidx405 = getelementptr inbounds i64, ptr %457, i64 %460
  store i64 %456, ptr %arrayidx405, align 8, !tbaa !8
  %461 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %462 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx406 = getelementptr inbounds i64, ptr %461, i64 %462
  %463 = load i64, ptr %arrayidx406, align 8, !tbaa !8
  %464 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %465 = load ptr, ptr %bndind, align 8, !tbaa !4
  %466 = load i64, ptr %nbnd, align 8, !tbaa !8
  %arrayidx407 = getelementptr inbounds i64, ptr %465, i64 %466
  %467 = load i64, ptr %arrayidx407, align 8, !tbaa !8
  %arrayidx408 = getelementptr inbounds i64, ptr %464, i64 %467
  store i64 %463, ptr %arrayidx408, align 8, !tbaa !8
  %468 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %469 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx409 = getelementptr inbounds i64, ptr %468, i64 %469
  store i64 -1, ptr %arrayidx409, align 8, !tbaa !8
  br label %do.cond410

do.cond410:                                       ; preds = %do.body401
  br label %do.end411

do.end411:                                        ; preds = %do.cond410
  br label %if.end428

if.else412:                                       ; preds = %land.lhs.true394, %land.lhs.true390, %do.end386
  %470 = load ptr, ptr %ed, align 8, !tbaa !4
  %471 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx413 = getelementptr inbounds i64, ptr %470, i64 %471
  %472 = load i64, ptr %arrayidx413, align 8, !tbaa !8
  %cmp414 = icmp sgt i64 %472, 0
  br i1 %cmp414, label %land.lhs.true416, label %if.end427

land.lhs.true416:                                 ; preds = %if.else412
  %473 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %474 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx417 = getelementptr inbounds i64, ptr %473, i64 %474
  %475 = load i64, ptr %arrayidx417, align 8, !tbaa !8
  %cmp418 = icmp eq i64 %475, -1
  br i1 %cmp418, label %if.then420, label %if.end427

if.then420:                                       ; preds = %land.lhs.true416
  br label %do.body421

do.body421:                                       ; preds = %if.then420
  %476 = load i64, ptr %higain, align 8, !tbaa !8
  %477 = load ptr, ptr %bndind, align 8, !tbaa !4
  %478 = load i64, ptr %nbnd, align 8, !tbaa !8
  %arrayidx422 = getelementptr inbounds i64, ptr %477, i64 %478
  store i64 %476, ptr %arrayidx422, align 8, !tbaa !8
  %479 = load i64, ptr %nbnd, align 8, !tbaa !8
  %inc423 = add nsw i64 %479, 1
  store i64 %inc423, ptr %nbnd, align 8, !tbaa !8
  %480 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %481 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx424 = getelementptr inbounds i64, ptr %480, i64 %481
  store i64 %479, ptr %arrayidx424, align 8, !tbaa !8
  br label %do.cond425

do.cond425:                                       ; preds = %do.body421
  br label %do.end426

do.end426:                                        ; preds = %do.cond425
  br label %if.end427

if.end427:                                        ; preds = %do.end426, %land.lhs.true416, %if.else412
  br label %if.end428

if.end428:                                        ; preds = %if.end427, %do.end411
  %482 = load i64, ptr %ncon, align 8, !tbaa !8
  %483 = load ptr, ptr %vwgt, align 8, !tbaa !4
  %484 = load i64, ptr %higain, align 8, !tbaa !8
  %485 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul429 = mul nsw i64 %484, %485
  %add.ptr430 = getelementptr inbounds i64, ptr %483, i64 %mul429
  %486 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %487 = load i64, ptr %to, align 8, !tbaa !8
  %488 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul431 = mul nsw i64 %487, %488
  %add.ptr432 = getelementptr inbounds i64, ptr %486, i64 %mul431
  %call433 = call ptr @libmetis__iaxpy(i64 noundef %482, i64 noundef 1, ptr noundef %add.ptr430, i64 noundef 1, ptr noundef %add.ptr432, i64 noundef 1)
  %489 = load i64, ptr %ncon, align 8, !tbaa !8
  %490 = load ptr, ptr %vwgt, align 8, !tbaa !4
  %491 = load i64, ptr %higain, align 8, !tbaa !8
  %492 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul434 = mul nsw i64 %491, %492
  %add.ptr435 = getelementptr inbounds i64, ptr %490, i64 %mul434
  %493 = load ptr, ptr %pwgts, align 8, !tbaa !4
  %494 = load i64, ptr %to, align 8, !tbaa !8
  %add436 = add nsw i64 %494, 1
  %rem437 = srem i64 %add436, 2
  %495 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul438 = mul nsw i64 %rem437, %495
  %add.ptr439 = getelementptr inbounds i64, ptr %493, i64 %mul438
  %call440 = call ptr @libmetis__iaxpy(i64 noundef %489, i64 noundef -1, ptr noundef %add.ptr435, i64 noundef 1, ptr noundef %add.ptr439, i64 noundef 1)
  %496 = load ptr, ptr %xadj, align 8, !tbaa !4
  %497 = load i64, ptr %higain, align 8, !tbaa !8
  %arrayidx441 = getelementptr inbounds i64, ptr %496, i64 %497
  %498 = load i64, ptr %arrayidx441, align 8, !tbaa !8
  store i64 %498, ptr %j, align 8, !tbaa !8
  br label %for.cond442

for.cond442:                                      ; preds = %for.inc501, %if.end428
  %499 = load i64, ptr %j, align 8, !tbaa !8
  %500 = load ptr, ptr %xadj, align 8, !tbaa !4
  %501 = load i64, ptr %higain, align 8, !tbaa !8
  %add443 = add nsw i64 %501, 1
  %arrayidx444 = getelementptr inbounds i64, ptr %500, i64 %add443
  %502 = load i64, ptr %arrayidx444, align 8, !tbaa !8
  %cmp445 = icmp slt i64 %499, %502
  br i1 %cmp445, label %for.body447, label %for.end503

for.body447:                                      ; preds = %for.cond442
  %503 = load ptr, ptr %adjncy, align 8, !tbaa !4
  %504 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx448 = getelementptr inbounds i64, ptr %503, i64 %504
  %505 = load i64, ptr %arrayidx448, align 8, !tbaa !8
  store i64 %505, ptr %k, align 8, !tbaa !8
  %506 = load i64, ptr %to, align 8, !tbaa !8
  %507 = load ptr, ptr %where, align 8, !tbaa !4
  %508 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx449 = getelementptr inbounds i64, ptr %507, i64 %508
  %509 = load i64, ptr %arrayidx449, align 8, !tbaa !8
  %cmp450 = icmp eq i64 %506, %509
  br i1 %cmp450, label %cond.true452, label %cond.false454

cond.true452:                                     ; preds = %for.body447
  %510 = load ptr, ptr %adjwgt, align 8, !tbaa !4
  %511 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx453 = getelementptr inbounds i64, ptr %510, i64 %511
  %512 = load i64, ptr %arrayidx453, align 8, !tbaa !8
  br label %cond.end457

cond.false454:                                    ; preds = %for.body447
  %513 = load ptr, ptr %adjwgt, align 8, !tbaa !4
  %514 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx455 = getelementptr inbounds i64, ptr %513, i64 %514
  %515 = load i64, ptr %arrayidx455, align 8, !tbaa !8
  %sub456 = sub nsw i64 0, %515
  br label %cond.end457

cond.end457:                                      ; preds = %cond.false454, %cond.true452
  %cond458 = phi i64 [ %512, %cond.true452 ], [ %sub456, %cond.false454 ]
  store i64 %cond458, ptr %kwgt, align 8, !tbaa !8
  br label %do.body459

do.body459:                                       ; preds = %cond.end457
  %516 = load i64, ptr %kwgt, align 8, !tbaa !8
  %517 = load ptr, ptr %id, align 8, !tbaa !4
  %518 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx460 = getelementptr inbounds i64, ptr %517, i64 %518
  %519 = load i64, ptr %arrayidx460, align 8, !tbaa !8
  %add461 = add nsw i64 %519, %516
  store i64 %add461, ptr %arrayidx460, align 8, !tbaa !8
  %520 = load i64, ptr %kwgt, align 8, !tbaa !8
  %521 = load ptr, ptr %ed, align 8, !tbaa !4
  %522 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx462 = getelementptr inbounds i64, ptr %521, i64 %522
  %523 = load i64, ptr %arrayidx462, align 8, !tbaa !8
  %sub463 = sub nsw i64 %523, %520
  store i64 %sub463, ptr %arrayidx462, align 8, !tbaa !8
  br label %do.cond464

do.cond464:                                       ; preds = %do.body459
  br label %do.end465

do.end465:                                        ; preds = %do.cond464
  %524 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %525 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx466 = getelementptr inbounds i64, ptr %524, i64 %525
  %526 = load i64, ptr %arrayidx466, align 8, !tbaa !8
  %cmp467 = icmp ne i64 %526, -1
  br i1 %cmp467, label %land.lhs.true469, label %if.end485

land.lhs.true469:                                 ; preds = %do.end465
  %527 = load ptr, ptr %ed, align 8, !tbaa !4
  %528 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx470 = getelementptr inbounds i64, ptr %527, i64 %528
  %529 = load i64, ptr %arrayidx470, align 8, !tbaa !8
  %cmp471 = icmp eq i64 %529, 0
  br i1 %cmp471, label %if.then473, label %if.end485

if.then473:                                       ; preds = %land.lhs.true469
  br label %do.body474

do.body474:                                       ; preds = %if.then473
  %530 = load ptr, ptr %bndind, align 8, !tbaa !4
  %531 = load i64, ptr %nbnd, align 8, !tbaa !8
  %dec475 = add nsw i64 %531, -1
  store i64 %dec475, ptr %nbnd, align 8, !tbaa !8
  %arrayidx476 = getelementptr inbounds i64, ptr %530, i64 %dec475
  %532 = load i64, ptr %arrayidx476, align 8, !tbaa !8
  %533 = load ptr, ptr %bndind, align 8, !tbaa !4
  %534 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %535 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx477 = getelementptr inbounds i64, ptr %534, i64 %535
  %536 = load i64, ptr %arrayidx477, align 8, !tbaa !8
  %arrayidx478 = getelementptr inbounds i64, ptr %533, i64 %536
  store i64 %532, ptr %arrayidx478, align 8, !tbaa !8
  %537 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %538 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx479 = getelementptr inbounds i64, ptr %537, i64 %538
  %539 = load i64, ptr %arrayidx479, align 8, !tbaa !8
  %540 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %541 = load ptr, ptr %bndind, align 8, !tbaa !4
  %542 = load i64, ptr %nbnd, align 8, !tbaa !8
  %arrayidx480 = getelementptr inbounds i64, ptr %541, i64 %542
  %543 = load i64, ptr %arrayidx480, align 8, !tbaa !8
  %arrayidx481 = getelementptr inbounds i64, ptr %540, i64 %543
  store i64 %539, ptr %arrayidx481, align 8, !tbaa !8
  %544 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %545 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx482 = getelementptr inbounds i64, ptr %544, i64 %545
  store i64 -1, ptr %arrayidx482, align 8, !tbaa !8
  br label %do.cond483

do.cond483:                                       ; preds = %do.body474
  br label %do.end484

do.end484:                                        ; preds = %do.cond483
  br label %if.end485

if.end485:                                        ; preds = %do.end484, %land.lhs.true469, %do.end465
  %546 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %547 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx486 = getelementptr inbounds i64, ptr %546, i64 %547
  %548 = load i64, ptr %arrayidx486, align 8, !tbaa !8
  %cmp487 = icmp eq i64 %548, -1
  br i1 %cmp487, label %land.lhs.true489, label %if.end500

land.lhs.true489:                                 ; preds = %if.end485
  %549 = load ptr, ptr %ed, align 8, !tbaa !4
  %550 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx490 = getelementptr inbounds i64, ptr %549, i64 %550
  %551 = load i64, ptr %arrayidx490, align 8, !tbaa !8
  %cmp491 = icmp sgt i64 %551, 0
  br i1 %cmp491, label %if.then493, label %if.end500

if.then493:                                       ; preds = %land.lhs.true489
  br label %do.body494

do.body494:                                       ; preds = %if.then493
  %552 = load i64, ptr %k, align 8, !tbaa !8
  %553 = load ptr, ptr %bndind, align 8, !tbaa !4
  %554 = load i64, ptr %nbnd, align 8, !tbaa !8
  %arrayidx495 = getelementptr inbounds i64, ptr %553, i64 %554
  store i64 %552, ptr %arrayidx495, align 8, !tbaa !8
  %555 = load i64, ptr %nbnd, align 8, !tbaa !8
  %inc496 = add nsw i64 %555, 1
  store i64 %inc496, ptr %nbnd, align 8, !tbaa !8
  %556 = load ptr, ptr %bndptr, align 8, !tbaa !4
  %557 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx497 = getelementptr inbounds i64, ptr %556, i64 %557
  store i64 %555, ptr %arrayidx497, align 8, !tbaa !8
  br label %do.cond498

do.cond498:                                       ; preds = %do.body494
  br label %do.end499

do.end499:                                        ; preds = %do.cond498
  br label %if.end500

if.end500:                                        ; preds = %do.end499, %land.lhs.true489, %if.end485
  br label %for.inc501

for.inc501:                                       ; preds = %if.end500
  %558 = load i64, ptr %j, align 8, !tbaa !8
  %inc502 = add nsw i64 %558, 1
  store i64 %inc502, ptr %j, align 8, !tbaa !8
  br label %for.cond442, !llvm.loop !52

for.end503:                                       ; preds = %for.cond442
  br label %for.inc504

for.inc504:                                       ; preds = %for.end503
  %559 = load i64, ptr %nswaps, align 8, !tbaa !8
  %dec505 = add nsw i64 %559, -1
  store i64 %dec505, ptr %nswaps, align 8, !tbaa !8
  br label %for.cond371, !llvm.loop !53

for.end506:                                       ; preds = %for.cond371
  %560 = load i64, ptr %mincut, align 8, !tbaa !8
  %561 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %mincut507 = getelementptr inbounds %struct.graph_t, ptr %561, i32 0, i32 17
  store i64 %560, ptr %mincut507, align 8, !tbaa !30
  %562 = load i64, ptr %nbnd, align 8, !tbaa !8
  %563 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nbnd508 = getelementptr inbounds %struct.graph_t, ptr %563, i32 0, i32 21
  store i64 %562, ptr %nbnd508, align 8, !tbaa !31
  %564 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %dbglvl509 = getelementptr inbounds %struct.ctrl_t, ptr %564, i32 0, i32 2
  %565 = load i32, ptr %dbglvl509, align 8, !tbaa !27
  %and510 = and i32 %565, 8
  %tobool511 = icmp ne i32 %and510, 0
  br i1 %tobool511, label %if.then512, label %if.end513

if.then512:                                       ; preds = %for.end506
  %566 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %567 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %568 = load ptr, ptr %ntpwgts.addr, align 8, !tbaa !4
  %569 = load float, ptr %minbal, align 4, !tbaa !25
  %570 = load i64, ptr %mincutorder, align 8, !tbaa !8
  call void @libmetis__Print2WayRefineStats(ptr noundef %566, ptr noundef %567, ptr noundef %568, float noundef %569, i64 noundef %570)
  br label %if.end513

if.end513:                                        ; preds = %if.then512, %for.end506
  %571 = load i64, ptr %mincutorder, align 8, !tbaa !8
  %cmp514 = icmp sle i64 %571, 0
  br i1 %cmp514, label %if.then519, label %lor.lhs.false516

lor.lhs.false516:                                 ; preds = %if.end513
  %572 = load i64, ptr %mincut, align 8, !tbaa !8
  %573 = load i64, ptr %initcut, align 8, !tbaa !8
  %cmp517 = icmp eq i64 %572, %573
  br i1 %cmp517, label %if.then519, label %if.end520

if.then519:                                       ; preds = %lor.lhs.false516, %if.end513
  br label %for.end523

if.end520:                                        ; preds = %lor.lhs.false516
  br label %for.inc521

for.inc521:                                       ; preds = %if.end520
  %574 = load i64, ptr %pass, align 8, !tbaa !8
  %inc522 = add nsw i64 %574, 1
  store i64 %inc522, ptr %pass, align 8, !tbaa !8
  br label %for.cond88, !llvm.loop !54

for.end523:                                       ; preds = %if.then519, %for.cond88
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond524

for.cond524:                                      ; preds = %for.inc530, %for.end523
  %575 = load i64, ptr %i, align 8, !tbaa !8
  %576 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul525 = mul nsw i64 2, %576
  %cmp526 = icmp slt i64 %575, %mul525
  br i1 %cmp526, label %for.body528, label %for.end532

for.body528:                                      ; preds = %for.cond524
  %577 = load ptr, ptr %queues, align 8, !tbaa !4
  %578 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx529 = getelementptr inbounds ptr, ptr %577, i64 %578
  %579 = load ptr, ptr %arrayidx529, align 8, !tbaa !4
  call void @libmetis__rpqDestroy(ptr noundef %579)
  br label %for.inc530

for.inc530:                                       ; preds = %for.body528
  %580 = load i64, ptr %i, align 8, !tbaa !8
  %inc531 = add nsw i64 %580, 1
  store i64 %inc531, ptr %i, align 8, !tbaa !8
  br label %for.cond524, !llvm.loop !55

for.end532:                                       ; preds = %for.cond524
  %581 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  call void @libmetis__wspacepop(ptr noundef %581)
  call void @llvm.lifetime.end.p0(i64 8, ptr %queues) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ffactor) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rgain) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %newbal) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %minbal) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %origbal) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %newbalv) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %minbalv) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ubfactors) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %invtvwgt) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mincutorder) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %newcut) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %initcut) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mincut) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %higain) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %qnum) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %perm) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %swaps) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %moved) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bndind) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bndptr) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ed) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %where) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pwgts) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %adjwgt) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %vwgt) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %adjncy) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %xadj) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cnum) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %limit) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %me) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pass) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %to) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %from) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %nswaps) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %nbnd) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ncon) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %nvtxs) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kwgt) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ii) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @libmetis__wspacepush(ptr noundef) #2

declare ptr @libmetis__iwspacemalloc(ptr noundef, i64 noundef) #2

declare ptr @libmetis__rpqCreate(i64 noundef) #2

; Function Attrs: nounwind uwtable
define void @libmetis__Print2WayRefineStats(ptr noundef %ctrl, ptr noundef %graph, ptr noundef %ntpwgts, float noundef %deltabal, i64 noundef %mincutorder) #0 {
entry:
  %ctrl.addr = alloca ptr, align 8
  %graph.addr = alloca ptr, align 8
  %ntpwgts.addr = alloca ptr, align 8
  %deltabal.addr = alloca float, align 4
  %mincutorder.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %ctrl, ptr %ctrl.addr, align 8, !tbaa !4
  store ptr %graph, ptr %graph.addr, align 8, !tbaa !4
  store ptr %ntpwgts, ptr %ntpwgts.addr, align 8, !tbaa !4
  store float %deltabal, ptr %deltabal.addr, align 4, !tbaa !25
  store i64 %mincutorder, ptr %mincutorder.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  %0 = load i64, ptr %mincutorder.addr, align 8, !tbaa !8
  %cmp = icmp eq i64 %0, -2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %1 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nvtxs = getelementptr inbounds %struct.graph_t, ptr %1, i32 0, i32 0
  %2 = load i64, ptr %nvtxs, align 8, !tbaa !13
  %3 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nbnd = getelementptr inbounds %struct.graph_t, ptr %3, i32 0, i32 21
  %4 = load i64, ptr %nbnd, align 8, !tbaa !31
  %5 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %mincut = getelementptr inbounds %struct.graph_t, ptr %5, i32 0, i32 17
  %6 = load i64, ptr %mincut, align 8, !tbaa !30
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i64 noundef %2, i64 noundef %4, i64 noundef %6)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  store i32 0, ptr %i, align 4, !tbaa !56
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, ptr %i, align 4, !tbaa !56
  %conv = sext i32 %7 to i64
  %8 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %ncon = getelementptr inbounds %struct.graph_t, ptr %8, i32 0, i32 2
  %9 = load i64, ptr %ncon, align 8, !tbaa !10
  %cmp3 = icmp slt i64 %conv, %9
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %pwgts = getelementptr inbounds %struct.graph_t, ptr %10, i32 0, i32 20
  %11 = load ptr, ptr %pwgts, align 8, !tbaa !21
  %12 = load i32, ptr %i, align 4, !tbaa !56
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i64, ptr %11, i64 %idxprom
  %13 = load i64, ptr %arrayidx, align 8, !tbaa !8
  %conv5 = sitofp i64 %13 to float
  %14 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %invtvwgt = getelementptr inbounds %struct.graph_t, ptr %14, i32 0, i32 9
  %15 = load ptr, ptr %invtvwgt, align 8, !tbaa !40
  %16 = load i32, ptr %i, align 4, !tbaa !56
  %idxprom6 = sext i32 %16 to i64
  %arrayidx7 = getelementptr inbounds float, ptr %15, i64 %idxprom6
  %17 = load float, ptr %arrayidx7, align 4, !tbaa !25
  %mul = fmul float %conv5, %17
  %conv8 = fpext float %mul to double
  %18 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %pwgts9 = getelementptr inbounds %struct.graph_t, ptr %18, i32 0, i32 20
  %19 = load ptr, ptr %pwgts9, align 8, !tbaa !21
  %20 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %ncon10 = getelementptr inbounds %struct.graph_t, ptr %20, i32 0, i32 2
  %21 = load i64, ptr %ncon10, align 8, !tbaa !10
  %22 = load i32, ptr %i, align 4, !tbaa !56
  %conv11 = sext i32 %22 to i64
  %add = add nsw i64 %21, %conv11
  %arrayidx12 = getelementptr inbounds i64, ptr %19, i64 %add
  %23 = load i64, ptr %arrayidx12, align 8, !tbaa !8
  %conv13 = sitofp i64 %23 to float
  %24 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %invtvwgt14 = getelementptr inbounds %struct.graph_t, ptr %24, i32 0, i32 9
  %25 = load ptr, ptr %invtvwgt14, align 8, !tbaa !40
  %26 = load i32, ptr %i, align 4, !tbaa !56
  %idxprom15 = sext i32 %26 to i64
  %arrayidx16 = getelementptr inbounds float, ptr %25, i64 %idxprom15
  %27 = load float, ptr %arrayidx16, align 4, !tbaa !25
  %mul17 = fmul float %conv13, %27
  %conv18 = fpext float %mul17 to double
  %28 = load ptr, ptr %ntpwgts.addr, align 8, !tbaa !4
  %29 = load i32, ptr %i, align 4, !tbaa !56
  %idxprom19 = sext i32 %29 to i64
  %arrayidx20 = getelementptr inbounds float, ptr %28, i64 %idxprom19
  %30 = load float, ptr %arrayidx20, align 4, !tbaa !25
  %conv21 = fpext float %30 to double
  %31 = load ptr, ptr %ntpwgts.addr, align 8, !tbaa !4
  %32 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %ncon22 = getelementptr inbounds %struct.graph_t, ptr %32, i32 0, i32 2
  %33 = load i64, ptr %ncon22, align 8, !tbaa !10
  %34 = load i32, ptr %i, align 4, !tbaa !56
  %conv23 = sext i32 %34 to i64
  %add24 = add nsw i64 %33, %conv23
  %arrayidx25 = getelementptr inbounds float, ptr %31, i64 %add24
  %35 = load float, ptr %arrayidx25, align 4, !tbaa !25
  %conv26 = fpext float %35 to double
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %conv8, double noundef %conv18, double noundef %conv21, double noundef %conv26)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, ptr %i, align 4, !tbaa !56
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr %i, align 4, !tbaa !56
  br label %for.cond, !llvm.loop !57

for.end:                                          ; preds = %for.cond
  %37 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %38 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %pijbm = getelementptr inbounds %struct.ctrl_t, ptr %38, i32 0, i32 25
  %39 = load ptr, ptr %pijbm, align 8, !tbaa !43
  %call28 = call float @libmetis__ComputeLoadImbalance(ptr noundef %37, i64 noundef 2, ptr noundef %39)
  %conv29 = fpext float %call28 to double
  %40 = load float, ptr %deltabal.addr, align 4, !tbaa !25
  %conv30 = fpext float %40 to double
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %conv29, double noundef %conv30)
  br label %if.end

if.else:                                          ; preds = %entry
  %41 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %mincut32 = getelementptr inbounds %struct.graph_t, ptr %41, i32 0, i32 17
  %42 = load i64, ptr %mincut32, align 8, !tbaa !30
  %43 = load i64, ptr %mincutorder.addr, align 8, !tbaa !8
  %44 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %nbnd33 = getelementptr inbounds %struct.graph_t, ptr %44, i32 0, i32 21
  %45 = load i64, ptr %nbnd33, align 8, !tbaa !31
  %call34 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i64 noundef %42, i64 noundef %43, i64 noundef %45)
  store i32 0, ptr %i, align 4, !tbaa !56
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc62, %if.else
  %46 = load i32, ptr %i, align 4, !tbaa !56
  %conv36 = sext i32 %46 to i64
  %47 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %ncon37 = getelementptr inbounds %struct.graph_t, ptr %47, i32 0, i32 2
  %48 = load i64, ptr %ncon37, align 8, !tbaa !10
  %cmp38 = icmp slt i64 %conv36, %48
  br i1 %cmp38, label %for.body40, label %for.end64

for.body40:                                       ; preds = %for.cond35
  %49 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %pwgts41 = getelementptr inbounds %struct.graph_t, ptr %49, i32 0, i32 20
  %50 = load ptr, ptr %pwgts41, align 8, !tbaa !21
  %51 = load i32, ptr %i, align 4, !tbaa !56
  %idxprom42 = sext i32 %51 to i64
  %arrayidx43 = getelementptr inbounds i64, ptr %50, i64 %idxprom42
  %52 = load i64, ptr %arrayidx43, align 8, !tbaa !8
  %conv44 = sitofp i64 %52 to float
  %53 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %invtvwgt45 = getelementptr inbounds %struct.graph_t, ptr %53, i32 0, i32 9
  %54 = load ptr, ptr %invtvwgt45, align 8, !tbaa !40
  %55 = load i32, ptr %i, align 4, !tbaa !56
  %idxprom46 = sext i32 %55 to i64
  %arrayidx47 = getelementptr inbounds float, ptr %54, i64 %idxprom46
  %56 = load float, ptr %arrayidx47, align 4, !tbaa !25
  %mul48 = fmul float %conv44, %56
  %conv49 = fpext float %mul48 to double
  %57 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %pwgts50 = getelementptr inbounds %struct.graph_t, ptr %57, i32 0, i32 20
  %58 = load ptr, ptr %pwgts50, align 8, !tbaa !21
  %59 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %ncon51 = getelementptr inbounds %struct.graph_t, ptr %59, i32 0, i32 2
  %60 = load i64, ptr %ncon51, align 8, !tbaa !10
  %61 = load i32, ptr %i, align 4, !tbaa !56
  %conv52 = sext i32 %61 to i64
  %add53 = add nsw i64 %60, %conv52
  %arrayidx54 = getelementptr inbounds i64, ptr %58, i64 %add53
  %62 = load i64, ptr %arrayidx54, align 8, !tbaa !8
  %conv55 = sitofp i64 %62 to float
  %63 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %invtvwgt56 = getelementptr inbounds %struct.graph_t, ptr %63, i32 0, i32 9
  %64 = load ptr, ptr %invtvwgt56, align 8, !tbaa !40
  %65 = load i32, ptr %i, align 4, !tbaa !56
  %idxprom57 = sext i32 %65 to i64
  %arrayidx58 = getelementptr inbounds float, ptr %64, i64 %idxprom57
  %66 = load float, ptr %arrayidx58, align 4, !tbaa !25
  %mul59 = fmul float %conv55, %66
  %conv60 = fpext float %mul59 to double
  %call61 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %conv49, double noundef %conv60)
  br label %for.inc62

for.inc62:                                        ; preds = %for.body40
  %67 = load i32, ptr %i, align 4, !tbaa !56
  %inc63 = add nsw i32 %67, 1
  store i32 %inc63, ptr %i, align 4, !tbaa !56
  br label %for.cond35, !llvm.loop !58

for.end64:                                        ; preds = %for.cond35
  %68 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %69 = load ptr, ptr %ctrl.addr, align 8, !tbaa !4
  %pijbm65 = getelementptr inbounds %struct.ctrl_t, ptr %69, i32 0, i32 25
  %70 = load ptr, ptr %pijbm65, align 8, !tbaa !43
  %call66 = call float @libmetis__ComputeLoadImbalance(ptr noundef %68, i64 noundef 2, ptr noundef %70)
  %conv67 = fpext float %call66 to double
  %71 = load float, ptr %deltabal.addr, align 4, !tbaa !25
  %conv68 = fpext float %71 to double
  %call69 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %conv67, double noundef %conv68)
  br label %if.end

if.end:                                           ; preds = %for.end64, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret void
}

declare ptr @libmetis__iset(i64 noundef, i64 noundef, ptr noundef) #2

declare void @libmetis__rpqReset(ptr noundef) #2

declare void @libmetis__irandArrayPermute(i64 noundef, ptr noundef, i64 noundef, i32 noundef) #2

declare i32 @libmetis__rpqInsert(ptr noundef, i64 noundef, float noundef) #2

declare i64 @libmetis__rpqGetTop(ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

declare i32 @libmetis__rpqDelete(ptr noundef, i64 noundef) #2

declare void @libmetis__rpqUpdate(ptr noundef, i64 noundef, float noundef) #2

declare void @libmetis__rpqDestroy(ptr noundef) #2

declare void @libmetis__wspacepop(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @libmetis__rwspacemalloc(ptr noundef, i64 noundef) #2

declare ptr @libmetis__wspacemalloc(ptr noundef, i64 noundef) #2

declare i64 @libmetis__iargmax_nrm(i64 noundef, ptr noundef, ptr noundef) #2

declare float @libmetis__ComputeLoadImbalanceDiffVec(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @libmetis__SelectQueue(ptr noundef %graph, ptr noundef %pijbm, ptr noundef %ubfactors, ptr noundef %queues, ptr noundef %from, ptr noundef %cnum) #0 {
entry:
  %graph.addr = alloca ptr, align 8
  %pijbm.addr = alloca ptr, align 8
  %ubfactors.addr = alloca ptr, align 8
  %queues.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %cnum.addr = alloca ptr, align 8
  %ncon = alloca i64, align 8
  %i = alloca i64, align 8
  %part = alloca i64, align 8
  %max = alloca float, align 4
  %tmp = alloca float, align 4
  store ptr %graph, ptr %graph.addr, align 8, !tbaa !4
  store ptr %pijbm, ptr %pijbm.addr, align 8, !tbaa !4
  store ptr %ubfactors, ptr %ubfactors.addr, align 8, !tbaa !4
  store ptr %queues, ptr %queues.addr, align 8, !tbaa !4
  store ptr %from, ptr %from.addr, align 8, !tbaa !4
  store ptr %cnum, ptr %cnum.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ncon) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %part) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #4
  %0 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %ncon1 = getelementptr inbounds %struct.graph_t, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %ncon1, align 8, !tbaa !10
  store i64 %1, ptr %ncon, align 8, !tbaa !8
  %2 = load ptr, ptr %from.addr, align 8, !tbaa !4
  store i64 -1, ptr %2, align 8, !tbaa !8
  %3 = load ptr, ptr %cnum.addr, align 8, !tbaa !4
  store i64 -1, ptr %3, align 8, !tbaa !8
  store float 0.000000e+00, ptr %max, align 4, !tbaa !25
  store i64 0, ptr %part, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %4 = load i64, ptr %part, align 8, !tbaa !8
  %cmp = icmp slt i64 %4, 2
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %5 = load i64, ptr %i, align 8, !tbaa !8
  %6 = load i64, ptr %ncon, align 8, !tbaa !8
  %cmp3 = icmp slt i64 %5, %6
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %7 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %pwgts = getelementptr inbounds %struct.graph_t, ptr %7, i32 0, i32 20
  %8 = load ptr, ptr %pwgts, align 8, !tbaa !21
  %9 = load i64, ptr %part, align 8, !tbaa !8
  %10 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul = mul nsw i64 %9, %10
  %11 = load i64, ptr %i, align 8, !tbaa !8
  %add = add nsw i64 %mul, %11
  %arrayidx = getelementptr inbounds i64, ptr %8, i64 %add
  %12 = load i64, ptr %arrayidx, align 8, !tbaa !8
  %conv = sitofp i64 %12 to float
  %13 = load ptr, ptr %pijbm.addr, align 8, !tbaa !4
  %14 = load i64, ptr %part, align 8, !tbaa !8
  %15 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul5 = mul nsw i64 %14, %15
  %16 = load i64, ptr %i, align 8, !tbaa !8
  %add6 = add nsw i64 %mul5, %16
  %arrayidx7 = getelementptr inbounds float, ptr %13, i64 %add6
  %17 = load float, ptr %arrayidx7, align 4, !tbaa !25
  %18 = load ptr, ptr %ubfactors.addr, align 8, !tbaa !4
  %19 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx9 = getelementptr inbounds float, ptr %18, i64 %19
  %20 = load float, ptr %arrayidx9, align 4, !tbaa !25
  %neg = fneg float %20
  %21 = call float @llvm.fmuladd.f32(float %conv, float %17, float %neg)
  store float %21, ptr %tmp, align 4, !tbaa !25
  %22 = load float, ptr %tmp, align 4, !tbaa !25
  %23 = load float, ptr %max, align 4, !tbaa !25
  %cmp10 = fcmp oge float %22, %23
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %24 = load float, ptr %tmp, align 4, !tbaa !25
  store float %24, ptr %max, align 4, !tbaa !25
  %25 = load i64, ptr %part, align 8, !tbaa !8
  %26 = load ptr, ptr %from.addr, align 8, !tbaa !4
  store i64 %25, ptr %26, align 8, !tbaa !8
  %27 = load i64, ptr %i, align 8, !tbaa !8
  %28 = load ptr, ptr %cnum.addr, align 8, !tbaa !4
  store i64 %27, ptr %28, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %29 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add nsw i64 %29, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  br label %for.cond2, !llvm.loop !59

for.end:                                          ; preds = %for.cond2
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %30 = load i64, ptr %part, align 8, !tbaa !8
  %inc13 = add nsw i64 %30, 1
  store i64 %inc13, ptr %part, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !60

for.end14:                                        ; preds = %for.cond
  %31 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %32 = load i64, ptr %31, align 8, !tbaa !8
  %cmp15 = icmp ne i64 %32, -1
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %for.end14
  %33 = load ptr, ptr %queues.addr, align 8, !tbaa !4
  %34 = load ptr, ptr %cnum.addr, align 8, !tbaa !4
  %35 = load i64, ptr %34, align 8, !tbaa !8
  %mul18 = mul nsw i64 2, %35
  %36 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %37 = load i64, ptr %36, align 8, !tbaa !8
  %add19 = add nsw i64 %mul18, %37
  %arrayidx20 = getelementptr inbounds ptr, ptr %33, i64 %add19
  %38 = load ptr, ptr %arrayidx20, align 8, !tbaa !4
  %call = call i64 @libmetis__rpqLength(ptr noundef %38)
  %cmp21 = icmp eq i64 %call, 0
  br i1 %cmp21, label %if.then23, label %if.end79

if.then23:                                        ; preds = %if.then17
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc47, %if.then23
  %39 = load i64, ptr %i, align 8, !tbaa !8
  %40 = load i64, ptr %ncon, align 8, !tbaa !8
  %cmp25 = icmp slt i64 %39, %40
  br i1 %cmp25, label %for.body27, label %for.end49

for.body27:                                       ; preds = %for.cond24
  %41 = load ptr, ptr %queues.addr, align 8, !tbaa !4
  %42 = load i64, ptr %i, align 8, !tbaa !8
  %mul28 = mul nsw i64 2, %42
  %43 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %44 = load i64, ptr %43, align 8, !tbaa !8
  %add29 = add nsw i64 %mul28, %44
  %arrayidx30 = getelementptr inbounds ptr, ptr %41, i64 %add29
  %45 = load ptr, ptr %arrayidx30, align 8, !tbaa !4
  %call31 = call i64 @libmetis__rpqLength(ptr noundef %45)
  %cmp32 = icmp ugt i64 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.end46

if.then34:                                        ; preds = %for.body27
  %46 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %pwgts35 = getelementptr inbounds %struct.graph_t, ptr %46, i32 0, i32 20
  %47 = load ptr, ptr %pwgts35, align 8, !tbaa !21
  %48 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %49 = load i64, ptr %48, align 8, !tbaa !8
  %50 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul36 = mul nsw i64 %49, %50
  %51 = load i64, ptr %i, align 8, !tbaa !8
  %add37 = add nsw i64 %mul36, %51
  %arrayidx38 = getelementptr inbounds i64, ptr %47, i64 %add37
  %52 = load i64, ptr %arrayidx38, align 8, !tbaa !8
  %conv39 = sitofp i64 %52 to float
  %53 = load ptr, ptr %pijbm.addr, align 8, !tbaa !4
  %54 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %55 = load i64, ptr %54, align 8, !tbaa !8
  %56 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul40 = mul nsw i64 %55, %56
  %57 = load i64, ptr %i, align 8, !tbaa !8
  %add41 = add nsw i64 %mul40, %57
  %arrayidx42 = getelementptr inbounds float, ptr %53, i64 %add41
  %58 = load float, ptr %arrayidx42, align 4, !tbaa !25
  %59 = load ptr, ptr %ubfactors.addr, align 8, !tbaa !4
  %60 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx44 = getelementptr inbounds float, ptr %59, i64 %60
  %61 = load float, ptr %arrayidx44, align 4, !tbaa !25
  %neg45 = fneg float %61
  %62 = call float @llvm.fmuladd.f32(float %conv39, float %58, float %neg45)
  store float %62, ptr %max, align 4, !tbaa !25
  %63 = load i64, ptr %i, align 8, !tbaa !8
  %64 = load ptr, ptr %cnum.addr, align 8, !tbaa !4
  store i64 %63, ptr %64, align 8, !tbaa !8
  br label %for.end49

if.end46:                                         ; preds = %for.body27
  br label %for.inc47

for.inc47:                                        ; preds = %if.end46
  %65 = load i64, ptr %i, align 8, !tbaa !8
  %inc48 = add nsw i64 %65, 1
  store i64 %inc48, ptr %i, align 8, !tbaa !8
  br label %for.cond24, !llvm.loop !61

for.end49:                                        ; preds = %if.then34, %for.cond24
  %66 = load i64, ptr %i, align 8, !tbaa !8
  %inc50 = add nsw i64 %66, 1
  store i64 %inc50, ptr %i, align 8, !tbaa !8
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc76, %for.end49
  %67 = load i64, ptr %i, align 8, !tbaa !8
  %68 = load i64, ptr %ncon, align 8, !tbaa !8
  %cmp52 = icmp slt i64 %67, %68
  br i1 %cmp52, label %for.body54, label %for.end78

for.body54:                                       ; preds = %for.cond51
  %69 = load ptr, ptr %graph.addr, align 8, !tbaa !4
  %pwgts55 = getelementptr inbounds %struct.graph_t, ptr %69, i32 0, i32 20
  %70 = load ptr, ptr %pwgts55, align 8, !tbaa !21
  %71 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %72 = load i64, ptr %71, align 8, !tbaa !8
  %73 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul56 = mul nsw i64 %72, %73
  %74 = load i64, ptr %i, align 8, !tbaa !8
  %add57 = add nsw i64 %mul56, %74
  %arrayidx58 = getelementptr inbounds i64, ptr %70, i64 %add57
  %75 = load i64, ptr %arrayidx58, align 8, !tbaa !8
  %conv59 = sitofp i64 %75 to float
  %76 = load ptr, ptr %pijbm.addr, align 8, !tbaa !4
  %77 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %78 = load i64, ptr %77, align 8, !tbaa !8
  %79 = load i64, ptr %ncon, align 8, !tbaa !8
  %mul60 = mul nsw i64 %78, %79
  %80 = load i64, ptr %i, align 8, !tbaa !8
  %add61 = add nsw i64 %mul60, %80
  %arrayidx62 = getelementptr inbounds float, ptr %76, i64 %add61
  %81 = load float, ptr %arrayidx62, align 4, !tbaa !25
  %82 = load ptr, ptr %ubfactors.addr, align 8, !tbaa !4
  %83 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx64 = getelementptr inbounds float, ptr %82, i64 %83
  %84 = load float, ptr %arrayidx64, align 4, !tbaa !25
  %neg65 = fneg float %84
  %85 = call float @llvm.fmuladd.f32(float %conv59, float %81, float %neg65)
  store float %85, ptr %tmp, align 4, !tbaa !25
  %86 = load float, ptr %tmp, align 4, !tbaa !25
  %87 = load float, ptr %max, align 4, !tbaa !25
  %cmp66 = fcmp ogt float %86, %87
  br i1 %cmp66, label %land.lhs.true, label %if.end75

land.lhs.true:                                    ; preds = %for.body54
  %88 = load ptr, ptr %queues.addr, align 8, !tbaa !4
  %89 = load i64, ptr %i, align 8, !tbaa !8
  %mul68 = mul nsw i64 2, %89
  %90 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %91 = load i64, ptr %90, align 8, !tbaa !8
  %add69 = add nsw i64 %mul68, %91
  %arrayidx70 = getelementptr inbounds ptr, ptr %88, i64 %add69
  %92 = load ptr, ptr %arrayidx70, align 8, !tbaa !4
  %call71 = call i64 @libmetis__rpqLength(ptr noundef %92)
  %cmp72 = icmp ugt i64 %call71, 0
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %land.lhs.true
  %93 = load float, ptr %tmp, align 4, !tbaa !25
  store float %93, ptr %max, align 4, !tbaa !25
  %94 = load i64, ptr %i, align 8, !tbaa !8
  %95 = load ptr, ptr %cnum.addr, align 8, !tbaa !4
  store i64 %94, ptr %95, align 8, !tbaa !8
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %land.lhs.true, %for.body54
  br label %for.inc76

for.inc76:                                        ; preds = %if.end75
  %96 = load i64, ptr %i, align 8, !tbaa !8
  %inc77 = add nsw i64 %96, 1
  store i64 %inc77, ptr %i, align 8, !tbaa !8
  br label %for.cond51, !llvm.loop !62

for.end78:                                        ; preds = %for.cond51
  br label %if.end79

if.end79:                                         ; preds = %for.end78, %if.then17
  br label %if.end115

if.else:                                          ; preds = %for.end14
  store i64 0, ptr %part, align 8, !tbaa !8
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc112, %if.else
  %97 = load i64, ptr %part, align 8, !tbaa !8
  %cmp81 = icmp slt i64 %97, 2
  br i1 %cmp81, label %for.body83, label %for.end114

for.body83:                                       ; preds = %for.cond80
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond84

for.cond84:                                       ; preds = %for.inc109, %for.body83
  %98 = load i64, ptr %i, align 8, !tbaa !8
  %99 = load i64, ptr %ncon, align 8, !tbaa !8
  %cmp85 = icmp slt i64 %98, %99
  br i1 %cmp85, label %for.body87, label %for.end111

for.body87:                                       ; preds = %for.cond84
  %100 = load ptr, ptr %queues.addr, align 8, !tbaa !4
  %101 = load i64, ptr %i, align 8, !tbaa !8
  %mul88 = mul nsw i64 2, %101
  %102 = load i64, ptr %part, align 8, !tbaa !8
  %add89 = add nsw i64 %mul88, %102
  %arrayidx90 = getelementptr inbounds ptr, ptr %100, i64 %add89
  %103 = load ptr, ptr %arrayidx90, align 8, !tbaa !4
  %call91 = call i64 @libmetis__rpqLength(ptr noundef %103)
  %cmp92 = icmp ugt i64 %call91, 0
  br i1 %cmp92, label %land.lhs.true94, label %if.end108

land.lhs.true94:                                  ; preds = %for.body87
  %104 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %105 = load i64, ptr %104, align 8, !tbaa !8
  %cmp95 = icmp eq i64 %105, -1
  br i1 %cmp95, label %if.then103, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true94
  %106 = load ptr, ptr %queues.addr, align 8, !tbaa !4
  %107 = load i64, ptr %i, align 8, !tbaa !8
  %mul97 = mul nsw i64 2, %107
  %108 = load i64, ptr %part, align 8, !tbaa !8
  %add98 = add nsw i64 %mul97, %108
  %arrayidx99 = getelementptr inbounds ptr, ptr %106, i64 %add98
  %109 = load ptr, ptr %arrayidx99, align 8, !tbaa !4
  %call100 = call float @libmetis__rpqSeeTopKey(ptr noundef %109)
  %110 = load float, ptr %max, align 4, !tbaa !25
  %cmp101 = fcmp ogt float %call100, %110
  br i1 %cmp101, label %if.then103, label %if.end108

if.then103:                                       ; preds = %lor.lhs.false, %land.lhs.true94
  %111 = load ptr, ptr %queues.addr, align 8, !tbaa !4
  %112 = load i64, ptr %i, align 8, !tbaa !8
  %mul104 = mul nsw i64 2, %112
  %113 = load i64, ptr %part, align 8, !tbaa !8
  %add105 = add nsw i64 %mul104, %113
  %arrayidx106 = getelementptr inbounds ptr, ptr %111, i64 %add105
  %114 = load ptr, ptr %arrayidx106, align 8, !tbaa !4
  %call107 = call float @libmetis__rpqSeeTopKey(ptr noundef %114)
  store float %call107, ptr %max, align 4, !tbaa !25
  %115 = load i64, ptr %part, align 8, !tbaa !8
  %116 = load ptr, ptr %from.addr, align 8, !tbaa !4
  store i64 %115, ptr %116, align 8, !tbaa !8
  %117 = load i64, ptr %i, align 8, !tbaa !8
  %118 = load ptr, ptr %cnum.addr, align 8, !tbaa !4
  store i64 %117, ptr %118, align 8, !tbaa !8
  br label %if.end108

if.end108:                                        ; preds = %if.then103, %lor.lhs.false, %for.body87
  br label %for.inc109

for.inc109:                                       ; preds = %if.end108
  %119 = load i64, ptr %i, align 8, !tbaa !8
  %inc110 = add nsw i64 %119, 1
  store i64 %inc110, ptr %i, align 8, !tbaa !8
  br label %for.cond84, !llvm.loop !63

for.end111:                                       ; preds = %for.cond84
  br label %for.inc112

for.inc112:                                       ; preds = %for.end111
  %120 = load i64, ptr %part, align 8, !tbaa !8
  %inc113 = add nsw i64 %120, 1
  store i64 %inc113, ptr %part, align 8, !tbaa !8
  br label %for.cond80, !llvm.loop !64

for.end114:                                       ; preds = %for.cond80
  br label %if.end115

if.end115:                                        ; preds = %for.end114, %if.end79
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %part) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ncon) #4
  ret void
}

declare ptr @libmetis__iaxpy(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #2

declare i32 @libmetis__BetterBalance2Way(i64 noundef, ptr noundef, ptr noundef) #2

declare ptr @libmetis__rcopy(i64 noundef, ptr noundef, ptr noundef) #2

declare float @libmetis__ComputeLoadImbalance(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare i64 @libmetis__rpqLength(ptr noundef) #2

declare float @libmetis__rpqSeeTopKey(ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !9, i64 16}
!11 = !{!"graph_t", !9, i64 0, !9, i64 8, !9, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !5, i64 104, !5, i64 112, !9, i64 120, !9, i64 128, !5, i64 136, !5, i64 144, !9, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224}
!12 = !{!"int", !6, i64 0}
!13 = !{!11, !9, i64 0}
!14 = !{!11, !5, i64 24}
!15 = !{!11, !5, i64 32}
!16 = !{!11, !5, i64 48}
!17 = !{!11, !5, i64 56}
!18 = !{!11, !5, i64 136}
!19 = !{!11, !5, i64 176}
!20 = !{!11, !5, i64 184}
!21 = !{!11, !5, i64 144}
!22 = !{!11, !5, i64 160}
!23 = !{!11, !5, i64 168}
!24 = !{!11, !5, i64 64}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !6, i64 0}
!27 = !{!28, !6, i64 8}
!28 = !{!"ctrl_t", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !5, i64 128, !9, i64 136, !9, i64 144, !26, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !26, i64 184, !29, i64 192, !29, i64 200, !29, i64 208, !29, i64 216, !29, i64 224, !29, i64 232, !29, i64 240, !29, i64 248, !29, i64 256, !29, i64 264, !29, i64 272, !29, i64 280, !5, i64 288, !9, i64 296, !9, i64 304, !9, i64 312, !5, i64 320, !5, i64 328, !5, i64 336, !5, i64 344, !5, i64 352, !5, i64 360, !5, i64 368, !5, i64 376}
!29 = !{!"double", !6, i64 0}
!30 = !{!11, !9, i64 120}
!31 = !{!11, !9, i64 152}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !33}
!38 = distinct !{!38, !33}
!39 = distinct !{!39, !33}
!40 = !{!11, !5, i64 72}
!41 = distinct !{!41, !33}
!42 = distinct !{!42, !33}
!43 = !{!28, !5, i64 176}
!44 = !{!28, !5, i64 160}
!45 = distinct !{!45, !33}
!46 = distinct !{!46, !33}
!47 = distinct !{!47, !33}
!48 = distinct !{!48, !33}
!49 = distinct !{!49, !33}
!50 = distinct !{!50, !33}
!51 = distinct !{!51, !33}
!52 = distinct !{!52, !33}
!53 = distinct !{!53, !33}
!54 = distinct !{!54, !33}
!55 = distinct !{!55, !33}
!56 = !{!12, !12, i64 0}
!57 = distinct !{!57, !33}
!58 = distinct !{!58, !33}
!59 = distinct !{!59, !33}
!60 = distinct !{!60, !33}
!61 = distinct !{!61, !33}
!62 = distinct !{!62, !33}
!63 = distinct !{!63, !33}
!64 = distinct !{!64, !33}

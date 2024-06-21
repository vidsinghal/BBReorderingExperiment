; ModuleID = 'samples/278.bc'
source_filename = "fac_cf_coarsen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_Box_struct = type { [3 x i32], [3 x i32], i32 }
%struct.hypre_SStructMatrix_struct = type { ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.hypre_SStructGraph_struct = type { ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.hypre_SStructGrid_struct = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, [6 x i32] }
%struct.hypre_SStructPMatrix = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32 }
%struct.hypre_SStructPGrid = type { ptr, i32, i32, ptr, [8 x ptr], [8 x ptr], ptr, ptr, i32, i32, [3 x i32], i32, i32 }
%struct.hypre_StructGrid_struct = type { ptr, i32, ptr, ptr, [3 x i32], ptr, i32, i32, [3 x i32], i32, ptr, i32, i32, [6 x i32], ptr }
%struct.hypre_BoxArray_struct = type { ptr, i32, i32, i32 }
%struct.hypre_BoxArrayArray_struct = type { ptr, i32, i32 }
%struct.hypre_StructStencil_struct = type { ptr, i32, i32, i32 }
%struct.hypre_StructMatrix_struct = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, ptr, [6 x i32], i32, ptr, i32 }
%struct.hypre_SStructUVEntry = type { i32, [3 x i32], i32, i32, i32, ptr }
%struct.hypre_SStructUEntry = type { i32, [3 x i32], i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @hypre_AMR_CFCoarsen(ptr noundef %A, ptr noundef %fac_A, ptr noundef %refine_factors, i32 noundef %level) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %fac_A.addr = alloca ptr, align 8
  %refine_factors.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %comm = alloca ptr, align 8
  %graph = alloca ptr, align 8
  %graph_type = alloca i32, align 4
  %grid = alloca ptr, align 8
  %nUventries = alloca i32, align 4
  %ij_A = alloca ptr, align 8
  %matrix_type = alloca i32, align 4
  %ndim = alloca i32, align 4
  %A_pmatrix = alloca ptr, align 8
  %smatrix_var = alloca ptr, align 8
  %stencils = alloca ptr, align 8
  %stencil_size = alloca i32, align 4
  %stencil_shape_i = alloca [3 x i32], align 4
  %loop_size = alloca [3 x i32], align 4
  %refined_box = alloca %struct.hypre_Box_struct, align 4
  %a_ptrs = alloca ptr, align 8
  %A_dbox = alloca ptr, align 8
  %part_crse = alloca i32, align 4
  %part_fine = alloca i32, align 4
  %fboxman = alloca ptr, align 8
  %boxman_entries = alloca ptr, align 8
  %boxman_entry = alloca ptr, align 8
  %nboxman_entries = alloca i32, align 4
  %boxman_entry_box = alloca %struct.hypre_Box_struct, align 4
  %fgrid_cinterface_extents = alloca ptr, align 8
  %cgrid = alloca ptr, align 8
  %cgrid_boxes = alloca ptr, align 8
  %cgrid_box = alloca ptr, align 8
  %node_extents = alloca [3 x i32], align 4
  %stridec = alloca [3 x i32], align 4
  %stridef = alloca [3 x i32], align 4
  %cinterface_arrays = alloca ptr, align 8
  %cinterface_array = alloca ptr, align 8
  %fgrid_cinterface = alloca ptr, align 8
  %centre = alloca i32, align 4
  %ci = alloca i32, align 4
  %fi = alloca i32, align 4
  %boxi = alloca i32, align 4
  %max_stencil_size = alloca i32, align 4
  %falseV = alloca i32, align 4
  %trueV = alloca i32, align 4
  %found = alloca i32, align 4
  %stencil_ranks = alloca ptr, align 8
  %rank_stencils = alloca ptr, align 8
  %rank = alloca i32, align 4
  %startrank = alloca i32, align 4
  %vals = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nvars = alloca i32, align 4
  %var1 = alloca i32, align 4
  %lindex = alloca [3 x i32], align 4
  %zero_index = alloca [3 x i32], align 4
  %index1 = alloca [3 x i32], align 4
  %index2 = alloca [3 x i32], align 4
  %index_temp = alloca [3 x i32], align 4
  %Uventry = alloca ptr, align 8
  %nUentries = alloca i32, align 4
  %cnt1 = alloca i32, align 4
  %box_array_size = alloca i32, align 4
  %ncols = alloca ptr, align 8
  %rows = alloca ptr, align 8
  %cols = alloca ptr, align 8
  %temp1 = alloca ptr, align 8
  %temp2 = alloca ptr, align 8
  %myid = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %kk = alloca i32, align 4
  %iA = alloca i32, align 4
  %hypre__tot = alloca i32, align 4
  %hypre__div = alloca i32, align 4
  %hypre__mod = alloca i32, align 4
  %hypre__block = alloca i32, align 4
  %hypre__num_blocks = alloca i32, align 4
  %hypre__d = alloca i32, align 4
  %hypre__ndim = alloca i32, align 4
  %hypre__I = alloca i32, align 4
  %hypre__J = alloca i32, align 4
  %hypre__IN = alloca i32, align 4
  %hypre__JN = alloca i32, align 4
  %hypre__i = alloca [4 x i32], align 16
  %hypre__n = alloca [4 x i32], align 16
  %hypre__ikstart1 = alloca i32, align 4
  %hypre__i0inc1 = alloca i32, align 4
  %hypre__sk1 = alloca [3 x i32], align 4
  %hypre__ikinc1 = alloca [4 x i32], align 16
  %ii589 = alloca i32, align 4
  %jj590 = alloca i32, align 4
  %kk591 = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %fac_A, ptr %fac_A.addr, align 8, !tbaa !4
  store ptr %refine_factors, ptr %refine_factors.addr, align 8, !tbaa !4
  store i32 %level, ptr %level.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #3
  %0 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %comm1 = getelementptr inbounds %struct.hypre_SStructMatrix_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %comm1, align 8, !tbaa !10
  store ptr %1, ptr %comm, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %graph) #3
  %2 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %graph2 = getelementptr inbounds %struct.hypre_SStructMatrix_struct, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %graph2, align 8, !tbaa !12
  store ptr %3, ptr %graph, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %graph_type) #3
  %4 = load ptr, ptr %graph, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.hypre_SStructGraph_struct, ptr %4, i32 0, i32 18
  %5 = load i32, ptr %type, align 4, !tbaa !13
  store i32 %5, ptr %graph_type, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %grid) #3
  %6 = load ptr, ptr %graph, align 8, !tbaa !4
  %grid3 = getelementptr inbounds %struct.hypre_SStructGraph_struct, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %grid3, align 8, !tbaa !15
  store ptr %7, ptr %grid, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nUventries) #3
  %8 = load ptr, ptr %graph, align 8, !tbaa !4
  %nUventries4 = getelementptr inbounds %struct.hypre_SStructGraph_struct, ptr %8, i32 0, i32 11
  %9 = load i32, ptr %nUventries4, align 8, !tbaa !16
  store i32 %9, ptr %nUventries, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ij_A) #3
  %10 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %ijmatrix = getelementptr inbounds %struct.hypre_SStructMatrix_struct, ptr %10, i32 0, i32 7
  %11 = load ptr, ptr %ijmatrix, align 8, !tbaa !17
  store ptr %11, ptr %ij_A, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %matrix_type) #3
  %12 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %object_type = getelementptr inbounds %struct.hypre_SStructMatrix_struct, ptr %12, i32 0, i32 18
  %13 = load i32, ptr %object_type, align 4, !tbaa !18
  store i32 %13, ptr %matrix_type, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ndim) #3
  %14 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %ndim5 = getelementptr inbounds %struct.hypre_SStructMatrix_struct, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %ndim5, align 8, !tbaa !19
  store i32 %15, ptr %ndim, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_pmatrix) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %smatrix_var) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %stencils) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %stencil_size) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr %stencil_shape_i) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr %loop_size) #3
  call void @llvm.lifetime.start.p0(i64 28, ptr %refined_box) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_ptrs) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_dbox) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %part_crse) #3
  %16 = load i32, ptr %level.addr, align 4, !tbaa !8
  %sub = sub nsw i32 %16, 1
  store i32 %sub, ptr %part_crse, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %part_fine) #3
  %17 = load i32, ptr %level.addr, align 4, !tbaa !8
  store i32 %17, ptr %part_fine, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %fboxman) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %boxman_entries) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %boxman_entry) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nboxman_entries) #3
  call void @llvm.lifetime.start.p0(i64 28, ptr %boxman_entry_box) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %fgrid_cinterface_extents) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %cgrid) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %cgrid_boxes) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %cgrid_box) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr %node_extents) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr %stridec) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr %stridef) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %cinterface_arrays) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %cinterface_array) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %fgrid_cinterface) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %centre) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ci) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %fi) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %boxi) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_stencil_size) #3
  store i32 27, ptr %max_stencil_size, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %falseV) #3
  store i32 0, ptr %falseV, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %trueV) #3
  store i32 1, ptr %trueV, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %stencil_ranks) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %rank_stencils) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %rank) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %startrank) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %vals) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nvars) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %var1) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr %lindex) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr %zero_index) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr %index1) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr %index2) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr %index_temp) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Uventry) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nUentries) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %box_array_size) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ncols) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %rows) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %cols) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %myid) #3
  %18 = load ptr, ptr %comm, align 8, !tbaa !4
  %call = call i32 @hypre_MPI_Comm_rank(ptr noundef %18, ptr noundef %myid)
  %arrayidx = getelementptr inbounds [3 x i32], ptr %zero_index, i64 0, i64 0
  store i32 0, ptr %arrayidx, align 4, !tbaa !8
  %arrayidx6 = getelementptr inbounds [3 x i32], ptr %zero_index, i64 0, i64 1
  store i32 0, ptr %arrayidx6, align 4, !tbaa !8
  %arrayidx7 = getelementptr inbounds [3 x i32], ptr %zero_index, i64 0, i64 2
  store i32 0, ptr %arrayidx7, align 4, !tbaa !8
  %19 = load i32, ptr %ndim, align 4, !tbaa !8
  %call8 = call i32 @hypre_BoxInit(ptr noundef %refined_box, i32 noundef %19)
  %20 = load i32, ptr %ndim, align 4, !tbaa !8
  %call9 = call i32 @hypre_BoxInit(ptr noundef %boxman_entry_box, i32 noundef %20)
  %21 = load i32, ptr %graph_type, align 4, !tbaa !8
  %cmp = icmp eq i32 %21, 3333
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %22 = load ptr, ptr %grid, align 8, !tbaa !4
  %ghstart_rank = getelementptr inbounds %struct.hypre_SStructGrid_struct, ptr %22, i32 0, i32 23
  %23 = load i32, ptr %ghstart_rank, align 4, !tbaa !20
  store i32 %23, ptr %startrank, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load i32, ptr %graph_type, align 4, !tbaa !8
  %cmp10 = icmp eq i32 %24, 5555
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  %25 = load ptr, ptr %grid, align 8, !tbaa !4
  %start_rank = getelementptr inbounds %struct.hypre_SStructGrid_struct, ptr %25, i32 0, i32 18
  %26 = load i32, ptr %start_rank, align 8, !tbaa !22
  store i32 %26, ptr %startrank, align 4, !tbaa !8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  %arrayidx13 = getelementptr inbounds [3 x i32], ptr %stridec, i64 0, i64 0
  store i32 1, ptr %arrayidx13, align 4, !tbaa !8
  %arrayidx14 = getelementptr inbounds [3 x i32], ptr %stridec, i64 0, i64 1
  store i32 1, ptr %arrayidx14, align 4, !tbaa !8
  %arrayidx15 = getelementptr inbounds [3 x i32], ptr %stridec, i64 0, i64 2
  store i32 1, ptr %arrayidx15, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %27 = load i32, ptr %i, align 4, !tbaa !8
  %28 = load i32, ptr %ndim, align 4, !tbaa !8
  %cmp16 = icmp slt i32 %27, %28
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load ptr, ptr %refine_factors.addr, align 8, !tbaa !4
  %30 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %30 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %29, i64 %idxprom
  %31 = load i32, ptr %arrayidx17, align 4, !tbaa !8
  %32 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom18 = sext i32 %32 to i64
  %arrayidx19 = getelementptr inbounds [3 x i32], ptr %stridef, i64 0, i64 %idxprom18
  store i32 %31, ptr %arrayidx19, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %34 = load i32, ptr %ndim, align 4, !tbaa !8
  store i32 %34, ptr %i, align 4, !tbaa !8
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc25, %for.end
  %35 = load i32, ptr %i, align 4, !tbaa !8
  %cmp21 = icmp slt i32 %35, 3
  br i1 %cmp21, label %for.body22, label %for.end27

for.body22:                                       ; preds = %for.cond20
  %36 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom23 = sext i32 %36 to i64
  %arrayidx24 = getelementptr inbounds [3 x i32], ptr %stridef, i64 0, i64 %idxprom23
  store i32 1, ptr %arrayidx24, align 4, !tbaa !8
  br label %for.inc25

for.inc25:                                        ; preds = %for.body22
  %37 = load i32, ptr %i, align 4, !tbaa !8
  %inc26 = add nsw i32 %37, 1
  store i32 %inc26, ptr %i, align 4, !tbaa !8
  br label %for.cond20, !llvm.loop !25

for.end27:                                        ; preds = %for.cond20
  %38 = load ptr, ptr %fac_A.addr, align 8, !tbaa !4
  %pmatrices = getelementptr inbounds %struct.hypre_SStructMatrix_struct, ptr %38, i32 0, i32 5
  %39 = load ptr, ptr %pmatrices, align 8, !tbaa !26
  %40 = load i32, ptr %part_crse, align 4, !tbaa !8
  %idxprom28 = sext i32 %40 to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %39, i64 %idxprom28
  %41 = load ptr, ptr %arrayidx29, align 8, !tbaa !4
  store ptr %41, ptr %A_pmatrix, align 8, !tbaa !4
  %42 = load ptr, ptr %A_pmatrix, align 8, !tbaa !4
  %nvars30 = getelementptr inbounds %struct.hypre_SStructPMatrix, ptr %42, i32 0, i32 3
  %43 = load i32, ptr %nvars30, align 8, !tbaa !27
  store i32 %43, ptr %nvars, align 4, !tbaa !8
  %44 = load i32, ptr %nvars, align 4, !tbaa !8
  %conv = sext i32 %44 to i64
  %mul = mul i64 8, %conv
  %call31 = call ptr @hypre_MAlloc(i64 noundef %mul, i32 noundef 0)
  store ptr %call31, ptr %fgrid_cinterface_extents, align 8, !tbaa !4
  store i32 0, ptr %var1, align 4, !tbaa !8
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc132, %for.end27
  %45 = load i32, ptr %var1, align 4, !tbaa !8
  %46 = load i32, ptr %nvars, align 4, !tbaa !8
  %cmp33 = icmp slt i32 %45, %46
  br i1 %cmp33, label %for.body35, label %for.end134

for.body35:                                       ; preds = %for.cond32
  %47 = load ptr, ptr %grid, align 8, !tbaa !4
  %boxmans = getelementptr inbounds %struct.hypre_SStructGrid_struct, ptr %47, i32 0, i32 16
  %48 = load ptr, ptr %boxmans, align 8, !tbaa !29
  %49 = load i32, ptr %part_fine, align 4, !tbaa !8
  %idxprom36 = sext i32 %49 to i64
  %arrayidx37 = getelementptr inbounds ptr, ptr %48, i64 %idxprom36
  %50 = load ptr, ptr %arrayidx37, align 8, !tbaa !4
  %51 = load i32, ptr %var1, align 4, !tbaa !8
  %idxprom38 = sext i32 %51 to i64
  %arrayidx39 = getelementptr inbounds ptr, ptr %50, i64 %idxprom38
  %52 = load ptr, ptr %arrayidx39, align 8, !tbaa !4
  store ptr %52, ptr %fboxman, align 8, !tbaa !4
  %53 = load ptr, ptr %A_pmatrix, align 8, !tbaa !4
  %sstencils = getelementptr inbounds %struct.hypre_SStructPMatrix, ptr %53, i32 0, i32 5
  %54 = load ptr, ptr %sstencils, align 8, !tbaa !30
  %55 = load i32, ptr %var1, align 4, !tbaa !8
  %idxprom40 = sext i32 %55 to i64
  %arrayidx41 = getelementptr inbounds ptr, ptr %54, i64 %idxprom40
  %56 = load ptr, ptr %arrayidx41, align 8, !tbaa !4
  %57 = load i32, ptr %var1, align 4, !tbaa !8
  %idxprom42 = sext i32 %57 to i64
  %arrayidx43 = getelementptr inbounds ptr, ptr %56, i64 %idxprom42
  %58 = load ptr, ptr %arrayidx43, align 8, !tbaa !4
  store ptr %58, ptr %stencils, align 8, !tbaa !4
  %59 = load ptr, ptr %A_pmatrix, align 8, !tbaa !4
  %pgrid = getelementptr inbounds %struct.hypre_SStructPMatrix, ptr %59, i32 0, i32 1
  %60 = load ptr, ptr %pgrid, align 8, !tbaa !31
  %sgrids = getelementptr inbounds %struct.hypre_SStructPGrid, ptr %60, i32 0, i32 4
  %61 = load ptr, ptr %A_pmatrix, align 8, !tbaa !4
  %pgrid44 = getelementptr inbounds %struct.hypre_SStructPMatrix, ptr %61, i32 0, i32 1
  %62 = load ptr, ptr %pgrid44, align 8, !tbaa !31
  %vartypes = getelementptr inbounds %struct.hypre_SStructPGrid, ptr %62, i32 0, i32 3
  %63 = load ptr, ptr %vartypes, align 8, !tbaa !32
  %64 = load i32, ptr %var1, align 4, !tbaa !8
  %idxprom45 = sext i32 %64 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %63, i64 %idxprom45
  %65 = load i32, ptr %arrayidx46, align 4, !tbaa !8
  %idxprom47 = sext i32 %65 to i64
  %arrayidx48 = getelementptr inbounds [8 x ptr], ptr %sgrids, i64 0, i64 %idxprom47
  %66 = load ptr, ptr %arrayidx48, align 8, !tbaa !4
  store ptr %66, ptr %cgrid, align 8, !tbaa !4
  %67 = load ptr, ptr %cgrid, align 8, !tbaa !4
  %boxes = getelementptr inbounds %struct.hypre_StructGrid_struct, ptr %67, i32 0, i32 2
  %68 = load ptr, ptr %boxes, align 8, !tbaa !34
  store ptr %68, ptr %cgrid_boxes, align 8, !tbaa !4
  %69 = load ptr, ptr %cgrid_boxes, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, ptr %69, i32 0, i32 1
  %70 = load i32, ptr %size, align 8, !tbaa !36
  %conv49 = sext i32 %70 to i64
  %mul50 = mul i64 8, %conv49
  %call51 = call ptr @hypre_MAlloc(i64 noundef %mul50, i32 noundef 0)
  %71 = load ptr, ptr %fgrid_cinterface_extents, align 8, !tbaa !4
  %72 = load i32, ptr %var1, align 4, !tbaa !8
  %idxprom52 = sext i32 %72 to i64
  %arrayidx53 = getelementptr inbounds ptr, ptr %71, i64 %idxprom52
  store ptr %call51, ptr %arrayidx53, align 8, !tbaa !4
  store i32 0, ptr %ci, align 4, !tbaa !8
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc129, %for.body35
  %73 = load i32, ptr %ci, align 4, !tbaa !8
  %74 = load ptr, ptr %cgrid_boxes, align 8, !tbaa !4
  %size55 = getelementptr inbounds %struct.hypre_BoxArray_struct, ptr %74, i32 0, i32 1
  %75 = load i32, ptr %size55, align 8, !tbaa !36
  %cmp56 = icmp slt i32 %73, %75
  br i1 %cmp56, label %for.body58, label %for.end131

for.body58:                                       ; preds = %for.cond54
  %76 = load ptr, ptr %cgrid_boxes, align 8, !tbaa !4
  %boxes59 = getelementptr inbounds %struct.hypre_BoxArray_struct, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %boxes59, align 8, !tbaa !38
  %78 = load i32, ptr %ci, align 4, !tbaa !8
  %idxprom60 = sext i32 %78 to i64
  %arrayidx61 = getelementptr inbounds %struct.hypre_Box_struct, ptr %77, i64 %idxprom60
  store ptr %arrayidx61, ptr %cgrid_box, align 8, !tbaa !4
  %79 = load ptr, ptr %cgrid_box, align 8, !tbaa !4
  %imin = getelementptr inbounds %struct.hypre_Box_struct, ptr %79, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x i32], ptr %imin, i64 0, i64 0
  %arraydecay62 = getelementptr inbounds [3 x i32], ptr %zero_index, i64 0, i64 0
  %80 = load ptr, ptr %refine_factors.addr, align 8, !tbaa !4
  %imin63 = getelementptr inbounds %struct.hypre_Box_struct, ptr %refined_box, i32 0, i32 0
  %arraydecay64 = getelementptr inbounds [3 x i32], ptr %imin63, i64 0, i64 0
  %call65 = call i32 @hypre_StructMapCoarseToFine(ptr noundef %arraydecay, ptr noundef %arraydecay62, ptr noundef %80, ptr noundef %arraydecay64)
  %81 = load ptr, ptr %refine_factors.addr, align 8, !tbaa !4
  %arrayidx66 = getelementptr inbounds i32, ptr %81, i64 0
  %82 = load i32, ptr %arrayidx66, align 4, !tbaa !8
  %sub67 = sub nsw i32 %82, 1
  %arrayidx68 = getelementptr inbounds [3 x i32], ptr %index1, i64 0, i64 0
  store i32 %sub67, ptr %arrayidx68, align 4, !tbaa !8
  %83 = load ptr, ptr %refine_factors.addr, align 8, !tbaa !4
  %arrayidx69 = getelementptr inbounds i32, ptr %83, i64 1
  %84 = load i32, ptr %arrayidx69, align 4, !tbaa !8
  %sub70 = sub nsw i32 %84, 1
  %arrayidx71 = getelementptr inbounds [3 x i32], ptr %index1, i64 0, i64 1
  store i32 %sub70, ptr %arrayidx71, align 4, !tbaa !8
  %85 = load ptr, ptr %refine_factors.addr, align 8, !tbaa !4
  %arrayidx72 = getelementptr inbounds i32, ptr %85, i64 2
  %86 = load i32, ptr %arrayidx72, align 4, !tbaa !8
  %sub73 = sub nsw i32 %86, 1
  %arrayidx74 = getelementptr inbounds [3 x i32], ptr %index1, i64 0, i64 2
  store i32 %sub73, ptr %arrayidx74, align 4, !tbaa !8
  %87 = load ptr, ptr %cgrid_box, align 8, !tbaa !4
  %imax = getelementptr inbounds %struct.hypre_Box_struct, ptr %87, i32 0, i32 1
  %arraydecay75 = getelementptr inbounds [3 x i32], ptr %imax, i64 0, i64 0
  %arraydecay76 = getelementptr inbounds [3 x i32], ptr %index1, i64 0, i64 0
  %88 = load ptr, ptr %refine_factors.addr, align 8, !tbaa !4
  %imax77 = getelementptr inbounds %struct.hypre_Box_struct, ptr %refined_box, i32 0, i32 1
  %arraydecay78 = getelementptr inbounds [3 x i32], ptr %imax77, i64 0, i64 0
  %call79 = call i32 @hypre_StructMapCoarseToFine(ptr noundef %arraydecay75, ptr noundef %arraydecay76, ptr noundef %88, ptr noundef %arraydecay78)
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc91, %for.body58
  %89 = load i32, ptr %i, align 4, !tbaa !8
  %90 = load i32, ptr %ndim, align 4, !tbaa !8
  %cmp81 = icmp slt i32 %89, %90
  br i1 %cmp81, label %for.body83, label %for.end93

for.body83:                                       ; preds = %for.cond80
  %imin84 = getelementptr inbounds %struct.hypre_Box_struct, ptr %refined_box, i32 0, i32 0
  %91 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom85 = sext i32 %91 to i64
  %arrayidx86 = getelementptr inbounds [3 x i32], ptr %imin84, i64 0, i64 %idxprom85
  %92 = load i32, ptr %arrayidx86, align 4, !tbaa !8
  %sub87 = sub nsw i32 %92, 1
  store i32 %sub87, ptr %arrayidx86, align 4, !tbaa !8
  %imax88 = getelementptr inbounds %struct.hypre_Box_struct, ptr %refined_box, i32 0, i32 1
  %93 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom89 = sext i32 %93 to i64
  %arrayidx90 = getelementptr inbounds [3 x i32], ptr %imax88, i64 0, i64 %idxprom89
  %94 = load i32, ptr %arrayidx90, align 4, !tbaa !8
  %add = add nsw i32 %94, 1
  store i32 %add, ptr %arrayidx90, align 4, !tbaa !8
  br label %for.inc91

for.inc91:                                        ; preds = %for.body83
  %95 = load i32, ptr %i, align 4, !tbaa !8
  %inc92 = add nsw i32 %95, 1
  store i32 %inc92, ptr %i, align 4, !tbaa !8
  br label %for.cond80, !llvm.loop !39

for.end93:                                        ; preds = %for.cond80
  %96 = load ptr, ptr %fboxman, align 8, !tbaa !4
  %imin94 = getelementptr inbounds %struct.hypre_Box_struct, ptr %refined_box, i32 0, i32 0
  %arraydecay95 = getelementptr inbounds [3 x i32], ptr %imin94, i64 0, i64 0
  %imax96 = getelementptr inbounds %struct.hypre_Box_struct, ptr %refined_box, i32 0, i32 1
  %arraydecay97 = getelementptr inbounds [3 x i32], ptr %imax96, i64 0, i64 0
  %call98 = call i32 @hypre_BoxManIntersect(ptr noundef %96, ptr noundef %arraydecay95, ptr noundef %arraydecay97, ptr noundef %boxman_entries, ptr noundef %nboxman_entries)
  %97 = load i32, ptr %nboxman_entries, align 4, !tbaa !8
  %98 = load i32, ptr %ndim, align 4, !tbaa !8
  %call99 = call ptr @hypre_BoxArrayArrayCreate(i32 noundef %97, i32 noundef %98)
  %99 = load ptr, ptr %fgrid_cinterface_extents, align 8, !tbaa !4
  %100 = load i32, ptr %var1, align 4, !tbaa !8
  %idxprom100 = sext i32 %100 to i64
  %arrayidx101 = getelementptr inbounds ptr, ptr %99, i64 %idxprom100
  %101 = load ptr, ptr %arrayidx101, align 8, !tbaa !4
  %102 = load i32, ptr %ci, align 4, !tbaa !8
  %idxprom102 = sext i32 %102 to i64
  %arrayidx103 = getelementptr inbounds ptr, ptr %101, i64 %idxprom102
  store ptr %call99, ptr %arrayidx103, align 8, !tbaa !4
  %103 = load ptr, ptr %stencils, align 8, !tbaa !4
  %cmp104 = icmp ne ptr %103, null
  br i1 %cmp104, label %if.then106, label %if.end128

if.then106:                                       ; preds = %for.end93
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond107

for.cond107:                                      ; preds = %for.inc125, %if.then106
  %104 = load i32, ptr %i, align 4, !tbaa !8
  %105 = load i32, ptr %nboxman_entries, align 4, !tbaa !8
  %cmp108 = icmp slt i32 %104, %105
  br i1 %cmp108, label %for.body110, label %for.end127

for.body110:                                      ; preds = %for.cond107
  %106 = load ptr, ptr %boxman_entries, align 8, !tbaa !4
  %107 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom111 = sext i32 %107 to i64
  %arrayidx112 = getelementptr inbounds ptr, ptr %106, i64 %idxprom111
  %108 = load ptr, ptr %arrayidx112, align 8, !tbaa !4
  %imin113 = getelementptr inbounds %struct.hypre_Box_struct, ptr %boxman_entry_box, i32 0, i32 0
  %arraydecay114 = getelementptr inbounds [3 x i32], ptr %imin113, i64 0, i64 0
  %imax115 = getelementptr inbounds %struct.hypre_Box_struct, ptr %boxman_entry_box, i32 0, i32 1
  %arraydecay116 = getelementptr inbounds [3 x i32], ptr %imax115, i64 0, i64 0
  %call117 = call i32 @hypre_BoxManEntryGetExtents(ptr noundef %108, ptr noundef %arraydecay114, ptr noundef %arraydecay116)
  %109 = load ptr, ptr %cgrid_box, align 8, !tbaa !4
  %110 = load ptr, ptr %stencils, align 8, !tbaa !4
  %111 = load ptr, ptr %refine_factors.addr, align 8, !tbaa !4
  %112 = load ptr, ptr %fgrid_cinterface_extents, align 8, !tbaa !4
  %113 = load i32, ptr %var1, align 4, !tbaa !8
  %idxprom118 = sext i32 %113 to i64
  %arrayidx119 = getelementptr inbounds ptr, ptr %112, i64 %idxprom118
  %114 = load ptr, ptr %arrayidx119, align 8, !tbaa !4
  %115 = load i32, ptr %ci, align 4, !tbaa !8
  %idxprom120 = sext i32 %115 to i64
  %arrayidx121 = getelementptr inbounds ptr, ptr %114, i64 %idxprom120
  %116 = load ptr, ptr %arrayidx121, align 8, !tbaa !4
  %box_arrays = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, ptr %116, i32 0, i32 0
  %117 = load ptr, ptr %box_arrays, align 8, !tbaa !40
  %118 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom122 = sext i32 %118 to i64
  %arrayidx123 = getelementptr inbounds ptr, ptr %117, i64 %idxprom122
  %119 = load ptr, ptr %arrayidx123, align 8, !tbaa !4
  %call124 = call i32 @hypre_CFInterfaceExtents2(ptr noundef %boxman_entry_box, ptr noundef %109, ptr noundef %110, ptr noundef %111, ptr noundef %119)
  br label %for.inc125

for.inc125:                                       ; preds = %for.body110
  %120 = load i32, ptr %i, align 4, !tbaa !8
  %inc126 = add nsw i32 %120, 1
  store i32 %inc126, ptr %i, align 4, !tbaa !8
  br label %for.cond107, !llvm.loop !42

for.end127:                                       ; preds = %for.cond107
  br label %if.end128

if.end128:                                        ; preds = %for.end127, %for.end93
  %121 = load ptr, ptr %boxman_entries, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %121, i32 noundef 0)
  store ptr null, ptr %boxman_entries, align 8, !tbaa !4
  br label %for.inc129

for.inc129:                                       ; preds = %if.end128
  %122 = load i32, ptr %ci, align 4, !tbaa !8
  %inc130 = add nsw i32 %122, 1
  store i32 %inc130, ptr %ci, align 4, !tbaa !8
  br label %for.cond54, !llvm.loop !43

for.end131:                                       ; preds = %for.cond54
  br label %for.inc132

for.inc132:                                       ; preds = %for.end131
  %123 = load i32, ptr %var1, align 4, !tbaa !8
  %inc133 = add nsw i32 %123, 1
  store i32 %inc133, ptr %var1, align 4, !tbaa !8
  br label %for.cond32, !llvm.loop !44

for.end134:                                       ; preds = %for.cond32
  store i32 0, ptr %var1, align 4, !tbaa !8
  br label %for.cond135

for.cond135:                                      ; preds = %for.inc740, %for.end134
  %124 = load i32, ptr %var1, align 4, !tbaa !8
  %125 = load i32, ptr %nvars, align 4, !tbaa !8
  %cmp136 = icmp slt i32 %124, %125
  br i1 %cmp136, label %for.body138, label %for.end742

for.body138:                                      ; preds = %for.cond135
  %126 = load ptr, ptr %A_pmatrix, align 8, !tbaa !4
  %pgrid139 = getelementptr inbounds %struct.hypre_SStructPMatrix, ptr %126, i32 0, i32 1
  %127 = load ptr, ptr %pgrid139, align 8, !tbaa !31
  %sgrids140 = getelementptr inbounds %struct.hypre_SStructPGrid, ptr %127, i32 0, i32 4
  %128 = load ptr, ptr %A_pmatrix, align 8, !tbaa !4
  %pgrid141 = getelementptr inbounds %struct.hypre_SStructPMatrix, ptr %128, i32 0, i32 1
  %129 = load ptr, ptr %pgrid141, align 8, !tbaa !31
  %vartypes142 = getelementptr inbounds %struct.hypre_SStructPGrid, ptr %129, i32 0, i32 3
  %130 = load ptr, ptr %vartypes142, align 8, !tbaa !32
  %131 = load i32, ptr %var1, align 4, !tbaa !8
  %idxprom143 = sext i32 %131 to i64
  %arrayidx144 = getelementptr inbounds i32, ptr %130, i64 %idxprom143
  %132 = load i32, ptr %arrayidx144, align 4, !tbaa !8
  %idxprom145 = sext i32 %132 to i64
  %arrayidx146 = getelementptr inbounds [8 x ptr], ptr %sgrids140, i64 0, i64 %idxprom145
  %133 = load ptr, ptr %arrayidx146, align 8, !tbaa !4
  store ptr %133, ptr %cgrid, align 8, !tbaa !4
  %134 = load ptr, ptr %cgrid, align 8, !tbaa !4
  %boxes147 = getelementptr inbounds %struct.hypre_StructGrid_struct, ptr %134, i32 0, i32 2
  %135 = load ptr, ptr %boxes147, align 8, !tbaa !34
  store ptr %135, ptr %cgrid_boxes, align 8, !tbaa !4
  %136 = load ptr, ptr %A_pmatrix, align 8, !tbaa !4
  %sstencils148 = getelementptr inbounds %struct.hypre_SStructPMatrix, ptr %136, i32 0, i32 5
  %137 = load ptr, ptr %sstencils148, align 8, !tbaa !30
  %138 = load i32, ptr %var1, align 4, !tbaa !8
  %idxprom149 = sext i32 %138 to i64
  %arrayidx150 = getelementptr inbounds ptr, ptr %137, i64 %idxprom149
  %139 = load ptr, ptr %arrayidx150, align 8, !tbaa !4
  %140 = load i32, ptr %var1, align 4, !tbaa !8
  %idxprom151 = sext i32 %140 to i64
  %arrayidx152 = getelementptr inbounds ptr, ptr %139, i64 %idxprom151
  %141 = load ptr, ptr %arrayidx152, align 8, !tbaa !4
  store ptr %141, ptr %stencils, align 8, !tbaa !4
  %142 = load ptr, ptr %stencils, align 8, !tbaa !4
  %cmp153 = icmp ne ptr %142, null
  br i1 %cmp153, label %if.then155, label %if.end739

if.then155:                                       ; preds = %for.body138
  %143 = load ptr, ptr %stencils, align 8, !tbaa !4
  %size156 = getelementptr inbounds %struct.hypre_StructStencil_struct, ptr %143, i32 0, i32 1
  %144 = load i32, ptr %size156, align 8, !tbaa !45
  store i32 %144, ptr %stencil_size, align 4, !tbaa !8
  %145 = load i32, ptr %stencil_size, align 4, !tbaa !8
  %conv157 = sext i32 %145 to i64
  %mul158 = mul i64 4, %conv157
  %call159 = call ptr @hypre_MAlloc(i64 noundef %mul158, i32 noundef 0)
  store ptr %call159, ptr %stencil_ranks, align 8, !tbaa !4
  %146 = load i32, ptr %max_stencil_size, align 4, !tbaa !8
  %conv160 = sext i32 %146 to i64
  %mul161 = mul i64 4, %conv160
  %call162 = call ptr @hypre_MAlloc(i64 noundef %mul161, i32 noundef 0)
  store ptr %call162, ptr %rank_stencils, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond163

for.cond163:                                      ; preds = %for.inc175, %if.then155
  %147 = load i32, ptr %i, align 4, !tbaa !8
  %148 = load i32, ptr %max_stencil_size, align 4, !tbaa !8
  %cmp164 = icmp slt i32 %147, %148
  br i1 %cmp164, label %for.body166, label %for.end177

for.body166:                                      ; preds = %for.cond163
  %149 = load ptr, ptr %rank_stencils, align 8, !tbaa !4
  %150 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom167 = sext i32 %150 to i64
  %arrayidx168 = getelementptr inbounds i32, ptr %149, i64 %idxprom167
  store i32 -1, ptr %arrayidx168, align 4, !tbaa !8
  %151 = load i32, ptr %i, align 4, !tbaa !8
  %152 = load i32, ptr %stencil_size, align 4, !tbaa !8
  %cmp169 = icmp slt i32 %151, %152
  br i1 %cmp169, label %if.then171, label %if.end174

if.then171:                                       ; preds = %for.body166
  %153 = load ptr, ptr %stencil_ranks, align 8, !tbaa !4
  %154 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom172 = sext i32 %154 to i64
  %arrayidx173 = getelementptr inbounds i32, ptr %153, i64 %idxprom172
  store i32 -1, ptr %arrayidx173, align 4, !tbaa !8
  br label %if.end174

if.end174:                                        ; preds = %if.then171, %for.body166
  br label %for.inc175

for.inc175:                                       ; preds = %if.end174
  %155 = load i32, ptr %i, align 4, !tbaa !8
  %inc176 = add nsw i32 %155, 1
  store i32 %inc176, ptr %i, align 4, !tbaa !8
  br label %for.cond163, !llvm.loop !47

for.end177:                                       ; preds = %for.cond163
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond178

for.cond178:                                      ; preds = %for.inc212, %for.end177
  %156 = load i32, ptr %i, align 4, !tbaa !8
  %157 = load i32, ptr %stencil_size, align 4, !tbaa !8
  %cmp179 = icmp slt i32 %156, %157
  br i1 %cmp179, label %for.body181, label %for.end214

for.body181:                                      ; preds = %for.cond178
  %158 = load ptr, ptr %stencils, align 8, !tbaa !4
  %shape = getelementptr inbounds %struct.hypre_StructStencil_struct, ptr %158, i32 0, i32 0
  %159 = load ptr, ptr %shape, align 8, !tbaa !48
  %160 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom182 = sext i32 %160 to i64
  %arrayidx183 = getelementptr inbounds [3 x i32], ptr %159, i64 %idxprom182
  %arraydecay184 = getelementptr inbounds [3 x i32], ptr %arrayidx183, i64 0, i64 0
  %arraydecay185 = getelementptr inbounds [3 x i32], ptr %stencil_shape_i, i64 0, i64 0
  %call186 = call i32 @hypre_CopyIndex(ptr noundef %arraydecay184, ptr noundef %arraydecay185)
  call void @llvm.lifetime.start.p0(i64 4, ptr %ii) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %jj) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %kk) #3
  %arrayidx187 = getelementptr inbounds [3 x i32], ptr %stencil_shape_i, i64 0, i64 0
  %161 = load i32, ptr %arrayidx187, align 4, !tbaa !8
  store i32 %161, ptr %ii, align 4, !tbaa !8
  %arrayidx188 = getelementptr inbounds [3 x i32], ptr %stencil_shape_i, i64 0, i64 1
  %162 = load i32, ptr %arrayidx188, align 4, !tbaa !8
  store i32 %162, ptr %jj, align 4, !tbaa !8
  %arrayidx189 = getelementptr inbounds [3 x i32], ptr %stencil_shape_i, i64 0, i64 2
  %163 = load i32, ptr %arrayidx189, align 4, !tbaa !8
  store i32 %163, ptr %kk, align 4, !tbaa !8
  %164 = load i32, ptr %ii, align 4, !tbaa !8
  %cmp190 = icmp eq i32 %164, -1
  br i1 %cmp190, label %if.then192, label %if.end193

if.then192:                                       ; preds = %for.body181
  store i32 2, ptr %ii, align 4, !tbaa !8
  br label %if.end193

if.end193:                                        ; preds = %if.then192, %for.body181
  %165 = load i32, ptr %jj, align 4, !tbaa !8
  %cmp194 = icmp eq i32 %165, -1
  br i1 %cmp194, label %if.then196, label %if.end197

if.then196:                                       ; preds = %if.end193
  store i32 2, ptr %jj, align 4, !tbaa !8
  br label %if.end197

if.end197:                                        ; preds = %if.then196, %if.end193
  %166 = load i32, ptr %kk, align 4, !tbaa !8
  %cmp198 = icmp eq i32 %166, -1
  br i1 %cmp198, label %if.then200, label %if.end201

if.then200:                                       ; preds = %if.end197
  store i32 2, ptr %kk, align 4, !tbaa !8
  br label %if.end201

if.end201:                                        ; preds = %if.then200, %if.end197
  %167 = load i32, ptr %ii, align 4, !tbaa !8
  %168 = load i32, ptr %jj, align 4, !tbaa !8
  %mul202 = mul nsw i32 3, %168
  %add203 = add nsw i32 %167, %mul202
  %169 = load i32, ptr %kk, align 4, !tbaa !8
  %mul204 = mul nsw i32 9, %169
  %add205 = add nsw i32 %add203, %mul204
  store i32 %add205, ptr %j, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %kk) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %jj) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ii) #3
  %170 = load i32, ptr %j, align 4, !tbaa !8
  %171 = load ptr, ptr %stencil_ranks, align 8, !tbaa !4
  %172 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom206 = sext i32 %172 to i64
  %arrayidx207 = getelementptr inbounds i32, ptr %171, i64 %idxprom206
  store i32 %170, ptr %arrayidx207, align 4, !tbaa !8
  %173 = load i32, ptr %i, align 4, !tbaa !8
  %174 = load ptr, ptr %rank_stencils, align 8, !tbaa !4
  %175 = load ptr, ptr %stencil_ranks, align 8, !tbaa !4
  %176 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom208 = sext i32 %176 to i64
  %arrayidx209 = getelementptr inbounds i32, ptr %175, i64 %idxprom208
  %177 = load i32, ptr %arrayidx209, align 4, !tbaa !8
  %idxprom210 = sext i32 %177 to i64
  %arrayidx211 = getelementptr inbounds i32, ptr %174, i64 %idxprom210
  store i32 %173, ptr %arrayidx211, align 4, !tbaa !8
  br label %for.inc212

for.inc212:                                       ; preds = %if.end201
  %178 = load i32, ptr %i, align 4, !tbaa !8
  %inc213 = add nsw i32 %178, 1
  store i32 %inc213, ptr %i, align 4, !tbaa !8
  br label %for.cond178, !llvm.loop !49

for.end214:                                       ; preds = %for.cond178
  %179 = load ptr, ptr %rank_stencils, align 8, !tbaa !4
  %arrayidx215 = getelementptr inbounds i32, ptr %179, i64 0
  %180 = load i32, ptr %arrayidx215, align 4, !tbaa !8
  store i32 %180, ptr %centre, align 4, !tbaa !8
  %181 = load ptr, ptr %A_pmatrix, align 8, !tbaa !4
  %smatrices = getelementptr inbounds %struct.hypre_SStructPMatrix, ptr %181, i32 0, i32 6
  %182 = load ptr, ptr %smatrices, align 8, !tbaa !50
  %183 = load i32, ptr %var1, align 4, !tbaa !8
  %idxprom216 = sext i32 %183 to i64
  %arrayidx217 = getelementptr inbounds ptr, ptr %182, i64 %idxprom216
  %184 = load ptr, ptr %arrayidx217, align 8, !tbaa !4
  %185 = load i32, ptr %var1, align 4, !tbaa !8
  %idxprom218 = sext i32 %185 to i64
  %arrayidx219 = getelementptr inbounds ptr, ptr %184, i64 %idxprom218
  %186 = load ptr, ptr %arrayidx219, align 8, !tbaa !4
  store ptr %186, ptr %smatrix_var, align 8, !tbaa !4
  %187 = load i32, ptr %stencil_size, align 4, !tbaa !8
  %conv220 = sext i32 %187 to i64
  %mul221 = mul i64 8, %conv220
  %call222 = call ptr @hypre_MAlloc(i64 noundef %mul221, i32 noundef 0)
  store ptr %call222, ptr %a_ptrs, align 8, !tbaa !4
  store i32 0, ptr %ci, align 4, !tbaa !8
  br label %for.cond223

for.cond223:                                      ; preds = %for.inc736, %for.end214
  %188 = load i32, ptr %ci, align 4, !tbaa !8
  %189 = load ptr, ptr %cgrid_boxes, align 8, !tbaa !4
  %size224 = getelementptr inbounds %struct.hypre_BoxArray_struct, ptr %189, i32 0, i32 1
  %190 = load i32, ptr %size224, align 8, !tbaa !36
  %cmp225 = icmp slt i32 %188, %190
  br i1 %cmp225, label %for.body227, label %for.end738

for.body227:                                      ; preds = %for.cond223
  %191 = load ptr, ptr %cgrid_boxes, align 8, !tbaa !4
  %boxes228 = getelementptr inbounds %struct.hypre_BoxArray_struct, ptr %191, i32 0, i32 0
  %192 = load ptr, ptr %boxes228, align 8, !tbaa !38
  %193 = load i32, ptr %ci, align 4, !tbaa !8
  %idxprom229 = sext i32 %193 to i64
  %arrayidx230 = getelementptr inbounds %struct.hypre_Box_struct, ptr %192, i64 %idxprom229
  store ptr %arrayidx230, ptr %cgrid_box, align 8, !tbaa !4
  %194 = load ptr, ptr %fgrid_cinterface_extents, align 8, !tbaa !4
  %195 = load i32, ptr %var1, align 4, !tbaa !8
  %idxprom231 = sext i32 %195 to i64
  %arrayidx232 = getelementptr inbounds ptr, ptr %194, i64 %idxprom231
  %196 = load ptr, ptr %arrayidx232, align 8, !tbaa !4
  %197 = load i32, ptr %ci, align 4, !tbaa !8
  %idxprom233 = sext i32 %197 to i64
  %arrayidx234 = getelementptr inbounds ptr, ptr %196, i64 %idxprom233
  %198 = load ptr, ptr %arrayidx234, align 8, !tbaa !4
  store ptr %198, ptr %cinterface_arrays, align 8, !tbaa !4
  %199 = load ptr, ptr %smatrix_var, align 8, !tbaa !4
  %data_space = getelementptr inbounds %struct.hypre_StructMatrix_struct, ptr %199, i32 0, i32 5
  %200 = load ptr, ptr %data_space, align 8, !tbaa !51
  %boxes235 = getelementptr inbounds %struct.hypre_BoxArray_struct, ptr %200, i32 0, i32 0
  %201 = load ptr, ptr %boxes235, align 8, !tbaa !38
  %202 = load i32, ptr %ci, align 4, !tbaa !8
  %idxprom236 = sext i32 %202 to i64
  %arrayidx237 = getelementptr inbounds %struct.hypre_Box_struct, ptr %201, i64 %idxprom236
  store ptr %arrayidx237, ptr %A_dbox, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond238

for.cond238:                                      ; preds = %for.inc252, %for.body227
  %203 = load i32, ptr %i, align 4, !tbaa !8
  %204 = load i32, ptr %stencil_size, align 4, !tbaa !8
  %cmp239 = icmp slt i32 %203, %204
  br i1 %cmp239, label %for.body241, label %for.end254

for.body241:                                      ; preds = %for.cond238
  %205 = load ptr, ptr %stencils, align 8, !tbaa !4
  %shape242 = getelementptr inbounds %struct.hypre_StructStencil_struct, ptr %205, i32 0, i32 0
  %206 = load ptr, ptr %shape242, align 8, !tbaa !48
  %207 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom243 = sext i32 %207 to i64
  %arrayidx244 = getelementptr inbounds [3 x i32], ptr %206, i64 %idxprom243
  %arraydecay245 = getelementptr inbounds [3 x i32], ptr %arrayidx244, i64 0, i64 0
  %arraydecay246 = getelementptr inbounds [3 x i32], ptr %stencil_shape_i, i64 0, i64 0
  %call247 = call i32 @hypre_CopyIndex(ptr noundef %arraydecay245, ptr noundef %arraydecay246)
  %208 = load ptr, ptr %smatrix_var, align 8, !tbaa !4
  %209 = load i32, ptr %ci, align 4, !tbaa !8
  %arraydecay248 = getelementptr inbounds [3 x i32], ptr %stencil_shape_i, i64 0, i64 0
  %call249 = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %208, i32 noundef %209, ptr noundef %arraydecay248)
  %210 = load ptr, ptr %a_ptrs, align 8, !tbaa !4
  %211 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom250 = sext i32 %211 to i64
  %arrayidx251 = getelementptr inbounds ptr, ptr %210, i64 %idxprom250
  store ptr %call249, ptr %arrayidx251, align 8, !tbaa !4
  br label %for.inc252

for.inc252:                                       ; preds = %for.body241
  %212 = load i32, ptr %i, align 4, !tbaa !8
  %inc253 = add nsw i32 %212, 1
  store i32 %inc253, ptr %i, align 4, !tbaa !8
  br label %for.cond238, !llvm.loop !53

for.end254:                                       ; preds = %for.cond238
  store i32 0, ptr %fi, align 4, !tbaa !8
  br label %for.cond255

for.cond255:                                      ; preds = %for.inc733, %for.end254
  %213 = load i32, ptr %fi, align 4, !tbaa !8
  %214 = load ptr, ptr %cinterface_arrays, align 8, !tbaa !4
  %size256 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, ptr %214, i32 0, i32 1
  %215 = load i32, ptr %size256, align 8, !tbaa !54
  %cmp257 = icmp slt i32 %213, %215
  br i1 %cmp257, label %for.body259, label %for.end735

for.body259:                                      ; preds = %for.cond255
  %216 = load ptr, ptr %cinterface_arrays, align 8, !tbaa !4
  %box_arrays260 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, ptr %216, i32 0, i32 0
  %217 = load ptr, ptr %box_arrays260, align 8, !tbaa !40
  %218 = load i32, ptr %fi, align 4, !tbaa !8
  %idxprom261 = sext i32 %218 to i64
  %arrayidx262 = getelementptr inbounds ptr, ptr %217, i64 %idxprom261
  %219 = load ptr, ptr %arrayidx262, align 8, !tbaa !4
  store ptr %219, ptr %cinterface_array, align 8, !tbaa !4
  %220 = load ptr, ptr %cinterface_array, align 8, !tbaa !4
  %size263 = getelementptr inbounds %struct.hypre_BoxArray_struct, ptr %220, i32 0, i32 1
  %221 = load i32, ptr %size263, align 8, !tbaa !36
  store i32 %221, ptr %box_array_size, align 4, !tbaa !8
  %222 = load i32, ptr %stencil_size, align 4, !tbaa !8
  store i32 %222, ptr %boxi, align 4, !tbaa !8
  br label %for.cond264

for.cond264:                                      ; preds = %for.inc730, %for.body259
  %223 = load i32, ptr %boxi, align 4, !tbaa !8
  %224 = load i32, ptr %box_array_size, align 4, !tbaa !8
  %cmp265 = icmp slt i32 %223, %224
  br i1 %cmp265, label %for.body267, label %for.end732

for.body267:                                      ; preds = %for.cond264
  %225 = load ptr, ptr %cinterface_array, align 8, !tbaa !4
  %boxes268 = getelementptr inbounds %struct.hypre_BoxArray_struct, ptr %225, i32 0, i32 0
  %226 = load ptr, ptr %boxes268, align 8, !tbaa !38
  %227 = load i32, ptr %boxi, align 4, !tbaa !8
  %idxprom269 = sext i32 %227 to i64
  %arrayidx270 = getelementptr inbounds %struct.hypre_Box_struct, ptr %226, i64 %idxprom269
  store ptr %arrayidx270, ptr %fgrid_cinterface, align 8, !tbaa !4
  %228 = load ptr, ptr %fgrid_cinterface, align 8, !tbaa !4
  %imin271 = getelementptr inbounds %struct.hypre_Box_struct, ptr %228, i32 0, i32 0
  %arraydecay272 = getelementptr inbounds [3 x i32], ptr %imin271, i64 0, i64 0
  %arraydecay273 = getelementptr inbounds [3 x i32], ptr %node_extents, i64 0, i64 0
  %call274 = call i32 @hypre_CopyIndex(ptr noundef %arraydecay272, ptr noundef %arraydecay273)
  %229 = load ptr, ptr %fgrid_cinterface, align 8, !tbaa !4
  %arraydecay275 = getelementptr inbounds [3 x i32], ptr %loop_size, i64 0, i64 0
  %call276 = call i32 @hypre_BoxGetSize(ptr noundef %229, ptr noundef %arraydecay275)
  call void @llvm.lifetime.start.p0(i64 4, ptr %iA) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %hypre__tot) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %hypre__div) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %hypre__mod) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %hypre__block) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %hypre__num_blocks) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %hypre__d) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %hypre__ndim) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %hypre__I) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %hypre__J) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %hypre__IN) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %hypre__JN) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %hypre__i) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %hypre__n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %hypre__ikstart1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %hypre__i0inc1) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr %hypre__sk1) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %hypre__ikinc1) #3
  %230 = load i32, ptr %ndim, align 4, !tbaa !8
  store i32 %230, ptr %hypre__ndim, align 4, !tbaa !8
  %arrayidx277 = getelementptr inbounds [3 x i32], ptr %loop_size, i64 0, i64 0
  %231 = load i32, ptr %arrayidx277, align 4, !tbaa !8
  %arrayidx278 = getelementptr inbounds [4 x i32], ptr %hypre__n, i64 0, i64 0
  store i32 %231, ptr %arrayidx278, align 16, !tbaa !8
  store i32 1, ptr %hypre__tot, align 4, !tbaa !8
  store i32 1, ptr %hypre__d, align 4, !tbaa !8
  br label %for.cond279

for.cond279:                                      ; preds = %for.inc290, %for.body267
  %232 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %233 = load i32, ptr %hypre__ndim, align 4, !tbaa !8
  %cmp280 = icmp slt i32 %232, %233
  br i1 %cmp280, label %for.body282, label %for.end292

for.body282:                                      ; preds = %for.cond279
  %234 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom283 = sext i32 %234 to i64
  %arrayidx284 = getelementptr inbounds [3 x i32], ptr %loop_size, i64 0, i64 %idxprom283
  %235 = load i32, ptr %arrayidx284, align 4, !tbaa !8
  %236 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom285 = sext i32 %236 to i64
  %arrayidx286 = getelementptr inbounds [4 x i32], ptr %hypre__n, i64 0, i64 %idxprom285
  store i32 %235, ptr %arrayidx286, align 4, !tbaa !8
  %237 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom287 = sext i32 %237 to i64
  %arrayidx288 = getelementptr inbounds [4 x i32], ptr %hypre__n, i64 0, i64 %idxprom287
  %238 = load i32, ptr %arrayidx288, align 4, !tbaa !8
  %239 = load i32, ptr %hypre__tot, align 4, !tbaa !8
  %mul289 = mul nsw i32 %239, %238
  store i32 %mul289, ptr %hypre__tot, align 4, !tbaa !8
  br label %for.inc290

for.inc290:                                       ; preds = %for.body282
  %240 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %inc291 = add nsw i32 %240, 1
  store i32 %inc291, ptr %hypre__d, align 4, !tbaa !8
  br label %for.cond279, !llvm.loop !55

for.end292:                                       ; preds = %for.cond279
  %241 = load i32, ptr %hypre__ndim, align 4, !tbaa !8
  %idxprom293 = sext i32 %241 to i64
  %arrayidx294 = getelementptr inbounds [4 x i32], ptr %hypre__n, i64 0, i64 %idxprom293
  store i32 2, ptr %arrayidx294, align 4, !tbaa !8
  store i32 1, ptr %hypre__num_blocks, align 4, !tbaa !8
  %242 = load i32, ptr %hypre__tot, align 4, !tbaa !8
  %243 = load i32, ptr %hypre__num_blocks, align 4, !tbaa !8
  %cmp295 = icmp slt i32 %242, %243
  br i1 %cmp295, label %if.then297, label %if.end298

if.then297:                                       ; preds = %for.end292
  %244 = load i32, ptr %hypre__tot, align 4, !tbaa !8
  store i32 %244, ptr %hypre__num_blocks, align 4, !tbaa !8
  br label %if.end298

if.end298:                                        ; preds = %if.then297, %for.end292
  %245 = load i32, ptr %hypre__num_blocks, align 4, !tbaa !8
  %cmp299 = icmp sgt i32 %245, 0
  br i1 %cmp299, label %if.then301, label %if.end302

if.then301:                                       ; preds = %if.end298
  %246 = load i32, ptr %hypre__tot, align 4, !tbaa !8
  %247 = load i32, ptr %hypre__num_blocks, align 4, !tbaa !8
  %div = sdiv i32 %246, %247
  store i32 %div, ptr %hypre__div, align 4, !tbaa !8
  %248 = load i32, ptr %hypre__tot, align 4, !tbaa !8
  %249 = load i32, ptr %hypre__num_blocks, align 4, !tbaa !8
  %rem = srem i32 %248, %249
  store i32 %rem, ptr %hypre__mod, align 4, !tbaa !8
  br label %if.end302

if.end302:                                        ; preds = %if.then301, %if.end298
  %arrayidx303 = getelementptr inbounds [3 x i32], ptr %stridec, i64 0, i64 0
  %250 = load i32, ptr %arrayidx303, align 4, !tbaa !8
  %arrayidx304 = getelementptr inbounds [3 x i32], ptr %hypre__sk1, i64 0, i64 0
  store i32 %250, ptr %arrayidx304, align 4, !tbaa !8
  %arrayidx305 = getelementptr inbounds [4 x i32], ptr %hypre__ikinc1, i64 0, i64 0
  store i32 0, ptr %arrayidx305, align 16, !tbaa !8
  %251 = load ptr, ptr %A_dbox, align 8, !tbaa !4
  %imax306 = getelementptr inbounds %struct.hypre_Box_struct, ptr %251, i32 0, i32 1
  %arrayidx307 = getelementptr inbounds [3 x i32], ptr %imax306, i64 0, i64 0
  %252 = load i32, ptr %arrayidx307, align 4, !tbaa !8
  %253 = load ptr, ptr %A_dbox, align 8, !tbaa !4
  %imin308 = getelementptr inbounds %struct.hypre_Box_struct, ptr %253, i32 0, i32 0
  %arrayidx309 = getelementptr inbounds [3 x i32], ptr %imin308, i64 0, i64 0
  %254 = load i32, ptr %arrayidx309, align 4, !tbaa !8
  %sub310 = sub nsw i32 %252, %254
  %add311 = add nsw i32 %sub310, 1
  %cmp312 = icmp slt i32 0, %add311
  br i1 %cmp312, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end302
  %255 = load ptr, ptr %A_dbox, align 8, !tbaa !4
  %imax314 = getelementptr inbounds %struct.hypre_Box_struct, ptr %255, i32 0, i32 1
  %arrayidx315 = getelementptr inbounds [3 x i32], ptr %imax314, i64 0, i64 0
  %256 = load i32, ptr %arrayidx315, align 4, !tbaa !8
  %257 = load ptr, ptr %A_dbox, align 8, !tbaa !4
  %imin316 = getelementptr inbounds %struct.hypre_Box_struct, ptr %257, i32 0, i32 0
  %arrayidx317 = getelementptr inbounds [3 x i32], ptr %imin316, i64 0, i64 0
  %258 = load i32, ptr %arrayidx317, align 4, !tbaa !8
  %sub318 = sub nsw i32 %256, %258
  %add319 = add nsw i32 %sub318, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end302
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add319, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %iA, align 4, !tbaa !8
  store i32 1, ptr %hypre__d, align 4, !tbaa !8
  br label %for.cond320

for.cond320:                                      ; preds = %for.inc368, %cond.end
  %259 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %260 = load i32, ptr %hypre__ndim, align 4, !tbaa !8
  %cmp321 = icmp slt i32 %259, %260
  br i1 %cmp321, label %for.body323, label %for.end370

for.body323:                                      ; preds = %for.cond320
  %261 = load i32, ptr %iA, align 4, !tbaa !8
  %262 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom324 = sext i32 %262 to i64
  %arrayidx325 = getelementptr inbounds [3 x i32], ptr %stridec, i64 0, i64 %idxprom324
  %263 = load i32, ptr %arrayidx325, align 4, !tbaa !8
  %mul326 = mul nsw i32 %261, %263
  %264 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom327 = sext i32 %264 to i64
  %arrayidx328 = getelementptr inbounds [3 x i32], ptr %hypre__sk1, i64 0, i64 %idxprom327
  store i32 %mul326, ptr %arrayidx328, align 4, !tbaa !8
  %265 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %sub329 = sub nsw i32 %265, 1
  %idxprom330 = sext i32 %sub329 to i64
  %arrayidx331 = getelementptr inbounds [4 x i32], ptr %hypre__ikinc1, i64 0, i64 %idxprom330
  %266 = load i32, ptr %arrayidx331, align 4, !tbaa !8
  %267 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom332 = sext i32 %267 to i64
  %arrayidx333 = getelementptr inbounds [3 x i32], ptr %hypre__sk1, i64 0, i64 %idxprom332
  %268 = load i32, ptr %arrayidx333, align 4, !tbaa !8
  %add334 = add nsw i32 %266, %268
  %269 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %sub335 = sub nsw i32 %269, 1
  %idxprom336 = sext i32 %sub335 to i64
  %arrayidx337 = getelementptr inbounds [4 x i32], ptr %hypre__n, i64 0, i64 %idxprom336
  %270 = load i32, ptr %arrayidx337, align 4, !tbaa !8
  %271 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %sub338 = sub nsw i32 %271, 1
  %idxprom339 = sext i32 %sub338 to i64
  %arrayidx340 = getelementptr inbounds [3 x i32], ptr %hypre__sk1, i64 0, i64 %idxprom339
  %272 = load i32, ptr %arrayidx340, align 4, !tbaa !8
  %mul341 = mul nsw i32 %270, %272
  %sub342 = sub nsw i32 %add334, %mul341
  %273 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom343 = sext i32 %273 to i64
  %arrayidx344 = getelementptr inbounds [4 x i32], ptr %hypre__ikinc1, i64 0, i64 %idxprom343
  store i32 %sub342, ptr %arrayidx344, align 4, !tbaa !8
  %274 = load ptr, ptr %A_dbox, align 8, !tbaa !4
  %imax345 = getelementptr inbounds %struct.hypre_Box_struct, ptr %274, i32 0, i32 1
  %275 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom346 = sext i32 %275 to i64
  %arrayidx347 = getelementptr inbounds [3 x i32], ptr %imax345, i64 0, i64 %idxprom346
  %276 = load i32, ptr %arrayidx347, align 4, !tbaa !8
  %277 = load ptr, ptr %A_dbox, align 8, !tbaa !4
  %imin348 = getelementptr inbounds %struct.hypre_Box_struct, ptr %277, i32 0, i32 0
  %278 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom349 = sext i32 %278 to i64
  %arrayidx350 = getelementptr inbounds [3 x i32], ptr %imin348, i64 0, i64 %idxprom349
  %279 = load i32, ptr %arrayidx350, align 4, !tbaa !8
  %sub351 = sub nsw i32 %276, %279
  %add352 = add nsw i32 %sub351, 1
  %cmp353 = icmp slt i32 0, %add352
  br i1 %cmp353, label %cond.true355, label %cond.false364

cond.true355:                                     ; preds = %for.body323
  %280 = load ptr, ptr %A_dbox, align 8, !tbaa !4
  %imax356 = getelementptr inbounds %struct.hypre_Box_struct, ptr %280, i32 0, i32 1
  %281 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom357 = sext i32 %281 to i64
  %arrayidx358 = getelementptr inbounds [3 x i32], ptr %imax356, i64 0, i64 %idxprom357
  %282 = load i32, ptr %arrayidx358, align 4, !tbaa !8
  %283 = load ptr, ptr %A_dbox, align 8, !tbaa !4
  %imin359 = getelementptr inbounds %struct.hypre_Box_struct, ptr %283, i32 0, i32 0
  %284 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom360 = sext i32 %284 to i64
  %arrayidx361 = getelementptr inbounds [3 x i32], ptr %imin359, i64 0, i64 %idxprom360
  %285 = load i32, ptr %arrayidx361, align 4, !tbaa !8
  %sub362 = sub nsw i32 %282, %285
  %add363 = add nsw i32 %sub362, 1
  br label %cond.end365

cond.false364:                                    ; preds = %for.body323
  br label %cond.end365

cond.end365:                                      ; preds = %cond.false364, %cond.true355
  %cond366 = phi i32 [ %add363, %cond.true355 ], [ 0, %cond.false364 ]
  %286 = load i32, ptr %iA, align 4, !tbaa !8
  %mul367 = mul nsw i32 %286, %cond366
  store i32 %mul367, ptr %iA, align 4, !tbaa !8
  br label %for.inc368

for.inc368:                                       ; preds = %cond.end365
  %287 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %inc369 = add nsw i32 %287, 1
  store i32 %inc369, ptr %hypre__d, align 4, !tbaa !8
  br label %for.cond320, !llvm.loop !56

for.end370:                                       ; preds = %for.cond320
  %arrayidx371 = getelementptr inbounds [3 x i32], ptr %hypre__sk1, i64 0, i64 0
  %288 = load i32, ptr %arrayidx371, align 4, !tbaa !8
  store i32 %288, ptr %hypre__i0inc1, align 4, !tbaa !8
  %289 = load i32, ptr %hypre__ndim, align 4, !tbaa !8
  %idxprom372 = sext i32 %289 to i64
  %arrayidx373 = getelementptr inbounds [4 x i32], ptr %hypre__ikinc1, i64 0, i64 %idxprom372
  store i32 0, ptr %arrayidx373, align 4, !tbaa !8
  %290 = load ptr, ptr %A_dbox, align 8, !tbaa !4
  %arraydecay374 = getelementptr inbounds [3 x i32], ptr %node_extents, i64 0, i64 0
  %call375 = call i32 @hypre_BoxIndexRank(ptr noundef %290, ptr noundef %arraydecay374)
  store i32 %call375, ptr %hypre__ikstart1, align 4, !tbaa !8
  store i32 1, ptr %hypre__num_blocks, align 4, !tbaa !8
  store i32 0, ptr %hypre__block, align 4, !tbaa !8
  br label %for.cond376

for.cond376:                                      ; preds = %for.inc727, %for.end370
  %291 = load i32, ptr %hypre__block, align 4, !tbaa !8
  %292 = load i32, ptr %hypre__num_blocks, align 4, !tbaa !8
  %cmp377 = icmp slt i32 %291, %292
  br i1 %cmp377, label %for.body379, label %for.end729

for.body379:                                      ; preds = %for.cond376
  %arrayidx380 = getelementptr inbounds [4 x i32], ptr %hypre__n, i64 0, i64 0
  %293 = load i32, ptr %arrayidx380, align 16, !tbaa !8
  store i32 %293, ptr %hypre__IN, align 4, !tbaa !8
  %294 = load i32, ptr %hypre__num_blocks, align 4, !tbaa !8
  %cmp381 = icmp sgt i32 %294, 1
  br i1 %cmp381, label %if.then383, label %if.else

if.then383:                                       ; preds = %for.body379
  %295 = load i32, ptr %hypre__div, align 4, !tbaa !8
  %296 = load i32, ptr %hypre__mod, align 4, !tbaa !8
  %297 = load i32, ptr %hypre__block, align 4, !tbaa !8
  %cmp384 = icmp sgt i32 %296, %297
  %298 = zext i1 %cmp384 to i64
  %cond386 = select i1 %cmp384, i32 1, i32 0
  %add387 = add nsw i32 %295, %cond386
  store i32 %add387, ptr %hypre__JN, align 4, !tbaa !8
  %299 = load i32, ptr %hypre__block, align 4, !tbaa !8
  %300 = load i32, ptr %hypre__div, align 4, !tbaa !8
  %mul388 = mul nsw i32 %299, %300
  %301 = load i32, ptr %hypre__mod, align 4, !tbaa !8
  %302 = load i32, ptr %hypre__block, align 4, !tbaa !8
  %cmp389 = icmp slt i32 %301, %302
  br i1 %cmp389, label %cond.true391, label %cond.false392

cond.true391:                                     ; preds = %if.then383
  %303 = load i32, ptr %hypre__mod, align 4, !tbaa !8
  br label %cond.end393

cond.false392:                                    ; preds = %if.then383
  %304 = load i32, ptr %hypre__block, align 4, !tbaa !8
  br label %cond.end393

cond.end393:                                      ; preds = %cond.false392, %cond.true391
  %cond394 = phi i32 [ %303, %cond.true391 ], [ %304, %cond.false392 ]
  %add395 = add nsw i32 %mul388, %cond394
  store i32 %add395, ptr %hypre__J, align 4, !tbaa !8
  store i32 1, ptr %hypre__d, align 4, !tbaa !8
  br label %for.cond396

for.cond396:                                      ; preds = %for.inc408, %cond.end393
  %305 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %306 = load i32, ptr %hypre__ndim, align 4, !tbaa !8
  %cmp397 = icmp slt i32 %305, %306
  br i1 %cmp397, label %for.body399, label %for.end410

for.body399:                                      ; preds = %for.cond396
  %307 = load i32, ptr %hypre__J, align 4, !tbaa !8
  %308 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom400 = sext i32 %308 to i64
  %arrayidx401 = getelementptr inbounds [4 x i32], ptr %hypre__n, i64 0, i64 %idxprom400
  %309 = load i32, ptr %arrayidx401, align 4, !tbaa !8
  %rem402 = srem i32 %307, %309
  %310 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom403 = sext i32 %310 to i64
  %arrayidx404 = getelementptr inbounds [4 x i32], ptr %hypre__i, i64 0, i64 %idxprom403
  store i32 %rem402, ptr %arrayidx404, align 4, !tbaa !8
  %311 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom405 = sext i32 %311 to i64
  %arrayidx406 = getelementptr inbounds [4 x i32], ptr %hypre__n, i64 0, i64 %idxprom405
  %312 = load i32, ptr %arrayidx406, align 4, !tbaa !8
  %313 = load i32, ptr %hypre__J, align 4, !tbaa !8
  %div407 = sdiv i32 %313, %312
  store i32 %div407, ptr %hypre__J, align 4, !tbaa !8
  br label %for.inc408

for.inc408:                                       ; preds = %for.body399
  %314 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %inc409 = add nsw i32 %314, 1
  store i32 %inc409, ptr %hypre__d, align 4, !tbaa !8
  br label %for.cond396, !llvm.loop !57

for.end410:                                       ; preds = %for.cond396
  br label %if.end420

if.else:                                          ; preds = %for.body379
  %315 = load i32, ptr %hypre__tot, align 4, !tbaa !8
  store i32 %315, ptr %hypre__JN, align 4, !tbaa !8
  store i32 1, ptr %hypre__d, align 4, !tbaa !8
  br label %for.cond411

for.cond411:                                      ; preds = %for.inc417, %if.else
  %316 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %317 = load i32, ptr %hypre__ndim, align 4, !tbaa !8
  %cmp412 = icmp slt i32 %316, %317
  br i1 %cmp412, label %for.body414, label %for.end419

for.body414:                                      ; preds = %for.cond411
  %318 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom415 = sext i32 %318 to i64
  %arrayidx416 = getelementptr inbounds [4 x i32], ptr %hypre__i, i64 0, i64 %idxprom415
  store i32 0, ptr %arrayidx416, align 4, !tbaa !8
  br label %for.inc417

for.inc417:                                       ; preds = %for.body414
  %319 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %inc418 = add nsw i32 %319, 1
  store i32 %inc418, ptr %hypre__d, align 4, !tbaa !8
  br label %for.cond411, !llvm.loop !58

for.end419:                                       ; preds = %for.cond411
  br label %if.end420

if.end420:                                        ; preds = %for.end419, %for.end410
  %320 = load i32, ptr %hypre__ndim, align 4, !tbaa !8
  %idxprom421 = sext i32 %320 to i64
  %arrayidx422 = getelementptr inbounds [4 x i32], ptr %hypre__i, i64 0, i64 %idxprom421
  store i32 0, ptr %arrayidx422, align 4, !tbaa !8
  %321 = load i32, ptr %hypre__ikstart1, align 4, !tbaa !8
  store i32 %321, ptr %iA, align 4, !tbaa !8
  store i32 1, ptr %hypre__d, align 4, !tbaa !8
  br label %for.cond423

for.cond423:                                      ; preds = %for.inc433, %if.end420
  %322 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %323 = load i32, ptr %hypre__ndim, align 4, !tbaa !8
  %cmp424 = icmp slt i32 %322, %323
  br i1 %cmp424, label %for.body426, label %for.end435

for.body426:                                      ; preds = %for.cond423
  %324 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom427 = sext i32 %324 to i64
  %arrayidx428 = getelementptr inbounds [4 x i32], ptr %hypre__i, i64 0, i64 %idxprom427
  %325 = load i32, ptr %arrayidx428, align 4, !tbaa !8
  %326 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom429 = sext i32 %326 to i64
  %arrayidx430 = getelementptr inbounds [3 x i32], ptr %hypre__sk1, i64 0, i64 %idxprom429
  %327 = load i32, ptr %arrayidx430, align 4, !tbaa !8
  %mul431 = mul nsw i32 %325, %327
  %328 = load i32, ptr %iA, align 4, !tbaa !8
  %add432 = add nsw i32 %328, %mul431
  store i32 %add432, ptr %iA, align 4, !tbaa !8
  br label %for.inc433

for.inc433:                                       ; preds = %for.body426
  %329 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %inc434 = add nsw i32 %329, 1
  store i32 %inc434, ptr %hypre__d, align 4, !tbaa !8
  br label %for.cond423, !llvm.loop !59

for.end435:                                       ; preds = %for.cond423
  store i32 0, ptr %hypre__J, align 4, !tbaa !8
  br label %for.cond436

for.cond436:                                      ; preds = %for.inc724, %for.end435
  %330 = load i32, ptr %hypre__J, align 4, !tbaa !8
  %331 = load i32, ptr %hypre__JN, align 4, !tbaa !8
  %cmp437 = icmp slt i32 %330, %331
  br i1 %cmp437, label %for.body439, label %for.end726

for.body439:                                      ; preds = %for.cond436
  store i32 0, ptr %hypre__I, align 4, !tbaa !8
  br label %for.cond440

for.cond440:                                      ; preds = %for.inc700, %for.body439
  %332 = load i32, ptr %hypre__I, align 4, !tbaa !8
  %333 = load i32, ptr %hypre__IN, align 4, !tbaa !8
  %cmp441 = icmp slt i32 %332, %333
  br i1 %cmp441, label %for.body443, label %for.end702

for.body443:                                      ; preds = %for.cond440
  %334 = load i32, ptr %hypre__I, align 4, !tbaa !8
  %arrayidx444 = getelementptr inbounds [3 x i32], ptr %lindex, i64 0, i64 0
  store i32 %334, ptr %arrayidx444, align 4, !tbaa !8
  store i32 1, ptr %hypre__d, align 4, !tbaa !8
  br label %for.cond445

for.cond445:                                      ; preds = %for.inc453, %for.body443
  %335 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %336 = load i32, ptr %hypre__ndim, align 4, !tbaa !8
  %cmp446 = icmp slt i32 %335, %336
  br i1 %cmp446, label %for.body448, label %for.end455

for.body448:                                      ; preds = %for.cond445
  %337 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom449 = sext i32 %337 to i64
  %arrayidx450 = getelementptr inbounds [4 x i32], ptr %hypre__i, i64 0, i64 %idxprom449
  %338 = load i32, ptr %arrayidx450, align 4, !tbaa !8
  %339 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom451 = sext i32 %339 to i64
  %arrayidx452 = getelementptr inbounds [3 x i32], ptr %lindex, i64 0, i64 %idxprom451
  store i32 %338, ptr %arrayidx452, align 4, !tbaa !8
  br label %for.inc453

for.inc453:                                       ; preds = %for.body448
  %340 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %inc454 = add nsw i32 %340, 1
  store i32 %inc454, ptr %hypre__d, align 4, !tbaa !8
  br label %for.cond445, !llvm.loop !60

for.end455:                                       ; preds = %for.cond445
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond456

for.cond456:                                      ; preds = %for.inc473, %for.end455
  %341 = load i32, ptr %i, align 4, !tbaa !8
  %342 = load i32, ptr %stencil_size, align 4, !tbaa !8
  %cmp457 = icmp slt i32 %341, %342
  br i1 %cmp457, label %for.body459, label %for.end475

for.body459:                                      ; preds = %for.cond456
  %343 = load i32, ptr %i, align 4, !tbaa !8
  %344 = load i32, ptr %centre, align 4, !tbaa !8
  %cmp460 = icmp ne i32 %343, %344
  br i1 %cmp460, label %if.then462, label %if.end472

if.then462:                                       ; preds = %for.body459
  %345 = load ptr, ptr %a_ptrs, align 8, !tbaa !4
  %346 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom463 = sext i32 %346 to i64
  %arrayidx464 = getelementptr inbounds ptr, ptr %345, i64 %idxprom463
  %347 = load ptr, ptr %arrayidx464, align 8, !tbaa !4
  %348 = load i32, ptr %iA, align 4, !tbaa !8
  %idxprom465 = sext i32 %348 to i64
  %arrayidx466 = getelementptr inbounds double, ptr %347, i64 %idxprom465
  %349 = load double, ptr %arrayidx466, align 8, !tbaa !61
  %350 = load ptr, ptr %a_ptrs, align 8, !tbaa !4
  %351 = load i32, ptr %centre, align 4, !tbaa !8
  %idxprom467 = sext i32 %351 to i64
  %arrayidx468 = getelementptr inbounds ptr, ptr %350, i64 %idxprom467
  %352 = load ptr, ptr %arrayidx468, align 8, !tbaa !4
  %353 = load i32, ptr %iA, align 4, !tbaa !8
  %idxprom469 = sext i32 %353 to i64
  %arrayidx470 = getelementptr inbounds double, ptr %352, i64 %idxprom469
  %354 = load double, ptr %arrayidx470, align 8, !tbaa !61
  %add471 = fadd double %354, %349
  store double %add471, ptr %arrayidx470, align 8, !tbaa !61
  br label %if.end472

if.end472:                                        ; preds = %if.then462, %for.body459
  br label %for.inc473

for.inc473:                                       ; preds = %if.end472
  %355 = load i32, ptr %i, align 4, !tbaa !8
  %inc474 = add nsw i32 %355, 1
  store i32 %inc474, ptr %i, align 4, !tbaa !8
  br label %for.cond456, !llvm.loop !63

for.end475:                                       ; preds = %for.cond456
  %arrayidx476 = getelementptr inbounds [3 x i32], ptr %node_extents, i64 0, i64 0
  %356 = load i32, ptr %arrayidx476, align 4, !tbaa !8
  %arrayidx477 = getelementptr inbounds [3 x i32], ptr %lindex, i64 0, i64 0
  %357 = load i32, ptr %arrayidx477, align 4, !tbaa !8
  %add478 = add nsw i32 %356, %357
  %arrayidx479 = getelementptr inbounds [3 x i32], ptr %index_temp, i64 0, i64 0
  store i32 %add478, ptr %arrayidx479, align 4, !tbaa !8
  %arrayidx480 = getelementptr inbounds [3 x i32], ptr %node_extents, i64 0, i64 1
  %358 = load i32, ptr %arrayidx480, align 4, !tbaa !8
  %arrayidx481 = getelementptr inbounds [3 x i32], ptr %lindex, i64 0, i64 1
  %359 = load i32, ptr %arrayidx481, align 4, !tbaa !8
  %add482 = add nsw i32 %358, %359
  %arrayidx483 = getelementptr inbounds [3 x i32], ptr %index_temp, i64 0, i64 1
  store i32 %add482, ptr %arrayidx483, align 4, !tbaa !8
  %arrayidx484 = getelementptr inbounds [3 x i32], ptr %node_extents, i64 0, i64 2
  %360 = load i32, ptr %arrayidx484, align 4, !tbaa !8
  %arrayidx485 = getelementptr inbounds [3 x i32], ptr %lindex, i64 0, i64 2
  %361 = load i32, ptr %arrayidx485, align 4, !tbaa !8
  %add486 = add nsw i32 %360, %361
  %arrayidx487 = getelementptr inbounds [3 x i32], ptr %index_temp, i64 0, i64 2
  store i32 %add486, ptr %arrayidx487, align 4, !tbaa !8
  %362 = load ptr, ptr %grid, align 8, !tbaa !4
  %363 = load i32, ptr %part_crse, align 4, !tbaa !8
  %arraydecay488 = getelementptr inbounds [3 x i32], ptr %index_temp, i64 0, i64 0
  %364 = load i32, ptr %var1, align 4, !tbaa !8
  %call489 = call i32 @hypre_SStructGridFindBoxManEntry(ptr noundef %362, i32 noundef %363, ptr noundef %arraydecay488, i32 noundef %364, ptr noundef %boxman_entry)
  %365 = load ptr, ptr %boxman_entry, align 8, !tbaa !4
  %arraydecay490 = getelementptr inbounds [3 x i32], ptr %index_temp, i64 0, i64 0
  %366 = load i32, ptr %matrix_type, align 4, !tbaa !8
  %call491 = call i32 @hypre_SStructBoxManEntryGetGlobalRank(ptr noundef %365, ptr noundef %arraydecay490, ptr noundef %rank, i32 noundef %366)
  %367 = load i32, ptr %nUventries, align 4, !tbaa !8
  %cmp492 = icmp sgt i32 %367, 0
  br i1 %cmp492, label %if.then494, label %if.end508

if.then494:                                       ; preds = %for.end475
  %368 = load i32, ptr %falseV, align 4, !tbaa !8
  store i32 %368, ptr %found, align 4, !tbaa !8
  %369 = load i32, ptr %rank, align 4, !tbaa !8
  %370 = load i32, ptr %startrank, align 4, !tbaa !8
  %sub495 = sub nsw i32 %369, %370
  %371 = load ptr, ptr %graph, align 8, !tbaa !4
  %iUventries = getelementptr inbounds %struct.hypre_SStructGraph_struct, ptr %371, i32 0, i32 12
  %372 = load ptr, ptr %iUventries, align 8, !tbaa !64
  %arrayidx496 = getelementptr inbounds i32, ptr %372, i64 0
  %373 = load i32, ptr %arrayidx496, align 4, !tbaa !8
  %cmp497 = icmp sge i32 %sub495, %373
  br i1 %cmp497, label %land.lhs.true, label %if.end507

land.lhs.true:                                    ; preds = %if.then494
  %374 = load i32, ptr %rank, align 4, !tbaa !8
  %375 = load i32, ptr %startrank, align 4, !tbaa !8
  %sub499 = sub nsw i32 %374, %375
  %376 = load ptr, ptr %graph, align 8, !tbaa !4
  %iUventries500 = getelementptr inbounds %struct.hypre_SStructGraph_struct, ptr %376, i32 0, i32 12
  %377 = load ptr, ptr %iUventries500, align 8, !tbaa !64
  %378 = load i32, ptr %nUventries, align 4, !tbaa !8
  %sub501 = sub nsw i32 %378, 1
  %idxprom502 = sext i32 %sub501 to i64
  %arrayidx503 = getelementptr inbounds i32, ptr %377, i64 %idxprom502
  %379 = load i32, ptr %arrayidx503, align 4, !tbaa !8
  %cmp504 = icmp sle i32 %sub499, %379
  br i1 %cmp504, label %if.then506, label %if.end507

if.then506:                                       ; preds = %land.lhs.true
  %380 = load i32, ptr %trueV, align 4, !tbaa !8
  store i32 %380, ptr %found, align 4, !tbaa !8
  br label %if.end507

if.end507:                                        ; preds = %if.then506, %land.lhs.true, %if.then494
  br label %if.end508

if.end508:                                        ; preds = %if.end507, %for.end475
  %381 = load i32, ptr %nUventries, align 4, !tbaa !8
  %cmp509 = icmp sgt i32 %381, 0
  br i1 %cmp509, label %land.lhs.true511, label %if.end698

land.lhs.true511:                                 ; preds = %if.end508
  %382 = load i32, ptr %found, align 4, !tbaa !8
  %383 = load i32, ptr %trueV, align 4, !tbaa !8
  %cmp512 = icmp eq i32 %382, %383
  br i1 %cmp512, label %if.then514, label %if.end698

if.then514:                                       ; preds = %land.lhs.true511
  %384 = load ptr, ptr %graph, align 8, !tbaa !4
  %Uventries = getelementptr inbounds %struct.hypre_SStructGraph_struct, ptr %384, i32 0, i32 13
  %385 = load ptr, ptr %Uventries, align 8, !tbaa !65
  %386 = load i32, ptr %rank, align 4, !tbaa !8
  %387 = load i32, ptr %startrank, align 4, !tbaa !8
  %sub515 = sub nsw i32 %386, %387
  %idxprom516 = sext i32 %sub515 to i64
  %arrayidx517 = getelementptr inbounds ptr, ptr %385, i64 %idxprom516
  %388 = load ptr, ptr %arrayidx517, align 8, !tbaa !4
  store ptr %388, ptr %Uventry, align 8, !tbaa !4
  %389 = load ptr, ptr %Uventry, align 8, !tbaa !4
  %cmp518 = icmp ne ptr %389, null
  br i1 %cmp518, label %if.then520, label %if.end697

if.then520:                                       ; preds = %if.then514
  %390 = load ptr, ptr %Uventry, align 8, !tbaa !4
  %nUentries521 = getelementptr inbounds %struct.hypre_SStructUVEntry, ptr %390, i32 0, i32 4
  %391 = load i32, ptr %nUentries521, align 8, !tbaa !66
  store i32 %391, ptr %nUentries, align 4, !tbaa !8
  %392 = load i32, ptr %nUentries, align 4, !tbaa !8
  %conv522 = sext i32 %392 to i64
  %call523 = call ptr @hypre_CAlloc(i64 noundef %conv522, i64 noundef 4, i32 noundef 0)
  store ptr %call523, ptr %temp1, align 8, !tbaa !4
  store i32 0, ptr %cnt1, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond524

for.cond524:                                      ; preds = %for.inc543, %if.then520
  %393 = load i32, ptr %i, align 4, !tbaa !8
  %394 = load i32, ptr %nUentries, align 4, !tbaa !8
  %cmp525 = icmp slt i32 %393, %394
  br i1 %cmp525, label %for.body527, label %for.end545

for.body527:                                      ; preds = %for.cond524
  %395 = load ptr, ptr %Uventry, align 8, !tbaa !4
  %Uentries = getelementptr inbounds %struct.hypre_SStructUVEntry, ptr %395, i32 0, i32 5
  %396 = load ptr, ptr %Uentries, align 8, !tbaa !68
  %397 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom528 = sext i32 %397 to i64
  %arrayidx529 = getelementptr inbounds %struct.hypre_SStructUEntry, ptr %396, i64 %idxprom528
  %to_part = getelementptr inbounds %struct.hypre_SStructUEntry, ptr %arrayidx529, i32 0, i32 0
  %398 = load i32, ptr %to_part, align 4, !tbaa !69
  %399 = load i32, ptr %part_fine, align 4, !tbaa !8
  %cmp530 = icmp eq i32 %398, %399
  br i1 %cmp530, label %land.lhs.true532, label %if.end542

land.lhs.true532:                                 ; preds = %for.body527
  %400 = load ptr, ptr %Uventry, align 8, !tbaa !4
  %Uentries533 = getelementptr inbounds %struct.hypre_SStructUVEntry, ptr %400, i32 0, i32 5
  %401 = load ptr, ptr %Uentries533, align 8, !tbaa !68
  %402 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom534 = sext i32 %402 to i64
  %arrayidx535 = getelementptr inbounds %struct.hypre_SStructUEntry, ptr %401, i64 %idxprom534
  %to_var = getelementptr inbounds %struct.hypre_SStructUEntry, ptr %arrayidx535, i32 0, i32 2
  %403 = load i32, ptr %to_var, align 4, !tbaa !71
  %404 = load i32, ptr %var1, align 4, !tbaa !8
  %cmp536 = icmp eq i32 %403, %404
  br i1 %cmp536, label %if.then538, label %if.end542

if.then538:                                       ; preds = %land.lhs.true532
  %405 = load i32, ptr %i, align 4, !tbaa !8
  %406 = load ptr, ptr %temp1, align 8, !tbaa !4
  %407 = load i32, ptr %cnt1, align 4, !tbaa !8
  %inc539 = add nsw i32 %407, 1
  store i32 %inc539, ptr %cnt1, align 4, !tbaa !8
  %idxprom540 = sext i32 %407 to i64
  %arrayidx541 = getelementptr inbounds i32, ptr %406, i64 %idxprom540
  store i32 %405, ptr %arrayidx541, align 4, !tbaa !8
  br label %if.end542

if.end542:                                        ; preds = %if.then538, %land.lhs.true532, %for.body527
  br label %for.inc543

for.inc543:                                       ; preds = %if.end542
  %408 = load i32, ptr %i, align 4, !tbaa !8
  %inc544 = add nsw i32 %408, 1
  store i32 %inc544, ptr %i, align 4, !tbaa !8
  br label %for.cond524, !llvm.loop !72

for.end545:                                       ; preds = %for.cond524
  %409 = load i32, ptr %cnt1, align 4, !tbaa !8
  %conv546 = sext i32 %409 to i64
  %mul547 = mul i64 4, %conv546
  %call548 = call ptr @hypre_MAlloc(i64 noundef %mul547, i32 noundef 0)
  store ptr %call548, ptr %ncols, align 8, !tbaa !4
  %410 = load i32, ptr %cnt1, align 4, !tbaa !8
  %conv549 = sext i32 %410 to i64
  %mul550 = mul i64 4, %conv549
  %call551 = call ptr @hypre_MAlloc(i64 noundef %mul550, i32 noundef 0)
  store ptr %call551, ptr %rows, align 8, !tbaa !4
  %411 = load i32, ptr %cnt1, align 4, !tbaa !8
  %conv552 = sext i32 %411 to i64
  %mul553 = mul i64 4, %conv552
  %call554 = call ptr @hypre_MAlloc(i64 noundef %mul553, i32 noundef 0)
  store ptr %call554, ptr %cols, align 8, !tbaa !4
  %412 = load i32, ptr %cnt1, align 4, !tbaa !8
  %conv555 = sext i32 %412 to i64
  %mul556 = mul i64 4, %conv555
  %call557 = call ptr @hypre_MAlloc(i64 noundef %mul556, i32 noundef 0)
  store ptr %call557, ptr %temp2, align 8, !tbaa !4
  %413 = load i32, ptr %cnt1, align 4, !tbaa !8
  %conv558 = sext i32 %413 to i64
  %call559 = call ptr @hypre_CAlloc(i64 noundef %conv558, i64 noundef 8, i32 noundef 0)
  store ptr %call559, ptr %vals, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond560

for.cond560:                                      ; preds = %for.inc631, %for.end545
  %414 = load i32, ptr %i, align 4, !tbaa !8
  %415 = load i32, ptr %cnt1, align 4, !tbaa !8
  %cmp561 = icmp slt i32 %414, %415
  br i1 %cmp561, label %for.body563, label %for.end633

for.body563:                                      ; preds = %for.cond560
  %416 = load ptr, ptr %ncols, align 8, !tbaa !4
  %417 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom564 = sext i32 %417 to i64
  %arrayidx565 = getelementptr inbounds i32, ptr %416, i64 %idxprom564
  store i32 1, ptr %arrayidx565, align 4, !tbaa !8
  %418 = load i32, ptr %rank, align 4, !tbaa !8
  %419 = load ptr, ptr %rows, align 8, !tbaa !4
  %420 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom566 = sext i32 %420 to i64
  %arrayidx567 = getelementptr inbounds i32, ptr %419, i64 %idxprom566
  store i32 %418, ptr %arrayidx567, align 4, !tbaa !8
  %421 = load ptr, ptr %Uventry, align 8, !tbaa !4
  %Uentries568 = getelementptr inbounds %struct.hypre_SStructUVEntry, ptr %421, i32 0, i32 5
  %422 = load ptr, ptr %Uentries568, align 8, !tbaa !68
  %423 = load ptr, ptr %temp1, align 8, !tbaa !4
  %424 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom569 = sext i32 %424 to i64
  %arrayidx570 = getelementptr inbounds i32, ptr %423, i64 %idxprom569
  %425 = load i32, ptr %arrayidx570, align 4, !tbaa !8
  %idxprom571 = sext i32 %425 to i64
  %arrayidx572 = getelementptr inbounds %struct.hypre_SStructUEntry, ptr %422, i64 %idxprom571
  %to_rank = getelementptr inbounds %struct.hypre_SStructUEntry, ptr %arrayidx572, i32 0, i32 5
  %426 = load i32, ptr %to_rank, align 4, !tbaa !73
  %427 = load ptr, ptr %cols, align 8, !tbaa !4
  %428 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom573 = sext i32 %428 to i64
  %arrayidx574 = getelementptr inbounds i32, ptr %427, i64 %idxprom573
  store i32 %426, ptr %arrayidx574, align 4, !tbaa !8
  %429 = load ptr, ptr %Uventry, align 8, !tbaa !4
  %Uentries575 = getelementptr inbounds %struct.hypre_SStructUVEntry, ptr %429, i32 0, i32 5
  %430 = load ptr, ptr %Uentries575, align 8, !tbaa !68
  %431 = load ptr, ptr %temp1, align 8, !tbaa !4
  %432 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom576 = sext i32 %432 to i64
  %arrayidx577 = getelementptr inbounds i32, ptr %431, i64 %idxprom576
  %433 = load i32, ptr %arrayidx577, align 4, !tbaa !8
  %idxprom578 = sext i32 %433 to i64
  %arrayidx579 = getelementptr inbounds %struct.hypre_SStructUEntry, ptr %430, i64 %idxprom578
  %to_index = getelementptr inbounds %struct.hypre_SStructUEntry, ptr %arrayidx579, i32 0, i32 1
  %arraydecay580 = getelementptr inbounds [3 x i32], ptr %to_index, i64 0, i64 0
  %arraydecay581 = getelementptr inbounds [3 x i32], ptr %zero_index, i64 0, i64 0
  %arraydecay582 = getelementptr inbounds [3 x i32], ptr %stridef, i64 0, i64 0
  %arraydecay583 = getelementptr inbounds [3 x i32], ptr %index2, i64 0, i64 0
  %call584 = call i32 @hypre_StructMapFineToCoarse(ptr noundef %arraydecay580, ptr noundef %arraydecay581, ptr noundef %arraydecay582, ptr noundef %arraydecay583)
  %arraydecay585 = getelementptr inbounds [3 x i32], ptr %index2, i64 0, i64 0
  %arraydecay586 = getelementptr inbounds [3 x i32], ptr %index_temp, i64 0, i64 0
  %434 = load i32, ptr %ndim, align 4, !tbaa !8
  %arraydecay587 = getelementptr inbounds [3 x i32], ptr %index1, i64 0, i64 0
  %call588 = call i32 @hypre_SubtractIndexes(ptr noundef %arraydecay585, ptr noundef %arraydecay586, i32 noundef %434, ptr noundef %arraydecay587)
  call void @llvm.lifetime.start.p0(i64 4, ptr %ii589) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %jj590) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %kk591) #3
  %arrayidx592 = getelementptr inbounds [3 x i32], ptr %index1, i64 0, i64 0
  %435 = load i32, ptr %arrayidx592, align 4, !tbaa !8
  store i32 %435, ptr %ii589, align 4, !tbaa !8
  %arrayidx593 = getelementptr inbounds [3 x i32], ptr %index1, i64 0, i64 1
  %436 = load i32, ptr %arrayidx593, align 4, !tbaa !8
  store i32 %436, ptr %jj590, align 4, !tbaa !8
  %arrayidx594 = getelementptr inbounds [3 x i32], ptr %index1, i64 0, i64 2
  %437 = load i32, ptr %arrayidx594, align 4, !tbaa !8
  store i32 %437, ptr %kk591, align 4, !tbaa !8
  %438 = load i32, ptr %ii589, align 4, !tbaa !8
  %cmp595 = icmp eq i32 %438, -1
  br i1 %cmp595, label %if.then597, label %if.end598

if.then597:                                       ; preds = %for.body563
  store i32 2, ptr %ii589, align 4, !tbaa !8
  br label %if.end598

if.end598:                                        ; preds = %if.then597, %for.body563
  %439 = load i32, ptr %jj590, align 4, !tbaa !8
  %cmp599 = icmp eq i32 %439, -1
  br i1 %cmp599, label %if.then601, label %if.end602

if.then601:                                       ; preds = %if.end598
  store i32 2, ptr %jj590, align 4, !tbaa !8
  br label %if.end602

if.end602:                                        ; preds = %if.then601, %if.end598
  %440 = load i32, ptr %kk591, align 4, !tbaa !8
  %cmp603 = icmp eq i32 %440, -1
  br i1 %cmp603, label %if.then605, label %if.end606

if.then605:                                       ; preds = %if.end602
  store i32 2, ptr %kk591, align 4, !tbaa !8
  br label %if.end606

if.end606:                                        ; preds = %if.then605, %if.end602
  %441 = load i32, ptr %ii589, align 4, !tbaa !8
  %442 = load i32, ptr %jj590, align 4, !tbaa !8
  %mul607 = mul nsw i32 3, %442
  %add608 = add nsw i32 %441, %mul607
  %443 = load i32, ptr %kk591, align 4, !tbaa !8
  %mul609 = mul nsw i32 9, %443
  %add610 = add nsw i32 %add608, %mul609
  %444 = load ptr, ptr %temp2, align 8, !tbaa !4
  %445 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom611 = sext i32 %445 to i64
  %arrayidx612 = getelementptr inbounds i32, ptr %444, i64 %idxprom611
  store i32 %add610, ptr %arrayidx612, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %kk591) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %jj590) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ii589) #3
  %446 = load ptr, ptr %temp2, align 8, !tbaa !4
  %447 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom613 = sext i32 %447 to i64
  %arrayidx614 = getelementptr inbounds i32, ptr %446, i64 %idxprom613
  %448 = load i32, ptr %arrayidx614, align 4, !tbaa !8
  %449 = load i32, ptr %max_stencil_size, align 4, !tbaa !8
  %cmp615 = icmp slt i32 %448, %449
  br i1 %cmp615, label %if.then617, label %if.end630

if.then617:                                       ; preds = %if.end606
  %450 = load ptr, ptr %rank_stencils, align 8, !tbaa !4
  %451 = load ptr, ptr %temp2, align 8, !tbaa !4
  %452 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom618 = sext i32 %452 to i64
  %arrayidx619 = getelementptr inbounds i32, ptr %451, i64 %idxprom618
  %453 = load i32, ptr %arrayidx619, align 4, !tbaa !8
  %idxprom620 = sext i32 %453 to i64
  %arrayidx621 = getelementptr inbounds i32, ptr %450, i64 %idxprom620
  %454 = load i32, ptr %arrayidx621, align 4, !tbaa !8
  store i32 %454, ptr %j, align 4, !tbaa !8
  %455 = load i32, ptr %j, align 4, !tbaa !8
  %cmp622 = icmp sge i32 %455, 0
  br i1 %cmp622, label %if.then624, label %if.end629

if.then624:                                       ; preds = %if.then617
  %456 = load ptr, ptr %a_ptrs, align 8, !tbaa !4
  %457 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom625 = sext i32 %457 to i64
  %arrayidx626 = getelementptr inbounds ptr, ptr %456, i64 %idxprom625
  %458 = load ptr, ptr %arrayidx626, align 8, !tbaa !4
  %459 = load i32, ptr %iA, align 4, !tbaa !8
  %idxprom627 = sext i32 %459 to i64
  %arrayidx628 = getelementptr inbounds double, ptr %458, i64 %idxprom627
  store double 0.000000e+00, ptr %arrayidx628, align 8, !tbaa !61
  br label %if.end629

if.end629:                                        ; preds = %if.then624, %if.then617
  br label %if.end630

if.end630:                                        ; preds = %if.end629, %if.end606
  br label %for.inc631

for.inc631:                                       ; preds = %if.end630
  %460 = load i32, ptr %i, align 4, !tbaa !8
  %inc632 = add nsw i32 %460, 1
  store i32 %inc632, ptr %i, align 4, !tbaa !8
  br label %for.cond560, !llvm.loop !74

for.end633:                                       ; preds = %for.cond560
  %461 = load ptr, ptr %temp1, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %461, i32 noundef 0)
  store ptr null, ptr %temp1, align 8, !tbaa !4
  %462 = load ptr, ptr %ij_A, align 8, !tbaa !4
  %463 = load i32, ptr %cnt1, align 4, !tbaa !8
  %464 = load ptr, ptr %ncols, align 8, !tbaa !4
  %465 = load ptr, ptr %rows, align 8, !tbaa !4
  %466 = load ptr, ptr %cols, align 8, !tbaa !4
  %467 = load ptr, ptr %vals, align 8, !tbaa !4
  %call634 = call i32 @HYPRE_IJMatrixGetValues(ptr noundef %462, i32 noundef %463, ptr noundef %464, ptr noundef %465, ptr noundef %466, ptr noundef %467)
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond635

for.cond635:                                      ; preds = %for.inc646, %for.end633
  %468 = load i32, ptr %i, align 4, !tbaa !8
  %469 = load i32, ptr %cnt1, align 4, !tbaa !8
  %cmp636 = icmp slt i32 %468, %469
  br i1 %cmp636, label %for.body638, label %for.end648

for.body638:                                      ; preds = %for.cond635
  %470 = load ptr, ptr %vals, align 8, !tbaa !4
  %471 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom639 = sext i32 %471 to i64
  %arrayidx640 = getelementptr inbounds double, ptr %470, i64 %idxprom639
  %472 = load double, ptr %arrayidx640, align 8, !tbaa !61
  %473 = load ptr, ptr %a_ptrs, align 8, !tbaa !4
  %474 = load i32, ptr %centre, align 4, !tbaa !8
  %idxprom641 = sext i32 %474 to i64
  %arrayidx642 = getelementptr inbounds ptr, ptr %473, i64 %idxprom641
  %475 = load ptr, ptr %arrayidx642, align 8, !tbaa !4
  %476 = load i32, ptr %iA, align 4, !tbaa !8
  %idxprom643 = sext i32 %476 to i64
  %arrayidx644 = getelementptr inbounds double, ptr %475, i64 %idxprom643
  %477 = load double, ptr %arrayidx644, align 8, !tbaa !61
  %add645 = fadd double %477, %472
  store double %add645, ptr %arrayidx644, align 8, !tbaa !61
  br label %for.inc646

for.inc646:                                       ; preds = %for.body638
  %478 = load i32, ptr %i, align 4, !tbaa !8
  %inc647 = add nsw i32 %478, 1
  store i32 %inc647, ptr %i, align 4, !tbaa !8
  br label %for.cond635, !llvm.loop !75

for.end648:                                       ; preds = %for.cond635
  %479 = load ptr, ptr %ncols, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %479, i32 noundef 0)
  store ptr null, ptr %ncols, align 8, !tbaa !4
  %480 = load ptr, ptr %rows, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %480, i32 noundef 0)
  store ptr null, ptr %rows, align 8, !tbaa !4
  %481 = load ptr, ptr %cols, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %481, i32 noundef 0)
  store ptr null, ptr %cols, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond649

for.cond649:                                      ; preds = %for.inc674, %for.end648
  %482 = load i32, ptr %i, align 4, !tbaa !8
  %483 = load i32, ptr %cnt1, align 4, !tbaa !8
  %cmp650 = icmp slt i32 %482, %483
  br i1 %cmp650, label %for.body652, label %for.end676

for.body652:                                      ; preds = %for.cond649
  %484 = load ptr, ptr %temp2, align 8, !tbaa !4
  %485 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom653 = sext i32 %485 to i64
  %arrayidx654 = getelementptr inbounds i32, ptr %484, i64 %idxprom653
  %486 = load i32, ptr %arrayidx654, align 4, !tbaa !8
  %487 = load i32, ptr %max_stencil_size, align 4, !tbaa !8
  %cmp655 = icmp slt i32 %486, %487
  br i1 %cmp655, label %if.then657, label %if.end673

if.then657:                                       ; preds = %for.body652
  %488 = load ptr, ptr %rank_stencils, align 8, !tbaa !4
  %489 = load ptr, ptr %temp2, align 8, !tbaa !4
  %490 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom658 = sext i32 %490 to i64
  %arrayidx659 = getelementptr inbounds i32, ptr %489, i64 %idxprom658
  %491 = load i32, ptr %arrayidx659, align 4, !tbaa !8
  %idxprom660 = sext i32 %491 to i64
  %arrayidx661 = getelementptr inbounds i32, ptr %488, i64 %idxprom660
  %492 = load i32, ptr %arrayidx661, align 4, !tbaa !8
  store i32 %492, ptr %j, align 4, !tbaa !8
  %493 = load i32, ptr %j, align 4, !tbaa !8
  %cmp662 = icmp sge i32 %493, 0
  br i1 %cmp662, label %if.then664, label %if.end672

if.then664:                                       ; preds = %if.then657
  %494 = load ptr, ptr %vals, align 8, !tbaa !4
  %495 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom665 = sext i32 %495 to i64
  %arrayidx666 = getelementptr inbounds double, ptr %494, i64 %idxprom665
  %496 = load double, ptr %arrayidx666, align 8, !tbaa !61
  %497 = load ptr, ptr %a_ptrs, align 8, !tbaa !4
  %498 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom667 = sext i32 %498 to i64
  %arrayidx668 = getelementptr inbounds ptr, ptr %497, i64 %idxprom667
  %499 = load ptr, ptr %arrayidx668, align 8, !tbaa !4
  %500 = load i32, ptr %iA, align 4, !tbaa !8
  %idxprom669 = sext i32 %500 to i64
  %arrayidx670 = getelementptr inbounds double, ptr %499, i64 %idxprom669
  %501 = load double, ptr %arrayidx670, align 8, !tbaa !61
  %add671 = fadd double %501, %496
  store double %add671, ptr %arrayidx670, align 8, !tbaa !61
  br label %if.end672

if.end672:                                        ; preds = %if.then664, %if.then657
  br label %if.end673

if.end673:                                        ; preds = %if.end672, %for.body652
  br label %for.inc674

for.inc674:                                       ; preds = %if.end673
  %502 = load i32, ptr %i, align 4, !tbaa !8
  %inc675 = add nsw i32 %502, 1
  store i32 %inc675, ptr %i, align 4, !tbaa !8
  br label %for.cond649, !llvm.loop !76

for.end676:                                       ; preds = %for.cond649
  %503 = load ptr, ptr %vals, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %503, i32 noundef 0)
  store ptr null, ptr %vals, align 8, !tbaa !4
  %504 = load ptr, ptr %temp2, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %504, i32 noundef 0)
  store ptr null, ptr %temp2, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond677

for.cond677:                                      ; preds = %for.inc694, %for.end676
  %505 = load i32, ptr %i, align 4, !tbaa !8
  %506 = load i32, ptr %stencil_size, align 4, !tbaa !8
  %cmp678 = icmp slt i32 %505, %506
  br i1 %cmp678, label %for.body680, label %for.end696

for.body680:                                      ; preds = %for.cond677
  %507 = load i32, ptr %i, align 4, !tbaa !8
  %508 = load i32, ptr %centre, align 4, !tbaa !8
  %cmp681 = icmp ne i32 %507, %508
  br i1 %cmp681, label %if.then683, label %if.end693

if.then683:                                       ; preds = %for.body680
  %509 = load ptr, ptr %a_ptrs, align 8, !tbaa !4
  %510 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom684 = sext i32 %510 to i64
  %arrayidx685 = getelementptr inbounds ptr, ptr %509, i64 %idxprom684
  %511 = load ptr, ptr %arrayidx685, align 8, !tbaa !4
  %512 = load i32, ptr %iA, align 4, !tbaa !8
  %idxprom686 = sext i32 %512 to i64
  %arrayidx687 = getelementptr inbounds double, ptr %511, i64 %idxprom686
  %513 = load double, ptr %arrayidx687, align 8, !tbaa !61
  %514 = load ptr, ptr %a_ptrs, align 8, !tbaa !4
  %515 = load i32, ptr %centre, align 4, !tbaa !8
  %idxprom688 = sext i32 %515 to i64
  %arrayidx689 = getelementptr inbounds ptr, ptr %514, i64 %idxprom688
  %516 = load ptr, ptr %arrayidx689, align 8, !tbaa !4
  %517 = load i32, ptr %iA, align 4, !tbaa !8
  %idxprom690 = sext i32 %517 to i64
  %arrayidx691 = getelementptr inbounds double, ptr %516, i64 %idxprom690
  %518 = load double, ptr %arrayidx691, align 8, !tbaa !61
  %sub692 = fsub double %518, %513
  store double %sub692, ptr %arrayidx691, align 8, !tbaa !61
  br label %if.end693

if.end693:                                        ; preds = %if.then683, %for.body680
  br label %for.inc694

for.inc694:                                       ; preds = %if.end693
  %519 = load i32, ptr %i, align 4, !tbaa !8
  %inc695 = add nsw i32 %519, 1
  store i32 %inc695, ptr %i, align 4, !tbaa !8
  br label %for.cond677, !llvm.loop !77

for.end696:                                       ; preds = %for.cond677
  br label %if.end697

if.end697:                                        ; preds = %for.end696, %if.then514
  br label %if.end698

if.end698:                                        ; preds = %if.end697, %land.lhs.true511, %if.end508
  %520 = load i32, ptr %hypre__i0inc1, align 4, !tbaa !8
  %521 = load i32, ptr %iA, align 4, !tbaa !8
  %add699 = add nsw i32 %521, %520
  store i32 %add699, ptr %iA, align 4, !tbaa !8
  br label %for.inc700

for.inc700:                                       ; preds = %if.end698
  %522 = load i32, ptr %hypre__I, align 4, !tbaa !8
  %inc701 = add nsw i32 %522, 1
  store i32 %inc701, ptr %hypre__I, align 4, !tbaa !8
  br label %for.cond440, !llvm.loop !78

for.end702:                                       ; preds = %for.cond440
  store i32 1, ptr %hypre__d, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end702
  %523 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom703 = sext i32 %523 to i64
  %arrayidx704 = getelementptr inbounds [4 x i32], ptr %hypre__i, i64 0, i64 %idxprom703
  %524 = load i32, ptr %arrayidx704, align 4, !tbaa !8
  %add705 = add nsw i32 %524, 2
  %525 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom706 = sext i32 %525 to i64
  %arrayidx707 = getelementptr inbounds [4 x i32], ptr %hypre__n, i64 0, i64 %idxprom706
  %526 = load i32, ptr %arrayidx707, align 4, !tbaa !8
  %cmp708 = icmp sgt i32 %add705, %526
  br i1 %cmp708, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %527 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %inc710 = add nsw i32 %527, 1
  store i32 %inc710, ptr %hypre__d, align 4, !tbaa !8
  br label %while.cond, !llvm.loop !79

while.end:                                        ; preds = %while.cond
  %528 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom711 = sext i32 %528 to i64
  %arrayidx712 = getelementptr inbounds [4 x i32], ptr %hypre__ikinc1, i64 0, i64 %idxprom711
  %529 = load i32, ptr %arrayidx712, align 4, !tbaa !8
  %530 = load i32, ptr %iA, align 4, !tbaa !8
  %add713 = add nsw i32 %530, %529
  store i32 %add713, ptr %iA, align 4, !tbaa !8
  %531 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom714 = sext i32 %531 to i64
  %arrayidx715 = getelementptr inbounds [4 x i32], ptr %hypre__i, i64 0, i64 %idxprom714
  %532 = load i32, ptr %arrayidx715, align 4, !tbaa !8
  %inc716 = add nsw i32 %532, 1
  store i32 %inc716, ptr %arrayidx715, align 4, !tbaa !8
  br label %while.cond717

while.cond717:                                    ; preds = %while.body720, %while.end
  %533 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %cmp718 = icmp sgt i32 %533, 1
  br i1 %cmp718, label %while.body720, label %while.end723

while.body720:                                    ; preds = %while.cond717
  %534 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %dec = add nsw i32 %534, -1
  store i32 %dec, ptr %hypre__d, align 4, !tbaa !8
  %535 = load i32, ptr %hypre__d, align 4, !tbaa !8
  %idxprom721 = sext i32 %535 to i64
  %arrayidx722 = getelementptr inbounds [4 x i32], ptr %hypre__i, i64 0, i64 %idxprom721
  store i32 0, ptr %arrayidx722, align 4, !tbaa !8
  br label %while.cond717, !llvm.loop !80

while.end723:                                     ; preds = %while.cond717
  br label %for.inc724

for.inc724:                                       ; preds = %while.end723
  %536 = load i32, ptr %hypre__J, align 4, !tbaa !8
  %inc725 = add nsw i32 %536, 1
  store i32 %inc725, ptr %hypre__J, align 4, !tbaa !8
  br label %for.cond436, !llvm.loop !81

for.end726:                                       ; preds = %for.cond436
  br label %for.inc727

for.inc727:                                       ; preds = %for.end726
  %537 = load i32, ptr %hypre__block, align 4, !tbaa !8
  %inc728 = add nsw i32 %537, 1
  store i32 %inc728, ptr %hypre__block, align 4, !tbaa !8
  br label %for.cond376, !llvm.loop !82

for.end729:                                       ; preds = %for.cond376
  call void @llvm.lifetime.end.p0(i64 16, ptr %hypre__ikinc1) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr %hypre__sk1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %hypre__i0inc1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %hypre__ikstart1) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %hypre__n) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %hypre__i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %hypre__JN) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %hypre__IN) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %hypre__J) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %hypre__I) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %hypre__ndim) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %hypre__d) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %hypre__num_blocks) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %hypre__block) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %hypre__mod) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %hypre__div) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %hypre__tot) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %iA) #3
  br label %for.inc730

for.inc730:                                       ; preds = %for.end729
  %538 = load i32, ptr %boxi, align 4, !tbaa !8
  %inc731 = add nsw i32 %538, 1
  store i32 %inc731, ptr %boxi, align 4, !tbaa !8
  br label %for.cond264, !llvm.loop !83

for.end732:                                       ; preds = %for.cond264
  br label %for.inc733

for.inc733:                                       ; preds = %for.end732
  %539 = load i32, ptr %fi, align 4, !tbaa !8
  %inc734 = add nsw i32 %539, 1
  store i32 %inc734, ptr %fi, align 4, !tbaa !8
  br label %for.cond255, !llvm.loop !84

for.end735:                                       ; preds = %for.cond255
  br label %for.inc736

for.inc736:                                       ; preds = %for.end735
  %540 = load i32, ptr %ci, align 4, !tbaa !8
  %inc737 = add nsw i32 %540, 1
  store i32 %inc737, ptr %ci, align 4, !tbaa !8
  br label %for.cond223, !llvm.loop !85

for.end738:                                       ; preds = %for.cond223
  %541 = load ptr, ptr %a_ptrs, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %541, i32 noundef 0)
  store ptr null, ptr %a_ptrs, align 8, !tbaa !4
  %542 = load ptr, ptr %stencil_ranks, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %542, i32 noundef 0)
  store ptr null, ptr %stencil_ranks, align 8, !tbaa !4
  %543 = load ptr, ptr %rank_stencils, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %543, i32 noundef 0)
  store ptr null, ptr %rank_stencils, align 8, !tbaa !4
  br label %if.end739

if.end739:                                        ; preds = %for.end738, %for.body138
  br label %for.inc740

for.inc740:                                       ; preds = %if.end739
  %544 = load i32, ptr %var1, align 4, !tbaa !8
  %inc741 = add nsw i32 %544, 1
  store i32 %inc741, ptr %var1, align 4, !tbaa !8
  br label %for.cond135, !llvm.loop !86

for.end742:                                       ; preds = %for.cond135
  store i32 0, ptr %var1, align 4, !tbaa !8
  br label %for.cond743

for.cond743:                                      ; preds = %for.inc773, %for.end742
  %545 = load i32, ptr %var1, align 4, !tbaa !8
  %546 = load i32, ptr %nvars, align 4, !tbaa !8
  %cmp744 = icmp slt i32 %545, %546
  br i1 %cmp744, label %for.body746, label %for.end775

for.body746:                                      ; preds = %for.cond743
  %547 = load ptr, ptr %A_pmatrix, align 8, !tbaa !4
  %pgrid747 = getelementptr inbounds %struct.hypre_SStructPMatrix, ptr %547, i32 0, i32 1
  %548 = load ptr, ptr %pgrid747, align 8, !tbaa !31
  %sgrids748 = getelementptr inbounds %struct.hypre_SStructPGrid, ptr %548, i32 0, i32 4
  %549 = load ptr, ptr %A_pmatrix, align 8, !tbaa !4
  %pgrid749 = getelementptr inbounds %struct.hypre_SStructPMatrix, ptr %549, i32 0, i32 1
  %550 = load ptr, ptr %pgrid749, align 8, !tbaa !31
  %vartypes750 = getelementptr inbounds %struct.hypre_SStructPGrid, ptr %550, i32 0, i32 3
  %551 = load ptr, ptr %vartypes750, align 8, !tbaa !32
  %552 = load i32, ptr %var1, align 4, !tbaa !8
  %idxprom751 = sext i32 %552 to i64
  %arrayidx752 = getelementptr inbounds i32, ptr %551, i64 %idxprom751
  %553 = load i32, ptr %arrayidx752, align 4, !tbaa !8
  %idxprom753 = sext i32 %553 to i64
  %arrayidx754 = getelementptr inbounds [8 x ptr], ptr %sgrids748, i64 0, i64 %idxprom753
  %554 = load ptr, ptr %arrayidx754, align 8, !tbaa !4
  store ptr %554, ptr %cgrid, align 8, !tbaa !4
  %555 = load ptr, ptr %cgrid, align 8, !tbaa !4
  %boxes755 = getelementptr inbounds %struct.hypre_StructGrid_struct, ptr %555, i32 0, i32 2
  %556 = load ptr, ptr %boxes755, align 8, !tbaa !34
  store ptr %556, ptr %cgrid_boxes, align 8, !tbaa !4
  store i32 0, ptr %ci, align 4, !tbaa !8
  br label %for.cond756

for.cond756:                                      ; preds = %for.inc766, %for.body746
  %557 = load i32, ptr %ci, align 4, !tbaa !8
  %558 = load ptr, ptr %cgrid_boxes, align 8, !tbaa !4
  %size757 = getelementptr inbounds %struct.hypre_BoxArray_struct, ptr %558, i32 0, i32 1
  %559 = load i32, ptr %size757, align 8, !tbaa !36
  %cmp758 = icmp slt i32 %557, %559
  br i1 %cmp758, label %for.body760, label %for.end768

for.body760:                                      ; preds = %for.cond756
  %560 = load ptr, ptr %fgrid_cinterface_extents, align 8, !tbaa !4
  %561 = load i32, ptr %var1, align 4, !tbaa !8
  %idxprom761 = sext i32 %561 to i64
  %arrayidx762 = getelementptr inbounds ptr, ptr %560, i64 %idxprom761
  %562 = load ptr, ptr %arrayidx762, align 8, !tbaa !4
  %563 = load i32, ptr %ci, align 4, !tbaa !8
  %idxprom763 = sext i32 %563 to i64
  %arrayidx764 = getelementptr inbounds ptr, ptr %562, i64 %idxprom763
  %564 = load ptr, ptr %arrayidx764, align 8, !tbaa !4
  %call765 = call i32 @hypre_BoxArrayArrayDestroy(ptr noundef %564)
  br label %for.inc766

for.inc766:                                       ; preds = %for.body760
  %565 = load i32, ptr %ci, align 4, !tbaa !8
  %inc767 = add nsw i32 %565, 1
  store i32 %inc767, ptr %ci, align 4, !tbaa !8
  br label %for.cond756, !llvm.loop !87

for.end768:                                       ; preds = %for.cond756
  %566 = load ptr, ptr %fgrid_cinterface_extents, align 8, !tbaa !4
  %567 = load i32, ptr %var1, align 4, !tbaa !8
  %idxprom769 = sext i32 %567 to i64
  %arrayidx770 = getelementptr inbounds ptr, ptr %566, i64 %idxprom769
  %568 = load ptr, ptr %arrayidx770, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %568, i32 noundef 0)
  %569 = load ptr, ptr %fgrid_cinterface_extents, align 8, !tbaa !4
  %570 = load i32, ptr %var1, align 4, !tbaa !8
  %idxprom771 = sext i32 %570 to i64
  %arrayidx772 = getelementptr inbounds ptr, ptr %569, i64 %idxprom771
  store ptr null, ptr %arrayidx772, align 8, !tbaa !4
  br label %for.inc773

for.inc773:                                       ; preds = %for.end768
  %571 = load i32, ptr %var1, align 4, !tbaa !8
  %inc774 = add nsw i32 %571, 1
  store i32 %inc774, ptr %var1, align 4, !tbaa !8
  br label %for.cond743, !llvm.loop !88

for.end775:                                       ; preds = %for.cond743
  %572 = load ptr, ptr %fgrid_cinterface_extents, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %572, i32 noundef 0)
  store ptr null, ptr %fgrid_cinterface_extents, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %myid) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cols) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rows) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ncols) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %box_array_size) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nUentries) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Uventry) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr %index_temp) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr %index2) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr %index1) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr %zero_index) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr %lindex) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %var1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nvars) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %vals) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %startrank) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %rank) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rank_stencils) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %stencil_ranks) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %trueV) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %falseV) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_stencil_size) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %boxi) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %fi) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ci) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %centre) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %fgrid_cinterface) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cinterface_array) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cinterface_arrays) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr %stridef) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr %stridec) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr %node_extents) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cgrid_box) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cgrid_boxes) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cgrid) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %fgrid_cinterface_extents) #3
  call void @llvm.lifetime.end.p0(i64 28, ptr %boxman_entry_box) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nboxman_entries) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %boxman_entry) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %boxman_entries) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %fboxman) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %part_fine) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %part_crse) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_dbox) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_ptrs) #3
  call void @llvm.lifetime.end.p0(i64 28, ptr %refined_box) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr %loop_size) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr %stencil_shape_i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %stencil_size) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %stencils) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %smatrix_var) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_pmatrix) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ndim) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %matrix_type) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ij_A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nUventries) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %grid) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %graph_type) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %graph) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @hypre_MPI_Comm_rank(ptr noundef, ptr noundef) #2

declare i32 @hypre_BoxInit(ptr noundef, i32 noundef) #2

declare ptr @hypre_MAlloc(i64 noundef, i32 noundef) #2

declare i32 @hypre_StructMapCoarseToFine(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_BoxManIntersect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @hypre_BoxArrayArrayCreate(i32 noundef, i32 noundef) #2

declare i32 @hypre_BoxManEntryGetExtents(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_CFInterfaceExtents2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @hypre_Free(ptr noundef, i32 noundef) #2

declare i32 @hypre_CopyIndex(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @hypre_BoxGetSize(ptr noundef, ptr noundef) #2

declare i32 @hypre_BoxIndexRank(ptr noundef, ptr noundef) #2

declare i32 @hypre_SStructGridFindBoxManEntry(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @hypre_SStructBoxManEntryGetGlobalRank(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare ptr @hypre_CAlloc(i64 noundef, i64 noundef, i32 noundef) #2

declare i32 @hypre_StructMapFineToCoarse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_SubtractIndexes(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @HYPRE_IJMatrixGetValues(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_BoxArrayArrayDestroy(ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!10 = !{!11, !5, i64 0}
!11 = !{!"hypre_SStructMatrix_struct", !5, i64 0, !9, i64 8, !5, i64 16, !5, i64 24, !9, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !9, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132}
!12 = !{!11, !5, i64 16}
!13 = !{!14, !9, i64 132}
!14 = !{!"hypre_SStructGraph_struct", !5, i64 0, !9, i64 8, !5, i64 16, !5, i64 24, !9, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !9, i64 88, !5, i64 96, !5, i64 104, !9, i64 112, !9, i64 116, !5, i64 120, !9, i64 128, !9, i64 132, !5, i64 136, !9, i64 144, !9, i64 148}
!15 = !{!14, !5, i64 16}
!16 = !{!14, !9, i64 88}
!17 = !{!11, !5, i64 56}
!18 = !{!11, !9, i64 132}
!19 = !{!11, !9, i64 8}
!20 = !{!21, !9, i64 148}
!21 = !{!"hypre_SStructGrid_struct", !5, i64 0, !9, i64 8, !9, i64 12, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !9, i64 72, !9, i64 76, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !6, i64 152}
!22 = !{!21, !9, i64 128}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = !{!11, !5, i64 40}
!27 = !{!28, !9, i64 24}
!28 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !9, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !9, i64 64, !5, i64 72, !9, i64 80, !9, i64 84}
!29 = !{!21, !5, i64 112}
!30 = !{!28, !5, i64 40}
!31 = !{!28, !5, i64 8}
!32 = !{!33, !5, i64 16}
!33 = !{!"", !5, i64 0, !9, i64 8, !9, i64 12, !5, i64 16, !6, i64 24, !6, i64 88, !5, i64 152, !5, i64 160, !9, i64 168, !9, i64 172, !6, i64 176, !9, i64 188, !9, i64 192}
!34 = !{!35, !5, i64 16}
!35 = !{!"hypre_StructGrid_struct", !5, i64 0, !9, i64 8, !5, i64 16, !5, i64 24, !6, i64 32, !5, i64 48, !9, i64 56, !9, i64 60, !6, i64 64, !9, i64 76, !5, i64 80, !9, i64 88, !9, i64 92, !6, i64 96, !5, i64 120}
!36 = !{!37, !9, i64 8}
!37 = !{!"hypre_BoxArray_struct", !5, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!38 = !{!37, !5, i64 0}
!39 = distinct !{!39, !24}
!40 = !{!41, !5, i64 0}
!41 = !{!"hypre_BoxArrayArray_struct", !5, i64 0, !9, i64 8, !9, i64 12}
!42 = distinct !{!42, !24}
!43 = distinct !{!43, !24}
!44 = distinct !{!44, !24}
!45 = !{!46, !9, i64 8}
!46 = !{!"hypre_StructStencil_struct", !5, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!47 = distinct !{!47, !24}
!48 = !{!46, !5, i64 0}
!49 = distinct !{!49, !24}
!50 = !{!28, !5, i64 48}
!51 = !{!52, !5, i64 40}
!52 = !{!"hypre_StructMatrix_struct", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !9, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !9, i64 72, !9, i64 76, !9, i64 80, !5, i64 88, !9, i64 96, !9, i64 100, !5, i64 104, !6, i64 112, !9, i64 136, !5, i64 144, !9, i64 152}
!53 = distinct !{!53, !24}
!54 = !{!41, !9, i64 8}
!55 = distinct !{!55, !24}
!56 = distinct !{!56, !24}
!57 = distinct !{!57, !24}
!58 = distinct !{!58, !24}
!59 = distinct !{!59, !24}
!60 = distinct !{!60, !24}
!61 = !{!62, !62, i64 0}
!62 = !{!"double", !6, i64 0}
!63 = distinct !{!63, !24}
!64 = !{!14, !5, i64 96}
!65 = !{!14, !5, i64 104}
!66 = !{!67, !9, i64 24}
!67 = !{!"", !9, i64 0, !6, i64 4, !9, i64 16, !9, i64 20, !9, i64 24, !5, i64 32}
!68 = !{!67, !5, i64 32}
!69 = !{!70, !9, i64 0}
!70 = !{!"", !9, i64 0, !6, i64 4, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28}
!71 = !{!70, !9, i64 16}
!72 = distinct !{!72, !24}
!73 = !{!70, !9, i64 28}
!74 = distinct !{!74, !24}
!75 = distinct !{!75, !24}
!76 = distinct !{!76, !24}
!77 = distinct !{!77, !24}
!78 = distinct !{!78, !24}
!79 = distinct !{!79, !24}
!80 = distinct !{!80, !24}
!81 = distinct !{!81, !24}
!82 = distinct !{!82, !24}
!83 = distinct !{!83, !24}
!84 = distinct !{!84, !24}
!85 = distinct !{!85, !24}
!86 = distinct !{!86, !24}
!87 = distinct !{!87, !24}
!88 = distinct !{!88, !24}

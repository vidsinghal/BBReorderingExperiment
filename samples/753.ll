; ModuleID = 'samples/753.bc'
source_filename = "par_nodal_systems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_ParCSRMatrix_struct = type { ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, double, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.hypre_CSRMatrix = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32 }
%struct._hypre_ParCSRCommPkg = type { ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [20 x i8] c"par_nodal_systems.c\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"nodes not properly aligned or incomplete info!\0A\00", align 1
@hypre__global_error = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @hypre_BoomerAMGCreateNodalA(ptr noundef %A, i32 noundef %num_functions, ptr noundef %dof_func, i32 noundef %option, i32 noundef %diag_option, ptr noundef %AN_ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %A.addr = alloca ptr, align 8
  %num_functions.addr = alloca i32, align 4
  %dof_func.addr = alloca ptr, align 8
  %option.addr = alloca i32, align 4
  %diag_option.addr = alloca i32, align 4
  %AN_ptr.addr = alloca ptr, align 8
  %comm = alloca ptr, align 8
  %A_diag = alloca ptr, align 8
  %A_diag_i = alloca ptr, align 8
  %A_diag_data = alloca ptr, align 8
  %A_offd = alloca ptr, align 8
  %A_offd_i = alloca ptr, align 8
  %A_offd_data = alloca ptr, align 8
  %A_diag_j = alloca ptr, align 8
  %A_offd_j = alloca ptr, align 8
  %row_starts = alloca ptr, align 8
  %col_map_offd = alloca ptr, align 8
  %num_variables = alloca i32, align 4
  %num_nonzeros_offd = alloca i32, align 4
  %num_cols_offd = alloca i32, align 4
  %AN = alloca ptr, align 8
  %AN_diag = alloca ptr, align 8
  %AN_diag_i = alloca ptr, align 8
  %AN_diag_j = alloca ptr, align 8
  %AN_diag_data = alloca ptr, align 8
  %AN_offd = alloca ptr, align 8
  %AN_offd_i = alloca ptr, align 8
  %AN_offd_j = alloca ptr, align 8
  %AN_offd_data = alloca ptr, align 8
  %col_map_offd_AN = alloca ptr, align 8
  %new_col_map_offd = alloca ptr, align 8
  %row_starts_AN = alloca ptr, align 8
  %AN_num_nonzeros_diag = alloca i32, align 4
  %AN_num_nonzeros_offd = alloca i32, align 4
  %num_cols_offd_AN = alloca i32, align 4
  %new_num_cols_offd = alloca i32, align 4
  %comm_pkg = alloca ptr, align 8
  %num_sends = alloca i32, align 4
  %num_recvs = alloca i32, align 4
  %send_procs = alloca ptr, align 8
  %send_map_starts = alloca ptr, align 8
  %send_map_elmts = alloca ptr, align 8
  %new_send_map_elmts = alloca ptr, align 8
  %recv_procs = alloca ptr, align 8
  %recv_vec_starts = alloca ptr, align 8
  %comm_pkg_AN = alloca ptr, align 8
  %send_procs_AN = alloca ptr, align 8
  %send_map_starts_AN = alloca ptr, align 8
  %send_map_elmts_AN = alloca ptr, align 8
  %recv_procs_AN = alloca ptr, align 8
  %recv_vec_starts_AN = alloca ptr, align 8
  %i8 = alloca i32, align 4
  %j9 = alloca i32, align 4
  %k = alloca i32, align 4
  %k_map = alloca i32, align 4
  %index = alloca i32, align 4
  %row = alloca i32, align 4
  %start_index = alloca i32, align 4
  %num_procs = alloca i32, align 4
  %node = alloca i32, align 4
  %cnt = alloca i32, align 4
  %mode = alloca i32, align 4
  %big_node = alloca i32, align 4
  %new_send_elmts_size = alloca i32, align 4
  %global_num_nodes = alloca i32, align 4
  %num_nodes = alloca i32, align 4
  %num_fun2 = alloca i32, align 4
  %big_map_to_node = alloca ptr, align 8
  %map_to_node = alloca ptr, align 8
  %map_to_map = alloca ptr, align 8
  %counter = alloca ptr, align 8
  %sum = alloca double, align 8
  %data10 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store i32 %num_functions, ptr %num_functions.addr, align 4, !tbaa !8
  store ptr %dof_func, ptr %dof_func.addr, align 8, !tbaa !4
  store i32 %option, ptr %option.addr, align 4, !tbaa !8
  store i32 %diag_option, ptr %diag_option.addr, align 4, !tbaa !8
  store ptr %AN_ptr, ptr %AN_ptr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #5
  %0 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %comm1 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %comm1, align 8, !tbaa !10
  store ptr %1, ptr %comm, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_diag) #5
  %2 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %diag = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %diag, align 8, !tbaa !13
  store ptr %3, ptr %A_diag, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_diag_i) #5
  %4 = load ptr, ptr %A_diag, align 8, !tbaa !4
  %i = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %i, align 8, !tbaa !14
  store ptr %5, ptr %A_diag_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_diag_data) #5
  %6 = load ptr, ptr %A_diag, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %6, i32 0, i32 9
  %7 = load ptr, ptr %data, align 8, !tbaa !16
  store ptr %7, ptr %A_diag_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_offd) #5
  %8 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %offd = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %offd, align 8, !tbaa !17
  store ptr %9, ptr %A_offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_offd_i) #5
  %10 = load ptr, ptr %A_offd, align 8, !tbaa !4
  %i2 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %i2, align 8, !tbaa !14
  store ptr %11, ptr %A_offd_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_offd_data) #5
  %12 = load ptr, ptr %A_offd, align 8, !tbaa !4
  %data3 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %12, i32 0, i32 9
  %13 = load ptr, ptr %data3, align 8, !tbaa !16
  store ptr %13, ptr %A_offd_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_diag_j) #5
  %14 = load ptr, ptr %A_diag, align 8, !tbaa !4
  %j = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %j, align 8, !tbaa !18
  store ptr %15, ptr %A_diag_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %A_offd_j) #5
  %16 = load ptr, ptr %A_offd, align 8, !tbaa !4
  %j4 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %j4, align 8, !tbaa !18
  store ptr %17, ptr %A_offd_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %row_starts) #5
  %18 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %row_starts5 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %18, i32 0, i32 13
  %19 = load ptr, ptr %row_starts5, align 8, !tbaa !19
  store ptr %19, ptr %row_starts, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_map_offd) #5
  %20 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %col_map_offd6 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %20, i32 0, i32 11
  %21 = load ptr, ptr %col_map_offd6, align 8, !tbaa !20
  store ptr %21, ptr %col_map_offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_variables) #5
  %22 = load ptr, ptr %A_diag, align 8, !tbaa !4
  %num_rows = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %22, i32 0, i32 3
  %23 = load i32, ptr %num_rows, align 8, !tbaa !21
  store i32 %23, ptr %num_variables, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_nonzeros_offd) #5
  store i32 0, ptr %num_nonzeros_offd, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_cols_offd) #5
  store i32 0, ptr %num_cols_offd, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %AN) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %AN_diag) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %AN_diag_i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %AN_diag_j) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %AN_diag_data) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %AN_offd) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %AN_offd_i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %AN_offd_j) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %AN_offd_data) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_map_offd_AN) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_col_map_offd) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %row_starts_AN) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %AN_num_nonzeros_diag) #5
  store i32 0, ptr %AN_num_nonzeros_diag, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %AN_num_nonzeros_offd) #5
  store i32 0, ptr %AN_num_nonzeros_offd, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_cols_offd_AN) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_num_cols_offd) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm_pkg) #5
  %24 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %comm_pkg7 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %24, i32 0, i32 15
  %25 = load ptr, ptr %comm_pkg7, align 8, !tbaa !22
  store ptr %25, ptr %comm_pkg, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_sends) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_recvs) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %send_procs) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %send_map_starts) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %send_map_elmts) #5
  store ptr null, ptr %send_map_elmts, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_send_map_elmts) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %recv_procs) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %recv_vec_starts) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm_pkg_AN) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %send_procs_AN) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %send_map_starts_AN) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %send_map_elmts_AN) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %recv_procs_AN) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %recv_vec_starts_AN) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i8) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j9) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k_map) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %row) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %start_index) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_procs) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %node) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %mode) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %big_node) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_send_elmts_size) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %global_num_nodes) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_nodes) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_fun2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %big_map_to_node) #5
  store ptr null, ptr %big_map_to_node, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %map_to_node) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %map_to_map) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %counter) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %data10) #5
  %26 = load ptr, ptr %comm, align 8, !tbaa !4
  %call = call i32 @hypre_MPI_Comm_size(ptr noundef %26, ptr noundef %num_procs)
  %27 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %tobool = icmp ne ptr %27, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %28 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call11 = call i32 @hypre_MatvecCommPkgCreate(ptr noundef %28)
  %29 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %comm_pkg12 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %29, i32 0, i32 15
  %30 = load ptr, ptr %comm_pkg12, align 8, !tbaa !22
  store ptr %30, ptr %comm_pkg, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %31 = load i32, ptr %option.addr, align 4, !tbaa !8
  %cmp = icmp sgt i32 %31, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %32 = load i32, ptr %option.addr, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %33 = load i32, ptr %option.addr, align 4, !tbaa !8
  %sub = sub nsw i32 0, %33
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %32, %cond.true ], [ %sub, %cond.false ]
  store i32 %cond, ptr %mode, align 4, !tbaa !8
  store ptr null, ptr %comm_pkg_AN, align 8, !tbaa !4
  store ptr null, ptr %col_map_offd_AN, align 8, !tbaa !4
  %call13 = call ptr @hypre_CAlloc(i64 noundef 2, i64 noundef 4, i32 noundef 0)
  store ptr %call13, ptr %row_starts_AN, align 8, !tbaa !4
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %34 = load i32, ptr %i8, align 4, !tbaa !8
  %cmp14 = icmp slt i32 %34, 2
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load ptr, ptr %row_starts, align 8, !tbaa !4
  %36 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom = sext i32 %36 to i64
  %arrayidx = getelementptr inbounds i32, ptr %35, i64 %idxprom
  %37 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %38 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %div = sdiv i32 %37, %38
  %39 = load ptr, ptr %row_starts_AN, align 8, !tbaa !4
  %40 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom15 = sext i32 %40 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %39, i64 %idxprom15
  store i32 %div, ptr %arrayidx16, align 4, !tbaa !8
  %41 = load ptr, ptr %row_starts_AN, align 8, !tbaa !4
  %42 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom17 = sext i32 %42 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %41, i64 %idxprom17
  %43 = load i32, ptr %arrayidx18, align 4, !tbaa !8
  %44 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul = mul nsw i32 %43, %44
  %45 = load ptr, ptr %row_starts, align 8, !tbaa !4
  %46 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom19 = sext i32 %46 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %45, i64 %idxprom19
  %47 = load i32, ptr %arrayidx20, align 4, !tbaa !8
  %cmp21 = icmp slt i32 %mul, %47
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 140, i32 noundef 1, ptr noundef @.str.1)
  %48 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %48, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %49 = load i32, ptr %i8, align 4, !tbaa !8
  %inc = add nsw i32 %49, 1
  store i32 %inc, ptr %i8, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %50 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %global_num_rows = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %50, i32 0, i32 1
  %51 = load i32, ptr %global_num_rows, align 8, !tbaa !25
  %52 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %div24 = sdiv i32 %51, %52
  store i32 %div24, ptr %global_num_nodes, align 4, !tbaa !8
  %53 = load i32, ptr %num_variables, align 4, !tbaa !8
  %54 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %div25 = sdiv i32 %53, %54
  store i32 %div25, ptr %num_nodes, align 4, !tbaa !8
  %55 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %56 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul26 = mul nsw i32 %55, %56
  store i32 %mul26, ptr %num_fun2, align 4, !tbaa !8
  %57 = load i32, ptr %num_variables, align 4, !tbaa !8
  %conv = sext i32 %57 to i64
  %call27 = call ptr @hypre_CAlloc(i64 noundef %conv, i64 noundef 4, i32 noundef 0)
  store ptr %call27, ptr %map_to_node, align 8, !tbaa !4
  %58 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %add = add nsw i32 %58, 1
  %conv28 = sext i32 %add to i64
  %call29 = call ptr @hypre_CAlloc(i64 noundef %conv28, i64 noundef 4, i32 noundef 0)
  store ptr %call29, ptr %AN_diag_i, align 8, !tbaa !4
  %59 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %conv30 = sext i32 %59 to i64
  %call31 = call ptr @hypre_CAlloc(i64 noundef %conv30, i64 noundef 4, i32 noundef 0)
  store ptr %call31, ptr %counter, align 8, !tbaa !4
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc39, %for.end
  %60 = load i32, ptr %i8, align 4, !tbaa !8
  %61 = load i32, ptr %num_variables, align 4, !tbaa !8
  %cmp33 = icmp slt i32 %60, %61
  br i1 %cmp33, label %for.body35, label %for.end41

for.body35:                                       ; preds = %for.cond32
  %62 = load i32, ptr %i8, align 4, !tbaa !8
  %63 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %div36 = sdiv i32 %62, %63
  %64 = load ptr, ptr %map_to_node, align 8, !tbaa !4
  %65 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom37 = sext i32 %65 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %64, i64 %idxprom37
  store i32 %div36, ptr %arrayidx38, align 4, !tbaa !8
  br label %for.inc39

for.inc39:                                        ; preds = %for.body35
  %66 = load i32, ptr %i8, align 4, !tbaa !8
  %inc40 = add nsw i32 %66, 1
  store i32 %inc40, ptr %i8, align 4, !tbaa !8
  br label %for.cond32, !llvm.loop !26

for.end41:                                        ; preds = %for.cond32
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc48, %for.end41
  %67 = load i32, ptr %i8, align 4, !tbaa !8
  %68 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp43 = icmp slt i32 %67, %68
  br i1 %cmp43, label %for.body45, label %for.end50

for.body45:                                       ; preds = %for.cond42
  %69 = load ptr, ptr %counter, align 8, !tbaa !4
  %70 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom46 = sext i32 %70 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %69, i64 %idxprom46
  store i32 -1, ptr %arrayidx47, align 4, !tbaa !8
  br label %for.inc48

for.inc48:                                        ; preds = %for.body45
  %71 = load i32, ptr %i8, align 4, !tbaa !8
  %inc49 = add nsw i32 %71, 1
  store i32 %inc49, ptr %i8, align 4, !tbaa !8
  br label %for.cond42, !llvm.loop !27

for.end50:                                        ; preds = %for.cond42
  store i32 0, ptr %AN_num_nonzeros_diag, align 4, !tbaa !8
  store i32 0, ptr %row, align 4, !tbaa !8
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc90, %for.end50
  %72 = load i32, ptr %i8, align 4, !tbaa !8
  %73 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp52 = icmp slt i32 %72, %73
  br i1 %cmp52, label %for.body54, label %for.end92

for.body54:                                       ; preds = %for.cond51
  %74 = load i32, ptr %AN_num_nonzeros_diag, align 4, !tbaa !8
  %75 = load ptr, ptr %AN_diag_i, align 8, !tbaa !4
  %76 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom55 = sext i32 %76 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %75, i64 %idxprom55
  store i32 %74, ptr %arrayidx56, align 4, !tbaa !8
  store i32 0, ptr %j9, align 4, !tbaa !8
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc87, %for.body54
  %77 = load i32, ptr %j9, align 4, !tbaa !8
  %78 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp58 = icmp slt i32 %77, %78
  br i1 %cmp58, label %for.body60, label %for.end89

for.body60:                                       ; preds = %for.cond57
  %79 = load ptr, ptr %A_diag_i, align 8, !tbaa !4
  %80 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom61 = sext i32 %80 to i64
  %arrayidx62 = getelementptr inbounds i32, ptr %79, i64 %idxprom61
  %81 = load i32, ptr %arrayidx62, align 4, !tbaa !8
  store i32 %81, ptr %k, align 4, !tbaa !8
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc83, %for.body60
  %82 = load i32, ptr %k, align 4, !tbaa !8
  %83 = load ptr, ptr %A_diag_i, align 8, !tbaa !4
  %84 = load i32, ptr %row, align 4, !tbaa !8
  %add64 = add nsw i32 %84, 1
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds i32, ptr %83, i64 %idxprom65
  %85 = load i32, ptr %arrayidx66, align 4, !tbaa !8
  %cmp67 = icmp slt i32 %82, %85
  br i1 %cmp67, label %for.body69, label %for.end85

for.body69:                                       ; preds = %for.cond63
  %86 = load ptr, ptr %map_to_node, align 8, !tbaa !4
  %87 = load ptr, ptr %A_diag_j, align 8, !tbaa !4
  %88 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom70 = sext i32 %88 to i64
  %arrayidx71 = getelementptr inbounds i32, ptr %87, i64 %idxprom70
  %89 = load i32, ptr %arrayidx71, align 4, !tbaa !8
  %idxprom72 = sext i32 %89 to i64
  %arrayidx73 = getelementptr inbounds i32, ptr %86, i64 %idxprom72
  %90 = load i32, ptr %arrayidx73, align 4, !tbaa !8
  store i32 %90, ptr %k_map, align 4, !tbaa !8
  %91 = load ptr, ptr %counter, align 8, !tbaa !4
  %92 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom74 = sext i32 %92 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %91, i64 %idxprom74
  %93 = load i32, ptr %arrayidx75, align 4, !tbaa !8
  %94 = load i32, ptr %i8, align 4, !tbaa !8
  %cmp76 = icmp slt i32 %93, %94
  br i1 %cmp76, label %if.then78, label %if.end82

if.then78:                                        ; preds = %for.body69
  %95 = load i32, ptr %i8, align 4, !tbaa !8
  %96 = load ptr, ptr %counter, align 8, !tbaa !4
  %97 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom79 = sext i32 %97 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %96, i64 %idxprom79
  store i32 %95, ptr %arrayidx80, align 4, !tbaa !8
  %98 = load i32, ptr %AN_num_nonzeros_diag, align 4, !tbaa !8
  %inc81 = add nsw i32 %98, 1
  store i32 %inc81, ptr %AN_num_nonzeros_diag, align 4, !tbaa !8
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %for.body69
  br label %for.inc83

for.inc83:                                        ; preds = %if.end82
  %99 = load i32, ptr %k, align 4, !tbaa !8
  %inc84 = add nsw i32 %99, 1
  store i32 %inc84, ptr %k, align 4, !tbaa !8
  br label %for.cond63, !llvm.loop !28

for.end85:                                        ; preds = %for.cond63
  %100 = load i32, ptr %row, align 4, !tbaa !8
  %inc86 = add nsw i32 %100, 1
  store i32 %inc86, ptr %row, align 4, !tbaa !8
  br label %for.inc87

for.inc87:                                        ; preds = %for.end85
  %101 = load i32, ptr %j9, align 4, !tbaa !8
  %inc88 = add nsw i32 %101, 1
  store i32 %inc88, ptr %j9, align 4, !tbaa !8
  br label %for.cond57, !llvm.loop !29

for.end89:                                        ; preds = %for.cond57
  br label %for.inc90

for.inc90:                                        ; preds = %for.end89
  %102 = load i32, ptr %i8, align 4, !tbaa !8
  %inc91 = add nsw i32 %102, 1
  store i32 %inc91, ptr %i8, align 4, !tbaa !8
  br label %for.cond51, !llvm.loop !30

for.end92:                                        ; preds = %for.cond51
  %103 = load i32, ptr %AN_num_nonzeros_diag, align 4, !tbaa !8
  %104 = load ptr, ptr %AN_diag_i, align 8, !tbaa !4
  %105 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %idxprom93 = sext i32 %105 to i64
  %arrayidx94 = getelementptr inbounds i32, ptr %104, i64 %idxprom93
  store i32 %103, ptr %arrayidx94, align 4, !tbaa !8
  %106 = load i32, ptr %AN_num_nonzeros_diag, align 4, !tbaa !8
  %conv95 = sext i32 %106 to i64
  %call96 = call ptr @hypre_CAlloc(i64 noundef %conv95, i64 noundef 4, i32 noundef 0)
  store ptr %call96, ptr %AN_diag_j, align 8, !tbaa !4
  %107 = load i32, ptr %AN_num_nonzeros_diag, align 4, !tbaa !8
  %conv97 = sext i32 %107 to i64
  %call98 = call ptr @hypre_CAlloc(i64 noundef %conv97, i64 noundef 8, i32 noundef 0)
  store ptr %call98, ptr %AN_diag_data, align 8, !tbaa !4
  %108 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %109 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %110 = load i32, ptr %AN_num_nonzeros_diag, align 4, !tbaa !8
  %call99 = call ptr @hypre_CSRMatrixCreate(i32 noundef %108, i32 noundef %109, i32 noundef %110)
  store ptr %call99, ptr %AN_diag, align 8, !tbaa !4
  %111 = load ptr, ptr %AN_diag_i, align 8, !tbaa !4
  %112 = load ptr, ptr %AN_diag, align 8, !tbaa !4
  %i100 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %112, i32 0, i32 0
  store ptr %111, ptr %i100, align 8, !tbaa !14
  %113 = load ptr, ptr %AN_diag_j, align 8, !tbaa !4
  %114 = load ptr, ptr %AN_diag, align 8, !tbaa !4
  %j101 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %114, i32 0, i32 1
  store ptr %113, ptr %j101, align 8, !tbaa !18
  %115 = load ptr, ptr %AN_diag_data, align 8, !tbaa !4
  %116 = load ptr, ptr %AN_diag, align 8, !tbaa !4
  %data102 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %116, i32 0, i32 9
  store ptr %115, ptr %data102, align 8, !tbaa !16
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc109, %for.end92
  %117 = load i32, ptr %i8, align 4, !tbaa !8
  %118 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp104 = icmp slt i32 %117, %118
  br i1 %cmp104, label %for.body106, label %for.end111

for.body106:                                      ; preds = %for.cond103
  %119 = load ptr, ptr %counter, align 8, !tbaa !4
  %120 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom107 = sext i32 %120 to i64
  %arrayidx108 = getelementptr inbounds i32, ptr %119, i64 %idxprom107
  store i32 -1, ptr %arrayidx108, align 4, !tbaa !8
  br label %for.inc109

for.inc109:                                       ; preds = %for.body106
  %121 = load i32, ptr %i8, align 4, !tbaa !8
  %inc110 = add nsw i32 %121, 1
  store i32 %inc110, ptr %i8, align 4, !tbaa !8
  br label %for.cond103, !llvm.loop !31

for.end111:                                       ; preds = %for.cond103
  store i32 0, ptr %index, align 4, !tbaa !8
  store i32 0, ptr %start_index, align 4, !tbaa !8
  store i32 0, ptr %row, align 4, !tbaa !8
  %122 = load i32, ptr %mode, align 4, !tbaa !8
  switch i32 %122, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb182
    i32 3, label %sw.bb248
    i32 4, label %sw.bb312
    i32 6, label %sw.bb413
  ]

sw.bb:                                            ; preds = %for.end111
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc167, %sw.bb
  %123 = load i32, ptr %i8, align 4, !tbaa !8
  %124 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp113 = icmp slt i32 %123, %124
  br i1 %cmp113, label %for.body115, label %for.end169

for.body115:                                      ; preds = %for.cond112
  store i32 0, ptr %j9, align 4, !tbaa !8
  br label %for.cond116

for.cond116:                                      ; preds = %for.inc164, %for.body115
  %125 = load i32, ptr %j9, align 4, !tbaa !8
  %126 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp117 = icmp slt i32 %125, %126
  br i1 %cmp117, label %for.body119, label %for.end166

for.body119:                                      ; preds = %for.cond116
  %127 = load ptr, ptr %A_diag_i, align 8, !tbaa !4
  %128 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom120 = sext i32 %128 to i64
  %arrayidx121 = getelementptr inbounds i32, ptr %127, i64 %idxprom120
  %129 = load i32, ptr %arrayidx121, align 4, !tbaa !8
  store i32 %129, ptr %k, align 4, !tbaa !8
  br label %for.cond122

for.cond122:                                      ; preds = %for.inc160, %for.body119
  %130 = load i32, ptr %k, align 4, !tbaa !8
  %131 = load ptr, ptr %A_diag_i, align 8, !tbaa !4
  %132 = load i32, ptr %row, align 4, !tbaa !8
  %add123 = add nsw i32 %132, 1
  %idxprom124 = sext i32 %add123 to i64
  %arrayidx125 = getelementptr inbounds i32, ptr %131, i64 %idxprom124
  %133 = load i32, ptr %arrayidx125, align 4, !tbaa !8
  %cmp126 = icmp slt i32 %130, %133
  br i1 %cmp126, label %for.body128, label %for.end162

for.body128:                                      ; preds = %for.cond122
  %134 = load ptr, ptr %map_to_node, align 8, !tbaa !4
  %135 = load ptr, ptr %A_diag_j, align 8, !tbaa !4
  %136 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom129 = sext i32 %136 to i64
  %arrayidx130 = getelementptr inbounds i32, ptr %135, i64 %idxprom129
  %137 = load i32, ptr %arrayidx130, align 4, !tbaa !8
  %idxprom131 = sext i32 %137 to i64
  %arrayidx132 = getelementptr inbounds i32, ptr %134, i64 %idxprom131
  %138 = load i32, ptr %arrayidx132, align 4, !tbaa !8
  store i32 %138, ptr %k_map, align 4, !tbaa !8
  %139 = load ptr, ptr %counter, align 8, !tbaa !4
  %140 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom133 = sext i32 %140 to i64
  %arrayidx134 = getelementptr inbounds i32, ptr %139, i64 %idxprom133
  %141 = load i32, ptr %arrayidx134, align 4, !tbaa !8
  %142 = load i32, ptr %start_index, align 4, !tbaa !8
  %cmp135 = icmp slt i32 %141, %142
  br i1 %cmp135, label %if.then137, label %if.else

if.then137:                                       ; preds = %for.body128
  %143 = load i32, ptr %index, align 4, !tbaa !8
  %144 = load ptr, ptr %counter, align 8, !tbaa !4
  %145 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom138 = sext i32 %145 to i64
  %arrayidx139 = getelementptr inbounds i32, ptr %144, i64 %idxprom138
  store i32 %143, ptr %arrayidx139, align 4, !tbaa !8
  %146 = load i32, ptr %k_map, align 4, !tbaa !8
  %147 = load ptr, ptr %AN_diag_j, align 8, !tbaa !4
  %148 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom140 = sext i32 %148 to i64
  %arrayidx141 = getelementptr inbounds i32, ptr %147, i64 %idxprom140
  store i32 %146, ptr %arrayidx141, align 4, !tbaa !8
  %149 = load ptr, ptr %A_diag_data, align 8, !tbaa !4
  %150 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom142 = sext i32 %150 to i64
  %arrayidx143 = getelementptr inbounds double, ptr %149, i64 %idxprom142
  %151 = load double, ptr %arrayidx143, align 8, !tbaa !32
  %152 = load ptr, ptr %A_diag_data, align 8, !tbaa !4
  %153 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom144 = sext i32 %153 to i64
  %arrayidx145 = getelementptr inbounds double, ptr %152, i64 %idxprom144
  %154 = load double, ptr %arrayidx145, align 8, !tbaa !32
  %mul146 = fmul double %151, %154
  %155 = load ptr, ptr %AN_diag_data, align 8, !tbaa !4
  %156 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom147 = sext i32 %156 to i64
  %arrayidx148 = getelementptr inbounds double, ptr %155, i64 %idxprom147
  store double %mul146, ptr %arrayidx148, align 8, !tbaa !32
  %157 = load i32, ptr %index, align 4, !tbaa !8
  %inc149 = add nsw i32 %157, 1
  store i32 %inc149, ptr %index, align 4, !tbaa !8
  br label %if.end159

if.else:                                          ; preds = %for.body128
  %158 = load ptr, ptr %A_diag_data, align 8, !tbaa !4
  %159 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom150 = sext i32 %159 to i64
  %arrayidx151 = getelementptr inbounds double, ptr %158, i64 %idxprom150
  %160 = load double, ptr %arrayidx151, align 8, !tbaa !32
  %161 = load ptr, ptr %A_diag_data, align 8, !tbaa !4
  %162 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom152 = sext i32 %162 to i64
  %arrayidx153 = getelementptr inbounds double, ptr %161, i64 %idxprom152
  %163 = load double, ptr %arrayidx153, align 8, !tbaa !32
  %164 = load ptr, ptr %AN_diag_data, align 8, !tbaa !4
  %165 = load ptr, ptr %counter, align 8, !tbaa !4
  %166 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom155 = sext i32 %166 to i64
  %arrayidx156 = getelementptr inbounds i32, ptr %165, i64 %idxprom155
  %167 = load i32, ptr %arrayidx156, align 4, !tbaa !8
  %idxprom157 = sext i32 %167 to i64
  %arrayidx158 = getelementptr inbounds double, ptr %164, i64 %idxprom157
  %168 = load double, ptr %arrayidx158, align 8, !tbaa !32
  %169 = call double @llvm.fmuladd.f64(double %160, double %163, double %168)
  store double %169, ptr %arrayidx158, align 8, !tbaa !32
  br label %if.end159

if.end159:                                        ; preds = %if.else, %if.then137
  br label %for.inc160

for.inc160:                                       ; preds = %if.end159
  %170 = load i32, ptr %k, align 4, !tbaa !8
  %inc161 = add nsw i32 %170, 1
  store i32 %inc161, ptr %k, align 4, !tbaa !8
  br label %for.cond122, !llvm.loop !33

for.end162:                                       ; preds = %for.cond122
  %171 = load i32, ptr %row, align 4, !tbaa !8
  %inc163 = add nsw i32 %171, 1
  store i32 %inc163, ptr %row, align 4, !tbaa !8
  br label %for.inc164

for.inc164:                                       ; preds = %for.end162
  %172 = load i32, ptr %j9, align 4, !tbaa !8
  %inc165 = add nsw i32 %172, 1
  store i32 %inc165, ptr %j9, align 4, !tbaa !8
  br label %for.cond116, !llvm.loop !34

for.end166:                                       ; preds = %for.cond116
  %173 = load i32, ptr %index, align 4, !tbaa !8
  store i32 %173, ptr %start_index, align 4, !tbaa !8
  br label %for.inc167

for.inc167:                                       ; preds = %for.end166
  %174 = load i32, ptr %i8, align 4, !tbaa !8
  %inc168 = add nsw i32 %174, 1
  store i32 %inc168, ptr %i8, align 4, !tbaa !8
  br label %for.cond112, !llvm.loop !35

for.end169:                                       ; preds = %for.cond112
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond170

for.cond170:                                      ; preds = %for.inc179, %for.end169
  %175 = load i32, ptr %i8, align 4, !tbaa !8
  %176 = load i32, ptr %AN_num_nonzeros_diag, align 4, !tbaa !8
  %cmp171 = icmp slt i32 %175, %176
  br i1 %cmp171, label %for.body173, label %for.end181

for.body173:                                      ; preds = %for.cond170
  %177 = load ptr, ptr %AN_diag_data, align 8, !tbaa !4
  %178 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom174 = sext i32 %178 to i64
  %arrayidx175 = getelementptr inbounds double, ptr %177, i64 %idxprom174
  %179 = load double, ptr %arrayidx175, align 8, !tbaa !32
  %call176 = call double @sqrt(double noundef %179) #5
  %180 = load ptr, ptr %AN_diag_data, align 8, !tbaa !4
  %181 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom177 = sext i32 %181 to i64
  %arrayidx178 = getelementptr inbounds double, ptr %180, i64 %idxprom177
  store double %call176, ptr %arrayidx178, align 8, !tbaa !32
  br label %for.inc179

for.inc179:                                       ; preds = %for.body173
  %182 = load i32, ptr %i8, align 4, !tbaa !8
  %inc180 = add nsw i32 %182, 1
  store i32 %inc180, ptr %i8, align 4, !tbaa !8
  br label %for.cond170, !llvm.loop !36

for.end181:                                       ; preds = %for.cond170
  br label %sw.epilog

sw.bb182:                                         ; preds = %for.end111
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond183

for.cond183:                                      ; preds = %for.inc234, %sw.bb182
  %183 = load i32, ptr %i8, align 4, !tbaa !8
  %184 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp184 = icmp slt i32 %183, %184
  br i1 %cmp184, label %for.body186, label %for.end236

for.body186:                                      ; preds = %for.cond183
  store i32 0, ptr %j9, align 4, !tbaa !8
  br label %for.cond187

for.cond187:                                      ; preds = %for.inc231, %for.body186
  %185 = load i32, ptr %j9, align 4, !tbaa !8
  %186 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp188 = icmp slt i32 %185, %186
  br i1 %cmp188, label %for.body190, label %for.end233

for.body190:                                      ; preds = %for.cond187
  %187 = load ptr, ptr %A_diag_i, align 8, !tbaa !4
  %188 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom191 = sext i32 %188 to i64
  %arrayidx192 = getelementptr inbounds i32, ptr %187, i64 %idxprom191
  %189 = load i32, ptr %arrayidx192, align 4, !tbaa !8
  store i32 %189, ptr %k, align 4, !tbaa !8
  br label %for.cond193

for.cond193:                                      ; preds = %for.inc227, %for.body190
  %190 = load i32, ptr %k, align 4, !tbaa !8
  %191 = load ptr, ptr %A_diag_i, align 8, !tbaa !4
  %192 = load i32, ptr %row, align 4, !tbaa !8
  %add194 = add nsw i32 %192, 1
  %idxprom195 = sext i32 %add194 to i64
  %arrayidx196 = getelementptr inbounds i32, ptr %191, i64 %idxprom195
  %193 = load i32, ptr %arrayidx196, align 4, !tbaa !8
  %cmp197 = icmp slt i32 %190, %193
  br i1 %cmp197, label %for.body199, label %for.end229

for.body199:                                      ; preds = %for.cond193
  %194 = load ptr, ptr %map_to_node, align 8, !tbaa !4
  %195 = load ptr, ptr %A_diag_j, align 8, !tbaa !4
  %196 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom200 = sext i32 %196 to i64
  %arrayidx201 = getelementptr inbounds i32, ptr %195, i64 %idxprom200
  %197 = load i32, ptr %arrayidx201, align 4, !tbaa !8
  %idxprom202 = sext i32 %197 to i64
  %arrayidx203 = getelementptr inbounds i32, ptr %194, i64 %idxprom202
  %198 = load i32, ptr %arrayidx203, align 4, !tbaa !8
  store i32 %198, ptr %k_map, align 4, !tbaa !8
  %199 = load ptr, ptr %counter, align 8, !tbaa !4
  %200 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom204 = sext i32 %200 to i64
  %arrayidx205 = getelementptr inbounds i32, ptr %199, i64 %idxprom204
  %201 = load i32, ptr %arrayidx205, align 4, !tbaa !8
  %202 = load i32, ptr %start_index, align 4, !tbaa !8
  %cmp206 = icmp slt i32 %201, %202
  br i1 %cmp206, label %if.then208, label %if.else218

if.then208:                                       ; preds = %for.body199
  %203 = load i32, ptr %index, align 4, !tbaa !8
  %204 = load ptr, ptr %counter, align 8, !tbaa !4
  %205 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom209 = sext i32 %205 to i64
  %arrayidx210 = getelementptr inbounds i32, ptr %204, i64 %idxprom209
  store i32 %203, ptr %arrayidx210, align 4, !tbaa !8
  %206 = load i32, ptr %k_map, align 4, !tbaa !8
  %207 = load ptr, ptr %AN_diag_j, align 8, !tbaa !4
  %208 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom211 = sext i32 %208 to i64
  %arrayidx212 = getelementptr inbounds i32, ptr %207, i64 %idxprom211
  store i32 %206, ptr %arrayidx212, align 4, !tbaa !8
  %209 = load ptr, ptr %A_diag_data, align 8, !tbaa !4
  %210 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom213 = sext i32 %210 to i64
  %arrayidx214 = getelementptr inbounds double, ptr %209, i64 %idxprom213
  %211 = load double, ptr %arrayidx214, align 8, !tbaa !32
  %212 = call double @llvm.fabs.f64(double %211)
  %213 = load ptr, ptr %AN_diag_data, align 8, !tbaa !4
  %214 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom215 = sext i32 %214 to i64
  %arrayidx216 = getelementptr inbounds double, ptr %213, i64 %idxprom215
  store double %212, ptr %arrayidx216, align 8, !tbaa !32
  %215 = load i32, ptr %index, align 4, !tbaa !8
  %inc217 = add nsw i32 %215, 1
  store i32 %inc217, ptr %index, align 4, !tbaa !8
  br label %if.end226

if.else218:                                       ; preds = %for.body199
  %216 = load ptr, ptr %A_diag_data, align 8, !tbaa !4
  %217 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom219 = sext i32 %217 to i64
  %arrayidx220 = getelementptr inbounds double, ptr %216, i64 %idxprom219
  %218 = load double, ptr %arrayidx220, align 8, !tbaa !32
  %219 = call double @llvm.fabs.f64(double %218)
  %220 = load ptr, ptr %AN_diag_data, align 8, !tbaa !4
  %221 = load ptr, ptr %counter, align 8, !tbaa !4
  %222 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom221 = sext i32 %222 to i64
  %arrayidx222 = getelementptr inbounds i32, ptr %221, i64 %idxprom221
  %223 = load i32, ptr %arrayidx222, align 4, !tbaa !8
  %idxprom223 = sext i32 %223 to i64
  %arrayidx224 = getelementptr inbounds double, ptr %220, i64 %idxprom223
  %224 = load double, ptr %arrayidx224, align 8, !tbaa !32
  %add225 = fadd double %224, %219
  store double %add225, ptr %arrayidx224, align 8, !tbaa !32
  br label %if.end226

if.end226:                                        ; preds = %if.else218, %if.then208
  br label %for.inc227

for.inc227:                                       ; preds = %if.end226
  %225 = load i32, ptr %k, align 4, !tbaa !8
  %inc228 = add nsw i32 %225, 1
  store i32 %inc228, ptr %k, align 4, !tbaa !8
  br label %for.cond193, !llvm.loop !37

for.end229:                                       ; preds = %for.cond193
  %226 = load i32, ptr %row, align 4, !tbaa !8
  %inc230 = add nsw i32 %226, 1
  store i32 %inc230, ptr %row, align 4, !tbaa !8
  br label %for.inc231

for.inc231:                                       ; preds = %for.end229
  %227 = load i32, ptr %j9, align 4, !tbaa !8
  %inc232 = add nsw i32 %227, 1
  store i32 %inc232, ptr %j9, align 4, !tbaa !8
  br label %for.cond187, !llvm.loop !38

for.end233:                                       ; preds = %for.cond187
  %228 = load i32, ptr %index, align 4, !tbaa !8
  store i32 %228, ptr %start_index, align 4, !tbaa !8
  br label %for.inc234

for.inc234:                                       ; preds = %for.end233
  %229 = load i32, ptr %i8, align 4, !tbaa !8
  %inc235 = add nsw i32 %229, 1
  store i32 %inc235, ptr %i8, align 4, !tbaa !8
  br label %for.cond183, !llvm.loop !39

for.end236:                                       ; preds = %for.cond183
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond237

for.cond237:                                      ; preds = %for.inc245, %for.end236
  %230 = load i32, ptr %i8, align 4, !tbaa !8
  %231 = load i32, ptr %AN_num_nonzeros_diag, align 4, !tbaa !8
  %cmp238 = icmp slt i32 %230, %231
  br i1 %cmp238, label %for.body240, label %for.end247

for.body240:                                      ; preds = %for.cond237
  %232 = load i32, ptr %num_fun2, align 4, !tbaa !8
  %conv241 = sitofp i32 %232 to double
  %233 = load ptr, ptr %AN_diag_data, align 8, !tbaa !4
  %234 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom242 = sext i32 %234 to i64
  %arrayidx243 = getelementptr inbounds double, ptr %233, i64 %idxprom242
  %235 = load double, ptr %arrayidx243, align 8, !tbaa !32
  %div244 = fdiv double %235, %conv241
  store double %div244, ptr %arrayidx243, align 8, !tbaa !32
  br label %for.inc245

for.inc245:                                       ; preds = %for.body240
  %236 = load i32, ptr %i8, align 4, !tbaa !8
  %inc246 = add nsw i32 %236, 1
  store i32 %inc246, ptr %i8, align 4, !tbaa !8
  br label %for.cond237, !llvm.loop !40

for.end247:                                       ; preds = %for.cond237
  br label %sw.epilog

sw.bb248:                                         ; preds = %for.end111
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond249

for.cond249:                                      ; preds = %for.inc309, %sw.bb248
  %237 = load i32, ptr %i8, align 4, !tbaa !8
  %238 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp250 = icmp slt i32 %237, %238
  br i1 %cmp250, label %for.body252, label %for.end311

for.body252:                                      ; preds = %for.cond249
  store i32 0, ptr %j9, align 4, !tbaa !8
  br label %for.cond253

for.cond253:                                      ; preds = %for.inc306, %for.body252
  %239 = load i32, ptr %j9, align 4, !tbaa !8
  %240 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp254 = icmp slt i32 %239, %240
  br i1 %cmp254, label %for.body256, label %for.end308

for.body256:                                      ; preds = %for.cond253
  %241 = load ptr, ptr %A_diag_i, align 8, !tbaa !4
  %242 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom257 = sext i32 %242 to i64
  %arrayidx258 = getelementptr inbounds i32, ptr %241, i64 %idxprom257
  %243 = load i32, ptr %arrayidx258, align 4, !tbaa !8
  store i32 %243, ptr %k, align 4, !tbaa !8
  br label %for.cond259

for.cond259:                                      ; preds = %for.inc302, %for.body256
  %244 = load i32, ptr %k, align 4, !tbaa !8
  %245 = load ptr, ptr %A_diag_i, align 8, !tbaa !4
  %246 = load i32, ptr %row, align 4, !tbaa !8
  %add260 = add nsw i32 %246, 1
  %idxprom261 = sext i32 %add260 to i64
  %arrayidx262 = getelementptr inbounds i32, ptr %245, i64 %idxprom261
  %247 = load i32, ptr %arrayidx262, align 4, !tbaa !8
  %cmp263 = icmp slt i32 %244, %247
  br i1 %cmp263, label %for.body265, label %for.end304

for.body265:                                      ; preds = %for.cond259
  %248 = load ptr, ptr %map_to_node, align 8, !tbaa !4
  %249 = load ptr, ptr %A_diag_j, align 8, !tbaa !4
  %250 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom266 = sext i32 %250 to i64
  %arrayidx267 = getelementptr inbounds i32, ptr %249, i64 %idxprom266
  %251 = load i32, ptr %arrayidx267, align 4, !tbaa !8
  %idxprom268 = sext i32 %251 to i64
  %arrayidx269 = getelementptr inbounds i32, ptr %248, i64 %idxprom268
  %252 = load i32, ptr %arrayidx269, align 4, !tbaa !8
  store i32 %252, ptr %k_map, align 4, !tbaa !8
  %253 = load ptr, ptr %counter, align 8, !tbaa !4
  %254 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom270 = sext i32 %254 to i64
  %arrayidx271 = getelementptr inbounds i32, ptr %253, i64 %idxprom270
  %255 = load i32, ptr %arrayidx271, align 4, !tbaa !8
  %256 = load i32, ptr %start_index, align 4, !tbaa !8
  %cmp272 = icmp slt i32 %255, %256
  br i1 %cmp272, label %if.then274, label %if.else284

if.then274:                                       ; preds = %for.body265
  %257 = load i32, ptr %index, align 4, !tbaa !8
  %258 = load ptr, ptr %counter, align 8, !tbaa !4
  %259 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom275 = sext i32 %259 to i64
  %arrayidx276 = getelementptr inbounds i32, ptr %258, i64 %idxprom275
  store i32 %257, ptr %arrayidx276, align 4, !tbaa !8
  %260 = load i32, ptr %k_map, align 4, !tbaa !8
  %261 = load ptr, ptr %AN_diag_j, align 8, !tbaa !4
  %262 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom277 = sext i32 %262 to i64
  %arrayidx278 = getelementptr inbounds i32, ptr %261, i64 %idxprom277
  store i32 %260, ptr %arrayidx278, align 4, !tbaa !8
  %263 = load ptr, ptr %A_diag_data, align 8, !tbaa !4
  %264 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom279 = sext i32 %264 to i64
  %arrayidx280 = getelementptr inbounds double, ptr %263, i64 %idxprom279
  %265 = load double, ptr %arrayidx280, align 8, !tbaa !32
  %266 = load ptr, ptr %AN_diag_data, align 8, !tbaa !4
  %267 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom281 = sext i32 %267 to i64
  %arrayidx282 = getelementptr inbounds double, ptr %266, i64 %idxprom281
  store double %265, ptr %arrayidx282, align 8, !tbaa !32
  %268 = load i32, ptr %index, align 4, !tbaa !8
  %inc283 = add nsw i32 %268, 1
  store i32 %inc283, ptr %index, align 4, !tbaa !8
  br label %if.end301

if.else284:                                       ; preds = %for.body265
  %269 = load ptr, ptr %A_diag_data, align 8, !tbaa !4
  %270 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom285 = sext i32 %270 to i64
  %arrayidx286 = getelementptr inbounds double, ptr %269, i64 %idxprom285
  %271 = load double, ptr %arrayidx286, align 8, !tbaa !32
  %272 = call double @llvm.fabs.f64(double %271)
  %273 = load ptr, ptr %AN_diag_data, align 8, !tbaa !4
  %274 = load ptr, ptr %counter, align 8, !tbaa !4
  %275 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom287 = sext i32 %275 to i64
  %arrayidx288 = getelementptr inbounds i32, ptr %274, i64 %idxprom287
  %276 = load i32, ptr %arrayidx288, align 4, !tbaa !8
  %idxprom289 = sext i32 %276 to i64
  %arrayidx290 = getelementptr inbounds double, ptr %273, i64 %idxprom289
  %277 = load double, ptr %arrayidx290, align 8, !tbaa !32
  %278 = call double @llvm.fabs.f64(double %277)
  %cmp291 = fcmp ogt double %272, %278
  br i1 %cmp291, label %if.then293, label %if.end300

if.then293:                                       ; preds = %if.else284
  %279 = load ptr, ptr %A_diag_data, align 8, !tbaa !4
  %280 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom294 = sext i32 %280 to i64
  %arrayidx295 = getelementptr inbounds double, ptr %279, i64 %idxprom294
  %281 = load double, ptr %arrayidx295, align 8, !tbaa !32
  %282 = load ptr, ptr %AN_diag_data, align 8, !tbaa !4
  %283 = load ptr, ptr %counter, align 8, !tbaa !4
  %284 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom296 = sext i32 %284 to i64
  %arrayidx297 = getelementptr inbounds i32, ptr %283, i64 %idxprom296
  %285 = load i32, ptr %arrayidx297, align 4, !tbaa !8
  %idxprom298 = sext i32 %285 to i64
  %arrayidx299 = getelementptr inbounds double, ptr %282, i64 %idxprom298
  store double %281, ptr %arrayidx299, align 8, !tbaa !32
  br label %if.end300

if.end300:                                        ; preds = %if.then293, %if.else284
  br label %if.end301

if.end301:                                        ; preds = %if.end300, %if.then274
  br label %for.inc302

for.inc302:                                       ; preds = %if.end301
  %286 = load i32, ptr %k, align 4, !tbaa !8
  %inc303 = add nsw i32 %286, 1
  store i32 %inc303, ptr %k, align 4, !tbaa !8
  br label %for.cond259, !llvm.loop !41

for.end304:                                       ; preds = %for.cond259
  %287 = load i32, ptr %row, align 4, !tbaa !8
  %inc305 = add nsw i32 %287, 1
  store i32 %inc305, ptr %row, align 4, !tbaa !8
  br label %for.inc306

for.inc306:                                       ; preds = %for.end304
  %288 = load i32, ptr %j9, align 4, !tbaa !8
  %inc307 = add nsw i32 %288, 1
  store i32 %inc307, ptr %j9, align 4, !tbaa !8
  br label %for.cond253, !llvm.loop !42

for.end308:                                       ; preds = %for.cond253
  %289 = load i32, ptr %index, align 4, !tbaa !8
  store i32 %289, ptr %start_index, align 4, !tbaa !8
  br label %for.inc309

for.inc309:                                       ; preds = %for.end308
  %290 = load i32, ptr %i8, align 4, !tbaa !8
  %inc310 = add nsw i32 %290, 1
  store i32 %inc310, ptr %i8, align 4, !tbaa !8
  br label %for.cond249, !llvm.loop !43

for.end311:                                       ; preds = %for.cond249
  br label %sw.epilog

sw.bb312:                                         ; preds = %for.end111
  %291 = load i32, ptr %AN_num_nonzeros_diag, align 4, !tbaa !8
  %292 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul313 = mul nsw i32 %291, %292
  %conv314 = sext i32 %mul313 to i64
  %call315 = call ptr @hypre_CAlloc(i64 noundef %conv314, i64 noundef 8, i32 noundef 0)
  store ptr %call315, ptr %data10, align 8, !tbaa !4
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond316

for.cond316:                                      ; preds = %for.inc371, %sw.bb312
  %293 = load i32, ptr %i8, align 4, !tbaa !8
  %294 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp317 = icmp slt i32 %293, %294
  br i1 %cmp317, label %for.body319, label %for.end373

for.body319:                                      ; preds = %for.cond316
  store i32 0, ptr %j9, align 4, !tbaa !8
  br label %for.cond320

for.cond320:                                      ; preds = %for.inc368, %for.body319
  %295 = load i32, ptr %j9, align 4, !tbaa !8
  %296 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp321 = icmp slt i32 %295, %296
  br i1 %cmp321, label %for.body323, label %for.end370

for.body323:                                      ; preds = %for.cond320
  %297 = load ptr, ptr %A_diag_i, align 8, !tbaa !4
  %298 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom324 = sext i32 %298 to i64
  %arrayidx325 = getelementptr inbounds i32, ptr %297, i64 %idxprom324
  %299 = load i32, ptr %arrayidx325, align 4, !tbaa !8
  store i32 %299, ptr %k, align 4, !tbaa !8
  br label %for.cond326

for.cond326:                                      ; preds = %for.inc364, %for.body323
  %300 = load i32, ptr %k, align 4, !tbaa !8
  %301 = load ptr, ptr %A_diag_i, align 8, !tbaa !4
  %302 = load i32, ptr %row, align 4, !tbaa !8
  %add327 = add nsw i32 %302, 1
  %idxprom328 = sext i32 %add327 to i64
  %arrayidx329 = getelementptr inbounds i32, ptr %301, i64 %idxprom328
  %303 = load i32, ptr %arrayidx329, align 4, !tbaa !8
  %cmp330 = icmp slt i32 %300, %303
  br i1 %cmp330, label %for.body332, label %for.end366

for.body332:                                      ; preds = %for.cond326
  %304 = load ptr, ptr %map_to_node, align 8, !tbaa !4
  %305 = load ptr, ptr %A_diag_j, align 8, !tbaa !4
  %306 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom333 = sext i32 %306 to i64
  %arrayidx334 = getelementptr inbounds i32, ptr %305, i64 %idxprom333
  %307 = load i32, ptr %arrayidx334, align 4, !tbaa !8
  %idxprom335 = sext i32 %307 to i64
  %arrayidx336 = getelementptr inbounds i32, ptr %304, i64 %idxprom335
  %308 = load i32, ptr %arrayidx336, align 4, !tbaa !8
  store i32 %308, ptr %k_map, align 4, !tbaa !8
  %309 = load ptr, ptr %counter, align 8, !tbaa !4
  %310 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom337 = sext i32 %310 to i64
  %arrayidx338 = getelementptr inbounds i32, ptr %309, i64 %idxprom337
  %311 = load i32, ptr %arrayidx338, align 4, !tbaa !8
  %312 = load i32, ptr %start_index, align 4, !tbaa !8
  %cmp339 = icmp slt i32 %311, %312
  br i1 %cmp339, label %if.then341, label %if.else353

if.then341:                                       ; preds = %for.body332
  %313 = load i32, ptr %index, align 4, !tbaa !8
  %314 = load ptr, ptr %counter, align 8, !tbaa !4
  %315 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom342 = sext i32 %315 to i64
  %arrayidx343 = getelementptr inbounds i32, ptr %314, i64 %idxprom342
  store i32 %313, ptr %arrayidx343, align 4, !tbaa !8
  %316 = load i32, ptr %k_map, align 4, !tbaa !8
  %317 = load ptr, ptr %AN_diag_j, align 8, !tbaa !4
  %318 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom344 = sext i32 %318 to i64
  %arrayidx345 = getelementptr inbounds i32, ptr %317, i64 %idxprom344
  store i32 %316, ptr %arrayidx345, align 4, !tbaa !8
  %319 = load ptr, ptr %A_diag_data, align 8, !tbaa !4
  %320 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom346 = sext i32 %320 to i64
  %arrayidx347 = getelementptr inbounds double, ptr %319, i64 %idxprom346
  %321 = load double, ptr %arrayidx347, align 8, !tbaa !32
  %322 = call double @llvm.fabs.f64(double %321)
  %323 = load ptr, ptr %data10, align 8, !tbaa !4
  %324 = load i32, ptr %index, align 4, !tbaa !8
  %325 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul348 = mul nsw i32 %324, %325
  %326 = load i32, ptr %j9, align 4, !tbaa !8
  %add349 = add nsw i32 %mul348, %326
  %idxprom350 = sext i32 %add349 to i64
  %arrayidx351 = getelementptr inbounds double, ptr %323, i64 %idxprom350
  store double %322, ptr %arrayidx351, align 8, !tbaa !32
  %327 = load i32, ptr %index, align 4, !tbaa !8
  %inc352 = add nsw i32 %327, 1
  store i32 %inc352, ptr %index, align 4, !tbaa !8
  br label %if.end363

if.else353:                                       ; preds = %for.body332
  %328 = load ptr, ptr %A_diag_data, align 8, !tbaa !4
  %329 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom354 = sext i32 %329 to i64
  %arrayidx355 = getelementptr inbounds double, ptr %328, i64 %idxprom354
  %330 = load double, ptr %arrayidx355, align 8, !tbaa !32
  %331 = call double @llvm.fabs.f64(double %330)
  %332 = load ptr, ptr %data10, align 8, !tbaa !4
  %333 = load ptr, ptr %counter, align 8, !tbaa !4
  %334 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom356 = sext i32 %334 to i64
  %arrayidx357 = getelementptr inbounds i32, ptr %333, i64 %idxprom356
  %335 = load i32, ptr %arrayidx357, align 4, !tbaa !8
  %336 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul358 = mul nsw i32 %335, %336
  %337 = load i32, ptr %j9, align 4, !tbaa !8
  %add359 = add nsw i32 %mul358, %337
  %idxprom360 = sext i32 %add359 to i64
  %arrayidx361 = getelementptr inbounds double, ptr %332, i64 %idxprom360
  %338 = load double, ptr %arrayidx361, align 8, !tbaa !32
  %add362 = fadd double %338, %331
  store double %add362, ptr %arrayidx361, align 8, !tbaa !32
  br label %if.end363

if.end363:                                        ; preds = %if.else353, %if.then341
  br label %for.inc364

for.inc364:                                       ; preds = %if.end363
  %339 = load i32, ptr %k, align 4, !tbaa !8
  %inc365 = add nsw i32 %339, 1
  store i32 %inc365, ptr %k, align 4, !tbaa !8
  br label %for.cond326, !llvm.loop !44

for.end366:                                       ; preds = %for.cond326
  %340 = load i32, ptr %row, align 4, !tbaa !8
  %inc367 = add nsw i32 %340, 1
  store i32 %inc367, ptr %row, align 4, !tbaa !8
  br label %for.inc368

for.inc368:                                       ; preds = %for.end366
  %341 = load i32, ptr %j9, align 4, !tbaa !8
  %inc369 = add nsw i32 %341, 1
  store i32 %inc369, ptr %j9, align 4, !tbaa !8
  br label %for.cond320, !llvm.loop !45

for.end370:                                       ; preds = %for.cond320
  %342 = load i32, ptr %index, align 4, !tbaa !8
  store i32 %342, ptr %start_index, align 4, !tbaa !8
  br label %for.inc371

for.inc371:                                       ; preds = %for.end370
  %343 = load i32, ptr %i8, align 4, !tbaa !8
  %inc372 = add nsw i32 %343, 1
  store i32 %inc372, ptr %i8, align 4, !tbaa !8
  br label %for.cond316, !llvm.loop !46

for.end373:                                       ; preds = %for.cond316
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond374

for.cond374:                                      ; preds = %for.inc410, %for.end373
  %344 = load i32, ptr %i8, align 4, !tbaa !8
  %345 = load i32, ptr %AN_num_nonzeros_diag, align 4, !tbaa !8
  %cmp375 = icmp slt i32 %344, %345
  br i1 %cmp375, label %for.body377, label %for.end412

for.body377:                                      ; preds = %for.cond374
  %346 = load ptr, ptr %data10, align 8, !tbaa !4
  %347 = load i32, ptr %i8, align 4, !tbaa !8
  %348 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul378 = mul nsw i32 %347, %348
  %idxprom379 = sext i32 %mul378 to i64
  %arrayidx380 = getelementptr inbounds double, ptr %346, i64 %idxprom379
  %349 = load double, ptr %arrayidx380, align 8, !tbaa !32
  %350 = load ptr, ptr %AN_diag_data, align 8, !tbaa !4
  %351 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom381 = sext i32 %351 to i64
  %arrayidx382 = getelementptr inbounds double, ptr %350, i64 %idxprom381
  store double %349, ptr %arrayidx382, align 8, !tbaa !32
  store i32 1, ptr %j9, align 4, !tbaa !8
  br label %for.cond383

for.cond383:                                      ; preds = %for.inc407, %for.body377
  %352 = load i32, ptr %j9, align 4, !tbaa !8
  %353 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp384 = icmp slt i32 %352, %353
  br i1 %cmp384, label %for.body386, label %for.end409

for.body386:                                      ; preds = %for.cond383
  %354 = load ptr, ptr %AN_diag_data, align 8, !tbaa !4
  %355 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom387 = sext i32 %355 to i64
  %arrayidx388 = getelementptr inbounds double, ptr %354, i64 %idxprom387
  %356 = load double, ptr %arrayidx388, align 8, !tbaa !32
  %357 = load ptr, ptr %data10, align 8, !tbaa !4
  %358 = load i32, ptr %i8, align 4, !tbaa !8
  %359 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul389 = mul nsw i32 %358, %359
  %360 = load i32, ptr %j9, align 4, !tbaa !8
  %add390 = add nsw i32 %mul389, %360
  %idxprom391 = sext i32 %add390 to i64
  %arrayidx392 = getelementptr inbounds double, ptr %357, i64 %idxprom391
  %361 = load double, ptr %arrayidx392, align 8, !tbaa !32
  %cmp393 = fcmp olt double %356, %361
  br i1 %cmp393, label %cond.true395, label %cond.false400

cond.true395:                                     ; preds = %for.body386
  %362 = load ptr, ptr %data10, align 8, !tbaa !4
  %363 = load i32, ptr %i8, align 4, !tbaa !8
  %364 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul396 = mul nsw i32 %363, %364
  %365 = load i32, ptr %j9, align 4, !tbaa !8
  %add397 = add nsw i32 %mul396, %365
  %idxprom398 = sext i32 %add397 to i64
  %arrayidx399 = getelementptr inbounds double, ptr %362, i64 %idxprom398
  %366 = load double, ptr %arrayidx399, align 8, !tbaa !32
  br label %cond.end403

cond.false400:                                    ; preds = %for.body386
  %367 = load ptr, ptr %AN_diag_data, align 8, !tbaa !4
  %368 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom401 = sext i32 %368 to i64
  %arrayidx402 = getelementptr inbounds double, ptr %367, i64 %idxprom401
  %369 = load double, ptr %arrayidx402, align 8, !tbaa !32
  br label %cond.end403

cond.end403:                                      ; preds = %cond.false400, %cond.true395
  %cond404 = phi double [ %366, %cond.true395 ], [ %369, %cond.false400 ]
  %370 = load ptr, ptr %AN_diag_data, align 8, !tbaa !4
  %371 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom405 = sext i32 %371 to i64
  %arrayidx406 = getelementptr inbounds double, ptr %370, i64 %idxprom405
  store double %cond404, ptr %arrayidx406, align 8, !tbaa !32
  br label %for.inc407

for.inc407:                                       ; preds = %cond.end403
  %372 = load i32, ptr %j9, align 4, !tbaa !8
  %inc408 = add nsw i32 %372, 1
  store i32 %inc408, ptr %j9, align 4, !tbaa !8
  br label %for.cond383, !llvm.loop !47

for.end409:                                       ; preds = %for.cond383
  br label %for.inc410

for.inc410:                                       ; preds = %for.end409
  %373 = load i32, ptr %i8, align 4, !tbaa !8
  %inc411 = add nsw i32 %373, 1
  store i32 %inc411, ptr %i8, align 4, !tbaa !8
  br label %for.cond374, !llvm.loop !48

for.end412:                                       ; preds = %for.cond374
  %374 = load ptr, ptr %data10, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %374, i32 noundef 0)
  store ptr null, ptr %data10, align 8, !tbaa !4
  br label %sw.epilog

sw.bb413:                                         ; preds = %for.end111
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond414

for.cond414:                                      ; preds = %for.inc465, %sw.bb413
  %375 = load i32, ptr %i8, align 4, !tbaa !8
  %376 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp415 = icmp slt i32 %375, %376
  br i1 %cmp415, label %for.body417, label %for.end467

for.body417:                                      ; preds = %for.cond414
  store i32 0, ptr %j9, align 4, !tbaa !8
  br label %for.cond418

for.cond418:                                      ; preds = %for.inc462, %for.body417
  %377 = load i32, ptr %j9, align 4, !tbaa !8
  %378 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp419 = icmp slt i32 %377, %378
  br i1 %cmp419, label %for.body421, label %for.end464

for.body421:                                      ; preds = %for.cond418
  %379 = load ptr, ptr %A_diag_i, align 8, !tbaa !4
  %380 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom422 = sext i32 %380 to i64
  %arrayidx423 = getelementptr inbounds i32, ptr %379, i64 %idxprom422
  %381 = load i32, ptr %arrayidx423, align 4, !tbaa !8
  store i32 %381, ptr %k, align 4, !tbaa !8
  br label %for.cond424

for.cond424:                                      ; preds = %for.inc458, %for.body421
  %382 = load i32, ptr %k, align 4, !tbaa !8
  %383 = load ptr, ptr %A_diag_i, align 8, !tbaa !4
  %384 = load i32, ptr %row, align 4, !tbaa !8
  %add425 = add nsw i32 %384, 1
  %idxprom426 = sext i32 %add425 to i64
  %arrayidx427 = getelementptr inbounds i32, ptr %383, i64 %idxprom426
  %385 = load i32, ptr %arrayidx427, align 4, !tbaa !8
  %cmp428 = icmp slt i32 %382, %385
  br i1 %cmp428, label %for.body430, label %for.end460

for.body430:                                      ; preds = %for.cond424
  %386 = load ptr, ptr %map_to_node, align 8, !tbaa !4
  %387 = load ptr, ptr %A_diag_j, align 8, !tbaa !4
  %388 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom431 = sext i32 %388 to i64
  %arrayidx432 = getelementptr inbounds i32, ptr %387, i64 %idxprom431
  %389 = load i32, ptr %arrayidx432, align 4, !tbaa !8
  %idxprom433 = sext i32 %389 to i64
  %arrayidx434 = getelementptr inbounds i32, ptr %386, i64 %idxprom433
  %390 = load i32, ptr %arrayidx434, align 4, !tbaa !8
  store i32 %390, ptr %k_map, align 4, !tbaa !8
  %391 = load ptr, ptr %counter, align 8, !tbaa !4
  %392 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom435 = sext i32 %392 to i64
  %arrayidx436 = getelementptr inbounds i32, ptr %391, i64 %idxprom435
  %393 = load i32, ptr %arrayidx436, align 4, !tbaa !8
  %394 = load i32, ptr %start_index, align 4, !tbaa !8
  %cmp437 = icmp slt i32 %393, %394
  br i1 %cmp437, label %if.then439, label %if.else449

if.then439:                                       ; preds = %for.body430
  %395 = load i32, ptr %index, align 4, !tbaa !8
  %396 = load ptr, ptr %counter, align 8, !tbaa !4
  %397 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom440 = sext i32 %397 to i64
  %arrayidx441 = getelementptr inbounds i32, ptr %396, i64 %idxprom440
  store i32 %395, ptr %arrayidx441, align 4, !tbaa !8
  %398 = load i32, ptr %k_map, align 4, !tbaa !8
  %399 = load ptr, ptr %AN_diag_j, align 8, !tbaa !4
  %400 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom442 = sext i32 %400 to i64
  %arrayidx443 = getelementptr inbounds i32, ptr %399, i64 %idxprom442
  store i32 %398, ptr %arrayidx443, align 4, !tbaa !8
  %401 = load ptr, ptr %A_diag_data, align 8, !tbaa !4
  %402 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom444 = sext i32 %402 to i64
  %arrayidx445 = getelementptr inbounds double, ptr %401, i64 %idxprom444
  %403 = load double, ptr %arrayidx445, align 8, !tbaa !32
  %404 = load ptr, ptr %AN_diag_data, align 8, !tbaa !4
  %405 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom446 = sext i32 %405 to i64
  %arrayidx447 = getelementptr inbounds double, ptr %404, i64 %idxprom446
  store double %403, ptr %arrayidx447, align 8, !tbaa !32
  %406 = load i32, ptr %index, align 4, !tbaa !8
  %inc448 = add nsw i32 %406, 1
  store i32 %inc448, ptr %index, align 4, !tbaa !8
  br label %if.end457

if.else449:                                       ; preds = %for.body430
  %407 = load ptr, ptr %A_diag_data, align 8, !tbaa !4
  %408 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom450 = sext i32 %408 to i64
  %arrayidx451 = getelementptr inbounds double, ptr %407, i64 %idxprom450
  %409 = load double, ptr %arrayidx451, align 8, !tbaa !32
  %410 = load ptr, ptr %AN_diag_data, align 8, !tbaa !4
  %411 = load ptr, ptr %counter, align 8, !tbaa !4
  %412 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom452 = sext i32 %412 to i64
  %arrayidx453 = getelementptr inbounds i32, ptr %411, i64 %idxprom452
  %413 = load i32, ptr %arrayidx453, align 4, !tbaa !8
  %idxprom454 = sext i32 %413 to i64
  %arrayidx455 = getelementptr inbounds double, ptr %410, i64 %idxprom454
  %414 = load double, ptr %arrayidx455, align 8, !tbaa !32
  %add456 = fadd double %414, %409
  store double %add456, ptr %arrayidx455, align 8, !tbaa !32
  br label %if.end457

if.end457:                                        ; preds = %if.else449, %if.then439
  br label %for.inc458

for.inc458:                                       ; preds = %if.end457
  %415 = load i32, ptr %k, align 4, !tbaa !8
  %inc459 = add nsw i32 %415, 1
  store i32 %inc459, ptr %k, align 4, !tbaa !8
  br label %for.cond424, !llvm.loop !49

for.end460:                                       ; preds = %for.cond424
  %416 = load i32, ptr %row, align 4, !tbaa !8
  %inc461 = add nsw i32 %416, 1
  store i32 %inc461, ptr %row, align 4, !tbaa !8
  br label %for.inc462

for.inc462:                                       ; preds = %for.end460
  %417 = load i32, ptr %j9, align 4, !tbaa !8
  %inc463 = add nsw i32 %417, 1
  store i32 %inc463, ptr %j9, align 4, !tbaa !8
  br label %for.cond418, !llvm.loop !50

for.end464:                                       ; preds = %for.cond418
  %418 = load i32, ptr %index, align 4, !tbaa !8
  store i32 %418, ptr %start_index, align 4, !tbaa !8
  br label %for.inc465

for.inc465:                                       ; preds = %for.end464
  %419 = load i32, ptr %i8, align 4, !tbaa !8
  %inc466 = add nsw i32 %419, 1
  store i32 %inc466, ptr %i8, align 4, !tbaa !8
  br label %for.cond414, !llvm.loop !51

for.end467:                                       ; preds = %for.cond414
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end111, %for.end467, %for.end412, %for.end311, %for.end247, %for.end181
  %420 = load i32, ptr %diag_option.addr, align 4, !tbaa !8
  %cmp468 = icmp eq i32 %420, 1
  br i1 %cmp468, label %if.then470, label %if.else498

if.then470:                                       ; preds = %sw.epilog
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond471

for.cond471:                                      ; preds = %for.inc495, %if.then470
  %421 = load i32, ptr %i8, align 4, !tbaa !8
  %422 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp472 = icmp slt i32 %421, %422
  br i1 %cmp472, label %for.body474, label %for.end497

for.body474:                                      ; preds = %for.cond471
  %423 = load ptr, ptr %AN_diag_i, align 8, !tbaa !4
  %424 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom475 = sext i32 %424 to i64
  %arrayidx476 = getelementptr inbounds i32, ptr %423, i64 %idxprom475
  %425 = load i32, ptr %arrayidx476, align 4, !tbaa !8
  store i32 %425, ptr %index, align 4, !tbaa !8
  store double 0.000000e+00, ptr %sum, align 8, !tbaa !32
  %426 = load ptr, ptr %AN_diag_i, align 8, !tbaa !4
  %427 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom477 = sext i32 %427 to i64
  %arrayidx478 = getelementptr inbounds i32, ptr %426, i64 %idxprom477
  %428 = load i32, ptr %arrayidx478, align 4, !tbaa !8
  %add479 = add nsw i32 %428, 1
  store i32 %add479, ptr %k, align 4, !tbaa !8
  br label %for.cond480

for.cond480:                                      ; preds = %for.inc490, %for.body474
  %429 = load i32, ptr %k, align 4, !tbaa !8
  %430 = load ptr, ptr %AN_diag_i, align 8, !tbaa !4
  %431 = load i32, ptr %i8, align 4, !tbaa !8
  %add481 = add nsw i32 %431, 1
  %idxprom482 = sext i32 %add481 to i64
  %arrayidx483 = getelementptr inbounds i32, ptr %430, i64 %idxprom482
  %432 = load i32, ptr %arrayidx483, align 4, !tbaa !8
  %cmp484 = icmp slt i32 %429, %432
  br i1 %cmp484, label %for.body486, label %for.end492

for.body486:                                      ; preds = %for.cond480
  %433 = load ptr, ptr %AN_diag_data, align 8, !tbaa !4
  %434 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom487 = sext i32 %434 to i64
  %arrayidx488 = getelementptr inbounds double, ptr %433, i64 %idxprom487
  %435 = load double, ptr %arrayidx488, align 8, !tbaa !32
  %436 = load double, ptr %sum, align 8, !tbaa !32
  %add489 = fadd double %436, %435
  store double %add489, ptr %sum, align 8, !tbaa !32
  br label %for.inc490

for.inc490:                                       ; preds = %for.body486
  %437 = load i32, ptr %k, align 4, !tbaa !8
  %inc491 = add nsw i32 %437, 1
  store i32 %inc491, ptr %k, align 4, !tbaa !8
  br label %for.cond480, !llvm.loop !52

for.end492:                                       ; preds = %for.cond480
  %438 = load double, ptr %sum, align 8, !tbaa !32
  %fneg = fneg double %438
  %439 = load ptr, ptr %AN_diag_data, align 8, !tbaa !4
  %440 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom493 = sext i32 %440 to i64
  %arrayidx494 = getelementptr inbounds double, ptr %439, i64 %idxprom493
  store double %fneg, ptr %arrayidx494, align 8, !tbaa !32
  br label %for.inc495

for.inc495:                                       ; preds = %for.end492
  %441 = load i32, ptr %i8, align 4, !tbaa !8
  %inc496 = add nsw i32 %441, 1
  store i32 %inc496, ptr %i8, align 4, !tbaa !8
  br label %for.cond471, !llvm.loop !53

for.end497:                                       ; preds = %for.cond471
  br label %if.end517

if.else498:                                       ; preds = %sw.epilog
  %442 = load i32, ptr %diag_option.addr, align 4, !tbaa !8
  %cmp499 = icmp eq i32 %442, 2
  br i1 %cmp499, label %if.then501, label %if.end516

if.then501:                                       ; preds = %if.else498
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond502

for.cond502:                                      ; preds = %for.inc513, %if.then501
  %443 = load i32, ptr %i8, align 4, !tbaa !8
  %444 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp503 = icmp slt i32 %443, %444
  br i1 %cmp503, label %for.body505, label %for.end515

for.body505:                                      ; preds = %for.cond502
  %445 = load ptr, ptr %AN_diag_i, align 8, !tbaa !4
  %446 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom506 = sext i32 %446 to i64
  %arrayidx507 = getelementptr inbounds i32, ptr %445, i64 %idxprom506
  %447 = load i32, ptr %arrayidx507, align 4, !tbaa !8
  store i32 %447, ptr %index, align 4, !tbaa !8
  %448 = load ptr, ptr %AN_diag_data, align 8, !tbaa !4
  %449 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom508 = sext i32 %449 to i64
  %arrayidx509 = getelementptr inbounds double, ptr %448, i64 %idxprom508
  %450 = load double, ptr %arrayidx509, align 8, !tbaa !32
  %fneg510 = fneg double %450
  %451 = load ptr, ptr %AN_diag_data, align 8, !tbaa !4
  %452 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom511 = sext i32 %452 to i64
  %arrayidx512 = getelementptr inbounds double, ptr %451, i64 %idxprom511
  store double %fneg510, ptr %arrayidx512, align 8, !tbaa !32
  br label %for.inc513

for.inc513:                                       ; preds = %for.body505
  %453 = load i32, ptr %i8, align 4, !tbaa !8
  %inc514 = add nsw i32 %453, 1
  store i32 %inc514, ptr %i8, align 4, !tbaa !8
  br label %for.cond502, !llvm.loop !54

for.end515:                                       ; preds = %for.cond502
  br label %if.end516

if.end516:                                        ; preds = %for.end515, %if.else498
  br label %if.end517

if.end517:                                        ; preds = %if.end516, %for.end497
  %454 = load ptr, ptr %A_offd_i, align 8, !tbaa !4
  %455 = load i32, ptr %num_variables, align 4, !tbaa !8
  %idxprom518 = sext i32 %455 to i64
  %arrayidx519 = getelementptr inbounds i32, ptr %454, i64 %idxprom518
  %456 = load i32, ptr %arrayidx519, align 4, !tbaa !8
  store i32 %456, ptr %num_nonzeros_offd, align 4, !tbaa !8
  %457 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %add520 = add nsw i32 %457, 1
  %conv521 = sext i32 %add520 to i64
  %call522 = call ptr @hypre_CAlloc(i64 noundef %conv521, i64 noundef 4, i32 noundef 0)
  store ptr %call522, ptr %AN_offd_i, align 8, !tbaa !4
  store i32 0, ptr %num_cols_offd_AN, align 4, !tbaa !8
  %458 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %tobool523 = icmp ne ptr %458, null
  br i1 %tobool523, label %if.then524, label %if.end635

if.then524:                                       ; preds = %if.end517
  %call525 = call ptr @hypre_CAlloc(i64 noundef 1, i64 noundef 88, i32 noundef 0)
  store ptr %call525, ptr %comm_pkg_AN, align 8, !tbaa !4
  %459 = load ptr, ptr %comm, align 8, !tbaa !4
  %460 = load ptr, ptr %comm_pkg_AN, align 8, !tbaa !4
  %comm526 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %460, i32 0, i32 0
  store ptr %459, ptr %comm526, align 8, !tbaa !55
  %461 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %num_sends527 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %461, i32 0, i32 1
  %462 = load i32, ptr %num_sends527, align 8, !tbaa !57
  store i32 %462, ptr %num_sends, align 4, !tbaa !8
  %463 = load i32, ptr %num_sends, align 4, !tbaa !8
  %464 = load ptr, ptr %comm_pkg_AN, align 8, !tbaa !4
  %num_sends528 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %464, i32 0, i32 1
  store i32 %463, ptr %num_sends528, align 8, !tbaa !57
  %465 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %num_recvs529 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %465, i32 0, i32 6
  %466 = load i32, ptr %num_recvs529, align 8, !tbaa !58
  store i32 %466, ptr %num_recvs, align 4, !tbaa !8
  %467 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %468 = load ptr, ptr %comm_pkg_AN, align 8, !tbaa !4
  %num_recvs530 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %468, i32 0, i32 6
  store i32 %467, ptr %num_recvs530, align 8, !tbaa !58
  %469 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_procs531 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %469, i32 0, i32 2
  %470 = load ptr, ptr %send_procs531, align 8, !tbaa !59
  store ptr %470, ptr %send_procs, align 8, !tbaa !4
  %471 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_starts532 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %471, i32 0, i32 3
  %472 = load ptr, ptr %send_map_starts532, align 8, !tbaa !60
  store ptr %472, ptr %send_map_starts, align 8, !tbaa !4
  %473 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_elmts533 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %473, i32 0, i32 4
  %474 = load ptr, ptr %send_map_elmts533, align 8, !tbaa !61
  store ptr %474, ptr %send_map_elmts, align 8, !tbaa !4
  %475 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %recv_procs534 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %475, i32 0, i32 7
  %476 = load ptr, ptr %recv_procs534, align 8, !tbaa !62
  store ptr %476, ptr %recv_procs, align 8, !tbaa !4
  %477 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %recv_vec_starts535 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %477, i32 0, i32 8
  %478 = load ptr, ptr %recv_vec_starts535, align 8, !tbaa !63
  store ptr %478, ptr %recv_vec_starts, align 8, !tbaa !4
  store ptr null, ptr %send_procs_AN, align 8, !tbaa !4
  store ptr null, ptr %send_map_elmts_AN, align 8, !tbaa !4
  %479 = load i32, ptr %num_sends, align 4, !tbaa !8
  %tobool536 = icmp ne i32 %479, 0
  br i1 %tobool536, label %if.then537, label %if.end544

if.then537:                                       ; preds = %if.then524
  %480 = load i32, ptr %num_sends, align 4, !tbaa !8
  %conv538 = sext i32 %480 to i64
  %call539 = call ptr @hypre_CAlloc(i64 noundef %conv538, i64 noundef 4, i32 noundef 0)
  store ptr %call539, ptr %send_procs_AN, align 8, !tbaa !4
  %481 = load ptr, ptr %send_map_starts, align 8, !tbaa !4
  %482 = load i32, ptr %num_sends, align 4, !tbaa !8
  %idxprom540 = sext i32 %482 to i64
  %arrayidx541 = getelementptr inbounds i32, ptr %481, i64 %idxprom540
  %483 = load i32, ptr %arrayidx541, align 4, !tbaa !8
  %conv542 = sext i32 %483 to i64
  %call543 = call ptr @hypre_CAlloc(i64 noundef %conv542, i64 noundef 4, i32 noundef 0)
  store ptr %call543, ptr %send_map_elmts_AN, align 8, !tbaa !4
  br label %if.end544

if.end544:                                        ; preds = %if.then537, %if.then524
  %484 = load i32, ptr %num_sends, align 4, !tbaa !8
  %add545 = add nsw i32 %484, 1
  %conv546 = sext i32 %add545 to i64
  %call547 = call ptr @hypre_CAlloc(i64 noundef %conv546, i64 noundef 4, i32 noundef 0)
  store ptr %call547, ptr %send_map_starts_AN, align 8, !tbaa !4
  %485 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %add548 = add nsw i32 %485, 1
  %conv549 = sext i32 %add548 to i64
  %call550 = call ptr @hypre_CAlloc(i64 noundef %conv549, i64 noundef 4, i32 noundef 0)
  store ptr %call550, ptr %recv_vec_starts_AN, align 8, !tbaa !4
  store ptr null, ptr %recv_procs_AN, align 8, !tbaa !4
  %486 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %tobool551 = icmp ne i32 %486, 0
  br i1 %tobool551, label %if.then552, label %if.end555

if.then552:                                       ; preds = %if.end544
  %487 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %conv553 = sext i32 %487 to i64
  %call554 = call ptr @hypre_CAlloc(i64 noundef %conv553, i64 noundef 4, i32 noundef 0)
  store ptr %call554, ptr %recv_procs_AN, align 8, !tbaa !4
  br label %if.end555

if.end555:                                        ; preds = %if.then552, %if.end544
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond556

for.cond556:                                      ; preds = %for.inc564, %if.end555
  %488 = load i32, ptr %i8, align 4, !tbaa !8
  %489 = load i32, ptr %num_sends, align 4, !tbaa !8
  %cmp557 = icmp slt i32 %488, %489
  br i1 %cmp557, label %for.body559, label %for.end566

for.body559:                                      ; preds = %for.cond556
  %490 = load ptr, ptr %send_procs, align 8, !tbaa !4
  %491 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom560 = sext i32 %491 to i64
  %arrayidx561 = getelementptr inbounds i32, ptr %490, i64 %idxprom560
  %492 = load i32, ptr %arrayidx561, align 4, !tbaa !8
  %493 = load ptr, ptr %send_procs_AN, align 8, !tbaa !4
  %494 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom562 = sext i32 %494 to i64
  %arrayidx563 = getelementptr inbounds i32, ptr %493, i64 %idxprom562
  store i32 %492, ptr %arrayidx563, align 4, !tbaa !8
  br label %for.inc564

for.inc564:                                       ; preds = %for.body559
  %495 = load i32, ptr %i8, align 4, !tbaa !8
  %inc565 = add nsw i32 %495, 1
  store i32 %inc565, ptr %i8, align 4, !tbaa !8
  br label %for.cond556, !llvm.loop !64

for.end566:                                       ; preds = %for.cond556
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond567

for.cond567:                                      ; preds = %for.inc575, %for.end566
  %496 = load i32, ptr %i8, align 4, !tbaa !8
  %497 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %cmp568 = icmp slt i32 %496, %497
  br i1 %cmp568, label %for.body570, label %for.end577

for.body570:                                      ; preds = %for.cond567
  %498 = load ptr, ptr %recv_procs, align 8, !tbaa !4
  %499 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom571 = sext i32 %499 to i64
  %arrayidx572 = getelementptr inbounds i32, ptr %498, i64 %idxprom571
  %500 = load i32, ptr %arrayidx572, align 4, !tbaa !8
  %501 = load ptr, ptr %recv_procs_AN, align 8, !tbaa !4
  %502 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom573 = sext i32 %502 to i64
  %arrayidx574 = getelementptr inbounds i32, ptr %501, i64 %idxprom573
  store i32 %500, ptr %arrayidx574, align 4, !tbaa !8
  br label %for.inc575

for.inc575:                                       ; preds = %for.body570
  %503 = load i32, ptr %i8, align 4, !tbaa !8
  %inc576 = add nsw i32 %503, 1
  store i32 %inc576, ptr %i8, align 4, !tbaa !8
  br label %for.cond567, !llvm.loop !65

for.end577:                                       ; preds = %for.cond567
  %504 = load ptr, ptr %send_map_starts_AN, align 8, !tbaa !4
  %arrayidx578 = getelementptr inbounds i32, ptr %504, i64 0
  store i32 0, ptr %arrayidx578, align 4, !tbaa !8
  store i32 0, ptr %cnt, align 4, !tbaa !8
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond579

for.cond579:                                      ; preds = %for.inc627, %for.end577
  %505 = load i32, ptr %i8, align 4, !tbaa !8
  %506 = load i32, ptr %num_sends, align 4, !tbaa !8
  %cmp580 = icmp slt i32 %505, %506
  br i1 %cmp580, label %for.body582, label %for.end629

for.body582:                                      ; preds = %for.cond579
  %507 = load ptr, ptr %send_map_starts, align 8, !tbaa !4
  %508 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom583 = sext i32 %508 to i64
  %arrayidx584 = getelementptr inbounds i32, ptr %507, i64 %idxprom583
  %509 = load i32, ptr %arrayidx584, align 4, !tbaa !8
  store i32 %509, ptr %k_map, align 4, !tbaa !8
  %510 = load ptr, ptr %send_map_starts, align 8, !tbaa !4
  %511 = load i32, ptr %i8, align 4, !tbaa !8
  %add585 = add nsw i32 %511, 1
  %idxprom586 = sext i32 %add585 to i64
  %arrayidx587 = getelementptr inbounds i32, ptr %510, i64 %idxprom586
  %512 = load i32, ptr %arrayidx587, align 4, !tbaa !8
  %513 = load i32, ptr %k_map, align 4, !tbaa !8
  %sub588 = sub nsw i32 %512, %513
  %tobool589 = icmp ne i32 %sub588, 0
  br i1 %tobool589, label %if.then590, label %if.end597

if.then590:                                       ; preds = %for.body582
  %514 = load ptr, ptr %send_map_elmts, align 8, !tbaa !4
  %515 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom591 = sext i32 %515 to i64
  %arrayidx592 = getelementptr inbounds i32, ptr %514, i64 %idxprom591
  %516 = load i32, ptr %arrayidx592, align 4, !tbaa !8
  %517 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %div593 = sdiv i32 %516, %517
  %518 = load ptr, ptr %send_map_elmts_AN, align 8, !tbaa !4
  %519 = load i32, ptr %cnt, align 4, !tbaa !8
  %inc594 = add nsw i32 %519, 1
  store i32 %inc594, ptr %cnt, align 4, !tbaa !8
  %idxprom595 = sext i32 %519 to i64
  %arrayidx596 = getelementptr inbounds i32, ptr %518, i64 %idxprom595
  store i32 %div593, ptr %arrayidx596, align 4, !tbaa !8
  br label %if.end597

if.end597:                                        ; preds = %if.then590, %for.body582
  %520 = load ptr, ptr %send_map_starts, align 8, !tbaa !4
  %521 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom598 = sext i32 %521 to i64
  %arrayidx599 = getelementptr inbounds i32, ptr %520, i64 %idxprom598
  %522 = load i32, ptr %arrayidx599, align 4, !tbaa !8
  %add600 = add nsw i32 %522, 1
  store i32 %add600, ptr %j9, align 4, !tbaa !8
  br label %for.cond601

for.cond601:                                      ; preds = %for.inc621, %if.end597
  %523 = load i32, ptr %j9, align 4, !tbaa !8
  %524 = load ptr, ptr %send_map_starts, align 8, !tbaa !4
  %525 = load i32, ptr %i8, align 4, !tbaa !8
  %add602 = add nsw i32 %525, 1
  %idxprom603 = sext i32 %add602 to i64
  %arrayidx604 = getelementptr inbounds i32, ptr %524, i64 %idxprom603
  %526 = load i32, ptr %arrayidx604, align 4, !tbaa !8
  %cmp605 = icmp slt i32 %523, %526
  br i1 %cmp605, label %for.body607, label %for.end623

for.body607:                                      ; preds = %for.cond601
  %527 = load ptr, ptr %send_map_elmts, align 8, !tbaa !4
  %528 = load i32, ptr %j9, align 4, !tbaa !8
  %idxprom608 = sext i32 %528 to i64
  %arrayidx609 = getelementptr inbounds i32, ptr %527, i64 %idxprom608
  %529 = load i32, ptr %arrayidx609, align 4, !tbaa !8
  %530 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %div610 = sdiv i32 %529, %530
  store i32 %div610, ptr %node, align 4, !tbaa !8
  %531 = load i32, ptr %node, align 4, !tbaa !8
  %532 = load ptr, ptr %send_map_elmts_AN, align 8, !tbaa !4
  %533 = load i32, ptr %cnt, align 4, !tbaa !8
  %sub611 = sub nsw i32 %533, 1
  %idxprom612 = sext i32 %sub611 to i64
  %arrayidx613 = getelementptr inbounds i32, ptr %532, i64 %idxprom612
  %534 = load i32, ptr %arrayidx613, align 4, !tbaa !8
  %cmp614 = icmp sgt i32 %531, %534
  br i1 %cmp614, label %if.then616, label %if.end620

if.then616:                                       ; preds = %for.body607
  %535 = load i32, ptr %node, align 4, !tbaa !8
  %536 = load ptr, ptr %send_map_elmts_AN, align 8, !tbaa !4
  %537 = load i32, ptr %cnt, align 4, !tbaa !8
  %inc617 = add nsw i32 %537, 1
  store i32 %inc617, ptr %cnt, align 4, !tbaa !8
  %idxprom618 = sext i32 %537 to i64
  %arrayidx619 = getelementptr inbounds i32, ptr %536, i64 %idxprom618
  store i32 %535, ptr %arrayidx619, align 4, !tbaa !8
  br label %if.end620

if.end620:                                        ; preds = %if.then616, %for.body607
  br label %for.inc621

for.inc621:                                       ; preds = %if.end620
  %538 = load i32, ptr %j9, align 4, !tbaa !8
  %inc622 = add nsw i32 %538, 1
  store i32 %inc622, ptr %j9, align 4, !tbaa !8
  br label %for.cond601, !llvm.loop !66

for.end623:                                       ; preds = %for.cond601
  %539 = load i32, ptr %cnt, align 4, !tbaa !8
  %540 = load ptr, ptr %send_map_starts_AN, align 8, !tbaa !4
  %541 = load i32, ptr %i8, align 4, !tbaa !8
  %add624 = add nsw i32 %541, 1
  %idxprom625 = sext i32 %add624 to i64
  %arrayidx626 = getelementptr inbounds i32, ptr %540, i64 %idxprom625
  store i32 %539, ptr %arrayidx626, align 4, !tbaa !8
  br label %for.inc627

for.inc627:                                       ; preds = %for.end623
  %542 = load i32, ptr %i8, align 4, !tbaa !8
  %inc628 = add nsw i32 %542, 1
  store i32 %inc628, ptr %i8, align 4, !tbaa !8
  br label %for.cond579, !llvm.loop !67

for.end629:                                       ; preds = %for.cond579
  %543 = load ptr, ptr %send_procs_AN, align 8, !tbaa !4
  %544 = load ptr, ptr %comm_pkg_AN, align 8, !tbaa !4
  %send_procs630 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %544, i32 0, i32 2
  store ptr %543, ptr %send_procs630, align 8, !tbaa !59
  %545 = load ptr, ptr %send_map_starts_AN, align 8, !tbaa !4
  %546 = load ptr, ptr %comm_pkg_AN, align 8, !tbaa !4
  %send_map_starts631 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %546, i32 0, i32 3
  store ptr %545, ptr %send_map_starts631, align 8, !tbaa !60
  %547 = load ptr, ptr %send_map_elmts_AN, align 8, !tbaa !4
  %548 = load ptr, ptr %comm_pkg_AN, align 8, !tbaa !4
  %send_map_elmts632 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %548, i32 0, i32 4
  store ptr %547, ptr %send_map_elmts632, align 8, !tbaa !61
  %549 = load ptr, ptr %recv_procs_AN, align 8, !tbaa !4
  %550 = load ptr, ptr %comm_pkg_AN, align 8, !tbaa !4
  %recv_procs633 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %550, i32 0, i32 7
  store ptr %549, ptr %recv_procs633, align 8, !tbaa !62
  %551 = load ptr, ptr %recv_vec_starts_AN, align 8, !tbaa !4
  %552 = load ptr, ptr %comm_pkg_AN, align 8, !tbaa !4
  %recv_vec_starts634 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %552, i32 0, i32 8
  store ptr %551, ptr %recv_vec_starts634, align 8, !tbaa !63
  br label %if.end635

if.end635:                                        ; preds = %for.end629, %if.end517
  %553 = load ptr, ptr %map_to_node, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %553, i32 noundef 0)
  store ptr null, ptr %map_to_node, align 8, !tbaa !4
  %554 = load ptr, ptr %A_offd, align 8, !tbaa !4
  %num_cols = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %554, i32 0, i32 4
  %555 = load i32, ptr %num_cols, align 4, !tbaa !68
  store i32 %555, ptr %num_cols_offd, align 4, !tbaa !8
  %556 = load i32, ptr %num_cols_offd, align 4, !tbaa !8
  %tobool636 = icmp ne i32 %556, 0
  br i1 %tobool636, label %if.then637, label %if.end768

if.then637:                                       ; preds = %if.end635
  %557 = load i32, ptr %num_cols_offd, align 4, !tbaa !8
  %conv638 = sext i32 %557 to i64
  %call639 = call ptr @hypre_CAlloc(i64 noundef %conv638, i64 noundef 4, i32 noundef 0)
  store ptr %call639, ptr %big_map_to_node, align 8, !tbaa !4
  store i32 1, ptr %num_cols_offd_AN, align 4, !tbaa !8
  %558 = load ptr, ptr %col_map_offd, align 8, !tbaa !4
  %arrayidx640 = getelementptr inbounds i32, ptr %558, i64 0
  %559 = load i32, ptr %arrayidx640, align 4, !tbaa !8
  %560 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %div641 = sdiv i32 %559, %560
  %561 = load ptr, ptr %big_map_to_node, align 8, !tbaa !4
  %arrayidx642 = getelementptr inbounds i32, ptr %561, i64 0
  store i32 %div641, ptr %arrayidx642, align 4, !tbaa !8
  store i32 1, ptr %i8, align 4, !tbaa !8
  br label %for.cond643

for.cond643:                                      ; preds = %for.inc662, %if.then637
  %562 = load i32, ptr %i8, align 4, !tbaa !8
  %563 = load i32, ptr %num_cols_offd, align 4, !tbaa !8
  %cmp644 = icmp slt i32 %562, %563
  br i1 %cmp644, label %for.body646, label %for.end664

for.body646:                                      ; preds = %for.cond643
  %564 = load ptr, ptr %col_map_offd, align 8, !tbaa !4
  %565 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom647 = sext i32 %565 to i64
  %arrayidx648 = getelementptr inbounds i32, ptr %564, i64 %idxprom647
  %566 = load i32, ptr %arrayidx648, align 4, !tbaa !8
  %567 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %div649 = sdiv i32 %566, %567
  %568 = load ptr, ptr %big_map_to_node, align 8, !tbaa !4
  %569 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom650 = sext i32 %569 to i64
  %arrayidx651 = getelementptr inbounds i32, ptr %568, i64 %idxprom650
  store i32 %div649, ptr %arrayidx651, align 4, !tbaa !8
  %570 = load ptr, ptr %big_map_to_node, align 8, !tbaa !4
  %571 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom652 = sext i32 %571 to i64
  %arrayidx653 = getelementptr inbounds i32, ptr %570, i64 %idxprom652
  %572 = load i32, ptr %arrayidx653, align 4, !tbaa !8
  %573 = load ptr, ptr %big_map_to_node, align 8, !tbaa !4
  %574 = load i32, ptr %i8, align 4, !tbaa !8
  %sub654 = sub nsw i32 %574, 1
  %idxprom655 = sext i32 %sub654 to i64
  %arrayidx656 = getelementptr inbounds i32, ptr %573, i64 %idxprom655
  %575 = load i32, ptr %arrayidx656, align 4, !tbaa !8
  %cmp657 = icmp sgt i32 %572, %575
  br i1 %cmp657, label %if.then659, label %if.end661

if.then659:                                       ; preds = %for.body646
  %576 = load i32, ptr %num_cols_offd_AN, align 4, !tbaa !8
  %inc660 = add nsw i32 %576, 1
  store i32 %inc660, ptr %num_cols_offd_AN, align 4, !tbaa !8
  br label %if.end661

if.end661:                                        ; preds = %if.then659, %for.body646
  br label %for.inc662

for.inc662:                                       ; preds = %if.end661
  %577 = load i32, ptr %i8, align 4, !tbaa !8
  %inc663 = add nsw i32 %577, 1
  store i32 %inc663, ptr %i8, align 4, !tbaa !8
  br label %for.cond643, !llvm.loop !69

for.end664:                                       ; preds = %for.cond643
  %578 = load i32, ptr %num_cols_offd_AN, align 4, !tbaa !8
  %579 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp665 = icmp sgt i32 %578, %579
  br i1 %cmp665, label %if.then667, label %if.end670

if.then667:                                       ; preds = %for.end664
  %580 = load ptr, ptr %counter, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %580, i32 noundef 0)
  store ptr null, ptr %counter, align 8, !tbaa !4
  %581 = load i32, ptr %num_cols_offd_AN, align 4, !tbaa !8
  %conv668 = sext i32 %581 to i64
  %call669 = call ptr @hypre_CAlloc(i64 noundef %conv668, i64 noundef 4, i32 noundef 0)
  store ptr %call669, ptr %counter, align 8, !tbaa !4
  br label %if.end670

if.end670:                                        ; preds = %if.then667, %for.end664
  store ptr null, ptr %map_to_map, align 8, !tbaa !4
  store ptr null, ptr %col_map_offd_AN, align 8, !tbaa !4
  %582 = load i32, ptr %num_cols_offd, align 4, !tbaa !8
  %conv671 = sext i32 %582 to i64
  %call672 = call ptr @hypre_CAlloc(i64 noundef %conv671, i64 noundef 4, i32 noundef 0)
  store ptr %call672, ptr %map_to_map, align 8, !tbaa !4
  %583 = load i32, ptr %num_cols_offd_AN, align 4, !tbaa !8
  %conv673 = sext i32 %583 to i64
  %call674 = call ptr @hypre_CAlloc(i64 noundef %conv673, i64 noundef 4, i32 noundef 0)
  store ptr %call674, ptr %col_map_offd_AN, align 8, !tbaa !4
  %584 = load ptr, ptr %big_map_to_node, align 8, !tbaa !4
  %arrayidx675 = getelementptr inbounds i32, ptr %584, i64 0
  %585 = load i32, ptr %arrayidx675, align 4, !tbaa !8
  %586 = load ptr, ptr %col_map_offd_AN, align 8, !tbaa !4
  %arrayidx676 = getelementptr inbounds i32, ptr %586, i64 0
  store i32 %585, ptr %arrayidx676, align 4, !tbaa !8
  %587 = load ptr, ptr %recv_vec_starts_AN, align 8, !tbaa !4
  %arrayidx677 = getelementptr inbounds i32, ptr %587, i64 0
  store i32 0, ptr %arrayidx677, align 4, !tbaa !8
  store i32 1, ptr %cnt, align 4, !tbaa !8
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond678

for.cond678:                                      ; preds = %for.inc712, %if.end670
  %588 = load i32, ptr %i8, align 4, !tbaa !8
  %589 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %cmp679 = icmp slt i32 %588, %589
  br i1 %cmp679, label %for.body681, label %for.end714

for.body681:                                      ; preds = %for.cond678
  %590 = load ptr, ptr %recv_vec_starts, align 8, !tbaa !4
  %591 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom682 = sext i32 %591 to i64
  %arrayidx683 = getelementptr inbounds i32, ptr %590, i64 %idxprom682
  %592 = load i32, ptr %arrayidx683, align 4, !tbaa !8
  store i32 %592, ptr %j9, align 4, !tbaa !8
  br label %for.cond684

for.cond684:                                      ; preds = %for.inc706, %for.body681
  %593 = load i32, ptr %j9, align 4, !tbaa !8
  %594 = load ptr, ptr %recv_vec_starts, align 8, !tbaa !4
  %595 = load i32, ptr %i8, align 4, !tbaa !8
  %add685 = add nsw i32 %595, 1
  %idxprom686 = sext i32 %add685 to i64
  %arrayidx687 = getelementptr inbounds i32, ptr %594, i64 %idxprom686
  %596 = load i32, ptr %arrayidx687, align 4, !tbaa !8
  %cmp688 = icmp slt i32 %593, %596
  br i1 %cmp688, label %for.body690, label %for.end708

for.body690:                                      ; preds = %for.cond684
  %597 = load ptr, ptr %big_map_to_node, align 8, !tbaa !4
  %598 = load i32, ptr %j9, align 4, !tbaa !8
  %idxprom691 = sext i32 %598 to i64
  %arrayidx692 = getelementptr inbounds i32, ptr %597, i64 %idxprom691
  %599 = load i32, ptr %arrayidx692, align 4, !tbaa !8
  store i32 %599, ptr %big_node, align 4, !tbaa !8
  %600 = load i32, ptr %big_node, align 4, !tbaa !8
  %601 = load ptr, ptr %col_map_offd_AN, align 8, !tbaa !4
  %602 = load i32, ptr %cnt, align 4, !tbaa !8
  %sub693 = sub nsw i32 %602, 1
  %idxprom694 = sext i32 %sub693 to i64
  %arrayidx695 = getelementptr inbounds i32, ptr %601, i64 %idxprom694
  %603 = load i32, ptr %arrayidx695, align 4, !tbaa !8
  %cmp696 = icmp sgt i32 %600, %603
  br i1 %cmp696, label %if.then698, label %if.end702

if.then698:                                       ; preds = %for.body690
  %604 = load i32, ptr %big_node, align 4, !tbaa !8
  %605 = load ptr, ptr %col_map_offd_AN, align 8, !tbaa !4
  %606 = load i32, ptr %cnt, align 4, !tbaa !8
  %inc699 = add nsw i32 %606, 1
  store i32 %inc699, ptr %cnt, align 4, !tbaa !8
  %idxprom700 = sext i32 %606 to i64
  %arrayidx701 = getelementptr inbounds i32, ptr %605, i64 %idxprom700
  store i32 %604, ptr %arrayidx701, align 4, !tbaa !8
  br label %if.end702

if.end702:                                        ; preds = %if.then698, %for.body690
  %607 = load i32, ptr %cnt, align 4, !tbaa !8
  %sub703 = sub nsw i32 %607, 1
  %608 = load ptr, ptr %map_to_map, align 8, !tbaa !4
  %609 = load i32, ptr %j9, align 4, !tbaa !8
  %idxprom704 = sext i32 %609 to i64
  %arrayidx705 = getelementptr inbounds i32, ptr %608, i64 %idxprom704
  store i32 %sub703, ptr %arrayidx705, align 4, !tbaa !8
  br label %for.inc706

for.inc706:                                       ; preds = %if.end702
  %610 = load i32, ptr %j9, align 4, !tbaa !8
  %inc707 = add nsw i32 %610, 1
  store i32 %inc707, ptr %j9, align 4, !tbaa !8
  br label %for.cond684, !llvm.loop !70

for.end708:                                       ; preds = %for.cond684
  %611 = load i32, ptr %cnt, align 4, !tbaa !8
  %612 = load ptr, ptr %recv_vec_starts_AN, align 8, !tbaa !4
  %613 = load i32, ptr %i8, align 4, !tbaa !8
  %add709 = add nsw i32 %613, 1
  %idxprom710 = sext i32 %add709 to i64
  %arrayidx711 = getelementptr inbounds i32, ptr %612, i64 %idxprom710
  store i32 %611, ptr %arrayidx711, align 4, !tbaa !8
  br label %for.inc712

for.inc712:                                       ; preds = %for.end708
  %614 = load i32, ptr %i8, align 4, !tbaa !8
  %inc713 = add nsw i32 %614, 1
  store i32 %inc713, ptr %i8, align 4, !tbaa !8
  br label %for.cond678, !llvm.loop !71

for.end714:                                       ; preds = %for.cond678
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond715

for.cond715:                                      ; preds = %for.inc721, %for.end714
  %615 = load i32, ptr %i8, align 4, !tbaa !8
  %616 = load i32, ptr %num_cols_offd_AN, align 4, !tbaa !8
  %cmp716 = icmp slt i32 %615, %616
  br i1 %cmp716, label %for.body718, label %for.end723

for.body718:                                      ; preds = %for.cond715
  %617 = load ptr, ptr %counter, align 8, !tbaa !4
  %618 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom719 = sext i32 %618 to i64
  %arrayidx720 = getelementptr inbounds i32, ptr %617, i64 %idxprom719
  store i32 -1, ptr %arrayidx720, align 4, !tbaa !8
  br label %for.inc721

for.inc721:                                       ; preds = %for.body718
  %619 = load i32, ptr %i8, align 4, !tbaa !8
  %inc722 = add nsw i32 %619, 1
  store i32 %inc722, ptr %i8, align 4, !tbaa !8
  br label %for.cond715, !llvm.loop !72

for.end723:                                       ; preds = %for.cond715
  store i32 0, ptr %AN_num_nonzeros_offd, align 4, !tbaa !8
  store i32 0, ptr %row, align 4, !tbaa !8
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond724

for.cond724:                                      ; preds = %for.inc763, %for.end723
  %620 = load i32, ptr %i8, align 4, !tbaa !8
  %621 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp725 = icmp slt i32 %620, %621
  br i1 %cmp725, label %for.body727, label %for.end765

for.body727:                                      ; preds = %for.cond724
  %622 = load i32, ptr %AN_num_nonzeros_offd, align 4, !tbaa !8
  %623 = load ptr, ptr %AN_offd_i, align 8, !tbaa !4
  %624 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom728 = sext i32 %624 to i64
  %arrayidx729 = getelementptr inbounds i32, ptr %623, i64 %idxprom728
  store i32 %622, ptr %arrayidx729, align 4, !tbaa !8
  store i32 0, ptr %j9, align 4, !tbaa !8
  br label %for.cond730

for.cond730:                                      ; preds = %for.inc760, %for.body727
  %625 = load i32, ptr %j9, align 4, !tbaa !8
  %626 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp731 = icmp slt i32 %625, %626
  br i1 %cmp731, label %for.body733, label %for.end762

for.body733:                                      ; preds = %for.cond730
  %627 = load ptr, ptr %A_offd_i, align 8, !tbaa !4
  %628 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom734 = sext i32 %628 to i64
  %arrayidx735 = getelementptr inbounds i32, ptr %627, i64 %idxprom734
  %629 = load i32, ptr %arrayidx735, align 4, !tbaa !8
  store i32 %629, ptr %k, align 4, !tbaa !8
  br label %for.cond736

for.cond736:                                      ; preds = %for.inc756, %for.body733
  %630 = load i32, ptr %k, align 4, !tbaa !8
  %631 = load ptr, ptr %A_offd_i, align 8, !tbaa !4
  %632 = load i32, ptr %row, align 4, !tbaa !8
  %add737 = add nsw i32 %632, 1
  %idxprom738 = sext i32 %add737 to i64
  %arrayidx739 = getelementptr inbounds i32, ptr %631, i64 %idxprom738
  %633 = load i32, ptr %arrayidx739, align 4, !tbaa !8
  %cmp740 = icmp slt i32 %630, %633
  br i1 %cmp740, label %for.body742, label %for.end758

for.body742:                                      ; preds = %for.cond736
  %634 = load ptr, ptr %map_to_map, align 8, !tbaa !4
  %635 = load ptr, ptr %A_offd_j, align 8, !tbaa !4
  %636 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom743 = sext i32 %636 to i64
  %arrayidx744 = getelementptr inbounds i32, ptr %635, i64 %idxprom743
  %637 = load i32, ptr %arrayidx744, align 4, !tbaa !8
  %idxprom745 = sext i32 %637 to i64
  %arrayidx746 = getelementptr inbounds i32, ptr %634, i64 %idxprom745
  %638 = load i32, ptr %arrayidx746, align 4, !tbaa !8
  store i32 %638, ptr %k_map, align 4, !tbaa !8
  %639 = load ptr, ptr %counter, align 8, !tbaa !4
  %640 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom747 = sext i32 %640 to i64
  %arrayidx748 = getelementptr inbounds i32, ptr %639, i64 %idxprom747
  %641 = load i32, ptr %arrayidx748, align 4, !tbaa !8
  %642 = load i32, ptr %i8, align 4, !tbaa !8
  %cmp749 = icmp slt i32 %641, %642
  br i1 %cmp749, label %if.then751, label %if.end755

if.then751:                                       ; preds = %for.body742
  %643 = load i32, ptr %i8, align 4, !tbaa !8
  %644 = load ptr, ptr %counter, align 8, !tbaa !4
  %645 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom752 = sext i32 %645 to i64
  %arrayidx753 = getelementptr inbounds i32, ptr %644, i64 %idxprom752
  store i32 %643, ptr %arrayidx753, align 4, !tbaa !8
  %646 = load i32, ptr %AN_num_nonzeros_offd, align 4, !tbaa !8
  %inc754 = add nsw i32 %646, 1
  store i32 %inc754, ptr %AN_num_nonzeros_offd, align 4, !tbaa !8
  br label %if.end755

if.end755:                                        ; preds = %if.then751, %for.body742
  br label %for.inc756

for.inc756:                                       ; preds = %if.end755
  %647 = load i32, ptr %k, align 4, !tbaa !8
  %inc757 = add nsw i32 %647, 1
  store i32 %inc757, ptr %k, align 4, !tbaa !8
  br label %for.cond736, !llvm.loop !73

for.end758:                                       ; preds = %for.cond736
  %648 = load i32, ptr %row, align 4, !tbaa !8
  %inc759 = add nsw i32 %648, 1
  store i32 %inc759, ptr %row, align 4, !tbaa !8
  br label %for.inc760

for.inc760:                                       ; preds = %for.end758
  %649 = load i32, ptr %j9, align 4, !tbaa !8
  %inc761 = add nsw i32 %649, 1
  store i32 %inc761, ptr %j9, align 4, !tbaa !8
  br label %for.cond730, !llvm.loop !74

for.end762:                                       ; preds = %for.cond730
  br label %for.inc763

for.inc763:                                       ; preds = %for.end762
  %650 = load i32, ptr %i8, align 4, !tbaa !8
  %inc764 = add nsw i32 %650, 1
  store i32 %inc764, ptr %i8, align 4, !tbaa !8
  br label %for.cond724, !llvm.loop !75

for.end765:                                       ; preds = %for.cond724
  %651 = load i32, ptr %AN_num_nonzeros_offd, align 4, !tbaa !8
  %652 = load ptr, ptr %AN_offd_i, align 8, !tbaa !4
  %653 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %idxprom766 = sext i32 %653 to i64
  %arrayidx767 = getelementptr inbounds i32, ptr %652, i64 %idxprom766
  store i32 %651, ptr %arrayidx767, align 4, !tbaa !8
  br label %if.end768

if.end768:                                        ; preds = %for.end765, %if.end635
  %654 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %655 = load i32, ptr %num_cols_offd_AN, align 4, !tbaa !8
  %656 = load i32, ptr %AN_num_nonzeros_offd, align 4, !tbaa !8
  %call769 = call ptr @hypre_CSRMatrixCreate(i32 noundef %654, i32 noundef %655, i32 noundef %656)
  store ptr %call769, ptr %AN_offd, align 8, !tbaa !4
  %657 = load ptr, ptr %AN_offd_i, align 8, !tbaa !4
  %658 = load ptr, ptr %AN_offd, align 8, !tbaa !4
  %i770 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %658, i32 0, i32 0
  store ptr %657, ptr %i770, align 8, !tbaa !14
  %659 = load i32, ptr %AN_num_nonzeros_offd, align 4, !tbaa !8
  %tobool771 = icmp ne i32 %659, 0
  br i1 %tobool771, label %if.then772, label %if.end1148

if.then772:                                       ; preds = %if.end768
  %660 = load i32, ptr %AN_num_nonzeros_offd, align 4, !tbaa !8
  %conv773 = sext i32 %660 to i64
  %call774 = call ptr @hypre_CAlloc(i64 noundef %conv773, i64 noundef 4, i32 noundef 0)
  store ptr %call774, ptr %AN_offd_j, align 8, !tbaa !4
  %661 = load i32, ptr %AN_num_nonzeros_offd, align 4, !tbaa !8
  %conv775 = sext i32 %661 to i64
  %call776 = call ptr @hypre_CAlloc(i64 noundef %conv775, i64 noundef 8, i32 noundef 0)
  store ptr %call776, ptr %AN_offd_data, align 8, !tbaa !4
  %662 = load ptr, ptr %AN_offd_j, align 8, !tbaa !4
  %663 = load ptr, ptr %AN_offd, align 8, !tbaa !4
  %j777 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %663, i32 0, i32 1
  store ptr %662, ptr %j777, align 8, !tbaa !18
  %664 = load ptr, ptr %AN_offd_data, align 8, !tbaa !4
  %665 = load ptr, ptr %AN_offd, align 8, !tbaa !4
  %data778 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %665, i32 0, i32 9
  store ptr %664, ptr %data778, align 8, !tbaa !16
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond779

for.cond779:                                      ; preds = %for.inc785, %if.then772
  %666 = load i32, ptr %i8, align 4, !tbaa !8
  %667 = load i32, ptr %num_cols_offd_AN, align 4, !tbaa !8
  %cmp780 = icmp slt i32 %666, %667
  br i1 %cmp780, label %for.body782, label %for.end787

for.body782:                                      ; preds = %for.cond779
  %668 = load ptr, ptr %counter, align 8, !tbaa !4
  %669 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom783 = sext i32 %669 to i64
  %arrayidx784 = getelementptr inbounds i32, ptr %668, i64 %idxprom783
  store i32 -1, ptr %arrayidx784, align 4, !tbaa !8
  br label %for.inc785

for.inc785:                                       ; preds = %for.body782
  %670 = load i32, ptr %i8, align 4, !tbaa !8
  %inc786 = add nsw i32 %670, 1
  store i32 %inc786, ptr %i8, align 4, !tbaa !8
  br label %for.cond779, !llvm.loop !76

for.end787:                                       ; preds = %for.cond779
  store i32 0, ptr %index, align 4, !tbaa !8
  store i32 0, ptr %row, align 4, !tbaa !8
  %671 = load ptr, ptr %AN_offd_i, align 8, !tbaa !4
  %arrayidx788 = getelementptr inbounds i32, ptr %671, i64 0
  store i32 0, ptr %arrayidx788, align 4, !tbaa !8
  store i32 0, ptr %start_index, align 4, !tbaa !8
  %672 = load i32, ptr %mode, align 4, !tbaa !8
  switch i32 %672, label %sw.epilog1147 [
    i32 1, label %sw.bb789
    i32 2, label %sw.bb861
    i32 3, label %sw.bb927
    i32 4, label %sw.bb991
    i32 6, label %sw.bb1092
  ]

sw.bb789:                                         ; preds = %for.end787
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond790

for.cond790:                                      ; preds = %for.inc846, %sw.bb789
  %673 = load i32, ptr %i8, align 4, !tbaa !8
  %674 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp791 = icmp slt i32 %673, %674
  br i1 %cmp791, label %for.body793, label %for.end848

for.body793:                                      ; preds = %for.cond790
  store i32 0, ptr %j9, align 4, !tbaa !8
  br label %for.cond794

for.cond794:                                      ; preds = %for.inc843, %for.body793
  %675 = load i32, ptr %j9, align 4, !tbaa !8
  %676 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp795 = icmp slt i32 %675, %676
  br i1 %cmp795, label %for.body797, label %for.end845

for.body797:                                      ; preds = %for.cond794
  %677 = load ptr, ptr %A_offd_i, align 8, !tbaa !4
  %678 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom798 = sext i32 %678 to i64
  %arrayidx799 = getelementptr inbounds i32, ptr %677, i64 %idxprom798
  %679 = load i32, ptr %arrayidx799, align 4, !tbaa !8
  store i32 %679, ptr %k, align 4, !tbaa !8
  br label %for.cond800

for.cond800:                                      ; preds = %for.inc839, %for.body797
  %680 = load i32, ptr %k, align 4, !tbaa !8
  %681 = load ptr, ptr %A_offd_i, align 8, !tbaa !4
  %682 = load i32, ptr %row, align 4, !tbaa !8
  %add801 = add nsw i32 %682, 1
  %idxprom802 = sext i32 %add801 to i64
  %arrayidx803 = getelementptr inbounds i32, ptr %681, i64 %idxprom802
  %683 = load i32, ptr %arrayidx803, align 4, !tbaa !8
  %cmp804 = icmp slt i32 %680, %683
  br i1 %cmp804, label %for.body806, label %for.end841

for.body806:                                      ; preds = %for.cond800
  %684 = load ptr, ptr %map_to_map, align 8, !tbaa !4
  %685 = load ptr, ptr %A_offd_j, align 8, !tbaa !4
  %686 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom807 = sext i32 %686 to i64
  %arrayidx808 = getelementptr inbounds i32, ptr %685, i64 %idxprom807
  %687 = load i32, ptr %arrayidx808, align 4, !tbaa !8
  %idxprom809 = sext i32 %687 to i64
  %arrayidx810 = getelementptr inbounds i32, ptr %684, i64 %idxprom809
  %688 = load i32, ptr %arrayidx810, align 4, !tbaa !8
  store i32 %688, ptr %k_map, align 4, !tbaa !8
  %689 = load ptr, ptr %counter, align 8, !tbaa !4
  %690 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom811 = sext i32 %690 to i64
  %arrayidx812 = getelementptr inbounds i32, ptr %689, i64 %idxprom811
  %691 = load i32, ptr %arrayidx812, align 4, !tbaa !8
  %692 = load i32, ptr %start_index, align 4, !tbaa !8
  %cmp813 = icmp slt i32 %691, %692
  br i1 %cmp813, label %if.then815, label %if.else828

if.then815:                                       ; preds = %for.body806
  %693 = load i32, ptr %index, align 4, !tbaa !8
  %694 = load ptr, ptr %counter, align 8, !tbaa !4
  %695 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom816 = sext i32 %695 to i64
  %arrayidx817 = getelementptr inbounds i32, ptr %694, i64 %idxprom816
  store i32 %693, ptr %arrayidx817, align 4, !tbaa !8
  %696 = load i32, ptr %k_map, align 4, !tbaa !8
  %697 = load ptr, ptr %AN_offd_j, align 8, !tbaa !4
  %698 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom818 = sext i32 %698 to i64
  %arrayidx819 = getelementptr inbounds i32, ptr %697, i64 %idxprom818
  store i32 %696, ptr %arrayidx819, align 4, !tbaa !8
  %699 = load ptr, ptr %A_offd_data, align 8, !tbaa !4
  %700 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom820 = sext i32 %700 to i64
  %arrayidx821 = getelementptr inbounds double, ptr %699, i64 %idxprom820
  %701 = load double, ptr %arrayidx821, align 8, !tbaa !32
  %702 = load ptr, ptr %A_offd_data, align 8, !tbaa !4
  %703 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom822 = sext i32 %703 to i64
  %arrayidx823 = getelementptr inbounds double, ptr %702, i64 %idxprom822
  %704 = load double, ptr %arrayidx823, align 8, !tbaa !32
  %mul824 = fmul double %701, %704
  %705 = load ptr, ptr %AN_offd_data, align 8, !tbaa !4
  %706 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom825 = sext i32 %706 to i64
  %arrayidx826 = getelementptr inbounds double, ptr %705, i64 %idxprom825
  store double %mul824, ptr %arrayidx826, align 8, !tbaa !32
  %707 = load i32, ptr %index, align 4, !tbaa !8
  %inc827 = add nsw i32 %707, 1
  store i32 %inc827, ptr %index, align 4, !tbaa !8
  br label %if.end838

if.else828:                                       ; preds = %for.body806
  %708 = load ptr, ptr %A_offd_data, align 8, !tbaa !4
  %709 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom829 = sext i32 %709 to i64
  %arrayidx830 = getelementptr inbounds double, ptr %708, i64 %idxprom829
  %710 = load double, ptr %arrayidx830, align 8, !tbaa !32
  %711 = load ptr, ptr %A_offd_data, align 8, !tbaa !4
  %712 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom831 = sext i32 %712 to i64
  %arrayidx832 = getelementptr inbounds double, ptr %711, i64 %idxprom831
  %713 = load double, ptr %arrayidx832, align 8, !tbaa !32
  %714 = load ptr, ptr %AN_offd_data, align 8, !tbaa !4
  %715 = load ptr, ptr %counter, align 8, !tbaa !4
  %716 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom834 = sext i32 %716 to i64
  %arrayidx835 = getelementptr inbounds i32, ptr %715, i64 %idxprom834
  %717 = load i32, ptr %arrayidx835, align 4, !tbaa !8
  %idxprom836 = sext i32 %717 to i64
  %arrayidx837 = getelementptr inbounds double, ptr %714, i64 %idxprom836
  %718 = load double, ptr %arrayidx837, align 8, !tbaa !32
  %719 = call double @llvm.fmuladd.f64(double %710, double %713, double %718)
  store double %719, ptr %arrayidx837, align 8, !tbaa !32
  br label %if.end838

if.end838:                                        ; preds = %if.else828, %if.then815
  br label %for.inc839

for.inc839:                                       ; preds = %if.end838
  %720 = load i32, ptr %k, align 4, !tbaa !8
  %inc840 = add nsw i32 %720, 1
  store i32 %inc840, ptr %k, align 4, !tbaa !8
  br label %for.cond800, !llvm.loop !77

for.end841:                                       ; preds = %for.cond800
  %721 = load i32, ptr %row, align 4, !tbaa !8
  %inc842 = add nsw i32 %721, 1
  store i32 %inc842, ptr %row, align 4, !tbaa !8
  br label %for.inc843

for.inc843:                                       ; preds = %for.end841
  %722 = load i32, ptr %j9, align 4, !tbaa !8
  %inc844 = add nsw i32 %722, 1
  store i32 %inc844, ptr %j9, align 4, !tbaa !8
  br label %for.cond794, !llvm.loop !78

for.end845:                                       ; preds = %for.cond794
  %723 = load i32, ptr %index, align 4, !tbaa !8
  store i32 %723, ptr %start_index, align 4, !tbaa !8
  br label %for.inc846

for.inc846:                                       ; preds = %for.end845
  %724 = load i32, ptr %i8, align 4, !tbaa !8
  %inc847 = add nsw i32 %724, 1
  store i32 %inc847, ptr %i8, align 4, !tbaa !8
  br label %for.cond790, !llvm.loop !79

for.end848:                                       ; preds = %for.cond790
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond849

for.cond849:                                      ; preds = %for.inc858, %for.end848
  %725 = load i32, ptr %i8, align 4, !tbaa !8
  %726 = load i32, ptr %AN_num_nonzeros_offd, align 4, !tbaa !8
  %cmp850 = icmp slt i32 %725, %726
  br i1 %cmp850, label %for.body852, label %for.end860

for.body852:                                      ; preds = %for.cond849
  %727 = load ptr, ptr %AN_offd_data, align 8, !tbaa !4
  %728 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom853 = sext i32 %728 to i64
  %arrayidx854 = getelementptr inbounds double, ptr %727, i64 %idxprom853
  %729 = load double, ptr %arrayidx854, align 8, !tbaa !32
  %call855 = call double @sqrt(double noundef %729) #5
  %730 = load ptr, ptr %AN_offd_data, align 8, !tbaa !4
  %731 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom856 = sext i32 %731 to i64
  %arrayidx857 = getelementptr inbounds double, ptr %730, i64 %idxprom856
  store double %call855, ptr %arrayidx857, align 8, !tbaa !32
  br label %for.inc858

for.inc858:                                       ; preds = %for.body852
  %732 = load i32, ptr %i8, align 4, !tbaa !8
  %inc859 = add nsw i32 %732, 1
  store i32 %inc859, ptr %i8, align 4, !tbaa !8
  br label %for.cond849, !llvm.loop !80

for.end860:                                       ; preds = %for.cond849
  br label %sw.epilog1147

sw.bb861:                                         ; preds = %for.end787
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond862

for.cond862:                                      ; preds = %for.inc913, %sw.bb861
  %733 = load i32, ptr %i8, align 4, !tbaa !8
  %734 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp863 = icmp slt i32 %733, %734
  br i1 %cmp863, label %for.body865, label %for.end915

for.body865:                                      ; preds = %for.cond862
  store i32 0, ptr %j9, align 4, !tbaa !8
  br label %for.cond866

for.cond866:                                      ; preds = %for.inc910, %for.body865
  %735 = load i32, ptr %j9, align 4, !tbaa !8
  %736 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp867 = icmp slt i32 %735, %736
  br i1 %cmp867, label %for.body869, label %for.end912

for.body869:                                      ; preds = %for.cond866
  %737 = load ptr, ptr %A_offd_i, align 8, !tbaa !4
  %738 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom870 = sext i32 %738 to i64
  %arrayidx871 = getelementptr inbounds i32, ptr %737, i64 %idxprom870
  %739 = load i32, ptr %arrayidx871, align 4, !tbaa !8
  store i32 %739, ptr %k, align 4, !tbaa !8
  br label %for.cond872

for.cond872:                                      ; preds = %for.inc906, %for.body869
  %740 = load i32, ptr %k, align 4, !tbaa !8
  %741 = load ptr, ptr %A_offd_i, align 8, !tbaa !4
  %742 = load i32, ptr %row, align 4, !tbaa !8
  %add873 = add nsw i32 %742, 1
  %idxprom874 = sext i32 %add873 to i64
  %arrayidx875 = getelementptr inbounds i32, ptr %741, i64 %idxprom874
  %743 = load i32, ptr %arrayidx875, align 4, !tbaa !8
  %cmp876 = icmp slt i32 %740, %743
  br i1 %cmp876, label %for.body878, label %for.end908

for.body878:                                      ; preds = %for.cond872
  %744 = load ptr, ptr %map_to_map, align 8, !tbaa !4
  %745 = load ptr, ptr %A_offd_j, align 8, !tbaa !4
  %746 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom879 = sext i32 %746 to i64
  %arrayidx880 = getelementptr inbounds i32, ptr %745, i64 %idxprom879
  %747 = load i32, ptr %arrayidx880, align 4, !tbaa !8
  %idxprom881 = sext i32 %747 to i64
  %arrayidx882 = getelementptr inbounds i32, ptr %744, i64 %idxprom881
  %748 = load i32, ptr %arrayidx882, align 4, !tbaa !8
  store i32 %748, ptr %k_map, align 4, !tbaa !8
  %749 = load ptr, ptr %counter, align 8, !tbaa !4
  %750 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom883 = sext i32 %750 to i64
  %arrayidx884 = getelementptr inbounds i32, ptr %749, i64 %idxprom883
  %751 = load i32, ptr %arrayidx884, align 4, !tbaa !8
  %752 = load i32, ptr %start_index, align 4, !tbaa !8
  %cmp885 = icmp slt i32 %751, %752
  br i1 %cmp885, label %if.then887, label %if.else897

if.then887:                                       ; preds = %for.body878
  %753 = load i32, ptr %index, align 4, !tbaa !8
  %754 = load ptr, ptr %counter, align 8, !tbaa !4
  %755 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom888 = sext i32 %755 to i64
  %arrayidx889 = getelementptr inbounds i32, ptr %754, i64 %idxprom888
  store i32 %753, ptr %arrayidx889, align 4, !tbaa !8
  %756 = load i32, ptr %k_map, align 4, !tbaa !8
  %757 = load ptr, ptr %AN_offd_j, align 8, !tbaa !4
  %758 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom890 = sext i32 %758 to i64
  %arrayidx891 = getelementptr inbounds i32, ptr %757, i64 %idxprom890
  store i32 %756, ptr %arrayidx891, align 4, !tbaa !8
  %759 = load ptr, ptr %A_offd_data, align 8, !tbaa !4
  %760 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom892 = sext i32 %760 to i64
  %arrayidx893 = getelementptr inbounds double, ptr %759, i64 %idxprom892
  %761 = load double, ptr %arrayidx893, align 8, !tbaa !32
  %762 = call double @llvm.fabs.f64(double %761)
  %763 = load ptr, ptr %AN_offd_data, align 8, !tbaa !4
  %764 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom894 = sext i32 %764 to i64
  %arrayidx895 = getelementptr inbounds double, ptr %763, i64 %idxprom894
  store double %762, ptr %arrayidx895, align 8, !tbaa !32
  %765 = load i32, ptr %index, align 4, !tbaa !8
  %inc896 = add nsw i32 %765, 1
  store i32 %inc896, ptr %index, align 4, !tbaa !8
  br label %if.end905

if.else897:                                       ; preds = %for.body878
  %766 = load ptr, ptr %A_offd_data, align 8, !tbaa !4
  %767 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom898 = sext i32 %767 to i64
  %arrayidx899 = getelementptr inbounds double, ptr %766, i64 %idxprom898
  %768 = load double, ptr %arrayidx899, align 8, !tbaa !32
  %769 = call double @llvm.fabs.f64(double %768)
  %770 = load ptr, ptr %AN_offd_data, align 8, !tbaa !4
  %771 = load ptr, ptr %counter, align 8, !tbaa !4
  %772 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom900 = sext i32 %772 to i64
  %arrayidx901 = getelementptr inbounds i32, ptr %771, i64 %idxprom900
  %773 = load i32, ptr %arrayidx901, align 4, !tbaa !8
  %idxprom902 = sext i32 %773 to i64
  %arrayidx903 = getelementptr inbounds double, ptr %770, i64 %idxprom902
  %774 = load double, ptr %arrayidx903, align 8, !tbaa !32
  %add904 = fadd double %774, %769
  store double %add904, ptr %arrayidx903, align 8, !tbaa !32
  br label %if.end905

if.end905:                                        ; preds = %if.else897, %if.then887
  br label %for.inc906

for.inc906:                                       ; preds = %if.end905
  %775 = load i32, ptr %k, align 4, !tbaa !8
  %inc907 = add nsw i32 %775, 1
  store i32 %inc907, ptr %k, align 4, !tbaa !8
  br label %for.cond872, !llvm.loop !81

for.end908:                                       ; preds = %for.cond872
  %776 = load i32, ptr %row, align 4, !tbaa !8
  %inc909 = add nsw i32 %776, 1
  store i32 %inc909, ptr %row, align 4, !tbaa !8
  br label %for.inc910

for.inc910:                                       ; preds = %for.end908
  %777 = load i32, ptr %j9, align 4, !tbaa !8
  %inc911 = add nsw i32 %777, 1
  store i32 %inc911, ptr %j9, align 4, !tbaa !8
  br label %for.cond866, !llvm.loop !82

for.end912:                                       ; preds = %for.cond866
  %778 = load i32, ptr %index, align 4, !tbaa !8
  store i32 %778, ptr %start_index, align 4, !tbaa !8
  br label %for.inc913

for.inc913:                                       ; preds = %for.end912
  %779 = load i32, ptr %i8, align 4, !tbaa !8
  %inc914 = add nsw i32 %779, 1
  store i32 %inc914, ptr %i8, align 4, !tbaa !8
  br label %for.cond862, !llvm.loop !83

for.end915:                                       ; preds = %for.cond862
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond916

for.cond916:                                      ; preds = %for.inc924, %for.end915
  %780 = load i32, ptr %i8, align 4, !tbaa !8
  %781 = load i32, ptr %AN_num_nonzeros_offd, align 4, !tbaa !8
  %cmp917 = icmp slt i32 %780, %781
  br i1 %cmp917, label %for.body919, label %for.end926

for.body919:                                      ; preds = %for.cond916
  %782 = load i32, ptr %num_fun2, align 4, !tbaa !8
  %conv920 = sitofp i32 %782 to double
  %783 = load ptr, ptr %AN_offd_data, align 8, !tbaa !4
  %784 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom921 = sext i32 %784 to i64
  %arrayidx922 = getelementptr inbounds double, ptr %783, i64 %idxprom921
  %785 = load double, ptr %arrayidx922, align 8, !tbaa !32
  %div923 = fdiv double %785, %conv920
  store double %div923, ptr %arrayidx922, align 8, !tbaa !32
  br label %for.inc924

for.inc924:                                       ; preds = %for.body919
  %786 = load i32, ptr %i8, align 4, !tbaa !8
  %inc925 = add nsw i32 %786, 1
  store i32 %inc925, ptr %i8, align 4, !tbaa !8
  br label %for.cond916, !llvm.loop !84

for.end926:                                       ; preds = %for.cond916
  br label %sw.epilog1147

sw.bb927:                                         ; preds = %for.end787
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond928

for.cond928:                                      ; preds = %for.inc988, %sw.bb927
  %787 = load i32, ptr %i8, align 4, !tbaa !8
  %788 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp929 = icmp slt i32 %787, %788
  br i1 %cmp929, label %for.body931, label %for.end990

for.body931:                                      ; preds = %for.cond928
  store i32 0, ptr %j9, align 4, !tbaa !8
  br label %for.cond932

for.cond932:                                      ; preds = %for.inc985, %for.body931
  %789 = load i32, ptr %j9, align 4, !tbaa !8
  %790 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp933 = icmp slt i32 %789, %790
  br i1 %cmp933, label %for.body935, label %for.end987

for.body935:                                      ; preds = %for.cond932
  %791 = load ptr, ptr %A_offd_i, align 8, !tbaa !4
  %792 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom936 = sext i32 %792 to i64
  %arrayidx937 = getelementptr inbounds i32, ptr %791, i64 %idxprom936
  %793 = load i32, ptr %arrayidx937, align 4, !tbaa !8
  store i32 %793, ptr %k, align 4, !tbaa !8
  br label %for.cond938

for.cond938:                                      ; preds = %for.inc981, %for.body935
  %794 = load i32, ptr %k, align 4, !tbaa !8
  %795 = load ptr, ptr %A_offd_i, align 8, !tbaa !4
  %796 = load i32, ptr %row, align 4, !tbaa !8
  %add939 = add nsw i32 %796, 1
  %idxprom940 = sext i32 %add939 to i64
  %arrayidx941 = getelementptr inbounds i32, ptr %795, i64 %idxprom940
  %797 = load i32, ptr %arrayidx941, align 4, !tbaa !8
  %cmp942 = icmp slt i32 %794, %797
  br i1 %cmp942, label %for.body944, label %for.end983

for.body944:                                      ; preds = %for.cond938
  %798 = load ptr, ptr %map_to_map, align 8, !tbaa !4
  %799 = load ptr, ptr %A_offd_j, align 8, !tbaa !4
  %800 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom945 = sext i32 %800 to i64
  %arrayidx946 = getelementptr inbounds i32, ptr %799, i64 %idxprom945
  %801 = load i32, ptr %arrayidx946, align 4, !tbaa !8
  %idxprom947 = sext i32 %801 to i64
  %arrayidx948 = getelementptr inbounds i32, ptr %798, i64 %idxprom947
  %802 = load i32, ptr %arrayidx948, align 4, !tbaa !8
  store i32 %802, ptr %k_map, align 4, !tbaa !8
  %803 = load ptr, ptr %counter, align 8, !tbaa !4
  %804 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom949 = sext i32 %804 to i64
  %arrayidx950 = getelementptr inbounds i32, ptr %803, i64 %idxprom949
  %805 = load i32, ptr %arrayidx950, align 4, !tbaa !8
  %806 = load i32, ptr %start_index, align 4, !tbaa !8
  %cmp951 = icmp slt i32 %805, %806
  br i1 %cmp951, label %if.then953, label %if.else963

if.then953:                                       ; preds = %for.body944
  %807 = load i32, ptr %index, align 4, !tbaa !8
  %808 = load ptr, ptr %counter, align 8, !tbaa !4
  %809 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom954 = sext i32 %809 to i64
  %arrayidx955 = getelementptr inbounds i32, ptr %808, i64 %idxprom954
  store i32 %807, ptr %arrayidx955, align 4, !tbaa !8
  %810 = load i32, ptr %k_map, align 4, !tbaa !8
  %811 = load ptr, ptr %AN_offd_j, align 8, !tbaa !4
  %812 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom956 = sext i32 %812 to i64
  %arrayidx957 = getelementptr inbounds i32, ptr %811, i64 %idxprom956
  store i32 %810, ptr %arrayidx957, align 4, !tbaa !8
  %813 = load ptr, ptr %A_offd_data, align 8, !tbaa !4
  %814 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom958 = sext i32 %814 to i64
  %arrayidx959 = getelementptr inbounds double, ptr %813, i64 %idxprom958
  %815 = load double, ptr %arrayidx959, align 8, !tbaa !32
  %816 = load ptr, ptr %AN_offd_data, align 8, !tbaa !4
  %817 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom960 = sext i32 %817 to i64
  %arrayidx961 = getelementptr inbounds double, ptr %816, i64 %idxprom960
  store double %815, ptr %arrayidx961, align 8, !tbaa !32
  %818 = load i32, ptr %index, align 4, !tbaa !8
  %inc962 = add nsw i32 %818, 1
  store i32 %inc962, ptr %index, align 4, !tbaa !8
  br label %if.end980

if.else963:                                       ; preds = %for.body944
  %819 = load ptr, ptr %A_offd_data, align 8, !tbaa !4
  %820 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom964 = sext i32 %820 to i64
  %arrayidx965 = getelementptr inbounds double, ptr %819, i64 %idxprom964
  %821 = load double, ptr %arrayidx965, align 8, !tbaa !32
  %822 = call double @llvm.fabs.f64(double %821)
  %823 = load ptr, ptr %AN_offd_data, align 8, !tbaa !4
  %824 = load ptr, ptr %counter, align 8, !tbaa !4
  %825 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom966 = sext i32 %825 to i64
  %arrayidx967 = getelementptr inbounds i32, ptr %824, i64 %idxprom966
  %826 = load i32, ptr %arrayidx967, align 4, !tbaa !8
  %idxprom968 = sext i32 %826 to i64
  %arrayidx969 = getelementptr inbounds double, ptr %823, i64 %idxprom968
  %827 = load double, ptr %arrayidx969, align 8, !tbaa !32
  %828 = call double @llvm.fabs.f64(double %827)
  %cmp970 = fcmp ogt double %822, %828
  br i1 %cmp970, label %if.then972, label %if.end979

if.then972:                                       ; preds = %if.else963
  %829 = load ptr, ptr %A_offd_data, align 8, !tbaa !4
  %830 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom973 = sext i32 %830 to i64
  %arrayidx974 = getelementptr inbounds double, ptr %829, i64 %idxprom973
  %831 = load double, ptr %arrayidx974, align 8, !tbaa !32
  %832 = load ptr, ptr %AN_offd_data, align 8, !tbaa !4
  %833 = load ptr, ptr %counter, align 8, !tbaa !4
  %834 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom975 = sext i32 %834 to i64
  %arrayidx976 = getelementptr inbounds i32, ptr %833, i64 %idxprom975
  %835 = load i32, ptr %arrayidx976, align 4, !tbaa !8
  %idxprom977 = sext i32 %835 to i64
  %arrayidx978 = getelementptr inbounds double, ptr %832, i64 %idxprom977
  store double %831, ptr %arrayidx978, align 8, !tbaa !32
  br label %if.end979

if.end979:                                        ; preds = %if.then972, %if.else963
  br label %if.end980

if.end980:                                        ; preds = %if.end979, %if.then953
  br label %for.inc981

for.inc981:                                       ; preds = %if.end980
  %836 = load i32, ptr %k, align 4, !tbaa !8
  %inc982 = add nsw i32 %836, 1
  store i32 %inc982, ptr %k, align 4, !tbaa !8
  br label %for.cond938, !llvm.loop !85

for.end983:                                       ; preds = %for.cond938
  %837 = load i32, ptr %row, align 4, !tbaa !8
  %inc984 = add nsw i32 %837, 1
  store i32 %inc984, ptr %row, align 4, !tbaa !8
  br label %for.inc985

for.inc985:                                       ; preds = %for.end983
  %838 = load i32, ptr %j9, align 4, !tbaa !8
  %inc986 = add nsw i32 %838, 1
  store i32 %inc986, ptr %j9, align 4, !tbaa !8
  br label %for.cond932, !llvm.loop !86

for.end987:                                       ; preds = %for.cond932
  %839 = load i32, ptr %index, align 4, !tbaa !8
  store i32 %839, ptr %start_index, align 4, !tbaa !8
  br label %for.inc988

for.inc988:                                       ; preds = %for.end987
  %840 = load i32, ptr %i8, align 4, !tbaa !8
  %inc989 = add nsw i32 %840, 1
  store i32 %inc989, ptr %i8, align 4, !tbaa !8
  br label %for.cond928, !llvm.loop !87

for.end990:                                       ; preds = %for.cond928
  br label %sw.epilog1147

sw.bb991:                                         ; preds = %for.end787
  %841 = load i32, ptr %AN_num_nonzeros_offd, align 4, !tbaa !8
  %842 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul992 = mul nsw i32 %841, %842
  %conv993 = sext i32 %mul992 to i64
  %call994 = call ptr @hypre_CAlloc(i64 noundef %conv993, i64 noundef 8, i32 noundef 0)
  store ptr %call994, ptr %data10, align 8, !tbaa !4
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond995

for.cond995:                                      ; preds = %for.inc1050, %sw.bb991
  %843 = load i32, ptr %i8, align 4, !tbaa !8
  %844 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp996 = icmp slt i32 %843, %844
  br i1 %cmp996, label %for.body998, label %for.end1052

for.body998:                                      ; preds = %for.cond995
  store i32 0, ptr %j9, align 4, !tbaa !8
  br label %for.cond999

for.cond999:                                      ; preds = %for.inc1047, %for.body998
  %845 = load i32, ptr %j9, align 4, !tbaa !8
  %846 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp1000 = icmp slt i32 %845, %846
  br i1 %cmp1000, label %for.body1002, label %for.end1049

for.body1002:                                     ; preds = %for.cond999
  %847 = load ptr, ptr %A_offd_i, align 8, !tbaa !4
  %848 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom1003 = sext i32 %848 to i64
  %arrayidx1004 = getelementptr inbounds i32, ptr %847, i64 %idxprom1003
  %849 = load i32, ptr %arrayidx1004, align 4, !tbaa !8
  store i32 %849, ptr %k, align 4, !tbaa !8
  br label %for.cond1005

for.cond1005:                                     ; preds = %for.inc1043, %for.body1002
  %850 = load i32, ptr %k, align 4, !tbaa !8
  %851 = load ptr, ptr %A_offd_i, align 8, !tbaa !4
  %852 = load i32, ptr %row, align 4, !tbaa !8
  %add1006 = add nsw i32 %852, 1
  %idxprom1007 = sext i32 %add1006 to i64
  %arrayidx1008 = getelementptr inbounds i32, ptr %851, i64 %idxprom1007
  %853 = load i32, ptr %arrayidx1008, align 4, !tbaa !8
  %cmp1009 = icmp slt i32 %850, %853
  br i1 %cmp1009, label %for.body1011, label %for.end1045

for.body1011:                                     ; preds = %for.cond1005
  %854 = load ptr, ptr %map_to_map, align 8, !tbaa !4
  %855 = load ptr, ptr %A_offd_j, align 8, !tbaa !4
  %856 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom1012 = sext i32 %856 to i64
  %arrayidx1013 = getelementptr inbounds i32, ptr %855, i64 %idxprom1012
  %857 = load i32, ptr %arrayidx1013, align 4, !tbaa !8
  %idxprom1014 = sext i32 %857 to i64
  %arrayidx1015 = getelementptr inbounds i32, ptr %854, i64 %idxprom1014
  %858 = load i32, ptr %arrayidx1015, align 4, !tbaa !8
  store i32 %858, ptr %k_map, align 4, !tbaa !8
  %859 = load ptr, ptr %counter, align 8, !tbaa !4
  %860 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom1016 = sext i32 %860 to i64
  %arrayidx1017 = getelementptr inbounds i32, ptr %859, i64 %idxprom1016
  %861 = load i32, ptr %arrayidx1017, align 4, !tbaa !8
  %862 = load i32, ptr %start_index, align 4, !tbaa !8
  %cmp1018 = icmp slt i32 %861, %862
  br i1 %cmp1018, label %if.then1020, label %if.else1032

if.then1020:                                      ; preds = %for.body1011
  %863 = load i32, ptr %index, align 4, !tbaa !8
  %864 = load ptr, ptr %counter, align 8, !tbaa !4
  %865 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom1021 = sext i32 %865 to i64
  %arrayidx1022 = getelementptr inbounds i32, ptr %864, i64 %idxprom1021
  store i32 %863, ptr %arrayidx1022, align 4, !tbaa !8
  %866 = load i32, ptr %k_map, align 4, !tbaa !8
  %867 = load ptr, ptr %AN_offd_j, align 8, !tbaa !4
  %868 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom1023 = sext i32 %868 to i64
  %arrayidx1024 = getelementptr inbounds i32, ptr %867, i64 %idxprom1023
  store i32 %866, ptr %arrayidx1024, align 4, !tbaa !8
  %869 = load ptr, ptr %A_offd_data, align 8, !tbaa !4
  %870 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom1025 = sext i32 %870 to i64
  %arrayidx1026 = getelementptr inbounds double, ptr %869, i64 %idxprom1025
  %871 = load double, ptr %arrayidx1026, align 8, !tbaa !32
  %872 = call double @llvm.fabs.f64(double %871)
  %873 = load ptr, ptr %data10, align 8, !tbaa !4
  %874 = load i32, ptr %index, align 4, !tbaa !8
  %875 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul1027 = mul nsw i32 %874, %875
  %876 = load i32, ptr %j9, align 4, !tbaa !8
  %add1028 = add nsw i32 %mul1027, %876
  %idxprom1029 = sext i32 %add1028 to i64
  %arrayidx1030 = getelementptr inbounds double, ptr %873, i64 %idxprom1029
  store double %872, ptr %arrayidx1030, align 8, !tbaa !32
  %877 = load i32, ptr %index, align 4, !tbaa !8
  %inc1031 = add nsw i32 %877, 1
  store i32 %inc1031, ptr %index, align 4, !tbaa !8
  br label %if.end1042

if.else1032:                                      ; preds = %for.body1011
  %878 = load ptr, ptr %A_offd_data, align 8, !tbaa !4
  %879 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom1033 = sext i32 %879 to i64
  %arrayidx1034 = getelementptr inbounds double, ptr %878, i64 %idxprom1033
  %880 = load double, ptr %arrayidx1034, align 8, !tbaa !32
  %881 = call double @llvm.fabs.f64(double %880)
  %882 = load ptr, ptr %data10, align 8, !tbaa !4
  %883 = load ptr, ptr %counter, align 8, !tbaa !4
  %884 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom1035 = sext i32 %884 to i64
  %arrayidx1036 = getelementptr inbounds i32, ptr %883, i64 %idxprom1035
  %885 = load i32, ptr %arrayidx1036, align 4, !tbaa !8
  %886 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul1037 = mul nsw i32 %885, %886
  %887 = load i32, ptr %j9, align 4, !tbaa !8
  %add1038 = add nsw i32 %mul1037, %887
  %idxprom1039 = sext i32 %add1038 to i64
  %arrayidx1040 = getelementptr inbounds double, ptr %882, i64 %idxprom1039
  %888 = load double, ptr %arrayidx1040, align 8, !tbaa !32
  %add1041 = fadd double %888, %881
  store double %add1041, ptr %arrayidx1040, align 8, !tbaa !32
  br label %if.end1042

if.end1042:                                       ; preds = %if.else1032, %if.then1020
  br label %for.inc1043

for.inc1043:                                      ; preds = %if.end1042
  %889 = load i32, ptr %k, align 4, !tbaa !8
  %inc1044 = add nsw i32 %889, 1
  store i32 %inc1044, ptr %k, align 4, !tbaa !8
  br label %for.cond1005, !llvm.loop !88

for.end1045:                                      ; preds = %for.cond1005
  %890 = load i32, ptr %row, align 4, !tbaa !8
  %inc1046 = add nsw i32 %890, 1
  store i32 %inc1046, ptr %row, align 4, !tbaa !8
  br label %for.inc1047

for.inc1047:                                      ; preds = %for.end1045
  %891 = load i32, ptr %j9, align 4, !tbaa !8
  %inc1048 = add nsw i32 %891, 1
  store i32 %inc1048, ptr %j9, align 4, !tbaa !8
  br label %for.cond999, !llvm.loop !89

for.end1049:                                      ; preds = %for.cond999
  %892 = load i32, ptr %index, align 4, !tbaa !8
  store i32 %892, ptr %start_index, align 4, !tbaa !8
  br label %for.inc1050

for.inc1050:                                      ; preds = %for.end1049
  %893 = load i32, ptr %i8, align 4, !tbaa !8
  %inc1051 = add nsw i32 %893, 1
  store i32 %inc1051, ptr %i8, align 4, !tbaa !8
  br label %for.cond995, !llvm.loop !90

for.end1052:                                      ; preds = %for.cond995
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond1053

for.cond1053:                                     ; preds = %for.inc1089, %for.end1052
  %894 = load i32, ptr %i8, align 4, !tbaa !8
  %895 = load i32, ptr %AN_num_nonzeros_offd, align 4, !tbaa !8
  %cmp1054 = icmp slt i32 %894, %895
  br i1 %cmp1054, label %for.body1056, label %for.end1091

for.body1056:                                     ; preds = %for.cond1053
  %896 = load ptr, ptr %data10, align 8, !tbaa !4
  %897 = load i32, ptr %i8, align 4, !tbaa !8
  %898 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul1057 = mul nsw i32 %897, %898
  %idxprom1058 = sext i32 %mul1057 to i64
  %arrayidx1059 = getelementptr inbounds double, ptr %896, i64 %idxprom1058
  %899 = load double, ptr %arrayidx1059, align 8, !tbaa !32
  %900 = load ptr, ptr %AN_offd_data, align 8, !tbaa !4
  %901 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom1060 = sext i32 %901 to i64
  %arrayidx1061 = getelementptr inbounds double, ptr %900, i64 %idxprom1060
  store double %899, ptr %arrayidx1061, align 8, !tbaa !32
  store i32 1, ptr %j9, align 4, !tbaa !8
  br label %for.cond1062

for.cond1062:                                     ; preds = %for.inc1086, %for.body1056
  %902 = load i32, ptr %j9, align 4, !tbaa !8
  %903 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp1063 = icmp slt i32 %902, %903
  br i1 %cmp1063, label %for.body1065, label %for.end1088

for.body1065:                                     ; preds = %for.cond1062
  %904 = load ptr, ptr %AN_offd_data, align 8, !tbaa !4
  %905 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom1066 = sext i32 %905 to i64
  %arrayidx1067 = getelementptr inbounds double, ptr %904, i64 %idxprom1066
  %906 = load double, ptr %arrayidx1067, align 8, !tbaa !32
  %907 = load ptr, ptr %data10, align 8, !tbaa !4
  %908 = load i32, ptr %i8, align 4, !tbaa !8
  %909 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul1068 = mul nsw i32 %908, %909
  %910 = load i32, ptr %j9, align 4, !tbaa !8
  %add1069 = add nsw i32 %mul1068, %910
  %idxprom1070 = sext i32 %add1069 to i64
  %arrayidx1071 = getelementptr inbounds double, ptr %907, i64 %idxprom1070
  %911 = load double, ptr %arrayidx1071, align 8, !tbaa !32
  %cmp1072 = fcmp olt double %906, %911
  br i1 %cmp1072, label %cond.true1074, label %cond.false1079

cond.true1074:                                    ; preds = %for.body1065
  %912 = load ptr, ptr %data10, align 8, !tbaa !4
  %913 = load i32, ptr %i8, align 4, !tbaa !8
  %914 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul1075 = mul nsw i32 %913, %914
  %915 = load i32, ptr %j9, align 4, !tbaa !8
  %add1076 = add nsw i32 %mul1075, %915
  %idxprom1077 = sext i32 %add1076 to i64
  %arrayidx1078 = getelementptr inbounds double, ptr %912, i64 %idxprom1077
  %916 = load double, ptr %arrayidx1078, align 8, !tbaa !32
  br label %cond.end1082

cond.false1079:                                   ; preds = %for.body1065
  %917 = load ptr, ptr %AN_offd_data, align 8, !tbaa !4
  %918 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom1080 = sext i32 %918 to i64
  %arrayidx1081 = getelementptr inbounds double, ptr %917, i64 %idxprom1080
  %919 = load double, ptr %arrayidx1081, align 8, !tbaa !32
  br label %cond.end1082

cond.end1082:                                     ; preds = %cond.false1079, %cond.true1074
  %cond1083 = phi double [ %916, %cond.true1074 ], [ %919, %cond.false1079 ]
  %920 = load ptr, ptr %AN_offd_data, align 8, !tbaa !4
  %921 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom1084 = sext i32 %921 to i64
  %arrayidx1085 = getelementptr inbounds double, ptr %920, i64 %idxprom1084
  store double %cond1083, ptr %arrayidx1085, align 8, !tbaa !32
  br label %for.inc1086

for.inc1086:                                      ; preds = %cond.end1082
  %922 = load i32, ptr %j9, align 4, !tbaa !8
  %inc1087 = add nsw i32 %922, 1
  store i32 %inc1087, ptr %j9, align 4, !tbaa !8
  br label %for.cond1062, !llvm.loop !91

for.end1088:                                      ; preds = %for.cond1062
  br label %for.inc1089

for.inc1089:                                      ; preds = %for.end1088
  %923 = load i32, ptr %i8, align 4, !tbaa !8
  %inc1090 = add nsw i32 %923, 1
  store i32 %inc1090, ptr %i8, align 4, !tbaa !8
  br label %for.cond1053, !llvm.loop !92

for.end1091:                                      ; preds = %for.cond1053
  %924 = load ptr, ptr %data10, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %924, i32 noundef 0)
  store ptr null, ptr %data10, align 8, !tbaa !4
  br label %sw.epilog1147

sw.bb1092:                                        ; preds = %for.end787
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond1093

for.cond1093:                                     ; preds = %for.inc1144, %sw.bb1092
  %925 = load i32, ptr %i8, align 4, !tbaa !8
  %926 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp1094 = icmp slt i32 %925, %926
  br i1 %cmp1094, label %for.body1096, label %for.end1146

for.body1096:                                     ; preds = %for.cond1093
  store i32 0, ptr %j9, align 4, !tbaa !8
  br label %for.cond1097

for.cond1097:                                     ; preds = %for.inc1141, %for.body1096
  %927 = load i32, ptr %j9, align 4, !tbaa !8
  %928 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp1098 = icmp slt i32 %927, %928
  br i1 %cmp1098, label %for.body1100, label %for.end1143

for.body1100:                                     ; preds = %for.cond1097
  %929 = load ptr, ptr %A_offd_i, align 8, !tbaa !4
  %930 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom1101 = sext i32 %930 to i64
  %arrayidx1102 = getelementptr inbounds i32, ptr %929, i64 %idxprom1101
  %931 = load i32, ptr %arrayidx1102, align 4, !tbaa !8
  store i32 %931, ptr %k, align 4, !tbaa !8
  br label %for.cond1103

for.cond1103:                                     ; preds = %for.inc1137, %for.body1100
  %932 = load i32, ptr %k, align 4, !tbaa !8
  %933 = load ptr, ptr %A_offd_i, align 8, !tbaa !4
  %934 = load i32, ptr %row, align 4, !tbaa !8
  %add1104 = add nsw i32 %934, 1
  %idxprom1105 = sext i32 %add1104 to i64
  %arrayidx1106 = getelementptr inbounds i32, ptr %933, i64 %idxprom1105
  %935 = load i32, ptr %arrayidx1106, align 4, !tbaa !8
  %cmp1107 = icmp slt i32 %932, %935
  br i1 %cmp1107, label %for.body1109, label %for.end1139

for.body1109:                                     ; preds = %for.cond1103
  %936 = load ptr, ptr %map_to_map, align 8, !tbaa !4
  %937 = load ptr, ptr %A_offd_j, align 8, !tbaa !4
  %938 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom1110 = sext i32 %938 to i64
  %arrayidx1111 = getelementptr inbounds i32, ptr %937, i64 %idxprom1110
  %939 = load i32, ptr %arrayidx1111, align 4, !tbaa !8
  %idxprom1112 = sext i32 %939 to i64
  %arrayidx1113 = getelementptr inbounds i32, ptr %936, i64 %idxprom1112
  %940 = load i32, ptr %arrayidx1113, align 4, !tbaa !8
  store i32 %940, ptr %k_map, align 4, !tbaa !8
  %941 = load ptr, ptr %counter, align 8, !tbaa !4
  %942 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom1114 = sext i32 %942 to i64
  %arrayidx1115 = getelementptr inbounds i32, ptr %941, i64 %idxprom1114
  %943 = load i32, ptr %arrayidx1115, align 4, !tbaa !8
  %944 = load i32, ptr %start_index, align 4, !tbaa !8
  %cmp1116 = icmp slt i32 %943, %944
  br i1 %cmp1116, label %if.then1118, label %if.else1128

if.then1118:                                      ; preds = %for.body1109
  %945 = load i32, ptr %index, align 4, !tbaa !8
  %946 = load ptr, ptr %counter, align 8, !tbaa !4
  %947 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom1119 = sext i32 %947 to i64
  %arrayidx1120 = getelementptr inbounds i32, ptr %946, i64 %idxprom1119
  store i32 %945, ptr %arrayidx1120, align 4, !tbaa !8
  %948 = load i32, ptr %k_map, align 4, !tbaa !8
  %949 = load ptr, ptr %AN_offd_j, align 8, !tbaa !4
  %950 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom1121 = sext i32 %950 to i64
  %arrayidx1122 = getelementptr inbounds i32, ptr %949, i64 %idxprom1121
  store i32 %948, ptr %arrayidx1122, align 4, !tbaa !8
  %951 = load ptr, ptr %A_offd_data, align 8, !tbaa !4
  %952 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom1123 = sext i32 %952 to i64
  %arrayidx1124 = getelementptr inbounds double, ptr %951, i64 %idxprom1123
  %953 = load double, ptr %arrayidx1124, align 8, !tbaa !32
  %954 = load ptr, ptr %AN_offd_data, align 8, !tbaa !4
  %955 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom1125 = sext i32 %955 to i64
  %arrayidx1126 = getelementptr inbounds double, ptr %954, i64 %idxprom1125
  store double %953, ptr %arrayidx1126, align 8, !tbaa !32
  %956 = load i32, ptr %index, align 4, !tbaa !8
  %inc1127 = add nsw i32 %956, 1
  store i32 %inc1127, ptr %index, align 4, !tbaa !8
  br label %if.end1136

if.else1128:                                      ; preds = %for.body1109
  %957 = load ptr, ptr %A_offd_data, align 8, !tbaa !4
  %958 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom1129 = sext i32 %958 to i64
  %arrayidx1130 = getelementptr inbounds double, ptr %957, i64 %idxprom1129
  %959 = load double, ptr %arrayidx1130, align 8, !tbaa !32
  %960 = load ptr, ptr %AN_offd_data, align 8, !tbaa !4
  %961 = load ptr, ptr %counter, align 8, !tbaa !4
  %962 = load i32, ptr %k_map, align 4, !tbaa !8
  %idxprom1131 = sext i32 %962 to i64
  %arrayidx1132 = getelementptr inbounds i32, ptr %961, i64 %idxprom1131
  %963 = load i32, ptr %arrayidx1132, align 4, !tbaa !8
  %idxprom1133 = sext i32 %963 to i64
  %arrayidx1134 = getelementptr inbounds double, ptr %960, i64 %idxprom1133
  %964 = load double, ptr %arrayidx1134, align 8, !tbaa !32
  %add1135 = fadd double %964, %959
  store double %add1135, ptr %arrayidx1134, align 8, !tbaa !32
  br label %if.end1136

if.end1136:                                       ; preds = %if.else1128, %if.then1118
  br label %for.inc1137

for.inc1137:                                      ; preds = %if.end1136
  %965 = load i32, ptr %k, align 4, !tbaa !8
  %inc1138 = add nsw i32 %965, 1
  store i32 %inc1138, ptr %k, align 4, !tbaa !8
  br label %for.cond1103, !llvm.loop !93

for.end1139:                                      ; preds = %for.cond1103
  %966 = load i32, ptr %row, align 4, !tbaa !8
  %inc1140 = add nsw i32 %966, 1
  store i32 %inc1140, ptr %row, align 4, !tbaa !8
  br label %for.inc1141

for.inc1141:                                      ; preds = %for.end1139
  %967 = load i32, ptr %j9, align 4, !tbaa !8
  %inc1142 = add nsw i32 %967, 1
  store i32 %inc1142, ptr %j9, align 4, !tbaa !8
  br label %for.cond1097, !llvm.loop !94

for.end1143:                                      ; preds = %for.cond1097
  %968 = load i32, ptr %index, align 4, !tbaa !8
  store i32 %968, ptr %start_index, align 4, !tbaa !8
  br label %for.inc1144

for.inc1144:                                      ; preds = %for.end1143
  %969 = load i32, ptr %i8, align 4, !tbaa !8
  %inc1145 = add nsw i32 %969, 1
  store i32 %inc1145, ptr %i8, align 4, !tbaa !8
  br label %for.cond1093, !llvm.loop !95

for.end1146:                                      ; preds = %for.cond1093
  br label %sw.epilog1147

sw.epilog1147:                                    ; preds = %for.end787, %for.end1146, %for.end1091, %for.end990, %for.end926, %for.end860
  %970 = load ptr, ptr %map_to_map, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %970, i32 noundef 0)
  store ptr null, ptr %map_to_map, align 8, !tbaa !4
  br label %if.end1148

if.end1148:                                       ; preds = %sw.epilog1147, %if.end768
  %971 = load i32, ptr %diag_option.addr, align 4, !tbaa !8
  %cmp1149 = icmp eq i32 %971, 1
  br i1 %cmp1149, label %if.then1151, label %if.end1179

if.then1151:                                      ; preds = %if.end1148
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond1152

for.cond1152:                                     ; preds = %for.inc1176, %if.then1151
  %972 = load i32, ptr %i8, align 4, !tbaa !8
  %973 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp1153 = icmp slt i32 %972, %973
  br i1 %cmp1153, label %for.body1155, label %for.end1178

for.body1155:                                     ; preds = %for.cond1152
  store double 0.000000e+00, ptr %sum, align 8, !tbaa !32
  %974 = load ptr, ptr %AN_offd_i, align 8, !tbaa !4
  %975 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom1156 = sext i32 %975 to i64
  %arrayidx1157 = getelementptr inbounds i32, ptr %974, i64 %idxprom1156
  %976 = load i32, ptr %arrayidx1157, align 4, !tbaa !8
  store i32 %976, ptr %k, align 4, !tbaa !8
  br label %for.cond1158

for.cond1158:                                     ; preds = %for.inc1168, %for.body1155
  %977 = load i32, ptr %k, align 4, !tbaa !8
  %978 = load ptr, ptr %AN_offd_i, align 8, !tbaa !4
  %979 = load i32, ptr %i8, align 4, !tbaa !8
  %add1159 = add nsw i32 %979, 1
  %idxprom1160 = sext i32 %add1159 to i64
  %arrayidx1161 = getelementptr inbounds i32, ptr %978, i64 %idxprom1160
  %980 = load i32, ptr %arrayidx1161, align 4, !tbaa !8
  %cmp1162 = icmp slt i32 %977, %980
  br i1 %cmp1162, label %for.body1164, label %for.end1170

for.body1164:                                     ; preds = %for.cond1158
  %981 = load ptr, ptr %AN_offd_data, align 8, !tbaa !4
  %982 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom1165 = sext i32 %982 to i64
  %arrayidx1166 = getelementptr inbounds double, ptr %981, i64 %idxprom1165
  %983 = load double, ptr %arrayidx1166, align 8, !tbaa !32
  %984 = load double, ptr %sum, align 8, !tbaa !32
  %add1167 = fadd double %984, %983
  store double %add1167, ptr %sum, align 8, !tbaa !32
  br label %for.inc1168

for.inc1168:                                      ; preds = %for.body1164
  %985 = load i32, ptr %k, align 4, !tbaa !8
  %inc1169 = add nsw i32 %985, 1
  store i32 %inc1169, ptr %k, align 4, !tbaa !8
  br label %for.cond1158, !llvm.loop !96

for.end1170:                                      ; preds = %for.cond1158
  %986 = load ptr, ptr %AN_diag_i, align 8, !tbaa !4
  %987 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom1171 = sext i32 %987 to i64
  %arrayidx1172 = getelementptr inbounds i32, ptr %986, i64 %idxprom1171
  %988 = load i32, ptr %arrayidx1172, align 4, !tbaa !8
  store i32 %988, ptr %index, align 4, !tbaa !8
  %989 = load double, ptr %sum, align 8, !tbaa !32
  %990 = load ptr, ptr %AN_diag_data, align 8, !tbaa !4
  %991 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom1173 = sext i32 %991 to i64
  %arrayidx1174 = getelementptr inbounds double, ptr %990, i64 %idxprom1173
  %992 = load double, ptr %arrayidx1174, align 8, !tbaa !32
  %sub1175 = fsub double %992, %989
  store double %sub1175, ptr %arrayidx1174, align 8, !tbaa !32
  br label %for.inc1176

for.inc1176:                                      ; preds = %for.end1170
  %993 = load i32, ptr %i8, align 4, !tbaa !8
  %inc1177 = add nsw i32 %993, 1
  store i32 %inc1177, ptr %i8, align 4, !tbaa !8
  br label %for.cond1152, !llvm.loop !97

for.end1178:                                      ; preds = %for.cond1152
  br label %if.end1179

if.end1179:                                       ; preds = %for.end1178, %if.end1148
  %994 = load ptr, ptr %comm, align 8, !tbaa !4
  %995 = load i32, ptr %global_num_nodes, align 4, !tbaa !8
  %996 = load i32, ptr %global_num_nodes, align 4, !tbaa !8
  %997 = load ptr, ptr %row_starts_AN, align 8, !tbaa !4
  %998 = load ptr, ptr %row_starts_AN, align 8, !tbaa !4
  %999 = load i32, ptr %num_cols_offd_AN, align 4, !tbaa !8
  %1000 = load i32, ptr %AN_num_nonzeros_diag, align 4, !tbaa !8
  %1001 = load i32, ptr %AN_num_nonzeros_offd, align 4, !tbaa !8
  %call1180 = call ptr @hypre_ParCSRMatrixCreate(ptr noundef %994, i32 noundef %995, i32 noundef %996, ptr noundef %997, ptr noundef %998, i32 noundef %999, i32 noundef %1000, i32 noundef %1001)
  store ptr %call1180, ptr %AN, align 8, !tbaa !4
  %1002 = load ptr, ptr %AN, align 8, !tbaa !4
  %diag1181 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1002, i32 0, i32 7
  %1003 = load ptr, ptr %diag1181, align 8, !tbaa !13
  %call1182 = call i32 @hypre_CSRMatrixDestroy(ptr noundef %1003)
  %1004 = load ptr, ptr %AN, align 8, !tbaa !4
  %offd1183 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1004, i32 0, i32 8
  %1005 = load ptr, ptr %offd1183, align 8, !tbaa !17
  %call1184 = call i32 @hypre_CSRMatrixDestroy(ptr noundef %1005)
  %1006 = load ptr, ptr %AN_diag, align 8, !tbaa !4
  %1007 = load ptr, ptr %AN, align 8, !tbaa !4
  %diag1185 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1007, i32 0, i32 7
  store ptr %1006, ptr %diag1185, align 8, !tbaa !13
  %1008 = load ptr, ptr %AN_offd, align 8, !tbaa !4
  %1009 = load ptr, ptr %AN, align 8, !tbaa !4
  %offd1186 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1009, i32 0, i32 8
  store ptr %1008, ptr %offd1186, align 8, !tbaa !17
  %1010 = load ptr, ptr %AN_diag, align 8, !tbaa !4
  %memory_location = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1010, i32 0, i32 12
  store i32 0, ptr %memory_location, align 4, !tbaa !98
  %1011 = load ptr, ptr %AN_offd, align 8, !tbaa !4
  %memory_location1187 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1011, i32 0, i32 12
  store i32 0, ptr %memory_location1187, align 4, !tbaa !98
  %1012 = load ptr, ptr %col_map_offd_AN, align 8, !tbaa !4
  %1013 = load ptr, ptr %AN, align 8, !tbaa !4
  %col_map_offd1188 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1013, i32 0, i32 11
  store ptr %1012, ptr %col_map_offd1188, align 8, !tbaa !20
  %1014 = load ptr, ptr %comm_pkg_AN, align 8, !tbaa !4
  %1015 = load ptr, ptr %AN, align 8, !tbaa !4
  %comm_pkg1189 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1015, i32 0, i32 15
  store ptr %1014, ptr %comm_pkg1189, align 8, !tbaa !22
  %1016 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %1017 = load i32, ptr %num_cols_offd_AN, align 4, !tbaa !8
  %mul1190 = mul nsw i32 %1016, %1017
  store i32 %mul1190, ptr %new_num_cols_offd, align 4, !tbaa !8
  %1018 = load i32, ptr %new_num_cols_offd, align 4, !tbaa !8
  %1019 = load i32, ptr %num_cols_offd, align 4, !tbaa !8
  %cmp1191 = icmp sgt i32 %1018, %1019
  br i1 %cmp1191, label %if.then1193, label %if.end1262

if.then1193:                                      ; preds = %if.end1179
  %1020 = load i32, ptr %new_num_cols_offd, align 4, !tbaa !8
  %conv1194 = sext i32 %1020 to i64
  %call1195 = call ptr @hypre_CAlloc(i64 noundef %conv1194, i64 noundef 4, i32 noundef 0)
  store ptr %call1195, ptr %new_col_map_offd, align 8, !tbaa !4
  store i32 0, ptr %cnt, align 4, !tbaa !8
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond1196

for.cond1196:                                     ; preds = %for.inc1214, %if.then1193
  %1021 = load i32, ptr %i8, align 4, !tbaa !8
  %1022 = load i32, ptr %num_cols_offd_AN, align 4, !tbaa !8
  %cmp1197 = icmp slt i32 %1021, %1022
  br i1 %cmp1197, label %for.body1199, label %for.end1216

for.body1199:                                     ; preds = %for.cond1196
  store i32 0, ptr %j9, align 4, !tbaa !8
  br label %for.cond1200

for.cond1200:                                     ; preds = %for.inc1211, %for.body1199
  %1023 = load i32, ptr %j9, align 4, !tbaa !8
  %1024 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp1201 = icmp slt i32 %1023, %1024
  br i1 %cmp1201, label %for.body1203, label %for.end1213

for.body1203:                                     ; preds = %for.cond1200
  %1025 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %1026 = load ptr, ptr %col_map_offd_AN, align 8, !tbaa !4
  %1027 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom1204 = sext i32 %1027 to i64
  %arrayidx1205 = getelementptr inbounds i32, ptr %1026, i64 %idxprom1204
  %1028 = load i32, ptr %arrayidx1205, align 4, !tbaa !8
  %mul1206 = mul nsw i32 %1025, %1028
  %1029 = load i32, ptr %j9, align 4, !tbaa !8
  %add1207 = add nsw i32 %mul1206, %1029
  %1030 = load ptr, ptr %new_col_map_offd, align 8, !tbaa !4
  %1031 = load i32, ptr %cnt, align 4, !tbaa !8
  %inc1208 = add nsw i32 %1031, 1
  store i32 %inc1208, ptr %cnt, align 4, !tbaa !8
  %idxprom1209 = sext i32 %1031 to i64
  %arrayidx1210 = getelementptr inbounds i32, ptr %1030, i64 %idxprom1209
  store i32 %add1207, ptr %arrayidx1210, align 4, !tbaa !8
  br label %for.inc1211

for.inc1211:                                      ; preds = %for.body1203
  %1032 = load i32, ptr %j9, align 4, !tbaa !8
  %inc1212 = add nsw i32 %1032, 1
  store i32 %inc1212, ptr %j9, align 4, !tbaa !8
  br label %for.cond1200, !llvm.loop !99

for.end1213:                                      ; preds = %for.cond1200
  br label %for.inc1214

for.inc1214:                                      ; preds = %for.end1213
  %1033 = load i32, ptr %i8, align 4, !tbaa !8
  %inc1215 = add nsw i32 %1033, 1
  store i32 %inc1215, ptr %i8, align 4, !tbaa !8
  br label %for.cond1196, !llvm.loop !100

for.end1216:                                      ; preds = %for.cond1196
  store i32 0, ptr %cnt, align 4, !tbaa !8
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond1217

for.cond1217:                                     ; preds = %for.inc1231, %for.end1216
  %1034 = load i32, ptr %i8, align 4, !tbaa !8
  %1035 = load i32, ptr %num_cols_offd, align 4, !tbaa !8
  %cmp1218 = icmp slt i32 %1034, %1035
  br i1 %cmp1218, label %for.body1220, label %for.end1233

for.body1220:                                     ; preds = %for.cond1217
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body1220
  %1036 = load ptr, ptr %col_map_offd, align 8, !tbaa !4
  %1037 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom1221 = sext i32 %1037 to i64
  %arrayidx1222 = getelementptr inbounds i32, ptr %1036, i64 %idxprom1221
  %1038 = load i32, ptr %arrayidx1222, align 4, !tbaa !8
  %1039 = load ptr, ptr %new_col_map_offd, align 8, !tbaa !4
  %1040 = load i32, ptr %cnt, align 4, !tbaa !8
  %idxprom1223 = sext i32 %1040 to i64
  %arrayidx1224 = getelementptr inbounds i32, ptr %1039, i64 %idxprom1223
  %1041 = load i32, ptr %arrayidx1224, align 4, !tbaa !8
  %cmp1225 = icmp sgt i32 %1038, %1041
  br i1 %cmp1225, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1042 = load i32, ptr %cnt, align 4, !tbaa !8
  %inc1227 = add nsw i32 %1042, 1
  store i32 %inc1227, ptr %cnt, align 4, !tbaa !8
  br label %while.cond, !llvm.loop !101

while.end:                                        ; preds = %while.cond
  %1043 = load i32, ptr %cnt, align 4, !tbaa !8
  %inc1228 = add nsw i32 %1043, 1
  store i32 %inc1228, ptr %cnt, align 4, !tbaa !8
  %1044 = load ptr, ptr %col_map_offd, align 8, !tbaa !4
  %1045 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom1229 = sext i32 %1045 to i64
  %arrayidx1230 = getelementptr inbounds i32, ptr %1044, i64 %idxprom1229
  store i32 %1043, ptr %arrayidx1230, align 4, !tbaa !8
  br label %for.inc1231

for.inc1231:                                      ; preds = %while.end
  %1046 = load i32, ptr %i8, align 4, !tbaa !8
  %inc1232 = add nsw i32 %1046, 1
  store i32 %inc1232, ptr %i8, align 4, !tbaa !8
  br label %for.cond1217, !llvm.loop !102

for.end1233:                                      ; preds = %for.cond1217
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond1234

for.cond1234:                                     ; preds = %for.inc1244, %for.end1233
  %1047 = load i32, ptr %i8, align 4, !tbaa !8
  %1048 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %add1235 = add nsw i32 %1048, 1
  %cmp1236 = icmp slt i32 %1047, %add1235
  br i1 %cmp1236, label %for.body1238, label %for.end1246

for.body1238:                                     ; preds = %for.cond1234
  %1049 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %1050 = load ptr, ptr %recv_vec_starts_AN, align 8, !tbaa !4
  %1051 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom1239 = sext i32 %1051 to i64
  %arrayidx1240 = getelementptr inbounds i32, ptr %1050, i64 %idxprom1239
  %1052 = load i32, ptr %arrayidx1240, align 4, !tbaa !8
  %mul1241 = mul nsw i32 %1049, %1052
  %1053 = load ptr, ptr %recv_vec_starts, align 8, !tbaa !4
  %1054 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom1242 = sext i32 %1054 to i64
  %arrayidx1243 = getelementptr inbounds i32, ptr %1053, i64 %idxprom1242
  store i32 %mul1241, ptr %arrayidx1243, align 4, !tbaa !8
  br label %for.inc1244

for.inc1244:                                      ; preds = %for.body1238
  %1055 = load i32, ptr %i8, align 4, !tbaa !8
  %inc1245 = add nsw i32 %1055, 1
  store i32 %inc1245, ptr %i8, align 4, !tbaa !8
  br label %for.cond1234, !llvm.loop !103

for.end1246:                                      ; preds = %for.cond1234
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond1247

for.cond1247:                                     ; preds = %for.inc1257, %for.end1246
  %1056 = load i32, ptr %i8, align 4, !tbaa !8
  %1057 = load i32, ptr %num_nonzeros_offd, align 4, !tbaa !8
  %cmp1248 = icmp slt i32 %1056, %1057
  br i1 %cmp1248, label %for.body1250, label %for.end1259

for.body1250:                                     ; preds = %for.cond1247
  %1058 = load ptr, ptr %A_offd_j, align 8, !tbaa !4
  %1059 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom1251 = sext i32 %1059 to i64
  %arrayidx1252 = getelementptr inbounds i32, ptr %1058, i64 %idxprom1251
  %1060 = load i32, ptr %arrayidx1252, align 4, !tbaa !8
  store i32 %1060, ptr %j9, align 4, !tbaa !8
  %1061 = load ptr, ptr %col_map_offd, align 8, !tbaa !4
  %1062 = load i32, ptr %j9, align 4, !tbaa !8
  %idxprom1253 = sext i32 %1062 to i64
  %arrayidx1254 = getelementptr inbounds i32, ptr %1061, i64 %idxprom1253
  %1063 = load i32, ptr %arrayidx1254, align 4, !tbaa !8
  %1064 = load ptr, ptr %A_offd_j, align 8, !tbaa !4
  %1065 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom1255 = sext i32 %1065 to i64
  %arrayidx1256 = getelementptr inbounds i32, ptr %1064, i64 %idxprom1255
  store i32 %1063, ptr %arrayidx1256, align 4, !tbaa !8
  br label %for.inc1257

for.inc1257:                                      ; preds = %for.body1250
  %1066 = load i32, ptr %i8, align 4, !tbaa !8
  %inc1258 = add nsw i32 %1066, 1
  store i32 %inc1258, ptr %i8, align 4, !tbaa !8
  br label %for.cond1247, !llvm.loop !104

for.end1259:                                      ; preds = %for.cond1247
  %1067 = load ptr, ptr %new_col_map_offd, align 8, !tbaa !4
  %1068 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %col_map_offd1260 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %1068, i32 0, i32 11
  store ptr %1067, ptr %col_map_offd1260, align 8, !tbaa !20
  %1069 = load i32, ptr %new_num_cols_offd, align 4, !tbaa !8
  %1070 = load ptr, ptr %A_offd, align 8, !tbaa !4
  %num_cols1261 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1070, i32 0, i32 4
  store i32 %1069, ptr %num_cols1261, align 4, !tbaa !68
  %1071 = load ptr, ptr %col_map_offd, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1071, i32 noundef 0)
  store ptr null, ptr %col_map_offd, align 8, !tbaa !4
  br label %if.end1262

if.end1262:                                       ; preds = %for.end1259, %if.end1179
  %1072 = load ptr, ptr %big_map_to_node, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1072, i32 noundef 0)
  store ptr null, ptr %big_map_to_node, align 8, !tbaa !4
  %1073 = load ptr, ptr %send_map_starts_AN, align 8, !tbaa !4
  %1074 = load i32, ptr %num_sends, align 4, !tbaa !8
  %idxprom1263 = sext i32 %1074 to i64
  %arrayidx1264 = getelementptr inbounds i32, ptr %1073, i64 %idxprom1263
  %1075 = load i32, ptr %arrayidx1264, align 4, !tbaa !8
  %1076 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul1265 = mul nsw i32 %1075, %1076
  store i32 %mul1265, ptr %new_send_elmts_size, align 4, !tbaa !8
  %1077 = load i32, ptr %new_send_elmts_size, align 4, !tbaa !8
  %1078 = load ptr, ptr %send_map_starts, align 8, !tbaa !4
  %1079 = load i32, ptr %num_sends, align 4, !tbaa !8
  %idxprom1266 = sext i32 %1079 to i64
  %arrayidx1267 = getelementptr inbounds i32, ptr %1078, i64 %idxprom1266
  %1080 = load i32, ptr %arrayidx1267, align 4, !tbaa !8
  %cmp1268 = icmp sgt i32 %1077, %1080
  br i1 %cmp1268, label %if.then1270, label %if.end1315

if.then1270:                                      ; preds = %if.end1262
  %1081 = load i32, ptr %new_send_elmts_size, align 4, !tbaa !8
  %conv1271 = sext i32 %1081 to i64
  %call1272 = call ptr @hypre_CAlloc(i64 noundef %conv1271, i64 noundef 4, i32 noundef 0)
  store ptr %call1272, ptr %new_send_map_elmts, align 8, !tbaa !4
  store i32 0, ptr %cnt, align 4, !tbaa !8
  %1082 = load ptr, ptr %send_map_starts, align 8, !tbaa !4
  %arrayidx1273 = getelementptr inbounds i32, ptr %1082, i64 0
  store i32 0, ptr %arrayidx1273, align 4, !tbaa !8
  store i32 0, ptr %i8, align 4, !tbaa !8
  br label %for.cond1274

for.cond1274:                                     ; preds = %for.inc1311, %if.then1270
  %1083 = load i32, ptr %i8, align 4, !tbaa !8
  %1084 = load i32, ptr %num_sends, align 4, !tbaa !8
  %cmp1275 = icmp slt i32 %1083, %1084
  br i1 %cmp1275, label %for.body1277, label %for.end1313

for.body1277:                                     ; preds = %for.cond1274
  %1085 = load ptr, ptr %send_map_starts_AN, align 8, !tbaa !4
  %1086 = load i32, ptr %i8, align 4, !tbaa !8
  %add1278 = add nsw i32 %1086, 1
  %idxprom1279 = sext i32 %add1278 to i64
  %arrayidx1280 = getelementptr inbounds i32, ptr %1085, i64 %idxprom1279
  %1087 = load i32, ptr %arrayidx1280, align 4, !tbaa !8
  %1088 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul1281 = mul nsw i32 %1087, %1088
  %1089 = load ptr, ptr %send_map_starts, align 8, !tbaa !4
  %1090 = load i32, ptr %i8, align 4, !tbaa !8
  %add1282 = add nsw i32 %1090, 1
  %idxprom1283 = sext i32 %add1282 to i64
  %arrayidx1284 = getelementptr inbounds i32, ptr %1089, i64 %idxprom1283
  store i32 %mul1281, ptr %arrayidx1284, align 4, !tbaa !8
  %1091 = load ptr, ptr %send_map_starts_AN, align 8, !tbaa !4
  %1092 = load i32, ptr %i8, align 4, !tbaa !8
  %idxprom1285 = sext i32 %1092 to i64
  %arrayidx1286 = getelementptr inbounds i32, ptr %1091, i64 %idxprom1285
  %1093 = load i32, ptr %arrayidx1286, align 4, !tbaa !8
  store i32 %1093, ptr %j9, align 4, !tbaa !8
  br label %for.cond1287

for.cond1287:                                     ; preds = %for.inc1308, %for.body1277
  %1094 = load i32, ptr %j9, align 4, !tbaa !8
  %1095 = load ptr, ptr %send_map_starts_AN, align 8, !tbaa !4
  %1096 = load i32, ptr %i8, align 4, !tbaa !8
  %add1288 = add nsw i32 %1096, 1
  %idxprom1289 = sext i32 %add1288 to i64
  %arrayidx1290 = getelementptr inbounds i32, ptr %1095, i64 %idxprom1289
  %1097 = load i32, ptr %arrayidx1290, align 4, !tbaa !8
  %cmp1291 = icmp slt i32 %1094, %1097
  br i1 %cmp1291, label %for.body1293, label %for.end1310

for.body1293:                                     ; preds = %for.cond1287
  store i32 0, ptr %k, align 4, !tbaa !8
  br label %for.cond1294

for.cond1294:                                     ; preds = %for.inc1305, %for.body1293
  %1098 = load i32, ptr %k, align 4, !tbaa !8
  %1099 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp1295 = icmp slt i32 %1098, %1099
  br i1 %cmp1295, label %for.body1297, label %for.end1307

for.body1297:                                     ; preds = %for.cond1294
  %1100 = load ptr, ptr %send_map_elmts_AN, align 8, !tbaa !4
  %1101 = load i32, ptr %j9, align 4, !tbaa !8
  %idxprom1298 = sext i32 %1101 to i64
  %arrayidx1299 = getelementptr inbounds i32, ptr %1100, i64 %idxprom1298
  %1102 = load i32, ptr %arrayidx1299, align 4, !tbaa !8
  %1103 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul1300 = mul nsw i32 %1102, %1103
  %1104 = load i32, ptr %k, align 4, !tbaa !8
  %add1301 = add nsw i32 %mul1300, %1104
  %1105 = load ptr, ptr %new_send_map_elmts, align 8, !tbaa !4
  %1106 = load i32, ptr %cnt, align 4, !tbaa !8
  %inc1302 = add nsw i32 %1106, 1
  store i32 %inc1302, ptr %cnt, align 4, !tbaa !8
  %idxprom1303 = sext i32 %1106 to i64
  %arrayidx1304 = getelementptr inbounds i32, ptr %1105, i64 %idxprom1303
  store i32 %add1301, ptr %arrayidx1304, align 4, !tbaa !8
  br label %for.inc1305

for.inc1305:                                      ; preds = %for.body1297
  %1107 = load i32, ptr %k, align 4, !tbaa !8
  %inc1306 = add nsw i32 %1107, 1
  store i32 %inc1306, ptr %k, align 4, !tbaa !8
  br label %for.cond1294, !llvm.loop !105

for.end1307:                                      ; preds = %for.cond1294
  br label %for.inc1308

for.inc1308:                                      ; preds = %for.end1307
  %1108 = load i32, ptr %j9, align 4, !tbaa !8
  %inc1309 = add nsw i32 %1108, 1
  store i32 %inc1309, ptr %j9, align 4, !tbaa !8
  br label %for.cond1287, !llvm.loop !106

for.end1310:                                      ; preds = %for.cond1287
  br label %for.inc1311

for.inc1311:                                      ; preds = %for.end1310
  %1109 = load i32, ptr %i8, align 4, !tbaa !8
  %inc1312 = add nsw i32 %1109, 1
  store i32 %inc1312, ptr %i8, align 4, !tbaa !8
  br label %for.cond1274, !llvm.loop !107

for.end1313:                                      ; preds = %for.cond1274
  %1110 = load ptr, ptr %send_map_elmts, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1110, i32 noundef 0)
  store ptr null, ptr %send_map_elmts, align 8, !tbaa !4
  %1111 = load ptr, ptr %new_send_map_elmts, align 8, !tbaa !4
  %1112 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_elmts1314 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %1112, i32 0, i32 4
  store ptr %1111, ptr %send_map_elmts1314, align 8, !tbaa !61
  br label %if.end1315

if.end1315:                                       ; preds = %for.end1313, %if.end1262
  %1113 = load ptr, ptr %AN, align 8, !tbaa !4
  %1114 = load ptr, ptr %AN_ptr.addr, align 8, !tbaa !4
  store ptr %1113, ptr %1114, align 8, !tbaa !4
  %1115 = load ptr, ptr %counter, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %1115, i32 noundef 0)
  store ptr null, ptr %counter, align 8, !tbaa !4
  %1116 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %1116, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1315, %if.then22
  call void @llvm.lifetime.end.p0(i64 8, ptr %data10) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %counter) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %map_to_map) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %map_to_node) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %big_map_to_node) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_fun2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_nodes) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %global_num_nodes) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_send_elmts_size) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %big_node) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %mode) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %node) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_procs) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %start_index) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %row) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k_map) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j9) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %recv_vec_starts_AN) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %recv_procs_AN) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %send_map_elmts_AN) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %send_map_starts_AN) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %send_procs_AN) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm_pkg_AN) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %recv_vec_starts) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %recv_procs) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_send_map_elmts) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %send_map_elmts) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %send_map_starts) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %send_procs) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_recvs) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_sends) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm_pkg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_num_cols_offd) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_cols_offd_AN) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %AN_num_nonzeros_offd) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %AN_num_nonzeros_diag) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %row_starts_AN) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_col_map_offd) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_map_offd_AN) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %AN_offd_data) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %AN_offd_j) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %AN_offd_i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %AN_offd) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %AN_diag_data) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %AN_diag_j) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %AN_diag_i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %AN_diag) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %AN) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_cols_offd) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_nonzeros_offd) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_variables) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_map_offd) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %row_starts) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_offd_j) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_diag_j) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_offd_data) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_offd_i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_offd) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_diag_data) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_diag_i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A_diag) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #5
  %1117 = load i32, ptr %retval, align 4
  ret i32 %1117
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @hypre_MPI_Comm_size(ptr noundef, ptr noundef) #2

declare i32 @hypre_MatvecCommPkgCreate(ptr noundef) #2

declare ptr @hypre_CAlloc(i64 noundef, i64 noundef, i32 noundef) #2

declare void @hypre_error_handler(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare ptr @hypre_CSRMatrixCreate(i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind
declare double @sqrt(double noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare void @hypre_Free(ptr noundef, i32 noundef) #2

declare ptr @hypre_ParCSRMatrixCreate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @hypre_CSRMatrixDestroy(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_BoomerAMGCreateScalarCFS(ptr noundef %SN, ptr noundef %CFN_marker, ptr noundef %col_offd_SN_to_AN, i32 noundef %num_functions, i32 noundef %nodal, i32 noundef %data, ptr noundef %dof_func_ptr, ptr noundef %CF_marker_ptr, ptr noundef %col_offd_S_to_A_ptr, ptr noundef %S_ptr) #0 {
entry:
  %SN.addr = alloca ptr, align 8
  %CFN_marker.addr = alloca ptr, align 8
  %col_offd_SN_to_AN.addr = alloca ptr, align 8
  %num_functions.addr = alloca i32, align 4
  %nodal.addr = alloca i32, align 4
  %data.addr = alloca i32, align 4
  %dof_func_ptr.addr = alloca ptr, align 8
  %CF_marker_ptr.addr = alloca ptr, align 8
  %col_offd_S_to_A_ptr.addr = alloca ptr, align 8
  %S_ptr.addr = alloca ptr, align 8
  %comm = alloca ptr, align 8
  %S = alloca ptr, align 8
  %S_diag = alloca ptr, align 8
  %S_diag_i = alloca ptr, align 8
  %S_diag_j = alloca ptr, align 8
  %S_diag_data = alloca ptr, align 8
  %S_offd = alloca ptr, align 8
  %S_offd_i = alloca ptr, align 8
  %S_offd_j = alloca ptr, align 8
  %S_offd_data = alloca ptr, align 8
  %row_starts_S = alloca ptr, align 8
  %col_starts_S = alloca ptr, align 8
  %row_starts_SN = alloca ptr, align 8
  %col_starts_SN = alloca ptr, align 8
  %SN_diag = alloca ptr, align 8
  %SN_diag_i = alloca ptr, align 8
  %SN_diag_j = alloca ptr, align 8
  %SN_diag_data = alloca ptr, align 8
  %SN_offd = alloca ptr, align 8
  %SN_offd_i = alloca ptr, align 8
  %SN_offd_j = alloca ptr, align 8
  %SN_offd_data = alloca ptr, align 8
  %CF_marker = alloca ptr, align 8
  %col_map_offd_SN = alloca ptr, align 8
  %col_map_offd_S = alloca ptr, align 8
  %dof_func = alloca ptr, align 8
  %num_nodes = alloca i32, align 4
  %num_variables = alloca i32, align 4
  %comm_pkg = alloca ptr, align 8
  %num_sends = alloca i32, align 4
  %num_recvs = alloca i32, align 4
  %send_procs = alloca ptr, align 8
  %send_map_starts = alloca ptr, align 8
  %send_map_elmts = alloca ptr, align 8
  %recv_procs = alloca ptr, align 8
  %recv_vec_starts = alloca ptr, align 8
  %comm_pkg_S = alloca ptr, align 8
  %send_procs_S = alloca ptr, align 8
  %send_map_starts_S = alloca ptr, align 8
  %send_map_elmts_S = alloca ptr, align 8
  %recv_procs_S = alloca ptr, align 8
  %recv_vec_starts_S = alloca ptr, align 8
  %col_offd_S_to_A = alloca ptr, align 8
  %num_coarse_nodes = alloca i32, align 4
  %i5 = alloca i32, align 4
  %j6 = alloca i32, align 4
  %k = alloca i32, align 4
  %k1 = alloca i32, align 4
  %jj = alloca i32, align 4
  %cnt = alloca i32, align 4
  %big_k1 = alloca i32, align 4
  %row = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %num_procs = alloca i32, align 4
  %num_cols_offd_SN = alloca i32, align 4
  %num_cols_offd_S = alloca i32, align 4
  %SN_num_nonzeros_diag = alloca i32, align 4
  %SN_num_nonzeros_offd = alloca i32, align 4
  %S_num_nonzeros_diag = alloca i32, align 4
  %S_num_nonzeros_offd = alloca i32, align 4
  %global_num_vars = alloca i32, align 4
  %global_num_cols = alloca i32, align 4
  %global_num_nodes = alloca i32, align 4
  store ptr %SN, ptr %SN.addr, align 8, !tbaa !4
  store ptr %CFN_marker, ptr %CFN_marker.addr, align 8, !tbaa !4
  store ptr %col_offd_SN_to_AN, ptr %col_offd_SN_to_AN.addr, align 8, !tbaa !4
  store i32 %num_functions, ptr %num_functions.addr, align 4, !tbaa !8
  store i32 %nodal, ptr %nodal.addr, align 4, !tbaa !8
  store i32 %data, ptr %data.addr, align 4, !tbaa !8
  store ptr %dof_func_ptr, ptr %dof_func_ptr.addr, align 8, !tbaa !4
  store ptr %CF_marker_ptr, ptr %CF_marker_ptr.addr, align 8, !tbaa !4
  store ptr %col_offd_S_to_A_ptr, ptr %col_offd_S_to_A_ptr.addr, align 8, !tbaa !4
  store ptr %S_ptr, ptr %S_ptr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #5
  %0 = load ptr, ptr %SN.addr, align 8, !tbaa !4
  %comm1 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %comm1, align 8, !tbaa !10
  store ptr %1, ptr %comm, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_diag) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_diag_i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_diag_j) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_diag_data) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_offd) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_offd_i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_offd_j) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_offd_data) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %row_starts_S) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_starts_S) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %row_starts_SN) #5
  %2 = load ptr, ptr %SN.addr, align 8, !tbaa !4
  %row_starts = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %2, i32 0, i32 13
  %3 = load ptr, ptr %row_starts, align 8, !tbaa !19
  store ptr %3, ptr %row_starts_SN, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_starts_SN) #5
  %4 = load ptr, ptr %SN.addr, align 8, !tbaa !4
  %col_starts = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %4, i32 0, i32 14
  %5 = load ptr, ptr %col_starts, align 8, !tbaa !108
  store ptr %5, ptr %col_starts_SN, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %SN_diag) #5
  %6 = load ptr, ptr %SN.addr, align 8, !tbaa !4
  %diag = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %6, i32 0, i32 7
  %7 = load ptr, ptr %diag, align 8, !tbaa !13
  store ptr %7, ptr %SN_diag, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %SN_diag_i) #5
  %8 = load ptr, ptr %SN_diag, align 8, !tbaa !4
  %i = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %i, align 8, !tbaa !14
  store ptr %9, ptr %SN_diag_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %SN_diag_j) #5
  %10 = load ptr, ptr %SN_diag, align 8, !tbaa !4
  %j = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %j, align 8, !tbaa !18
  store ptr %11, ptr %SN_diag_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %SN_diag_data) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %SN_offd) #5
  %12 = load ptr, ptr %SN.addr, align 8, !tbaa !4
  %offd = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %12, i32 0, i32 8
  %13 = load ptr, ptr %offd, align 8, !tbaa !17
  store ptr %13, ptr %SN_offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %SN_offd_i) #5
  %14 = load ptr, ptr %SN_offd, align 8, !tbaa !4
  %i2 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %i2, align 8, !tbaa !14
  store ptr %15, ptr %SN_offd_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %SN_offd_j) #5
  %16 = load ptr, ptr %SN_offd, align 8, !tbaa !4
  %j3 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %j3, align 8, !tbaa !18
  store ptr %17, ptr %SN_offd_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %SN_offd_data) #5
  store ptr null, ptr %SN_offd_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %CF_marker) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_map_offd_SN) #5
  %18 = load ptr, ptr %SN.addr, align 8, !tbaa !4
  %col_map_offd = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %18, i32 0, i32 11
  %19 = load ptr, ptr %col_map_offd, align 8, !tbaa !20
  store ptr %19, ptr %col_map_offd_SN, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_map_offd_S) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %dof_func) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_nodes) #5
  %20 = load ptr, ptr %SN_diag, align 8, !tbaa !4
  %num_rows = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %num_rows, align 8, !tbaa !21
  store i32 %21, ptr %num_nodes, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_variables) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm_pkg) #5
  %22 = load ptr, ptr %SN.addr, align 8, !tbaa !4
  %comm_pkg4 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %22, i32 0, i32 15
  %23 = load ptr, ptr %comm_pkg4, align 8, !tbaa !22
  store ptr %23, ptr %comm_pkg, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_sends) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_recvs) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %send_procs) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %send_map_starts) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %send_map_elmts) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %recv_procs) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %recv_vec_starts) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm_pkg_S) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %send_procs_S) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %send_map_starts_S) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %send_map_elmts_S) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %recv_procs_S) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %recv_vec_starts_S) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_offd_S_to_A) #5
  store ptr null, ptr %col_offd_S_to_A, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_coarse_nodes) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i5) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j6) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %jj) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %big_k1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %row) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_procs) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_cols_offd_SN) #5
  %24 = load ptr, ptr %SN_offd, align 8, !tbaa !4
  %num_cols = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %24, i32 0, i32 4
  %25 = load i32, ptr %num_cols, align 4, !tbaa !68
  store i32 %25, ptr %num_cols_offd_SN, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_cols_offd_S) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %SN_num_nonzeros_diag) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %SN_num_nonzeros_offd) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %S_num_nonzeros_diag) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %S_num_nonzeros_offd) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %global_num_vars) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %global_num_cols) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %global_num_nodes) #5
  %26 = load ptr, ptr %comm, align 8, !tbaa !4
  %call = call i32 @hypre_MPI_Comm_size(ptr noundef %26, ptr noundef %num_procs)
  %27 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %28 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %mul = mul nsw i32 %27, %28
  store i32 %mul, ptr %num_variables, align 4, !tbaa !8
  %29 = load ptr, ptr %CF_marker_ptr.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %29, align 8, !tbaa !4
  %cmp = icmp eq ptr %30, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %31 = load i32, ptr %num_variables, align 4, !tbaa !8
  %conv = sext i32 %31 to i64
  %call7 = call ptr @hypre_CAlloc(i64 noundef %conv, i64 noundef 4, i32 noundef 0)
  %32 = load ptr, ptr %CF_marker_ptr.addr, align 8, !tbaa !4
  store ptr %call7, ptr %32, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %33 = load ptr, ptr %CF_marker_ptr.addr, align 8, !tbaa !4
  %34 = load ptr, ptr %33, align 8, !tbaa !4
  store ptr %34, ptr %CF_marker, align 8, !tbaa !4
  %35 = load i32, ptr %nodal.addr, align 4, !tbaa !8
  %cmp8 = icmp slt i32 %35, 0
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  store i32 0, ptr %cnt, align 4, !tbaa !8
  store i32 0, ptr %num_coarse_nodes, align 4, !tbaa !8
  store i32 0, ptr %i5, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %if.then10
  %36 = load i32, ptr %i5, align 4, !tbaa !8
  %37 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp11 = icmp slt i32 %36, %37
  br i1 %cmp11, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  %38 = load ptr, ptr %CFN_marker.addr, align 8, !tbaa !4
  %39 = load i32, ptr %i5, align 4, !tbaa !8
  %idxprom = sext i32 %39 to i64
  %arrayidx = getelementptr inbounds i32, ptr %38, i64 %idxprom
  %40 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %cmp13 = icmp eq i32 %40, 1
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.body
  %41 = load i32, ptr %num_coarse_nodes, align 4, !tbaa !8
  %inc = add nsw i32 %41, 1
  store i32 %inc, ptr %num_coarse_nodes, align 4, !tbaa !8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %for.body
  store i32 0, ptr %j6, align 4, !tbaa !8
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %if.end16
  %42 = load i32, ptr %j6, align 4, !tbaa !8
  %43 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp18 = icmp slt i32 %42, %43
  br i1 %cmp18, label %for.body20, label %for.end

for.body20:                                       ; preds = %for.cond17
  %44 = load ptr, ptr %CFN_marker.addr, align 8, !tbaa !4
  %45 = load i32, ptr %i5, align 4, !tbaa !8
  %idxprom21 = sext i32 %45 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %44, i64 %idxprom21
  %46 = load i32, ptr %arrayidx22, align 4, !tbaa !8
  %47 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %48 = load i32, ptr %cnt, align 4, !tbaa !8
  %inc23 = add nsw i32 %48, 1
  store i32 %inc23, ptr %cnt, align 4, !tbaa !8
  %idxprom24 = sext i32 %48 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %47, i64 %idxprom24
  store i32 %46, ptr %arrayidx25, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body20
  %49 = load i32, ptr %j6, align 4, !tbaa !8
  %inc26 = add nsw i32 %49, 1
  store i32 %inc26, ptr %j6, align 4, !tbaa !8
  br label %for.cond17, !llvm.loop !109

for.end:                                          ; preds = %for.cond17
  br label %for.inc27

for.inc27:                                        ; preds = %for.end
  %50 = load i32, ptr %i5, align 4, !tbaa !8
  %inc28 = add nsw i32 %50, 1
  store i32 %inc28, ptr %i5, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !110

for.end29:                                        ; preds = %for.cond
  %51 = load i32, ptr %num_coarse_nodes, align 4, !tbaa !8
  %52 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul30 = mul nsw i32 %51, %52
  %conv31 = sext i32 %mul30 to i64
  %call32 = call ptr @hypre_CAlloc(i64 noundef %conv31, i64 noundef 4, i32 noundef 0)
  store ptr %call32, ptr %dof_func, align 8, !tbaa !4
  store i32 0, ptr %cnt, align 4, !tbaa !8
  store i32 0, ptr %i5, align 4, !tbaa !8
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc53, %for.end29
  %53 = load i32, ptr %i5, align 4, !tbaa !8
  %54 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp34 = icmp slt i32 %53, %54
  br i1 %cmp34, label %for.body36, label %for.end55

for.body36:                                       ; preds = %for.cond33
  %55 = load ptr, ptr %CFN_marker.addr, align 8, !tbaa !4
  %56 = load i32, ptr %i5, align 4, !tbaa !8
  %idxprom37 = sext i32 %56 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %55, i64 %idxprom37
  %57 = load i32, ptr %arrayidx38, align 4, !tbaa !8
  %cmp39 = icmp eq i32 %57, 1
  br i1 %cmp39, label %if.then41, label %if.end52

if.then41:                                        ; preds = %for.body36
  store i32 0, ptr %k, align 4, !tbaa !8
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc49, %if.then41
  %58 = load i32, ptr %k, align 4, !tbaa !8
  %59 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp43 = icmp slt i32 %58, %59
  br i1 %cmp43, label %for.body45, label %for.end51

for.body45:                                       ; preds = %for.cond42
  %60 = load i32, ptr %k, align 4, !tbaa !8
  %61 = load ptr, ptr %dof_func, align 8, !tbaa !4
  %62 = load i32, ptr %cnt, align 4, !tbaa !8
  %inc46 = add nsw i32 %62, 1
  store i32 %inc46, ptr %cnt, align 4, !tbaa !8
  %idxprom47 = sext i32 %62 to i64
  %arrayidx48 = getelementptr inbounds i32, ptr %61, i64 %idxprom47
  store i32 %60, ptr %arrayidx48, align 4, !tbaa !8
  br label %for.inc49

for.inc49:                                        ; preds = %for.body45
  %63 = load i32, ptr %k, align 4, !tbaa !8
  %inc50 = add nsw i32 %63, 1
  store i32 %inc50, ptr %k, align 4, !tbaa !8
  br label %for.cond42, !llvm.loop !111

for.end51:                                        ; preds = %for.cond42
  br label %if.end52

if.end52:                                         ; preds = %for.end51, %for.body36
  br label %for.inc53

for.inc53:                                        ; preds = %if.end52
  %64 = load i32, ptr %i5, align 4, !tbaa !8
  %inc54 = add nsw i32 %64, 1
  store i32 %inc54, ptr %i5, align 4, !tbaa !8
  br label %for.cond33, !llvm.loop !112

for.end55:                                        ; preds = %for.cond33
  %65 = load ptr, ptr %dof_func, align 8, !tbaa !4
  %66 = load ptr, ptr %dof_func_ptr.addr, align 8, !tbaa !4
  store ptr %65, ptr %66, align 8, !tbaa !4
  br label %if.end75

if.else:                                          ; preds = %if.end
  store i32 0, ptr %cnt, align 4, !tbaa !8
  store i32 0, ptr %i5, align 4, !tbaa !8
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc72, %if.else
  %67 = load i32, ptr %i5, align 4, !tbaa !8
  %68 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp57 = icmp slt i32 %67, %68
  br i1 %cmp57, label %for.body59, label %for.end74

for.body59:                                       ; preds = %for.cond56
  store i32 0, ptr %j6, align 4, !tbaa !8
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc69, %for.body59
  %69 = load i32, ptr %j6, align 4, !tbaa !8
  %70 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp61 = icmp slt i32 %69, %70
  br i1 %cmp61, label %for.body63, label %for.end71

for.body63:                                       ; preds = %for.cond60
  %71 = load ptr, ptr %CFN_marker.addr, align 8, !tbaa !4
  %72 = load i32, ptr %i5, align 4, !tbaa !8
  %idxprom64 = sext i32 %72 to i64
  %arrayidx65 = getelementptr inbounds i32, ptr %71, i64 %idxprom64
  %73 = load i32, ptr %arrayidx65, align 4, !tbaa !8
  %74 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %75 = load i32, ptr %cnt, align 4, !tbaa !8
  %inc66 = add nsw i32 %75, 1
  store i32 %inc66, ptr %cnt, align 4, !tbaa !8
  %idxprom67 = sext i32 %75 to i64
  %arrayidx68 = getelementptr inbounds i32, ptr %74, i64 %idxprom67
  store i32 %73, ptr %arrayidx68, align 4, !tbaa !8
  br label %for.inc69

for.inc69:                                        ; preds = %for.body63
  %76 = load i32, ptr %j6, align 4, !tbaa !8
  %inc70 = add nsw i32 %76, 1
  store i32 %inc70, ptr %j6, align 4, !tbaa !8
  br label %for.cond60, !llvm.loop !113

for.end71:                                        ; preds = %for.cond60
  br label %for.inc72

for.inc72:                                        ; preds = %for.end71
  %77 = load i32, ptr %i5, align 4, !tbaa !8
  %inc73 = add nsw i32 %77, 1
  store i32 %inc73, ptr %i5, align 4, !tbaa !8
  br label %for.cond56, !llvm.loop !114

for.end74:                                        ; preds = %for.cond56
  br label %if.end75

if.end75:                                         ; preds = %for.end74, %for.end55
  %call76 = call ptr @hypre_CAlloc(i64 noundef 2, i64 noundef 4, i32 noundef 0)
  store ptr %call76, ptr %row_starts_S, align 8, !tbaa !4
  store i32 0, ptr %i5, align 4, !tbaa !8
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc86, %if.end75
  %78 = load i32, ptr %i5, align 4, !tbaa !8
  %cmp78 = icmp slt i32 %78, 2
  br i1 %cmp78, label %for.body80, label %for.end88

for.body80:                                       ; preds = %for.cond77
  %79 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %80 = load ptr, ptr %row_starts_SN, align 8, !tbaa !4
  %81 = load i32, ptr %i5, align 4, !tbaa !8
  %idxprom81 = sext i32 %81 to i64
  %arrayidx82 = getelementptr inbounds i32, ptr %80, i64 %idxprom81
  %82 = load i32, ptr %arrayidx82, align 4, !tbaa !8
  %mul83 = mul nsw i32 %79, %82
  %83 = load ptr, ptr %row_starts_S, align 8, !tbaa !4
  %84 = load i32, ptr %i5, align 4, !tbaa !8
  %idxprom84 = sext i32 %84 to i64
  %arrayidx85 = getelementptr inbounds i32, ptr %83, i64 %idxprom84
  store i32 %mul83, ptr %arrayidx85, align 4, !tbaa !8
  br label %for.inc86

for.inc86:                                        ; preds = %for.body80
  %85 = load i32, ptr %i5, align 4, !tbaa !8
  %inc87 = add nsw i32 %85, 1
  store i32 %inc87, ptr %i5, align 4, !tbaa !8
  br label %for.cond77, !llvm.loop !115

for.end88:                                        ; preds = %for.cond77
  %86 = load ptr, ptr %row_starts_SN, align 8, !tbaa !4
  %87 = load ptr, ptr %col_starts_SN, align 8, !tbaa !4
  %cmp89 = icmp ne ptr %86, %87
  br i1 %cmp89, label %if.then91, label %if.else105

if.then91:                                        ; preds = %for.end88
  %call92 = call ptr @hypre_CAlloc(i64 noundef 2, i64 noundef 4, i32 noundef 0)
  store ptr %call92, ptr %col_starts_S, align 8, !tbaa !4
  store i32 0, ptr %i5, align 4, !tbaa !8
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc102, %if.then91
  %88 = load i32, ptr %i5, align 4, !tbaa !8
  %cmp94 = icmp slt i32 %88, 2
  br i1 %cmp94, label %for.body96, label %for.end104

for.body96:                                       ; preds = %for.cond93
  %89 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %90 = load ptr, ptr %col_starts_SN, align 8, !tbaa !4
  %91 = load i32, ptr %i5, align 4, !tbaa !8
  %idxprom97 = sext i32 %91 to i64
  %arrayidx98 = getelementptr inbounds i32, ptr %90, i64 %idxprom97
  %92 = load i32, ptr %arrayidx98, align 4, !tbaa !8
  %mul99 = mul nsw i32 %89, %92
  %93 = load ptr, ptr %col_starts_S, align 8, !tbaa !4
  %94 = load i32, ptr %i5, align 4, !tbaa !8
  %idxprom100 = sext i32 %94 to i64
  %arrayidx101 = getelementptr inbounds i32, ptr %93, i64 %idxprom100
  store i32 %mul99, ptr %arrayidx101, align 4, !tbaa !8
  br label %for.inc102

for.inc102:                                       ; preds = %for.body96
  %95 = load i32, ptr %i5, align 4, !tbaa !8
  %inc103 = add nsw i32 %95, 1
  store i32 %inc103, ptr %i5, align 4, !tbaa !8
  br label %for.cond93, !llvm.loop !116

for.end104:                                       ; preds = %for.cond93
  br label %if.end106

if.else105:                                       ; preds = %for.end88
  %96 = load ptr, ptr %row_starts_S, align 8, !tbaa !4
  store ptr %96, ptr %col_starts_S, align 8, !tbaa !4
  br label %if.end106

if.end106:                                        ; preds = %if.else105, %for.end104
  %97 = load ptr, ptr %SN_diag_i, align 8, !tbaa !4
  %98 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %idxprom107 = sext i32 %98 to i64
  %arrayidx108 = getelementptr inbounds i32, ptr %97, i64 %idxprom107
  %99 = load i32, ptr %arrayidx108, align 4, !tbaa !8
  store i32 %99, ptr %SN_num_nonzeros_diag, align 4, !tbaa !8
  %100 = load ptr, ptr %SN_offd_i, align 8, !tbaa !4
  %101 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %idxprom109 = sext i32 %101 to i64
  %arrayidx110 = getelementptr inbounds i32, ptr %100, i64 %idxprom109
  %102 = load i32, ptr %arrayidx110, align 4, !tbaa !8
  store i32 %102, ptr %SN_num_nonzeros_offd, align 4, !tbaa !8
  %103 = load ptr, ptr %SN.addr, align 8, !tbaa !4
  %global_num_rows = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %103, i32 0, i32 1
  %104 = load i32, ptr %global_num_rows, align 8, !tbaa !25
  store i32 %104, ptr %global_num_nodes, align 4, !tbaa !8
  %105 = load ptr, ptr %SN.addr, align 8, !tbaa !4
  %global_num_cols111 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %105, i32 0, i32 2
  %106 = load i32, ptr %global_num_cols111, align 4, !tbaa !117
  %107 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul112 = mul nsw i32 %106, %107
  store i32 %mul112, ptr %global_num_cols, align 4, !tbaa !8
  %108 = load i32, ptr %global_num_nodes, align 4, !tbaa !8
  %109 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul113 = mul nsw i32 %108, %109
  store i32 %mul113, ptr %global_num_vars, align 4, !tbaa !8
  %110 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %111 = load i32, ptr %SN_num_nonzeros_diag, align 4, !tbaa !8
  %mul114 = mul nsw i32 %110, %111
  store i32 %mul114, ptr %S_num_nonzeros_diag, align 4, !tbaa !8
  %112 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %113 = load i32, ptr %SN_num_nonzeros_offd, align 4, !tbaa !8
  %mul115 = mul nsw i32 %112, %113
  store i32 %mul115, ptr %S_num_nonzeros_offd, align 4, !tbaa !8
  %114 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %115 = load i32, ptr %num_cols_offd_SN, align 4, !tbaa !8
  %mul116 = mul nsw i32 %114, %115
  store i32 %mul116, ptr %num_cols_offd_S, align 4, !tbaa !8
  %116 = load ptr, ptr %comm, align 8, !tbaa !4
  %117 = load i32, ptr %global_num_vars, align 4, !tbaa !8
  %118 = load i32, ptr %global_num_cols, align 4, !tbaa !8
  %119 = load ptr, ptr %row_starts_S, align 8, !tbaa !4
  %120 = load ptr, ptr %col_starts_S, align 8, !tbaa !4
  %121 = load i32, ptr %num_cols_offd_S, align 4, !tbaa !8
  %122 = load i32, ptr %S_num_nonzeros_diag, align 4, !tbaa !8
  %123 = load i32, ptr %S_num_nonzeros_offd, align 4, !tbaa !8
  %call117 = call ptr @hypre_ParCSRMatrixCreate(ptr noundef %116, i32 noundef %117, i32 noundef %118, ptr noundef %119, ptr noundef %120, i32 noundef %121, i32 noundef %122, i32 noundef %123)
  store ptr %call117, ptr %S, align 8, !tbaa !4
  %124 = load ptr, ptr %S, align 8, !tbaa !4
  %diag118 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %124, i32 0, i32 7
  %125 = load ptr, ptr %diag118, align 8, !tbaa !13
  store ptr %125, ptr %S_diag, align 8, !tbaa !4
  %126 = load ptr, ptr %S, align 8, !tbaa !4
  %offd119 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %126, i32 0, i32 8
  %127 = load ptr, ptr %offd119, align 8, !tbaa !17
  store ptr %127, ptr %S_offd, align 8, !tbaa !4
  %128 = load ptr, ptr %S_diag, align 8, !tbaa !4
  %memory_location = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %128, i32 0, i32 12
  store i32 0, ptr %memory_location, align 4, !tbaa !98
  %129 = load ptr, ptr %S_offd, align 8, !tbaa !4
  %memory_location120 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %129, i32 0, i32 12
  store i32 0, ptr %memory_location120, align 4, !tbaa !98
  %130 = load i32, ptr %num_variables, align 4, !tbaa !8
  %add = add nsw i32 %130, 1
  %conv121 = sext i32 %add to i64
  %call122 = call ptr @hypre_CAlloc(i64 noundef %conv121, i64 noundef 4, i32 noundef 0)
  store ptr %call122, ptr %S_diag_i, align 8, !tbaa !4
  %131 = load i32, ptr %num_variables, align 4, !tbaa !8
  %add123 = add nsw i32 %131, 1
  %conv124 = sext i32 %add123 to i64
  %call125 = call ptr @hypre_CAlloc(i64 noundef %conv124, i64 noundef 4, i32 noundef 0)
  store ptr %call125, ptr %S_offd_i, align 8, !tbaa !4
  %132 = load i32, ptr %S_num_nonzeros_diag, align 4, !tbaa !8
  %conv126 = sext i32 %132 to i64
  %call127 = call ptr @hypre_CAlloc(i64 noundef %conv126, i64 noundef 4, i32 noundef 0)
  store ptr %call127, ptr %S_diag_j, align 8, !tbaa !4
  %133 = load ptr, ptr %S_diag_i, align 8, !tbaa !4
  %134 = load ptr, ptr %S_diag, align 8, !tbaa !4
  %i128 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %134, i32 0, i32 0
  store ptr %133, ptr %i128, align 8, !tbaa !14
  %135 = load ptr, ptr %S_diag_j, align 8, !tbaa !4
  %136 = load ptr, ptr %S_diag, align 8, !tbaa !4
  %j129 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %136, i32 0, i32 1
  store ptr %135, ptr %j129, align 8, !tbaa !18
  %137 = load i32, ptr %data.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %137, 0
  br i1 %tobool, label %if.then130, label %if.end142

if.then130:                                       ; preds = %if.end106
  %138 = load ptr, ptr %SN_diag, align 8, !tbaa !4
  %data131 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %138, i32 0, i32 9
  %139 = load ptr, ptr %data131, align 8, !tbaa !16
  store ptr %139, ptr %SN_diag_data, align 8, !tbaa !4
  %140 = load i32, ptr %S_num_nonzeros_diag, align 4, !tbaa !8
  %conv132 = sext i32 %140 to i64
  %call133 = call ptr @hypre_CAlloc(i64 noundef %conv132, i64 noundef 8, i32 noundef 0)
  store ptr %call133, ptr %S_diag_data, align 8, !tbaa !4
  %141 = load ptr, ptr %S_diag_data, align 8, !tbaa !4
  %142 = load ptr, ptr %S_diag, align 8, !tbaa !4
  %data134 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %142, i32 0, i32 9
  store ptr %141, ptr %data134, align 8, !tbaa !16
  %143 = load i32, ptr %num_cols_offd_S, align 4, !tbaa !8
  %tobool135 = icmp ne i32 %143, 0
  br i1 %tobool135, label %if.then136, label %if.end141

if.then136:                                       ; preds = %if.then130
  %144 = load ptr, ptr %SN_offd, align 8, !tbaa !4
  %data137 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %144, i32 0, i32 9
  %145 = load ptr, ptr %data137, align 8, !tbaa !16
  store ptr %145, ptr %SN_offd_data, align 8, !tbaa !4
  %146 = load i32, ptr %S_num_nonzeros_offd, align 4, !tbaa !8
  %conv138 = sext i32 %146 to i64
  %call139 = call ptr @hypre_CAlloc(i64 noundef %conv138, i64 noundef 8, i32 noundef 0)
  store ptr %call139, ptr %S_offd_data, align 8, !tbaa !4
  %147 = load ptr, ptr %S_offd_data, align 8, !tbaa !4
  %148 = load ptr, ptr %S_offd, align 8, !tbaa !4
  %data140 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %148, i32 0, i32 9
  store ptr %147, ptr %data140, align 8, !tbaa !16
  br label %if.end141

if.end141:                                        ; preds = %if.then136, %if.then130
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %if.end106
  %149 = load ptr, ptr %S_offd_i, align 8, !tbaa !4
  %150 = load ptr, ptr %S_offd, align 8, !tbaa !4
  %i143 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %150, i32 0, i32 0
  store ptr %149, ptr %i143, align 8, !tbaa !14
  %151 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %tobool144 = icmp ne ptr %151, null
  br i1 %tobool144, label %if.then145, label %if.end245

if.then145:                                       ; preds = %if.end142
  %call146 = call ptr @hypre_CAlloc(i64 noundef 1, i64 noundef 88, i32 noundef 0)
  store ptr %call146, ptr %comm_pkg_S, align 8, !tbaa !4
  %152 = load ptr, ptr %comm, align 8, !tbaa !4
  %153 = load ptr, ptr %comm_pkg_S, align 8, !tbaa !4
  %comm147 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %153, i32 0, i32 0
  store ptr %152, ptr %comm147, align 8, !tbaa !55
  %154 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %num_sends148 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %154, i32 0, i32 1
  %155 = load i32, ptr %num_sends148, align 8, !tbaa !57
  store i32 %155, ptr %num_sends, align 4, !tbaa !8
  %156 = load i32, ptr %num_sends, align 4, !tbaa !8
  %157 = load ptr, ptr %comm_pkg_S, align 8, !tbaa !4
  %num_sends149 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %157, i32 0, i32 1
  store i32 %156, ptr %num_sends149, align 8, !tbaa !57
  %158 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %num_recvs150 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %158, i32 0, i32 6
  %159 = load i32, ptr %num_recvs150, align 8, !tbaa !58
  store i32 %159, ptr %num_recvs, align 4, !tbaa !8
  %160 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %161 = load ptr, ptr %comm_pkg_S, align 8, !tbaa !4
  %num_recvs151 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %161, i32 0, i32 6
  store i32 %160, ptr %num_recvs151, align 8, !tbaa !58
  %162 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_procs152 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %162, i32 0, i32 2
  %163 = load ptr, ptr %send_procs152, align 8, !tbaa !59
  store ptr %163, ptr %send_procs, align 8, !tbaa !4
  %164 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_starts153 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %164, i32 0, i32 3
  %165 = load ptr, ptr %send_map_starts153, align 8, !tbaa !60
  store ptr %165, ptr %send_map_starts, align 8, !tbaa !4
  %166 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_elmts154 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %166, i32 0, i32 4
  %167 = load ptr, ptr %send_map_elmts154, align 8, !tbaa !61
  store ptr %167, ptr %send_map_elmts, align 8, !tbaa !4
  %168 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %recv_procs155 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %168, i32 0, i32 7
  %169 = load ptr, ptr %recv_procs155, align 8, !tbaa !62
  store ptr %169, ptr %recv_procs, align 8, !tbaa !4
  %170 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %recv_vec_starts156 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %170, i32 0, i32 8
  %171 = load ptr, ptr %recv_vec_starts156, align 8, !tbaa !63
  store ptr %171, ptr %recv_vec_starts, align 8, !tbaa !4
  store ptr null, ptr %send_procs_S, align 8, !tbaa !4
  store ptr null, ptr %send_map_elmts_S, align 8, !tbaa !4
  %172 = load i32, ptr %num_sends, align 4, !tbaa !8
  %tobool157 = icmp ne i32 %172, 0
  br i1 %tobool157, label %if.then158, label %if.end166

if.then158:                                       ; preds = %if.then145
  %173 = load i32, ptr %num_sends, align 4, !tbaa !8
  %conv159 = sext i32 %173 to i64
  %call160 = call ptr @hypre_CAlloc(i64 noundef %conv159, i64 noundef 4, i32 noundef 0)
  store ptr %call160, ptr %send_procs_S, align 8, !tbaa !4
  %174 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %175 = load ptr, ptr %send_map_starts, align 8, !tbaa !4
  %176 = load i32, ptr %num_sends, align 4, !tbaa !8
  %idxprom161 = sext i32 %176 to i64
  %arrayidx162 = getelementptr inbounds i32, ptr %175, i64 %idxprom161
  %177 = load i32, ptr %arrayidx162, align 4, !tbaa !8
  %mul163 = mul nsw i32 %174, %177
  %conv164 = sext i32 %mul163 to i64
  %call165 = call ptr @hypre_CAlloc(i64 noundef %conv164, i64 noundef 4, i32 noundef 0)
  store ptr %call165, ptr %send_map_elmts_S, align 8, !tbaa !4
  br label %if.end166

if.end166:                                        ; preds = %if.then158, %if.then145
  %178 = load i32, ptr %num_sends, align 4, !tbaa !8
  %add167 = add nsw i32 %178, 1
  %conv168 = sext i32 %add167 to i64
  %call169 = call ptr @hypre_CAlloc(i64 noundef %conv168, i64 noundef 4, i32 noundef 0)
  store ptr %call169, ptr %send_map_starts_S, align 8, !tbaa !4
  %179 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %add170 = add nsw i32 %179, 1
  %conv171 = sext i32 %add170 to i64
  %call172 = call ptr @hypre_CAlloc(i64 noundef %conv171, i64 noundef 4, i32 noundef 0)
  store ptr %call172, ptr %recv_vec_starts_S, align 8, !tbaa !4
  store ptr null, ptr %recv_procs_S, align 8, !tbaa !4
  %180 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %tobool173 = icmp ne i32 %180, 0
  br i1 %tobool173, label %if.then174, label %if.end177

if.then174:                                       ; preds = %if.end166
  %181 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %conv175 = sext i32 %181 to i64
  %call176 = call ptr @hypre_CAlloc(i64 noundef %conv175, i64 noundef 4, i32 noundef 0)
  store ptr %call176, ptr %recv_procs_S, align 8, !tbaa !4
  br label %if.end177

if.end177:                                        ; preds = %if.then174, %if.end166
  %182 = load ptr, ptr %send_map_starts_S, align 8, !tbaa !4
  %arrayidx178 = getelementptr inbounds i32, ptr %182, i64 0
  store i32 0, ptr %arrayidx178, align 4, !tbaa !8
  store i32 0, ptr %i5, align 4, !tbaa !8
  br label %for.cond179

for.cond179:                                      ; preds = %for.inc194, %if.end177
  %183 = load i32, ptr %i5, align 4, !tbaa !8
  %184 = load i32, ptr %num_sends, align 4, !tbaa !8
  %cmp180 = icmp slt i32 %183, %184
  br i1 %cmp180, label %for.body182, label %for.end196

for.body182:                                      ; preds = %for.cond179
  %185 = load ptr, ptr %send_procs, align 8, !tbaa !4
  %186 = load i32, ptr %i5, align 4, !tbaa !8
  %idxprom183 = sext i32 %186 to i64
  %arrayidx184 = getelementptr inbounds i32, ptr %185, i64 %idxprom183
  %187 = load i32, ptr %arrayidx184, align 4, !tbaa !8
  %188 = load ptr, ptr %send_procs_S, align 8, !tbaa !4
  %189 = load i32, ptr %i5, align 4, !tbaa !8
  %idxprom185 = sext i32 %189 to i64
  %arrayidx186 = getelementptr inbounds i32, ptr %188, i64 %idxprom185
  store i32 %187, ptr %arrayidx186, align 4, !tbaa !8
  %190 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %191 = load ptr, ptr %send_map_starts, align 8, !tbaa !4
  %192 = load i32, ptr %i5, align 4, !tbaa !8
  %add187 = add nsw i32 %192, 1
  %idxprom188 = sext i32 %add187 to i64
  %arrayidx189 = getelementptr inbounds i32, ptr %191, i64 %idxprom188
  %193 = load i32, ptr %arrayidx189, align 4, !tbaa !8
  %mul190 = mul nsw i32 %190, %193
  %194 = load ptr, ptr %send_map_starts_S, align 8, !tbaa !4
  %195 = load i32, ptr %i5, align 4, !tbaa !8
  %add191 = add nsw i32 %195, 1
  %idxprom192 = sext i32 %add191 to i64
  %arrayidx193 = getelementptr inbounds i32, ptr %194, i64 %idxprom192
  store i32 %mul190, ptr %arrayidx193, align 4, !tbaa !8
  br label %for.inc194

for.inc194:                                       ; preds = %for.body182
  %196 = load i32, ptr %i5, align 4, !tbaa !8
  %inc195 = add nsw i32 %196, 1
  store i32 %inc195, ptr %i5, align 4, !tbaa !8
  br label %for.cond179, !llvm.loop !118

for.end196:                                       ; preds = %for.cond179
  %197 = load ptr, ptr %recv_vec_starts_S, align 8, !tbaa !4
  %arrayidx197 = getelementptr inbounds i32, ptr %197, i64 0
  store i32 0, ptr %arrayidx197, align 4, !tbaa !8
  store i32 0, ptr %i5, align 4, !tbaa !8
  br label %for.cond198

for.cond198:                                      ; preds = %for.inc213, %for.end196
  %198 = load i32, ptr %i5, align 4, !tbaa !8
  %199 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %cmp199 = icmp slt i32 %198, %199
  br i1 %cmp199, label %for.body201, label %for.end215

for.body201:                                      ; preds = %for.cond198
  %200 = load ptr, ptr %recv_procs, align 8, !tbaa !4
  %201 = load i32, ptr %i5, align 4, !tbaa !8
  %idxprom202 = sext i32 %201 to i64
  %arrayidx203 = getelementptr inbounds i32, ptr %200, i64 %idxprom202
  %202 = load i32, ptr %arrayidx203, align 4, !tbaa !8
  %203 = load ptr, ptr %recv_procs_S, align 8, !tbaa !4
  %204 = load i32, ptr %i5, align 4, !tbaa !8
  %idxprom204 = sext i32 %204 to i64
  %arrayidx205 = getelementptr inbounds i32, ptr %203, i64 %idxprom204
  store i32 %202, ptr %arrayidx205, align 4, !tbaa !8
  %205 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %206 = load ptr, ptr %recv_vec_starts, align 8, !tbaa !4
  %207 = load i32, ptr %i5, align 4, !tbaa !8
  %add206 = add nsw i32 %207, 1
  %idxprom207 = sext i32 %add206 to i64
  %arrayidx208 = getelementptr inbounds i32, ptr %206, i64 %idxprom207
  %208 = load i32, ptr %arrayidx208, align 4, !tbaa !8
  %mul209 = mul nsw i32 %205, %208
  %209 = load ptr, ptr %recv_vec_starts_S, align 8, !tbaa !4
  %210 = load i32, ptr %i5, align 4, !tbaa !8
  %add210 = add nsw i32 %210, 1
  %idxprom211 = sext i32 %add210 to i64
  %arrayidx212 = getelementptr inbounds i32, ptr %209, i64 %idxprom211
  store i32 %mul209, ptr %arrayidx212, align 4, !tbaa !8
  br label %for.inc213

for.inc213:                                       ; preds = %for.body201
  %211 = load i32, ptr %i5, align 4, !tbaa !8
  %inc214 = add nsw i32 %211, 1
  store i32 %inc214, ptr %i5, align 4, !tbaa !8
  br label %for.cond198, !llvm.loop !119

for.end215:                                       ; preds = %for.cond198
  store i32 0, ptr %cnt, align 4, !tbaa !8
  store i32 0, ptr %i5, align 4, !tbaa !8
  br label %for.cond216

for.cond216:                                      ; preds = %for.inc236, %for.end215
  %212 = load i32, ptr %i5, align 4, !tbaa !8
  %213 = load ptr, ptr %send_map_starts, align 8, !tbaa !4
  %214 = load i32, ptr %num_sends, align 4, !tbaa !8
  %idxprom217 = sext i32 %214 to i64
  %arrayidx218 = getelementptr inbounds i32, ptr %213, i64 %idxprom217
  %215 = load i32, ptr %arrayidx218, align 4, !tbaa !8
  %cmp219 = icmp slt i32 %212, %215
  br i1 %cmp219, label %for.body221, label %for.end238

for.body221:                                      ; preds = %for.cond216
  %216 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %217 = load ptr, ptr %send_map_elmts, align 8, !tbaa !4
  %218 = load i32, ptr %i5, align 4, !tbaa !8
  %idxprom222 = sext i32 %218 to i64
  %arrayidx223 = getelementptr inbounds i32, ptr %217, i64 %idxprom222
  %219 = load i32, ptr %arrayidx223, align 4, !tbaa !8
  %mul224 = mul nsw i32 %216, %219
  store i32 %mul224, ptr %k1, align 4, !tbaa !8
  store i32 0, ptr %j6, align 4, !tbaa !8
  br label %for.cond225

for.cond225:                                      ; preds = %for.inc233, %for.body221
  %220 = load i32, ptr %j6, align 4, !tbaa !8
  %221 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp226 = icmp slt i32 %220, %221
  br i1 %cmp226, label %for.body228, label %for.end235

for.body228:                                      ; preds = %for.cond225
  %222 = load i32, ptr %k1, align 4, !tbaa !8
  %223 = load i32, ptr %j6, align 4, !tbaa !8
  %add229 = add nsw i32 %222, %223
  %224 = load ptr, ptr %send_map_elmts_S, align 8, !tbaa !4
  %225 = load i32, ptr %cnt, align 4, !tbaa !8
  %inc230 = add nsw i32 %225, 1
  store i32 %inc230, ptr %cnt, align 4, !tbaa !8
  %idxprom231 = sext i32 %225 to i64
  %arrayidx232 = getelementptr inbounds i32, ptr %224, i64 %idxprom231
  store i32 %add229, ptr %arrayidx232, align 4, !tbaa !8
  br label %for.inc233

for.inc233:                                       ; preds = %for.body228
  %226 = load i32, ptr %j6, align 4, !tbaa !8
  %inc234 = add nsw i32 %226, 1
  store i32 %inc234, ptr %j6, align 4, !tbaa !8
  br label %for.cond225, !llvm.loop !120

for.end235:                                       ; preds = %for.cond225
  br label %for.inc236

for.inc236:                                       ; preds = %for.end235
  %227 = load i32, ptr %i5, align 4, !tbaa !8
  %inc237 = add nsw i32 %227, 1
  store i32 %inc237, ptr %i5, align 4, !tbaa !8
  br label %for.cond216, !llvm.loop !121

for.end238:                                       ; preds = %for.cond216
  %228 = load ptr, ptr %send_procs_S, align 8, !tbaa !4
  %229 = load ptr, ptr %comm_pkg_S, align 8, !tbaa !4
  %send_procs239 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %229, i32 0, i32 2
  store ptr %228, ptr %send_procs239, align 8, !tbaa !59
  %230 = load ptr, ptr %send_map_starts_S, align 8, !tbaa !4
  %231 = load ptr, ptr %comm_pkg_S, align 8, !tbaa !4
  %send_map_starts240 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %231, i32 0, i32 3
  store ptr %230, ptr %send_map_starts240, align 8, !tbaa !60
  %232 = load ptr, ptr %send_map_elmts_S, align 8, !tbaa !4
  %233 = load ptr, ptr %comm_pkg_S, align 8, !tbaa !4
  %send_map_elmts241 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %233, i32 0, i32 4
  store ptr %232, ptr %send_map_elmts241, align 8, !tbaa !61
  %234 = load ptr, ptr %recv_procs_S, align 8, !tbaa !4
  %235 = load ptr, ptr %comm_pkg_S, align 8, !tbaa !4
  %recv_procs242 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %235, i32 0, i32 7
  store ptr %234, ptr %recv_procs242, align 8, !tbaa !62
  %236 = load ptr, ptr %recv_vec_starts_S, align 8, !tbaa !4
  %237 = load ptr, ptr %comm_pkg_S, align 8, !tbaa !4
  %recv_vec_starts243 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %237, i32 0, i32 8
  store ptr %236, ptr %recv_vec_starts243, align 8, !tbaa !63
  %238 = load ptr, ptr %comm_pkg_S, align 8, !tbaa !4
  %239 = load ptr, ptr %S, align 8, !tbaa !4
  %comm_pkg244 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %239, i32 0, i32 15
  store ptr %238, ptr %comm_pkg244, align 8, !tbaa !22
  br label %if.end245

if.end245:                                        ; preds = %for.end238, %if.end142
  %240 = load i32, ptr %num_cols_offd_S, align 4, !tbaa !8
  %tobool246 = icmp ne i32 %240, 0
  br i1 %tobool246, label %if.then247, label %if.end275

if.then247:                                       ; preds = %if.end245
  %241 = load i32, ptr %S_num_nonzeros_offd, align 4, !tbaa !8
  %conv248 = sext i32 %241 to i64
  %call249 = call ptr @hypre_CAlloc(i64 noundef %conv248, i64 noundef 4, i32 noundef 0)
  store ptr %call249, ptr %S_offd_j, align 8, !tbaa !4
  %242 = load ptr, ptr %S_offd_j, align 8, !tbaa !4
  %243 = load ptr, ptr %S_offd, align 8, !tbaa !4
  %j250 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %243, i32 0, i32 1
  store ptr %242, ptr %j250, align 8, !tbaa !18
  %244 = load i32, ptr %num_cols_offd_S, align 4, !tbaa !8
  %conv251 = sext i32 %244 to i64
  %call252 = call ptr @hypre_CAlloc(i64 noundef %conv251, i64 noundef 4, i32 noundef 0)
  store ptr %call252, ptr %col_map_offd_S, align 8, !tbaa !4
  store i32 0, ptr %cnt, align 4, !tbaa !8
  store i32 0, ptr %i5, align 4, !tbaa !8
  br label %for.cond253

for.cond253:                                      ; preds = %for.inc271, %if.then247
  %245 = load i32, ptr %i5, align 4, !tbaa !8
  %246 = load i32, ptr %num_cols_offd_SN, align 4, !tbaa !8
  %cmp254 = icmp slt i32 %245, %246
  br i1 %cmp254, label %for.body256, label %for.end273

for.body256:                                      ; preds = %for.cond253
  %247 = load ptr, ptr %col_map_offd_SN, align 8, !tbaa !4
  %248 = load i32, ptr %i5, align 4, !tbaa !8
  %idxprom257 = sext i32 %248 to i64
  %arrayidx258 = getelementptr inbounds i32, ptr %247, i64 %idxprom257
  %249 = load i32, ptr %arrayidx258, align 4, !tbaa !8
  %250 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul259 = mul nsw i32 %249, %250
  store i32 %mul259, ptr %big_k1, align 4, !tbaa !8
  store i32 0, ptr %j6, align 4, !tbaa !8
  br label %for.cond260

for.cond260:                                      ; preds = %for.inc268, %for.body256
  %251 = load i32, ptr %j6, align 4, !tbaa !8
  %252 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp261 = icmp slt i32 %251, %252
  br i1 %cmp261, label %for.body263, label %for.end270

for.body263:                                      ; preds = %for.cond260
  %253 = load i32, ptr %big_k1, align 4, !tbaa !8
  %254 = load i32, ptr %j6, align 4, !tbaa !8
  %add264 = add nsw i32 %253, %254
  %255 = load ptr, ptr %col_map_offd_S, align 8, !tbaa !4
  %256 = load i32, ptr %cnt, align 4, !tbaa !8
  %inc265 = add nsw i32 %256, 1
  store i32 %inc265, ptr %cnt, align 4, !tbaa !8
  %idxprom266 = sext i32 %256 to i64
  %arrayidx267 = getelementptr inbounds i32, ptr %255, i64 %idxprom266
  store i32 %add264, ptr %arrayidx267, align 4, !tbaa !8
  br label %for.inc268

for.inc268:                                       ; preds = %for.body263
  %257 = load i32, ptr %j6, align 4, !tbaa !8
  %inc269 = add nsw i32 %257, 1
  store i32 %inc269, ptr %j6, align 4, !tbaa !8
  br label %for.cond260, !llvm.loop !122

for.end270:                                       ; preds = %for.cond260
  br label %for.inc271

for.inc271:                                       ; preds = %for.end270
  %258 = load i32, ptr %i5, align 4, !tbaa !8
  %inc272 = add nsw i32 %258, 1
  store i32 %inc272, ptr %i5, align 4, !tbaa !8
  br label %for.cond253, !llvm.loop !123

for.end273:                                       ; preds = %for.cond253
  %259 = load ptr, ptr %col_map_offd_S, align 8, !tbaa !4
  %260 = load ptr, ptr %S, align 8, !tbaa !4
  %col_map_offd274 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %260, i32 0, i32 11
  store ptr %259, ptr %col_map_offd274, align 8, !tbaa !20
  br label %if.end275

if.end275:                                        ; preds = %for.end273, %if.end245
  %261 = load ptr, ptr %col_offd_SN_to_AN.addr, align 8, !tbaa !4
  %tobool276 = icmp ne ptr %261, null
  br i1 %tobool276, label %if.then277, label %if.end301

if.then277:                                       ; preds = %if.end275
  %262 = load i32, ptr %num_cols_offd_S, align 4, !tbaa !8
  %conv278 = sext i32 %262 to i64
  %call279 = call ptr @hypre_CAlloc(i64 noundef %conv278, i64 noundef 4, i32 noundef 0)
  store ptr %call279, ptr %col_offd_S_to_A, align 8, !tbaa !4
  store i32 0, ptr %cnt, align 4, !tbaa !8
  store i32 0, ptr %i5, align 4, !tbaa !8
  br label %for.cond280

for.cond280:                                      ; preds = %for.inc298, %if.then277
  %263 = load i32, ptr %i5, align 4, !tbaa !8
  %264 = load i32, ptr %num_cols_offd_SN, align 4, !tbaa !8
  %cmp281 = icmp slt i32 %263, %264
  br i1 %cmp281, label %for.body283, label %for.end300

for.body283:                                      ; preds = %for.cond280
  %265 = load ptr, ptr %col_offd_SN_to_AN.addr, align 8, !tbaa !4
  %266 = load i32, ptr %i5, align 4, !tbaa !8
  %idxprom284 = sext i32 %266 to i64
  %arrayidx285 = getelementptr inbounds i32, ptr %265, i64 %idxprom284
  %267 = load i32, ptr %arrayidx285, align 4, !tbaa !8
  %268 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul286 = mul nsw i32 %267, %268
  store i32 %mul286, ptr %k1, align 4, !tbaa !8
  store i32 0, ptr %j6, align 4, !tbaa !8
  br label %for.cond287

for.cond287:                                      ; preds = %for.inc295, %for.body283
  %269 = load i32, ptr %j6, align 4, !tbaa !8
  %270 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp288 = icmp slt i32 %269, %270
  br i1 %cmp288, label %for.body290, label %for.end297

for.body290:                                      ; preds = %for.cond287
  %271 = load i32, ptr %k1, align 4, !tbaa !8
  %272 = load i32, ptr %j6, align 4, !tbaa !8
  %add291 = add nsw i32 %271, %272
  %273 = load ptr, ptr %col_offd_S_to_A, align 8, !tbaa !4
  %274 = load i32, ptr %cnt, align 4, !tbaa !8
  %inc292 = add nsw i32 %274, 1
  store i32 %inc292, ptr %cnt, align 4, !tbaa !8
  %idxprom293 = sext i32 %274 to i64
  %arrayidx294 = getelementptr inbounds i32, ptr %273, i64 %idxprom293
  store i32 %add291, ptr %arrayidx294, align 4, !tbaa !8
  br label %for.inc295

for.inc295:                                       ; preds = %for.body290
  %275 = load i32, ptr %j6, align 4, !tbaa !8
  %inc296 = add nsw i32 %275, 1
  store i32 %inc296, ptr %j6, align 4, !tbaa !8
  br label %for.cond287, !llvm.loop !124

for.end297:                                       ; preds = %for.cond287
  br label %for.inc298

for.inc298:                                       ; preds = %for.end297
  %276 = load i32, ptr %i5, align 4, !tbaa !8
  %inc299 = add nsw i32 %276, 1
  store i32 %inc299, ptr %i5, align 4, !tbaa !8
  br label %for.cond280, !llvm.loop !125

for.end300:                                       ; preds = %for.cond280
  %277 = load ptr, ptr %col_offd_S_to_A, align 8, !tbaa !4
  %278 = load ptr, ptr %col_offd_S_to_A_ptr.addr, align 8, !tbaa !4
  store ptr %277, ptr %278, align 8, !tbaa !4
  br label %if.end301

if.end301:                                        ; preds = %for.end300, %if.end275
  store i32 0, ptr %cnt, align 4, !tbaa !8
  store i32 0, ptr %row, align 4, !tbaa !8
  store i32 0, ptr %i5, align 4, !tbaa !8
  br label %for.cond302

for.cond302:                                      ; preds = %for.inc364, %if.end301
  %279 = load i32, ptr %i5, align 4, !tbaa !8
  %280 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp303 = icmp slt i32 %279, %280
  br i1 %cmp303, label %for.body305, label %for.end366

for.body305:                                      ; preds = %for.cond302
  %281 = load i32, ptr %row, align 4, !tbaa !8
  %inc306 = add nsw i32 %281, 1
  store i32 %inc306, ptr %row, align 4, !tbaa !8
  %282 = load i32, ptr %cnt, align 4, !tbaa !8
  store i32 %282, ptr %start, align 4, !tbaa !8
  %283 = load ptr, ptr %SN_diag_i, align 8, !tbaa !4
  %284 = load i32, ptr %i5, align 4, !tbaa !8
  %idxprom307 = sext i32 %284 to i64
  %arrayidx308 = getelementptr inbounds i32, ptr %283, i64 %idxprom307
  %285 = load i32, ptr %arrayidx308, align 4, !tbaa !8
  store i32 %285, ptr %j6, align 4, !tbaa !8
  br label %for.cond309

for.cond309:                                      ; preds = %for.inc329, %for.body305
  %286 = load i32, ptr %j6, align 4, !tbaa !8
  %287 = load ptr, ptr %SN_diag_i, align 8, !tbaa !4
  %288 = load i32, ptr %i5, align 4, !tbaa !8
  %add310 = add nsw i32 %288, 1
  %idxprom311 = sext i32 %add310 to i64
  %arrayidx312 = getelementptr inbounds i32, ptr %287, i64 %idxprom311
  %289 = load i32, ptr %arrayidx312, align 4, !tbaa !8
  %cmp313 = icmp slt i32 %286, %289
  br i1 %cmp313, label %for.body315, label %for.end331

for.body315:                                      ; preds = %for.cond309
  %290 = load ptr, ptr %SN_diag_j, align 8, !tbaa !4
  %291 = load i32, ptr %j6, align 4, !tbaa !8
  %idxprom316 = sext i32 %291 to i64
  %arrayidx317 = getelementptr inbounds i32, ptr %290, i64 %idxprom316
  %292 = load i32, ptr %arrayidx317, align 4, !tbaa !8
  store i32 %292, ptr %jj, align 4, !tbaa !8
  %293 = load i32, ptr %data.addr, align 4, !tbaa !8
  %tobool318 = icmp ne i32 %293, 0
  br i1 %tobool318, label %if.then319, label %if.end324

if.then319:                                       ; preds = %for.body315
  %294 = load ptr, ptr %SN_diag_data, align 8, !tbaa !4
  %295 = load i32, ptr %j6, align 4, !tbaa !8
  %idxprom320 = sext i32 %295 to i64
  %arrayidx321 = getelementptr inbounds double, ptr %294, i64 %idxprom320
  %296 = load double, ptr %arrayidx321, align 8, !tbaa !32
  %297 = load ptr, ptr %S_diag_data, align 8, !tbaa !4
  %298 = load i32, ptr %cnt, align 4, !tbaa !8
  %idxprom322 = sext i32 %298 to i64
  %arrayidx323 = getelementptr inbounds double, ptr %297, i64 %idxprom322
  store double %296, ptr %arrayidx323, align 8, !tbaa !32
  br label %if.end324

if.end324:                                        ; preds = %if.then319, %for.body315
  %299 = load i32, ptr %jj, align 4, !tbaa !8
  %300 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul325 = mul nsw i32 %299, %300
  %301 = load ptr, ptr %S_diag_j, align 8, !tbaa !4
  %302 = load i32, ptr %cnt, align 4, !tbaa !8
  %inc326 = add nsw i32 %302, 1
  store i32 %inc326, ptr %cnt, align 4, !tbaa !8
  %idxprom327 = sext i32 %302 to i64
  %arrayidx328 = getelementptr inbounds i32, ptr %301, i64 %idxprom327
  store i32 %mul325, ptr %arrayidx328, align 4, !tbaa !8
  br label %for.inc329

for.inc329:                                       ; preds = %if.end324
  %303 = load i32, ptr %j6, align 4, !tbaa !8
  %inc330 = add nsw i32 %303, 1
  store i32 %inc330, ptr %j6, align 4, !tbaa !8
  br label %for.cond309, !llvm.loop !126

for.end331:                                       ; preds = %for.cond309
  %304 = load i32, ptr %cnt, align 4, !tbaa !8
  store i32 %304, ptr %end, align 4, !tbaa !8
  %305 = load i32, ptr %cnt, align 4, !tbaa !8
  %306 = load ptr, ptr %S_diag_i, align 8, !tbaa !4
  %307 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom332 = sext i32 %307 to i64
  %arrayidx333 = getelementptr inbounds i32, ptr %306, i64 %idxprom332
  store i32 %305, ptr %arrayidx333, align 4, !tbaa !8
  store i32 1, ptr %k1, align 4, !tbaa !8
  br label %for.cond334

for.cond334:                                      ; preds = %for.inc361, %for.end331
  %308 = load i32, ptr %k1, align 4, !tbaa !8
  %309 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp335 = icmp slt i32 %308, %309
  br i1 %cmp335, label %for.body337, label %for.end363

for.body337:                                      ; preds = %for.cond334
  %310 = load i32, ptr %row, align 4, !tbaa !8
  %inc338 = add nsw i32 %310, 1
  store i32 %inc338, ptr %row, align 4, !tbaa !8
  %311 = load i32, ptr %start, align 4, !tbaa !8
  store i32 %311, ptr %k, align 4, !tbaa !8
  br label %for.cond339

for.cond339:                                      ; preds = %for.inc356, %for.body337
  %312 = load i32, ptr %k, align 4, !tbaa !8
  %313 = load i32, ptr %end, align 4, !tbaa !8
  %cmp340 = icmp slt i32 %312, %313
  br i1 %cmp340, label %for.body342, label %for.end358

for.body342:                                      ; preds = %for.cond339
  %314 = load i32, ptr %data.addr, align 4, !tbaa !8
  %tobool343 = icmp ne i32 %314, 0
  br i1 %tobool343, label %if.then344, label %if.end349

if.then344:                                       ; preds = %for.body342
  %315 = load ptr, ptr %S_diag_data, align 8, !tbaa !4
  %316 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom345 = sext i32 %316 to i64
  %arrayidx346 = getelementptr inbounds double, ptr %315, i64 %idxprom345
  %317 = load double, ptr %arrayidx346, align 8, !tbaa !32
  %318 = load ptr, ptr %S_diag_data, align 8, !tbaa !4
  %319 = load i32, ptr %cnt, align 4, !tbaa !8
  %idxprom347 = sext i32 %319 to i64
  %arrayidx348 = getelementptr inbounds double, ptr %318, i64 %idxprom347
  store double %317, ptr %arrayidx348, align 8, !tbaa !32
  br label %if.end349

if.end349:                                        ; preds = %if.then344, %for.body342
  %320 = load ptr, ptr %S_diag_j, align 8, !tbaa !4
  %321 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom350 = sext i32 %321 to i64
  %arrayidx351 = getelementptr inbounds i32, ptr %320, i64 %idxprom350
  %322 = load i32, ptr %arrayidx351, align 4, !tbaa !8
  %323 = load i32, ptr %k1, align 4, !tbaa !8
  %add352 = add nsw i32 %322, %323
  %324 = load ptr, ptr %S_diag_j, align 8, !tbaa !4
  %325 = load i32, ptr %cnt, align 4, !tbaa !8
  %inc353 = add nsw i32 %325, 1
  store i32 %inc353, ptr %cnt, align 4, !tbaa !8
  %idxprom354 = sext i32 %325 to i64
  %arrayidx355 = getelementptr inbounds i32, ptr %324, i64 %idxprom354
  store i32 %add352, ptr %arrayidx355, align 4, !tbaa !8
  br label %for.inc356

for.inc356:                                       ; preds = %if.end349
  %326 = load i32, ptr %k, align 4, !tbaa !8
  %inc357 = add nsw i32 %326, 1
  store i32 %inc357, ptr %k, align 4, !tbaa !8
  br label %for.cond339, !llvm.loop !127

for.end358:                                       ; preds = %for.cond339
  %327 = load i32, ptr %cnt, align 4, !tbaa !8
  %328 = load ptr, ptr %S_diag_i, align 8, !tbaa !4
  %329 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom359 = sext i32 %329 to i64
  %arrayidx360 = getelementptr inbounds i32, ptr %328, i64 %idxprom359
  store i32 %327, ptr %arrayidx360, align 4, !tbaa !8
  br label %for.inc361

for.inc361:                                       ; preds = %for.end358
  %330 = load i32, ptr %k1, align 4, !tbaa !8
  %inc362 = add nsw i32 %330, 1
  store i32 %inc362, ptr %k1, align 4, !tbaa !8
  br label %for.cond334, !llvm.loop !128

for.end363:                                       ; preds = %for.cond334
  br label %for.inc364

for.inc364:                                       ; preds = %for.end363
  %331 = load i32, ptr %i5, align 4, !tbaa !8
  %inc365 = add nsw i32 %331, 1
  store i32 %inc365, ptr %i5, align 4, !tbaa !8
  br label %for.cond302, !llvm.loop !129

for.end366:                                       ; preds = %for.cond302
  store i32 0, ptr %cnt, align 4, !tbaa !8
  store i32 0, ptr %row, align 4, !tbaa !8
  store i32 0, ptr %i5, align 4, !tbaa !8
  br label %for.cond367

for.cond367:                                      ; preds = %for.inc429, %for.end366
  %332 = load i32, ptr %i5, align 4, !tbaa !8
  %333 = load i32, ptr %num_nodes, align 4, !tbaa !8
  %cmp368 = icmp slt i32 %332, %333
  br i1 %cmp368, label %for.body370, label %for.end431

for.body370:                                      ; preds = %for.cond367
  %334 = load i32, ptr %row, align 4, !tbaa !8
  %inc371 = add nsw i32 %334, 1
  store i32 %inc371, ptr %row, align 4, !tbaa !8
  %335 = load i32, ptr %cnt, align 4, !tbaa !8
  store i32 %335, ptr %start, align 4, !tbaa !8
  %336 = load ptr, ptr %SN_offd_i, align 8, !tbaa !4
  %337 = load i32, ptr %i5, align 4, !tbaa !8
  %idxprom372 = sext i32 %337 to i64
  %arrayidx373 = getelementptr inbounds i32, ptr %336, i64 %idxprom372
  %338 = load i32, ptr %arrayidx373, align 4, !tbaa !8
  store i32 %338, ptr %j6, align 4, !tbaa !8
  br label %for.cond374

for.cond374:                                      ; preds = %for.inc394, %for.body370
  %339 = load i32, ptr %j6, align 4, !tbaa !8
  %340 = load ptr, ptr %SN_offd_i, align 8, !tbaa !4
  %341 = load i32, ptr %i5, align 4, !tbaa !8
  %add375 = add nsw i32 %341, 1
  %idxprom376 = sext i32 %add375 to i64
  %arrayidx377 = getelementptr inbounds i32, ptr %340, i64 %idxprom376
  %342 = load i32, ptr %arrayidx377, align 4, !tbaa !8
  %cmp378 = icmp slt i32 %339, %342
  br i1 %cmp378, label %for.body380, label %for.end396

for.body380:                                      ; preds = %for.cond374
  %343 = load ptr, ptr %SN_offd_j, align 8, !tbaa !4
  %344 = load i32, ptr %j6, align 4, !tbaa !8
  %idxprom381 = sext i32 %344 to i64
  %arrayidx382 = getelementptr inbounds i32, ptr %343, i64 %idxprom381
  %345 = load i32, ptr %arrayidx382, align 4, !tbaa !8
  store i32 %345, ptr %jj, align 4, !tbaa !8
  %346 = load i32, ptr %data.addr, align 4, !tbaa !8
  %tobool383 = icmp ne i32 %346, 0
  br i1 %tobool383, label %if.then384, label %if.end389

if.then384:                                       ; preds = %for.body380
  %347 = load ptr, ptr %SN_offd_data, align 8, !tbaa !4
  %348 = load i32, ptr %j6, align 4, !tbaa !8
  %idxprom385 = sext i32 %348 to i64
  %arrayidx386 = getelementptr inbounds double, ptr %347, i64 %idxprom385
  %349 = load double, ptr %arrayidx386, align 8, !tbaa !32
  %350 = load ptr, ptr %S_offd_data, align 8, !tbaa !4
  %351 = load i32, ptr %cnt, align 4, !tbaa !8
  %idxprom387 = sext i32 %351 to i64
  %arrayidx388 = getelementptr inbounds double, ptr %350, i64 %idxprom387
  store double %349, ptr %arrayidx388, align 8, !tbaa !32
  br label %if.end389

if.end389:                                        ; preds = %if.then384, %for.body380
  %352 = load i32, ptr %jj, align 4, !tbaa !8
  %353 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul390 = mul nsw i32 %352, %353
  %354 = load ptr, ptr %S_offd_j, align 8, !tbaa !4
  %355 = load i32, ptr %cnt, align 4, !tbaa !8
  %inc391 = add nsw i32 %355, 1
  store i32 %inc391, ptr %cnt, align 4, !tbaa !8
  %idxprom392 = sext i32 %355 to i64
  %arrayidx393 = getelementptr inbounds i32, ptr %354, i64 %idxprom392
  store i32 %mul390, ptr %arrayidx393, align 4, !tbaa !8
  br label %for.inc394

for.inc394:                                       ; preds = %if.end389
  %356 = load i32, ptr %j6, align 4, !tbaa !8
  %inc395 = add nsw i32 %356, 1
  store i32 %inc395, ptr %j6, align 4, !tbaa !8
  br label %for.cond374, !llvm.loop !130

for.end396:                                       ; preds = %for.cond374
  %357 = load i32, ptr %cnt, align 4, !tbaa !8
  store i32 %357, ptr %end, align 4, !tbaa !8
  %358 = load i32, ptr %cnt, align 4, !tbaa !8
  %359 = load ptr, ptr %S_offd_i, align 8, !tbaa !4
  %360 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom397 = sext i32 %360 to i64
  %arrayidx398 = getelementptr inbounds i32, ptr %359, i64 %idxprom397
  store i32 %358, ptr %arrayidx398, align 4, !tbaa !8
  store i32 1, ptr %k1, align 4, !tbaa !8
  br label %for.cond399

for.cond399:                                      ; preds = %for.inc426, %for.end396
  %361 = load i32, ptr %k1, align 4, !tbaa !8
  %362 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp400 = icmp slt i32 %361, %362
  br i1 %cmp400, label %for.body402, label %for.end428

for.body402:                                      ; preds = %for.cond399
  %363 = load i32, ptr %row, align 4, !tbaa !8
  %inc403 = add nsw i32 %363, 1
  store i32 %inc403, ptr %row, align 4, !tbaa !8
  %364 = load i32, ptr %start, align 4, !tbaa !8
  store i32 %364, ptr %k, align 4, !tbaa !8
  br label %for.cond404

for.cond404:                                      ; preds = %for.inc421, %for.body402
  %365 = load i32, ptr %k, align 4, !tbaa !8
  %366 = load i32, ptr %end, align 4, !tbaa !8
  %cmp405 = icmp slt i32 %365, %366
  br i1 %cmp405, label %for.body407, label %for.end423

for.body407:                                      ; preds = %for.cond404
  %367 = load i32, ptr %data.addr, align 4, !tbaa !8
  %tobool408 = icmp ne i32 %367, 0
  br i1 %tobool408, label %if.then409, label %if.end414

if.then409:                                       ; preds = %for.body407
  %368 = load ptr, ptr %S_offd_data, align 8, !tbaa !4
  %369 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom410 = sext i32 %369 to i64
  %arrayidx411 = getelementptr inbounds double, ptr %368, i64 %idxprom410
  %370 = load double, ptr %arrayidx411, align 8, !tbaa !32
  %371 = load ptr, ptr %S_offd_data, align 8, !tbaa !4
  %372 = load i32, ptr %cnt, align 4, !tbaa !8
  %idxprom412 = sext i32 %372 to i64
  %arrayidx413 = getelementptr inbounds double, ptr %371, i64 %idxprom412
  store double %370, ptr %arrayidx413, align 8, !tbaa !32
  br label %if.end414

if.end414:                                        ; preds = %if.then409, %for.body407
  %373 = load ptr, ptr %S_offd_j, align 8, !tbaa !4
  %374 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom415 = sext i32 %374 to i64
  %arrayidx416 = getelementptr inbounds i32, ptr %373, i64 %idxprom415
  %375 = load i32, ptr %arrayidx416, align 4, !tbaa !8
  %376 = load i32, ptr %k1, align 4, !tbaa !8
  %add417 = add nsw i32 %375, %376
  %377 = load ptr, ptr %S_offd_j, align 8, !tbaa !4
  %378 = load i32, ptr %cnt, align 4, !tbaa !8
  %inc418 = add nsw i32 %378, 1
  store i32 %inc418, ptr %cnt, align 4, !tbaa !8
  %idxprom419 = sext i32 %378 to i64
  %arrayidx420 = getelementptr inbounds i32, ptr %377, i64 %idxprom419
  store i32 %add417, ptr %arrayidx420, align 4, !tbaa !8
  br label %for.inc421

for.inc421:                                       ; preds = %if.end414
  %379 = load i32, ptr %k, align 4, !tbaa !8
  %inc422 = add nsw i32 %379, 1
  store i32 %inc422, ptr %k, align 4, !tbaa !8
  br label %for.cond404, !llvm.loop !131

for.end423:                                       ; preds = %for.cond404
  %380 = load i32, ptr %cnt, align 4, !tbaa !8
  %381 = load ptr, ptr %S_offd_i, align 8, !tbaa !4
  %382 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom424 = sext i32 %382 to i64
  %arrayidx425 = getelementptr inbounds i32, ptr %381, i64 %idxprom424
  store i32 %380, ptr %arrayidx425, align 4, !tbaa !8
  br label %for.inc426

for.inc426:                                       ; preds = %for.end423
  %383 = load i32, ptr %k1, align 4, !tbaa !8
  %inc427 = add nsw i32 %383, 1
  store i32 %inc427, ptr %k1, align 4, !tbaa !8
  br label %for.cond399, !llvm.loop !132

for.end428:                                       ; preds = %for.cond399
  br label %for.inc429

for.inc429:                                       ; preds = %for.end428
  %384 = load i32, ptr %i5, align 4, !tbaa !8
  %inc430 = add nsw i32 %384, 1
  store i32 %inc430, ptr %i5, align 4, !tbaa !8
  br label %for.cond367, !llvm.loop !133

for.end431:                                       ; preds = %for.cond367
  %385 = load ptr, ptr %S, align 8, !tbaa !4
  %386 = load ptr, ptr %S_ptr.addr, align 8, !tbaa !4
  store ptr %385, ptr %386, align 8, !tbaa !4
  %387 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %global_num_nodes) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %global_num_cols) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %global_num_vars) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %S_num_nonzeros_offd) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %S_num_nonzeros_diag) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %SN_num_nonzeros_offd) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %SN_num_nonzeros_diag) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_cols_offd_S) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_cols_offd_SN) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_procs) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %row) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %big_k1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %jj) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_coarse_nodes) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_offd_S_to_A) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %recv_vec_starts_S) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %recv_procs_S) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %send_map_elmts_S) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %send_map_starts_S) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %send_procs_S) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm_pkg_S) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %recv_vec_starts) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %recv_procs) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %send_map_elmts) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %send_map_starts) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %send_procs) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_recvs) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_sends) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm_pkg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_variables) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_nodes) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %dof_func) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_map_offd_S) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_map_offd_SN) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %CF_marker) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %SN_offd_data) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %SN_offd_j) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %SN_offd_i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %SN_offd) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %SN_diag_data) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %SN_diag_j) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %SN_diag_i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %SN_diag) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_starts_SN) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %row_starts_SN) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_starts_S) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %row_starts_S) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_offd_data) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_offd_j) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_offd_i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_offd) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_diag_data) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_diag_j) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_diag_i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_diag) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #5
  ret i32 %387
}

; Function Attrs: nounwind uwtable
define i32 @hypre_BoomerAMGCreateScalarCF(ptr noundef %CFN_marker, i32 noundef %num_functions, i32 noundef %num_nodes, ptr noundef %dof_func_ptr, ptr noundef %CF_marker_ptr) #0 {
entry:
  %CFN_marker.addr = alloca ptr, align 8
  %num_functions.addr = alloca i32, align 4
  %num_nodes.addr = alloca i32, align 4
  %dof_func_ptr.addr = alloca ptr, align 8
  %CF_marker_ptr.addr = alloca ptr, align 8
  %CF_marker = alloca ptr, align 8
  %dof_func = alloca ptr, align 8
  %num_variables = alloca i32, align 4
  %num_coarse_nodes = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %cnt = alloca i32, align 4
  store ptr %CFN_marker, ptr %CFN_marker.addr, align 8, !tbaa !4
  store i32 %num_functions, ptr %num_functions.addr, align 4, !tbaa !8
  store i32 %num_nodes, ptr %num_nodes.addr, align 4, !tbaa !8
  store ptr %dof_func_ptr, ptr %dof_func_ptr.addr, align 8, !tbaa !4
  store ptr %CF_marker_ptr, ptr %CF_marker_ptr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %CF_marker) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %dof_func) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_variables) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_coarse_nodes) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #5
  %0 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %1 = load i32, ptr %num_nodes.addr, align 4, !tbaa !8
  %mul = mul nsw i32 %0, %1
  store i32 %mul, ptr %num_variables, align 4, !tbaa !8
  %2 = load ptr, ptr %CF_marker_ptr.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %2, align 8, !tbaa !4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %num_variables, align 4, !tbaa !8
  %conv = sext i32 %4 to i64
  %call = call ptr @hypre_CAlloc(i64 noundef %conv, i64 noundef 4, i32 noundef 0)
  %5 = load ptr, ptr %CF_marker_ptr.addr, align 8, !tbaa !4
  store ptr %call, ptr %5, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %CF_marker_ptr.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %6, align 8, !tbaa !4
  store ptr %7, ptr %CF_marker, align 8, !tbaa !4
  store i32 0, ptr %cnt, align 4, !tbaa !8
  store i32 0, ptr %num_coarse_nodes, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %if.end
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %9 = load i32, ptr %num_nodes.addr, align 4, !tbaa !8
  %cmp1 = icmp slt i32 %8, %9
  br i1 %cmp1, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %CFN_marker.addr, align 8, !tbaa !4
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i32, ptr %10, i64 %idxprom
  %12 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %cmp3 = icmp eq i32 %12, 1
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body
  %13 = load i32, ptr %num_coarse_nodes, align 4, !tbaa !8
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %num_coarse_nodes, align 4, !tbaa !8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.body
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %if.end6
  %14 = load i32, ptr %j, align 4, !tbaa !8
  %15 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp8 = icmp slt i32 %14, %15
  br i1 %cmp8, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond7
  %16 = load ptr, ptr %CFN_marker.addr, align 8, !tbaa !4
  %17 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %16, i64 %idxprom11
  %18 = load i32, ptr %arrayidx12, align 4, !tbaa !8
  %19 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %20 = load i32, ptr %cnt, align 4, !tbaa !8
  %inc13 = add nsw i32 %20, 1
  store i32 %inc13, ptr %cnt, align 4, !tbaa !8
  %idxprom14 = sext i32 %20 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %19, i64 %idxprom14
  store i32 %18, ptr %arrayidx15, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %21 = load i32, ptr %j, align 4, !tbaa !8
  %inc16 = add nsw i32 %21, 1
  store i32 %inc16, ptr %j, align 4, !tbaa !8
  br label %for.cond7, !llvm.loop !134

for.end:                                          ; preds = %for.cond7
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %22 = load i32, ptr %i, align 4, !tbaa !8
  %inc18 = add nsw i32 %22, 1
  store i32 %inc18, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !135

for.end19:                                        ; preds = %for.cond
  %23 = load i32, ptr %num_coarse_nodes, align 4, !tbaa !8
  %24 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %mul20 = mul nsw i32 %23, %24
  %conv21 = sext i32 %mul20 to i64
  %call22 = call ptr @hypre_CAlloc(i64 noundef %conv21, i64 noundef 4, i32 noundef 0)
  store ptr %call22, ptr %dof_func, align 8, !tbaa !4
  store i32 0, ptr %cnt, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc43, %for.end19
  %25 = load i32, ptr %i, align 4, !tbaa !8
  %26 = load i32, ptr %num_nodes.addr, align 4, !tbaa !8
  %cmp24 = icmp slt i32 %25, %26
  br i1 %cmp24, label %for.body26, label %for.end45

for.body26:                                       ; preds = %for.cond23
  %27 = load ptr, ptr %CFN_marker.addr, align 8, !tbaa !4
  %28 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom27 = sext i32 %28 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %27, i64 %idxprom27
  %29 = load i32, ptr %arrayidx28, align 4, !tbaa !8
  %cmp29 = icmp eq i32 %29, 1
  br i1 %cmp29, label %if.then31, label %if.end42

if.then31:                                        ; preds = %for.body26
  store i32 0, ptr %k, align 4, !tbaa !8
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc39, %if.then31
  %30 = load i32, ptr %k, align 4, !tbaa !8
  %31 = load i32, ptr %num_functions.addr, align 4, !tbaa !8
  %cmp33 = icmp slt i32 %30, %31
  br i1 %cmp33, label %for.body35, label %for.end41

for.body35:                                       ; preds = %for.cond32
  %32 = load i32, ptr %k, align 4, !tbaa !8
  %33 = load ptr, ptr %dof_func, align 8, !tbaa !4
  %34 = load i32, ptr %cnt, align 4, !tbaa !8
  %inc36 = add nsw i32 %34, 1
  store i32 %inc36, ptr %cnt, align 4, !tbaa !8
  %idxprom37 = sext i32 %34 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %33, i64 %idxprom37
  store i32 %32, ptr %arrayidx38, align 4, !tbaa !8
  br label %for.inc39

for.inc39:                                        ; preds = %for.body35
  %35 = load i32, ptr %k, align 4, !tbaa !8
  %inc40 = add nsw i32 %35, 1
  store i32 %inc40, ptr %k, align 4, !tbaa !8
  br label %for.cond32, !llvm.loop !136

for.end41:                                        ; preds = %for.cond32
  br label %if.end42

if.end42:                                         ; preds = %for.end41, %for.body26
  br label %for.inc43

for.inc43:                                        ; preds = %if.end42
  %36 = load i32, ptr %i, align 4, !tbaa !8
  %inc44 = add nsw i32 %36, 1
  store i32 %inc44, ptr %i, align 4, !tbaa !8
  br label %for.cond23, !llvm.loop !137

for.end45:                                        ; preds = %for.cond23
  %37 = load ptr, ptr %dof_func, align 8, !tbaa !4
  %38 = load ptr, ptr %dof_func_ptr.addr, align 8, !tbaa !4
  store ptr %37, ptr %38, align 8, !tbaa !4
  %39 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_coarse_nodes) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_variables) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %dof_func) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %CF_marker) #5
  ret i32 %39
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!11 = !{!"hypre_ParCSRMatrix_struct", !5, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !12, i64 128, !5, i64 136, !5, i64 144, !9, i64 152, !5, i64 160, !9, i64 168, !5, i64 176, !9, i64 184, !5, i64 192, !5, i64 200}
!12 = !{!"double", !6, i64 0}
!13 = !{!11, !5, i64 32}
!14 = !{!15, !5, i64 0}
!15 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !5, i64 40, !5, i64 48, !9, i64 56, !5, i64 64, !5, i64 72, !9, i64 80, !6, i64 84}
!16 = !{!15, !5, i64 64}
!17 = !{!11, !5, i64 40}
!18 = !{!15, !5, i64 8}
!19 = !{!11, !5, i64 80}
!20 = !{!11, !5, i64 64}
!21 = !{!15, !9, i64 24}
!22 = !{!11, !5, i64 96}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!11, !9, i64 8}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !24}
!28 = distinct !{!28, !24}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24}
!31 = distinct !{!31, !24}
!32 = !{!12, !12, i64 0}
!33 = distinct !{!33, !24}
!34 = distinct !{!34, !24}
!35 = distinct !{!35, !24}
!36 = distinct !{!36, !24}
!37 = distinct !{!37, !24}
!38 = distinct !{!38, !24}
!39 = distinct !{!39, !24}
!40 = distinct !{!40, !24}
!41 = distinct !{!41, !24}
!42 = distinct !{!42, !24}
!43 = distinct !{!43, !24}
!44 = distinct !{!44, !24}
!45 = distinct !{!45, !24}
!46 = distinct !{!46, !24}
!47 = distinct !{!47, !24}
!48 = distinct !{!48, !24}
!49 = distinct !{!49, !24}
!50 = distinct !{!50, !24}
!51 = distinct !{!51, !24}
!52 = distinct !{!52, !24}
!53 = distinct !{!53, !24}
!54 = distinct !{!54, !24}
!55 = !{!56, !5, i64 0}
!56 = !{!"_hypre_ParCSRCommPkg", !5, i64 0, !9, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !9, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80}
!57 = !{!56, !9, i64 8}
!58 = !{!56, !9, i64 48}
!59 = !{!56, !5, i64 16}
!60 = !{!56, !5, i64 24}
!61 = !{!56, !5, i64 32}
!62 = !{!56, !5, i64 56}
!63 = !{!56, !5, i64 64}
!64 = distinct !{!64, !24}
!65 = distinct !{!65, !24}
!66 = distinct !{!66, !24}
!67 = distinct !{!67, !24}
!68 = !{!15, !9, i64 28}
!69 = distinct !{!69, !24}
!70 = distinct !{!70, !24}
!71 = distinct !{!71, !24}
!72 = distinct !{!72, !24}
!73 = distinct !{!73, !24}
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
!89 = distinct !{!89, !24}
!90 = distinct !{!90, !24}
!91 = distinct !{!91, !24}
!92 = distinct !{!92, !24}
!93 = distinct !{!93, !24}
!94 = distinct !{!94, !24}
!95 = distinct !{!95, !24}
!96 = distinct !{!96, !24}
!97 = distinct !{!97, !24}
!98 = !{!15, !6, i64 84}
!99 = distinct !{!99, !24}
!100 = distinct !{!100, !24}
!101 = distinct !{!101, !24}
!102 = distinct !{!102, !24}
!103 = distinct !{!103, !24}
!104 = distinct !{!104, !24}
!105 = distinct !{!105, !24}
!106 = distinct !{!106, !24}
!107 = distinct !{!107, !24}
!108 = !{!11, !5, i64 88}
!109 = distinct !{!109, !24}
!110 = distinct !{!110, !24}
!111 = distinct !{!111, !24}
!112 = distinct !{!112, !24}
!113 = distinct !{!113, !24}
!114 = distinct !{!114, !24}
!115 = distinct !{!115, !24}
!116 = distinct !{!116, !24}
!117 = !{!11, !9, i64 12}
!118 = distinct !{!118, !24}
!119 = distinct !{!119, !24}
!120 = distinct !{!120, !24}
!121 = distinct !{!121, !24}
!122 = distinct !{!122, !24}
!123 = distinct !{!123, !24}
!124 = distinct !{!124, !24}
!125 = distinct !{!125, !24}
!126 = distinct !{!126, !24}
!127 = distinct !{!127, !24}
!128 = distinct !{!128, !24}
!129 = distinct !{!129, !24}
!130 = distinct !{!130, !24}
!131 = distinct !{!131, !24}
!132 = distinct !{!132, !24}
!133 = distinct !{!133, !24}
!134 = distinct !{!134, !24}
!135 = distinct !{!135, !24}
!136 = distinct !{!136, !24}
!137 = distinct !{!137, !24}
